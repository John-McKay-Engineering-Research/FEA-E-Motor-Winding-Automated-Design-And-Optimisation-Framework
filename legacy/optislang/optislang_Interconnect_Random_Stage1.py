import Experiment_2_Stage1


zeta_C = 1.27  # not less than 1.1
zeta_N = 5  # not greater than 3 for multi-shapes, up to 5 for single shapes

get_Values = Experiment_2_Stage1
motor_Values = get_Values.Experiment_2(zeta_C, zeta_N)

motor_Efficiency = motor_Values[0]  # get_Values[0]
motor_Losses = motor_Values[1]  # get_Values[1]

print("motor_Efficiency = ", motor_Efficiency, "motor_Losses = ", motor_Losses)