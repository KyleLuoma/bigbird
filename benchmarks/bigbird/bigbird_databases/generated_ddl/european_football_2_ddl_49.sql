-- Table storing contracts for head coaches and assistant coaches
CREATE TABLE Coach_Contracts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    coach_id INTEGER,
    team_fifa_api_id INTEGER,
    start_date TEXT,
    end_date TEXT,
    salary INTEGER,
    bonuses INTEGER,
    contract_type TEXT,
    release_clause INTEGER,
    performance_bonus INTEGER,
    health_clause TEXT,
    image_rights_clause TEXT,
    language TEXT,
    nationality TEXT,
    previous_club TEXT,
    coaching_license TEXT,
    education_level TEXT,
    contract_status TEXT,
    notes TEXT,
    last_modified TEXT
);

INSERT INTO Coach_Contracts (coach_id,team_fifa_api_id,start_date,end_date,salary,bonuses,contract_type,release_clause,performance_bonus,health_clause,image_rights_clause,language,nationality,previous_club,coaching_license,education_level,contract_status,notes,last_modified) VALUES (101,2001,'2023-07-01','2026-06-30',1200000,150000,'full_time',500000,200000,'standard','global','English','Spain','FCBarcelona','UEFA_PRO','Masters','active','initial_contract','2023-06-15');
INSERT INTO Coach_Contracts (coach_id,team_fifa_api_id,start_date,end_date,salary,bonuses,contract_type,release_clause,performance_bonus,health_clause,image_rights_clause,language,nationality,previous_club,coaching_license,education_level,contract_status,notes,last_modified) VALUES (102,2002,'2022-01-15','2025-01-14',950000,100000,'full_time',300000,150000,'standard','regional','German','Germany','BayernMunich','UEFA_A','Bachelors','active','renewed_2022','2022-01-10');
INSERT INTO Coach_Contracts (coach_id,team_fifa_api_id,start_date,end_date,salary,bonuses,contract_type,release_clause,performance_bonus,health_clause,image_rights_clause,language,nationality,previous_club,coaching_license,education_level,contract_status,notes,last_modified) VALUES (103,2003,'2021-09-01','2024-08-31',800000,80000,'assistant',200000,100000,'standard','local','French','France','PSG','UEFA_B','Bachelors','active','assistant_role','2021-08-20');

-- Table tracking yearly salary details for referees
CREATE TABLE Referee_Salary_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    referee_id INTEGER,
    season TEXT,
    base_salary INTEGER,
    match_fee INTEGER,
    travel_allowance INTEGER,
    performance_bonus INTEGER,
    penalty_deduction INTEGER,
    total_compensation INTEGER,
    payment_date TEXT,
    currency TEXT,
    notes TEXT,
    updated_by TEXT,
    contract_type TEXT,
    years_of_experience INTEGER,
    federation TEXT,
    region TEXT,
    grade TEXT,
    overtime_rate INTEGER,
    tax_rate INTEGER,
    net_pay INTEGER
);

INSERT INTO Referee_Salary_History (referee_id,season,base_salary,match_fee,travel_allowance,performance_bonus,penalty_deduction,total_compensation,payment_date,currency,notes,updated_by,contract_type,years_of_experience,federation,region,grade,overtime_rate,tax_rate,net_pay) VALUES (201,'2022/2023',50000,2000,1500,1000,0,54500,'2023-06-30','USD','none','admin','full_time',12,'FIFA','Europe','A',25,20,43600);
INSERT INTO Referee_Salary_History (referee_id,season,base_salary,match_fee,travel_allowance,performance_bonus,penalty_deduction,total_compensation,payment_date,currency,notes,updated_by,contract_type,years_of_experience,federation,region,grade,overtime_rate,tax_rate,net_pay) VALUES (202,'2022/2023',48000,1800,1400,800,100,51100,'2023-06-30','USD','late_fee','admin','full_time',10,'FIFA','Asia','B',20,18,41500);
INSERT INTO Referee_Salary_History (referee_id,season,base_salary,match_fee,travel_allowance,performance_bonus,penalty_deduction,total_compensation,payment_date,currency,notes,updated_by,contract_type,years_of_experience,federation,region,grade,overtime_rate,tax_rate,net_pay) VALUES (203,'2022/2023',52000,2200,1600,1200,0,56000,'2023-06-30','USD','excellent_performance','admin','full_time',14,'FIFA','SouthAmerica','A',30,22,43800);

