-- Media streaming endpoint details
CREATE TABLE Media_Streaming_Endpoints (
    endpoint_id           INTEGER PRIMARY KEY AUTOINCREMENT,
    provider_name         TEXT,
    region                TEXT,
    cdn_type              TEXT,
    protocol              TEXT,
    bandwidth_mbps        INTEGER,
    latency_ms            INTEGER,
    uptime_percent        REAL,
    last_test_date        TEXT,
    encryption_method     TEXT,
    stream_format         TEXT,
    max_concurrent_streams INTEGER,
    support_contact       TEXT,
    sla_hours             INTEGER,
    cost_per_gb           REAL,
    peak_usage_gb         REAL,
    avg_usage_gb          REAL,
    failure_rate_percent  REAL,
    maintenance_window   TEXT,
    notes                 TEXT
);

INSERT INTO Media_Streaming_Endpoints VALUES (1,'FastStream','NorthAmerica','Edge','HLS',5000,45,99.9,'2025-12-01','AES128','MPEGTS',20000,'support@faststream.com',24,0.12,1200.5,850.3,0.02,'Sunday02am','Initial rollout');
INSERT INTO Media_Streaming_Endpoints VALUES (2,'CloudFlow','Europe','Hybrid','DASH',3200,60,99.5,'2025-11-28','AES256','MP4',15000,'help@cloudflow.eu',48,0.15,950.0,720.0,0.05,'Saturday03am','Beta testing phase');
INSERT INTO Media_Streaming_Endpoints VALUES (3,'EdgeNet','Asia','Peer','RTMP',2800,70,98.8,'2025-11-30','TLS','FLV',18000,'ops@edgenet.asia',36,0.10,1100.2,780.5,0.03,'Friday01am','Expanded to SE Asia');

-- Fan engagement campaign data
CREATE TABLE Fan_Engagement_Campaigns (
    campaign_id           INTEGER PRIMARY KEY AUTOINCREMENT,
    campaign_name         TEXT,
    launch_date           TEXT,
    end_date              TEXT,
    target_audience       TEXT,
    channel               TEXT,
    budget_usd            REAL,
    expected_reach        INTEGER,
    actual_reach          INTEGER,
    impressions           INTEGER,
    clicks                INTEGER,
    ctr_percent           REAL,
    conversion_rate       REAL,
    cpa_usd               REAL,
    creative_type         TEXT,
    language              TEXT,
    region                TEXT,
    sponsor_id            INTEGER,
    status                TEXT,
    notes                 TEXT
);

INSERT INTO Fan_Engagement_Campaigns VALUES (1,'SummerKick','2025-06-01','2025-08-31','YoungAdults','Social','250000',1500000,1402000,8500000,10.0,2.5,100,'Video','English','Europe',12,'Active','Main summer push');
INSERT INTO Fan_Engagement_Campaigns VALUES (2,'WinterWarmth','2025-11-15','2026-02-15','Families','TV','320000',1800000,1750000,12000000,12.5,3.0,95,'Banner','Spanish','SouthAmerica',15,'Planned','Holiday season');
INSERT INTO Fan_Engagement_Campaigns VALUES (3,'SpringLaunch','2025-03-10','2025-05-20','Teens','Mobile','180000',900000,850000,6000000,9.5,2.0,110,'Interactive','German','CentralEurope',9,'Completed','New kit release');

-- Club energy initiative records
CREATE TABLE Club_Energy_Initiatives (
    initiative_id         INTEGER PRIMARY KEY AUTOINCREMENT,
    name                  TEXT,
    start_date            TEXT,
    end_date              TEXT,
    energy_source         TEXT,
    capacity_kw           INTEGER,
    installation_cost_usd REAL,
    annual_savings_usd    REAL,
    co2_reduction_tonnes  REAL,
    responsible_department TEXT,
    status                TEXT,
    vendor                TEXT,
    warranty_years        INTEGER,
    monitoring_system     TEXT,
    last_audit_date       TEXT,
    notes                 TEXT,
    region                TEXT,
    project_manager       TEXT,
    funding_source        TEXT,
    approval_date         TEXT
);

