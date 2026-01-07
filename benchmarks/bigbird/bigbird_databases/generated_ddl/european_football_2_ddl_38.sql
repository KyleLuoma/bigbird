-- Broadcast sponsor package details
CREATE TABLE Broadcast_Sponsor_Packages (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name TEXT,
    package_name TEXT,
    start_date TEXT,
    end_date TEXT,
    total_value INTEGER,
    broadcast_region TEXT,
    ad_slots INTEGER,
    prime_time_slots INTEGER,
    digital_slots INTEGER,
    on_air_mentions INTEGER,
    product_placements INTEGER,
    exclusivity_flag INTEGER,
    contract_url TEXT,
    created_at TEXT,
    updated_at TEXT,
    currency TEXT,
    payment_terms TEXT,
    audience_target TEXT,
    rating_guarantee INTEGER,
    cancellation_fee INTEGER,
    renewal_option TEXT
);

INSERT INTO Broadcast_Sponsor_Packages VALUES (1,'AlphaMedia','Platinum','2023-01-01','2024-12-31',1500000,'NorthAmerica',50,20,30,10,8,1,'http://contract1.com','2023-01-01','2023-01-01','USD','Net30','Adults',80,20000,'Yes');
INSERT INTO Broadcast_Sponsor_Packages VALUES (2,'BetaSports','Gold','2022-06-15','2025-06-14',900000,'Europe',35,15,25,7,5,0,'http://contract2.com','2022-06-15','2022-06-15','EUR','Net45','Youth',70,15000,'No');
INSERT INTO Broadcast_Sponsor_Packages VALUES (3,'GammaGear','Silver','2024-03-01','2026-02-28',500000,'Asia',20,10,15,5,3,0,'http://contract3.com','2024-03-01','2024-03-01','JPY','Net60','All',60,10000,'Yes');

-- Stadium renovation cost estimates
CREATE TABLE Stadium_Renovation_Estimates (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    project_name TEXT,
    phase TEXT,
    estimated_cost INTEGER,
    approved_budget INTEGER,
    contractor_name TEXT,
    start_date TEXT,
    projected_end_date TEXT,
    actual_start_date TEXT,
    actual_end_date TEXT,
    cost_overrun_percent REAL,
    funding_source TEXT,
    environmental_impact_score REAL,
    permits_obtained INTEGER,
    design_firm TEXT,
    project_manager TEXT,
    stakeholder_meeting_date TEXT,
    risk_assessment_level TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT
);

INSERT INTO Stadium_Renovation_Estimates VALUES (1,101,'North Stand Upgrade','Planning',2000000,1800000,'BuildCo','2023-04-01','2024-09-30','','',0.0,'ClubFunds',7.5,1,'DesignStudioA','AliceSmith','2023-03-15','Medium','Pending','Initial review','2023-04-01');
INSERT INTO Stadium_Renovation_Estimates VALUES (2,102,'Roof Replacement','Construction',3500000,3600000,'RoofMasters','2022-07-01','2023-12-31','2022-07-01','',5.0,'MunicipalGrant',8.0,1,'DesignStudioB','BobJones','2022-06-20','High','InProgress','Materials sourced','2022-07-01');
INSERT INTO Stadium_Renovation_Estimates VALUES (3,103,'Lighting System Modernization','Design',800000,850000,'LightWorks','2024-01-15','2024-07-15','','',0.0,'PrivateSponsor',6.5,1,'DesignStudioC','CarolLee','2024-01-10','Low','Planned','Awaiting permits','2024-01-15');

-- Fan interactive quiz statistics per match
CREATE TABLE Fan_Interactive_Quiz_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    fan_id INTEGER,
    quiz_name TEXT,
    total_questions INTEGER,
    correct_answers INTEGER,
    time_taken_seconds INTEGER,
    score_percent REAL,
    device_type TEXT,
    browser TEXT,
    ip_address TEXT,
    location_city TEXT,
    location_country TEXT,
    participation_date TEXT,
    reward_earned TEXT,
    reward_type TEXT,
    feedback_score INTEGER,
    comments TEXT,
    created_at TEXT,
    updated_at TEXT,
    version TEXT,
    api_version TEXT
);

