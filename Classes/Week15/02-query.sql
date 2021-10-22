-- ------------------------------------------------------
-- Qual foi o item mais vendido (de todos os tempos)?
-- ------------------------------------------------------
SELECT
	product_id,
	count(order_item_id) as qtd_vendas
FROM
	order_items
GROUP BY
	product_id
ORDER BY 2 desc -- order by count(order_item_id) desc -- order by qtd_vendas desc
LIMIT 10;

-- select * from order_items where order_id=''


-- ------------------------------------------------------
-- Qual o ticket médio dos pedidos?
-- ------------------------------------------------------
SELECT
	AVG(total_price) as avg_ticket,
	AVG(total_items) as avg_items
FROM
	(SELECT
		order_id,
		sum(price) as total_price,
		count(order_item_id) as total_items
	FROM
		order_items
	GROUP BY
		order_id) as subquery;
		
-- jeito 02

with tb as (
	select 
		order_id,
		sum(price) as total_price,
		count(order_item_id) as total_items
	from 
		order_items 
	group by
		order_id
)
select avg(total_price), avg(total_items) from tb;

-- jeito 03: Winodw Function

-- ------------------------------------------------------
-- Qual a cidade com mais pedidos?
-- ------------------------------------------------------

SELECT
	customer_city,
	count(order_id) as total_pedidos
FROM
	orders
		left join
	customers on orders.customer_id = customers.customer_id
GROUP BY customer_city
ORDER BY total_pedidos DESC;

-- ------------------------------------------------------
-- Qual a cidade com maior valor de pedido?
-- ------------------------------------------------------

with tb_price_per_order as 
	(
		select 
			order_id,
			sum(price) as total_price
		from 
			order_items 
		group by
			order_id
	)
select 
	customers.customer_city,
	count(orders.order_id),
	sum(tb_price_per_order.total_price)
from 
	tb_price_per_order
		join
	orders on orders.order_id=tb_price_per_order.order_id
		join
	customers on orders.customer_id = customers.customer_id
group by customer_city
order by 3 desc
limit 10;

-- ------------------------------------------------------
-- Qual cliente mais gastou?
-- ------------------------------------------------------

with tb_price_per_order as 
	(
		select 
			order_id,
			sum(price) as total_price
		from 
			order_items 
		group by
			order_id
	)
select 
	customers.customer_id,
	count(orders.order_id),
	sum(tb_price_per_order.total_price)
from 
	tb_price_per_order
		join
	orders on orders.order_id=tb_price_per_order.order_id
		join
	customers on orders.customer_id = customers.customer_id
group by customers.customer_id
order by 3 desc
limit 10;

-- ------------------------------------------------------
-- Qual cliente com mais pedidos?
-- ------------------------------------------------------

select 
	customer_id,
	count(order_id)
from
	orders
group by customer_id
order by 2 desc;

-- ------------------------------------------------------
-- Quantidade de pedidos por status
-- ------------------------------------------------------

select 
		case 
			when order_status not in ('delivered', 'canceled') then 'others' 
				else order_status 
		end as new_order_status,
		count(order_id) 
	from 
		orders 
	group by 1;
