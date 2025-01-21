import csv

file_name = "data.csv"
with open(file_name, mode="r", newline='') as file:
    reader = csv.DictReader(file)
    for row in reader:
        price = float(row["price"])
        if price > 50:
            print(row["product_id"], row["product_name"], price)