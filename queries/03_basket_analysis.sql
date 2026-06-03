WITH category_stats AS (
	SELECT
		p.category,
		COUNT(DISTINCT oi.order_id) AS total_orders,
		ROUND(SUM(oi.qty)::NUMERIC
            / COUNT(DISTINCT oi.order_id), 2) AS avg_items_per_order,
		ROUND(AVG(o.total_amount)::NUMERIC, 2) AS avg_order_value,
		ROUND(SUM(oi.qty
            * oi.unit_price)::NUMERIC, 2) AS total_revenue
	FROM
		orders o
	JOIN order_items oi ON
		o.order_id = oi.order_id
	JOIN products p ON
		oi.product_id = p.product_id
	WHERE
		o.status = 'completed'
	GROUP BY
		p.category
)
SELECT
	category,
	avg_items_per_order,
	avg_order_value,
	total_revenue,
	ROUND(total_revenue * 100.0
        / NULLIF(
            (SELECT SUM(total_revenue) FROM category_stats)
        , 0), 1) AS revenue_share_pct,
	DENSE_RANK() OVER (
	ORDER BY
		total_revenue DESC
	) AS category_rank
FROM
	category_stats
ORDER BY
	category_rank;