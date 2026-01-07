-- Media production schedule details for match broadcasts
CREATE TABLE Media_Production_Schedule_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    schedule_date TEXT,
    production_phase TEXT,
    studio_name TEXT,
    director TEXT,
    producer TEXT,
    camera_operator TEXT,
    sound_engineer TEXT,
    lighting_tech TEXT,
    editor TEXT,
    video_format TEXT,
    duration_minutes INTEGER,
    budget_usd REAL,
    expected_viewers INTEGER,
    stream_platform TEXT,
    live_flag INTEGER,
    crew_count INTEGER,
    equipment_list TEXT,
    notes TEXT,
    compliance_status TEXT,
    approval_signature TEXT,
    revision_number INTEGER
);
INSERT INTO Media_Production_Schedule_Details VALUES (1,'2025-03-15','pre‑production','Studio Alpha','John Doe','Maria Smith','Luis Gomez','Ana Patel','Mark Lee','Sophie Chen','MP4',120,250000.00,1500000,'StreamX',1,25,'CameraA,MicB,LightC','Initial planning','approved','JDA','1');
INSERT INTO Media_Production_Schedule_Details VALUES (2,'2025-04-01','production','Studio Beta','Emma Johnson','Carlos Ruiz','Nina Ko','Tom Hsu','Eve Novak','Ravi Singh','MOV',180,350000.00,2000000,'PlayNow',0,30,'CameraD,MicE,LightF','On‑site shoot','pending','EJH','2');
INSERT INTO Media_Production_Schedule_Details VALUES (3,'2025-04-20','post‑production','Studio Gamma','Liam Wong','Sofia Alvarez','Dmitri Petrov','Yara Lee','Omar Khalil','Aisha Khan','MKV',90,120000.00,800000,'ViewLive',1,15,'CameraG,MicH,LightI','Editing phase','approved','LWW','3');

-- Registry of community stakeholders linked to clubs
CREATE TABLE Club_Community_Stakeholder_Registry (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    stakeholder_name TEXT,
    stakeholder_type TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    address TEXT,
    city TEXT,
    region TEXT,
    country TEXT,
    partnership_start DATE,
    partnership_end DATE,
    contribution_amount REAL,
    contribution_type TEXT,
    involvement_level TEXT,
    active_flag INTEGER,
    notes TEXT,
    last_update TIMESTAMP,
    verification_status TEXT,
    legal_agreement_id TEXT,
    preferred_communication_channel TEXT,
    social_media_handle TEXT,
    risk_assessment_score INTEGER,
    compliance_review_date DATE,
    created_by TEXT,
    created_at TIMESTAMP
);
INSERT INTO Club_Community_Stakeholder_Registry VALUES (1,12,'Local Youth Center','nonprofit','info@lyc.org','5551234567','123 Main St','Springfield','Midwest','USA','2023-01-01','2025-12-31',50000.00,'cash','high',1,'Provides training space','2024-02-15','verified','AG123','email','@lyc','85','2024-01-10','admin','2024-02-15 10:00:00');
INSERT INTO Club_Community_Stakeholder_Registry VALUES (2,8,'City Hospital','healthcare','contact@cityhospital.com','5559876543','45 Health Ave','Riverton','North','USA','2022-07-01','2026-06-30',75000.00,'equipment','medium',1,'Medical support for athletes','2024-03-01','pending','AG456','phone','@cityhospital','70','2024-02-20','admin','2024-03-01 09:30:00');
INSERT INTO Club_Community_Stakeholder_Registry VALUES (3,5,'Green Energy Co','corporate','sales@greenenergy.com','5552223344','88 Solar Way','Greenville','South','USA','2024-01-01','2029-12-31',120000.00,'services','high',1,'Renewable energy partnership','2024-04-10','approved','AG789','email','@greenenergy','60','2024-04-05','admin','2024-04-10 14:20:00');

