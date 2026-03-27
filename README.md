Tracking Progress Toward SDG 2: Zero Hunger (2015–2025)

Overview

This project analyzes global trends related to SDG 2: Zero Hunger, focusing on food security, nutrition, agriculture, and economic indicators. Using data from the UN SDG Global Database, the dataset was cleaned using SQL Server, modelled in Power BI, and visualized through interactive dashboards.

The project showcases the integration of data engineering + business intelligence to generate meaningful insights for policymakers and SDG evaluators.

Tools & Technologies

- Microsoft SQL Server (SSMS)
- Power BI Desktop
- DAX (Data Analysis Expressions)
- Power Query
- CRISP-DM Framework

Data Sources

United Nations SDG Data Portal:
https://unstats.un.org/sdgs/dataportal/database

Indicators include:

- Anaemia prevalence
- Undernourishment
- Food insecurity levels
- Government agricultural expenditure
- Agriculture GDP share
- Agricultural productivity & farmer income
- Sustainable agriculture trend & status scores

Data Preparation (SQL Server)

Key steps:

- Importing raw CSV/Excel files
- Cleaning Value fields (removing <, >, NaN)
- Standardizing numeric types
- Normalizing tables:
- Fact_FoodData
- Geo
- Year
- Sex_Table
- Series_Lookup
- FoodSecurityFactors
- Productivity_Income
- SQL validation: DISTINCT checks, COUNT, grouping, quality checks
  
Power BI Modelling

Star-schema approach:

Fact Table: Fact_FoodData
Dimension Tables: Geo, Year, Sex, Scale, Series Lookup, Productivity, Food Security

Advanced Power Query:
- UNION of datasets
- Creating Region mapping
- Removing unnecessary metadata fields

DAX Measures Implemented
✔ Agricultural & Economic
Agri_GDP_Share
Agri_Govt_Spending_Share
Agri_Orientation_Index
✔ Income & Productivity
Avg_Income_LargeScale / SmallScale
Avg_Productivity_LargeScale / SmallScale
YoY Productivity & Income Growth
✔ Food Security
FoodSecurityIndex
FoodSecurityTreeValue
✔ Sustainable Agriculture
Current Status Score
Trend Score
Cumulative_Improvement
Rank_By_CurrentStatus
✔ Nutrition
Selected_Anaemia_Value
Anaemia_Category

Dashboards
- Tracking SDG 2: Zero Hunger (2015–2025)
Regional performance ranking
Agriculture GDP trends
YoY change analysis
Sustainable agriculture performance

- Nutrition & Food Security Dashboard
Anaemia distribution
Undernourishment trends
Food insecurity levels

- Agricultural Productivity & Income
Income comparison between small-scale & large-scale food producers
Productivity indicators
YoY change visualizations

- Agriculture Economy & Policy Dashboard
Government spending vs GDP share
Agricultural policy orientation index (AOI)
Export subsidies & official support

Conclusion

This project demonstrates the power of SQL, DAX, and Power BI in translating complex UN datasets into accessible insights.
It highlights:

- Uneven progress across global regions
- Declining agriculture GDP share post-2020
- Strong but plateauing sustainability trends
- Persistent gaps in nutrition and food security

The dashboards provide a powerful decision-making tool for researchers, governments, and international organizations working toward Zero Hunger by 2030.

Authors
- D.P. Chami Sadunika
- M.M.C.C. Marasinghe
- E.S.R. Ruparathna
- W.D.S.N. Kulasooriya
