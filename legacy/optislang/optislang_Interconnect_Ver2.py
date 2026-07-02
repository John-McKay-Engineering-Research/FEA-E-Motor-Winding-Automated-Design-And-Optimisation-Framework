import Experiment_1

# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# updated for hexagon experiment 1 stage 1
scale_1 = 2.536
scale_2 = 2.552
scale_3 = 1.545
scale_4 = 2.322
scale_5 = 2.13
scale_6 = 3.057
scale_7 = 2.199
scale_8 = 1.842
scale_9 = 1.455

scale_10 = 2.664
scale_11 = 1.424
scale_12 = 1.637
scale_13 = 3.091
scale_14 = 1.869
scale_15 = 2.868
scale_16 = 1.81
scale_17 = 2.823
scale_18 = 1.037
scale_19 = 2.118

scale_20 = 3.057
scale_21 = 2.795
scale_22 = 2.611
scale_23 = 1.303
scale_24 = 1.806
scale_25 = 2.851
scale_26 = 1.251
scale_27 = 2.523
scale_28 = 1.947
scale_29 = 1.959
scale_30 = 1.941

scale_31 = 1.243
scale_32 = 1.285
scale_33 = 2.114
scale_34 = 1.787
scale_35 = 2.188
scale_36 = 1.245
scale_37 = 2.373
scale_38 = 2.878
scale_39 = 2.825

scale_40 = 1.623
scale_41 = 2.446
scale_42 = 1.053
scale_43 = 2.183
scale_44 = 1.478
scale_45 = 1.615
scale_46 = 1.301
scale_47 = 2.239
scale_48 = 2.561

# motor_Efficiency = 0
# motor_Losses = 0

scale_Array = []

scale_Array.extend([scale_1, scale_2, scale_3, scale_4, scale_5, scale_6, scale_7, scale_8, scale_9, scale_10,
                   scale_11, scale_12, scale_13, scale_14, scale_15, scale_16, scale_17, scale_18, scale_19, scale_20,
                   scale_21, scale_22, scale_23, scale_24, scale_25, scale_26, scale_27, scale_28, scale_29, scale_30,
                   scale_31, scale_32, scale_33, scale_34, scale_35, scale_36, scale_37, scale_38, scale_39, scale_40,
                   scale_41, scale_42, scale_43, scale_44, scale_45, scale_46, scale_47, scale_48])

print(scale_Array, len(scale_Array))

get_Values = Experiment_1.Experiment_1(scale_Array)

motor_Efficiency = get_Values[0]
motor_Losses = get_Values[1]

print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)