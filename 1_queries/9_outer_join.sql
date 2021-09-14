SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;



-- 1. FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- 2. FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- 3. FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- The first query will return all students because students is to the LEFT of the word JOIN.
-- The second query will return all of the cohorts because cohorts is to the RIGHT of the word JOIN.
-- The third query will return all rows from both tables, even when there is no match.


-- When we write a LEFT OUTER JOIN or a RIGHT OUTER JOIN, we can omit the word OUTER. In the rest of our examples, we will omit the OUTER keyword.

-- We could also rewrite any RIGHT JOIN as a LEFT JOIN, just by changing the order of the tables. So the following two queries would produce identical results:

-- 1. FROM students LEFT JOIN cohorts ON cohorts.id = cohort_id;
-- 2. FROM cohorts RIGHT JOIN students ON cohorts.id = cohort_id;