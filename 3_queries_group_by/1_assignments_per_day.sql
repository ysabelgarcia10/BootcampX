SELECT COUNT(*) AS total_assignments, day
FROM assignments
GROUP BY day
ORDER BY day;