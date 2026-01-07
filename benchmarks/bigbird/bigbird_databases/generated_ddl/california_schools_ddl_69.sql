-- School technology investments
CREATE TABLE school_technology_investments (
    investment_id TEXT PRIMARY KEY,
    school_cds TEXT NOT NULL,
    fiscal_year INTEGER NOT NULL,
    project_name TEXT NOT NULL,
    vendor_name TEXT NOT NULL,
    contract_amount REAL NOT NULL,
    grant_funded INTEGER NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    technology_category TEXT NOT NULL,
    hardware_units INTEGER NOT NULL,
    software_licenses INTEGER NOT NULL,
    maintenance_fee REAL NOT NULL,
    expected_lifespan_years INTEGER NOT NULL,
    status TEXT NOT NULL,
    priority_level INTEGER NOT NULL,
    funding_source TEXT NOT NULL,
    responsible_admin TEXT NOT NULL,
    created_timestamp DATE NOT NULL,
    notes TEXT
);
INSERT INTO school_technology_investments (investment_id,school_cds,fiscal_year,project_name,vendor_name,contract_amount,grant_funded,start_date,end_date,technology_category,hardware_units,software_licenses,maintenance_fee,expected_lifespan_years,status,priority_level,funding_source,responsible_admin,created_timestamp,notes) VALUES
('INV001','CDS001',2023,'StudentDeviceRefresh','TechCorp',150000.00,1,'2023-08-01','2024-07-31','Hardware',500,0,5000.00,5,'Active',1,'FederalGrant','AdminA','2023-07-15','Initial phase'),
('INV002','CDS002',2022,'ClassroomSmartBoards','EduBoards',80000.00,0,'2022-02-15','2022-11-30','Hardware',20,0,2000.00,7,'Completed',2,'DistrictBudget','AdminB','2022-01-30','Installation complete'),
('INV003','CDS003',2024,'LearningManagementSystem','SoftSuite',120000.00,1,'2024-01-10','2025-01-09','Software',0,200,3000.00,3,'Planned',3,'StateGrant','AdminC','2023-12-01','Pending procurement');

-- District performance dashboards
CREATE TABLE district_performance_dashboards (
    dashboard_id TEXT PRIMARY KEY,
    district_code TEXT NOT NULL,
    year INTEGER NOT NULL,
    student_outcome_score REAL,
    teacher_retention_rate REAL,
    finance_efficiency_ratio REAL,
    enrollment_trend REAL,
    graduation_rate REAL,
    attendance_rate REAL,
    technology_access_index REAL,
    facility_condition_index REAL,
    equity_index REAL,
    community_engagement_score REAL,
    health_services_score REAL,
    safety_incident_rate REAL,
    special_ed_inclusion_rate REAL,
    language_immersion_rate REAL,
    covid_recovery_score REAL,
    last_updated DATE,
    comments TEXT
);
INSERT INTO district_performance_dashboards (dashboard_id,district_code,year,student_outcome_score,teacher_retention_rate,finance_efficiency_ratio,enrollment_trend,graduation_rate,attendance_rate,technology_access_index,facility_condition_index,equity_index,community_engagement_score,health_services_score,safety_incident_rate,special_ed_inclusion_rate,language_immersion_rate,covid_recovery_score,last_updated,comments) VALUES
('DB001','DC01',2023,78.5,92.3,1.05,1.02,88.0,95.6,84.2,89.1,76.4,80.0,88.5,0.03,85.0,70.2,89.0,'2023-12-31','Annual snapshot'),
('DB002','DC02',2022,81.0,90.1,1.02,0.98,90.5,96.2,86.0,90.5,78.9,82.5,90.1,0.02,86.7,71.5,92.3,'2022-12-31','Year over year comparison'),
('DB003','DC03',2024,79.2,93.0,1.08,1.05,89.2,95.0,85.5,88.3,77.8,81.3,89.8,0.04,84.3,69.8,87.5,'2024-01-15','Preliminary Q1 data');

