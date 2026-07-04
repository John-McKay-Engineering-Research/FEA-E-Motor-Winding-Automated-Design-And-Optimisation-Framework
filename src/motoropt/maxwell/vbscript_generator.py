"""
vbscript_generator.py

Generates ANSYS Maxwell Visual Basic automation scripts for custom motor
winding simulations.

This module is a conservative refactor of the legacy
`vbs_Script_Creator_ExperimentVer_2.py` file.

IMPORTANT
---------
The generated Maxwell command order is critical. Do not reorder the generated
sections unless the output has been validated inside ANSYS Maxwell.

The high-level command order is intentionally preserved from the legacy script:

1. Start ANSYS Electronics Desktop / Maxwell automation.
2. Open the source Maxwell project.
3. Save the project as a simulation-specific AEDT file.
4. Select and rename the active design.
5. Activate the 3D Modeler editor.
6. Generate the first coil geometry.
7. Generate the second coil geometry.
8. Apply boundary setup, coil assignments and eddy-current settings.
9. Run the Maxwell analysis.
10. Export torque and loss reports.
11. Save, close and quit Maxwell.

John McKay 2026

"""

import math
from pathlib import Path


# Maxwell project constants retained from the legacy workflow.
# These are kept in one place so they are easier to review/change later.
BASE_PROJECT_PATH = (
    r"C:/Users/John McKay/Desktop/final_Experiment_Simulation_Models/"
    r"Motor_191C_M250_35A_AlSi10Mg_Ver2_ANSYSEM_2D_Final.aedt"
)
BASE_PROJECT_NAME = "Motor_191C_M250_35A_AlSi10Mg_Ver2_ANSYSEM_2D_Final"
BASE_DESIGN_NAME = "Motor-CAD Motor_191C_M250_35A_AlSi10Mg_Ver2"
WINDING_NAME = "phase_A_Solid"
CONDUCTOR_MATERIAL = "AlSi10Mg_191.2C"

# The legacy script used module-level counters and a conductor-name array.
# They are preserved for now to avoid changing behaviour during this first
# Maxwell refactor. They are reset at the start of each generated script.
circle_count = 0
square_count = 0
triangle_count = 0
hexagon_count = 0
conductor_name_array = []


def reset_generator_state() -> None:
    """
    Reset conductor counters before generating a new VBScript file.

    This preserves the behaviour of the legacy script, where shape counters and
    conductor names had to be reset before every generated simulation. If this
    is not done, conductor names can compound across multiple generated scripts.
    """
    global circle_count
    global square_count
    global triangle_count
    global hexagon_count
    global conductor_name_array

    circle_count = 0
    square_count = 0
    triangle_count = 0
    hexagon_count = 0
    conductor_name_array = []


def join_vbs_lines(lines: list[str]) -> str:
    """
    Join VBScript command lines into the final script text.

    Each list entry is one VBScript line. This keeps the Python code more
    readable than repeated string concatenation while preserving command order.
    """
    return "\n".join(lines) + "\n"


def create_dynamic_vbs_script(
    conductor_array_1,
    conductor_array_2,
    shape_array,
    skin_depth_array,
    write_to_file,
    file_path,
    output_directory,
    coil_number,
) -> str:
    """
    Create a Maxwell VBScript automation file for one simulation run.

    Parameters mirror the original legacy function closely so that existing
    experiment scripts can be migrated gradually.

    The command ordering inside this function should be treated as fixed unless
    the generated `.vbs` output has been validated in Maxwell.
    """
    reset_generator_state()
    output_directory = str(output_directory)

    script_lines = []

    # 1. Start ANSYS Electronics Desktop / Maxwell automation.
    script_lines.extend([
        "Dim oAnsoftApp ",
        "Dim oDesktop ",
        "Dim oProject ",
        "Dim oDesign ",
        "Dim oEditor ",
        "Dim oModule ",
        'Set oAnsoftApp = CreateObject("Ansoft.ElectronicsDesktop") ',
        "Set oDesktop = oAnsoftApp.GetAppDesktop() ",
        "oDesktop.RestoreWindow ",
    ])

    # 2. Open the source Maxwell project and make it active.
    script_lines.extend([
        f'Set oProject = oDesktop.OpenProject("{BASE_PROJECT_PATH}") ',
        f'Set oProject = oDesktop.SetActiveProject("{BASE_PROJECT_NAME}") ',
    ])

    # 3. Save the project as a simulation-specific AEDT file.
    script_lines.append(
        f'oProject.SaveAs "{output_directory}/simulation_CN_{coil_number}.aedt", true'
    )

    # 4. Select and rename the active design.
    script_lines.extend([
        f'Set oDesign = oProject.SetActiveDesign("{BASE_DESIGN_NAME}") ',
        f'oDesign.RenameDesignInstance "{BASE_DESIGN_NAME}", "simulation_CN_{coil_number}"',
        "",
    ])

    # 5. Activate the 3D Modeler editor.
    script_lines.extend([
        'Set oEditor = oDesign.SetActiveEditor("3D Modeler") ',
        "",
    ])

    # 6. Generate first coil geometry.
    script_lines.append(
        describe_coil_vbs(conductor_array_1, shape_array, skin_depth_array, "positive")
    )

    # 7. Generate second coil geometry.
    script_lines.extend([
        "",
        "' ************************************",
        "' ***Second Coil begins here***",
        "' ************************************",
        describe_coil_vbs(conductor_array_2, shape_array, skin_depth_array, "negative"),
        "",
    ])

    # 8. Apply boundary setup, coil assignments and eddy-current settings.
    script_lines.append(create_boundary_setup_commands())

    # 9-11. Run analysis, export results, save, close and quit Maxwell.
    script_lines.extend([
        "oDesign.AnalyzeAll",
        'Set oModule = oDesign.GetModule("ReportSetup")',
        f'oModule.ExportToFile "max_Torque", "{output_directory}/max_Torque_{coil_number}.csv", false',
        f'oModule.ExportToFile "max_Loss", "{output_directory}/max_Loss_{coil_number}.csv", false',
        "oProject.Save",
        f'oDesktop.CloseProject "simulation_CN_{coil_number}"',
        "oDesktop.QuitApplication",
    ])

    script = join_vbs_lines(script_lines)

    if write_to_file == "true" or write_to_file is True:
        write_vbs_file(script, file_path)

    return script


