
SELECT
  	S.customer_id,
    SUM ( CASE 
    when order_date BETWEEN Me.join_date and (Me.join_date + INTERVAL '6 day') THEN price*20
    WHEN product_name = 'sushi'  THEN price*20
    ELSE price*10
    end ) as points
FROM dannys_diner.sales as S
inner join dannys_diner.menu as M on S.product_id = M.product_id
inner join dannys_diner.members as Me on S.customer_id = Me.customer_id
WHERE EXTRACT(MONTH FROM order_date) = 1
GROUP by S.customer_id
