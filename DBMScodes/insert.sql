delete from prereq;
delete from time_slot;
delete from advisor;
delete from takes;
delete from student;
delete from teaches;
delete from section;
delete from instructor;
delete from course;
delete from department;
delete from classroom;
insert into classroom values ('Packard', '101', '500');
insert into classroom values ('Painter', '514', '10');
insert into classroom values ('Taylor', '3128', '70');
insert into classroom values ('Watson', '100', '30');
insert into classroom values ('Watson', '120', '50');
insert into department values ('Biology', 'Watson', '90000');
insert into department values ('Comp. Sci.', 'Taylor', '100000');
insert into department values ('Elec. Eng.', 'Taylor', '85000');
insert into department values ('Finance', 'Painter', '120000');
insert into department values ('History', 'Painter', '50000');
insert into department values ('Music', 'Packard', '80000');
insert into department values ('Physics', 'Watson', '70000');
insert into course values
  ('BIO-101', 'Intro. to Biology', 'Biology', '4'),
  ('BIO-301', 'Genetics', 'Biology', '4'),
  ('BIO-399', 'Computational Biology', 'Biology', '3'),
  ('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', '4'),
  ('CS-190', 'Game Design', 'Comp. Sci.', '4'),
  ('CS-315', 'Robotics', 'Comp. Sci.', '3'),
  ('CS-319', 'Image Processing', 'Comp. Sci.', '3'),
  ('CS-347', 'Database System Concepts', 'Comp. Sci.', '3'),
  ('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', '3'),
  ('FIN-201', 'Investment Banking', 'Finance', '3'),
  ('HIS-351', 'World History', 'History', '3'),
  ('MU-199', 'Music Video Production', 'Music', '3'),
  ('PHY-101', 'Physical Principles', 'Physics', '4');
insert into instructor values
  ('10101', 'Srinivasan', 'Comp. Sci.', '65000'),
  ('12121', 'Wu', 'Finance', '90000'),
  ('15151', 'Mozart', 'Music', '40000'),
  ('22222', 'Einstein', 'Physics', '95000'),
  ('32343', 'El Said', 'History', '60000'),
  ('33456', 'Gold', 'Physics', '87000'),
  ('45565', 'Katz', 'Comp. Sci.', '75000'),
  ('58583', 'Califieri', 'History', '62000'),
  ('76766', 'Crick', 'Biology', '72000'),
  ('83821', 'Brandt', 'Comp. Sci.', '92000'),
  ('98345', 'Kim', 'Elec. Eng.', '80000');
insert into section values
  ('BIO-101', '1', 'Summer', '2009', 'Painter', '514', 'B'),
  ('BIO-301', '1', 'Summer', '2010', 'Painter', '514', 'A'),
  ('CS-101', '1', 'Fall', '2009', 'Packard', '101', 'H'),
  ('CS-101', '1', 'Spring', '2010', 'Packard', '101', 'F'),
  ('CS-190', '1', 'Spring', '2009', 'Taylor', '3128', 'E'),
  ('CS-190', '2', 'Spring', '2009', 'Taylor', '3128', 'A'),
  ('CS-315', '1', 'Spring', '2010', 'Watson', '120', 'D'),
  ('CS-319', '1', 'Spring', '2010', 'Watson', '100', 'B'),
  ('CS-319', '2', 'Spring', '2010', 'Taylor', '3128', 'C'),
  ('CS-347', '1', 'Fall', '2009', 'Taylor', '3128', 'A'),
  ('EE-181', '1', 'Spring', '2009', 'Taylor', '3128', 'C'),
  ('FIN-201', '1', 'Spring', '2010', 'Packard', '101', 'B'),
  ('HIS-351', '1', 'Spring', '2010', 'Painter', '514', 'C'),
  ('MU-199', '1', 'Spring', '2010', 'Packard', '101', 'D'),
  ('PHY-101', '1', 'Fall', '2009', 'Watson', '100', 'A');
insert into teaches values
  ('10101', 'CS-101', '1', 'Fall', '2009'),
  ('10101', 'CS-315', '1', 'Spring', '2010'),
  ('10101', 'CS-347', '1', 'Fall', '2009'),
  ('12121', 'FIN-201', '1', 'Spring', '2010'),
  ('15151', 'MU-199', '1', 'Spring', '2010'),
  ('22222', 'PHY-101', '1', 'Fall', '2009'),
  ('32343', 'HIS-351', '1', 'Spring', '2010'),
  ('45565', 'CS-101', '1', 'Spring', '2010'),
  ('45565', 'CS-319', '1', 'Spring', '2010'),
  ('76766', 'BIO-101', '1', 'Summer', '2009'),
  ('76766', 'BIO-301', '1', 'Summer', '2010'),
  ('83821', 'CS-190', '1', 'Spring', '2009'),
  ('83821', 'CS-190', '2', 'Spring', '2009'),
  ('83821', 'CS-319', '2', 'Spring', '2010'),
  ('98345', 'EE-181', '1', 'Spring', '2009');
