-- Campus Policy Document
CREATE TABLE campus_policy_document
(
    policy_id               TEXT PRIMARY KEY,
    title                   TEXT,
    version                 TEXT,
    effective_date          TEXT,
    review_date             TEXT,
    department_responsible  TEXT,
    status                  TEXT,
    summary                 TEXT,
    document_url            TEXT,
    confidentiality_level   TEXT,
    author                  TEXT,
    approver                TEXT,
    revision_number         INTEGER,
    category                TEXT,
    applicable_units       TEXT,
    amendment_notes        TEXT,
    compliance_deadline    TEXT,
    policy_type            TEXT,
    related_regulation      TEXT,
    created_timestamp       TEXT
);

INSERT INTO campus_policy_document VALUES
('POL001','Data_Retention_Policy','v1.0','2023-01-01','2024-01-01','IT','Active','Guidelines for data retention','http://policy.university.edu/DRP','High','Jane_Doe','John_Smith',1,'Compliance','All_Departments','None','2025-01-01','Administrative','Reg123','2023-01-01');

INSERT INTO campus_policy_document VALUES
('POL002','Campus_Safety_Protocol','v2.3','2022-05-15','2023-05-15','Security','Active','Procedures for campus safety','http://policy.university.edu/CSP','Medium','Alice_Wong','Bob_Lee',3,'Safety','Student_Areas','Updated after drill','2024-12-31','Operational','Reg456','2022-05-15');

INSERT INTO campus_policy_document VALUES
('POL003','Research_Ethics_Guidelines','v1.5','2021-09-01','2022-09-01','Research','Inactive','Ethical standards for research','http://policy.university.edu/REG','High','Mark_Taylor','Susan_Kim',2,'Ethics','Research_Units','Reviewed 2022','2023-09-01','Academic','Reg789','2021-09-01');

-- Environmental Sensor Station
CREATE TABLE environmental_sensor_station
(
    station_id               TEXT PRIMARY KEY,
    station_name             TEXT,
    latitude                 REAL,
    longitude                REAL,
    elevation                REAL,
    installation_date        TEXT,
    sensor_type              TEXT,
    manufacturer             TEXT,
    firmware_version         TEXT,
    maintenance_schedule     TEXT,
    last_maintenance_date    TEXT,
    status                   TEXT,
    power_source             TEXT,
    battery_capacity         REAL,
    data_endpoint_url        TEXT,
    transmission_frequency   TEXT,
    calibration_date         TEXT,
    region                   TEXT,
    ecosystem_type           TEXT,
    notes                    TEXT
);

INSERT INTO environmental_sensor_station VALUES
('STS001','Riverbank_Station',40.7128,-74.0060,5.2,'2020-03-10','Water_Quality','AquaTech','1.4.2','Annual','2023-03-05','Active','Solar',120.5,'http://sensors.university.edu/sts001','15min','2022-12-01','North_Campus','Freshwater','No issues');

INSERT INTO environmental_sensor_station VALUES
('STS002','Hilltop_Station',41.2033,-77.1945,350.0,'2019-07-22','Air_Quality','EnviroSense','2.0.0','Semiannual','2023-01-20','Active','Battery',80.0,'http://sensors.university.edu/sts002','30min','2022-06-15','South_Campus','Forest','Calibrated quarterly');

INSERT INTO environmental_sensor_station VALUES
('STS003','Lab_Indoor_Station',39.9526,-75.1652,10.0,'2021-11-05','Temperature','ThermoInc','3.1.1','Monthly','2023-02-28','Inactive','Mains',0.0,'http://sensors.university.edu/sts003','5min','2023-01-10','East_Campus','Laboratory','Pending relocation');

-- Digital Learning Module
CREATE TABLE digital_learning_module
(
    module_id               TEXT PRIMARY KEY,
    module_name             TEXT,
    course_code             TEXT,
    description             TEXT,
    creator                 TEXT,
    creation_date           TEXT,
    last_update_date        TEXT,
    duration_minutes        INTEGER,
    difficulty_level        TEXT,
    language                TEXT,
    format                  TEXT,
    thumbnail_url           TEXT,
    access_level            TEXT,
    prerequisite_modules    TEXT,
    credit_hours            REAL,
    max_enrollment          INTEGER,
    enrollment_count        INTEGER,
    rating_avg              REAL,
    rating_count            INTEGER,
    tags                    TEXT
);

INSERT INTO digital_learning_module VALUES
('MOD001','Intro_to_Data_Science','DS101','Fundamentals of data science','Dr_Alice_Wong','2022-01-15','2023-02-01',120,'Beginner','English','Video','http://elearning.university.edu/thumbs/ds101.png','Open','None',3.0,200,150,4.5,120,'data,science,python');

