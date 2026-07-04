"""
directory_manager.py

Creates output folders for individual simulation runs.

This module is the cleaned version of the legacy `directory_Creator.py`.
It keeps the same basic responsibility:

    coil/simulation number -> folder name -> create folder -> return path

The simulation counter itself is handled separately by `simulation_counter.py`.

John McKay 2026
"""

from pathlib import Path


def build_simulation_folder_name(stage_name: str, experiment_name: str, run_id: int) -> str:
    """
    Build the folder name used for a single simulation run.

    Example
    -------
    Stage_1_Orderly_CN_42
    """
    return f"{stage_name}_{experiment_name}_CN_{run_id}"


def build_simulation_directory_path(
    base_directory: str | Path,
    stage_name: str,
    experiment_name: str,
    run_id: int,
) -> Path:
    """
    Build the full path for a simulation directory without creating it.
    """
    folder_name = build_simulation_folder_name(stage_name, experiment_name, run_id)
    return Path(base_directory) / folder_name


def create_simulation_directory(
    base_directory: str | Path,
    stage_name: str,
    experiment_name: str,
    run_id: int,
) -> Path:
    """
    Create a directory for a single simulation run and return its path.

    Parameters
    ----------
    base_directory:
        Root folder where all simulation folders are stored.

    stage_name:
        Experiment stage, for example "Stage_1".

    experiment_name:
        Experiment family/name, for example "Orderly".

    run_id:
        Coil number or simulation number.

    Returns
    -------
    Path
        Path to the created simulation directory.

    Raises
    ------
    FileExistsError
        If the simulation directory already exists.
    """
    simulation_directory = build_simulation_directory_path(
        base_directory=base_directory,
        stage_name=stage_name,
        experiment_name=experiment_name,
        run_id=run_id,
    )

    # `exist_ok=False` preserves the legacy behaviour:
    # if the folder already exists, Python raises an error rather than
    # silently overwriting or reusing a previous simulation folder.
    simulation_directory.mkdir(parents=True, exist_ok=False)

    return simulation_directory