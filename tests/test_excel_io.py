"""
Tests for motoropt.data.excel_io.

john McKay 2026

"""

import pandas as pd
from shapely.geometry import box

#from motoropt.data.excel_io import (
#    write_coil_to_excel,
#    read_losses_data,
#    read_torque_data,
#)

from excel_io import(
    write_coil_to_excel,
    read_losses_data,
    read_torque_data,
)

def test_write_coil_to_excel(tmp_path):
    shape_array = ["Square"]
    conductor_array = [box(0, 0, 1, 1)]
    scale_array = [1.0]
    rotation_array = [0]

    output_file = write_coil_to_excel(
        shape_array=shape_array,
        conductor_array=conductor_array,
        scale_array=scale_array,
        rotation_array=rotation_array,
        coil_weight=0.5,
        coil_fill_factor=0.75,
        efficiency=0.95,
        total_losses=100,
        output_directory=tmp_path,
        coil_number=1,
    )

    assert output_file.exists()
    assert output_file.name == "coil_1.xlsx"


def test_read_torque_data(tmp_path):
    torque_file = tmp_path / "max_Torque_1.csv"

    torque_data = pd.DataFrame({
        "Time": [0],
        "Torque": [12.5],
    })

    torque_data.to_csv(torque_file, index=False)

    torque = read_torque_data(
        directory_path=tmp_path,
        slot_number=1,
    )

    assert torque == 12.5


def test_read_losses_data(tmp_path):
    loss_file = tmp_path / "max_Loss_1.csv"

    # The reader expects values at columns 1, 4, 10 and 13.
    # This dummy row gives the test CSV the same column positions as the
    # Maxwell-generated output used in the original workflow.
    loss_row = [[0] * 14]

    loss_row[0][1] = 1.0   # core loss
    loss_row[0][4] = 2.0   # eddy current loss
    loss_row[0][10] = 3.0  # hysteresis loss
    loss_row[0][13] = 4.0  # solid loss

    loss_data = pd.DataFrame(loss_row)
    loss_data.to_csv(loss_file, index=False)

    total_loss = read_losses_data(
        directory_path=tmp_path,
        slot_number=1,
    )

    expected_loss = (((4.0 - 0.978303901135658) * 6) + 1.0 + 2.0 + 3.0) * 1000

    assert total_loss == expected_loss