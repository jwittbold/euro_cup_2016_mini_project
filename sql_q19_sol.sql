# Find the number of captains who were also goalkeepers.

#COUNT(posi_to_play) AS Captain_GK, 

SELECT COUNT(DISTINCT(player_name)) AS Captain_GK
FROM player_mast AS pm
INNER JOIN match_captain AS mc
ON pm.player_id = mc.player_captain
WHERE posi_to_play = 'GK'



