-- Basic Queries

-- 1) Retrieve all books in the 'Fiction' genre 

Select * from books ;

Select * from books
where genre = 'Fiction' ;

-- 2) Find the books published after year 1950

Select * from books 
where published_year > 1950 ;

--3) List all the customers from Canda

Select * from customers 
where country = 'Canada'  ;

-- 4) Show orders placed in November 2023

Select* from orders ;

Select * from orders
where order_date between '2023-11-01' and '2023-11-30' ;

-- 5) Retrieve the total stocks of the books available 

Select * from books ;


Select sum(stock) as total_stock
from books ;

-- 6) Find the details of the most expensive books 


Select * 
from books
where price = (Select max(price) from books) ;

Select * from books 
order by price desc
limit 1 ;

-- 7) Show all the customers who ordered more than 1 quantity of a book

Select * from orders ;
select * from customers ;

Select c.name , o.quantity
from customers c
join orders o
on c.customer_id = o.order_id
where o.quantity > 1 ;

-- 8) Retrieve all the orders where the total amount exceeds $20

Select * from orders
where total_amount > 20 ;

-- 9) List all the genres available in the book store 

select * from books ;

select distinct(genre)
from books ;

-- 10) Find the books with the lowest stock 

Select * from books
where stock = (select min(stock) from books ) ;

Select * from books
order by stock asc
limit 1 ; 

-- 11) Calculate the total revenue generated from all the orders 

select * from orders ;

select sum(total_amount) as Revenue
from orders ;












































































