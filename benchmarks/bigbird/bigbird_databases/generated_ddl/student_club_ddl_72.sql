-- Academic journal metadata
CREATE TABLE academic_journal
(
    journal_id           TEXT PRIMARY KEY,
    title                TEXT,
    issn                 TEXT,
    publisher            TEXT,
    impact_factor        REAL,
    language             TEXT,
    start_year           INTEGER,
    frequency            TEXT,
    open_access          TEXT,
    website              TEXT,
    editorial_board      TEXT,
    subject_area         TEXT,
    country              TEXT,
    city                 TEXT,
    address              TEXT,
    phone                TEXT,
    email                TEXT,
    subscription_price   REAL,
    notes                TEXT,
    created_at           TEXT
);

INSERT INTO academic_journal (journal_id,title,issn,publisher,impact_factor,language,start_year,frequency,open_access,website,editorial_board,subject_area,country,city,address,phone,email,subscription_price,notes,created_at)
VALUES ('J001','Journal of Data Science','1234-5678','Data Press',3.5,'English',2000,'Quarterly','Yes','http://datasciencejournal.org','Board1','Computer Science','USA','New York','123 Main St','5551234','contact@datasciencejournal.org',150.00,'Leading journal','2023-01-01');

INSERT INTO academic_journal (journal_id,title,issn,publisher,impact_factor,language,start_year,frequency,open_access,website,editorial_board,subject_area,country,city,address,phone,email,subscription_price,notes,created_at)
VALUES ('J002','International Review of Ecology','2345-6789','Eco Publishing',4.2,'English',1995,'Monthly','No','http://eco-review.org','Board2','Environmental Science','Canada','Toronto','456 Oak Ave','5555678','info@eco-review.org',200.00,'High impact','2023-02-15');

INSERT INTO academic_journal (journal_id,title,issn,publisher,impact_factor,language,start_year,frequency,open_access,website,editorial_board,subject_area,country,city,address,phone,email,subscription_price,notes,created_at)
VALUES ('J003','Advances in Applied Mathematics','3456-7890','MathWorld',2.8,'English',2010,'Biannual','Yes','http://appliedmath.org','Board3','Mathematics','UK','London','789 Pine Rd','5559012','editor@appliedmath.org',120.00,'Open access','2023-03-10');

-- Student health records
CREATE TABLE student_health_record
(
    record_id           TEXT PRIMARY KEY,
    student_id          TEXT,
    visit_date          TEXT,
    clinic_name         TEXT,
    diagnosis           TEXT,
    treatment           TEXT,
    prescription        TEXT,
    follow_up_date      TEXT,
    physician_id        TEXT,
    blood_pressure      TEXT,
    heart_rate          INTEGER,
    weight_kg           REAL,
    height_cm           REAL,
    bmi                 REAL,
    allergies           TEXT,
    immunizations       TEXT,
    notes               TEXT,
    created_at          TEXT,
    updated_at          TEXT,
    status              TEXT
);

INSERT INTO student_health_record (record_id,student_id,visit_date,clinic_name,diagnosis,treatment,prescription,follow_up_date,physician_id,blood_pressure,heart_rate,weight_kg,height_cm,bmi,allergies,immunizations,notes,created_at,updated_at,status)
VALUES ('R001','S1001','2023-01-12','Campus Health Center','Common Cold','Rest and hydration','None','2023-01-19','P001','120/80',72,68.0,170.0,23.5,'None','Flu Shot','Mild symptoms','2023-01-12','2023-01-12','Closed');

