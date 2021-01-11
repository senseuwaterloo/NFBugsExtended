import csv

# hash_date_dict = {}

# start_hash = '' # oldest
# end_hash = '' # newest

# functional_fix_hashes = []

# with open('elasticsearch-py.csv') as csvfile:
#     commits = csv.DictReader(csvfile, delimiter=',')
#     for commit in commits:
#         if 'fix' in commit['commit_message'] or 'Fix' in commit['commit_message']:
#             functional_fix_hashes.append(commit['commit_hash'])
# csvfile.close()

# print(len(functional_fix_hashes))

# counter = 0
# with open('elasticsearch-py.bug-fixing-changes') as f:
#     changes = f.readlines()
# f.close()
# with open('elasticsearch-py-functional-bug-fixing-changes.txt', 'w+') as out:
#     for line in changes:
#         if any(c_hash in line for c_hash in functional_fix_hashes):
#             new_line = line.replace(',OTHER,',',FIX,')
#             out.write(new_line)
#             counter = counter + 1
#         else:
#             out.write(line)
# print(counter)

#####################################################################################
import datetime
from datetime import datetime

def calculate_date(timestamp1, timestamp2):
    return((float(timestamp1)-float(timestamp2))/(60*60*24))

hash_date_dict = {}

with open('elasticsearch-py.csv') as csvfile:
    commits = csv.DictReader(csvfile, delimiter=',')
    for commit in commits:
        hash_date_dict[commit['commit_hash']] = commit['author_date_unix_timestamp'].rstrip()
csvfile.close()

print(len(hash_date_dict))

with open('elasticsearch-py.bug-inducing-changes') as f:
    bug_inducing_changes = f.readlines()[1:]
f.close()

list_of_seen_fixes = []

with open('elasticsearch-py-f-dates.txt', 'w+') as out:
    for pair in bug_inducing_changes:
        fix_hash = pair[0:40].rstrip()
        induce_hash = pair[41:81].rstrip()
        # print(fix_hash)
        # print(induce_hash)
        if fix_hash not in list_of_seen_fixes:
            list_of_seen_fixes.append(fix_hash)
            string = '\n\n' + '*********FIX*********' + ': ' + fix_hash + '\n'
            out.write(string)        
        if fix_hash in hash_date_dict:
            if induce_hash in hash_date_dict:
                fix_unix_date = hash_date_dict[fix_hash]
                induce_unix_date = hash_date_dict[induce_hash]
                date_subtraction = calculate_date(fix_unix_date,induce_unix_date)
                string = str(date_subtraction) + '\n'
                out.write(string)

