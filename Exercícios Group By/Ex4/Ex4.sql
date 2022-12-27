SELECT 
	MAX(j.salary) AS "maximumSalary", 
	r.name AS role
FROM jobs j 
JOIN roles r
	ON j."roleId" = r.id
WHERE j.active IS TRUE
GROUP BY role
ORDER BY "maximumSalary";