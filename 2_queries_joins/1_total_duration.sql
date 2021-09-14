SELECT students.name AS student_name, SUM(assignment_submissions.duration) as assignment_duration
FROM students JOIN assignment_submissions ON assignment_submissions.student_id = students.id
WHERE students.name = 'Ibrahim Schimmel'
GROUP BY student_name;


//BETTER ANSWER:
-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';