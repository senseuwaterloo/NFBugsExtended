# import csv

# bug_fixing_hash = ''
# bug_inducing_hash = ''


# with open('cassandra.csv') as csvfile:
#     commits = csv.DictReader(csvfile, delimiter=',')
#     for commit in commits:
#         if any(issue in commit['commit_message'] for issue in perf_tags):
#             perf_fix_commits.append(commit['commit_hash'])
#             number_fix_perf_commits = number_fix_perf_commits + 1
# csvfile.close()

# print(number_fix_perf_commits, 'performance fix commits')
# # print(str(perf_fix_commits))


# # ----------------------------------------------------------------------------------------

# perf_glm_probability_list = []
# perf_rf_probability_list = []

# perf_induce_commits = []

# with open('cassandra.csv') as csvfile:
#     commits = csv.DictReader(csvfile, delimiter=',')
#     for commit in commits:
#         if any(perf_fix in commit['fixes'] for perf_fix in perf_fix_commits):
#             perf_induce_commits.append(commit['commit_hash'])
# csvfile.close()

# print(str(len(perf_induce_commits)),'performance induce commits')


# # ----------------------------------------------------------------------------------------
# perf_commits = perf_fix_commits + perf_induce_commits

# with open('cassandra.csv') as csvfile, open('perf_cassandra.csv','w+') as f_out:
#     commits = csv.DictReader(csvfile, delimiter=',')
#     writer = csv.DictWriter(f_out, fieldnames=commits.fieldnames)
#     writer.writeheader()  # For writing header
#     for commit in commits:
#         for perf_c in perf_commits:
#             if perf_c in commit['commit_hash']:
#                 writer.writerow(commit)
                
# csvfile.close()

# # import csv
# # with open('D:/test.csv', 'r') as f, open('D:/out.csv', 'w') as f_out:
# #     reader = csv.DictReader(f)
# #     writer = csv.DictWriter(f_out, fieldnames=reader.fieldnames)
# #     writer.writeheader()  # For writing header
# #     for row in reader:
# #         if row['ICLEVEL'] == '1':
# #             writer.writerow(row)

# # ----------------------------------------------------------------------------------------


import datetime

# timestamp1 = datetime.datetime(2017, 12, 1).strftime('%s')
# timestamp2 = datetime.datetime(2017, 11, 14).strftime('%s')

# print(timestamp1)
# print(timestamp2)

timestamp1 = 1575291678
timestamp2 = 1542727422

# 1512079200
# 1510610400

def calculate_date(timestamp1, timestamp2):
    print((float(timestamp1)-float(timestamp2))/(60*60*24))

if (float(timestamp1)-float(timestamp2))/(60*60*24)>0:
    print('positive')
else:
    print('negative')


calculate_date(1406905606,1281245374)
calculate_date(1218042255,1162820275)
calculate_date(1192609411,1192525249)
calculate_date(1171049299,1162761361)
calculate_date(1169823832,1169659807)
calculate_date(1169823832,1169274676)
calculate_date(1169823832,1162761361)
calculate_date(1169823832,1169274676)
calculate_date(1169823832,1169275454)
calculate_date(1169823832,1169274676)
calculate_date(1164121622,1163687642)

from datetime import datetime
ts = int("1284101485")

# if you encounter a "year is out of range" error the timestamp
# may be in milliseconds, try `ts /= 1000` in that case
print(datetime.utcfromtimestamp(int(1406905606)).strftime('%Y-%m-%d %H:%M:%S'))
print(datetime.utcfromtimestamp(int(1218042255)).strftime('%Y-%m-%d %H:%M:%S'))
print(datetime.utcfromtimestamp(int(1192609411)).strftime('%Y-%m-%d %H:%M:%S'))
print(datetime.utcfromtimestamp(int(1171049299)).strftime('%Y-%m-%d %H:%M:%S'))

print(datetime.utcfromtimestamp(int(1169823832)).strftime('%Y-%m-%d %H:%M:%S'))

print(datetime.utcfromtimestamp(int(1164121622)).strftime('%Y-%m-%d %H:%M:%S'))


