SELECT
  	customer_id,
    COUNT(DISTINCT order_date) as days_visited
FROM dannys_diner.sales as S
GROUP by customer_id
ORDER by days_visited desc