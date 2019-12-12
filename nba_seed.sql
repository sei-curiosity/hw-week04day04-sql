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
  name TEXT,
  age INT,
  team TEXT,
  game INT,
  points INT
);

-- Insert player here
INSERT INTO players
VALUES ('Anderson Varejao',29,'CLE',25,271)


----------------------------------
-- Part 2
-- Uncomment COPY players statement and modify it with YOUR file path!


\COPY players (name, age, team, game, points) FROM '/Users/ahmedalhindi/sei/homeworks/week04/hw3/hw-week04day04-sql/nba_season_2011-2012.csv' DELIMITER ',' CSV;
