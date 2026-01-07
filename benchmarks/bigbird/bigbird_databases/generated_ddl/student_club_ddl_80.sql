-- Faculty advisory committee details
CREATE TABLE faculty_advisory_committee
(
    committee_id TEXT PRIMARY KEY,
    faculty_id TEXT,
    committee_name TEXT,
    department TEXT,
    role TEXT,
    start_date TEXT,
    end_date TEXT,
    meeting_frequency TEXT,
    last_meeting_date TEXT,
    next_meeting_date TEXT,
    num_members INTEGER,
    budget_allocated REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    chairperson_id TEXT,
    vice_chair_id TEXT,
    email_contact TEXT,
    phone_contact TEXT,
    location TEXT
);

INSERT INTO faculty_advisory_committee VALUES ('FC001','M001','Academic Committee','Science','Member','2022-01-01','2025-12-31','Quarterly','2023-07-01','2023-10-01',5,50000.0,'Initial setup','2023-01-01','2023-06-01','Active','M010','M011','faculty_advisory@university.edu','555-1234','Building A');
INSERT INTO faculty_advisory_committee VALUES ('FC002','M002','Research Oversight','Engineering','Chair','2021-09-15','2024-09-14','Monthly','2023-08-15','2023-09-15',7,75000.0,'Reviewed 12 proposals','2022-02-01','2023-05-20','Active','M020','M021','research_oversight@university.edu','555-5678','Building B');
INSERT INTO faculty_advisory_committee VALUES ('FC003','M003','Student Affairs','Arts','Secretary','2020-03-01','2023-02-28','Biweekly','2023-07-10','2023-07-24',4,30000.0,'Planning student events','2020-04-01','2023-04-30','Inactive','M030','M031','student_affairs@university.edu','555-9012','Building C');

-- Student internship project records
CREATE TABLE student_internship_project
(
    internship_id TEXT PRIMARY KEY,
    student_id TEXT,
    project_title TEXT,
    host_organization TEXT,
    start_date TEXT,
    end_date TEXT,
    supervisor_id TEXT,
    stipend_amount REAL,
    hours_per_week INTEGER,
    total_hours INTEGER,
    project_description TEXT,
    learning_outcome TEXT,
    status TEXT,
    created_at TEXT,
    updated_at TEXT,
    evaluation_score REAL,
    evaluation_comments TEXT,
    mentor_id TEXT,
    department TEXT,
    location TEXT
);

