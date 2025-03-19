import pymysql
import pandas as pd

#Connect to Mysql
conn = pymysql.connect(host='localhost', user='root', password='yourpassword', database='sales_analysis')
query = "SELECT * FROM sales "
df_sales = pd.read_sql(query, conn)
conn.close()

# Show Data
print(df_sales.head())

# Calculate Total Revenue
total_revenue = df_sales['revenue'].sum()
print(f"Total Revenue:$ {total_revenue}")

#Sales by Region 
sales_by_region = df_sales.groupby('region')['revenue'].sum()
print(sales_by_region)

#Visualizing Sales Trends
import matplotlib.pyplot as plt # type: ignore

df_sales['date'] = pd.to_datetime(df_sales['date'])
df_sales.groupby('date')['revenue'].sum().plotI(kind='line', marker='o', title='Sales Trend')
plt.xlabel('Date')
plt.ylabel('Revenue')
plt.show()
