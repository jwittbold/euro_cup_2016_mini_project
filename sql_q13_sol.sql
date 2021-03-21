# 13. Find all the defenders who scored a goal for their teams


SELECT player_name, posi_to_play AS position, COUNT(posi_to_play) AS goals_scored
FROM player_mast AS pm
INNER JOIN goal_details AS gd
ON pm.player_id = gd.player_id
WHERE posi_to_play = 'DF'
GROUP BY player_name, posi_to_play
