with hotels as (
select* from dbo.['2018$']
union
select* from dbo.['2019$']
union
select* from dbo.['2020$']
)
-- table merging to reflect all the needed columns for visualisation--

select* from hotels
left join dbo.market_segment$
on hotels.market_segment =market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = hotels.meal