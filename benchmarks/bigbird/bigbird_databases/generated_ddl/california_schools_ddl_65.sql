-- Table: district_cybersecurity_training
CREATE TABLE district_cybersecurity_training (
    training_id TEXT PRIMARY KEY,
    district_code TEXT,
    training_name TEXT,
    trainer_organization TEXT,
    start_date DATE,
    end_date DATE,
    duration_hours INTEGER,
    participants_target INTEGER,
    participants_actual INTEGER,
    training_mode TEXT,
    certification_obtained TEXT,
    cost_usd REAL,
    curriculum_version TEXT,
    assessment_score REAL,
    feedback_summary TEXT,
    training_status TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    training_category TEXT,
    compliance_requirement TEXT,
    trainer_contact TEXT
);

INSERT INTO district_cybersecurity_training VALUES
('T001','D001','Basic Cybersecurity Awareness','SecureTech','2023-02-01','2023-02-01',4,30,28,'Online','Yes',1500.00,'v1.0',85.5,'Positive overall','Completed','2023-01-15','2023-01-20','N/A','Mandatory','FERPA','john.doe@securetech.com');

INSERT INTO district_cybersecurity_training VALUES
('T002','D002','Advanced Threat Detection','CyberGuard','2023-03-10','2023-03-12',16,20,19,'In-Person','Yes',4800.00,'v2.1',92.0,'Very positive','Completed','2023-02-20','2023-02-25','Follow up needed','Optional','HIPAA','jane.smith@cyberguard.com');

INSERT INTO district_cybersecurity_training VALUES
('T003','D003','Data Privacy Workshop','InfoSafe','2023-04-05','2023-04-05',6,25,24,'Online','No',2100.00,'v1.3',78.0,'Good feedback','Completed','2023-03-01','2023-03-05','Include more case studies','Mandatory','COPPA','mark.taylor@infosafe.com');

