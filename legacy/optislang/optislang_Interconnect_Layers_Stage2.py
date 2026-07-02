import Experiment_3_Stage2


# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# conductor percentages will be changed to floats in the script.

#  shapes ***
shape_1 = 1
shape_2 = 1
shape_3 = 1
shape_4 = 1
shape_5 = 1
shape_6 = 1
shape_7 = 1
shape_8 = 1
shape_9 = 1
shape_10 = 1

shape_11 = 1
shape_12 = 1
shape_13 = 1
shape_14 = 1
shape_15 = 1
shape_16 = 1
shape_17 = 1
shape_18 = 1
shape_19 = 1
shape_20 = 1

shape_21 = 1
shape_22 = 1
shape_23 = 1
shape_24 = 1
shape_25 = 1
shape_26 = 1
shape_27 = 1
shape_28 = 1
shape_29 = 1
shape_30 = 1

shape_31 = 1
shape_32 = 1
shape_33 = 1
shape_33 = 1
shape_34 = 1
shape_35 = 1
shape_36 = 1
shape_37 = 1
shape_38 = 1
shape_39 = 1
shape_40 = 1

shape_41 = 1
shape_42 = 1
shape_43 = 1
shape_44 = 1
shape_45 = 1
shape_46 = 1
shape_47 = 1
shape_48 = 1


# fixed for stage 2
conductor_Layer_1 = 33
conductor_Layer_2 = 27
conductor_Layer_3 = 18
conductor_Layer_4 = 22
conductor_Layer_5 = 22
conductor_Layer_6 = 22

layer_Count = 6

layer_Array = []
shape_Array = []

layer_Array.extend([conductor_Layer_1, conductor_Layer_2, conductor_Layer_3, conductor_Layer_4])

shape_Array.extend([shape_1, shape_2, shape_3, shape_4, shape_5, shape_6, shape_7, shape_8, shape_9, shape_10,
                    shape_11, shape_12, shape_13, shape_14, shape_15, shape_16, shape_17, shape_18, shape_19, shape_20,
                    shape_21, shape_22, shape_23, shape_24, shape_25, shape_26, shape_27, shape_28, shape_29, shape_30,
                    shape_31, shape_32, shape_33, shape_34, shape_35, shape_36, shape_35, shape_36, shape_37, shape_38,
                    shape_39, shape_40, shape_41, shape_42, shape_43, shape_44, shape_45, shape_46, shape_47, shape_48])

get_Values = Experiment_3_Stage2
motor_Values = get_Values.Experiment_3(layer_Count, layer_Array, shape_Array)

motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)