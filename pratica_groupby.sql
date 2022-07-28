-- Questão 1
SELECT COUNT("endDate") AS "currentExperiences"
FROM experiences;

-- Questão 2
SELECT "userId" AS id, 
COUNT(educations.id) 
FROM educations
JOIN users ON users.id = "userId"
GROUP BY "userId";

-- Questão 3:
SELECT users.name AS writer, COUNT(testimonials.*) AS "testimonialCount"
FROM users
JOIN testimonials ON testimonials."writerId" = users.id
WHERE users.id = 435
GROUP BY writer;

-- Questão 4:
SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role
FROM jobs
JOIN roles ON jobs."roleId" = roles.id
WHERE jobs.active = true
GROUP BY role
ORDER BY "maximumSalary" ASC;
