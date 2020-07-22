import os
import pandas as pd
import numpy as np


def build_db(path):
	db = {}
	
	for file in os.listdir(path):
		filePath = os.path.join(path, file)
		if filePath.endswith(".csv"):
			db[file[:file.index(".csv")]] = pd.read_csv(filePath)

	return db


print("DataFrames Initializr...")
database_name = input("Enter Database Name: ")
database_name = "database" if database_name.strip() == "" else database_name

db_path = input("Enter path to DB Files (Empty for current directory): ")
db_path = os.getcwd() if db_path.strip() == "" else db_path

globals()[database_name] = build_db(db_path)

print ("Successfully Built Database: {}".format(database_name))


