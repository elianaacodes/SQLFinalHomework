create table salesperson(
	staff_id SERIAL primary key, 
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150)
);

create table car(
	car_id SERIAL primary key,
	make VARCHAR(50),
	model VARCHAR(100),
	year_ INTEGER, 
	color VARCHAR(50)
);

create table invoice(
	invoice_number SERIAL primary key,
	date_ VARCHAR(100),
	car_id SERIAL, 
	customer_id SERIAL, 
	staff_id SERIAL,
	subtotal VARCHAR(50),
	total VARCHAR(50),
	foreign key (car_id) references car(car_id),
	foreign key (customer_id) references customer(customer_id),
	foreign key (staff_id) references salesperson(staff_id)
);

create table mechanic_(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100), 
	last_name VARCHAR(100)
);

create table service(
	service_id SERIAL primary key,
	type_ VARCHAR(100)
);

create table service_ticket(
	serviceticket_id SERIAL primary key,
	service_id SERIAL, 
	mechanic_id SERIAL, 
	customer_id SERIAL, 
	car_id SERIAL, 
	date_ VARCHAR(50),
	subtotal VARCHAR(25),
	total VARCHAR(25),
	foreign key (service_id) references service(service_id),
	foreign key (mechanic_id) references mechanic_(mechanic_id),
	foreign key (customer_id) references customer(customer_id),
	foreign key (car_id) references car(car_id)
); 

create table part(
	part_id SERIAL primary key,
	price VARCHAR(50)
);

create table parts_used(
	partsused_id SERIAL primary key,
	part_id SERIAL,
	serviceticket_id SERIAL,
	foreign key (part_id) references part(part_id),
	foreign key (serviceticket_id) references service_ticket(serviceticket_id)
);

insert into salesperson(
	staff_id, 
	first_name,
	last_name 
)

values(
	01,
	'James',
	'Williamson'
); 

insert into salesperson(
	staff_id, 
	first_name,
	last_name 
)
values (
	03, 
	'Kate',
	'Orangeson'
); 

insert into customer( 
	customer_id,
	first_name,
	last_name,
	address
) 
values( 
	01,
	'Harriet',
	'Jameson',
	'01 Sky Road, Chicago, IL, 10202'
);

insert into customer( 
	customer_id,
	first_name,
	last_name,
	address
) 
values( 
	02,
	'Larry',
	'River',
	'45 Orange Avenue, NYC, NY 19393'
); 

insert into car( 
	car_id,
	make,
	model,
	year_, 
	color
)
values ( 
	123, 
	'Honda',
	'CR-V',
	2020,
	'Tan,'	
); 

insert into car( 
	car_id,
	make,
	model,
	year_, 
	color
)
values (
	145,
	'Toyota',
	'Camry',
	2021,
	'Dark Blue'
); 

insert into invoice( 
	invoice_number,
	date_,
	car_id, 
	customer_id, 
	staff_id,
	subtotal,
	total
) 
values (
	45,
	'03/04/2021',
	145, 
	01,
	03,
	'36,750',
	'42,670'	
);

insert into invoice( 
	invoice_number,
	date_,
	car_id, 
	customer_id, 
	staff_id,
	subtotal,
	total
) 
values (
	48,
	'04/20/2022',
	123,
	02,
	01,
	'45,000',
	'47,890'
);

insert into mechanic_( 
	mechanic_id, 
	first_name,
	last_name
)

values ( 
	01, 
	'Jerry',
	'Williamson'
);

insert into mechanic_( 
	mechanic_id, 
	first_name,
	last_name
)

values (
	02, 
	'Sally',
	'Lakes'
); 


insert into service(
	service_id, 
	type_ 
)

values (
	01, 
	'oil change'
); 

insert into service(
	service_id,
	type_ 
)
values (
	02, 
	'tire rotation'
); 


insert into service_ticket(
	serviceticket_id,
	service_id, 
	mechanic_id, 
	customer_id, 
	car_id,
	date_,
	subtotal,
	total 
)


values(  
	01,
	02, 
	01,
	01,
	145,
	'03/10/2023',
	'62.00',
	'70.00'
);

insert into service_ticket(
	serviceticket_id,
	service_id, 
	mechanic_id, 
	customer_id, 
	car_id,
	date_,
	subtotal,
	total 
)

values (
	02,
	01,
	02,
	02,
	123,
	'02/28/2023',
	'90.00',
	'95.00'
);

insert into part(
	part_id,
	price
)
values (
	01, 
	'100.00'
);

insert into part(
	part_id,
	price
)
values (
	02,
	'200.00'
);

insert into parts_used(
	partsused_id,
	part_id,
	serviceticket_id
)
values ( 
	01,
	01,
	02
); 

insert into parts_used(
	partsused_id,
	part_id,
	serviceticket_id
)
values (
	02,
	02,
	02
);





