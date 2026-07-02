import Experiment_2_Shape_Plus_Rotation

# default
conductor_1_Rotation = 0
conductor_2_Rotation = 0
conductor_3_Rotation = 0
conductor_4_Rotation = 0
conductor_5_Rotation = 0
conductor_6_Rotation = 0
conductor_7_Rotation = 0
conductor_8_Rotation = 0
conductor_9_Rotation = 0
conductor_10_Rotation = 0
conductor_11_Rotation = 0
conductor_12_Rotation = 0
conductor_13_Rotation = 0
conductor_14_Rotation = 0
conductor_15_Rotation = 0
conductor_16_Rotation = 0
conductor_17_Rotation = 0
conductor_18_Rotation = 0
conductor_19_Rotation = 0
conductor_20_Rotation = 0
conductor_21_Rotation = 0
conductor_22_Rotation = 0
conductor_23_Rotation = 360
conductor_24_Rotation = 0
conductor_25_Rotation = 0
conductor_26_Rotation = 0
conductor_27_Rotation = 0
conductor_28_Rotation = 0
conductor_29_Rotation = 0
conductor_30_Rotation = 0
conductor_31_Rotation = 0
conductor_32_Rotation = 0
conductor_33_Rotation = 0
conductor_34_Rotation = 0
conductor_35_Rotation = 0
conductor_36_Rotation = 360
conductor_37_Rotation = 0
conductor_38_Rotation = 0
conductor_39_Rotation = 360
conductor_40_Rotation = 0
conductor_41_Rotation = 0
conductor_42_Rotation = 0
conductor_43_Rotation = 0
conductor_44_Rotation = 0
conductor_45_Rotation = 0
conductor_46_Rotation = 0
conductor_47_Rotation = 0
conductor_48_Rotation = 0

# "Square" = 1, "Circle" = 2, "Triangle" = 3, "Hexagon" = 4
# updated for Random stage 3, start shape Triangle.
shape_1 = 2
shape_2 = 2
shape_3 = 2
shape_4 = 2
shape_5 = 2
shape_6 = 2
shape_7 = 3
shape_8 = 2
shape_9 = 1

shape_10 = 4
shape_11 = 1
shape_12 = 1
shape_13 = 2
shape_14 = 2
shape_15 = 2
shape_16 = 2
shape_17 = 2
shape_18 = 2
shape_19 = 2

shape_20 = 2
shape_21 = 2
shape_22 = 2
shape_23 = 2
shape_24 = 1
shape_25 = 2
shape_26 = 2
shape_27 = 2
shape_28 = 2
shape_29 = 2
shape_30 = 2

shape_31 = 2
shape_32 = 2
shape_33 = 2
shape_34 = 2
shape_35 = 2
shape_36 = 2
shape_37 = 2
shape_38 = 2
shape_39 = 2

shape_40 = 2
shape_41 = 2
shape_42 = 2
shape_43 = 4
shape_44 = 2
shape_45 = 2
shape_46 = 1
shape_47 = 4
shape_48 = 2


shape_Array = []
rotation_Array = []

zeta_C = 1.35  # not less than 1.1
zeta_N = 5  # not greater than 3 for multi-shapes, up to 5 for single shapes

shape_Array.extend([shape_1, shape_2, shape_3, shape_4, shape_5, shape_6, shape_7, shape_8, shape_9, shape_10,
                    shape_11, shape_12, shape_13,shape_14, shape_15, shape_16, shape_17, shape_18, shape_19, shape_20,
                    shape_21, shape_22, shape_23, shape_24, shape_25, shape_26, shape_27, shape_28, shape_29, shape_30,
                    shape_31, shape_32, shape_33, shape_34, shape_35, shape_36, shape_37, shape_38, shape_39, shape_40,
                    shape_41, shape_42, shape_43, shape_44, shape_45, shape_46, shape_47, shape_48])

rotation_Array.extend([conductor_1_Rotation, conductor_2_Rotation, conductor_3_Rotation, conductor_4_Rotation, conductor_5_Rotation, conductor_6_Rotation,
                       conductor_7_Rotation, conductor_8_Rotation, conductor_9_Rotation, conductor_10_Rotation, conductor_11_Rotation, conductor_12_Rotation,
                       conductor_13_Rotation, conductor_14_Rotation, conductor_15_Rotation, conductor_16_Rotation, conductor_17_Rotation, conductor_18_Rotation,
                       conductor_19_Rotation, conductor_20_Rotation, conductor_21_Rotation, conductor_22_Rotation, conductor_23_Rotation, conductor_24_Rotation,
                       conductor_25_Rotation, conductor_26_Rotation, conductor_27_Rotation, conductor_28_Rotation, conductor_29_Rotation, conductor_30_Rotation,
                       conductor_31_Rotation, conductor_32_Rotation, conductor_33_Rotation, conductor_34_Rotation, conductor_35_Rotation, conductor_36_Rotation,
                       conductor_37_Rotation, conductor_38_Rotation, conductor_39_Rotation, conductor_40_Rotation,conductor_41_Rotation,
                       conductor_42_Rotation, conductor_43_Rotation, conductor_44_Rotation, conductor_45_Rotation, conductor_46_Rotation, conductor_47_Rotation,
                       conductor_48_Rotation])

get_Values = Experiment_2_Shape_Plus_Rotation
motor_Values = get_Values.Experiment_2(shape_Array, rotation_Array, zeta_C, zeta_N)

motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)