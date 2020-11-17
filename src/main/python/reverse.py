def month_change(month):
    out = ''
    if month == '01':
        out = 'Jan'
    elif month == '02':
        out = 'Feb'
    elif month == '03':
        out = 'Mar'
    elif month == '04':
        out = 'Apr'
    elif month == '05':
        out = 'May'
    elif month == '06':
        out = 'Jun'
    elif month == '07':
        out = 'Jul'
    elif month == '08':
        out = 'Aug'
    elif month == '09':
        out = 'Sep'
    elif month == '10':
        out = 'Oct'
    elif month == '11':
        out = 'Nov'
    elif month == '12':
        out = 'Dec'
    else:
        print('error')
    
    return out
        

def year_change(year):
    out = ''
    size = len(year)
    for i in range(size):
        if (i == size-2) or (i == size-1):
            out += year[i] 

    return out

def change_format(src, des):
    file = open(src, "r", encoding='utf-8', errors='ignore')
    csv = open(des, "w", encoding='utf-8', errors='ignore')
    lines = file.read()

    pos = 1
    for line in lines.split('\n'):
        if pos == 1:
            pos += 1
            continue
        array = line.split(',')
        date = array[0]

        size = len(array)
        remain = ''
        for i in range(1, size):
            if i == size - 2:
                continue
            if i != size - 1:
                data = array[i] + ','
            else:
                data = array[i]
            remain += data

        # [2020, 09. 16]
        date_array = date.split('-') 
        print(date_array)
        res = []

        year = date_array[0]
        month = date_array[1]
        day = date_array[2]
        # 转换
        res.append(day)
        res.append(month_change(month))
        res.append(year_change(year))
        date_output = res[0] + '-' + res[1] + '-' + res[2] + ','

        output = date_output + remain + '\n'
        csv.write(output)


if __name__ == '__main__':
    a = []
    for i in range(1, len(sys.argv)):
        a.append((str(sys.argv[i])))
    print(a)
    change_format(a[0], a[1])