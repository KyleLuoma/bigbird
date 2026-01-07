-- Fan Referral Program
CREATE TABLE Fan_Referral_Program (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    program_name TEXT,
    start_date TEXT,
    end_date TEXT,
    referral_code TEXT,
    reward_type TEXT,
    reward_value REAL,
    max_referrals_per_user INTEGER,
    total_referrals INTEGER,
    active_flag INTEGER,
    created_by TEXT,
    created_at TEXT,
    updated_by TEXT,
    updated_at TEXT,
    description TEXT,
    tier_one_bonus REAL,
    tier_two_bonus REAL,
    tier_three_bonus REAL,
    eligibility_criteria TEXT,
    notes TEXT
);
INSERT INTO Fan_Referral_Program (id,program_name,start_date,end_date,referral_code,reward_type,reward_value,max_referrals_per_user,total_referrals,active_flag,created_by,created_at,updated_by,updated_at,description,tier_one_bonus,tier_two_bonus,tier_three_bonus,eligibility_criteria,notes) VALUES (1,'ReferralBoost','2024-01-01','2024-12-31','RB2024','Credit',50.0,10,0,1,'admin','2024-01-01','admin','2024-01-01','Program for fans','10.0','5.0','2.0','AllFans','First record');
INSERT INTO Fan_Referral_Program (id,program_name,start_date,end_date,referral_code,reward_type,reward_value,max_referrals_per_user,total_referrals,active_flag,created_by,created_at,updated_by,updated_at,description,tier_one_bonus,tier_two_bonus,tier_three_bonus,eligibility_criteria,notes) VALUES (2,'SeasonalShare','2024-06-01','2024-09-30','SS2024','Voucher',30.0,5,0,1,'marketing','2024-06-01','marketing','2024-06-01','Summer campaign','8.0','4.0','1.5','SeasonTicketHolders','Second record');
INSERT INTO Fan_Referral_Program (id,program_name,start_date,end_date,referral_code,reward_type,reward_value,max_referrals_per_user,total_referrals,active_flag,created_by,created_at,updated_by,updated_at,description,tier_one_bonus,tier_two_bonus,tier_three_bonus,eligibility_criteria,notes) VALUES (3,'LoyaltyLink','2025-01-01','2025-12-31','LL2025','Points',100.0,15,0,0,'ops','2025-01-01','ops','2025-01-01','Loyalty year round','15.0','7.0','3.0','VIPFans','Third record');

-- Stadium Nutrition Supplier
CREATE TABLE Stadium_Nutrition_Supplier (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_name TEXT,
    contact_name TEXT,
    contact_email TEXT,
    phone_number TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    product_category TEXT,
    rating_score REAL,
    delivery_frequency_days INTEGER,
    min_order_quantity INTEGER,
    max_order_quantity INTEGER,
    payment_terms TEXT,
    insurance_coverage TEXT,
    notes TEXT
);
INSERT INTO Stadium_Nutrition_Supplier (id,supplier_name,contact_name,contact_email,phone_number,address_line1,address_line2,city,state,zip_code,country,contract_start_date,contract_end_date,product_category,rating_score,delivery_frequency_days,min_order_quantity,max_order_quantity,payment_terms,insurance_coverage,notes) VALUES (1,'NutriPro','AliceSmith','alice@nutri.com','5551234567','123 Main St','Suite 100','Metropolis','NY','10001','USA','2024-01-01','2026-12-31','ProteinBars',4.5,30,100,1000,'Net30','Full','Primary supplier');
INSERT INTO Stadium_Nutrition_Supplier (id,supplier_name,contact_name,contact_email,phone_number,address_line1,address_line2,city,state,zip_code,country,contract_start_date,contract_end_date,product_category,rating_score,delivery_frequency_days,min_order_quantity,max_order_quantity,payment_terms,insurance_coverage,notes) VALUES (2,'HydraDrinks','BobJones','bob@hydra.com','5559876543','456 Oak Ave','','Gotham','IL','60601','USA','2023-07-01','2025-06-30','EnergyDrinks',4.2,15,200,1500,'Net45','Partial','Secondary supplier');
INSERT INTO Stadium_Nutrition_Supplier (id,supplier_name,contact_name,contact_email,phone_number,address_line1,address_line2,city,state,zip_code,country,contract_start_date,contract_end_date,product_category,rating_score,delivery_frequency_days,min_order_quantity,max_order_quantity,payment_terms,insurance_coverage,notes) VALUES (3,'FreshBite','CarolLee','carol@freshbite.com','5553217890','789 Pine Rd','Building B','StarCity','CA','90001','USA','2025-03-15','2028-03-14','FreshFood',4.8,7,50,500,'Net15','Full','Seasonal produce');

