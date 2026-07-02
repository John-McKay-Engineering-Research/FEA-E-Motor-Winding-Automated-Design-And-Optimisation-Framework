import Experiment_4_Stage5_Concentrated
import shapely  # used for geom points.
import sys
import os
import time

# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# max scale for concentrated coil is 2.5 ***
shape_1 = 4
shape_2 = 4
shape_3 = 4
shape_4 = 4
shape_5 = 4
shape_6 = 2
shape_7 = 4
shape_8 = 4
shape_9 = 4
shape_10 = 4
shape_11 = 2
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
shape_31 = 1
shape_32 = 4
shape_33 = 2
shape_34 = 4
shape_35 = 1
shape_36 = 1
shape_37 = 1
shape_38 = 4
shape_39 = 4
shape_40 = 4
shape_41 = 4
shape_42 = 4
shape_43 = 4
shape_44 = 4
shape_45 = 4
shape_46 = 1
shape_47 = 1
shape_48 = 4

shape_Scale_1 = 2.3133467259418143
shape_Scale_2 = 2.3133467259418143
shape_Scale_3 = 2.3133467259418143
shape_Scale_4 = 2.3133467259418143
shape_Scale_5 = 2.3133467259418143
shape_Scale_6 = 2.3133467259418143
shape_Scale_7 = 2.3133467259418143
shape_Scale_8 = 2.3133467259418143
shape_Scale_9 = 2.3133467259418143
shape_Scale_10 = 2.3133467259418143
shape_Scale_11 = 2.3133467259418143
shape_Scale_12 = 2.3133467259418143
shape_Scale_13 = 2.4
shape_Scale_14 = 2.4
shape_Scale_15 = 2.4
shape_Scale_16 = 2.4
shape_Scale_17 = 2.4
shape_Scale_18 = 2.4
shape_Scale_19 = 2.4
shape_Scale_20 = 2.4
shape_Scale_21 = 2.4
shape_Scale_22 = 2.4
shape_Scale_23 = 2.4
shape_Scale_24 = 2.4
shape_Scale_25 = 2.2093389175623956
shape_Scale_26 = 2.2093389175623956
shape_Scale_27 = 2.2093389175623956
shape_Scale_28 = 2.2093389175623956
shape_Scale_29 = 2.2093389175623956
shape_Scale_30 = 2.2093389175623956
shape_Scale_31 = 2.2093389175623956
shape_Scale_32 = 2.2093389175623956
shape_Scale_33 = 2.2093389175623956
shape_Scale_34 = 2.2093389175623956
shape_Scale_35 = 2.2093389175623956
shape_Scale_36 = 2.2093389175623956
shape_Scale_37 = 2.2534915483139644
shape_Scale_38 = 2.2534915483139644
shape_Scale_39 = 2.2534915483139644
shape_Scale_40 = 2.2534915483139644
shape_Scale_41 = 2.2534915483139644
shape_Scale_42 = 2.2534915483139644
shape_Scale_43 = 2.2534915483139644
shape_Scale_44 = 2.2534915483139644
shape_Scale_45 = 2.2534915483139644
shape_Scale_46 = 2.2534915483139644
shape_Scale_47 = 2.2534915483139644
shape_Scale_48 = 2.2534915483139644
try:
    rotation_1 = n_
except:
    n_ = 0.00000000
try:
    rotation_2 = n1_
except:
    n1_ = 0.00000000
try:
    rotation_3 = n2_
except:
    n2_ = 0.00000000
try:
    rotation_4 = n3_
except:
    n3_ = 0.00000000
try:
    rotation_5 = n4_
except:
    n4_ = 0.00000000
try:
    rotation_6 = n5_
except:
    n5_ = 0.00000000
try:
    rotation_7 = n6_
except:
    n6_ = 0.00000000
try:
    rotation_8 = n7_
except:
    n7_ = 0.00000000
try:
    rotation_9 = n8_
except:
    n8_ = 0.00000000
try:
    rotation_10 = n9_
except:
    n9_ = 0.00000000
try:
    rotation_11 = n10_
except:
    n10_ = 0.00000000

try:
    rotation_12 = n11_
except:
    n11_ = 0.00000000
try:
    rotation_13 = n12_
except:
    n12_ = 0.00000000
try:
    rotation_14 = n13_
except:
    n13_ = 0.00000000
try:
    rotation_15 = n14_
except:
    n14_ = 0.00000000
try:
    rotation_16 = n15_
except:
    n15_ = 0.00000000
try:
    rotation_17 = n16_
except:
    n16_ = 0.00000000
try:
    rotation_18 = n17_
except:
    n17_ = 0.00000000
try:
    rotation_19 = n18_
except:
    n18_ = 0.00000000
try:
    rotation_20 = n19_
except:
    n19_ = 0.00000000
try:
    rotation_21 = n20_
except:
    n20_ = 0.00000000
try:
    rotation_22 = n21_
