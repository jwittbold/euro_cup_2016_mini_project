# 15. find the referees who booked the most number of players.

# Not sure how this question is different than Question No. 14, so submitting the same answer. 
# (# 14.  find referees and the number of bookings they made for the entire tournament. Sort your answer by the number of bookings in descending order.)


SELECT referee_name, COUNT(pb.match_no) AS bookings
FROM referee_mast as rm
INNER JOIN match_mast as mm
ON rm.referee_id = mm.referee_id
INNER JOIN player_booked AS pb
ON mm.match_no = pb.match_no 
GROUP BY referee_name
ORDER BY bookings DESC 