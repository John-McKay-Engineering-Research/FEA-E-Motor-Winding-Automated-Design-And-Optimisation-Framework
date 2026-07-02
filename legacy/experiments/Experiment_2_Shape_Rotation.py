import gc
import matplotlib
import shapely
import descartes
from shapely.geometry import Polygon
from matplotlib import pyplot
from matplotlib.patches import Circle
from descartes.patch import PolygonPatch
import math
import random
import numpy  # use numpy arrays since python lists are slow and numpy is c++
# import pywin
import vbs_Script_Creator_ExperimentVer
import directory_Creator
import ini_File_Creator
import vbs_Script_Creator
# import win32com.client
import scipy
from scipy.special import zeta, polygamma, factorial
import excel_Tool
import os  # make directories
import vbs_Script_Creator_ExperimentVer_2
import sys

# a custom work around script since figures isn't directly accessible from shapely.
from shapely.figures import SIZE, BLUE, YELLOW, GRAY, set_limits, plot_coords, color_isvalid, RED, GREEN, BLACK
# REMEMBER TO PUT THIS SCRIPT INTO THE FOLDER WHERE SHAPELY IS!!!!!!!!


# **********************************************************************************************************************
# Experiment 1
# John McKay, AFRC, FEMM HUB, GC 2.2
# **********************************************************************************************************************

experiment_Stage = "Stage_1"
start_Shape = "Hexagon"

# Global Variables ----------------------
Number_of_conductors = 48  # 48, 30 fills the slot nicely
Slot_depth = 20  # mm
Scale_factor = [0, 1]
X_variance = [0, 1]
Y_variance = [0, 1]
rotation_Variance = [0, 360]
Square_dominance = 1.0  # percentage.
Triangle_dominance = 1.0  # percentage.
Circle_dominance = 1.0  # percentage.
Hexagon_dominance = 1.0  # percentage.
Is_concentrated = False
Is_distributed = False
Is_hairpin = False
Is_layered = False  # a layered slot has a dominant shape per layer with each layer varying in height.
number_Of_Layers = 10
layer_Array = []  # an array that holds the layers as shapely box's
Is_Clustered = False  # a number of points within the slot are chosen and conductors cluster around that point.
Is_Random_Test = True
Is_Random_Test_2 = False
Is_Orderly_Test = False
Is_Orderly_Test_2 = False
Is_Calibration_Test = False
Number_Of_Clusters = 0  # number of clusters present within the slot.
Distributed_coil_bundles = 0  # the number of bundles, splits slot area into discrete sub areas.
Min_distance_between_conductors = 0  # for distributed since conductor spacing affects eddies.

# pyplot save picture to folder.
save_Pyplot_Figure = True

# creates a mirror of the slot configuration.
mirror_Coordinates = False

Random_placement = False  # Everything is random
Fractal_placement = False  # Random placement however, every nth conductor decreases in size by percentage i
Orderly_placement = False  # slot is split into discrete bounding volumes, 1 conductor per volume, dictated start position

Slot_Size_x = 25  # the real slot is 25mm
Slot_Size_Y = 20  # the real slot is 20mm ** by downsizing we avoid colliding with the slot wall.

slot_Configuration = 1  # we get a number from the generator
shapes_In_Use = ["Square", "Triangle", "Circle", "Hexagon"] # shapes to choose from.
# shape_Array = []  # An array containing all the shapes, used to determine which functions to trigger in vbs_Script_Creator, store scale factor.

rotation_Array = []  # an array that contains all the rotations of the various conductors. default is 0 degrees
scale_Factor_Array = []  # an array that contains the scale multiplier applied to all conductors, default is 1 (1by1mm squared)

get_Grid_Cell_Size = 0  # the variable for the calculated cell size for a particular conductor count, since a square, l = b = cell size.

# A note on storing circles, circles can have huge numbers of points along their circumference, which is highly in-efficient when it comes to simulation.
# we want to store the fact that the shape is a circle, and just its diameter, in this case scale factor, scale factor of 1, is equal to diamter of 1mm


