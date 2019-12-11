--------------------------------------------
-- Part 3 - Basic SQL Queries
-- write queries to select the following
--------------------------------------------

-- All columns for all players from the New York Knicks (NYK).

 select * from players where team ='NYK';

-- All columns for all players from the Indiana Packers (IND) who are under 26
-- years old.
 select * from players where team ='IND' AND age<26;


-- All columns for all players, ordered from least points scored to most points
-- scored.

 select * from players order By points ASC;

-- Name and Points per game (points/games), for the players with the top 20 points
-- per game.

select name, points/games as points_per_game  from players order by points/games DESC LIMIT 20  ;

-- The average age for all players.

SELECT AVG(age)
FROM players;


-- The average age for all players on the Oklahoma City Thunder (OKC).

SELECT AVG(age)
FROM players
where team ='OKC';

-- The average age for all players who played more than 40 games.

SELECT AVG(age)
FROM players
where games>40 ;


--------------------------------------------
-- BONUS - Advanced SQL Queries
-- write queries to select the following
--------------------------------------------

-- The team and total points scored from all players on that team (team points)
-- ordered from most team points to least.
SELECT sum(points) as total_points 
FROM players
GROUP BY team
order by total_points DESC;
-- The age and the average points per game for that age, ordered from oldest to
-- youngest for all ages.
select age , AVG(points/games) as avg_points
from players 
GROUP BY age
order by age DESC; 


-- The team and the the number of players who score above 12 points per game on
-- that team, ordered from the most number of players to the least number of players.
select team, count(name) as players_num 
from players 
where points/games > 12
group by team
 order by players_num DESC;