--------------------------------------------
-- Part 3 - Basic SQL Queries
-- write queries to select the following
--------------------------------------------
\c nba_db
-- All columns for all players from the New York Knicks (NYK).

SELECT * FROM players 
WHERE team='NYK' ;



-- All columns for all players from the Indiana Packers (IND) who are under 26
-- years old.

SELECT * FROM players
 WHERE team='NYK' and age < 26 ;


-- All columns for all players, ordered from least points scored to most points
-- scored.

SELECT * from players 
ORDER BY points 
ASC;



-- Name and Points per game (points/games), for the players with the top 20 points
-- per game.

SELECT name , (points/games) from players 
ORDER by (points/games) 
 DESC limit 20 ;

-- The average age for all players.

select avg(age) from players;

-- The average age for all players on the Oklahoma City Thunder (OKC).

select avg(age) from players 
WHERE team ='OKC';


-- The average age for all players who played more than 40 games.
select avg(age) from players 
WHERE games > 40;




--------------------------------------------
-- BONUS - Advanced SQL Queries
-- write queries to select the following
--------------------------------------------

-- The team and total points scored from all players on that team (team points)
-- ordered from most team points to least.
select team , sum(points) from players
 GROUP BY team 
 ORDER BY sum(points)
  DESC ;


-- The age and the average points per game for that age, ordered from oldest to
-- youngest for all ages.
SELECT age, avg(points/games) from players 
GROUP by age 
ORDER by age 
DESC;


-- The team and the the number of players who score above 12 points per game on
-- that team, ordered from the most number of players to the least number of players.

select team ,  count(name) AS Players from players
WHERE (points/games) >12
GROUP by team
ORDER by count(name)  
DESC ;
