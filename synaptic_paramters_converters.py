import csv
import struct

RADIX = 16
DEPTH = 2048
WIDTH = 32

COE_HEADER = """;******************************************************************
;******** SYANPSE PARAMETERES FOR BRAM INITIZALIZATION *********
;******************************************************************
; used for a dual port block ram configuration 
;
;
; This .COE file specifies initialization values for a block 
; memory of depth=""" + str(DEPTH) + """, and width= """ + str(WIDTH) + """. In this case, values are 
; specified in hexadecimal format.
memory_initialization_radix=""" + str(RADIX) + """;
memory_initialization_vector=
"""


def float_to_hex(f):
    return hex(struct.unpack('<I', struct.pack('<f', f))[0])


def read_csv(file_path):
    """
    Reads a CSV file, skipping the first 'skip_lines' lines.

    :param file_path: The path to the CSV file.
    :param skip_lines: The number of lines at the beginning of the file to skip.
    :return: A list of lists, where each inner list represents a row in the CSV file.
    """
    data = []
    with open(file_path, 'r') as file:
        reader = csv.reader(file)

        # Skip the specified number of lines at the beginning
        header = next(reader)
        data.append(header)

        # Read the rest of the lines and append to the data list
        for row in reader:
            ieee754_row_data = [float_to_hex(
                float(element)) for element in row]
            data.append(ieee754_row_data)

    return data


# Usage
read_file_path = 'params.csv'  # Replace with your file path
data = read_csv(read_file_path)

write_file_path = 'synapse_params.coe.txt'

with open(write_file_path, 'w') as file:
    file.write(COE_HEADER)

    for i, row in enumerate(data):
        if i == 0:
            continue
        for j, element in enumerate(row):
            if i == len(data)-1 and j == len(row)-1:
                file.write(str(element[2:])+';\r')
            else:
                file.write(str(element[2:])+',\r')
print("CSV successfully transferred to *.coe file extension")
