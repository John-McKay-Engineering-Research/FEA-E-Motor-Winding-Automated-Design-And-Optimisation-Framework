"""
Tests for motoropt.experiments.orderly_stage2_experiment.

These tests avoid launching Ansys Maxwell by using run_maxwell=False
and mocking the result-reading / plotting / Excel-writing steps.

John Mckay 2026

"""

from pathlib import Path
from unittest.mock import patch

from orderly_stage2_experiment import (
    get_fill_factor,
    get_coil_mass,
    run_orderly_stage2_experiment,
)

def test_get_coil_mass():
    coil_mass_array = [1.0, 2.0, 3.0]

    coil_mass = get_coil_mass(coil_mass_array)

    assert coil_mass > 0


def test_get_fill_factor():
    coil_mass_array = [10.0, 20.0, 30.0]

    fill_factor = get_fill_factor(coil_mass_array)

    assert fill_factor == ((10.0 + 20.0 + 30.0) / (25 * 20)) * 100


def test_run_orderly_stage2_experiment_without_maxwell(tmp_path):
    counter_file = tmp_path / "coil_counter.ini"
    output_directory = tmp_path / "simulation_outputs"

    scale_array = [1.0] * 48
    shape_list = [1] * 48  # all squares

    with patch(
        "motoropt.experiments.orderly_stage2_experiment.read_losses_data",
        return_value=10000.0,
    ), patch(
        "motoropt.experiments.orderly_stage2_experiment.read_torque_data",
        return_value=100.0,
    ), patch(
        "motoropt.experiments.orderly_stage2_experiment.write_coil_to_excel"
    ), patch(
        "motoropt.experiments.orderly_stage2_experiment.pyplot.savefig"
    ):
        efficiency, losses = run_orderly_stage2_experiment(
            scale_array=scale_array,
            shape_list=shape_list,
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
    assert simulation_directory.name == "Stage_1_Orderly_CN_0"

    vbs_file = simulation_directory / "Vbs_Script_CN_0.vbs"
    assert vbs_file.exists()