import pandas
import shapely
import shapely.geometry.point
import numpy
import datetime # for getting date and time from the system
import re

def write_Excel_File():
    e_File = pandas.DataFrame({'States':['California', 'Florida', 'Montana', 'Colorodo', 'Washington', 'Virginia'],
                               'Capitals':['Sacramento', 'Tallahasse', 'Helena', 'Denver', 'Olympia', 'Richmond'],
                               'Population':['50829', '193551', '32315', '619968', '52555', '227032']})

    e_File.to_excel('C:/Users/Jacks/Desktop/coil_Excel_Folder/test_1.xlsx', sheet_name='coil_Number', index=False)

    e_File_2 = pandas.DataFrame({'Names':['Stephen', 'Camilla', 'Tom'],
                                 'Salary':[1000000, 70000, 60000]})

    e_File_3 = pandas.DataFrame({'Names':['Pete', 'April', 'Marty'],
                                 'Salary':[120000, 110000, 50000]})

    e_File_4 = pandas.DataFrame({'Names':['Victor', 'Victoria', 'Jennifer'],
                                 'Salary':[75000, 90000, 40000]})

    income_Sheets = {'Group_1':e_File_2, 'Group_2':e_File_3, 'group_3':e_File_4}
    writer = pandas.ExcelWriter('C:/Users/Jacks/Desktop/coil_Excel_Folder/test_2_Multisheet.xlsx', engine='xlsxwriter')

    for sheet_Name in income_Sheets.keys():
        income_Sheets[sheet_Name].to_excel(writer, sheet_name=sheet_Name, index=False)

    writer.save()


def write_Coil_To_Excel(shape_Array, conductor_Array):
        # need coil_Array, Shape_Array, operation_Array
        # create a dictionary
        coil_File = pandas.DataFrame()
        list_File = []
        sub_List = []
        operation = "operation = "
        scale_Factor = "scale_Factor = "
        coil_Configuration = "coil configuration number"
        time_Stamp = str(datetime.datetime.now().date())
        rotation = "rotation = "

        circle_ = 0
        square_ = 0
        triangle_ = 0
        hexagon_ = 0

        sub_List.append(time_Stamp) # adds a timestamp for the date the configuration is made.
        sub_List.append(coil_Configuration) # NOTE** every list or array is taken as a new 'row' for pandas.dataframe, when published to excel.
        list_File.append(sub_List) # add the coil configuration number

        for x in range(len(shape_Array)):
            sub_List = []
            if shape_Array[x] == "Circle":
                circle_ += 1
                sub_List.append(shape_Array[x] + str(circle_))
                sub_List.append(operation)
                sub_List.append(scale_Factor)
                sub_List.append(rotation)
                sub_List.append("centroid = " + str(conductor_Array[x].centroid.x) + "," + str(conductor_Array[x].centroid.y))
                for y in range(len(list(conductor_Array[x].exterior.coords))):
                    sub_List.append(conductor_Array[x].exterior.coords[y])
                #sub_List.append(list(conductor_Array[x].exterior.coords))
                list_File.append(sub_List)
                #list_File.append({shape_Array[x] + str(circle_): list(conductor_Array[x].exterior.coords)})

            if shape_Array[x] == "Square":
                square_ += 1
                sub_List.append(shape_Array[x] + str(square_))
                sub_List.append(operation)
                sub_List.append(scale_Factor)
                sub_List.append(rotation)
                sub_List.append("centroid = " + str(conductor_Array[x].centroid.x) + "," + str(conductor_Array[x].centroid.y))
                for y in range(len(list(conductor_Array[x].exterior.coords))):
                    sub_List.append(conductor_Array[x].exterior.coords[y])
                #sub_List.append(list(conductor_Array[x].exterior.coords))
                list_File.append(sub_List)
                #list_File.append({shape_Array[x] + str(square_): list(conductor_Array[x].exterior.coords)})

            if shape_Array[x] == "Triangle":
                triangle_ += 1
                sub_List.append(shape_Array[x] + str(triangle_))
                sub_List.append(operation)
                sub_List.append(scale_Factor)
                sub_List.append(rotation)
                sub_List.append("centroid = " + str(conductor_Array[x].centroid.x) + "," + str(conductor_Array[x].centroid.y))
                for y in range(len(list(conductor_Array[x].exterior.coords))):
                    sub_List.append(conductor_Array[x].exterior.coords[y])
                #sub_List.append(list(conductor_Array[x].exterior.coords))
                list_File.append(sub_List)
                #list_File.append({shape_Array[x] + str(triangle_): list(conductor_Array[x].exterior.coords)})

            if shape_Array[x] == "Hexagon":
                hexagon_ += 1
                sub_List.append(shape_Array[x] + str(hexagon_))
                sub_List.append(operation)
                sub_List.append(scale_Factor)
                sub_List.append(rotation)
                sub_List.append("centroid = " + str(conductor_Array[x].centroid.x) + "," + str(conductor_Array[x].centroid.y))
                for y in range(len(list(conductor_Array[x].exterior.coords))):
                    sub_List.append(conductor_Array[x].exterior.coords[y])
                #sub_List.append(list(conductor_Array[x].exterior.coords))
                list_File.append(sub_List)
                #list_File.append({shape_Array[x] + str(hexagon_): list(conductor_Array[x].exterior.coords)})

            # coil_File.axes.reverse()


        coil_File = pandas.DataFrame(list_File)
            # coil_File.axes.reverse()
            # list_File.append({shape_Array[x]: list(conductor_Array[x].exterior.coords)})


        # coil_File = pandas.DataFrame(list_File)
        coil_File.to_excel('C:/Users/Jacks/Desktop/coil_Excel_Folder/coil_Test_1.xlsx', sheet_name='coil_Number', index=False)