def describe_coil_vbs(conductor_Array, shape_Array, skin_Depth_Array, polarity):
    script = ""
    polarity = polarity # "negative" or "positive"
    #print(len(list(conductor_Array[1].exterior.coords)))
    # This script creates the coil structure for maxwell based on the coil configuration generated.
    circle_Name = "circle_Conductor_"
    square_Name = "square_Conductor_"
    triangle_Name = "triangle_Conductor_"
    hexagon_Name = "hexagon_Conductor_"
    # used as part of name convention for example, "circle_Conductor_1"

    global circle_count
    global square_count
    global triangle_count
    global hexagon_count

    circle_counter = circle_count
    square_counter = square_count
    triangle_counter = triangle_count
    hexagon_counter = hexagon_count

    conductor_Centroid = 0

    # winding_Name = "phase_B_Custom" # NOTE*** NEED TO CHANGE THIS!!!!!
    winding_Name = "phase_A_Solid"  # new winding.
    skin_Depth_Array = skin_Depth_Array # this array will be propogated with information regarding wether a conductor needs to be meshed in a special way.

    for x in range(len(conductor_Array)):
        # Lets go through conductor array 1, left hand slot, **negative polarity** **Phase B return**
        # CODE for CIRCLE creation
        if shape_Array[x] == "Circle": # shape array and conductor array are the same size

            circle_counter += 1 # don't want a conductor 0 situation
            conductor_Centroid = conductor_Array[x].centroid
            circle_Size = math.sqrt(conductor_Array[x].area) / 2
            script += "oEditor.CreateCircle Array(" + '"NAME:CircleParameters"' + ", " '"IsCovered:="' + ", " "true, " + '"XCenter:="' + "," + "  _" + "\n"
            script += '  "' + str(conductor_Centroid.x) + "mm" + '"' + ", " + '"YCenter:="' + ", " + '"' + str(conductor_Centroid.y) + "mm" + '"' + ", " + '"ZCenter:="' + ", " + '"0mm"' + ", " + '"Radius:="' + ", " + '"' + str(circle_Size) + 'mm"' + ", " + '"WhichAxis:="' + "," + "  _" + "\n"
            script += '  "Z"' + ", " + '"NumSegments:="' + ", " '"0"' + ")" + ", " + "Array(" + '"NAME:Attributes"' + ", " + '"Name:="' + ", " + '"' + "Circle1" + '"' + ", " + '"Flags:="' + ", " + " _" + "\n"
            script += '  ""' + ", " + '"Color:="' + ", " + '"(143 175 143)"' + ", " + '"Transparency:="' + ", " + "0" + ", " + '"PartCoordinateSystem:="' + ", " + " _" + "\n"
            script += '  "Global"' + ", " + '"UDMId:="' + ", " + '""' + ", " + '"MaterialValue:="' + ", " + '"" ' + "& " + "Chr(34)" + " & " + '"vacuum"' + " & " + "Chr(34)" + " & " + '""' + ", " + '"SurfaceMaterialValue:="' + "," + "  _" + "\n"
            script += '  ""' + " & " + "Chr(34)" + " & " + '""' " & " "Chr(34)" + " & " '""' + ", " + '"SolveInside:="' + ", " "true" + ", " + '"ShellElement:="' + ", " + " _" + "\n"
            script += "  false" + ", " + '"ShellElementThickness:="' + ", " + '"0mm"' + ", " + '"IsMaterialEditable:="' + ", " "true, " + '"UseMaterialAppearance:="' + ", " + " _" + "\n"
            script += "  false" + ", " + '"IsLightweight:="' + ", " + "false)" + "\n"
            script += "\n"

            # CODE sets up the conductors as 1 coil turn per conductor, made of copper and determines polarity, positive or negative, aka electric field flowing out(positive) of the screen or into it(negative).
            # script += "Set " + "oModule" + " = " "oDesign.GetModule" + "(" + '"BoundarySetup"' + ")" + "\n"
            # script += "oModule.AssignCoil Array" + "(" + '"NAME:' + circle_Name + str(circle_counter) + '"' + ", " + '"Objects:="' + ", " + "Array(" + '"' + circle_Name + str(circle_counter) + '"' + "), " + '"Conductor number:=", ' + "  _" + "\n"
            # script += '  "1"' + ", " + '"PolarityType:="' + ", " + '"' + polarity + '"' + ")" + "\n"
            # script += "\n"

            # Code below changes the name of the conductor, material, and colour of shape.
            # all circles will default to name "Circle1", before having their name changed.
            # change conductor name
            script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array _" + "\n"
            script += '("NAME:Geometry3DAttributeTab",' + ' Array("NAME:PropServers", _' + "\n"
            script += '  "Circle1"), ' + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Name", ' + '"Value:=", ' + '"' + circle_Name + str(circle_counter) + '"' + "))))" + "\n"
            script += "\n"

            # change conductor material
            script += "oEditor.ChangeProperty Array(" + '"NAME:AllTabs", ' + 'Array("NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers", _' + "\n"
            script += '  "' + circle_Name + str(circle_counter) + '")' + ", " + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Material", "Value:=", _' + "\n"
            script += '  "" ' + '& Chr(34) & "AlSi10Mg_191.2C" & Chr(34) & ""))))' + "\n"
            script += "\n"

            # change the colour of the conductor
            script += 'oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _' + "\n"
            script += '  "' + circle_Name + str(circle_counter) + '"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", ' + '128, "B:=", _' + "\n"
            script += "  0))))" + "\n"
            script += "\n"

            # set the number of segments in the circle :: 12
            script += 'oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", ' + 'Array("NAME:PropServers", _' + "\n"
            script += '  "' + circle_Name + str(circle_counter) + ':CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _' + "\n"
            script += '  "12"))))' + "\n"
            script += "\n"

            # add the conductor name to the array for processing boundary conditions later.
            conductor_Name = circle_Name + str(circle_counter)
            conductor_name_array.append(conductor_Name)

            # CODE below changes the material of the conductor to copper and its colour represented in the editor (Circle)
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + circle_Name + str(circle_counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Material", ' + '"Value:=", ' + '""' + " & " + "Chr(34)" + " & " + '"copper"' + " & " + "Chr(34)" + " & " '""))))' + "\n"

            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + circle_Name + str(circle_counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Color", ' + '"R:=", ' "255, " + '"G:=", ' + "128, " '"B:=",' + "  _" + "\n"
            # script += "  0))))" + "\n"

            # add the conductor to the winding
            # script += "oModule.AddWindingCoils " + '"' + winding_Name + '", ' + "Array(" + '"' + circle_Name + str(circle_counter) + '")' + "\n"
            # script += "\n"

            # set the eddy effects for this conductor in our winding
            # script += "oModule.SetEddyEffect Array(" + '"NAME:Eddy Effect Setting", ' + "Array(" + '"NAME:EddyEffectVector",' + "  _" + "\n"
            # script += " Array(" + '"NAME:Data", ' + '"Object Name:=", ' + '"' + circle_Name + str(circle_counter) + '", ' + '"Eddy Effect:=", ' + "true)))" + "\n"
            # script += "\n"

            # change the number of segments that create a circle, for optimisation purposes, segment number = 12
            # script += "Set oEditor" + " = " + "oDesign.SetActiveEditor(" + '"3D Modeler"' + ")" + "\n"
            # script += "oEditor.ChangeProperty Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DCmdTab", ' + "Array(" + '"NAME:PropServers",  _' + "\n"
            # script += '"' + circle_Name + str(circle_counter) + ':CreateCircle:1"), ' + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Number of Segments", ' + '"Value:=",  _' + "\n"
            # script += '"12"))))' + "\n" # number of segments that make up a circle = 12. optimisation.
            # script += "\n"

            # check to see if conductor needs to have a special mesh operation applied to capture eddy effects.
            # if skin_Depth_Array[x] == True:
                # script += "Set oModule = oDesign.GetModule(" + '"MeshSetup")' + "\n"
                # outside conductor mesh refinement
                # script += 'oModule.AssignLengthOp Array("NAME:' + circle_Name + str(circle_counter) + "_outside_Refine" + '", ' + '"RefineInside:=", ' + "false, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + circle_Name + str(circle_counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # inside conductor mesh refinement.
                # script += 'oModule.AssignLengthOp Array("NAME:' + circle_Name + str(circle_counter) + "_inside_Refine" + '", ' + '"RefineInside:=", ' + "true, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + circle_Name + str(circle_counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # script += "\n"

        if shape_Array[x] == "Square":
            square_counter += 1
            # must be carefull with polylines, the first and last points are repeated, the number of segments between points starts at
            conductor = conductor_Array[x]
            shape_Coordinates = list(conductor.exterior.coords) # get an array of all coordinates that make up the point.
            shape_Coordinates_Length = len(shape_Coordinates) # count how many coordinates there are.
            script += "oEditor.CreatePolyline Array(" + '"NAME:PolylineParameters"' + ", " + '"IsPolylineCovered:="' + ", " + "true" + ", " + '"IsPolylineClosed:="' + ", " + "true" + "," + "  _" + "\n"

            script += "  Array(" +'"NAME:PolylinePoints"' + "," + "  _" + "\n"

            for y in range(shape_Coordinates_Length): # start adding the coordinates to the array of points that make up the shape
                if y == shape_Coordinates_Length - 1: # need to close the brackets )) or the code will throw and error
                    script += "  Array(" + '"NAME:PLPoint"' + ", " + '"X:="' + ", " + '"' + str(shape_Coordinates[y][0]) + "mm" + '"' + ", " '"Y:="' + ", " + '"' + str(shape_Coordinates[y][1]) + "mm" + '"' + ", " + '"Z:="' + ", " + '"0mm"' + "))" + "," + "  _" + "\n"
                    break
                if y < shape_Coordinates_Length:
                    script += "  Array(" + '"NAME:PLPoint"' + ", " + '"X:="' + ", " + '"' + str(shape_Coordinates[y][0]) + "mm" + '"' + ", " '"Y:="' + ", " + '"' + str(shape_Coordinates[y][1]) + "mm" + '"' + ", " + '"Z:="' + ", " + '"0mm"' + ")" + "," + "  _" + "\n"

            # describe the polyline segments
            script += "  Array(" + '"NAME:PolylineSegments"' + "," + "  _" + "\n"

            counter = 0 #simple counter
            for y in range(shape_Coordinates_Length):
                counter += 1
                if y == shape_Coordinates_Length - 1:
                    script += "  Array(" + '"NAME:PLSegment"' + ", " + '"SegmentType:="' + ", " + '"Line"' + ", " + '"StartIndex:="' + ", " + str(counter - 1) + ", " + '"NoOfPoints:="' + ", " + "2))," + "  _" + "\n" # close off the segment array
                    break
                if y < shape_Coordinates_Length:
                    script += "  Array(" + '"NAME:PLSegment"' + ", " + '"SegmentType:="' + ", " + '"Line"' + ", " + '"StartIndex:="' + ", "  + str(counter - 1) + ", "  + '"NoOfPoints:="' + ", " + "2)," + "  _" + "\n"

            script += "  Array(" + '"NAME:PolylineXSection"' + ", " '"XSectionType:="' + ", " + '"None"' + ", " + '"XSectionOrient:="' + "," + "  _" + "\n"
            script += '  "0mm"' + ", " '"XSectionNumSegments:="' + ", " + '"0"' + ", " + '"XSectionBendType:="' + ", " + '"Corner"' + ")), " + "Array(" + '"NAME:Attributes"' + ", " + '"Name:="' + "," + "  _" + "\n"
            script += '  "' + "Polyline1" + '"' + ", " + '"Flags:="' + ", " '"", ' + '"Color:="' + ", " + '"(143 175 143)", ' + '"Transparency:=", ' + "0, " + '"PartCoordinateSystem:=",' + "  _" + "\n"
            script += '  "Global", ' + '"UDMId:=", ' + '"", ' + '"MaterialValue:=", ' + '"" ' + "& " + "Chr(34) " + "& " + '"vacuum"' + " & " + "Chr(34) " "& " '"", ' + '"SurfaceMaterialValue:=",' + "  _" + "\n"
            script += '  ""' + " & " + "Chr(34)" + " & " + '""' + " & " + "Chr(34)" + " & " + '"", ' + '"SolveInside:=", ' + "true, " + '"ShellElement:=",' + "  _" + "\n"
            script += "  false, " + '"ShellElementThickness:=", ' + '"0mm", ' + '"IsMaterialEditable:=", ' + "true, " + '"UseMaterialAppearance:=",' + "  _" + "\n"
            script += "  false, " + '"IsLightweight:=", ' + "false)" + "\n"
            script += "\n"

            # change conductor name
            script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array _" + "\n"
            script += '("NAME:Geometry3DAttributeTab",' +  'Array("NAME:PropServers", _' + "\n"
            script += '  "Polyline1"), ' + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Name", ' + '"Value:=", ' + '"' + square_Name + str(square_counter) + '"' + "))))" + "\n"
            script += "\n"

            # change conductor material
            script += "oEditor.ChangeProperty Array(" + '"NAME:AllTabs", ' + 'Array("NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers", _' + "\n"
            script += '  "' + square_Name + str(square_counter) + '")' + ", " + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Material", "Value:=", _' + "\n"
            script += '  "" ' + '& Chr(34) & "AlSi10Mg_191.2C" & Chr(34) & ""))))' + "\n"
            script += "\n"

            # change the colour of the conductor
            script += 'oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _' + "\n"
            script += '  "' + square_Name + str(square_counter) + '"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", ' + '128, "B:=", _' + "\n"
            script += "  0))))" + "\n"
            script += "\n"

            # add the conductor name to the array for processing boundary conditions later.
            conductor_Name = square_Name + str(square_counter)
            conductor_name_array.append(conductor_Name)

            # CODE sets up the conductors as 1 coil turn per conductor, made of copper and determines polarity, positive or negative, aka electric field flowing out(positive) of the screen or into it(negative).
            # script += "Set " + "oModule" + " = " "oDesign.GetModule" + "(" + '"BoundarySetup"' + ")" + "\n"
            # script += "oModule.AssignCoil Array" + "(" + '"NAME:' + square_Name + str(square_counter) +'"' + ", " + '"Objects:="' + ", " + "Array(" + '"' + square_Name + str(square_counter) + '"' + "), " + '"Conductor number:=", ' + "  _" + "\n"
            # script += '  "1"' + ", " + '"PolarityType:="' + ", " + '"' + polarity + '"' + ")" + "\n"
            # script += "\n"

            # CODE below changes the material of the conductor to copper and its colour represented in the editor (Circle)
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + square_Name + str(square_counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Material", ' + '"Value:=", ' + '""' + " & " + "Chr(34)" + " & " + '"copper"' + " & " + "Chr(34)" + " & " '""))))' + "\n"
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + square_Name + str(square_counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Color", ' + '"R:=", ' "255, " + '"G:=", ' + "128, " '"B:=",' + "  _" + "\n"
            # script += "  0))))" + "\n"
            # script += "\n"

            # add the conductor to the winding
            # script += "oModule.AddWindingCoils " + '"' + winding_Name + '", ' + "Array(" + '"' + square_Name + str(square_counter) + '")' + "\n"
            # script += "\n"

            # set the eddy effects for this conductor in our winding
            # script += "oModule.SetEddyEffect Array(" + '"NAME:Eddy Effect Setting", ' + "Array(" + '"NAME:EddyEffectVector",' + "  _" + "\n"
            # script += " Array(" + '"NAME:Data", ' + '"Object Name:=", ' + '"' + square_Name + str(square_counter) + '", ' + '"Eddy Effect:=", ' + "true)))" + "\n"
            # script += "\n"

            # check to see if conductor needs to have a special mesh operation applied to capture eddy effects.
            # if skin_Depth_Array[x] == True:
                # script += "Set oModule = oDesign.GetModule(" + '"MeshSetup")' + "\n"
                # outside conductor mesh refinement
                # script += 'oModule.AssignLengthOp Array("NAME:' + square_Name + str(square_counter) + "_outside_Refine" + '", ' + '"RefineInside:=", ' + "false, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + square_Name + str(square_counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # inside conductor mesh refinement.
                # script += 'oModule.AssignLengthOp Array("NAME:' + square_Name + str(square_counter) + "_inside_Refine" + '", ' + '"RefineInside:=", ' + "true, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + square_Name + str(square_counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # script += "\n"

        if shape_Array[x] == "Triangle":
            triangle_counter += 1
            # must be carefull with polylines, the first and last points are repeated, the number of segments between points starts at
            shape_Coordinates = list(conductor_Array[x].exterior.coords)  # get an array of all coordinates that make up the point.
            shape_Coordinates_Length = len(shape_Coordinates) # count how many coordinates there are.
            script += "oEditor.CreatePolyline Array(" + '"NAME:PolylineParameters"' + ", " + '"IsPolylineCovered:="' + ", " + "true" + ", " + '"IsPolylineClosed:="' + ", " + "true" + "," + "  _" + "\n"

            script += "  Array(" + '"NAME:PolylinePoints"' + "," + "  _" + "\n"

            for y in range(shape_Coordinates_Length):  # start adding the coordinates to the array of points that make up the shape
                if y == shape_Coordinates_Length - 1:  # need to close the brackets )) or the code will throw and error
                    script += "  Array(" + '"NAME:PLPoint"' + ", " + '"X:="' + ", " + '"' + str(shape_Coordinates[y][0]) + "mm" + '"' + ", " '"Y:="' + ", " + '"' + str(shape_Coordinates[y][1]) + "mm" + '"' + ", " + '"Z:="' + ", " + '"0mm"' + "))" + "," + "  _" + "\n"
                    break
                if y < shape_Coordinates_Length:
                    script += "  Array(" + '"NAME:PLPoint"' + ", " + '"X:="' + ", " + '"' + str(shape_Coordinates[y][0]) + "mm" + '"' + ", " '"Y:="' + ", " + '"' + str(shape_Coordinates[y][1]) + "mm" + '"' + ", " + '"Z:="' + ", " + '"0mm"' + ")" + "," + "  _" + "\n"

            # describe the polyline segments
            script += "  Array(" + '"NAME:PolylineSegments"' + "," + "  _" + "\n"

            counter = 0  # simple counter
            for y in range(shape_Coordinates_Length):
                counter += 1
                if y == shape_Coordinates_Length - 1:
                    script += "  Array(" + '"NAME:PLSegment"' + ", " + '"SegmentType:="' + ", " + '"Line"' + ", " + '"StartIndex:="' + ", " + str(counter - 1) + ", " + '"NoOfPoints:="' + ", " + "2))," + "  _" + "\n"  # close off the segment array
                    break
                if y < shape_Coordinates_Length:
                    script += "  Array(" + '"NAME:PLSegment"' + ", " + '"SegmentType:="' + ", " + '"Line"' + ", " + '"StartIndex:="' + ", " + str(counter - 1) + ", " + '"NoOfPoints:="' + ", " + "2)," + "  _" + "\n"

            script += "  Array(" + '"NAME:PolylineXSection"' + ", " '"XSectionType:="' + ", " + '"None"' + ", " + '"XSectionOrient:="' + "," + "  _" + "\n"
            script += '  "0mm"' + ", " '"XSectionNumSegments:="' + ", " + '"0"' + ", " + '"XSectionBendType:="' + ", " + '"Corner"' + ")), " + "Array(" + '"NAME:Attributes"' + ", " + '"Name:="' + "," + "  _" + "\n"
            script += '  "' + "Polyline1" + '"' + ", " + '"Flags:="' + ", " '"", ' + '"Color:="' + ", " + '"(143 175 143)", ' + '"Transparency:=", ' + "0, " + '"PartCoordinateSystem:=",' + "  _" + "\n"
            script += '  "Global", ' + '"UDMId:=", ' + '"", ' + '"MaterialValue:=", ' + '"" ' + "& " + "Chr(34) " + "& " + '"vacuum"' + " & " + "Chr(34) " "& " '"", ' + '"SurfaceMaterialValue:=",' + "  _" + "\n"
            script += '  ""' + " & " + "Chr(34)" + " & " + '""' + " & " + "Chr(34)" + " & " + '"", ' + '"SolveInside:=", ' + "true, " + '"ShellElement:=",' + "  _" + "\n"
            script += "  false, " + '"ShellElementThickness:=", ' + '"0mm", ' + '"IsMaterialEditable:=", ' + "true, " + '"UseMaterialAppearance:=",' + "  _" + "\n"
            script += "  false, " + '"IsLightweight:=", ' + "false)" + "\n"
            script += "\n"

            # change conductor name
            script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array _" + "\n"
            script += '("NAME:Geometry3DAttributeTab",' +  'Array("NAME:PropServers", _' + "\n"
            script += '  "Polyline1"), ' + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Name", ' + '"Value:=", ' + '"' + triangle_Name + str(triangle_counter) + '"' + "))))" + "\n"
            script += "\n"

            # change conductor material
            script += "oEditor.ChangeProperty Array(" + '"NAME:AllTabs", ' + 'Array("NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers", _' + "\n"
            script += '  "' + triangle_Name + str(triangle_counter) + '")' + ", " + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Material", "Value:=", _' + "\n"
            script += '  "" ' + '& Chr(34) & "AlSi10Mg_191.2C" & Chr(34) & ""))))' + "\n"
            script += "\n"

            # change the colour of the conductor
            script += 'oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _' + "\n"
            script += '  "' + triangle_Name + str(triangle_counter) + '"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", ' + '128, "B:=", _' + "\n"
            script += "  0))))" + "\n"
            script += "\n"

            # add the conductor name to the array for processing boundary conditions later.
            conductor_Name = triangle_Name + str(triangle_counter)
            conductor_name_array.append(conductor_Name)

            # CODE sets up the conductors as 1 coil turn per conductor, made of copper and determines polarity, positive or negative, aka electric field flowing out(positive) of the screen or into it(negative).
            # script += "Set " + "oModule" + " = " "oDesign.GetModule" + "(" + '"BoundarySetup"' + ")" + "\n"
            # script += "oModule.AssignCoil Array" + "(" + '"NAME:' + triangle_Name + str(triangle_counter) + '"' + ", " + '"Objects:="' + ", " + "Array(" + '"' + triangle_Name + str(triangle_counter) + '"' + "), " + '"Conductor number:=", ' + "  _" + "\n"
            # script += '  "1"' + ", " + '"PolarityType:="' + ", " + '"' + polarity + '"' + ")" + "\n"
            # script += "\n"

            # CODE below changes the material of the conductor to copper and its colour represented in the editor (Circle)
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + triangle_Name + str(triangle_counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Material", ' + '"Value:=", ' + '""' + " & " + "Chr(34)" + " & " + '"copper"' + " & " + "Chr(34)" + " & " '""))))' + "\n"
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + triangle_Name + str(triangle_counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Color", ' + '"R:=", ' "255, " + '"G:=", ' + "128, " '"B:=",' + "  _" + "\n"
            # script += "  0))))" + "\n"
            # script += "\n"

            # add the conductor to the winding
            # script += "oModule.AddWindingCoils " + '"' + winding_Name + '", ' + "Array(" + '"' + triangle_Name + str(triangle_counter) + '")' + "\n"
            # script += "\n"

            # set the eddy effects for this conductor in our winding
            # script += "oModule.SetEddyEffect Array(" + '"NAME:Eddy Effect Setting", ' + "Array(" + '"NAME:EddyEffectVector",' + "  _" + "\n"
            # script += " Array(" + '"NAME:Data", ' + '"Object Name:=", ' + '"' + triangle_Name + str(triangle_counter) + '", ' + '"Eddy Effect:=", ' + "true)))" + "\n"
            # script += "\n"

            # check to see if conductor needs to have a special mesh operation applied to capture eddy effects.
            # if skin_Depth_Array[x] == True:
                # script += "Set oModule = oDesign.GetModule(" + '"MeshSetup")' + "\n"
                # outside conductor mesh refinement
                # script += 'oModule.AssignLengthOp Array("NAME:' + triangle_Name + str(triangle_counter) + "_outside_Refine" + '", ' + '"RefineInside:=", ' + "false, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + triangle_Name + str(triangle_counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # inside conductor mesh refinement.
                # script += 'oModule.AssignLengthOp Array("NAME:' + triangle_Name + str(triangle_counter) + "_inside_Refine" + '", ' + '"RefineInside:=", ' + "true, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + triangle_Name + str(triangle_counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # script += "\n"

        if shape_Array[x] == "Hexagon":
            hexagon_counter += 1
            # must be carefull with polylines, the first and last points are repeated, the number of segments between points starts at
            conductor = conductor_Array[x]
            shape_Coordinates = list(conductor.exterior.coords)  # get an array of all coordinates that make up the point.
            shape_Coordinates_Length = len(shape_Coordinates)  # count how many coordinates there are.

            script += "oEditor.CreatePolyline Array(" + '"NAME:PolylineParameters"' + ", " + '"IsPolylineCovered:="' + ", " + "true" + ", " + '"IsPolylineClosed:="' + ", " + "true" + "," + "  _" + "\n"

            script += "  Array(" + '"NAME:PolylinePoints"' + "," + "  _" + "\n"

            for y in range(shape_Coordinates_Length):  # start adding the coordinates to the array of points that make up the shape
                if y == shape_Coordinates_Length - 1:  # need to close the brackets )) or the code will throw and error
                    script += "  Array(" + '"NAME:PLPoint"' + ", " + '"X:="' + ", " + '"' + str(shape_Coordinates[y][0]) + "mm" + '"' + ", " '"Y:="' + ", " + '"' + str(shape_Coordinates[y][1]) + "mm" + '"' + ", " + '"Z:="' + ", " + '"0mm"' + "))" + "," + "  _" + "\n"
                    break
                if y < shape_Coordinates_Length:
                    script += "  Array(" + '"NAME:PLPoint"' + ", " + '"X:="' + ", " + '"' + str(shape_Coordinates[y][0]) + "mm" + '"' + ", " '"Y:="' + ", " + '"' + str(shape_Coordinates[y][1]) + "mm" + '"' + ", " + '"Z:="' + ", " + '"0mm"' + ")" + "," + "  _" + "\n"

            # describe the polyline segments
            script += "  Array(" + '"NAME:PolylineSegments"' + "," + "  _" + "\n"

            counter = 0  # simple counter
            for y in range(shape_Coordinates_Length):
                counter += 1
                if y == shape_Coordinates_Length - 1:
                    script += "  Array(" + '"NAME:PLSegment"' + ", " + '"SegmentType:="' + ", " + '"Line"' + ", " + '"StartIndex:="' + ", " + str(counter - 1) + ", " + '"NoOfPoints:="' + ", " + "2))," + "  _" + "\n"  # close off the segment array
                    break
                if y < shape_Coordinates_Length:
                    script += "  Array(" + '"NAME:PLSegment"' + ", " + '"SegmentType:="' + ", " + '"Line"' + ", " + '"StartIndex:="' + ", " + str(counter - 1) + ", " + '"NoOfPoints:="' + ", " + "2)," + "  _" + "\n"

            script += "  Array(" + '"NAME:PolylineXSection"' + ", " '"XSectionType:="' + ", " + '"None"' + ", " + '"XSectionOrient:="' + "," + "  _" + "\n"
            script += '  "0mm"' + ", " '"XSectionNumSegments:="' + ", " + '"0"' + ", " + '"XSectionBendType:="' + ", " + '"Corner"' + ")), " + "Array(" + '"NAME:Attributes"' + ", " + '"Name:="' + "," + "  _" + "\n"
            script += '  "' + "Polyline1" + '"' + ", " + '"Flags:="' + ", " '"", ' + '"Color:="' + ", " + '"(143 175 143)", ' + '"Transparency:=", ' + "0, " + '"PartCoordinateSystem:=",' + "  _" + "\n"
            script += '  "Global", ' + '"UDMId:=", ' + '"", ' + '"MaterialValue:=", ' + '"" ' + "& " + "Chr(34) " + "& " + '"vacuum"' + " & " + "Chr(34) " "& " '"", ' + '"SurfaceMaterialValue:=",' + "  _" + "\n"
            script += '  ""' + " & " + "Chr(34)" + " & " + '""' + " & " + "Chr(34)" + " & " + '"", ' + '"SolveInside:=", ' + "true, " + '"ShellElement:=",' + "  _" + "\n"
            script += "  false, " + '"ShellElementThickness:=", ' + '"0mm", ' + '"IsMaterialEditable:=", ' + "true, " + '"UseMaterialAppearance:=",' + "  _" + "\n"
            script += "  false, " + '"IsLightweight:=", ' + "false)" + "\n"
            script += "\n"

            # change conductor name
            script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array _" + "\n"
            script += '("NAME:Geometry3DAttributeTab",' +  'Array("NAME:PropServers", _' + "\n"
            script += '  "Polyline1"), ' + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Name", ' + '"Value:=", ' + '"' + hexagon_Name + str(hexagon_counter) + '"' + "))))" + "\n"
            script += "\n"

            # change conductor material
            script += "oEditor.ChangeProperty Array(" + '"NAME:AllTabs", ' + 'Array("NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers", _' + "\n"
            script += '  "' + hexagon_Name + str(hexagon_counter) + '")' + ", " + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Material", "Value:=", _' + "\n"
            script += '  "" ' + '& Chr(34) & "AlSi10Mg_191.2C" & Chr(34) & ""))))' + "\n"
            script += "\n"

            # change the colour of the conductor
            script += 'oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _' + "\n"
            script += '  "' + hexagon_Name + str(hexagon_counter) + '"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", ' + '128, "B:=", _' + "\n"
            script += "  0))))" + "\n"
            script += "\n"

            # add the conductor name to the array for processing boundary conditions later.
            conductor_Name = hexagon_Name + str(hexagon_counter)
            conductor_name_array.append(conductor_Name)

            # CODE sets up the conductors as 1 coil turn per conductor, made of copper and determines polarity, positive or negative, aka electric field flowing out(positive) of the screen or into it(negative).
            # script += "Set " + "oModule" + " = " "oDesign.GetModule" + "(" + '"BoundarySetup"' + ")" + "\n"
            # script += "oModule.AssignCoil Array" + "(" + '"NAME:' + hexagon_Name + str(hexagon_counter) + '"' + ", " + '"Objects:="' + ", " + "Array(" + '"' + hexagon_Name + str(hexagon_counter) + '"' + "), " + '"Conductor number:=", ' + "  _" + "\n"
            # script += '  "1"' + ", " + '"PolarityType:="' + ", " + '"' + polarity + '"' + ")" + "\n"
            # script += "\n"

            # CODE below changes the material of the conductor to copper and its colour represented in the editor (Circle)
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + hexagon_Name + str(hexagon_counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Material", ' + '"Value:=", ' + '""' + " & " + "Chr(34)" + " & " + '"copper"' + " & " + "Chr(34)" + " & " '""))))' + "\n"
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + hexagon_Name + str(hexagon_counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Color", ' + '"R:=", ' "255, " + '"G:=", ' + "128, " '"B:=",' + "  _" + "\n"
            # script += "  0))))" + "\n"
            # script += "\n"

            # add the conductor to the winding
            # script += "oModule.AddWindingCoils " + '"' + winding_Name + '", ' + "Array(" + '"' + hexagon_Name + str(hexagon_counter) + '")' + "\n"
            # script += "\n"

            # set the eddy effects for this conductor in our winding
            # script += "oModule.SetEddyEffect Array(" + '"NAME:Eddy Effect Setting", ' + "Array(" + '"NAME:EddyEffectVector",' + "  _" + "\n"
            # script += " Array(" + '"NAME:Data", ' + '"Object Name:=", ' + '"' + hexagon_Name + str(hexagon_counter) + '", ' + '"Eddy Effect:=", ' + "true)))" + "\n"
            # script += "\n"

            # check to see if conductor needs to have a special mesh operation applied to capture eddy effects.
            # if skin_Depth_Array[x] == True:
                # script += "Set oModule = oDesign.GetModule(" + '"MeshSetup")' + "\n"
                # outside conductor mesh refinement
                # script += 'oModule.AssignLengthOp Array("NAME:' + hexagon_Name + str(hexagon_counter) + "_outside_Refine" + '", ' + '"RefineInside:=", ' + "false, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + hexagon_Name + str(hexagon_counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # inside conductor mesh refinement.
                # script += 'oModule.AssignLengthOp Array("NAME:' + hexagon_Name + str(hexagon_counter) + "_inside_Refine" + '", ' + '"RefineInside:=", ' + "true, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + hexagon_Name + str(hexagon_counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # script += "\n"

    circle_count = circle_counter
    square_count = square_counter
    triangle_count = triangle_counter
    hexagon_count = hexagon_counter

    return script

def create_boundary_setup_commands():

    script = ""
    script += 'Set oModule = oDesign.GetModule("BoundarySetup")' + "\n"
    script += "\n"

    # assign conductors as coils with 1 turn, negative first then positive. 48 negative, 48 positive.
    for x in range(len(conductor_name_array)):
        if x <= 48:
            script += 'oModule.AssignCoil Array("NAME:' + conductor_name_array[x] + '", "Objects:=", Array("' + conductor_name_array[x] + '"), "Conductor number:=",  _' + "\n"
            script += '  "1", "PolarityType:=", "Negative")' + "\n"
        else:
            script += 'oModule.AssignCoil Array("NAME:' + conductor_name_array[x] + '", "Objects:=", Array("' + conductor_name_array[x] + '"), "Conductor number:=",  _' + "\n"
            script += '  "1", "PolarityType:=", "Positive")' + "\n"

    # assign eddy effects for the conductors
    script += "\n"
    script += 'oModule.SetEddyEffect Array("NAME:Eddy Effect Setting", Array("NAME:EddyEffectVector", Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "Stator_Lamination_Primitive", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1N1_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1S2_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1N2_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1S3_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1N3_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1S4_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1N4_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1S5_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1N5_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1S6_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1N6_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1S7_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1N7_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "1Magnet1S8_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _' +"\n"
    script += '  "Rotor_1", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=", "Ph1_P3_C1_1", "Eddy Effect:=",  _' + "\n"
    script += '  false), Array("NAME:Data", "Object Name:=", "Ph2_P1_C1_1", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "Ph2_P2_C1_1", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "Ph3_P2_C1_1", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "Ph3_P3_C1_1", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "Ph1_P3_C1_2", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "Ph2_P1_C1_2", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "Ph2_P2_C1_2", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "Ph3_P2_C1_2", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _' + "\n"
    script += '  "Ph3_P3_C1_2", "Eddy Effect:=", false), _' + "\n"

    for y in range(len(conductor_name_array) + 1):
        # print("length of conductor array :", len(conductor_name_array))
        # print("value of Y : ", y)
        # script += '  Array("NAME:Data", "Object Name:=", ' + '"' + conductor_name_array[y] + '", ' + '"Eddy Effect:=", true), ' + "\n"

        if y == len(conductor_name_array) - 1:
            script += '  Array("NAME:Data", "Object Name:=", ' + '"' + conductor_name_array[y] + '",  _' + "\n"
            script += '  "Eddy Effect:=", true)))' + "\n" # cap off the function.
            script += "\n"
            break

        script += '  Array("NAME:Data", "Object Name:=", ' + '"' + conductor_name_array[y] + '", ' + '"Eddy Effect:=", true),  _' + "\n"

    # assign the coils to the phase "phase_A_Solid"
    script += 'oModule.AddWindingCoils "phase_A_Solid", Array(' + '"' + conductor_name_array[0] + '",  _' + "\n"
    counter = 0
    script += "  "
    for z in range(1, len(conductor_name_array)):
        # script += "  "
        if z == len(conductor_name_array) - 1:
            script += '"' + conductor_name_array[z] + '"'
            counter += 1
        else:
            script += '"' + conductor_name_array[z] + '"' + ", "
            counter += 1
        if z == len(conductor_name_array) - 1:
            script += ")" + "\n"
        if counter == 3:
            if z == len(conductor_name_array) - 1:
                # script += ")" + "\n"
                break
            else:
                script += "  _" + "\n"
                script += "  "
            counter = 0

    conductor_List = "  "
    script += "\n"
    # this will setup the boundary conditions such as
    return script

def write_vbs_file(script: str, file_path: str | Path) -> Path:
    """
    Write a generated VBScript command string to disk.

    Parameters
    ----------
    script:
        Complete VBScript text generated by this module.

    file_path:
        Destination path for the generated `.vbs` file.

    Returns
    -------
    Path
        Path to the written VBScript file.
    """
    output_path = Path(file_path)
    output_path.parent.mkdir(parents=True, exist_ok=True)

    with output_path.open("w") as file:
        file.write(script)

    return output_path


# Compatibility aliases for the original legacy names.
# These make it easier to compare or migrate older experiment scripts gradually.
create_Dynamic_Vbs_Script = create_dynamic_vbs_script
describe_Coil_Vbs = describe_coil_vbs
boundary_Setup = create_boundary_setup_commands
push_To_File = write_vbs_file
