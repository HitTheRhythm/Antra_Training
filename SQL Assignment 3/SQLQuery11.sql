SELECT deptname,empid,salary
FROM(
SELECT d.deptname, e.empid, e.salary, rank() OVER ( PARTITION BY e.deptid ORDER BY
 e.salary DESC ) AS rnk
 FROM dept d, employee e
 WHERE d.deptid = e.deptid
 )
WHERE rnk <= 3
ORDER BY deptname,rnk