def write_Coil_To_Excel_Experiment_Version(shape_Array, conductor_Array, scale_Array, rotation_Array, coil_weight, coil_Fill_Factor, efficiency, total_Losses, file_Destination, coil_Number):
    # need coil_Array, Shape_Array, operation_Array
    # create a dictionary
    coil_File = pandas.DataFrame()
    list_File = []
    sub_List = []
    operation = "operation = "
    scale_Factor = "scale_Factor = "
    coil_Configuration = "coil configuration number"
    time_Stamp = str(datetime.datetime.now().date())
    coil_weight_Kg = coil_weight
    fill_Factor = coil_Fill_Factor
    rotation = "rotation = "
    efficiency = efficiency
    total_Losses = total_Losses

    # scale_Array = str(scale_Array)

    circle_ = 0
    square_ = 0
    triangle_ = 0
    hexagon_ = 0

    sub_List.append(time_Stamp)  # adds a timestamp for the date the configuration is made.
    sub_List.append("coil Configuration Number = " + str(coil_Number))  # NOTE** every list or array is taken as a new 'row' for pandas.dataframe, when published to excel.
    sub_List.append("coil Weight in Kg = " + str(coil_weight_Kg))
    sub_List.append("coil Fill Factor = " + str(fill_Factor))
    sub_List.append("coil Efficiency = " + str(efficiency))
    sub_List.append("coil Losses = " + str(total_Losses))
    list_File.append(sub_List)  # add the coil configuration number

    for x in range(len(shape_Array)):
        sub_List = []
        if shape_Array[x] == "Circle":
            circle_ += 1
            sub_List.append(shape_Array[x] + str(circle_))
            sub_List.append(operation)
            sub_List.append(scale_Factor + str(scale_Array[x]))

            # changed to save rotation value if provided.
            if rotation_Array == None:
                sub_List.append(rotation)
            else:
                sub_List.append(rotation + str(rotation_Array[x]))

            sub_List.append("centroid = " + str(conductor_Array[x].centroid.x) + "," + str(conductor_Array[x].centroid.y))
            for y in range(len(list(conductor_Array[x].exterior.coords))):
                sub_List.append(conductor_Array[x].exterior.coords[y])
            # sub_List.append(list(conductor_Array[x].exterior.coords))
            list_File.append(sub_List)
            # list_File.append({shape_Array[x] + str(circle_): list(conductor_Array[x].exterior.coords)})

        if shape_Array[x] == "Square":
            square_ += 1
            sub_List.append(shape_Array[x] + str(square_))
            sub_List.append(operation)
            sub_List.append(scale_Factor + str(scale_Array[x]))

            # changed to save rotation value if provided.
            if rotation_Array == None:
                sub_List.append(rotation)
            else:
                sub_List.append(rotation + str(rotation_Array[x]))

            sub_List.append("centroid = " + str(conductor_Array[x].centroid.x) + "," + str(conductor_Array[x].centroid.y))
            for y in range(len(list(conductor_Array[x].exterior.coords))):
                sub_List.append(conductor_Array[x].exterior.coords[y])
            # sub_List.append(list(conductor_Array[x].exterior.coords))
            list_File.append(sub_List)
            # list_File.append({shape_Array[x] + str(square_): list(conductor_Array[x].exterior.coords)})

        if shape_Array[x] == "Triangle":
            triangle_ += 1
            sub_List.append(shape_Array[x] + str(triangle_))
            sub_List.append(operation)
            sub_List.append(scale_Factor + str(scale_Array[x]))

            # changed to save rotation value if provided.
            if rotation_Array == None:
                sub_List.append(rotation)
            else:
                sub_List.append(rotation + str(rotation_Array[x]))

            sub_List.append("centroid = " + str(conductor_Array[x].centroid.x) + "," + str(conductor_Array[x].centroid.y))
            for y in range(len(list(conductor_Array[x].exterior.coords))):
                sub_List.append(conductor_Array[x].exterior.coords[y])
            # sub_List.append(list(conductor_Array[x].exterior.coords))
            list_File.append(sub_List)
            # list_File.append({shape_Array[x] + str(triangle_): list(conductor_Array[x].exterior.coords)})

        if shape_Array[x] == "Hexagon":
            hexagon_ += 1
            sub_List.append(shape_Array[x] + str(hexagon_))
            sub_List.append(operation)
            sub_List.append(scale_Factor + str(scale_Array[x]))

            # changed to save rotation value if provided.
            if rotation_Array == None:
                sub_List.append(rotation)
            else:
                sub_List.append(rotation + str(rotation_Array[x]))

            sub_List.append("centroid = " + str(conductor_Array[x].centroid.x) + "," + str(conductor_Array[x].centroid.y))
            for y in range(len(list(conductor_Array[x].exterior.coords))):
                sub_List.append(conductor_Array[x].exterior.coords[y])
            # sub_List.append(list(conductor_Array[x].exterior.coords))
            list_File.append(sub_List)
            # list_File.append({shape_Array[x] + str(hexagon_): list(conductor_Array[x].exterior.coords)})

        # coil_File.axes.reverse()

    coil_File = pandas.DataFrame(list_File)
    # coil_File.axes.reverse()
    # list_File.append({shape_Array[x]: list(conductor_Array[x].exterior.coords)})

    # coil_File = pandas.DataFrame(list_File)
    coil_File.to_excel(file_Destination + '/coil_' + str(coil_Number) + '.xlsx', sheet_name='coil_Number_' + str(coil_Number),
                       index=False)

