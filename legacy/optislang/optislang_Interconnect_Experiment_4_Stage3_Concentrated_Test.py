import Experiment_4_Stage3_Concentrated
import shapely  # used for geom points.
import sys
import os
import time

# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# max scale for concentrated coil is 2.5 ***

shape_1 = 3
shape_2 = 3
shape_3 = 3
shape_4 = 3
shape_5 = 3
shape_6 = 3
shape_7 = 3
shape_8 = 3
shape_9 = 3
shape_10 = 3
shape_11 = 3
shape_12 = 3
shape_13 = 3
shape_14 = 3
shape_15 = 3
shape_16 = 3
shape_17 = 3
shape_18 = 3
shape_19 = 3
shape_20 = 3
shape_21 = 3
shape_22 = 3
shape_23 = 3
shape_24 = 3
shape_25 = 3
shape_26 = 3
shape_27 = 3
shape_28 = 3
shape_29 = 3
shape_30 = 3
shape_31 = 3
shape_32 = 3
shape_33 = 3
shape_34 = 3
shape_35 = 3
shape_36 = 3
shape_37 = 3
shape_38 = 3
shape_39 = 3
shape_40 = 3
shape_41 = 3
shape_42 = 3
shape_43 = 3
shape_44 = 3
shape_45 = 3
shape_46 = 3
shape_47 = 3
shape_48 = 3

shape_Scale_1 = 2.0413102452884324
shape_Scale_2 = 2.0413102452884324
shape_Scale_3 = 2.0413102452884324
shape_Scale_4 = 2.0413102452884324
shape_Scale_5 = 2.0413102452884324
shape_Scale_6 = 2.0413102452884324
shape_Scale_7 = 2.0413102452884324
shape_Scale_8 = 2.0413102452884324
shape_Scale_9 = 2.0413102452884324
shape_Scale_10 = 2.0413102452884324
shape_Scale_11 = 2.0413102452884324
shape_Scale_12 = 2.0413102452884324
shape_Scale_13 = 2.173441087990279
shape_Scale_14 = 2.173441087990279
shape_Scale_15 = 2.173441087990279
shape_Scale_16 = 2.173441087990279
shape_Scale_17 = 2.173441087990279
shape_Scale_18 = 2.173441087990279
shape_Scale_19 = 2.173441087990279
shape_Scale_20 = 2.173441087990279
shape_Scale_21 = 2.173441087990279
shape_Scale_22 = 2.173441087990279
shape_Scale_23 = 2.173441087990279
shape_Scale_24 = 2.173441087990279
shape_Scale_25 = 2.4
shape_Scale_26 = 2.4
shape_Scale_27 = 2.4
shape_Scale_28 = 2.4
shape_Scale_29 = 2.4
shape_Scale_30 = 2.4
shape_Scale_31 = 2.4
shape_Scale_32 = 2.4
shape_Scale_33 = 2.4
shape_Scale_34 = 2.4
shape_Scale_35 = 2.4
shape_Scale_36 = 2.4
shape_Scale_37 = 2.4
shape_Scale_38 = 2.4
shape_Scale_39 = 2.4
shape_Scale_40 = 2.4
shape_Scale_41 = 2.4
shape_Scale_42 = 2.4
shape_Scale_43 = 2.4
shape_Scale_44 = 2.4
shape_Scale_45 = 2.4
shape_Scale_46 = 2.4
shape_Scale_47 = 2.4
shape_Scale_48 = 2.4

# remember to add 0.1 onto the cluster layers as this is taken off to stop conductors intersecting
cluster_Scale_1 = 2.0413102452884324 + 0.1
cluster_Scale_2 = 2.173441087990279 + 0.1
cluster_Scale_3 = 2.4 + 0.1
cluster_Scale_4 = 2.4 + 0.1


cluster_1_Position = shapely.geometry.Point(6.25, 15)
cluster_2_Position = shapely.geometry.Point(18.75, 15)
cluster_3_Position = shapely.geometry.Point(6.25, 5)
cluster_4_Position = shapely.geometry.Point(18.75, 5)

cluster_Position_Array = []
cluster_Scale_Array = []
shape_Scale_Array = []
shape_Array = []

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

cluster_Count = 4



get_Values = Experiment_4_Stage3_Concentrated
motor_Values = get_Values.Experiment_4(cluster_Count, cluster_Position_Array, cluster_Scale_Array, shape_Scale_Array, shape_Array)

# report back to optislang the chosen layer percentages chosen.


motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

# report back to optislang
cluster_Scale_1_Chosen = cluster_Scale_1
cluster_Scale_2_Chosen = cluster_Scale_2
cluster_Scale_3_Chosen = cluster_Scale_3
cluster_Scale_4_Chosen = cluster_Scale_4


print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)