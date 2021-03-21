# 18. find the highest number of foul cards given in one match.


SELECT pb.match_no AS match_no, COUNT(pb.match_no) AS max_fouls
FROM player_booked AS pb
GROUP BY pb.match_no
ORDER BY COUNT(pb.match_no) DESC
LIMIT 1;

# Finished in 0.00031200 seconds 



#SELECT match_no, ROUND(SUM(match_no) / match_no, 0) AS max_fouls
#FROM player_booked
#GROUP BY match_no
#ORDER BY (SUM(match_no) / match_no) DESC
#LIMIT 1;

# Finished in 0.00037900 seconds



#SELECT mm.match_no, COUNT(pb.match_no) AS Max_Fouls
#FROM match_mast AS mm
#INNER JOIN player_booked AS pb
#ON mm.match_no = pb.match_no
#GROUP BY mm.match_no
#ORDER BY COUNT(pb.match_no) DESC
#LIMIT 1;

# Finished in 0.00044800 seconds


#SET profiling =1;
#SHOW PROFILES;


