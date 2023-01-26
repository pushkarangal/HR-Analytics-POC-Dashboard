select "1000-10000" as Income_Bin, count(if(Attrition="Yes",EmployeeNumber,NULL)) as Attrition_Employee,count(if(Attrition="No",EmployeeNumber,NULL)) as No_Attrition_Employee,
count(EmployeeNumber) as Total_Employee, (count(if(Attrition="Yes",EmployeeNumber,NULL))/count(EmployeeNumber))*100 as AttritionRate
from hr_1 full join hr_2 on EmployeeNumber= EmployeeID where MonthlyIncome>=1000 and MonthlyIncome<=10000 union 

select "10001-20000" as Income_Bin, count(if(Attrition="Yes",EmployeeNumber,NULL)) as Attrition_Employee,count(if(Attrition="No",EmployeeNumber,NULL)) as No_Attrition_Employee,
count(EmployeeNumber) as Total_Employee, (count(if(Attrition="Yes",EmployeeNumber,NULL))/count(EmployeeNumber))*100 as AttritionRate
from hr_1 full join hr_2 on EmployeeNumber= EmployeeID where MonthlyIncome>=10001 and MonthlyIncome<=20000 union

select "20001-30000" as Income_Bin, count(if(Attrition="Yes",EmployeeNumber,NULL)) as Attrition_Employee,count(if(Attrition="No",EmployeeNumber,NULL)) as No_Attrition_Employee,
count(EmployeeNumber) as Total_Employee, (count(if(Attrition="Yes",EmployeeNumber,NULL))/count(EmployeeNumber))*100 as AttritionRate
from hr_1 full join hr_2 on EmployeeNumber= EmployeeID where MonthlyIncome>=20001 and MonthlyIncome<=30000 union

select "30001-40000" as Income_Bin, count(if(Attrition="Yes",EmployeeNumber,NULL)) as Attrition_Employee,count(if(Attrition="No",EmployeeNumber,NULL)) as No_Attrition_Employee,
count(EmployeeNumber) as Total_Employee, (count(if(Attrition="Yes",EmployeeNumber,NULL))/count(EmployeeNumber))*100 as AttritionRate
from hr_1 full join hr_2 on EmployeeNumber= EmployeeID where MonthlyIncome>=30001 and MonthlyIncome<=40000 union 

select "40001-50000" as Income_Bin, count(if(Attrition="Yes",EmployeeNumber,NULL)) as Attrition_Employee,count(if(Attrition="No",EmployeeNumber,NULL)) as No_Attrition_Employee,
count(EmployeeNumber) as Total_Employee, (count(if(Attrition="Yes",EmployeeNumber,NULL))/count(EmployeeNumber))*100 as AttritionRate
from hr_1 full join hr_2 on EmployeeNumber= EmployeeID where MonthlyIncome>=40001 and MonthlyIncome<=50000 union

select "50000+" as Income_Bin, count(if(Attrition="Yes",EmployeeNumber,NULL)) as Attrition_Employee,count(if(Attrition="No",EmployeeNumber,NULL)) as No_Attrition_Employee,
count(EmployeeNumber) as Total_Employee, (count(if(Attrition="Yes",EmployeeNumber,NULL))/count(EmployeeNumber))*100 as AttritionRate
from hr_1 full join hr_2 on EmployeeNumber= EmployeeID where MonthlyIncome>=50001;
