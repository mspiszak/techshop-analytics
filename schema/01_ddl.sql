CREATE TABLE customers (
    customer_id  SERIAL          PRIMARY KEY,     
    email        VARCHAR(255)    NOT NULL UNIQUE,   
    full_name    VARCHAR(120),                    
    country      VARCHAR(60)     DEFAULT 'PL',       
    segment      VARCHAR(30)     DEFAULT 'new'
                 CHECK (segment IN ('vip', 'regular', 'new')),
    created_at   TIMESTAMP       DEFAULT NOW()   
);


CREATE TABLE products (
    product_id   SERIAL          PRIMARY KEY,
    name         VARCHAR(200)    NOT NULL,
    category     VARCHAR(80),
    price        DECIMAL(10, 2)  NOT NULL CHECK (price >= 0), 
    stock_qty    INT             DEFAULT 0 CHECK (stock_qty >= 0),
    created_at   TIMESTAMP       DEFAULT NOW()
);


CREATE TABLE orders (
    order_id      SERIAL          PRIMARY KEY,
    customer_id   INT             NOT NULL
                  REFERENCES customers(customer_id), 
    status        VARCHAR(30)     DEFAULT 'pending'
                  CHECK (status IN ('pending', 'completed', 'cancelled', 'refunded')),
    total_amount  DECIMAL(12, 2)  CHECK (total_amount >= 0),
    ordered_at    TIMESTAMP       DEFAULT NOW()
);


CREATE TABLE order_items (
    item_id     SERIAL          PRIMARY KEY,
    order_id    INT             NOT NULL REFERENCES orders(order_id),
    product_id  INT             NOT NULL REFERENCES products(product_id),
    qty         INT             NOT NULL CHECK (qty > 0),
    unit_price  DECIMAL(10, 2)  NOT NULL CHECK (unit_price >= 0)