-- Community fitness programs
CREATE TABLE community_fitness_programs (
    program_id TEXT PRIMARY KEY,
    community_name TEXT NOT NULL,
    partnership_org TEXT,
    start_date DATE,
    end_date DATE,
    activity_type TEXT,
    location TEXT,
    capacity INTEGER,
    enrolled_participants INTEGER,
    sessions_per_week INTEGER,
    avg_attendance REAL,
    instructor_name TEXT,
    certified INTEGER,
    budget_allocated REAL,
    funding_source TEXT,
    health_outcome_metric REAL,
    participant_satisfaction REAL,
    program_status TEXT,
    created_by TEXT,
    notes TEXT
);
INSERT INTO community_fitness_programs (program_id,community_name,partnership_org,start_date,end_date,activity_type,location,capacity,enrolled_participants,sessions_per_week,avg_attendance,instructor_name,certified,budget_allocated,funding_source,health_outcome_metric,participant_satisfaction,program_status,created_by,notes) VALUES
('FP001','Riverside','HealthDept','2023-03-01','2023-12-31','Yoga','Community Center A',30,25,3,22.5,'Lee Chen',1,15000.00,'CityGrant',0.85,4.6,'Active','CoordinatorA','Summer cohort'),
('FP002','Lakeside','WellnessCorp','2022-09-15','2023-06-30','Aquatics','Pool B',20,18,2,17.0,'Maya Patel',1,12000.00,'PrivateSponsor',0.78,4.2,'Completed','CoordinatorB','Included senior adults'),
('FP003','Hilltown','ActiveLife','2024-01-10','2024-12-31','Bootcamp','Gym C',25,20,4,19.8,'Jordan Lee',0,18000.00,'DistrictBudget',0.82,4.8,'Planned','CoordinatorC','Targeting at-risk youth');

-- Environmental compliance checklist
CREATE TABLE environmental_compliance_checklist (
    checklist_id TEXT PRIMARY KEY,
    site_id TEXT NOT NULL,
    inspection_date DATE,
    inspector_name TEXT,
    air_quality_compliance INTEGER,
    water_quality_compliance INTEGER,
    waste_management_compliance INTEGER,
    energy_efficiency_compliance INTEGER,
    hazardous_materials_compliance INTEGER,
    noise_level_compliance INTEGER,
    green_space_compliance INTEGER,
    compliance_overall_score REAL,
    corrective_actions_required INTEGER,
    follow_up_date DATE,
    remarks TEXT,
    created_timestamp DATE,
    updated_timestamp DATE,
    district_code TEXT,
    regulatory_agency TEXT,
    documentation_url TEXT,
    status TEXT
);
INSERT INTO environmental_compliance_checklist (checklist_id,site_id,inspection_date,inspector_name,air_quality_compliance,water_quality_compliance,waste_management_compliance,energy_efficiency_compliance,hazardous_materials_compliance,noise_level_compliance,green_space_compliance,compliance_overall_score,corrective_actions_required,follow_up_date,remarks,created_timestamp,updated_timestamp,district_code,regulatory_agency,documentation_url,status) VALUES
('EC001','S001','2023-05-20','Alvarez',1,1,1,1,1,1,1,98.5,0,NULL,'All standards met','2023-05-21','2023-05-21','DC01','EPA','http://example.com/doc1','Closed'),
('EC002','S002','2022-11-12','Bennett',0,1,0,1,0,1,1,73.0,3,'2023-01-15','Air and hazardous issues','2022-11-13','2023-01-10','DC02','StateEnv','http://example.com/doc2','Open'),
('EC003','S003','2024-02-08','Choi',1,1,1,0,1,0,1,85.0,2,'2024-04-01','Energy and noise need improvement','2024-02-09','2024-03-20','DC03','EPA','http://example.com/doc3','Open');

-- Student financial aid packages
CREATE TABLE student_financial_aid_packages (
    aid_id TEXT PRIMARY KEY,
    student_id TEXT NOT NULL,
    school_cds TEXT NOT NULL,
    academic_year INTEGER,
    grant_amount REAL,
    scholarship_amount REAL,
    loan_amount REAL,
    work_study_amount REAL,
    total_aid REAL,
    eligibility_status TEXT,
    award_date DATE,
    disbursement_schedule TEXT,
    federal_aid_flag INTEGER,
    state_aid_flag INTEGER,
    private_aid_flag INTEGER,
    remaining_balance REAL,
    repayment_plan TEXT,
    counselor_id TEXT,
    notes TEXT,
    created_at DATE
);
INSERT INTO student_financial_aid_packages (aid_id,student_id,school_cds,academic_year,grant_amount,scholarship_amount,loan_amount,work_study_amount,total_aid,eligibility_status,award_date,disbursement_schedule,federal_aid_flag,state_aid_flag,private_aid_flag,remaining_balance,repayment_plan,counselor_id,notes,created_at) VALUES
('AID001','STU001','CDS010',2023,5000.00,2000.00,3000.00,1000.00,11000.00,'Approved','2023-03-15','Quarterly','1','1','0',2000.00,'Standard30','C001','First-year package','2023-02-28'),
('AID002','STU002','CDS011',2022,4000.00,1500.00,2500.00,800.00,8800.00,'Approved','2022-04-20','Semiannual','1','0','1',1500.00,'IncomeBased','C002','Merit scholarship included','2022-03-10'),
('AID003','STU003','CDS012',2024,0.00,3000.00,3500.00,0.00,6500.00,'Pending','2024-05-01','Annual','0','1','0',6500.00,'Deferred','C003','Awaiting documentation','2024-04-15');