INSERT INTO Fan_Interactive_Quiz_Stats VALUES (1,5001,301,'MatchDayQuiz',10,8,120,80.0,'Mobile','Chrome','192.168.1.10','Berlin','Germany','2024-03-15','FreeTicket','Ticket',9,'Great quiz','2024-03-15','2024-03-15','v1','1.0');
INSERT INTO Fan_Interactive_Quiz_Stats VALUES (2,5002,302,'MatchDayQuiz',10,7,135,70.0,'Desktop','Firefox','192.168.1.11','Madrid','Spain','2024-03-16','DiscountVoucher','Merch',8,'Enjoyed it','2024-03-16','2024-03-16','v1','1.0');
INSERT INTO Fan_Interactive_Quiz_Stats VALUES (3,5003,303,'MatchDayQuiz',10,9,110,90.0,'Tablet','Safari','192.168.1.12','London','UK','2024-03-17','VIPPass','Experience',10,'Excellent!','2024-03-17','2024-03-17','v1','1.0');

-- Detailed logistics for team travel
CREATE TABLE Team_Travel_Logistics_Detail (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    travel_id INTEGER,
    departure_airport TEXT,
    arrival_airport TEXT,
    departure_datetime TEXT,
    arrival_datetime TEXT,
    transport_mode TEXT,
    flight_number TEXT,
    hotel_name TEXT,
    room_type TEXT,
    number_of_rooms INTEGER,
    meal_plan TEXT,
    ground_transport_provider TEXT,
    pickup_time TEXT,
    dropoff_time TEXT,
    travel_cost INTEGER,
    sponsor_contribution INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    itinerary_pdf_url TEXT,
    emergency_contact TEXT
);

INSERT INTO Team_Travel_Logistics_Detail VALUES (1,10,9001,'JFK','LHR','2024-04-01 08:00','2024-04-01 20:00','Air','AA100','GrandHotel','Suite',2,'FullBoard','TransCo','2024-04-01 21:00','2024-04-10 07:00',12000,2000,'First leg of tour','2024-04-01','2024-04-01','http://itinerary1.pdf','+11234567890');
INSERT INTO Team_Travel_Logistics_Detail VALUES (2,11,9002,'LAX','NRT','2024-05-10 10:00','2024-05-11 14:00','Air','DL200','TokyoInn','Deluxe',3,'BreakfastOnly','RideShare','2024-05-11 15:00','2024-05-20 10:00',15000,2500,'Asia tour','2024-05-10','2024-05-10','http://itinerary2.pdf','+19876543210');
INSERT INTO Team_Travel_Logistics_Detail VALUES (3,12,9003,'CDG','SYD','2024-06-20 07:30','2024-06-20 22:45','Air','QF300','SydneyResort','Standard',1,'HalfBoard','BusCo','2024-06-20 23:30','2024-06-30 08:00',18000,3000,'Australia tour','2024-06-20','2024-06-20','http://itinerary3.pdf','+12345678901');

-- Repository of league media assets
CREATE TABLE League_Media_Asset_Repository (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    asset_type TEXT,
    asset_name TEXT,
    file_path TEXT,
    file_size_mb REAL,
    resolution TEXT,
    duration_seconds INTEGER,
    creator_name TEXT,
    upload_date TEXT,
    rights_holder TEXT,
    usage_permission TEXT,
    expiration_date TEXT,
    tags TEXT,
    description TEXT,
    version TEXT,
    checksum TEXT,
    storage_location TEXT,
    access_level TEXT,
    last_accessed TEXT,
    download_count INTEGER,
    rating INTEGER,
    comments TEXT
);

INSERT INTO League_Media_Asset_Repository VALUES (1,1,'Video','OpeningCeremony','/media/league1/opening.mp4',250.5,'1920x1080',300,'MediaTeamA','2023-09-01','League','Unlimited','2025-09-01','ceremony,opening','Opening ceremony video','v1','abcd1234','CloudA','Public','2024-03-01',1500,5,'High quality');
INSERT INTO League_Media_Asset_Repository VALUES (2,2,'Image','Logo','/media/league2/logo.png',2.3,'800x800',0,'DesignDept','2022-01-15','League','Exclusive','2027-01-15','logo,branding','Official league logo','v2','efgh5678','CloudB','Restricted','2024-02-20',800,4,'Used in promos');
INSERT INTO League_Media_Asset_Repository VALUES (3,3,'Audio','ThemeSong','/media/league3/theme.mp3',5.0,'','180','AudioStudio','2024-02-10','League','Limited','2026-02-10','theme,music','League theme music','v1','ijkl9012','CloudC','Public','2024-03-10',300,5,'Popular with fans');

