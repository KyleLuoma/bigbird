-- Venue energy monitoring data
CREATE TABLE Venue_Energy_Monitoring (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    date TEXT,
    electricity_kwh INTEGER,
    gas_m3 INTEGER,
    water_liters INTEGER,
    renewable_percent INTEGER,
    peak_demand_kw INTEGER,
    average_voltage INTEGER,
    voltage_fluctuation INTEGER,
    co2_emissions_kg INTEGER,
    temperature_c INTEGER,
    humidity_percent INTEGER,
    wind_speed_mps REAL,
    solar_irradiance_wpm2 INTEGER,
    battery_storage_kwh INTEGER,
    backup_generator_hours INTEGER,
    maintenance_status TEXT,
    energy_cost_usd INTEGER,
    energy_supplier TEXT,
    notes TEXT
);
INSERT INTO Venue_Energy_Monitoring VALUES (1,101,'2023-07-01',50000,3000,200000,45,1200,230,5,15000,22,55,3.2,800,2000,12,'Completed',7500,'GreenEnergyCo','Monthly report');
INSERT INTO Venue_Energy_Monitoring VALUES (2,101,'2023-08-01',47000,2800,195000,48,1150,231,4,14000,23,53,3.0,820,2100,10,'Pending',7200,'EcoPowerLtd','Preliminary data');
INSERT INTO Venue_Energy_Monitoring VALUES (3,102,'2023-07-01',62000,3500,210000,40,1300,229,6,18000,21,60,3.5,750,1900,15,'Completed',9000,'SolarGridInc','Annual review');

-- Digital content production projects
CREATE TABLE Digital_Content_Production (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    project_code TEXT,
    start_date TEXT,
    end_date TEXT,
    content_type TEXT,
    platform TEXT,
    duration_seconds INTEGER,
    resolution TEXT,
    frame_rate INTEGER,
    language TEXT,
    subtitles TEXT,
    creator_id INTEGER,
    editor_id INTEGER,
    approved_by INTEGER,
    status TEXT,
    view_count INTEGER,
    like_count INTEGER,
    share_count INTEGER,
    comment_count INTEGER,
    budget_usd INTEGER,
    revenue_usd INTEGER,
    tags TEXT
);
INSERT INTO Digital_Content_Production VALUES (1,'PRJ001','2023-06-01','2023-06-30','Highlight','YouTube',300,'1080p',30,'English','Yes',201,301,401,'Published',150000,12000,3000,800,50000,120000,'football,highlights');
INSERT INTO Digital_Content_Production VALUES (2,'PRJ002','2023-07-15','2023-08-15','Interview','Instagram',600,'720p',30,'Spanish','No',202,302,402,'InReview',50000,4000,1200,300,20000,0,'player,interview');
INSERT INTO Digital_Content_Production VALUES (3,'PRJ003','2023-05-01','2023-05-20','Documentary','TV',1800,'4K',60,'English','Yes',203,303,403,'Published',250000,20000,5000,1500,80000,200000,'history,club');

-- Fan analytics model registry
CREATE TABLE Fan_Analytics_Model (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    model_name TEXT,
    version TEXT,
    creation_date TEXT,
    algorithm_type TEXT,
    training_data_size INTEGER,
    accuracy_percent REAL,
    precision_percent REAL,
    recall_percent REAL,
    f1_score REAL,
    features_used TEXT,
    target_metric TEXT,
    deployed_environment TEXT,
    latency_ms INTEGER,
    throughput_qps INTEGER,
    monitoring_status TEXT,
    last_updated TEXT,
    notes TEXT,
    owner_team TEXT,
    stakeholder TEXT
);
INSERT INTO Fan_Analytics_Model VALUES (1,'EngagementPredictor','v1.0','2023-01-15','RandomForest',500000,87.5,85.0,84.0,84.5,'age,location,frequency','engagement_score','AWS',120,200,'Active','2023-06-01','Initial deployment','DataScience','Marketing');
INSERT INTO Fan_Analytics_Model VALUES (2,'ChurnClassifier','v2.1','2023-03-10','XGBoost',750000,90.2,88.7,89.5,89.1,'last_purchase,session_len,device','churn_probability','Azure',95,250,'Active','2023-07-15','Retrained with Q2 data','Analytics','Product');
INSERT INTO Fan_Analytics_Model VALUES (3,'SentimentAnalyzer','v0.9','2022-11-05','LSTM',300000,82.0,80.5,81.0,80.7,'text,emoji,post_time','sentiment_score','GCP',150,180,'Testing','2023-04-20','Beta version','AITeam','Community');

