import Experiment_3_Stage3


# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# conductor percentages will be changed to floats in the script.

#  shapes ***
shape_1 = 4
shape_2 = 2
shape_3 = 2
shape_4 = 1
shape_5 = 4
shape_6 = 1
shape_7 = 2
shape_8 = 3
shape_9 = 3
shape_10 = 2

shape_11 = 2
shape_12 = 4
shape_13 = 4
shape_14 = 1
shape_15 = 4
shape_16 = 2
shape_17 = 2
shape_18 = 2
shape_19 = 3
shape_20 = 1

shape_21 = 1
shape_22 = 4
shape_23 = 2
shape_24 = 2
shape_25 = 3
shape_26 = 3
shape_27 = 4
shape_28 = 1
shape_29 = 1
shape_30 = 1

shape_31 = 1
shape_32 = 1
shape_33 = 1
shape_34 = 3
shape_35 = 1
shape_36 = 1
shape_37 = 1
shape_38 = 2
shape_39 = 1
shape_40 = 1

shape_41 = 4
shape_42 = 2
shape_43 = 2
shape_44 = 2
shape_45 = 2
shape_46 = 3
shape_47 = 3
shape_48 = 4

# conductor scales
scale_1 = 2.8
scale_2 = 2.8
scale_3 = 2.8
scale_4 = 2.8
scale_5 = 2.8
scale_6 = 2.8
scale_7 = 2.8
scale_8 = 2.8
scale_9 = 2.8
scale_10 = 2.8

scale_11 = 2.8
scale_12 = 2.8
scale_13 = 3.0
scale_14 = 3.0
scale_15 = 3.0
scale_16 = 3.0
scale_17 = 3.0
scale_18 = 3.0
scale_19 = 3.0
scale_20 = 3.0

scale_21 = 3.0
scale_22 = 3.0
scale_23 = 3.0
scale_24 = 3.0
scale_25 = 1.9833333333333334
scale_26 = 1.9833333333333334
scale_27 = 1.9833333333333334
scale_28 = 1.9833333333333334
scale_29 = 1.9833333333333334
scale_30 = 1.9833333333333334

scale_31 = 1.9833333333333334
scale_32 = 1.9833333333333334
scale_33 = 1.9833333333333334
scale_34 = 1.9833333333333334
scale_35 = 1.9833333333333334
scale_36 = 1.9833333333333334
scale_37 = 2.7
scale_38 = 2.7
scale_39 = 2.7
scale_40 = 2.7

scale_41 = 2.7
scale_42 = 2.7
scale_43 = 2.7
scale_44 = 2.7
scale_45 = 2.7
scale_46 = 2.7
scale_47 = 2.7
scale_48 = 2.7



conductor_Layer_1 = 29
conductor_Layer_2 = 31
conductor_Layer_3 = 12
conductor_Layer_4 = 28

layer_Count = 4

layer_Array = []
shape_Array = []
scale_Array = []

layer_Array.extend([conductor_Layer_1, conductor_Layer_2, conductor_Layer_3, conductor_Layer_4])

shape_Array.extend([shape_1, shape_2, shape_3, shape_4, shape_5, shape_6, shape_7, shape_8, shape_9, shape_10,
                    shape_11, shape_12, shape_13, shape_14, shape_15, shape_16, shape_17, shape_18, shape_19, shape_20,
                    shape_21, shape_22, shape_23, shape_24, shape_25, shape_26, shape_27, shape_28, shape_29, shape_30,
                    shape_31, shape_32, shape_33, shape_34, shape_35, shape_36, shape_37, shape_38,
                    shape_39, shape_40, shape_41, shape_42, shape_43, shape_44, shape_45, shape_46, shape_47, shape_48])

scale_Array.extend([scale_1, scale_2, scale_3, scale_4, scale_5, scale_6, scale_7, scale_8, scale_9, scale_10,
                    scale_11, scale_12, scale_13, scale_14, scale_15, scale_16, scale_17, scale_18, scale_19, scale_20,
                    scale_21, scale_22, scale_23, scale_24, scale_25, scale_26, scale_27, scale_28, scale_29, scale_30,
                    scale_31, scale_32, scale_33, scale_34, scale_35, scale_36, scale_37, scale_38, scale_39, scale_40,
                    scale_41, scale_42, scale_43, scale_44, scale_45, scale_46, scale_47, scale_48])

get_Values = Experiment_3_Stage3
motor_Values = get_Values.Experiment_3(layer_Count, layer_Array, shape_Array, scale_Array)

motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)