INSERT INTO student_health_record (record_id,student_id,visit_date,clinic_name,diagnosis,treatment,prescription,follow_up_date,physician_id,blood_pressure,heart_rate,weight_kg,height_cm,bmi,allergies,immunizations,notes,created_at,updated_at,status)
VALUES ('R002','S1002','2023-02-05','Campus Health Center','Sprained Ankle','Physical therapy','Ibuprofen','2023-02-12','P002','115/75',68,75.0,175.0,24.5','Peanuts','MMR','Requires brace','2023-02-05','2023-02-06','Open');

INSERT INTO student_health_record (record_id,student_id,visit_date,clinic_name,diagnosis,treatment,prescription,follow_up_date,physician_id,blood_pressure,heart_rate,weight_kg,height_cm,bmi,allergies,immunizations,notes,created_at,updated_at,status)
VALUES ('R003','S1003','2023-03-20','Campus Health Center','Seasonal Allergies','Antihistamines','Loratadine','2023-04-01','P003','118/78',70,62.0,168.0,22.0','None','Hepatitis B','Follow up in 6 weeks','2023-03-20','2023-03-20','Open');

-- Faculty appointment details
CREATE TABLE faculty_appointment
(
    appointment_id        TEXT PRIMARY KEY,
    faculty_id            TEXT,
    department            TEXT,
    position_title        TEXT,
    start_date            TEXT,
    end_date              TEXT,
    tenure_status         TEXT,
    salary                REAL,
    employment_type       TEXT,
    office_number         TEXT,
    phone                 TEXT,
    email                 TEXT,
    research_area         TEXT,
    teaching_load         INTEGER,
    admin_duties          TEXT,
    committee_membership  TEXT,
    evaluation_score      REAL,
    promotion_cycle       TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    status                TEXT
);

INSERT INTO faculty_appointment (appointment_id,faculty_id,department,position_title,start_date,end_date,tenure_status,salary,employment_type,office_number,phone,email,research_area,teaching_load,admin_duties,committee_membership,evaluation_score,promotion_cycle,notes,created_at,updated_at,status)
VALUES ('A001','F001','Computer Science','Associate Professor','2020-08-15','', 'Tenured',85000,'Full-time','CS-210','5551111','f001@university.edu','Machine Learning',3,'Curriculum Development','Curriculum Committee',4.2,'2025','Promoted from Assistant','2023-01-01','2023-01-01','Active');

INSERT INTO faculty_appointment (appointment_id,faculty_id,department,position_title,start_date,end_date,tenure_status,salary,employment_type,office_number,phone,email,research_area,teaching_load,admin_duties,committee_membership,evaluation_score,promotion_cycle,notes,created_at,updated_at,status)
VALUES ('A002','F002','Biology','Assistant Professor','2022-09-01','', 'Tenure-Track',65000,'Full-time','BIO-105','5552222','f002@university.edu','Marine Ecology',4,'Lab Management','Research Committee',3.8,'2027','First year appointment','2023-02-10','2023-02-10','Active');

INSERT INTO faculty_appointment (appointment_id,faculty_id,department,position_title,start_date,end_date,tenure_status,salary,employment_type,office_number,phone,email,research_area,teaching_load,admin_duties,committee_membership,evaluation_score,promotion_cycle,notes,created_at,updated_at,status)
VALUES ('A003','F003','History','Professor','2015-01-05','', 'Tenured',90000,'Full-time','HIST-300','5553333','f003@university.edu','Modern European History',2,'Department Chair','Leadership Committee',4.7,'2024','Chair for 2 years','2023-03-15','2023-03-15','Active');

-- Grant proposal review records
CREATE TABLE grant_proposal_review
(
    review_id            TEXT PRIMARY KEY,
    proposal_id          TEXT,
    reviewer_id          TEXT,
    review_date          TEXT,
    score                REAL,
    recommendation       TEXT,
    comments             TEXT,
    conflict_of_interest TEXT,
    review_round         INTEGER,
    status               TEXT,
    revised_score        REAL,
    final_decision       TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    reviewer_affiliation TEXT,
    review_method        TEXT,
    funding_cycle        TEXT,
    eligibility_checked TEXT,
    disclosure_date      TEXT
);

INSERT INTO grant_proposal_review (review_id,proposal_id,reviewer_id,review_date,score,recommendation,comments,conflict_of_interest,review_round,status,revised_score,final_decision,notes,created_at,updated_at,reviewer_affiliation,review_method,funding_cycle,eligibility_checked,disclosure_date)
VALUES ('RV001','P001','R001','2023-01-20',4.5,'Fund','Strong methodology','No','1','Pending',4.7,'Approve','All criteria met','2023-01-20','2023-01-20','Science Dept','Blind','2023','Yes','2023-01-15');

INSERT INTO grant_proposal_review (review_id,proposal_id,reviewer_id,review_date,score,recommendation,comments,conflict_of_interest,review_round,status,revised_score,final_decision,notes,created_at,updated_at,reviewer_affiliation,review_method,funding_cycle,eligibility_checked,disclosure_date)
VALUES ('RV002','P002','R002','2023-02-10',3.0,'Reject','Insufficient preliminary data','No','1','Completed',3.2,'Reject','Needs more data','2023-02-10','2023-02-10','Engineering Dept','Open','2023','Yes','2023-02-05');

INSERT INTO grant_proposal_review (review_id,proposal_id,reviewer_id,review_date,score,recommendation,comments,conflict_of_interest,review_round,status,revised_score,final_decision,notes,created_at,updated_at,reviewer_affiliation,review_method,funding_cycle,eligibility_checked,disclosure_date)
VALUES ('RV003','P003','R003','2023-03-05',4.0,'Fund','Well‑structured and feasible','No','2','Pending',4.1,'Approve','Minor revisions required','2023-03-05','2023-03-05','Medical School','Blind','2023','Yes','2023-02-28');

-- Facility inspection reports
CREATE TABLE facility_inspection_report
(
    report_id                TEXT PRIMARY KEY,
    facility_id              TEXT,
    inspector_id             TEXT,
    inspection_date          TEXT,
    overall_score            REAL,
    safety_compliance        TEXT,
    fire_code_status         TEXT,
    electrical_status        TEXT,
    plumbing_status          TEXT,
    hvac_status              TEXT,
    structural_integrity     TEXT,
    cleanliness_level        TEXT,
    notes                    TEXT,
    corrective_actions       TEXT,
    follow_up_date           TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    inspection_type          TEXT,
    area_covered_sqft        INTEGER,
    inspector_department     TEXT,
    report_version           INTEGER
);

INSERT INTO facility_inspection_report (report_id,facility_id,inspector_id,inspection_date,overall_score,safety_compliance,fire_code_status,electrical_status,plumbing_status,hvac_status,structural_integrity,cleanliness_level,notes,corrective_actions,follow_up_date,created_at,updated_at,inspection_type,area_covered_sqft,inspector_department,report_version)
VALUES ('FR001','F001','I001','2023-01-15',85.0,'Compliant','Pass','Good','Good','Good','Good','High','Routine annual inspection','Replace hallway lights','2023-02-01','2023-01-15','2023-01-15','Annual',5000,'Facilities',1);

INSERT INTO facility_inspection_report (report_id,facility_id,inspector_id,inspection_date,overall_score,safety_compliance,fire_code_status,electrical_status,plumbing_status,hvac_status,structural_integrity,cleanliness_level,notes,corrective_actions,follow_up_date,created_at,updated_at,inspection_type,area_covered_sqft,inspector_department,report_version)
VALUES ('FR002','F002','I002','2023-02-20',70.5,'Non‑Compliant','Fail','Fair','Poor','Fair','Fair','Medium','Fire alarm system outdated','Upgrade alarm system','2023-03-15','2023-02-20','2023-02-20','Special','3000','Safety',1);

INSERT INTO facility_inspection_report (report_id,facility_id,inspector_id,inspection_date,overall_score,safety_compliance,fire_code_status,electrical_status,plumbing_status,hvac_status,structural_integrity,cleanliness_level,notes,corrective_actions,follow_up_date,created_at,updated_at,inspection_type,area_covered_sqft,inspector_department,report_version)
VALUES ('FR003','F003','I003','2023-03-10',92.0,'Compliant','Pass','Excellent','Excellent','Excellent','Excellent','High','All systems functioning','No action needed','N/A','2023-03-10','2023-03-10','2023-03-10','Quarterly',2000,'Facilities',2);

-- Transportation incident log
CREATE TABLE transportation_incident_log
(
    incident_id                TEXT PRIMARY KEY,
    vehicle_id                 TEXT,
    driver_id                  TEXT,
    incident_date              TEXT,
    incident_type              TEXT,
    location                   TEXT,
    severity_level             TEXT,
    description                TEXT,
    damages_estimate           REAL,
    police_report_number       TEXT,
    insurance_claim_number     TEXT,
    resolved_date              TEXT,
    outcome                    TEXT,
    notes                      TEXT,
    created_at                 TEXT,
    updated_at                 TEXT,
    incident_category          TEXT,
    weather_conditions         TEXT,
    road_surface               TEXT,
    witnesses_contact_info     TEXT
);

INSERT INTO transportation_incident_log (incident_id,vehicle_id,driver_id,incident_date,incident_type,location,severity_level,description,damages_estimate,police_report_number,insurance_claim_number,resolved_date,outcome,notes,created_at,updated_at,incident_category,weather_conditions,road_surface,witnesses_contact_info)
VALUES ('IN001','V001','D001','2023-01-05','Collision','Lot A','Minor','Rear‑end low speed','500.00','PR12345','IC9876','2023-01-08','Resolved','No injuries','2023-01-05','2023-01-08','Vehicle','Clear','Dry','John Doe 5557777');

INSERT INTO transportation_incident_log (incident_id,vehicle_id,driver_id,incident_date,incident_type,location,severity_level,description,damages_estimate,police_report_number,insurance_claim_number,resolved_date,outcome,notes,created_at,updated_at,incident_category,weather_conditions,road_surface,witnesses_contact_info)
VALUES ('IN002','V002','D002','2023-02-12','Slip','Parking Ramp','Major','Vehicle slid on ice','3000.00','PR23456','IC8765','2023-02-20','Resolved','Minor injuries','2023-02-12','2023-02-20','Weather','Snowy','Icy','Jane Smith 5558888');

INSERT INTO transportation_incident_log (incident_id,vehicle_id,driver_id,incident_date,incident_type,location,severity_level,description,damages_estimate,police_report_number,insurance_claim_number,resolved_date,outcome,notes,created_at,updated_at,incident_category,weather_conditions,road_surface,witnesses_contact_info)
VALUES ('IN003','V003','D003','2023-03-22','Hit and Run','Campus Blvd','Severe','Vehicle struck and fled','8000.00','PR34567','IC7654','2023-04-01','Pending','Investigation ongoing','2023-03-22','2023-04-01','Crime','Clear','Wet','None');

-- Community service records
CREATE TABLE community_service_record
(
    service_id               TEXT PRIMARY KEY,
    member_id                TEXT,
    organization_name        TEXT,
    role_description         TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    hours_contributed        REAL,
    impact_description       TEXT,
    supervisor_name          TEXT,
    supervisor_contact       TEXT,
    certification_received   TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    service_category         TEXT,
    location_city            TEXT,
    location_state           TEXT,
    verification_status      TEXT,
    related_event_id         TEXT,
    feedback_score           REAL
);

INSERT INTO community_service_record (service_id,member_id,organization_name,role_description,start_date,end_date,hours_contributed,impact_description,supervisor_name,supervisor_contact,certification_received,notes,created_at,updated_at,service_category,location_city,location_state,verification_status,related_event_id,feedback_score)
VALUES ('CS001','M001','Food Bank','Food Sorting','2023-01-10','2023-01-12',12.5,'Provided meals to 200 families','Anna Lee','5551122','Yes','Great teamwork','2023-01-10','2023-01-12','Volunteer','Springfield','IL','Verified','E001',4.5);

INSERT INTO community_service_record (service_id,member_id,organization_name,role_description,start_date,end_date,hours_contributed,impact_description,supervisor_name,supervisor_contact,certification_received,notes,created_at,updated_at,service_category,location_city,location_state,verification_status,related_event_id,feedback_score)
VALUES ('CS002','M002','River Cleanup','Trash Collection','2023-02-05','2023-02-05',6.0,'Removed 150kg of waste from riverbank','Bob Green','5552233','No','Sunny day','2023-02-05','2023-02-05','Environment','Riverdale','NY','Verified','E002',4.8);

INSERT INTO community_service_record (service_id,member_id,organization_name,role_description,start_date,end_date,hours_contributed,impact_description,supervisor_name,supervisor_contact,certification_received,notes,created_at,updated_at,service_category,location_city,location_state,verification_status,related_event_id,feedback_score)
VALUES ('CS003','M003','Senior Center','Companion Visits','2023-03-01','2023-03-31',30.0,'Regular visits to reduce loneliness','Carol White','5553344','Yes','Consistent schedule','2023-03-01','2023-03-31','Social','Lakeside','CA','Pending','E003',4.2);

-- Digital resource usage logs
CREATE TABLE digital_resource_usage
(
    usage_id               TEXT PRIMARY KEY,
    resource_id            TEXT,
    user_id                TEXT,
    access_date            TEXT,
    access_time            TEXT,
    device_type            TEXT,
    ip_address             TEXT,
    duration_minutes       INTEGER,
    purpose                TEXT,
    outcome                TEXT,
    notes                  TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    access_method          TEXT,
    content_category       TEXT,
    authentication_method  TEXT,
    browser_name           TEXT,
    operating_system       TEXT,
    location_country       TEXT,
    bandwidth_used_mb      REAL
);

INSERT INTO digital_resource_usage (usage_id,resource_id,user_id,access_date,access_time,device_type,ip_address,duration_minutes,purpose,outcome,notes,created_at,updated_at,access_method,content_category,authentication_method,browser_name,operating_system,location_country,bandwidth_used_mb)
VALUES ('DU001','R001','U001','2023-01-20','09:15:00','Laptop','192.168.1.10',45,'Research','Success','Accessed dataset','2023-01-20','2023-01-20','Web','Data','SSO','Chrome','Windows','USA',120.5);

INSERT INTO digital_resource_usage (usage_id,resource_id,user_id,access_date,access_time,device_type,ip_address,duration_minutes,purpose,outcome,notes,created_at,updated_at,access_method,content_category,authentication_method,browser_name,operating_system,location_country,bandwidth_used_mb)
VALUES ('DU002','R002','U002','2023-02-11','14:30:00','Tablet','10.0.0.5',30,'Learning','Success','Viewed video lecture','2023-02-11','2023-02-11','App','Video','OAuth','Safari','iOS','Canada',85.0);

INSERT INTO digital_resource_usage (usage_id,resource_id,user_id,access_date,access_time,device_type,ip_address,duration_minutes,purpose,outcome,notes,created_at,updated_at,access_method,content_category,authentication_method,browser_name,operating_system,location_country,bandwidth_used_mb)
VALUES ('DU003','R003','U003','2023-03-05','20:45:00','Smartphone','172.16.0.3',15,'Communication','Success','Sent message','2023-03-05','2023-03-05','Web','Messaging','Password','Firefox','Android','UK',25.3);

-- Environmental monitoring stations
CREATE TABLE environmental_monitoring_station
(
    station_id                TEXT PRIMARY KEY,
    station_name              TEXT,
    latitude                  REAL,
    longitude                 REAL,
    elevation_m               REAL,
    installed_date           TEXT,
    sensor_type              TEXT,
    measurement_interval_min INTEGER,
    last_maintenance_date    TEXT,
    operational_status       TEXT,
    manager_contact          TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    data_retention_years    INTEGER,
    calibration_date         TEXT,
    power_source             TEXT,
    communication_protocol   TEXT,
    firmware_version         TEXT,
    hardware_model           TEXT
);

INSERT INTO environmental_monitoring_station (station_id,station_name,latitude,longitude,elevation_m,installed_date,sensor_type,measurement_interval_min,last_maintenance_date,operational_status,manager_contact,notes,created_at,updated_at,data_retention_years,calibration_date,power_source,communication_protocol,firmware_version,hardware_model)
VALUES ('ES001','North Ridge','45.1234','-122.5678','350','2022-06-01','Air Quality','15','2023-01-10','Active','Mike Green 5559900','Monitors PM2.5','2022-06-01','2023-01-10',5,'2023-01-01','Solar','LoRa','v1.2','AQM-100');

INSERT INTO environmental_monitoring_station (station_id,station_name,latitude,longitude,elevation_m,installed_date,sensor_type,measurement_interval_min,last_maintenance_date,operational_status,manager_contact,notes,created_at,updated_at,data_retention_years,calibration_date,power_source,communication_protocol,firmware_version,hardware_model)
VALUES ('ES002','River Bend','46.5678','-123.1234','120','2021-09-15','Water Level','30','2023-02-05','Active','Sara Blue 5552211','Measures flood risk','2021-09-15','2023-02-05',7,'2023-01-20','Battery','Cellular','v2.0','WL-200');

INSERT INTO environmental_monitoring_station (station_id,station_name,latitude,longitude,elevation_m,installed_date,sensor_type,measurement_interval_min,last_maintenance_date,operational_status,manager_contact,notes,created_at,updated_at,data_retention_years,calibration_date,power_source,communication_protocol,firmware_version,hardware_model)
VALUES ('ES003','Urban Park','44.8765','-121.4321','15','2023-01-20','Noise','5','2023-03-01','Active','Tom Gray 5553322','Tracks ambient noise','2023-01-20','2023-03-01',3,'2023-02-20','Mains','WiFi','v1.0','ND-50');

-- Sustainability project budget tracking
CREATE TABLE sustainability_project_budget
(
    budget_id               TEXT PRIMARY KEY,
    project_id              TEXT,
    fiscal_year             TEXT,
    allocated_amount        REAL,
    spent_amount            REAL,
    remaining_amount        REAL,
    funding_source          TEXT,
    approval_date           TEXT,
    project_manager         TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    budget_status           TEXT,
    revision_number         INTEGER,
    last_revision_date      TEXT,
    cost_center_code        TEXT,
    expense_category        TEXT,
    reporting_period        TEXT,
    external_audit_required TEXT,
    contingency_fund        REAL
);

INSERT INTO sustainability_project_budget (budget_id,project_id,fiscal_year,allocated_amount,spent_amount,remaining_amount,funding_source,approval_date,project_manager,notes,created_at,updated_at,budget_status,revision_number,last_revision_date,cost_center_code,expense_category,reporting_period,external_audit_required,contingency_fund)
VALUES ('SB001','SP001','2023','50000',12000,38000','Green Fund','2023-01-05','Laura White','Solar panel installation','2023-01-05','2023-03-01','Open',1,'2023-03-01','CC100','Capital','Q1','No',5000);

INSERT INTO sustainability_project_budget (budget_id,project_id,fiscal_year,allocated_amount,spent_amount,remaining_amount,funding_source,approval_date,project_manager,notes,created_at,updated_at,budget_status,revision_number,last_revision_date,cost_center_code,expense_category,reporting_period,external_audit_required,contingency_fund)
VALUES ('SB002','SP002','2023','30000',25000,5000','Energy Grant','2023-02-10','Mark Brown','LED lighting upgrade','2023-02-10','2023-04-15','Closed',2,'2023-04-15','CC200','Operating','Q2','Yes',3000);

INSERT INTO sustainability_project_budget (budget_id,project_id,fiscal_year,allocated_amount,spent_amount,remaining_amount,funding_source,approval_date,project_manager,notes,created_at,updated_at,budget_status,revision_number,last_revision_date,cost_center_code,expense_category,reporting_period,external_audit_required,contingency_fund)
VALUES ('SB003','SP003','2023','75000',40000,35000','University Endowment','2023-03-01','Nina Patel','Rainwater harvesting system','2023-03-01','2023-05-20','Open',1,'2023-05-20','CC300','Capital','Q2','No',7500);