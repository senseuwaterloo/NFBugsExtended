with open('elasticsearch-py-f-dates.txt', 'r') as f:
    lines = f.readlines()

list_of_dates = []

with open('elasticsearch-py_functional_dates.txt', 'w+') as out: 

    for line in lines:
        if '*' in line:
            if len(list_of_dates) > 0:
                max_val = str(max(list_of_dates)) + '\n'
                out.write(max_val)
            list_of_dates = []
        else:
            list_of_dates.append(line.rstrip())
    if len(list_of_dates) > 0:
        max_val = str(max(list_of_dates)) + '\n'
        out.write(max_val)

out.close()