import Experiment_2_Stage1

try:
    zeta_C = n_  # not less than 1.1
except:
    n_ = 0.00000000

try:
    zeta_N = n1_  # not greater than 3 for multi-shapes, up to 5 for single shapes
except:
    n1_ = 0.00000000

# we can use this script for both stage1 and stage2 for random.

get_Values = Experiment_2_Stage1
motor_Values = get_Values.Experiment_2(zeta_C, zeta_N)

motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)