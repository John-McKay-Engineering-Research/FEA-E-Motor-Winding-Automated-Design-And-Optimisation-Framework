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
if not OSL_REGULAR_EXECUTION: # test run mode#
    number_Of_Conductors = 50
    #zeta_C = 1.3 # has to be between 1.1 and 1.3
    #zeta_N = 5.0 # between 1.0 and 5.0
    final_Area = 0.0
    slot_X = 25
    slot_Y = 50
    #fill_Factor = 0
    print("not locals")

def get_Fill_Factor(zeta_C, zeta_N):

    slot_Area = slot_X * slot_Y
    conductor_Final_Area = slot_Area / (zeta(zeta_C, zeta_N) * (1 + zeta_N) ** zeta_C)
    calc_Fill = (conductor_Final_Area / slot_Area) * 100
    fill_Factor = calc_Fill
    return fill_Factor
    print("fill factor ", fill_Factor)