-- SQL PROJECT
create database prj2025;

use prj2025;



-- 1. Show how many medal counts present for entire data
select count(medal) as Medal_Count,Medal from olympics
group by medal;


-- 2. Show count of unique sports present in Olympics
Select count(distinct(Sport)) as Count_of_Sports from olympics;


-- 3. Show how many different medals won by team India
select Team,Medal,count(Medal) from olympics
where (Team = 'India' and Medal!='NoMedal')
group by medal;


-- 4. Show event wise medals won by India show from highest to lowest medals won in order
select Team, count(Medal) as MedalCount,Event from olympics
where (Team = 'India' and Medal<>'NoMedal')
group by Event
order by MedalCount desc;

-- 5. Show event wise medals won by India in order of year
Select Team, Count(Medal) as MedalCount,Event,Year from olympics
where (Team = 'India' and Medal<>'NoMedal')
group by event,YEAR
order by Year asc;


-- 6. show country who won maximum medals.

Select Team,Count(Medal) as MedalCount from olympics
where Medal<>"NoMedal"
Group by Team
order by MedalCount desc
limit 1;




-- 7.show top 10 countries whowon gold
Select Team,count(Medal) as MedalCount from olympics
where Medal<>"NoMedal"
group by Team
order by MedalCount desc
limit 10;


--  8. show in which year did United states won most gold medal
Select Team,Count(Medal),Year from olympics
where (medal<>"NoMedal" and Team = 'United States')
Group by Year
order by count(Medal) desc
limit 1;


-- 9. In which sports United States has most medals.
Select Team, Count(Medal) as MedalCount, Sport from olympics
where (Team = 'United States' and Medal<>'NoMedal')
group by Sport
order by MedalCount desc
limit 1;



-- 10. Find top three players who won most medals along with their sports and country
Select Name, Team, Sport, count(Medal) from olympics
where Medal<>'NoMedal'
GROUP BY Name,Sport,Team
order by count(Medal) desc
limit 3;



-- 11. Find player with most gold medals in cycling along with his country.
Select Name,Team,Sport, count(Medal) from olympics
Where sport = 'cycling' and Medal<>'NoMedal'
Group by Name,Team,Sport
order by count(Medal) desc
limit 1;

-- 12.Find player with most medals (Gold+Silver+Bronze) in Basketball also show his country.
Select Name,Team,Sport, count(Medal) from olympics
Where sport = 'Basketball' and Medal<>'NoMedal'
Group by Name,Team,Sport
order by count(Medal) desc
limit 7;

-- 13. Find out the count of different medals of the top basketball player Teresa Edwards
Select Name, Medal,count(Medal) as MedalCount from olympics
where Name = 'Teresa Edwards' and Medal<>'NoMedal'
group by Medal
order by MedalCount desc;

-- 14. Find out medals won by male,female each year , Export this data and plot graph in excel
Select Year,Sex,Count(Medal) As MedalCount from olympics
Where medal<>'NoMedal'
Group by Sex,Year
order by Year asc;


