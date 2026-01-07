-- Table storing brand renewal campaign information
CREATE TABLE Brand_Renewal_Initiatives (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_million REAL,
    target_audience TEXT,
    channels_used TEXT,
    creative_agency TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversion_rate REAL,
    cpm REAL,
    cpc REAL,
    region_focus TEXT,
    primary_color_code TEXT,
    secondary_color_code TEXT,
    logo_version TEXT,
    tagline TEXT,
    approvals_needed INTEGER,
    compliance_status TEXT,
    notes TEXT
);
INSERT INTO Brand_Renewal_Initiatives (campaign_name,start_date,end_date,budget_million,target_audience,channels_used,creative_agency,impressions,clicks,conversion_rate,cpm,cpc,region_focus,primary_color_code,secondary_color_code,logo_version,tagline,approvals_needed,compliance_status,notes) VALUES ('GlobalRebrand2024','2024-01-15','2024-06-30',5.2,'Fans','SocialMedia,TV','CreativeCo',12000000,45000,0.00375,0.43,0.11,'EMEA','#FF5733','#C70039','V2','PlayWithPassion',3,'Approved','First phase rollout');
INSERT INTO Brand_Renewal_Initiatives (campaign_name,start_date,end_date,budget_million,target_audience,channels_used,creative_agency,impressions,clicks,conversion_rate,cpm,cpc,region_focus,primary_color_code,secondary_color_code,logo_version,tagline,approvals_needed,compliance_status,notes) VALUES ('SummerSplash2024','2024-07-01','2024-09-15',2.8,'Families','DigitalBillboards,Radio','AdStudio',8000000,21000,0.00263,0.35,0.09,'APAC','#00BFFF','#1E90FF','V1','FeelTheHeat',2,'Pending','Testing in select markets');
INSERT INTO Brand_Renewal_Initiatives (campaign_name,start_date,end_date,budget_million,target_audience,channels_used,creative_agency,impressions,clicks,conversion_rate,cpm,cpc,region_focus,primary_color_code,secondary_color_code,logo_version,tagline,approvals_needed,compliance_status,notes) VALUES ('WinterWarmth2024','2024-10-01','2025-02-28',3.5,'Adults','Print,Online','BrandMakers',9500000,30000,0.00316,0.40,0.10,'NA','#800080','#9370DB','V3','StayWarmStayStrong',4,'Approved','Coordinated with merchandise launch');

-- Table storing details of stadium energy contracts
CREATE TABLE Stadium_Energy_Contract_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    provider_name TEXT,
    contract_start TEXT,
    contract_end TEXT,
    annual_cost REAL,
    energy_type TEXT,
    renewable_percentage INTEGER,
    contract_type TEXT,
    volume_mwh INTEGER,
    price_per_mwh REAL,
    green_certification TEXT,
    contact_person TEXT,
    contact_email TEXT,
    termination_clause TEXT,
    penalty_fee REAL,
    amendment_count INTEGER,
    last_amended TEXT,
    payment_terms TEXT,
    sustainability_score INTEGER,
    notes TEXT
);
INSERT INTO Stadium_Energy_Contract_Details (stadium_id,provider_name,contract_start,contract_end,annual_cost,energy_type,renewable_percentage,contract_type,volume_mwh,price_per_mwh,green_certification,contact_person,contact_email,termination_clause,penalty_fee,amendment_count,last_amended,payment_terms,sustainability_score,notes) VALUES (101,'SolarGridCo','2023-01-01','2028-12-31',1.9,'Electric','85','Fixed','500000',0.038,'ISO50001','Laura Smith','laura.smith@solargrid.com','30_day_notice',25000,2,'2024-03-15','Quarterly','92','Includes on‑site solar panels');
INSERT INTO Stadium_Energy_Contract_Details (stadium_id,provider_name,contract_start,contract_end,annual_cost,energy_type,renewable_percentage,contract_type,volume_mwh,price_per_mwh,green_certification,contact_person,contact_email,termination_clause,penalty_fee,amendment_count,last_amended,payment_terms,sustainability_score,notes) VALUES (102,'EcoPower Ltd','2022-06-01','2027-05-31',2.3,'Gas','20','Variable','600000',0.042,'ISO14001','Mark Lee','mark.lee@ecopower.com','60_day_notice',30000,1,'2023-11-20','Monthly','78','Option for green upgrade in year 3');
INSERT INTO Stadium_Energy_Contract_Details (stadium_id,provider_name,contract_start,contract_end,annual_cost,energy_type,renewable_percentage,contract_type,volume_mwh,price_per_mwh,green_certification,contact_person,contact_email,termination_clause,penalty_fee,amendment_count,last_amended,payment_terms,sustainability_score,notes) VALUES (103,'HydroStream','2024-02-01','2029-01-31',1.5,'Hydro','100','Fixed','450000',0.033,'ISO50001','Ana Patel','ana.patel@hydrostream.com','45_day_notice',20000,0,'2024-02-01','Semi‑annual','95','Majority of power from local dam');

