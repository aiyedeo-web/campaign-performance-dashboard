-- 01_create_tables.sql
-- Create campaigns table
CREATE TABLE campaigns (
    campaign_id SERIAL PRIMARY KEY,
    campaign_name VARCHAR(100),
    campaign_type VARCHAR(50),
    start_date DATE,
    end_date DATE,
    manager VARCHAR(100)
);

-- Create campaign_spend table
CREATE TABLE campaign_spend (
    spend_id SERIAL PRIMARY KEY,
    campaign_id INT,
    spend_date DATE,
    channel VARCHAR(50),
    amount_spent NUMERIC(12,2)
);

-- Add foreign key to link campaign_spend to campaigns
ALTER TABLE campaign_spend
ADD CONSTRAINT fk_campaign
FOREIGN KEY (campaign_id)
REFERENCES campaigns(campaign_id);

-- Create campaign_conversions table
CREATE TABLE campaign_conversions (
    conversion_id SERIAL PRIMARY KEY,
    campaign_id INT,
    conversion_date DATE,
    conversions INT
);
