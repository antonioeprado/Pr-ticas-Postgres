SELECT 
	s.id, 
	s.name AS school,
	c.name AS course,
	c1.name AS company,
	r.name AS role
FROM educations e 
JOIN schools s 
	ON e."schoolId" = s.id
JOIN users u
	ON e."userId" = u.id
JOIN courses c
	ON e."courseId" = c.id
JOIN applicants a
	ON u.id = a."userId"
JOIN jobs j
	ON a."jobId" = j.id
JOIN companies c1
	ON j."companyId" = c1.id
JOIN roles r
	ON j."roleId" = r.id
WHERE r.name = 'Software Engineer' AND c1.id = '10' AND j.active IS TRUE;