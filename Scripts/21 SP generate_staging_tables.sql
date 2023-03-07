create proc generate_staging_tables 
as
-- Orders_table
CREATE TABLE [Orders] (
    ["order_id"] varchar(50),
    ["customer_id"] varchar(50),
    ["order_status"] varchar(50),
    ["order_purchase_timestamp"] varchar(50),
    ["order_approved_at"] varchar(50),
    ["order_delivered_carrier_date"] varchar(50),
    ["order_delivered_customer_date"] varchar(50),
    ["order_estimated_delivery_date"] varchar(50)
);

-- creating the orders item table 
CREATE TABLE [orders_Items] (
    ["order_id"] varchar(50),
    ["order_item_id"] varchar(50),
    ["product_id"] varchar(50),
    ["seller_id"] varchar(50),
    ["shipping_limit_date"] varchar(50),
    ["price"] varchar(50),
    ["freight_value"] varchar(50)
);

-- create geolocation table 
CREATE TABLE [Geo_Location] (
    ["geolocation_zip_code_prefix"] varchar(50),
    ["geolocation_lat"] varchar(50),
    ["geolocation_lng"] varchar(50),
    ["geolocation_city"] varchar(50),
    ["geolocation_state"] varchar(50)
);

-- custoemr table customers
CREATE TABLE [Customers] (
    ["customer_id"] varchar(50),
    ["customer_unique_id"] varchar(50),
    ["customer_zip_code_prefix"] varchar(50),
    ["customer_city"] varchar(50),
    ["customer_state"] varchar(50)
)

------- seller_table
CREATE TABLE [seller] (
    ["seller_id"] varchar(50),
    ["seller_zip_code_prefix"] varchar(50),
    ["seller_city"] varchar(50),
    ["seller_state"] varchar(50)
);

-- creating products table 
CREATE TABLE [Products] (
    ["product_id"] varchar(50),
    ["product_category_name"] varchar(50),
    ["product_name_lenght"] varchar(50),
    ["product_description_lenght"] varchar(50),
    ["product_photos_qty"] varchar(50),
    ["product_weight_g"] varchar(50),
    ["product_length_cm"] varchar(50),
    ["product_height_cm"] varchar(50),
    ["product_width_cm"] varchar(50)
)