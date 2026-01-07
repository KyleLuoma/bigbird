-- Educational software usage tracking per school
CREATE TABLE educational_software_usage (
    usage_id INTEGER PRIMARY KEY,
    school_cds TEXT,
    software_name TEXT,
    vendor TEXT,
    license_type TEXT,
    seats_purchased INTEGER,
    seats_used INTEGER,
    usage_month TEXT,
    avg_login_per_student REAL,
    total_sessions INTEGER,
    active_students INTEGER,
    inactive_students INTEGER,
    support_tickets INTEGER,
    last_update DATE,
    cost_per_seat REAL,
    total_cost REAL,
    compliance_status TEXT,
    integration_status TEXT,
    notes TEXT,
    data_source TEXT
);

INSERT INTO educational_software_usage VALUES
(1,'001001','MathMaster','EduTech','Subscription',200,180,'2023-01',3.2,1500,170,30,5,'2023-02-01',12.5,2500.0,'Compliant','Integrated','Initial rollout','LicenseDB');
INSERT INTO educational_software_usage VALUES
(2,'001002','ReadWrite','LiteracyCo','Perpetual',150,140,'2023-01',2.8,1200,130,20,2,'2023-02-02',9.0,1350.0,'Compliant','Integrated','Follow up training','LicenseDB');
INSERT INTO educational_software_usage VALUES
(3,'001003','ScienceLab','SciTools','Subscription',100,95,'2023-01',4.1,900,90,10,1,'2023-02-03',15.0,1500.0,'Pending','Partial','Beta testing stage','LicenseDB');

-- School transportation fuel logs
CREATE TABLE school_transportation_fuel_logs (
    log_id INTEGER PRIMARY KEY,
    vehicle_id TEXT,
    route_id TEXT,
    fuel_type TEXT,
    gallons_used REAL,
    fuel_cost REAL,
    odometer_start INTEGER,
    odometer_end INTEGER,
    date_filled DATE,
    driver_id TEXT,
    fuel_station TEXT,
    invoice_number TEXT,
    maintenance_flag INTEGER,
    emission_rating REAL,
    notes TEXT,
    recorded_by TEXT,
    record_timestamp DATE,
    distance_miles REAL,
    avg_mpg REAL,
    fuel_efficiency_category TEXT
);

INSERT INTO school_transportation_fuel_logs VALUES
(1,'V001','R01','Diesel',45.6,120.5,12000,12456,'2023-01-15','D001','FuelMart','INV1001',0,2.5,'Routine fill','OpsMgr','2023-01-15',456.0,7.9,'Average');
INSERT INTO school_transportation_fuel_logs VALUES
(2,'V002','R02','Diesel',38.2,101.3,8000,8380,'2023-01-18','D002','FuelMart','INV1002',1,2.7,'Checked brakes','OpsMgr','2023-01-18',380.0,9.2,'Above Avg');
INSERT INTO school_transportation_fuel_logs VALUES
(3,'V003','R03','Electric','N/A',0,'N/A','N/A','2023-01-20','D003','ChargeStation','INV1003',0,0,'Full charge','OpsMgr','2023-01-20',300.0,0,'Electric');

-- Community arts fund distribution
CREATE TABLE community_arts_fund_distribution (
    dist_id INTEGER PRIMARY KEY,
    fiscal_year TEXT,
    grant_program TEXT,
    recipient_org TEXT,
    project_title TEXT,
    award_amount REAL,
    matching_funds REAL,
    award_date DATE,
    project_start DATE,
    project_end DATE,
    funding_source TEXT,
    category TEXT,
    status TEXT,
    contact_name TEXT,
    contact_email TEXT,
    phone_number TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT
);

