import math

# import pywin
# import win32com
# import win32com.client
import shapely
import shapely.geometry.point

# This script creates the VBS script for execution with the custom coil configuration

# VBS_Script_Creator John Mckay, AFRC --------------------------------------------------------------------------------
# --------------------------------------------------------------------------------------------------------------------

circle_Count = 0
square_Count = 0
triangle_Count = 0
hexagon_Count = 0

conductor_Name_Array = []
# --------------------------------------------------------------------------------------------------------------------
def create_Dynamic_Vbs_Script(conductor_Array_1, conductor_Array_2, shape_Array,skin_Depth_Array, print_To_File, file_Path, directory, coil_Number):

    winding_Name = "phase_B_Custom"

    # need to reset these global variables every time we run the script consecutive times, if we don't these variables
    # will compound fo every nth script run.
    global conductor_Name_Array
    conductor_Name_Array = []

    global circle_Count
    circle_Count = 0

    global square_Count
    square_Count = 0

    global triangle_Count
    triangle_Count = 0

    global hexagon_Count
    hexagon_Count = 0

    script = ""
    script += "Dim oAnsoftApp \n"
    script += "Dim oDesktop \n"
    script += "Dim oProject \n"
    script += "Dim oDesign \n"
    script += "Dim oEditor \n"
    script += "Dim oModule \n"
    script += "Set oAnsoftApp = CreateObject(" + '"Ansoft.ElectronicsDesktop"' + ") \n"
    script += "Set oDesktop = oAnsoftApp.GetAppDesktop() \n"
    script += "oDesktop.RestoreWindow \n"
    # script += "Set oProject = oDesktop.SetActiveProject(" +'"C:/Users/John McKay/Desktop/Rmxport_Quickstart_V2_mod_SDF_Edited"' + ") \n" # need to use setActiveProjectByPath **
    # script += "Set oProject = oDesktop.OpenProject(" + r'"C:/Users/John McKay/Desktop/simulation_Source/simulation_Source_Default_File_Ver3.aedt"' + ") \n"
    # script += "Set oProject = oDesktop.SetActiveProject(" +r'"simulation_Source_Default_File_Ver3"' + ") \n"

    script += "Set oProject = oDesktop.OpenProject(" + r'"C:/Users/John McKay/Desktop/final_Experiment_Simulation_Models/Motor_191C_M250_35A_AlSi10Mg_Ver2_ANSYSEM_2D_Final.aedt"' + ") \n"
    script += "Set oProject = oDesktop.SetActiveProject(" + r'"Motor_191C_M250_35A_AlSi10Mg_Ver2_ANSYSEM_2D_Final"' + ") \n"

    # do the saveAs process here
    script += "oProject.SaveAs " + '"' + directory + "/simulation_CN_" + str(coil_Number) + '.aedt", ' + "true" + "\n"
    # Motor-CAD a2_User_Calibration_V2Calibrated_48Conductor_SlotEdited_Thermal_Adjusted new ** new design reference
    # script += "Set oDesign = oProject.SetActiveDesign(" + '"Motor-CAD a2_User_Calibration_V2Calibrated_ThermalModifiedAug2021"'+") \n"
    # script += "oDesign.RenameDesignInstance " + '"Motor-CAD a2_User_Calibration_V2Calibrated_ThermalModifiedAug2021", ' + '"simulation_CN_' + str(coil_Number) + '"' + "\n"

    # script += "Set oDesign = oProject.SetActiveDesign(" + '"Motor-CAD a2_User_Calibration_V2Calibrated_48Conductor_SlotEdited_Thermal_Adjusted"' + ") \n"
    # script += "oDesign.RenameDesignInstance " + '"Motor-CAD a2_User_Calibration_V2Calibrated_48Conductor_SlotEdited_Thermal_Adjusted", ' + '"simulation_CN_' + str(coil_Number) + '"' + "\n"

    script += "Set oDesign = oProject.SetActiveDesign(" + '"Motor-CAD Motor_191C_M250_35A_AlSi10Mg_Ver2"' + ") \n"
    script += "oDesign.RenameDesignInstance " + '"Motor-CAD Motor_191C_M250_35A_AlSi10Mg_Ver2", ' + '"simulation_CN_' + str(coil_Number) + '"' + "\n"

    script += "\n"
    script += "Set oEditor = oDesign.SetActiveEditor(" + '"3D Modeler"' + ") \n"
    script += "\n"
    # AlSi10Mg_20C

    # this needs to go first, tells which module is in use.
    # script += "Set " + "oModule" + " = " "oDesign.GetModule" + "(" + '"BoundarySetup"' + ")" + "\n"
    # script += "\n"

    # firstly lets create a new winding called phase_B_Custom
    # create a winding and add it to the winding group
    # *** dont need to make a new coil here we already have phase_A_Solid fully ready.
    # script += "oModule.AssignWindingGroup Array(" + '"NAME:' + winding_Name + '", ' + '"Type:=", ' + '"Current", ' + '"IsSolid:=", ' + " _" + "\n"
    # script += "  true, " + '"Current:=", ' + '"0mA", ' + '"Resistance:=", ' + '"0ohm", ' + '"Inductance:=", ' + '"0nH", ' + '"Voltage:=", ' + " _" + "\n"
    # script += '  "0mV", ' + '"ParallelBranchesNum:=", ' + '"1")' + "\n"
    # script += "\n"

    script += describe_Coil_Vbs(conductor_Array_1, shape_Array, skin_Depth_Array, "positive")
    script += "\n"
    script += "' ************************************" + "\n"
    script += "' ***Second Coil begins here***" + "\n"
    script += "' ************************************" + "\n"
    script += describe_Coil_Vbs(conductor_Array_2, shape_Array, skin_Depth_Array, "negative")
    script += "\n"
    script += boundary_Setup()

    # add the code that runs the simulation here, outputs reports and then closes the application
    # script += "oProject.Save" + "\n"
    script += "oDesign.AnalyzeAll" + "\n"
    script += "Set oModule = oDesign.GetModule(" + '"ReportSetup"' + ")" + "\n"
    script += "oModule.ExportToFile " + '"max_Torque", ' + '"' + directory + "/max_Torque_" + str(coil_Number) + '.csv", ' + "false" + "\n"
    script += "oModule.ExportToFile " + '"max_Loss", ' + '"' + directory + "/max_Loss_" + str(coil_Number) + '.csv", ' + "false" + "\n"
    script += "oProject.Save" + "\n"
    script += "oDesktop.CloseProject " + '"simulation_CN_' + str(coil_Number) + '"' + "\n"
    script += "oDesktop.QuitApplication" + "\n" # quits the application, to save memory.


    # push the code to file to be run.
    if print_To_File == "true":
        push_To_File(script, file_Path)

