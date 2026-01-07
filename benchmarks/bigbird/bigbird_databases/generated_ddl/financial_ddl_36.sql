-- Sustainability report providing environmental metrics per quarter
CREATE TABLE sustainability_report
(
    report_id                 INTEGER PRIMARY KEY,
    year                      INTEGER NOT NULL,
    quarter                   INTEGER NOT NULL,
    total_energy_consumed     REAL NOT NULL,
    renewable_percentage      REAL NOT NULL,
    co2_emissions             REAL NOT NULL,
    water_usage               REAL NOT NULL,
    waste_generated           REAL NOT NULL,
    hvac_efficiency           REAL NOT NULL,
    lighting_efficiency       REAL NOT NULL,
    transportation_emissions  REAL NOT NULL,
    procurement_score         REAL NOT NULL,
    employee_engagement_score REAL NOT NULL,
    stakeholder_feedback      TEXT NOT NULL,
    certification_status      TEXT NOT NULL,
    audit_date                DATE NOT NULL,
    external_audit_firm       TEXT NOT NULL,
    notes                     TEXT,
    created_at                DATE NOT NULL,
    updated_at                DATE NOT NULL
);
INSERT INTO sustainability_report VALUES (1,2023,1,12345.6,45.2,567.8,8901.2,345.6,85.4,90.1,120.5,78.9,88,'Positive','Certified','2023-03-15','AuditCo','Initial report','2023-03-01','2023-03-10');
INSERT INTO sustainability_report VALUES (2,2023,2,13000.0,48.0,540.0,9100.5,320.0,86.0,91.2,115.0,80.0,90,'Neutral','Pending','2023-06-20','AuditCo','Midyear update','2023-06-01','2023-06-21');
INSERT INTO sustainability_report VALUES (3,2023,3,12780.3,46.5,555.5,9050.0,330.2,85.8,90.8,118.2,79.5,89,'Positive','Certified','2023-09-18','AuditCo','Q3 results','2023-09-01','2023-09-19');

-- Log of corporate events such as meetings, trainings, and conferences
CREATE TABLE corporate_event_log
(
    event_id                INTEGER PRIMARY KEY,
    event_name              TEXT NOT NULL,
    event_type              TEXT NOT NULL,
    location                TEXT NOT NULL,
    start_date              DATE NOT NULL,
    end_date                DATE NOT NULL,
    organizer               TEXT NOT NULL,
    participants_estimate   INTEGER NOT NULL,
    budget                  REAL NOT NULL,
    sponsors                TEXT,
    outcome                 TEXT,
    attendees_feedback      TEXT,
    media_coverage          TEXT,
    internal_notes          TEXT,
    created_at              DATE NOT NULL,
    updated_at              DATE NOT NULL,
    risk_level              TEXT,
    compliance_status       TEXT,
    regulatory_review       TEXT,
    follow_up_actions       TEXT
);
INSERT INTO corporate_event_log VALUES (101,'Annual Strategy Meeting','Meeting','Headquarters','2023-02-10','2023-02-10','StrategyTeam',150,250000,'FinanceDept','Approved','Positive','LocalNews','NotesA','2023-01-15','2023-02-12','Low','Compliant','None','Prepare Q2 plan');
INSERT INTO corporate_event_log VALUES (102,'Cybersecurity Workshop','Training','Online','2023-04-05','2023-04-05','ITSecurity','80',50000,'TechPartner','Completed','Good','InternalBlog','NotesB','2023-03-20','2023-04-06','Medium','Compliant','None','Send certificates');
INSERT INTO corporate_event_log VALUES (103,'Community Outreach Fair','Community','RegionalCenter','2023-07-20','2023-07-21','CSRTeam',300,120000,'LocalBiz','Successful','Excellent','RegionalPaper','NotesC','2023-06-30','2023-07-22','Low','Compliant','Reviewed','Plan next fair');

