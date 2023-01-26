select "0-5" as Promotion_Yr_Range, count(if(Attrition="Yes",EmployeeNumber,NULL)) as Attrition_Employee,count(if(Attrition="No",EmployeeNumber,NULL)) as No_Attrition_Employee,
count(EmployeeNumber) as Total_Employee, (count(if(Attrition="Yes",EmployeeNumber,NULL))/count(EmployeeNumber))*100 as AttritionRate
from hr_1 full join hr_2 on EmployeeNumber= EmployeeID where YearsSinceLastPromotion<=5 union

select "6-10" as Promotion_Yr_Range, count(if(Attrition="Yes",EmployeeNumber,NULL)) as Attrition_Employee,count(if(Attrition="No",EmployeeNumber,NULL)) as No_Attrition_Employee,
count(EmployeeNumber) as Total_Employee, (count(if(Attrition="Yes",EmployeeNumber,NULL))/count(EmployeeNumber))*100 as AttritionRate
from hr_1 full join hr_2 on EmployeeNumber= EmployeeID where YearsSinceLastPromotion>=6 and YearsSinceLastPromotion<=10 union 

select "11-15" as Promotion_Yr_Range, count(if(Attrition="Yes",EmployeeNumber,NULL)) as Attrition_Employee,count(if(Attrition="No",EmployeeNumber,NULL)) as No_Attrition_Employee,
count(EmployeeNumber) as Total_Employee, (count(if(Attrition="Yes",EmployeeNumber,NULL))/count(EmployeeNumber))*100 as AttritionRate
from hr_1 full join hr_2 on EmployeeNumber= EmployeeID where YearsSinceLastPromotion>=11 and YearsSinceLastPromotion<=15 union 

select "16-25" as Promotion_Yr_Range, count(if(Attrition="Yes",EmployeeNumber,NULL)) as Attrition_Employee,count(if(Attrition="No",EmployeeNumber,NULL)) as No_Attrition_Employee,
count(EmployeeNumber) as Total_Employee, (count(if(Attrition="Yes",EmployeeNumber,NULL))/count(EmployeeNumber))*100 as AttritionRate
from hr_1 full join hr_2 on EmployeeNumber= EmployeeID where YearsSinceLastPromotion>=16 and YearsSinceLastPromotion<=25 union 

select "26-50" as Promotion_Yr_Range, count(if(Attrition="Yes",EmployeeNumber,NULL)) as Attrition_Employee,count(if(Attrition="No",EmployeeNumber,NULL)) as No_Attrition_Employee,
count(EmployeeNumber) as Total_Employee, (count(if(Attrition="Yes",EmployeeNumber,NULL))/count(EmployeeNumber))*100 as AttritionRate
from hr_1 full join hr_2 on EmployeeNumber= EmployeeID where YearsSinceLastPromotion>=26 and YearsSinceLastPromotion<=50;