insert into student values
  ('00128', 'Zhang', 'Comp. Sci.', '102'),
  ('12345', 'Shankar', 'Comp. Sci.', '32'),
  ('19991', 'Brandt', 'History', '80'),
  ('23121', 'Chavez', 'Finance', '110'),
  ('44553', 'Peltier', 'Physics', '56'),
  ('45678', 'Levy', 'Physics', '46'),
  ('54321', 'Williams', 'Comp. Sci.', '54'),
  ('55739', 'Sanchez', 'Music', '38'),
  ('70557', 'Snow', 'Physics', '0'),
  ('76543', 'Brown', 'Comp. Sci.', '58'),
  ('76653', 'Aoi', 'Elec. Eng.', '60'),
  ('98765', 'Bourikas', 'Elec. Eng.', '98'),
  ('98988', 'Tanaka', 'Biology', '120');
insert into takes values
  ('00128', 'CS-101', '1', 'Fall', '2009', 'A'),
  ('00128', 'CS-347', '1', 'Fall', '2009', 'A-'),
  ('12345', 'CS-101', '1', 'Fall', '2009', 'C'),
  ('12345', 'CS-190', '2', 'Spring', '2009', 'A'),
  ('12345', 'CS-315', '1', 'Spring', '2010', 'A'),
  ('12345', 'CS-347', '1', 'Fall', '2009', 'A'),
  ('19991', 'HIS-351', '1', 'Spring', '2010', 'B');
insert into takes values ('23121', 'FIN-201', '1', 'Spring', '2010', 'C+');
insert into takes values ('44553', 'PHY-101', '1', 'Fall', '2009', 'B-');
insert into takes values ('45678', 'CS-101', '1', 'Fall', '2009', 'F');
insert into takes values ('45678', 'CS-101', '1', 'Spring', '2010', 'B+');
insert into takes values ('45678', 'CS-319', '1', 'Spring', '2010', 'B');
insert into takes values ('54321', 'CS-101', '1', 'Fall', '2009', 'A-');
insert into takes values ('54321', 'CS-190', '2', 'Spring', '2009', 'B+');
insert into takes values ('55739', 'MU-199', '1', 'Spring', '2010', 'A-');
insert into takes values ('76543', 'CS-101', '1', 'Fall', '2009', 'A');
insert into takes values ('76543', 'CS-319', '2', 'Spring', '2010', 'A');
insert into takes values ('76653', 'EE-181', '1', 'Spring', '2009', 'C');
insert into takes values ('98765', 'CS-101', '1', 'Fall', '2009', 'C-');
insert into takes values ('98765', 'CS-315', '1', 'Spring', '2010', 'B');
insert into takes values ('98988', 'BIO-101', '1', 'Summer', '2009', 'A');
insert into takes values ('98988', 'BIO-301', '1', 'Summer', '2010', null);
insert into takes values ('98988', 'BIO-301', '1', 'Summer', '2010', null);

insert into advisor values ('00128', '45565');
insert into advisor values ('12345', '10101');
insert into advisor values ('23121', '76543');
insert into advisor values ('44553', '22222');
insert into advisor values ('45678', '22222');
insert into advisor values ('76543', '45565');
insert into advisor values ('76653', '98345');
insert into advisor values ('98765', '98345');
insert into advisor values ('98988', '76766');
insert into time_slot values ('A', 'M', '8', '0', '8', '50');
insert into time_slot values ('A', 'W', '8', '0', '8', '50');
insert into time_slot values ('A', 'F', '8', '0', '8', '50');
insert into time_slot values ('B', 'M', '9', '0', '9', '50');
insert into time_slot values ('B', 'W', '9', '0', '9', '50');
insert into time_slot values ('B', 'F', '9', '0', '9', '50');
insert into time_slot values ('C', 'M', '11', '0', '11', '50');
insert into time_slot values ('C', 'W', '11', '0', '11', '50');
insert into time_slot values ('C', 'F', '11', '0', '11', '50');
insert into time_slot values ('D', 'M', '13', '0', '13', '50');
insert into time_slot values ('D', 'W', '13', '0', '13', '50');
insert into time_slot values ('D', 'F', '13', '0', '13', '50');
insert into time_slot values ('E', 'T', '10', '30', '11', '45 ');
insert into time_slot values ('E', 'R', '10', '30', '11', '45 ');
insert into time_slot values ('F', 'T', '14', '30', '15', '45 ');
insert into time_slot values ('F', 'R', '14', '30', '15', '45 ');
insert into time_slot values ('G', 'M', '16', '0', '16', '50');
insert into time_slot values ('G', 'W', '16', '0', '16', '50');
insert into time_slot values ('G', 'F', '16', '0', '16', '50');
insert into time_slot values ('H', 'W', '10', '0', '12', '30');
insert into prereq values ('BIO-301', 'BIO-101');
insert into prereq values ('BIO-399', 'BIO-101');
insert into prereq values ('CS-190', 'CS-101');
insert into prereq values ('CS-315', 'CS-101');
insert into prereq values ('CS-319', 'CS-101');
insert into prereq values ('CS-347', 'CS-101');
insert into prereq values ('EE-181', 'PHY-101');
