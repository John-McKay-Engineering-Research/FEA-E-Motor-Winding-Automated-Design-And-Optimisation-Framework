import Experiment_3_Stage2_Ver2


# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# conductor percentages will be changed to floats in the script.

#  shapes ***

try:
    shape_1 = n_
except:
    n_ = 0.00000000
try:
    shape_2 = n1_
except:
    n1_ = 0.00000000
try:
    shape_3 = n2_
except:
    n2_ = 0.00000000
try:
    shape_4 = n3_
except:
    n3_ = 0.00000000
try:
    shape_5 = n4_
except:
    n4_ = 0.00000000
try:
    shape_6 = n5_
except:
    n5_ = 0.00000000
try:
    shape_7 = n6_
except:
    n6_ = 0.00000000
try:
    shape_8 = n7_
except:
    n7_ = 0.00000000
try:
    shape_9 = n8_
except:
    n8_ = 0.00000000
try:
    shape_10 = n9_
except:
    n9_ = 0.00000000
try:
    shape_11 = n10_
except:
    n10_ = 0.00000000
try:
    shape_12 = n11_
except:
    n11_ = 0.00000000
try:
    shape_13 = n12_
except:
    n12_ = 0.00000000
try:
    shape_14 = n13_
except:
    n13_ = 0.00000000
try:
    shape_15 = n14_
except:
    n14_ = 0.00000000
try:
    shape_16 = n15_
except:
    n15_ = 0.00000000
try:
    shape_17 = n16_
except:
    n16_ = 0.00000000
try:
    shape_18 = n17_
except:
    n17_ = 0.00000000
try:
    shape_19 = n18_
except:
    n18_ = 0.00000000
try:
    shape_20 = n19_
except:
    n19_ = 0.00000000
try:
    shape_21 = n20_
except:
    n20_ = 0.00000000
try:
    shape_22 = n21_
except:
    n21_ = 0.00000000
try:
    shape_23 = n22_
except:
    n22_ = 0.00000000
try:
    shape_24 = n23_
except:
    n23_ = 0.00000000
try:
    shape_25 = n24_
except:
    n24_ = 0.00000000
try:
    shape_26 = n25_
except:
    n25_ = 0.00000000
try:
    shape_27 = n26_
except:
    n26_ = 0.00000000
try:
    shape_28 = n27_
except:
    n27_ = 0.00000000
try:
    shape_29 = n28_
except:
    n28_ = 0.00000000
try:
    shape_30 = n29_
except:
    n29_ = 0.00000000
try:
    shape_31 = n30_
except:
    n30_ = 0.00000000
try:
    shape_32 = n31_
except:
    n31_ = 0.00000000
try:
    shape_33 = n32_
except:
    n32_ = 0.00000000
try:
    shape_34 = n33_
except:
    n33_ = 0.00000000
try:
    shape_35 = n34_
except:
    n34_ = 0.00000000
try:
    shape_36 = n35_
except:
    n35_ = 0.00000000
try:
    shape_37 = n36_
except:
    n36_ = 0.00000000
try:
    shape_38 = n37_
except:
    n37_ = 0.00000000
try:
    shape_39 = n38_
except:
    n38_ = 0.00000000
try:
    shape_40 = n39_
except:
    n39_ = 0.00000000
try:
    shape_41 = n40_
except:
    n40_ = 0.00000000
try:
    shape_42 = n41_
except:
    n41_ = 0.00000000
try:
    shape_43 = n42_
except:
    n42_ = 0.00000000
try:
    shape_44 = n43_
except:
    n43_ = 0.00000000
try:
    shape_45 = n44_
except:
    n44_ = 0.00000000
try:
    shape_46 = n45_
except:
    n45_ = 0.00000000
try:
    shape_47 = n46_
except:
    n46_ = 0.00000000
try:
    shape_48 = n47_
except:
    n47_ = 0.00000000



# fixed for stage 2
# updated for Triangle stage 1
conductor_Layer_1 = 18
conductor_Layer_2 = 16
conductor_Layer_3 = 22
conductor_Layer_4 = 16
conductor_Layer_5 = 14
conductor_Layer_6 = 14

layer_Count = 6

layer_Array = []
shape_Array = []

layer_Array.extend([conductor_Layer_1, conductor_Layer_2, conductor_Layer_3, conductor_Layer_4, conductor_Layer_5, conductor_Layer_6])

shape_Array.extend([shape_1, shape_2, shape_3, shape_4, shape_5, shape_6, shape_7, shape_8, shape_9, shape_10,
                    shape_11, shape_12, shape_13, shape_14, shape_15, shape_16, shape_17, shape_18, shape_19, shape_20,
                    shape_21, shape_22, shape_23, shape_24, shape_25, shape_26, shape_27, shape_28, shape_29, shape_30,
                    shape_31, shape_32, shape_33, shape_34, shape_35, shape_36, shape_37, shape_38,
                    shape_39, shape_40, shape_41, shape_42, shape_43, shape_44, shape_45, shape_46, shape_47, shape_48])

get_Values = Experiment_3_Stage2_Ver2
motor_Values = get_Values.Experiment_3(layer_Count, layer_Array, shape_Array)

motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)