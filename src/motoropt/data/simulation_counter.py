"""
simulation_counter.py

Reads and updates the simulation / coil counter used by the optimisation workflow.

This module is the cleaned version of the legacy `ini_File_Creator.py`.
It preserves the original idea:

    read counter -> use counter for folder/file naming -> increment counter

The counter is stored in an INI file so that separate simulation runs can keep
track of the current coil / simulation number.

John McKay 2026
"""

import configparser
from pathlib import Path


SECTION_NAME = "Coil Counter"
COUNTER_NAME = "Coil Number"


def create_counter_file(counter_file: str | Path, initial_value: int = 0) -> None:
    """
    Create a new counter INI file.

    Parameters
    ----------
    counter_file:
        Path to the INI file that will store the counter.

    initial_value:
        Starting value for the simulation / coil counter.
    """
    config = configparser.ConfigParser()
    config[SECTION_NAME] = {
        COUNTER_NAME: str(initial_value)
    }

    counter_path = Path(counter_file)
    counter_path.parent.mkdir(parents=True, exist_ok=True)

    with counter_path.open("w") as file:
        config.write(file)


def read_counter(counter_file: str | Path) -> int:
    """
    Read the current simulation / coil counter value from an INI file.

    Parameters
    ----------
    counter_file:
        Path to the INI file that stores the counter.

    Returns
    -------
    int
        Current simulation / coil counter value.
    """
    config = configparser.ConfigParser()
    config.read(counter_file)

    return int(config[SECTION_NAME][COUNTER_NAME])


def update_counter(counter_file: str | Path) -> int:
    """
    Increment the simulation / coil counter by one.

    Parameters
    ----------
    counter_file:
        Path to the INI file that stores the counter.

    Returns
    -------
    int
        Updated counter value.
    """
    config = configparser.ConfigParser()
    config.read(counter_file)

    current_value = int(config[SECTION_NAME][COUNTER_NAME])
    updated_value = current_value + 1

    config.set(SECTION_NAME, COUNTER_NAME, str(updated_value))

    with Path(counter_file).open("w") as file:
        config.write(file)

    return updated_value