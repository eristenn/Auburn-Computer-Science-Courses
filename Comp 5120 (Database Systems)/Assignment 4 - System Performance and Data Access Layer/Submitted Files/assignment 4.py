"""
Assignment 4: Python Access Layer
Food Delivery Platform — Database Systems 1
Functions run against food_delivery.sqlite
"""

import sqlite3
from typing import List, Dict, Any

DB_PATH = "food_delivery.sqlite"


def get_connection() -> sqlite3.Connection:
    """Return a connection with row_factory for dict-like rows."""
    conn = sqlite3.connect(DB_PATH)
    conn.row_factory = sqlite3.Row
    return conn


# ─────────────────────────────────────────────
# Operation 1: Admin — Total revenue per restaurant over a date range
# ─────────────────────────────────────────────
def get_revenue_by_restaurant(
    start_date: str = "2025-01-01",
    end_date: str = "2025-12-31"
) -> List[Dict[str, Any]]:
    """
    Returns total completed-order revenue and order count grouped by restaurant
    for the given date range (inclusive).

    Parameters:
        start_date: ISO date string 'YYYY-MM-DD'
        end_date:   ISO date string 'YYYY-MM-DD'

    Returns:
        List of dicts: [
          { restaurant_id, restaurant_name, total_orders, total_revenue }, ...
        ] ordered by total_revenue descending.
    """
    query = """
        SELECT
            r.restaurant_id,
            r.name                       AS restaurant_name,
            COUNT(o.order_id)            AS total_orders,
            ROUND(SUM(o.total_price), 2) AS total_revenue
        FROM ORDERS o
        JOIN RESTAURANT r ON o.restaurant_id = r.restaurant_id
        WHERE o.status     = 'completed'
          AND o.order_time >= ?
          AND o.order_time <= ?
        GROUP BY r.restaurant_id, r.name
        ORDER BY total_revenue DESC;
    """
    with get_connection() as conn:
        rows = conn.execute(query, (start_date, end_date + " 23:59:59")).fetchall()
    return [dict(row) for row in rows]


# ─────────────────────────────────────────────
# Operation 2: Customer — Full order history with item breakdown
# ─────────────────────────────────────────────
def get_customer_order_history(customer_id: int) -> List[Dict[str, Any]]:
    """
    Returns the full order history for a customer using the
    vw_customer_order_history view created in Assignment 3.

    Parameters:
        customer_id: Integer customer primary key

    Returns:
        List of dicts: [
          { order_id, order_time, status, restaurant_name,
            item_name, quantity, unit_price }, ...
        ] ordered by order_time descending.
    """
    query = """
        SELECT
            order_id,
            order_time,
            status,
            restaurant_name,
            item_name,
            quantity,
            unit_price
        FROM vw_customer_order_history
        WHERE customer_id = ?
        ORDER BY order_time DESC;
    """
    with get_connection() as conn:
        rows = conn.execute(query, (customer_id,)).fetchall()
    return [dict(row) for row in rows]


# ─────────────────────────────────────────────
# Operation 3: System — Identify slow deliveries
# ─────────────────────────────────────────────
def get_slow_deliveries(
    threshold_minutes: int = 45,
    start_date: str = None,
    end_date: str = None
) -> List[Dict[str, Any]]:
    """
    Returns completed orders where delivery took longer than threshold_minutes.
    Optionally filtered to a date range.

    Parameters:
        threshold_minutes: Delivery time threshold in minutes (default 45)
        start_date:        Optional ISO date string 'YYYY-MM-DD' filter
        end_date:          Optional ISO date string 'YYYY-MM-DD' filter

    Returns:
        List of dicts: [
          { order_id, order_time, delivery_time, delivery_minutes,
            driver_name, vehicle_type, restaurant_name }, ...
        ] ordered by delivery_minutes descending.
    """
    base_query = """
        SELECT
            order_id,
            order_time,
            delivery_time,
            delivery_minutes,
            driver_name,
            vehicle_type,
            restaurant_name
        FROM vw_delivery_performance
        WHERE delivery_minutes > ?
    """
    params = [threshold_minutes]

    if start_date:
        base_query += " AND order_time >= ?"
        params.append(start_date)
    if end_date:
        base_query += " AND order_time <= ?"
        params.append(end_date + " 23:59:59")

    base_query += " ORDER BY delivery_minutes DESC;"

    with get_connection() as conn:
        rows = conn.execute(base_query, params).fetchall()
    return [dict(row) for row in rows]


# ─────────────────────────────────────────────
# Quick demo — run when executed directly
# ─────────────────────────────────────────────
if __name__ == "__main__":
    print("=" * 55)
    print("Op1: Revenue by restaurant (all of 2025)")
    print("=" * 55)
    for row in get_revenue_by_restaurant("2025-01-01", "2025-12-31"):
        print(f"  {row['restaurant_name']:<18} "
              f"orders={row['total_orders']}  "
              f"revenue=${row['total_revenue']:.2f}")

    print()
    print("=" * 55)
    print("Op2: Order history for customer_id=1")
    print("=" * 55)
    for row in get_customer_order_history(1):
        print(f"  #{row['order_id']} {row['order_time'][:10]}  "
              f"{row['restaurant_name']:<18} "
              f"{row['item_name']:<22} "
              f"x{row['quantity']}  ${row['unit_price']:.2f}")

    print()
    print("=" * 55)
    print("Op3: Slow deliveries (> 45 min)")
    print("=" * 55)
    for row in get_slow_deliveries(45):
        print(f"  #{row['order_id']}  {row['delivery_minutes']} min  "
              f"driver={row['driver_name']:<14} "
              f"({row['vehicle_type']})  "
              f"rest={row['restaurant_name']}")
