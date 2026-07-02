import Experiment_3_Stage1
import sys

# this python file will be used to connect to Optislang
# variable values will be injected by Optislang here and then passed to the experiment script as an array

# conductor percentages will be changed to floats in the script.

conductor_Layer_1 = 23
conductor_Layer_2 = 21
conductor_Layer_3 = 31
conductor_Layer_4 = 25

layer_Count = 4

layer_Array = []

layer_Array.extend([conductor_Layer_1, conductor_Layer_2, conductor_Layer_3, conductor_Layer_4])

get_Values = Experiment_3_Stage1
motor_Values = get_Values.Experiment_3(layer_Count, layer_Array)

motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)