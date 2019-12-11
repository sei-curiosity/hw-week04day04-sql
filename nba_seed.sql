----------------------------------
-- Part 1

-- Drop DB if exists
DROP DATABASE IF EXISTS nba_db;

-- Create DB nba_db
CREATE DATABASE nba_db;

-- Connect to nba_db
\c nba_db;

-- Create table here

CREATE TABLE players(
name text,
age integer,
TEAM text,
Game integer,
POINTS integer
);
-- Insert player here


----------------------------------
-- Part 2
-- Uncomment COPY players statement and modify it with YOUR file path!
nba_db=# \copy players(name, age, team,game,points) FROM '/Users/mohammedshatry/SEI/homeworks/hw-week04day04-sql/nba_season_2011-2012.csv' WITH (FORMAT csv, HEADER false)

--COPY players
  --(name, age, team, games, points)
--FROM '/Users/mattgershowitz/code/wdi/turtle/homeworks/hw-u02-d06-psql_nba_style/nba_season_2011_2012.csv'
    --DELIMITER ',' CSV;
