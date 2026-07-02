import Experiment_4_Stage1_Concentrated
import shapely  # used for geom points.
import sys
import os
import time

# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# max scale for concentrated coil is 2.5 ***
cluster_Scale_1 = 2.5
cluster_Scale_2 = 2.5
cluster_Scale_3 = 2.5
cluster_Scale_4 = 2.5


cluster_1_Position = shapely.geometry.Point(6.25, 15)
cluster_2_Position = shapely.geometry.Point(18.75, 15)
cluster_3_Position = shapely.geometry.Point(6.25, 5)
cluster_4_Position = shapely.geometry.Point(18.75, 5)

cluster_Position_Array = []
cluster_Scale_Array = []

cluster_Scale_Array.append(cluster_Scale_1)
cluster_Scale_Array.append(cluster_Scale_2)
cluster_Scale_Array.append(cluster_Scale_3)
cluster_Scale_Array.append(cluster_Scale_4)

cluster_Position_Array.append(cluster_1_Position)
cluster_Position_Array.append(cluster_2_Position)
cluster_Position_Array.append(cluster_3_Position)
cluster_Position_Array.append(cluster_4_Position)


cluster_Count = 4


get_Values = Experiment_4_Stage1_Concentrated
motor_Values = get_Values.Experiment_4(cluster_Count, cluster_Position_Array, cluster_Scale_Array)

# report back to optislang the chosen layer percentages chosen.


motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

# report back to optislang
cluster_Scale_1_Chosen = cluster_Scale_1
cluster_Scale_2_Chosen = cluster_Scale_2
cluster_Scale_3_Chosen = cluster_Scale_3
cluster_Scale_4_Chosen = cluster_Scale_4


print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)