--Bringing all the tables together--
with hotels as (
select* from dbo.['2018$']
union
select* from dbo.['2019$']
union
select* from dbo.['2020$']
)
-- in order to be able to answer the first question regarding revenue growth, the sum of stays_in_week_nights and stays_in_weekend_nights multiply by the adr--
-- where adr is equal to the average daily rate--

select arrival_date_year, hotel, round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as revenue from hotels
group by arrival_date_year, hotel;



