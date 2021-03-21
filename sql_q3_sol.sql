# 3. find the match number, date, and score for matches in which no stoppage time was added in the 1st half 


SELECT d.match_no, SUM(d.goal_score) AS total_goals, play_date, stop1_sec
  FROM match_details AS d
    INNER JOIN match_mast AS m
      ON m.match_no = d.match_no
WHERE stop1_sec = 0
GROUP BY d.match_no, play_date;








