-- Table tracking fan digital token transactions
CREATE TABLE Fan_Digital_Token_Transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    token_id TEXT,
    transaction_date TEXT,
    transaction_type TEXT,
    amount INTEGER,
    token_value_usd REAL,
    blockchain TEXT,
    wallet_address TEXT,
    status TEXT,
    verification_code TEXT,
    source TEXT,
    destination TEXT,
    fee_usd REAL,
    exchange_rate REAL,
    platform TEXT,
    notes TEXT,
    admin_user TEXT,
    admin_action_date TEXT,
    audit_id INTEGER,
    compliance_flag TEXT
);
INSERT INTO Fan_Digital_Token_Transactions (fan_id,token_id,transaction_date,transaction_type,amount,token_value_usd,blockchain,wallet_address,status,verification_code,source,destination,fee_usd,exchange_rate,platform,notes,admin_user,admin_action_date,audit_id,compliance_flag) VALUES (2001,'TOKENA1','2024-04-10','Purchase',150,0.05,'Ethereum','0xabc123def','Completed','VERIF001','FanWallet','ClubVault',0.75,1.0,'TokenHub','First purchase','admin01','2024-04-10',5001,'Y');
INSERT INTO Fan_Digital_Token_Transactions (fan_id,token_id,transaction_date,transaction_type,amount,token_value_usd,blockchain,wallet_address,status,verification_code,source,destination,fee_usd,exchange_rate,platform,notes,admin_user,admin_action_date,audit_id,compliance_flag) VALUES (2002,'TOKENB2','2024-05-05','Redemption',75,0.10,'Solana','0xdef456ghi','Pending','VERIF002','ClubVault','FanWallet',0.45,1.2,'SolToken','Redeeming for merchandise','admin02','2024-05-05',5002,'N');
INSERT INTO Fan_Digital_Token_Transactions (fan_id,token_id,transaction_date,transaction_type,amount,token_value_usd,blockchain,wallet_address,status,verification_code,source,destination,fee_usd,exchange_rate,platform,notes,admin_user,admin_action_date,audit_id,compliance_flag) VALUES (2003,'TOKENC3','2024-06-01','Transfer',30,0.08,'Polygon','0xghi789jkl','Completed','VERIF003','FanWallet','FriendWallet',0.30,1.1,'PolyToken','Gift to friend','admin03','2024-06-01',5003,'Y');

