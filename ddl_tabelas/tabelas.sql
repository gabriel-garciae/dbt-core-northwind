create table customers_vip (
	id SERIAL primary key,
	name varchar(255),
	email varchar(255)
);
	
insert into customers_vip (name, email) values
('Alice', 'alice@example.com'),
('bob', NULL),
(null, 'charlie@example.com'),
('Charlie', 'alice@example.com');


create table orders_vip (
	order_id serial primary key,
	order_date date,
	customer_id int,
	status varchar(50),
	amount decimal(10,2),
	country_code char(2)
);

insert into orders_vip (order_date, customer_id, status, amount, country_code) values
('2024-01-01', 1, 'placed', 100.00, 'US'),
('2024-01-02', 2, 'invalid_status', 200.00, 'CA'),
(null, 3, 'completed', 300.00, 'GB'),
('2024-01-02', 4, 'returned', 150.00, NULL);


create table order_items_vip (
	item_id serial primary key,
	order_id int,
	product_id int,
	quantity int,
	price decimal(10, 2)
);

insert into order_items_vip (order_id, product_id, quantity, price) values
(1, 101, 1, 100.00),
(5, 102, 2, 100.00),
(3, 103, 3, 100.00),
(5, 101, 1, 150.00);
