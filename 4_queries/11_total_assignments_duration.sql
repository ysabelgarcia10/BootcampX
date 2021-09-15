
SELECT COUNT(*) as number_of_assignments, day, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;


-- sum of duration , count of assignments per day