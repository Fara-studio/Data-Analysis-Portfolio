import pandas as pd
import matplotlib.pyplot as plt

# Load the data
data = pd.read_csv('Sample - Superstore.csv', encoding='cp1252')

# Check what's inside
print(data.head())

# Calculate total sales
total = data['Sales'].sum()
print(f'Total sales: {total}')

# Group sales by category
sales_by_cat = data.groupby('Category')['Sales'].sum()
sales_by_cat = sales_by_cat.sort_values(ascending=False)
print(sales_by_cat)

# Create visualization
plt.figure(figsize=(10, 6))
sales_by_cat.plot(kind='bar', color='skyblue')
plt.title('Sales by Category', fontsize=14)
plt.xlabel('Category', fontsize=12)
plt.ylabel('Sales ($)', fontsize=12)
plt.xticks(rotation=45)
plt.grid(axis='y', alpha=0.3)
plt.tight_layout()
plt.show()
