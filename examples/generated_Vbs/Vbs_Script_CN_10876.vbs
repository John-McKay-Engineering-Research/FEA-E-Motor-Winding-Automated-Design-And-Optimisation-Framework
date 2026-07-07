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
oProject.SaveAs "C:/Users/John McKay/Desktop/simulation_Source/data_7/Stage_1_Orderly_CN_10876/simulation_CN_10876.aedt", true
Set oDesign = oProject.SetActiveDesign("Motor-CAD a2_User_Calibration_V2Calibrated_48Conductor_SlotEdited_Thermal_Adjusted") 
oDesign.RenameDesignInstance "Motor-CAD a2_User_Calibration_V2Calibrated_48Conductor_SlotEdited_Thermal_Adjusted", "simulation_CN_10876"

Set oEditor = oDesign.SetActiveEditor("3D Modeler") 

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "19.17341926446383mm", "Y:=", "126.60027279260399mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.552886931760973mm", "Y:=", "126.28700993127586mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.8661497930891mm", "Y:=", "128.666477598573mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.486682125791955mm", "Y:=", "128.97974045990114mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.17341926446383mm", "Y:=", "126.60027279260399mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "24.352071413287952mm", "Y:=", "128.39568303025982mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.972603745990806mm", "Y:=", "128.70894589158794mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.849074718311257mm", "Y:=", "126.17284679362675mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.352071413287952mm", "Y:=", "128.39568303025982mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "23.16808073209706mm", "Y:=", "128.59593803482431mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.436130281077666mm", "Y:=", "129.03417352098455mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.59276171174173mm", "Y:=", "130.2239073546331mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.481343593425187mm", "Y:=", "130.97540570212146mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.213294044444588mm", "Y:=", "130.53717021596123mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.056662613780524mm", "Y:=", "129.34743638231265mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.16808073209706mm", "Y:=", "128.59593803482431mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "20.689468578662535mm", "Y:=", "128.92225351537445mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.95751812764314mm", "Y:=", "129.3604890015347mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.114149558307204mm", "Y:=", "130.55022283518326mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.00273143999066mm", "Y:=", "131.3017211826716mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.734681891010062mm", "Y:=", "130.86348569651136mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.578050460346mm", "Y:=", "129.67375186286282mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.689468578662535mm", "Y:=", "128.92225351537445mm", "Z:=", "0mm")),  _
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
  "20.19346904822635mm", "YCenter:=", "125.15476304215407mm", "ZCenter:=", "0mm", "Radius:=", "1.062618208293335mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "24.025755932737823mm", "Y:=", "125.91707087682529mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "21.646288265440678mm", "Y:=", "126.2303337381534mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.52275923776113mm", "Y:=", "123.6942346401922mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.025755932737823mm", "Y:=", "125.91707087682529mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "25.320377404981457mm", "Y:=", "125.79101040083968mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.588426953962063mm", "Y:=", "126.2292458869999mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.745058384626127mm", "Y:=", "127.41897972064848mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.63364026630958mm", "Y:=", "128.17047806813682mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.36559071732898mm", "Y:=", "127.73224258197659mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.20895928666492mm", "Y:=", "126.54250874832803mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.320377404981457mm", "Y:=", "125.79101040083968mm", "Z:=", "0mm")),  _
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
  "25.80332431619565mm", "YCenter:=", "129.45935638792272mm", "ZCenter:=", "0mm", "Radius:=", "1.0626182082933342mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "24.997392907623887mm", "Y:=", "133.29738642489195mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.61792524032674mm", "Y:=", "133.61064928622005mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.30466237899862mm", "Y:=", "131.2311816189229mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.684130046295763mm", "Y:=", "130.9179187575948mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.997392907623887mm", "Y:=", "133.29738642489195mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "19.826050225564092mm", "Y:=", "131.55749709947307mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.205517892861238mm", "Y:=", "131.24423423814494mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.518780754189358mm", "Y:=", "133.6237019054421mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.139313086892216mm", "Y:=", "133.93696476677022mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.826050225564092mm", "Y:=", "131.55749709947307mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "17.021122591579438mm", "Y:=", "129.40520042658864mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.400590258876584mm", "Y:=", "129.09193756526054mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.713853120204703mm", "Y:=", "131.47140523255766mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.33438545290756mm", "Y:=", "131.78466809388578mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.021122591579438mm", "Y:=", "129.40520042658864mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "19.23090620899051mm", "Y:=", "127.80305924547457mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.79267072283029mm", "Y:=", "129.07110879445517mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.60293688918172mm", "Y:=", "129.22774022511925mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.85143854169337mm", "Y:=", "128.1163221068027mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "17.289674027853593mm", "Y:=", "126.8482725578221mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "18.479407861502168mm", "Y:=", "126.69164112715804mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "19.23090620899051mm", "Y:=", "127.80305924547457mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "7.642803635534463mm", "Y:=", "130.53449316219277mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.334708027505162mm", "Y:=", "128.19427468039166mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.828974313320938mm", "Y:=", "129.0562883132629mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.642803635534463mm", "Y:=", "130.53449316219277mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "9.829261475007616mm", "Y:=", "127.8703839707351mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.16947995680875mm", "Y:=", "127.5622883627058mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.477575564838052mm", "Y:=", "129.90250684450692mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.137357083036918mm", "Y:=", "130.21060245253622mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.829261475007616mm", "Y:=", "127.8703839707351mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "10.458505310288235mm", "Y:=", "132.64996542047473mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.150409702258933mm", "Y:=", "130.30974693867358mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.49062818406006mm", "Y:=", "130.0016513306443mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.798723792089362mm", "Y:=", "132.34186981244542mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.458505310288235mm", "Y:=", "132.64996542047473mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "10.051265216121546mm", "Y:=", "130.32279955789562mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.359360824150848mm", "Y:=", "132.66301803969674mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.01914234234972mm", "Y:=", "132.97111364772604mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.711046734320419mm", "Y:=", "130.63089516592493mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.051265216121546mm", "Y:=", "130.32279955789562mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "8.238859520718364mm", "Y:=", "125.59812142603325mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.48599266362626mm", "Y:=", "126.02912824246887mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.640040467640908mm", "Y:=", "127.19923748336944mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.546955128747665mm", "Y:=", "127.93833990783436mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.2998219858397775mm", "Y:=", "127.50733309139873mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.145774181825129mm", "Y:=", "126.33722385049818mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.238859520718364mm", "Y:=", "125.59812142603325mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "12.16361623510743mm", "Y:=", "127.5177489744771mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.823397753306303mm", "Y:=", "127.8258445825064mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.685411386177563mm", "Y:=", "125.33157829669062mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.16361623510743mm", "Y:=", "127.5177489744771mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "12.521529571411484mm", "Y:=", "129.89219670769018mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.213433963382183mm", "Y:=", "127.55197822588904mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.70770024919796mm", "Y:=", "128.4139918587603mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.521529571411484mm", "Y:=", "129.89219670769018mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "14.929991151998564mm", "Y:=", "129.680503103393mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "15.238086760027866mm", "Y:=", "132.0207215851941mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.897868278226731mm", "Y:=", "132.32881719322341mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.58977267019743mm", "Y:=", "129.9885987114223mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.929991151998564mm", "Y:=", "129.680503103393mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "10.47155792951024mm", "Y:=", "132.74910990661212mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.811776411311367mm", "Y:=", "132.44101429858281mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.119872019340669mm", "Y:=", "134.78123278038393mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.779653537539541mm", "Y:=", "135.08932838841324mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.47155792951024mm", "Y:=", "132.74910990661212mm", "Z:=", "0mm")),  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "8.340290569601027mm", "Y:=", "135.41047661566455mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.032194961571726mm", "Y:=", "133.07025813386343mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.372413443372853mm", "Y:=", "132.76216252583413mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.680509051402154mm", "Y:=", "135.10238100763524mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.340290569601027mm", "Y:=", "135.41047661566455mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "5.57977937441121mm", "Y:=", "133.29226187497733mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.2716837663819085mm", "Y:=", "130.9520433931762mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.611902248183039mm", "Y:=", "130.6439477851469mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.9199978562123405mm", "Y:=", "132.98416626694802mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.57977937441121mm", "Y:=", "133.29226187497733mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "6.428740388060476mm", "Y:=", "130.69885110302417mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.181607245152588mm", "Y:=", "130.26784428658854mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "5.027559441137939mm", "Y:=", "129.09773504568798mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.120644780031174mm", "Y:=", "128.35863262122305mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.367777922939069mm", "Y:=", "128.78963943765868mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.521825726953718mm", "Y:=", "129.95974867855924mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.428740388060476mm", "Y:=", "130.69885110302417mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "25.126078974354087mm", "Y:=", "135.90287988031062mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.439341835682207mm", "Y:=", "138.28234754760774mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.059874168385065mm", "Y:=", "138.59561040893587mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.74661130705694mm", "Y:=", "136.21614274163872mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.126078974354087mm", "Y:=", "135.90287988031062mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "25.225223460491463mm", "Y:=", "135.8898272610886mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.60469112778861mm", "Y:=", "135.57656439976049mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.917953989116732mm", "Y:=", "137.95603206705763mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.53848632181959mm", "Y:=", "138.26929492838576mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.225223460491463mm", "Y:=", "135.8898272610886mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "26.89790420535423mm", "YCenter:=", "139.40154181750768mm", "ZCenter:=", "0mm", "Radius:=", "1.0626182082933353mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "25.452394454904216mm", "Y:=", "138.38149203374513mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.765657316232335mm", "Y:=", "140.76095970104225mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.386189648935193mm", "Y:=", "141.07422256237038mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.07292678760707mm", "Y:=", "138.69475489507323mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.452394454904216mm", "Y:=", "138.38149203374513mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "22.576927257170873mm", "Y:=", "134.92726442185278mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.015162743331096mm", "Y:=", "133.65921487287218mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.204896576979667mm", "Y:=", "133.5025834422081mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.956394924468015mm", "Y:=", "134.61400156052466mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.51815943830779mm", "Y:=", "135.88205110950526mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.328425604659216mm", "Y:=", "136.0386825401693mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.576927257170873mm", "Y:=", "134.92726442185278mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "25.156054729596004mm", "Y:=", "135.7934712531477mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.84279186826788mm", "Y:=", "133.41400358585054mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.378890966229086mm", "Y:=", "134.29047455817098mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.156054729596004mm", "Y:=", "135.7934712531477mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "28.017098475254116mm", "Y:=", "137.9429794478356mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "27.703835613925992mm", "Y:=", "135.56351178053845mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.083303281223138mm", "Y:=", "135.25024891921032mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.39656614255126mm", "Y:=", "137.62971658650747mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.017098475254116mm", "Y:=", "137.9429794478356mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "28.03015109447612mm", "Y:=", "138.042123933973mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.409618761773267mm", "Y:=", "137.7288610726449mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "30.72288162310139mm", "Y:=", "140.108328739942mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.343413955804245mm", "Y:=", "140.42159160127014mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.03015109447612mm", "Y:=", "138.042123933973mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "28.25732208888887mm", "Y:=", "140.53378870662954mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.570584950216993mm", "Y:=", "142.91325637392669mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "26.191117282919844mm", "Y:=", "143.2265192352548mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.87785442159172mm", "Y:=", "140.84705156795766mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "28.25732208888887mm", "Y:=", "140.53378870662954mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "25.9353413661184mm", "Y:=", "142.04983802082825mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.497105879958177mm", "Y:=", "143.31788756980885mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "24.307372046309602mm", "Y:=", "143.4745190004729mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.55587369882126mm", "Y:=", "142.36310088215635mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.99410918498148mm", "Y:=", "141.09505133317575mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.183843018630053mm", "Y:=", "140.9384199025117mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "25.9353413661184mm", "Y:=", "142.04983802082825mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "23.28704516279781mm", "Y:=", "141.08727518159242mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.907577495500664mm", "Y:=", "141.40053804292052mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "20.59431463417254mm", "Y:=", "139.0210703756234mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "22.973782301469683mm", "Y:=", "138.70780751429527mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "23.28704516279781mm", "Y:=", "141.08727518159242mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "21.614364417935047mm", "YCenter:=", "137.57556062517338mm", "ZCenter:=", "0mm", "Radius:=", "1.0626182082933342mm", "WhichAxis:=",  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "9.053732611757244mm", "Y:=", "140.43955392642852mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.74046975042912mm", "Y:=", "138.06008625913137mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.119937417726263mm", "Y:=", "137.74682339780327mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.433200279054386mm", "Y:=", "140.12629106510042mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.053732611757244mm", "Y:=", "140.43955392642852mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "13.911812432488915mm", "Y:=", "139.79997558455028mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.532344765191773mm", "Y:=", "140.1132384458784mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.21908190386365mm", "Y:=", "137.73377077858126mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.598549571160792mm", "Y:=", "137.42050791725313mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.911812432488915mm", "Y:=", "139.79997558455028mm", "Z:=", "0mm")),  _
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
  "12.89176264872641mm", "YCenter:=", "141.2454853350002mm", "ZCenter:=", "0mm", "Radius:=", "1.0626182082933355mm", "WhichAxis:=",  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "10.413150495291884mm", "YCenter:=", "141.57180081555043mm", "ZCenter:=", "0mm", "Radius:=", "1.0626182082933358mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "9.603888103527563mm", "Y:=", "135.4248426750328mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.871937652508162mm", "Y:=", "135.86307816119302mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.028569083172226mm", "Y:=", "137.0528119948416mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.917150964855686mm", "Y:=", "137.80431034232996mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.649101415875084mm", "Y:=", "137.36607485616972mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.49246998521102mm", "Y:=", "136.17634102252114mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.603888103527563mm", "Y:=", "135.4248426750328mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "11.206029284641641mm", "Y:=", "137.6346262924439mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "10.892766423313518mm", "Y:=", "135.25515862514675mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.27223409061066mm", "Y:=", "134.94189576381862mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.585496951938783mm", "Y:=", "137.32136343111577mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.206029284641641mm", "Y:=", "137.6346262924439mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "16.077161724595314mm", "Y:=", "137.09419243670303mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.390424585923434mm", "Y:=", "139.47366010400017mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.010956918626292mm", "Y:=", "139.7869229653283mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.697694057298168mm", "Y:=", "137.40745529803115mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.077161724595314mm", "Y:=", "137.09419243670303mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "16.458402917945854mm", "Y:=", "139.56097413480535mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.771665779273977mm", "Y:=", "141.9404418021025mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.235566681312772mm", "Y:=", "141.06397082978205mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "16.458402917945854mm", "Y:=", "139.56097413480535mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "14.407811962925106mm", "Y:=", "143.56746605777076mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.969576476764889mm", "Y:=", "144.83551560675136mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.779842643116314mm", "Y:=", "144.99214703741544mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.028344295627964mm", "Y:=", "143.88072891909889mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.466579781788191mm", "Y:=", "142.6126793701183mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "13.656313615436765mm", "Y:=", "142.45604793945424mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "14.407811962925106mm", "Y:=", "143.56746605777076mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "11.77256837882652mm", "Y:=", "142.70404770467232mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "12.085831240154643mm", "Y:=", "145.08351537196947mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.706363572857502mm", "Y:=", "145.3967782332976mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.393100711529378mm", "Y:=", "143.01731056600045mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "11.77256837882652mm", "Y:=", "142.70404770467232mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "9.288213072934312mm", "Y:=", "142.986739611322mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.90874540563717mm", "Y:=", "143.30000247265014mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "7.785216377957621mm", "Y:=", "140.76390337468894mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "9.288213072934312mm", "Y:=", "142.986739611322mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "8.64132526429174mm", "Y:=", "138.07313887835338mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.954588125619864mm", "Y:=", "140.45260654565053mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.575120458322722mm", "Y:=", "140.76586940697865mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "6.261857596994599mm", "Y:=", "138.3864017396815mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "8.64132526429174mm", "Y:=", "138.07313887835338mm", "Z:=", "0mm")),  _
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