-- League Analytics Dashboard
CREATE TABLE League_Analytics_Dashboard (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    dashboard_name TEXT,
    created_date TEXT,
    owner_user_id INTEGER,
    refresh_interval_minutes INTEGER,
    widget_count INTEGER,
    data_source_count INTEGER,
    access_level TEXT,
    is_public INTEGER,
    theme TEXT,
    background_color TEXT,
    font_family TEXT,
    font_size INTEGER,
    created_by TEXT,
    updated_by TEXT,
    last_refreshed_at TEXT,
    description TEXT,
    version_number TEXT,
    changelog TEXT,
    notes TEXT
);
INSERT INTO League_Analytics_Dashboard (id,dashboard_name,created_date,owner_user_id,refresh_interval_minutes,widget_count,data_source_count,access_level,is_public,theme,background_color,font_family,font_size,created_by,updated_by,last_refreshed_at,description,version_number,changelog,notes) VALUES (1,'SeasonOverview','2024-01-01',101,60,12,5,'Admin',1,'Dark','#000000','Arial',12,'admin','admin','2024-01-02','Overview of season stats','v1.0','Initial release','Primary dashboard');
INSERT INTO League_Analytics_Dashboard (id,dashboard_name,created_date,owner_user_id,refresh_interval_minutes,widget_count,data_source_count,access_level,is_public,theme,background_color,font_family,font_size,created_by,updated_by,last_refreshed_at,description,version_number,changelog,notes) VALUES (2,'FinancialSummary','2024-02-15',102,1440,8,3,'Finance',0,'Light','#FFFFFF','Helvetica',11,'finance_user','finance_user','2024-02-16','Financial performance','v1.0','First version','Restricted');
INSERT INTO League_Analytics_Dashboard (id,dashboard_name,created_date,owner_user_id,refresh_interval_minutes,widget_count,data_source_count,access_level,is_public,theme,background_color,font_family,font_size,created_by,updated_by,last_refreshed_at,description,version_number,changelog,notes) VALUES (3,'FanEngagement','2024-03-10',103,30,15,6,'Marketing',1,'Blue','#001F3F','Calibri',13,'marketing_lead','marketing_lead','2024-03-11','Engagement metrics','v1.0','Launch','Public view');

