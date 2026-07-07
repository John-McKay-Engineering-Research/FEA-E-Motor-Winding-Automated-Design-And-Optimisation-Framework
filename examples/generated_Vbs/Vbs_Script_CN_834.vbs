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
oProject.SaveAs "C:/Users/John McKay/Desktop/simulation_Source/exp1_Stage1_Orderly/Stage_1_Orderly_CN_834/simulation_CN_834.aedt", true
Set oDesign = oProject.SetActiveDesign("Motor-CAD a2_User_Calibration_V2Calibrated_48Conductor_SlotEdited_Thermal_Adjusted") 
oDesign.RenameDesignInstance "Motor-CAD a2_User_Calibration_V2Calibrated_48Conductor_SlotEdited_Thermal_Adjusted", "simulation_CN_834"

Set oEditor = oDesign.SetActiveEditor("3D Modeler") 

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "28.22847398094441mm", "Y:=", "142.49611972350522mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.82384278506225mm", "Y:=", "139.42264065324642mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.897321855321064mm", "Y:=", "139.01800945736426mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "31.30195305120322mm", "Y:=", "142.09148852762306mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.22847398094441mm", "Y:=", "142.49611972350522mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_1"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_1"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_1"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "25.13020878915125mm", "Y:=", "142.90401407419287mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.725577593269094mm", "Y:=", "139.83053500393407mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.799056663527903mm", "Y:=", "139.4259038080519mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.203687859410064mm", "Y:=", "142.4993828783107mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.13020878915125mm", "Y:=", "142.90401407419287mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_2"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_2"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_2"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "25.105316071226593mm", "Y:=", "142.90646754902826mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.031837000967784mm", "Y:=", "143.3110987449104mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.16394534021503mm", "Y:=", "140.03530407671053mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.105316071226593mm", "Y:=", "142.90646754902826mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "21.804825882510045mm", "Y:=", "141.7784341503874mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.238777604741976mm", "Y:=", "143.41631443619934mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.702054064985198mm", "Y:=", "143.61862792830965mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.731378802996485mm", "Y:=", "142.18306113460804mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.297427080764553mm", "Y:=", "140.5451808487961mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.834150620521328mm", "Y:=", "140.34286735668576mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.804825882510045mm", "Y:=", "141.7784341503874mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "18.70657668608951mm", "Y:=", "142.1863263952443mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.140522516465886mm", "Y:=", "143.82422372934423mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.603782981336483mm", "Y:=", "144.02653932728532mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.633097615830696mm", "Y:=", "142.59095759112645mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.199151785454326mm", "Y:=", "140.9530602570265mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.735891320583725mm", "Y:=", "140.75074465908543mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.70657668608951mm", "Y:=", "142.1863263952443mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "12.534832424037543mm", "Y:=", "142.9988519418141mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.10088659366117mm", "Y:=", "141.36095460771418mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.637626128790572mm", "Y:=", "141.15863900977308mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.608311494296359mm", "Y:=", "142.59422074593198mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.042257324672729mm", "Y:=", "144.2321180800319mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.505517789543326mm", "Y:=", "144.434433677973mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.534832424037543mm", "Y:=", "142.9988519418141mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "10.973306767373789mm", "YCenter:=", "143.20443069456078mm", "ZCenter:=", "0mm", "Radius:=", "0.9123020075785085mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_1"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_1"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_1"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_1:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "6.54061879034726mm", "Y:=", "145.35137867706192mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.1359879437670735mm", "Y:=", "142.27790226001497mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.209464360814007mm", "Y:=", "141.8732714134348mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.614095207394193mm", "Y:=", "144.9467478304817mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.54061879034726mm", "Y:=", "145.35137867706192mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_3"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_3"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_3"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "29.155003567445075mm", "YCenter:=", "137.65879939864158mm", "ZCenter:=", "0mm", "Radius:=", "1.3725485190455582mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_2"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_2"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_2"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_2:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "24.72253000584272mm", "Y:=", "139.80546794952167mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.31796417545947mm", "Y:=", "136.73248537952003mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.390946745461118mm", "Y:=", "136.32791954913677mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.79551257584437mm", "Y:=", "139.40090211913844mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.72253000584272mm", "Y:=", "139.80546794952167mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_4"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_4"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_4"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "21.624053896422154mm", "Y:=", "140.21363717341296mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.219424110462697mm", "Y:=", "137.14016881258027mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.292892471295367mm", "Y:=", "136.7355390266208mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.69752225725483mm", "Y:=", "139.8090073874535mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.624053896422154mm", "Y:=", "140.21363717341296mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_5"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_5"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_5"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "18.526659800132144mm", "Y:=", "140.6213533805893mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.12204643924668mm", "Y:=", "137.54800978057997mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.397696719698736mm", "Y:=", "138.68006821969917mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.526659800132144mm", "Y:=", "140.6213533805893mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "18.500891336952613mm", "Y:=", "140.62399105861044mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.427412266693802mm", "Y:=", "141.02862225449257mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.559520605941053mm", "Y:=", "137.7528275862927mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.500891336952613mm", "Y:=", "140.62399105861044mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "13.86599320642036mm", "Y:=", "141.2350106872093mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.228095872320417mm", "Y:=", "140.66895651758568mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.025780274379336mm", "Y:=", "139.13221698245627mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.461362010538199mm", "Y:=", "138.16153161695047mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.09925934463815mm", "Y:=", "138.7275857865741mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.301574942579226mm", "Y:=", "140.2643253217035mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.86599320642036mm", "Y:=", "141.2350106872093mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "9.230988479497807mm", "Y:=", "141.84522063583802mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.826357283615646mm", "Y:=", "138.7717415655792mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.899836353874452mm", "Y:=", "138.36711036969706mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.304467549756612mm", "Y:=", "141.44058943995586mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.230988479497807mm", "Y:=", "141.84522063583802mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_6"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_6"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_6"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "9.003878019744757mm", "Y:=", "140.3117454061935mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.437827069580557mm", "Y:=", "141.9496334246761mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.901096274728786mm", "Y:=", "142.1519478719378mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.930416430041198mm", "Y:=", "140.7163743007169mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.496467380205388mm", "Y:=", "139.07848628223425mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.033198175057159mm", "Y:=", "138.87617183497255mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.003878019744757mm", "Y:=", "140.3117454061935mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "27.62511696118278mm", "Y:=", "136.0227429824446mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.284900441161213mm", "Y:=", "133.43854195127378mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.86910147233205mm", "Y:=", "133.09832543125222mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.209317992353615mm", "Y:=", "135.68252646242306mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.62511696118278mm", "Y:=", "136.0227429824446mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_7"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_7"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_7"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "26.982458282182463mm", "Y:=", "133.2294800208559mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.387089478064624mm", "Y:=", "136.3029590911147mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.11129480986473mm", "Y:=", "135.17085075186748mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.982458282182463mm", "Y:=", "133.2294800208559mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "22.55057883317109mm", "YCenter:=", "135.37632290822367mm", "ZCenter:=", "0mm", "Radius:=", "1.3725356675529392mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_3"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_3"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_3"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_3:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "18.11788970418961mm", "Y:=", "137.52327239198186mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.71325850830745mm", "Y:=", "134.44979332172306mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.786737578566267mm", "Y:=", "134.0451621258409mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.191368774448428mm", "Y:=", "137.1186411960997mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.11788970418961mm", "Y:=", "137.52327239198186mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_8"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_8"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_8"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "16.35404844958478mm", "YCenter:=", "136.19211160959907mm", "ZCenter:=", "0mm", "Radius:=", "1.3724619301696377mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_4"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_4"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_4"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_4:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "13.255783257791618mm", "YCenter:=", "136.60000596028672mm", "ZCenter:=", "0mm", "Radius:=", "1.3725485190455582mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_5"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_5"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_5"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_5:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "11.491132323216675mm", "Y:=", "135.2689517742942mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.895763519098832mm", "Y:=", "138.342430844553mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.619968850898942mm", "Y:=", "137.21032250530575mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.491132323216675mm", "Y:=", "135.2689517742942mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "7.0592528742053045mm", "YCenter:=", "137.41579466166195mm", "ZCenter:=", "0mm", "Radius:=", "1.3725485190455577mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_6"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_6"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_6"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_6:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "28.33921486606974mm", "YCenter:=", "131.46226901505523mm", "ZCenter:=", "0mm", "Radius:=", "1.372548519045558mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_7"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_7"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_7"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_7:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "24.133547816402068mm", "Y:=", "132.36947236156152mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.834850412330937mm", "Y:=", "130.7252914350989mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.128380040829107mm", "Y:=", "132.24868449425907mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.133547816402068mm", "Y:=", "132.36947236156152mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "20.808260545295113mm", "Y:=", "134.01711284950105mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.403629349412952mm", "Y:=", "130.94363377924225mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.477108419671765mm", "Y:=", "130.5390025833601mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.881739615553926mm", "Y:=", "133.6124816536189mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.808260545295113mm", "Y:=", "134.01711284950105mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_9"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_9"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_9"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "19.04441929069029mm", "YCenter:=", "132.68595206711828mm", "ZCenter:=", "0mm", "Radius:=", "1.2935162898037407mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_8"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_8"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_8"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_8:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "15.460051453610266mm", "Y:=", "134.34063523041416mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.699365286288863mm", "Y:=", "132.60774377251906mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.43225674418398mm", "Y:=", "131.84705760519765mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.192942911505384mm", "Y:=", "133.57994906309276mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.460051453610266mm", "Y:=", "134.34063523041416mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_10"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_10"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_10"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "14.18150316432217mm", "Y:=", "131.7627922318134mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.58613436020433mm", "Y:=", "134.8362713020722mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.310339692004433mm", "Y:=", "133.70416296282494mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.18150316432217mm", "Y:=", "131.7627922318134mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_7"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_7"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_7"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "8.415199778122485mm", "Y:=", "135.6486902522517mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.010568582240325mm", "Y:=", "132.57521118199287mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.08404765249913mm", "Y:=", "132.17057998611074mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.48867884838129mm", "Y:=", "135.24405905636954mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.415199778122485mm", "Y:=", "135.6486902522517mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_11"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_11"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_11"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "8.39030706019782mm", "Y:=", "135.65114372708706mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.316827989939014mm", "Y:=", "136.05577492296922mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.448936329186257mm", "Y:=", "132.77998025476933mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.39030706019782mm", "Y:=", "135.65114372708706mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_8"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_8"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_8"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "26.663704231295032mm", "Y:=", "130.02542463538424mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.27688986065091mm", "Y:=", "127.08727778870296mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.40844389265426mm", "Y:=", "128.1695368413995mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.663704231295032mm", "Y:=", "130.02542463538424mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_9"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_9"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_9"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "24.833055323588933mm", "YCenter:=", "128.77189817394972mm", "ZCenter:=", "0mm", "Radius:=", "1.3725485190455577mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_9"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_9"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_9"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_9:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "21.117346772583986mm", "Y:=", "130.77402392586663mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.903218554246994mm", "Y:=", "129.1475586307829mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.52968384933073mm", "Y:=", "128.9334304124459mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.743812067667726mm", "Y:=", "130.55989570752962mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.117346772583986mm", "Y:=", "130.77402392586663mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_12"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_12"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_12"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "19.37750398630517mm", "Y:=", "130.27624709632292mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.9479647190048mm", "Y:=", "130.32866592162765mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.89554589370007mm", "Y:=", "128.89912665432726mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.325085161000445mm", "Y:=", "128.84670782902253mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.37750398630517mm", "Y:=", "130.27624709632292mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_13"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_13"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_13"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "17.277208284889632mm", "Y:=", "131.32919548323093mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.203729214630819mm", "Y:=", "131.7338266791131mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.33583755387807mm", "Y:=", "128.4580320109132mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.277208284889632mm", "Y:=", "131.32919548323093mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_10"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_10"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_10"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "13.77360881363451mm", "Y:=", "128.6645270400202mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.178240009516667mm", "Y:=", "131.73800611027903mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.902445341316774mm", "Y:=", "130.60589777103178mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.77360881363451mm", "Y:=", "128.6645270400202mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_11"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_11"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_11"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "9.34172936462315mm", "YCenter:=", "130.811369927388mm", "ZCenter:=", "0mm", "Radius:=", "1.3725485190455589mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_10"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_10"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_10"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_10:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "4.909044165980259mm", "Y:=", "132.9583142890292mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "4.504414161876486mm", "Y:=", "129.884844271226mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.577884179679707mm", "Y:=", "129.48021426712222mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.982514183783479mm", "Y:=", "132.55368428492545mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "4.909044165980259mm", "Y:=", "132.9583142890292mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_14"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_14"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_14"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "27.622053856609877mm", "Y:=", "126.76569749036722mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.42163088845599mm", "Y:=", "125.24333390572774mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.943994473095476mm", "Y:=", "125.04291093757385mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.144417441249363mm", "Y:=", "126.56527452221333mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.622053856609877mm", "Y:=", "126.76569749036722mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_15"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_15"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_15"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "24.459065151330435mm", "YCenter:=", "125.93116078489845mm", "ZCenter:=", "0mm", "Radius:=", "1.0982601940298413mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_11"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_11"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_11"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_11:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "20.4908388299634mm", "Y:=", "127.704539759458mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.219148560857363mm", "Y:=", "125.64084728050841mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.282841039806954mm", "Y:=", "125.36915701140238mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.55453130891299mm", "Y:=", "127.43284949035197mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.4908388299634mm", "Y:=", "127.704539759458mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_16"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_16"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_16"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "18.870864069508787mm", "Y:=", "126.14392085403173mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.336791242495572mm", "Y:=", "127.716864629083mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.7638474674443mm", "Y:=", "128.1827918020698mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.29792029445752mm", "Y:=", "126.60984802701853mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.870864069508787mm", "Y:=", "126.14392085403173mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_17"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_17"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_17"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "16.839495578602737mm", "Y:=", "128.2055464556181mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.818067363566051mm", "Y:=", "128.60332502640873mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.931002900293787mm", "Y:=", "125.38300752597672mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.839495578602737mm", "Y:=", "128.2055464556181mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_12"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_12"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_12"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "11.390057609787508mm", "Y:=", "128.1494866607774mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.662767900862633mm", "Y:=", "127.36038999352633mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.40312935109353mm", "Y:=", "127.26291955948601mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.8707805102493mm", "Y:=", "127.95454579269675mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.598070219174176mm", "Y:=", "128.7436424599478mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.85770876894328mm", "Y:=", "128.8411128939881mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.390057609787508mm", "Y:=", "128.1494866607774mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "8.822300382683451mm", "Y:=", "126.86591510155097mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.066309825631297mm", "Y:=", "127.29584237328608mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.219971785422356mm", "Y:=", "128.4630208363384mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.129624302265562mm", "Y:=", "129.20027202765561mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.885614859317716mm", "Y:=", "128.77034475592052mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.731952899526657mm", "Y:=", "127.60316629286818mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.822300382683451mm", "Y:=", "126.86591510155097mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "5.608649252944904mm", "Y:=", "129.60974831296335mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "4.466615189309124mm", "Y:=", "129.21506353625938mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "4.325549385217979mm", "Y:=", "128.14356237466916mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.32651764476261mm", "Y:=", "127.46674598978291mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.468551708398394mm", "Y:=", "127.86143076648688mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.609617512489539mm", "Y:=", "128.9329319280771mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.608649252944904mm", "Y:=", "129.60974831296335mm", "Z:=", "0mm")),  _
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


