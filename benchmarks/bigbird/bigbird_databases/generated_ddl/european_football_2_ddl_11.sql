-- Broadcast equipment inventory tracking
CREATE TABLE Broadcast_Equipment_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_tag TEXT,
    equipment_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    purchase_date TEXT,
    warranty_expiry TEXT,
    location TEXT,
    assigned_to TEXT,
    status TEXT,
    firmware_version TEXT,
    last_maintenance_date TEXT,
    next_maintenance_due TEXT,
    maintenance_provider TEXT,
    cost INTEGER,
    depreciation_rate REAL,
    rental_flag INTEGER,
    insurance_policy TEXT,
    insurance_expiry TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Broadcast_Equipment_Inventory VALUES (1,'EQ-001','HD_Camera','Sony','PXW-Z150','SN12345','2018-05-12','2023-05-12','Main_Stadium_CamRoom','John_Doe','Active','1.04','2023-01-10','2023-07-10','TechServ Ltd',25000,0.15,0,'PolicyA','2024-12-31','Primary broadcast camera','2023-01-01','2023-01-15');
INSERT INTO Broadcast_Equipment_Inventory VALUES (2,'EQ-002','Wireless_Mic','Sennheiser','EW 100 G4','SN54321','2019-09-03','2024-09-03','Commentary_Box','Jane_Smith','Active','3.01','2023-03-20','2023-09-20','AudioCare Inc',8000,0.12,0,'PolicyB','2025-06-30','Commentary mic set','2023-02-01','2023-02-10');
INSERT INTO Broadcast_Equipment_Inventory VALUES (3,'EQ-003','Drone','DJI','Mavic 2 Pro','SN98765','2020-11-20','2025-11-20','Aerial_Unit','Mike_Ross','In_Repair','N/A','2023-04-05','2023-10-05','DroneTech Ltd',15000,0.18,1,'PolicyC','2026-03-15','Spare aerial footage drone','2023-03-01','2023-03-12');

-- Daily stadium utility usage metrics
CREATE TABLE Stadium_Utility_Usage (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    usage_date TEXT,
    electricity_kwh REAL,
    water_m3 REAL,
    gas_therms REAL,
    steam_kg REAL,
    waste_tons REAL,
    recycling_tons REAL,
    hvac_runtime_minutes INTEGER,
    lighting_runtime_minutes INTEGER,
    maintenance_shutdown_flag INTEGER,
    peak_load_kw REAL,
    avg_temperature_c REAL,
    avg_humidity_percent REAL,
    solar_generation_kwh REAL,
    wind_generation_kwh REAL,
    backup_generator_runtime_minutes INTEGER,
    carbon_emission_kg REAL,
    water_reuse_percent REAL,
    notes TEXT,
    recorded_by TEXT,
    recorded_at TEXT
);
INSERT INTO Stadium_Utility_Usage VALUES (1,101,'2023-09-01',45230.5,1240.8,350.2,80.0,12.5,3.2,720,480,0,350.0,45.0,120.5,0.0,30,21000.5,15.0,'Normal day','Utility_Tech','2023-09-01 08:00');
INSERT INTO Stadium_Utility_Usage VALUES (2,101,'2023-09-02',48760.2,1305.7,370.1,85.4,13.0,3.5,750,500,0,360.0,48.0,130.0,0.0,45,22500.0,16.2,'Post‑match cleaning','Utility_Tech','2023-09-02 08:00');
INSERT INTO Stadium_Utility_Usage VALUES (3,102,'2023-09-01',30210.0,900.5,210.0,55.0,9.0,2.0,600,380,1,280.0,42.0,80.0,0.0,20,14000.0,12.5,'Small venue','Utility_Tech','2023-09-01 08:00');