-- Fan Digital Badge Catalog
CREATE TABLE Fan_Digital_Badge_Catalog (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    badge_code TEXT,
    badge_name TEXT,
    rarity_level TEXT,
    point_cost INTEGER,
    unlock_condition TEXT,
    image_path TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT,
    active_flag INTEGER,
    description TEXT,
    category TEXT,
    tier INTEGER,
    expiration_date TEXT,
    max_awards_per_user INTEGER,
    total_awarded INTEGER,
    related_event_id INTEGER,
    notes TEXT
);
INSERT INTO Fan_Digital_Badge_Catalog (id,badge_code,badge_name,rarity_level,point_cost,unlock_condition,image_path,created_at,created_by,updated_at,updated_by,active_flag,description,category,tier,expiration_date,max_awards_per_user,total_awarded,related_event_id,notes) VALUES (1,'WIN2024','WinChampion','Epic',500,'WinLeagueFinal','/images/badge1.png','2024-04-01','admin','2024-04-01','admin',1,'Awarded to league champions','Performance',5,'2025-04-01',1,100,2001,'First badge');
INSERT INTO Fan_Digital_Badge_Catalog (id,badge_code,badge_name,rarity_level,point_cost,unlock_condition,image_path,created_at,created_by,updated_at,updated_by,active_flag,description,category,tier,expiration_date,max_awards_per_user,total_awarded,related_event_id,notes) VALUES (2,'SCORER','TopScorer','Rare',300,'Score30Goals','/images/badge2.png','2024-05-01','admin','2024-05-01','admin',1,'For scoring 30+ goals','Performance',4,'2025-05-01',1,250,2002,'Second badge');
INSERT INTO Fan_Digital_Badge_Catalog (id,badge_code,badge_name,rarity_level,point_cost,unlock_condition,image_path,created_at,created_by,updated_at,updated_by,active_flag,description,category,tier,expiration_date,max_awards_per_user,total_awarded,related_event_id,notes) VALUES (3,'LOYAL','LoyalFan','Common',100,'Attend10Matches','/images/badge3.png','2024-06-01','admin','2024-06-01','admin',1,'Attend ten matches','Engagement',2,'2025-06-01',1,500,2003,'Third badge');

-- Club Sustainability Report
CREATE TABLE Club_Sustainability_Report (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    report_year INTEGER,
    total_emissions_tons REAL,
    renewable_energy_percent REAL,
    water_savings_liters REAL,
    waste_recycled_tons REAL,
    carbon_offset_purchases REAL,
    sustainability_score REAL,
    report_url TEXT,
    approved_by TEXT,
    approval_date TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT,
    executive_summary TEXT,
    section_environment TEXT,
    section_social TEXT,
    section_governance TEXT,
    notes TEXT
);
INSERT INTO Club_Sustainability_Report (id,report_year,total_emissions_tons,renewable_energy_percent,water_savings_liters,waste_recycled_tons,carbon_offset_purchases,sustainability_score,report_url,approved_by,approval_date,created_at,created_by,updated_at,updated_by,executive_summary,section_environment,section_social,section_governance,notes) VALUES (1,2023,1200.5,35.0,500000,80.2,150.0,78.5,'http://club.com/report2023','cfo','2024-01-15','2024-01-10','cfo','2024-01-15','cfo','Summary2023','Env2023','Social2023','Gov2023','First report');
INSERT INTO Club_Sustainability_Report (id,report_year,total_emissions_tons,renewable_energy_percent,water_savings_liters,waste_recycled_tons,carbon_offset_purchases,sustainability_score,report_url,approved_by,approval_date,created_at,created_by,updated_at,updated_by,executive_summary,section_environment,section_social,section_governance,notes) VALUES (2,2024,1150.0,38.5,520000,85.0,160.0,81.0,'http://club.com/report2024','cfo','2025-01-20','2025-01-15','cfo','2025-01-20','cfo','Summary2024','Env2024','Social2024','Gov2024','Second report');
INSERT INTO Club_Sustainability_Report (id,report_year,total_emissions_tons,renewable_energy_percent,water_savings_liters,waste_recycled_tons,carbon_offset_purchases,sustainability_score,report_url,approved_by,approval_date,created_at,created_by,updated_at,updated_by,executive_summary,section_environment,section_social,section_governance,notes) VALUES (3,2025,1100.0,40.0,540000,90.0,170.0,84.0,'http://club.com/report2025','cfo','2026-01-25','2026-01-20','cfo','2026-01-25','cfo','Summary2025','Env2025','Social2025','Gov2025','Third report');

