use Ecommerce_Analytics;

SELECT 
    category_name,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales_per_order) AS total_revenue,
    SUM(profit_per_order) AS total_profit,
    ROUND(AVG(sales_per_order), 2) AS average_order_value
FROM 
    ecommerce_transactions
GROUP BY 
    category_name
ORDER BY 
    total_revenue DESC;

SELECT TOP 10
    product_name,
    category_name,
    SUM(order_quantity) AS total_quantity_sold,
    SUM(sales_per_order) AS total_revenue,
    SUM(profit_per_order) AS total_profit
FROM 
    ecommerce_transactions
GROUP BY 
    product_name,
    category_name
ORDER BY 
    total_revenue DESC;

SELECT 
    customer_segment,
    customer_region,
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(order_id) AS total_orders,
    SUM(sales_per_order) AS total_revenue
FROM 
    ecommerce_transactions
GROUP BY 
    customer_segment,
    customer_region

SELECT 
    delivery_status,
    shipping_type,
    COUNT(order_id) AS order_count,
    ROUND(AVG(days_for_shipment_real), 2) AS avg_real_shipping_days
FROM 
    ecommerce_transactions
GROUP BY 
    delivery_status,
    shipping_type
ORDER BY 
    order_count DESC;
ORDER BY 
    total_revenue DESC;
