"""
orderly_stage2_experiment.py

Refactored Orderly Stage 2 experiment workflow.

This module is the cleaned version of the legacy `Experiment_1_Stage2.py`
script. It preserves the original engineering workflow while updating imports
to use the refactored `motoropt` package modules.

Workflow
--------
1. Read the current coil/simulation counter.
2. Create a simulation output directory.
3. Generate conductor geometry in an orderly grid.
4. Transform the conductor layout into the two Maxwell slot positions.
5. Generate the Maxwell VBScript automation file.
6. Optionally run the generated VBScript to launch Maxwell.
7. Read Maxwell result CSV files.
8. Calculate efficiency and calibrated losses.
9. Write coil geometry/performance data to Excel.
10. Update the simulation counter.

Notes
-----
The geometry and Maxwell execution order are intentionally kept close to the
legacy implementation because the workflow was validated through the original
PhD simulation campaign.

John McKay 2026

"""

import math
import os
import random
from pathlib import Path

import matplotlib
from matplotlib import pyplot
from descartes.patch import PolygonPatch
import shapely
import shapely.affinity
import shapely.geometry


from directory_manager import create_simulation_directory

from excel_io import (
    read_losses_data,
    read_torque_data,
    write_coil_to_excel,
)

from simulation_counter import read_counter, update_counter
from vbscript_generator import create_dynamic_vbs_script

# Experiment configuration ----------------------------------------------------

EXPERIMENT_STAGE = "Stage_1"
EXPERIMENT_NAME = "Orderly"
START_SHAPE = "Square"

NUMBER_OF_CONDUCTORS = 48
SLOT_DEPTH = 20  # mm
SLOT_SIZE_X = 25  # mm
SLOT_SIZE_Y = 20  # mm

DEFAULT_BASE_OUTPUT_DIRECTORY = Path(
    r"C:/Users/John McKay/Desktop/final_Experiment_Simulation_Models/data_1"
)
DEFAULT_COUNTER_FILE = Path(
    r"C:/Users/John McKay/Desktop/simulation_Source/coil_Counter.ini"
)

# Machine slot centre points in the Maxwell model.
COIL_CENTER_1 = shapely.geometry.Point(17.617655, 133.8193788)
COIL_CENTER_2 = shapely.geometry.Point(51.65235222, 124.6998093)

# Plot colours. These replace the custom legacy `shapely.figures` colour imports.
BLUE = "blue"
YELLOW = "yellow"
BLACK = "black"


def set_limits(axis, x_min, x_max, y_min, y_max):
    """Set Matplotlib axis limits using the same intent as the legacy helper."""
    axis.set_xlim(x_min, x_max)
    axis.set_ylim(y_min, y_max)
    axis.set_aspect("equal", adjustable="box")


# Derived value retained from the legacy script.
average_Conductor_Size = math.sqrt((SLOT_SIZE_X * SLOT_SIZE_Y) / NUMBER_OF_CONDUCTORS)

# Legacy experiment flags retained for readability/context.
Is_Orderly_Test_2 = True
shapes_In_Use = ["Square", "Triangle", "Circle", "Hexagon"]

def create_square_conductor():
    # returns a square conductor
    conductor = shapely.geometry.box(0, 0, 1, 1)
    return conductor


def create_grid_shape(size):
    grid_Shape = shapely.geometry.box(0, 0, size, size)
    return grid_Shape


def create_layer_shape(size_X, size_Y):
    layer_Shape = shapely.geometry.box(0, 0, size_X, size_Y)
    return layer_Shape


def create_circular_conductor():
    # returns a circular conductor
    conductor = shapely.geometry.Point(0.5, 0.5)  # all default shapes are 1 by 1 mm with centre 0.5 on graph
    conductor = conductor.buffer(0.5)
    return conductor


def create_triangular_conductor():
    # returns a trianglular conductor
    conductor = shapely.geometry.Polygon([(0, 0), (1, 0), (0.5, 1), (0, 0)])
    return conductor


