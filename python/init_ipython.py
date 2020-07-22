# script contains functions to be made available to a python session

import numpy as np
import pandas as pd
from datetime import datetime


#constants
globals()['date_format'] = "%Y-%m-%d"



def print_head(db, key):
	print("\n>>>>> Key: " + key)
	print(db[key].head())
	print("\n\n")


def print_heads(db, filter=None):
	"""
Iterates through all the pairs in a Dictionary, and for each value, calls the head() function if is a DataFrame.
	"""
	for key in db.keys():
		try:
			if isinstance(db[key], pd.DataFrame):
				if filter is None:
					print_head(db, key)
				elif isinstance(filter, str) and key.startswith(filter):
					print_head(db, key)
				elif isinstance(filter, list) and filter.index(key) >= 0:
					print_head(db, key)
		except ValueError as e:
			pass
		

def print_groups(frame_group_by):
	"""
	Calls head() on all the groups in a DataFrameGroupBy
	"""
	for key, group in frame_group_by:
		print("\n>>>>> Key: {}".format(key))
		print(group.head())
		print("\n\n")


def date_diff(start_date, end_date=None):
	"""
Evaluates the difference between two dates. If no end date is supplied, then today's date is used. The result is returned in days. 
	"""
	end_date = datetime.strptime(end_date, date_format) if type(end_date) == 'str' else datetime.now()
	start_date = datetime.strptime(start_date, date_format)
	date_delta = end_date - start_date

	return date_delta.days


def date_from(date_str):
	return datetime.strptime(date_str, date_format)



def strip_cols(df, prefix):
	return df[[c for c in df.columns if not c.startswith(prefix)]]


