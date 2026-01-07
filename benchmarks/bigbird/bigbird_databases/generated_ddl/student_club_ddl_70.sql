-- Faculty research output metrics per year
CREATE TABLE faculty_research_output_metric
(
    metric_id                TEXT PRIMARY KEY,
    faculty_id               TEXT,
    year                     INTEGER,
    publications_count      INTEGER,
    citations_count          INTEGER,
    h_index                  INTEGER,
    i10_index                INTEGER,
    grants_awarded           INTEGER,
    patents_filed            INTEGER,
    research_hours           INTEGER,
    collaborations           INTEGER,
    conference_presentations INTEGER,
    books_authored           INTEGER,
    student_supervisions     INTEGER,
    external_funding_usd     REAL,
    internal_funding_usd     REAL,
    awards_received          INTEGER,
    media_mentions           INTEGER,
    impact_factor_avg        REAL,
    research_domain          TEXT,
    notes                    TEXT
);

INSERT INTO faculty_research_output_metric (metric_id,faculty_id,year,publications_count,citations_count,h_index,i10_index,grants_awarded,patents_filed,research_hours,collaborations,conference_presentations,books_authored,student_supervisions,external_funding_usd,internal_funding_usd,awards_received,media_mentions,impact_factor_avg,research_domain,notes) VALUES 
('M001','F001',2022,12,340,15,8,3,1,2000,5,4,1,6,150000.00,50000.00,2,5,3.4,'ComputerScience','First year data'),
('M002','F002',2022,8,210,10,5,2,0,1500,3,2,0,4,90000.00,30000.00,1,2,2.8,'Biology','Steady output'),
('M003','F003',2022,15,560,20,12,5,2,2500,7,6,2,8,250000.00,80000.00,3,7,4.1,'Physics','High impact');

-- Student extracurricular activities
CREATE TABLE student_extracurricular_activity
(
    activity_id          TEXT PRIMARY KEY,
    student_id           TEXT,
    activity_name        TEXT,
    role                 TEXT,
    start_date           TEXT,
    end_date             TEXT,
    hours_per_week       INTEGER,
    advisor_id           TEXT,
    department           TEXT,
    campus_location      TEXT,
    achievement          TEXT,
    recognition_level    TEXT,
    funding_source       TEXT,
    team_size            INTEGER,
    sponsor_name         TEXT,
    description          TEXT,
    status               TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    notes                TEXT,
    category             TEXT
);

INSERT INTO student_extracurricular_activity (activity_id,student_id,activity_name,role,start_date,end_date,hours_per_week,advisor_id,department,campus_location,achievement,recognition_level,funding_source,team_size,sponsor_name,description,status,created_at,updated_at,notes,category) VALUES 
('A001','S001','Robotics Club','President','2021-09-01','2023-05-30',8,'ADV001','Engineering','North Campus','National Championship','Gold','University Grant',12,'TechCorp','Design and build autonomous robots','Active','2021-09-01','2023-01-15','N/A','STEM'),
('A002','S002','Debate Team','Member','2020-01-15','2022-12-20',4,'ADV002','Humanities','East Campus','Regional Finals','Silver','Student Fees',5,'DebateCo','Competitive debate on public policy','Completed','2020-01-15','2022-12-21','N/A','Arts'),
('A003','S003','Volunteer Tutoring','Coordinator','2022-02-10','2023-04-30',6,'ADV003','Education','South Campus','100 hours tutored','Bronze','Community Fund',1,'Local Library','Provide tutoring for K-12 students','Active','2022-02-10','2023-02-05','N/A','Service');

-- Alumni travel grant records
CREATE TABLE alumni_travel_grant
(
    grant_id           TEXT PRIMARY KEY,
    alumni_id          TEXT,
    destination        TEXT,
    purpose            TEXT,
    travel_start_date  TEXT,
    travel_end_date    TEXT,
    amount_awarded     REAL,
    amount_requested   REAL,
    approval_status    TEXT,
    sponsor_org        TEXT,
    travel_mode        TEXT,
    accommodation      TEXT,
    meals_allowance    REAL,
    incident_reported  TEXT,
    report_submitted   TEXT,
    notes              TEXT,
    created_at         TEXT,
    updated_at         TEXT,
    currency           TEXT,
    exchange_rate      REAL,
    grant_term         TEXT
);