INSERT INTO student_internship_project VALUES ('IP001','STU001','AI Research','TechCorp','2023-06-01','2023-08-31','M050',1500.0,40,480,'Developed ML models for forecasting','Improved data pipeline skills','Completed','2023-05-20','2023-09-01',4.8','Excellent work','M051','Computer Science','Campus Lab 5');
INSERT INTO student_internship_project VALUES ('IP002','STU002','Community Outreach','NonProfitOrg','2023-05-15','2023-11-15','M052',1200.0,20,480,'Coordinated volunteer activities','Leadership and project management','Ongoing','2023-04-30','2023-07-10',4.2','Good progress','M053','Sociology','Community Center');
INSERT INTO student_internship_project VALUES ('IP003','STU003','Financial Analysis','BankInc','2023-07-01','2023-12-31','M054',2000.0,35,525,'Analyzed market trends','Advanced Excel and Tableau','Planned','2023-06-10','2023-08-20',4.5','Strong analytical skills','M055','Finance','Corporate Office');

-- Campus utility meter registry
CREATE TABLE campus_utility_meter
(
    meter_id TEXT PRIMARY KEY,
    building_id TEXT,
    utility_type TEXT,
    meter_number TEXT,
    installation_date TEXT,
    last_reading_date TEXT,
    current_reading REAL,
    previous_reading REAL,
    reading_unit TEXT,
    service_provider TEXT,
    account_number TEXT,
    billing_cycle TEXT,
    status TEXT,
    maintenance_date TEXT,
    next_maintenance_date TEXT,
    sensor_status TEXT,
    latitude REAL,
    longitude REAL,
    floor_number INTEGER,
    zone TEXT
);

INSERT INTO campus_utility_meter VALUES ('MTR001','BLD01','Electricity','EL-1001','2020-01-15','2023-07-01',12500.5,12480.3,'kWh','PowerCo','ACCT1001','Monthly','Active','2023-06-15','2024-06-15','Operational',40.7128,-74.0060,1,'North');
INSERT INTO campus_utility_meter VALUES ('MTR002','BLD02','Water','WT-2002','2019-09-10','2023-07-01',3500.0,3450.0,'Gallons','AquaSupply','ACCT2002','Quarterly','Active','2023-05-20','2024-05-20','Operational',34.0522,-118.2437,2,'South');
INSERT INTO campus_utility_meter VALUES ('MTR003','BLD03','Gas','GS-3003','2021-06-05','2023-07-01',820.75,800.60,'Therms','GasLine','ACCT3003','Monthly','Inactive','2022-12-01','2023-12-01','Needs Repair',41.8781,-87.6298,3,'East');

-- Renewable energy production sites
CREATE TABLE campus_renewable_energy_production
(
    production_id TEXT PRIMARY KEY,
    facility_id TEXT,
    energy_type TEXT,
    capacity_mw REAL,
    annual_output_mwh REAL,
    installation_date TEXT,
    operator_id TEXT,
    maintenance_contract TEXT,
    status TEXT,
    last_inspection_date TEXT,
    next_inspection_date TEXT,
    grid_connection_point TEXT,
    average_efficiency REAL,
    peak_output_mw REAL,
    avg_daily_output_mwh REAL,
    carbon_offset_tons REAL,
    funding_source TEXT,
    project_manager_id TEXT,
    latitude REAL,
    longitude REAL
);

INSERT INTO campus_renewable_energy_production VALUES ('RE001','FAC01','Solar',5.0,4200.0,'2018-04-01','OP100','ContractA','Active','2023-03-10','2024-03-10','NodeA',0.22,5.5,11.5,3500.0,'State Grant','PM001',36.1699,-115.1398);
INSERT INTO campus_renewable_energy_production VALUES ('RE002','FAC02','Wind',12.0,105600.0,'2020-09-15','OP101','ContractB','Active','2023-05-22','2025-05-22','NodeB',0.35,13.2,289.5,8800.0,'Federal Funding','PM002',39.7392,-104.9903);
INSERT INTO campus_renewable_energy_production VALUES ('RE003','FAC03','Geothermal',3.5,30600.0,'2019-11-20','OP102','ContractC','Planned','2023-01-01','2026-01-01','NodeC',0.30,4.0,83.8,2500.0,'Private Investment','PM003',47.6062,-122.3321);

-- Library archival projects
CREATE TABLE library_archival_project
(
    project_id TEXT PRIMARY KEY,
    project_name TEXT,
    lead_curator_id TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_total REAL,
    funding_agency TEXT,
    collection_name TEXT,
    num_items INTEGER,
    storage_location TEXT,
    digitalization_status TEXT,
    metadata_schema TEXT,
    access_restriction TEXT,
    preservation_method TEXT,
    status TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    project_phase TEXT,
    estimated_completion_date TEXT
);

INSERT INTO library_archival_project VALUES ('LP001','Historic Manuscripts','M200','2022-01-01','2024-12-31',250000.0,'National Endowment','Manuscript Collection',1200,'Vault A','In Progress','METS','Restricted','Climate Controlled','Active','2022-01-05','2023-06-10','Phase 1 completed','Digitization','2024-12-31');
INSERT INTO library_archival_project VALUES ('LP002','Rare Books Restoration','M201','2021-06-15','2023-06-14',180000.0,'Library Trust','Rare Book Collection',350,'Vault B','Completed','Dublin Core','Open','Acid-Free Boxes','Completed','2021-06-20','2023-06-10','All books restored','Restoration','2023-06-14');
INSERT INTO library_archival_project VALUES ('LP003','Photographic Archive','M202','2023-03-01','2025-02-28',300000.0,'Arts Council','Photography Archive',5000,'Vault C','Pending','MODS','Restricted','Low Humidity','Planned','2023-03-05','2023-08-01','Awaiting equipment','Acquisition','2025-02-28');

-- Health service quality assessments
CREATE TABLE health_service_quality_assessment
(
    assessment_id TEXT PRIMARY KEY,
    clinic_id TEXT,
    assessment_date TEXT,
    overall_score REAL,
    patient_satisfaction_score REAL,
    staff_response_time REAL,
    cleanliness_score REAL,
    equipment_availability_score REAL,
    medication_error_rate REAL,
    follow_up_rate REAL,
    assessment_method TEXT,
    assessor_id TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    recommendations TEXT,
    next_assessment_date TEXT,
    department TEXT,
    region TEXT
);

INSERT INTO health_service_quality_assessment VALUES ('QA001','CLN01','2023-07-15',4.6,4.8,2.5,4.9,4.7,0.02,0.95','Survey','A100','Good overall performance','2023-07-16','2023-07-20','Closed','Maintain staffing levels','2024-07-15','Primary Care','North Campus');
INSERT INTO health_service_quality_assessment VALUES ('QA002','CLN02','2023-06-30',4.2,4.5,3.1,4.4,4.1,0.05,0.90','Audit','A101','Areas for improvement in equipment','2023-07-01','2023-07-05','Open','Upgrade imaging equipment','2024-06-30','Urgent Care','South Campus');
INSERT INTO health_service_quality_assessment VALUES ('QA003','CLN03','2023-05-20',3.9,4.0,4.0,4.0,3.8,0.08,0.85','Interview','A102','Patient wait times high','2023-05-21','2023-05-25','Open','Hire additional nurses','2024-05-20','Specialty','East Campus');

-- Technology incubator outreach events
CREATE TABLE technology_incubator_outreach
(
    outreach_id TEXT PRIMARY KEY,
    program_id TEXT,
    event_name TEXT,
    event_date TEXT,
    target_audience TEXT,
    location TEXT,
    num_participants INTEGER,
    speaker_id TEXT,
    topic TEXT,
    sponsor TEXT,
    budget REAL,
    outcome TEXT,
    feedback_score REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    follow_up_actions TEXT
);

INSERT INTO technology_incubator_outreach VALUES ('TO001','PRG01','Startup Pitch Night','2023-08-10','Entrepreneurs','Innovation Hall',80,'SPK001','Pitch Techniques','TechCorp','5000.0','10 startups received seed funding',4.7,'Great networking','2023-07-01','2023-08-12','Closed','outreach@incubator.edu','555-1111','Send thank‑you emails');
INSERT INTO technology_incubator_outreach VALUES ('TO002','PRG02','AI Workshop','2023-09-05','Students','Lab 3',120,'SPK002','Machine Learning Basics','AI Labs','3000.0','150 students completed certification',4.5,'Well attended','2023-08-01','2023-09-07','Closed','aiworkshop@incubator.edu','555-2222','Distribute certificates');
INSERT INTO technology_incubator_outreach VALUES ('TO003','PRG03','Women in Tech Panel','2023-10-12','Professionals','Conference Center',60,'SPK003','Leadership Strategies','Equality Fund','4000.0','Raised awareness and mentorship matches',4.8,'Positive feedback','2023-09-15','2023-10-15','Open','womentech@incubator.edu','555-3333','Schedule follow‑up mentoring sessions');

-- Community art fund distribution records
CREATE TABLE community_art_fund_distribution
(
    distribution_id TEXT PRIMARY KEY,
    fund_id TEXT,
    artist_id TEXT,
    project_title TEXT,
    grant_amount REAL,
    disbursement_date TEXT,
    funding_agency TEXT,
    project_start_date TEXT,
    project_end_date TEXT,
    status TEXT,
    reviewer_id TEXT,
    evaluation_score REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    payment_method TEXT,
    account_number TEXT,
    tax_id TEXT,
    region TEXT,
    art_category TEXT,
    approve_flag TEXT
);

INSERT INTO community_art_fund_distribution VALUES ('FD001','FND01','ART001','Mural Downtown',15000.0,'2023-06-01','City Arts Council','2023-07-01','2023-12-31','Disbursed','RV001',4.9','First phase completed','2023-05-20','2023-06-02','Check','CHK12345','TID98765','Central','Public Art','Y');
INSERT INTO community_art_fund_distribution VALUES ('FD002','FND02','ART002','Sculpture Park','25000.0','2023-07-15','Regional Arts Fund','2023-09-01','2024-03-31','Pending','RV002',4.5','Awaiting final design','2023-07-01','2023-07-16','Electronic Transfer','ETR67890','TID12345','North','Sculpture','N');
INSERT INTO community_art_fund_distribution VALUES ('FD003','FND03','ART003','Community Photo Exhibit','8000.0','2023-08-10','Community Grants','2023-09-15','2024-01-15','Approved','RV003',4.7','Exhibit scheduled for fall','2023-08-01','2023-08-12','Check','CHK54321','TID67890','South','Photography','Y');

-- Alumni career milestone tracking
CREATE TABLE alumni_career_milestone
(
    milestone_id TEXT PRIMARY KEY,
    alumni_id TEXT,
    company_name TEXT,
    position_title TEXT,
    start_date TEXT,
    end_date TEXT,
    milestone_type TEXT,
    description TEXT,
    salary_range TEXT,
    location TEXT,
    industry TEXT,
    linked_in_url TEXT,
    status TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    promotion_date TEXT,
    recognition TEXT,
    mentor_id TEXT,
    career_level TEXT
);

INSERT INTO alumni_career_milestone VALUES ('CM001','ALU001','FinTech Solutions','Senior Analyst','2021-03-01','2024-02-28','Promotion','Led data analytics team','80k-100k','New York','FinTech','https://linkedin.com/in/alumni1','Active','2021-02-15','2024-03-01','Excellent performance','2023-01-01','Employee of the Year','M060','Mid‑Level');
INSERT INTO alumni_career_milestone VALUES ('CM002','ALU002','HealthCare Corp','Project Manager','2020-07-15','2023-07-14','Job Change','Managed multi‑site rollout','95k-115k','Chicago','Healthcare','https://linkedin.com/in/alumni2','Active','2020-07-01','2023-07-20','Successfully delivered project','2022-06-01','Leader Award','M061','Mid‑Level');
INSERT INTO alumni_career_milestone VALUES ('CM003','ALU003','EcoEnergy','Director of Sustainability','2019-01-01','2025-12-31','Leadership','Oversees sustainability initiatives','120k-150k','San Francisco','Energy','https://linkedin.com/in/alumni3','Active','2018-12-10','2025-01-01','Published whitepaper','2024-01-01','Sustainability Champion','M062','Senior');

-- Campus sustainability goal tracker
CREATE TABLE campus_sustainability_goal_tracker
(
    goal_id TEXT PRIMARY KEY,
    goal_name TEXT,
    description TEXT,
    target_value REAL,
    unit TEXT,
    baseline_value REAL,
    current_value REAL,
    start_date TEXT,
    target_date TEXT,
    status TEXT,
    responsible_department TEXT,
    owner_id TEXT,
    last_updated TEXT,
    created_at TEXT,
    notes TEXT,
    strategic_priority TEXT,
    initiatives_count INTEGER,
    budget_allocated REAL,
    funding_source TEXT,
    evaluation_method TEXT
);

INSERT INTO campus_sustainability_goal_tracker VALUES ('SG001','Reduce Energy Use','Decrease total campus electricity consumption','15.0','Percent','1000','850','2022-01-01','2025-12-31','On Track','Facilities','OWN001','2023-06-15','2022-01-01','Energy audits ongoing','High','5','200000','Campus Green Fund','Annual Review');
INSERT INTO campus_sustainability_goal_tracker VALUES ('SG002','Zero Waste','Achieve zero waste to landfill','0','Percent','30','18','2021-09-01','2026-08-31','Behind','Sustainability Office','OWN002','2023-05-20','2021-09-01','Increase composting bins','Medium','7','150000','State Grant','Quarterly Reporting');
INSERT INTO campus_sustainability_goal_tracker VALUES ('SG003','Water Conservation','Reduce potable water usage per capita','20','Percent','200','160','2020-06-01','2024-05-31','Achieved','Facilities','OWN003','2023-04-10','2020-06-01','Install low‑flow fixtures','High','4','100000','Federal Aid','Bi‑annual Audit');