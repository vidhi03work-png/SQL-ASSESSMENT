CREATE DATABASE superstore_db;
USE superstore_db;

#QUESTION 1

select *from data
limit 20;

#QUESTION 2

select Order_ID, order_Date, sales as total_sales,profit from data;

#QUESTION 3

select*from data
where sales>5000;

#QUESTION 4

select*from data
order by profit desc
limit 10;