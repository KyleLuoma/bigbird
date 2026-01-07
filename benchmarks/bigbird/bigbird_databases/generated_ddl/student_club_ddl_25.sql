-- Alumni volunteer profile table
CREATE TABLE alumni_volunteer_profile
(
    volunteer_id               TEXT PRIMARY KEY,
    alumni_id                  TEXT,
    start_date                 TEXT,
    end_date                   TEXT,
    hours_per_week             INTEGER,
    role                       TEXT,
    department                 TEXT,
    contact_phone              TEXT,
    contact_email              TEXT,
    address_line1              TEXT,
    address_line2              TEXT,
    city                       TEXT,
    state                      TEXT,
    zip_code                   INTEGER,
    availability_monday        TEXT,
    availability_tuesday       TEXT,
    availability_wednesday     TEXT,
    availability_thursday      TEXT,
    availability_friday        TEXT,
    availability_saturday      TEXT,
    availability_sunday        TEXT,
    notes                      TEXT
);
INSERT INTO alumni_volunteer_profile VALUES ('VOL001','ALU123','2022-01-15','2023-01-14',5,'Mentor','Engineering','5551234567','vol1@example.com','123 Main St','Apt 4','Springfield','IL',62704,'Yes','No','Yes','No','Yes','No','No','No','First year mentor');
INSERT INTO alumni_volunteer_profile VALUES ('VOL002','ALU456','2021-06-01','2022-06-01',3,'EventHelper','Arts','5559876543','vol2@example.com','456 Oak Ave','','Lincoln','NE',68508,'No','Yes','No','Yes','No','Yes','No','Yes','Supports annual gala');
INSERT INTO alumni_volunteer_profile VALUES ('VOL003','ALU789','2023-03-01','2024-03-01',4,'Tutor','Science','5551112222','vol3@example.com','789 Pine Rd','Suite 10','Madison','WI',53703,'Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Provides weekly tutoring');

-- Campus safety drill table
CREATE TABLE campus_safety_drill
(
    drill_id            TEXT PRIMARY KEY,
    drill_name          TEXT,
    scheduled_date      TEXT,
    drill_type          TEXT,
    coordinator_name    TEXT,
    coordinator_phone   TEXT,
    duration_minutes    INTEGER,
    location            TEXT,
    participants_estimated INTEGER,
    equipment_used      TEXT,
    drill_status        TEXT,
    report_submitted    TEXT,
    findings_summary    TEXT,
    corrective_actions  TEXT,
    budget_allocated    REAL,
    actual_cost         REAL,
    vendor_id           TEXT,
    safety_officer_id   TEXT,
    created_at          TEXT,
    updated_at          TEXT,
    notes               TEXT,
    drill_category      TEXT
);
INSERT INTO campus_safety_drill VALUES ('DRL001','Fire Evacuation','2023-09-15','Fire','John Doe','5553334444',30,'Main Hall',200,'Alarm System','Completed','2023-09-16','All exited within 2 min','Update signage',500.00,480.00,'VEND01','SOFF01','2023-08-01','2023-09-16','No issues','Emergency');
INSERT INTO campus_safety_drill VALUES ('DRL002','Active Shooter','2024-03-10','Security','Jane Smith','5555556666',45,'North Campus','150','PA System','Planned','', '', 750.00,0.00,'VEND02','SOFF02','2023-12-01','2024-03-09','Pending approvals','Security');
INSERT INTO campus_safety_drill VALUES ('DRL003','Earthquake','2023-11-20','Natural','Mike Lee','5557778888',20,'Science Building','120','Simulated Shaking','Cancelled','', '','',0.00,0.00,'','SOFF03','2023-10-01','2023-11-19','Cancelled due to weather','Emergency');

-- Resource booking request table
CREATE TABLE resource_booking_request
(
    request_id            TEXT PRIMARY KEY,
    requester_id          TEXT,
    resource_type         TEXT,
    resource_id           TEXT,
    start_datetime        TEXT,
    end_datetime          TEXT,
    purpose               TEXT,
    priority              TEXT,
    approval_status       TEXT,
    approved_by           TEXT,
    approval_date         TEXT,
    notes                 TEXT,
    recurring_flag        TEXT,
    recurrence_pattern    TEXT,
    cancellation_reason   TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    estimated_cost        REAL,
    actual_cost           REAL,
    department            TEXT,
    project_code          TEXT,
    contact_phone         TEXT,
    contact_email         TEXT
);
INSERT INTO resource_booking_request VALUES ('REQ001','MEM001','Room','RM101','2023-10-01 09:00','2023-10-01 12:00','Team Meeting','High','Approved','ADM001','2023-09-20','','No','','','2023-09-15','2023-09-20',0.00,0.00,'Engineering','PRJ100','5551230000','req1@example.com');
INSERT INTO resource_booking_request VALUES ('REQ002','MEM002','Equipment','EQ200','2023-11-05 14:00','2023-11-05 16:00','Lab Experiment','Medium','Pending','','','','Yes','Weekly','', '2023-10-28','2023-10-28',150.00,0.00,'Biology','PRJ200','5554561111','req2@example.com');
INSERT INTO resource_booking_request VALUES ('REQ003','MEM003','Vehicle','VH300','2023-12-12 08:00','2023-12-12 18:00','Field Survey','Low','Rejected','ADM002','2023-11-30','Insufficient budget','No','','','2023-11-20','2023-11-30',0.00,0.00,'Geology','PRJ300','5557892222','req3@example.com');

