import Experiment_4_Stage3_6CLusters_Concentratef
import shapely  # used for geom points.
import sys
import os
import time

# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# max scale for concentrated coil is 2.5 ***

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

shape_Scale_1 = 1.7633816421687756
shape_Scale_2 = 1.7633816421687756
shape_Scale_3 = 1.7633816421687756
shape_Scale_4 = 1.7633816421687756
shape_Scale_5 = 1.7633816421687756
shape_Scale_6 = 1.7633816421687756
shape_Scale_7 = 1.7633816421687756
shape_Scale_8 = 1.7633816421687756
shape_Scale_9 = 1.8323568561287413
shape_Scale_10 = 1.8323568561287413
shape_Scale_11 = 1.8323568561287413
shape_Scale_12 = 1.8323568561287413
shape_Scale_13 = 1.8323568561287413
shape_Scale_14 = 1.8323568561287413
shape_Scale_15 = 1.8323568561287413
shape_Scale_16 = 1.8323568561287413
shape_Scale_17 = 1.949490380471063
shape_Scale_18 = 1.949490380471063
shape_Scale_19 = 1.949490380471063
shape_Scale_20 = 1.949490380471063
shape_Scale_21 = 1.949490380471063
shape_Scale_22 = 1.949490380471063
shape_Scale_23 = 1.949490380471063
shape_Scale_24 = 1.949490380471063
shape_Scale_25 = 1.98
shape_Scale_26 = 1.98
shape_Scale_27 = 1.98
shape_Scale_28 = 1.98
shape_Scale_29 = 1.98
shape_Scale_30 = 1.98
shape_Scale_31 = 1.98
shape_Scale_32 = 1.98
shape_Scale_33 = 1.974030874419574
shape_Scale_34 = 1.974030874419574
shape_Scale_35 = 1.974030874419574
shape_Scale_36 = 1.974030874419574
shape_Scale_37 = 1.974030874419574
shape_Scale_38 = 1.974030874419574
shape_Scale_39 = 1.974030874419574
shape_Scale_40 = 1.974030874419574
shape_Scale_41 = 1.8745105301672742
shape_Scale_42 = 1.8745105301672742
shape_Scale_43 = 1.8745105301672742
shape_Scale_44 = 1.8745105301672742
shape_Scale_45 = 1.8745105301672742
shape_Scale_46 = 1.8745105301672742
shape_Scale_47 = 1.8745105301672742
shape_Scale_48 = 1.8745105301672742

# set by stage 1
cluster_Scale_1 = 1.7633816421687756 + 0.1
cluster_Scale_2 = 1.8323568561287413 + 0.1
cluster_Scale_3 = 1.949490380471063 + 0.1
cluster_Scale_4 = 1.98 + 0.1
cluster_Scale_5 = 1.974030874419574 + 0.1
cluster_Scale_6 = 1.8745105301672742 + 0.1

cluster_1_Position = shapely.geometry.Point(4.1666, 5)
cluster_2_Position = shapely.geometry.Point(12.4966, 5)
cluster_3_Position = shapely.geometry.Point(20.83266, 5)
cluster_4_Position = shapely.geometry.Point(4.1666, 15)
cluster_5_Position = shapely.geometry.Point(12.4966, 15)
cluster_6_Position = shapely.geometry.Point(20.83266, 15)

cluster_1_Chosen_Conductor_Positions = [0, 2, 8, 9, 10, 6, 5, 4]
cluster_2_Chosen_Conductor_Positions = [1, 2, 3, 6, 7, 9, 10, 4]
cluster_3_Chosen_Conductor_Positions = [0, 1, 2, 3, 9, 10, 5, 4]
cluster_4_Chosen_Conductor_Positions = [0, 1, 2, 6, 7, 9, 10, 4]
cluster_5_Chosen_Conductor_Positions = [0, 3, 6, 7, 8, 10, 4, 5]
cluster_6_Chosen_Conductor_Positions = [0, 1, 6, 7, 8, 9, 10, 4]

cluster_Position_Array = []
cluster_Scale_Array = []
shape_Scale_Array = []
cluster_Chosen_Conductor_Positions_Array = []
shape_Array = []

cluster_Scale_Array.append(cluster_Scale_1)
cluster_Scale_Array.append(cluster_Scale_2)
cluster_Scale_Array.append(cluster_Scale_3)
cluster_Scale_Array.append(cluster_Scale_4)
cluster_Scale_Array.append(cluster_Scale_5)
cluster_Scale_Array.append(cluster_Scale_6)

cluster_Position_Array.append(cluster_1_Position)
cluster_Position_Array.append(cluster_2_Position)
cluster_Position_Array.append(cluster_3_Position)
cluster_Position_Array.append(cluster_4_Position)
cluster_Position_Array.append(cluster_5_Position)
cluster_Position_Array.append(cluster_6_Position)

cluster_Chosen_Conductor_Positions_Array.append(cluster_1_Chosen_Conductor_Positions)
cluster_Chosen_Conductor_Positions_Array.append(cluster_2_Chosen_Conductor_Positions)
cluster_Chosen_Conductor_Positions_Array.append(cluster_3_Chosen_Conductor_Positions)
cluster_Chosen_Conductor_Positions_Array.append(cluster_4_Chosen_Conductor_Positions)
cluster_Chosen_Conductor_Positions_Array.append(cluster_5_Chosen_Conductor_Positions)
cluster_Chosen_Conductor_Positions_Array.append(cluster_6_Chosen_Conductor_Positions)

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

cluster_Count = 6



get_Values = Experiment_4_Stage3_6CLusters_Concentratef
motor_Values = get_Values.Experiment_4(cluster_Count, cluster_Position_Array, cluster_Scale_Array, shape_Scale_Array, cluster_Chosen_Conductor_Positions_Array, shape_Array)

# report back to optislang the chosen layer percentages chosen.


motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)