# conductor_Array_1 = []  # an empty array to hold the conductor position for the 1st slot region
# conductor_Array_2 = []  # an empty array to hold the conductor position for the 2nd slot region
# mirror_Conductor_Array = []  # an array that hold the mirror image of the conductor positions
# grid_Array = []
# coil_Mass_Array = []  # an array that stores the individual masses of the conductors for addition later.
# coil_Weight = 0  # final coil weight in kg.
# skin_Depth_Array = []  # an array that contains booleans, if an conductor is greater than 3.5 m in radius or 7mm diameter it must get meshed in a special way.
# ---------------------------------------

# this is a workaround for the matplotlib functionality, enables it to work in Optislang for the python integration module
# This only works for python version 3.7.9 not 3.6.8.
sys.argv.append('C:/Users/John McKay/PycharmProjects/coil_Configurator/optislang_Interconnect.py')
print("path to sys.arg is : ", sys.argv)
matplotlib.rcParams['backend'] = 'WXAgg'  # change the backend for compatibility with Optislang
matplotlib.use("WXAgg")
print("the backend that matplotlib is using is : ", matplotlib.get_backend())
# ---------------------------------------------------------------------------------------------------------------------

# define the machine slot centre points ------------------------------------------------------------------------------
# these are the points for the centre of the slots where the coil resides in the maxwell file, this will change depending on the machine and coil type.

# coil_Center_1 = shapely.geometry.Point(17.68236713, 134.3109071) # these values are correct!!!
# coil_Center_2 = shapely.geometry.Point(51.84207681, 125.1578531) # these values have to be converted into negatives when exporting.

#  *** for experiment 2 only need to add around 0.4 to the y values of the slot centres ***
# had to further adjust y value of second coil centre by 0.026
coil_Adjustment = 0.5
coil_Center_1 = shapely.geometry.Point(17.617655, (133.8193788 + coil_Adjustment))
coil_Center_2 = shapely.geometry.Point((51.65235222 + 0.56 - 0.18), (124.6998093 + coil_Adjustment - 0.18 + 0.056))  # these values have to be converted into negatives when exporting.
# ---------------------------------------------------------------------------------------------------------------------

# calculate the average conductors size as a square, all shapes must fit into a square area to simplify the process.
# this calculates the length of a box in which a single conductor area can fit into.
average_Conductor_Size = math.sqrt((Slot_Size_x * Slot_Size_Y) / Number_of_conductors)

# Helper Functions *****************************************************************************************************
# **********************************************************************************************************************

def create_Square_Conductor():
    # returns a square conductor
    conductor = shapely.geometry.box(0, 0, 1, 1)
    return conductor


def create_Grid_Shape(size):
    grid_Shape = shapely.geometry.box(0, 0, size, size)
    return grid_Shape


def create_Layer_Shape(size_X, size_Y):
    layer_Shape = shapely.geometry.box(0, 0, size_X, size_Y)
    return layer_Shape


def create_Circular_Conductor():
    # returns a circular conductor
    conductor = shapely.geometry.Point(0.5, 0.5)  # all default shapes are 1 by 1 mm with centre 0.5 on graph
    conductor = conductor.buffer(0.5)
    return conductor


def create_Triangular_Conductor():
    # returns a trianglular conductor
    conductor = shapely.geometry.Polygon([(0, 0), (1, 0), (0.5, 1), (0, 0)])
    return conductor


def create_Hexagon_Conductor():
    # returns a hexagon conductor, all shapes start by fitting into 1 by 1 mm boxes.
    conductor = shapely.geometry.Polygon([(0, 0.5), (0.25, 0), (0.75, 0), (1, 0.5), (0.75, 1), (0.25, 1), (0, 0.5)])
    return conductor


def check_Intersection(object_A, object_B):
    # checks if a conductor is intersecting another, returns a boolean
    answer = object_A.intersects(object_B)
    return answer  # boolean true or false


def check_Slot_Contains_Conductor(conductor, slot):
    # checks to see if the slot contains the conductor passed, returns a boolean
    answer = slot.contains(conductor)
    return answer  # boolean