def create_hexagon_conductor():
    # returns a hexagon conductor, all shapes start by fitting into 1 by 1 mm boxes.
    conductor = shapely.geometry.Polygon([(0, 0.5), (0.25, 0), (0.75, 0), (1, 0.5), (0.75, 1), (0.25, 1), (0, 0.5)])
    return conductor


def check_intersection(object_a, object_b):
    # checks if a conductor is intersecting another, returns a boolean
    answer = object_a.intersects(object_b)
    return answer  # boolean true or false


def check_slot_contains_conductor(conductor, slot):
    # checks to see if the slot contains the conductor passed, returns a boolean
    answer = slot.contains(conductor)
    return answer  # boolean


def check_bundle_contains_conductor(bundle_Area, conductor):
    # For distributed winding, checks if a bundle area, within the slot contains a conductor, returns boolean
    answer = bundle_Area.contains(conductor)
    return answer  # boolean


def seek_conductor_resting_place(conductor_List, slot, ax):
    # a function for seeking an alternative position if it intersects with another conductor or the slot boundary
    # use the buffer method to create a ring of points, use this to find a suitable "resting place".
    print(" list of conductors to be relocatted " + str(conductor_List))
    stepping = 0.01  # increase this by 0.1 everytime a conductor does not find a valid resting place within

    for x in range(len(conductor_List)):
        # colour_conductor_helper(conductor_List[x], "RED")

        # we need to get a final seek distance, that is the maximum distance a conductor can move from its
        # original point in the slot, roughly, 2 times the conductors boxed length calculated from its area.

        # the circle of points created by list of points.

        seek_Distance = math.sqrt(conductor_List[x].area) * 2  # how far from orginal center point do we want to search?
        conductor_Center = conductor_List[x].centroid  # centroid of the conductor
        list_Of_Points = conductor_Center.buffer(
            stepping)  # use buffer method stepping in increments. around the conductors centroid.
        list_Of_Points = list(list_Of_Points.exterior.coords)  # should become an array of points
        # print("the points of the circle are " + str(list_Of_Points))
        conductor_ = conductor_List[x]

        while conductor_in_slot_helper(slot, conductor_) == False:
            list_Of_Points = conductor_Center.buffer(
                stepping)  # use buffer method stepping in increments. around the conductors centroid.
            list_Of_Points = list(list_Of_Points.exterior.coords)  # should become an array of points

            for y in range(len(list_Of_Points)):
                go_Point = shapely.geometry.Point(list_Of_Points[y])  # convert to shapely point.
                conductor_ = move_conductor(conductor_, go_Point.x, go_Point.y)
                # test conductor is in slot now.
                if conductor_in_slot_helper(slot, conductor_) == True:
                    colour_conductor_helper(conductor_, "BLUE", ax)
                    break
            if stepping >= seek_Distance:
                stepping = stepping
            else:
                stepping += 0.01
    return True


def conductor_in_slot_helper(slot_Area, conductor_):
    if slot_Area.contains(conductor_) == True:
        return True
    else:
        return False


def conductor_is_colliding(conductor, conductor_Array):
    if len(conductor_Array) == 0:
        return False
    else:
        for x in range(len(conductor_Array)):
            if conductor.intersects(conductor_Array[x]) or conductor_Array[x].contains(conductor):
                # print("concductor is colliding")
                return True
    return False


def colour_conductor_helper(conductor, colour, ax):
    # applies a patch of colour or a polygonpatch to the shape which represents the conductor.
    # this allows it to be seen on the graph.
    # print("conductor being coloured is " + str(conductor))
    colour_Patch = PolygonPatch(conductor, facecolor=colour, edgecolor=BLACK, alpha=1.0, zorder=4)
    ax.add_patch(colour_Patch)


