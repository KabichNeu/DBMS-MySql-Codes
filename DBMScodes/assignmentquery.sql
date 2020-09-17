select name,dept_name from instructor;

select name from instructor where dept_name='Comp. Sci.' and salary > 70000;

select instructor.name,instructor.dept_name,department.building from instructor inner join department on instructor.dept_name = department.dept_name;

select distinct instructor.name, teaches.course_id from instructor inner join teaches on instructor.ID = teaches.ID ;

select instructor.name,course.course_id from instructor
  inner join department on instructor.dept_name = department.dept_name
  inner join course on department.dept_name=course.dept_name;

select T1.name from instructor as T1,instructor as T2
  where T2.dept_name = 'Biology' and T1.salary > T2.salary;

select department.dept_name from department where building like '%Watson%';

select instructor.name from instructor where instructor.dept_name = 'Physics' order by instructor.name asc;

select instructor.name from instructor where instructor.dept_name = 'Physics' order by instructor.name desc;

select distinct course.course_id from course inner join section on course.course_id = section.course_id
  where section.semester = 'Fall' and section.year = '2009'
  or section.semester = 'Spring' and section.year = '2010';

select distinct course.course_id from course inner join section on course.course_id = section.course_id
  where section.semester = 'Fall' and section.year = '2009'
  and section.semester = 'Spring' and section.year = '2010';

select distinct course.course_id from course inner join section on course.course_id = section.course_id
  where section.semester = 'Fall' and section.year = '2009'
  and section.semester <> 'Spring' and section.year <> '2010';

select count(instructor.name) from instructor inner join teaches on teaches.ID = instructor.ID
  inner join course on course.course_id=teaches.course_id
  inner join section on section.course_id = course.course_id
  where section.semester = 'Spring' and section.year = '2010';

select avg(instructor.salary) from instructor inner join department on instructor.dept_name = department.dept_name
  where department.dept_name = 'Biology';

select avg(instructor.salary) from instructor inner join department on instructor.dept_name = department.dept_name
  where department.dept_name = 'Comp. Sci.';

select avg(instructor.salary) from instructor inner join department on instructor.dept_name = department.dept_name
  where department.dept_name = 'Elec. Eng.';

select avg(instructor.salary) from instructor inner join department on instructor.dept_name = department.dept_name
  where department.dept_name = 'Finance';

select avg(instructor.salary) from instructor inner join department on instructor.dept_name = department.dept_name
  where department.dept_name = 'History';

select avg(instructor.salary) from instructor inner join department on instructor.dept_name = department.dept_name
  where department.dept_name = 'Music';

select avg(instructor.salary) from instructor inner join department on instructor.dept_name = department.dept_name
  where department.dept_name = 'Physics';

select dept_name, count(distinct ID) from instructor where (ID) in (select ID from teaches where semester = 'Spring' and teaches.year = 2010) group by dept_name;

select dept_name, avg(salary) from instructor
group by dept_name
having avg(salary) > 42000;

select course_id, semester, year, sec_id,avg(tot_cred)
  from takes natural join student where year='2009'
  group by course_id,semester,year,sec_id
  having count(ID)>=2;

17
select count(distinct ID) from takes
  where (course_id,sec_id,semester,year) in (select course_id,sec_id,semester,year from teaches
  where teaches.ID= '110011');

18
select max(enrollment), min(enrollment)
from(select count(ID) enrollment from takes group by course_id, sec_id, semester, year) as t;

19
select sec_id,semester,year,max(enrollment) as maximum
from(select sec_id,semester,year,count(distinct ID) as enrollment
from takes group by course_id,sec_id,semester,year) as y;

20
select title,course_id from course where course_id like 'CS-1%';

update instructor as INSTRUCTOR
join (select ID, count(ID) as Count
from teaches group by ID) as T
using(ID) set INSTRUCTOR.salary = INSTRUCTOR.salary*T.Count*2;

select instructor.ID from instructor where ID not in (select ID from teaches);

select T1.dept_name,T1.name from instructor as T1, instructor as T2 where T1.salary > T2.salary and T2.dept_name ='Biology';

select d, avg_salary
from(select dept_name as d, avg(salary) as avg_salary
from instructor group by dept_name) as t
order by avg_salary desc limit 1;
select distinct name from student natural join takes where course_id =all (select course_id from course where dept_name="Biology");