def describe_Coil_Vbs(conductor_Array, shape_Array, skin_Depth_Array, polarity):
    script = ""
    polarity = polarity # "negative" or "positive"
    #print(len(list(conductor_Array[1].exterior.coords)))
    # This script creates the coil structure for maxwell based on the coil configuration generated.
    circle_Name = "circle_Conductor_"
    square_Name = "square_Conductor_"
    triangle_Name = "triangle_Conductor_"
    hexagon_Name = "hexagon_Conductor_"
    # used as part of name convention for example, "circle_Conductor_1"

    global circle_Count
    global square_Count
    global triangle_Count
    global hexagon_Count

    circle_Counter = circle_Count
    square_Counter = square_Count
    triangle_Counter = triangle_Count
    hexagon_Counter = hexagon_Count

    conductor_Centroid = 0

    # winding_Name = "phase_B_Custom" # NOTE*** NEED TO CHANGE THIS!!!!!
    winding_Name = "phase_A_Solid"  # new winding.
    skin_Depth_Array = skin_Depth_Array # this array will be propogated with information regarding wether a conductor needs to be meshed in a special way.

    for x in range(len(conductor_Array)):
        # Lets go through conductor array 1, left hand slot, **negative polarity** **Phase B return**
        # CODE for CIRCLE creation
        if shape_Array[x] == "Circle": # shape array and conductor array are the same size

            circle_Counter += 1 # don't want a conductor 0 situation
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
            # script += "oModule.AssignCoil Array" + "(" + '"NAME:' + circle_Name + str(circle_Counter) + '"' + ", " + '"Objects:="' + ", " + "Array(" + '"' + circle_Name + str(circle_Counter) + '"' + "), " + '"Conductor number:=", ' + "  _" + "\n"
            # script += '  "1"' + ", " + '"PolarityType:="' + ", " + '"' + polarity + '"' + ")" + "\n"
            # script += "\n"

            # Code below changes the name of the conductor, material, and colour of shape.
            # all circles will default to name "Circle1", before having their name changed.
            # change conductor name
            script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array _" + "\n"
            script += '("NAME:Geometry3DAttributeTab",' + ' Array("NAME:PropServers", _' + "\n"
            script += '  "Circle1"), ' + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Name", ' + '"Value:=", ' + '"' + circle_Name + str(circle_Counter) + '"' + "))))" + "\n"
            script += "\n"

            # change conductor material
            script += "oEditor.ChangeProperty Array(" + '"NAME:AllTabs", ' + 'Array("NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers", _' + "\n"
            script += '  "' + circle_Name + str(circle_Counter) + '")' + ", " + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Material", "Value:=", _' + "\n"
            script += '  "" ' + '& Chr(34) & "AlSi10Mg_191.2C" & Chr(34) & ""))))' + "\n"
            script += "\n"

            # change the colour of the conductor
            script += 'oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _' + "\n"
            script += '  "' + circle_Name + str(circle_Counter) + '"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", ' + '128, "B:=", _' + "\n"
            script += "  0))))" + "\n"
            script += "\n"

            # set the number of segments in the circle :: 12
            script += 'oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", ' + 'Array("NAME:PropServers", _' + "\n"
            script += '  "' + circle_Name + str(circle_Counter) + ':CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _' + "\n"
            script += '  "12"))))' + "\n"
            script += "\n"

            # add the conductor name to the array for processing boundary conditions later.
            conductor_Name = circle_Name + str(circle_Counter)
            conductor_Name_Array.append(conductor_Name)

            # CODE below changes the material of the conductor to copper and its colour represented in the editor (Circle)
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + circle_Name + str(circle_Counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Material", ' + '"Value:=", ' + '""' + " & " + "Chr(34)" + " & " + '"copper"' + " & " + "Chr(34)" + " & " '""))))' + "\n"

            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + circle_Name + str(circle_Counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Color", ' + '"R:=", ' "255, " + '"G:=", ' + "128, " '"B:=",' + "  _" + "\n"
            # script += "  0))))" + "\n"

            # add the conductor to the winding
            # script += "oModule.AddWindingCoils " + '"' + winding_Name + '", ' + "Array(" + '"' + circle_Name + str(circle_Counter) + '")' + "\n"
            # script += "\n"

            # set the eddy effects for this conductor in our winding
            # script += "oModule.SetEddyEffect Array(" + '"NAME:Eddy Effect Setting", ' + "Array(" + '"NAME:EddyEffectVector",' + "  _" + "\n"
            # script += " Array(" + '"NAME:Data", ' + '"Object Name:=", ' + '"' + circle_Name + str(circle_Counter) + '", ' + '"Eddy Effect:=", ' + "true)))" + "\n"
            # script += "\n"

            # change the number of segments that create a circle, for optimisation purposes, segment number = 12
            # script += "Set oEditor" + " = " + "oDesign.SetActiveEditor(" + '"3D Modeler"' + ")" + "\n"
            # script += "oEditor.ChangeProperty Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DCmdTab", ' + "Array(" + '"NAME:PropServers",  _' + "\n"
            # script += '"' + circle_Name + str(circle_Counter) + ':CreateCircle:1"), ' + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Number of Segments", ' + '"Value:=",  _' + "\n"
            # script += '"12"))))' + "\n" # number of segments that make up a circle = 12. optimisation.
            # script += "\n"

            # check to see if conductor needs to have a special mesh operation applied to capture eddy effects.
            # if skin_Depth_Array[x] == True:
                # script += "Set oModule = oDesign.GetModule(" + '"MeshSetup")' + "\n"
                # outside conductor mesh refinement
                # script += 'oModule.AssignLengthOp Array("NAME:' + circle_Name + str(circle_Counter) + "_outside_Refine" + '", ' + '"RefineInside:=", ' + "false, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + circle_Name + str(circle_Counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # inside conductor mesh refinement.
                # script += 'oModule.AssignLengthOp Array("NAME:' + circle_Name + str(circle_Counter) + "_inside_Refine" + '", ' + '"RefineInside:=", ' + "true, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + circle_Name + str(circle_Counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # script += "\n"

        if shape_Array[x] == "Square":
            square_Counter += 1
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
            script += '  "Polyline1"), ' + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Name", ' + '"Value:=", ' + '"' + square_Name + str(square_Counter) + '"' + "))))" + "\n"
            script += "\n"

            # change conductor material
            script += "oEditor.ChangeProperty Array(" + '"NAME:AllTabs", ' + 'Array("NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers", _' + "\n"
            script += '  "' + square_Name + str(square_Counter) + '")' + ", " + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Material", "Value:=", _' + "\n"
            script += '  "" ' + '& Chr(34) & "AlSi10Mg_191.2C" & Chr(34) & ""))))' + "\n"
            script += "\n"

            # change the colour of the conductor
            script += 'oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _' + "\n"
            script += '  "' + square_Name + str(square_Counter) + '"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", ' + '128, "B:=", _' + "\n"
            script += "  0))))" + "\n"
            script += "\n"

            # add the conductor name to the array for processing boundary conditions later.
            conductor_Name = square_Name + str(square_Counter)
            conductor_Name_Array.append(conductor_Name)

            # CODE sets up the conductors as 1 coil turn per conductor, made of copper and determines polarity, positive or negative, aka electric field flowing out(positive) of the screen or into it(negative).
            # script += "Set " + "oModule" + " = " "oDesign.GetModule" + "(" + '"BoundarySetup"' + ")" + "\n"
            # script += "oModule.AssignCoil Array" + "(" + '"NAME:' + square_Name + str(square_Counter) +'"' + ", " + '"Objects:="' + ", " + "Array(" + '"' + square_Name + str(square_Counter) + '"' + "), " + '"Conductor number:=", ' + "  _" + "\n"
            # script += '  "1"' + ", " + '"PolarityType:="' + ", " + '"' + polarity + '"' + ")" + "\n"
            # script += "\n"

            # CODE below changes the material of the conductor to copper and its colour represented in the editor (Circle)
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + square_Name + str(square_Counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Material", ' + '"Value:=", ' + '""' + " & " + "Chr(34)" + " & " + '"copper"' + " & " + "Chr(34)" + " & " '""))))' + "\n"
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + square_Name + str(square_Counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Color", ' + '"R:=", ' "255, " + '"G:=", ' + "128, " '"B:=",' + "  _" + "\n"
            # script += "  0))))" + "\n"
            # script += "\n"

            # add the conductor to the winding
            # script += "oModule.AddWindingCoils " + '"' + winding_Name + '", ' + "Array(" + '"' + square_Name + str(square_Counter) + '")' + "\n"
            # script += "\n"

            # set the eddy effects for this conductor in our winding
            # script += "oModule.SetEddyEffect Array(" + '"NAME:Eddy Effect Setting", ' + "Array(" + '"NAME:EddyEffectVector",' + "  _" + "\n"
            # script += " Array(" + '"NAME:Data", ' + '"Object Name:=", ' + '"' + square_Name + str(square_Counter) + '", ' + '"Eddy Effect:=", ' + "true)))" + "\n"
            # script += "\n"

            # check to see if conductor needs to have a special mesh operation applied to capture eddy effects.
            # if skin_Depth_Array[x] == True:
                # script += "Set oModule = oDesign.GetModule(" + '"MeshSetup")' + "\n"
                # outside conductor mesh refinement
                # script += 'oModule.AssignLengthOp Array("NAME:' + square_Name + str(square_Counter) + "_outside_Refine" + '", ' + '"RefineInside:=", ' + "false, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + square_Name + str(square_Counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # inside conductor mesh refinement.
                # script += 'oModule.AssignLengthOp Array("NAME:' + square_Name + str(square_Counter) + "_inside_Refine" + '", ' + '"RefineInside:=", ' + "true, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + square_Name + str(square_Counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # script += "\n"

        if shape_Array[x] == "Triangle":
            triangle_Counter += 1
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
            script += '  "Polyline1"), ' + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Name", ' + '"Value:=", ' + '"' + triangle_Name + str(triangle_Counter) + '"' + "))))" + "\n"
            script += "\n"

            # change conductor material
            script += "oEditor.ChangeProperty Array(" + '"NAME:AllTabs", ' + 'Array("NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers", _' + "\n"
            script += '  "' + triangle_Name + str(triangle_Counter) + '")' + ", " + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Material", "Value:=", _' + "\n"
            script += '  "" ' + '& Chr(34) & "AlSi10Mg_191.2C" & Chr(34) & ""))))' + "\n"
            script += "\n"

            # change the colour of the conductor
            script += 'oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _' + "\n"
            script += '  "' + triangle_Name + str(triangle_Counter) + '"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", ' + '128, "B:=", _' + "\n"
            script += "  0))))" + "\n"
            script += "\n"

            # add the conductor name to the array for processing boundary conditions later.
            conductor_Name = triangle_Name + str(triangle_Counter)
            conductor_Name_Array.append(conductor_Name)

            # CODE sets up the conductors as 1 coil turn per conductor, made of copper and determines polarity, positive or negative, aka electric field flowing out(positive) of the screen or into it(negative).
            # script += "Set " + "oModule" + " = " "oDesign.GetModule" + "(" + '"BoundarySetup"' + ")" + "\n"
            # script += "oModule.AssignCoil Array" + "(" + '"NAME:' + triangle_Name + str(triangle_Counter) + '"' + ", " + '"Objects:="' + ", " + "Array(" + '"' + triangle_Name + str(triangle_Counter) + '"' + "), " + '"Conductor number:=", ' + "  _" + "\n"
            # script += '  "1"' + ", " + '"PolarityType:="' + ", " + '"' + polarity + '"' + ")" + "\n"
            # script += "\n"

            # CODE below changes the material of the conductor to copper and its colour represented in the editor (Circle)
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + triangle_Name + str(triangle_Counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Material", ' + '"Value:=", ' + '""' + " & " + "Chr(34)" + " & " + '"copper"' + " & " + "Chr(34)" + " & " '""))))' + "\n"
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + triangle_Name + str(triangle_Counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Color", ' + '"R:=", ' "255, " + '"G:=", ' + "128, " '"B:=",' + "  _" + "\n"
            # script += "  0))))" + "\n"
            # script += "\n"

            # add the conductor to the winding
            # script += "oModule.AddWindingCoils " + '"' + winding_Name + '", ' + "Array(" + '"' + triangle_Name + str(triangle_Counter) + '")' + "\n"
            # script += "\n"

            # set the eddy effects for this conductor in our winding
            # script += "oModule.SetEddyEffect Array(" + '"NAME:Eddy Effect Setting", ' + "Array(" + '"NAME:EddyEffectVector",' + "  _" + "\n"
            # script += " Array(" + '"NAME:Data", ' + '"Object Name:=", ' + '"' + triangle_Name + str(triangle_Counter) + '", ' + '"Eddy Effect:=", ' + "true)))" + "\n"
            # script += "\n"

            # check to see if conductor needs to have a special mesh operation applied to capture eddy effects.
            # if skin_Depth_Array[x] == True:
                # script += "Set oModule = oDesign.GetModule(" + '"MeshSetup")' + "\n"
                # outside conductor mesh refinement
                # script += 'oModule.AssignLengthOp Array("NAME:' + triangle_Name + str(triangle_Counter) + "_outside_Refine" + '", ' + '"RefineInside:=", ' + "false, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + triangle_Name + str(triangle_Counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # inside conductor mesh refinement.
                # script += 'oModule.AssignLengthOp Array("NAME:' + triangle_Name + str(triangle_Counter) + "_inside_Refine" + '", ' + '"RefineInside:=", ' + "true, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + triangle_Name + str(triangle_Counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # script += "\n"

        if shape_Array[x] == "Hexagon":
            hexagon_Counter += 1
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
            script += '  "Polyline1"), ' + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Name", ' + '"Value:=", ' + '"' + hexagon_Name + str(hexagon_Counter) + '"' + "))))" + "\n"
            script += "\n"

            # change conductor material
            script += "oEditor.ChangeProperty Array(" + '"NAME:AllTabs", ' + 'Array("NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers", _' + "\n"
            script += '  "' + hexagon_Name + str(hexagon_Counter) + '")' + ", " + 'Array("NAME:ChangedProps", ' + 'Array("NAME:Material", "Value:=", _' + "\n"
            script += '  "" ' + '& Chr(34) & "AlSi10Mg_191.2C" & Chr(34) & ""))))' + "\n"
            script += "\n"

            # change the colour of the conductor
            script += 'oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _' + "\n"
            script += '  "' + hexagon_Name + str(hexagon_Counter) + '"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", ' + '128, "B:=", _' + "\n"
            script += "  0))))" + "\n"
            script += "\n"

            # add the conductor name to the array for processing boundary conditions later.
            conductor_Name = hexagon_Name + str(hexagon_Counter)
            conductor_Name_Array.append(conductor_Name)

            # CODE sets up the conductors as 1 coil turn per conductor, made of copper and determines polarity, positive or negative, aka electric field flowing out(positive) of the screen or into it(negative).
            # script += "Set " + "oModule" + " = " "oDesign.GetModule" + "(" + '"BoundarySetup"' + ")" + "\n"
            # script += "oModule.AssignCoil Array" + "(" + '"NAME:' + hexagon_Name + str(hexagon_Counter) + '"' + ", " + '"Objects:="' + ", " + "Array(" + '"' + hexagon_Name + str(hexagon_Counter) + '"' + "), " + '"Conductor number:=", ' + "  _" + "\n"
            # script += '  "1"' + ", " + '"PolarityType:="' + ", " + '"' + polarity + '"' + ")" + "\n"
            # script += "\n"

            # CODE below changes the material of the conductor to copper and its colour represented in the editor (Circle)
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + hexagon_Name + str(hexagon_Counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Material", ' + '"Value:=", ' + '""' + " & " + "Chr(34)" + " & " + '"copper"' + " & " + "Chr(34)" + " & " '""))))' + "\n"
            # script += "oEditor.ChangeProperty " + "Array(" + '"NAME:AllTabs", ' + "Array(" + '"NAME:Geometry3DAttributeTab", ' + "Array(" + '"NAME:PropServers",' + "  _" + "\n"
            # script += '  "' + hexagon_Name + str(hexagon_Counter) + '"), ' + "Array(" + '"NAME:ChangedProps", ' + "Array(" + '"NAME:Color", ' + '"R:=", ' "255, " + '"G:=", ' + "128, " '"B:=",' + "  _" + "\n"
            # script += "  0))))" + "\n"
            # script += "\n"

            # add the conductor to the winding
            # script += "oModule.AddWindingCoils " + '"' + winding_Name + '", ' + "Array(" + '"' + hexagon_Name + str(hexagon_Counter) + '")' + "\n"
            # script += "\n"

            # set the eddy effects for this conductor in our winding
            # script += "oModule.SetEddyEffect Array(" + '"NAME:Eddy Effect Setting", ' + "Array(" + '"NAME:EddyEffectVector",' + "  _" + "\n"
            # script += " Array(" + '"NAME:Data", ' + '"Object Name:=", ' + '"' + hexagon_Name + str(hexagon_Counter) + '", ' + '"Eddy Effect:=", ' + "true)))" + "\n"
            # script += "\n"

            # check to see if conductor needs to have a special mesh operation applied to capture eddy effects.
            # if skin_Depth_Array[x] == True:
                # script += "Set oModule = oDesign.GetModule(" + '"MeshSetup")' + "\n"
                # outside conductor mesh refinement
                # script += 'oModule.AssignLengthOp Array("NAME:' + hexagon_Name + str(hexagon_Counter) + "_outside_Refine" + '", ' + '"RefineInside:=", ' + "false, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + hexagon_Name + str(hexagon_Counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # inside conductor mesh refinement.
                # script += 'oModule.AssignLengthOp Array("NAME:' + hexagon_Name + str(hexagon_Counter) + "_inside_Refine" + '", ' + '"RefineInside:=", ' + "true, " + '"Enabled:=",  _' + "\n"
                # script += 'true, "Objects:=", Array(' + '"' + hexagon_Name + str(hexagon_Counter) + '"' + "), " + '"RestrictElem:=", ' "false, " + '"NumMaxElem:=", ' + '"1000", ' + '"RestrictLength:=",  _' + "\n"
                # script += 'true, "MaxLength:=", "0.5mm")' + "\n" # we make 0.5mm increments.
                # script += "\n"

    circle_Count = circle_Counter
    square_Count = square_Counter
    triangle_Count = triangle_Counter
    hexagon_Count = hexagon_Counter

    return script

def boundary_Setup():

    script = ""
    script += 'Set oModule = oDesign.GetModule("BoundarySetup")' + "\n"
    script += "\n"

    # assign conductors as coils with 1 turn, negative first then positive. 48 negative, 48 positive.
    for x in range(len(conductor_Name_Array)):
        if x <= 48:
            script += 'oModule.AssignCoil Array("NAME:' + conductor_Name_Array[x] + '", "Objects:=", Array("' + conductor_Name_Array[x] + '"), "Conductor number:=",  _' + "\n"
            script += '  "1", "PolarityType:=", "Negative")' + "\n"
        else:
            script += 'oModule.AssignCoil Array("NAME:' + conductor_Name_Array[x] + '", "Objects:=", Array("' + conductor_Name_Array[x] + '"), "Conductor number:=",  _' + "\n"
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

    for y in range(len(conductor_Name_Array) + 1):
        # print("length of conductor array :", len(conductor_Name_Array))
        # print("value of Y : ", y)
        # script += '  Array("NAME:Data", "Object Name:=", ' + '"' + conductor_Name_Array[y] + '", ' + '"Eddy Effect:=", true), ' + "\n"

        if y == len(conductor_Name_Array) - 1:
            script += '  Array("NAME:Data", "Object Name:=", ' + '"' + conductor_Name_Array[y] + '",  _' + "\n"
            script += '  "Eddy Effect:=", true)))' + "\n" # cap off the function.
            script += "\n"
            break

        script += '  Array("NAME:Data", "Object Name:=", ' + '"' + conductor_Name_Array[y] + '", ' + '"Eddy Effect:=", true),  _' + "\n"

    # assign the coils to the phase "phase_A_Solid"
    script += 'oModule.AddWindingCoils "phase_A_Solid", Array(' + '"' + conductor_Name_Array[0] + '",  _' + "\n"
    counter = 0
    script += "  "
    for z in range(1, len(conductor_Name_Array)):
        # script += "  "
        if z == len(conductor_Name_Array) - 1:
            script += '"' + conductor_Name_Array[z] + '"'
            counter += 1
        else:
            script += '"' + conductor_Name_Array[z] + '"' + ", "
            counter += 1
        if z == len(conductor_Name_Array) - 1:
            script += ")" + "\n"
        if counter == 3:
            if z == len(conductor_Name_Array) - 1:
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

def push_To_File(script, file_Path):
    script = script
    print("print to file triggered")
    # script = create_Vbs_Script(script)
    output = open(file_Path, "w+")  # aka create if it doesnt exist.
    output.write("" + script)
    output.close()

