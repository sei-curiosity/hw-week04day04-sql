--------------------------------------------
-- Part 3 - Basic SQL Queries
-- write queries to select the following
--------------------------------------------

-- All columns for all players from the New York Knicks (NYK).

SELECT * FROM players where team='NYK';


-- All columns for all players from the Indiana Packers (IND) who are under 26
-- years old.

SELECT * FROM players where team='IND' and age < 26;


-- All columns for all players, ordered from least points scored to most points
-- scored.


SELECT  * FROM players order by points;

-- Name and Points per game (points/games), for the players with the top 20 points
-- per game.

SELECT playername,points  FROM players ORDER BY points DESC limit 20;

-- The average age for all players.

SELECT avg(age) FROM players ;

-- The average age for all players on the Oklahoma City Thunder (OKC).
SELECT avg(age) FROM players WHERE team='OKC';



-- The average age for all players who played more than 40 games.
SELECT avg(age) FROM players WHERE games>40 ;



--------------------------------------------
-- BONUS - Advanced SQL Queries
-- write queries to select the following
--------------------------------------------

-- The team and total points scored from all players on that team (team points)
-- ordered from most team points to least.
SELECT team, sum(points)
  FROM players
 GROUP BY team;

-- The age and the average points per game for that age, ordered from oldest to
-- youngest for all ages.

SELECT age, avg(points)
  FROM players
 GROUP BY age
 order by age DESC;


-- The team and the the number of players who score above 12 points per game on
-- that team, ordered from the most number of players to the least number of players.
select team , count(playername)
from players
where points > 12
GROUP by team
 order by count(playername) DESC;