-- Teacher continuing education records
CREATE TABLE teacher_continuing_education_records (
    record_id TEXT PRIMARY KEY,
    teacher_id TEXT NOT NULL,
    school_cds TEXT NOT NULL,
    course_name TEXT,
    provider_name TEXT,
    start_date DATE,
    end_date DATE,
    credit_hours REAL,
    delivery_mode TEXT,
    cost REAL,
    funded_by TEXT,
    completion_status TEXT,
    certificate_number TEXT,
    verification_date DATE,
    notes TEXT,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    discipline TEXT,
    region TEXT
);
INSERT INTO teacher_continuing_education_records (record_id,teacher_id,school_cds,course_name,provider_name,start_date,end_date,credit_hours,delivery_mode,cost,funded_by,completion_status,certificate_number,verification_date,notes,created_by,created_at,updated_at,discipline,region) VALUES
('REC001','T001','CDS020','Advanced Math Instruction','EduOnline', '2023-01-10','2023-04-10',30,'Online',600.00,'SchoolBudget','Completed','CERT12345','2023-04-15','Improved test scores','AdminX','2023-01-05','2023-04-20','Mathematics','North'),
('REC002','T002','CDS021','Special Education Strategies','SpecialEd Institute','2022-09-01','2022-12-01',20,'InPerson',750.00,'Grant','Completed','CERT67890','2022-12-05','Implemented new IEP process','AdminY','2022-08-20','2022-12-10','SpecialEd','South'),
('REC003','T003','CDS022','Technology Integration in Classroom','TechTeach','2024-02-15','2024-05-15',25,'Hybrid',500.00,'SelfFunded','InProgress','CERT54321',NULL,'Ongoing coursework','AdminZ','2024-02-01','2024-03-10','Science','East');

-- Facility green certifications
CREATE TABLE facility_green_certifications (
    cert_id TEXT PRIMARY KEY,
    facility_id TEXT NOT NULL,
    school_cds TEXT NOT NULL,
    certification_body TEXT,
    certification_level TEXT,
    certification_date DATE,
    expiration_date DATE,
    energy_savings_percent REAL,
    water_savings_percent REAL,
    waste_reduction_percent REAL,
    renewable_energy_percent REAL,
    green_building_score REAL,
    certified_by TEXT,
    audit_report_url TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    district_code TEXT,
    compliance_status TEXT,
    funding_source TEXT,
    project_name TEXT
);
INSERT INTO facility_green_certifications (cert_id,facility_id,school_cds,certification_body,certification_level,certification_date,expiration_date,energy_savings_percent,water_savings_percent,waste_reduction_percent,renewable_energy_percent,green_building_score,certified_by,audit_report_url,notes,created_at,updated_at,district_code,compliance_status,funding_source,project_name) VALUES
('GC001','F001','CDS030','LEED','Gold','2022-06-01','2027-05-31',15.2,12.5,8.0,20.0,85.0,'John Doe','http://example.com/audit1','Solar panels installed','2022-05-15','2023-01-10','DC01','Compliant','StateGrant','SolarRoofProject'),
('GC002','F002','CDS031','BREEAM','Silver','2021-09-15','2026-09-14',10.0,9.5,5.5,15.0,78.0,'Jane Smith','http://example.com/audit2','Water reclamation system','2021-08-20','2022-02-05','DC02','Compliant','DistrictFunds','WaterReuseInitiative'),
('GC003','F003','CDS032','EnergyStar','Certified','2023-03-10','2028-03-09',12.8,11.0,7.2,18.5,81.5,'Mike Lee','http://example.com/audit3','LED lighting upgrade','2023-02-25','2023-06-01','DC03','Compliant','FederalGrant','LEDUpgradeProgram');

-- District IT security incidents
CREATE TABLE district_it_security_incidents (
    incident_id TEXT PRIMARY KEY,
    district_code TEXT NOT NULL,
    incident_date DATE,
    reported_by TEXT,
    incident_type TEXT,
    affected_systems TEXT,
    severity_level INTEGER,
    downtime_hours REAL,
    data_compromised INTEGER,
    resolution_status TEXT,
    response_time_hours REAL,
    mitigation_actions TEXT,
    root_cause TEXT,
    compliance_impact INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    external_reported INTEGER,
    legal_action_taken INTEGER,
    incident_category TEXT
);
INSERT INTO district_it_security_incidents (incident_id,district_code,incident_date,reported_by,incident_type,affected_systems,severity_level,downtime_hours,data_compromised,resolution_status,response_time_hours,mitigation_actions,root_cause,compliance_impact,notes,created_at,updated_at,external_reported,legal_action_taken,incident_category) VALUES
('INC001','DC01','2023-07-14','ITDept','Malware','StudentPortal',3,4.5,2000,'Resolved',2.0,'System restore and patching','Outdated antivirus','1','No further impact','2023-07-15','2023-07-20',0,0,'Cybersecurity'),
('INC002','DC02','2022-11-03','SecurityTeam','Phishing','EmailSystem',2,0.0,0,'Investigated',0.5,'User training and filter update','Human error','0','False positive','2022-11-04','2022-11-05',1,0,'Awareness'),
('INC003','DC03','2024-02-20','NetworkOps','DDoS','Website',4,12.0,0,'Mitigated',1.5,'Traffic scrubbing service','Botnet traffic','1','Partial service loss','2024-02-21','2024-02-25',1,1,'Network');