-- Stadium IoT Device Registry
CREATE TABLE Stadium_IoT_Device_Registry (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    device_id TEXT,
    device_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    firmware_version TEXT,
    installation_date TEXT,
    last_maintenance_date TEXT,
    status TEXT,
    location_zone TEXT,
    ip_address TEXT,
    mac_address TEXT,
    battery_level_percent REAL,
    signal_strength_dbm REAL,
    uptime_hours INTEGER,
    warranty_end_date TEXT,
    assigned_to TEXT,
    maintenance_contact TEXT,
    notes TEXT,
    created_at TEXT,
    created_by TEXT
);
INSERT INTO Stadium_IoT_Device_Registry (id,device_id,device_type,manufacturer,model_number,firmware_version,installation_date,last_maintenance_date,status,location_zone,ip_address,mac_address,battery_level_percent,signal_strength_dbm,uptime_hours,warranty_end_date,assigned_to,maintenance_contact,notes,created_at,created_by) VALUES (1,'DEV001','Camera','CamTech','CT-900','v1.2','2023-05-01','2024-06-01','Active','NorthWing','192.168.1.10','AA:BB:CC:DD:EE:01',95.5,-70.2,2000,'2026-05-01','SecurityTeam','JohnDoe','Main entrance camera','2024-06-01','admin');
INSERT INTO Stadium_IoT_Device_Registry (id,device_id,device_type,manufacturer,model_number,firmware_version,installation_date,last_maintenance_date,status,location_zone,ip_address,mac_address,battery_level_percent,signal_strength_dbm,uptime_hours,warranty_end_date,assigned_to,maintenance_contact,notes,created_at,created_by) VALUES (2,'DEV002','EnvironmentalSensor','EcoSense','ES-200','v3.0','2023-07-15','2024-07-15','Active','SouthWing','192.168.1.20','AA:BB:CC:DD:EE:02',100.0,-65.0,1800,'2026-07-15','Facilities','JaneSmith','Temperature and humidity sensor','2024-07-15','admin');
INSERT INTO Stadium_IoT_Device_Registry (id,device_id,device_type,manufacturer,model_number,firmware_version,installation_date,last_maintenance_date,status,location_zone,ip_address,mac_address,battery_level_percent,signal_strength_dbm,uptime_hours,warranty_end_date,assigned_to,maintenance_contact,notes,created_at,created_by) VALUES (3,'DEV003','LEDDisplay','BrightVis','LD-500','v2.5','2023-09-01','2024-09-01','Active','EastWing','192.168.1.30','AA:BB:CC:DD:EE:03',80.0,-60.5,1600,'2026-09-01','MediaTeam','MikeLee','Scoreboard display','2024-09-01','admin');

-- Broadcast Ad Slot Pricing
CREATE TABLE Broadcast_Ad_Slot_Pricing (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    slot_name TEXT,
    start_time TEXT,
    end_time TEXT,
    duration_seconds INTEGER,
    price_usd REAL,
    currency TEXT,
    ad_type TEXT,
    target_audience TEXT,
    impression_guarantee INTEGER,
    viewability_rate REAL,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT,
    notes TEXT,
    region TEXT,
    platform TEXT,
    package_name TEXT,
    discount_percent REAL,
    contract_id INTEGER
);
INSERT INTO Broadcast_Ad_Slot_Pricing (id,slot_name,start_time,end_time,duration_seconds,price_usd,currency,ad_type,target_audience,impression_guarantee,viewability_rate,created_at,created_by,updated_at,updated_by,notes,region,platform,package_name,discount_percent,contract_id) VALUES (1,'PreMatchPrime','2024-08-01 18:00','2024-08-01 18:00',30,1200.00,'USD','Video','AllFans',150000,0.85,'2024-01-01','admin','2024-01-01','admin','Prime pre‑match slot','NorthAmerica','TV','PremiumPackage',10.0,5001);
INSERT INTO Broadcast_Ad_Slot_Pricing (id,slot_name,start_time,end_time,duration_seconds,price_usd,currency,ad_type,target_audience,impression_guarantee,viewability_rate,created_at,created_by,updated_at,updated_by,notes,region,platform,package_name,discount_percent,contract_id) VALUES (2,'HalfTimeHighlight','2024-08-01 18:45','2024-08-01 18:45',45,800.00,'USD','Video','SportsFans',100000,0.78,'2024-01-02','admin','2024-01-02','admin','Half‑time highlight','Europe','Streaming','StandardPackage',5.0,5002);
INSERT INTO Broadcast_Ad_Slot_Pricing (id,slot_name,start_time,end_time,duration_seconds,price_usd,currency,ad_type,target_audience,impression_guarantee,viewability_rate,created_at,created_by,updated_at,updated_by,notes,region,platform,package_name,discount_percent,contract_id) VALUES (3,'PostMatchWrap','2024-08-01 19:30','2024-08-01 19:30',60,1500.00,'USD','Video','AllFans',200000,0.90,'2024-01-03','admin','2024-01-03','admin','Post‑match wrap‑up','Asia','TV','PremiumPackage',12.0,5003);