-- Table storing weather sensor metadata installed at stadiums
CREATE TABLE Stadium_Weather_Sensors (
    sensor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    sensor_type TEXT,
    install_date TEXT,
    latitude REAL,
    longitude REAL,
    measurement_interval INTEGER,
    temperature REAL,
    humidity REAL,
    wind_speed REAL,
    wind_direction REAL,
    precipitation REAL,
    air_pressure REAL,
    uv_index REAL,
    sensor_status TEXT,
    last_calibration TEXT,
    firmware_version TEXT,
    battery_level INTEGER,
    signal_strength INTEGER,
    notes TEXT,
    data_endpoint TEXT
);

INSERT INTO Stadium_Weather_Sensors (stadium_id,sensor_type,install_date,latitude,longitude,measurement_interval,temperature,humidity,wind_speed,wind_direction,precipitation,air_pressure,uv_index,sensor_status,last_calibration,firmware_version,battery_level,signal_strength,notes,data_endpoint) VALUES (301,'temperature_humidity','2022-03-10',40.7128,-74.0060,60,22.5,55,5.2,180,0.0,1013,3,'active','2023-01-15','v1.4',95,80,'main_gate','api.stadiumweather.com/301');
INSERT INTO Stadium_Weather_Sensors (stadium_id,sensor_type,install_date,latitude,longitude,measurement_interval,temperature,humidity,wind_speed,wind_direction,precipitation,air_pressure,uv_index,sensor_status,last_calibration,firmware_version,battery_level,signal_strength,notes,data_endpoint) VALUES (302,'wind_precip','2021-11-05',34.0522,-118.2437,30,25.0,40,6.5,210,2.3,1010,5,'active','2023-02-20','v2.0',90,85,'rooftop','api.stadiumweather.com/302');
INSERT INTO Stadium_Weather_Sensors (stadium_id,sensor_type,install_date,latitude,longitude,measurement_interval,temperature,humidity,wind_speed,wind_direction,precipitation,air_pressure,uv_index,sensor_status,last_calibration,firmware_version,battery_level,signal_strength,notes,data_endpoint) VALUES (303,'air_quality','2023-01-12',51.5074,-0.1278,15,18.2,65,4.0,150,0.0,1015,2,'active','2023-03-01','v1.1',98,75,'south_stand','api.stadiumweather.com/303');

-- Table linking advertising slots to match streams
CREATE TABLE Match_Streaming_Ads (
    ad_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    ad_slot TEXT,
    advertiser_name TEXT,
    ad_start_time TEXT,
    ad_end_time TEXT,
    ad_duration INTEGER,
    cost INTEGER,
    impressions INTEGER,
    click_throughs INTEGER,
    conversion_rate REAL,
    ad_type TEXT,
    targeting_criteria TEXT,
    creative_id INTEGER,
    creative_format TEXT,
    verification_status TEXT,
    billing_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    platform TEXT
);