-- Audit records for stadium accessibility features
CREATE TABLE Stadium_Accessibility_Audit_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    audit_date DATE,
    auditor_name TEXT,
    wheelchair_ramp_status TEXT,
    tactile_paving_status TEXT,
    audio_assist_system TEXT,
    braille_signage_status TEXT,
    elevator_accessibility TEXT,
    seating_adaptations TEXT,
    restroom_adaptations TEXT,
    parking_accessibility TEXT,
    entry_gate_width_cm INTEGER,
    compliance_score INTEGER,
    violations_found INTEGER,
    corrective_action_required INTEGER,
    next_audit_due DATE,
    notes TEXT,
    overall_pass_flag INTEGER,
    audit_report_url TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    reference_document_id TEXT,
    region TEXT,
    city TEXT,
    country TEXT,
    reviewer_signature TEXT
);
INSERT INTO Stadium_Accessibility_Audit_Records VALUES (1,3,'2024-01-20','Laura Hill','good','good','installed','good','good','partial','good',90,92,0,0,'2025-01-20','All standards met','1','http://example.com/report1.pdf','2024-01-20 08:00:00','2024-01-20 08:00:00','DOC001','Midwest','Metro City','USA','LHH');
INSERT INTO Stadium_Accessibility_Audit_Records VALUES (2,7,'2024-03-05','Mike Torres','needs repair','good','not installed','missing','partial','good','partial',85,78,3,1,'2025-03-05','Ramp replacement required','0','http://example.com/report2.pdf','2024-03-05 09:15:00','2024-03-05 09:15:00','DOC002','South','Coast Town','USA','MT');
INSERT INTO Stadium_Accessibility_Audit_Records VALUES (3,11,'2024-06-12','Sofia Novak','good','good','installed','good','good','good','good',95,98,0,0,'2025-06-12','Excellent compliance','1','http://example.com/report3.pdf','2024-06-12 07:45:00','2024-06-12 07:45:00','DOC003','North','Lake City','USA','SN');

-- Meta‑information for fan engagement surveys at league level
CREATE TABLE League_Fan_Engagement_Surveys_Meta (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    survey_name TEXT,
    launch_date DATE,
    close_date DATE,
    target_audience TEXT,
    sample_size INTEGER,
    response_rate_percent REAL,
    distribution_method TEXT,
    language TEXT,
    version_number INTEGER,
    confidentiality_level TEXT,
    approved_by TEXT,
    approval_date DATE,
    data_storage_location TEXT,
    analysis_tool TEXT,
    sponsor_id INTEGER,
    incentive_offered TEXT,
    total_cost_usd REAL,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    survey_status TEXT,
    key_findings_summary TEXT,
    external_audit_flag INTEGER,
    audit_company TEXT
);
INSERT INTO League_Fan_Engagement_Surveys_Meta VALUES (1,2,'Season Kickoff Survey','2024-08-01','2024-08-31','ticket holders',15000,62.5,'email','English',1,'high','John Smith','2024-07-25','s3://league-surveys/kickoff','SPSS',3,'gift card','8000.00','Initial enthusiasm captured','2024-08-01 10:00:00','2024-08-31 23:59:59','closed','high satisfaction','0','');
INSERT INTO League_Fan_Engagement_Surveys_Meta VALUES (2,4,'Midseason Experience Survey','2024-12-01','2024-12-15','season ticket holders',12000,54.2,'mobile app','Spanish',2,'medium','Maria Lopez','2024-11-20','s3://league-surveys/midseason','R','5','discount coupon','6500.00','Mixed feedback on concessions','2024-12-01 09:00:00','2024-12-15 22:00:00','closed','food service concerns','1','AuditCo');
INSERT INTO League_Fan_Engagement_Surveys_Meta VALUES (3,5,'End of Season Survey','2025-05-01','2025-05-20','all fans',20000,71.0,'online portal','English',1,'high','Liam Patel','2025-04-20','s3://league-surveys/endseason','Python','7','charity donation','9000.00','Strong loyalty metrics','2025-05-01 08:30:00','2025-05-20 20:00:00','open','pending analysis','0','');

