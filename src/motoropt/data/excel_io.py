"""
excel_io.py

Reads and writes simulation data files used by the motor optimisation workflow.

This module is the cleaned version of the legacy `excel_Tool.py`.

Main responsibilities:
- write coil/conductor geometry data to Excel
- read Maxwell loss CSV files
- read Maxwell torque CSV files

John McKay 2026

"""

from pathlib import Path
from datetime import date

import pandas as pd


MAGNET_LOSS_KW = 0.978303901135658


def write_coil_to_excel(
    shape_array,
    conductor_array,
    scale_array,
    rotation_array,
    coil_weight,
    coil_fill_factor,
    efficiency,
    total_losses,
    output_directory,
    coil_number,
):
    """
    Write coil geometry and performance data to an Excel file.

    This preserves the structure used in the legacy PhD workflow:
    a metadata row is written first, followed by one row per conductor.
    """
    output_directory = Path(output_directory)
    output_file = output_directory / f"coil_{coil_number}.xlsx"

    rows = []

    metadata_row = [
        str(date.today()),
        f"coil Configuration Number = {coil_number}",
        f"coil Weight in Kg = {coil_weight}",
        f"coil Fill Factor = {coil_fill_factor}",
        f"coil Efficiency = {efficiency}",
        f"coil Losses = {total_losses}",
    ]

    rows.append(metadata_row)

    shape_counts = {
        "Circle": 0,
        "Square": 0,
        "Triangle": 0,
        "Hexagon": 0,
    }

    for index in range(len(shape_array)):
        shape_name = shape_array[index]
        conductor = conductor_array[index]

        shape_counts[shape_name] += 1

        row = [
            f"{shape_name}{shape_counts[shape_name]}",
            "operation = ",
            f"scale_Factor = {scale_array[index]}",
        ]

        if rotation_array is None:
            row.append("rotation = ")
        else:
            row.append(f"rotation = {rotation_array[index]}")

        row.append(f"centroid = {conductor.centroid.x},{conductor.centroid.y}")

        for coordinate in list(conductor.exterior.coords):
            row.append(coordinate)

        rows.append(row)

    coil_dataframe = pd.DataFrame(rows)

    coil_dataframe.to_excel(
        output_file,
        sheet_name=f"coil_Number_{coil_number}",
        index=False,
    )

    return output_file


def read_losses_data(directory_path, slot_number):
    """
    Read Maxwell loss output data and calculate total machine losses in watts.

    The legacy workflow reads specific columns from the first row:
    - column 1: core loss
    - column 4: eddy current loss
    - column 10: hysteresis loss
    - column 13: solid loss

    Maxwell output is treated as kW, then converted to W.
    """
    directory_path = Path(directory_path)
    loss_file = directory_path / f"max_Loss_{slot_number}.csv"

    loss_data = pd.read_csv(loss_file)

    core_loss = loss_data.iloc[0, 1]
    eddy_current_loss = loss_data.iloc[0, 4]
    hysteresis_loss = loss_data.iloc[0, 10]
    solid_loss = loss_data.iloc[0, 13]

    total_loss = (
        ((solid_loss - MAGNET_LOSS_KW) * 6)
        + core_loss
        + eddy_current_loss
        + hysteresis_loss
    ) * 1000

    return total_loss


def read_torque_data(directory_path, slot_number):
    """
    Read Maxwell torque output data.

    The torque value is read from the first row, second column of the
    Maxwell-generated torque CSV file.
    """
    directory_path = Path(directory_path)
    torque_file = directory_path / f"max_Torque_{slot_number}.csv"

    torque_data = pd.read_csv(torque_file)

    torque_developed = torque_data.iloc[0, 1]

    return torque_developed