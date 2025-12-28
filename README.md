# Campaign Performance Dashboard

## Overview
This project demonstrates a campaign performance analysis using **SQL** and **Power BI**.  
It tracks **campaign spend**, **conversions**, and calculates **cost per conversion** for multiple campaigns.

---

## Tools Used
- PostgreSQL / SQL for data creation and queries
- Power BI Desktop for visualization
- GitHub for version control

---

## Project Structure
campaign-performance-dashboard/
│
├── sql/
│ ├── 01_create_tables.sql # Create tables and define relationships
│ ├── 02_insert_data.sql # Insert campaign, spend, and conversion data
│ └── 03_queries.sql # Queries to calculate total spend, conversions, and CPC
│
├── powerbi/
│ └── campaign_dashboard.pbix # Power BI project file
│
└── screenshots/
└── dashboard_screenshot.png # Screenshot of the dashboard

---

## Data Model
- `campaigns` table: stores campaign metadata  
- `campaign_spend` table: stores spend details per channel  
- `campaign_conversions` table: stores conversions per campaign  

**Relationships in Power BI:**
- `campaigns[campaign_id]` → `campaign_spend[campaign_id]` (1:* single filter)  
- `campaigns[campaign_id]` → `campaign_conversions[campaign_id]` (1:* single filter)  

---

## Dashboard Visuals

1. **Top KPI Cards**
   - Total Spend
   - Total Conversions
   - Cost per Conversion

2. **Trend Chart**
   - X-axis: Spend Date  
   - Left Y-axis: Total Spend  
   - Right Y-axis: Total Conversions

3. **Channel Performance Matrix**
   - Rows: Channel  
   - Values: Total Spend, Total Conversions

---

## Insights
- Compare campaigns by total spend and conversions  
- Identify the most cost-efficient campaigns  
- Track spend and conversions over time per channel

---

## Screenshot
![Dashboard Screenshot](screenshots/dashboard_screenshot.png)

---

## How to Use
1. Run the SQL scripts in order:
   1. `01_create_tables.sql`
   2. `02_insert_data.sql`
   3. `03_queries.sql`
2. Open `campaign_dashboard.pbix` in Power BI Desktop
3. Explore visuals and filters