-- Table: facility_wastewater_treatment_log
CREATE TABLE facility_wastewater_treatment_log (
    log_id TEXT PRIMARY KEY,
    facility_id TEXT,
    log_date DATE,
    shift TEXT,
    inflow_volume_gallons REAL,
    outflow_volume_gallons REAL,
    chemical_addition_liters REAL,
    chemical_type TEXT,
    ph_level REAL,
    turbidity_ntu REAL,
    temperature_f REAL,
    operator_id TEXT,
    maintenance_flag INTEGER,
    comments TEXT,
    equipment_status TEXT,
    energy_consumption_kwh REAL,
    waste_disposal_method TEXT,
    regulatory_violation INTEGER,
    next_maintenance_date DATE,
    created_by TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO facility_wastewater_treatment_log VALUES
('W001','F001','2023-05-01','Day',12000.5,11980.3,15.2,'Chlorine',7.2,3.1,68.5,'OP001',0,'Normal operation','Good',250.0,'Landfill',0,'2023-06-15','tech1','2023-05-01','2023-05-01');

INSERT INTO facility_wastewater_treatment_log VALUES
('W002','F002','2023-05-02','Night',9500.0,9485.0,12.0,'UV',7.5,2.8,65.0,'OP002',1,'Minor leak fixed','Fair',190.0,'Recycling',0,'2023-07-01','tech2','2023-05-02','2023-05-02');

INSERT INTO facility_wastewater_treatment_log VALUES
('W003','F003','2023-05-03','Day',11000.0,10975.0,14.5,'Chlorine',7.0,3.0,70.0,'OP003',0,'All systems nominal','Excellent',230.0,'Landfill',0,'2023-08-20','tech3','2023-05-03','2023-05-03');

-- Table: school_cultural_exchange_programs
CREATE TABLE school_cultural_exchange_programs (
    program_id TEXT PRIMARY KEY,
    school_code TEXT,
    partner_country TEXT,
    partner_institution TEXT,
    start_year INTEGER,
    end_year INTEGER,
    exchange_type TEXT,
    number_of_students INTEGER,
    number_of_staff INTEGER,
    program_budget_usd REAL,
    funding_source TEXT,
    language_focus TEXT,
    curriculum_integration TEXT,
    host_family_required INTEGER,
    application_deadline DATE,
    selection_criteria TEXT,
    program_status TEXT,
    coordinator_name TEXT,
    coordinator_email TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT
);

INSERT INTO school_cultural_exchange_programs VALUES
('E001','S001','Japan','Kyoto High School',2022,2024,'Student Exchange',30,5,75000.00,'Grant','Japanese','World History',1,'2022-09-01','Academic merit','Active','Alice Brown','alice.brown@school.org','2022-01-15','2022-02-01','No issues');

INSERT INTO school_cultural_exchange_programs VALUES
('E002','S002','France','Lyon Arts Academy',2023,2025,'Faculty Exchange',0,3,42000.00,'District Funds','French','Art Curriculum',0,'2023-03-15','Teaching experience','Planned','Bob Clark','bob.clark@school.org','2023-01-10','2023-01-20','Pending approvals');

INSERT INTO school_cultural_exchange_programs VALUES
('E003','S003','Mexico','Mexico City Technical Institute',2021,2023,'Student Internship',20,4,60000.00,'Corporate Sponsorship','Spanish','STEM',1,'2021-05-20','Community impact','Completed','Carol Davis','carol.davis@school.org','2021-02-05','2023-06-30','Program evaluated');

-- Table: district_public_safety_collaboration
CREATE TABLE district_public_safety_collaboration (
    collaboration_id TEXT PRIMARY KEY,
    district_code TEXT,
    agency_name TEXT,
    agency_type TEXT,
    start_date DATE,
    end_date DATE,
    purpose TEXT,
    agreement_type TEXT,
    contact_person TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    resources_shared TEXT,
    joint_training_events INTEGER,
    incidents_handled INTEGER,
    memo TEXT,
    status TEXT,
    funding_amount_usd REAL,
    reporting_frequency TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    compliance_status TEXT
);

INSERT INTO district_public_safety_collaboration VALUES
('C001','D001','County Sheriff's Office','Law Enforcement','2022-01-01','2025-12-31','Emergency response coordination','Memorandum','Eddie Hill','5551234567','eddie.hill@sheriff.gov','Vehicles, Radios',4,12,'Annual review','Active',250000.00,'Quarterly','2022-01-01','2023-06-01','Positive outcomes','Compliant');

INSERT INTO district_public_safety_collaboration VALUES
('C002','D002','Regional Fire Dept','Fire Services','2021-06-15','2024-06-14','Fire safety training','Agreement','Fiona Gray','5559876543','fiona.gray@firedept.org','Fire trucks, Hose',2,5,'Mid-year update','Active',180000.00','Semi-Annual','2021-06-15','2022-12-01','Training well received','Compliant');

INSERT INTO district_public_safety_collaboration VALUES
('C003','D003','State Emergency Management','Emergency Management','2020-03-01','2023-02-28','Disaster preparedness','Contract','George Lee','5555551212','george.lee@stateem.gov','Supplies, Plans',3,8,'Final report submitted','Completed',300000.00,'Annual','2020-03-01','2023-02-28','Program concluded','Compliant');

-- Table: technology_research_labs_inventory
CREATE TABLE technology_research_labs_inventory (
    lab_id TEXT PRIMARY KEY,
    school_code TEXT,
    lab_name TEXT,
    building_name TEXT,
    floor_number INTEGER,
    lab_area_sqft REAL,
    primary_focus TEXT,
    equipment_count INTEGER,
    equipment_list TEXT,
    software_licenses INTEGER,
    total_value_usd REAL,
    funding_source TEXT,
    head_of_lab TEXT,
    head_email TEXT,
    operational_status TEXT,
    safety_certification TEXT,
    last_inspection_date DATE,
    next_inspection_due DATE,
    maintenance_contract TEXT,
    power_capacity_kw REAL,
    network_bandwidth_mbps REAL,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    compliance_requirements TEXT
);

INSERT INTO technology_research_labs_inventory VALUES
('L001','S001','Robotics Lab','Science Center',2,1500.0,'Robotics',25,'Robots, Sensors, 3D Printers',15,350000.00,'Grant','Dr Emily White','emily.white@school.org','Operational','OSHA','2023-01-10','2024-01-10','TechMaintain Co',120.0,1000.0,'2023-01-01','2023-06-01','No issues','ISO9001');

INSERT INTO technology_research_labs_inventory VALUES
('L002','S002','Cybersecurity Lab','Tech Hall',1,1200.0,'Cybersecurity',18,'Servers, Firewalls, Workstations',10,275000.00,'District Funds','Mr Kevin Black','kevin.black@school.org','Operational','ISO27001','2022-11-05','2023-11-05','SecureTech Services',100.0,800.0,'2022-11-01','2023-05-01','Upgrade planned','ISO27001');

INSERT INTO technology_research_labs_inventory VALUES
('L003','S003','Environmental Sensors Lab','Green Building',3,800.0,'Environmental Monitoring',12,'Air Quality Sensors, Water Sensors',5,190000.00,'Corporate Sponsorship','Dr Linda Green','linda.green@school.org','Operational','EPA','2023-03-20','2024-03-20','EnviroCare Ltd',80.0,600.0,'2023-03-01','2023-09-01','Calibration scheduled','EPA');

-- Table: school_24hr_emergency_contact_list
CREATE TABLE school_24hr_emergency_contact_list (
    contact_id TEXT PRIMARY KEY,
    school_code TEXT,
    contact_name TEXT,
    role TEXT,
    phone_primary TEXT,
    phone_secondary TEXT,
    email TEXT,
    alternative_contact_name TEXT,
    alternative_contact_phone TEXT,
    shift_coverage TEXT,
    is_active INTEGER,
    added_date DATE,
    last_updated DATE,
    notes TEXT,
    emergency_type TEXT,
    priority_level INTEGER,
    response_time_minutes INTEGER,
    escalation_procedure TEXT,
    training_completed INTEGER,
    certification TEXT,
    contact_location TEXT,
    backup_contact_id TEXT
);

INSERT INTO school_24hr_emergency_contact_list VALUES
('EC001','S001','Mike Jordan','Facilities Manager','5551112222','5553334444','mike.jordan@school.org','Sarah Lee','5555556666','Day','1','2023-01-05','2023-06-01','All good','Fire','1',5,'Call Director','1','First Aid','Main Office','EC010');

INSERT INTO school_24hr_emergency_contact_list VALUES
('EC002','S002','Laura Prince','Safety Officer','5557778888','5559990000','laura.prince@school.org','Tom Reed','5552223333','Night','1','2023-02-10','2023-05-20','Reviewed','Medical','2',10,'Notify Nurse','1','CPR','Nurse Station','EC011');

INSERT INTO school_24hr_emergency_contact_list VALUES
('EC003','S003','David Kim','Principal','5551231234','5554564567','david.kim@school.org','Anna Wu','5557897890','24/7','1','2023-03-15','2023-07-01','Updated quarterly','Security','1',3,'Call Police','1','Security Clearance','Front Office','EC012');

-- Table: after_school_nutrition_programs
CREATE TABLE after_school_nutrition_programs (
    program_id TEXT PRIMARY KEY,
    school_code TEXT,
    program_name TEXT,
    start_date DATE,
    end_date DATE,
    target_age_group TEXT,
    meals_per_day INTEGER,
    snack_options TEXT,
    daily_calories INTEGER,
    dietary_restrictions TEXT,
    vendor_name TEXT,
    contract_start DATE,
    contract_end DATE,
    cost_per_meal_usd REAL,
    total_budget_usd REAL,
    funding_source TEXT,
    program_coordinator TEXT,
    coordinator_email TEXT,
    participants_registered INTEGER,
    participants_attended INTEGER,
    feedback_score REAL,
    notes TEXT,
    compliance_status TEXT
);

INSERT INTO after_school_nutrition_programs VALUES
('N001','S001','Healthy Snacks','2023-09-01','2024-06-30','Grades 3-5',1,'Fruit, Yogurt',500,'Nut free','FreshBite','2023-08-01','2024-07-01',2.50,50000.00,'District Funds','Emily Stone','emily.stone@school.org',120,110,4.5,'Positive','Compliant');

INSERT INTO after_school_nutrition_programs VALUES
('N002','S002','Protein Power','2023-09-01','2024-06-30','Grades 6-8',1,'Chicken Wrap, Cheese',650,'Gluten free','VitaMeals','2023-08-15','2024-07-15',3.00,75000.00,'Grant','Frank Miller','frank.miller@school.org',140,130,4.2,'Good feedback','Compliant');

INSERT INTO after_school_nutrition_programs VALUES
('N003','S003','Veggie Delight','2023-09-01','2024-06-30','Grades K-2',1,'Veggie Sticks, Hummus',400,'Dairy free','GreenPlate','2023-09-01','2024-08-01',2.20,40000.00,'District Funds','Grace Lee','grace.lee@school.org',100,95,4.8,'Excellent participation','Compliant');

-- Table: district_arts_grant_applications
CREATE TABLE district_arts_grant_applications (
    application_id TEXT PRIMARY KEY,
    district_code TEXT,
    grant_name TEXT,
    submission_date DATE,
    applicant_organization TEXT,
    project_title TEXT,
    requested_amount_usd REAL,
    approved_amount_usd REAL,
    grant_status TEXT,
    review_score REAL,
    reviewer_name TEXT,
    reviewer_email TEXT,
    project_start_date DATE,
    project_end_date DATE,
    primary_art_form TEXT,
    target_audience TEXT,
    expected_outcomes TEXT,
    total_budget_usd REAL,
    funding_source TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO district_arts_grant_applications VALUES
('A001','D001','Creative Futures Grant','2023-02-10','Arts Council','Community Mural Project',50000.00,45000.00,'Approved',88.5,'Laura Ng','laura.ng@arts.org','2023-05-01','2023-12-15','Visual Arts','All Students','Increase artistic engagement','60000.00','State Funds','N/A','2023-02-10','2023-05-02');

INSERT INTO district_arts_grant_applications VALUES
('A002','D002','Music Innovation Grant','2023-03-05','Music Association','School Orchestra Expansion',75000.00,0.00,'Pending',0.0,'Mark Patel','mark.patel@music.org','2023-09-01','2024-06-30','Music','Middle School','Enhance performance skills','80000.00','Private Donor','Awaiting decision','2023-03-05','2023-03-07');

INSERT INTO district_arts_grant_applications VALUES
('A003','D003','Literary Arts Grant','2023-01-20','Literacy Foundation','Poetry Slam Series',30000.00,30000.00,'Approved',92.0,'Nina Torres','nina.torres@lit.org','2023-04-15','2023-10-15','Literature','High School','Promote creative writing','35000.00','Federal Grant','Successful','2023-01-20','2023-01-22');

-- Table: school_green_initiative_projects
CREATE TABLE school_green_initiative_projects (
    project_id TEXT PRIMARY KEY,
    school_code TEXT,
    project_name TEXT,
    initiative_type TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    funding_source TEXT,
    lead_staff TEXT,
    lead_email TEXT,
    objectives TEXT,
    milestones INTEGER,
    current_phase TEXT,
    carbon_reduction_tons REAL,
    energy_saved_kwh REAL,
    water_saved_gallons REAL,
    waste_diverted_tons REAL,
    community_partners TEXT,
    status TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT
);

INSERT INTO school_green_initiative_projects VALUES
('G001','S001','Solar Panel Installation','Renewable Energy','2023-03-01','2023-09-30',120000.00,'Grant','Olivia Reed','olivia.reed@school.org','Reduce carbon footprint',5,'Construction',45.0,500000.0,200000.0,30.0,'Local Energy Co','Completed','2023-03-01','2023-09-30','Operational');

INSERT INTO school_green_initiative_projects VALUES
('G002','S002','Rainwater Harvest System','Water Conservation','2023-04-15','2024-04-14',80000.00,'District Funds','Peter Gomez','peter.gomez@school.org','Decrease potable water use',4,'Planning',0.0,0.0,150000.0,0.0,'Community Water Group','In Progress','2023-04-15','2023-07-01','Design phase');

INSERT INTO school_green_initiative_projects VALUES
('G003','S003','Composting Program','Waste Reduction','2023-01-10','2023-12-31',45000.00,'Donations','Sara Patel','sara.patel@school.org','Divert organic waste',3,'Implementation',0.0,0.0,0.0,20.0,'EcoClub','Active','2023-01-10','2023-05-20','First semester results pending');

-- Table: student_financial_literacy_workshops
CREATE TABLE student_financial_literacy_workshops (
    workshop_id TEXT PRIMARY KEY,
    school_code TEXT,
    workshop_title TEXT,
    date DATE,
    facilitator_name TEXT,
    facilitator_org TEXT,
    duration_minutes INTEGER,
    target_grade_levels TEXT,
    max_participants INTEGER,
    registered_participants INTEGER,
    attendees INTEGER,
    material_cost_usd REAL,
    total_cost_usd REAL,
    funding_source TEXT,
    feedback_average REAL,
    topics_covered TEXT,
    pretest_score_average REAL,
    posttest_score_average REAL,
    improvement_percent REAL,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO student_financial_literacy_workshops VALUES
('WKS001','S001','Budget Basics','2023-05-12','Laura Miles','FinanceKids','90','Grades 6-8',30,28,25,150.00,300.00,'District Funds',4.2,'Budgeting, Saving',70.0,85.0,21.4,'Good engagement','2023-05-01','2023-05-13');

INSERT INTO student_financial_literacy_workshops VALUES
('WKS002','S002','Investing 101','2023-06-20','Mark Daniels','InvestEdu','120','Grades 9-10',25,22,20,200.00,450.00,'Grant',4.5,'Stocks, Bonds, ETFs',65.0,80.0,23.1,'High interest','2023-06-01','2023-06-21');

INSERT INTO student_financial_literacy_workshops VALUES
('WKS003','S003','Credit & Loans','2023-07-15','Nina Patel','MoneySmart','75','Grades 11-12',20,18,17,120.00,250.00,'District Funds',4.0,'Credit Scores, Loans',68.0,78.0,14.7,'Positive feedback','2023-07-01','2023-07-16');