# 8. Write a SQL query to find the match number for the game with the highest number of penalty shots, and which countries played that match

SELECT country_name, match_no, COUNT(match_no) AS total_shots 
FROM penalty_shootout AS p
INNER JOIN soccer_country AS c
ON c.country_id = p.team_id
GROUP BY match_no, team_id, country_name 
ORDER BY total_shots DESC
LIMIT 2;