def check_Bundle_Contains_Conductor(bundle_Area, conductor):
    # For distributed winding, checks if a bundle area, within the slot contains a conductor, returns boolean
    answer = bundle_Area.contains(conductor)
    return answer  # boolean


def seek_Conductor_Resting_Place(conductor_List, slot, ax):
    # a function for seeking an alternative position if it intersects with another conductor or the slot boundary
    # use the buffer method to create a ring of points, use this to find a suitable "resting place".
    print(" list of conductors to be relocatted " + str(conductor_List))
    stepping = 0.01  # increase this by 0.1 everytime a conductor does not find a valid resting place within

    for x in range(len(conductor_List)):
        # colour_Conductor_Helper(conductor_List[x], "RED")

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

        while conductor_In_Slot_Helper(slot, conductor_) == False:
            list_Of_Points = conductor_Center.buffer(
                stepping)  # use buffer method stepping in increments. around the conductors centroid.
            list_Of_Points = list(list_Of_Points.exterior.coords)  # should become an array of points

            for y in range(len(list_Of_Points)):
                go_Point = shapely.geometry.Point(list_Of_Points[y])  # convert to shapely point.
                conductor_ = move_Conductor(conductor_, go_Point.x, go_Point.y)
                # test conductor is in slot now.
                if conductor_In_Slot_Helper(slot, conductor_) == True:
                    colour_Conductor_Helper(conductor_, "BLUE", ax)
                    break
            if stepping >= seek_Distance:
                stepping = stepping
            else:
                stepping += 0.01
    return True


def conductor_In_Slot_Helper(slot_Area, conductor_):
    if slot_Area.contains(conductor_) == True:
        return True
    else:
        return False


def conductor_Is_Colliding(conductor, conductor_Array):
    if len(conductor_Array) == 0:
        return False
    else:
        for x in range(len(conductor_Array)):
            if conductor.intersects(conductor_Array[x]) or conductor_Array[x].contains(conductor):
                # print("concductor is colliding")
                return True
    return False


def colour_Conductor_Helper(conductor, colour, ax):
    # applies a patch of colour or a polygonpatch to the shape which represents the conductor.
    # this allows it to be seen on the graph.
    # print("conductor being coloured is " + str(conductor))
    colour_Patch = PolygonPatch(conductor, facecolor=colour, edgecolor=BLACK, alpha=1.0, zorder=4)
    ax.add_patch(colour_Patch)


def scale_Conductor(conductor, Scale_Factor):
    # takes a conductor and scales according to the specified scale factor.
    conductor = shapely.affinity.scale(conductor, xfact=Scale_Factor, yfact=Scale_Factor)
    return conductor


def mirror_Slot(conductor, x_Scale, y_Scale):
    # -1 will flip the co-ordinates, in either x or y direction
    conductor = shapely.affinity.scale(conductor, xfact=x_Scale, yfact=y_Scale)
    return conductor


def rotate_Conductor(conductor, Angle):
    # takes a conductor and rotates according to the specified rotation angle.
    # centroid is the CURRENT center of the shape, which does change as the shape moves.
    conductor = shapely.affinity.rotate(conductor, Angle, 'centroid')
    return conductor


def rotate_Slot(conductor, Angle):
    # takes a shape and rotates it around the central point of the slot so that it can be fit into the machine
    conductor = shapely.affinity.rotate(conductor, Angle, shapely.geometry.Point((Slot_Size_x / 2), (
                Slot_Size_Y / 2)))  # assuming that this is a square slot.
    return conductor


def colour_Conductor(conductor, ax):
    # applies a patch of colour or a polygonpatch to the shape which represents the conductor.
    # this allows it to be seen on the graph.
    # print("conductor being coloured is " + str(conductor))
    colour_Patch = PolygonPatch(conductor, facecolor=YELLOW, edgecolor=BLACK, alpha=1.0, zorder=3)
    ax.add_patch(colour_Patch)


def move_Conductor(conductor, x_Position, y_Position):
    conductor_Centre = conductor.centroid  # the current centre of the shape.
    move_To = shapely.geometry.Point(x_Position, y_Position)
    # code below moves the shape around the slot.
    conductor = shapely.affinity.translate(conductor, xoff=(move_To.x - conductor_Centre.x),
                                           yoff=(move_To.y - conductor_Centre.y))
    # print("centroid of this conductor is " + str(conductor.centroid))
    return conductor