INSERT INTO Match_Streaming_Ads (match_id,ad_slot,advertiser_name,ad_start_time,ad_end_time,ad_duration,cost,impressions,click_throughs,conversion_rate,ad_type,targeting_criteria,creative_id,creative_format,verification_status,billing_status,notes,created_at,updated_at,platform) VALUES (401,'pre_match','Nike','2023-08-12 18:55:00','2023-08-12 19:00:00',300,25000,150000,1200,0.8,'video','age_18_35','601','mp4','verified','paid','launch_campaign','2023-08-01','2023-08-10','YouTube');
INSERT INTO Match_Streaming_Ads (match_id,ad_slot,advertiser_name,ad_start_time,ad_end_time,ad_duration,cost,impressions,click_throughs,conversion_rate,ad_type,targeting_criteria,creative_id,creative_format,verification_status,billing_status,notes,created_at,updated_at,platform) VALUES (402,'mid_half','Adidas','2023-09-05 20:45:00','2023-09-05 20:50:00',300,20000,120000,900,0.75,'video','gender_male','602','mp4','verified','paid','mid_half_spot','2023-09-01','2023-09-04','Twitch');
INSERT INTO Match_Streaming_Ads (match_id,ad_slot,advertiser_name,ad_start_time,ad_end_time,ad_duration,cost,impressions,click_throughs,conversion_rate,ad_type,targeting_criteria,creative_id,creative_format,verification_status,billing_status,notes,created_at,updated_at,platform) VALUES (403,'post_match','CocaCola','2023-10-20 22:15:00','2023-10-20 22:20:00',300,30000,180000,1500,0.83,'video','region_EU','603','mp4','verified','paid','post_match_closing','2023-10-10','2023-10-18','Facebook');

-- Table storing heatmap zone activity counts for players per half
CREATE TABLE Player_Performance_Heatmaps (
    heatmap_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    match_id INTEGER,
    half INTEGER,
    zone_1 INTEGER,
    zone_2 INTEGER,
    zone_3 INTEGER,
    zone_4 INTEGER,
    zone_5 INTEGER,
    zone_6 INTEGER,
    zone_7 INTEGER,
    zone_8 INTEGER,
    zone_9 INTEGER,
    zone_10 INTEGER,
    zone_11 INTEGER,
    zone_12 INTEGER,
    zone_13 INTEGER,
    zone_14 INTEGER,
    zone_15 INTEGER,
    zone_16 INTEGER,
    generated_at TEXT,
    source TEXT
);

INSERT INTO Player_Performance_Heatmaps (player_api_id,match_id,half,zone_1,zone_2,zone_3,zone_4,zone_5,zone_6,zone_7,zone_8,zone_9,zone_10,zone_11,zone_12,zone_13,zone_14,zone_15,zone_16,generated_at,source) VALUES (1001,501,1,5,2,0,3,7,1,0,4,6,2,1,0,0,3,1,0,'2023-11-01 19:30:00','tracking_system');
INSERT INTO Player_Performance_Heatmaps (player_api_id,match_id,half,zone_1,zone_2,zone_3,zone_4,zone_5,zone_6,zone_7,zone_8,zone_9,zone_10,zone_11,zone_12,zone_13,zone_14,zone_15,zone_16,generated_at,source) VALUES (1002,502,2,0,1,4,5,2,3,6,2,1,0,0,2,5,7,3,1,'2023-11-02 20:45:00','tracking_system');
INSERT INTO Player_Performance_Heatmaps (player_api_id,match_id,half,zone_1,zone_2,zone_3,zone_4,zone_5,zone_6,zone_7,zone_8,zone_9,zone_10,zone_11,zone_12,zone_13,zone_14,zone_15,zone_16,generated_at,source) VALUES (1003,503,1,2,0,1,0,4,5,3,0,0,2,6,1,0,0,2,1,'2023-11-03 18:20:00','tracking_system');

-- Table defining fan loyalty program tiers
CREATE TABLE Fan_Loyalty_Tiers (
    tier_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tier_name TEXT,
    required_points INTEGER,
    discount_rate REAL,
    priority_access TEXT,
    exclusive_events TEXT,
    lounge_access BOOLEAN,
    merchandise_bonus INTEGER,
    free_ticket_vouchers INTEGER,
    upgrade_cost INTEGER,
    notes TEXT,
    created_on TEXT,
    updated_on TEXT,
    max_members INTEGER,
    tier_rank INTEGER,
    loyalty_program_id INTEGER,
    reward_type TEXT,
    points_multiplier REAL,
    validity_days INTEGER,
    additional_benefits TEXT,
    tier_icon TEXT
);

