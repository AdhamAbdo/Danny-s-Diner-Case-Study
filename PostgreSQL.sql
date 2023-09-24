SELECT
  	customer_id,
    sum(m.price) as total_price
FROM dannys_diner.sales as S
inner join dannys_diner.menu as M on S.product_id = M.product_id
GROUP by customer_id
ORDER by total_price desc