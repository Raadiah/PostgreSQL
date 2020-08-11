create table suppliers(
	supplier_id        bigserial,
	supplier_name      varchar(20)       unique        not null,
	phone_number       bigint            unique        not null,
	email              varchar(30)       unique,
	primary key (supplier_id)
);

create table products(
	product_id         bigserial             not null,
	name               varchar(50)        not null,
	Category           varchar(20),
	price              int             not null,
	supplier_id        bigint             not null,
	availability       varchar(1)         not null,
	primary key (product_id),
	foreign key (supplier_id) references suppliers(supplier_id)
);

create table Customer(
	customer_id        bigserial             not null,
	First_name         varchar(15)        not null,
	Last_name          varchar(15),
	phone_number       bigint             unique        not null,
	city               varchar(10)        not null,
	zip                int,
	street             int,
	primary key (customer_id)
);

create table c_order(
	order_date         date               not null,
	order_id           bigserial,
	customer_id        bigint             not null,
	product_id         bigint             not null,
	primary key (order_id),
	foreign key (customer_id) references Customer(customer_id),
	foreign key (product_id) references products(product_id)
);

create table Shipping(
	courrier_service  varchar(20)        not null,
	shipping_date     date               not null,
	customer_id       bigint             not null,
	track_id          bigserial,
	primary key (track_id),
	foreign key (customer_id) references Customer(customer_id)
);
