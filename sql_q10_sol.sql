# 10. Find all available information about the players under contract to Liverpool F.C. playing for England in EURO Cup 2016.


SELECT *
FROM player_mast AS pm
LEFT JOIN match_mast AS mm
ON pm.player_id = mm.plr_of_match
LEFT JOIN match_details AS md
ON pm.player_id = md.player_gk
LEFT JOIN goal_details AS gd
ON pm.player_id = gd.player_id
LEFT JOIN player_booked as pb
ON pm.player_id = pb.player_id
LEFT JOIN player_in_out as pio
ON pm.player_id = pio.player_id
LEFT JOIN match_captain as mc
ON pm.player_id = mc.player_captain
WHERE playing_club = 'Liverpool';


/*
-- Both penalty_shootout & penalty_gk have player_id fields, but both returned all NULL values, so were removed

LEFT JOIN penalty_shootout as ps
ON pm.player_id = ps.player_id

LEFT JOIN penalty_gk as pgk
ON pm.player_id = pgk.player_gk

*/