-- Records of employee wellness assessments
CREATE TABLE employee_wellness_record
(
    record_id                 INTEGER PRIMARY KEY,
    employee_id              INTEGER NOT NULL,
    assessment_date          DATE NOT NULL,
    stress_level             INTEGER NOT NULL,
    sleep_hours              REAL NOT NULL,
    exercise_minutes         INTEGER NOT NULL,
    diet_quality             INTEGER NOT NULL,
    bmi                      REAL NOT NULL,
    blood_pressure_systolic  INTEGER NOT NULL,
    blood_pressure_diastolic INTEGER NOT NULL,
    cholesterol_level        REAL NOT NULL,
    glucose_level            REAL NOT NULL,
    mental_health_score      INTEGER NOT NULL,
    vaccination_status       TEXT NOT NULL,
    smoking_status           TEXT NOT NULL,
    alcohol_consumption      INTEGER NOT NULL,
    ergonomic_rating         INTEGER NOT NULL,
    wellness_program_participation TEXT NOT NULL,
    notes                    TEXT,
    created_at               DATE NOT NULL
);
INSERT INTO employee_wellness_record VALUES (1001,2001,'2023-03-01',3,7.5,30,4,22.5,120,80,180.0,90.0,85,'UpToDate','NonSmoker',2,5,'Yes','All good','2023-03-02');
INSERT INTO employee_wellness_record VALUES (1002,2002,'2023-06-15',4,6.0,15,3,27.0,130,85,200.0,110.0,70,'Due','Smoker',5,3,'No','Needs follow up','2023-06-16');
INSERT INTO employee_wellness_record VALUES (1003,2003,'2023-09-10',2,8.0,45,5,23.0,110,75,170.0,85.0,90,'UpToDate','NonSmoker',1,4,'Yes','Excellent','2023-09-11');

-- Tracking usage of digital assets such as documents and media files
CREATE TABLE digital_asset_usage
(
    usage_id               INTEGER PRIMARY KEY,
    asset_id               TEXT NOT NULL,
    asset_type             TEXT NOT NULL,
    user_id                INTEGER NOT NULL,
    access_date            DATE NOT NULL,
    access_time            TEXT NOT NULL,
    duration_seconds       INTEGER NOT NULL,
    download_flag          INTEGER NOT NULL,
    view_count             INTEGER NOT NULL,
    edit_count             INTEGER NOT NULL,
    share_count            INTEGER NOT NULL,
    device_type            TEXT NOT NULL,
    ip_address             TEXT NOT NULL,
    location               TEXT NOT NULL,
    purpose                TEXT NOT NULL,
    compliance_flag        INTEGER NOT NULL,
    data_sensitivity       TEXT NOT NULL,
    retention_period_days  INTEGER NOT NULL,
    notes                  TEXT,
    recorded_at            DATE NOT NULL
);
INSERT INTO digital_asset_usage VALUES (5001,'DOC123','Document',101,'2023-02-20','09:15:00',300,1,2,0,'Desktop','192.168.1.10','HQ','Review',1,'Confidential',365,'First access','2023-02-20');
INSERT INTO digital_asset_usage VALUES (5002,'IMG456','Image',102,'2023-04-12','14:30:00',60,0,1,0,'Mobile','10.0.0.5','Branch','Presentation',1,'Public',0,'Viewed on tablet','2023-04-12');
INSERT INTO digital_asset_usage VALUES (5003,'VID789','Video',103,'2023-07-05','11:45:00',1200,1,0,1,'Laptop','172.16.0.2','Remote','Training',1,'Restricted',180,'Downloaded for offline use','2023-07-05');

