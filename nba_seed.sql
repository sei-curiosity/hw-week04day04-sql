----------------------------------
-- Part 1

-- Drop DB if exists
--DROP DATABASE IF EXISTS nba_db;

-- Create DB nba_db
--CREATE DATABASE nba_db;

-- Connect to nba_db
\c nba_db;

-- Create table here
--create table players ( name text, age int, team char(3), games int, points int);

-- Insert player here
-- insert into players(name,age,team,games,points) values ('Anderson Varejao', 29, 'CLE', 25, 271);

----------------------------------
-- Part 2
-- Uncomment COPY players statement and modify it with YOUR file path!


COPY players(name, age, team, games, points) FROM '/Volumes/Monano/GA-SE-2019/sei/homeworks/hw-week04day04-sql/nba_season_2011-2012.csv' DELIMITER ',' CSV;
