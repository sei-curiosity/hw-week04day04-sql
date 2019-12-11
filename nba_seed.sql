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
name VARCHAR(100),
 age int NOT NULL,
 team VARCHAR (100),
 games int,
 points int 
 );

-- Insert player here
 INSERT INTO players (name,age,team, games, points )VALUES ('sara','22','cool','55','220');
----------------------------------
-- Part 2
-- Uncomment COPY players statement and modify it with YOUR file path!

\copy players(name, age, team,games,points) FROM '/Users/mac/Desktop/sei/homeworks/w4/hw-week04day04-sql/nba_season_2011-2012.csv' WITH (FORMAT csv, HEADER true)

--COPY players
  --(name, age, team, games, points)
--FROM '/Users/mattgershowitz/code/wdi/turtle/homeworks/hw-u02-d06-psql_nba_style/nba_season_2011_2012.csv'
    --DELIMITER ',' CSV;
