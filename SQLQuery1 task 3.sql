
--View  data from the source table

SELECT*
from [SDG_UK ].dbo.[food data]

--Create a Series Lookup table,Store unique SeriesCode values
-- Map each SeriesCode to SeriesDescription and Indicator

SELECT DISTINCT
    SeriesCode,
    SeriesDescription,
    Indicator
INTO Series_Lookup
FROM [food data]
WHERE SeriesCode IS NOT NULL;

-- Verify the Series_Lookup table
SELECT * 
FROM Series_Lookup 
ORDER BY SeriesCode

--Create the Fact table (Fact_FoodData),Store all data

SELECT 
    Goal,
    Target,
    Indicator,
    SeriesCode,
    SeriesDescription,
    GeoAreaCode,
    GeoAreaName,
    TimePeriod,
    Value,
    Time_Detail,
    TimeCoverage,
    UpperBound,
    LowerBound,
    BasePeriod,
    Source,
    GeoInfoUrl,
    FootNote,
    Age,
    Freq,
    Location,
    Nature,
    Observation_Status,
    Quantile,
    Reporting_Type,
    Severity_of_price_levels,
    Sex,
    Type_of_product,
    Units
INTO Fact_FoodData
FROM [food data]

