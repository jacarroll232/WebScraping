--DROP TABLE superbowl_data;
--DROP TABLE spread_data;

SELECT * FROM superbowl_data;
SELECT * FROM spread_data;

-- Isolate the 2010 spread data for the SuperBowl Champion
SELECT "year","champion","Home Team", "Away Team","Favorite","Spread Outcome","champwinratio"
FROM spread_data
INNER JOIN superbowl_data ON spread_data."Season"= superbowl_data."year"
WHERE "year" = 2010
AND ("Home Team" = "champion" OR "Away Team" = "champion");