-- Digital learning content table
CREATE TABLE digital_learning_content
(
    content_id               TEXT PRIMARY KEY,
    title                    TEXT,
    content_type             TEXT,
    module_id                TEXT,
    author_id                TEXT,
    creation_date            TEXT,
    last_update              TEXT,
    version_number           INTEGER,
    language                 TEXT,
    duration_minutes        INTEGER,
    file_path                TEXT,
    thumbnail_path           TEXT,
    description              TEXT,
    tags                     TEXT,
    access_level             TEXT,
    download_count           INTEGER,
    rating                   REAL,
    review_count             INTEGER,
    is_published             TEXT,
    publish_date             TEXT,
    expiration_date          TEXT,
    prerequisite_content_id  TEXT,
    related_content_ids      TEXT
);
INSERT INTO digital_learning_content VALUES ('CNT001','Intro to Data Science','Video','MOD101','AUTH001','2022-01-10','2023-02-15',3,'English',45,'/videos/intro_ds.mp4','/thumbs/intro_ds.png','Basic concepts of data science','data,science,intro','Public',1200,4.5,350,'Yes','2022-02-01','2025-02-01','CNT000','CNT002,CNT003');
INSERT INTO digital_learning_content VALUES ('CNT002','SQL Basics','Article','MOD102','AUTH002','2021-08-05','2022-09-10',2,'English',0,'/articles/sql_basics.html','/thumbs/sql.png','Fundamentals of SQL queries','sql,basics,query','Public',800,4.2,210,'Yes','2021-09-01','2024-09-01','CNT001','CNT004');
INSERT INTO digital_learning_content VALUES ('CNT003','Machine Learning Lab','Interactive','MOD201','AUTH003','2023-03-20','2023-03-22',1,'English',120,'/labs/ml_lab.html','/thumbs/ml.png','Hands‑on lab for ML algorithms','machine learning,lab','Restricted',0,0.0,0,'No','','','','CNT002','CNT001');

