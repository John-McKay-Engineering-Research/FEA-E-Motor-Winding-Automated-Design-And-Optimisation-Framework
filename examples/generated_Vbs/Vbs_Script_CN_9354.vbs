Dim oAnsoftApp 
Dim oDesktop 
Dim oProject 
Dim oDesign 
Dim oEditor 
Dim oModule 
Set oAnsoftApp = CreateObject("Ansoft.ElectronicsDesktop") 
Set oDesktop = oAnsoftApp.GetAppDesktop() 
oDesktop.RestoreWindow 
Set oProject = oDesktop.OpenProject("C:/Users/John McKay/Desktop/simulation_Source/simulation_Source_Default_File_Ver3.aedt") 
Set oProject = oDesktop.SetActiveProject("simulation_Source_Default_File_Ver3") 
oProject.SaveAs "C:/Users/John McKay/Desktop/simulation_Source/data_6/Stage_1_Orderly_CN_9354/simulation_CN_9354.aedt", true
Set oDesign = oProject.SetActiveDesign("Motor-CAD a2_User_Calibration_V2Calibrated_48Conductor_SlotEdited_Thermal_Adjusted") 
oDesign.RenameDesignInstance "Motor-CAD a2_User_Calibration_V2Calibrated_48Conductor_SlotEdited_Thermal_Adjusted", "simulation_CN_9354"