-- Fan Engagement Challenge
CREATE TABLE Fan_Engagement_Challenge (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    challenge_name TEXT,
    start_date TEXT,
    end_date TEXT,
    reward_type TEXT,
    reward_amount REAL,
    participation_requirement TEXT,
    max_participants INTEGER,
    current_participants INTEGER,
    challenge_status TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_by TEXT,
    updated_at TEXT,
    description TEXT,
    leaderboard_visible INTEGER,
    social_sharing_enabled INTEGER,
    related_event_id INTEGER,
    notes TEXT,
    theme_color TEXT
);
INSERT INTO Fan_Engagement_Challenge (id,challenge_name,start_date,end_date,reward_type,reward_amount,participation_requirement,max_participants,current_participants,challenge_status,created_by,created_at,updated_by,updated_at,description,leaderboard_visible,social_sharing_enabled,related_event_id,notes,theme_color) VALUES (1,'GoalScorerQuiz','2024-07-01','2024-07-31','Voucher',25.0,'Answer10Correctly',1000,150,'Active','marketing','2024-06-15','marketing','2024-06-15','Quiz on season goals',1,1,3001,'First challenge','Blue');
INSERT INTO Fan_Engagement_Challenge (id,challenge_name,start_date,end_date,reward_type,reward_amount,participation_requirement,max_participants,current_participants,challenge_status,created_by,created_at,updated_by,updated_at,description,leaderboard_visible,social_sharing_enabled,related_event_id,notes,theme_color) VALUES (2,'TriviaMarathon','2024-08-01','2024-08-15','Points',500.0,'CompleteAllRounds',500,80,'Upcoming','marketing','2024-07-01','marketing','2024-07-01','Multi‑day trivia event',1,1,3002,'Second challenge','Green');
INSERT INTO Fan_Engagement_Challenge (id,challenge_name,start_date,end_date,reward_type,reward_amount,participation_requirement,max_participants,current_participants,challenge_status,created_by,created_at,updated_by,updated_at,description,leaderboard_visible,social_sharing_enabled,related_event_id,notes,theme_color) VALUES (3,'FanPhotoContest','2024-09-01','2024-09-30','Trophy',0,'SubmitBestStadiumPhoto',300,45,'Planned','marketing','2024-08-01','marketing','2024-08-01','Photo contest for fans',0,1,3003,'Third challenge','Red');