def scale_conductor(conductor, scale_factor):
    # takes a conductor and scales according to the specified scale factor.
    conductor = shapely.affinity.scale(conductor, xfact=scale_factor, yfact=scale_factor)
    return conductor


def mirror_slot(conductor, x_Scale, y_Scale):
    # -1 will flip the co-ordinates, in either x or y direction
    conductor = shapely.affinity.scale(conductor, xfact=x_Scale, yfact=y_Scale)
    return conductor


def rotate_conductor(conductor, angle):
    # takes a conductor and rotates according to the specified rotation angle.
    # centroid is the CURRENT center of the shape, which does change as the shape moves.
    conductor = shapely.affinity.rotate(conductor, angle, 'centroid')
    return conductor


def rotate_slot(conductor, angle):
    # takes a shape and rotates it around the central point of the slot so that it can be fit into the machine
    conductor = shapely.affinity.rotate(conductor, angle, shapely.geometry.Point((SLOT_SIZE_X / 2), (
                SLOT_SIZE_Y / 2)))  # assuming that this is a square slot.
    return conductor


def colour_conductor(conductor, ax):
    # applies a patch of colour or a polygonpatch to the shape which represents the conductor.
    # this allows it to be seen on the graph.
    # print("conductor being coloured is " + str(conductor))
    colour_Patch = PolygonPatch(conductor, facecolor=YELLOW, edgecolor=BLACK, alpha=1.0, zorder=3)
    ax.add_patch(colour_Patch)


def move_conductor(conductor, x_Position, y_Position):
    conductor_Centre = conductor.centroid  # the current centre of the shape.
    move_To = shapely.geometry.Point(x_Position, y_Position)
    # code below moves the shape around the slot.
    conductor = shapely.affinity.translate(conductor, xoff=(move_To.x - conductor_Centre.x),
                                           yoff=(move_To.y - conductor_Centre.y))
    # print("centroid of this conductor is " + str(conductor.centroid))
    return conductor


def move_grid_shape(shape, x_Position, y_Position):
    shape = shapely.affinity.translate(shape, xoff=x_Position, yoff=y_Position)
    return shape


def calculate_fill_factor(slot):
    slot_Fill = (10) / slot.area
    return slot_Fill  # fill factor


def get_random_point():
    # returns a random point to 1 decimal place within a range, 0.1, 19.5 etc.
    generated_X = round(random.uniform(0, SLOT_SIZE_X), 1)  # uniform is a random float rounded to 1 decimal place
    generated_Y = round(random.uniform(0, SLOT_SIZE_Y), 1)
    generated_Point = shapely.geometry.Point(generated_X, generated_Y)
    return generated_Point


def get_random_shape():
    # returns a random shape as a string
    chosen_Shape = random.choice(shapes_In_Use)  # picks a random shape from the shapes in use array.
    # print("random shape chosen is " + chosen_Shape)
    return chosen_Shape


def update_chart():
    # show the plot.
    pyplot.show()


def shape_dictionary(shape):
    switch = {
        "Square": create_square_conductor(),
        "Triangle": create_triangular_conductor(),
        "Circle": create_circular_conductor(),
        "Hexagon": create_hexagon_conductor()
    }
    return switch.get(shape, "Invalid Shape")


def list_conductors_not_in_slot(containment_Area, array_Of_Conductors):
    # returns a numpy array of conductors not fully contained within the slot
    list_Of_Conductors = []
    for x in range(len(array_Of_Conductors)):
        conductor = array_Of_Conductors[x]
        if containment_Area.contains(conductor) == False:
            list_Of_Conductors.append(conductor)  # push the conductor not contained in the slot
    # print("the number of conductors not inside the slot are " + str(len(list_Of_Conductors)))
    return list_Of_Conductors


