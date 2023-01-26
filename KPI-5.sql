#KPI5- Job Role Vs Work life balance
use project2;
select* from hr_2 limit 4;

select JobRole as Jobrole, count(if(WorklifeBalance=1,WorklifeBalance,Null)) as Poor, 
count(if(WorklifeBalance=2,WorklifeBalance,Null)) as Good ,
count(if(WorklifeBalance=3,WorklifeBalance,Null)) as Better,
count(if(WorklifeBalance=4,WorklifeBalance,Null)) as Best
from (select JobRole, WorklifeBalance from hr_1 full join hr_2 on  EmployeeNumber = EmployeeID) as S group by JobRole;