-- Club Energy Efficiency Measure
CREATE TABLE Club_Energy_Efficiency_Measure (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    measure_name TEXT,
    measure_type TEXT,
    implementation_date TEXT,
    expected_savings_kwh REAL,
    actual_savings_kwh REAL,
    cost_investment_usd REAL,
    payback_years REAL,
    responsible_department TEXT,
    status TEXT,
    verification_date TEXT,
    verified_by TEXT,
    notes TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT,
    contact_person TEXT,
    related_project_id INTEGER
);
INSERT INTO Club_Energy_Efficiency_Measure (id,measure_name,measure_type,implementation_date,expected_savings_kwh,actual_savings_kwh,cost_investment_usd,payback_years,responsible_department,status,verification_date,verified_by,notes,created_at,created_by,updated_at,updated_by,contact_person,related_project_id) VALUES (1,'LEDLightingUpgrade','Lighting','2024-01-15',200000,190000,150000,1.2,'Facilities','Completed','2024-07-01','energy_manager','Replaced all stadium lights','2024-01-16','admin','2024-07-02','admin','JohnDoe',4001);
INSERT INTO Club_Energy_Efficiency_Measure (id,measure_name,measure_type,implementation_date,expected_savings_kwh,actual_savings_kwh,cost_investment_usd,payback_years,responsible_department,status,verification_date,verified_by,notes,created_at,created_by,updated_at,updated_by,contact_person,related_project_id) VALUES (2,'SolarPanelInstallation','Renewable','2024-03-01',500000,480000,800000,2.0,'Sustainability','InProgress','2024-08-15','sustainability_lead','Phase 1 of rooftop solar','2024-03-02','admin','2024-08-16','admin','JaneSmith',4002);
INSERT INTO Club_Energy_Efficiency_Measure (id,measure_name,measure_type,implementation_date,expected_savings_kwh,actual_savings_kwh,cost_investment_usd,payback_years,responsible_department,status,verification_date,verified_by,notes,created_at,created_by,updated_at,updated_by,contact_person,related_project_id) VALUES (3,'HVACOptimization','HVAC','2024-05-10',300000,0,120000,1.5,'Facilities','Planned','', '','Optimization of heating and cooling systems','2024-05-11','admin','2024-05-11','admin','MikeLee',4003);

-- Player Virtual Gaming Stats
CREATE TABLE Player_Virtual_Gaming_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    game_title TEXT,
    platform TEXT,
    total_play_time_minutes INTEGER,
    highest_score INTEGER,
    rank INTEGER,
    achievements_unlocked INTEGER,
    last_played_date TEXT,
    gaming_friends_count INTEGER,
    average_session_length REAL,
    in_game_currency_spent_usd REAL,
    subscription_status TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT,
    notes TEXT,
    gaming_team_name TEXT
);
INSERT INTO Player_Virtual_Gaming_Stats (id,player_api_id,game_title,platform,total_play_time_minutes,highest_score,rank,achievements_unlocked,last_played_date,gaming_friends_count,average_session_length,in_game_currency_spent_usd,subscription_status,created_at,created_by,updated_at,updated_by,notes,gaming_team_name) VALUES (1,1001,'FIFA23','PC',4500,92,5,30,'2024-06-20',150,45.0,20.0,'Premium','2024-06-21','admin','2024-06-21','admin','Active gamer','VirtualFC');
INSERT INTO Player_Virtual_Gaming_Stats (id,player_api_id,game_title,platform,total_play_time_minutes,highest_score,rank,achievements_unlocked,last_played_date,gaming_friends_count,average_session_length,in_game_currency_spent_usd,subscription_status,created_at,created_by,updated_at,updated_by,notes,gaming_team_name) VALUES (2,1002,'NBA2K24','Console',3000,88,12,20,'2024-06-18',80,30.0,15.0,'Standard','2024-06-18','admin','2024-06-18','admin','Casual player','VirtualHoops');
INSERT INTO Player_Virtual_Gaming_Stats (id,player_api_id,game_title,platform,total_play_time_minutes,highest_score,rank,achievements_unlocked,last_played_date,gaming_friends_count,average_session_length,in_game_currency_spent_usd,subscription_status,created_at,created_by,updated_at,updated_by,notes,gaming_team_name) VALUES (3,1003,'Madden24','PC',2500,85,20,25,'2024-06-15',60,35.0,10.0,'Standard','2024-06-15','admin','2024-06-15','admin','Strategic player','VirtualGridiron');