-- Research projects under team sports science departments
CREATE TABLE Team_Sports_Science_Research_Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    project_title TEXT,
    principal_investigator TEXT,
    start_date DATE,
    end_date DATE,
    funding_amount_usd REAL,
    funding_source TEXT,
    methodology TEXT,
    sample_size INTEGER,
    data_collection_technique TEXT,
    ethical_approval_flag INTEGER,
    ethics_committee TEXT,
    publication_status TEXT,
    journal_name TEXT,
    doi TEXT,
    impact_factor REAL,
    related_patent_id TEXT,
    status TEXT,
    progress_percent INTEGER,
    last_review_date DATE,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    collaboration_partners TEXT,
    data_repository_url TEXT,
    projected_outcome TEXT
);
INSERT INTO Team_Sports_Science_Research_Projects VALUES (1,9,'High‑Intensity Interval Training Effects','Dr Ahmed Khan','2023-09-01','2025-08-31',250000.00,'Sports Innovation Grant','randomized control','120','wearable sensors',1,'Ethics Board A','in review','','','', 'active',45,'2024-03-10','Monitoring adaptation','2023-09-01 12:00:00','2024-03-01 09:45:00','University X','http://repo.org/project1','improved VO2 max');
INSERT INTO Team_Sports_Science_Research_Projects VALUES (2,14,'Nutritional Interventions for Recovery','Prof Elena Rossi','2024-01-15','2026-12-31',180000.00,'Health Foundation','double blind','200','blood analysis',1,'Ethics Board B','pending','','','', 'planned',10,'2024-02-20','Baseline data collection','2024-01-15 08:30:00','2024-02-20 11:00:00','Institute Y','http://repo.org/project2','faster muscle repair');
INSERT INTO Team_Sports_Science_Research_Projects VALUES (3,3,'Sleep Quality and Performance Correlation','Dr Mark Liu','2022-05-01','2024-04-30',95000.00,'Club Internal Funds','observational','80','actigraphy',1,'Ethics Board C','published','Journal of Sports Medicine','10.1234/jsm2024','PAT56789','completed',100,'2024-04-30','Results integrated into training','2022-05-01 09:00:00','2024-04-30 17:00:00','Sleep Lab Co','http://repo.org/project3','optimal sleep schedule');

-- Log of player ethics and compliance incidents
CREATE TABLE Player_Ethics_Compliance_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    incident_date DATE,
    incident_type TEXT,
    description TEXT,
    governing_body TEXT,
    penalty_type TEXT,
    penalty_amount_usd REAL,
    suspension_days INTEGER,
    appeal_flag INTEGER,
    appeal_deadline DATE,
    outcome TEXT,
    resolution_date DATE,
    compliance_officer TEXT,
    notes TEXT,
    reported_by TEXT,
    confidentiality_level TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    status TEXT,
    follow_up_required INTEGER,
    follow_up_action TEXT,
    external_report_url TEXT,
    legal_case_id TEXT,
    remediation_plan TEXT
);
INSERT INTO Player_Ethics_Compliance_Log VALUES (1,10234,'2024-02-10','doping','positive test for prohibited substance','FA','fine',15000.00,30,0,NULL,'suspended','2024-02-20','Officer A','first offense','Team Doctor','confidential','2024-02-10 07:30:00','2024-02-20 10:00:00','resolved',0,'','http://regulation.org/case1','LC1001','mandatory education program');
INSERT INTO Player_Ethics_Compliance_Log VALUES (2,21567,'2024-05-05','unsportsmanlike conduct','violent altercation with opponent','FA','warning',0,0,1,'2024-05-20','warning issued','2024-05-07','Officer B','incident captured on video','Match Referee','public','2024-05-05 14:15:00','2024-05-07 09:00:00','under review',1,'mandatory counseling','http://regulation.org/case2','LC1002','behavioral counseling');
INSERT INTO Player_Ethics_Compliance_Log VALUES (3,30987,'2024-07-12','financial','unauthorized betting activity','FA','fine and suspension',20000.00,60,0,NULL,'suspended','2024-07-22','Officer C','investigation concluded','Compliance Dept','confidential','2024-07-12 10:45:00','2024-07-22 16:30:00','resolved',0,'','http://regulation.org/case3','LC1003','financial ethics training');

