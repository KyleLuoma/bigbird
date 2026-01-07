-- Referee Certification Records
CREATE TABLE Referee_Certification_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    referee_id INTEGER,
    cert_type TEXT,
    cert_issue_date TEXT,
    cert_expiry_date TEXT,
    issuing_body TEXT,
    cert_level TEXT,
    country TEXT,
    cert_number TEXT,
    valid INTEGER,
    renewal_required INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    exam_score INTEGER,
    training_hours INTEGER,
    previous_cert_id INTEGER,
    status TEXT,
    approval_by TEXT,
    document_path TEXT
);

INSERT INTO Referee_Certification_Records VALUES (1,101,'International','2022-03-15','2025-03-15','FIFA','Level_1','Germany','CERT2022001',1,0,'First certification','2022-03-15','2022-03-15',92,120,NULL,'Active','Admin','/docs/cert1.pdf');
INSERT INTO Referee_Certification_Records VALUES (2,102,'National','2021-07-01','2024-07-01','DFB','Level_2','Germany','CERT2021002',1,1,'Renewal required','2021-07-01','2023-01-10',85,100,1,'Pending','Supervisor','/docs/cert2.pdf');
INSERT INTO Referee_Certification_Records VALUES (3,103,'Continental','2020-11-20','2023-11-20','UEFA','Level_1','Spain','CERT2020003',0,1,'Expired, awaiting renewal','2020-11-20','2022-12-05',78,90,2,'Expired','Coordinator','/docs/cert3.pdf');

-- Player Salary History
CREATE TABLE Player_Salary_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    season TEXT,
    base_salary REAL,
    bonus REAL,
    total_compensation REAL,
    currency TEXT,
    contract_start TEXT,
    contract_end TEXT,
    clauses TEXT,
    performance_bonus REAL,
    signing_bonus REAL,
    loyalty_bonus REAL,
    rebate_amount REAL,
    tax_rate REAL,
    net_salary REAL,
    payment_frequency TEXT,
    bank_account TEXT,
    sponsor_contribution REAL,
    notes TEXT
);

INSERT INTO Player_Salary_History VALUES (1,201,'2022/2023',5000000,750000,5750000,'EUR','2022-07-01','2025-06-30','ReleaseClause500M',200000,300000,150000,50000,0.30,4025000,'Monthly','DE1234567890',250000,'Top scorer bonus');
INSERT INTO Player_Salary_History VALUES (2,202,'2021/2022',3200000,400000,3600000,'USD','2021-01-01','2024-12-31','NoReleaseClause',150000,200000,0,0,0.25,2700000,'Quarterly','US0987654321',0,'Midfielder contract');
INSERT INTO Player_Salary_History VALUES (3,203,'2023/2024',7500000,1200000,8700000,'GBP','2023-08-15','2028-08-14','ReleaseClause750M',300000,500000,200000,100000,0.35,5655000,'Annual','GB1122334455',500000,'Goalkeeper high wage');

-- Team Travel Logistics
CREATE TABLE Team_Travel_Logistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    team_api_id INTEGER,
    departure_airport TEXT,
    arrival_airport TEXT,
    departure_time TEXT,
    arrival_time TEXT,
    transport_mode TEXT,
    accommodation_name TEXT,
    hotel_checkin TEXT,
    hotel_checkout TEXT,
    meals_provided TEXT,
    staff_count INTEGER,
    equipment_weight REAL,
    carbon_footprint REAL,
    travel_cost REAL,
    sponsor_support TEXT,
    travel_manager TEXT,
    itinerary_link TEXT,
    notes TEXT
);

