# 11. find the players, their jersey number, and playing club who were the goalkeepers for England in EURO Cup 2016.

SELECT player_name, jersey_no, playing_club
FROM player_mast AS pm
INNER JOIN soccer_country AS c
ON pm.team_id = c.country_id
WHERE posi_to_play = 'GK' AND c.country_name = 'England'