-- Table describing the global scouting network
CREATE TABLE Global_Scouting_Network (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    region TEXT,
    country TEXT,
    city TEXT,
    scout_name TEXT,
    scout_agency TEXT,
    years_experience INTEGER,
    languages_spoken TEXT,
    contact_phone TEXT,
    email TEXT,
    scouting_focus TEXT,
    last_report_date TEXT,
    number_of_players_scouted INTEGER,
    avg_success_rate REAL,
    specialization TEXT,
    preferred_position TEXT,
    travel_budget REAL,
    equipment_list TEXT,
    certification TEXT,
    notes TEXT
);
INSERT INTO Global_Scouting_Network (region,country,city,scout_name,scout_agency,years_experience,languages_spoken,contact_phone,email,scouting_focus,last_report_date,number_of_players_scouted,avg_success_rate,specialization,preferred_position,travel_budget,equipment_list,certification,notes) VALUES ('Europe','Germany','Berlin','Klaus Meyer','EuroScout','12','German,English','+49123456789','klaus.meyer@euroscout.de','U21Talent','2024-03-20',45,0.78,'Technical','Midfielder',15000,'VideoDrone,GPS','FIFALevel2','Active in Bundesliga clubs');
INSERT INTO Global_Scouting_Network (region,country,city,scout_name,scout_agency,years_experience,languages_spoken,contact_phone,email,scouting_focus,last_report_date,number_of_players_scouted,avg_success_rate,specialization,preferred_position,travel_budget,equipment_list,certification,notes) VALUES ('South America','Brazil','Rio de Janeiro','Mariana Silva','SouthStar','9','Portuguese,Spanish','+552199876543','mariana.silva@southstar.br','DefensiveProspects','2024-04-12',30,0.65,'Physical','CenterBack',12000,'VRHeadset,AnalyticsSoftware','FIFALevel1','Focus on state leagues');
INSERT INTO Global_Scouting_Network (region,country,city,scout_name,scout_agency,years_experience,languages_spoken,contact_phone,email,scouting_focus,last_report_date,number_of_players_scouted,avg_success_rate,specialization,preferred_position,travel_budget,equipment_list,certification,notes) VALUES ('Asia','Japan','Tokyo','Hiro Tanaka','AsiaTalent','15','Japanese,English','+81312345678','hiro.tanaka@asialtalent.jp','AttackingMidfield','2024-02-28',60,0.82,'Creative','AttackingMidfielder',18000,'HeatMapSensors,Tablets','FIFALevel3','Network includes J-League partners');

-- Table logging seasonal travel logistics for teams
CREATE TABLE Seasonal_Travel_Logistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    season TEXT,
    team_api_id INTEGER,
    travel_mode TEXT,
    departure_city TEXT,
    arrival_city TEXT,
    departure_date TEXT,
    arrival_date TEXT,
    distance_km INTEGER,
    travel_cost REAL,
    accommodation_type TEXT,
    hotel_name TEXT,
    room_nights INTEGER,
    meals_included INTEGER,
    insurance_provider TEXT,
    insurance_policy TEXT,
    travel_manager TEXT,
    notes TEXT,
    carbon_footprint_kg REAL,
    emergency_contact TEXT
);
INSERT INTO Seasonal_Travel_Logistics (season,team_api_id,travel_mode,departure_city,arrival_city,departure_date,arrival_date,distance_km,travel_cost,accommodation_type,hotel_name,room_nights,meals_included,insurance_provider,insurance_policy,travel_manager,notes,carbon_footprint_kg,emergency_contact) VALUES ('2024/25',201,'Air','London','Madrid','2024-08-01','2024-08-01',1265,8500,'Hotel','Hotel Madrid Plaza',2,2,'SafeTravel','ST-2024-001','John Doe','Standard team travel','325.5','+442071234567');
INSERT INTO Seasonal_Travel_Logistics (season,team_api_id,travel_mode,departure_city,arrival_city,departure_date,arrival_date,distance_km,travel_cost,accommodation_type,hotel_name,room_nights,meals_included,insurance_provider,insurance_policy,travel_manager,notes,carbon_footprint_kg,emergency_contact) VALUES ('2024/25',202,'Bus','Berlin','Prague','2024-09-15','2024-09-15',350,1200,'Hostel','Prague Youth Hostel',1,1,'TravelGuard','TG-2024-045','Maria Klein','Eco‑friendly bus travel','78.2','+4930123456');
INSERT INTO Seasonal_Travel_Logistics (season,team_api_id,travel_mode,departure_city,arrival_city,departure_date,arrival_date,distance_km,travel_cost,accommodation_type,hotel_name,room_nights,meals_included,insurance_provider,insurance_policy,travel_manager,notes,carbon_footprint_kg,emergency_contact) VALUES ('2024/25',203,'Train','Paris','Lyon','2024-10-05','2024-10-05',465,600,'Boutique','Lyon Comfort Suites',1,1,'RailSafe','RS-2024-078','Pierre Martin','High‑speed TGV travel','45.0','+33123456789');