INSERT INTO Team_Travel_Logistics VALUES (1,301,401,'FRACDG','ENGLHR','2023-04-05 08:00','2023-04-05 09:30','Air','HiltonLondon','2023-04-05','2023-04-10','FullBoard',15,1200.5,350.2,120000,'AirlinePartner','JohnDoe','/itineraries/301_401.pdf','Standard away trip');
INSERT INTO Team_Travel_Logistics VALUES (2,302,402,'ESPBCN','ITAFLR','2023-05-12 14:00','2023-05-12 15:20','Air','MarriottRome','2023-05-12','2023-05-18','HalfBoard',12,1100.0,300.0,95000,'TravelAgencyX','JaneSmith','/itineraries/302_402.pdf','Midweek fixture');
INSERT INTO Team_Travel_Logistics VALUES (3,303,403,'NLDAMS','DEFMUC','2023-06-20 06:30','2023-06-20 08:45','Air','HyattMunich','2023-06-20','2023-06-25','BreakfastOnly',10,950.3,280.5,85000,'SponsorY','MikeBrown','/itineraries/303_403.pdf','Pre‑season friendly');

-- Stadium Energy Consumption
CREATE TABLE Stadium_Energy_Consumption (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    record_date TEXT,
    electricity_kwh REAL,
    gas_therms REAL,
    water_liters REAL,
    renewable_percent REAL,
    peak_demand_kw REAL,
    avg_temperature_c REAL,
    humidity_percent REAL,
    co2_emissions_kg REAL,
    energy_cost_usd REAL,
    primary_source TEXT,
    backup_source TEXT,
    maintenance_downtime_hours REAL,
    notes TEXT,
    meter_reading_id TEXT,
    billing_cycle TEXT,
    contract_type TEXT,
    provider_name TEXT
);

INSERT INTO Stadium_Energy_Consumption VALUES (1,501,'2023-01-15',25000.5,300.2,15000,45.0,1200.0,22.5,55.0,5000.0,'Solar','Diesel generator',2.5,'Winter usage','MTR001','Monthly','Fixed','EnergyCo');
INSERT INTO Stadium_Energy_Consumption VALUES (2,502,'2023-07-20',34000.0,250.0,18000,60.0,1500.0,24.0,60.0,6800.0,'Grid','Battery backup',1.0,'Summer peak','MTR002','Quarterly','Variable','PowerGrid');
INSERT INTO Stadium_Energy_Consumption VALUES (3,503,'2023-04-10',30000.0,275.5,16500,55.0,1350.0,23.0,58.0,6200.0,'Wind','Gas turbine',1.8,'Spring average','MTR003','Monthly','Hybrid','EcoPower');

-- Fan Digital Engagement Activities
CREATE TABLE Fan_Digital_Engagement_Activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    activity_date TEXT,
    activity_type TEXT,
    platform TEXT,
    duration_minutes INTEGER,
    clicks INTEGER,
    shares INTEGER,
    comments INTEGER,
    likes INTEGER,
    content_id TEXT,
    campaign_id TEXT,
    reward_points INTEGER,
    level_achieved TEXT,
    device_type TEXT,
    ip_address TEXT,
    geo_location TEXT,
    referral_source TEXT,
    outcome TEXT,
    notes TEXT
);

INSERT INTO Fan_Digital_Engagement_Activities VALUES (1,601,'2023-03-01','VideoView','YouTube',5,120,30,12,50,'VID1001','CMP2001',150,'Bronze','Mobile','192.168.1.10','Berlin','Email','Completed','First video engagement');
INSERT INTO Fan_Digital_Engagement_Activities VALUES (2,602,'2023-04-15','Quiz','App',10,80,0,20,70,'QUIZ3002','CMP2002',250,'Silver','Tablet','192.168.1.20','Madrid','Social','Passed','Championship quiz');
INSERT INTO Fan_Digital_Engagement_Activities VALUES (3,603,'2023-05-22','LiveChat','Website',15,200,5,8,120,'CHAT4003','CMP2003',350,'Gold','Desktop','192.168.1.30','Paris','Ad','Engaged','Post‑match discussion');