-- Economic impact analysis of sponsor activations
CREATE TABLE Sponsor_Impact_Economic_Analysis (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    activation_id INTEGER,
    activation_name TEXT,
    start_date DATE,
    end_date DATE,
    market_region TEXT,
    estimated_reach INTEGER,
    actual_reach INTEGER,
    brand_awareness_change_percent REAL,
    sales_uplift_usd REAL,
    cost_of_activation_usd REAL,
    roi_percent REAL,
    media_impressions INTEGER,
    social_engagements INTEGER,
    sentiment_score REAL,
    key_performance_indicators TEXT,
    methodology TEXT,
    data_source TEXT,
    validation_status TEXT,
    analyst_name TEXT,
    review_date DATE,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    approval_signature TEXT,
    confidentiality_level TEXT,
    external_report_url TEXT
);
INSERT INTO Sponsor_Impact_Economic_Analysis VALUES (1,12,301,'Stadium LED Banner','2024-03-01','2024-03-31','Midwest',500000,480000,3.2,120000.00,45000.00,166.7,800000,15000,0.85,'reach, sales, sentiment','survey & media monitoring','internal','validated','Analyst A','2024-04-05','Positive lift observed','2024-03-01 08:00:00','2024-04-05 12:00:00','AA123','high','http://sponsorreports.com/301');
INSERT INTO Sponsor_Impact_Economic_Analysis VALUES (2,8,402,'Fan Zone Social Campaign','2024-06-10','2024-06-20','South',300000,310000,5.0,200000.00,60000.00,233.3,1200000,25000,0.92,'social, sales','social media analytics','third‑party','validated','Analyst B','2024-07-01','Exceeded engagement targets','2024-06-10 09:30:00','2024-07-01 11:15:00','BB456','medium','http://sponsorreports.com/402');
INSERT INTO Sponsor_Impact_Economic_Analysis VALUES (3,15,509,'Virtual Reality Experience','2024-09-15','2024-09-30','North',150000,140000,2.5,80000.00,70000.00,114.3,500000,8000,0.78,'VR usage, sales','user tracking','internal','pending','Analyst C','2024-10-10','Moderate ROI','2024-09-15 10:00:00','2024-10-10 14:45:00','CC789','low','http://sponsorreports.com/509');

-- Tracker for broadcast equipment upgrades
CREATE TABLE Broadcast_Equipment_Upgrade_Tracker (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_network_id INTEGER,
    equipment_type TEXT,
    model_number TEXT,
    serial_number TEXT,
    purchase_date DATE,
    installation_date DATE,
    warranty_expiry DATE,
    vendor_name TEXT,
    cost_usd REAL,
    depreciation_years INTEGER,
    current_status TEXT,
    last_maintenance_date DATE,
    maintenance_cycle_days INTEGER,
    next_maintenance_due DATE,
    firmware_version TEXT,
    calibration_status TEXT,
    notes TEXT,
    approved_by TEXT,
    approval_date DATE,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    replacement_planned_flag INTEGER,
    planned_replacement_date DATE,
    asset_tag TEXT,
    location TEXT,
    compliance_certificate_id TEXT
);
INSERT INTO Broadcast_Equipment_Upgrade_Tracker VALUES (1,2,'4K Camera','CamX200','SN12345','2023-05-10','2023-06-01','2026-05-10','TechSupply','25000.00',5,'operational','2024-02-01',180,'2024-07-31','v3.1','calibrated','installed in Studio A','Manager A','2023-05-15','2024-02-01 09:00:00','2024-07-31 09:00:00',0,NULL,'CAMX200-001','Studio A','CERT001');
INSERT INTO Broadcast_Equipment_Upgrade_Tracker VALUES (2,4,'Audio Mixer','MixPro9','SN67890','2022-11-20','2022-12-05','2025-11-20','AudioGear','18000.00',4,'operational','2024-01-15',365,'2025-01-15','v2.5','calibrated','upgraded firmware','Manager B','2022-11-25','2024-01-15 10:30:00','2025-01-15 10:30:00',1,'2024-12-01','MIXPRO9-045','Control Room','CERT045');
INSERT INTO Broadcast_Equipment_Upgrade_Tracker VALUES (3,1,'Streaming Server','StreamX500','SN54321','2024-02-01','2024-02-10','2027-02-01','NetSolutions','40000.00',3,'operational','2024-03-01',90,'2024-05-30','v1.0','calibrated','initial deployment','Manager C','2024-02-05','2024-03-01 11:00:00','2024-05-30 11:00:00',0,NULL,'STRX500-777','Datacenter','CERT777');

