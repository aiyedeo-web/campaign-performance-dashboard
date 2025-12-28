-- 02_insert_data.sql
-- Insert campaigns
INSERT INTO campaigns (campaign_name, campaign_type, start_date, end_date, manager)
VALUES
('Youth Voter Outreach', 'Political', '2023-01-01', '2023-06-30', 'Fatima Ali'),
('Digital Awareness Drive', 'Marketing', '2023-02-01', '2023-07-31', 'Umar Farouk'),
('Grassroots Mobilization', 'Political', '2023-03-01', '2023-09-30', 'Samuel Osei'),
('Product Launch Campaign', 'Marketing', '2023-04-01', '2023-10-31', 'Alice Johnson'),
('Rural Engagement Program', 'Political', '2023-05-01', '2023-12-31', 'Chen Wei');

-- Insert campaign spend
INSERT INTO campaign_spend (campaign_id, spend_date, channel, amount_spent) VALUES
(1, '2023-02-15', 'TV', 15000),
(1, '2023-03-15', 'Social Media', 8000),
(1, '2023-04-15', 'TV', 20000),
(1, '2023-05-15', 'Influencers', 6000),
(2, '2023-02-10', 'Google Ads', 10000),
(2, '2023-03-10', 'Google Ads', 14000),
(2, '2023-04-10', 'Social Media', 9000),
(2, '2023-05-10', 'Influencers', 7000),
(3, '2023-03-20', 'Radio', 11000),
(3, '2023-04-20', 'TV', 18000),
(3, '2023-05-20', 'Field Events', 9000),
(3, '2023-06-20', 'Social Media', 7000),
(4, '2023-04-05', 'TV', 25000),
(4, '2023-05-05', 'Social Media', 13000),
(4, '2023-06-05', 'Google Ads', 16000),
(5, '2023-05-12', 'Radio', 14000),
(5, '2023-06-12', 'Field Events', 10000),
(5, '2023-07-12', 'Social Media', 8000);

-- Insert campaign conversions
INSERT INTO campaign_conversions (campaign_id, conversion_date, conversions) VALUES
(1, '2023-02-28', 1200),
(1, '2023-03-31', 1800),
(1, '2023-04-30', 2400),
(1, '2023-05-31', 1600),
(2, '2023-02-28', 2200),
(2, '2023-03-31', 3000),
(2, '2023-04-30', 2600),
(2, '2023-05-31', 2800),
(3, '2023-03-31', 1900),
(3, '2023-04-30', 2300),
(3, '2023-05-31', 2100),
(3, '2023-06-30', 1800),
(4, '2023-04-30', 3500),
(4, '2023-05-31', 4200),
(4, '2023-06-30', 3900),
(5, '2023-05-31', 1700),
(5, '2023-06-30', 2000),
(5, '2023-07-31', 2200);
