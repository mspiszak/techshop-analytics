WITH monthly_revenue AS (
	SELECT
		DATE_TRUNC('month', ordered_at) AS month,
		ROUND(SUM(total_amount)::NUMERIC, 2) AS revenue,
		COUNT(order_id) AS orders_count,
		COUNT(DISTINCT customer_id) AS unique_customers,
		ROUND(AVG(total_amount)::NUMERIC, 2) AS avg_order_value
	FROM
		orders
	WHERE
		status = 'completed'
	GROUP BY
		month
),
growth AS (
	SELECT
		month,
		revenue,
		orders_count,
		unique_customers,
		avg_order_value,
		LAG(revenue) OVER (
		ORDER BY
			MONTH
		) AS prev_revenue,
		ROUND(
            (revenue - LAG(revenue) OVER (ORDER BY MONTH))
            * 100.0
            / NULLIF(LAG(revenue) OVER (ORDER BY MONTH), 0)
        , 1) AS mom_growth_pct,
		ROUND(
            AVG(revenue) OVER (
                ORDER BY MONTH
                ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
            )::NUMERIC, 2
        ) AS revenue_3m_avg
	FROM
		monthly_revenue
)
SELECT
	TO_CHAR(MONTH, 'YYYY-MM') AS MONTH,
	revenue,
	orders_count,
	unique_customers,
	avg_order_value,
	mom_growth_pct,
	revenue_3m_avg
FROM
	growth
ORDER BY
	MONTH;