-- Environmental sensor readings for venues
CREATE TABLE Venue_Environmental_Sensor_Readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    sensor_type TEXT,
    sensor_id TEXT,
    reading_timestamp TIMESTAMP,
    value_numeric REAL,
    value_units TEXT,
    status TEXT,
    battery_level_percent INTEGER,
    signal_strength_db INTEGER,
    calibration_date DATE,
    maintenance_date DATE,
    notes TEXT,
    recorded_by TEXT,
    data_quality_flag INTEGER,
    anomaly_flag INTEGER,
    latitude REAL,
    longitude REAL,
    altitude_meters REAL,
    firmware_version TEXT,
    associated_system TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    alert_threshold_low REAL,
    alert_threshold_high REAL,
    incident_report_id TEXT,
    external_data_source TEXT
);
INSERT INTO Venue_Environmental_Sensor_Readings VALUES (1,5,'temperature','TMP001','2024-04-01 10:00:00',22.5,'C','normal',95, -70,'2024-03-01','2024-03-20','stable','System A',1,0,40.7128,-74.0060,5.0,'v1.2','HVAC','2024-04-01 10:00:00','2024-04-01 10:05:00',18.0,26.0,'IR001','local');
INSERT INTO Venue_Environmental_Sensor_Readings VALUES (2,9,'humidity','HMD045','2024-04-01 10:05:00',45.0,'%','normal',88,-68,'2024-03-05','2024-03-22','within range','System B',1,0,34.0522,-118.2437,30.0,'v1.0','FAIR','2024-04-01 10:05:00','2024-04-01 10:10:00',30.0,60.0,'IR002','local');
INSERT INTO Venue_Environmental_Sensor_Readings VALUES (3,12,'air_quality','AQI078','2024-04-01 10:10:00',42.0,'AQI','warning',70,-80,'2024-03-10','2024-03-25','elevated pm2.5','System C',1,1,51.5074,-0.1278,15.0,'v2.1','Ventilation','2024-04-01 10:10:00','2024-04-01 10:15:00',0.0,35.0,'IR003','external');

