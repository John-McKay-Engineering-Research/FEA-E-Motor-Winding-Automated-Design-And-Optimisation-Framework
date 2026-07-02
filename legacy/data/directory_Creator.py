import matplotlib
import shapely
import descartes
from shapely.geometry import Polygon
from matplotlib import pyplot
from matplotlib.patches import Circle
from descartes.patch import PolygonPatch
import math
import random
import numpy # use numpy arrays since python lists are slow and numpy is c++
# import pywin

import ini_File_Creator
import vbs_Script_Creator
# import win32com.client
import scipy
from scipy.special import zeta, polygamma, factorial
import excel_Tool
import os # make directories
import datetime

def create_Directory():
    coil_Counter = ini_File_Creator.read_Ini_File_Test() # get the current coil number.

    # time_Stamp = datetime.date.today().strftime('%d-%m-%Y')
    # print(time_Stamp)
    # experiment_Folder = 'C:/Users/John McKay/Desktop/simulation_Source/exp1_Stage1_Orderly' # parent directory
    # experiment_Folder = 'C:/Users/John McKay/Desktop/simulation_Source/data_7'  # parent directory
    experiment_Folder = 'C:/Users/John McKay/Desktop/final_Experiment_Simulation_Models/data_1'  # parent directory
    new_Folder = 'Stage_1_Orderly_CN_' + str(coil_Counter) # + '_Date(' + time_Stamp + ')' # don't need date, date modified is there.

    directory_Path = os.path.join(experiment_Folder, new_Folder)
    os.mkdir(directory_Path)

    # ini_File_Creator.update_Coil_Counter() # plus one onto the counter so we don't duplicate folders and lose data

    new_Directory = experiment_Folder + '/' + new_Folder
    print("directory created was ", new_Directory)

    return new_Directory

# create_Directory()

