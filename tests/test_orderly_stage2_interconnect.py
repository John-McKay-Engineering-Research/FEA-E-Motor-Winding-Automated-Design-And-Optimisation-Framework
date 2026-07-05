"""
Tests for motoropt.optislang.orderly_stage2_interconnect.

These tests check the OptiSLang variable handling without running Maxwell.

John McKay 2026

"""

import importlib
from unittest.mock import patch


def test_interconnect_runs_with_default_shape_values():
    with patch(
        "motoropt.experiments.orderly_stage2_experiment.run_orderly_stage2_experiment",
        return_value=(95.0, 1200.0),
    ) as mock_experiment:
        module = importlib.import_module(
            "motoropt.optislang.orderly_stage2_interconnect"
        )

    assert module.motor_Efficiency == 95.0
    assert module.motor_Losses == 1200.0

    scale_array = mock_experiment.call_args.kwargs["scale_array"]
    shape_array = mock_experiment.call_args.kwargs["shape_list"]

    assert len(scale_array) == 48
    assert len(shape_array) == 48
    assert shape_array == [0.0] * 48