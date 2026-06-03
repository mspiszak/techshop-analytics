WITH customer_stats AS (
	SELECT
		c.customer_id,
		c.full_name,
		c.country,
		COUNT(o.order_id) AS total_orders,
		SUM(o.total_amount) AS clv,
		ROUND(AVG(o.total_amount)::NUMERIC, 2) AS avg_order_value,
		MIN(o.ordered_at) AS first_order_date,
		MAX(o.ordered_at) AS last_order_date,
		MAX(o.ordered_at) - MIN(o.ordered_at) AS days_active
	FROM
		customers c
	JOIN orders o ON
		c.customer_id = o.customer_id
	WHERE
		o.status = 'completed'
	GROUP BY
		c.customer_id
	HAVING
		COUNT(o.order_id) >= 1
)
SELECT
	customer_id,
	full_name,
	country,
	total_orders,
	ROUND(clv::NUMERIC, 2) AS clv,
	avg_order_value,
	first_order_date,
	last_order_date,
	DATE_PART('day', days_active) AS days_active,
	RANK() OVER (
	ORDER BY
		clv DESC
	) AS clv_rank
FROM
	customer_stats
ORDER BY
	clv_rank ASC
LIMIT 10;