def create_coil(conductor_Array, coil_Point, coil_angle, coil_Array):
    # This creates a coil from a specified array of shapes, their rotation and the center point of that coils position in the slot
    # should return an array with all the modified positions and rotations of the conductors.
    # coil angle is the angle of the slot in relation to the centre point of rotor, in maxwell this is 0,0

    slot_Centroid = shapely.geometry.Point(SLOT_SIZE_X / 2, SLOT_SIZE_Y / 2)
    distance_From_Zero = math.sqrt(((coil_Point.x - 0) ** 2) + ((coil_Point.y - 0) ** 2))
    print("distance from the zero point for ", distance_From_Zero)

    for x in range(len(conductor_Array)):
        conductor = conductor_Array[x]
        # print(conductor.centroid)
        conductor = rotate_slot(conductor, coil_angle)  # minus is clockwise
        coil_Array.append(conductor)  # save the conductors new position in a unique array.

    for y in range(len(coil_Array)):
        coil_Conductor = coil_Array[y]
        coil_Conductor_Centroid = coil_Conductor.centroid
        difference = shapely.geometry.Point(coil_Point.x - slot_Centroid.x,
                                            coil_Point.y - slot_Centroid.y)  # calculate the difference between the original slot in shapely space to conductor slot in maxwell space.
        conductor_Point_X = difference.x + coil_Conductor_Centroid.x
        conductor_Point_Y = difference.y + coil_Conductor_Centroid.y
        coil_Conductor = move_conductor(coil_Conductor, conductor_Point_X, conductor_Point_Y)
        # colour_conductor_helper(coil_Conductor, "RED") # do this else where.
        coil_Array[y] = coil_Conductor  # over ride the original conductor positions with the new ones.

    return coil_Array  # return the array with the modified values.


def mirror_coil(conductor_Array):
    half_Way_Point = SLOT_SIZE_X / 2
    mirrored_Coil = []

    # since we are spinning the slot need to reverse the order of x position logic

    for x in range(len(conductor_Array)):
        conductor = conductor_Array[x]
        conductor_Centroid = conductor.centroid
        # also need to mirror points if conductor is rotated.

        if conductor_Centroid.x < half_Way_Point:
            position_x = SLOT_SIZE_X - conductor_Centroid.x
            # position_x = 0 + (SLOT_SIZE_X - conductor_Centroid.x)
            position_y = conductor_Centroid.y
            conductor = move_conductor(conductor, position_x, position_y)
            conductor = mirror_slot(conductor, -1,
                                    1)  # we want to mirror only the x axis not the y. this should handle a rotated conductor.

        if conductor_Centroid.x > half_Way_Point:
            position_x = 0 + (SLOT_SIZE_X - conductor_Centroid.x)
            # position_x = SLOT_SIZE_X - conductor_Centroid.x
            position_y = conductor_Centroid.y
            conductor = move_conductor(conductor, position_x, position_y)
            conductor = mirror_slot(conductor, -1,
                                    1)  # we want to mirror only the x axis not the y. this should handle a rotated conductor.

        if conductor_Centroid.x == half_Way_Point:
            conductor = conductor

        mirrored_Coil.append(conductor)

    return mirrored_Coil

    # takes a conductor array and mirrors it before it's final coil values are set.


