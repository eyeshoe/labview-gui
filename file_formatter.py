raw_file = open("example-data.txt", 'r')
raw_data = raw_file.read()

identifiers = []
data = []
# TODO: use regex to collect all of the identifiers and data points

data_file = open("test-data.txt", 'w')
for index in range(len(identifiers)):
	data_file.write(identifiers[index] + data[index])

raw_file.close()
data_file.close()