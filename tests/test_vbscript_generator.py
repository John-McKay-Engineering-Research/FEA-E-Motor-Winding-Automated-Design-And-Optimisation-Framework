"""
Tests for motoropt.maxwell.vbscript_generator.

These tests do not validate Ansys Maxwell itself.
They check that the generated VBS script contains the key Maxwell automation
sections in the expected execution order.

John McKay 2026

"""

from shapely.geometry import box


from motoropt.maxwell.vbscript_generator import (
    create_dynamic_vbs_script,
    write_vbs_file,
)

def test_create_dynamic_vbs_script_contains_key_sections_in_order(tmp_path):
    conductor_array_1 = [box(0, 0, 1, 1)]
    conductor_array_2 = [box(2, 0, 3, 1)]
    shape_array = ["Square"]
    skin_depth_array = [False]

    script = create_dynamic_vbs_script(
        conductor_array_1=conductor_array_1,
        conductor_array_2=conductor_array_2,
        shape_array=shape_array,
        skin_depth_array=skin_depth_array,
        print_to_file=False,
        file_path=tmp_path / "test.vbs",
        directory=tmp_path,
        coil_number=1,
    )

    expected_order = [
        'Set oAnsoftApp = CreateObject("Ansoft.ElectronicsDesktop")',
        "Set oDesktop = oAnsoftApp.GetAppDesktop()",
        "oDesktop.RestoreWindow",
        "oDesktop.OpenProject",
        "oProject.SaveAs",
        "Set oDesign = oProject.SetActiveDesign",
        "oDesign.RenameDesignInstance",
        'Set oEditor = oDesign.SetActiveEditor("3D Modeler")',
        "oEditor.CreatePolyline",
        "' ***Second Coil begins here***",
        'Set oModule = oDesign.GetModule("BoundarySetup")',
        "oModule.AssignCoil",
        "oModule.SetEddyEffect",
        'oModule.AddWindingCoils "phase_A_Solid"',
        "oDesign.AnalyzeAll",
        'Set oModule = oDesign.GetModule("ReportSetup")',
        'oModule.ExportToFile "max_Torque"',
        'oModule.ExportToFile "max_Loss"',
        "oProject.Save",
        "oDesktop.CloseProject",
        "oDesktop.QuitApplication",
    ]

    previous_index = -1

    for expected_text in expected_order:
        current_index = script.find(expected_text)

        assert current_index != -1
        assert current_index > previous_index

        previous_index = current_index


def test_write_vbs_file_creates_file(tmp_path):
    output_file = tmp_path / "test_script.vbs"
    script_text = "Dim oAnsoftApp\n"

    write_vbs_file(script_text, output_file)

    assert output_file.exists()
    assert output_file.read_text() == script_text