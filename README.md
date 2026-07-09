# sale-_dashboard
# Retail Sales Analysis — SQL, Excel & Power BI

End-to-end sales analysis project on a retail dataset (~700 orders), covering data cleaning, SQL-based exploratory analysis, and an interactive Power BI dashboard.

## 🛠️ Tools Used
- **Excel** — data cleaning, pivot tables
- **SQL (MySQL)** — aggregations, window functions, CTEs
- **Power BI** — dashboard with custom DAX measures

## 📁 Files in this Repo
| File | Description |
|---|---|
| `excel.xlsx` | Cleaned dataset, pivot table analysis, and key insights |
| `sale_sql.sql` | SQL queries — aggregations, rankings, running totals, month-over-month change |
| `power_bi.pbix` | Interactive Power BI dashboard |
| `dashboard_screenshot.png` | Static preview of the dashboard (for quick viewing) |

## 🔑 Key Insights
1. **Technology is the top-performing category**, generating $67,847.04 in sales — accounting for 45% of total sales across all categories.
2. **The East region generated the highest sales** ($51,120.88), making it the best-performing region by revenue.
3. **New York, California, and Illinois** are the top three states by sales ($24,459.70, $16,796.32, $12,236.82 respectively).
4. **The Consumer segment** generated the highest sales ($64,073.51), the largest revenue-contributing customer segment.
5. **Standard Class** is the most-used shipping mode, with $90,337.91 in associated sales.
6. **The Canon imageCLASS 2200 Advanced Copier** was the highest-selling individual product ($11,199.97).
7. **July recorded the highest monthly sales** ($14,710.02), the peak-performing month in the dataset.
8. **Phones, Machines, and Tables** were the top three sub-categories by sales.

## 🧮 SQL Highlights
- Aggregate functions: `SUM`, `AVG`, `MIN`, `MAX`, `COUNT(DISTINCT ...)`
- Category, region, state, city, segment, and ship mode breakdowns
- Window functions: `RANK() OVER`, running total via `SUM() OVER (... ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)`
- CTE with `LAG()` to calculate month-over-month sales change

See [`sale_sql.sql`](./sale_sql.sql) for the full query set.

## 📊 Power BI Dashboard
The dashboard includes:
- Custom DAX measures: `Total Sales`, `Average Order Value`, `Total Customers`
- Visuals: column chart, donut chart, line chart, bar chart, area chart, KPI cards, slicers

*(Add a screenshot or a link to the published Power BI report here if available.)*

📌 Next Steps / Potential Extensions
- Add customer segmentation or cohort analysis
- Incorporate profit margin (if cost data becomes available)
- Extend time-intelligence measures (YoY growth) with a full date table

---
Dataset: Sample retail sales data used for portfolio/analysis practice purposes.
