"""
orderly_stage2_interconnect.py

OptiSLang interconnect script for the Orderly Stage 2 experiment.

This is the cleaned version of the legacy
`optislang_Interconnect_Orderly_Stage2.py`.

Important:
The explicit try/except variable blocks are intentionally preserved.

OptiSLang injects design variable values directly into this script namespace.
In the original workflow, each OptiSLang variable was defined individually
inside the OptiSLang project. Although the blocks are repetitive, keeping the
explicit variable names helps preserve compatibility with that integration.

John McKay 2026

"""

from motoropt.experiments.orderly_stage2_experiment import run_orderly_stage2_experiment


# "Square" = 1
# "Circle" = 2
# "Triangle" = 3
# "Hexagon" = 4


try:
    shape_1 = n_
except NameError:
    shape_1 = 0.0

try:
    shape_2 = n1_
except NameError:
    shape_2 = 0.0

try:
    shape_3 = n2_
except NameError:
    shape_3 = 0.0

try:
    shape_4 = n3_
except NameError:
    shape_4 = 0.0

try:
    shape_5 = n4_
except NameError:
    shape_5 = 0.0

try:
    shape_6 = n5_
except NameError:
    shape_6 = 0.0

try:
    shape_7 = n6_
except NameError:
    shape_7 = 0.0

try:
    shape_8 = n7_
except NameError:
    shape_8 = 0.0

try:
    shape_9 = n8_
except NameError:
    shape_9 = 0.0

try:
    shape_10 = n9_
except NameError:
    shape_10 = 0.0

try:
    shape_11 = n10_
except NameError:
    shape_11 = 0.0

try:
    shape_12 = n11_
except NameError:
    shape_12 = 0.0

try:
    shape_13 = n12_
except NameError:
    shape_13 = 0.0

try:
    shape_14 = n13_
except NameError:
    shape_14 = 0.0

try:
    shape_15 = n14_
except NameError:
    shape_15 = 0.0

try:
    shape_16 = n15_
except NameError:
    shape_16 = 0.0

try:
    shape_17 = n16_
except NameError:
    shape_17 = 0.0

try:
    shape_18 = n17_
except NameError:
    shape_18 = 0.0

try:
    shape_19 = n18_
except NameError:
    shape_19 = 0.0

try:
    shape_20 = n19_
except NameError:
    shape_20 = 0.0

try:
    shape_21 = n20_
except NameError:
    shape_21 = 0.0

try:
    shape_22 = n21_
except NameError:
    shape_22 = 0.0

try:
    shape_23 = n22_
except NameError:
    shape_23 = 0.0

try:
    shape_24 = n23_
except NameError:
    shape_24 = 0.0

try:
    shape_25 = n24_
except NameError:
    shape_25 = 0.0

try:
    shape_26 = n25_
except NameError:
    shape_26 = 0.0

try:
    shape_27 = n26_
except NameError:
    shape_27 = 0.0

try:
    shape_28 = n27_
except NameError:
    shape_28 = 0.0

try:
    shape_29 = n28_
except NameError:
    shape_29 = 0.0

try:
    shape_30 = n29_
except NameError:
    shape_30 = 0.0

try:
    shape_31 = n30_
except NameError:
    shape_31 = 0.0

try:
    shape_32 = n31_
except NameError:
    shape_32 = 0.0

try:
    shape_33 = n32_
except NameError:
    shape_33 = 0.0

try:
    shape_34 = n33_
except NameError:
    shape_34 = 0.0

try:
    shape_35 = n34_
except NameError:
    shape_35 = 0.0

try:
    shape_36 = n35_
except NameError:
    shape_36 = 0.0

try:
    shape_37 = n36_
except NameError:
    shape_37 = 0.0

try:
    shape_38 = n37_
except NameError:
    shape_38 = 0.0

try:
    shape_39 = n38_
except NameError:
    shape_39 = 0.0

try:
    shape_40 = n39_
except NameError:
    shape_40 = 0.0

try:
    shape_41 = n40_
except NameError:
    shape_41 = 0.0

try:
    shape_42 = n41_
except NameError:
    shape_42 = 0.0

try:
    shape_43 = n42_
except NameError:
    shape_43 = 0.0

try:
    shape_44 = n43_
except NameError:
    shape_44 = 0.0

try:
    shape_45 = n44_
except NameError:
    shape_45 = 0.0

try:
    shape_46 = n45_
except NameError:
    shape_46 = 0.0

try:
    shape_47 = n46_
except NameError:
    shape_47 = 0.0

try:
    shape_48 = n47_
except NameError:
    shape_48 = 0.0

# these values may be fixed depending on the previous stage values
SCALE_ARRAY = [
    3.099995666921301, 3.0997261819778172, 3.099630028211405,
    3.0999999999999996, 3.0999999999999996, 3.0999999999999996,
    2.199, 3.0999999999999996, 3.0999999999999996,
    3.0967848077396436, 3.0999999999999996, 3.0999999999999996,
    3.091, 3.0999999999999996, 3.0991255797343573,
    3.0990129301669382, 3.0992698728305923, 3.0999999999999996,
    3.0999999999999996, 3.099545723440606, 3.0999999999999996,
    3.098160673498705, 3.099811164464196, 3.0999999999999996,
    3.0999999999999996, 3.0998467675765022, 3.0999999999999996,
    3.0996573526980375, 3.0999999999999996, 3.0999999999999996,
    3.0999999999999996, 3.0999846856865476, 3.0999999999999996,
    2.800013389034354, 3.0999999999999996, 3.0999999999999996,
    3.0975408007735368, 3.0999897925897413, 2.825,
    3.0999999999999996, 3.0999999999999996, 3.0999999999999996,
    2.183, 1.478, 1.615, 3.0848119754032597,
    3.0999999999999996, 2.561,
]


shape_Array = [
    shape_1, shape_2, shape_3, shape_4, shape_5, shape_6,
    shape_7, shape_8, shape_9, shape_10, shape_11, shape_12,
    shape_13, shape_14, shape_15, shape_16, shape_17, shape_18,
    shape_19, shape_20, shape_21, shape_22, shape_23, shape_24,
    shape_25, shape_26, shape_27, shape_28, shape_29, shape_30,
    shape_31, shape_32, shape_33, shape_34, shape_35, shape_36,
    shape_37, shape_38, shape_39, shape_40, shape_41, shape_42,
    shape_43, shape_44, shape_45, shape_46, shape_47, shape_48,
]


motor_Efficiency, motor_Losses = run_orderly_stage2_experiment(
    scale_array=SCALE_ARRAY,
    shape_list=shape_Array,
)


print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)