-- Assessment of risks associated with supply chain partners
CREATE TABLE supply_chain_risk_assessment
(
    assessment_id                INTEGER PRIMARY KEY,
    supplier_id                  INTEGER NOT NULL,
    assessment_date              DATE NOT NULL,
    risk_score                   REAL NOT NULL,
    financial_risk               INTEGER NOT NULL,
    geopolitical_risk            INTEGER NOT NULL,
    environmental_risk           INTEGER NOT NULL,
    compliance_risk              INTEGER NOT NULL,
    operational_risk             INTEGER NOT NULL,
    cyber_risk                   INTEGER NOT NULL,
    delivery_performance_score   REAL NOT NULL,
    quality_score                REAL NOT NULL,
    contract_status              TEXT NOT NULL,
    mitigation_plan              TEXT,
    next_review_date             DATE,
    assessor_name                TEXT NOT NULL,
    notes                        TEXT,
    created_at                   DATE NOT NULL,
    updated_at                   DATE NOT NULL,
    overall_status               TEXT NOT NULL
);
INSERT INTO supply_chain_risk_assessment VALUES (3001,4001,'2023-03-10',78.5,2,3,1,1,2,1,92.0,88.5,'Active','Increase audits','2023-09-10','RiskTeam','Stable supplier','2023-03-11','2023-03-15','Low');
INSERT INTO supply_chain_risk_assessment VALUES (3002,4002,'2023-06-20',65.0,3,4,2,2,3,2,85.0,80.0,'Pending','Diversify sources','2023-12-20','RiskTeam','Watch geopolitical tensions','2023-06-21','2023-06-22','Medium');
INSERT INTO supply_chain_risk_assessment VALUES (3003,4003,'2023-09-05',90.0,1,2,1,1,1,1,95.0,93.0,'Active','Maintain current relationship','2024-03-05','RiskTeam','Excellent performance','2023-09-06','2023-09-07','Low');

-- Monitoring stations for ecological data collection
CREATE TABLE eco_monitoring_station
(
    station_id               INTEGER PRIMARY KEY,
    station_name             TEXT NOT NULL,
    latitude                 REAL NOT NULL,
    longitude                REAL NOT NULL,
    elevation_m              INTEGER NOT NULL,
    installation_date        DATE NOT NULL,
    sensor_type              TEXT NOT NULL,
    measurement_interval_seconds INTEGER NOT NULL,
    last_maintenance         DATE NOT NULL,
    firmware_version         TEXT NOT NULL,
    battery_status           TEXT NOT NULL,
    connectivity_status      TEXT NOT NULL,
    data_quality_score       REAL NOT NULL,
    calibration_date         DATE NOT NULL,
    owner_department         TEXT NOT NULL,
    notes                    TEXT,
    created_at               DATE NOT NULL,
    updated_at               DATE NOT NULL,
    active_flag              INTEGER NOT NULL,
    region_code              TEXT NOT NULL
);
INSERT INTO eco_monitoring_station VALUES (8001,'RiverNorth','45.1234','-122.5678',250,'2022-05-10','WaterLevel',300,'2023-02-15','v1.2','Good','0.95','2023-01-20','EnvDept','Near tributary','2022-05-10','2023-02-16',1,'RN');
INSERT INTO eco_monitoring_station VALUES (8002,'ForestEdge','46.2345','-123.6789',400,'2021-11-22','AirQuality',600,'2023-03-01','v2.0','Good','0.89','2022-12-15','EnvDept','Edge of reserve','2021-11-22','2023-03-02',1,'FE');
INSERT INTO eco_monitoring_station VALUES (8003,'CoastalBay','44.9876','-121.5432',5,'2023-01-05','Salinity',120,'2023-01-20','v1.0','Excellent','0.98','2023-01-10','EnvDept','Bay monitoring','2023-01-05','2023-01-21',1,'CB');