INSERT INTO community_arts_fund_distribution VALUES
(1,'2022','Creative Grants','ArtHouse','Mural Downtown',50000,10000,'2022-03-01','2022-04-15','2023-04-15','County Arts Council','Public Art','Awarded','Jane Doe','jane.doe@example.com','555-1234','123 Main St','Springfield','IL','62701');
INSERT INTO community_arts_fund_distribution VALUES
(2,'2022','Youth Arts','KidsCreate','Summer Workshop Series',30000,5000,'2022-04-10','2022-06-01','2022-08-31','State Arts Fund','Education','Awarded','John Smith','john.smith@example.com','555-5678','456 Oak Ave','Riverdale','MO','63010');
INSERT INTO community_arts_fund_distribution VALUES
(3,'2023','Cultural Heritage','HeritageAssc','Historical Exhibit',40000,8000,'2023-01-20','2023-02-01','2023-12-31','Federal Arts Grant','Culture','Pending','Emily Clark','emily.clark@example.com','555-9012','789 Pine Rd','Lakeside','WI','53703');

-- Student mental health interventions
CREATE TABLE student_mental_health_interventions (
    intervention_id INTEGER PRIMARY KEY,
    student_id TEXT,
    school_cds TEXT,
    intervention_type TEXT,
    provider_name TEXT,
    start_date DATE,
    end_date DATE,
    sessions_completed INTEGER,
    total_sessions INTEGER,
    outcome TEXT,
    follow_up_date DATE,
    notes TEXT,
    confidentiality_level TEXT,
    referral_source TEXT,
    case_manager TEXT,
    therapy_modality TEXT,
    dosage_mg REAL,
    medication_name TEXT,
    status TEXT,
    reviewed_by TEXT
);

INSERT INTO student_mental_health_interventions VALUES
(1,'S001','001001','Counseling','Dr Green','2023-01-10','2023-03-10',8,10,'Improved','2023-04-01','No adverse events','High','Teacher','Ms Lee','CBT',0,NULL,'Closed','PrincipalA');
INSERT INTO student_mental_health_interventions VALUES
(2,'S002','001002','Medication','Dr Blue','2023-02-01','2023-06-01',0,0,'Stable','2023-07-01','Started SSRI','Medium','Nurse','Mr Patel','Medication',20,'Sertraline','Open','PrincipalB');
INSERT INTO student_mental_health_interventions VALUES
(3,'S003','001003','Group Therapy','Dr Red','2023-03-05','2023-05-05',5,6,'Partial','2023-06-01','Needs more sessions','Low','Counselor','Ms Kim','Group',0,NULL,'Open','PrincipalC');

-- Facility security access logs
CREATE TABLE facility_security_access_logs (
    access_id INTEGER PRIMARY KEY,
    facility_id TEXT,
    location TEXT,
    badge_id TEXT,
    employee_name TEXT,
    access_time TEXT,
    access_type TEXT,
    door_status TEXT,
    reason_code TEXT,
    ip_address TEXT,
    device_id TEXT,
    authentication_method TEXT,
    access_granted INTEGER,
    duration_seconds INTEGER,
    event_timestamp DATE,
    supervisor_approval TEXT,
    notes TEXT,
    zone_level INTEGER,
    camera_id TEXT,
    compliance_flag INTEGER
);

INSERT INTO facility_security_access_logs VALUES
(1,'F001','MainEntrance','B123','Alice Jones','2023-01-15 08:00:00','Entry','Open','Normal','192.168.1.10','DEV01','Badge',1,30,'2023-01-15','Yes','Morning entry','1','CAM01',0);
INSERT INTO facility_security_access_logs VALUES
(2,'F002','ServerRoom','B456','Bob Smith','2023-01-16 22:15:00','Entry','Closed','Maintenance','192.168.1.20','DEV02','Pin',1,120,'2023-01-16','Yes','After hours maintenance','3','CAM02',0);
INSERT INTO facility_security_access_logs VALUES
(3,'F003','Gym','B789','Carol Lee','2023-01-17 14:30:00','Exit','Open','Normal','192.168.1.30','DEV03','Badge',1,15,'2023-01-17','No','Leaving after class','2','CAM03',0);

