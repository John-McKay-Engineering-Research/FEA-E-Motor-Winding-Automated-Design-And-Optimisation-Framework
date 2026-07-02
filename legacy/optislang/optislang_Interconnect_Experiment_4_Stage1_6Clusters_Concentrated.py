import Experiment_4_Stage1_6Clusters_Concentrated
import shapely  # used for geom points.
import sys
import os
import time

# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# max scale for concentrated coil is 2.5 ***
try:
    cluster_Scale_1 = n_
except:
    n_ = 0.00000000

try:
    cluster_Scale_2 = n1_
except:
    n1_ = 0.00000000

try:
    cluster_Scale_3 = n2_
except:
    n2_ = 0.00000000

try:
    cluster_Scale_4 = n3_
except:
    n3_ = 0.00000000

try:
    cluster_Scale_5 = n4_
except:
    n4_ = 0.00000000

try:
    cluster_Scale_6 = n5_
except:
    n5_ = 0.00000000

cluster_1_Position = shapely.geometry.Point(4.1666, 5)
cluster_2_Position = shapely.geometry.Point(12.4966, 5)
cluster_3_Position = shapely.geometry.Point(20.83266, 5)
cluster_4_Position = shapely.geometry.Point(4.1666, 15)
cluster_5_Position = shapely.geometry.Point(12.4966, 15)
cluster_6_Position = shapely.geometry.Point(20.83266, 15)

cluster_Position_Array = []
cluster_Scale_Array = []

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

cluster_Count = 6



get_Values = Experiment_4_Stage1_6Clusters_Concentrated
motor_Values = get_Values.Experiment_4(cluster_Count, cluster_Position_Array, cluster_Scale_Array)

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

# cluster positions are now randomised. need to be recorded. report back to optislang
cluster_1_Positions = str(motor_Values[2])
cluster_2_Positions = str(motor_Values[3])
cluster_3_Positions = str(motor_Values[4])
cluster_4_Positions = str(motor_Values[5])
cluster_5_Positions = str(motor_Values[6])
cluster_6_Positions = str(motor_Values[7])

print("cluster 1 Position : ", cluster_1_Positions)
print("cluster 2 Position : ", cluster_2_Positions)
print("cluster 3 Position : ", cluster_3_Positions)
print("cluster 4 Position : ", cluster_4_Positions)
print("cluster 5 Position : ", cluster_5_Positions)
print("cluster 6 Position : ", cluster_6_Positions)


print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)