-- Team logistics analysis
CREATE TABLE Team_Logistics_Analysis (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    season TEXT,
    travel_distance_km INTEGER,
    travel_days INTEGER,
    accommodation_nights INTEGER,
    meals_provided INTEGER,
    staff_count INTEGER,
    equipment_weight_kg INTEGER,
    carbon_emission_kg INTEGER,
    cost_usd INTEGER,
    sponsor_contribution_usd INTEGER,
    average_rest_hours REAL,
    injury_rate_percent REAL,
    performance_impact_score INTEGER,
    logistics_manager_id INTEGER,
    risk_score INTEGER,
    contingency_plan TEXT,
    notes TEXT,
    last_review_date TEXT
);
INSERT INTO Team_Logistics_Analysis VALUES (1,201,'2022/2023',12000,45,40,1500,25,3500,8000,250000,50000,6.5,2.3,78,501,3,'Standard','Season overview','2023-05-01');
INSERT INTO Team_Logistics_Analysis VALUES (2,202,'2022/2023',9500,38,35,1300,22,3000,6500,200000,40000,7.0,1.8,82,502,2,'Enhanced','Midseason review','2023-03-15');
INSERT INTO Team_Logistics_Analysis VALUES (3,203,'2022/2023',14000,50,45,1700,28,3800,9000,280000,60000,6.0,2.5,74,503,4,'Standard','End of season','2023-06-20');

-- League advertising project details
CREATE TABLE League_Advertising_Project (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    project_id TEXT,
    league_id INTEGER,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    media_channel TEXT,
    budget_usd INTEGER,
    impressions INTEGER,
    click_through_rate_percent REAL,
    conversion_rate_percent REAL,
    cpm_usd REAL,
    cpc_usd REAL,
    target_audience TEXT,
    creative_type TEXT,
    agency_id INTEGER,
    status TEXT,
    performance_score INTEGER,
    notes TEXT,
    created_by TEXT
);
INSERT INTO League_Advertising_Project VALUES (1,'ADV001',10,'SummerBlast','2023-06-01','2023-08-31','Digital',1500000,20000000,2.5,1.2,75,0.5,'Adults 18-34','Video',301,'Active',88,'High ROI expected','MediaTeam');
INSERT INTO League_Advertising_Project VALUES (2,'ADV002',12,'WinterWarmup','2023-11-01','2024-01-31','TV',2500000,15000000,1.8,0.9,166,0.7,'Families','Spot',302,'Planned',75,'Focus on ticket sales','CampaignLead');
INSERT INTO League_Advertising_Project VALUES (3,'ADV003',15,'ChampionsKickoff','2023-09-15','2023-10-15','Social',800000,12000000,3.2,1.5,66,0.4,'Fans 25-45','Carousel',303,'Completed',92,'Successful engagement','DigitalOps');

-- Stadium access control log
CREATE TABLE Stadium_Access_Control_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    gate_id TEXT,
    entry_timestamp TEXT,
    exit_timestamp TEXT,
    badge_id TEXT,
    personnel_name TEXT,
    access_type TEXT,
    purpose TEXT,
    authorized_by TEXT,
    security_level TEXT,
    device_id TEXT,
    verification_method TEXT,
    notes TEXT,
    incident_flag INTEGER,
    incident_description TEXT,
    created_at TEXT,
    updated_at TEXT,
    shift_id TEXT,
    supervisor_id TEXT
);
INSERT INTO Stadium_Access_Control_Log VALUES (1,101,'G01','2023-07-10 08:00:00','2023-07-10 18:00:00','B123','John Doe','Entry','StaffShift','Mgr001','Level2','D01','Card','Normal shift',0,'','2023-07-10 08:01:00','2023-07-10 18:01:00','S01','Sup001');
INSERT INTO Stadium_Access_Control_Log VALUES (2,101,'G02','2023-07-10 09:30:00','2023-07-10 17:30:00','B124','Jane Smith','Entry','VendorDelivery','Mgr002','Level3','D02','Biometrics','Delivered equipment',0,'','2023-07-10 09:31:00','2023-07-10 17:31:00','S02','Sup002');
INSERT INTO Stadium_Access_Control_Log VALUES (3,102,'G01','2023-07-11 07:45:00','2023-07-11 20:00:00','B125','Mike Lee','Entry','SecurityPatrol','Mgr003','Level1','D03','Card','Night shift',1,'Tailgate violation','2023-07-11 07:46:00','2023-07-11 20:01:00','S03','Sup003');

-- Training center staff roster
CREATE TABLE Training_Center_Staff_Roster (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    staff_id INTEGER,
    first_name TEXT,
    last_name TEXT,
    role TEXT,
    qualification TEXT,
    years_experience INTEGER,
    certification_date TEXT,
    certification_body TEXT,
    shift_start TEXT,
    shift_end TEXT,
    hourly_rate_usd INTEGER,
    email TEXT,
    phone TEXT,
    supervisor_id INTEGER,
    active_flag INTEGER,
    hire_date TEXT,
    termination_date TEXT,
    notes TEXT
);
INSERT INTO Training_Center_Staff_Roster VALUES (1,1,301,'Alice','Brown','Coach','MasterSportsScience',8,'2015-03-01','NationalBoard','08:00','16:00',45,'alice.brown@example.com','5551234567',401,1,'2015-03-15',NULL,'Head of conditioning');
INSERT INTO Training_Center_Staff_Roster VALUES (2,1,302,'Bob','Clark','Physio','BachelorsPhysio',5,'2017-07-20','HealthAssoc','10:00','18:00',40,'bob.clark@example.com','5557654321',401,1,'2017-08-01',NULL,'Injury prevention specialist');
INSERT INTO Training_Center_Staff_Roster VALUES (3,2,303,'Carol','Davis','Nutritionist','DiplomaNutrition',4,'2019-05-10','SportsNutritionOrg','09:00','17:00',38,'carol.davis@example.com','5559876543',402,1,'2019-06-01',NULL,'Meal planning');

