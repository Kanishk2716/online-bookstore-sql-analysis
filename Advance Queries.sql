-- Advance Queries 

-- 1) Retrieve the total number of books sold for each genre 

Select * from books ;
Select * from orders ;

Select b.genre , sum(o.quantity) 
from books b
join orders o
on b.book_id = o.book_id
group by b.genre ; 


-- 2) Find the average price of the books in the 'fantasy' genre 

select genre , avg(price)
from books 
group by genre
having genre = 'Fantasy' ;


-- 3) List the customers who have placed atleast 2 orders 

select * from customers; 
select * from orders ;


SELECT c.name , o.customer_id, COUNT(o.customer_id)
FROM orders o
join customers c 
	on c.customer_id = o.customer_id
GROUP BY c.name , o.customer_id
HAVING COUNT(o.customer_id) >= 2 ;

-- 4) Find the most frequent ordered book (highest ordered book)

select * from books ;

select  o.book_id , b.title , count(o.order_id) as order_count
	from orders o
	join books b on o.book_id = b.book_id
	group by o.book_id , b.title 
	order by count(o.order_id) desc 
	limit 1 ;

--5) Show the top 3 most expensive books of 'Fantasy genre'

select * from books 
where genre = 'Fantasy'
order by price desc 
limit 3 ;

--6) Retrieve the total quantity of books sold by each author

select * from books ;

select * from orders ;

Select b.author , sum(o.quantity)
from books b
join orders o
on b.book_id = o.book_id
group by b.author;

-- 7) List the cities where customers who spent over $30 are located

Select * from customers ;

select * from orders ;

Select distinct(c.city) , o.total_amount
from customers c 
join orders o
on c.customer_id = o.customer_id
where o.total_amount > 30.00 ;

-- 8) Find the customers who spent most on the orders

Select * from customers ;


Select * from orders ;

Select c.name , sum(o.total_amount)
from customers c 
join orders o
on c.customer_id = o.customer_id 
group by c.name 
order by sum(o.total_amount) desc 
limit 5 ;

-- 9) Calculate the stock remaining after fulfilling all orders

select * from orders ;
select * from books ;


select sum(stock)
	from books ;

select sum(quantity)
	from orders ;

select (select sum(stock) from books) - (select sum(quantity) from orders)
	as remaining_stock ;

select b.book_id , b.title , b.stock , COALESCE(sum(o.quantity) , 0) as order_quantity ,
b.stock - COALESCE(sum(o.quantity) , 0) as remaining_quantity
from books b
left join orders o on b.book_id = o.book_id
group by b.book_id ; 


























































