-- Sponsor Contract Milestones
CREATE TABLE Sponsor_Contract_Milestones (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    contract_id INTEGER,
    milestone_name TEXT,
    due_date TEXT,
    completion_date TEXT,
    status TEXT,
    payment_amount REAL,
    currency TEXT,
    responsible_party TEXT,
    notes TEXT,
    penalty_applicable INTEGER,
    penalty_amount REAL,
    performance_metric TEXT,
    metric_value REAL,
    verification_method TEXT,
    updated_by TEXT,
    update_timestamp TEXT,
    last_review_date TEXT,
    compliance_flag INTEGER
);

INSERT INTO Sponsor_Contract_Milestones VALUES (1,701,801,'LogoPlacement','2023-03-01','2023-02-28','Completed',50000,'EUR','MarketingLead','All assets delivered',0,0,'Impressions',1000000,'DigitalReport','AnnaK','2023-02-28','2023-03-05',1);
INSERT INTO Sponsor_Contract_Milestones VALUES (2,702,802,'SocialMediaCampaign','2023-06-15',NULL,'Pending',30000,'USD','SocialTeam','Creative assets pending',1,5000,'EngagementRate',5.2,'AgencyAudit','MarkL','2023-05-20','2023-05-25',0);
INSERT INTO Sponsor_Contract_Milestones VALUES (3,703,803,'StadiumBanner','2023-04-10','2023-04-09','Completed',20000,'GBP','Operations','Banner installed',0,0,'VisibilityScore',85,'SiteInspection','LauraM','2023-04-09','2023-04-12',1);

-- Media Production Schedule
CREATE TABLE Media_Production_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    production_id INTEGER,
    title TEXT,
    start_date TEXT,
    end_date TEXT,
    location TEXT,
    director TEXT,
    producer TEXT,
    budget_usd REAL,
    crew_count INTEGER,
    equipment_list TEXT,
    daily_shoot_hours INTEGER,
    scenes_planned INTEGER,
    scenes_completed INTEGER,
    post_production_start TEXT,
    post_production_end TEXT,
    release_date TEXT,
    rating TEXT,
    distribution_channel TEXT,
    notes TEXT
);

INSERT INTO Media_Production_Schedule VALUES (1,901,'SeasonPreview2023','2023-02-01','2023-02-10','Munich','DirA','ProdX',250000,35,'Cameras,Lights,Sound',8,12,12,'2023-02-11','2023-02-20','2023-02-25','PG','TV','Standard preview');
INSERT INTO Media_Production_Schedule VALUES (2,902,'PlayerInterviewJohn','2023-03-05','2023-03-05','London','DirB','ProdY',50000,8,'Camera,Mic',4,1,1,'2023-03-06','2023-03-08','2023-03-10','G','Online','Interview segment');
INSERT INTO Media_Production_Schedule VALUES (3,903,'MatchHighlightsWeek5','2023-04-01','2023-04-02','Remote','DirC','ProdZ',120000,20,'MultipleCams,Drone',10,5,5,'2023-04-03','2023-04-07','2023-04-09','PG-13','Streaming','Weekly highlights');

-- Training Center Air Quality Records
CREATE TABLE Training_Center_AirQuality_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    record_date TEXT,
    pm2_5_ug_m3 REAL,
    pm10_ug_m3 REAL,
    co2_ppm REAL,
    tvoc_ppb REAL,
    temperature_c REAL,
    humidity_percent REAL,
    ventilation_rate_cmh REAL,
    filter_change_date TEXT,
    ozone_ppb REAL,
    no2_ppb REAL,
    so2_ppb REAL,
    aqi INTEGER,
    aqi_category TEXT,
    recorded_by TEXT,
    notes TEXT,
    calibration_date TEXT,
    equipment_id TEXT
);