' ************************************
' ***Second Coil begins here***
' ************************************
oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "46.82546784200727mm", "Y:=", "119.16874953441311mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.608156963819894mm", "Y:=", "120.08718977170233mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.52659720110911mm", "Y:=", "122.3045006498897mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.743908079296496mm", "Y:=", "121.38606041260049mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.82546784200727mm", "Y:=", "119.16874953441311mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "43.23832864186733mm", "Y:=", "123.31294648422369mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.45563952005472mm", "Y:=", "122.39450624693447mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.428543843671804mm", "Y:=", "120.6364154873917mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.23832864186733mm", "Y:=", "123.31294648422369mm", "Z:=", "0mm")),  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "44.363822151978mm", "Y:=", "122.89437706501252mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.4847767722066mm", "Y:=", "123.90792490320398mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.94399689085122mm", "Y:=", "125.01658034229767mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.28226238926722mm", "Y:=", "125.1116879431999mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.1613077690386mm", "Y:=", "124.09814010500844mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.70208765039399mm", "Y:=", "122.98948466591476mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.363822151978mm", "Y:=", "122.89437706501252mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "46.67352098342319mm", "Y:=", "121.93766848450291mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.794475603651804mm", "Y:=", "122.95121632269436mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.25369572229641mm", "Y:=", "124.05987176178806mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.59196122071241mm", "Y:=", "124.1549793626903mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.4710066004838mm", "Y:=", "123.14143152449884mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.01178648183918mm", "Y:=", "122.03277608540515mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.67352098342319mm", "Y:=", "121.93766848450291mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "45.21932394104854mm", "YCenter:=", "118.42692626070614mm", "ZCenter:=", "0mm", "Radius:=", "1.0626182082933358mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "42.28162006135773mm", "Y:=", "121.00324765277851mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.49893093954512mm", "Y:=", "120.0848074154893mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.4718352631622mm", "Y:=", "118.32671665594651mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.28162006135773mm", "Y:=", "121.00324765277851mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "41.0974147400232mm", "Y:=", "121.54138681407693mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "40.21836936025181mm", "Y:=", "122.55493465226839mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "40.67758947889642mm", "Y:=", "123.66359009136208mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.01585497731242mm", "Y:=", "123.75869769226432mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.894900357083806mm", "Y:=", "122.74514985407286mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.43568023843919mm", "Y:=", "121.63649441497917mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.0974147400232mm", "Y:=", "121.54138681407693mm", "Z:=", "0mm")),  _
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
  "42.5133434391774mm", "YCenter:=", "124.95974108461579mm", "ZCenter:=", "0mm", "Radius:=", "1.062618208293335mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "45.13031553068312mm", "Y:=", "127.88060689328971mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.34762640887051mm", "Y:=", "126.96216665600049mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.429186171581286mm", "Y:=", "124.7448557778131mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.2118752933939mm", "Y:=", "125.66329601510232mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.13031553068312mm", "Y:=", "127.88060689328971mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "48.73888500302649mm", "Y:=", "123.78814719730349mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.521574124839105mm", "Y:=", "124.70658743459272mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.44001436212832mm", "Y:=", "126.9238983127801mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.657325240315714mm", "Y:=", "126.00545807549088mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.73888500302649mm", "Y:=", "123.78814719730349mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "50.09187525396207mm", "Y:=", "120.5217397853487mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.874564375774696mm", "Y:=", "121.44018002263792mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.793004613063914mm", "Y:=", "123.6574909008253mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.0103154912513mm", "Y:=", "122.73905066353608mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.09187525396207mm", "Y:=", "120.5217397853487mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "47.37707591390969mm", "Y:=", "120.2391366302864mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.39062375210115mm", "Y:=", "121.1181820100578mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.499279191194844mm", "Y:=", "120.65896189141318mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.59438679209708mm", "Y:=", "119.32069639299718mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.58083895390563mm", "Y:=", "118.4416510132258mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.47218351481193mm", "Y:=", "118.90087113187042mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.37707591390969mm", "Y:=", "120.2391366302864mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "58.77838408313997mm", "Y:=", "116.8105765061847mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.87509346596781mm", "Y:=", "114.62984004636677mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.14600231473596mm", "Y:=", "116.6234988934479mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.77838408313997mm", "Y:=", "116.8105765061847mm", "Z:=", "0mm")),  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "55.552801454335615mm", "Y:=", "115.59661918710033mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.37206499451768mm", "Y:=", "116.49990980427249mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.27535561168985mm", "Y:=", "118.68064626409043mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.45609207150778mm", "Y:=", "117.77735564691827mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.552801454335615mm", "Y:=", "115.59661918710033mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "57.39765103190031mm", "Y:=", "120.05048005999399mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.49436041472815mm", "Y:=", "117.86974360017605mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.31362395491021mm", "Y:=", "118.77303421734821mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.21691457208238mm", "Y:=", "120.95377067716615mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.39765103190031mm", "Y:=", "120.05048005999399mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "56.58674836798596mm", "Y:=", "117.83147525695568mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.49003898515813mm", "Y:=", "120.0122117167736mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.67077544497606mm", "Y:=", "119.10892109960145mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.7674848278039mm", "Y:=", "116.92818463978351mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.58674836798596mm", "Y:=", "117.83147525695568mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "55.79399867710984mm", "Y:=", "112.8335811222181mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.929453101493905mm", "Y:=", "113.83041054575868mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.381098410079986mm", "Y:=", "114.92077877566766mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.697289294282mm", "Y:=", "115.01431758203604mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.56183486989792mm", "Y:=", "114.01748815849548mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.11018956131184mm", "Y:=", "112.92711992858652mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.79399867710984mm", "Y:=", "112.8335811222181mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "53.35487343236464mm", "Y:=", "116.45840570174377mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.53560989218257mm", "Y:=", "115.55511508457161mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.54195104510144mm", "Y:=", "113.82602393333975mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.35487343236464mm", "Y:=", "116.45840570174377mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "54.23213525698848mm", "Y:=", "118.6936944269698mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "53.32884463981631mm", "Y:=", "116.51295796715186mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.59975348858447mm", "Y:=", "118.506616814233mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.23213525698848mm", "Y:=", "118.6936944269698mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "52.04049954183448mm", "Y:=", "119.71459317774078mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.943790159006646mm", "Y:=", "121.89532963755872mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.12452661882458mm", "Y:=", "120.99203902038656mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.221236001652414mm", "Y:=", "118.81130256056862mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.04049954183448mm", "Y:=", "119.71459317774078mm", "Z:=", "0mm")),  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "57.435919375120704mm", "Y:=", "120.14286801325181mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.25518291530277mm", "Y:=", "121.04615863042397mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.158473532474936mm", "Y:=", "123.22689509024191mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.339209992292865mm", "Y:=", "122.32360447306975mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.435919375120704mm", "Y:=", "120.14286801325181mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "60.6123344053686mm", "Y:=", "121.3820455126772mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.70904378819644mm", "Y:=", "119.20130905285926mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.5283073283785mm", "Y:=", "120.10459967003142mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.43159794555067mm", "Y:=", "122.28533612984936mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.6123344053686mm", "Y:=", "121.3820455126772mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "61.9438998580518mm", "Y:=", "118.1673621392089mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.04060924087963mm", "Y:=", "115.98662567939097mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.859872781061696mm", "Y:=", "116.88991629656313mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.763163398233864mm", "Y:=", "119.07065275638107mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.9438998580518mm", "Y:=", "118.1673621392089mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "59.911972667750284mm", "Y:=", "116.34588303471924mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.77651824336621mm", "Y:=", "115.34905361117868mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.32487293478013mm", "Y:=", "114.25868538126971mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.008682050578116mm", "Y:=", "114.1651465749013mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.144136474962195mm", "Y:=", "115.16197599844187mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.595781783548276mm", "Y:=", "116.25234422835084mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.911972667750284mm", "Y:=", "116.34588303471924mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "46.32161685508596mm", "Y:=", "130.2013734486494mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.240057092375196mm", "Y:=", "132.4186843268368mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.45736797056257mm", "Y:=", "131.50024408954755mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.538927733273354mm", "Y:=", "129.2829332113602mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.32161685508596mm", "Y:=", "130.2013734486494mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "46.229228901828165mm", "Y:=", "130.23964179186976mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.011918023640774mm", "Y:=", "131.15808202915898mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.93035826093001mm", "Y:=", "133.37539290734637mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.14766913911738mm", "Y:=", "132.45695267005715mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.229228901828165mm", "Y:=", "130.23964179186976mm", "Z:=", "0mm")),  _
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
  "46.536502161888635mm", "YCenter:=", "134.11721618105318mm", "ZCenter:=", "0mm", "Radius:=", "1.0626182082933364mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "47.27832543559556mm", "Y:=", "132.5110722800946mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.19676567288479mm", "Y:=", "134.72838315828199mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.41407655107217mm", "Y:=", "133.80994292099274mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.49563631378295mm", "Y:=", "131.59263204280538mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.27832543559556mm", "Y:=", "132.5110722800946mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "48.04143927140836mm", "Y:=", "128.08188981900867mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.02789143321691mm", "Y:=", "127.2028444392373mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.919235994123206mm", "Y:=", "127.6620645578819mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.824128393220974mm", "Y:=", "129.0003300562979mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.83767623141243mm", "Y:=", "129.8793754360693mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "47.946331670506126mm", "Y:=", "129.42015531742467mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.04143927140836mm", "Y:=", "128.08188981900867mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "46.240952775981285mm", "Y:=", "130.12161067574mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.32251253869207mm", "Y:=", "127.9042997975526mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.56442177914929mm", "Y:=", "129.9313954739355mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.240952775981285mm", "Y:=", "130.12161067574mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "44.83797030767218mm", "Y:=", "133.41366125056675mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.919530070382955mm", "Y:=", "131.19635037237936mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "41.70221919219557mm", "Y:=", "132.1147906096686mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.62065942948479mm", "Y:=", "134.332101487856mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.83797030767218mm", "Y:=", "133.41366125056675mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "44.87623865089256mm", "Y:=", "133.5060492038246mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "42.658927772705184mm", "Y:=", "134.42448944111382mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "43.5773680099944mm", "Y:=", "136.6418003193012mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.794678888181785mm", "Y:=", "135.723360082012mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "44.87623865089256mm", "Y:=", "133.5060492038246mm", "Z:=", "0mm")),  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "45.92533518465997mm", "Y:=", "135.7774796920494mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "46.84377542194919mm", "Y:=", "137.99479057023677mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.06108630013658mm", "Y:=", "137.07635033294758mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.14264606284736mm", "Y:=", "134.8590394547602mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "45.92533518465997mm", "Y:=", "135.7774796920494mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "48.694254134749784mm", "Y:=", "135.92942655063345mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.70780197294124mm", "Y:=", "136.80847193040483mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.816457412034936mm", "Y:=", "136.34925181176024mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.911565012937174mm", "Y:=", "135.01098631334423mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.89801717474572mm", "Y:=", "134.13194093357285mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.78936173565202mm", "Y:=", "134.59116105221747mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "48.694254134749784mm", "Y:=", "135.92942655063345mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "50.50646450432998mm", "Y:=", "133.77167457777236mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "52.723775382517374mm", "Y:=", "132.85323434048314mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "51.80533514522815mm", "Y:=", "130.63592346229575mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "49.588024267040765mm", "Y:=", "131.554363699585mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "50.50646450432998mm", "Y:=", "133.77167457777236mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "50.199191244269464mm", "YCenter:=", "129.89410018858885mm", "ZCenter:=", "0mm", "Radius:=", "1.0626182082933364mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "62.50901412729307mm", "Y:=", "126.09407524280388mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.59057389000385mm", "Y:=", "123.87676436461649mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.37326301181646mm", "Y:=", "124.79520460190571mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.29170324910569mm", "Y:=", "127.0125154800931mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.50901412729307mm", "Y:=", "126.09407524280388mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "57.98200441766049mm", "Y:=", "127.9692240606027mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.199315295847875mm", "Y:=", "127.05078382331348mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.28087505855865mm", "Y:=", "124.8334729451261mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.063564180371266mm", "Y:=", "125.75191318241532mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.98200441766049mm", "Y:=", "127.9692240606027mm", "Z:=", "0mm")),  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "59.58814831861917mm", "YCenter:=", "128.7110473343096mm", "ZCenter:=", "0mm", "Radius:=", "1.0626182082933349mm", "WhichAxis:=",  _
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

