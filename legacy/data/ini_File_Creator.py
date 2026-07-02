import configparser
from configparser import SafeConfigParser

# configparser enables the reading and writing of 'ini' files, good for storing variables etc.
# use this to store the coil counter, used to store the current coil number which constructs file names, folder names etc.
def write_Ini_File_Test():
    config = configparser.ConfigParser()
    config['Coil Counter'] = {}
    config['Coil Counter']['Coil Number'] = '0'

    # with open('C:/Users/Jacks/Desktop/coil_Counter.ini', 'w') as configfile:
    with open('C:/Users/Jacks/Desktop/mock_Experiment/coil_Counter.ini', 'w') as configfile:
        config.write(configfile)

# read the config file.

def read_Ini_File_Test():
    config = configparser.ConfigParser()
    config.sections()
    # config.read('C:/Users/Jacks/Desktop/coil_Counter.ini')
    config.read('C:/Users/John McKay/Desktop/simulation_Source/coil_Counter.ini')
    # print(config['Coil Counter'])
    # print('Coil Counter' in config)
    # print('Coil Number' in config['Coil Counter'])
    # print(config['Coil Counter']['Coil Number'])

    new_Value = int(config['Coil Counter']['Coil Number'])
    print("value read is ", new_Value)

    return new_Value
    # config.set('Coil Counter', 'Coil Number', new_Value)
    # with open('C:/Users/Jacks/Desktop/coil_Counter.ini', 'w') as configfile:
        # config.write(configfile)


def update_Coil_Counter():
    config = configparser.ConfigParser()
    config.sections()
    # config.read('C:/Users/Jacks/Desktop/coil_Counter.ini')
    config.read('C:/Users/John McKay/Desktop/simulation_Source/coil_Counter.ini')
    # print(config['Coil Counter'])
    # print('Coil Counter' in config)
    # print('Coil Number' in config['Coil Counter'])
    # print(config['Coil Counter']['Coil Number'])

    new_Value = int(config['Coil Counter']['Coil Number'])
    new_Value += 1
    print("value read is ", new_Value)

    config.set('Coil Counter', 'Coil Number', str(new_Value))
    with open('C:/Users/John McKay/Desktop/simulation_Source/coil_Counter.ini', 'w') as configfile:
        config.write(configfile)


    # config.write(config[''])

    # config['Coil Counter']['Coil Number'] = str(1)

    #coil_Number = config.get('Coil Number', str)
    #print("the current coil Number is = ", coil_Number)


# write_Ini_File_Test()
# read_Ini_File_Test()
# update_Coil_Counter()