INSERT INTO digital_learning_module VALUES
('MOD002','Advanced_Machine_Learning','ML401','Deep dive into ML algorithms','Prof_Bob_Lee','2021-09-10','2023-01-20',180,'Advanced','English','Mixed','http://elearning.university.edu/thumbs/ml401.png','Restricted','DS101',4.0,100,80,4.7,85,'ml,deeplearning,ai');

INSERT INTO digital_learning_module VALUES
('MOD003','Statistical_Thinking','ST201','Statistical concepts for research','Dr_Carol_Kim','2020-05-05','2022-12-15',90,'Intermediate','English','Video','http://elearning.university.edu/thumbs/st201.png','Open','None',2.5,150,130,4.2,200,'statistics,research,probability');

-- Research Collaboration Network
CREATE TABLE research_collaboration_network
(
    network_id                TEXT PRIMARY KEY,
    network_name              TEXT,
    focus_area                TEXT,
    lead_institution          TEXT,
    coordinator_contact       TEXT,
    start_date                TEXT,
    end_date                  TEXT,
    funding_source            TEXT,
    total_budget              REAL,
    member_institutions       TEXT,
    collaboration_type        TEXT,
    data_sharing_policy       TEXT,
    governance_model          TEXT,
    status                    TEXT,
    meetings_per_year         INTEGER,
    last_meeting_date         TEXT,
    website_url               TEXT,
    publications_count        INTEGER,
    active_projects           INTEGER,
    notes                     TEXT
);

INSERT INTO research_collaboration_network VALUES
('RCN001','AI_Research_Alliance','Artificial_Intelligence','TechUniversity','ai_coord@techuniv.edu','2021-01-01','2025-12-31','Government_Grant',2500000.0,'UnivA;UnivB;UnivC','Consortium','Open','Steering_Committee','Active',4,'2023-06-15','http://ai-alliance.university.edu',45,12,'Annual symposium planned');

INSERT INTO research_collaboration_network VALUES
('RCN002','Sustainable_Energy_Network','Renewable_Energy','EcoInstitute','se_coord@ecoinst.org','2020-04-15','2024-04-14','Private_Foundation',1800000.0,'EcoInst;GreenUni;SolarCollege','Partnership','Restricted','Joint_Advisory_Board','Active',6,'2023-04-20','http://senetwork.org',30,8,'Data hub under development');

INSERT INTO research_collaboration_network VALUES
('RCN003','Global_Health_Consortium','Public_Health','WorldHealthUni','ghc_coord@whuni.org','2019-09-01','2023-08-31','UN_Funding',3200000.0,'WHU;HealthTech;MedSchool','Consortium','Limited','Executive_Council','Completed',8,'2023-02-10','http://globalhealthconsortium.org',60,15,'Final report submitted');

-- Facility Energy Monitor
CREATE TABLE facility_energy_monitor
(
    monitor_id               TEXT PRIMARY KEY,
    facility_id              TEXT,
    monitor_type             TEXT,
    install_date             TEXT,
    manufacturer             TEXT,
    model_number             TEXT,
    serial_number            TEXT,
    calibrated_until         TEXT,
    measurement_unit         TEXT,
    min_value                REAL,
    max_value                REAL,
    current_value            REAL,
    alert_threshold          REAL,
    status                   TEXT,
    last_reading_timestamp   TEXT,
    data_log_path            TEXT,
    maintenance_interval_days INTEGER,
    last_maintenance_date    TEXT,
    energy_saving_target     REAL,
    notes                    TEXT
);

INSERT INTO facility_energy_monitor VALUES
('EM001','BldgA','Electricity','2021-02-10','EnergyMeterCo','EM-100','SN10001','2024-02-10','kWh',0.0,5000.0,2450.5,3000.0,'Active','2023-03-01','/data/monitors/em001.log',90,'2023-01-15',10.0,'Installed during renovation');

INSERT INTO facility_energy_monitor VALUES
('EM002','BldgB','Water','2020-06-05','FlowTech','WT-200','SN20002','2023-06-05','Gallons',0.0,20000.0,15000.0,18000.0,'Active','2023-03-01','/data/monitors/em002.log',180,'2022-12-20',8.5,'Calibration due soon');

