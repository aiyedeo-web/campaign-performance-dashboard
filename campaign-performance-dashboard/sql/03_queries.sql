-- 03_queries.sql
-- 1️⃣ Total spend per campaign
SELECT
    c.campaign_name,
    SUM(s.amount_spent) AS total_spend
FROM campaigns c
JOIN campaign_spend s
    ON c.campaign_id = s.campaign_id
GROUP BY c.campaign_name
ORDER BY total_spend DESC;

-- 2️⃣ Campaign-level metrics: total spend, total conversions, cost per conversion
SELECT
    c.campaign_name,
    SUM(s.amount_spent) AS total_spend,
    SUM(cv.conversions) AS total_conversions,
    ROUND(SUM(s.amount_spent) / NULLIF(SUM(cv.conversions), 0), 2) AS cost_per_conversion
FROM campaigns c
JOIN campaign_spend s
    ON c.campaign_id = s.campaign_id
JOIN campaign_conversions cv
    ON c.campaign_id = cv.campaign_id
GROUP BY c.campaign_name
ORDER BY cost_per_conversion ASC;
