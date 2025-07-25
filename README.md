# Amex SQL Credit Limit Check

This repository contains the SQL solution to a common SQL interview question involving credit card limits and user transactions.

## Problem

You are given two tables:

- `dim_card_details_amex`: Contains details about user cards, including `card_limit`.
- `fact_daily_transactions_amex`: Contains daily transaction records, including transaction `amount`.

### Objective

List all users and their cards where the **total amount of transactions** exceeds the **card limit**.

### Required Output:

- `user_id`
- `card_id`
- `total_transactions` (sum of `amount`)
- `card_limit`

## SQL Solution

The solution joins the two tables using `card_id`, aggregates the total `amount`, and filters rows where the total exceeds the credit limit.

See `credit_limit_check.sql` for the full implementation.

