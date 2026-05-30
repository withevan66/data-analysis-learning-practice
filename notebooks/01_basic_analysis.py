import pandas as pd

#read data
df = pd.read.csv("../data/orders.csv")

#preview data
print("First 5 rows")
print(df.head())

print("\nBasic information:")
print(df.info())

print("\nMissing valuse:")
print(df.isnull().sum())