-- Table storing schedule of digital signage campaigns in venues
CREATE TABLE Digital_Signage_Campaign_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    campaign_name TEXT,
    start_datetime TEXT,
    end_datetime TEXT,
    media_type TEXT,
    resolution TEXT,
    file_name TEXT,
    file_size_mb REAL,
    display_duration_sec INTEGER,
    rotation_order INTEGER,
    target_zone TEXT,
    audience_estimate INTEGER,
    sponsor_name TEXT,
    contract_id INTEGER,
    approved_by TEXT,
    approval_date TEXT,
    notes TEXT,
    language TEXT,
    status TEXT
);
INSERT INTO Digital_Signage_Campaign_Schedule (venue_id,campaign_name,start_datetime,end_datetime,media_type,resolution,file_name,file_size_mb,display_duration_sec,rotation_order,target_zone,audience_estimate,sponsor_name,contract_id,approved_by,approval_date,notes,language,status) VALUES (301,'ChampionsLeaguePromo','2024-04-01 08:00','2024-04-30 22:00','Video','1920x1080','cl_promo.mp4',45.2,15,1,'NorthStand',25000,'Adidas',9001,'Laura Smith','2024-03-20','Looped throughout match days','EN','Active');
INSERT INTO Digital_Signage_Campaign_Schedule (venue_id,campaign_name,start_datetime,end_datetime,media_type,resolution,file_name,file_size_mb,display_duration_sec,rotation_order,target_zone,audience_estimate,sponsor_name,contract_id,approved_by,approval_date,notes,language,status) VALUES (302,'FanEngageQuiz','2024-05-10 10:00','2024-05-20 20:00','Interactive','1280x720','quiz_app.bin',12.5,30,2,'SouthStand',18000,'Pepsi',9002,'Mark Lee','2024-04-05','QR code integration','EN','Active');
INSERT INTO Digital_Signage_Campaign_Schedule (venue_id,campaign_name,start_datetime,end_datetime,media_type,resolution,file_name,file_size_mb,display_duration_sec,rotation_order,target_zone,audience_estimate,sponsor_name,contract_id,approved_by,approval_date,notes,language,status) VALUES (303,'EcoStadiumMessage','2024-06-01 09:00','2024-06-30 21:00','Graphic','1920x1080','eco_banner.png',3.8,20,3,'AllZones',30000,'Shell',9003,'Ana Patel','2024-05-15','Promotes sustainability initiatives','EN','Scheduled');

-- Table recording athlete mental health session details
CREATE TABLE Athlete_Mental_Health_Sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    session_date TEXT,
    therapist_name TEXT,
    session_type TEXT,
    duration_min INTEGER,
    focus_area TEXT,
    assessment_score INTEGER,
    recommendations TEXT,
    follow_up_date TEXT,
    confidentiality_level TEXT,
    notes TEXT,
    session_location TEXT,
    telehealth_flag TEXT,
    outcome TEXT,
    medication_discussed TEXT,
    stress_level_before INTEGER,
    stress_level_after INTEGER,
    mood_rating_before INTEGER,
    mood_rating_after INTEGER
);
INSERT INTO Athlete_Mental_Health_Sessions (player_api_id,session_date,therapist_name,session_type,duration_min,focus_area,assessment_score,recommendations,follow_up_date,confidentiality_level,notes,session_location,telehealth_flag,outcome,medication_discussed,stress_level_before,stress_level_after,mood_rating_before,mood_rating_after) VALUES (4001,'2024-04-12','Dr. Emily Reed','Cognitive','60','Performance Anxiety',68,'Mindfulness exercises','2024-04-26','High','Player reported improved focus','Club Medical Center','N','Positive','None',7,4,5,8);
INSERT INTO Athlete_Mental_Health_Sessions (player_api_id,session_date,therapist_name,session_type,duration_min,focus_area,assessment_score,recommendations,follow_up_date,confidentiality_level,notes,session_location,telehealth_flag,outcome,medication_discussed,stress_level_before,stress_level_after,mood_rating_before,mood_rating_after) VALUES (4002,'2024-05-03','Dr. Luis Gomez','Counseling','45','Team Dynamics',74,'Team‑building workshops','2024-05-17','Medium','Issues with new coach','Remote','Y','Constructive','None',6,5,6,7);
INSERT INTO Athlete_Mental_Health_Sessions (player_api_id,session_date,therapist_name,session_type,duration_min,focus_area,assessment_score,recommendations,follow_up_date,confidentiality_level,notes,session_location,telehealth_flag,outcome,medication_discussed,stress_level_before,stress_level_after,mood_rating_before,mood_rating_after) VALUES (4003,'2024-06-01','Dr. Sara Khan','Therapy','50','Recovery Burnout',60,'Scheduled rest period','2024-06-15','High','After heavy match load','Club Rehab Center','N','Improved','LowDoseSSRI',8,3,4,9);

