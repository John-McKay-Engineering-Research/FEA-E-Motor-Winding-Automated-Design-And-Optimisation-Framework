import Experiment_1_Stage2

# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# making a change so that the EA can compute, as EA can't compute normally discrete values composed of strings.

# "Square" = 1, "Circle" = 2, "Triangle" = 3, "Hexagon" = 4
# updated for hexagon stage 1
shape_1 = 4
shape_2 = 4
shape_3 = 4
shape_4 = 4
shape_5 = 4
shape_6 = 1
shape_7 = 4
shape_8 = 4
shape_9 = 4

shape_10 = 4
shape_11 = 1
shape_12 = 4
shape_13 = 4
shape_14 = 4
shape_15 = 4
shape_16 = 4
shape_17 = 4
shape_18 = 4
shape_19 = 4

shape_20 = 4
shape_21 = 4
shape_22 = 4
shape_23 = 4
shape_24 = 4
shape_25 = 4
shape_26 = 4
shape_27 = 4
shape_28 = 4
shape_29 = 4
shape_30 = 4

shape_31 = 4
shape_32 = 4
shape_33 = 3
shape_34 = 4
shape_35 = 4
shape_36 = 4
shape_37 = 4
shape_38 = 4
shape_39 = 4

shape_40 = 4
shape_41 = 3
shape_42 = 3
shape_43 = 4
shape_44 = 1
shape_45 = 4
shape_46 = 3
shape_47 = 3
shape_48 = 4

# updated for hexagon stage1
scale_1 = 3.099995666921301
scale_2 = 3.0997261819778172
scale_3 = 3.099630028211405
scale_4 = 3.0999999999999996
scale_5 = 3.0999999999999996
scale_6 = 3.0999999999999996
scale_7 = 2.199
scale_8 = 3.0999999999999996
scale_9 = 3.0999999999999996
scale_10 = 3.0967848077396436

scale_11 = 3.0999999999999996
scale_12 = 3.0999999999999996
scale_13 = 3.091
scale_14 = 3.0999999999999996
scale_15 = 3.0991255797343573
scale_16 = 3.0990129301669382
scale_17 = 3.0992698728305923
scale_18 = 3.0999999999999996
scale_19 = 3.0999999999999996
scale_20 = 3.099545723440606

scale_21 = 3.0999999999999996
scale_22 = 3.098160673498705
scale_23 = 3.099811164464196
scale_24 = 3.0999999999999996
scale_25 = 3.0999999999999996
scale_26 = 3.0998467675765022
scale_27 = 3.0999999999999996
scale_28 = 3.0996573526980375
scale_29 = 3.0999999999999996
scale_30 = 3.0999999999999996

scale_31 = 3.0999999999999996
scale_32 = 3.0999846856865476
scale_33 = 3.0999999999999996
scale_34 = 2.800013389034354
scale_35 = 3.0999999999999996
scale_36 = 3.0999999999999996
scale_37 = 3.0975408007735368
scale_38 = 3.0999897925897413
scale_39 = 2.825
scale_40 = 3.0999999999999996

scale_41 = 3.0999999999999996
scale_42 = 3.0999999999999996
scale_43 = 2.183
scale_44 = 1.478
scale_45 = 1.615
scale_46 = 3.0848119754032597
scale_47 = 3.0999999999999996
scale_48 = 2.561

# motor_Efficiency = 0
# motor_Losses = 0

scale_Array = []
shape_Array = []

# put scales in here for the best design of stage 1
scale_Array.extend([scale_1, scale_2, scale_3, scale_4, scale_5, scale_6, scale_7, scale_8, scale_9, scale_10,
                    scale_11, scale_12, scale_13, scale_14, scale_15, scale_16, scale_17, scale_18, scale_19, scale_20,
                    scale_21, scale_22, scale_23, scale_24, scale_25, scale_26, scale_27, scale_28, scale_29, scale_30,
                    scale_31, scale_32, scale_33, scale_34, scale_35, scale_36, scale_37, scale_38, scale_39, scale_40,
                    scale_41, scale_42, scale_43, scale_44, scale_45, scale_46, scale_47, scale_48])

shape_Array.extend([shape_1, shape_2, shape_3, shape_4, shape_5, shape_6, shape_7, shape_8, shape_9, shape_10,
                   shape_11, shape_12, shape_13, shape_14, shape_15, shape_16, shape_17, shape_18, shape_19, shape_20,
                   shape_21, shape_22, shape_23, shape_24, shape_25, shape_26, shape_27, shape_28, shape_29, shape_30,
                   shape_31, shape_32, shape_33, shape_34, shape_35, shape_36, shape_37, shape_38, shape_39, shape_40,
                   shape_41, shape_42, shape_43, shape_44, shape_45, shape_46, shape_47, shape_48])

print(scale_Array, len(scale_Array))
print(shape_Array, len(shape_Array))

get_Values = Experiment_1_Stage2.Experiment_1(scale_Array, shape_Array)

motor_Efficiency = get_Values[0]
motor_Losses = get_Values[1]

print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)