import Experiment_4_Stage2_Concentrated
import shapely  # used for geom points.
import sys
import os
import time

# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# max scale for concentrated coil is 2.5 ***

try:
    shape_Scale_1 = n_
except:
    n_ = 0.00000000
try:
    shape_Scale_2 = n1_
except:
    n1_ = 0.00000000
try:
    shape_Scale_3 = n2_
except:
    n2_ = 0.00000000
try:
    shape_Scale_4 = n3_
except:
    n3_ = 0.00000000
try:
    shape_Scale_5 = n4_
except:
    n4_ = 0.00000000
try:
    shape_Scale_6 = n5_
except:
    n5_ = 0.00000000
try:
    shape_Scale_7 = n6_
except:
    n6_ = 0.00000000
try:
    shape_Scale_8 = n7_
except:
    n7_ = 0.00000000
try:
    shape_Scale_9 = n8_
except:
    n8_ = 0.00000000
try:
    shape_Scale_10 = n9_
except:
    n9_ = 0.00000000

try:
    shape_Scale_11 = n10_
except:
    n10_ = 0.00000000
try:
    shape_Scale_12 = n11_
except:
    n11_ = 0.00000000
try:
    shape_Scale_13 = n12_
except:
    n12_ = 0.00000000
try:
    shape_Scale_14 = n13_
except:
    n13_ = 0.00000000
try:
    shape_Scale_15 = n14_
except:
    n14_ = 0.00000000
try:
    shape_Scale_16 = n15_
except:
    n15_ = 0.00000000
try:
    shape_Scale_17 = n16_
except:
    n16_ = 0.00000000
try:
    shape_Scale_18 = n17_
except:
    n17_ = 0.00000000
try:
    shape_Scale_19 = n18_
except:
    n18_ = 0.00000000
try:
    shape_Scale_20 = n19_
except:
    n19_ = 0.00000000

try:
    shape_Scale_21 = n20_
except:
    n20_ = 0.00000000
try:
    shape_Scale_22 = n21_
except:
    n21_ = 0.00000000
try:
    shape_Scale_23 = n22_
except:
    n22_ = 0.00000000
try:
    shape_Scale_24 = n23_
except:
    n23_ = 0.00000000
try:
    shape_Scale_25 = n25_
except:
    n25_ = 0.00000000
try:
    shape_Scale_26 = n26_
except:
    n26_ = 0.00000000
try:
    shape_Scale_27 = n27_
except:
    n27_ = 0.00000000
try:
    shape_Scale_28 = n28_
except:
    n28_ = 0.00000000
try:
    shape_Scale_29 = n29_
except:
    n29_ = 0.00000000
try:
    shape_Scale_30 = n30_
except:
    n30_ = 0.00000000

try:
    shape_Scale_31 = n31_
except:
    n31_ = 0.00000000
try:
    shape_Scale_32 = n32_
except:
    n32_ = 0.00000000
try:
    shape_Scale_33 = n33_
except:
    n33_ = 0.00000000
try:
    shape_Scale_34 = n34_
except:
    n34_ = 0.00000000
try:
    shape_Scale_35 = n35_
except:
    n35_ = 0.00000000
try:
    shape_Scale_36 = n36_
except:
    n36_ = 0.00000000
try:
    shape_Scale_37 = n37_
except:
    n37_ = 0.00000000
try:
    shape_Scale_38 = n38_
except:
    n38_ = 0.00000000
try:
    shape_Scale_39 = n39_
except:
    n39_ = 0.00000000
try:
    shape_Scale_40 = n40_
except:
    n40_ = 0.00000000

try:
    shape_Scale_41 = n41_
except:
    n41_ = 0.00000000
try:
    shape_Scale_42 = n42_
except:
    n42_ = 0.00000000
try:
    shape_Scale_43 = n43_
except:
    n43_ = 0.00000000
try:
    shape_Scale_44 = n44_
except:
    n44_ = 0.00000000
try:
    shape_Scale_45 = n45_
except:
    n45_ = 0.00000000
try:
    shape_Scale_46 = n46_
except:
    n46_ = 0.00000000
try:
    shape_Scale_47 = n47_
except:
    n47_ = 0.00000000
try:
    shape_Scale_48 = n48_
except:
    n48_ = 0.00000000


# set by stage 1
# remember to add 0.1 onto the cluster layers as this is taken off to stop conductors intersecting
cluster_Scale_1 = 2.3133467259418143 + 0.1
cluster_Scale_2 = 2.4 + 0.1
cluster_Scale_3 = 2.2093389175623956 + 0.1
cluster_Scale_4 = 2.2534915483139644 + 0.1


cluster_1_Position = shapely.geometry.Point(6.25, 15)
cluster_2_Position = shapely.geometry.Point(18.75, 15)
cluster_3_Position = shapely.geometry.Point(6.25, 5)
cluster_4_Position = shapely.geometry.Point(18.75, 5)

cluster_Position_Array = []
cluster_Scale_Array = []
shape_Scale_Array = []

cluster_Scale_Array.append(cluster_Scale_1)
cluster_Scale_Array.append(cluster_Scale_2)
cluster_Scale_Array.append(cluster_Scale_3)
cluster_Scale_Array.append(cluster_Scale_4)

cluster_Position_Array.append(cluster_1_Position)
cluster_Position_Array.append(cluster_2_Position)
cluster_Position_Array.append(cluster_3_Position)
cluster_Position_Array.append(cluster_4_Position)

shape_Scale_Array.extend([shape_Scale_1, shape_Scale_2, shape_Scale_3, shape_Scale_4, shape_Scale_5, shape_Scale_6, shape_Scale_7, shape_Scale_8, shape_Scale_9, shape_Scale_10,
                          shape_Scale_11, shape_Scale_12, shape_Scale_13, shape_Scale_14, shape_Scale_15, shape_Scale_16, shape_Scale_17, shape_Scale_18, shape_Scale_19, shape_Scale_20,
                          shape_Scale_21, shape_Scale_22, shape_Scale_23, shape_Scale_24, shape_Scale_25, shape_Scale_26, shape_Scale_27, shape_Scale_28, shape_Scale_29, shape_Scale_30,
                          shape_Scale_31, shape_Scale_32, shape_Scale_33, shape_Scale_34, shape_Scale_35, shape_Scale_36, shape_Scale_37, shape_Scale_38, shape_Scale_39, shape_Scale_40,
                          shape_Scale_41, shape_Scale_42, shape_Scale_43, shape_Scale_44, shape_Scale_45, shape_Scale_46, shape_Scale_47, shape_Scale_48])

cluster_Count = 4



get_Values = Experiment_4_Stage2_Concentrated
motor_Values = get_Values.Experiment_4(cluster_Count, cluster_Position_Array, cluster_Scale_Array, shape_Scale_Array)

# report back to optislang the chosen layer percentages chosen.


motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

# report back to optislang
cluster_Scale_1_Chosen = cluster_Scale_1
cluster_Scale_2_Chosen = cluster_Scale_2
cluster_Scale_3_Chosen = cluster_Scale_3
cluster_Scale_4_Chosen = cluster_Scale_4


print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)