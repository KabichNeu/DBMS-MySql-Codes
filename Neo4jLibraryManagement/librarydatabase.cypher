create (Bishesh:Student{name:'Bisheshwor Neupane',semester:'4', depart:'DOCSE',id:'ST-1',bid:'S1-209'})
create (Umesh:Student{name:'Umesh Shrestha',semester:'4', depart:'DOCSE',id:'ST-2',bid:'S1-410'})
create (Gaurab:Student{name:'Gaurab Shrestha',semester:'4', depart:'DOCSE',id:'ST-3',bid:'S1-420'})
create (Bandhan:Student{name:'Bandhan DC',semester:'4', depart:'DOME',id:'ST-4',bid:'P2-220'})
create (Sajjan:Student{name:'Sajjan Neupane',semester:'4', depart:'DOCE',id:'ST-5',bid:'P3-555'})
create (Rishav:Student{name:'Rishav Dhungel',semester:'4', depart:'KUSOM',id:'ST-6',bid:'P4-355'})
create (Saazan:Student{name:'Saazan Mahat',semester:'4', depart:'DOCSE',id:'ST-7',bid:'P8-110'})
create (Jenish:Student{name:'Jenish Chauhan',semester:'4', depart:'DOGE',id:'ST-8',bid:'D1-226'})
create (Anuska:Student{name:'Anuska Sapkota',semester:'4', depart:'DOArch',id:'ST-9',bid:'D2-225'})
create (Sumana:Student{name:'Sumana Karki',semester:'4', depart:'DOPH',id:'ST-10',bid:'C1-888'})

create (Khim:Staff{name:'Khim Khatri',salary:80000,since:2011, depart:'DOM',id:'SF-2',bid:'S1-209'})
create (Praynita:Staff{name:'Praynita Karki',salary:80000,since:2016 ,depart:'DOCSE',id:'SF-3',bid:'P8-110'})
create (Sarala:Staff{name:'Sarala Shakya',salary:80000,since:2019 ,depart:'DOCSE',id:'SF-4',bid:'P8-110'})
create (Gajendra:Staff{name:'Gajendra Sherma',salary:80000,since:2006 ,depart:'DOCSE',id:'SF-5',bid:'P3-555'})
create (Rajib:Staff{name:'Rajib Shrestha',salary:80000,since:2010 ,depart:'DONS',id:'SF-6',bid:'S1-420'})
create (Gokul:Staff{name:'Gokul kc ',salary:80000,since:2010,depart:'DOM',id:'SF-7',bid:'S1-209'})
create (Rajendra:Staff{name:'Rajendra Adhikary',salary:80000,since:2005,depart:'DOP',id:'SF-8',bid:'S1-209'})
create (Shashank:Staff{name:'Shashank Shakya',salary:80000,since:2018 ,depart:'DOGE',id:'SF-9',bid:'C1-888'})
create (ManishP:Staff{name:'Monish Pokhrel',salary:80000,since:1995,depart:'DOCSE',id:'SF-10',bid:'P8-110'})
create (Rojina:Staff{name:'Rojina Shakya',salary:80000,since:2018 ,depart:'DOCSE',id:'SF-11',bid:'P8-110'})

create(UniversityPhysics:Book{name:'University Physics', category:'Physics',author:'Hugh D. Young',bid:'S1-409'})
create(EngineeringMathematicc:Book{name:'Engineering Mathmatics', category:'Mathematics',author:'K.A Stroud',bid:'S1-410'})
create(UniversityChemistry:Book{name:'University Chemistry', category:'Chemistry',author:'Bruce H. Mahan',bid:'S1-420'})
create(TechnicalCommunication:Book{name:'Technical Communication', category:'English',author:'Kesi Parker',bid:'P2-220'})
create(MachineLearning:Book{name:'Intro to Statistical Learning', category:'Statistics',author:'Gareth M James',bid:'P3-555'})
create(DeepLearning:Book{name:'Deep Learning', category:'data science',author:'Ian Goodfellow',bid: 'P4-355'})
create(Python:Book{name:'Automate the boring Stuff with python', category:'programming',author:'AI Sweigart',bid:'P8-110'})
create(Java:Book{name:'Head First Java', category:'programming',author:'Kathy Sierra',bid:'D1-226'})
create(Cpp:Book{name:'Let us C++', category:'programming',author:'Prof. Dr. E. Balagurusamy',bid:'D2-225'})
create(C:Book{name:'Let us C', category:'programming',author:'Prof. Dr. E. Balagurusamy',bid:'D5-223'})
create(BuildingStructure:Book{name:'Building Structure', category:'structure analysis',author:'James Ambrose',bid:'C1-888'})

create(BisheshFine:Fine{amount:10,id:'ST-1'})
create(UmeshFine:Fine{amount:22,id:'ST-2'})
create(GaurabFine:Fine{amount:25,id:'ST-3'})
create(BandhanFine:Fine{amount:5,id:'ST-4'})
create(SajjanFine:Fine{amount:55,id:'ST-5'})
create(RishavFine:Fine{amount:100,id:'ST-6'})
create(SaazanFine:Fine{amount:11,id:'ST-7'})
create(JenishFine:Fine{amount:0,id:'ST-8'})
create(AnuskaFine:Fine{amount:0,id:'ST-9'})
create(SumanaFine:Fine{amount:0,id:'ST-10'})

create(MathDepart:Department{name:'DOM'})
create(ChemistryDepart:Department{name:'DONS'})
create(PhysicsDepart:Department{name:'DOP'})
create(ComputerDepart:Department{name:'DOCSE'})
create(GeoDepart:Department{name:'DOGE'})
create(CivilDepart:Department{name:'DOCE'})
create(ArchDepart:Department{name:'DOArch'})
create(PharmDepart:Department{name:'DOPH'})
create(ManagementDepart:Department{name:'DOSOM'})

match (a:Student),(b:Book)
where a.bid = b.bid
create (a)-[:borrows]->(b)

match (a:Student),(b:Book)
create (a)-[bid:borrows]->(b)


match (a:Staff),(b:Book)
where a.bid = b.bid
create (a)-[:borrows]->(b)

match (a:Staff),(b:Book)
create (a)-[bid:borrows]->(b)


match (a:Student),(b:Fine)
where a.id = b.id
create (a)-[:has_to_pay]->(b)

match (a:Student),(b:Fine)
create (a)-[id:borrows]->(b)


match (a:Student),(b:Department)
where a.depart = b.name
create (a)-[:is_of]->(b)

match(a:Staff),(b:Department)
where a.depart = b.name
create (a)-[:is_of]->(b)