-- Performance metrics for renewable energy farms
CREATE TABLE renewable_energy_farm_performance
(
    farm_id                INTEGER PRIMARY KEY,
    farm_name              TEXT NOT NULL,
    farm_type              TEXT NOT NULL,
    capacity_mw            REAL NOT NULL,
    actual_output_mwh      REAL NOT NULL,
    capacity_factor        REAL NOT NULL,
    availability_percentage REAL NOT NULL,
    downtime_hours         REAL NOT NULL,
    maintenance_events     INTEGER NOT NULL,
    weather_index          REAL NOT NULL,
    grid_connection_status TEXT NOT NULL,
    emissions_avoided_tons REAL NOT NULL,
    revenue_usd            REAL NOT NULL,
    operation_start_date   DATE NOT NULL,
    last_inspection        DATE NOT NULL,
    operator_name          TEXT NOT NULL,
    notes                  TEXT,
    created_at             DATE NOT NULL,
    updated_at             DATE NOT NULL,
    region                 TEXT NOT NULL
);
INSERT INTO renewable_energy_farm_performance VALUES (9001,'SunnyValley','Solar',50.0,42000.0,0.96,99.5,120.0,4,0.85,'Connected',15000.0,500000.0,'2020-04-01','2023-02-10','GreenEnergyCo','Good yield','2020-04-01','2023-02-11','West');
INSERT INTO renewable_energy_farm_performance VALUES (9002,'WindRidge','Wind',80.0,65000.0,0.93,98.0,200.0,6,0.78,'Connected',30000.0,800000.0,'2019-09-15','2023-03-05','WindPowerLtd','Stable','2019-09-15','2023-03-06','North');
INSERT INTO renewable_energy_farm_performance VALUES (9003,'HydroSpring','Hydro',30.0,26000.0,0.99,99.9,50.0,2,0.90,'Connected',12000.0,350000.0,'2021-01-20','2023-01-22','AquaGen','Excellent','2021-01-20','2023-01-23','South');

-- Community outreach programs run by the corporation
CREATE TABLE community_outreach_program
(
    program_id               INTEGER PRIMARY KEY,
    program_name             TEXT NOT NULL,
    target_audience          TEXT NOT NULL,
    start_date               DATE NOT NULL,
    end_date                 DATE NOT NULL,
    budget                   REAL NOT NULL,
    volunteer_hours          INTEGER NOT NULL,
    participants             INTEGER NOT NULL,
    partner_organizations    TEXT,
    outcomes                 TEXT,
    feedback_score           REAL,
    media_mentions           INTEGER,
    social_media_impressions INTEGER,
    created_by               TEXT NOT NULL,
    created_at               DATE NOT NULL,
    updated_at               DATE NOT NULL,
    status                   TEXT NOT NULL,
    evaluation_report        TEXT,
    notes                    TEXT,
    region                   TEXT NOT NULL
);
INSERT INTO community_outreach_program VALUES (1101,'Health Fair','LocalResidents','2023-03-01','2023-03-02',20000.0,500,200,'HealthOrg','Increased screenings',4.5,12,3000,'CSRTeam','2023-03-01','2023-03-03','Completed','ReportA','Positive response','East');
INSERT INTO community_outreach_program VALUES (1102,'STEM Workshop','Students','2023-06-10','2023-06-12',15000.0,400,150,'EduPartner','Enhanced interest in STEM',4.8,8,2500,'CSRTeam','2023-06-10','2023-06-13','Completed','ReportB','Well received','West');
INSERT INTO community_outreach_program VALUES (1103,'Tree Planting','Community','2023-09-20','2023-09-20',10000.0,300,100,'GreenNGO','500 trees planted',4.2,5,1800,'CSRTeam','2023-09-20','2023-09-21','Completed','ReportC','Good participation','North');