def move_Grid_Shape(shape, x_Position, y_Position):
    shape = shapely.affinity.translate(shape, xoff=x_Position, yoff=y_Position)
    return shape


def calculate_Fill_Factor(slot):
    slot_Fill = (10) / slot.area
    return slot_Fill  # fill factor


def get_Random_Point():
    # returns a random point to 1 decimal place within a range, 0.1, 19.5 etc.
    generated_X = round(random.uniform(0, Slot_Size_x), 1)  # uniform is a random float rounded to 1 decimal place
    generated_Y = round(random.uniform(0, Slot_Size_Y), 1)
    generated_Point = shapely.geometry.Point(generated_X, generated_Y)
    return generated_Point


def get_Random_Shape():
    # returns a random shape as a string
    chosen_Shape = random.choice(shapes_In_Use)  # picks a random shape from the shapes in use array.
    # print("random shape chosen is " + chosen_Shape)
    return chosen_Shape


def update_Chart():
    # show the plot.
    pyplot.show()


def shape_Dictionary(shape):
    switch = {
        "Square": create_Square_Conductor(),
        "Triangle": create_Triangular_Conductor(),
        "Circle": create_Circular_Conductor(),
        "Hexagon": create_Hexagon_Conductor()
    }
    return switch.get(shape, "Invalid Shape")


def list_Conductors_Not_In_Slot(containment_Area, array_Of_Conductors):
    # returns a numpy array of conductors not fully contained within the slot
    list_Of_Conductors = []
    for x in range(len(array_Of_Conductors)):
        conductor = array_Of_Conductors[x]
        if containment_Area.contains(conductor) == False:
            list_Of_Conductors.append(conductor)  # push the conductor not contained in the slot
    # print("the number of conductors not inside the slot are " + str(len(list_Of_Conductors)))
    return list_Of_Conductors


def create_Coil(conductor_Array, coil_Point, coil_Angle, coil_Array):
    # This creates a coil from a specified array of shapes, their rotation and the center point of that coils position in the slot
    # should return an array with all the modified positions and rotations of the conductors.
    # coil angle is the angle of the slot in relation to the centre point of rotor, in maxwell this is 0,0

    slot_Centroid = shapely.geometry.Point(Slot_Size_x / 2, Slot_Size_Y / 2)
    distance_From_Zero = math.sqrt(((coil_Point.x - 0) ** 2) + ((coil_Point.y - 0) ** 2))
    print("distance from the zero point for ", distance_From_Zero)

    for x in range(len(conductor_Array)):
        conductor = conductor_Array[x]
        # print(conductor.centroid)
        conductor = rotate_Slot(conductor, coil_Angle)  # minus is clockwise
        coil_Array.append(conductor)  # save the conductors new position in a unique array.

    for y in range(len(coil_Array)):
        coil_Conductor = coil_Array[y]
        coil_Conductor_Centroid = coil_Conductor.centroid
        difference = shapely.geometry.Point(coil_Point.x - slot_Centroid.x,
                                            coil_Point.y - slot_Centroid.y)  # calculate the difference between the original slot in shapely space to conductor slot in maxwell space.
        conductor_Point_X = difference.x + coil_Conductor_Centroid.x
        conductor_Point_Y = difference.y + coil_Conductor_Centroid.y
        coil_Conductor = move_Conductor(coil_Conductor, conductor_Point_X, conductor_Point_Y)
        # colour_Conductor_Helper(coil_Conductor, "RED") # do this else where.
        coil_Array[y] = coil_Conductor  # over ride the original conductor positions with the new ones.

    return coil_Array  # return the array with the modified values.