INSERT INTO Training_Center_AirQuality_Records VALUES (1,1001,'2023-01-20',12.5,25.0,420.0,150.0,20.5,45.0,300.0,'2022-12-01',0.02,15,3,42,'Good','TechnicianA','Routine check','2023-01-15','EQ001');
INSERT INTO Training_Center_AirQuality_Records VALUES (2,1002,'2023-07-15',18.0,30.5,460.0,180.0,22.0,50.0,320.0,'2023-06-01',0.05,20,5,78,'Moderate','TechnicianB','Post‑summer review','2023-07-10','EQ002');
INSERT INTO Training_Center_AirQuality_Records VALUES (3,1003,'2023-04-10',10.0,20.0,380.0,130.0,19.0,40.0,280.0','2023-03-01',0.01,12,2,35,'Good','TechnicianC','Spring calibration','2023-04-05','EQ003');

-- Player Mental Health Sessions
CREATE TABLE Player_Mental_Health_Sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    session_date TEXT,
    therapist_name TEXT,
    session_type TEXT,
    duration_minutes INTEGER,
    assessment_score INTEGER,
    notes TEXT,
    follow_up_date TEXT,
    medication_prescribed TEXT,
    dosage_mg REAL,
    frequency_per_day INTEGER,
    therapy_modality TEXT,
    goals_set TEXT,
    progress_notes TEXT,
    confidentiality_level TEXT,
    rating INTEGER,
    session_location TEXT,
    session_id TEXT,
    outcome TEXT
);

INSERT INTO Player_Mental_Health_Sessions VALUES (1,201,'2023-02-14','TherapistA','Counselling',60,85,'Stress management','2023-03-01','Sertraline',50,1,'CBT','Improve focus','Positive response','High',4,'ClubClinic','SES001','Improved');
INSERT INTO Player_Mental_Health_Sessions VALUES (2,202,'2023-05-22','TherapistB','Psych Evaluation',90,70,'Performance anxiety','2023-06-10','None',0,0,'TalkTherapy','Reduce anxiety','Need further sessions','Medium',3,'Remote','SES002','Partial');
INSERT INTO Player_Mental_Health_Sessions VALUES (3,203,'2023-08-05','TherapistC','Group Session',45,78,'Team cohesion','2023-08-20','None',0,0,'Group','Build trust','Good interaction','Low',5,'TrainingCenter','SES003','Successful');

-- Club Real Estate Asset Details
CREATE TABLE Club_Real_Estate_Asset_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    asset_type TEXT,
    asset_name TEXT,
    purchase_date TEXT,
    purchase_price_usd REAL,
    location_city TEXT,
    location_country TEXT,
    size_sqft REAL,
    depreciation_years INTEGER,
    current_valuation_usd REAL,
    last_valuation_date TEXT,
    insurance_provider TEXT,
    insurance_policy_number TEXT,
    maintenance_cost_annual_usd REAL,
    occupancy_status TEXT,
    tenant_name TEXT,
    lease_start TEXT,
    lease_end TEXT,
    notes TEXT
);

INSERT INTO Club_Real_Estate_Asset_Details VALUES (1,1,'Training Facility','WestSideAcademy','2015-06-01',8000000,'Munich','Germany',120000,30,9500000,'2023-01-15','InsuranceCo','POL12345',120000,'Leased','LocalSportsClub','2022-07-01','2027-06-30','Renovated 2021');
INSERT INTO Club_Real_Estate_Asset_Details VALUES (2,2,'Office Building','NorthWingHQ','2018-09-15',5000000,'London','UK',85000,25,5500000,'2022-12-10','SecureIns','POL67890',80000,'Owned',NULL,NULL,NULL,'Headquarters');
INSERT INTO Club_Real_Estate_Asset_Details VALUES (3,3,'Hotel','StadiumInn','2020-03-20',3000000,'Madrid','Spain',60000,20,3200000,'2023-05-05','GlobalCover','POL54321',50000,'Leased','TravelAgency','2023-01-01','2028-12-31','Provides accommodation for visiting teams');