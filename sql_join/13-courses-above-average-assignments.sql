SELECT courses.title AS course_title
FROM courses
LEFT JOIN assignments
ON courses.id = assignments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(assignments.id) > (
    SELECT AVG(course_assignment_count)
    FROM (
        SELECT COUNT(assignments.id) AS course_assignment_count
        FROM courses
        LEFT JOIN assignments
        ON courses.id = assignments.course_id
        GROUP BY courses.id
    ) AS assignment_counts
)
ORDER BY course_title ASC;
