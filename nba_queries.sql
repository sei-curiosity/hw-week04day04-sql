--------------------------------------------
-- Part 3 - Basic SQL Queries
-- write queries to select the following
--------------------------------------------

-- All columns for all players from the New York Knicks (NYK).
select * from players where team LIKE 'NYK';


-- All columns for all players from the Indiana Packers (IND) who are under 26
-- years old.
 select * from players where team = 'IND' AND age < 26;


-- All columns for all players, ordered from least points scored to most points
-- scored.
select * from players ORDER BY points ASC ;



-- Name and Points per game (points/games), for the players with the top 20 points
-- per game.
 select name, points/game from players order by points/game DESC limit 20;


-- The average age for all players.
select avg(age) from players;


-- The average age for all players on the Oklahoma City Thunder (OKC).
select avg(age) from players where team = 'OKC';


-- The average age for all players who played more than 40 games.
select avg(age) from players where game > 40;



--------------------------------------------
-- BONUS - Advanced SQL Queries
-- write queries to select the following
--------------------------------------------

-- The team and total points scored from all players on that team (team points)
-- ordered from most team points to least.

select team,points from players ORDER BY points DESC;

-- The age and the average points per game for that age, ordered from oldest to
-- youngest for all ages.



-- The team and the the number of players who score above 12 points per game on
-- that team, ordered from the most number of players to the least number of players.
