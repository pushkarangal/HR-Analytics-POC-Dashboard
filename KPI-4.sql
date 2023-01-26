#KPI-4 Average working years for each Department


select Department, avg(YearsAtCompany) from hr_1 full join hr_2 on EmployeeNumber= EmployeeID 
group by Department order by Department Asc;

