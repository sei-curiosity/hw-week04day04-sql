----------------------------------
-- Part 1

-- Drop DB if exists
DROP DATABASE IF EXISTS nba_db;

-- Create DB nba_db
CREATE DATABASE nba_db;

-- Connect to nba_db
 \c nba_db;

-- Create table here
CREATE TABLE players (
 
  name text,
  age INTEGER,
  team text,
  games INTEGER,
  points INTEGER

);

-- Insert player here
INSERT INTO players (name, age, team, games, points ) VALUES ('Anderson Varejao', 29, 'CLE', 25, 271);


----------------------------------
-- Part 2
-- Uncomment COPY players statement and modify it with YOUR file path!

COPY players (name, age, team, games, points ) FROM 'C:/Users/alfares/Desktop/sei/homeworks/hw-week04day04-sql/nba_season_2011-2012.csv' DELIMITER ',' CSV;

--COPY players
  --(name, age, team, games, points)
--FROM '/Users/mattgershowitz/code/wdi/turtle/homeworks/hw-u02-d06-psql_nba_style/nba_season_2011_2012.csv'
    --DELIMITER ',' CSV;