def mirror_Coil(conductor_Array, shape_Array, scale_Array, rotation_Array):
    # using shape_Array here to see if we correct deviation experienced by the triangular conductors
    half_Way_Point = Slot_Size_x / 2
    mirrored_Coil = []

    # since we are spinning the slot need to reverse the order of x position logic

    for x in range(len(conductor_Array)):
        conductor = conductor_Array[x]
        conductor_Centroid = conductor.centroid
        # also need to mirror points if conductor is rotated.

        if conductor_Centroid.x < half_Way_Point:
            if shape_Array[x] == "Triangle":
                position_x = Slot_Size_x - conductor_Centroid.x - (scale_Array[x] * 0.026)
            else:
                position_x = Slot_Size_x - conductor_Centroid.x

            # position_x = 0 + (Slot_Size_x - conductor_Centroid.x)
            if shape_Array[x] == "Triangle":
                position_y = conductor_Centroid.y - (scale_Array[x] * 0.02738)  # edited for triangle
            else:
                position_y = conductor_Centroid.y
            conductor = move_Conductor(conductor, position_x, position_y)
            conductor = mirror_Slot(conductor, -1,
                                    1)  # we want to mirror only the x axis not the y. this should handle a rotated conductor.

        if conductor_Centroid.x > half_Way_Point:
            if shape_Array[x] == "Triangle":
                position_x = Slot_Size_x - conductor_Centroid.x - (scale_Array[x] * 0.026)
            else:
                position_x = Slot_Size_x - conductor_Centroid.x
            # position_x = Slot_Size_x - conductor_Centroid.x
            if shape_Array[x] == "Triangle":
                position_y = conductor_Centroid.y - (scale_Array[x] * 0.02738)  # edited for triangle
            else:
                position_y = conductor_Centroid.y
            conductor = move_Conductor(conductor, position_x, position_y)
            conductor = mirror_Slot(conductor, -1,
                                    1)  # we want to mirror only the x axis not the y. this should handle a rotated conductor.

        if conductor_Centroid.x == half_Way_Point:
            conductor = conductor



        mirrored_Coil.append(conductor)

    return mirrored_Coil

    # takes a conductor array and mirrors it before it's final coil values are set.


def get_Grid():
    # get the number of rows and columns and cell size
    ratio = (Slot_Size_x) / (Slot_Size_Y) # *** for safety reasons we take 0.1 of a mm off so that the conductors do not touch the slot in the simulation. ***
    n_Cols = math.sqrt(Number_of_conductors * ratio)
    n_Rows = Number_of_conductors / n_Cols

    # find the best option filling the slot height
    n_Rows_1 = math.ceil(n_Rows)
    n_Cols_1 = math.ceil(Number_of_conductors / n_Rows_1)

    while (n_Rows_1 * ratio < n_Cols_1):
        n_Rows_1 += 1
        n_Cols_1 = math.ceil(Number_of_conductors / n_Rows_1)

    cell_Size_1 = (Slot_Size_Y) / n_Rows_1

    # find the best option for filling the width
    n_Cols_2 = math.ceil(n_Cols)
    n_Rows_2 = math.ceil(Number_of_conductors / n_Cols_2)

    while (n_Cols_2 < n_Rows_2 * ratio):
        n_Cols_2 += 1
        n_Rows_2 = math.ceil(Number_of_conductors / n_Cols_2)

    cell_Size_2 = (Slot_Size_x) / n_Cols_2

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
    get_Grid_Cell_Size = cell_Size_Final  # store this for use later.

    return n_Rows_Final, n_Cols_Final, cell_Size_Final


def get_Grid_For_Layer(layer_Size_Y, conductors_Per_Layer):
    # get the number of rows and columns and cell size
    ratio = Slot_Size_x / layer_Size_Y
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

    cell_Size_2 = Slot_Size_x / n_Cols_2

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

def get_Coil_Mass(coil_Mass_Array):
    # calculate the mass of the coil in kg, for copper
    # copper density = 8940 kg/m^3
    coil_Final_Mass = 0 # in kg
    conductor_Length = (210 + 25 + 25)  # 210mm for the stator iron length, 2.5cm * 2 for the end winding length. from cm to mm

    for x in range(len(coil_Mass_Array)):
        coil_Final_Mass += ((coil_Mass_Array[x] * conductor_Length) / 1000000000) * 8940 # convert mm3 into m3 then multiply by density kg/m3 to get value in kg.
    coil_Final_Mass = coil_Final_Mass * 2 # 2 slots per concentrated coil
    return coil_Final_Mass

