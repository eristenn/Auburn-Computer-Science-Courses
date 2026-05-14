-- Assignment 4: Optimization Views, Schema Notes, and Indexes

-- SECTION 1: VIEWS (new for Assignment 4)



-- -------------------------------------------------------
-- View A: Admin revenue summary (pre-aggregated by month)
-- Used by Operation 1
-- -------------------------------------------------------


CREATE VIEW IF NOT EXISTS vw_restaurant_revenue_summary AS
SELECT
    o.restaurant_id,
    r.name                          AS restaurant_name,
    strftime('%Y-%m', o.order_time) AS order_month,
    COUNT(o.order_id)               AS monthly_orders,
    ROUND(SUM(o.total_price), 2)    AS monthly_revenue
FROM ORDERS o
JOIN RESTAURANT r ON o.restaurant_id = r.restaurant_id
WHERE o.status     = 'completed'
  AND o.total_price IS NOT NULL
GROUP BY o.restaurant_id, r.name, strftime('%Y-%m', o.order_time);

-- Usage:
-- SELECT restaurant_name, SUM(monthly_orders), SUM(monthly_revenue)
-- FROM vw_restaurant_revenue_summary
-- WHERE order_month >= '2025-01' AND order_month <= '2025-12'
-- GROUP BY restaurant_name ORDER BY SUM(monthly_revenue) DESC;




-- -------------------------------------------------------
-- View B: Customer order history (carried over from Assignment 3)
-- Used by Operation 2
-- -------------------------------------------------------
CREATE VIEW IF NOT EXISTS vw_customer_order_history AS
SELECT
    o.customer_id,
    o.order_id,
    o.order_time,
    o.status,
    r.name    AS restaurant_name,
    mi.name   AS item_name,
    oi.quantity,
    oi.unit_price
FROM ORDERS o
JOIN ORDER_ITEM  oi ON o.order_id      = oi.order_id
JOIN MENU_ITEM   mi ON oi.item_id      = mi.item_id
JOIN RESTAURANT   r ON o.restaurant_id = r.restaurant_id;

-- Usage: SELECT * FROM vw_customer_order_history WHERE customer_id = ?;




-- -------------------------------------------------------
-- View C: Delivery performance (slow delivery monitoring)
-- Used by Operation 3
-- -------------------------------------------------------
CREATE VIEW IF NOT EXISTS vw_delivery_performance AS
SELECT
    o.order_id,
    o.order_time,
    o.delivery_time,
    ROUND((julianday(o.delivery_time) - julianday(o.order_time)) * 1440, 1)
        AS delivery_minutes,
    o.driver_id,
    d.name         AS driver_name,
    d.vehicle_type,
    o.restaurant_id,
    r.name         AS restaurant_name
FROM ORDERS o
JOIN DRIVER     d ON o.driver_id     = d.driver_id
JOIN RESTAURANT r ON o.restaurant_id = r.restaurant_id
WHERE o.status         = 'completed'
  AND o.delivery_time IS NOT NULL;

-- Usage:
-- SELECT * FROM vw_delivery_performance
-- WHERE delivery_minutes > 45 ORDER BY delivery_minutes DESC;







-- SECTION 2: INDEXES  (budget: 3 total)


-- Index 1: ORDERS(status, order_time)
-- Turns SCAN ORDERS into SEARCH for Operation 1 and Operation 3.
-- Both filter on status='completed' and then a date range.
-- Composite order: status first (equality filter) then order_time (range filter).
CREATE INDEX IF NOT EXISTS idx_orders_status_time
    ON ORDERS(status, order_time);

-- Index 2: ORDERS(customer_id)
-- Turns SCAN ORDERS into SEARCH USING COVERING INDEX for Operation 2.
-- Every customer history lookup starts with WHERE customer_id = ?.
CREATE INDEX IF NOT EXISTS idx_orders_customer_id
    ON ORDERS(customer_id);

-- Index 3: ORDERS(restaurant_id)
-- Turns SCAN into SEARCH when the system or admin queries are filtered
-- by a specific restaurant (e.g., restaurant dashboard, revenue drill-down).
-- Also supports the GROUP BY restaurant_id in Operation 1.
CREATE INDEX IF NOT EXISTS idx_orders_restaurant_id
    ON ORDERS(restaurant_id);
