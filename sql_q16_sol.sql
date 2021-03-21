# 16. find referees and the number of matches they worked in each venue

SELECT referee_name, COUNT(mm.venue_id) AS match_count, venue_name
FROM match_mast AS mm 
INNER JOIN referee_mast AS rm
ON mm.referee_id = rm.referee_id
INNER JOIN soccer_venue AS sc
ON mm.venue_id = sc.venue_id
GROUP BY referee_name, venue_name
ORDER BY referee_name ASC;