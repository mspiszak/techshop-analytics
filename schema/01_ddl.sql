CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	full_name VARCHAR(120),
	country VARCHAR(60) DEFAULT 'PL',
	segment VARCHAR(30) DEFAULT 'new'
                 CHECK (
		segment IN (
			'vip', 'regular', 'new'
		)
	),
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE products (
	product_id SERIAL PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	category VARCHAR(80),
	price DECIMAL(10, 2) NOT NULL CHECK (
		price >= 0
	),
	stock_qty INT DEFAULT 0 CHECK (
		stock_qty >= 0
	),
	created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
	customer_id INT NOT NULL
                  REFERENCES customers(customer_id),
	status VARCHAR(30) DEFAULT 'pending'
                  CHECK (
		status IN (
			'pending', 'completed', 'cancelled', 'refunded'
		)
	),
    total_amount DECIMAL(12, 2) CHECK (
		total_amount >= 0
	),
	ordered_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE order_items (
	item_id SERIAL PRIMARY KEY,
	order_id INT NOT NULL REFERENCES orders(order_id),
	product_id INT NOT NULL REFERENCES products(product_id),
	qty INT NOT NULL CHECK (
		qty > 0
	),
	unit_price DECIMAL(10, 2) NOT NULL CHECK (
		unit_price >= 0
	)
);


CREATE VIEW rfm_summary AS
WITH rfm_base AS (
	SELECT
		o.customer_id,
		c.full_name,
		MAX(o.ordered_at) AS last_order_date,
		COUNT(o.order_id) AS frequency,
		SUM(o.total_amount) AS monetary
	FROM
		orders o
	JOIN customers c ON
		o.customer_id = c.customer_id
	WHERE
		o.status = 'completed'
	GROUP BY
		o.customer_id,
		c.full_name
),
rfm_scores AS (
	SELECT
		*,
		NTILE(5) OVER (
		ORDER BY
			last_order_date DESC
		) AS recency_score,
		NTILE(5) OVER (
		ORDER BY
			frequency DESC
		) AS frequency_score,
		NTILE(5) OVER (
		ORDER BY
			monetary DESC
		) AS monetary_score
	FROM
		rfm_base
),
rfm_segments AS (
	SELECT
		*,
		(
			recency_score + frequency_score + monetary_score
		) AS rfm_total,
		CASE
			WHEN (
				recency_score + frequency_score + monetary_score
			) >= 13 THEN 'Champions'
			WHEN (
				recency_score + frequency_score + monetary_score
			) >= 10 THEN 'Loyal Customers'
			WHEN (
				recency_score + frequency_score + monetary_score
			) >= 7 THEN 'Potential Loyalists'
			WHEN (
				recency_score + frequency_score + monetary_score
			) >= 4 THEN 'At Risk'
			ELSE 'Lost'
		END AS segment
	FROM
		rfm_scores
)
SELECT
	segment,
	COUNT(*) AS customers_count,
	ROUND(AVG(monetary)::NUMERIC, 2) AS avg_clv,
	ROUND(AVG(frequency)::NUMERIC, 1) AS avg_orders,
	ROUND(SUM(monetary)::NUMERIC, 2) AS total_revenue
FROM
	rfm_segments
GROUP BY
	segment
ORDER BY
	avg_clv DESC;