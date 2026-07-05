"""
Tests for motoropt.experiments.layers_stage5_experiment.

These tests avoid launching Ansys Maxwell by using run_maxwell=False
and mocking result-reading / plotting / Excel-writing steps.

John McKay 2026

"""

from unittest.mock import patch

from layers_stage5_experiment import (
    get_Fill_Factor,
    get_Coil_Mass,
    run_layers_stage5_experiment,
)

def test_get_coil_mass_layers_stage5():
    coil_mass_array = [1.0, 2.0, 3.0]

    coil_mass = get_coil_mass(coil_mass_array)

    assert coil_mass > 0


def test_get_fill_factor_layers_stage5():
    coil_mass_array = [10.0, 20.0, 30.0]

    fill_factor = get_fill_factor(coil_mass_array)

    assert fill_factor == ((10.0 + 20.0 + 30.0) / (25 * 20)) * 100


def test_run_layers_stage5_experiment_without_maxwell(tmp_path):
    counter_file = tmp_path / "coil_counter.ini"
    output_directory = tmp_path / "simulation_outputs"

    layer_count = 6
    layer_array = [18, 16, 22, 16, 14, 14]
    shape_list = [4] * 48
    scale_list = [1.0] * 48
    x_position = [1.0] * 48
    y_position = [1.0] * 48
    rotation_list = [0.0] * 48

    with patch(
        "motoropt.experiments.layers_stage5_experiment.read_losses_data",
        return_value=10000.0,
    ), patch(
        "motoropt.experiments.layers_stage5_experiment.read_torque_data",
        return_value=100.0,
    ), patch(
        "motoropt.experiments.layers_stage5_experiment.write_coil_to_excel",
    ), patch(
        "motoropt.experiments.layers_stage5_experiment.pyplot.savefig",
    ):
        efficiency, losses = run_layers_stage5_experiment(
            layer_count=layer_count,
            layer_array=layer_array,
            shape_list=shape_list,
            scale_list=scale_list,
            x_position=x_position,
            y_position=y_position,
            rotation_list=rotation_list,
            base_output_directory=output_directory,
            counter_file=counter_file,
            run_maxwell=False,
        )

    assert efficiency > 0
    assert losses == 2000.0
    assert counter_file.exists()

    created_directories = list(output_directory.iterdir())
    assert len(created_directories) == 1

    simulation_directory = created_directories[0]
    assert simulation_directory.is_dir()
    assert simulation_directory.name == "Stage_1_Layered_CN_0"

    vbs_file = simulation_directory / "Vbs_Script_CN_0.vbs"
    assert vbs_file.exists()