-- Teacher financial aid awards
CREATE TABLE teacher_financial_aid_awards (
    award_id INTEGER PRIMARY KEY,
    teacher_id TEXT,
    school_cds TEXT,
    award_name TEXT,
    amount REAL,
    award_year TEXT,
    funding_agency TEXT,
    award_type TEXT,
    status TEXT,
    application_date DATE,
    award_date DATE,
    renewal_flag INTEGER,
    purpose TEXT,
    notes TEXT,
    approved_by TEXT,
    documentation_url TEXT,
    payment_schedule TEXT,
    tax_withheld REAL,
    net_amount REAL,
    reporting_deadline DATE
);

INSERT INTO teacher_financial_aid_awards VALUES
(1,'T001','001001','STEM Innovation Grant',15000,'2023','National Science Foundation','Grant','Awarded','2022-11-01','2023-01-20',0,'Curriculum development','First year award','Dr Allen','http://docs.example.com/grant1','Quarterly',1500,13500,'2023-12-31');
INSERT INTO teacher_financial_aid_awards VALUES
(2,'T002','001002','Professional Development Fellowship',8000,'2022','State Education Dept','Fellowship','Completed','2021-09-15','2022-02-10',1,'Leadership training','Renewed for second year','Dr Baker','http://docs.example.com/fellowship2','Semiannual',800,7200,'2022-11-30');
INSERT INTO teacher_financial_aid_awards VALUES
(3,'T003','001003','Research Seed Money',5000,'2024','University Grant Office','Seed','Pending','2023-12-01','2024-03-15',0,'Pilot study on literacy','Awaiting approval','Dr Clark','http://docs.example.com/seed3','Monthly',0,5000,'2024-08-15');

-- District equity investment tracking
CREATE TABLE district_equity_investment (
    investment_id INTEGER PRIMARY KEY,
    district_code TEXT,
    fiscal_year TEXT,
    program_name TEXT,
    investment_amount REAL,
    target_population TEXT,
    equity_metric TEXT,
    allocation_type TEXT,
    start_date DATE,
    end_date DATE,
    status TEXT,
    responsible_office TEXT,
    approval_date DATE,
    reporting_frequency TEXT,
    notes TEXT,
    external_partner TEXT,
    matching_funds REAL,
    evaluation_score REAL,
    compliance_status TEXT,
    data_source TEXT
);

INSERT INTO district_equity_investment VALUES
(1,'D001','2023','Early Childhood Access',250000,'Low Income','Participation Rate','Grant','2023-07-01','2025-06-30','Active','Office of Equity','2023-06-15','Quarterly','Focus on preschool enrollment','ChildCare Corp',50000,85.5,'Compliant','DistrictDB');
INSERT INTO district_equity_investment VALUES
(2,'D002','2022','STEM for Girls',180000,'Female Students','Gender Gap','Direct','2022-01-15','2024-12-31','Completed','Office of STEM','2021-12-20','Annual','Partnered with TechWomen','TechWomen Org',20000,90.0,'Compliant','DistrictDB');
INSERT INTO district_equity_investment VALUES
(3,'D003','2024','Special Ed Support',300000,'Special Education','Service Hours','Grant','2024-03-01','2026-02-28','Planned','Office of Inclusion','2024-02-10','Semiannual','Collab with Inclusion Partners',40000,0,NULL,'Pending','DistrictDB');

-- School renewable energy production records
CREATE TABLE school_renewable_energy_production (
    production_id INTEGER PRIMARY KEY,
    school_cds TEXT,
    system_type TEXT,
    capacity_kw REAL,
    annual_generation_kwh REAL,
    installation_date DATE,
    commissioning_date DATE,
    maintenance_contract TEXT,
    operator_name TEXT,
    avg_daily_output_kwh REAL,
    peak_output_kwh REAL,
    carbon_offset_tons REAL,
    incentive_received REAL,
    net_savings REAL,
    status TEXT,
    last_inspection DATE,
    warranty_expiration DATE,
    notes TEXT,
    reporting_month TEXT,
    data_reported_by TEXT
);