INSERT INTO Fan_Loyalty_Tiers (tier_name,required_points,discount_rate,priority_access,exclusive_events,lounge_access,merchandise_bonus,free_ticket_vouchers,upgrade_cost,notes,created_on,updated_on,max_members,tier_rank,loyalty_program_id,reward_type,points_multiplier,validity_days,additional_benefits,tier_icon) VALUES ('Bronze',1000,0.05,'early_booking','seasonal_giveaway',0,10,0,0,'entry_level','2023-01-01','2023-06-01',5000,1,1,'points',1.0,365,'none','bronze.png');
INSERT INTO Fan_Loyalty_Tiers (tier_name,required_points,discount_rate,priority_access,exclusive_events,lounge_access,merchandise_bonus,free_ticket_vouchers,upgrade_cost,notes,created_on,updated_on,max_members,tier_rank,loyalty_program_id,reward_type,points_multiplier,validity_days,additional_benefits,tier_icon) VALUES ('Silver',5000,0.10','priority_line','meet_and_greet',1,20,2,500,'mid_level','2023-02-01','2023-06-15',3000,2,1,'points',1.2,365,'gift_pack','silver.png');
INSERT INTO Fan_Loyalty_Tiers (tier_name,required_points,discount_rate,priority_access,exclusive_events,lounge_access,merchandise_bonus,free_ticket_vouchers,upgrade_cost,notes,created_on,updated_on,max_members,tier_rank,loyalty_program_id,reward_type,points_multiplier,validity_days,additional_benefits,tier_icon) VALUES ('Gold',15000,0.15,'vip_entry','exclusive_tour',1,50,5,1500,'top_level','2023-03-01','2023-07-01',1000,3,1,'points',1.5,365,'personal_assistant','gold.png');

-- Table for members of the league expansion committee
CREATE TABLE League_Expansion_Committee (
    member_id INTEGER PRIMARY KEY AUTOINCREMENT,
    committee_name TEXT,
    member_name TEXT,
    role TEXT,
    appointment_date TEXT,
    term_years INTEGER,
    expertise_area TEXT,
    contact_email TEXT,
    phone_number TEXT,
    affiliation TEXT,
    vote_weight INTEGER,
    notes TEXT,
    last_meeting_date TEXT,
    decision_status TEXT,
    recommendation TEXT,
    region TEXT,
    previous_experience TEXT,
    conflict_of_interest BOOLEAN,
    active BOOLEAN,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO League_Expansion_Committee (committee_name,member_name,role,appointment_date,term_years,expertise_area,contact_email,phone_number,affiliation,vote_weight,notes,last_meeting_date,decision_status,recommendation,region,previous_experience,conflict_of_interest,active,created_at,updated_at) VALUES ('Expansion2025','AliceSmith','Chair','2022-05-01',3,'Finance','alice.smith@email.com','5551234','GlobalSports','5','leadership','2023-01-15','pending','review','Europe','FCFinance','0','1','2022-05-01','2023-06-01');
INSERT INTO League_Expansion_Committee (committee_name,member_name,role,appointment_date,term_years,expertise_area,contact_email,phone_number,affiliation,vote_weight,notes,last_meeting_date,decision_status,recommendation,region,previous_experience,conflict_of_interest,active,created_at,updated_at) VALUES ('Expansion2025','BobLee','Member','2022-06-10',3,'Legal','bob.lee@email.com','5555678','SportsLaw','3','legal_advisor','2023-02-20','pending','review','Asia','LegalCounsel','0','1','2022-06-10','2023-06-01');
INSERT INTO League_Expansion_Committee (committee_name,member_name,role,appointment_date,term_years,expertise_area,contact_email,phone_number,affiliation,vote_weight,notes,last_meeting_date,decision_status,recommendation,region,previous_experience,conflict_of_interest,active,created_at,updated_at) VALUES ('Expansion2025','CarlosMendez','Member','2022-07-15',3,'StadiumOps','carlos.mendez@email.com','5559012','StadiumGroup','2','operations_expert','2023-03-05','pending','review','SouthAmerica','VenueManagement','0','1','2022-07-15','2023-06-01');

-- Table tracking club-led social impact projects
CREATE TABLE Club_Social_Impact_Projects (
    project_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    project_name TEXT,
    start_date TEXT,
    end_date TEXT,
    budget INTEGER,
    beneficiaries INTEGER,
    focus_area TEXT,
    partner_organization TEXT,
    status TEXT,
    description TEXT,
    impact_score REAL,
    category TEXT,
    city TEXT,
    region TEXT,
    responsible_manager TEXT,
    contact_email TEXT,
    reporting_frequency TEXT,
    last_report_date TEXT,
    notes TEXT,
    created_at TEXT
);

INSERT INTO Club_Social_Impact_Projects (club_id,project_name,start_date,end_date,budget,beneficiaries,focus_area,partner_organization,status,description,impact_score,category,city,region,responsible_manager,contact_email,reporting_frequency,last_report_date,notes,created_at) VALUES (1,'YouthFootballCamp','2023-06-01','2023-08-31',50000,200,'YouthDevelopment','LocalSchools','active','summer_camp_for_under12','8.5','Education','Manchester','NorthWest','JohnDoe','john.doe@club.com','quarterly','2023-07-15','positive_feedback','2023-06-01');
INSERT INTO Club_Social_Impact_Projects (club_id,project_name,start_date,end_date,budget,beneficiaries,focus_area,partner_organization,status,description,impact_score,category,city,region,responsible_manager,contact_email,reporting_frequency,last_report_date,notes,created_at) VALUES (2,'HealthAndWellnessProgram','2023-01-15','2023-12-31',120000,1500,'Health','CommunityHospitals','active','monthly_health_workshops','9.2','Health','Lisbon','South','MariaSilva','maria.silva@club.com','monthly','2023-09-01','high_attendance','2023-01-15');
INSERT INTO Club_Social_Impact_Projects (club_id,project_name,start_date,end_date,budget,beneficiaries,focus_area,partner_organization,status,description,impact_score,category,city,region,responsible_manager,contact_email,reporting_frequency,last_report_date,notes,created_at) VALUES (3,'EcoStadiumInitiative','2022-04-01','2024-03-31',250000,0,'Environment','GreenNGO','ongoing','reduce_energy_consumption','8.9','Sustainability','Berlin','East','LukasKlein','lukas.klein@club.com','annual','2023-06-30','energy_savings_reported','2022-04-01');

-- Table logging broadcast technology upgrades
CREATE TABLE Broadcast_Technology_Upgrades (
    upgrade_id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcaster_name TEXT,
    technology_type TEXT,
    version TEXT,
    implementation_date TEXT,
    cost INTEGER,
    vendor_name TEXT,
    contract_id INTEGER,
    expected_bandwidth INTEGER,
    latency_ms INTEGER,
    redundancy_level TEXT,
    coverage_area TEXT,
    notes TEXT,
    status TEXT,
    risk_assessment TEXT,
    compliance_status TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_by TEXT,
    updated_at TEXT,
    system_identifier TEXT
);

INSERT INTO Broadcast_Technology_Upgrades (broadcaster_name,technology_type,version,implementation_date,cost,vendor_name,contract_id,expected_bandwidth,latency_ms,redundancy_level,coverage_area,notes,status,risk_assessment,compliance_status,created_by,created_at,updated_by,updated_at,system_identifier) VALUES ('GlobalSportsNet','4K_UHD','v5.2','2023-05-01',800000,'TechMedia','3001',5000,30,'dual','worldwide','upgrade_to_4k','completed','medium','compliant','admin','2023-04-20','admin','2023-05-02','GSN_4K_2023');
INSERT INTO Broadcast_Technology_Upgrades (broadcaster_name,technology_type,version,implementation_date,cost,vendor_name,contract_id,expected_bandwidth,latency_ms,redundancy_level,coverage_area,notes,status,risk_assessment,compliance_status,created_by,created_at,updated_by,updated_at,system_identifier) VALUES ('EuroLive','HDR','v3.1','2023-09-15',450000,'VisionSystems','3002',3500,25,'single','europe','hdr_broadcast_capability','in_progress','low','pending','techlead','2023-08-30','techlead','2023-09-16','EL_HDR_2023');
INSERT INTO Broadcast_Technology_Upgrades (broadcaster_name,technology_type,version,implementation_date,cost,vendor_name,contract_id,expected_bandwidth,latency_ms,redundancy_level,coverage_area,notes,status,risk_assessment,compliance_status,created_by,created_at,updated_by,updated_at,system_identifier) VALUES ('AsiaStream','VR_360','v2.0','2024-01-10',1200000,'FutureVision','3003',8000,20,'dual','asia','vr_live_streams','planned','high','pending','projectmgr','2023-12-01','projectmgr','2024-01-11','AS_VR360_2024');

-- Table describing travel package options for teams
CREATE TABLE Team_Travel_Packages (
    package_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_fifa_api_id INTEGER,
    destination_country TEXT,
    travel_start_date TEXT,
    travel_end_date TEXT,
    accommodation_type TEXT,
    hotel_name TEXT,
    flight_number TEXT,
    seat_class TEXT,
    meals_included BOOLEAN,
    local_transport TEXT,
    insurance_coverage INTEGER,
    cost_per_player INTEGER,
    total_cost INTEGER,
    sponsor_name TEXT,
    sponsor_contribution INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    approved_by TEXT
);

INSERT INTO Team_Travel_Packages (team_fifa_api_id,destination_country,travel_start_date,travel_end_date,accommodation_type,hotel_name,flight_number,seat_class,meals_included,local_transport,insurance_coverage,cost_per_player,total_cost,sponsor_name,sponsor_contribution,notes,created_at,updated_at,approved_by) VALUES (2001,'Italy','2023-09-01','2023-09-07','hotel','HotelRoma','AZ123','business',1,'bus',20000,1500,22500,'Toyota','5000','standard_package','2023-07-20','2023-08-01','DirectorFinance');
INSERT INTO Team_Travel_Packages (team_fifa_api_id,destination_country,travel_start_date,travel_end_date,accommodation_type,hotel_name,flight_number,seat_class,meals_included,local_transport,insurance_coverage,cost_per_player,total_cost,sponsor_name,sponsor_contribution,notes,created_at,updated_at,approved_by) VALUES (2002,'Germany','2023-10-15','2023-10-22','apartment','CityFlat','LH456','economy',1,'train',15000,1200,18000,'Adidas','3000','budget_friendly','2023-08-15','2023-09-01','DirectorFinance');
INSERT INTO Team_Travel_Packages (team_fifa_api_id,destination_country,travel_start_date,travel_end_date,accommodation_type,hotel_name,flight_number,seat_class,meals_included,local_transport,insurance_coverage,cost_per_player,total_cost,sponsor_name,sponsor_contribution,notes,created_at,updated_at,approved_by) VALUES (2003,'Spain','2023-11-20','2023-11-27','villa','SunsetVilla','IB789','first',1,'private_car',25000,2000,30000,'Emirates','8000','premium_experience','2023-09-30','2023-10-15','DirectorFinance');