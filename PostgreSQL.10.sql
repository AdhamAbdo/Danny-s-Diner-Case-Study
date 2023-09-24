
SELECT 
S.customer_id,
S.order_date,
M.product_name,
M.price,
CASE 
when S.order_date<Me.join_date then 'N'
ELSE 'Y'
END as is_member
FROM dannys_diner.sales as S
INNER join dannys_diner.menu as M on S.product_id = M.product_id
LEFT join dannys_diner.members as Me on S.customer_id = Me.customer_id
order by S.customer_id,S.order_date