oEditor.CreateCircle Array("NAME:CircleParameters", "IsCovered:=", true, "XCenter:=",  _
  "61.89784715006438mm", "YCenter:=", "127.7543387538mm", "ZCenter:=", "0mm", "Radius:=", "1.0626182082933358mm", "WhichAxis:=",  _
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
  Array("NAME:PLPoint", "X:=", "59.52520987040055mm", "Y:=", "122.0262856518159mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.64616449062916mm", "Y:=", "123.03983349000734mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.10538460927377mm", "Y:=", "124.14848892910105mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.44365010768977mm", "Y:=", "124.24359653000329mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.32269548746116mm", "Y:=", "123.23004869181182mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.863475368816545mm", "Y:=", "122.12139325271812mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.52520987040055mm", "Y:=", "122.0262856518159mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "59.24260671533826mm", "Y:=", "124.74108499186829mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.32416647804904mm", "Y:=", "122.5237741136809mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.10685559986165mm", "Y:=", "123.44221435097013mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.02529583715088mm", "Y:=", "125.65952522915751mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.24260671533826mm", "Y:=", "124.74108499186829mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "54.753865348926084mm", "Y:=", "126.70862176292492mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.67230558621531mm", "Y:=", "128.92593264111233mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "57.88961646440269mm", "Y:=", "128.00749240382308mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.971176227113475mm", "Y:=", "125.7901815256357mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "54.753865348926084mm", "Y:=", "126.70862176292492mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "55.65709163916046mm", "Y:=", "129.035537975905mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "56.57553187644969mm", "Y:=", "131.25284885409238mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "58.333622635992455mm", "Y:=", "129.22575317770946mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "55.65709163916046mm", "Y:=", "129.035537975905mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "59.436201460035086mm", "Y:=", "131.4799662843994mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.449749298226536mm", "Y:=", "132.3590116641708mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.55840473732023mm", "Y:=", "131.89979154552617mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.65351233822247mm", "Y:=", "130.5615260471102mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "60.63996450003101mm", "Y:=", "129.68248066733878mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.53130906093732mm", "Y:=", "130.1417007859834mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "59.436201460035086mm", "Y:=", "131.4799662843994mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "61.28668017283567mm", "Y:=", "129.4146022647961mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.2051204101249mm", "Y:=", "131.63191314298348mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "64.42243128831228mm", "Y:=", "130.71347290569426mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.503991051023064mm", "Y:=", "128.49616202750687mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.28668017283567mm", "Y:=", "129.4146022647961mm", "Z:=", "0mm")),  _
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
  Array("NAME:PLPoint", "X:=", "63.57954093326391mm", "Y:=", "128.41724298485306mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "65.79685181145129mm", "Y:=", "127.49880274756384mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.76975613506838mm", "Y:=", "125.74071198802108mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.57954093326391mm", "Y:=", "128.41724298485306mm", "Z:=", "0mm")),  _
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

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true,  _
  Array("NAME:PolylinePoints",  _
  Array("NAME:PLPoint", "X:=", "61.68296184326166mm", "Y:=", "123.83849602139611mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "62.601402080550876mm", "Y:=", "126.0558068995835mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "64.81871295873826mm", "Y:=", "125.13736666229428mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "63.90027272144904mm", "Y:=", "122.92005578410689mm", "Z:=", "0mm"),  _
  Array("NAME:PLPoint", "X:=", "61.68296184326166mm", "Y:=", "123.83849602139611mm", "Z:=", "0mm")),  _
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


Set oModule = oDesign.GetModule("BoundarySetup")

oModule.AssignCoil Array("NAME:square_Conductor_1", "Objects:=", Array("square_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_1", "Objects:=", Array("triangle_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_1", "Objects:=", Array("hexagon_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_2", "Objects:=", Array("hexagon_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_1", "Objects:=", Array("circle_Conductor_1"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_2", "Objects:=", Array("triangle_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_3", "Objects:=", Array("hexagon_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_2", "Objects:=", Array("circle_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_2", "Objects:=", Array("square_Conductor_2"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_3", "Objects:=", Array("square_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_4", "Objects:=", Array("square_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_4", "Objects:=", Array("hexagon_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_3", "Objects:=", Array("triangle_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_5", "Objects:=", Array("square_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_6", "Objects:=", Array("square_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_7", "Objects:=", Array("square_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_5", "Objects:=", Array("hexagon_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_4", "Objects:=", Array("triangle_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_5", "Objects:=", Array("triangle_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_8", "Objects:=", Array("square_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_9", "Objects:=", Array("square_Conductor_9"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_10", "Objects:=", Array("square_Conductor_10"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_11", "Objects:=", Array("square_Conductor_11"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_6", "Objects:=", Array("hexagon_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_12", "Objects:=", Array("square_Conductor_12"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_13", "Objects:=", Array("square_Conductor_13"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_3", "Objects:=", Array("circle_Conductor_3"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_14", "Objects:=", Array("square_Conductor_14"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_7", "Objects:=", Array("hexagon_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_6", "Objects:=", Array("triangle_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_15", "Objects:=", Array("square_Conductor_15"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_16", "Objects:=", Array("square_Conductor_16"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_17", "Objects:=", Array("square_Conductor_17"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_8", "Objects:=", Array("hexagon_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_18", "Objects:=", Array("square_Conductor_18"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_4", "Objects:=", Array("circle_Conductor_4"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_19", "Objects:=", Array("square_Conductor_19"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_20", "Objects:=", Array("square_Conductor_20"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_5", "Objects:=", Array("circle_Conductor_5"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:circle_Conductor_6", "Objects:=", Array("circle_Conductor_6"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_9", "Objects:=", Array("hexagon_Conductor_9"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_21", "Objects:=", Array("square_Conductor_21"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_22", "Objects:=", Array("square_Conductor_22"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_7", "Objects:=", Array("triangle_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:hexagon_Conductor_10", "Objects:=", Array("hexagon_Conductor_10"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_23", "Objects:=", Array("square_Conductor_23"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_8", "Objects:=", Array("triangle_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_24", "Objects:=", Array("square_Conductor_24"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:square_Conductor_25", "Objects:=", Array("square_Conductor_25"), "Conductor number:=",  _
  "1", "PolarityType:=", "Negative")
oModule.AssignCoil Array("NAME:triangle_Conductor_9", "Objects:=", Array("triangle_Conductor_9"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_11", "Objects:=", Array("hexagon_Conductor_11"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_12", "Objects:=", Array("hexagon_Conductor_12"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_7", "Objects:=", Array("circle_Conductor_7"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_10", "Objects:=", Array("triangle_Conductor_10"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_13", "Objects:=", Array("hexagon_Conductor_13"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_8", "Objects:=", Array("circle_Conductor_8"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_26", "Objects:=", Array("square_Conductor_26"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_27", "Objects:=", Array("square_Conductor_27"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_28", "Objects:=", Array("square_Conductor_28"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_14", "Objects:=", Array("hexagon_Conductor_14"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_11", "Objects:=", Array("triangle_Conductor_11"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_29", "Objects:=", Array("square_Conductor_29"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_30", "Objects:=", Array("square_Conductor_30"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_31", "Objects:=", Array("square_Conductor_31"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_15", "Objects:=", Array("hexagon_Conductor_15"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_12", "Objects:=", Array("triangle_Conductor_12"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_13", "Objects:=", Array("triangle_Conductor_13"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_32", "Objects:=", Array("square_Conductor_32"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_33", "Objects:=", Array("square_Conductor_33"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_34", "Objects:=", Array("square_Conductor_34"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_35", "Objects:=", Array("square_Conductor_35"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_16", "Objects:=", Array("hexagon_Conductor_16"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_36", "Objects:=", Array("square_Conductor_36"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_37", "Objects:=", Array("square_Conductor_37"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_9", "Objects:=", Array("circle_Conductor_9"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_38", "Objects:=", Array("square_Conductor_38"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_17", "Objects:=", Array("hexagon_Conductor_17"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_14", "Objects:=", Array("triangle_Conductor_14"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_39", "Objects:=", Array("square_Conductor_39"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_40", "Objects:=", Array("square_Conductor_40"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_41", "Objects:=", Array("square_Conductor_41"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_18", "Objects:=", Array("hexagon_Conductor_18"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_42", "Objects:=", Array("square_Conductor_42"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_10", "Objects:=", Array("circle_Conductor_10"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_43", "Objects:=", Array("square_Conductor_43"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_44", "Objects:=", Array("square_Conductor_44"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_11", "Objects:=", Array("circle_Conductor_11"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:circle_Conductor_12", "Objects:=", Array("circle_Conductor_12"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_19", "Objects:=", Array("hexagon_Conductor_19"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_45", "Objects:=", Array("square_Conductor_45"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_46", "Objects:=", Array("square_Conductor_46"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_15", "Objects:=", Array("triangle_Conductor_15"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:hexagon_Conductor_20", "Objects:=", Array("hexagon_Conductor_20"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_47", "Objects:=", Array("square_Conductor_47"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:triangle_Conductor_16", "Objects:=", Array("triangle_Conductor_16"), "Conductor number:=",  _
  "1", "PolarityType:=", "Positive")
oModule.AssignCoil Array("NAME:square_Conductor_48", "Objects:=", Array("square_Conductor_48"), "Conductor number:=",  _
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
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_1", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_1", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_1", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_2", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_9", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_10", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_11", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_12", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_13", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_3", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_14", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_15", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_16", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_17", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_18", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_4", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_19", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_20", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_5", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_6", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_9", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_21", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_22", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_10", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_23", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_24", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_25", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_9", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_11", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_12", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_7", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_10", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_13", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_8", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_26", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_27", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_28", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_14", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_11", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_29", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_30", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_31", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_15", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_12", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_13", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_32", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_33", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_34", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_35", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_16", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_36", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_37", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_9", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_38", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_17", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_14", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_39", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_40", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_41", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_18", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_42", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_10", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_43", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_44", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_11", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "circle_Conductor_12", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_19", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_45", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_46", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_15", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "hexagon_Conductor_20", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_47", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "triangle_Conductor_16", "Eddy Effect:=", true),  _
  Array("NAME:Data", "Object Name:=", "square_Conductor_48",  _
  "Eddy Effect:=", true)))

oModule.AddWindingCoils "phase_A_Solid", Array("square_Conductor_1",  _
  "triangle_Conductor_1", "hexagon_Conductor_1", "hexagon_Conductor_2",   _
  "circle_Conductor_1", "triangle_Conductor_2", "hexagon_Conductor_3",   _
  "circle_Conductor_2", "square_Conductor_2", "square_Conductor_3",   _
  "square_Conductor_4", "hexagon_Conductor_4", "triangle_Conductor_3",   _
  "square_Conductor_5", "square_Conductor_6", "square_Conductor_7",   _
  "hexagon_Conductor_5", "triangle_Conductor_4", "triangle_Conductor_5",   _
  "square_Conductor_8", "square_Conductor_9", "square_Conductor_10",   _
  "square_Conductor_11", "hexagon_Conductor_6", "square_Conductor_12",   _
  "square_Conductor_13", "circle_Conductor_3", "square_Conductor_14",   _
  "hexagon_Conductor_7", "triangle_Conductor_6", "square_Conductor_15",   _
  "square_Conductor_16", "square_Conductor_17", "hexagon_Conductor_8",   _
  "square_Conductor_18", "circle_Conductor_4", "square_Conductor_19",   _
  "square_Conductor_20", "circle_Conductor_5", "circle_Conductor_6",   _
  "hexagon_Conductor_9", "square_Conductor_21", "square_Conductor_22",   _
  "triangle_Conductor_7", "hexagon_Conductor_10", "square_Conductor_23",   _
  "triangle_Conductor_8", "square_Conductor_24", "square_Conductor_25",   _
  "triangle_Conductor_9", "hexagon_Conductor_11", "hexagon_Conductor_12",   _
  "circle_Conductor_7", "triangle_Conductor_10", "hexagon_Conductor_13",   _
  "circle_Conductor_8", "square_Conductor_26", "square_Conductor_27",   _
  "square_Conductor_28", "hexagon_Conductor_14", "triangle_Conductor_11",   _
  "square_Conductor_29", "square_Conductor_30", "square_Conductor_31",   _
  "hexagon_Conductor_15", "triangle_Conductor_12", "triangle_Conductor_13",   _
  "square_Conductor_32", "square_Conductor_33", "square_Conductor_34",   _
  "square_Conductor_35", "hexagon_Conductor_16", "square_Conductor_36",   _
  "square_Conductor_37", "circle_Conductor_9", "square_Conductor_38",   _
  "hexagon_Conductor_17", "triangle_Conductor_14", "square_Conductor_39",   _
  "square_Conductor_40", "square_Conductor_41", "hexagon_Conductor_18",   _
  "square_Conductor_42", "circle_Conductor_10", "square_Conductor_43",   _
  "square_Conductor_44", "circle_Conductor_11", "circle_Conductor_12",   _
  "hexagon_Conductor_19", "square_Conductor_45", "square_Conductor_46",   _
  "triangle_Conductor_15", "hexagon_Conductor_20", "square_Conductor_47",   _
  "triangle_Conductor_16", "square_Conductor_48")

oDesign.AnalyzeAll
Set oModule = oDesign.GetModule("ReportSetup")
oModule.ExportToFile "max_Torque", "C:/Users/John McKay/Desktop/simulation_Source/data_7/Stage_1_Orderly_CN_10876/max_Torque_10876.csv", false
oModule.ExportToFile "max_Loss", "C:/Users/John McKay/Desktop/simulation_Source/data_7/Stage_1_Orderly_CN_10876/max_Loss_10876.csv", false
oProject.Save
oDesktop.CloseProject "simulation_CN_10876"
oDesktop.QuitApplication
