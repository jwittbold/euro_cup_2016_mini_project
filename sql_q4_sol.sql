# 4. compute a list showing the number of substitutions that happened in various stages of play for the entire tournament

# not sure if this answer satifies the 'compute a list' part of the directions

SELECT CONCAT(play_stage, ': ', COUNT(in_out), ' ') AS Stage_Substitutions
  FROM player_in_out AS p
    INNER JOIN match_mast AS m
    ON p.match_no = m.match_no
WHERE  in_out = 'O'
GROUP BY play_stage


