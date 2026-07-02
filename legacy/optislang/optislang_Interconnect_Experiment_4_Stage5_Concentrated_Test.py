import Experiment_4_Stage5_Concentrated
import shapely  # used for geom points.
import sys
import os
import time

# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# max scale for concentrated coil is 2.5 ***


shape_1 = 1
shape_2 = 3
shape_3 = 4
shape_4 = 4
shape_5 = 2
shape_6 = 3
shape_7 = 4
shape_8 = 2
shape_9 = 1
shape_10 = 1
shape_11 = 1
shape_12 = 4
shape_13 = 3
shape_14 = 1
shape_15 = 1
shape_16 = 1
shape_17 = 4
shape_18 = 3
shape_19 = 3
shape_20 = 1
shape_21 = 1
shape_22 = 1
shape_23 = 1
shape_24 = 4
shape_25 = 1
shape_26 = 1
shape_27 = 2
shape_28 = 1
shape_29 = 4
shape_30 = 3
shape_31 = 1
shape_32 = 1
shape_33 = 1
shape_34 = 4
shape_35 = 1
shape_36 = 2
shape_37 = 1
shape_38 = 1
shape_39 = 2
shape_40 = 2
shape_41 = 4
shape_42 = 1
shape_43 = 1
shape_44 = 3
shape_45 = 4
shape_46 = 1
shape_47 = 3
shape_48 = 1

shape_Scale_1 = 2.4
shape_Scale_2 = 2.4
shape_Scale_3 = 2.4
shape_Scale_4 = 2.4
shape_Scale_5 = 2.4
shape_Scale_6 = 2.4
shape_Scale_7 = 2.4
shape_Scale_8 = 2.4
shape_Scale_9 = 2.4
shape_Scale_10 = 2.4
shape_Scale_11 = 2.4
shape_Scale_12 = 2.4
shape_Scale_13 = 2.3604121348295344
shape_Scale_14 = 2.3604121348295344
shape_Scale_15 = 2.3604121348295344
shape_Scale_16 = 2.3604121348295344
shape_Scale_17 = 2.3604121348295344
shape_Scale_18 = 2.3604121348295344
shape_Scale_19 = 2.3604121348295344
shape_Scale_20 = 2.3604121348295344
shape_Scale_21 = 2.3604121348295344
shape_Scale_22 = 2.3604121348295344
shape_Scale_23 = 2.3604121348295344
shape_Scale_24 = 2.3604121348295344
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


rotation_1 = 90
rotation_2 = 360
rotation_3 = 270
rotation_4 = 270
rotation_5 = 360
rotation_6 = 360
rotation_7 = 270
rotation_8 = 0
rotation_9 = 270
rotation_10 = 90
rotation_11 = 90
rotation_12 = 360
rotation_13 = 90
rotation_14 = 90
rotation_15 = 360
rotation_16 = 180
rotation_17 = 270
rotation_18 = 0
rotation_19 = 90
rotation_20 = 180
rotation_21 = 90
rotation_22 = 360
rotation_23 = 0
rotation_24 = 90
rotation_25 = 180
rotation_26 = 90
rotation_27 = 360
rotation_28 = 180
rotation_29 = 180
rotation_30 = 90
rotation_31 = 0
rotation_32 = 90
rotation_33 = 180
rotation_34 = 0
rotation_35 = 270
rotation_36 = 0
rotation_37 = 360
rotation_38 = 270
rotation_39 = 90
rotation_40 = 90
rotation_41 = 270
rotation_42 = 0
rotation_43 = 180
rotation_44 = 270
rotation_45 = 0
rotation_46 = 180
rotation_47 = 360
rotation_48 = 180


# remember to add 0.1 onto the cluster layers as this is taken off to stop conductors intersecting
cluster_Scale_1 = 2.4 + 0.1
cluster_Scale_2 = 2.3604121348295344 + 0.1
cluster_Scale_3 = 2.4 + 0.1
cluster_Scale_4 = 2.4 + 0.1

cluster_1_Position = shapely.geometry.Point(7.5, 15)
cluster_2_Position = shapely.geometry.Point(19.43, 15)
cluster_3_Position = shapely.geometry.Point(5.2125, 5)
cluster_4_Position = shapely.geometry.Point(19.3395, 5)

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