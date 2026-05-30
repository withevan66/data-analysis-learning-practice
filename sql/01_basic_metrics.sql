# count total orders
select
  count(*) as total orders
from orders;

#count unique users
select
  count(distinct users_id) as unique users 
from orders;

#calculate total sales amount
select
  sum(amount) as total_sales
from orders;

#calculate sales by category
select
  category,
  count(*) as order_count,
  sum(amount) as total_sales,
  avg(amount) as avg_order_value
from orders
group by category
order by total_sales desc;

-- 6. Calculate daily sales
select
    order_date,
    count(*) as order_count,
    sum(amount) as daily_sales
from orders
group by order_date
order by order_date;

-- 7. Find repeat users
select
    user_id,
    count(*) as order_count,
    sum(amount) as total_spent
from orders
group by user_id
having count(*) >= 2
order by total_spent desc;
