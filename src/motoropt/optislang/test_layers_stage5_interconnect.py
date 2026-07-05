"""
Tests for motoropt.optislang.layers_stage5_interconnect.

These tests check the OptiSLang adapter behaviour without running Maxwell.

John McKay 2026

"""

import importlib
from unittest.mock import patch


def test_layers_stage5_interconnect_runs_with_default_rotation_values():
    with patch(
        "layers_stage5_experiment.run_layers_stage5_experiment",
        return_value=(96.0, 1100.0),
    ) as mock_experiment:
        module = importlib.import_module(
            "layers_stage5_interconnect"
        )

    assert module.motor_Efficiency == 96.0
    assert module.motor_Losses == 1100.0

    kwargs = mock_experiment.call_args.kwargs

    assert len(kwargs["layer_array"]) == 6
    assert len(kwargs["shape_list"]) == 48
    assert len(kwargs["scale_list"]) == 48
    assert len(kwargs["x_position"]) == 48
    assert len(kwargs["y_position"]) == 48
    assert len(kwargs["rotation_list"]) == 48

    assert kwargs["rotation_list"] == [0.0] * 48