INSERT INTO facility_energy_monitor VALUES
('EM003','BldgC','Gas','2019-11-20','GasSense','GS-300','SN30003','2022-11-20','Therms',0.0,10000.0,4000.0,6000.0,'Inactive','2021-12-15','/data/monitors/em003.log',365,'2021-12-10',5.0','Decommissioned pending upgrade');

-- Alumni Engagement Platform
CREATE TABLE alumni_engagement_platform
(
    platform_id               TEXT PRIMARY KEY,
    platform_name             TEXT,
    launch_date               TEXT,
    provider                  TEXT,
    url                       TEXT,
    user_base_count           INTEGER,
    active_monthly_users      INTEGER,
    features_list             TEXT,
    integration_options       TEXT,
    data_retention_policy     TEXT,
    security_certifications   TEXT,
    support_contact           TEXT,
    SLA                       TEXT,
    cost_per_month            REAL,
    currency                  TEXT,
    usage_metrics             TEXT,
    last_audit_date           TEXT,
    audit_result              TEXT,
    notes                     TEXT,
    status                    TEXT
);

INSERT INTO alumni_engagement_platform VALUES
('AP001','AlumniConnect','2018-09-01','AlumniTech','https://connect.university.edu',12000,8500,'Messaging;Events;Jobs','CRM;Email','5_years','ISO27001','support@alumnitech.com','99.9%_uptime',2500.00,'USD','login_count:15000;msg_sent:4200','2023-02-15','Pass','Stable platform','Active');

INSERT INTO alumni_engagement_platform VALUES
('AP002','LegacyNetwork','2020-01-15','LegacySolutions','https://legacy.university.edu',8000,6000,'Forums;Mentoring','SIS;HR','3_years','SOC2','help@legacysol.com','99.5%_uptime',1800.00,'USD','login_count:9000;posts:3400','2023-01-10','Pass','Minor UI updates','Active');

INSERT INTO alumni_engagement_platform VALUES
('AP003','FutureAlumni','2022-05-20','FutureInc','https://future.alumni.edu',5000,3000,'Live_Chat;Webinars','None','2_years','ISO27001','contact@futureinc.com','99%_uptime',1200.00,'USD','login_count:3500;webinars_attended:1200','2022-12-05','Pass','Beta version','Testing');

-- Student Health Survey
CREATE TABLE student_health_survey
(
    survey_id                 TEXT PRIMARY KEY,
    semester                  TEXT,
    year                      INTEGER,
    respondent_id             TEXT,
    age                       INTEGER,
    gender                    TEXT,
    major                     TEXT,
    gpa                       REAL,
    smoking_status            TEXT,
    alcohol_use               TEXT,
    exercise_frequency        TEXT,
    sleep_hours               REAL,
    stress_level              TEXT,
    diet_quality              TEXT,
    vaccination_status        TEXT,
    chronic_conditions        TEXT,
    mental_health_score       INTEGER,
    overall_satisfaction      TEXT,
    comments                  TEXT,
    submission_timestamp      TEXT
);

INSERT INTO student_health_survey VALUES
('HS001','Fall',2022,'STU1001',20,'Female','Biology',3.5,'Never','Occasional','3_times_weekly',7.0,'Medium','Good','Complete','None',78,'Satisfied','No comments','2022-11-15T14:30:00');

INSERT INTO student_health_survey VALUES
('HS002','Spring',2023,'STU1002',22,'Male','Computer_Science',3.8,'Occasional','Frequent','5_times_weekly',6.5,'High','Average','Incomplete','Flu',65,'Neutral','Would like more resources','2023-04-10T09:45:00');

INSERT INTO student_health_survey VALUES
('HS003','Fall',2023,'STU1003',19,'Nonbinary','Psychology',3.2,'Never','Never','1_time_weekly',8.0,'Low','Excellent','Complete','Asthma',85,'Very_Satisfied','Great survey','2023-10-02T16:20:00');

-- Vendor Performance Metric
CREATE TABLE vendor_performance_metric
(
    metric_id                 TEXT PRIMARY KEY,
    vendor_id                 TEXT,
    contract_id               TEXT,
    evaluation_period_start   TEXT,
    evaluation_period_end     TEXT,
    quality_score             REAL,
    delivery_score            REAL,
    compliance_score          REAL,
    cost_variance_percent     REAL,
    issue_count               INTEGER,
    escalation_level          TEXT,
    corrective_actions_taken  TEXT,
    overall_rating            REAL,
    reviewer                  TEXT,
    review_date               TEXT,
    notes                     TEXT,
    next_review_date          TEXT,
    status                    TEXT,
    weight_quality            REAL,
    weight_delivery           REAL,
    weight_cost               REAL
);

INSERT INTO vendor_performance_metric VALUES
('VM001','VEND100','CON200','2023-01-01','2023-12-31',4.5,4.2,4.8,2.0,1,'Low','Replaced faulty parts','4.6','AuditorA','2023-03-15','On time delivery','2024-03-15','Active',0.4,0.4,0.2);

INSERT INTO vendor_performance_metric VALUES
('VM002','VEND101','CON201','2022-07-01','2023-06-30',3.8,3.5,4.0,5.5,3,'Medium','Improved documentation','3.9','AuditorB','2023-02-10','Late invoices','2024-02-10','Active',0.3,0.3,0.4);

INSERT INTO vendor_performance_metric VALUES
('VM003','VEND102','CON202','2021-01-01','2021-12-31',4.9,5.0,5.0,0.5,0,'None','No issues','5.0','AuditorC','2022-01-05','Excellent performance','2023-01-05','Completed',0.5,0.3,0.2);

-- Sustainability Initiative Budget
CREATE TABLE sustainability_initiative_budget
(
    budget_id                  TEXT PRIMARY KEY,
    initiative_id              TEXT,
    fiscal_year                INTEGER,
    allocated_amount           REAL,
    spent_amount               REAL,
    remaining_amount           REAL,
    funding_source             TEXT,
    approval_date              TEXT,
    approved_by                TEXT,
    cost_center                TEXT,
    expense_category           TEXT,
    variance_reason            TEXT,
    notes                      TEXT,
    last_updated               TEXT,
    updated_by                 TEXT,
    currency                   TEXT,
    exchange_rate              REAL,
    target_reduction_percent   REAL,
    actual_reduction_percent   REAL,
    status                     TEXT
);

INSERT INTO sustainability_initiative_budget VALUES
('SB001','INIT300',2023,500000.0,320000.0,180000.0,'Green_Fund','2023-02-01','Director_X','CC101','Renewables','Higher material costs','Phase 1 completed','2023-06-15','Analyst_Y','USD',1.0,10.0,8.5,'Active');

INSERT INTO sustainability_initiative_budget VALUES
('SB002','INIT301',2022,300000.0,310000.0,-10000.0,'Campus_Budget','2022-01-20','Director_Z','CC102','Waste_Management','Unexpected disposal fees','Overrun due to new regulations','2022-12-20','Analyst_W','USD',1.0,5.0,6.2','Completed');

INSERT INTO sustainability_initiative_budget VALUES
('SB003','INIT302',2024,750000.0,0.0,750000.0,'External_Grant','2024-03-10','Director_Y','CC103','Energy_Efficiency','Initial allocation','Project kickoff','2024-04-01','Analyst_V','USD',1.0,12.0,0.0,'Planned');

-- Technology Patent Application
CREATE TABLE technology_patent_application
(
    application_id            TEXT PRIMARY KEY,
    patent_title              TEXT,
    invention_summary         TEXT,
    applicant_institution     TEXT,
    principal_inventor       TEXT,
    filing_date               TEXT,
    priority_date             TEXT,
    patent_office             TEXT,
    status                    TEXT,
    examiner_assigned         TEXT,
    technology_field          TEXT,
    classification_code       TEXT,
    claims_count              INTEGER,
    abstract_text             TEXT,
    supporting_documents_path TEXT,
    funding_source            TEXT,
    expected_grant_date       TEXT,
    grant_status              TEXT,
    notes                     TEXT,
    last_modified             TEXT
);

INSERT INTO technology_patent_application VALUES
('PA001','Self_Charging_Battery','Battery that harvests ambient energy','TechUniversity','Dr_Eva_Liu','2023-05-10','2023-04-01','USPTO','Pending','Exam_45','Energy_Storage','H01M','12','A battery that converts kinetic energy into electrical power','/docs/pa001/support','Gov_Grant','2024-01-15','Awaiting','First filing','2023-06-01');

INSERT INTO technology_patent_application VALUES
('PA002','AI_Diagnosis_System','AI system for early disease detection','MedicalInstitute','Prof_Raj_Patel','2022-11-20','2022-10-15','EPO','Approved','Exam_78','Artificial_Intelligence','G06N','20','System uses neural networks to analyze imaging data','/docs/pa002/support','Industry_Partner','2023-03-01','Granted','Second filing','2022-12-05');

INSERT INTO technology_patent_application VALUES
('PA003','Modular_Robotic_Arm','Reconfigurable robotic arm for manufacturing','EngineeringCollege','Dr_Sofia_Ng','2021-08-05','2021-07-01','JPO','Rejected','Exam_12','Robotics','B25J','8','Arm with interchangeable end effectors','/docs/pa003/support','University_Funds','2022-02-20','Rejected','Third filing','2021-09-10');