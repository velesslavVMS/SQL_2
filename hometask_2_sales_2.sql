use hometask_2_1;
SELECT * FROM sales;

select id as 'id заказа',
case
	when count_product <100 then 'Маленький заказ'
    when count_product between 101 and 300 then 'Средний заказ'
    else 'Большой заказ'
    end as 'Тип заказа'
    from sales;
    

