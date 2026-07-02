import Experiment_4_Stage2_6Clusters_Concentrated
import shapely  # used for geom points.
import sys
import os
import time

# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# max scale for concentrated coil is 2.5 ***


shape_Scale_1 = 1.98
shape_Scale_2 = 1.98
shape_Scale_3 = 1.98
shape_Scale_4 = 1.98
shape_Scale_5 = 1.98
shape_Scale_6 = 1.98
shape_Scale_7 = 1.98
shape_Scale_8 = 1.98
shape_Scale_9 = 1.9045640584890444
shape_Scale_10 = 1.9045640584890444
shape_Scale_11 = 1.9045640584890444
shape_Scale_12 = 1.9045640584890444
shape_Scale_13 = 1.9045640584890444
shape_Scale_14 = 1.9045640584890444
shape_Scale_15 = 1.9045640584890444
shape_Scale_16 = 1.9045640584890444
shape_Scale_17 = 1.9777485006849211
shape_Scale_18 = 1.9777485006849211
shape_Scale_19 = 1.9777485006849211
shape_Scale_20 = 1.9777485006849211
shape_Scale_21 = 1.9777485006849211
shape_Scale_22 = 1.9777485006849211
shape_Scale_23 = 1.9777485006849211
shape_Scale_24 = 1.9777485006849211
shape_Scale_25 = 1.8649220271943339
shape_Scale_26 = 1.8649220271943339
shape_Scale_27 = 1.8649220271943339
shape_Scale_28 = 1.8649220271943339
shape_Scale_29 = 1.8649220271943339
shape_Scale_30 = 1.8649220271943339
shape_Scale_31 = 1.8649220271943339
shape_Scale_32 = 1.8649220271943339
shape_Scale_33 = 1.8069948046410313
shape_Scale_34 = 1.8069948046410313
shape_Scale_35 = 1.8069948046410313
shape_Scale_36 = 1.8069948046410313
shape_Scale_37 = 1.8069948046410313
shape_Scale_38 = 1.8069948046410313
shape_Scale_39 = 1.8069948046410313
shape_Scale_40 = 1.8069948046410313
shape_Scale_41 = 1.8126061706751686
shape_Scale_42 = 1.8126061706751686
shape_Scale_43 = 1.8126061706751686
shape_Scale_44 = 1.8126061706751686
shape_Scale_45 = 1.8126061706751686
shape_Scale_46 = 1.8126061706751686
shape_Scale_47 = 1.8126061706751686
shape_Scale_48 = 1.8126061706751686


# set by stage 1
cluster_Scale_1 = 2.08
cluster_Scale_2 = 2.00456
cluster_Scale_3 = 2.07775
cluster_Scale_4 = 1.96492
cluster_Scale_5 = 1.90699
cluster_Scale_6 = 1.91261

cluster_1_Position = shapely.geometry.Point(4.1666, 5)
cluster_2_Position = shapely.geometry.Point(12.4966, 5)
cluster_3_Position = shapely.geometry.Point(20.83266, 5)
cluster_4_Position = shapely.geometry.Point(4.1666, 15)
cluster_5_Position = shapely.geometry.Point(12.4966, 15)
cluster_6_Position = shapely.geometry.Point(20.83266, 15)

cluster_1_Chosen_Conductor_Positions = [5, 1, 7, 2, 3, 10, 8, 9]
cluster_2_Chosen_Conductor_Positions = [6, 7, 4, 0, 3, 9, 10, 8]
cluster_3_Chosen_Conductor_Positions = [7, 8, 3, 10, 1, 0, 5, 4]
cluster_4_Chosen_Conductor_Positions = [6, 7, 8, 2, 3, 0, 5, 4]
cluster_5_Chosen_Conductor_Positions = [5, 4, 6, 1, 7, 2, 3, 9]
cluster_6_Chosen_Conductor_Positions = [6, 7, 1, 8, 4, 0, 3, 9]

cluster_Position_Array = []
cluster_Scale_Array = []
shape_Scale_Array = []
cluster_Chosen_Conductor_Positions_Array = []

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

cluster_Count = 6



get_Values = Experiment_4_Stage2_6Clusters_Concentrated
motor_Values = get_Values.Experiment_4(cluster_Count, cluster_Position_Array, cluster_Scale_Array, shape_Scale_Array, cluster_Chosen_Conductor_Positions_Array)

# report back to optislang the chosen layer percentages chosen.


motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

# report back to optislang
cluster_Scale_1_Chosen = cluster_Scale_1
cluster_Scale_2_Chosen = cluster_Scale_2
cluster_Scale_3_Chosen = cluster_Scale_3
cluster_Scale_4_Chosen = cluster_Scale_4
cluster_Scale_5_Chosen = cluster_Scale_5
cluster_Scale_6_Chosen = cluster_Scale_6


print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)