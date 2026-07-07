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
oProject.SaveAs "C:/Users/John McKay/Desktop/simulation_Source/data_2/Stage_1_Orderly_CN_2933/simulation_CN_2933.aedt", true
Set oDesign = oProject.SetActiveDesign("Motor-CAD a2_User_Calibration_V2Calibrated_48Conductor_SlotEdited_Thermal_Adjusted") 
oDesign.RenameDesignInstance "Motor-CAD a2_User_Calibration_V2Calibrated_48Conductor_SlotEdited_Thermal_Adjusted", "simulation_CN_2933"

Set oEditor = oDesign.SetActiveEditor("3D Modeler") 

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "29.504300523463634mm", "Y:=", "139.71401205690302mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.45223856689546mm", "Y:=", "142.758189745969mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.596071633015423mm", "Y:=", "143.13421125634082mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.79196665570357mm", "Y:=", "140.4660550776467mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.844028612271742mm", "Y:=", "137.42187738858075mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.70019554615178mm", "Y:=", "137.04585587820893mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.504300523463634mm", "Y:=", "139.71401205690302mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "5.895520985006492mm", "Y:=", "138.3289271752998mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.231090295464735mm", "Y:=", "133.28207503259222mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.277942438172328mm", "Y:=", "132.61764434305044mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.942373127714085mm", "Y:=", "137.66449648575804mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.895520985006492mm", "Y:=", "138.3289271752998mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "11.606776619090374mm", "YCenter:=", "140.75904813078972mm", "ZCenter:=", "0mm", "Radius:=", "2.0302272446652085mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "19.33770845310478mm", "Y:=", "143.59478379303607mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.18423885388895mm", "Y:=", "144.14159843942616mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.714159007106783mm", "Y:=", "139.7147215170153mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.33770845310478mm", "Y:=", "143.59478379303607mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "17.06194594084173mm", "YCenter:=", "134.69512797374423mm", "ZCenter:=", "0mm", "Radius:=", "1.7129526768964858mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "23.826762173286493mm", "Y:=", "140.86492574508415mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.168816565825104mm", "Y:=", "142.7687141354432mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.382607610553322mm", "Y:=", "143.0038730056177mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.254344262742933mm", "Y:=", "141.33524348543315mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.91228987020432mm", "Y:=", "139.4314550950741mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.6984988254761mm", "Y:=", "139.1962962248996mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.826762173286493mm", "Y:=", "140.86492574508415mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "16.078000131301977mm", "YCenter:=", "130.2858365744501mm", "ZCenter:=", "0mm", "Radius:=", "1.4960415614237912mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "23.1833462008113mm", "Y:=", "132.87377834418032mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.767428317376233mm", "Y:=", "129.71456837052247mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.9266382910341mm", "Y:=", "129.2986504870874mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.342556174469166mm", "Y:=", "132.45786046074525mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.1833462008113mm", "Y:=", "132.87377834418032mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "29.20179923566065mm", "Y:=", "129.53434483487223mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.20840404680502mm", "Y:=", "129.92843278775115mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.311013688353896mm", "Y:=", "126.73799362245606mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.20179923566065mm", "Y:=", "129.53434483487223mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "11.682303591117385mm", "Y:=", "136.24672981830798mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.307394920591204mm", "Y:=", "133.3990157422624mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.15510899663677mm", "Y:=", "133.02410707173624mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.530017667162948mm", "Y:=", "135.87182114778182mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.682303591117385mm", "Y:=", "136.24672981830798mm", "Z:=", "0mm")),  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "7.323273362010227mm", "Y:=", "128.68585967525547mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.965373159770024mm", "Y:=", "125.96733774214431mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.683895092881187mm", "Y:=", "125.60943753990412mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.04179529512139mm", "Y:=", "128.32795947301528mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.323273362010227mm", "Y:=", "128.68585967525547mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "7.664602728094457mm", "YCenter:=", "142.99271440244934mm", "ZCenter:=", "0mm", "Radius:=", "1.1624533621520583mm", "WhichAxis:=",  _
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
  "21.763671430658633mm", "YCenter:=", "136.69856936754792mm", "ZCenter:=", "0mm", "Radius:=", "1.1160148754520174mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "13.4342452414675mm", "Y:=", "127.9234954919787mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.117643568688134mm", "Y:=", "125.51866703386918mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.522472026797661mm", "Y:=", "125.20206536108981mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.839073699577026mm", "Y:=", "127.60689381919933mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.4342452414675mm", "Y:=", "127.9234954919787mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "28.029051601435032mm", "Y:=", "126.29659317873428mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.710043593403178mm", "Y:=", "126.60189637491685mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.56424440123654mm", "Y:=", "124.13023676879371mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.029051601435032mm", "Y:=", "126.29659317873428mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "13.968290256194138mm", "Y:=", "139.77225347301714mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.673330589347504mm", "Y:=", "137.5318123704788mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.913771691885866mm", "Y:=", "137.23685270363217mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.2087313587325mm", "Y:=", "139.4772938061705mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.968290256194138mm", "Y:=", "139.77225347301714mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "23.61389618032812mm", "Y:=", "136.14578937935235mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.32844795128402mm", "Y:=", "133.97759481962052mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.49664251101586mm", "Y:=", "133.6921465905764mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.782090740059964mm", "Y:=", "135.86034115030824mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.61389618032812mm", "Y:=", "136.14578937935235mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "19.713458025795585mm", "Y:=", "134.6081048782337mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.436791269346045mm", "Y:=", "132.50661222507776mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.538283922501986mm", "Y:=", "132.22994546862822mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.814950678951526mm", "Y:=", "134.33143812178415mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.713458025795585mm", "Y:=", "134.6081048782337mm", "Z:=", "0mm")),  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "28.283394571572348mm", "Y:=", "135.43677994823616mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.907738172848028mm", "Y:=", "136.52375474150952mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.88789577873963mm", "Y:=", "136.6580195398394mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.24370978335555mm", "Y:=", "135.70530954489593mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.61936618207987mm", "Y:=", "134.6183347516226mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.639208576188267mm", "Y:=", "134.4840699532927mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.283394571572348mm", "Y:=", "135.43677994823616mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "24.06893413786803mm", "Y:=", "125.09843141605096mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.70386107964847mm", "Y:=", "126.1547829472253mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.712750631421166mm", "Y:=", "126.2852651131194mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.086713241413428mm", "Y:=", "125.35939574783913mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.451786299632992mm", "Y:=", "124.30304421666479mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.442896747860292mm", "Y:=", "124.1725620507707mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.06893413786803mm", "Y:=", "125.09843141605096mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "8.184205995716258mm", "Y:=", "140.25395917849312mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.255573528365705mm", "Y:=", "140.50786845974795mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.96598048078614mm", "Y:=", "138.45228135176998mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.184205995716258mm", "Y:=", "140.25395917849312mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "20.088818044871672mm", "Y:=", "125.87192183846673mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.841506490380436mm", "Y:=", "123.99340408131548mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.7200242475317mm", "Y:=", "123.74609252682424mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.967335802022937mm", "Y:=", "125.6246102839755mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.088818044871672mm", "Y:=", "125.87192183846673mm", "Z:=", "0mm")),  _
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
  "11.110278309105464mm", "YCenter:=", "130.0926012327743mm", "ZCenter:=", "0mm", "Radius:=", "0.8179212918780757mm", "WhichAxis:=",  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "23.494305690718093mm", "Y:=", "128.4031033728744mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.25899412421564mm", "Y:=", "126.61573457384158mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.04636292324845mm", "Y:=", "126.38042300733913mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.281674489750902mm", "Y:=", "128.16779180637195mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.494305690718093mm", "Y:=", "128.4031033728744mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "20.039809512115006mm", "Y:=", "130.34968064804318mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.809974353568723mm", "Y:=", "128.60390929726643mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.555745704345494mm", "Y:=", "128.37407413872012mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.785580862891777mm", "Y:=", "130.1198454894969mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.039809512115006mm", "Y:=", "130.34968064804318mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "27.649601727874145mm", "Y:=", "134.37100523316036mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.424935720497196mm", "Y:=", "132.66449748363735mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.131443470020216mm", "Y:=", "132.4398314762604mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.35610947739717mm", "Y:=", "134.1463392257834mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.649601727874145mm", "Y:=", "134.37100523316036mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "8.738586793391654mm", "YCenter:=", "129.69880007191867mm", "ZCenter:=", "0mm", "Radius:=", "0.7455065384712295mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "21.919787730078916mm", "Y:=", "129.64197019434684mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.704641857219688mm", "Y:=", "128.0077750457405mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.338837005826022mm", "Y:=", "127.79262917288126mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.55398287868525mm", "Y:=", "129.4268243214876mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.919787730078916mm", "Y:=", "129.64197019434684mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "16.870692863161835mm", "Y:=", "138.66133353927566mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.659942508366612mm", "Y:=", "137.06052566508154mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.260750382560715mm", "Y:=", "136.84977531028633mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.47150073735594mm", "Y:=", "138.45058318448042mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.870692863161835mm", "Y:=", "138.66133353927566mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "8.498404701924265mm", "Y:=", "132.40460427582553mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.291832483000238mm", "Y:=", "130.8355324943586mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.86090426446717mm", "Y:=", "130.62896027543457mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.067476483391196mm", "Y:=", "132.1980320569015mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.498404701924265mm", "Y:=", "132.40460427582553mm", "Z:=", "0mm")),  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "10.274905886545287mm", "Y:=", "127.39462707314777mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.072311118683974mm", "Y:=", "125.8557670319486mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.611171159883149mm", "Y:=", "125.65317226408729mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.813765927744463mm", "Y:=", "127.19203230528646mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.274905886545287mm", "Y:=", "127.39462707314777mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "20.28753426375188mm", "Y:=", "131.14372143704585mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.009421062349126mm", "Y:=", "131.9484516123548mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.254391641540867mm", "Y:=", "132.04785312135618mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.777475422135367mm", "Y:=", "131.34252445504862mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.05558862353812mm", "Y:=", "130.53779427973967mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.81061804434638mm", "Y:=", "130.4383927707383mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.28753426375188mm", "Y:=", "131.14372143704585mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "19.29033574486277mm", "YCenter:=", "137.83109335641907mm", "ZCenter:=", "0mm", "Radius:=", "0.6620814251956795mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "5.661518486754236mm", "Y:=", "129.57379589454678mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.4697945041817135mm", "Y:=", "128.11750766541348mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.92608273331502mm", "Y:=", "127.92578368284097mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.117806715887543mm", "Y:=", "129.38207191197426mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.661518486754236mm", "Y:=", "129.57379589454678mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "17.21485399532906mm", "Y:=", "126.82962493191535mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.026440498514898mm", "Y:=", "125.39848233859622mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.457583091834014mm", "Y:=", "125.21006884178206mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.645996588648178mm", "Y:=", "126.64121143510118mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.21485399532906mm", "Y:=", "126.82962493191535mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "18.869111863715727mm", "Y:=", "127.80993885322901mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.68386984524449mm", "Y:=", "126.4028860295766mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.090922668896898mm", "Y:=", "126.21764401110538mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.276164687368134mm", "Y:=", "127.62469683475778mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.869111863715727mm", "Y:=", "127.80993885322901mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "12.940829525085203mm", "Y:=", "144.0127551997743mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.685942306241628mm", "Y:=", "144.75028019056737mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.993967426069734mm", "Y:=", "144.84138041180972mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.556879764741417mm", "Y:=", "144.194955642259mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.811766983584995mm", "Y:=", "143.45743065146593mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.50374186375689mm", "Y:=", "143.36633043022357mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.940829525085203mm", "Y:=", "144.0127551997743mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "28.529947246757256mm", "Y:=", "135.8952814019441mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.350666782759294mm", "Y:=", "134.53351108020027mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.7124371045031mm", "Y:=", "134.3542306162023mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.891717568501065mm", "Y:=", "135.71600093794612mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.529947246757256mm", "Y:=", "135.8952814019441mm", "Z:=", "0mm")),  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "21.032270777324186mm", "Y:=", "127.89473003876519mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.855796286368765mm", "Y:=", "126.55427319829947mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.196253126834485mm", "Y:=", "126.37779870734404mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.372727617789906mm", "Y:=", "127.71825554780976mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.032270777324186mm", "Y:=", "127.89473003876519mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "13.349290958038022mm", "Y:=", "137.40289198818692mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.106189620667372mm", "Y:=", "138.10631412296294mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.446211377898283mm", "Y:=", "138.19320190697684mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.029334472499848mm", "Y:=", "137.57666755621472mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.272435809870501mm", "Y:=", "136.87324542143867mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.93241405263959mm", "Y:=", "136.78635763742477mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.349290958038022mm", "Y:=", "137.40289198818692mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "6.291834227315892mm", "Y:=", "131.3724839653984mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.052367692961848mm", "Y:=", "132.06538867182505mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.40225731407892mm", "Y:=", "132.15097732691248mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "4.991613469550021mm", "Y:=", "131.54366127557327mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.231080003904069mm", "Y:=", "130.85075656914663mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.881190382786997mm", "Y:=", "130.7651679140592mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.291834227315892mm", "Y:=", "131.3724839653984mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "12.20553216187163mm", "Y:=", "130.33787048807665mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.03685831743013mm", "Y:=", "129.05666544045096mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.318063365055828mm", "Y:=", "128.88799159600944mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.486737209497328mm", "Y:=", "130.16919664363513mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.20553216187163mm", "Y:=", "130.33787048807665mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "10.995210183393855mm", "Y:=", "132.56566074759763mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.828950424581858mm", "Y:=", "131.3027925008207mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.091818671358777mm", "Y:=", "131.1365327420087mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.258078430170773mm", "Y:=", "132.39940098878563mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.995210183393855mm", "Y:=", "132.56566074759763mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "13.419794973412888mm", "Y:=", "144.7848010979341mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.25586491627601mm", "Y:=", "143.5396286922374mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.50103732197272mm", "Y:=", "143.37569863510052mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.664967379109598mm", "Y:=", "144.62087104079723mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.419794973412888mm", "Y:=", "144.7848010979341mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "10.843073485570493mm", "Y:=", "128.97727645586252mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.681393366268932mm", "Y:=", "127.74919402473178mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.909475797399669mm", "Y:=", "127.58751390543023mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.07115591670123mm", "Y:=", "128.81559633656096mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.843073485570493mm", "Y:=", "128.97727645586252mm", "Z:=", "0mm")),  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "24.277239034846488mm", "Y:=", "137.48824896355222mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.117733368912482mm", "Y:=", "136.276683145531mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.329299186933685mm", "Y:=", "136.117177479597mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.488804852867695mm", "Y:=", "137.32874329761822mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.277239034846488mm", "Y:=", "137.48824896355222mm", "Z:=", "0mm")),  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "29.76350334447612mm", "Y:=", "140.79235927518772mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.60610061742123mm", "Y:=", "139.59676686380635mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.80169302880257mm", "Y:=", "139.43936413675146mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.95909575585746mm", "Y:=", "140.6349565481328mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "29.76350334447612mm", "Y:=", "140.79235927518772mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "25.86914434770815mm", "Y:=", "134.13593267108536mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.713776733545927mm", "Y:=", "132.95579847682833mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.893910927802946mm", "Y:=", "132.8004308626661mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.049278541965172mm", "Y:=", "133.98056505692313mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.86914434770815mm", "Y:=", "134.13593267108536mm", "Z:=", "0mm")),  _
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


