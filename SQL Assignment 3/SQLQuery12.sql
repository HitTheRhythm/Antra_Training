select countbydept.*
from (
 select deptid, count(*) as departCount
 from Employee
 group by deptid
 order by departCount desc
 limit 1
) as maxcount
inner join
( select dept.id, dept.`name`, count(*) as employeeCount
 from Dept
  inner join Employee on Employee.deptid = deptid
 group by deptid, deptname
) countbydept