INSERT INTO Club_Energy_Initiatives VALUES (1,'SolarRoof','2024-04-01','2026-04-01','Solar',1200,850000,120000,350,'Facilities','Operational','SunPower',10,'EnergyWatch','2025-09-15','Phase1 completed','NorthWest','AliceSmith','GreenFund','2024-03-20');
INSERT INTO Club_Energy_Initiatives VALUES (2,'WindTurbine','2025-01-10','2028-01-10','Wind',2500,2000000,300000,1200,'Operations','Planning','WindTech',12,'WindMonitor','2025-12-01','Permitting pending','SouthEast','BobJones','EcoInvest','2025-01-05');
INSERT INTO Club_Energy_Initiatives VALUES (3,'GeothermalHeat','2025-07-01','2030-07-01','Geothermal',800,950000,110000,400,'Maintenance','Design','GeoEnergy',15,'ThermoSense','2025-11-20','Design phase','Central','CarolLee','UtilityGrant','2025-06-28');

-- Stadium access performance metrics
CREATE TABLE Stadium_Access_Performance (
    access_id             INTEGER PRIMARY KEY AUTOINCREMENT,
    date                  TEXT,
    gate_number           INTEGER,
    entry_type            TEXT,
    total_entries         INTEGER,
    avg_wait_seconds      REAL,
    peak_wait_seconds     REAL,
    equipment_status      TEXT,
    staff_on_duty         INTEGER,
    incidents_reported    INTEGER,
    incident_type         TEXT,
    response_time_seconds REAL,
    notes                 TEXT,
    sensor_id             TEXT,
    temperature_c         REAL,
    humidity_percent      REAL,
    lighting_level_lux    REAL,
    security_alerts       INTEGER,
    maintenance_required  TEXT
);

INSERT INTO Stadium_Access_Performance VALUES (1,'2025-10-12',3,'Ticket','21500',12.5,45,'Operational',9,1,'Crowd','180','Smooth flow','SENSORA1',22.3,45.0,700,0,'No');
INSERT INTO Stadium_Access_Performance VALUES (2,'2025-10-13',5,'Pass','18900',10.2,38,'Operational',8,0,'None','0','No issues','SENSORB3',21.8,48.2,650,0,'No');
INSERT INTO Stadium_Access_Performance VALUES (3,'2025-10-14',2,'VIP','5600',8.1,30,'Operational',4,2,'BagCheck','90','Minor delays','SENSORC7',23.0,42.5,720,1,'Yes');

-- League statistical archive
CREATE TABLE League_Statistical_Archive (
    archive_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    season                TEXT,
    league_id             INTEGER,
    competition_type      TEXT,
    total_matches         INTEGER,
    total_goals           INTEGER,
    avg_goals_per_match  REAL,
    total_yellow_cards    INTEGER,
    total_red_cards       INTEGER,
    avg_possession_percent REAL,
    total_shots           INTEGER,
    avg_shots_on_target   REAL,
    total_fouls           INTEGER,
    avg_fouls_per_match  REAL,
    total_corners         INTEGER,
    avg_corners_per_match REAL,
    total_offsides        INTEGER,
    avg_offsides_per_match REAL,
    data_source           TEXT,
    archive_date          TEXT
);

INSERT INTO League_Statistical_Archive VALUES (1,'2024/2025',3,'Premier',380,1023,2.69,7280,115,55.2,10320,4.8,16500,43.4,2100,5.5,1800,4.7,'OfficialStats','2025-01-10');
INSERT INTO League_Statistical_Archive VALUES (2,'2023/2024',3,'Premier',380,987,2.60,7100,102,54.8,10100,4.7,16000,42.1,2000,5.3,1700,4.5,'OfficialStats','2024-01-12');
INSERT INTO League_Statistical_Archive VALUES (3,'2022/2023',3,'Premier',380,1055,2.78,7350,118,55.6,10450,5.0,16800,44.2,2150,5.6,1900,5.0,'OfficialStats','2023-01-15');

