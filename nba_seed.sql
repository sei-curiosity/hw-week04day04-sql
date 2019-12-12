----------------------------------
-- Part 1

-- --Create table players(
-- name TEXT,
-- age INTEGER,
-- team TEXT,
-- games INTEGER,
-- points INTEGER
-- );


-- Insert player here
\copy players(name,age,team, games, points) FROM '/Users/rana/Desktop/sei/homeworks/hw1/week4/hw-week04day04-sql/nba_season_2011-2012.csv' WITH (FORMAT csv, HEADER true)

----------------------------------
-- Part 2
-- Uncomment COPY players statement and modify it with YOUR file path!


--COPY players
  --(name, age, team, games, points)
--FROM '/Users/mattgershowitz/code/wdi/turtle/homeworks/hw-u02-d06-psql_nba_style/nba_season_2011_2012.csv'
    --DELIMITER ',' CSV;