Set oEditor = oDesign.SetActiveEditor("3D Modeler") 

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "28.06333756530485mm", "Y:=", "141.45448545616756mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.615696875985964mm", "Y:=", "139.85621467047326mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.115257228813853mm", "Y:=", "139.65879380474044mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "31.062458270960626mm", "Y:=", "141.0596437247019mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.510098960279507mm", "Y:=", "142.6579145103962mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.01053860745162mm", "Y:=", "142.85533537612903mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.06333756530485mm", "Y:=", "141.45448545616756mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_1"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_1"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_1"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "26.662053592072407mm", "Y:=", "143.16451929395026mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.063782806378104mm", "Y:=", "142.61215998326915mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.866361940645277mm", "Y:=", "141.11259963044128mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.26721186060675mm", "Y:=", "140.1653985882945mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.865482646301054mm", "Y:=", "140.7177578989756mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.06290351203388mm", "Y:=", "142.2173182518035mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.662053592072407mm", "Y:=", "143.16451929395026mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_2"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_2"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_2"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "23.56378840027925mm", "Y:=", "143.57241364463795mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.965517614584947mm", "Y:=", "143.0200543339568mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.768096748852116mm", "Y:=", "141.52049398112894mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.168946668813597mm", "Y:=", "140.57329293898215mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.767217454507897mm", "Y:=", "141.1256522496633mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.964638320240724mm", "Y:=", "142.62521260249116mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.56378840027925mm", "Y:=", "143.57241364463795mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_3"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_3"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_3"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "18.76854198992538mm", "Y:=", "142.67816850823053mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.320901300606494mm", "Y:=", "141.07989772253623mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.820461653434386mm", "Y:=", "140.8824768568034mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.76766269558116mm", "Y:=", "142.28332677676488mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.21530338490004mm", "Y:=", "143.88159756245918mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.715743032072147mm", "Y:=", "144.079018428192mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.76854198992538mm", "Y:=", "142.67816850823053mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_4"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_4"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_4"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "18.669397503787998mm", "Y:=", "142.69122112745254mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.11703819310688mm", "Y:=", "144.28949191314683mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.617477840278987mm", "Y:=", "144.48691277887968mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.670276798132221mm", "Y:=", "143.08606285891818mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.222636108813333mm", "Y:=", "141.4877920732239mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.722196461641225mm", "Y:=", "141.29037120749106mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.669397503787998mm", "Y:=", "142.69122112745254mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_5"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_5"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_5"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "12.572011606339053mm", "Y:=", "143.49395720960584mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.124370917020173mm", "Y:=", "141.89568642391154mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.623931269848065mm", "Y:=", "141.69826555817872mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.571132311994832mm", "Y:=", "143.0991154781402mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.018773001313722mm", "Y:=", "144.6973862638345mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.51921264848583mm", "Y:=", "144.8948071295673mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.572011606339053mm", "Y:=", "143.49395720960584mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_6"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_6"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_6"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "12.472867120201673mm", "Y:=", "143.50700982882788mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.920507809520565mm", "Y:=", "145.10528061452217mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.420947456692673mm", "Y:=", "145.302701480255mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.473746414545896mm", "Y:=", "143.90185156029352mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.026105725227016mm", "Y:=", "142.30358077459923mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.525666078054908mm", "Y:=", "142.1061599088664mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.472867120201673mm", "Y:=", "143.50700982882788mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_7"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_7"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_7"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "9.374601928408524mm", "Y:=", "143.91490417951553mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.822242617727415mm", "Y:=", "145.51317496520983mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.322682264899523mm", "Y:=", "145.71059583094265mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.3754812227527395mm", "Y:=", "144.30974591098118mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.927840533433866mm", "Y:=", "142.71147512528688mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.427400886261758mm", "Y:=", "142.51405425955406mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.374601928408524mm", "Y:=", "143.91490417951553mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_8"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_8"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_8"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "30.654563920272963mm", "Y:=", "137.96137853290875mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.102204609591848mm", "Y:=", "139.55964931860305mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.60264425676396mm", "Y:=", "139.75707018433587mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.655443214617186mm", "Y:=", "138.3562202643744mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.207802525298305mm", "Y:=", "136.7579494786801mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.707362878126194mm", "Y:=", "136.56052861294728mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.654563920272963mm", "Y:=", "137.96137853290875mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_9"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_9"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_9"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "26.254159241384748mm", "Y:=", "140.06625410215713mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.655888455690445mm", "Y:=", "139.513894791476mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.458467589957614mm", "Y:=", "138.01433443864812mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.85931750991909mm", "Y:=", "137.06713339650133mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.457588295613395mm", "Y:=", "137.61949270718245mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.65500916134622mm", "Y:=", "139.11905306001034mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.254159241384748mm", "Y:=", "140.06625410215713mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_10"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_10"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_10"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "22.761052318125934mm", "Y:=", "137.475027747189mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.359323103820238mm", "Y:=", "138.02738705787013mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.556743969553064mm", "Y:=", "139.526947410698mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.15589404959159mm", "Y:=", "140.4741484528448mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.557623263897284mm", "Y:=", "139.92178914216368mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.36020239816446mm", "Y:=", "138.42222878933578mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.761052318125934mm", "Y:=", "137.475027747189mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_11"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_11"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_11"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "21.35976834489349mm", "Y:=", "139.18506158497172mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.807409034212377mm", "Y:=", "140.78333237066602mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.307848681384485mm", "Y:=", "140.98075323639887mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.360647639237712mm", "Y:=", "139.57990331643737mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.91300694991883mm", "Y:=", "137.98163253074307mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.412567302746723mm", "Y:=", "137.78421166501025mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.35976834489349mm", "Y:=", "139.18506158497172mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_12"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_12"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_12"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "15.26238244744456mm", "Y:=", "139.98779766712502mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.81474175812568mm", "Y:=", "138.38952688143073mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.314302110953562mm", "Y:=", "138.1921060156979mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.261503153100335mm", "Y:=", "139.59295593565938mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.70914384241922mm", "Y:=", "141.19122672135367mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.209583489591335mm", "Y:=", "141.3886475870865mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.26238244744456mm", "Y:=", "139.98779766712502mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_13"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_13"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_13"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "15.163237961307171mm", "Y:=", "140.00085028634706mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.61087865062606mm", "Y:=", "141.59912107204136mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.111318297798167mm", "Y:=", "141.79654193777418mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.164117255651394mm", "Y:=", "140.3956920178127mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.716476566332513mm", "Y:=", "138.7974212321184mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.216036919160405mm", "Y:=", "138.6000003663856mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.163237961307171mm", "Y:=", "140.00085028634706mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_14"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_14"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_14"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "10.367991550953302mm", "Y:=", "139.10660514993964mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.966262336647599mm", "Y:=", "139.65896446062072mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.163683202380426mm", "Y:=", "141.15852481344862mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.762833282418956mm", "Y:=", "142.1057258555954mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.164562496724649mm", "Y:=", "141.5533665449143mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.967141630991822mm", "Y:=", "140.0538061920864mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.367991550953302mm", "Y:=", "139.10660514993964mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_15"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_15"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_15"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "5.96758687206508mm", "Y:=", "141.21148071918802mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.519946182746207mm", "Y:=", "139.61320993349372mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.019506535574084mm", "Y:=", "139.4157890677609mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.966707577720864mm", "Y:=", "140.81663898772237mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.414348267039738mm", "Y:=", "142.41490977341667mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.9147879142118605mm", "Y:=", "142.6123306391495mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.96758687206508mm", "Y:=", "141.21148071918802mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_16"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_16"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_16"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "28.54968835102459mm", "Y:=", "133.56097385402052mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.14795913671889mm", "Y:=", "134.11333316470163mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.345380002451716mm", "Y:=", "135.61289351752953mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.944530082490243mm", "Y:=", "136.56009455967632mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.346259296795942mm", "Y:=", "136.00773524899517mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.148838431063112mm", "Y:=", "134.5081748961673mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.54968835102459mm", "Y:=", "133.56097385402052mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_17"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_17"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_17"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "25.846264890697086mm", "Y:=", "136.96798891036397mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.247994105002782mm", "Y:=", "136.41562959968283mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.050573239269955mm", "Y:=", "134.91606924685496mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.45142315923143mm", "Y:=", "133.96886820470817mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.04969394492573mm", "Y:=", "134.52122751538928mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.24711481065856mm", "Y:=", "136.02078786821718mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.846264890697086mm", "Y:=", "136.96798891036397mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_18"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_18"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_18"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "22.747999698903936mm", "Y:=", "137.37588326105163mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.14972891320963mm", "Y:=", "136.82352395037051mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.9523080474768mm", "Y:=", "135.32396359754262mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.35315796743828mm", "Y:=", "134.37676255539583mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.95142875313258mm", "Y:=", "134.92912186607697mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.148849618865405mm", "Y:=", "136.42868221890484mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.747999698903936mm", "Y:=", "137.37588326105163mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_19"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_19"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_19"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "20.95187399420583mm", "Y:=", "136.08679639317856mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.399514683524714mm", "Y:=", "137.68506717887286mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.89995433069683mm", "Y:=", "137.88248804460568mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.952753288550056mm", "Y:=", "136.4816381246442mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.505112599231175mm", "Y:=", "134.8833673389499mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.004672952059057mm", "Y:=", "134.6859464732171mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.95187399420583mm", "Y:=", "136.08679639317856mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_20"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_20"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_20"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "14.8544880967569mm", "Y:=", "136.88953247533186mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.406847407438017mm", "Y:=", "135.29126168963757mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.9064077602659mm", "Y:=", "135.09384082390474mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.853608802412673mm", "Y:=", "136.49469074386622mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.301249491731557mm", "Y:=", "138.0929615295605mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.801689138903672mm", "Y:=", "138.29038239529336mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.8544880967569mm", "Y:=", "136.88953247533186mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_21"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_21"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_21"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "13.453204123524447mm", "Y:=", "138.5995663131146mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.85493333783014mm", "Y:=", "138.04720700243348mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.657512472097313mm", "Y:=", "136.5476466496056mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.05836239205879mm", "Y:=", "135.60044560745882mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.656633177753097mm", "Y:=", "136.15280491813994mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.854054043485924mm", "Y:=", "137.65236527096783mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.453204123524447mm", "Y:=", "138.5995663131146mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_22"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_22"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_22"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "8.657957713170582mm", "Y:=", "137.7053211767072mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.210317023851701mm", "Y:=", "136.1070503910129mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.709877376679593mm", "Y:=", "135.90962952528008mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.657078418826359mm", "Y:=", "137.31047944524155mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.10471910814525mm", "Y:=", "138.90875023093585mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.605158755317358mm", "Y:=", "139.10617109666867mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.657957713170582mm", "Y:=", "137.7053211767072mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_23"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_23"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_23"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "7.25667373993814mm", "Y:=", "139.41535501448993mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.658402954243833mm", "Y:=", "138.8629957038088mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.460982088511006mm", "Y:=", "137.36343535098092mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.861832008472483mm", "Y:=", "136.41623430883413mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.460102794166783mm", "Y:=", "136.96859361951527mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.65752365989961mm", "Y:=", "138.46815397234315mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.25667373993814mm", "Y:=", "139.41535501448993mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_24"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_24"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_24"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "29.838775218897645mm", "Y:=", "131.76484814932243mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.286415908216526mm", "Y:=", "133.36311893501673mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.78685555538864mm", "Y:=", "133.56053980074955mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.839654513241868mm", "Y:=", "132.15968988078808mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.392013823922984mm", "Y:=", "130.56141909509378mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.891574176750872mm", "Y:=", "130.36399822936096mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.838775218897645mm", "Y:=", "131.76484814932243mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_25"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_25"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_25"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "25.438370540009426mm", "Y:=", "133.8697237185708mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.840099754315123mm", "Y:=", "133.31736440788967mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.642678888582296mm", "Y:=", "131.8178040550618mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.04352880854377mm", "Y:=", "130.870603012915mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.641799594238073mm", "Y:=", "131.42296232359615mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.839220459970903mm", "Y:=", "132.92252267642402mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.438370540009426mm", "Y:=", "133.8697237185708mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_26"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_26"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_26"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "20.64312412965555mm", "Y:=", "132.9754785821634mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.195483440336666mm", "Y:=", "131.3772077964691mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.69504379316455mm", "Y:=", "131.17978693073627mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.642244835311327mm", "Y:=", "132.58063685069774mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.08988552463021mm", "Y:=", "134.17890763639204mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.59032517180232mm", "Y:=", "134.37632850212486mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.64312412965555mm", "Y:=", "132.9754785821634mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_27"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_27"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_27"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "20.54397964351817mm", "Y:=", "132.9885312013854mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.99162033283705mm", "Y:=", "134.5868019870797mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.492059980009167mm", "Y:=", "134.78422285281252mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.544858937862394mm", "Y:=", "133.38337293285105mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.097218248543513mm", "Y:=", "131.78510214715675mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.596778601371398mm", "Y:=", "131.58768128142393mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.54397964351817mm", "Y:=", "132.9885312013854mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_28"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_28"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_28"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "15.7487332331643mm", "Y:=", "132.094286064978mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.347004018858602mm", "Y:=", "132.64664537565915mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.54442488459143mm", "Y:=", "134.14620572848702mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.143574964629956mm", "Y:=", "135.0934067706338mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.545304178935648mm", "Y:=", "134.54104745995267mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.347883313202821mm", "Y:=", "133.0414871071248mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.7487332331643mm", "Y:=", "132.094286064978mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_29"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_29"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_29"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "14.347449259931857mm", "Y:=", "133.80431990276074mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.795089949250738mm", "Y:=", "135.40259068845504mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.295529596422845mm", "Y:=", "135.60001155418786mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.34832855427608mm", "Y:=", "134.19916163422639mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.900687864957192mm", "Y:=", "132.6008908485321mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.400248217785084mm", "Y:=", "132.40346998279927mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.347449259931857mm", "Y:=", "133.80431990276074mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_30"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_30"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_30"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "8.250063362482923mm", "Y:=", "134.60705598491404mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.802422673164035mm", "Y:=", "133.00878519921974mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.301983025991927mm", "Y:=", "132.81136433348692mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.2491840681387mm", "Y:=", "134.2122142534484mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.69682475745758mm", "Y:=", "135.8104850391427mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.197264404629689mm", "Y:=", "136.0079059048755mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.250063362482923mm", "Y:=", "134.60705598491404mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_31"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_31"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_31"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "8.150918876345543mm", "Y:=", "134.62010860413605mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.5985595656644165mm", "Y:=", "136.21837938983035mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.098999212836539mm", "Y:=", "136.41580025556317mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.151798170689759mm", "Y:=", "135.0149503356017mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.704157481370885mm", "Y:=", "133.4166795499074mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.203717834198763mm", "Y:=", "133.21925868417458mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.150918876345543mm", "Y:=", "134.62010860413605mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_32"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_32"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_32"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "27.93743045209402mm", "Y:=", "127.66545254414494mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.3639861946972mm", "Y:=", "128.1584674660752mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.54019655419427mm", "Y:=", "129.49691802892983mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.28985117108816mm", "Y:=", "130.34235366985422mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.863295428484985mm", "Y:=", "129.84933874792398mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.68708506898792mm", "Y:=", "128.51088818506932mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.93743045209402mm", "Y:=", "127.66545254414494mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_33"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_33"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_33"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "23.99914463688978mm", "Y:=", "129.5455868047128mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.492159558820035mm", "Y:=", "128.1190310621096mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.83061012167468mm", "Y:=", "127.94282070261254mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.67604576259907mm", "Y:=", "129.19316608571864mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.18303084066882mm", "Y:=", "130.61972182832181mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.844580277814174mm", "Y:=", "130.7959321878189mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.99914463688978mm", "Y:=", "129.5455868047128mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_34"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_34"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_34"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "23.900000150752405mm", "Y:=", "129.5586394239348mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.40698522882215mm", "Y:=", "130.985195166538mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.068534665967505mm", "Y:=", "131.16140552603508mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.223099025043112mm", "Y:=", "129.91106014292896mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.716113946973366mm", "Y:=", "128.4845044003258mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.054564509828012mm", "Y:=", "128.3082940408287mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.900000150752405mm", "Y:=", "129.5586394239348mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_35"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_35"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_35"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "18.447053413196443mm", "Y:=", "130.2765334811451mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.940068335126696mm", "Y:=", "128.8499777385419mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.278518897981336mm", "Y:=", "128.67376737904485mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.12395453890573mm", "Y:=", "129.92411276215094mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.630939616975475mm", "Y:=", "131.3506685047541mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.292489054120832mm", "Y:=", "131.5268788642512mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.447053413196443mm", "Y:=", "130.2765334811451mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_36"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_36"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_36"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "15.671007801349772mm", "Y:=", "130.64200681936123mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.164022723280027mm", "Y:=", "129.21545107675803mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.502473286134666mm", "Y:=", "129.03924071726098mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.347908927059063mm", "Y:=", "130.28958610036707mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.854894005128806mm", "Y:=", "131.71614184297027mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.516443442274166mm", "Y:=", "131.89235220246732mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.671007801349772mm", "Y:=", "130.64200681936123mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_37"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_37"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_37"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "15.571863315212397mm", "Y:=", "130.6550594385832mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.07884839328214mm", "Y:=", "132.0816151811864mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.7403978304275mm", "Y:=", "132.25782554068346mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.894962189503104mm", "Y:=", "131.00748015757736mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.387977111433361mm", "Y:=", "129.58092441497416mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.726427674288mm", "Y:=", "129.40471405547711mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.571863315212397mm", "Y:=", "130.6550594385832mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_38"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_38"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_38"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "12.795817703365717mm", "Y:=", "131.02053277679937mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.302802781435467mm", "Y:=", "132.44708851940254mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.96435221858082mm", "Y:=", "132.62329887889962mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.118916577656432mm", "Y:=", "131.3729534957935mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.611931499586682mm", "Y:=", "129.94639775319033mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.950382062441328mm", "Y:=", "129.77018739369328mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.795817703365717mm", "Y:=", "131.02053277679937mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_39"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_39"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_39"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "8.505111169167343mm", "Y:=", "130.22376591165792mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.93166691177052mm", "Y:=", "130.7167808335882mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.10787727126759mm", "Y:=", "132.05523139644282mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.857531888161482mm", "Y:=", "132.9006670373672mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.430976145558308mm", "Y:=", "132.40765211543697mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.254765786061238mm", "Y:=", "131.0692015525823mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.505111169167343mm", "Y:=", "130.22376591165792mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_40"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_40"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_40"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "27.57195711387788mm", "Y:=", "124.88940693229827mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.99851285648106mm", "Y:=", "125.38242185422853mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.17472321597813mm", "Y:=", "126.72087241708317mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.92437783287202mm", "Y:=", "127.56630805800756mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.49782209026884mm", "Y:=", "127.07329313607731mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.32161173077177mm", "Y:=", "125.73484257322266mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.57195711387788mm", "Y:=", "124.88940693229827mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_41"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_41"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_41"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "23.83190825817423mm", "Y:=", "128.10509189881694mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.47948753918009mm", "Y:=", "125.42819077310764mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.332599024386454mm", "Y:=", "126.41422061696815mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.83190825817423mm", "Y:=", "128.10509189881694mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_1"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_1"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_1"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "23.53452681253626mm", "Y:=", "126.78259381208814mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.041511890606003mm", "Y:=", "128.2091495546913mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.70306132775136mm", "Y:=", "128.38535991418837mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.857625686826967mm", "Y:=", "127.13501453108228mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.35064060875722mm", "Y:=", "125.70845878847909mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.689091171611867mm", "Y:=", "125.53224842898203mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.53452681253626mm", "Y:=", "126.78259381208814mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_42"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_42"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_42"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "20.931791703282833mm", "Y:=", "128.4644911131554mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.254890577573548mm", "Y:=", "128.81691183214954mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.24092042143405mm", "Y:=", "125.96380034694317mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.931791703282833mm", "Y:=", "128.4644911131554mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_2"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_2"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_2"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "15.30553446313363mm", "Y:=", "127.86596120751456mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.798549385063888mm", "Y:=", "126.43940546491137mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.136999947918525mm", "Y:=", "126.26319510541431mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.98243558884292mm", "Y:=", "127.51354048852042mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.489420666912665mm", "Y:=", "128.9400962311236mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.150970104058025mm", "Y:=", "129.11630659062067mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.30553446313363mm", "Y:=", "127.86596120751456mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_43"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_43"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_43"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "15.008153017495658mm", "Y:=", "126.54346312078573mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.360573736489798mm", "Y:=", "129.22036424649502mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.507462251283435mm", "Y:=", "128.23433440263452mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.008153017495658mm", "Y:=", "126.54346312078573mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_3"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_3"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_3"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "10.91568344279786mm", "Y:=", "127.08224696159512mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.342239185401038mm", "Y:=", "127.57526188352537mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.518449544898107mm", "Y:=", "128.91371244638mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.268104161791996mm", "Y:=", "129.7591480873044mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.841548419188815mm", "Y:=", "129.26613316537416mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.665338059691745mm", "Y:=", "127.92768260251951mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.91568344279786mm", "Y:=", "127.08224696159512mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_44"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_44"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_44"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "8.492058549945337mm", "Y:=", "130.1246214255206mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.065502807342156mm", "Y:=", "129.63160650359032mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.8892924478450865mm", "Y:=", "128.29315594073566mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.139637830951198mm", "Y:=", "127.44772029981128mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.566193573554376mm", "Y:=", "127.94073522174153mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.742403933051445mm", "Y:=", "129.27918578459617mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.492058549945337mm", "Y:=", "130.1246214255206mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_45"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_45"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_45"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))


