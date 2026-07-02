import Experiment_2_Shape_Rotation


# updated for experiment 2 stage 2 rotation plus shape
conductor_1_Rotation = 0
conductor_2_Rotation = 10
conductor_3_Rotation = 20
conductor_4_Rotation = 30
conductor_5_Rotation = 40
conductor_6_Rotation = 50
conductor_7_Rotation = 60
conductor_8_Rotation = 70
conductor_9_Rotation = 80
conductor_10_Rotation = 90
conductor_11_Rotation = 100
conductor_12_Rotation = 110
conductor_13_Rotation = 120
conductor_14_Rotation = 130
conductor_15_Rotation = 140
conductor_16_Rotation = 150
conductor_17_Rotation = 160
conductor_18_Rotation = 170
conductor_19_Rotation = 180
conductor_20_Rotation = 190
conductor_21_Rotation = 200
conductor_22_Rotation = 210
conductor_23_Rotation = 220
conductor_24_Rotation = 230
conductor_25_Rotation = 240
conductor_26_Rotation = 250
conductor_27_Rotation = 260
conductor_28_Rotation = 270
conductor_29_Rotation = 280
conductor_30_Rotation = 290
conductor_31_Rotation = 300
conductor_32_Rotation = 310
conductor_33_Rotation = 320
conductor_34_Rotation = 330
conductor_35_Rotation = 340
conductor_36_Rotation = 350
conductor_37_Rotation = 360
conductor_38_Rotation = 10
conductor_39_Rotation = 20
conductor_40_Rotation = 30
conductor_41_Rotation = 40
conductor_42_Rotation = 50
conductor_43_Rotation = 60
conductor_44_Rotation = 70
conductor_45_Rotation = 80
conductor_46_Rotation = 90
conductor_47_Rotation = 100
conductor_48_Rotation = 110

# "Square" = 1, "Circle" = 2, "Triangle" = 3, "Hexagon" = 4
# updated for Random stage 2, start shape square.
shape_1 = 1
shape_2 = 2
shape_3 = 3
shape_4 = 4
shape_5 = 1
shape_6 = 2
shape_7 = 3
shape_8 = 4
shape_9 = 1

shape_10 = 2
shape_11 = 3
shape_12 = 4
shape_13 = 1
shape_14 = 2
shape_15 = 3
shape_16 = 4
shape_17 = 1
shape_18 = 2
shape_19 = 3

shape_20 = 4
shape_21 = 1
shape_22 = 2
shape_23 = 3
shape_24 = 4
shape_25 = 1
shape_26 = 2
shape_27 = 3
shape_28 = 4
shape_29 = 1
shape_30 = 2

shape_31 = 3
shape_32 = 4
shape_33 = 1
shape_34 = 2
shape_35 = 3
shape_36 = 4
shape_37 = 1
shape_38 = 2
shape_39 = 3

shape_40 = 4
shape_41 = 1
shape_42 = 2
shape_43 = 3
shape_44 = 4
shape_45 = 1
shape_46 = 2
shape_47 = 3
shape_48 = 4

shape_Array = []
rotation_Array = []


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

get_Values = Experiment_2_Shape_Rotation
motor_Values = get_Values.Experiment_2(shape_Array, rotation_Array)

motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)