def get_grid():
    # get the number of rows and columns and cell size
    ratio = (SLOT_SIZE_X) / (SLOT_SIZE_Y) # *** for safety reasons we take 0.1 of a mm off so that the conductors do not touch the slot in the simulation. ***
    n_Cols = math.sqrt(NUMBER_OF_CONDUCTORS * ratio)
    n_Rows = NUMBER_OF_CONDUCTORS / n_Cols

    # find the best option filling the slot height
    n_Rows_1 = math.ceil(n_Rows)
    n_Cols_1 = math.ceil(NUMBER_OF_CONDUCTORS / n_Rows_1)

    while (n_Rows_1 * ratio < n_Cols_1):
        n_Rows_1 += 1
        n_Cols_1 = math.ceil(NUMBER_OF_CONDUCTORS / n_Rows_1)

    cell_Size_1 = (SLOT_SIZE_Y) / n_Rows_1

    # find the best option for filling the width
    n_Cols_2 = math.ceil(n_Cols)
    n_Rows_2 = math.ceil(NUMBER_OF_CONDUCTORS / n_Cols_2)

    while (n_Cols_2 < n_Rows_2 * ratio):
        n_Cols_2 += 1
        n_Rows_2 = math.ceil(NUMBER_OF_CONDUCTORS / n_Cols_2)

    cell_Size_2 = (SLOT_SIZE_X) / n_Cols_2

    # find the best value for columns and cell size
    n_Rows_Final = 0
    n_Cols_Final = 0
    cell_Size_Final = 0

    if (cell_Size_1 < cell_Size_2):
        n_Rows_Final = n_Rows_2
        n_Cols_Final = n_Cols_2
        cell_Size_Final = cell_Size_2
    else:
        n_Rows_Final = n_Rows_1
        n_Cols_Final = n_Cols_1
        cell_Size_Final = cell_Size_1
    print("get grid working, final cell size is ", cell_Size_Final)
    get_grid_Cell_Size = cell_Size_Final  # store this for use later.

    return n_Rows_Final, n_Cols_Final, cell_Size_Final


def get_grid_for_layer(layer_Size_Y, conductors_Per_Layer):
    # get the number of rows and columns and cell size
    ratio = SLOT_SIZE_X / layer_Size_Y
    n_Cols = math.sqrt(conductors_Per_Layer * ratio)
    n_Rows = conductors_Per_Layer / n_Cols

    # find the best option filling the slot height
    n_Rows_1 = math.ceil(n_Rows)
    n_Cols_1 = math.ceil(conductors_Per_Layer / n_Rows_1)

    while (n_Rows_1 * ratio < n_Cols_1):
        n_Rows_1 += 1
        n_Cols_1 = math.ceil(conductors_Per_Layer / n_Rows_1)

    cell_Size_1 = layer_Size_Y / n_Rows_1

    # find the best option for filling the width
    n_Cols_2 = math.ceil(n_Cols)
    n_Rows_2 = math.ceil(conductors_Per_Layer / n_Cols_2)

    while (n_Cols_2 < n_Rows_2 * ratio):
        n_Cols_2 += 1
        n_Rows_2 = math.ceil(conductors_Per_Layer / n_Cols_2)

    cell_Size_2 = SLOT_SIZE_X / n_Cols_2

    # find the best value for columns and cell size
    n_Rows_Final = 0
    n_Cols_Final = 0
    cell_Size_Final = 0

    if (cell_Size_1 < cell_Size_2):
        n_Rows_Final = n_Rows_2
        n_Cols_Final = n_Cols_2
        cell_Size_Final = cell_Size_2
    else:
        n_Rows_Final = n_Rows_1
        n_Cols_Final = n_Cols_1
        cell_Size_Final = cell_Size_1
    print("get grid for layer working, cell size is ", cell_Size_Final)
    return n_Rows_Final, n_Cols_Final, cell_Size_Final

def get_coil_mass(coil_Mass_Array):
    # calculate the mass of the coil in kg, for copper
    # copper density = 8940 kg/m^3
    coil_Final_Mass = 0 # in kg
    conductor_Length = (210 + 25 + 25)  # 210mm for the stator iron length, 2.5cm * 2 for the end winding length. from cm to mm

    for x in range(len(coil_Mass_Array)):
        coil_Final_Mass += ((coil_Mass_Array[x] * conductor_Length) / 1000000000) * 8940 # convert mm3 into m3 then multiply by density kg/m3 to get value in kg.
    coil_Final_Mass = coil_Final_Mass * 2 # 2 slots per concentrated coil
    return coil_Final_Mass

def get_fill_factor(coil_Mass_Array):
    # calculate the fill factor
    coil_Area = 0
    for x in range(len(coil_Mass_Array)):
        coil_Area += coil_Mass_Array[x]

    fill_Factor_Calc = (coil_Area / (SLOT_SIZE_X * SLOT_SIZE_Y)) * 100
    return fill_Factor_Calc

