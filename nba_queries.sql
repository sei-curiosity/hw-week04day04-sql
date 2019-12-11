--------------------------------------------
-- Part 3 - Basic SQL Queries
-- write queries to SELECT the following
--------------------------------------------

-- All columns for all players FROM the New York Knicks (NYK).
SELECT * FROM players WHERE team = 'NYK';


-- All columns for all players FROM the Indiana Packers (IND) who are under 26
-- years old.
SELECT * FROM players WHERE team = 'IND' AND age < 26;


-- All columns for all players, ordered FROM least points scored to most points
-- scored.
SELECT * FROM players ORDER BY points;


-- Name AND Points per game (points/games), for the players with the top 20 points
-- per game.
SELECT name, points/games as points_per_game  FROM players ORDER BY points DESC LIMIT 20;


-- The average age for all players.
SELECT AVG(age) FROM players;


-- The average age for all players on the Oklahoma City Thunder (OKC).
SELECT AVG(age) FROM players WHERE team = 'OKC';


-- The average age for all players who played more than 40 games.
SELECT AVG(age) FROM players WHERE games > 40;



--------------------------------------------
-- BONUS - Advanced SQL Queries
-- write queries to SELECT the following
--------------------------------------------

-- The team AND total points scored FROM all players on that team (team points)
-- ordered FROM most team points to least.
SELECT team, SUM(points) as total_points FROM players group by team ORDER BY total_points DESC;



-- The age AND the average points per game for that age, ordered FROM oldest to
-- youngest for all ages.
SELECT age, AVG(points/games) FROM players group by age ORDER BY age DESC;


-- The team AND the the number of players who score above 12 points per game on
-- that team, ordered FROM the most number of players to the least number of players.
SELECT team, COUNT(name) as number_of_players FROM players WHERE (points/games)>12 group by team ORDER BY number_of_players DESC;