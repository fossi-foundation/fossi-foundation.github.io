#!/usr/bin/python3

# how to update the schedule
#
# 1) Google Docs Spreadsheet -> Export as CSV
# 2) ./schedule_csv_to_json.py schedule.csv > ../schedule.json

import csv
import json
import sys

def _remove_nb_spaces(instr):
    return instr.replace(u"\u00A0", " ")

events = []
with open(sys.argv[1], newline='') as schedule_csv:
    r = csv.reader(schedule_csv)
    for csv_row in r:
        e = {}
        e['start'] = _remove_nb_spaces(csv_row[1])
        e['end'] = _remove_nb_spaces(csv_row[2])
        e['speaker'] = _remove_nb_spaces(csv_row[3])
        e['affiliation'] = _remove_nb_spaces(csv_row[4])
        e['title'] = _remove_nb_spaces(csv_row[5])
        e['category'] = _remove_nb_spaces(csv_row[6])
        e['abstract'] = _remove_nb_spaces(csv_row[7])

        if not e['start'].startswith('20') or e['title'].lower() == 'break':
            # only year numbers ("slightly" hackish)
            continue

        events.append(e)

print(json.dumps(events, indent=2))
