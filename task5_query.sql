select * from DMart_customer

select first_name,last_name,min(location) 
from DMart_customer 
group by first_name,last_name

select first_name,last_name,max(location) 
from DMart_customer 
where customer_id in (567,356,627,463,567,465,355,568,899,982,235,789,234,789,987,227,864,457,876,326,435,765)
group by first_name,last_name

select customer_id,first_name,last_name,count(customer_age)
from DMart_customer 
group by customer_id,first_name,last_name

select first_name,last_name,mob_no,sum(customer_age)
from DMart_customer
where location = 'Nagpur'
group by first_name,last_name,mob_no

select customer_id,count(customer_age)
from DMart_customer 
where customer_age > 40 
group by customer_id

select customer_id,first_name,last_name,sum(customer_age) 
from DMart_customer 
group by customer_id,first_name,last_name 
order by(customer_age) desc limit 40       

select location,avg(distinct mob_no) 
from DMart_customer 
group by location,mob_no 
order by (mob_no) desc limit 3

select customer_id as id, sum(mob_no) as no ,count(first_name) as name 
from DMart_customer
group by customer_id 
having customer_age > 30 

select location,sum(customer_age) as age 
from DMart_customer 
group by location 
order By age desc

select first_name as name,location,sum(mob_no) 
from DMart_customer 
where mob_no = 957345 OR mob_no = 456789  
group by name,location,customer_id
having customer_id = 899 OR customer_id = 144
