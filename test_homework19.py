from homework19 import process_orders
import pytest


@pytest.fixture()
def initial_inventory():
    return {
        "apple": 10,
        "banana": 5,
        "orange": 8
    }


def test_product_not_found(initial_inventory):
    orders = [{"product": "grape", "quantity": 2}]
    with pytest.raises(ValueError, match="Product 'grape' not found in inventory"):
        process_orders(orders, initial_inventory)


def test_not_enough_stock(initial_inventory):
    orders = [{"product": "banana", "quantity": 6}]
    with pytest.raises(ValueError, match="Not enough stock for 'banana'"):
        process_orders(orders, initial_inventory)


def test_successful_order_deduction(initial_inventory):
    orders = [{"product": "apple", "quantity": 3}]
    process_orders(orders, initial_inventory)
    assert initial_inventory["apple"] == 7
