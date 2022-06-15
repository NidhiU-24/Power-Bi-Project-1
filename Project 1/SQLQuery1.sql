WITH hotels AS (
SELECT * FROM dbo.['2018$']
UNION 
SELECT * FROM dbo.['2019$']
UNION
SELECT * FROM dbo.['2020$'])

SELECT * FROM hotels
left join dbo.market_segment$
on hotels.market_segment= market_segment$.market_segment
left join dbo.meal_cost$
on hotels.meal=meal_cost$.meal