' ************************************
' ***Second Coil begins here***
' ************************************
oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "46.55367908467154mm", "Y:=", "136.47783420464873mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.276186496951055mm", "Y:=", "135.36987075722854mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.87881870392671mm", "Y:=", "135.94867944843685mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.758943498622855mm", "Y:=", "137.63545158706535mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.036436086343336mm", "Y:=", "138.74341503448554mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.43380387936768mm", "Y:=", "138.16460634327723mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.55367908467154mm", "Y:=", "136.47783420464873mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_46"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_46"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_46"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "48.622243522162mm", "Y:=", "137.25812496324437mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.730206969582184mm", "Y:=", "135.9806323755239mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.151398278373875mm", "Y:=", "134.58326458249957mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.46462613974538mm", "Y:=", "134.4633893771957mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.35666269232519mm", "Y:=", "135.74088196491618mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.935471383533496mm", "Y:=", "137.1382497579405mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.622243522162mm", "Y:=", "137.25812496324437mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_47"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_47"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_47"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "51.509367061468495mm", "Y:=", "136.06223923760734mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.617330508888685mm", "Y:=", "134.78474664988687mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.03852181768037mm", "Y:=", "133.38737885686254mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.35174967905188mm", "Y:=", "133.26750365155868mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.24378623163169mm", "Y:=", "134.54499623927916mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.82259492284mm", "Y:=", "135.9423640323035mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.509367061468495mm", "Y:=", "136.06223923760734mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_48"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_48"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_48"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "55.215049702591mm", "Y:=", "132.8901770277377mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.93755711487053mm", "Y:=", "131.78221358031752mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.540189321846185mm", "Y:=", "132.36102227152583mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.42031411654232mm", "Y:=", "134.04779441015432mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.6978067042628mm", "Y:=", "135.1557578575745mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.09517449728715mm", "Y:=", "134.5769491663662mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.215049702591mm", "Y:=", "132.8901770277377mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_49"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_49"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_49"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "55.307437655848815mm", "Y:=", "132.85190868451733mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.5849302435693mm", "Y:=", "133.95987213193752mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.98229803659365mm", "Y:=", "133.3810634407292mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.1021732418975mm", "Y:=", "131.6942913021007mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.82468065417703mm", "Y:=", "130.58632785468052mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.427312861152686mm", "Y:=", "131.16513654588883mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.307437655848815mm", "Y:=", "132.85190868451733mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_50"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_50"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_50"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "60.989296781204004mm", "Y:=", "130.49840557646368mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.711804193483516mm", "Y:=", "129.3904421290435mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.31443640045917mm", "Y:=", "129.9692508202518mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.194561195155316mm", "Y:=", "131.6560229588803mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.4720537828758mm", "Y:=", "132.7639864063005mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.86942157590014mm", "Y:=", "132.18517771509218mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.989296781204004mm", "Y:=", "130.49840557646368mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_51"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_51"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_51"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "61.08168473446182mm", "Y:=", "130.4601372332433mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.35917732218229mm", "Y:=", "131.5681006806635mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.756545115206634mm", "Y:=", "130.98929198945518mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.8764203205105mm", "Y:=", "129.30251985082668mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.59892773279002mm", "Y:=", "128.1945564034065mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.20155993976567mm", "Y:=", "128.7733650946148mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.08168473446182mm", "Y:=", "130.4601372332433mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_52"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_52"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_52"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "63.9688082737683mm", "Y:=", "129.2642515076063mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "65.24630086148878mm", "Y:=", "130.3722149550265mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "66.64366865451312mm", "Y:=", "129.79340626381818mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "66.76354385981699mm", "Y:=", "128.1066341251897mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "65.4860512720965mm", "Y:=", "126.9986706777695mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "64.08868347907216mm", "Y:=", "127.5774793689778mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.9688082737683mm", "Y:=", "129.2642515076063mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_53"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_53"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_53"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "42.56305777298584mm", "Y:=", "134.74832804775886mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.840550360706324mm", "Y:=", "135.85629149517905mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.23791815373067mm", "Y:=", "135.27748280397074mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.357793359034524mm", "Y:=", "133.59071066534224mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.08030077131404mm", "Y:=", "132.48274721792205mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.6829329782897mm", "Y:=", "133.06155590913036mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.56305777298584mm", "Y:=", "134.74832804775886mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_54"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_54"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_54"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "47.426357796525mm", "Y:=", "134.3710014239379mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.53432124394517mm", "Y:=", "133.0935088362174mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.95551255273686mm", "Y:=", "131.69614104319308mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.268740414108365mm", "Y:=", "131.57626583788922mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.160776966688175mm", "Y:=", "132.8537584256097mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.739585657896484mm", "Y:=", "134.25112621863406mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.426357796525mm", "Y:=", "134.3710014239379mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_55"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_55"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_55"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "49.155863953414865mm", "Y:=", "130.38038011225217mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.04790050599468mm", "Y:=", "131.65787269997267mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.626709197203mm", "Y:=", "133.055240492997mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.31348133583149mm", "Y:=", "133.17511569830086mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.42144478325168mm", "Y:=", "131.89762311058038mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.842636092043364mm", "Y:=", "130.50025531755603mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.155863953414865mm", "Y:=", "130.38038011225217mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_56"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_56"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_56"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "51.22442839090533mm", "Y:=", "131.16067087084784mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.501920978625805mm", "Y:=", "132.26863431826803mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.89928877165015mm", "Y:=", "131.68982562705972mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.01916397695401mm", "Y:=", "130.00305348843122mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.74167138923353mm", "Y:=", "128.89509004101103mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.34430359620919mm", "Y:=", "129.47389873221934mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.22442839090533mm", "Y:=", "131.16067087084784mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_57"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_57"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_57"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "56.9062875162605mm", "Y:=", "128.80716776279422mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.62879492854002mm", "Y:=", "127.69920431537403mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.23142713551567mm", "Y:=", "128.27801300658234mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.11155193021182mm", "Y:=", "129.96478514521084mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.3890445179323mm", "Y:=", "131.07274859263103mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.786412310956635mm", "Y:=", "130.49393990142272mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.9062875162605mm", "Y:=", "128.80716776279422mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_58"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_58"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_58"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "56.99867546951832mm", "Y:=", "128.7688994195738mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.27616805723879mm", "Y:=", "129.876862866994mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.673535850263136mm", "Y:=", "129.2980541757857mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.793411055567mm", "Y:=", "127.61128203715718mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.51591846784652mm", "Y:=", "126.503318589737mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.118550674822174mm", "Y:=", "127.08212728094531mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.99867546951832mm", "Y:=", "128.7688994195738mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_59"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_59"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_59"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "60.70435811064083mm", "Y:=", "125.59683720970416mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.59639466322065mm", "Y:=", "126.87432979742464mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.17520335442896mm", "Y:=", "128.27169759044898mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.86197549305746mm", "Y:=", "128.39157279575284mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.96993894047765mm", "Y:=", "127.11408020803236mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.39113024926933mm", "Y:=", "125.71671241500802mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.70435811064083mm", "Y:=", "125.59683720970416mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_60"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_60"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_60"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "65.56765813417998mm", "Y:=", "125.21951058588319mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "64.29016554645949mm", "Y:=", "124.11154713846301mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.89279775343516mm", "Y:=", "124.6903558296713mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.77292254813129mm", "Y:=", "126.37712796829982mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "64.05041513585178mm", "Y:=", "127.48509141571999mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "65.44778292887611mm", "Y:=", "126.90628272451168mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "65.56765813417998mm", "Y:=", "125.21951058588319mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_61"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_61"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_61"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "42.185731149164866mm", "Y:=", "129.88502802421974mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.07776770174468mm", "Y:=", "131.1625206119402mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.656576392953mm", "Y:=", "132.55988840496457mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.34334853158149mm", "Y:=", "132.67976361026842mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.45131197900167mm", "Y:=", "131.40227102254792mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.872503287793364mm", "Y:=", "130.0049032295236mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.185731149164866mm", "Y:=", "129.88502802421974mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_62"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_62"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_62"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "46.230472070887984mm", "Y:=", "131.48387788463137mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.338435518308174mm", "Y:=", "130.2063852969109mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.75962682709986mm", "Y:=", "128.80901750388657mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.07285468847136mm", "Y:=", "128.68914229858268mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.96489124105118mm", "Y:=", "129.96663488630318mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.543699932259486mm", "Y:=", "131.3640026793275mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.230472070887984mm", "Y:=", "131.48387788463137mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_63"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_63"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_63"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "49.11759561019447mm", "Y:=", "130.28799215899437mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.22555905761466mm", "Y:=", "129.0104995712739mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.64675036640635mm", "Y:=", "127.61313177824957mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.95997822777785mm", "Y:=", "127.4932565729457mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.85201478035766mm", "Y:=", "128.77074916066618mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.43082347156598mm", "Y:=", "130.16811695369051mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.11759561019447mm", "Y:=", "130.28799215899437mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_64"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_64"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_64"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "50.02854266526832mm", "Y:=", "128.27354733154135mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.3060352529888mm", "Y:=", "129.38151077896154mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.703403046013136mm", "Y:=", "128.80270208775323mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.823278251317mm", "Y:=", "127.11592994912473mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.54578566359651mm", "Y:=", "126.00796650170454mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.148417870572175mm", "Y:=", "126.58677519291285mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.02854266526832mm", "Y:=", "128.27354733154135mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_65"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_65"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_65"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "55.71040179062349mm", "Y:=", "125.92004422348771mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.432909202903005mm", "Y:=", "124.81208077606753mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.035541409878675mm", "Y:=", "125.39088946727584mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.91566620457481mm", "Y:=", "127.07766160590434mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.19315879229529mm", "Y:=", "128.18562505332451mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.59052658531964mm", "Y:=", "127.6068163621162mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.71040179062349mm", "Y:=", "125.92004422348771mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_66"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_66"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_66"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "57.77896622811396mm", "Y:=", "126.70033498208336mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.88692967553415mm", "Y:=", "125.42284239436289mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.30812098432584mm", "Y:=", "124.02547460133854mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.62134884569734mm", "Y:=", "123.90559939603467mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.51338539827715mm", "Y:=", "125.18309198375516mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.09219408948546mm", "Y:=", "126.5804597767795mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.77896622811396mm", "Y:=", "126.70033498208336mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_67"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_67"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_67"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "61.48464886923648mm", "Y:=", "123.52827277221371mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.20715628151599mm", "Y:=", "122.42030932479354mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.80978848849165mm", "Y:=", "122.99911801600184mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.68991328318779mm", "Y:=", "124.68589015463034mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.96740587090827mm", "Y:=", "125.79385360205053mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.36477366393262mm", "Y:=", "125.21504491084221mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.48464886923648mm", "Y:=", "123.52827277221371mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_68"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_68"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_68"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "63.553213306726946mm", "Y:=", "124.30856353080935mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "64.66117675414714mm", "Y:=", "123.03107094308886mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "64.08236806293883mm", "Y:=", "121.63370315006453mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.395595924310314mm", "Y:=", "121.51382794476066mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.28763247689014mm", "Y:=", "122.79132053248115mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.86644116809845mm", "Y:=", "124.18868832550548mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.553213306726946mm", "Y:=", "124.30856353080935mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_69"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_69"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_69"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "40.17128632171183mm", "Y:=", "128.9740809691459mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.44877890943231mm", "Y:=", "130.08204441656608mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.84614670245666mm", "Y:=", "129.50323572535777mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.96602190776051mm", "Y:=", "127.81646358672927mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.68852932004003mm", "Y:=", "126.70850013930908mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "40.29116152701569mm", "Y:=", "127.28730883051739mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "40.17128632171183mm", "Y:=", "128.9740809691459mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_70"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_70"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_70"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "45.034586345250986mm", "Y:=", "128.5967543453249mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.14254979267117mm", "Y:=", "127.31926175760441mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.56374110146286mm", "Y:=", "125.92189396458008mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.876968962834354mm", "Y:=", "125.80201875927622mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.769005515414165mm", "Y:=", "127.0795113469967mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.34781420662247mm", "Y:=", "128.47687914002103mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.034586345250986mm", "Y:=", "128.5967543453249mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_71"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_71"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_71"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "48.74026898637349mm", "Y:=", "125.42469213545525mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.46277639865302mm", "Y:=", "124.31672868803506mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.065408605628676mm", "Y:=", "124.89553737924336mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.94553340032481mm", "Y:=", "126.58230951787186mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.22302598804529mm", "Y:=", "127.69027296529205mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.62039378106964mm", "Y:=", "127.11146427408374mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.74026898637349mm", "Y:=", "125.42469213545525mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_72"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_72"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_72"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "48.832656939631306mm", "Y:=", "125.38642379223487mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.11014952735179mm", "Y:=", "126.49438723965504mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.507517320376124mm", "Y:=", "125.91557854844673mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.62739252567999mm", "Y:=", "124.22880640981823mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.349899937959506mm", "Y:=", "123.12084296239804mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.95253214493516mm", "Y:=", "123.69965165360635mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.832656939631306mm", "Y:=", "125.38642379223487mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_73"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_73"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_73"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "52.53833958075383mm", "Y:=", "122.2143615823652mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.43037613333364mm", "Y:=", "123.49185417008567mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.00918482454195mm", "Y:=", "124.88922196311002mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.695956963170445mm", "Y:=", "125.00909716841389mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.803920410590635mm", "Y:=", "123.7316045806934mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.225111719382326mm", "Y:=", "122.33423678766906mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.53833958075383mm", "Y:=", "122.2143615823652mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_74"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_74"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_74"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "54.60690401824429mm", "Y:=", "122.99465234096084mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.88439660596478mm", "Y:=", "124.10261578838103mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.281764398989125mm", "Y:=", "123.52380709717272mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.40163960429298mm", "Y:=", "121.83703495854422mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.1241470165725mm", "Y:=", "120.72907151112403mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.72677922354816mm", "Y:=", "121.30788020233234mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.60690401824429mm", "Y:=", "122.99465234096084mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_75"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_75"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_75"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "60.28876314359947mm", "Y:=", "120.64114923290721mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.011270555878994mm", "Y:=", "119.53318578548702mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.61390276285465mm", "Y:=", "120.11199447669533mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.49402755755079mm", "Y:=", "121.79876661532383mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.77152014527127mm", "Y:=", "122.90673006274402mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.16888793829561mm", "Y:=", "122.32792137153571mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.28876314359947mm", "Y:=", "120.64114923290721mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_76"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_76"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_76"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "60.38115109685728mm", "Y:=", "120.60288088968683mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.65864368457777mm", "Y:=", "121.710844337107mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.0560114776021mm", "Y:=", "121.1320356458987mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.17588668290597mm", "Y:=", "119.4452635072702mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.89839409518547mm", "Y:=", "118.33730005985001mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.501026302161144mm", "Y:=", "118.91610875105832mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.38115109685728mm", "Y:=", "120.60288088968683mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_77"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_77"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_77"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "39.76820138931317mm", "Y:=", "124.47322785142772mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "38.77927533707036mm", "Y:=", "125.61346916939311mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "39.29589797054555mm", "Y:=", "126.86070653837352mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "40.80144665626354mm", "Y:=", "126.96770258938854mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.790372708506354mm", "Y:=", "125.82746127142315mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.27375007503116mm", "Y:=", "124.58022390244275mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "39.76820138931317mm", "Y:=", "124.47322785142772mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_78"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_78"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_78"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "44.11892408298738mm", "Y:=", "124.13232897676218mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.978682765021986mm", "Y:=", "123.14340292451936mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.73144539604158mm", "Y:=", "123.66002555799456mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.62444934502656mm", "Y:=", "125.16557424371256mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.76469066299195mm", "Y:=", "126.15450029595537mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.01192803197236mm", "Y:=", "125.63787766248018mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.11892408298738mm", "Y:=", "124.13232897676218mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_79"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_79"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_79"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "44.21131203624519mm", "Y:=", "124.0940606335418mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.35155335421058mm", "Y:=", "125.08298668578462mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.59879072319099mm", "Y:=", "124.56636405230944mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.705786774206004mm", "Y:=", "123.06081536659143mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.56554545624061mm", "Y:=", "122.07188931434862mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.318308087260206mm", "Y:=", "122.5885119478238mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.21131203624519mm", "Y:=", "124.0940606335418mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_80"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_80"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_80"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "49.29264946542462mm", "Y:=", "121.98930175642067mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.15240814745923mm", "Y:=", "121.00037570417786mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.90517077847882mm", "Y:=", "121.51699833765305mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.7981747274638mm", "Y:=", "123.02254702337105mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.93841604542919mm", "Y:=", "124.01147307561385mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.1856534144096mm", "Y:=", "123.49485044213867mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.29264946542462mm", "Y:=", "121.98930175642067mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_81"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_81"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_81"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "51.87951215664322mm", "Y:=", "120.9177881462499mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.73927083867783mm", "Y:=", "119.9288620940071mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.49203346969743mm", "Y:=", "120.44548472748228mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.385037418682415mm", "Y:=", "121.95103341320029mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.525278736647806mm", "Y:=", "122.9399594654431mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.772516105628206mm", "Y:=", "122.42333683196792mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.87951215664322mm", "Y:=", "120.9177881462499mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_82"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_82"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_82"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "51.97190010990103mm", "Y:=", "120.87951980302952mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.11214142786642mm", "Y:=", "121.86844585527234mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.359378796846826mm", "Y:=", "121.35182322179716mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.46637484786184mm", "Y:=", "119.84627453607915mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.32613352989645mm", "Y:=", "118.85734848383635mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.078896160916045mm", "Y:=", "119.37397111731153mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.97190010990103mm", "Y:=", "120.87951980302952mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_83"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_83"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_83"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "54.558762801119656mm", "Y:=", "119.80800619285877mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.69900411908504mm", "Y:=", "120.79693224510157mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.946241488065446mm", "Y:=", "120.2803096116264mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.053237539080456mm", "Y:=", "118.7747609259084mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.91299622111507mm", "Y:=", "117.78583487366558mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.66575885213467mm", "Y:=", "118.30245750714077mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.558762801119656mm", "Y:=", "119.80800619285877mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_84"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_84"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_84"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "57.876240227843496mm", "Y:=", "116.97263258023241mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.88731417560068mm", "Y:=", "118.11287389819782mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.40393680907587mm", "Y:=", "119.36011126717823mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.90948549479387mm", "Y:=", "119.46710731819323mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.89841154703667mm", "Y:=", "118.32686600022785mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.381788913561486mm", "Y:=", "117.07962863124745mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.876240227843496mm", "Y:=", "116.97263258023241mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_85"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_85"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_85"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "38.69668777914241mm", "Y:=", "121.88636516020911mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "37.707761726899605mm", "Y:=", "123.0266064781745mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "38.224384360374785mm", "Y:=", "124.27384384715491mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "39.72993304609278mm", "Y:=", "124.38083989816992mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "40.7188590983356mm", "Y:=", "123.24059858020453mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "40.20223646486041mm", "Y:=", "121.99336121122413mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "38.69668777914241mm", "Y:=", "121.88636516020911mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_86"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_86"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_86"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "43.543507582676355mm", "Y:=", "122.8012056047761mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.51026231572598mm", "Y:=", "120.30673086681529mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "40.53241021124036mm", "Y:=", "122.58721350274607mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.543507582676355mm", "Y:=", "122.8012056047761mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_4"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_4"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_4"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "43.13979842607442mm", "Y:=", "121.5071979423232mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.28003974403981mm", "Y:=", "122.496123994566mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.52727711302022mm", "Y:=", "121.97950136109083mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.634273164035235mm", "Y:=", "120.47395267537283mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.494031846069845mm", "Y:=", "119.48502662313003mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.24679447708944mm", "Y:=", "120.0016492566052mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.13979842607442mm", "Y:=", "121.5071979423232mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_87"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_87"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_87"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "46.2347818005161mm", "Y:=", "121.6623961775174mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.72925653847691mm", "Y:=", "120.629150910567mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.44877390254612mm", "Y:=", "118.65129880608139mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.2347818005161mm", "Y:=", "121.6623961775174mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_5"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_5"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_5"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "50.807998546472476mm", "Y:=", "118.33092545503129mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.66775722850708mm", "Y:=", "117.34199940278849mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.42051985952668mm", "Y:=", "117.85862203626367mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.31352380851166mm", "Y:=", "119.36417072198167mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.45376512647705mm", "Y:=", "120.35309677422447mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.70100249545745mm", "Y:=", "119.83647414074929mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.807998546472476mm", "Y:=", "118.33092545503129mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_88"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_88"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_88"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "50.40428938987054mm", "Y:=", "117.03691779257838mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.437534656820915mm", "Y:=", "119.5313925305392mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.415386761306536mm", "Y:=", "117.25090989460841mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.40428938987054mm", "Y:=", "117.03691779257838mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_6"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_6"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_6"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "54.21786392645412mm", "Y:=", "115.45728349918457mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.22893787421131mm", "Y:=", "116.59752481714995mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.74556050768649mm", "Y:=", "117.84476218613035mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.251109193404496mm", "Y:=", "117.95175823714537mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.240035245647306mm", "Y:=", "116.81151691917998mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.72341261217212mm", "Y:=", "115.56427955019957mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.21786392645412mm", "Y:=", "115.45728349918457mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_89"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_89"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_89"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "57.8379718846231mm", "Y:=", "116.88024462697462mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.82689793686591mm", "Y:=", "115.74000330900921mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.310275303390725mm", "Y:=", "114.49276594002882mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.80472661767273mm", "Y:=", "114.3857698890138mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.81580056542991mm", "Y:=", "115.52601120697919mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.332423198905104mm", "Y:=", "116.7732485759596mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.8379718846231mm", "Y:=", "116.88024462697462mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 5, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 6, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "hexagon_Conductor_90"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_90"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "hexagon_Conductor_90"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))


