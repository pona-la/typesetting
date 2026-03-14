import requests
import csv
import re

# Script that pulls data from Kemeka's github repo, and makes minor adjustments to the definitions.csv file

with open("definitions.csv", "w") as file:
    url = "https://raw.githubusercontent.com/pona-la/kemeka.pona.la/refs/heads/main/data/definitions.csv"
    response = requests.get(url)
    file.write(response.content.decode("utf-8"))
    
with open("notes.csv", "w") as file:
    url = "https://raw.githubusercontent.com/pona-la/kemeka.pona.la/refs/heads/main/data/notes.csv"
    response = requests.get(url)
    file.write(response.content.decode("utf-8"))

with open('definitions.csv', newline='') as csvfile:
    raw_definitions = [row for row in csv.DictReader(csvfile)]

    definitions = []
    for row in raw_definitions:
        for key in ["times asked","submitted","keyword","pos","enumeration","tok","eng","examples"]:
            row[key] = row[key].strip()
        if row['examples'] != "":
            definitions.append(row)

    # loop through the rows start to finish
    # if the one below and above is a different word (or we're at start and below or at )

    for i in range(len(definitions)):
        enumeration = definitions[i]['enumeration']
        keyword = definitions[i]['keyword']

        # if enum has a non-1 value, move on
        if enumeration != "" and enumeration != "1":
            continue
        
        # if first and below diff, set enum to empty
        if i == 0 and definitions[i + 1]['keyword'] != definitions[i]['keyword']:
            definitions[i]['enumeration'] = ""
            continue

        # if last and above diff, set enum to empty
        if i == len(definitions) - 1 and definitions[i - 1]['keyword'] != definitions[i]['keyword']:
            definitions[i]['enumeration'] = ""
            continue

        # if one above is diff:
        if definitions[i - 1]['keyword'] != definitions[i]['keyword']:
            # - if one below is diff, set enum to empty
            if definitions[i + 1]['keyword'] != definitions[i]['keyword']:
                definitions[i]['enumeration'] = ""
            # - if one below is same: set enum to one
            else:
                definitions[i]['enumeration'] = "1"
        # if one above is same: set enum to one above + 1
        else:
            definitions[i]['enumeration'] = str(int(re.sub("[^0-9]", "", definitions[i - 1]['enumeration'])) + 1)
    
    with open("parsed.csv", "w") as output_file:
        fieldnames = [i for i in definitions[0].keys()]
        writer = csv.DictWriter(output_file, fieldnames=fieldnames)

        for row in definitions:
            writer.writerow(row)


