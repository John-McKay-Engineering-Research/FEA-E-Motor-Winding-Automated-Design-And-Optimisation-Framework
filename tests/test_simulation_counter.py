"""
Tests for motoropt.data.simulation_counter.

John McKay 2026
"""

#from motoropt.data.simulation_counter import (
#    create_counter_file,
#    read_counter,
#    update_counter,
#)

from simulation_counter import(
    create_counter_file,
    read_counter,
    update_counter
)

def test_create_counter_file(tmp_path):
    counter_file = tmp_path / "coil_counter.ini"

    create_counter_file(counter_file, initial_value=0)

    assert counter_file.exists()
    assert read_counter(counter_file) == 0


def test_create_counter_file_with_custom_initial_value(tmp_path):
    counter_file = tmp_path / "coil_counter.ini"

    create_counter_file(counter_file, initial_value=42)

    assert read_counter(counter_file) == 42


def test_update_counter(tmp_path):
    counter_file = tmp_path / "coil_counter.ini"

    create_counter_file(counter_file, initial_value=10)
    updated_value = update_counter(counter_file)

    assert updated_value == 11
    assert read_counter(counter_file) == 11


def test_update_counter_multiple_times(tmp_path):
    counter_file = tmp_path / "coil_counter.ini"

    create_counter_file(counter_file, initial_value=0)

    update_counter(counter_file)
    update_counter(counter_file)
    update_counter(counter_file)

    assert read_counter(counter_file) == 3