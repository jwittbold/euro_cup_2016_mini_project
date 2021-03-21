# 20. Find the substitute players who came into the field in the first half of play, within a normal play schedule. 

SELECT DISTINCT(player_name) AS Substitute_Player
FROM player_in_out AS pio
INNER JOIN player_mast AS pm
ON pio.player_id = pm.player_id
WHERE play_schedule = 'NT' AND play_half = '1' AND in_out = 'I'

