--------------------------------------------
-- Part 3 - Basic SQL Queries
-- write queries to select the following
--------------------------------------------

-- All columns for all players from the New York Knicks (NYK).
select * from players where team = 'NYK';


-- All columns for all players from the Indiana Packers (IND) who are under 26
-- years old.
select * from players where team = 'IND' and age < 26;


-- All columns for all players, ordered from least points scored to most points
-- scored.
select * from players order by points asc;


-- Name and Points per game (points/games), for the players with the top 20 points
-- per game.
select name, (points/games) as games_points from players order by points desc limit 20;


-- The average age for all players.
select name, avg(age) from players group by name;


-- The average age for all players on the Oklahoma City Thunder (OKC).
select name, avg(age) from players where team = 'OKC' group by name;


-- The average age for all players who played more than 40 games.
select name, avg(age) from players where games > 40 group by name;



--------------------------------------------
-- BONUS - Advanced SQL Queries
-- write queries to select the following
--------------------------------------------

-- The team and total points scored from all players on that team (team points)
-- ordered from most team points to least.



-- The age and the average points per game for that age, ordered from oldest to
-- youngest for all ages.



-- The team and the the number of players who score above 12 points per game on
-- that team, ordered from the most number of players to the least number of players.
