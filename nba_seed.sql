----------------------------------
-- Part 1

-- Drop DB if exists
DROP DATABASE IF EXISTS nba_db;

-- Create DB nba_db
CREATE DATABASE nba_db;

-- Connect to nba_db
\c nba_db;

-- Create table here
CREATE TABLE NBA_team(
   id serial PRIMARY KEY,
   name  text unique,
   abbrev text
);


-- Insert player here Create a table called players with columns for

CREATE TABLE nba_players(
name text,
age int, 
team text,
games varchar not null,
points int
);


----------------------------------
-- Part 2
-- Uncomment COPY players statement and modify it with YOUR file path!
-- Begin ;
-- Copy into tbscore from @~/ 
-- FILE_FORMAT = (TYPE=CSV)
-- ON_ERROR='continue'
-- pattern='.*.gz'
-- ; 

select * from nba_team;

Select * from nba_players;

alter nba_players ADD team text;

insert into nba_players( name, age, team, games , points)



--COPY players
  --(name, age, team, games, points)
--FROM '/Users/mattgershowitz/code/wdi/turtle/homeworks/hw-u02-d06-psql_nba_style/nba_season_2011_2012.csv'
    --DELIMITER ',' CSV;
 \copy nba_players (name, age,team,games, points) FROM '/Users/sarah/Desktop/SEI/HomeWorks/hw-week04day04-sql/nba_season_2011-2012.csv' WITH ( FORMAT csv, HEADER TRUE)

