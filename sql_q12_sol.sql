# 13. Return the total number of goals scored by each position on each country’s team. Do not include positions which scored no goals.


SELECT c.country_name, COUNT(goal_id) AS goals, posi_to_play AS position
FROM goal_details AS gd
INNER JOIN player_mast AS pm
ON gd.player_id = pm.player_id
INNER JOIN soccer_country as c
ON pm.team_id = c.country_id
GROUP BY c.country_name, posi_to_play
ORDER BY c.country_name ASC;
