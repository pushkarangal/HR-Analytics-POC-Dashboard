create database project2;
use project2;
select * from hr_1 limit 5;
## KPI 1- Average Attrition Rate - Stored Procedure ##
select Department, count(if(Attrition="Yes",EmployeeNumber,Null)) as Attrition_Employees, count(if(Attrition="No",EmployeeNumber,Null)) as No_Attrition_Employees,
(count(if(Attrition="Yes",EmployeeNumber,Null))/(Count(EmployeeNumber)))*100 as Attrition_Rate
from hr_1 group by Department order by Department asc;