-- Team medical research projects
CREATE TABLE Team_Medical_Research (
    research_id           INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id               INTEGER,
    study_title           TEXT,
    start_date            TEXT,
    end_date              TEXT,
    principal_investigator TEXT,
    funding_amount_usd    REAL,
    study_type            TEXT,
    participants          INTEGER,
    data_collected_gb     REAL,
    results_summary       TEXT,
    publication_journal   TEXT,
    doi                   TEXT,
    status                TEXT,
    ethics_approval_date  TEXT,
    methodology           TEXT,
    equipment_used        TEXT,
    compliance_rating     INTEGER,
    data_sharing_policy   TEXT,
    notes                 TEXT
);

INSERT INTO Team_Medical_Research VALUES (1,4,'Concussion Impact Study','2024-03-01','2025-02-28','DrSmith',350000,'Observational',120,45.6,'Reduced reaction times','SportsMed','10.1234/sm2025','Completed','2024-02-15','Neuroimaging','MRI','A','Open','Final report submitted');
INSERT INTO Team_Medical_Research VALUES (2,7,'Recovery Nutrition Trial','2025-01-15','2025-12-15','DrLee',210000,'Interventional',80,30.2,'Improved glycogen stores','JournalOfNutrition','10.5678/jn2025','Ongoing','2024-12-20','Double blind','Blood analysis','B','Restricted','Midway analysis pending');
INSERT INTO Team_Medical_Research VALUES (3,2,'Sleep Quality and Performance','2025-06-01','2026-05-31','DrKhan',180000,'Cross-sectional',95,28.4,'Positive correlation','SleepScience','10.9012/ss2026','Planned','2025-05-10','Questionnaire','Wearable devices','A','Open','Protocol development');

-- Player community service records
CREATE TABLE Player_Community_Service (
    service_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id         INTEGER,
    organization_name     TEXT,
    service_date          TEXT,
    hours_volunteered     REAL,
    role                  TEXT,
    location_city         TEXT,
    location_country      TEXT,
    impact_description    TEXT,
    supervisor_name       TEXT,
    verified              TEXT,
    service_type          TEXT,
    project_name          TEXT,
    outcome_metric        TEXT,
    follow_up_required    TEXT,
    photo_documented_flag TEXT,
    notes                 TEXT,
    gender                TEXT,
    age_group             TEXT,
    contact_email         TEXT
);

INSERT INTO Player_Community_Service VALUES (1,2301,'KidsFit','2025-04-10',5.0,'Coach','Lisbon','Portugal','Improved fitness among 20 kids','MariaG','Yes','Physical','FitLaunch','BMI reduction','No','Yes','Annual event','Male','20-30','player2301@example.com');
INSERT INTO Player_Community_Service VALUES (2,1789,'FoodBank','2025-05-22',3.5,'Volunteer','Munich','Germany','Collected 200 food packages','HansB','Yes','Charity','HarvestDrive','Packages delivered','Yes','No','One-time help','Male','30-40','player1789@example.com');
INSERT INTO Player_Community_Service VALUES (3,3420,'SeniorCenter','2025-06-15',4.0,'Mentor','Dublin','Ireland','Provided career advice to seniors','EileenS','Yes','Education','CareerTalks','Number of participants','No','Yes','Quarterly session','Female','25-35','player3420@example.com');

-- Match operational teams assignment
CREATE TABLE Match_Operational_Teams (
    team_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id              INTEGER,
    team_name             TEXT,
    role                  TEXT,
    lead_person           TEXT,
    contact_phone         TEXT,
    staff_count           INTEGER,
    shift_start_time      TEXT,
    shift_end_time        TEXT,
    equipment_assigned    TEXT,
    checklist_completed   TEXT,
    issues_reported       INTEGER,
    issue_type            TEXT,
    resolution_time_minutes REAL,
    notes                 TEXT,
    zone                  TEXT,
    safety_certified_flag TEXT,
    training_completed_date TEXT,
    communication_channel TEXT,
    backup_plan           TEXT
);

