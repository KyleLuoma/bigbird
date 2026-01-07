-- Campus Renewable Energy Facilities
CREATE TABLE campus_renewable_energy (
    facility_id TEXT PRIMARY KEY,
    facility_name TEXT,
    energy_type TEXT,
    capacity_kw INTEGER,
    installation_date TEXT,
    expected_lifespan_years INTEGER,
    current_output_kw REAL,
    maintenance_cycle_months INTEGER,
    last_maintenance_date TEXT,
    manager_id TEXT,
    cost_usd INTEGER,
    funding_source TEXT,
    vendor TEXT,
    warranty_years INTEGER,
    status TEXT,
    latitude REAL,
    longitude REAL,
    region TEXT,
    carbon_savings_tonnes REAL,
    notes TEXT
);
INSERT INTO campus_renewable_energy (facility_id, facility_name, energy_type, capacity_kw, installation_date, expected_lifespan_years, current_output_kw, maintenance_cycle_months, last_maintenance_date, manager_id, cost_usd, funding_source, vendor, warranty_years, status, latitude, longitude, region, carbon_savings_tonnes, notes) VALUES ('F001','SolarPanelA','Solar',5000,'2020-06-15',25,4800.5,12,'2023-05-01','M123',2000000,'UniversityGrant','SolarTechCo',10,'Active',40.7128,-74.0060,'NorthCampus',1500.75,'Initial installation');
INSERT INTO campus_renewable_energy (facility_id, facility_name, energy_type, capacity_kw, installation_date, expected_lifespan_years, current_output_kw, maintenance_cycle_months, last_maintenance_date, manager_id, cost_usd, funding_source, vendor, warranty_years, status, latitude, longitude, region, carbon_savings_tonnes, notes) VALUES ('F002','WindTurbineB','Wind',3000,'2018-09-10',30,2950.2,6,'2023-03-20','M124',3500000,'EnergyFund','WindWorks',12,'Operational',34.0522,-118.2437','WestCampus',2100.4,'Second turbine');
INSERT INTO campus_renewable_energy (facility_id, facility_name, energy_type, capacity_kw, installation_date, expected_lifespan_years, current_output_kw, maintenance_cycle_months, last_maintenance_date, manager_id, cost_usd, funding_source, vendor, warranty_years, status, latitude, longitude, region, carbon_savings_tonnes, notes) VALUES ('F003','GeoThermalC','Geothermal',1500,'2015-04-22',40,1400.0,24,'2022-12-15','M125',5000000,'ResearchGrant','GeoEnergyInc',15,'Active',42.3601,-71.0589,'EastCampus',3200.0,'Geothermal plant');

-- Faculty Research Output
CREATE TABLE faculty_research_output (
    output_id TEXT PRIMARY KEY,
    faculty_id TEXT,
    title TEXT,
    publication_type TEXT,
    journal_name TEXT,
    conference_name TEXT,
    publication_date TEXT,
    doi TEXT,
    citation_count INTEGER,
    impact_factor REAL,
    funding_agency TEXT,
    grant_id TEXT,
    coauthor_count INTEGER,
    pages INTEGER,
    volume INTEGER,
    issue INTEGER,
    abstract TEXT,
    keywords TEXT,
    url TEXT,
    status TEXT
);
INSERT INTO faculty_research_output (output_id, faculty_id, title, publication_type, journal_name, conference_name, publication_date, doi, citation_count, impact_factor, funding_agency, grant_id, coauthor_count, pages, volume, issue, abstract, keywords, url, status) VALUES ('R001','F001','Deep Learning for Genomics','Journal','Nature Genetics','', '2022-03-10','10.1234/nge.2022.12345',45,28.6,'NIH','G123',4,12,5,2,'Study on deep learning applications in genomics','deep learning, genomics','http://example.com/r001','Published');
INSERT INTO faculty_research_output (output_id, faculty_id, title, publication_type, journal_name, conference_name, publication_date, doi, citation_count, impact_factor, funding_agency, grant_id, coauthor_count, pages, volume, issue, abstract, keywords, url, status) VALUES ('R002','F002','Quantum Computing Advances','Conference','','QCS 2021', '2021-09-15','',120,0,'DOE','Q001',3,8,0,0,'Presentation on quantum algorithms','quantum computing, algorithms','http://example.com/r002','Accepted');
INSERT INTO faculty_research_output (output_id, faculty_id, title, publication_type, journal_name, conference_name, publication_date, doi, citation_count, impact_factor, funding_agency, grant_id, coauthor_count, pages, volume, issue, abstract, keywords, url, status) VALUES ('R003','F003','Renewable Energy Policy Analysis','Report','','', '2023-01-05','',5,0,'EPA','E456',2,0,0,0,'Comprehensive analysis of state policies','renewable energy, policy','http://example.com/r003','Draft');

-- Library Digital Repository
CREATE TABLE library_digital_repository (
    repo_id TEXT PRIMARY KEY,
    collection_name TEXT,
    item_type TEXT,
    title TEXT,
    creator TEXT,
    publication_year INTEGER,
    format TEXT,
    file_size_mb REAL,
    checksum TEXT,
    access_level TEXT,
    download_count INTEGER,
    last_accessed TEXT,
    storage_path TEXT,
    preservation_status TEXT,
    rights_statement TEXT,
    language TEXT,
    subject TEXT,
    description TEXT,
    tags TEXT,
    notes TEXT
);
INSERT INTO library_digital_repository (repo_id, collection_name, item_type, title, creator, publication_year, format, file_size_mb, checksum, access_level, download_count, last_accessed, storage_path, preservation_status, rights_statement, language, subject, description, tags, notes) VALUES ('L001','DigitalArchives','Manuscript','Leonardo Sketches','Leonardo da Vinci',1490,'PDF',15.3,'abc123def','Open',120,'2023-11-01','/archives/leo_sketches.pdf','Preserved','Public Domain','Italian','Art','High‑resolution scans of sketches','art, renaissance','Scans digitized 2023');
INSERT INTO library_digital_repository (repo_id, collection_name, item_type, title, creator, publication_year, format, file_size_mb, checksum, access_level, download_count, last_accessed, storage_path, preservation_status, rights_statement, language, subject, description, tags, notes) VALUES ('L002','ThesisRepo','Thesis','Machine Learning in Healthcare','Jane Smith',2021,'EPUB',2.5,'def456ghi','Restricted',30,'2023-10-15','/theses/ml_healthcare.epub','Preserved','CC BY-NC','English','Computer Science','Thesis on ML applications','machine learning, healthcare','Submitted to CS Dept');
INSERT INTO library_digital_repository (repo_id, collection_name, item_type, title, creator, publication_year, format, file_size_mb, checksum, access_level, download_count, last_accessed, storage_path, preservation_status, rights_statement, language, subject, description, tags, notes) VALUES ('L003','AudioCollection','Audio','Oral History of Campus','Various',2020,'MP3',120.0,'ghi789jkl','Open',75,'2023-09-20','/audio/oral_history.zip','Preserved','Public Domain','English','History','Interviews with alumni','history, oral','Collected 2020');

-- Community Health Survey
CREATE TABLE community_health_survey (
    survey_id TEXT PRIMARY KEY,
    community_id TEXT,
    survey_date TEXT,
    respondent_id TEXT,
    age INTEGER,
    gender TEXT,
    zip_code INTEGER,
    health_status TEXT,
    chronic_condition TEXT,
    smoking_status TEXT,
    alcohol_consumption TEXT,
    physical_activity_level TEXT,
    diet_quality TEXT,
    stress_level TEXT,
    healthcare_access TEXT,
    insurance_status TEXT,
    vaccination_status TEXT,
    mental_health_score REAL,
    overall_satisfaction INTEGER,
    comments TEXT
);
INSERT INTO community_health_survey (survey_id, community_id, survey_date, respondent_id, age, gender, zip_code, health_status, chronic_condition, smoking_status, alcohol_consumption, physical_activity_level, diet_quality, stress_level, healthcare_access, insurance_status, vaccination_status, mental_health_score, overall_satisfaction, comments) VALUES ('S001','C001','2023-08-12','R001',34,'Female',12345,'Good','None','Never','Moderate','High','Excellent','Low','Good','Insured','Complete',8.5,9,'No issues');
INSERT INTO community_health_survey (survey_id, community_id, survey_date, respondent_id, age, gender, zip_code, health_status, chronic_condition, smoking_status, alcohol_consumption, physical_activity_level, diet_quality, stress_level, healthcare_access, insurance_status, vaccination_status, mental_health_score, overall_satisfaction, comments) VALUES ('S002','C002','2023-08-13','R002',58,'Male',67890,'Fair','Hypertension','Former','Low','Low','Fair','High','Limited','Uninsured','Partial',5.2,6,'Needs follow‑up');
INSERT INTO community_health_survey (survey_id, community_id, survey_date, respondent_id, age, gender, zip_code, health_status, chronic_condition, smoking_status, alcohol_consumption, physical_activity_level, diet_quality, stress_level, healthcare_access, insurance_status, vaccination_status, mental_health_score, overall_satisfaction, comments) VALUES ('S003','C003','2023-08-14','R003',45,'Nonbinary',11223,'Excellent','None','Never','Low','High','Excellent','Low','Good','Insured','Complete',9.1,10,'Very satisfied');

-- Student Financial Aid Award
CREATE TABLE student_financial_aid_award (
    award_id TEXT PRIMARY KEY,
    student_id TEXT,
    aid_type TEXT,
    award_year INTEGER,
    amount_usd INTEGER,
    disbursement_date TEXT,
    scholarship_name TEXT,
    grant_name TEXT,
    provider TEXT,
    renewal_status TEXT,
    expiration_date TEXT,
    academic_standing TEXT,
    gpa REAL,
    major_id TEXT,
    tuition_paid INTEGER,
    fees_covered INTEGER,
    housing_assistance INTEGER,
    books_allowance INTEGER,
    work_study_hours INTEGER,
    notes TEXT
);
INSERT INTO student_financial_aid_award (award_id, student_id, aid_type, award_year, amount_usd, disbursement_date, scholarship_name, grant_name, provider, renewal_status, expiration_date, academic_standing, gpa, major_id, tuition_paid, fees_covered, housing_assistance, books_allowance, work_study_hours, notes) VALUES ('A001','STU001','Scholarship',2023,15000,'2023-09-01','Excellence Scholarship','', 'University Fund','Renewable','2025-08-31','Good',3.8,'M001',12000,2000,3000,1000,200,'First year award');
INSERT INTO student_financial_aid_award (award_id, student_id, aid_type, award_year, amount_usd, disbursement_date, scholarship_name, grant_name, provider, renewal_status, expiration_date, academic_standing, gpa, major_id, tuition_paid, fees_covered, housing_assistance, books_allowance, work_study_hours, notes) VALUES ('A002','STU002','Grant',2022,8000,'2022-08-15','', 'Research Grant','National Science Foundation','Non‑renewable','2023-05-31','Excellent',4.0,'M002',8000,0,0,500,0,'Research assistance');
INSERT INTO student_financial_aid_award (award_id, student_id, aid_type, award_year, amount_usd, disbursement_date, scholarship_name, grant_name, provider, renewal_status, expiration_date, academic_standing, gpa, major_id, tuition_paid, fees_covered, housing_assistance, books_allowance, work_study_hours, notes) VALUES ('A003','STU003','WorkStudy',2023,4000,'2023-09-05','', '','University WorkStudy','Renewable','2024-08-31','Satisfactory',2.9,'M003',0,0,0,0,400,'Part‑time work');

-- Transportation Scheduling
CREATE TABLE transportation_scheduling (
    schedule_id TEXT PRIMARY KEY,
    route_id TEXT,
    vehicle_id TEXT,
    driver_id TEXT,
    departure_time TEXT,
    arrival_time TEXT,
    day_of_week TEXT,
    frequency TEXT,
    capacity INTEGER,
    occupied_seats INTEGER,
    fuel_type TEXT,
    fuel_consumption_l_per_100km REAL,
    maintenance_status TEXT,
    next_service_date TEXT,
    gps_route TEXT,
    estimated_duration_minutes INTEGER,
    actual_duration_minutes INTEGER,
    delay_minutes INTEGER,
    notes TEXT,
    status TEXT
);
INSERT INTO transportation_scheduling (schedule_id, route_id, vehicle_id, driver_id, departure_time, arrival_time, day_of_week, frequency, capacity, occupied_seats, fuel_type, fuel_consumption_l_per_100km, maintenance_status, next_service_date, gps_route, estimated_duration_minutes, actual_duration_minutes, delay_minutes, notes, status) VALUES ('TS001','R100','V001','D001','08:00','08:45','Monday','Hourly',40,35,'Diesel',7.5,'Good','2023-12-01','RouteA',45,46,1,'On time','Active');
INSERT INTO transportation_scheduling (schedule_id, route_id, vehicle_id, driver_id, departure_time, arrival_time, day_of_week, frequency, capacity, occupied_seats, fuel_type, fuel_consumption_l_per_100km, maintenance_status, next_service_date, gps_route, estimated_duration_minutes, actual_duration_minutes, delay_minutes, notes, status) VALUES ('TS002','R200','V002','D002','09:30','10:15','Tuesday','Biweekly',30,28,'Electric',0,'Excellent','2024-01-15','RouteB',45,44,0,'Smooth ride','Active');
INSERT INTO transportation_scheduling (schedule_id, route_id, vehicle_id, driver_id, departure_time, arrival_time, day_of_week, frequency, capacity, occupied_seats, fuel_type, fuel_consumption_l_per_100km, maintenance_status, next_service_date, gps_route, estimated_duration_minutes, actual_duration_minutes, delay_minutes, notes, status) VALUES ('TS003','R300','V003','D003','12:00','12:50','Friday','Weekly',50,45,'Hybrid',5.2,'Needs service','2023-11-20','RouteC',50,55,5,'Minor delay due to traffic','Active');

-- Event Visitor Log
CREATE TABLE event_visitor_log (
    log_id TEXT PRIMARY KEY,
    event_id TEXT,
    visitor_name TEXT,
    visitor_company TEXT,
    check_in_time TEXT,
    check_out_time TEXT,
    badge_id TEXT,
    purpose_of_visit TEXT,
    host_member_id TEXT,
    security_clearance TEXT,
    temperature_celsius REAL,
    vaccination_status TEXT,
    notes TEXT,
    location TEXT,
    escorted_by TEXT,
    wifi_access_granted TEXT,
    parking_spot TEXT,
    feedback_score INTEGER,
    email TEXT,
    phone TEXT
);
INSERT INTO event_visitor_log (log_id, event_id, visitor_name, visitor_company, check_in_time, check_out_time, badge_id, purpose_of_visit, host_member_id, security_clearance, temperature_celsius, vaccination_status, notes, location, escorted_by, wifi_access_granted, parking_spot, feedback_score, email, phone) VALUES ('VL001','E001','Alice Johnson','TechCorp','09:15','11:30','B001','Speaker','M100','Level2',36.7,'Full','N/A','Main Hall','M150','Yes','P12',9,'alice.j@techcorp.com','5551234567');
INSERT INTO event_visitor_log (log_id, event_id, visitor_name, visitor_company, check_in_time, check_out_time, badge_id, purpose_of_visit, host_member_id, security_clearance, temperature_celsius, vaccination_status, notes, location, escorted_by, wifi_access_granted, parking_spot, feedback_score, email, phone) VALUES ('VL002','E002','Bob Lee','HealthInc','10:00','12:45','B002','Vendor','M101','Level1',37.0,'Partial','Requested extra chair','Conference Room B','M151','No','P15',8,'bob.lee@healthinc.com','5559876543');
INSERT INTO event_visitor_log (log_id, event_id, visitor_name, visitor_company, check_in_time, check_out_time, badge_id, purpose_of_visit, host_member_id, security_clearance, temperature_celsius, vaccination_status, notes, location, escorted_by, wifi_access_granted, parking_spot, feedback_score, email, phone) VALUES ('VL003','E003','Carol Smith','EduWorld','08:45','10:15','B003','Attendee','M102','Level3',36.5,'Full','N/A','Auditorium','M152','Yes','P09',10,'carol.s@eduworld.org','5552223344');

-- Sustainability Project Milestone
CREATE TABLE sustainability_project_milestone (
    milestone_id TEXT PRIMARY KEY,
    project_id TEXT,
    milestone_name TEXT,
    target_date TEXT,
    actual_date TEXT,
    status TEXT,
    responsible_dept TEXT,
    budget_usd INTEGER,
    spent_usd INTEGER,
    percent_complete REAL,
    impact_metric TEXT,
    measurement_value REAL,
    notes TEXT,
    risk_level TEXT,
    approvals_needed TEXT,
    documentation_link TEXT,
    sustainability_area TEXT,
    carbon_reduction_tonnes REAL,
    water_saved_cubic_meters REAL,
    energy_saved_kwh REAL
);
INSERT INTO sustainability_project_milestone (milestone_id, project_id, milestone_name, target_date, actual_date, status, responsible_dept, budget_usd, spent_usd, percent_complete, impact_metric, measurement_value, notes, risk_level, approvals_needed, documentation_link, sustainability_area, carbon_reduction_tonnes, water_saved_cubic_meters, energy_saved_kwh) VALUES ('M001','P001','Design Phase','2023-06-01','2023-06-02','Completed','Engineering',50000,48000,100,'DesignDocs',1,'All designs approved','Low','DeptHead','/docs/design.pdf','Energy','120.5','0','35000');
INSERT INTO sustainability_project_milestone (milestone_id, project_id, milestone_name, target_date, actual_date, status, responsible_dept, budget_usd, spent_usd, percent_complete, impact_metric, measurement_value, notes, risk_level, approvals_needed, documentation_link, sustainability_area, carbon_reduction_tonnes, water_saved_cubic_meters, energy_saved_kwh) VALUES ('M002','P002','Construction Start','2023-09-15','2023-09-20','Completed','Facilities',200000,195000,100,'ConstructionLog',1,'Construction began on schedule','Medium','SafetyOfficer','/docs/construction_start.pdf','Water','0','5000','0');
INSERT INTO sustainability_project_milestone (milestone_id, project_id, milestone_name, target_date, actual_date, status, responsible_dept, budget_usd, spent_usd, percent_complete, impact_metric, measurement_value, notes, risk_level, approvals_needed, documentation_link, sustainability_area, carbon_reduction_tonnes, water_saved_cubic_meters, energy_saved_kwh) VALUES ('M003','P001','Commissioning','2024-03-01','', 'Pending','Engineering',75000,0,0,'CommissionReport',0,'Awaiting final tests','High','OperationsMgr','/docs/commissioning_plan.pdf','Energy','0','0','0');

-- Alumni Volunteer Hours
CREATE TABLE alumni_volunteer_hours (
    record_id TEXT PRIMARY KEY,
    alumni_id TEXT,
    volunteer_event_id TEXT,
    date TEXT,
    hours INTEGER,
    role TEXT,
    organization TEXT,
    supervisor_name TEXT,
    feedback TEXT,
    hours_approved INTEGER,
    approved_by TEXT,
    notes TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    location TEXT,
    travel_expense_usd INTEGER,
    recognition_level TEXT,
    skill_developed TEXT,
    future_interest TEXT,
    status TEXT
);
INSERT INTO alumni_volunteer_hours (record_id, alumni_id, volunteer_event_id, date, hours, role, organization, supervisor_name, feedback, hours_approved, approved_by, notes, contact_email, contact_phone, location, travel_expense_usd, recognition_level, skill_developed, future_interest, status) VALUES ('AV001','ALU001','VE001','2023-05-10',5,'Mentor','CareerCenter','DrSmith','Excellent','5','Admin','N/A','alice.alumni@domain.com','5551112222','Campus','0','Bronze','Coaching','Yes','Closed');
INSERT INTO alumni_volunteer_hours (record_id, alumni_id, volunteer_event_id, date, hours, role, organization, supervisor_name, feedback, hours_approved, approved_by, notes, contact_email, contact_phone, location, travel_expense_usd, recognition_level, skill_developed, future_interest, status) VALUES ('AV002','ALU002','VE002','2023-06-15',8,'Organizer','AlumniAssoc','MsJones','Good','8','Admin','Managed logistics','bob.alumni@domain.com','5553334444','Offsite','15','Silver','EventPlanning','Maybe','Pending');
INSERT INTO alumni_volunteer_hours (record_id, alumni_id, volunteer_event_id, date, hours, role, organization, supervisor_name, feedback, hours_approved, approved_by, notes, contact_email, contact_phone, location, travel_expense_usd, recognition_level, skill_developed, future_interest, status) VALUES ('AV003','ALU003','VE003','2023-07-20',3,'Speaker','CommunityOutreach','MrLee','Average','3','Admin','Gave talk on entrepreneurship','carol.alumni@domain.com','5555556666','Community Center','0','Gold','PublicSpeaking','Yes','Closed');

-- Research Data Access Request
CREATE TABLE research_data_access_request (
    request_id TEXT PRIMARY KEY,
    researcher_id TEXT,
    dataset_id TEXT,
    request_date TEXT,
    purpose TEXT,
    approval_status TEXT,
    approved_by TEXT,
    approval_date TEXT,
    data_use_agreement TEXT,
    access_start_date TEXT,
    access_end_date TEXT,
    data_format TEXT,
    size_gb REAL,
    confidentiality_level TEXT,
    notes TEXT,
    compliance_check TEXT,
    ethics_review_status TEXT,
    funding_source TEXT,
    anticipated_publication TEXT,
    contact_email TEXT
);
INSERT INTO research_data_access_request (request_id, researcher_id, dataset_id, request_date, purpose, approval_status, approved_by, approval_date, data_use_agreement, access_start_date, access_end_date, data_format, size_gb, confidentiality_level, notes, compliance_check, ethics_review_status, funding_source, anticipated_publication, contact_email) VALUES ('RD001','R001','DS100','2023-04-01','Genomics analysis','Approved','DeptHead','2023-04-05','AgreementV1','2023-04-10','2023-12-31','CSV',250.5,'Restricted','Urgent project','Pass','Approved','NIH','Nature Genetics','r001@university.edu');
INSERT INTO research_data_access_request (request_id, researcher_id, dataset_id, request_date, purpose, approval_status, approved_by, approval_date, data_use_agreement, access_start_date, access_end_date, data_format, size_gb, confidentiality_level, notes, compliance_check, ethics_review_status, funding_source, anticipated_publication, contact_email) VALUES ('RD002','R002','DS200','2023-05-12','Climate modeling','Pending','', '','AgreementV2','2023-06-01','2024-05-31','NetCDF',1200.0,'Confidential','Requires additional review','InProgress','Pending','DOE','Science','r002@university.edu');
INSERT INTO research_data_access_request (request_id, researcher_id, dataset_id, request_date, purpose, approval_status, approved_by, approval_date, data_use_agreement, access_start_date, access_end_date, data_format, size_gb, confidentiality_level, notes, compliance_check, ethics_review_status, funding_source, anticipated_publication, contact_email) VALUES ('RD003','R003','DS300','2023-07-20','Social media sentiment','Denied','DeptHead','2023-07-25','AgreementV1','', '', 'JSON', 80.3,'Public','Data not relevant','Fail','Rejected','Corporate','Internal Report','r003@university.edu');