def get_Fill_Factor(coil_Mass_Array):
    # calculate the fill factor
    coil_Area = 0
    for x in range(len(coil_Mass_Array)):
        coil_Area += coil_Mass_Array[x]

    fill_Factor_Calc = (coil_Area / (Slot_Size_x * Slot_Size_Y)) * 100
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

def Experiment_2(shape_List, rotation_List):
    # create file paths

    # print("Experiment_1.py :: scale array length : ", len(scale_Array))
    # print("Experiment_1.py :: scale array values : ", scale_Array)

    # these values are fixed
    zeta_C = 1.29068
    zeta_N = 5
    rotation_Array = []

    new_Directory = directory_Creator.create_Directory() # creates a directory, by reading ini file counter, returns a string.

    conductor_Array = [] # local reference variable
    scale_Array = []  # we don't pass scale parameters in the random distribution. C and N does that for us.

    # need to change global variables to local variables for the script to run correctly for consecutive script executions.
    conductor_Array_1 = []  # an empty array to hold the conductor position for the 1st slot region
    conductor_Array_2 = []  # an empty array to hold the conductor position for the 2nd slot region
    mirror_Conductor_Array = []  # an array that hold the mirror image of the conductor positions
    grid_Array = []
    coil_Mass_Array = []  # an array that stores the individual masses of the conductors for addition later.
    coil_Weight = 0  # final coil weight in kg.
    skin_Depth_Array = []  # an array that contains booleans, if an conductor is greater than 3.5 m in radius or 7mm diameter it must get meshed in a special way.
    shape_Array = []  # An array containing all the shapes, used to determine which functions to trigger in vbs_Script_Creator, store scale factor.

    # matplotlib plot for image output of the slot-------------------------------------------------------------------------
    fig = matplotlib.pyplot.figure(1, figsize=shapely.figures.SIZE, dpi=90, facecolor=None, edgecolor=None,
                                   frameon=True, clear=True)
    fig.set_frameon(True)
    ax = fig.add_subplot(111)
    fill_Factor = 100
    slot_Configuration = 1
    ax.set_title('Slot Configuration = ' + str(slot_Configuration) + ' Fill Factor = ' + str(fill_Factor))
    ax.set_xlabel("Slot Width" + str(Slot_Size_x) + " mm")
    ax.set_ylabel("Slot Height" + str(Slot_Size_Y) + " mm")

    set_limits(ax, 0, Slot_Size_x, 0, Slot_Size_Y)
    set_limits(ax, 0, 150, 0, 150)
    # ---------------------------------------------------------------------------------------------------------------------
    # define the slot boundaries ------------------------------------------------------------------------------------------
    slot = shapely.geometry.box(0, 0, Slot_Size_x, Slot_Size_Y)
    # colour the slot
    patch = PolygonPatch(slot, facecolor=BLUE, edgecolor=BLUE, alpha=1.0, zorder=1)
    ax.add_patch(patch)
    # ---------------------------------------------------------------------------------------------------------------------

    # start the experiment. -------------------------------------------------------------------------------------------

    if Is_Random_Test == True:

        area = Slot_Size_x * Slot_Size_Y
        counter = 0

        for x in range(Number_of_conductors):
            # print(x)
            counter += 1
            conductor_Final_Area = area / (zeta(zeta_C, zeta_N) * (x + zeta_N) ** zeta_C)
            zeta_Length = math.sqrt(conductor_Final_Area)
            # conductor_Shape = get_Random_Shape()
            conductor_Shape = shape_List[x]

            conductor_ = ""

            # "Square" = 1, "Circle" = 2, "Triangle" = 3, "Hexagon" = 4
            if conductor_Shape == 1:
                conductor_ = create_Square_Conductor()
                shape_Array.append("Square")
            if conductor_Shape == 2:
                conductor_ = create_Circular_Conductor()
                shape_Array.append("Circle")
            if conductor_Shape == 3:
                conductor_ = create_Triangular_Conductor()
                shape_Array.append("Triangle")
            if conductor_Shape == 4:
                conductor_ = create_Hexagon_Conductor()
                shape_Array.append("Hexagon")

            conductor_Area = conductor_.area
            conductor_Length = math.sqrt(conductor_Area)
            # print("conductor area before scale ", conductor_.area)
            length_Ratio = (zeta_Length / conductor_Length)
            # scale the conductor to hurwitz zeta function scale
            conductor_ = scale_Conductor(conductor_, length_Ratio)
            scale_Array.append(length_Ratio)  # length ratio is the scale factor for random distribution.
            # print("zeta area ", conductor_Final_Area)
            # print("conductor area ", conductor_.area)

            # push conductor area into the coil mass array for total mass calculation
            coil_Mass_Array.append(conductor_.area)

            # rotate the conductor via rotation list

            conductor_ = rotate_Conductor(conductor_, rotation_List[x])
            rotation_Array.append(rotation_List[x])


            # now lets test to see if conductor is in slot and is not colliding with other conductors

            # ** NOTE ** going to modify values from 0.0535 to 0.062

            while conductor_Is_Colliding(conductor_, conductor_Array) == True:
                random_Position = get_Random_Point()

                # check if conductor shape is "Triangle" ** use fix **
                if conductor_Shape == 3:
                    conductor_ = move_Conductor(conductor_, random_Position.x, (
                                random_Position.y))  # - (length_Ratio * 0.062)))  # original 0.0535
                else:
                    conductor_ = move_Conductor(conductor_, random_Position.x, random_Position.y)

                while conductor_In_Slot_Helper(slot, conductor_) == False:
                    random_Position = get_Random_Point()

                    # check if conductor shape is "Triangle" ** use fix **
                    if conductor_Shape == 3:
                        conductor_ = move_Conductor(conductor_, random_Position.x, (
                                    random_Position.y))  # - (length_Ratio * 0.062)))  # original 0.0535
                    else:
                        conductor_ = move_Conductor(conductor_, random_Position.x, random_Position.y)
            else:
                while conductor_In_Slot_Helper(slot, conductor_) == False:
                    random_Position = get_Random_Point()

                    # check if conductor shape is "Triangle" ** use fix **
                    if conductor_Shape == 3:
                        conductor_ = move_Conductor(conductor_, random_Position.x, (
                                    random_Position.y))  # - (length_Ratio * 0.062)))  # original 0.0535
                    else:
                        conductor_ = move_Conductor(conductor_, random_Position.x, random_Position.y)

                    while conductor_Is_Colliding(conductor_, conductor_Array) == True:
                        random_Position = get_Random_Point()

                        # check if conductor shape is "Triangle" ** use fix **
                        if conductor_Shape == 3:
                            conductor_ = move_Conductor(conductor_, random_Position.x, (
                                        random_Position.y))  # - (length_Ratio * 0.062)))  # original 0.0535
                        else:
                            conductor_ = move_Conductor(conductor_, random_Position.x, random_Position.y)

            # check to see if the conductor is bigger than the skin depth radius of 3.5 (pre-calculated) or 7mm for diameter
            if (math.sqrt(conductor_.area)) >= 7:
                skin_Depth_Array.append(True)
                # print("conductor length", math.sqrt(conductor_.area))
            else:
                skin_Depth_Array.append(False)
                # print("conductor length", math.sqrt(conductor_.area))

            conductor_Array.append(conductor_)
            colour_Conductor(conductor_, ax)  # colour the conductor yellow0

            print("conductor ", x, " is a ", conductor_Shape, " placed at position ", conductor_.centroid)

    print("skind dpeth array", len(skin_Depth_Array), skin_Depth_Array)
    # calculate the coil weight
    coil_Weight = get_Coil_Mass(coil_Mass_Array)  # in kg
    print("Theoretical weight of the coil in kg is ", coil_Weight)

    #calculate the fill factor
    fill_Factor = get_Fill_Factor(coil_Mass_Array)

    # get the coil number
    slot_Configuration = ini_File_Creator.read_Ini_File_Test()

    # setup for plotting the coil image
    ax.set_title('Coil Configuration = ' + str(slot_Configuration) + ' Fill Factor = ' + str(fill_Factor)) # get this number from the ini file.
    ax.set_xlabel('Slot Width ' + str(Slot_Size_x) + '(mm)')
    ax.set_ylabel('Slot Height ' + str(Slot_Size_Y) + '(mm)')
    set_limits(ax, 0, Slot_Size_x, 0, Slot_Size_Y)
    # set_limits(ax, 0, 150, 0, 150)

    # Create the coils for VBS Script translation.

    # this creates the first half of the concentrated coil and stores the modified conductors positions and rotations into a new array, so we don't lose the old data.
    conductor_Array_1 = create_Coil(conductor_Array, coil_Center_1, -187.5, conductor_Array_1)  # original value -7

    # create a mirror image of the conductor array
    mirror_Conductor_Array = mirror_Coil(conductor_Array, shape_Array, scale_Array, rotation_List)

    # create the second half of the concentrated coil, again we keep the original data intact.
    conductor_Array_2 = create_Coil(mirror_Conductor_Array, coil_Center_2, -202.49999999, conductor_Array_2)  # original is -23, however add -180 to flip slot
    # mirror this slot such that we get shape parity with the turns.

    # save pyplot image
    pyplot.savefig(new_Directory + '/coil_Image_' + str(slot_Configuration), dpi=400) # this should be a string variable so its easily changed.

    vbs_Script_File = new_Directory + '/Vbs_Script_CN_' + str(slot_Configuration) + '.vbs'
    # create the script that will run maxwell and output the results to be read.
    # coil_Script = vbs_Script_Creator_ExperimentVer
    coil_Script = vbs_Script_Creator_ExperimentVer_2
    coil_Script.create_Dynamic_Vbs_Script(conductor_Array_1, conductor_Array_2, shape_Array, skin_Depth_Array, "true", vbs_Script_File, new_Directory, slot_Configuration)

    # run vbs script.
    # os.system(vbs_Script_File)
    #os.system(new_Directory + "/simulation_CN_" + str(slot_Configuration) + ".vbs") # python will wait until the vb script is finished processing.
    file_To_Run = r'"' + vbs_Script_File + '"'
    os.system(file_To_Run)
    # print("vbs file directory :: ", file_To_Run)


    #if os.path.isfile(vbs_Script_File) == False:
        #print("file does not exist!!")
    #else:
        #print("file exists!!")

    # read values, efficiency, losses, rotor torque
    # push values to global variable to be read by Optislang, Return a tuple consisting of, efficiency, losses.

    # read the loss data # ** remember losses are in kw, must convert to watts.
    # pass new directory
    # pass slot configuration
    get_Losses = excel_Tool.read_Losses_Data(new_Directory, slot_Configuration) # in watts
    get_Torque = excel_Tool.read_Torque_Data(new_Directory, slot_Configuration) # in nm

    # push these values to excel.
    # Currently these are dummy values.

    machine_Output_Power = get_Torque * (1500 * 0.10472) # this value in watts.  # 1 rpm = 0.10472 rad/s
    machine_Losses = get_Losses - 8000 # (originally 3000w)in watts # could calibrate by taking 3000 watts off, for every 1kw we save roughly 1 %
    # losses are calibrated against motorcad electromagnetic and thermal model, loss = 16280, efficiency around 89.839%
    # an identical maxwell coil layout is used to calibrate against the motorcad machine to calibrate loss to motorcad model.
    machine_Input_Power = machine_Output_Power + machine_Losses # in watts
    machine_Efficiency = (machine_Output_Power / machine_Input_Power) * 100 # %

    # create the excel file with coil layout in it
    # ** added rotation array to the excel file export, need to be saved.
    excel_Tool.write_Coil_To_Excel_Experiment_Version(shape_Array, conductor_Array, scale_Array, rotation_Array, coil_Weight, fill_Factor, machine_Efficiency, machine_Losses, new_Directory, slot_Configuration)

    # make sure file exist.

    # increase the coil counter
    ini_File_Creator.update_Coil_Counter()

    return machine_Efficiency, machine_Losses