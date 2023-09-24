
SELECT
  	customer_id,
    sum ( CASE 
    WHEN product_name <> 'sushi' THEN price*10
    ELSE price*20
    END ) as points
FROM dannys_diner.sales as S
inner join dannys_diner.menu as M on S.product_id = M.product_id
GROUP by customer_id