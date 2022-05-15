import xlrd
import mysql.connector

def export_to_database(file_name):
    file = file_name
    data = []
    serial_numbers = []
    
    wb = xlrd.open_workbook(file) 

    sheet = wb.sheet_by_index(0)

    data.append(sheet.cell_value(2,3))
    data.append(sheet.cell_value(3,3))
    data.append(sheet.cell_value(4,3))

    if sheet.cell_value(2,9) != '':
        data.append(1)
    else:
        data.append(0)

    data.append(sheet.cell_value(27,1))
    data.append(int(sheet.cell_value(32,2)))

    row_number = 49
    while sheet.cell_value(row_number,2) != '':
        serial_numbers.append(sheet.cell_value(row_number,2))
        row_number+=1

    print('**************************data Array**************************')
    print(data)
    print('*********************serial_numbers Array*********************')
    print(serial_numbers)
    print('\n')

    myConection = mysql.connector.connect( host='localhost', user= 'root', passwd='', db='intellimeter_test' )
    cur = myConection.cursor()
    sentence = "INSERT INTO data_sheet (panel_number,job_number,job_name,seal,type,modbus_id) VALUES ('"+data[0]+"','"+data[1]+"','"+str(data[2])+"','"+str(data[3])+"','"+data[4]+"','"+str(data[5])+"')"
    cur.execute( sentence )
    for i in range(len(serial_numbers)):
        sentence = "INSERT INTO serial_numbers (serial_number,panel_number,meter_no) VALUES ('"+serial_numbers[i]+"','"+data[0]+"','"+str(i+1)+"')"
        cur.execute( sentence )
    myConection.commit()
    myConection.close()

export_to_database('-8 2PP3BT.xls')
export_to_database('-5 6DPEA.xls')
export_to_database('-3 2DPEA.xls')
