import os
import numpy as np
import pandas as pd


s = os.path.join(
	'https://archive.ics.uci.edu', 
	'ml', 'machine-learning-databases',
	'iris','iris.data'
)
print('Loading URL Data: ', s)

df = pd.read_csv(s, header = None, encoding = 'utf-8')
print('Finished Loading Data')


df.head()

y = df.iloc[0:100, 4].values
y = np.where(y == 'Iris-setosa', -1, 1)

X = df.iloc[0:100, [0, 2]].values


X_std = np.copy(X)
X_std[:, 0] = (X[:, 0] - X[:, 0].mean()) / X[:,0].std()
X_std[:, 1] = (X[:, 1] - X[:, 1].mean()) / X[:,1].std()


