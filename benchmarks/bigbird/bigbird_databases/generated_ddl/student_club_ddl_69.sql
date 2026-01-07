-- Student financial aid application details
CREATE TABLE student_financial_aid_application
(
    application_id          TEXT PRIMARY KEY,
    student_id              TEXT,
    academic_year           TEXT,
    aid_type                TEXT,
    requested_amount        INTEGER,
    approved_amount         INTEGER,
    approval_status         TEXT,
    submission_date         TEXT,
    reviewer_id             TEXT,
    gpa                     REAL,
    credits_enrolled        INTEGER,
    major_id                TEXT,
    housing_status          TEXT,
    employment_status       TEXT,
    dependents              INTEGER,
    needs_analysis          TEXT,
    financial_need_score    REAL,
    award_letter_sent       TEXT,
    disbursement_date       TEXT,
    notes                   TEXT
);

INSERT INTO student_financial_aid_application VALUES
('APP001','STU1001','2023-2024','grant',15000,12000','approved','2023-01-15','REV01',3.6,15,'MAJ001','on_campus','part_time',0,'analysis1',85.5,'yes','2023-02-01','first_application');
INSERT INTO student_financial_aid_application VALUES
('APP002','STU1002','2023-2024','loan',20000,20000','approved','2023-01-18','REV02',3.2,12,'MAJ002','off_campus','full_time',1,'analysis2',78.0,'yes','2023-02-05','second_application');
INSERT INTO student_financial_aid_application VALUES
('APP003','STU1003','2023-2024','scholarship',10000,10000','pending','2023-01-20','REV03',3.9,18,'MAJ003','on_campus','unemployed',0,'analysis3',92.0,'no','2023-02-10','third_application');

-- Campus green certification details
CREATE TABLE campus_green_certification_detail
(
    certification_id           TEXT PRIMARY KEY,
    campus_building_id         TEXT,
    certification_body         TEXT,
    certification_level        TEXT,
    issue_date                 TEXT,
    expiry_date                TEXT,
    energy_score               REAL,
    water_score                REAL,
    waste_score                REAL,
    transportation_score       REAL,
    indoor_air_quality_score   REAL,
    green_space_percent        REAL,
    renewable_energy_percent   REAL,
    certification_status       TEXT,
    auditor_id                 TEXT,
    report_url                 TEXT,
    notes                      TEXT,
    compliance_documents       TEXT,
    last_review_date           TEXT,
    next_review_date           TEXT
);

INSERT INTO campus_green_certification_detail VALUES
('CERT001','BLD001','LEED','Gold','2022-03-01','2027-03-01',85.0,88.5,90.0,80.0,92.0,15.0,30.0,'active','AUD01','http://example.com/report1','initial_cert','docset1','2023-03-01','2024-03-01');
INSERT INTO campus_green_certification_detail VALUES
('CERT002','BLD002','BREEAM','Silver','2021-06-15','2026-06-15',78.0,80.0,75.0,70.0,85.0,12.0,25.0','active','AUD02','http://example.com/report2','renewal','docset2','2023-06-15','2024-06-15');
INSERT INTO campus_green_certification_detail VALUES
('CERT003','BLD003','ENERGY_STAR','Platinum','2023-01-10','2028-01-10',92.0,95.0,93.0,88.0,96.0,20.0,40.0','pending','AUD03','http://example.com/report3','awaiting_review','docset3','2023-01-10','2024-01-10');

-- Research dataset metadata
CREATE TABLE research_dataset_metadata
(
    dataset_id             TEXT PRIMARY KEY,
    project_id             TEXT,
    title                  TEXT,
    description            TEXT,
    creator_id             TEXT,
    created_date           TEXT,
    version                INTEGER,
    format                 TEXT,
    size_gb                REAL,
    access_level           TEXT,
    doi                    TEXT,
    publication_reference  TEXT,
    keywords               TEXT,
    related_projects       TEXT,
    data_quality_score     REAL,
    storage_location       TEXT,
    backup_location        TEXT,
    retention_policy       TEXT,
    last_updated           TEXT,
    notes                  TEXT
);

INSERT INTO research_dataset_metadata VALUES
('DS001','PROJ001','GenomeSeq','Whole_genome_sequencing_dataset','RES001','2022-11-01',1,'FASTQ',120.5,'restricted','10.1000/xyz123','Nature_2023','genomics,sequencing','PROJ002',98.5,'/data/storage1','/backup/storage1','5_years','2023-02-15','initial_release');
INSERT INTO research_dataset_metadata VALUES
('DS002','PROJ003','ClimateModel','Global_climate_model_output','RES002','2023-01-20',2,'NETCDF',250.0,'public','10.1000/abc456','Science_2024','climate,modeling','PROJ004',95.0,'/data/storage2','/backup/storage2','10_years','2023-03-01','updated_for_version2');
INSERT INTO research_dataset_metadata VALUES
('DS003','PROJ005','SocialSurvey','National_social_behavior_survey','RES003','2022-05-10',3,'CSV',80.0,'restricted','10.1000/def789','PNAS_2022','social,survey','PROJ006',90.0,'/data/storage3','/backup/storage3','3_years','2023-01-30','final_version');

-- Faculty sabbatical records
CREATE TABLE faculty_sabbatical_record
(
    sabbatical_id          TEXT PRIMARY KEY,
    faculty_id             TEXT,
    start_date             TEXT,
    end_date               TEXT,
    host_institution       TEXT,
    host_department        TEXT,
    research_topic         TEXT,
    funding_source         TEXT,
    total_amount           INTEGER,
    approval_status        TEXT,
    application_date       TEXT,
    approval_date          TEXT,
    report_submitted       TEXT,
    report_deadline        TEXT,
    publication_count      INTEGER,
    conference_attended    INTEGER,
    teaching_replacement_id TEXT,
    notes                  TEXT,
    last_modified          TEXT,
    auditor_id             TEXT,
    compliance_status     TEXT
);

INSERT INTO faculty_sabbatical_record VALUES
('SAB001','FAC1001','2023-07-01','2024-06-30','University_of_Paris','Dept_of_Physics','Quantum_Entanglement','NSF',120000,'approved','2023-01-15','2023-02-01','yes','2024-07-01',3,2,'FAC2001','first_sabbatical','2023-06-01','AUD10','compliant');
INSERT INTO faculty_sabbatical_record VALUES
('SAB002','FAC1002','2024-01-01','2024-12-31','MIT','Dept_of_Engineering','AI_Robotics','DARPA',150000,'pending','2023-03-20','', 'no','2025-01-15',0,0,'FAC2002','pending_approval','2023-09-15','AUD11','pending');
INSERT INTO faculty_sabbatical_record VALUES
('SAB003','FAC1003','2022-09-01','2023-08-31','University_of_Tokyo','Dept_of_Chemistry','Catalyst_Design','Private_Fund',90000,'approved','2022-02-10','2022-02-25','yes','2023-09-01',1,1,'FAC2003','completed_successfully','2023-08-31','AUD12','compliant');

-- Alumni event feedback
CREATE TABLE alumni_event_feedback
(
    feedback_id            TEXT PRIMARY KEY,
    alumni_id              TEXT,
    event_id               TEXT,
    rating                 INTEGER,
    comments               TEXT,
    survey_date            TEXT,
    net_promoter_score    INTEGER,
    attendance_status      TEXT,
    follow_up_action       TEXT,
    submitted_via          TEXT,
    email_opt_in           TEXT,
    phone_opt_in           TEXT,
    social_media_sharing   TEXT,
    future_interest        TEXT,
    volunteer_interest     TEXT,
    donation_intent        TEXT,
    feedback_category      TEXT,
    processed_by           TEXT,
    processing_date        TEXT,
    notes                  TEXT
);

INSERT INTO alumni_event_feedback VALUES
('FB001','ALU5001','EVT001',9,'Great_event','2023-05-10',8,'attended','send_thankyou','email','yes','no','yes','high','yes','yes','satisfaction','OP001','2023-05-12','first_feedback');
INSERT INTO alumni_event_feedback VALUES
('FB002','ALU5002','EVT002',7,'Good_but_crowded','2023-06-15',6,'attended','offer_discount','online_form','yes','yes','no','moderate','no','maybe','suggestion','OP002','2023-06-16','second_feedback');
INSERT INTO alumni_event_feedback VALUES
('FB003','ALU5003','EVT003',5,'Average_experience','2023-07-20',4,'absent','send_survey','phone','no','no','no','low','no','no','complaint','OP003','2023-07-21','third_feedback');

-- Health service patient survey
CREATE TABLE health_service_patient_survey
(
    survey_id               TEXT PRIMARY KEY,
    patient_id              TEXT,
    visit_id                TEXT,
    satisfaction_score      INTEGER,
    wait_time_minutes       INTEGER,
    provider_id             TEXT,
    cleanliness_score       INTEGER,
    communication_score     INTEGER,
    overall_experience      TEXT,
    survey_date             TEXT,
    follow_up_needed        TEXT,
    recommended_improvement TEXT,
    referral_source         TEXT,
    insurance_type          TEXT,
    appointment_type        TEXT,
    doctor_rating           INTEGER,
    nurse_rating            INTEGER,
    facility_rating         INTEGER,
    comments                TEXT,
    processed_by            TEXT
);

INSERT INTO health_service_patient_survey VALUES
('SURV001','PAT1001','VIS2001',9,10,'PROV01',8,9,'excellent','2023-04-01','no','none','online','private','checkup',9,8,9,'no_comments','PROC01');
INSERT INTO health_service_patient_survey VALUES
('SURV002','PAT1002','VIS2002',7,20,'PROV02',7,6,'good','2023-04-15','yes','shorter_wait','referral','public','follow_up',7,6,7,'wait_time_long','PROC02');
INSERT INTO health_service_patient_survey VALUES
('SURV003','PAT1003','VIS2003',5,30,'PROV03',5,4,'fair','2023-05-05','yes','more_staff','walk_in','public','emergency',5,4,5,'needs_improvement','PROC03');

-- Transportation route maintenance
CREATE TABLE transportation_route_maintenance
(
    maintenance_id          TEXT PRIMARY KEY,
    route_id                TEXT,
    scheduled_date          TEXT,
    crew_id                 TEXT,
    maintenance_type        TEXT,
    description             TEXT,
    duration_hours          INTEGER,
    road_condition_before  TEXT,
    road_condition_after   TEXT,
    materials_used          TEXT,
    cost_estimate           INTEGER,
    actual_cost             INTEGER,
    traffic_impact          TEXT,
    signage_updated         TEXT,
    weather_conditions      TEXT,
    permits_obtained        TEXT,
    supervisor_id           TEXT,
    notes                   TEXT,
    completion_status       TEXT,
    last_updated            TEXT
);

INSERT INTO transportation_route_maintenance VALUES
('MT001','RTE100','2023-08-01','CRW01','pavement_repair','fix_potholes',8,'poor','good','asphalt',5000,5200,'moderate','yes','sunny','yes','SUP01','first_maintenance','completed','2023-08-01');
INSERT INTO transportation_route_maintenance VALUES
('MT002','RTE101','2023-09-15','CRW02','signage_update','new_signs_installed',4,'good','good','signs',1500,1500,'low','yes','rainy','yes','SUP02','signage_update','completed','2023-09-15');
INSERT INTO transportation_route_maintenance VALUES
('MT003','RTE102','2023-10-10','CRW03','bridge_inspection','structural_check',6,'excellent','excellent','none',0,0,'none','no','cloudy','no','SUP03','bridge_check','completed','2023-10-10');

-- Facility asset inspection schedule
CREATE TABLE facility_asset_inspection_schedule
(
    schedule_id            TEXT PRIMARY KEY,
    asset_id               TEXT,
    inspection_type        TEXT,
    frequency_months       INTEGER,
    next_inspection_date   TEXT,
    last_inspection_date   TEXT,
    inspector_id           TEXT,
    status                 TEXT,
    findings               TEXT,
    corrective_action      TEXT,
    priority_level         TEXT,
    estimated_cost         INTEGER,
    actual_cost            INTEGER,
    downtime_hours         INTEGER,
    compliance_status      TEXT,
    documentation_url      TEXT,
    notes                  TEXT,
    created_by             TEXT,
    created_date           TEXT,
    last_modified          TEXT
);

INSERT INTO facility_asset_inspection_schedule VALUES
('SCH001','AST1001','safety','12','2024-01-15','2023-01-15','INSP01','pending','none','none','low',0,0,0,'compliant','http://docs.com/ast1001','first_schedule','ADMIN01','2023-01-10','2023-01-10');
INSERT INTO facility_asset_inspection_schedule VALUES
('SCH002','AST1002','performance','6','2023-07-20','2023-01-20','INSP02','completed','minor_wear','replace_part','medium',200,180,4,'compliant','http://docs.com/ast1002','routine_check','ADMIN02','2023-01-20','2023-07-20');
INSERT INTO facility_asset_inspection_schedule VALUES
('SCH003','AST1003','environmental','24','2025-03-10','2023-03-10','INSP03','pending','none','none','low',0,0,0,'compliant','http://docs.com/ast1003','long_term_plan','ADMIN03','2023-03-01','2023-03-01');

-- Grant funding source
CREATE TABLE grant_funding_source
(
    source_id               TEXT PRIMARY KEY,
    source_name             TEXT,
    source_type             TEXT,
    contact_person          TEXT,
    contact_email           TEXT,
    phone_number            TEXT,
    address                 TEXT,
    city                    TEXT,
    state                   TEXT,
    zip_code                INTEGER,
    website_url             TEXT,
    funding_category        TEXT,
    eligibility_criteria    TEXT,
    application_deadline    TEXT,
    award_cycle             TEXT,
    average_grant_amount    INTEGER,
    total_funds_available  INTEGER,
    reporting_requirements TEXT,
    notes                   TEXT,
    last_updated            TEXT
);

INSERT INTO grant_funding_source VALUES
('GS001','National_Science_Foundation','government','Dr_Smith','smith@nsf.gov','5551234567','2415_Evans_St','Alexandria','VA',22314,'http://nsf.gov','research','US_based_institutions','2023-10-01','annual',100000,5000000,'annual_report','primary_science_funder','2023-09-15');
INSERT INTO grant_funding_source VALUES
('GS002','Tech_Innovation_Fund','private','Ms_Lee','lee@tif.org','5559876543','12_Innovate_Way','San_Francisco','CA',94107,'http://tif.org','technology','startups_and_SMBs','2023-12-15','biannual',50000,2000000,'quarterly_report','focus_on_AI','2023-11-20');
INSERT INTO grant_funding_source VALUES
('GS003','Global_Education_Trust','nonprofit','Mr_Jones','jones@get.org','5553210987','78_Edu_Ave','Boston','MA',02115,'http://get.org','education','nonprofit_educational_orgs','2024-01-30','annual',75000,3000000,'annual_audit','supports_community_programs','2023-12-05');

-- Campus event media plan
CREATE TABLE campus_event_media_plan
(
    plan_id                TEXT PRIMARY KEY,
    event_id               TEXT,
    media_type             TEXT,
    platform               TEXT,
    content_description    TEXT,
    scheduled_release_date TEXT,
    responsible_person     TEXT,
    budget                 INTEGER,
    approval_status        TEXT,
    target_audience        TEXT,
    key_message            TEXT,
    hashtags               TEXT,
    creatives_url          TEXT,
    metrics_goal           TEXT,
    actual_release_date    TEXT,
    performance_metrics    TEXT,
    notes                  TEXT,
    created_by             TEXT,
    created_date           TEXT,
    last_modified          TEXT
);

INSERT INTO campus_event_media_plan VALUES
('MP001','EVT001','video','YouTube','event_highlights','2023-05-20','PR_Team','2000','approved','students','join_us_for_celebration','#CampusFest','http://media.com/vid1','views>5000','2023-05-21','views=6000;likes=300','first_video_plan','MARK01','2023-04-01','2023-05-01');
INSERT INTO campus_event_media_plan VALUES
('MP002','EVT002','image','Instagram','poster_design','2023-06-10','Design_Team','800','pending','alumni','stay_connected','#AlumniMeet','http://media.com/img1','engagement>1000','2023-06-11','engagement=850','pending_design','MARK02','2023-05-15','2023-05-20');
INSERT INTO campus_event_media_plan VALUES
('MP003','EVT003','live_stream','Facebook','keynote_stream','2023-07-05','IT_Team','1500','approved','faculty','innovate_together','#ResearchSummit','http://media.com/stream1','viewers>2000','2023-07-05','viewers=2100','successful_stream','MARK03','2023-06-01','2023-06-20');