#Title :- Retail Profitability & Market Segment Analysis

#QUESTION 2

select Category,
	sum(sales)as total_sales,
    sum(profit) as total_profit, 
    avg(discount) as avg_discount 
from data
group by Category
order by total_profit asc;

select region,
	sum(sales)as total_sales,
    sum(profit) as total_profit, 
    avg(discount) as avg_discount 
from data
group by region
order by total_profit asc;


select category,
      avg(discount)as avg_discount,
      avg(profit)as avg_profit
from data
group by category;


select `order id`,
    `product name`,
    category,
    region,
    sales,
    discount,
    profit
from data
where profit < 0
order by profit;


#QUESTION 4


use superstore_db;

CREATE TABLE data (
    row_id INT,
    order_id VARCHAR(30),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(30),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code INT,
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,2)
);


select * from data
where Discount >0.20 and profit <0;

select *from data
where category= "Furniture"
and region="south"
and profit<0;

select * from data
where segment ="consumer"
and Discount >0.30
and Profit <0;


select region, 
      count(distinct `order id`)as total_orders,
      sum(sales)as total_sales,
      sum(profit)as total_profit,
      avg(discount) as avg_discount
      from data
     group by region
     order by total_profit asc;
     

select 
      count(*) as loss_transactions,
       sum(profit) as total_loss,
       avg(discount)as avg_discount
from data
where Profit < 0;

