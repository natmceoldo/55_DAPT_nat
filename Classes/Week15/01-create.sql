CREATE TABLE orders (
	order_id VARCHAR(50),
	customer_id VARCHAR(50),
	order_status VARCHAR(50),
	order_purchase_timestamp timestamp,
	order_approved_at timestamp,
	order_delivered_carrier_date timestamp,
	order_delivered_customer_date timestamp,
	order_estimated_delivery_date timestamp
);

CREATE TABLE order_items (
order_id            VARCHAR(50),
order_item_id        INT,
product_id           VARCHAR(50),
seller_id            VARCHAR(50),
shipping_limit_date  DATE,
price                DECIMAL,
freight_value        DECIMAL
);

CREATE TABLE customers (
customer_id               VARCHAR(50),
customer_unique_id        VARCHAR(50),
customer_zip_code_prefix  INT,
customer_city             VARCHAR(50),
customer_state            VARCHAR(50)
);

COPY order_items FROM 'C:/Users/Public/Documents/Week15/data/olist_order_items_dataset.csv' DELIMITER ',' CSV HEADER;
COPY customers FROM 'C:/Users/Public/Documents/Week15/data/olist_customers_dataset.csv' DELIMITER ',' CSV HEADER;
COPY orders FROM 'C:/Users/Public/Documents/Week15/data/olist_orders_dataset.csv' DELIMITER ',' CSV HEADER;