def read_Excel_File():
    # create a dictionary
    coil_File = pandas.read_excel('C:/Users/Jacks/Desktop/coil_Excel_Folder/coil_Test_1.xlsx', sheet_name='coil_Number')
    data_F = pandas.DataFrame(coil_File)
    # remember dont count the index row!!!!
    row_ = data_F.iloc[2][0] # goes from the dataframe row by row,
    get_Float_ = data_F.iloc[2][4] # get the float value
    # row_ = len(data_F.iloc[0]) # will give the overall length of the biggest row, 71

    # data_F.to_csv('C:/Users/Jacks/Desktop/coil_Excel_Folder/coil_Test_1_V2.csv')
    #print(coil_File)

    # check if word is in a string
    if "Hexagon" in row_:
        print("yes")
    else:
        print("no")

    # separates the floats from the text, dont need to worry about strings or comma's etc.

    float_ = re.findall(r"[-+]?\d*\.\d+|\d+", get_Float_)[0] # will get the first point
    float_ = re.findall(r"[-+]?\d*\.\d+|\d+", get_Float_)[1] # second point in the float value.

    float_ = re.findall(r"[-+]?\d*\.\d+|\d+", get_Float_)
    print(row_, float_)

def read_Losses_Data(directory_Path, slot_number):
    # read the excel file containing the losses to be pushed back to optislang.
    core_Loss = 0
    eddy_Current_Loss = 0
    hysteresis_Loss = 0
    solid_Loss = 0 # complex coil loss, must subtract solid magnet losses, pre-calculated as 0.978303901135658
    magnet_Loss = 0.978303901135658 # in KW **
    total_Loss = 0

    # read values at postion 1 = coreloss, position 4 = eddycurrents, position 10 = hysteresis loss, position 13 = solidloss
    # losses include both stator and rotor parts.

    loss_File = pandas.read_csv(directory_Path + '/max_Loss_' + str(slot_number) + '.csv')
    # loss_File = pandas.read_csv('C:/Users/John McKay/Desktop/simulation_Source/max_Loss_Solid_Winding.csv')
    loss_Data = pandas.DataFrame(loss_File)
    x = 0
    while x <= 16:
        get_Value = loss_Data.iloc[0][x]
        # print("loss value at position ", x, "is ", get_Value)
        if x == 1:
            core_Loss = get_Value
        if x == 4:
            eddy_Current_Loss = get_Value
        if x == 10:
            hysteresis_Loss = get_Value
        if x == 13:
            solid_Loss = get_Value
        x += 1

    # we multiply by 6 so that the solid loss represents total losses for all windings even the simplified ones.
    total_Loss = (((solid_Loss - magnet_Loss) * 6) + core_Loss + eddy_Current_Loss + hysteresis_Loss) * 1000 # convert to watts

    return total_Loss

def read_Torque_Data(directory_Path, slot_Number):
    torque_Developed = 0

    loss_File = pandas.read_csv(directory_Path + '/max_Torque_' + str(slot_Number) + '.csv')
    # loss_File = pandas.read_csv('C:/Users/John McKay/Desktop/simulation_Source/max_Torque_Solid_Winding.csv')
    loss_Data = pandas.DataFrame(loss_File)

    get_Value = loss_Data.iloc[0][1]
    torque_Developed = get_Value # in Nm

    return torque_Developed

# read_Losses_Data()
# read_Excel_File()
# write_Excel_File()