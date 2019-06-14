-- SELECT * from customers left join orders on customers.id=orders.customer_id;

SELECT first_name, last_name,
case
    when SUM(amount) is NULL then 0
    else SUM(amount)
end as total_amount
from customers left join orders on customers.id=orders.customer_id group by customers.id;

SELECT first_name, last_name, IFNULL(SUM(amount), 0)
from customers left join orders on customers.id=orders.customer_id group by customers.id;