' ************************************
' ***Second Coil begins here***
' ************************************
oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "44.43553185749873mm", "Y:=", "135.69102150498432mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.868733082406585mm", "Y:=", "137.80132573948984mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.53025695997414mm", "Y:=", "136.69888645336576mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.758579612633824mm", "Y:=", "133.48614293273616mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.32537838772596mm", "Y:=", "131.37583869823067mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.663854510158416mm", "Y:=", "132.47827798435475mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.43553185749873mm", "Y:=", "135.69102150498432mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "64.18879225161687mm", "Y:=", "122.68711304533717mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.240780037281056mm", "Y:=", "117.9841955354976mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.53786252744149mm", "Y:=", "119.93220774983341mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.4858747417773mm", "Y:=", "124.63512525967298mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "64.18879225161687mm", "Y:=", "122.68711304533717mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "60.457760261872416mm", "YCenter:=", "127.64728734345108mm", "ZCenter:=", "0mm", "Radius:=", "2.0302272446652077mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "55.18044472871007mm", "Y:=", "133.9685723814601mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.050862238952206mm", "Y:=", "132.36539295746292mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.512474059833956mm", "Y:=", "129.29656515921937mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.18044472871007mm", "Y:=", "133.9685723814601mm", "Z:=", "0mm")),  _
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
  "52.701484969208mm", "YCenter:=", "125.12336310045113mm", "ZCenter:=", "0mm", "Radius:=", "1.7129526768964858mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "49.92788114412458mm", "Y:=", "133.84897282238242mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.44957294944369mm", "Y:=", "135.16872912839813mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.114054716383905mm", "Y:=", "134.4792782065491mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.256844678004995mm", "Y:=", "132.4700709786844mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.73515287268587mm", "Y:=", "131.15031467266869mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.07067110574566mm", "Y:=", "131.8397655945177mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.92788114412458mm", "Y:=", "133.84897282238242mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "51.348961337321946mm", "YCenter:=", "120.81283183096825mm", "ZCenter:=", "0mm", "Radius:=", "1.496041561423791mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "46.48952202230086mm", "Y:=", "126.60672818097603mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.27011248892876mm", "Y:=", "123.66281314596878mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.32619745392152mm", "Y:=", "124.88222267934088mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.545606987293624mm", "Y:=", "127.82613771434812mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.48952202230086mm", "Y:=", "126.60672818097603mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "39.60767204796326mm", "Y:=", "126.72392044388974mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.39707230171949mm", "Y:=", "125.56851302846734mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "39.84696475941896mm", "Y:=", "123.35681648242232mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "39.60767204796326mm", "Y:=", "126.72392044388974mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "58.13619282986072mm", "Y:=", "123.7772685404885mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.03701622507581mm", "Y:=", "121.12362147246358mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.383369157050886mm", "Y:=", "122.2227980772485mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.482545761835794mm", "Y:=", "124.87644514527342mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.13619282986072mm", "Y:=", "123.7772685404885mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "58.13078867412881mm", "Y:=", "115.04984780733524mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.08147837517497mm", "Y:=", "112.51658865121256mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.54821921905228mm", "Y:=", "113.5658989501664mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.59752951800613mm", "Y:=", "116.09915810628908mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.13078867412881mm", "Y:=", "115.04984780733524mm", "Z:=", "0mm")),  _
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
  "64.98861613344687mm", "YCenter:=", "127.61061213357762mm", "ZCenter:=", "0mm", "Radius:=", "1.1624533621520572mm", "WhichAxis:=",  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "49.631391949594445mm", "YCenter:=", "129.20925698685105mm", "ZCenter:=", "0mm", "Radius:=", "1.1160148754520165mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "52.45734969265003mm", "Y:=", "117.4451069964206mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.52912055549396mm", "Y:=", "115.20416362340231mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.28817718247565mm", "Y:=", "116.13239276055836mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.216406319631716mm", "Y:=", "118.37333613357667mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.45734969265003mm", "Y:=", "117.4451069964206mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "39.00442546395351mm", "Y:=", "123.33357144131105mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.165396908736156mm", "Y:=", "122.43846776142297mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "39.189807506456745mm", "Y:=", "120.72504815658438mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "39.00442546395351mm", "Y:=", "123.33357144131105mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "57.919232131814006mm", "Y:=", "127.97345491961012mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.05445414549018mm", "Y:=", "125.88569617555484mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.9666954014349mm", "Y:=", "126.75047416187866mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.83147338775872mm", "Y:=", "128.83823290593395mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.919232131814006mm", "Y:=", "127.97345491961012mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "47.7526603194943mm", "Y:=", "129.65564784887687mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.91576845779848mm", "Y:=", "127.63521216513375mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.895332774055376mm", "Y:=", "128.47210402682958mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.73222463575119mm", "Y:=", "130.4925397105727mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.7526603194943mm", "Y:=", "129.65564784887687mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_35"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_35"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_35"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "50.36169659722303mm", "Y:=", "126.37375493109161mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.55055071045479mm", "Y:=", "124.41547552922586mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.59227130858904mm", "Y:=", "125.2266214159941mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.40341719535728mm", "Y:=", "127.18490081785986mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.36169659722303mm", "Y:=", "126.37375493109161mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_36"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_36"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_36"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "43.35425137388782mm", "Y:=", "131.37637686486195mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.223066754782415mm", "Y:=", "132.1298964498995mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.17340857517027mm", "Y:=", "131.7362519791988mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.254935014663545mm", "Y:=", "130.58908792346062mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.38611963376894mm", "Y:=", "129.83556833842312mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.43577781338109mm", "Y:=", "130.22921280912377mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.35425137388782mm", "Y:=", "131.37637686486195mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "41.83490690855795mm", "Y:=", "120.31587418569467mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.679245216672726mm", "Y:=", "121.04816491805582mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.602813125807565mm", "Y:=", "120.66561056450846mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.68204272682762mm", "Y:=", "119.55076547859994mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.83770441871284mm", "Y:=", "118.81847474623879mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.914136509578mm", "Y:=", "119.20102909978615mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.83490690855795mm", "Y:=", "120.31587418569467mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "63.1692488921875mm", "Y:=", "125.49858216837758mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "64.96644824423389mm", "Y:=", "124.75415782283932mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.32342422267243mm", "Y:=", "123.32917064356207mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.1692488921875mm", "Y:=", "125.49858216837758mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "45.668533766542375mm", "Y:=", "118.9956784952616mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.94345297711109mm", "Y:=", "117.24517861873628mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.19295310058577mm", "Y:=", "117.97025940816755mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.91803389001704mm", "Y:=", "119.72075928469289mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.668533766542375mm", "Y:=", "118.9956784952616mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_37"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_37"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_37"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "55.55451696390327mm", "YCenter:=", "118.16162420580375mm", "ZCenter:=", "0mm", "Radius:=", "0.817921291878075mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "43.98488571948937mm", "Y:=", "122.89048982827806mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.294987114659094mm", "Y:=", "121.22492725901233mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.629424545393356mm", "Y:=", "121.91482586384261mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.319323150223624mm", "Y:=", "123.58038843310834mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.98488571948937mm", "Y:=", "122.89048982827806mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_38"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_38"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_38"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "47.94985580502754mm", "Y:=", "122.84902711039423mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.27601321590699mm", "Y:=", "121.22222719203172mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.649213297544485mm", "Y:=", "121.89606978115228mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.32305588666503mm", "Y:=", "123.52286969951479mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.94985580502754mm", "Y:=", "122.84902711039423mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_39"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_39"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_39"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "43.37024471994573mm", "Y:=", "130.13649246504886mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.71155731521703mm", "Y:=", "128.54628039840347mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.12134524857164mm", "Y:=", "129.20496780313218mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.78003265330034mm", "Y:=", "130.79517986977757mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.37024471994573mm", "Y:=", "130.13649246504886mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_40"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_40"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_40"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "57.41156148629017mm", "YCenter:=", "116.63473663893024mm", "ZCenter:=", "0mm", "Radius:=", "0.7455065384712292mm", "WhichAxis:=",  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "45.96789168280413mm", "Y:=", "123.1761209876054mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.33711590018221mm", "Y:=", "121.65329353763133mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.81428845020814mm", "Y:=", "122.28406932025324mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.44506423283005mm", "Y:=", "123.80689677022731mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.96789168280413mm", "Y:=", "123.1761209876054mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_41"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_41"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_41"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "54.85021777521368mm", "Y:=", "128.46257133836767mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.23232899948623mm", "Y:=", "126.97085587523196mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.740613536350516mm", "Y:=", "127.5887446509594mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.35850231207797mm", "Y:=", "129.0804601140951mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.85021777521368mm", "Y:=", "128.46257133836767mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_42"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_42"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_42"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "58.97246738060037mm", "Y:=", "118.85794077171903mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.36682827942643mm", "Y:=", "117.39579863903964mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.90468614674704mm", "Y:=", "118.00143774021359mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.51032524792099mm", "Y:=", "119.46357987289298mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.97246738060037mm", "Y:=", "118.85794077171903mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_43"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_43"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_43"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "54.92898362412878mm", "Y:=", "115.40742383342399mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.335005819421184mm", "Y:=", "113.9734345608424mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.90101654683961mm", "Y:=", "114.56741236555001mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.494994351547206mm", "Y:=", "116.00140163813158mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.92898362412878mm", "Y:=", "115.40742383342399mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_44"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_44"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_44"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "48.132340271323514mm", "Y:=", "123.66054898116184mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.77555845642323mm", "Y:=", "124.21840915558218mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.47913386999937mm", "Y:=", "123.92697867727054mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.53949109847582mm", "Y:=", "123.07768802453857mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.89627291337611mm", "Y:=", "122.51982785011825mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.192697499799955mm", "Y:=", "122.81125832842987mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.132340271323514mm", "Y:=", "123.66054898116184mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "52.33962548006054mm", "YCenter:=", "128.9533836891835mm", "ZCenter:=", "0mm", "Radius:=", "0.6620814251956786mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "60.01387872061959mm", "Y:=", "114.98794569288249mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.45177244571232mm", "Y:=", "113.63090109983644mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.09472785266625mm", "Y:=", "114.1930073747437mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.656834127573525mm", "Y:=", "115.55005196778977mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.01387872061959mm", "Y:=", "114.98794569288249mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_45"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_45"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_45"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "48.63631118983982mm", "Y:=", "118.38809167921771mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.08391076806995mm", "Y:=", "117.05447908846192mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.75029817731416mm", "Y:=", "117.60687951023179mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.30269859908403mm", "Y:=", "118.94049210098758mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.63631118983982mm", "Y:=", "118.38809167921771mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_46"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_46"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_46"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "47.69383881177097mm", "Y:=", "120.06419737278773mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.15073669401801mm", "Y:=", "118.75303287370771mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.839572194937986mm", "Y:=", "119.29613499146068mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.38267431269095mm", "Y:=", "120.6072994905407mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.69383881177097mm", "Y:=", "120.06419737278773mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_47"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_47"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_47"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "60.92929008917255mm", "Y:=", "131.13210677474444mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.518791391098354mm", "Y:=", "131.64337854337825mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.163609326775706mm", "Y:=", "131.3762862092911mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.21892596052725mm", "Y:=", "130.5979221065702mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.629424658601444mm", "Y:=", "130.08665033793642mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.98460672292409mm", "Y:=", "130.35374267202354mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.92929008917255mm", "Y:=", "131.13210677474444mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "43.369981220569805mm", "Y:=", "131.8967271090403mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.84435749614387mm", "Y:=", "130.62775918419976mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.57538957130331mm", "Y:=", "131.15338290862567mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.101013295729246mm", "Y:=", "132.42235083346625mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.369981220569805mm", "Y:=", "131.8967271090403mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_48"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_48"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_48"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "45.86288383272981mm", "Y:=", "121.21920814996372mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.345486805002274mm", "Y:=", "119.97010122787576mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.09637988291432mm", "Y:=", "120.48749825560328mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.613776910641846mm", "Y:=", "121.73660517769125mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.86288383272981mm", "Y:=", "121.21920814996372mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_49"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_49"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_49"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "57.27062050693897mm", "Y:=", "125.61202803380746mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.83286350809884mm", "Y:=", "126.09965880352058mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.447865324333286mm", "Y:=", "125.84491671047795mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.500624139407876mm", "Y:=", "125.10254384772217mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.938381138248005mm", "Y:=", "124.61491307800905mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.32337932201356mm", "Y:=", "124.86965517105169mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.27062050693897mm", "Y:=", "125.61202803380746mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "60.36735331198693mm", "Y:=", "116.86081312606653mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.92118976722324mm", "Y:=", "117.34115293715345mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.52699619818729mm", "Y:=", "117.09021969739918mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.57896617391505mm", "Y:=", "116.35894664655798mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.02512971867874mm", "Y:=", "115.87860683547106mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.41932328771469mm", "Y:=", "116.12954007522535mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.36735331198693mm", "Y:=", "116.86081312606653mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "54.72863393133352mm", "Y:=", "118.92166053790184mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.23410724196937mm", "Y:=", "117.72776749689407mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.0402142009616mm", "Y:=", "118.22229418625824mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.53474089032575mm", "Y:=", "119.416187227266mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.72863393133352mm", "Y:=", "118.92166053790184mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_50"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_50"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_50"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "56.8906986409833mm", "Y:=", "120.24582250808902mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.4032496925585mm", "Y:=", "119.06901664525641mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.226443829725895mm", "Y:=", "119.55646559368121mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.7138927781507mm", "Y:=", "120.73327145651382mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.8906986409833mm", "Y:=", "120.24582250808902mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_51"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_51"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_51"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "60.9005167923072mm", "Y:=", "132.04020085959726mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.41989818358573mm", "Y:=", "130.8798848955202mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.25958221950867mm", "Y:=", "131.36050350424168mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.740200828230144mm", "Y:=", "132.52081946831873mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.9005167923072mm", "Y:=", "132.04020085959726mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_52"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_52"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_52"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "55.228260740834315mm", "Y:=", "117.06212220370357mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.75423861607074mm", "Y:=", "115.91773156066947mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.60984797303665mm", "Y:=", "116.39175368543306mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.08387009780023mm", "Y:=", "117.53614432846715mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.228260740834315mm", "Y:=", "117.06212220370357mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_53"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_53"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_53"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "47.84941834790165mm", "Y:=", "131.1499233796239mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.38177139783449mm", "Y:=", "130.02092376981207mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.25277178802263mm", "Y:=", "130.48857071987922mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.720418738089776mm", "Y:=", "131.61757032969106mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.84941834790165mm", "Y:=", "131.1499233796239mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_54"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_54"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_54"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "44.75022923872605mm", "Y:=", "136.7544990006803mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.288747793484305mm", "Y:=", "135.64038423624416mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.17463302904818mm", "Y:=", "136.10186568148592mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.636114474289926mm", "Y:=", "137.21598044592204mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.75022923872605mm", "Y:=", "136.7544990006803mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_55"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_55"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_55"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "44.79462976067836mm", "Y:=", "129.0426849647248mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.33911496453165mm", "Y:=", "127.94297496546294mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.239404965269784mm", "Y:=", "128.39848976160965mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.694919761416486mm", "Y:=", "129.49819976087153mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.79462976067836mm", "Y:=", "129.0426849647248mm", "Z:=", "0mm")),  _
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
  "Polyline1"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "square_Conductor_56"))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_56"), Array("NAME:ChangedProps", Array("NAME:Material", "Value:=", _
  "" & Chr(34) & "Copper (Annealed)_191.8C" & Chr(34) & ""))))

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers", _
  "square_Conductor_56"), Array("NAME:ChangedProps", Array("NAME:Color", "R:=", 255, "G:=", 128, "B:=", _
  0))))