-- Daily energy consumption records for clubs
CREATE TABLE Club_Energy_Consumption_Daily (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    date TEXT,
    electricity_kwh REAL,
    gas_therms REAL,
    water_m3 REAL,
    renewable_percent REAL,
    peak_demand_kw REAL,
    avg_consumption_kw REAL,
    carbon_emission_kg REAL,
    cost_usd REAL,
    meter_reading_start REAL,
    meter_reading_end REAL,
    utility_provider TEXT,
    solar_generation_kwh REAL,
    wind_generation_kwh REAL,
    battery_storage_used_kwh REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    audit_flag INTEGER,
    data_source TEXT
);

INSERT INTO Club_Energy_Consumption_Daily VALUES (1,10,'2024-03-01',1240.5,85.3,250.0,35.0,500.0,400.0,3500.0,1200.0,1240.5,'UtilityCo',200.0,50.0,30.0,'Normal day','2024-03-01','2024-03-01',0,'SmartMeter');
INSERT INTO Club_Energy_Consumption_Daily VALUES (2,11,'2024-03-01',980.2,70.1,210.5,40.0,420.0,340.0,2800.0,950.0,980.2','EnergyInc',180.0,40.0,25.0,'Cooler night','2024-03-01','2024-03-01',0,'SmartMeter');
INSERT INTO Club_Energy_Consumption_Daily VALUES (3,12,'2024-03-01',1500.0,95.0,300.0,30.0,600.0,460.0,4200.0,1450.0,1500.0,'PowerGrid',250.0,60.0,35.0,'High usage due to event','2024-03-01','2024-03-01',1,'ManualEntry');

-- Player social media engagement metrics
CREATE TABLE Player_Social_Media_Engagement (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    platform TEXT,
    username TEXT,
    followers_count INTEGER,
    posts_last_30d INTEGER,
    avg_likes_per_post REAL,
    avg_comments_per_post REAL,
    engagement_rate REAL,
    verified_flag INTEGER,
    last_post_date TEXT,
    profile_created_date TEXT,
    bio_text TEXT,
    profile_picture_url TEXT,
    audience_country_top TEXT,
    audience_age_group TEXT,
    audience_gender_ratio TEXT,
    sponsored_posts_last_30d INTEGER,
    total_sponsored_value_usd INTEGER,
    brand_collaborations TEXT,
    sentiment_score REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Player_Social_Media_Engagement VALUES (1,2001,'Instagram','player_one','150000','12',850.5,40.2,1.2,1,'2024-02-28','2018-05-01','Professional footballer','http://img1.com','USA','25-34','55/45',3,7500,'Nike;Adidas',0.85,'Positive vibe','2024-03-01','2024-03-01');
INSERT INTO Player_Social_Media_Engagement VALUES (2,2002,'Twitter','player_two','80000','8',420.0,30.5,0.9,0,'2024-02-20','2017-03-15','Midfielder','http://img2.com','UK','18-24','48/52',2,3000,'Puma',0.78,'Steady growth','2024-03-01','2024-03-01');
INSERT INTO Player_Social_Media_Engagement VALUES (3,2003,'TikTok','player_three','200000','20',1500.0,60.0,2.5,1,'2024-03-02','2020-01-10','Forward','http://img3.com','Brazil','18-24','50/50',5,12000,'NewBalance;UnderArmour',0.92,'Viral content','2024-03-02','2024-03-02');

-- Timeline of match events
CREATE TABLE Match_Event_Timelines (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    event_minute INTEGER,
    event_type TEXT,
    player_id INTEGER,
    team_id INTEGER,
    event_description TEXT,
    zone_x REAL,
    zone_y REAL,
    related_event_id INTEGER,
    video_clip_url TEXT,
    audio_clip_url TEXT,
    crowd_noise_level INTEGER,
    weather_condition TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    analyst_name TEXT,
    confidence_score REAL
);

INSERT INTO Match_Event_Timelines VALUES (1,5001,15,'Goal',2001,10,'Right footed shot from outside box',45.0,30.0,NULL,'http://clip1.mp4','http://audio1.mp3',85,'Clear',12.5,60,'Great strike','2024-03-15','2024-03-15','AnalystA',0.98);
INSERT INTO Match_Event_Timelines VALUES (2,5002,30,'Yellow Card',2002,11,'Late tackle',22.5,55.0,NULL,'http://clip2.mp4','http://audio2.mp3',75,'Rainy',10.0,80,'Controversial','2024-03-16','2024-03-16','AnalystB',0.85);
INSERT INTO Match_Event_Timelines VALUES (3,5003,78,'Substitution',2003,12,'Offensive change',60.0,40.0,NULL,'http://clip3.mp4','http://audio3.mp3',78,'Sunny',20.0,45,'Tactical shift','2024-03-17','2024-03-17','AnalystC',0.92);

-- Enrollments for medical research studies
CREATE TABLE Medical_Research_Study_Enrollments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    study_id INTEGER,
    participant_id INTEGER,
    enrollment_date TEXT,
    consent_form_signed INTEGER,
    age INTEGER,
    gender TEXT,
    bmi REAL,
    medical_history_summary TEXT,
    current_medications TEXT,
    baseline_test_score REAL,
    assigned_group TEXT,
    followup_schedule TEXT,
    primary_outcome TEXT,
    secondary_outcome TEXT,
    status TEXT,
    withdrawal_reason TEXT,
    last_contact_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    data_access_level TEXT
);

INSERT INTO Medical_Research_Study_Enrollments VALUES (1,301,4001,'2023-11-01',1,28,'M',23.5,'No major issues','None',85.0,'Control','Quarterly','Cardio fitness','Flexibility','Active','', '2024-02-01','Initial enrollment','2023-11-01','2024-02-01','Restricted');
INSERT INTO Medical_Research_Study_Enrollments VALUES (2,301,4002,'2023-11-15',1,32,'F',27.2,'Asthma','Inhaler',78.0,'Treatment','BiMonthly','Lung capacity','Blood pressure','Active','', '2024-02-10','Follow-up scheduled','2023-11-15','2024-02-10','Restricted');
INSERT INTO Medical_Research_Study_Enrollments VALUES (3,302,4003,'2024-01-05',1,45,'M',31.0,'Hypertension','BetaBlocker',70.0,'Control','Monthly','Blood sugar','Cholesterol','Withdrawn','Personal reasons','2024-01-20','Exited study','2024-01-05','2024-01-20','Restricted');

-- Inventory of equipment at training camps
CREATE TABLE Training_Camp_Equipment_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    camp_id INTEGER,
    equipment_type TEXT,
    equipment_name TEXT,
    serial_number TEXT,
    purchase_date TEXT,
    manufacturer TEXT,
    warranty_expiry TEXT,
    condition_status TEXT,
    quantity INTEGER,
    location TEXT,
    assigned_to_team TEXT,
    last_maintenance_date TEXT,
    next_maintenance_due TEXT,
    maintenance_provider TEXT,
    depreciation_value_usd INTEGER,
    current_value_usd INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    asset_tag TEXT,
    insurance_policy_number TEXT
);

INSERT INTO Training_Camp_Equipment_Inventory VALUES (1,601,'Ball','TrainingBall','TB-001','2022-06-01','SportCo','2025-06-01','Good',50,'CampA','All','2024-01-15','2024-07-15','MaintainCo',500,1500,'Routine check','2024-01-01','2024-01-01','TAG001','INS001');
INSERT INTO Training_Camp_Equipment_Inventory VALUES (2,602,'Cones','MarkerCone','MC-045','2021-03-15','GearMakers','2024-03-15','Fair',200,'CampB','U21','2023-12-10','2024-06-10','ServiceInc',300,800,'Slight wear','2023-12-01','2023-12-01','TAG045','INS045');
INSERT INTO Training_Camp_Equipment_Inventory VALUES (3,603,'GPS_Unit','PlayerGPS','GPS-220','2023-01-20','TechFit','2026-01-20','Excellent',30,'CampC','FirstTeam','2024-02-20','2024-08-20','TechService',1200,2500,'Calibrated','2024-02-01','2024-02-01','TAG220','INS220');