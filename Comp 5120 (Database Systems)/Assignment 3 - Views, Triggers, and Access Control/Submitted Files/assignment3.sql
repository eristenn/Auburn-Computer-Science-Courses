-- ============================================================
-- Assignment 3: Views and Triggers
-- Food Delivery Platform — built against Assignment 2 schema
-- ============================================================


-- ============================================================
-- SECTION 1: VIEWS
-- ============================================================

-- -------------------------------------------------------
-- View 1: Admin — full order summary across all tenants
-- -------------------------------------------------------
CREATE OR REPLACE VIEW vw_admin_order_summary AS
SELECT
    o.order_id,
    o.order_time,
    o.delivery_time,
    o.status,
    o.total_price,
    c.name        AS customer_name,
    c.email       AS customer_email,
    r.name        AS restaurant_name,
    d.name        AS driver_name
FROM ORDERS o
JOIN CUSTOMER   c ON o.customer_id   = c.customer_id
JOIN RESTAURANT r ON o.restaurant_id = r.restaurant_id
LEFT JOIN DRIVER d ON o.driver_id    = d.driver_id;


-- -------------------------------------------------------
-- View 2: Restaurant Owner — orders and line items
--         (filter by restaurant_id in application layer)
-- -------------------------------------------------------
CREATE OR REPLACE VIEW vw_restaurant_orders AS
SELECT
    o.order_id,
    o.order_time,
    o.status,
    o.restaurant_id,
    mi.name   AS item_name,
    oi.quantity,
    oi.unit_price
FROM ORDERS o
JOIN ORDER_ITEM oi ON o.order_id = oi.order_id
JOIN MENU_ITEM  mi ON oi.item_id  = mi.item_id;

-- Usage: SELECT * FROM vw_restaurant_orders WHERE restaurant_id = ?;


-- -------------------------------------------------------
-- View 3: Customer — full order history / receipts
--         (filter by customer_id in application layer)
-- -------------------------------------------------------
CREATE OR REPLACE VIEW vw_customer_order_history AS
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


-- ============================================================
-- SECTION 2: PREREQUISITE TABLE FOR TRIGGER 3
-- ============================================================

CREATE TABLE IF NOT EXISTS ORDER_STATUS_LOG (
    log_id      INT AUTO_INCREMENT PRIMARY KEY,
    order_id    INT         NOT NULL,
    old_status  VARCHAR(30) NOT NULL,
    new_status  VARCHAR(30) NOT NULL,
    changed_at  DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id)
);


-- ============================================================
-- SECTION 3: TRIGGERS
-- ============================================================

-- -------------------------------------------------------
-- Trigger 1: Enforce valid order status transitions
--   Fires: BEFORE UPDATE on ORDERS
-- -------------------------------------------------------
DELIMITER $$

CREATE TRIGGER trg_prevent_invalid_status_transition
BEFORE UPDATE ON ORDERS
FOR EACH ROW
BEGIN
    IF NOT (
        (OLD.status = 'pending'         AND NEW.status IN ('confirmed', 'cancelled')) OR
        (OLD.status = 'confirmed'        AND NEW.status IN ('preparing', 'cancelled')) OR
        (OLD.status = 'preparing'        AND NEW.status IN ('out_for_delivery', 'cancelled')) OR
        (OLD.status = 'out_for_delivery' AND NEW.status IN ('completed', 'cancelled')) OR
        (OLD.status = NEW.status)
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid order status transition.';
    END IF;
END$$

DELIMITER ;


-- -------------------------------------------------------
-- Trigger 2: Auto-recalculate ORDERS.total_price
--   Fires: AFTER INSERT on ORDER_ITEM
-- -------------------------------------------------------
DELIMITER $$

CREATE TRIGGER trg_recalculate_order_total
AFTER INSERT ON ORDER_ITEM
FOR EACH ROW
BEGIN
    UPDATE ORDERS
    SET total_price = (
        SELECT SUM(quantity * unit_price)
        FROM   ORDER_ITEM
        WHERE  order_id = NEW.order_id
    )
    WHERE order_id = NEW.order_id;
END$$

DELIMITER ;


-- -------------------------------------------------------
-- Trigger 3: Log every order status change
--   Fires: AFTER UPDATE on ORDERS
-- -------------------------------------------------------
DELIMITER $$

CREATE TRIGGER trg_log_order_status_change
AFTER UPDATE ON ORDERS
FOR EACH ROW
BEGIN
    IF OLD.status <> NEW.status THEN
        INSERT INTO ORDER_STATUS_LOG (order_id, old_status, new_status)
        VALUES (NEW.order_id, OLD.status, NEW.status);
    END IF;
END$$

DELIMITER ;
