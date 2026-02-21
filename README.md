# Revenue-Leakage-Auditor
# Commercial Revenue Leakage Auditor 

## Executive Summary
This project provides a data-driven audit of commercial discounting practices within the Northwind database. By identifying "Revenue Leakage"—defined as the delta between Gross and Net revenue—this tool flags high-risk transactions where discounting exceeds a sustainable **12% threshold**.

## Technical Implementation
* **Backend:** Developed a complex **T-SQL CTE** to aggregate line-item sales data and calculate real-time leakage percentages.
* **Business Logic:** Implemented `NULLIF` handling for zero-revenue months to ensure reporting stability.
* **Frontend:** Built a dual-axis **Tableau Dashboard** to visualize revenue trends alongside risk alerts.

## Business Impact
* Identified a critical **32.19% leakage** in the Beverages category for May, allowing for immediate intervention.
* Established a "Healthy" vs. "Critical" alerting system to prioritize auditing workflows.

## Links
Interactive Tableau Dashboard: 
(https://public.tableau.com/app/profile/rotem.ben.moyal/viz/CommercialRevenueLeakageAuditor/Dashboard1)

<p align="center">
  <img src="Dashboard%201.png" width="850" title="Revenue Leakage Auditor Dashboard">
</p>