Set oModule = oDesign.GetModule("BoundarySetup")

oModule.AssignCoil Array("NAME:hexagon_Conductor_1", "Objects:=", Array("hexagon_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_2", "Objects:=", Array("hexagon_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_3", "Objects:=", Array("hexagon_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_4", "Objects:=", Array("hexagon_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_5", "Objects:=", Array("hexagon_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_6", "Objects:=", Array("hexagon_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_7", "Objects:=", Array("hexagon_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_8", "Objects:=", Array("hexagon_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_9", "Objects:=", Array("hexagon_Conductor_9"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_10", "Objects:=", Array("hexagon_Conductor_10"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_11", "Objects:=", Array("hexagon_Conductor_11"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_12", "Objects:=", Array("hexagon_Conductor_12"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_13", "Objects:=", Array("hexagon_Conductor_13"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_14", "Objects:=", Array("hexagon_Conductor_14"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_15", "Objects:=", Array("hexagon_Conductor_15"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_16", "Objects:=", Array("hexagon_Conductor_16"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_17", "Objects:=", Array("hexagon_Conductor_17"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_18", "Objects:=", Array("hexagon_Conductor_18"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_19", "Objects:=", Array("hexagon_Conductor_19"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_20", "Objects:=", Array("hexagon_Conductor_20"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_21", "Objects:=", Array("hexagon_Conductor_21"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_22", "Objects:=", Array("hexagon_Conductor_22"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_23", "Objects:=", Array("hexagon_Conductor_23"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_24", "Objects:=", Array("hexagon_Conductor_24"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_25", "Objects:=", Array("hexagon_Conductor_25"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_26", "Objects:=", Array("hexagon_Conductor_26"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_27", "Objects:=", Array("hexagon_Conductor_27"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_28", "Objects:=", Array("hexagon_Conductor_28"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_29", "Objects:=", Array("hexagon_Conductor_29"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_30", "Objects:=", Array("hexagon_Conductor_30"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_31", "Objects:=", Array("hexagon_Conductor_31"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_32", "Objects:=", Array("hexagon_Conductor_32"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_33", "Objects:=", Array("hexagon_Conductor_33"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_34", "Objects:=", Array("hexagon_Conductor_34"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_35", "Objects:=", Array("hexagon_Conductor_35"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_36", "Objects:=", Array("hexagon_Conductor_36"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_37", "Objects:=", Array("hexagon_Conductor_37"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_38", "Objects:=", Array("hexagon_Conductor_38"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_39", "Objects:=", Array("hexagon_Conductor_39"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_40", "Objects:=", Array("hexagon_Conductor_40"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_41", "Objects:=", Array("hexagon_Conductor_41"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_1", "Objects:=", Array("triangle_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_42", "Objects:=", Array("hexagon_Conductor_42"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_2", "Objects:=", Array("triangle_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_43", "Objects:=", Array("hexagon_Conductor_43"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_3", "Objects:=", Array("triangle_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_44", "Objects:=", Array("hexagon_Conductor_44"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_45", "Objects:=", Array("hexagon_Conductor_45"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_46", "Objects:=", Array("hexagon_Conductor_46"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_47", "Objects:=", Array("hexagon_Conductor_47"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_48", "Objects:=", Array("hexagon_Conductor_48"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_49", "Objects:=", Array("hexagon_Conductor_49"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_50", "Objects:=", Array("hexagon_Conductor_50"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_51", "Objects:=", Array("hexagon_Conductor_51"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_52", "Objects:=", Array("hexagon_Conductor_52"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_53", "Objects:=", Array("hexagon_Conductor_53"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_54", "Objects:=", Array("hexagon_Conductor_54"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_55", "Objects:=", Array("hexagon_Conductor_55"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_56", "Objects:=", Array("hexagon_Conductor_56"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_57", "Objects:=", Array("hexagon_Conductor_57"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_58", "Objects:=", Array("hexagon_Conductor_58"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_59", "Objects:=", Array("hexagon_Conductor_59"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_60", "Objects:=", Array("hexagon_Conductor_60"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_61", "Objects:=", Array("hexagon_Conductor_61"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_62", "Objects:=", Array("hexagon_Conductor_62"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_63", "Objects:=", Array("hexagon_Conductor_63"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_64", "Objects:=", Array("hexagon_Conductor_64"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_65", "Objects:=", Array("hexagon_Conductor_65"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_66", "Objects:=", Array("hexagon_Conductor_66"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_67", "Objects:=", Array("hexagon_Conductor_67"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_68", "Objects:=", Array("hexagon_Conductor_68"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_69", "Objects:=", Array("hexagon_Conductor_69"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_70", "Objects:=", Array("hexagon_Conductor_70"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_71", "Objects:=", Array("hexagon_Conductor_71"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_72", "Objects:=", Array("hexagon_Conductor_72"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_73", "Objects:=", Array("hexagon_Conductor_73"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_74", "Objects:=", Array("hexagon_Conductor_74"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_75", "Objects:=", Array("hexagon_Conductor_75"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_76", "Objects:=", Array("hexagon_Conductor_76"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_77", "Objects:=", Array("hexagon_Conductor_77"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_78", "Objects:=", Array("hexagon_Conductor_78"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_79", "Objects:=", Array("hexagon_Conductor_79"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_80", "Objects:=", Array("hexagon_Conductor_80"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_81", "Objects:=", Array("hexagon_Conductor_81"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_82", "Objects:=", Array("hexagon_Conductor_82"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_83", "Objects:=", Array("hexagon_Conductor_83"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_84", "Objects:=", Array("hexagon_Conductor_84"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_85", "Objects:=", Array("hexagon_Conductor_85"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_86", "Objects:=", Array("hexagon_Conductor_86"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_4", "Objects:=", Array("triangle_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_87", "Objects:=", Array("hexagon_Conductor_87"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_5", "Objects:=", Array("triangle_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_88", "Objects:=", Array("hexagon_Conductor_88"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_6", "Objects:=", Array("triangle_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_89", "Objects:=", Array("hexagon_Conductor_89"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_90", "Objects:=", Array("hexagon_Conductor_90"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")

oModule.SetEddyEffect Array("NAME:Eddy Effect Setting", Array("NAME:EddyEffectVector", Array("NAME:Data", "Object Name:=",  _
  "Stator_Lamination_Primitive", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1N1_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1S2_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1N2_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1S3_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1N3_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1S4_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1N4_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1S5_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1N5_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1S6_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1N6_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1S7_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1N7_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "1Magnet1S8_1_1", "Eddy Effect:=", true), Array("NAME:Data", "Object Name:=",  _
  "Rotor_1", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=", "Ph1_P3_C1_1", "Eddy Effect:=",  _
  false), Array("NAME:Data", "Object Name:=", "Ph2_P1_C1_1", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _
  "Ph2_P2_C1_1", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _
  "Ph3_P2_C1_1", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _
  "Ph3_P3_C1_1", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _
  "Ph1_P3_C1_2", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _
  "Ph2_P1_C1_2", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _
  "Ph2_P2_C1_2", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _
  "Ph3_P2_C1_2", "Eddy Effect:=", false), Array("NAME:Data", "Object Name:=",  _
  "Ph3_P3_C1_2", "Eddy Effect:=", false), _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_1", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_9", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_10", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_11", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_12", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_13", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_14", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_15", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_16", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_17", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_18", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_19", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_20", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_21", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_22", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_23", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_24", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_25", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_26", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_27", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_28", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_29", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_30", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_31", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_32", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_33", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_34", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_35", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_36", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_37", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_38", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_39", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_40", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_41", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_1", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_42", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_43", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_44", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_45", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_46", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_47", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_48", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_49", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_50", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_51", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_52", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_53", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_54", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_55", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_56", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_57", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_58", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_59", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_60", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_61", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_62", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_63", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_64", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_65", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_66", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_67", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_68", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_69", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_70", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_71", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_72", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_73", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_74", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_75", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_76", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_77", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_78", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_79", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_80", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_81", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_82", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_83", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_84", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_85", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_86", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_87", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_88", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_89", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_90",  _
  "Eddy Effect:=", true)))

oModule.AddWindingCoils "phase_A_Solid", Array("hexagon_Conductor_1",  _
  "hexagon_Conductor_2", "hexagon_Conductor_3", "hexagon_Conductor_4",   _
  "hexagon_Conductor_5", "hexagon_Conductor_6", "hexagon_Conductor_7",   _
  "hexagon_Conductor_8", "hexagon_Conductor_9", "hexagon_Conductor_10",   _
  "hexagon_Conductor_11", "hexagon_Conductor_12", "hexagon_Conductor_13",   _
  "hexagon_Conductor_14", "hexagon_Conductor_15", "hexagon_Conductor_16",   _
  "hexagon_Conductor_17", "hexagon_Conductor_18", "hexagon_Conductor_19",   _
  "hexagon_Conductor_20", "hexagon_Conductor_21", "hexagon_Conductor_22",   _
  "hexagon_Conductor_23", "hexagon_Conductor_24", "hexagon_Conductor_25",   _
  "hexagon_Conductor_26", "hexagon_Conductor_27", "hexagon_Conductor_28",   _
  "hexagon_Conductor_29", "hexagon_Conductor_30", "hexagon_Conductor_31",   _
  "hexagon_Conductor_32", "hexagon_Conductor_33", "hexagon_Conductor_34",   _
  "hexagon_Conductor_35", "hexagon_Conductor_36", "hexagon_Conductor_37",   _
  "hexagon_Conductor_38", "hexagon_Conductor_39", "hexagon_Conductor_40",   _
  "hexagon_Conductor_41", "triangle_Conductor_1", "hexagon_Conductor_42",   _
  "triangle_Conductor_2", "hexagon_Conductor_43", "triangle_Conductor_3",   _
  "hexagon_Conductor_44", "hexagon_Conductor_45", "hexagon_Conductor_46",   _
  "hexagon_Conductor_47", "hexagon_Conductor_48", "hexagon_Conductor_49",   _
  "hexagon_Conductor_50", "hexagon_Conductor_51", "hexagon_Conductor_52",   _
  "hexagon_Conductor_53", "hexagon_Conductor_54", "hexagon_Conductor_55",   _
  "hexagon_Conductor_56", "hexagon_Conductor_57", "hexagon_Conductor_58",   _
  "hexagon_Conductor_59", "hexagon_Conductor_60", "hexagon_Conductor_61",   _
  "hexagon_Conductor_62", "hexagon_Conductor_63", "hexagon_Conductor_64",   _
  "hexagon_Conductor_65", "hexagon_Conductor_66", "hexagon_Conductor_67",   _
  "hexagon_Conductor_68", "hexagon_Conductor_69", "hexagon_Conductor_70",   _
  "hexagon_Conductor_71", "hexagon_Conductor_72", "hexagon_Conductor_73",   _
  "hexagon_Conductor_74", "hexagon_Conductor_75", "hexagon_Conductor_76",   _
  "hexagon_Conductor_77", "hexagon_Conductor_78", "hexagon_Conductor_79",   _
  "hexagon_Conductor_80", "hexagon_Conductor_81", "hexagon_Conductor_82",   _
  "hexagon_Conductor_83", "hexagon_Conductor_84", "hexagon_Conductor_85",   _
  "hexagon_Conductor_86", "triangle_Conductor_4", "hexagon_Conductor_87",   _
  "triangle_Conductor_5", "hexagon_Conductor_88", "triangle_Conductor_6",   _
  "hexagon_Conductor_89", "hexagon_Conductor_90")

oDesign.AnalyzeAll
Set oModule = oDesign.GetModule("ReportSetup")
oModule.ExportToFile "max_Torque", "C:/Users/John McKay/Desktop/simulation_Source/data_6/Stage_1_Orderly_CN_9354/max_Torque_9354.csv", false
oModule.ExportToFile "max_Loss", "C:/Users/John McKay/Desktop/simulation_Source/data_6/Stage_1_Orderly_CN_9354/max_Loss_9354.csv", false
oProject.Save
oDesktop.CloseProject "simulation_CN_9354"
oDesktop.QuitApplication