' ************************************
' ***Second Coil begins here***
' ************************************
oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "46.80148388705917mm", "Y:=", "137.5194968514371mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.61516524722726mm", "Y:=", "134.65547030044507mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.751138696235216mm", "Y:=", "135.84178894027698mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.937457336067126mm", "Y:=", "138.70581549126902mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.80148388705917mm", "Y:=", "137.5194968514371mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_18"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_18"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_18"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "49.688607426365664mm", "Y:=", "136.32361112580008mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.502288786533754mm", "Y:=", "133.45958457480805mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.63826223554172mm", "Y:=", "134.64590321463996mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.82458087537363mm", "Y:=", "137.509929765632mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.688607426365664mm", "Y:=", "136.32361112580008mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_19"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_19"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_19"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "49.71139188987715mm", "Y:=", "136.31328953837675mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.575418440869186mm", "Y:=", "135.12697089854484mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.95708652554126mm", "Y:=", "132.85610366746877mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.71139188987715mm", "Y:=", "136.31328953837675mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_13"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_13"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_13"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "52.00568353938506mm", "Y:=", "133.68613886487861mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.31483587040844mm", "Y:=", "134.82156066209393mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.74683424059004mm", "Y:=", "134.22840751616135mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.869680279748266mm", "Y:=", "132.49983257301346mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.56052794872488mm", "Y:=", "131.36441077579815mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.12852957854329mm", "Y:=", "131.95756392173072mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.00568353938506mm", "Y:=", "133.68613886487861mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "54.89279217337714mm", "Y:=", "132.49025931322495mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.2019581310411mm", "Y:=", "133.62569292876302mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.63397140653712mm", "Y:=", "133.03253360884705mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.75681872436918mm", "Y:=", "131.30394067339304mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.44765276670521mm", "Y:=", "130.168507057855mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.01563949120919mm", "Y:=", "130.76166637777098mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.89279217337714mm", "Y:=", "132.49025931322495mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "60.64394226367567mm", "Y:=", "130.10805494775607mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.334776306011705mm", "Y:=", "128.972621332218mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.902763030515686mm", "Y:=", "129.56578065213398mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.77991571268363mm", "Y:=", "131.29437358758798mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.089081670347596mm", "Y:=", "132.42980720312602mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.521094945843615mm", "Y:=", "131.83664788321005mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.64394226367567mm", "Y:=", "130.10805494775607mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "62.09905252748619mm", "YCenter:=", "129.50532854203504mm", "ZCenter:=", "0mm", "Radius:=", "0.9123020075785078mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_12"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_12"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_12"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_12:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "67.0113469139539mm", "Y:=", "129.1482960478289mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "65.82502929822354mm", "Y:=", "126.28427196923673mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.961005219631375mm", "Y:=", "127.47058958496709mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "64.14732283536173mm", "Y:=", "130.33461366355925mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "67.0113469139539mm", "Y:=", "129.1482960478289mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_20"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_20"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_20"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "43.580425566010184mm", "YCenter:=", "133.79351935655058mm", "ZCenter:=", "0mm", "Radius:=", "1.3725485190455575mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_13"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_13"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_13"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_13:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "48.49239454746311mm", "Y:=", "133.436352075174mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.306267549577115mm", "Y:=", "130.57278818876713mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.44270366317025mm", "Y:=", "131.75891518665313mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.62883066105624mm", "Y:=", "134.62247907306mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.49239454746311mm", "Y:=", "133.436352075174mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_21"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_21"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_21"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "51.379838183394824mm", "Y:=", "132.24059893790047mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.193523677247114mm", "Y:=", "129.3765823665049mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.32950710585151mm", "Y:=", "130.5628968726526mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.51582161199923mm", "Y:=", "133.42691344404818mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.379838183394824mm", "Y:=", "132.24059893790047mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_22"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_22"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_22"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "54.26611826011077mm", "Y:=", "131.04499448320857mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.07985190984337mm", "Y:=", "128.1810941703924mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.809084772160894mm", "Y:=", "130.7993106770679mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.26611826011077mm", "Y:=", "131.04499448320857mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_14"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_14"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_14"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "54.28975324285312mm", "Y:=", "131.03439454779624mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.15377979384516mm", "Y:=", "129.84807590796433mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.53544787851723mm", "Y:=", "127.57720867688826mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.28975324285312mm", "Y:=", "131.03439454779624mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_15"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_15"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_15"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "58.60920258245861mm", "Y:=", "129.24610400386155mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.74463619799665mm", "Y:=", "127.93693804619758mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.15147687808069mm", "Y:=", "126.50492477070156mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.4228839426267mm", "Y:=", "126.3820774528695mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.287450327088656mm", "Y:=", "127.69124341053347mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.880609647004604mm", "Y:=", "129.1232566860295mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.60920258245861mm", "Y:=", "129.24610400386155mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "62.92833939726111mm", "Y:=", "127.45705895830858mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.7420207574292mm", "Y:=", "124.59303240731654mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.877994206437165mm", "Y:=", "125.77935104714845mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.064312846269075mm", "Y:=", "128.6433775981405mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.92833939726111mm", "Y:=", "127.45705895830858mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_23"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_23"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_23"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "62.35828521030176mm", "Y:=", "126.01547522338623mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.66744372202342mm", "Y:=", "127.15090238109273mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "65.09944885287729mm", "Y:=", "126.55774643479802mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "65.2222954720095mm", "Y:=", "124.82916333079679mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.91313696028785mm", "Y:=", "123.69373617309029mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.48113182943399mm", "Y:=", "124.286892119385mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.35828521030176mm", "Y:=", "126.01547522338623mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "44.08731802422521mm", "Y:=", "131.6117096350568mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.0898536581859mm", "Y:=", "129.203617633392mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "40.68176165652115mm", "Y:=", "130.20108199943135mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.67922602256046mm", "Y:=", "132.6091740010961mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.08731802422521mm", "Y:=", "131.6117096350568mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_24"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_24"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_24"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "43.24724528588597mm", "Y:=", "128.87134361122403mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.43356392571788mm", "Y:=", "131.73537016221607mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.70443115679396mm", "Y:=", "129.11703824688814mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.24724528588597mm", "Y:=", "128.87134361122403mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_16"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_16"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_16"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "48.158786918986166mm", "YCenter:=", "128.51462436597006mm", "ZCenter:=", "0mm", "Radius:=", "1.3725356675529377mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_14"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_14"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_14"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_14:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "53.07108305370463mm", "Y:=", "128.15759259591312mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.88476441387272mm", "Y:=", "125.29356604492106mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.02073786288068mm", "Y:=", "126.47988468475297mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.20705650271259mm", "Y:=", "129.34391123574503mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.07108305370463mm", "Y:=", "128.15759259591312mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_25"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_25"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_25"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "53.93303399759912mm", "YCenter:=", "126.12285291469605mm", "ZCenter:=", "0mm", "Radius:=", "1.3724619301696368mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_15"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_15"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_15"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_15:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "56.82015753690565mm", "YCenter:=", "124.92696718905898mm", "ZCenter:=", "0mm", "Radius:=", "1.372548519045558mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_16"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_16"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_16"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_16:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "57.68286298241843mm", "Y:=", "122.891914983039mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.86918162225034mm", "Y:=", "125.75594153403102mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.14004885332643mm", "Y:=", "123.1376096187031mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.68286298241843mm", "Y:=", "122.891914983039mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_17"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_17"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_17"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "62.59440461551865mm", "YCenter:=", "122.535195737785mm", "ZCenter:=", "0mm", "Radius:=", "1.3725485190455589mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_17"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_17"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_17"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_17:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "41.188654114736146mm", "YCenter:=", "128.01927227793752mm", "ZCenter:=", "0mm", "Radius:=", "1.3725485190455582mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_18"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_18"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_18"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_18:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "45.28447029309056mm", "Y:=", "126.70209989829127mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.8550339662322mm", "Y:=", "125.62884874527177mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.496500976641876mm", "Y:=", "127.59491064863988mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.28447029309056mm", "Y:=", "126.70209989829127mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_18"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_18"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_18"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "48.98807378876113mm", "Y:=", "126.46635478224363mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.80175514892922mm", "Y:=", "123.60232823125158mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.93772859793718mm", "Y:=", "124.7886468710835mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.12404723776909mm", "Y:=", "127.65267342207554mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.98807378876113mm", "Y:=", "126.46635478224363mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_26"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_26"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_26"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "49.85002473265566mm", "YCenter:=", "124.4316151010266mm", "ZCenter:=", "0mm", "Radius:=", "1.2935162898037407mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_19"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_19"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_19"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_19:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "53.781519917785474mm", "Y:=", "124.07242883780138mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.573847734373985mm", "Y:=", "122.19135772956622mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.69277662613881mm", "Y:=", "122.39902991297771mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.900448809550305mm", "Y:=", "124.28010102121287mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.781519917785474mm", "Y:=", "124.07242883780138mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_27"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_27"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_27"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "53.599853717474936mm", "Y:=", "121.20067716936951mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.786172357306846mm", "Y:=", "124.06470372036155mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.057039588382935mm", "Y:=", "121.44637180503362mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.599853717474936mm", "Y:=", "121.20067716936951mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_19"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_19"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_19"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "60.5365679459871mm", "Y:=", "121.68281187969559mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.35024930615519mm", "Y:=", "118.81878532870356mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.486222755163155mm", "Y:=", "120.00510396853547mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.672541394995065mm", "Y:=", "122.8691305195275mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.5365679459871mm", "Y:=", "121.68281187969559mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_28"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_28"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_28"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "60.55935240949859mm", "Y:=", "121.67249029227223mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.42337896049062mm", "Y:=", "120.48617165244032mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.805047045162695mm", "Y:=", "118.21530442136424mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.55935240949859mm", "Y:=", "121.67249029227223mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_20"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_20"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_20"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "41.921266699289966mm", "Y:=", "125.9371732265981mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "40.78718434795388mm", "Y:=", "123.19925623180296mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "38.61630852882679mm", "Y:=", "125.70229708053662mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.921266699289966mm", "Y:=", "125.9371732265981mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_21"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_21"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_21"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "42.87989192840564mm", "YCenter:=", "123.93626301299412mm", "ZCenter:=", "0mm", "Radius:=", "1.372548519045557mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_20"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_20"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_20"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_20:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "47.098852802615085mm", "Y:=", "123.81230050095898mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.47106063208468mm", "Y:=", "122.29667612776464mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.955436258890344mm", "Y:=", "122.92446829829505mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.58322842942074mm", "Y:=", "124.44009267148938mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.098852802615085mm", "Y:=", "123.81230050095898mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_29"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_29"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_29"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "48.35671243957884mm", "Y:=", "122.51129172823896mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.62093917353755mm", "Y:=", "121.84191812915986mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.95156557445844mm", "Y:=", "120.57769139520116mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.687338840499734mm", "Y:=", "121.24706499428027mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.35671243957884mm", "Y:=", "122.51129172823896mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_30"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_30"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_30"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "50.7020960659421mm", "Y:=", "122.37302392987675mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.566122616934145mm", "Y:=", "121.18670529004484mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.94779070160621mm", "Y:=", "118.91583805896876mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.7020960659421mm", "Y:=", "122.37302392987675mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_22"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_22"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_22"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "52.40396799183793mm", "Y:=", "118.31355363006301mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.59028663166984mm", "Y:=", "121.17758018105506mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.86115386274592mm", "Y:=", "118.55924826572712mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.40396799183793mm", "Y:=", "118.31355363006301mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_23"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_23"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_23"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "57.315509624938144mm", "YCenter:=", "117.95683438480904mm", "ZCenter:=", "0mm", "Radius:=", "1.372548519045558mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_21"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_21"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_21"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_21:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "62.22779979482503mm", "Y:=", "117.59980014403796mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.04148464911055mm", "Y:=", "114.73578202859161mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.177466533664216mm", "Y:=", "115.9220971743061mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.36378167937869mm", "Y:=", "118.78611528975243mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.22779979482503mm", "Y:=", "117.59980014403796mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_31"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_31"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_31"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "39.46144800596056mm", "Y:=", "123.59334152183573mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "38.873837595811565mm", "Y:=", "122.17472449956209mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "37.45522057353793mm", "Y:=", "122.76233490971109mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "38.042830983686926mm", "Y:=", "124.18095193198472mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "39.46144800596056mm", "Y:=", "123.59334152183573mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_32"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_32"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_32"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "41.78340822428361mm", "YCenter:=", "121.28911718227477mm", "ZCenter:=", "0mm", "Radius:=", "1.098260194029841mm", "WhichAxis:=",  _
  "Z", "NumSegments:=", "0"), Array("NAME:Attributes", "Name:=", "Circle1", "Flags:=",  _
  "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "Circle1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "circle_Conductor_22"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_22"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "circle_Conductor_22"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers", _
  "circle_Conductor_22:CreateCircle:1"), Array("NAME:ChangedProps", Array("NAME:Number of Segments", "Value := ", _
  "12"))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "46.106682513911544mm", "Y:=", "120.84079526485155mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.310126949779246mm", "Y:=", "118.91774001779028mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.387071702717975mm", "Y:=", "119.71429558192258mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.18362726685027mm", "Y:=", "121.63735082898384mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.106682513911544mm", "Y:=", "120.84079526485155mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_33"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_33"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_33"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "46.72931235761898mm", "Y:=", "118.6792722670075mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.11227947674618mm", "Y:=", "120.27444512148674mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.70745233122541mm", "Y:=", "119.89147800235953mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.32448521209821mm", "Y:=", "118.2963051478803mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.72931235761898mm", "Y:=", "118.6792722670075mm", "Z:=", "0mm")),  _
  Array("NAME:PolylineSegments",  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 0, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 1, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 2, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 3, "NoOfPoints:=", 2),  _
  Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=", 4, "NoOfPoints:=", 2)),  _
  Array("NAME:PolylineXSection", "XSectionType:=", "None", "XSectionOrient:=",  _
  "0mm", "XSectionNumSegments:=", "0", "XSectionBendType:=", "Corner")), Array("NAME:Attributes", "Name:=",  _
  "Polyline1", "Flags:=", "", "Color:=", "(143 175 143)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "UDMId:=", "", "MaterialValue:=", "" & Chr(34) & "vacuum" & Chr(34) & "", "SurfaceMaterialValue:=",  _
  "" & Chr(34) & "" & Chr(34) & "", "SolveInside:=", true, "ShellElement:=",  _
  false, "ShellElementThickness:=", "0mm", "IsMaterialEditable:=", true, "UseMaterialAppearance:=",  _
  false, "IsLightweight:=", false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array _
("NAME:Geometry3DAttributeTab",Array("NAME:PropServers", _
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_34"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_34"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_34"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "49.51934187584972mm", "Y:=", "119.4490081661076mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.3348647513814mm", "Y:=", "118.2827804064664mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.76087555397435mm", "Y:=", "116.0503714107553mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.51934187584972mm", "Y:=", "119.4490081661076mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "triangle_Conductor_24"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_24"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "triangle_Conductor_24"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "54.21066369625484mm", "Y:=", "116.67573997605578mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.57994132278028mm", "Y:=", "116.12871736160221mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.890034281827596mm", "Y:=", "116.41448621460043mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.830849614349475mm", "Y:=", "117.24727768205221mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.46157198782404mm", "Y:=", "117.79430029650578mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.15147902877672mm", "Y:=", "117.50853144350756mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.21066369625484mm", "Y:=", "116.67573997605578mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "55.79262090648293mm", "Y:=", "114.28025578491459mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.93024076203638mm", "Y:=", "115.27458844534033mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.38075483259835mm", "Y:=", "116.36222562506786mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.69364904760688mm", "Y:=", "116.45553014436967mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.55602919205343mm", "Y:=", "115.46119748394392mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.105515121491464mm", "Y:=", "114.37356030421638mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.79262090648293mm", "Y:=", "114.28025578491459mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "59.947641029308976mm", "Y:=", "115.04965948560104mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.73932915221208mm", "Y:=", "114.13683541080871mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.32574514153945mm", "Y:=", "113.13835528256931mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.120473007963724mm", "Y:=", "113.05269922912221mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.32878488506063mm", "Y:=", "113.96552330391455mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.74236889573325mm", "Y:=", "114.96400343215396mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.947641029308976mm", "Y:=", "115.04965948560104mm", "Z:=", "0mm")),  _
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


Set oModule = oDesign.GetModule("BoundarySetup")

oModule.AssignCoil Array("NAME:square_Conductor_1", "Objects:=", Array("square_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_2", "Objects:=", Array("square_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_1", "Objects:=", Array("triangle_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_1", "Objects:=", Array("hexagon_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_2", "Objects:=", Array("hexagon_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_3", "Objects:=", Array("hexagon_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_1", "Objects:=", Array("circle_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_3", "Objects:=", Array("square_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_2", "Objects:=", Array("circle_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_4", "Objects:=", Array("square_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_5", "Objects:=", Array("square_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_2", "Objects:=", Array("triangle_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_3", "Objects:=", Array("triangle_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_4", "Objects:=", Array("hexagon_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_6", "Objects:=", Array("square_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_5", "Objects:=", Array("hexagon_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_7", "Objects:=", Array("square_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_4", "Objects:=", Array("triangle_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_3", "Objects:=", Array("circle_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_8", "Objects:=", Array("square_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_4", "Objects:=", Array("circle_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_5", "Objects:=", Array("circle_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_5", "Objects:=", Array("triangle_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_6", "Objects:=", Array("circle_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_7", "Objects:=", Array("circle_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_6", "Objects:=", Array("triangle_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_9", "Objects:=", Array("square_Conductor_9"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_8", "Objects:=", Array("circle_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_10", "Objects:=", Array("square_Conductor_10"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_7", "Objects:=", Array("triangle_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_11", "Objects:=", Array("square_Conductor_11"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_8", "Objects:=", Array("triangle_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_9", "Objects:=", Array("triangle_Conductor_9"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_9", "Objects:=", Array("circle_Conductor_9"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_12", "Objects:=", Array("square_Conductor_12"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_13", "Objects:=", Array("square_Conductor_13"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_10", "Objects:=", Array("triangle_Conductor_10"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_11", "Objects:=", Array("triangle_Conductor_11"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_10", "Objects:=", Array("circle_Conductor_10"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_14", "Objects:=", Array("square_Conductor_14"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_15", "Objects:=", Array("square_Conductor_15"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_11", "Objects:=", Array("circle_Conductor_11"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_16", "Objects:=", Array("square_Conductor_16"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_17", "Objects:=", Array("square_Conductor_17"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_12", "Objects:=", Array("triangle_Conductor_12"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_6", "Objects:=", Array("hexagon_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_7", "Objects:=", Array("hexagon_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_8", "Objects:=", Array("hexagon_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_18", "Objects:=", Array("square_Conductor_18"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_19", "Objects:=", Array("square_Conductor_19"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_13", "Objects:=", Array("triangle_Conductor_13"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_9", "Objects:=", Array("hexagon_Conductor_9"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_10", "Objects:=", Array("hexagon_Conductor_10"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_11", "Objects:=", Array("hexagon_Conductor_11"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_12", "Objects:=", Array("circle_Conductor_12"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_20", "Objects:=", Array("square_Conductor_20"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_13", "Objects:=", Array("circle_Conductor_13"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_21", "Objects:=", Array("square_Conductor_21"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_22", "Objects:=", Array("square_Conductor_22"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_14", "Objects:=", Array("triangle_Conductor_14"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_15", "Objects:=", Array("triangle_Conductor_15"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_12", "Objects:=", Array("hexagon_Conductor_12"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_23", "Objects:=", Array("square_Conductor_23"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_13", "Objects:=", Array("hexagon_Conductor_13"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_24", "Objects:=", Array("square_Conductor_24"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_16", "Objects:=", Array("triangle_Conductor_16"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_14", "Objects:=", Array("circle_Conductor_14"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_25", "Objects:=", Array("square_Conductor_25"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_15", "Objects:=", Array("circle_Conductor_15"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_16", "Objects:=", Array("circle_Conductor_16"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_17", "Objects:=", Array("triangle_Conductor_17"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_17", "Objects:=", Array("circle_Conductor_17"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_18", "Objects:=", Array("circle_Conductor_18"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_18", "Objects:=", Array("triangle_Conductor_18"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_26", "Objects:=", Array("square_Conductor_26"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_19", "Objects:=", Array("circle_Conductor_19"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_27", "Objects:=", Array("square_Conductor_27"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_19", "Objects:=", Array("triangle_Conductor_19"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_28", "Objects:=", Array("square_Conductor_28"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_20", "Objects:=", Array("triangle_Conductor_20"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_21", "Objects:=", Array("triangle_Conductor_21"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_20", "Objects:=", Array("circle_Conductor_20"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_29", "Objects:=", Array("square_Conductor_29"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_30", "Objects:=", Array("square_Conductor_30"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_22", "Objects:=", Array("triangle_Conductor_22"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_23", "Objects:=", Array("triangle_Conductor_23"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_21", "Objects:=", Array("circle_Conductor_21"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_31", "Objects:=", Array("square_Conductor_31"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_32", "Objects:=", Array("square_Conductor_32"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_22", "Objects:=", Array("circle_Conductor_22"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_33", "Objects:=", Array("square_Conductor_33"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_34", "Objects:=", Array("square_Conductor_34"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_24", "Objects:=", Array("triangle_Conductor_24"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_14", "Objects:=", Array("hexagon_Conductor_14"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_15", "Objects:=", Array("hexagon_Conductor_15"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_16", "Objects:=", Array("hexagon_Conductor_16"), "Conductor number:=",  _
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
  Array("NAME:Data", "Object Name:=", "square_Conductor_1", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_1", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_1", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_1", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_9", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_10", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_11", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_9", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_9", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_12", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_13", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_10", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_11", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_10", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_14", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_15", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_11", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_16", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_17", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_12", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_18", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_19", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_13", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_9", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_10", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_11", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_12", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_20", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_13", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_21", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_22", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_14", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_15", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_12", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_23", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_13", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_24", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_16", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_14", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_25", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_15", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_16", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_17", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_17", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_18", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_18", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_26", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_19", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_27", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_19", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_28", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_20", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_21", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_20", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_29", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_30", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_22", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_23", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_21", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_31", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_32", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_22", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_33", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_34", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_24", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_14", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_15", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_16",  _
  "Eddy Effect:=", true)))

oModule.AddWindingCoils "phase_A_Solid", Array("square_Conductor_1",  _
  "square_Conductor_2", "triangle_Conductor_1", "hexagon_Conductor_1",   _
  "hexagon_Conductor_2", "hexagon_Conductor_3", "circle_Conductor_1",   _
  "square_Conductor_3", "circle_Conductor_2", "square_Conductor_4",   _
  "square_Conductor_5", "triangle_Conductor_2", "triangle_Conductor_3",   _
  "hexagon_Conductor_4", "square_Conductor_6", "hexagon_Conductor_5",   _
  "square_Conductor_7", "triangle_Conductor_4", "circle_Conductor_3",   _
  "square_Conductor_8", "circle_Conductor_4", "circle_Conductor_5",   _
  "triangle_Conductor_5", "circle_Conductor_6", "circle_Conductor_7",   _
  "triangle_Conductor_6", "square_Conductor_9", "circle_Conductor_8",   _
  "square_Conductor_10", "triangle_Conductor_7", "square_Conductor_11",   _
  "triangle_Conductor_8", "triangle_Conductor_9", "circle_Conductor_9",   _
  "square_Conductor_12", "square_Conductor_13", "triangle_Conductor_10",   _
  "triangle_Conductor_11", "circle_Conductor_10", "square_Conductor_14",   _
  "square_Conductor_15", "circle_Conductor_11", "square_Conductor_16",   _
  "square_Conductor_17", "triangle_Conductor_12", "hexagon_Conductor_6",   _
  "hexagon_Conductor_7", "hexagon_Conductor_8", "square_Conductor_18",   _
  "square_Conductor_19", "triangle_Conductor_13", "hexagon_Conductor_9",   _
  "hexagon_Conductor_10", "hexagon_Conductor_11", "circle_Conductor_12",   _
  "square_Conductor_20", "circle_Conductor_13", "square_Conductor_21",   _
  "square_Conductor_22", "triangle_Conductor_14", "triangle_Conductor_15",   _
  "hexagon_Conductor_12", "square_Conductor_23", "hexagon_Conductor_13",   _
  "square_Conductor_24", "triangle_Conductor_16", "circle_Conductor_14",   _
  "square_Conductor_25", "circle_Conductor_15", "circle_Conductor_16",   _
  "triangle_Conductor_17", "circle_Conductor_17", "circle_Conductor_18",   _
  "triangle_Conductor_18", "square_Conductor_26", "circle_Conductor_19",   _
  "square_Conductor_27", "triangle_Conductor_19", "square_Conductor_28",   _
  "triangle_Conductor_20", "triangle_Conductor_21", "circle_Conductor_20",   _
  "square_Conductor_29", "square_Conductor_30", "triangle_Conductor_22",   _
  "triangle_Conductor_23", "circle_Conductor_21", "square_Conductor_31",   _
  "square_Conductor_32", "circle_Conductor_22", "square_Conductor_33",   _
  "square_Conductor_34", "triangle_Conductor_24", "hexagon_Conductor_14",   _
  "hexagon_Conductor_15", "hexagon_Conductor_16")

oDesign.AnalyzeAll
Set oModule = oDesign.GetModule("ReportSetup")
oModule.ExportToFile "max_Torque", "C:/Users/John McKay/Desktop/simulation_Source/exp1_Stage1_Orderly/Stage_1_Orderly_CN_834/max_Torque_834.csv", false
oModule.ExportToFile "max_Loss", "C:/Users/John McKay/Desktop/simulation_Source/exp1_Stage1_Orderly/Stage_1_Orderly_CN_834/max_Loss_834.csv", false
oProject.Save
oDesktop.CloseProject "simulation_CN_834"
oDesktop.QuitApplication
