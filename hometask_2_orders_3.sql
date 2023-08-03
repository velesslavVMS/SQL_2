use hometask_2;
drop table if exists orders;

create table orders (
	id serial primary key,
    employee_id varchar(20) not null,
    amount dec(6, 2) not null,
    order_status varchar(10) not null
    );
select * from orders;
    
insert orders (employee_id, amount, order_status)
values
	('e03', 15.00, 'OPEN'),
    ('e01', 25.50, 'OPEN'),
    ('e05', 100.70, 'CLOSED'),
    ('e02', 22.18, 'OPEN'),
    ('e04', 9.50, 'CANCELLED');
    
select * from orders;
select id, employee_id, amount, order_status, 
CASE
	when order_status = 'OPEN' THEN 'Order is in open state'
    when order_status = 'CLOSED' THEN 'Order is closed'
    else  'Order is cancelled'
    end  as full_order_status
    from orders;
		
    
    
    