-- School sustainability projects
CREATE TABLE school_sustainability_projects (
    project_id TEXT PRIMARY KEY,
    school_cds TEXT NOT NULL,
    project_name TEXT,
    start_date DATE,
    end_date DATE,
    project_type TEXT,
    estimated_cost REAL,
    funding_source TEXT,
    carbon_reduction_tons REAL,
    energy_saved_kwh REAL,
    water_saved_gallons REAL,
    waste_diverted_tons REAL,
    student_involvement_hours INTEGER,
    community_partners TEXT,
    status TEXT,
    project_manager TEXT,
    expected_completion_year INTEGER,
    actual_completion_year INTEGER,
    outcomes_summary TEXT,
    created_at DATE
);
INSERT INTO school_sustainability_projects (project_id,school_cds,project_name,start_date,end_date,project_type,estimated_cost,funding_source,carbon_reduction_tons,energy_saved_kwh,water_saved_gallons,waste_diverted_tons,student_involvement_hours,community_partners,status,project_manager,expected_completion_year,actual_completion_year,outcomes_summary,created_at) VALUES
('SP001','CDS040','Solar PV Installation','2022-05-01','2023-04-30','RenewableEnergy',250000.00,'FederalGrant',120.5,500000.00,0.0,0.0,350,'SolarCo','Completed','Laura Green',2023,2023,'Reduced electricity bills by 15%','2022-04-20'),
('SP002','CDS041','Rainwater Harvesting','2023-01-15','2024-12-31','WaterConservation',80000.00,'DistrictBudget',0.0,0.0,2000000.0,0.0,210,'EcoWater Org','InProgress','Mark Rivera',2025,NULL,'Collected 2M gallons for irrigation','2023-01-01'),
('SP003','CDS042','Zero Waste Campaign','2021-09-01','2022-08-31','WasteManagement',50000.00,'PrivateSponsor',0.0,0.0,0.0,45,500,'GreenClub','Completed','Sofia Lee',2022,2022,'Diverted 45 tons from landfill','2021-08-15');

-- Parent community engagement surveys
CREATE TABLE parent_community_engagement_surveys (
    survey_id TEXT PRIMARY KEY,
    school_cds TEXT NOT NULL,
    district_code TEXT NOT NULL,
    survey_year INTEGER,
    respondent_type TEXT,
    total_sent INTEGER,
    total_responded INTEGER,
    response_rate REAL,
    satisfaction_score REAL,
    communication_effectiveness REAL,
    involvement_opportunity_score REAL,
    barriers_identified TEXT,
    suggested_improvements TEXT,
    survey_start_date DATE,
    survey_end_date DATE,
    analyzed_by TEXT,
    analysis_date DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO parent_community_engagement_surveys (survey_id,school_cds,district_code,survey_year,respondent_type,total_sent,total_responded,response_rate,satisfaction_score,communication_effectiveness,involvement_opportunity_score,barriers_identified,suggested_improvements,survey_start_date,survey_end_date,analyzed_by,analysis_date,notes,created_at,updated_at) VALUES
('SURV001','CDS050','DC01',2023,'Parents',1200,850,0.708,4.2,4.0,3.8,'Timing, language','More flexible meeting times','2023-02-01','2023-02-28','DataTeamA','2023-03-10','High participation','2023-02-01','2023-03-12'),
('SURV002','CDS051','DC02',2022,'Guardians',900,600,0.667,3.9,3.7,3.5,'Transportation, childcare','Virtual forums','2022-04-15','2022-05-15','DataTeamB','2022-06-01','Need better outreach','2022-04-15','2022-06-02'),
('SURV003','CDS052','DC03',2024,'Parents',1500,1100,0.733,4.5,4.3,4.1,'Survey length','Shorten questionnaire','2024-01-10','2024-01-31','DataTeamC','2024-02-15','Positive trend','2024-01-10','2024-02-16');