-- Environmental action plan table
CREATE TABLE environmental_action_plan
(
    plan_id                       TEXT PRIMARY KEY,
    plan_name                     TEXT,
    fiscal_year                   INTEGER,
    department_responsible        TEXT,
    total_budget                  REAL,
    allocated_funds               REAL,
    target_reduction_percent      REAL,
    baseline_emission             REAL,
    target_emission               REAL,
    start_date                    TEXT,
    end_date                      TEXT,
    status                        TEXT,
    approved_by                   TEXT,
    approval_date                 TEXT,
    implementation_phase          TEXT,
    monitoring_frequency          TEXT,
    key_metrics                   TEXT,
    notes                         TEXT,
    external_partner              TEXT,
    carbon_offset_purchase        TEXT,
    renewable_energy_percentage   REAL,
    waste_diversion_percentage    REAL,
    water_conservation_percentage REAL
);
INSERT INTO environmental_action_plan VALUES ('PLAN001','Campus Carbon Neutrality','2024','Facilities',2000000,1500000,50,1200,600,'2024-01-01','2028-12-31','Planning','CHANCER','2023-12-15','Phase 1','Quarterly','CO2,Energy','Initial scoping completed','GreenEnergyCo','Yes',30.0,40.0,25.0');
INSERT INTO environmental_action_plan VALUES ('PLAN002','Zero Waste Initiative','2023','Operations',500000,400000,75,800,200,'2023-02-01','2025-11-30','Active','DEAN','2023-01-20','Phase 2','Monthly','Waste,Recycling','Pilot on building A','WasteLess Inc','No',0.0,80.0,15.0');
INSERT INTO environmental_action_plan VALUES ('PLAN003','Water Stewardship','2025','Science',300000,250000,60,500,200,'2025-05-01','2029-04-30','Proposed','VPFIN','2025-04-10','Phase 1','Semiannual','Water Usage','Pending budget approval','AquaPure','No',0.0,0.0,35.0');

-- Technology patent table
CREATE TABLE technology_patent
(
    patent_id                TEXT PRIMARY KEY,
    title                    TEXT,
    inventors                TEXT,
    filing_date              TEXT,
    grant_date               TEXT,
    patent_number            TEXT,
    technology_area          TEXT,
    abstract                 TEXT,
    claims_summary           TEXT,
    status                   TEXT,
    expiration_date          TEXT,
    assignee                 TEXT,
    licensee                 TEXT,
    royalty_rate             REAL,
    license_start            TEXT,
    license_end              TEXT,
    related_project_id       TEXT,
    funding_source           TEXT,
    cost                     REAL,
    notes                    TEXT,
    prior_art_references     TEXT,
    jurisdiction             TEXT,
    filing_country           TEXT
);
INSERT INTO technology_patent VALUES ('PAT001','Smart Sensor Array','INV001;INV002','2020-06-01','2022-09-15','US1234567','IoT','A low‑power sensor network','30 claims','Granted','2032-09-15','TechCorp','PartnerA',5.0,'2022-10-01','2032-09-30','PROJ100','GovGrant',150000,'','US Patent','US','USA');
INSERT INTO technology_patent VALUES ('PAT002','Adaptive Learning Algorithm','INV003','2019-03-12','2021-11-20','US7654321','AI','Algorithm adjusts difficulty','20 claims','Granted','2031-11-20','EduTech','PartnerB',3.5,'2021-12-01','2031-11-30','PROJ200','PrivateEquity',200000,'','US Patent','US','USA');
INSERT INTO technology_patent VALUES ('PAT003','Hybrid Battery System','INV004;INV005','2021-01-05','','US9876543','Energy','Hybrid battery improves lifespan','25 claims','Pending','', 'EnergyInc','','',,'','PROJ300','Corporate','250000','Awaiting examination','US Patent','US','USA');

-- Community fundraising campaign table
CREATE TABLE community_fundraising_campaign
(
    campaign_id               TEXT PRIMARY KEY,
    campaign_name             TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    goal_amount               REAL,
    pledged_amount            REAL,
    raised_amount             REAL,
    donor_count               INTEGER,
    coordinator_name          TEXT,
    coordinator_email         TEXT,
    coordinator_phone         TEXT,
    target_community          TEXT,
    methods_used              TEXT,
    status                    TEXT,
    final_report_submitted    TEXT,
    notes                     TEXT,
    sponsor_id                TEXT,
    matching_funds            REAL,
    tax_receipt_issued        TEXT,
    online_platform           TEXT,
    physical_events           TEXT,
    social_media_hashtag      TEXT,
    main_event_date           TEXT
);
INSERT INTO community_fundraising_campaign VALUES ('CMP001','Campus Library Expansion','2023-04-01','2023-10-31',500000,350000,420000,120,'Laura Green','lgreen@example.com','5552223333','Local Residents','Online,Walkathon','Active','No','Phase 2 ongoing','SPON001',50000,'Yes','GoFundMe','Charity Run','#LibraryBoost','2023-09-15');
INSERT INTO community_fundraising_campaign VALUES ('CMP002','Student Scholarship Fund','2022-01-01','2022-12-31',300000,250000,280000,200,'Mark Brown','mbrown@example.com','5554445555','Alumni','Gala,Online','Closed','Yes','Exceeded goal','SPON002',30000,'Yes','Kickstarter','Gala Dinner','%Scholarship2022','2022-11-20');
INSERT INTO community_fundraising_campaign VALUES ('CMP003','Community Garden Project','2024-03-01','2024-09-30',150000,50000,90000,80,'Sonia Patel','spatel@example.com','5556667777','Neighborhood','Farmers Market,Online','Planning','No','Awaiting city approval','SPON003',10000,'No','Direct Bank','Volunteer Days','%GardenGrowth','2024-08-05');

-- Facility renovation plan table
CREATE TABLE facility_renovation_plan
(
    renovation_id               TEXT PRIMARY KEY,
    facility_id                 TEXT,
    description                 TEXT,
    start_date                  TEXT,
    projected_end_date          TEXT,
    actual_end_date             TEXT,
    budget_estimate             REAL,
    budget_spent                REAL,
    contractor_id               TEXT,
    project_manager_id          TEXT,
    status                      TEXT,
    approval_date               TEXT,
    permits_obtained            TEXT,
    safety_inspections          TEXT,
    sustainability_features    TEXT,
    disruption_level            TEXT,
    affected_departments        TEXT,
    communication_plan          TEXT,
    stakeholder_meeting_dates   TEXT,
    notes                       TEXT,
    renewal_required            TEXT,
    warranty_expiration         TEXT,
    post_renovation_evaluation TEXT
);
INSERT INTO facility_renovation_plan VALUES ('REN001','BLDG10','HVAC upgrade','2023-02-01','2023-08-31','2023-09-05',800000,820000,'CONT001','PM001','Completed','2023-01-15','Yes','Yes','Energy Efficient Units','Medium','Facilities;Engineering','Email newsletters','2023-01-20,2023-04-15','All systems functional','No','2028-09-05','Positive');
INSERT INTO facility_renovation_plan VALUES ('REN002','BLDG20','Lobby remodel','2024-05-01','2024-11-30','','600000',0,'CONT002','PM002','Planned','2024-04-10','Pending','Pending','Recycled Materials','Low','Student Services','Town hall meetings','2024-04-20','Design finalized','Yes','2029-11-30','');
INSERT INTO facility_renovation_plan VALUES ('REN003','BLDG30','Roof replacement','2022-09-01','2023-03-31','2023-04-02',400000,405000,'CONT003','PM003','Completed','2022-08-20','Yes','Yes','Solar Tiles','High','All departments','Monthly updates','2022-09-10,2023-02-15','Minor leaks fixed','No','2027-04-02','Satisfactory');

-- Student job placement table
CREATE TABLE student_job_placement
(
    placement_id            TEXT PRIMARY KEY,
    student_id              TEXT,
    employer_id             TEXT,
    job_title               TEXT,
    department              TEXT,
    start_date              TEXT,
    end_date                TEXT,
    salary                  REAL,
    employment_type         TEXT,
    supervisor_name         TEXT,
    supervisor_email        TEXT,
    supervisor_phone        TEXT,
    contract_signed         TEXT,
    work_location           TEXT,
    hours_per_week          INTEGER,
    remote_option           TEXT,
    stipend                 REAL,
    benefits_description    TEXT,
    status                  TEXT,
    placement_reason       TEXT,
    notes                   TEXT,
    evaluation_score        REAL,
    evaluation_date         TEXT
);
INSERT INTO student_job_placement VALUES ('JP001','STU001','EMP001','Software Engineer Intern','IT','2023-06-01','2023-12-31',20000,'Internship','Alice Johnson','alice.johnson@emp.com','5558889999','Yes','Tech Park','40','Yes',5000,'Health,Meal','Completed','Curricular','Great performance',4.8,'2024-01-10');
INSERT INTO student_job_placement VALUES ('JP002','STU002','EMP002','Research Assistant','Biology','2023-09-15','2024-05-15',15000,'Part‑time','Bob Lee','bob.lee@emp.com','5557776666','Yes','Lab Building','20','No',0,'Lab Access','Active','Research','Pending evaluation',NULL,NULL);
INSERT INTO student_job_placement VALUES ('JP003','STU003','EMP003','Marketing Coordinator','Marketing','2024-01-10','2024-07-10',18000,'Full‑time','Carol Smith','carol.smith@emp.com','5555554444','No','Headquarters','40','No',0,'Dental', 'Offer Pending','Seasonal','Awaiting contract signing',NULL,NULL);

-- Faculty course evaluation table
CREATE TABLE faculty_course_evaluation
(
    evaluation_id          TEXT PRIMARY KEY,
    faculty_id             TEXT,
    course_id              TEXT,
    semester               TEXT,
    year                   INTEGER,
    evaluation_date        TEXT,
    overall_rating         REAL,
    workload_rating        REAL,
    clarity_rating         REAL,
    engagement_rating      REAL,
    materials_rating       REAL,
    feedback_comments      TEXT,
    response_rate          REAL,
    median_student_score   REAL,
    max_student_score      REAL,
    min_student_score      REAL,
    evaluation_method      TEXT,
    anonymity              TEXT,
    follow_up_actions      TEXT,
    notes                  TEXT,
    processed_by           TEXT,
    processed_date         TEXT,
    archived_flag          TEXT
);
INSERT INTO faculty_course_evaluation VALUES ('EVL001','FAC001','CSE101','Fall','2023','2023-12-20',4.2,3.8,4.5,4.1,4.0','Students appreciated real‑world examples',85.0,88.0,98.0,70.0,'Survey','Yes','Reviewed in department meeting','Positive overall','ADMIN01','2024-01-05','No');
INSERT INTO faculty_course_evaluation VALUES ('EVL002','FAC002','ENG202','Spring','2023','2023-05-15',3.6,4.0,3.9,3.7,3.8','More interactive sessions needed',78.0,80.0,92.0,65.0,'Online Form','Yes','Suggested additional workshops','Constructive feedback','ADMIN02','2023-06-01','No');
INSERT INTO faculty_course_evaluation VALUES ('EVL003','FAC003','MTH303','Summer','2024','2024-08-10',4.8,4.2,4.9,4.7,4.6','Excellent pacing and clarity',92.0,95.0,100.0,88.0,'Paper','No','No follow‑up required','Outstanding','ADMIN03','2024-09-01','No');