-- Youth academy scholarship awards
CREATE TABLE Youth_Academy_Scholarship_Award (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    academy_id INTEGER,
    player_api_id INTEGER,
    scholarship_year INTEGER,
    amount_usd INTEGER,
    scholarship_type TEXT,
    criteria_met TEXT,
    award_date TEXT,
    renewed_flag INTEGER,
    renewal_date TEXT,
    notes TEXT,
    granting_body TEXT,
    award_status TEXT,
    academic_major TEXT,
    gpa REAL,
    extracurriculars TEXT,
    mentor_id INTEGER,
    contract_start TEXT,
    contract_end TEXT,
    tuition_coverage_percent INTEGER
);
INSERT INTO Youth_Academy_Scholarship_Award VALUES (1,1,5001,2023,15000,'Full','Academics+Sport','2023-01-10',1,'2024-01-10','Top performer','ClubFoundation','Granted','SportsScience',3.9,'TeamCaptain',601,'2023-01-01','2025-12-31',80);
INSERT INTO Youth_Academy_Scholarship_Award VALUES (2,1,5002,2023,8000,'Partial','SportOnly','2023-02-15',0,NULL,'Promising talent','YouthFund','Granted','Business',3.5,'Volunteer',602,'2023-02-01','2025-06-30',50);
INSERT INTO Youth_Academy_Scholarship_Award VALUES (3,2,5003,2023,12000,'Full','Academics+Sport','2023-03-05',1,'2024-03-05','Leadership qualities','CommunityTrust','Pending','Engineering',3.7,'ClubSecretary',603,'2023-03-01','2025-12-31',70);

-- International scouting tournament invitations
CREATE TABLE International_Scouting_Tournament_Invite (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    scout_id INTEGER,
    country_id INTEGER,
    invite_date TEXT,
    expires_date TEXT,
    status TEXT,
    notes TEXT,
    response_date TEXT,
    accepted_flag INTEGER,
    travel_budget_usd INTEGER,
    accommodation_budget_usd INTEGER,
    visa_assistance_flag INTEGER,
    language_support_flag INTEGER,
    assigned_team_id INTEGER,
    created_by TEXT,
    updated_by TEXT,
    created_at TEXT,
    updated_at TEXT,
    priority_level TEXT
);
INSERT INTO International_Scouting_Tournament_Invite VALUES (1,901,701,10,'2023-06-01','2023-06-15','Sent','Initial invite','2023-06-02',1,2000,1500,1,0,201,'Admin1','Admin2','2023-06-01','2023-06-02','High');
INSERT INTO International_Scouting_Tournament_Invite VALUES (2,902,702,12,'2023-07-10','2023-07-25','Pending','Awaiting response',NULL,0,2500,1800,1,1,202,'Admin3','Admin4','2023-07-10','2023-07-11','Medium');
INSERT INTO International_Scouting_Tournament_Invite VALUES (3,903,703,15,'2023-08-05','2023-08-20','Accepted','Confirmed attendance','2023-08-06',1,2200,1600,0,1,203,'Admin5','Admin6','2023-08-05','2023-08-06','Low');

-- Club merchandise return processing
CREATE TABLE Club_Merchandise_Return_Processing (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    return_id TEXT,
    merchandise_sku TEXT,
    order_id TEXT,
    customer_id TEXT,
    return_reason TEXT,
    request_date TEXT,
    approval_status TEXT,
    approved_by TEXT,
    refund_amount_usd INTEGER,
    restock_fee_usd INTEGER,
    condition_rating TEXT,
    inspection_notes TEXT,
    processed_date TEXT,
    shipped_back_flag INTEGER,
    carrier_name TEXT,
    tracking_number TEXT,
    warehouse_location TEXT,
    notes TEXT,
    processed_by TEXT
);
INSERT INTO Club_Merchandise_Return_Processing VALUES (1,'R001','SKU12345','O1001','C001','SizeIssue','2023-06-20','Approved','Mgr001',45,5,'Good','No damage','2023-06-22',1,'FastShip','TRK123','WH1','Customer satisfied','AgentA');
INSERT INTO Club_Merchandise_Return_Processing VALUES (2,'R002','SKU67890','O1002','C002','Defect','2023-07-10','Rejected','Mgr002',0,0,'Damaged','Fabric tear','2023-07-12',0,'QuickLog','TRK124','WH2','Rejected due to policy','AgentB');
INSERT INTO Club_Merchandise_Return_Processing VALUES (3,'R003','SKU54321','O1003','C003','ChangedMind','2023-08-01','Approved','Mgr003',30,3,'Excellent','Unused','2023-08-03',1,'ShipNow','TRK125','WH1','Quick turnaround','AgentC');