-- Log of changes to regulatory policies affecting the organization
CREATE TABLE regulatory_policy_change_log
(
    log_id                 INTEGER PRIMARY KEY,
    policy_id              TEXT NOT NULL,
    policy_name            TEXT NOT NULL,
    effective_date         DATE NOT NULL,
    change_type            TEXT NOT NULL,
    description            TEXT NOT NULL,
    regulator              TEXT NOT NULL,
    compliance_deadline    DATE NOT NULL,
    affected_departments   TEXT NOT NULL,
    risk_impact_score      REAL NOT NULL,
    mitigation_actions     TEXT,
    status                 TEXT NOT NULL,
    created_by             TEXT NOT NULL,
    created_at             DATE NOT NULL,
    reviewed_by            TEXT,
    review_date            DATE,
    notes                  TEXT,
    update_count           INTEGER NOT NULL,
    last_update            DATE NOT NULL,
    source_document        TEXT NOT NULL
);
INSERT INTO regulatory_policy_change_log VALUES (2101,'RP001','DataPrivacy','2023-05-01','Amendment','New consent requirements','DataCommission','2023-06-01','Legal,IT','7.5','Update consent forms','Pending','ComplianceTeam','2023-04-15','LegalLead','2023-04-20','Review needed','1','2023-04-21','DP2023.docx');
INSERT INTO regulatory_policy_change_log VALUES (2102,'RP002','FinancialReporting','2023-08-01','Revision','Additional disclosure fields','FinanceAuthority','2023-09-15','Finance,Accounting','6.8','Modify reporting templates','InProgress','FinanceTeam','2023-07-10','FinanceLead','2023-07-12','Awaiting IT support','2','2023-07-20','FR2023.pdf');
INSERT INTO regulatory_policy_change_log VALUES (2103,'RP003','EnvironmentalStandards','2023-11-01','Introduction','New emission limits','EnvAgency','2024-01-01','Operations,Compliance','8.2','Install monitoring equipment','Planned','EnvTeam','2023-10-05','EnvLead','2023-10-07','Budget approval pending','0','2023-10-08','ES2023.doc');

-- Feed of cyber threat intelligence indicators
CREATE TABLE cyber_threat_intel_feed
(
    feed_id               INTEGER PRIMARY KEY,
    indicator_type        TEXT NOT NULL,
    indicator_value       TEXT NOT NULL,
    threat_actor          TEXT,
    confidence_score      REAL NOT NULL,
    first_seen            DATE NOT NULL,
    last_seen             DATE NOT NULL,
    severity              INTEGER NOT NULL,
    description           TEXT,
    mitigation_recommendation TEXT,
    source                TEXT,
    reported_by           TEXT,
    report_date           DATE,
    related_campaign      TEXT,
    ip_address            TEXT,
    domain                TEXT,
    url                   TEXT,
    hash_value            TEXT,
    status                TEXT,
    created_at            DATE NOT NULL
);
INSERT INTO cyber_threat_intel_feed VALUES (3101,'IP','203.0.113.45','APTGroupX',0.92,'2023-02-10','2023-03-05',9,'Malware distribution','Block IP at perimeter','ThreatFeedX','AnalystA','2023-03-06','MalwareCamp','203.0.113.45','malicious.com','http://malicious.com/payload','abcd1234efgh5678','Active','2023-03-07');
INSERT INTO cyber_threat_intel_feed VALUES (3102,'Domain','evilbank.com','CriminalOrgY',0.85,'2023-04-12','2023-04-20',8,'Phishing site targeting customers','Sinkhole domain and notify users','ThreatFeedY','AnalystB','2023-04-21','PhishCampaign','0.0.0.0','evilbank.com','http://evilbank.com/login','1234abcd5678efgh','Active','2023-04-22');
INSERT INTO cyber_threat_intel_feed VALUES (3103,'Hash','9f86d081884c7d659a2feaa0c55ad015','HacktivistZ',0.78,'2023-07-01','2023-07-15',7,'Ransomware executable','Update endpoint signatures','ThreatFeedZ','AnalystC','2023-07-16','RansomCampaign','0.0.0.0','badsite.net','http://badsite.net/ransom','9f86d081884c7d659a2feaa0c55ad015','Monitored','2023-07-17');