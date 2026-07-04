"""
Tests for motoropt.data.directory_manager.

John McKay 2026
"""

from motoropt.data.directory_manager import (
    build_simulation_folder_name,
    build_simulation_directory_path,
    create_simulation_directory,
    )


def test_build_simulation_folder_name():
    folder_name = build_simulation_folder_name(
        stage_name="Stage_1",
        experiment_name="Orderly",
        run_id=42,
    )

    assert folder_name == "Stage_1_Orderly_CN_42"
    # test to see if folder_name == "Stage_1_Orderly_CN_42".
    # thorws an assert error if not.


def test_build_simulation_directory_path(tmp_path):
    directory_path = build_simulation_directory_path(
        base_directory=tmp_path,
        stage_name="Stage_1",
        experiment_name="Orderly",
        run_id=42,
    )

    expected_path = tmp_path / "Stage_1_Orderly_CN_42"
    # join tmp_path with "Stage_1_Orderly_CN_42", output should read something like,
    # Path("C:/simulation_results/Stage_1_Orderly_CN_42")

    assert directory_path == expected_path


def test_create_simulation_directory(tmp_path):
    simulation_directory = create_simulation_directory(
        base_directory=tmp_path,
        stage_name="Stage_1",
        experiment_name="Orderly",
        run_id=42,
    )

    assert simulation_directory.exists()
    assert simulation_directory.is_dir()
    assert simulation_directory.name == "Stage_1_Orderly_CN_42"