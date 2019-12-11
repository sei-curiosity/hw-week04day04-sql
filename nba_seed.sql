----------------------------------
-- Part 1

-- Drop DB if exists
DROP DATABASE IF EXISTS nba_db;

-- Create DB nba_db
CREATE DATABASE nba_db;

-- Connect to nba_db
\c nba_db;

-- Create table here
CREATE TABLE  player (
  name text NOT NULL,
  age INTEGER,
  team text,
  games INTEGER,  
  points INTEGER
);

-- Insert player here
INSERT INTO player (name, age, team, games, points) VALUES ('Abdulaziz', 32, 'KSA', 50, 764);

----------------------------------
-- Part 2
-- Uncomment COPY players statement and modify it with YOUR file path!
\copy player(name, age, team, games, points) FROM 'C:\Users\Alsubaie89\Desktop\sei\homeworks\hw-week04day04-sql\nba_season_2011-2012.csv' WITH (FORMAT csv, HEADER true)

--COPY players
  --(name, age, team, games, points)
--FROM '/Users/mattgershowitz/code/wdi/turtle/homeworks/hw-u02-d06-psql_nba_style/nba_season_2011_2012.csv'
    --DELIMITER ',' CSV;
