# 17.  find the country where the most assistant referees come from, and the count of the assistant referees.

SELECT country_name AS Country, COUNT(ass_ref_id) AS Asst_Referee_count
FROM asst_referee_mast AS ar
INNER JOIN soccer_country AS c
ON ar.country_id = c.country_id
GROUP BY country_name
ORDER BY COUNT(ass_ref_id) DESC
LIMIT 1;