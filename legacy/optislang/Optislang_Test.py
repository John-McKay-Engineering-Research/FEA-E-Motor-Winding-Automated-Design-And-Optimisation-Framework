import math
import random
import scipy
from scipy.special import zeta, polygamma, factorial

# ** Quick Optislang python test ** -----------------------------------------------------------------------------------
# ** calculates the slot fill factor based on Hurwitz zeta function ---------------------------------------------------

# Check if Python is called outside optiSLang
if not 'OSL_REGULAR_EXECUTION' in locals():
    OSL_REGULAR_EXECUTION = False

# values to default if not existing yet
if not OSL_REGULAR_EXECUTION: # test run mode
    number_Of_Conductors = 50
    zeta_C = 1.0 # has to be between 1.1 and 1.3
    zeta_N = 1.0 # between 1.0 and 5.0
    final_Area = 0.0
    print("not locals")


fill_Factor = 0.0
slot_X = 25
slot_Y = 50
area_Array = []
slot_Area = slot_X * slot_Y

for x in range(number_Of_Conductors):
    conductor_Final_Area = slot_Area / (zeta(zeta_C, zeta_N) * (x + zeta_N) ** zeta_C)
    area_Array.append(conductor_Final_Area)

for x in range(len(area_Array)):
    final_Area += area_Array[x]


calc_Fill = (final_Area / slot_Area) * 100
fill_Factor = calc_Fill
print("fill factor ", fill_Factor)