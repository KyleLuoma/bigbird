```sql
/* Player vaccination records – tracks immunization details for each player */
CREATE TABLE Player_Vaccination_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    vaccine_name TEXT,
    dose_number INTEGER,
    vaccination_date TEXT,
    lot_number TEXT,
    administering_clinic TEXT,
    country TEXT,
    physician_name TEXT,
    next_due_date TEXT,
    vaccine_type TEXT,
    side_effects_reported TEXT,
    side_effect_severity TEXT,
    verification_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    batch_expiry TEXT,
    admin_route TEXT,
    manufacturer TEXT
);

INSERT INTO Player_Vaccination_Records VALUES (1,101,'Pfizer',1,'2023-01-15','L12345','CityHealthCenter','USA','DrSmith','2023-02-15','mRNA','None','None','Verified','First dose','2023-01-15','2023-01-15','2024-01-01','IM','PfizerInc');
INSERT INTO Player_Vaccination_Records VALUES (2,102,'Moderna',2,'2023-02-20','M98765','RegionalClinic','Canada','DrLee','2023-03-20','mRNA','MildFever','Mild','Pending','Second dose','2023-02-20','2023-02-20','2024-02-20','IM','ModernaLLC');
INSERT INTO Player_Vaccination_Records VALUES (3,103,'AstraZeneca','1','2023-03-05','A54321','CentralHospital','UK','DrBrown','2023-04-05','ViralVector','Headache','Moderate','Verified','First dose','2023-03-05','2023-03-05','2024-03-05','IM','AstraZeneca');

/* Team travel emission tracking – records CO2 emissions for team trips */
CREATE TABLE Team_Travel_Emission_Tracking (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    travel_date TEXT,
    origin_city TEXT,
    destination_city TEXT,
    transport_mode TEXT,
    distance_km INTEGER,
    emission_factor REAL,
    co2_kg REAL,
    fuel_type TEXT,
    passenger_count INTEGER,
    purpose TEXT,
    approved_by TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    trip_duration_hr REAL,
    carbon_offset_kg REAL,
    offset_program TEXT,
    verification_status TEXT,
    transport_company TEXT
);

INSERT INTO Team_Travel_Emission_Tracking VALUES (1,201,'2023-04-10','London','Paris','Bus',342,0.27,92.34,'Diesel',25,'AwayMatch','ManagerA','StandardTrip','2023-04-10','2023-04-10',4.5,10,'CarbonNeutral','Verified','EuroTravel');
INSERT INTO Team_Travel_Emission_Tracking VALUES (2,202,'2023-05-02','Madrid','Berlin','Air',1860,0.18,334.80,'JetA1',22,'Friendly','ManagerB','CharterFlight','2023-05-02','2023-05-02',2.8,20,'EcoFly','Pending','SkyCharters');
INSERT INTO Team_Travel_Emission_Tracking VALUES (3,203,'2023-06-15','Rome','Milan','Train',600,0.04,24.0,'Electric',20,'TrainingCamp','ManagerC','HighSpeed','2023-06-15','2023-06-15',5.0,5,'GreenRail','Verified','NationalRail');

/* Stadium sensor calibrations – maintenance of measurement devices */
CREATE TABLE Stadium_Sensor_Calibrations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    sensor_id TEXT,
    sensor_type TEXT,
    calibration_date TEXT,
    calibrated_by TEXT,
    calibration_value REAL,
    tolerance REAL,
    unit TEXT,
    next_due_date TEXT,
    calibration_method TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    location_description TEXT,
    manufacturer TEXT,
    serial_number TEXT,
    firmware_version TEXT,
    calibration_certificate_id TEXT,
    verification_status TEXT
);

INSERT INTO Stadium_Sensor_Calibrations VALUES (1,301,'SEN001','Temperature','2023-01-20','TechJohn',20.5,0.5,'C','2023-07-20','Thermocouple','InitialSetup','2023-01-20','2023-01-20','Active','NorthWing','ThermoInc','SN12345','v1.2','CERT001','Verified');
INSERT INTO Stadium_Sensor_Calibrations VALUES (2,301,'SEN002','Humidity','2023-02-10','TechAnna',45.0,1.0,'%','2023-08-10','Capacitive','RoutineCheck','2023-02-10','2023-02-10','Active','SouthWing','HumidTech','SN67890','v3.0','CERT002','Verified');
INSERT INTO Stadium_Sensor_Calibrations VALUES (3,302,'SEN003','Pressure','2023-03-05','TechMike',101.3,0.2,'kPa','2023-09-05','Barometer','PostRenovation','2023-03-05','2023-03-05','Active','EastStand','PressurCo','SN54321','v2.1','CERT003','Pending');

/* League statistical models – analytics models applied to league data */
CREATE TABLE League_Statistical_Models (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    model_name TEXT,
    model_version TEXT,
    description TEXT,
    algorithm_type TEXT,
    input_features TEXT,
    target_variable TEXT,
    training_start_date TEXT,
    training_end_date TEXT,
    validation_score REAL,
    hyperparameters TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_at TEXT,
    deployment_status TEXT,
    model_file_path TEXT,
    data_snapshot_id TEXT,
    performance_metrics TEXT,
    notes TEXT,
    usage_frequency INTEGER
);

INSERT INTO League_Statistical_Models VALUES (1,1,'WinProbModel','1.0','Predicts match win probabilities','LogisticRegression','goals_scored,shots_on_target','win_prob','2023-01-01','2023-02-15',0.78,'C=1.0,penalty=0.1','DataScientistA','2023-02-16','2023-02-16','Deployed','/models/winprob_v1.pkl','SNAP001','accuracy=0.78;AUC=0.85','Initial release',30);
INSERT INTO League_Statistical_Models VALUES (2,2,'PlayerValueModel','2.1','Estimates market value of players','RandomForest','age,goals,assists,minutes_played','market_value','2023-03-01','2023-04-10',0.82,'trees=200,depth=15','DataScientistB','2023-04-11','2023-04-11','Testing','/models/playervalue_v2_1.pkl','SNAP002','RMSE=150000;R2=0.64','Beta version',12);
INSERT INTO League_Statistical_Models VALUES (3,1,'AttendanceForecast','0.9','Forecasts stadium attendance','ARIMA','historical_attendance,weather','attendance','2022-11-01','2022-12-15',0.91,'p=2,d=1,q=1','AnalystC','2022-12-16','2022-12-16','Deployed','/models/attendance_v0_9.pkl','SNAP003','MAE=1200;MAPE=5%','Seasonal model',45);

/* Fan digital engagement activities – logs of fan interactions on digital platforms */
CREATE TABLE Fan_Digital_Engagement_Activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    activity_type TEXT,
    activity_timestamp TEXT,
    platform TEXT,
    device_type TEXT,
    session_id TEXT,
    duration_seconds INTEGER,
    pages_viewed INTEGER,
    clicks INTEGER,
    likes INTEGER,
    shares INTEGER,
    comments INTEGER,
    content_id TEXT,
    campaign_id TEXT,
    location TEXT,
    ip_address TEXT,
    referral_source TEXT,
    created_at TEXT,
    updated_at TEXT,
    engagement_score REAL
);

INSERT INTO Fan_Digital_Engagement_Activities VALUES (1,1001,'VideoView','2023-05-01T14:23:00','Website','Desktop','SID001',180,5,12,3,0,1,'VID123','CMP01','NewYork','192.168.1.10','Google','2023-05-01','2023-05-01',0.85);
INSERT INTO Fan_Digital_Engagement_Activities VALUES (2,1002,'ArticleRead','2023-05-02T09:15:00','MobileApp','Mobile','SID002',240,8,20,5,2,0,'ART456','CMP02','London','172.16.0.5','Direct','2023-05-02','2023-05-02',0.78);
INSERT INTO Fan_Digital_Engagement_Activities VALUES (3,1003,'PollVote','2023-05-03T20:45:00','Social','Tablet','SID003',60,1,3,0,0,0,'POL789','CMP03','Sydney','10.0.0.5','Facebook','2023-05-03','2023-05-03',0.62);

/* Broadcast production schedule – planning details for each broadcast */
CREATE TABLE Broadcast_Production_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_id INTEGER,
    production_date TEXT,
    start_time TEXT,
    end_time TEXT,
    studio_location TEXT,
    director TEXT,
    producer TEXT,
    technical_director TEXT,
    camera_count INTEGER,
    audio_engineer TEXT,
    graphics_operator TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    equipment_list TEXT,
    crew_call_time TEXT,
    rehearsal_time TEXT,
    live_delay_seconds INTEGER,
    broadcast_type TEXT
);

INSERT INTO Broadcast_Production_Schedule VALUES (1,501,'2023-06-01','18:00','StudioA','DirJohn','ProdMike','TechSara',6,'AudioLiam','GraphicsNina','Standard match broadcast','2023-06-01','2023-06-01','Scheduled','Cam6,Audio2,Graphics1','16:30','17:30',5,'Live');
INSERT INTO Broadcast_Production_Schedule VALUES (2,502,'2023-06-08','20:00','StudioB','DirAnna','ProdPaul','TechMark',8,'AudioEva','GraphicsTom','Pre‑match talk show','2023-06-08','2023-06-08','Pending','Cam8,Audio3,Graphics2','19:00','19:45',3,'Studio');
INSERT INTO Broadcast_Production_Schedule VALUES (3,503,'2023-06-15','16:00','StudioC','DirSam','ProdKate','TechLee',4,'AudioChris','GraphicsOlivia','Highlight reel','2023-06-15','2023-06-15','Completed','Cam4,Audio1,Graphics1','15:30','15:45',0,'Highlight');

/* Match operational risk assessments – safety and contingency plans */
CREATE TABLE Match_Operational_Risk_Assessments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    risk_category TEXT,
    risk_level TEXT,
    mitigation_plan TEXT,
    responsible_party TEXT,
    assessment_date TEXT,
    review_date TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    probability_score REAL,
    impact_score REAL,
    overall_score REAL,
    contingency_resources TEXT,
    external_agency_involved TEXT,
    prior_incident_reference TEXT,
    risk_owner TEXT,
    mitigation_status TEXT,
    escalation_path TEXT
);

INSERT INTO Match_Operational_Risk_Assessments VALUES (1,10001,'Weather','Medium','Deploy extra drainage','OpsTeam','2023-04-20','2023-04-25','Open','No prior issues','2023-04-20','2023-04-20',0.4,0.6,0.5,'Sandbags, Pumps','LocalWeatherAgency','None','OpsLead','Planned','OpsLead->Director');
INSERT INTO Match_Operational_Risk_Assessments VALUES (2,10002,'Security','High','Increase police presence','SecurityDept','2023-05-10','2023-05-15','Open','Recent protests nearby','2023-05-10','2023-05-10',0.7,0.8,0.75,'SecurityTeams, Barriers','NationalPolice','INC123','SecChief','InProgress','SecChief->ClubPresident');
INSERT INTO Match_Operational_Risk_Assessments VALUES (3,10003,'CrowdControl','Low','Standard stewarding','EventStaff','2023-06-01','2023-06-05','Closed','No issues','2023-06-01','2023-06-01',0.2,0.3,0.25','Stewards, Walkways','None','None','EventMgr','Completed','EventMgr->None');

/* Club cybersecurity incidents – records of cyber‑security events affecting clubs */
CREATE TABLE Club_Cybersecurity_Incidents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    incident_date TEXT,
    incident_type TEXT,
    detection_method TEXT,
    severity TEXT,
    affected_systems TEXT,
    data_compromised INTEGER,
    breach_reported INTEGER,
    response_time_hours INTEGER,
    mitigation_actions TEXT,
    root_cause TEXT,
    resolved INTEGER,
    resolution_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    incident_id_external TEXT,
    impact_estimate_usd INTEGER,
    compliance_impact TEXT
);

INSERT INTO Club_Cybersecurity_Incidents VALUES (1,201,'2023-02-12','Phishing','EmailAlert','Medium','EmailServer',0,1,5,'PasswordReset,UserTraining','HumanError',1,'2023-02-17','Handled swiftly','2023-02-12','2023-02-17','EXT001',50000,'GDPR');
INSERT INTO Club_Cybersecurity_Incidents VALUES (2,202,'2023-04-03','Ransomware','IDS','High','FileServer',1,1,12,'SystemIsolation,BackupRestore','VulnerabilityExploit',1,'2023-04-20','Encrypted critical data','2023-04-03','2023-04-20','EXT002',250000,'PCI-DSS');
INSERT INTO Club_Cybersecurity_Incidents VALUES (3,203,'2023-05-22','DDoS','NetworkMonitor','Low','WebPortal',0,0,2,'TrafficFiltering','BotnetAttack',1,'2023-05-24','No data loss','2023-05-22','2023-05-24','EXT003',0,'None');

/* Youth academy scouting events – details of scouting sessions for academy prospects */
CREATE TABLE Youth_Academy_Scouting_Events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    academy_id INTEGER,
    event_date TEXT,
    location TEXT,
    scout_name TEXT,
    scout_agency TEXT,
    number_of_players_evaluated INTEGER,
    top_player_api_id INTEGER,
    avg_rating INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    event_type TEXT,
    travel_expense_usd INTEGER,
    accommodation_expense_usd INTEGER,
    meals_expense_usd INTEGER,
    total_expense_usd INTEGER,
    follow_up_actions TEXT,
    outcome TEXT,
    next_event_planned_date TEXT
);

INSERT INTO Youth_Academy_Scouting_Events VALUES (1,301,'2023-03-10','Lisbon','ScoutLuis','GlobalScout','22',30101,78,'Good technical skills','2023-03-10','2023-03-10','Regional','1500','800','400','2700','InviteTop10','Positive','2023-06-15');
INSERT INTO Youth_Academy_Scouting_Events VALUES (2,302,'2023-04-18','Berlin','ScoutAnna','EuroTalent','18',30205,82,'Physically strong','2023-04-18','2023-04-18','International','2000','1200','500','3700','ScheduleTrials','Mixed','2023-07-20');
INSERT INTO Youth_Academy_Scouting_Events VALUES (3,303,'2023-05-05','Madrid','ScoutJavier','TalentHub','25',30312,75,'High tactical awareness','2023-05-05','2023-05-05','Domestic','1300','700','350','2350','SendReports','Positive','2023-08-10');

/* International tournament economic impact – macro‑economic data for host nations */
CREATE TABLE International_Tournament_Economic_Impact (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    host_country TEXT,
    year INTEGER,
    total_attendance INTEGER,
    direct_spending_usd INTEGER,
    indirect_spending_usd INTEGER,
    tax_revenue_usd INTEGER,
    jobs_created INTEGER,
    hotels_occupied INTEGER,
    average_room_rate_usd INTEGER,
    average_stay_nights INTEGER,
    sponsor_investment_usd INTEGER,
    broadcast_revenue_usd INTEGER,
    merchandise_sales_usd INTEGER,
    transportation_usage INTEGER,
    environmental_impact_score REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    impact_assessment_agency TEXT
);

INSERT INTO International_Tournament_Economic_Impact VALUES (1,401,'Germany',2024,750000,120000000,80,000,000,45,000,000,35000,2500,150,200000,3000,120,5.2,'Strong tourism boost','2023-12-01','2023-12-01','EcoMetrics');
INSERT INTO International_Tournament_Economic_Impact VALUES (2,402,'Brazil',2025,820000,140000000,95,000,000,50,000,000,42000,3000,170,250000,3200,110,4.9,'Increased merchandise sales','2024-01-15','2024-01-15','LatinImpact');
INSERT INTO International_Tournament_Economic_Impact VALUES (3,403,'Japan',2026,680000,100000000,70,000,000,38,000,000,31000,1800,130,120000,2800,100,5.5,'High broadcast viewership','2024-06-20','2024-06-20','AsiaAnalytics');
```