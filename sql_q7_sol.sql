# 7. Write a SQL query to find all the venues where matches with penalty shootouts were played.


SELECT m.match_no, venue_name
FROM match_mast AS m
INNER JOIN penalty_shootout AS p
ON p.match_no = m.match_no
INNER JOIN soccer_venue as v
ON m.venue_id = v.venue_id
GROUP BY m.match_no, venue_name