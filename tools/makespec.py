import csv

specFile = open("newSpec00", "a")

def createHeader(filename):
    return "beginseg\n     name \"" + filename + "\"\n     include \"build/baserom/" + filename + ".o\"\nendseg\n"

def createObjectHeader(filename):
    return "beginseg\n     name \"" + filename + "\"\n     romalign 0x1000\n     include \"build/baserom/" + filename + ".o\"\nendseg\n"
with open('objects.csv', mode='r') as csv_file:
    csv_reader = csv.reader(csv_file)
    line_count = 0
    for row in csv_reader:
        text = createObjectHeader(row[0])
        specFile.write(text)
        line_count += 1
    print(f'Processed {line_count} lines.')