-- Fan mobility and shuttle services
CREATE TABLE Fan_Mobility_Services (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    service_name TEXT,
    provider_company TEXT,
    vehicle_type TEXT,
    vehicle_id TEXT,
    capacity INTEGER,
    route_name TEXT,
    operating_days TEXT,
    start_time TEXT,
    end_time TEXT,
    frequency_minutes INTEGER,
    distance_km REAL,
    average_speed_kph REAL,
    fuel_type TEXT,
    emissions_kgco2 REAL,
    ticketed_flag INTEGER,
    fare_amount INTEGER,
    contact_number TEXT,
    driver_name TEXT,
    driver_license TEXT,
    maintenance_status TEXT,
    last_inspection_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Fan_Mobility_Services VALUES (1,'Stadium Shuttle','CityTransit','Bus','SHUTTLE01',50,'North Gate Loop','Mon Tue Wed Thu Fri Sat Sun','07:00','23:00',15,12.5,30.0,'Diesel',1200,1,15,'5551234','Alice Brown','DL123456','Good','2023-08-20','Primary fan transport','2023-08-01','2023-09-01');
INSERT INTO Fan_Mobility_Services VALUES (2,'VIP Limousine','LuxRide','Limo','VIPLIMO01',8,'VIP Route','Mon Tue Wed Thu Fri','10:00','22:00',30,25.0,45.0,'Petrol',500,0,0,'5555678','Bob Smith','DL654321','Serviced','2023-07-15','Reserved for premium ticket holders','2023-07-01','2023-09-01');
INSERT INTO Fan_Mobility_Services VALUES (3,'Bike Share','GreenCycle','Bike','BIKE001',1,'Campus Loop','Sat Sun','09:00','20:00',10,5.0,15.0,'Electric',0,0,0,'5559012','N/A','N/A','Operational','2023-09-01','Free bike sharing program','2023-09-01','2023-09-01');

-- Club digital asset registry
CREATE TABLE Club_Digital_Asset_Registry (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_uuid TEXT,
    asset_type TEXT,
    file_name TEXT,
    file_format TEXT,
    file_size_mb REAL,
    creator_department TEXT,
    owner_user TEXT,
    creation_date TEXT,
    last_modified_date TEXT,
    version_number INTEGER,
    access_level TEXT,
    storage_location TEXT,
    backup_location TEXT,
    retention_policy_days INTEGER,
    copyright_status TEXT,
    licence_key TEXT,
    usage_count INTEGER,
    last_accessed_by TEXT,
    last_accessed_at TEXT,
    compliance_flag INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Club_Digital_Asset_Registry VALUES (1,'550e8400-e29b-41d4-a716-446655440000','Video','match_highlights_2023_09.mp4','MP4',1500.5,'Media','john_doe','2023-09-02','2023-09-05',3,'Internal','MediaServer1','BackupServerA',365,'Owned','LIC12345',45,'jane_smith','2023-09-06',1,'Premier league match highlights','2023-09-02','2023-09-06');
INSERT INTO Club_Digital_Asset_Registry VALUES (2,'660e8400-e29b-41d4-a716-446655440111','Image','team_logo.png','PNG',2.3,'Brand','alice_wong','2022-01-15','2023-08-20',5,'Public','CDN_Assets','BackupServerB',730,'Trademark','LIC67890',1200,'marketing_user','2023-09-01',0,'Official club logo','2022-01-15','2023-09-01');
INSERT INTO Club_Digital_Asset_Registry VALUES (3,'770e8400-e29b-41d4-a716-446655440222','Document','sponsorship_agreement_2023.pdf','PDF',0.8,'Legal','bob_lee','2023-03-10','2023-03-15',1,'Confidential','SecureVault','BackupVault','180','Contract','LIC54321',3,'legal_user','2023-03-16',1,'Sponsorship contract with BrandX','2023-03-10','2023-03-16');

-- League financial reporting
CREATE TABLE League_Financial_Reporting (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    fiscal_year TEXT,
    revenue_total INTEGER,
    broadcasting_income INTEGER,
    sponsorship_income INTEGER,
    ticket_sales_income INTEGER,
    merchandising_income INTEGER,
    operating_expenses INTEGER,
    player_transfer_expenses INTEGER,
    staff_salaries INTEGER,
    facility_maintenance INTEGER,
    marketing_expenses INTEGER,
    tax_liability INTEGER,
    net_profit INTEGER,
    profit_margin_percent REAL,
    audit_status TEXT,
    auditor_name TEXT,
    report_generated_at TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO League_Financial_Reporting VALUES (1,10,'2022-2023',850000000,300000000,150000000,200000000,100000000,250000000,50000000,120000000,30000000,50000000,60000000,590000000,69.41,'Approved','AuditCo Ltd','2023-04-15','Annual financial statements','2023-04-01','2023-04-15');
INSERT INTO League_Financial_Reporting VALUES (2,10,'2021-2022',780000000,270000000,140000000,180000000,95000000,240000000,48000000,115000000,28000000,47000000,58000000,540000000,69.23,'Approved','AuditCo Ltd','2022-04-20','Previous fiscal year','2022-04-01','2022-04-20');
INSERT INTO League_Financial_Reporting VALUES (3,11,'2022-2023',420000000,150000000,80000000,90000000,50000000,130000000,30000000,60000000,18000000,25000000,30000000,260000000,61.9,'Pending','AuditPartners','2023-05-10','Mid‑year provisional report','2023-05-01','2023-05-10');

-- Match analytics heatmap data
CREATE TABLE Match_Analytics_Heatmaps (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    team_id INTEGER,
    player_api_id INTEGER,
    half INTEGER,
    zone_1_hits INTEGER,
    zone_2_hits INTEGER,
    zone_3_hits INTEGER,
    zone_4_hits INTEGER,
    zone_5_hits INTEGER,
    zone_6_hits INTEGER,
    zone_7_hits INTEGER,
    zone_8_hits INTEGER,
    zone_9_hits INTEGER,
    zone_10_hits INTEGER,
    zone_11_hits INTEGER,
    zone_12_hits INTEGER,
    zone_13_hits INTEGER,
    zone_14_hits INTEGER,
    zone_15_hits INTEGER,
    zone_16_hits INTEGER,
    total_distance_m INTEGER,
    average_speed_kph REAL,
    max_speed_kph REAL,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Match_Analytics_Heatmaps VALUES (1,5001,200,10234,1,12,8,5,7,3,10,6,4,2,9,1,0,0,5,3,2,1,0,15000,6.8,22.5,'2023-09-06','2023-09-06');
INSERT INTO Match_Analytics_Heatmaps VALUES (2,5001,200,10235,1,5,9,6,4,8,12,3,2,1,6,2,0,1,4,7,5,0,2,13000,7.1,24.0,'2023-09-06','2023-09-06');
INSERT INTO Match_Analytics_Heatmaps VALUES (3,5001,201,20456,2,3,7,9,11,4,2,6,8,5,1,0,0,0,2,3,1,0,0,0,9000,5.9,19.8,'2023-09-06','2023-09-06');

-- Sponsor brand exposure logs
CREATE TABLE Sponsor_Brand_Exposure_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    match_id INTEGER,
    exposure_type TEXT,
    exposure_medium TEXT,
    impressions INTEGER,
    clicks INTEGER,
    view_time_seconds INTEGER,
    cost_per_impression REAL,
    cost_per_click REAL,
    total_spent REAL,
    campaign_name TEXT,
    target_audience TEXT,
    geographic_region TEXT,
    device_type TEXT,
    ad_position TEXT,
    frequency_cap INTEGER,
    start_date TEXT,
    end_date TEXT,
    verification_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Sponsor_Brand_Exposure_Logs VALUES (1,301,5001,'Banner','Stadium_Side','120000','300','45','0.01','0.5','1700','Summer_Campaign','Adults 18-35','Europe','LED_Screen','Top_Left',3,'2023-06-01','2023-08-31','Verified','Primary sponsor banner','2023-09-01','2023-09-01');
INSERT INTO Sponsor_Brand_Exposure_Logs VALUES (2,302,5002,'Video','Streaming','85000','210','30','0.012','0.45','1350','Autumn_Push','All Ages','North_America','Mobile_App','Mid_Roll',2,'2023-09-01','2023-11-30','Pending','In‑game video ad','2023-09-10','2023-09-10');
INSERT INTO Sponsor_Brand_Exposure_Logs VALUES (3,301,5003,'Social','Twitter','200000','500','15','0.005','0.2','1100','Winter_Social','Adults 25-45','Asia','Desktop','Sidebar',4,'2023-12-01','2024-02-28','Verified','Twitter carousel ad','2023-12-01','2023-12-01');

-- Training science metrics
CREATE TABLE Training_Science_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    session_date TEXT,
    metric_type TEXT,
    vo2max_ml_per_kg_min REAL,
    lactate_threshold_percent REAL,
    sprint_5m_time_ms INTEGER,
    sprint_10m_time_ms INTEGER,
    agility_test_score REAL,
    vertical_jump_cm REAL,
    bench_press_kg REAL,
    squat_kg REAL,
    body_fat_percent REAL,
    resting_heart_rate_bpm INTEGER,
    sleep_duration_minutes INTEGER,
    recovery_score REAL,
    hydration_level_percent REAL,
    nutrition_score REAL,
    mental_fatigue_score REAL,
    injury_risk_score REAL,
    coach_notes TEXT,
    recorded_by TEXT,
    recorded_at TEXT
);
INSERT INTO Training_Science_Metrics VALUES (1,10234,'2023-08-20','Endurance',55.2,82.5,720,1320,7.4,35.0,120.0,180.0,12.5,58,420,85.0,96.0,88.0,15.0,30.0,'Good progress','coach_miller','2023-08-20 10:00');
INSERT INTO Training_Science_Metrics VALUES (2,10235,'2023-08-20','Strength',48.5,78.0,890,1500,6.8,28.0,115.0,165.0,14.2,62,380,78.0,90.0,80.0,20.0,45.0,'Needs focus on core','coach_miller','2023-08-20 10:15');
INSERT INTO Training_Science_Metrics VALUES (3,20456,'2023-08-19','Recovery',50.0,80.0,800,1400,7.0,32.0,110.0,170.0,13.0,60,400,82.0,94.0,85.0,12.0,25.0,'Recovered well after match','coach_jones','2023-08-19 09:45');

-- Medical treatment procedures log
CREATE TABLE Medical_Treatment_Procedures (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    treatment_date TEXT,
    procedure_code TEXT,
    procedure_name TEXT,
    department TEXT,
    attending_physician TEXT,
    anesthesia_type TEXT,
    duration_minutes INTEGER,
    outcome TEXT,
    follow_up_required INTEGER,
    follow_up_date TEXT,
    medication_prescribed TEXT,
    dosage_mg INTEGER,
    notes TEXT,
    billing_code TEXT,
    insurance_approved INTEGER,
    cost INTEGER,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Medical_Treatment_Procedures VALUES (1,10234,'2023-07-15','PT001','Knee Arthroscopy','Sports_Medicine','Dr_Lee','General','90','Successful',1,'2023-08-01','Painkiller','50','Minor swelling post‑op','MED1001',1,2500,'2023-07-15','2023-07-15');
INSERT INTO Medical_Treatment_Procedures VALUES (2,10235,'2023-06-10','PT045','MRI Scan','Radiology','Dr_Khan','None','30','N/A',0,NULL,'Contrast','N/A','MRI of lumbar spine','RAD2002',1,800,'2023-06-10','2023-06-10');
INSERT INTO Medical_Treatment_Procedures VALUES (3,20456,'2023-08-05','PT020','Physiotherapy Session','Rehab','Dr_Smith','None','45','Improved range of motion',0,NULL,'N/A','0','Session 12','PHY3003',1,120,'2023-08-05','2023-08-05');

-- International scouting trips
CREATE TABLE International_Scouting_Trips (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    scout_name TEXT,
    agency TEXT,
    destination_country TEXT,
    city TEXT,
    start_date TEXT,
    end_date TEXT,
    purpose TEXT,
    number_of_players_observed INTEGER,
    total_player_minutes_observed INTEGER,
    primary_position_focus TEXT,
    age_range_focus TEXT,
    report_submitted INTEGER,
    report_submission_date TEXT,
    total_expense_usd INTEGER,
    accommodation_type TEXT,
    transportation_mode TEXT,
    meals_included INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO International_Scouting_Trips VALUES (1,'Laura Gomez','GlobalScout','Brazil','Sao Paulo','2023-09-01','2023-09-10','Identify emerging forwards',15,4500,'Forward','18-21',1,'2023-09-12',5400,'Hotel','Flight',1,'Excellent talent pool','2023-09-01','2023-09-10');
INSERT INTO International_Scouting_Trips VALUES (2,'Mike O\'Connor','EuroTalent','Germany','Munich','2023-08-15','2023-08-22','Assess defensive prospects',10,3200,'Defender','19-23',1,'2023-08-25',4300,'Apartment','Train',1,'Focus on ball‑playing centre‑backs','2023-08-15','2023-08-22');
INSERT INTO International_Scouting_Trips VALUES (3,'Sofia Patel','AsiaScout','Japan','Tokyo','2023-07-05','2023-07-12','Midfield scouting',12,3600,'Midfielder','20-24',1,'2023-07-15',3800,'Hostel','Flight',1,'Technical midfielders with high work rate','2023-07-05','2023-07-12');