INSERT INTO school_renewable_energy_production VALUES
(1,'001001','Solar PV',150.0,180000,'2022-04-10','2022-05-01','SolarCare Inc','EnergyTeam',493.2,800.0,75.0,12000,15000,'Operational','2023-03-15','2027-04-10','No issues','2023-03','OpsMgr');
INSERT INTO school_renewable_energy_production VALUES
(2,'001002','Wind Turbine',300.0,250000,'2021-09-20','2021-10-15','WindMaintain LLC','WindOps',685.0,1200.0,110.0,20000,30000,'Operational','2023-02-20','2026-09-20','Blade inspection due','2023-02','OpsMgr');
INSERT INTO school_renewable_energy_production VALUES
(3,'001003','Geothermal',200.0,210000,'2020-06-05','2020-07-01','GeoServ Ltd','GeoTeam',575.0,900.0,95.0,15000,25000,'Operational','2023-01-10','2025-06-05','Heat exchange upgrade planned','2023-01','OpsMgr');

-- Extracurricular event budget tracking
CREATE TABLE extracurricular_event_budget (
    budget_id INTEGER PRIMARY KEY,
    event_id TEXT,
    school_cds TEXT,
    event_name TEXT,
    total_budget REAL,
    allocated_amount REAL,
    spent_amount REAL,
    remaining_balance REAL,
    sponsor_name TEXT,
    sponsor_amount REAL,
    expense_category TEXT,
    expense_date DATE,
    approved_by TEXT,
    finance_status TEXT,
    notes TEXT,
    budget_version TEXT,
    revision_date DATE,
    currency TEXT,
    exchange_rate REAL,
    audit_flag INTEGER
);

INSERT INTO extracurricular_event_budget VALUES
(1,'E001','001001','Spring Music Fest',20000,15000,14000,1000,'MusicCo','5000','Venue Rental','2023-03-10','Mrs Allen','Approved','Finalized','v1','2023-03-12','USD',1.0,0);
INSERT INTO extracurricular_event_budget VALUES
(2,'E002','001002','Winter Art Show',15000,12000,11500,500,'ArtSupply Inc','3000','Materials','2023-01-20','Mr Baker','Approved','Pending','v1','2023-01-22','USD',1.0,0);
INSERT INTO extracurricular_event_budget VALUES
(3,'E003','001003','Summer Sports Camp',25000,20000,19500,5000,'SportGear','8000','Equipment','2023-04-05','Ms Carter','Approved','Closed','v2','2023-04-07','USD',1.0,1);

-- Student career pathways records
CREATE TABLE student_career_pathways (
    pathway_id INTEGER PRIMARY KEY,
    student_id TEXT,
    school_cds TEXT,
    pathway_name TEXT,
    industry_sector TEXT,
    program_start DATE,
    program_end DATE,
    mentor_name TEXT,
    mentor_contact TEXT,
    certification_obtained TEXT,
    completion_status TEXT,
    hours_completed INTEGER,
    total_hours INTEGER,
    employer_name TEXT,
    internship_start DATE,
    internship_end DATE,
    stipend_amount REAL,
    outcome TEXT,
    notes TEXT,
    reported_by TEXT
);

INSERT INTO student_career_pathways VALUES
(1,'S001','001001','Cybersecurity Track','IT','2023-01-15','2023-06-15','Jake Miller','jmiller@example.com','CompTIA Security+','Completed',150,150,'TechSecure','2023-02-01','2023-05-31',2000,'Job Offer','Excellent performance','CounselorA');
INSERT INTO student_career_pathways VALUES
(2,'S002','001002','Health Sciences','Healthcare','2023-02-01','2023-07-31','Laura Chen','lchen@example.com','Certified Nursing Assistant','In Progress',80,120,'HealthPlus','2023-03-01','2023-06-30',1500,'Pending Certification','Needs more clinical hours','CounselorB');
INSERT INTO student_career_pathways VALUES
(3,'S003','001003','Engineering Design','Manufacturing','2023-03-10','2023-12-10','Tom Rivera','trivera@example.com','SolidWorks Associate','Completed',200,200,'ManufactureCo','2023-04-15','2023-09-15',2500,'College Admission','Project showcased at expo','CounselorC');