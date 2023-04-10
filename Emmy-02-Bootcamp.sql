-- I created my first database comprising unique customer IDs and varied the other IDs to show the possibility of one customer making multiple purchases. Further, I used a website to generate the data needed to fill these tables. Subsequently, I deployed this database to answering some key questions below. 

CREATE TABLE Customers (
	customer_id int PRIMARY KEY NOT NULL,
	customer_name VARCHAR (50) NOT NULL,
	email VARCHAR (50) NOT NULL,
	phone VARCHAR (50) NOT NULL);
	
CREATE TABLE Products (
	product_id int PRIMARY KEY NOT NULL,
	product_name VARCHAR (100) NOT NULL,
	product_description VARCHAR (500) NOT NULL,
	product_category text NOT NULL,
	unit_price numeric (10,2) NOT NULL);
	
CREATE TABLE Orders (
	order_id int PRIMARY KEY NOT NULL,
	customer_id int NOT NULL,
	order_date DATE NOT NULL,
	product_id int NOT NULL,
	order_quantity int NOT NULL,
	delivery_status text NOT NULL,
	FOREIGN KEY (customer_id) references Customers(customer_id),
	FOREIGN KEY (product_id) references Products(product_id));
	
CREATE TABLE Payments(
	payment_id int PRIMARY KEY NOT NULL,
	order_id int NOT NULL,
	payment_date DATE NOT NULL,
	FOREIGN KEY (order_id) references Orders(order_id));
	


