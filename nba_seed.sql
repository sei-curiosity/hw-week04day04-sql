
----------------------------------
-- Part 1

-- Drop DB if exists
DROP DATABASE IF EXISTS nba_db;

-- Create DB nba_db
CREATE DATABASE nba_db;

-- Connect to nba_db
\c nba_db;

-- Create table here
create table players (name text , age int, team text, game int, points int);

-- Insert player here

Insert into players (name , age , team , game , points) values ('Anderson Varejao', 29, 'CLE', 25, 271);
----------------------------------
-- Part 2
-- Uncomment COPY players statement and modify it with YOUR file path!
/c \copy players(name , age , team , game , points) FROM 'C:\Users\mahbob\Desktop\sei\homeworks\hw-week04day04-sql\nba_season_2011-2012.csv' WITH (FORMAT csv, HEADER true)

--COPY players
  --(name, age, team, games, points)
--FROM '/Users/mattgershowitz/code/wdi/turtle/homeworks/hw-u02-d06-psql_nba_style/nba_season_2011_2012.csv'
    --DELIMITER ',' CSV;
