SELECT avg(completed_at - started_at) as avg_assistance_request_duration, cohorts.name
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY avg_assistance_request_duration;