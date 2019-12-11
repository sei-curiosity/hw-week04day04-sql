----------------------------------
-- Part 1

-- Drop DB if exists
DROP DATABASE IF EXISTS nba_db;

-- Create DB nba_db
CREATE DATABASE nba_db;

-- Connect to nba_db
\c nba_db;

-- Create table here
CREATE TABLE players (id SERIAL PRIMARY KEY, name TEXT, age INTEGER, team TEXT, games INTEGER, points INTEGER);

-- Insert player here
INSERT INTO players (name, age, team, games, points) VALUES ('Anderson Varejao', 29, 'CLE', 25, 271);

-- SELECT * FROM players;
----------------------------------
-- Part 2
-- Uncomment COPY players statement and modify it with YOUR file path!

COPY players (name, age, team, games, points) FROM '/Users/honeytheshine/Desktop/sei/homeworks/week04/hw-week04day04-sql/nba_season_2011-2012.csv' DELIMITER ',' CSV;
