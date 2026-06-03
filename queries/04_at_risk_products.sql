WITH quarter_revenue AS (
	SELECT
		p.product_id,
		p.name,
		p.category,
		DATE_TRUNC('quarter', o.ordered_at) AS quarter,
		SUM(oi.qty * oi.unit_price) AS revenue
	FROM
		orders o
	JOIN order_items oi ON
		o.order_id = oi.order_id
	JOIN products p ON
		oi.product_id = p.product_id
	WHERE
		o.status = 'completed'
	GROUP BY
		p.product_id,
		quarter
),
lag_quarter_revenue AS (
	SELECT
		product_id,
		name,
		category,
		quarter,
		revenue AS current_q_revenue,
		LAG(revenue) OVER (
			PARTITION BY product_id
		ORDER BY
			quarter
		) AS prev_q_revenue
	FROM
		quarter_revenue
),
decline AS (
	SELECT
		product_id,
		name,
		category,
		current_q_revenue,
		prev_q_revenue,
		ROUND(
            (current_q_revenue - prev_q_revenue)
            * 100.0
            / NULLIF(prev_q_revenue, 0)
        , 1) AS decline_pct
	FROM
		lag_quarter_revenue
	WHERE
		quarter = DATE_TRUNC('quarter', CURRENT_DATE)
			AND prev_q_revenue IS NOT NULL
)
SELECT
	product_id,
	name,
	category,
	ROUND(current_q_revenue::NUMERIC, 2) AS current_q_revenue,
	ROUND(prev_q_revenue::NUMERIC, 2) AS prev_q_revenue,
	decline_pct,
	CASE
		WHEN decline_pct < -50 THEN 'URGENT: >50% decline'
		ELSE 'WARNING: 30-50% decline'
	END AS recommendation
FROM
	decline
WHERE
	decline_pct < -30
ORDER BY
	decline_pct ASC;