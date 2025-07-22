Create table Books  (
	Book_ID Serial Primary key ,
	Title varchar(100) ,
	Author varchar(100) , 
	Genre varchar(50) ,
	Published_Year int ,
	Price numeric(10,2),
	Stock int 
) ;

Create table customers (
	Customer_id serial primary key ,
	Name varchar(100) ,
	Email varchar(100) , 
	Phone varchar(15) ,
	City varchar(50) ,
	Country varchar(100)	
) ;


Create table orders (
	Order_id Serial Primary key ,
	Customer_id int References customers(customer_id) ,
	Book_id int references Books(Book_ID) ,
	Order_date date ,
	Quantity int ,
	Total_Amount Numeric(10,2)
) ;


-- Import data into Books table 

COPY Books(Book_ID , Title , Author , Genre , Published_Year , Price , Stock )
From 'F:\Kanishak\IPU\IPU\SQL\Online Book Store\Books.csv'
Csv header ;

Select * from Books ;

Select * from customers ;

Select * from orders ;