-- Table capturing club equity transaction records
CREATE TABLE Club_Equity_Transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    transaction_date TEXT,
    equity_type TEXT,
    amount_usd REAL,
    share_percentage REAL,
    buyer_entity TEXT,
    seller_entity TEXT,
    transaction_type TEXT,
    valuation_usd REAL,
    notes TEXT,
    legal_review_status TEXT,
    approval_date TEXT,
    approved_by TEXT,
    registration_number TEXT,
    jurisdiction TEXT,
    currency TEXT,
    exchange_rate REAL,
    price_per_share_usd REAL,
    confidentiality_flag TEXT
);
INSERT INTO Club_Equity_Transactions (club_id,transaction_date,equity_type,amount_usd,share_percentage,buyer_entity,seller_entity,transaction_type,valuation_usd,notes,legal_review_status,approval_date,approved_by,registration_number,jurisdiction,currency,exchange_rate,price_per_share_usd,confidentiality_flag) VALUES (1,'2024-03-20','Preferred','2500000',5.0,'GlobalInvest Ltd','Founders Group','Purchase','50000000','Strategic capital injection','Approved','2024-03-25','Chief Legal Officer','REG12345','UK','USD',1.0,500.0,'Y');
INSERT INTO Club_Equity_Transactions (club_id,transaction_date,equity_type,amount_usd,share_percentage,buyer_entity,seller_entity,transaction_type,valuation_usd,notes,legal_review_status,approval_date,approved_by,registration_number,jurisdiction,currency,exchange_rate,price_per_share_usd,confidentiality_flag) VALUES (2,'2024-04-10','Common','1200000',3.2','SportsVentures','Minority Shareholders','Purchase','37500000','Minority stake buy‑back','Pending','2024-04-15','Legal Dept','REG67890','DE','EUR',0.92,380.0,'N');
INSERT INTO Club_Equity_Transactions (club_id,transaction_date,equity_type,amount_usd,share_percentage,buyer_entity,seller_entity,transaction_type,valuation_usd,notes,legal_review_status,approval_date,approved_by,registration_number,jurisdiction,currency,exchange_rate,price_per_share_usd,confidentiality_flag) VALUES (3,'2024-05-05','Preferred','500000',1.5','InvestorX','Club Board','Issue','33333333','New preferred shares issued for financing','Approved','2024-05-10','Board Chairman','REG11223','NL','USD',1.0,333.33,'Y');

-- Table holding stadium water conservation metrics
CREATE TABLE Stadium_Water_Conservation_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    measurement_date TEXT,
    total_consumption_liters INTEGER,
    recycled_percentage INTEGER,
    rainwater_capture_liters INTEGER,
    avg_daily_consumption_liters INTEGER,
    peak_consumption_liters INTEGER,
    low_flow_fixtures_installed INTEGER,
    leak_detected_flag TEXT,
    maintenance_action TEXT,
    cost_savings_usd REAL,
    notes TEXT,
    water_quality_rating INTEGER,
    source_type TEXT,
    temperature_celsius REAL,
    humidity_percent INTEGER,
    contractor_name TEXT,
    contractor_contact TEXT,
    compliance_status TEXT,
    next_audit_date TEXT
);
INSERT INTO Stadium_Water_Conservation_Metrics (stadium_id,measurement_date,total_consumption_liters,recycled_percentage,rainwater_capture_liters,avg_daily_consumption_liters,peak_consumption_liters,low_flow_fixtures_installed,leak_detected_flag,maintenance_action,cost_savings_usd,notes,water_quality_rating,source_type,temperature_celsius,humidity_percent,contractor_name,contractor_contact,compliance_status,next_audit_date) VALUES (101,'2024-03-31',2500000,40,120000,80000,150000,250,'N','Routine check','15000','All systems nominal',85,'Municipal',22.5,55,'AquaTech','+441234567890','Compliant','2024-09-30');
INSERT INTO Stadium_Water_Conservation_Metrics (stadium_id,measurement_date,total_consumption_liters,recycled_percentage,rainwater_capture_liters,avg_daily_consumption_liters,peak_consumption_liters,low_flow_fixtures_installed,leak_detected_flag,maintenance_action,cost_savings_usd,notes,water_quality_rating,source_type,temperature_celsius,humidity_percent,contractor_name,contractor_contact,compliance_status,next_audit_date) VALUES (102,'2024-03-31',1800000,55,200000,60000,110000,300,'Y','Leak repaired','22000','Leak in restroom area fixed',90,'Well',21.0,50,'HydroFix','+442098765432','Compliant','2024-10-15');
INSERT INTO Stadium_Water_Conservation_Metrics (stadium_id,measurement_date,total_consumption_liters,recycled_percentage,rainwater_capture_liters,avg_daily_consumption_liters,peak_consumption_liters,low_flow_fixtures_installed,leak_detected_flag,maintenance_action,cost_savings_usd,notes,water_quality_rating,source_type,temperature_celsius,humidity_percent,contractor_name,contractor_contact,compliance_status,next_audit_date) VALUES (103,'2024-03-31',3000000,30,80000,100000,180000,200,'N','System upgrade','18000','Installed new monitoring sensors',80,'River',23.2,60,'EcoWater','+449876543210','Pending','2024-11-01');

-- Table for virtual fan experience assets
CREATE TABLE Virtual_Fan_Experience_Assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_name TEXT,
    asset_type TEXT,
    creation_date TEXT,
    creator_team TEXT,
    file_format TEXT,
    file_size_mb REAL,
    storage_location TEXT,
    usage_rights TEXT,
    license_expiry_date TEXT,
    associated_event TEXT,
    virtual_realm TEXT,
    interaction_count INTEGER,
    average_session_duration_sec INTEGER,
    feedback_score REAL,
    version_number TEXT,
    approved_by TEXT,
    approval_date TEXT,
    notes TEXT,
    status TEXT
);
INSERT INTO Virtual_Fan_Experience_Assets (asset_name,asset_type,creation_date,creator_team,file_format,file_size_mb,storage_location,usage_rights,license_expiry_date,associated_event,virtual_realm,interaction_count,average_session_duration_sec,feedback_score,version_number,approved_by,approval_date,notes,status) VALUES ('StadiumTour3D','3DModel','2024-02-10','DigitalMedia','obj',250.5,'s3://virtual-assets/tours','Club','2026-02-10','SeasonKickoff','VRWorld','12000','300',4.7,'v1.2','Laura Smith','2024-03-01','High‑resolution model of main stadium','Active');
INSERT INTO Virtual_Fan_Experience_Assets (asset_name,asset_type,creation_date,creator_team,file_format,file_size_mb,storage_location,usage_rights,license_expiry_date,associated_event,virtual_realm,interaction_count,average_session_duration_sec,feedback_score,version_number,approved_by,approval_date,notes,status) VALUES ('PlayerAvatarPack','AvatarSet','2024-03-15','CreativeStudio','fbx',85.3,'s3://virtual-assets/avatars','Club','2025-03-15','AllStarsMatch','ARSpace','8500','180',4.2,'v3.0','Mark Lee','2024-04-05','Includes 20 player skins','Active');
INSERT INTO Virtual_Fan_Experience_Assets (asset_name,asset_type,creation_date,creator_team,file_format,file_size_mb,storage_location,usage_rights,license_expiry_date,associated_event,virtual_realm,interaction_count,average_session_duration_sec,feedback_score,version_number,approved_by,approval_date,notes,status) VALUES ('GoalCelebrationGIFs','AnimatedGIF','2024-01-20','MediaTeam','gif',12.7,'s3://virtual-assets/gifs','Club','2026-01-20','ChampionsLeagueFinal','WebPortal','34000','45',4.9,'v5','Ana Patel','2024-02-10','Set of 30 celebration animations','Active');