import json

# Quick script to generate a usage.toml file!

# Download the words json from api.linku.la/v2/words
with open("words.json") as words:
    data = json.loads(words.read())
    for i in data.keys():
        usage = data[i]["usage"]
        usage_array = [[],[]]
        for key in ["2022-08", "2023-09", "2024-09", "2025-09"]:
            if key in usage.keys():
                usage_array[0].append(int(key[:4]))
                usage_array[1].append(usage[key])
        print(i + " = " + str(usage_array))