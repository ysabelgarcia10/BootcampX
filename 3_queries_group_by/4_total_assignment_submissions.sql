SELECT COUNT(assignment_submissions.*) AS total_submissions, cohorts.name AS cohort_name
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id 
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;
