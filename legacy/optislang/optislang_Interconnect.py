import gc
import Experiment_1
import sys
import time
import os

# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

try:
    scale_1 = n_
except:
    n_ = 0.00000000
try:
    scale_2 = n1_
except:
    n1_ = 0.00000000
try:
    scale_3 = n2_
except:
    n2_ = 0.00000000
try:
    scale_4 = n3_
except:
    n3_ = 0.00000000
try:
    scale_5 = n4_
except:
    n4_ = 0.00000000
try:
    scale_6 = n5_
except:
    n5_ = 0.00000000
try:
    scale_7 = n6_
except:
    n6_ = 0.00000000
try:
    scale_8 = n7_
except:
    n7_ = 0.00000000
try:
    scale_9 = n8_
except:
    n8_ = 0.00000000
try:
    scale_10 = n9_
except:
    n9_ = 0.00000000

try:
    scale_11 = n10_
except:
    n10_ = 0.00000000
try:
    scale_12 = n11_
except:
    n11_ = 0.00000000
try:
    scale_13 = n12_
except:
    n12_ = 0.00000000
try:
    scale_14 = n13_
except:
    n13_ = 0.00000000
try:
    scale_15 = n14_
except:
    n14_ = 0.00000000
try:
    scale_16 = n15_
except:
    n15_ = 0.00000000
try:
    scale_17 = n16_
except:
    n16_ = 0.00000000
try:
    scale_18 = n17_
except:
    n17_ = 0.00000000
try:
    scale_19 = n18_
except:
    n18_ = 0.00000000

try:
    scale_20 = n19_
except:
    n19_ = 0.00000000
try:
    scale_21 = n20_
except:
    n20_ = 0.00000000
try:
    scale_22 = n21_
except:
    n21_ = 0.00000000
try:
    scale_23 = n22_
except:
    n22_ = 0.00000000
try:
    scale_24 = n23_
except:
    n23_ = 0.00000000
try:
    scale_25 = n24_
except:
    n24_ = 0.00000000
try:
    scale_26 = n25_
except:
    n25_ = 0.00000000
try:
    scale_27 = n26_
except:
    n26_ = 0.00000000
try:
    scale_28 = n27_
except:
    n27_ = 0.00000000
try:
    scale_29 = n28_
except:
    n28_ = 0.00000000
try:
    scale_30 = n29_
except:
    n29_ = 0.00000000

try:
    scale_31 = n30_
except:
    n30_ = 0.00000000
try:
    scale_32 = n31_
except:
    n31_ = 0.00000000
try:
    scale_33 = n32_
except:
    n32_ = 0.00000000
try:
    scale_34 = n33_
except:
    n33_ = 0.00000000
try:
    scale_35 = n34_
except:
    n34_ = 0.00000000
try:
    scale_36 = n35_
except:
    n35_ = 0.00000000
try:
    scale_37 = n36_
except:
    n36_ = 0.00000000
try:
    scale_38 = n37_
except:
    n37_ = 0.00000000
try:
    scale_39 = n38_
except:
    n38_ = 0.00000000
try:
    scale_40 = n39_
except:
    n39_ = 0.00000000
try:
    scale_41 = n40_
except:
    n40_ = 0.00000000
try:
    scale_42 = n41_
except:
    n41_ = 0.00000000
try:
    scale_43 = n42_
except:
    n42_ = 0.00000000
try:
    scale_44 = n43_
except:
    n43_ = 0.00000000
try:
    scale_45 = n44_
except:
    n44_ = 0.00000000
try:
    scale_46 = n45_
except:
    n45_ = 0.00000000
try:
    scale_47 = n46_
except:
    n46_ = 0.00000000
try:
    scale_48 = n47_
except:
    n47_ = 0.00000000

scale_Array = []

scale_Array.extend([scale_1, scale_2, scale_3, scale_4, scale_5, scale_6, scale_7, scale_8, scale_9, scale_10,
                   scale_11, scale_12, scale_13, scale_14, scale_15, scale_16, scale_17, scale_18, scale_19, scale_20,
                   scale_21, scale_22, scale_23, scale_24, scale_25, scale_26, scale_27, scale_28, scale_29, scale_30,
                   scale_31, scale_32, scale_33, scale_34, scale_35, scale_36, scale_37, scale_38, scale_39, scale_40,
                   scale_41, scale_42, scale_43, scale_44, scale_45, scale_46, scale_47, scale_48])

# get_Values = Experiment_1.Experiment_1(scale_Array)
# different approach.
print("optislang_interconnect.py :: scale array length : ", len(scale_Array))
print("optislang_interconnect.py :: scale array values : ", scale_Array)

get_Values = Experiment_1
motor_Values = get_Values.Experiment_1(scale_Array)

motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]