INSERT INTO Match_Operational_Teams VALUES (1,501,'StadiumSecurity','Security','JohnDoe','+33123456789',25,'08:00','20:00','CCTV,MetalDetectors','Yes',2,'AccessDenied',30,'Minor delays at gate 3','NorthWest','Yes','2025-01-15','Radio','PlanA');
INSERT INTO Match_Operational_Teams VALUES (2,501,'MedicalTeam','Medical','DrMiller','+44111222333',12,'08:30','19:30','FirstAidKits','Yes',0,'None',0,'All clear','SouthEast','Yes','2025-01-10','Phone','PlanB');
INSERT INTO Match_Operational_Teams VALUES (3,501,'Catering','FoodService','AnnaLee','+491234567890',18,'09:00','21:00','Stoves,Warmers','Yes',1,'Spill',15,'Cleaned in 15 mins','Central','Yes','2025-01-12','WalkieTalkie','PlanC');

-- Sponsor audience demographics
CREATE TABLE Sponsor_Audience_Demographics (
    sponsor_id            INTEGER,
    campaign_id           INTEGER,
    demographic_group     TEXT,
    age_range             TEXT,
    gender                TEXT,
    region                TEXT,
    audience_size         INTEGER,
    engagement_score      REAL,
    conversion_rate_percent REAL,
    average_spend_usd     REAL,
    media_channel         TEXT,
    measurement_date      TEXT,
    education_level       TEXT,
    income_bracket        TEXT,
    device_type           TEXT,
    frequency_per_week    INTEGER,
    loyalty_score         REAL,
    notes                 TEXT,
    campaign_name         TEXT,
    sponsor_name          TEXT
);

INSERT INTO Sponsor_Audience_Demographics VALUES (12,1,'YoungAdults','18-24','Male','Europe',500000,78.5,3.2,45.0,'Social','2025-07-01','College','30k-50k','Mobile','5',85.0,'High interaction','SummerKick','TechCo');
INSERT INTO Sponsor_Audience_Demographics VALUES (15,2,'Families','35-45','Female','SouthAmerica',350000,64.3,2.8,60.0,'TV','2025-12-10','HighSchool','40k-60k','SmartTV','3',70.0,'Seasonal boost','WinterWarmth','HomeGoods');
INSERT INTO Sponsor_Audience_Demographics VALUES (9,3,'Teens','13-17','Male','CentralEurope',250000,82.1,4.0,30.0,'Mobile','2025-04-15','HighSchool','20k-30k','Tablet','6',90.0,'Strong brand recall','SpringLaunch','ApparelInc');

-- Digital signage asset inventory
CREATE TABLE Digital_Signage_Assets (
    asset_id              INTEGER PRIMARY KEY AUTOINCREMENT,
    location_name         TEXT,
    screen_width_px       INTEGER,
    screen_height_px      INTEGER,
    orientation           TEXT,
    resolution_ppi        INTEGER,
    content_type          TEXT,
    playback_duration_seconds INTEGER,
    schedule_start_time   TEXT,
    schedule_end_time     TEXT,
    asset_status          TEXT,
    vendor                TEXT,
    installation_date     TEXT,
    last_maintenance_date TEXT,
    power_consumption_watts REAL,
    network_bandwidth_mbps REAL,
    firmware_version      TEXT,
    last_update_date      TEXT,
    notes                 TEXT,
    warranty_years        INTEGER
);

INSERT INTO Digital_Signage_Assets VALUES (1,'MainEntrance','1920','1080','Landscape',150,'Video','30','08:00','22:00','Active','SignCo','2024-03-10','2025-09-01',250.5,10.2,'v2.3','2025-10-01','Updated graphics','5');
INSERT INTO Digital_Signage_Assets VALUES (2,'GateA','1280','720','Portrait',120,'Image','45','06:00','23:00','Active','DisplayTech','2023-07-15','2025-08-20',180.0,8.5,'v1.9','2025-09-15','Minor glare issue','3');
INSERT INTO Digital_Signage_Assets VALUES (3,'StadiumRoof','2560','1440','Landscape',200,'LiveFeed','60','10:00','02:00','Active','PixelWorks','2025-01-05','2025-10-10',320.8,12.0,'v3.1','2025-10-12','Ready for next season','4');