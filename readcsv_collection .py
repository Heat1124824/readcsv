import pandas as pd
from tabulate import tabulate


df = pd.read_csv("E:\\data_with_classes.csv")

matclass1 = []
matclass2 = []
matclass3 = []

for index, row in df.iterrows():
    if row['Class'] == 1:
        matclass1.append(row.drop('Class'))
    elif row['Class'] == 2:
        matclass2.append(row.drop('Class'))
    elif row['Class'] == 3:
        matclass3.append(row.drop('Class'))

class1_df = pd.DataFrame(matclass1)
class2_df = pd.DataFrame(matclass2)
class3_df = pd.DataFrame(matclass3)

print("Class 1 Data:")
print(tabulate(class1_df, headers='keys', tablefmt='psql'))
print()

print("Class 2 Data:")
print(tabulate(class2_df, headers='keys', tablefmt='psql'))
print()

print("Class 3 Data:")
print(tabulate(class3_df, headers='keys', tablefmt='psql'))