except:
    n21_ = 0.00000000

try:
    rotation_23 = n22_
except:
    n22_ = 0.00000000
try:
    rotation_24 = n23_
except:
    n23_ = 0.00000000
try:
    rotation_25 = n24_
except:
    n24_ = 0.00000000
try:
    rotation_26 = n25_
except:
    n25_ = 0.00000000
try:
    rotation_27 = n26_
except:
    n26_ = 0.00000000
try:
    rotation_28 = n27_
except:
    n27_ = 0.00000000
try:
    rotation_29 = n28_
except:
    n28_ = 0.00000000
try:
    rotation_30 = n29_
except:
    n29_ = 0.00000000
try:
    rotation_31 = n30_
except:
    n30_ = 0.00000000
try:
    rotation_32 = n31_
except:
    n31_ = 0.00000000
try:
    rotation_33 = n32_
except:
    n32_ = 0.00000000

try:
    rotation_34 = n33_
except:
    n33_ = 0.00000000
try:
    rotation_35 = n34_
except:
    n34_ = 0.00000000
try:
    rotation_36 = n35_
except:
    n35_ = 0.00000000
try:
    rotation_37 = n36_
except:
    n36_ = 0.00000000
try:
    rotation_38 = n37_
except:
    n37_ = 0.00000000
try:
    rotation_39 = n38_
except:
    n38_ = 0.00000000
try:
    rotation_40 = n39_
except:
    n39_ = 0.00000000
try:
    rotation_41 = n40_
except:
    n40_ = 0.00000000
try:
    rotation_42 = n41_
except:
    n41_ = 0.00000000
try:
    rotation_43 = n42_
except:
    n42_ = 0.00000000
try:
    rotation_44 = n43_
except:
    n43_ = 0.00000000

try:
    rotation_45 = n44_
except:
    n44_ = 0.00000000
try:
    rotation_46 = n45_
except:
    n45_ = 0.00000000
try:
    rotation_47 = n46_
except:
    n46_ = 0.00000000
try:
    rotation_48 = n47_
except:
    n47_ = 0.00000000

# remember to add 0.1 onto the cluster layers as this is taken off to stop conductors intersecting
cluster_Scale_1 = 2.3133467259418143 + 0.1
cluster_Scale_2 = 2.4 + 0.1
cluster_Scale_3 = 2.2093389175623956 + 0.1
cluster_Scale_4 = 2.2534915483139644 + 0.1

cluster_1_Position = shapely.geometry.Point(7.6734, 14.8473)
cluster_2_Position = shapely.geometry.Point(17.5, 15)
cluster_3_Position = shapely.geometry.Point(6.25, 5)
cluster_4_Position = shapely.geometry.Point(18.1373, 5)

cluster_Position_Array = []
cluster_Scale_Array = []
shape_Scale_Array = []
shape_Array = []
rotation_Array = []

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

shape_Array.extend([shape_1, shape_2, shape_3, shape_4, shape_5, shape_6, shape_7, shape_8, shape_9, shape_10,
                    shape_11, shape_12, shape_13, shape_14, shape_15, shape_16, shape_17, shape_18, shape_19, shape_20,
                    shape_21, shape_22, shape_23, shape_24, shape_25, shape_26, shape_27, shape_28, shape_29, shape_30,
                    shape_31, shape_32, shape_33, shape_34, shape_35, shape_36, shape_37, shape_38, shape_39, shape_40,
                    shape_41, shape_42, shape_43, shape_44, shape_45, shape_46, shape_47, shape_48])

rotation_Array.extend([rotation_1, rotation_2, rotation_3, rotation_4, rotation_5, rotation_6, rotation_7, rotation_8, rotation_9, rotation_10,
                       rotation_11, rotation_12, rotation_13, rotation_14, rotation_15, rotation_16, rotation_17, rotation_18, rotation_19, rotation_20,
                       rotation_21, rotation_22, rotation_23, rotation_24, rotation_25, rotation_26, rotation_27, rotation_28, rotation_29, rotation_30,
                       rotation_31, rotation_32, rotation_33, rotation_34, rotation_35, rotation_36, rotation_37, rotation_38, rotation_39, rotation_40,
                       rotation_41, rotation_42, rotation_43, rotation_44, rotation_45, rotation_46, rotation_47, rotation_48])

cluster_Count = 4



get_Values = Experiment_4_Stage5_Concentrated
motor_Values = get_Values.Experiment_4(cluster_Count, cluster_Position_Array, cluster_Scale_Array, shape_Scale_Array, shape_Array, rotation_Array)

# report back to optislang the chosen layer percentages chosen.


motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

# report back to optislang
cluster_Scale_1_Chosen = cluster_Scale_1
cluster_Scale_2_Chosen = cluster_Scale_2
cluster_Scale_3_Chosen = cluster_Scale_3
cluster_Scale_4_Chosen = cluster_Scale_4


print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)