INSERT INTO alumni_travel_grant (grant_id,alumni_id,destination,purpose,travel_start_date,travel_end_date,amount_awarded,amount_requested,approval_status,sponsor_org,travel_mode,accommodation,meals_allowance,incident_reported,report_submitted,notes,created_at,updated_at,currency,exchange_rate,grant_term) VALUES 
('G001','AL001','Berlin','Conference Presentation','2023-03-10','2023-03-15',1500.00,2000.00','Approved','GlobalTech','Air','Hotel','300.00','No','Yes','N/A','2023-01-20','2023-02-05','EUR',1.10,'One-time'),
('G002','AL002','Tokyo','Research Collaboration','2023-06-01','2023-06-20',2500.00,3000.00','Pending','ResearchFund','Air','HostFamily','500.00','No','No','Urgent','2023-02-15','2023-02-20','JPY',0.009,'One-year'),
('G003','AL003','Sydney','Field Study','2023-09-05','2023-09-12',1800.00,2500.00','Rejected','AlumniAssoc','Air','Airbnb','250.00','Yes','No','Insufficient funds','2023-03-10','2023-03-15','AUD',0.70,'One-time');

-- Library digital preservation log
CREATE TABLE library_digital_preservation_log
(
    log_id               TEXT PRIMARY KEY,
    item_id              TEXT,
    item_type            TEXT,
    preservation_method  TEXT,
    technician_id        TEXT,
    start_date           TEXT,
    end_date             TEXT,
    status               TEXT,
    checksum_before      TEXT,
    checksum_after       TEXT,
    storage_location     TEXT,
    file_format          TEXT,
    file_size_bytes      INTEGER,
    preservation_notes   TEXT,
    quality_check_passed TEXT,
    reviewer_id          TEXT,
    reviewed_date        TEXT,
    metadata_updated     TEXT,
    access_restriction   TEXT,
    preservation_version TEXT,
    notes                TEXT
);

INSERT INTO library_digital_preservation_log (log_id,item_id,item_type,preservation_method,technician_id,start_date,end_date,status,checksum_before,checksum_after,storage_location,file_format,file_size_bytes,preservation_notes,quality_check_passed,reviewer_id,reviewed_date,metadata_updated,access_restriction,preservation_version,notes) VALUES 
('L001','I001','Manuscript','FormatMigration','T001','2023-01-10','2023-01-15','Completed','abc123','def456','ColdStorage','PDF',5242880,'Converted to PDF/A','Yes','R001','2023-01-20','Yes','Restricted','v1','N/A'),
('L002','I002','Photograph','MetadataEnrichment','T002','2023-02-05','2023-02-07','Completed','ghi789','jkl012','DigitalVault','TIFF',10485760,'Added descriptive metadata','Yes','R002','2023-02-10','Yes','Open','v2','N/A'),
('L003','I003','AudioRecording','BitrateNormalization','T003','2023-03-12','2023-03-14','Completed','mno345','pqr678','AudioArchive','WAV',20971520,'Standardized to 44kHz','Yes','R003','2023-03-20','Yes','Restricted','v1','N/A');

-- Campus bike share stations
CREATE TABLE campus_bike_share_station
(
    station_id               TEXT PRIMARY KEY,
    station_name             TEXT,
    latitude                 REAL,
    longitude                REAL,
    total_docks              INTEGER,
    available_bikes          INTEGER,
    last_maintenance_date    TEXT,
    maintenance_company      TEXT,
    installed_date           TEXT,
    zone                     TEXT,
    address                  TEXT,
    city                     TEXT,
    state                    TEXT,
    zip_code                 INTEGER,
    hourly_rate              REAL,
    daily_rate               REAL,
    monthly_rate             REAL,
    subscription_required    TEXT,
    payment_method           TEXT,
    usage_statistics         TEXT,
    notes                    TEXT,
    capacity_utilization     REAL
);

INSERT INTO campus_bike_share_station (station_id,station_name,latitude,longitude,total_docks,available_bikes,last_maintenance_date,maintenance_company,installed_date,zone,address,city,state,zip_code,hourly_rate,daily_rate,monthly_rate,subscription_required,payment_method,usage_statistics,notes,capacity_utilization) VALUES 
('BS001','Main Quad','40.7128','-74.0060',30,12','2023-04-01','BikeCo','2021-09-15','North','123 Campus Rd','Metro City','NY',10001,2.50,15.00,100.00','Yes','CreditCard','High','Near library',0.80),
('BS002','Science Wing','40.7135','-74.0055',25,8','2023-03-20','BikeCo','2022-01-10','East','456 Science Dr','Metro City','NY',10002,2.50,15.00,100.00','No','App','Medium','Next to lab',0.60),
('BS003','Athletics Center','40.7140','-74.0048',20,5','2023-04-10','BikeCo','2022-08-05','South','789 Sports Ln','Metro City','NY',10003,2.50,15.00,100.00','Yes','CreditCard','Low','Near gym',0.40);

-- Health service lab results
CREATE TABLE health_service_lab_result
(
    result_id           TEXT PRIMARY KEY,
    patient_id          TEXT,
    test_code           TEXT,
    test_name           TEXT,
    result_value        TEXT,
    units               TEXT,
    reference_range      TEXT,
    collection_date     TEXT,
    result_date         TEXT,
    lab_technician_id   TEXT,
    physician_id        TEXT,
    comments            TEXT,
    flagged             TEXT,
    urgency_level       TEXT,
    sample_type         TEXT,
    specimen_id         TEXT,
    centrifuge_speed_rpm INTEGER,
    centrifuge_time_min INTEGER,
    storage_temp_c      REAL,
    quality_control_passed TEXT,
    notes               TEXT
);

INSERT INTO health_service_lab_result (result_id,patient_id,test_code,test_name,result_value,units,reference_range,collection_date,result_date,lab_technician_id,physician_id,comments,flagged,urgency_level,sample_type,specimen_id,centrifuge_speed_rpm,centrifuge_time_min,storage_temp_c,quality_control_passed,notes) VALUES 
('R001','P001','CBC001','Complete Blood Count','5.2','10^9/L','4.0-10.0','2023-04-01','2023-04-02','LT001','DR001','Normal','No','Routine','Blood','SP001',1500,10,4.0,'Yes','N/A'),
('R002','P002','GLU01','Glucose','110','mg/dL','70-99','2023-04-05','2023-04-06','LT002','DR002','Slightly elevated','Yes','Urgent','Serum','SP002',1200,8,2.0,'Yes','Fasting sample'),
('R003','P003','LIP01','Lipid Panel','200','mg/dL','<200','2023-04-10','2023-04-12','LT003','DR003','Borderline high','Yes','Routine','Plasma','SP003',1300,9,2.5,'Yes','N/A');

-- Environmental impact metrics
CREATE TABLE environmental_impact_metric
(
    metric_id           TEXT PRIMARY KEY,
    project_id          TEXT,
    metric_name         TEXT,
    measurement_date    TEXT,
    value               REAL,
    unit                TEXT,
    baseline_value      REAL,
    target_value        REAL,
    variance            REAL,
    data_source         TEXT,
    collector_id        TEXT,
    verification_status TEXT,
    notes               TEXT,
    created_at          TEXT,
    updated_at          TEXT,
    region              TEXT,
    ecosystem_type      TEXT,
    impact_category     TEXT,
    mitigation_action   TEXT,
    responsible_party   TEXT,
    reporting_period    TEXT,
    confidence_interval TEXT
);

INSERT INTO environmental_impact_metric (metric_id,project_id,metric_name,measurement_date,value,unit,baseline_value,target_value,variance,data_source,collector_id,verification_status,notes,created_at,updated_at,region,ecosystem_type,impact_category,mitigation_action,responsible_party,reporting_period,confidence_interval) VALUES 
('EM001','PRJ001','CO2 Emissions','2023-03-31',1200.5,'tonnes',1300.0,1100.0,-99.5','SensorNetwork','CL001','Verified','Reduced after upgrades','2023-04-01','2023-04-05','North','Forest','Emission','Install filters','EnvDept','Q1 2023','95%'),
('EM002','PRJ002','Water Usage','2023-03-31',4500,'cubic meters',5000,4000,-500','UtilityBills','CL002','Verified','Conservation measures effective','2023-04-02','2023-04-06','South','Wetland','Resource','Upgrade irrigation','Facilities','Q1 2023','90%'),
('EM003','PRJ003','Waste Diversion Rate','2023-03-31',85,'percent',75,90,10','AuditReport','CL003','Pending','Goal not yet met','2023-04-03','2023-04-07','East','Urban','Waste','Increase recycling stations','SustainabilityTeam','Q1 2023','80%');

-- Technology roadmap
CREATE TABLE technology_roadmap
(
    roadmap_id            TEXT PRIMARY KEY,
    technology_name      TEXT,
    version               TEXT,
    release_date          TEXT,
    end_of_life_date     TEXT,
    owner_team            TEXT,
    status                TEXT,
    priority              TEXT,
    strategic_alignment   TEXT,
    budget_usd            REAL,
    resources_required    TEXT,
    risk_level            TEXT,
    dependencies          TEXT,
    milestones            TEXT,
    next_release_date     TEXT,
    comments              TEXT,
    created_by            TEXT,
    created_at            TEXT,
    updated_by            TEXT,
    updated_at            TEXT,
    notes                 TEXT,
    roadmap_category      TEXT
);

INSERT INTO technology_roadmap (roadmap_id,technology_name,version,release_date,end_of_life_date,owner_team,status,priority,strategic_alignment,budget_usd,resources_required,risk_level,dependencies,milestones,next_release_date,comments,created_by,created_at,updated_by,updated_at,notes,roadmap_category) VALUES 
('TR001','CampusWifi','v2.1','2023-01-15','2028-01-15','ITDept','Active','High','Connectivity','250000.00','Engineers,Software','Medium','LegacyRouter','Phase1,Phase2','2023-06-01','Upgrade APs','Alice','2023-01-01','Bob','2023-02-01','N/A','Infrastructure'),
('TR002','StudentPortal','v5.0','2022-09-01','2027-09-01','WebTeam','Planned','Medium','StudentEngagement','150000.00','Developers,Designers','Low','DatabaseUpgrade','Design,Implementation','2023-12-15','Add mobile support','Carol','2022-08-20','Dave','2022-09-10','N/A','Software'),
('TR003','EnergyMonitoring','v1.0','2023-03-01','2030-03-01','EnergyTeam','Active','High','Sustainability','300000.00','Sensors,Analysts','High','BuildingManagement','Pilot,FullRollout','2024-01-01','Integrate with IoT','Eve','2023-02-15','Frank','2023-03-05','N/A','IoT');

-- Grant peer review
CREATE TABLE grant_peer_review
(
    review_id               TEXT PRIMARY KEY,
    grant_application_id    TEXT,
    reviewer_id             TEXT,
    review_date             TEXT,
    score_overall           INTEGER,
    score_novelty           INTEGER,
    score_feasibility       INTEGER,
    score_impact            INTEGER,
    recommendation          TEXT,
    comments                TEXT,
    conflict_of_interest    TEXT,
    disclosed_funding       TEXT,
    review_type             TEXT,
    review_status           TEXT,
    follow_up_required      TEXT,
    follow_up_date          TEXT,
    revised_score           INTEGER,
    final_decision          TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT
);

INSERT INTO grant_peer_review (review_id,grant_application_id,reviewer_id,review_date,score_overall,score_novelty,score_feasibility,score_impact,recommendation,comments,conflict_of_interest,disclosed_funding,review_type,review_status,follow_up_required,follow_up_date,revised_score,final_decision,notes,created_at,updated_at) VALUES 
('RV001','GA001','RVW001','2023-02-15',85,90,80,88,'Fund','Strong proposal, minor revisions needed','No','None','External','Completed','Yes','2023-03-01',90,'Approved','N/A','2023-02-16','2023-02-20'),
('RV002','GA002','RVW002','2023-02-20',70,65,75,68,'Reject','Lacks clear methodology','No','None','Internal','Completed','No',NULL,70,'Rejected','N/A','2023-02-21','2023-02-22'),
('RV003','GA003','RVW003','2023-02-25',78,80,75,77,'Fund','Promising interdisciplinary work','Yes','External Funding','External','Pending','Yes','2023-03-15',80,'Approved Pending','Conflict disclosed','2023-02-26','2023-02-27');

-- Community survey responses
CREATE TABLE community_survey_response
(
    response_id            TEXT PRIMARY KEY,
    survey_id              TEXT,
    respondent_id          TEXT,
    response_date          TEXT,
    age                    INTEGER,
    gender                 TEXT,
    education_level        TEXT,
    employment_status      TEXT,
    income_bracket         TEXT,
    satisfaction_score     INTEGER,
    net_promoter_score    INTEGER,
    comments               TEXT,
    location_city          TEXT,
    location_state         TEXT,
    device_used            TEXT,
    time_spent_minutes    INTEGER,
    completed              TEXT,
    consent_given          TEXT,
    referral_source        TEXT,
    demographics_notes     TEXT,
    survey_version         TEXT,
    notes                  TEXT
);

INSERT INTO community_survey_response (response_id,survey_id,respondent_id,response_date,age,gender,education_level,employment_status,income_bracket,satisfaction_score,net_promoter_score,comments,location_city,location_state,device_used,time_spent_minutes,completed,consent_given,referral_source,demographics_notes,survey_version,notes) VALUES 
('SR001','SV001','R001','2023-04-01',34,'Female','Bachelor','Employed','50k-75k',8,9,'Very satisfied','Metro City','NY','Mobile',12,'Yes','Yes','Email','N/A','v1','N/A'),
('SR002','SV001','R002','2023-04-02',45,'Male','Master','Self-Employed','75k-100k',6,4,'Some issues with navigation','Metro City','NY','Desktop',9,'Yes','Yes','SocialMedia','N/A','v1','N/A'),
('SR003','SV001','R003','2023-04-03',28,'Other','HighSchool','Student','<50k',9,10,'Excellent experience','Metro City','NY','Tablet',7,'Yes','Yes','Friend','N/A','v1','N/A');