# Experiment 1 *********************************************************************************************************
# Orderly coil placement ***********************************************************************************************
# Experiment is broken into stages to reduce combination count
# Stage 1 = vary conductor scale
# Stage 2 = vary conductor position
# Stage 3 = vary conductor shape
# stage 4 = vary conductor rotation
#
# Experiment is carried out 4 times, Each with a single starting shape, and a random seed of scales for every conductor.
# This is entered into Optislang Manually, Optislang passes an Array with conductor values it wants to simulate.
# **********************************************************************************************************************

def run_orderly_stage2_experiment(
    scale_array,
    shape_list,
    base_output_directory: str | Path = DEFAULT_BASE_OUTPUT_DIRECTORY,
    counter_file: str | Path = DEFAULT_COUNTER_FILE,
    run_maxwell: bool = True,
):
    # create file paths

    print("run_orderly_stage2_experiment.py :: scale array length : ", len(scale_array))
    print("run_orderly_stage2_experiment.py :: scale array values : ", scale_array)

    # Read the current coil/simulation number before creating outputs.
    slot_configuration = read_counter(counter_file)

    # Create the output directory for this simulation run.
    new_directory = create_simulation_directory(
        base_directory=base_output_directory,
        stage_name=EXPERIMENT_STAGE,
        experiment_name=EXPERIMENT_NAME,
        run_id=slot_configuration,
    )

    conductor_Array = [] # local reference variable

    # need to change global variables to local variables for the script to run correctly for consecutive script executions.
    conductor_Array_1 = []  # an empty array to hold the conductor position for the 1st slot region
    conductor_Array_2 = []  # an empty array to hold the conductor position for the 2nd slot region
    mirror_Conductor_Array = []  # an array that hold the mirror image of the conductor positions
    grid_Array = []
    coil_Mass_Array = []  # an array that stores the individual masses of the conductors for addition later.
    coil_Weight = 0  # final coil weight in kg.
    skin_Depth_Array = []  # an array that contains booleans, if an conductor is greater than 3.5 m in radius or 7mm diameter it must get meshed in a special way.
    shape_Array = []  # An array containing all the shapes, used to determine which functions to trigger in vbs_Script_Creator, store scale factor.

    # matplotlib plot for image output of the slot----------------------------------------------------------------------
    fig = matplotlib.pyplot.figure(1, figsize=shapely.figures.SIZE, dpi=90, facecolor=None, edgecolor=None,
                                   frameon=True, clear=True)
    fig.set_frameon(True)
    ax = fig.add_subplot(111)
    fill_Factor = 100
    slot_configuration = 1
    ax.set_title('Slot Configuration = ' + str(slot_configuration) + ' Fill Factor = ' + str(fill_Factor))
    ax.set_xlabel("Slot Width" + str(SLOT_SIZE_X) + " mm")
    ax.set_ylabel("Slot Height" + str(SLOT_SIZE_Y) + " mm")

    set_limits(ax, 0, SLOT_SIZE_X, 0, SLOT_SIZE_Y)
    set_limits(ax, 0, 150, 0, 150)
    # ------------------------------------------------------------------------------------------------------------------
    # define the slot boundaries ---------------------------------------------------------------------------------------
    slot = shapely.geometry.box(0, 0, SLOT_SIZE_X, SLOT_SIZE_Y)
    # colour the slot
    patch = PolygonPatch(slot, facecolor=BLUE, edgecolor=BLUE, alpha=1.0, zorder=1)
    ax.add_patch(patch)
    # ------------------------------------------------------------------------------------------------------------------

    # start the experiment. -------------------------------------------------------------------------------------------

    if Is_Orderly_Test_2 == True:
        # firstly get the grid
        grid_Tuple = get_grid()
        number_Of_Rows = grid_Tuple[0]
        number_Of_Cols = grid_Tuple[1]
        grid_Size = grid_Tuple[2] # Max size a conductor can be minus a small area to prevent conductor intersection.

        print("grid values", grid_Tuple)
        # conductor_Array = []

        x_position = 0
        y_position = 0
        conductor_Count = 0
        x = 0
        #  grid_Array = []  # clear the array, Optislang reporting that this is doubling every n'th simulation

        while x < number_Of_Cols:
            grid_Shape = create_grid_shape(grid_Size)
            grid_Shape = move_grid_shape(grid_Shape, x_position, y_position)
            colour_conductor_helper(grid_Shape, "NONE", ax)
            grid_Array.append(grid_Shape)
            x_position += grid_Size
            conductor_Count += 1
            x += 1
            if x == number_Of_Cols:
                x = 0
                x_position = 0
                y_position += grid_Size
            if conductor_Count == NUMBER_OF_CONDUCTORS:
                break

        # "Square" = 1, "Circle" = 2, "Triangle" = 3, "Hexagon" = 4 ***

        # now lets populate the slot with conductors centred on the grid volumes
        for x1 in range(len(grid_Array)):
            # print("grid array length : ", len(grid_Array))
            if shape_list[x1] == 1:
                print("square conductor created")
                conductor_ = create_square_conductor()
                shape_Array.append("Square")

            if shape_list[x1] == 2:
                print("circle conductor created")
                conductor_ = create_circular_conductor()
                shape_Array.append("Circle")

            if shape_list[x1] == 3:
                print("triangle conductor created")
                conductor_ = create_triangular_conductor()
                shape_Array.append("Triangle")

            if shape_list[x1] == 4:
                print("hexagon conductor created")
                conductor_ = create_hexagon_conductor()
                shape_Array.append("Hexagon")

            if shape_list[x1] == 3:  # is "Triangle" ***
                # had to add in a correction as scaling warps the triangle centroid position 0.0535
                conductor_ = move_conductor(conductor_, grid_Array[x1].centroid.x, (grid_Array[x1].centroid.y - (scale_array[x1] * 0.0535)))
            else:
                # shape_Array.append(conductor_Shape) # keep tabs on what each polygon is
                conductor_ = move_conductor(conductor_, grid_Array[x1].centroid.x, grid_Array[x1].centroid.y)

            print("grid array position ", x1, " centroid is ", grid_Array[x1].centroid.x, " , ",  grid_Array[x1].centroid.y)
            print("scale array position x line 619 in run_orderly_stage2_experiment.py : , ", x1)
            conductor_Scale = scale_array[x1]  # get the scale from optislang for this conductor.
            conductor_ = scale_conductor(conductor_, conductor_Scale) # we need to get a scale value from Optislang # 1 is default for 1mm squared.
            # push conductor area into the coil mass array for total mass calculation
            coil_Mass_Array.append(conductor_.area)

            # check to see if the conductor is bigger than the skin depth radius of 3.5 (pre-calculated) or 7mm for diameter
            if (math.sqrt(conductor_.area)) >= 7:
                skin_Depth_Array.append(True)
                # print("conductor length", math.sqrt(conductor_.area))
            else:
                skin_Depth_Array.append(False)
                # print("conductor length", math.sqrt(conductor_.area))

            conductor_Array.append(conductor_)
            colour_conductor(conductor_, ax)  # colour the conductor yellow
            print("number of conductors is : ", len(conductor_Array))

    print("skin dpeth array", len(skin_Depth_Array), skin_Depth_Array)
    # calculate the coil weight
    coil_Weight = get_coil_mass(coil_Mass_Array)  # in kg
    print("Theoretical weight of the coil in kg is ", coil_Weight)

    #calculate the fill factor
    fill_Factor = get_fill_factor(coil_Mass_Array)

    # get the coil number
    # Use the same counter value throughout this run.

    # setup for plotting the coil image
    ax.set_title('Coil Configuration = ' + str(slot_configuration) + ' Fill Factor = ' + str(fill_Factor)) # get this number from the ini file.
    ax.set_xlabel('Slot Width ' + str(SLOT_SIZE_X) + '(mm)')
    ax.set_ylabel('Slot Height ' + str(SLOT_SIZE_Y) + '(mm)')
    set_limits(ax, 0, SLOT_SIZE_X, 0, SLOT_SIZE_Y)
    # set_limits(ax, 0, 150, 0, 150)

    # Create the coils for VBS Script translation.

    # this creates the first half of the concentrated coil and stores the modified conductors positions and rotations into a new array, so we don't lose the old data.
    conductor_Array_1 = create_coil(conductor_Array, COIL_CENTER_1, -187.5, conductor_Array_1)  # original value -7

    # create a mirror image of the conductor array
    mirror_Conductor_Array = mirror_coil(conductor_Array)

    # create the second half of the concentrated coil, again we keep the original data intact.
    conductor_Array_2 = create_coil(mirror_Conductor_Array, COIL_CENTER_2, -202.49999999, conductor_Array_2)  # original is -23, however add -180 to flip slot
    # mirror this slot such that we get shape parity with the turns.

    # save pyplot image
    pyplot.savefig(new_directory / f'coil_Image_{slot_configuration}', dpi=400)

    vbs_script_file = new_directory / f'Vbs_Script_CN_{slot_configuration}.vbs'
    # create the script that will run maxwell and output the results to be read.
    create_dynamic_vbs_script(
        conductor_array_1=conductor_Array_1,
        conductor_array_2=conductor_Array_2,
        shape_array=shape_Array,
        skin_depth_array=skin_Depth_Array,
        print_to_file=True,
        file_path=vbs_script_file,
        directory=new_directory,
        coil_number=slot_configuration,
    )

    # run vbs script.
    # os.system(vbs_script_file)
    #os.system(new_directory + "/simulation_CN_" + str(slot_configuration) + ".vbs") # python will wait until the vb script is finished processing.
    # Run the generated VBScript file.
    # This launches Ansys Maxwell and waits for the simulation/export process to finish.
    if run_maxwell:
        os.system(f'"{vbs_script_file}"')
    # print("vbs file directory :: ", file_To_Run)


    #if os.path.isfile(vbs_script_file) == False:
        #print("file does not exist!!")
    #else:
        #print("file exists!!")

    # read values, efficiency, losses, rotor torque
    # push values to global variable to be read by Optislang, Return a tuple consisting of, efficiency, losses.

    # read the loss data # ** remember losses are in kw, must convert to watts.
    # pass new directory
    # pass slot configuration
    get_Losses = read_losses_data(new_directory, slot_configuration) # in watts
    get_Torque = read_torque_data(new_directory, slot_configuration) # in nm

    # push these values to excel.
    # Currently these are dummy values.

    machine_Output_Power = get_Torque * (1500 * 0.10472) # this value in watts.  # 1 rpm = 0.10472 rad/s
    machine_Losses = get_Losses - 8000 # (originally 3000w)in watts # could calibrate by taking 3000 watts off, for every 1kw we save roughly 1 %
    # losses are calibrated against motorcad electromagnetic and thermal model, loss = 16280, efficiency around 89.839%
    # an identical maxwell coil layout is used to calibrate against the motorcad machine to calibrate loss to motorcad model.
    machine_Input_Power = machine_Output_Power + machine_Losses # in watts
    machine_Efficiency = (machine_Output_Power / machine_Input_Power) * 100 # %

    # create the excel file with coil layout in it
    write_coil_to_excel(shape_Array, conductor_Array, scale_array, None, coil_Weight, fill_Factor, machine_Efficiency, machine_Losses, new_directory, slot_configuration)

    # make sure file exist.

    # increase the coil counter
    update_counter(counter_file)

    return machine_Efficiency, machine_Losses