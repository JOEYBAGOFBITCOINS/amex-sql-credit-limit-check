SELECT
  c.user_id,
  c.card_id,
  SUM(t.amount) AS total_transactions,
  c.card_limit
FROM dim_card_details_amex c
JOIN fact_daily_transactions_amex t
  ON c.card_id = t.card_id
GROUP BY c.user_id, c.card_id, c.card_limit
HAVING SUM(t.amount) > c.card_limit;
