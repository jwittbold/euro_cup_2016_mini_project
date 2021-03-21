# 9. Write a SQL query to find the goalkeeper’s name and jersey number, playing for Germany, who played in Germany’s group stage matches


SELECT c.country_name AS country, play_stage, player_name, jersey_no, posi_to_play AS position
FROM player_mast AS p
INNER JOIN match_details as m
ON p.team_id = m.team_id
INNER JOIN soccer_country AS c
ON c.country_id = m.team_id
WHERE posi_to_play = 'GK' AND c.country_name = 'Germany' AND play_stage = 'G'
GROUP BY player_name, play_stage, jersey_no, posi_to_play, c.country_name

