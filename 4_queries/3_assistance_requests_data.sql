-- SELECT (completed_at - started_at) as duration, students.name, teachers.name, assignments.name
-- FROM assistance_requests
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN teachers ON teachers.id = assistance_requests.teacher_id
-- JOIN assignments ON assignments.id = assistance_requests.assignment_id
-- ORDER BY duration;


-- this and above are the same.
SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;