-- Digital infrastructure assets owned by clubs
CREATE TABLE Club_Digital_Infrastructure_Assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    asset_type TEXT,
    asset_name TEXT,
    vendor TEXT,
    purchase_date DATE,
    warranty_expiry DATE,
    cost_usd REAL,
    license_key TEXT,
    ip_address TEXT,
    mac_address TEXT,
    operating_system TEXT,
    cpu_spec TEXT,
    ram_gb INTEGER,
    storage_tb REAL,
    data_center_location TEXT,
    redundancy_level TEXT,
    backup_schedule TEXT,
    security_compliance TEXT,
    last_audit_date DATE,
    audit_result TEXT,
    asset_status TEXT,
    depreciation_years INTEGER,
    assigned_department TEXT,
    responsible_owner TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    disposal_date DATE,
    disposal_method TEXT,
    notes TEXT
);
INSERT INTO Club_Digital_Infrastructure_Assets VALUES (1,3,'Server','WebAppServer01','Dell','2022-01-15','2025-01-15',15000.00,'LIC12345','192.168.1.10','00:1A:2B:3C:4D:5E','Linux','Intel Xeon','64','2.0','DataCenter Alpha','RAID5','daily','ISO27001','2024-01-20','pass','active',3,'IT','John Doe','2022-01-15 09:00:00','2024-02-01 10:30:00',NULL,NULL,'primary web server');
INSERT INTO Club_Digital_Infrastructure_Assets VALUES (2,7,'Network','SwitchCore02','Cisco','2023-06-01','2026-06-01',8000.00','LIC67890','192.168.2.1','00:1B:2C:3D:4E:5F','N/A','N/A','0.5','DataCenter Beta','N/A','weekly','PCI-DSS','2024-03-10','pass','active',3,'Network Ops','Alice Smith','2023-06-01 08:45:00','2024-03-10 11:00:00',NULL,NULL,'core aggregation switch');
INSERT INTO Club_Digital_Infrastructure_Assets VALUES (3,11,'Storage','NAS_Archive03','QNAP','2021-09-20','2024-09-20',12000.00','LIC54321','192.168.3.5','00:1C:2D:3E:4F:5G','FreeNAS','AMD Ryzen','128','4.0','DataCenter Gamma','RAID6','monthly','GDPR','2024-02-28','pass','decommissioned',3,'Archive','Bob Lee','2021-09-20 07:30:00','2024-02-28 09:15:00','2024-09-20','shred','used for historical match footage');

-- Sponsorship impact studies focusing on brand exposure metrics
CREATE TABLE Sponsor_Impact_Economic_Analysis (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    activation_id INTEGER,
    activation_name TEXT,
    start_date DATE,
    end_date DATE,
    market_region TEXT,
    estimated_reach INTEGER,
    actual_reach INTEGER,
    brand_awareness_change_percent REAL,
    sales_uplift_usd REAL,
    cost_of_activation_usd REAL,
    roi_percent REAL,
    media_impressions INTEGER,
    social_engagements INTEGER,
    sentiment_score REAL,
    key_performance_indicators TEXT,
    methodology TEXT,
    data_source TEXT,
    validation_status TEXT,
    analyst_name TEXT,
    review_date DATE,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    approval_signature TEXT,
    confidentiality_level TEXT,
    external_report_url TEXT
);
INSERT INTO Sponsor_Impact_Economic_Analysis VALUES (1,12,301,'Stadium LED Banner','2024-03-01','2024-03-31','Midwest',500000,480000,3.2,120000.00,45000.00,166.7,800000,15000,0.85,'reach, sales, sentiment','survey & media monitoring','internal','validated','Analyst A','2024-04-05','Positive lift observed','2024-03-01 08:00:00','2024-04-05 12:00:00','AA123','high','http://sponsorreports.com/301');
INSERT INTO Sponsor_Impact_Economic_Analysis VALUES (2,8,402,'Fan Zone Social Campaign','2024-06-10','2024-06-20','South',300000,310000,5.0,200000.00,60000.00,233.3,1200000,25000,0.92,'social, sales','social media analytics','third‑party','validated','Analyst B','2024-07-01','Exceeded engagement targets','2024-06-10 09:30:00','2024-07-01 11:15:00','BB456','medium','http://sponsorreports.com/402');
INSERT INTO Sponsor_Impact_Economic_Analysis VALUES (3,15,509,'Virtual Reality Experience','2024-09-15','2024-09-30','North',150000,140000,2.5,80000.00,70000.00,114.3,500000,8000,0.78,'VR usage, sales','user tracking','internal','pending','Analyst C','2024-10-10','Moderate ROI','2024-09-15 10:00:00','2024-10-10 14:45:00','CC789','low','http://sponsorreports.com/509');

-- Match operational risk assessments
CREATE TABLE Match_Operational_Risk_Assessments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    assessment_date DATE,
    risk_category TEXT,
    risk_level TEXT,
    description TEXT,
    mitigation_plan TEXT,
    responsible_party TEXT,
    status TEXT,
    review_date DATE,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    severity_score INTEGER,
    likelihood_score INTEGER,
    combined_risk_score INTEGER,
    contingency_trigger TEXT,
    resource_allocation_usd REAL,
    communication_channel TEXT,
    escalation_path TEXT,
    compliance_check_flag INTEGER,
    audit_reference_id TEXT,
    external_risk_rating TEXT,
    legal_implication_flag INTEGER,
    incident_history_reference TEXT,
    resolved_date DATE,
    resolution_summary TEXT,
    approved_by TEXT,
    approval_date DATE
);
INSERT INTO Match_Operational_Risk_Assessments VALUES (1,45,'2024-04-01','Security','high','Potential crowd surge at entry gates','Increase staff and open additional gates','Security Manager','mitigated','2024-04-02','Added temporary barriers','2024-04-01 06:30:00','2024-04-02 08:15:00',9,8,17,'crowd density >80%','50000.00','radio','Chief Security Officer','1','AUD001','Level 3','0','None','2024-04-03','crowd flow stabilized','Director Security','2024-04-02');
INSERT INTO Match_Operational_Risk_Assessments VALUES (2,78,'2024-05-12','Weather','medium','Heavy rain forecast could affect pitch','Deploy extra drainage and protect electronic gear','Facilities Lead','monitoring','2024-05-13','Ordered sandbags','2024-05-12 07:00:00','2024-05-13 09:30:00',6,5,11,'rainfall >30mm/hr','30000.00','email','Facilities Manager','1','AUD002','Level 2','0','Previous rain incident','2024-05-14','pitch remained playable','Director Facilities','2024-05-13');
INSERT INTO Match_Operational_Risk_Assessments VALUES (3,102,'2024-06-20','Technical','low','Broadcast equipment power fluctuation','Add UPS backup units','Broadcast Engineer','resolved','2024-06-21','UPS installed','2024-06-20 08:45:00','2024-06-21 10:00:00',3,3,6','power drop >5%','20000.00','phone','Head of Broadcast','1','AUD003','Level 1','0','None','2024-06-22','no interruptions recorded','Director Broadcast','2024-06-21');

-- Volunteer shift scheduling for match days
CREATE TABLE Volunteer_Shift_Schedules (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    volunteer_id INTEGER,
    match_id INTEGER,
    shift_date DATE,
    shift_start_time TEXT,
    shift_end_time TEXT,
    role TEXT,
    area_assigned TEXT,
    supervisor_name TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    shift_status TEXT,
    notes TEXT,
    training_completed_flag INTEGER,
    training_date DATE,
    certification_id TEXT,
    equipment_assigned TEXT,
    uniform_provided INTEGER,
    travel_assistance_provided INTEGER,
    meal_voucher_issued INTEGER,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    approved_by TEXT,
    approval_date DATE,
    feedback_rating INTEGER,
    feedback_comments TEXT,
    replacement_volunteer_id INTEGER,
    shift_swap_allowed INTEGER,
    emergency_contact_name TEXT,
    emergency_contact_phone TEXT
);
INSERT INTO Volunteer_Shift_Schedules VALUES (1,301,55,'2024-07-15','08:00','12:00','gate usher','north entrance','Laura Hunt','5551112222','laura.hunt@example.com','confirmed','first shift','1','2024-06-20','CERT001','badge','1','0','1','2024-07-01 09:00:00','2024-07-05 10:30:00','Coordinator A','2024-06-25',5,'great experience',NULL,1,'John Miller','5553334444');
INSERT INTO Volunteer_Shift_Schedules VALUES (2,302,55,'2024-07-15','12:00','16:00','concession stand','sector B','Mike Ross','5552223333','mike.ross@example.com','confirmed','needs supervision','1','2024-06-22','CERT002','apron','1','1','0','2024-07-01 09:05:00','2024-07-05 10:35:00','Coordinator B','2024-06-26',4,'good teamwork',NULL,1,'Sarah Lee','5554445555');
INSERT INTO Volunteer_Shift_Schedules VALUES (3,303,55,'2024-07-15','16:00','20:00','stadium cleaner','south wing','Eva Green','5553334444','eva.green@example.com','pending','awaiting approval','0',NULL,NULL,'cleaning kit','1','0','0','2024-07-01 09:10:00','2024-07-05 10:40:00','Coordinator C','2024-06-27',NULL,NULL,NULL,0,'Tom White','5555556666');