create database DataAssignment;
use DataAssignment;
show tables;
select 
age,
interests,
profession
from mydata
where gender = 'female';

select distinct
age,
interests,
profession
from mydata
where gender = 'female';

select profession from mydata where gender="Male";

select 
count(gender) as num 
from mydata
where indebt="True" and gender="Male";
/*There are 164 men who are indebt*/
select 
count(gender) as num 
from mydata
where indebt="True" and gender="Female";
/*THere are 169 women who are in debt*/
select 
count(gender) as num 
from mydata
where indebt="True" and profession="student";
/*There are 145 students indebt*/
select 
count(gender) as num 
from mydata
where indebt="True" and  profession="Software Engineer";
/*There are 169 software engineers indebt*/
select 
count(gender) as num 
from mydata
where indebt="True" and  profession="Marketer Manager";
/*There are 183 marketer managers indebt*/
select 
count(gender) as num 
from mydata
where indebt="True" and  income >=19000;
/*Most people with income of below 19000 are indebt */
select 
count(Owns_Car) as num 
from mydata
where indebt="True" and  Owns_Car="True" and isHomeOwner="True" ;
/*COOL FACT:Funnily those who are indebt own cars and own homes with a 24 difference with those who dont.*/
select
interests,
sum(income) as income
from mydata
where interests='Travel';
select
interests,
sum(income) as income
from mydata
where interests='Lifestlye';
select
interests,
sum(income) as income
from mydata
where interests='Sports';
/*COOL FACT:People interested with Lifestyle earn more money than those with sports and travel.*/
select 
sum(time_spent) as time,
platform
from mydata
where platform="Instagram";
select 
sum(time_spent) as time,
platform
from mydata
where platform="Facebook";
select 
sum(time_spent) as time,
platform
from mydata
where platform="Youtube";
/*Which platform is used most?Instagram is used more by the people with 1870 followed by youtube then facebook*/
select
sum(time_spent) as timeused
from mydata
group by age
having age >50;
select
sum(time_spent) as timeused
from mydata
group by age
having age <30;
select
sum(time_spent) as timeused
from mydata
group by age
having age between 30 and 50;
/*Who spend most time on social media?People between the age of 30 and 50 spend more time on social media followed by those above 50 then those below 30.*/












