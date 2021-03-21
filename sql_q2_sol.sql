# 2. find the number of matches that were won by penalty shootout 

SELECT COUNT(decided_by) FROM match_mast 
WHERE decided_by = 'p'


