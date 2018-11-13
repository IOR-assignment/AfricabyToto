'''

Short hacked-together python program that takes a txt file consisting of the data
Copy-pasted from the tables in the thesis pdf, and converts them to SQL commands that
can be used to make a SQL database without typing in every single entry.

'''

import numpy as np

data = np.genfromtxt("data.txt", dtype=[('myint1','i8'),('myint2','i8'),('mystring1','S3'),('mystring2','S3'),('mystring3','S5'),('mystring4','S5'),('mystring5','S5'),('mystring6','S5')])


SQL_command = ""
count = 1
for entry in data:
    SQL_command = '(' + str(entry[0]) + ',' + str(entry[1]) + ",'" + entry[2].decode('unicode_escape') + "','" + entry[3].decode('unicode_escape') + "','" + entry[4].decode('unicode_escape') + "','" + entry[5].decode('unicode_escape') + "'," + entry[6].decode('unicode_escape') + ',' + entry[7].decode('unicode_escape') + ',' + str(count) + '),'
    print(SQL_command)
    count += 1
    