Set oModule = oDesign.GetModule("BoundarySetup")

oModule.AssignCoil Array("NAME:hexagon_Conductor_1", "Objects:=", Array("hexagon_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_1", "Objects:=", Array("square_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_1", "Objects:=", Array("circle_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_1", "Objects:=", Array("triangle_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_2", "Objects:=", Array("circle_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_2", "Objects:=", Array("hexagon_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_3", "Objects:=", Array("circle_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_2", "Objects:=", Array("square_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_2", "Objects:=", Array("triangle_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_3", "Objects:=", Array("square_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_4", "Objects:=", Array("square_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_4", "Objects:=", Array("circle_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_5", "Objects:=", Array("circle_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_5", "Objects:=", Array("square_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_3", "Objects:=", Array("triangle_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_6", "Objects:=", Array("square_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_7", "Objects:=", Array("square_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_8", "Objects:=", Array("square_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_3", "Objects:=", Array("hexagon_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_4", "Objects:=", Array("hexagon_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_4", "Objects:=", Array("triangle_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_9", "Objects:=", Array("square_Conductor_9"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_6", "Objects:=", Array("circle_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_10", "Objects:=", Array("square_Conductor_10"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_11", "Objects:=", Array("square_Conductor_11"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_12", "Objects:=", Array("square_Conductor_12"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_7", "Objects:=", Array("circle_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_13", "Objects:=", Array("square_Conductor_13"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_14", "Objects:=", Array("square_Conductor_14"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_15", "Objects:=", Array("square_Conductor_15"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_16", "Objects:=", Array("square_Conductor_16"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_5", "Objects:=", Array("hexagon_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_8", "Objects:=", Array("circle_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_17", "Objects:=", Array("square_Conductor_17"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_18", "Objects:=", Array("square_Conductor_18"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_19", "Objects:=", Array("square_Conductor_19"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_6", "Objects:=", Array("hexagon_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_20", "Objects:=", Array("square_Conductor_20"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_21", "Objects:=", Array("square_Conductor_21"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_7", "Objects:=", Array("hexagon_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_8", "Objects:=", Array("hexagon_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_22", "Objects:=", Array("square_Conductor_22"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_23", "Objects:=", Array("square_Conductor_23"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_24", "Objects:=", Array("square_Conductor_24"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_25", "Objects:=", Array("square_Conductor_25"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_26", "Objects:=", Array("square_Conductor_26"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_27", "Objects:=", Array("square_Conductor_27"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_28", "Objects:=", Array("square_Conductor_28"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_9", "Objects:=", Array("hexagon_Conductor_9"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_29", "Objects:=", Array("square_Conductor_29"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_9", "Objects:=", Array("circle_Conductor_9"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_5", "Objects:=", Array("triangle_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_10", "Objects:=", Array("circle_Conductor_10"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_10", "Objects:=", Array("hexagon_Conductor_10"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_11", "Objects:=", Array("circle_Conductor_11"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_30", "Objects:=", Array("square_Conductor_30"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_6", "Objects:=", Array("triangle_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_31", "Objects:=", Array("square_Conductor_31"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_32", "Objects:=", Array("square_Conductor_32"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_12", "Objects:=", Array("circle_Conductor_12"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_13", "Objects:=", Array("circle_Conductor_13"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_33", "Objects:=", Array("square_Conductor_33"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_7", "Objects:=", Array("triangle_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_34", "Objects:=", Array("square_Conductor_34"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_35", "Objects:=", Array("square_Conductor_35"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_36", "Objects:=", Array("square_Conductor_36"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_11", "Objects:=", Array("hexagon_Conductor_11"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_12", "Objects:=", Array("hexagon_Conductor_12"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_8", "Objects:=", Array("triangle_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_37", "Objects:=", Array("square_Conductor_37"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_14", "Objects:=", Array("circle_Conductor_14"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_38", "Objects:=", Array("square_Conductor_38"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_39", "Objects:=", Array("square_Conductor_39"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_40", "Objects:=", Array("square_Conductor_40"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_15", "Objects:=", Array("circle_Conductor_15"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_41", "Objects:=", Array("square_Conductor_41"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_42", "Objects:=", Array("square_Conductor_42"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_43", "Objects:=", Array("square_Conductor_43"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_44", "Objects:=", Array("square_Conductor_44"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_13", "Objects:=", Array("hexagon_Conductor_13"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_16", "Objects:=", Array("circle_Conductor_16"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_45", "Objects:=", Array("square_Conductor_45"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_46", "Objects:=", Array("square_Conductor_46"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_47", "Objects:=", Array("square_Conductor_47"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_14", "Objects:=", Array("hexagon_Conductor_14"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_48", "Objects:=", Array("square_Conductor_48"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_49", "Objects:=", Array("square_Conductor_49"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_15", "Objects:=", Array("hexagon_Conductor_15"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_16", "Objects:=", Array("hexagon_Conductor_16"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_50", "Objects:=", Array("square_Conductor_50"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_51", "Objects:=", Array("square_Conductor_51"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_52", "Objects:=", Array("square_Conductor_52"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_53", "Objects:=", Array("square_Conductor_53"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_54", "Objects:=", Array("square_Conductor_54"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_55", "Objects:=", Array("square_Conductor_55"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_56", "Objects:=", Array("square_Conductor_56"), "Conductor number:=",  _
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
  Array("NAME:Data", "Object Name:=", "square_Conductor_1", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_1", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_1", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_9", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_10", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_11", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_12", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_13", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_14", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_15", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_16", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_17", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_18", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_19", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_20", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_21", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_22", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_23", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_24", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_25", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_26", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_27", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_28", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_9", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_29", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_9", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_10", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_10", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_11", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_30", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_31", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_32", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_12", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_13", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_33", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_34", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_35", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_36", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_11", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_12", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_37", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_14", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_38", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_39", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_40", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_15", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_41", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_42", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_43", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_44", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_13", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_16", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_45", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_46", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_47", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_14", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_48", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_49", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_15", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_16", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_50", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_51", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_52", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_53", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_54", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_55", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_56",  _
  "Eddy Effect:=", true)))

oModule.AddWindingCoils "phase_A_Solid", Array("hexagon_Conductor_1",  _
  "square_Conductor_1", "circle_Conductor_1", "triangle_Conductor_1",   _
  "circle_Conductor_2", "hexagon_Conductor_2", "circle_Conductor_3",   _
  "square_Conductor_2", "triangle_Conductor_2", "square_Conductor_3",   _
  "square_Conductor_4", "circle_Conductor_4", "circle_Conductor_5",   _
  "square_Conductor_5", "triangle_Conductor_3", "square_Conductor_6",   _
  "square_Conductor_7", "square_Conductor_8", "hexagon_Conductor_3",   _
  "hexagon_Conductor_4", "triangle_Conductor_4", "square_Conductor_9",   _
  "circle_Conductor_6", "square_Conductor_10", "square_Conductor_11",   _
  "square_Conductor_12", "circle_Conductor_7", "square_Conductor_13",   _
  "square_Conductor_14", "square_Conductor_15", "square_Conductor_16",   _
  "hexagon_Conductor_5", "circle_Conductor_8", "square_Conductor_17",   _
  "square_Conductor_18", "square_Conductor_19", "hexagon_Conductor_6",   _
  "square_Conductor_20", "square_Conductor_21", "hexagon_Conductor_7",   _
  "hexagon_Conductor_8", "square_Conductor_22", "square_Conductor_23",   _
  "square_Conductor_24", "square_Conductor_25", "square_Conductor_26",   _
  "square_Conductor_27", "square_Conductor_28", "hexagon_Conductor_9",   _
  "square_Conductor_29", "circle_Conductor_9", "triangle_Conductor_5",   _
  "circle_Conductor_10", "hexagon_Conductor_10", "circle_Conductor_11",   _
  "square_Conductor_30", "triangle_Conductor_6", "square_Conductor_31",   _
  "square_Conductor_32", "circle_Conductor_12", "circle_Conductor_13",   _
  "square_Conductor_33", "triangle_Conductor_7", "square_Conductor_34",   _
  "square_Conductor_35", "square_Conductor_36", "hexagon_Conductor_11",   _
  "hexagon_Conductor_12", "triangle_Conductor_8", "square_Conductor_37",   _
  "circle_Conductor_14", "square_Conductor_38", "square_Conductor_39",   _
  "square_Conductor_40", "circle_Conductor_15", "square_Conductor_41",   _
  "square_Conductor_42", "square_Conductor_43", "square_Conductor_44",   _
  "hexagon_Conductor_13", "circle_Conductor_16", "square_Conductor_45",   _
  "square_Conductor_46", "square_Conductor_47", "hexagon_Conductor_14",   _
  "square_Conductor_48", "square_Conductor_49", "hexagon_Conductor_15",   _
  "hexagon_Conductor_16", "square_Conductor_50", "square_Conductor_51",   _
  "square_Conductor_52", "square_Conductor_53", "square_Conductor_54",   _
  "square_Conductor_55", "square_Conductor_56")

oDesign.AnalyzeAll
Set oModule = oDesign.GetModule("ReportSetup")
oModule.ExportToFile "max_Torque", "C:/Users/John McKay/Desktop/simulation_Source/data_2/Stage_1_Orderly_CN_2933/max_Torque_2933.csv", false
oModule.ExportToFile "max_Loss", "C:/Users/John McKay/Desktop/simulation_Source/data_2/Stage_1_Orderly_CN_2933/max_Loss_2933.csv", false
oProject.Save
oDesktop.CloseProject "simulation_CN_2933"
oDesktop.QuitApplication
