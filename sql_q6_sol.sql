# 6. Write a SQL query to find the number of matches that were won by a single point, but do not include matches decided by penalty shootout.



SELECT COUNT(m1.match_no)
FROM match_details AS m1
INNER JOIN match_details AS m2
ON m1.match_no = m2.match_no
WHERE m1.win_lose = 'W' AND m1.goal_score - m2.goal_score = 1 AND m1.decided_by != 'P'
