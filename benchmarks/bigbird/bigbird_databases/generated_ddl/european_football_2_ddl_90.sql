-- Sponsor_Engagement_Metrics
CREATE TABLE Sponsor_Engagement_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    match_id INTEGER,
    social_impressions INTEGER,
    tv_mentions INTEGER,
    stadium_banner_views INTEGER,
    digital_ad_clicks INTEGER,
    fan_interaction_score REAL,
    activation_date TEXT,
    region TEXT,
    audience_age_group TEXT,
    gender_ratio TEXT,
    sponsor_category TEXT,
    contract_value REAL,
    contract_start TEXT,
    contract_end TEXT,
    activation_type TEXT,
    on_site_events INTEGER,
    online_events INTEGER,
    post_event_survey_score REAL,
    roi_estimate REAL
);
INSERT INTO Sponsor_Engagement_Metrics (sponsor_id,match_id,social_impressions,tv_mentions,stadium_banner_views,digital_ad_clicks,fan_interaction_score,activation_date,region,audience_age_group,gender_ratio,sponsor_category,contract_value,contract_start,contract_end,activation_type,on_site_events,online_events,post_event_survey_score,roi_estimate) VALUES (101,2001,1500000,35,25000,8200,4.5,'2023-09-15','Europe','18-35','Male60Female40','Apparel',500000,'2022-01-01','2024-12-31','Stadium',12,8,8.2,1.15);
INSERT INTO Sponsor_Engagement_Metrics (sponsor_id,match_id,social_impressions,tv_mentions,stadium_banner_views,digital_ad_clicks,fan_interaction_score,activation_date,region,audience_age_group,gender_ratio,sponsor_category,contract_value,contract_start,contract_end,activation_type,on_site_events,online_events,post_event_survey_score,roi_estimate) VALUES (102,2002,800000,20,18000,5600,3.9,'2023-10-02','NorthAmerica','25-45','Male55Female45','Technology',300000,'2021-06-01','2023-05-31','Digital',6,4,7.5,1.02);
INSERT INTO Sponsor_Engagement_Metrics (sponsor_id,match_id,social_impressions,tv_mentions,stadium_banner_views,digital_ad_clicks,fan_interaction_score,activation_date,region,audience_age_group,gender_ratio,sponsor_category,contract_value,contract_start,contract_end,activation_type,on_site_events,online_events,post_event_survey_score,roi_estimate) VALUES (103,2003,2100000,50,30000,10200,5.1,'2024-03-10','Asia','15-30','Male50Female50','Automotive',750000,'2023-01-01','2025-12-31','Mixed',15,10,9.0,1.30);

-- Stadium_Utility_Consumption
CREATE TABLE Stadium_Utility_Consumption (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    date TEXT,
    electricity_kwh REAL,
    water_cubic_meters REAL,
    gas_therms REAL,
    waste_tonnage REAL,
    recycling_tonnage REAL,
    fuel_litres REAL,
    hvac_runtime_hours REAL,
    lighting_hours REAL,
    maintenance_cost REAL,
    carbon_footprint_kg REAL,
    energy_efficiency_rating TEXT,
    water_efficiency_rating TEXT,
    waste_diversion_rate REAL,
    renewable_energy_pct REAL,
    peak_demand_kw REAL,
    off_peak_demand_kw REAL,
    avg_daily_occupancy INTEGER,
    notes TEXT
);
INSERT INTO Stadium_Utility_Consumption (stadium_id,date,electricity_kwh,water_cubic_meters,gas_therms,waste_tonnage,recycling_tonnage,fuel_litres,hvac_runtime_hours,lighting_hours,maintenance_cost,carbon_footprint_kg,energy_efficiency_rating,water_efficiency_rating,waste_diversion_rate,renewable_energy_pct,peak_demand_kw,off_peak_demand_kw,avg_daily_occupancy,notes) VALUES (1,'2024-01-15',42000.5,3500.2,1500.0,12.4,8.1,245.0,185.0,140.0,8500.0,21000.0,'A','A',0.65,30.0,850.0,420.0,62000,'Normal match day');
INSERT INTO Stadium_Utility_Consumption (stadium_id,date,electricity_kwh,water_cubic_meters,gas_therms,waste_tonnage,recycling_tonnage,fuel_litres,hvac_runtime_hours,lighting_hours,maintenance_cost,carbon_footprint_kg,energy_efficiency_rating,water_efficiency_rating,waste_diversion_rate,renewable_energy_pct,peak_demand_kw,off_peak_demand_kw,avg_daily_occupancy,notes) VALUES (2,'2024-02-20',38000.0,3100.5,1320.0,10.8,7.2,230.0,170.0,132.0,7900.0,19000.0,'B','B',0.60,25.0,800.0,400.0,54000,'Training session');
INSERT INTO Stadium_Utility_Consumption (stadium_id,date,electricity_kwh,water_cubic_meters,gas_therms,waste_tonnage,recycling_tonnage,fuel_litres,hvac_runtime_hours,lighting_hours,maintenance_cost,carbon_footprint_kg,energy_efficiency_rating,water_efficiency_rating,waste_diversion_rate,renewable_energy_pct,peak_demand_kw,off_peak_demand_kw,avg_daily_occupancy,notes) VALUES (3,'2024-03-05',46000.8,3800.0,1650.0,13.0,9.0,260.0,195.0,150.0,9100.0,23000.0,'A','A',0.70,35.0,900.0,460.0,72000,'Championship final');

-- Team_Media_Campaigns
CREATE TABLE Team_Media_Campaigns (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_usd REAL,
    platform TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr_percent REAL,
    cpc_usd REAL,
    conversions INTEGER,
    conversion_rate REAL,
    creative_type TEXT,
    target_audience TEXT,
    geographic_target TEXT,
    age_range TEXT,
    gender_target TEXT,
    ad_units INTEGER,
    sponsor_id INTEGER,
    performance_score REAL
);
INSERT INTO Team_Media_Campaigns (team_id,campaign_name,start_date,end_date,budget_usd,platform,impressions,clicks,ctr_percent,cpc_usd,conversions,conversion_rate,creative_type,target_audience,geographic_target,age_range,gender_target,ad_units,sponsor_id,performance_score) VALUES (10,'SeasonKickoff2024','2024-07-01','2024-08-15',250000,'SocialMedia',8000000,120000,1.5,2.08,4500,3.75,'Video','Fans','Europe','18-35','All',5,101,88.4);
INSERT INTO Team_Media_Campaigns (team_id,campaign_name,start_date,end_date,budget_usd,platform,impressions,clicks,ctr_percent,cpc_usd,conversions,conversion_rate,creative_type,target_audience,geographic_target,age_range,gender_target,ad_units,sponsor_id,performance_score) VALUES (12,'YouthAcademyPromo','2024-03-10','2024-04-30',95000,'Display',3500000,42000,1.2,2.26,2100,5.0,'Banner','YoungFans','NorthAmerica','13-25','Male',3,102,76.1);
INSERT INTO Team_Media_Campaigns (team_id,campaign_name,start_date,end_date,budget_usd,platform,impressions,clicks,ctr_percent,cpc_usd,conversions,conversion_rate,creative_type,target_audience,geographic_target,age_range,gender_target,ad_units,sponsor_id,performance_score) VALUES (15,'ChampionshipFinalPush','2024-05-01','2024-05-20',180000,'TV',2500000,34000,1.36,5.29,1800,5.29,'Spot','General','Asia','18-45','All',2,103,82.7);

-- Player_Nutrition_Logs
CREATE TABLE Player_Nutrition_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    log_date TEXT,
    meal_type TEXT,
    calories INTEGER,
    protein_g REAL,
    carbs_g REAL,
    fats_g REAL,
    sodium_mg INTEGER,
    water_ml INTEGER,
    supplement_name TEXT,
    supplement_dosage_mg INTEGER,
    micronutrient_vitc_mg REAL,
    micronutrient_iron_mg REAL,
    pre_training_snack TEXT,
    post_training_meal TEXT,
    meal_rating INTEGER,
    appetite_score INTEGER,
    fatigue_level INTEGER,
    sleep_quality_score INTEGER,
    notes TEXT
);
INSERT INTO Player_Nutrition_Logs (player_id,log_date,meal_type,calories,protein_g,carbs_g,fats_g,sodium_mg,water_ml,supplement_name,supplement_dosage_mg,micronutrient_vitc_mg,micronutrient_iron_mg,pre_training_snack,post_training_meal,meal_rating,appetite_score,fatigue_level,sleep_quality_score,notes) VALUES (1001,'2024-04-10','Breakfast',720,45.0,80.0,22.0,800,1500,'WheyProtein',30,85.0,18,'Banana','ChickenRice',8,7,3,9,'All good');
INSERT INTO Player_Nutrition_Logs (player_id,log_date,meal_type,calories,protein_g,carbs_g,fats_g,sodium_mg,water_ml,supplement_name,supplement_dosage_mg,micronutrient_vitc_mg,micronutrient_iron_mg,pre_training_snack,post_training_meal,meal_rating,appetite_score,fatigue_level,sleep_quality_score,notes) VALUES (1002,'2024-04-10','Lunch',950,60.0,100.0,30.0,950,2000,'Creatine',5,70.0,20,'EnergyBar','PastaBeef',9,8,2,8,'Felt strong');
INSERT INTO Player_Nutrition_Logs (player_id,log_date,meal_type,calories,protein_g,carbs_g,fats_g,sodium_mg,water_ml,supplement_name,supplement_dosage_mg,micronutrient_vitc_mg,micronutrient_iron_mg,pre_training_snack,post_training_meal,meal_rating,appetite_score,fatigue_level,sleep_quality_score,notes) VALUES (1003,'2024-04-10','Dinner',880,55.0,90.0,25.0,870,1800,'BetaAlanine',3,60.0,15,'Yogurt','SalmonQuinoa',7,6,4,7,'Need more carbs');

-- Match_Operational_Resources
CREATE TABLE Match_Operational_Resources (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    resource_type TEXT,
    quantity INTEGER,
    provider TEXT,
    start_time TEXT,
    end_time TEXT,
    cost_usd REAL,
    status TEXT,
    contact_person TEXT,
    contact_phone TEXT,
    location TEXT,
    equipment_serial TEXT,
    maintenance_required INTEGER,
    safety_check_passed INTEGER,
    notes TEXT,
    priority_level TEXT,
    allocated_to TEXT,
    usage_percentage REAL,
    risk_level TEXT
);
INSERT INTO Match_Operational_Resources (match_id,resource_type,quantity,provider,start_time,end_time,cost_usd,status,contact_person,contact_phone,location,equipment_serial,maintenance_required,safety_check_passed,notes,priority_level,allocated_to,usage_percentage,risk_level) VALUES (2001,'MedicalTeam',5,'HealthFirst','2024-04-20 09:00','2024-04-20 22:00',12000,'Active','DrSmith','5551234','StadiumClinic','MED12345',0,1,'All certified',High,'TeamA',100.0,Low);
INSERT INTO Match_Operational_Resources (match_id,resource_type,quantity,provider,start_time,end_time,cost_usd,status,contact_person,contact_phone,location,equipment_serial,maintenance_required,safety_check_passed,notes,priority_level,allocated_to,usage_percentage,risk_level) VALUES (2002,'ReplayCams',8,'TechVision','2024-04-21 08:30','2024-04-21 23:00',25000,'Active','MsLee','5555678','BroadcastBunker','RCAM001',0,1,'4K ready',Medium,'BroadcastTeam',100.0,Medium);
INSERT INTO Match_Operational_Resources (match_id,resource_type,quantity,provider,start_time,end_time,cost_usd,status,contact_person,contact_phone,location,equipment_serial,maintenance_required,safety_check_passed,notes,priority_level,allocated_to,usage_percentage,risk_level) VALUES (2003,'SecurityStaff',20,'SecureCo','2024-04-22 07:00','2024-04-22 23:30',35000,'Active','OfficerJ','5559012','StadiumGates','SEC200',0,1,'Briefed on protocols',High,'SecurityTeam',95.0,High);

-- League_Sponsorship_Packages
CREATE TABLE League_Sponsorship_Packages (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    package_name TEXT,
    tier TEXT,
    annual_fee_usd REAL,
    duration_years INTEGER,
    benefits_description TEXT,
    branding_spots INTEGER,
    broadcast_mentions INTEGER,
    digital_ads INTEGER,
    stadium_signage INTEGER,
    exclusive_rights TEXT,
    activation_budget_usd REAL,
    renewal_option TEXT,
    start_date TEXT,
    end_date TEXT,
    contact_name TEXT,
    contact_email TEXT,
    performance_metrics TEXT,
    notes TEXT
);
INSERT INTO League_Sponsorship_Packages (league_id,package_name,tier,annual_fee_usd,duration_years,benefits_description,branding_spots,broadcast_mentions,digital_ads,stadium_signage,exclusive_rights,activation_budget_usd,renewal_option,start_date,end_date,contact_name,contact_email,performance_metrics,notes) VALUES (1,'PremierGold','Gold',2000000,3,'Full season branding, logo on jerseys, TV spots',12,24,48,10,'TitleSponsor',500000,'AutoRenew','2023-01-01','2025-12-31','JohnDoe','john.doe@example.com','Impressions:5M;SalesLift:12%','Top tier sponsor');
INSERT INTO League_Sponsorship_Packages (league_id,package_name,tier,annual_fee_usd,duration_years,benefits_description,branding_spots,broadcast_mentions,digital_ads,stadium_signage,exclusive_rights,activation_budget_usd,renewal_option,start_date,end_date,contact_name,contact_email,performance_metrics,notes) VALUES (2,'EliteSilver','Silver',1200000,2,'Partial branding, halftime mentions, web banners',8,16,30,6,'None',300000,'Negotiable','2024-01-01','2025-12-31','JaneSmith','jane.smith@example.com','Impressions:3M;SalesLift:8%','Mid tier package');
INSERT INTO League_Sponsorship_Packages (league_id,package_name,tier,annual_fee_usd,duration_years,benefits_description,branding_spots,broadcast_mentions,digital_ads,stadium_signage,exclusive_rights,activation_budget_usd,renewal_option,start_date,end_date,contact_name,contact_email,performance_metrics,notes) VALUES (3,'BronzeBoost','Bronze',600000,1,'Limited branding, social media shoutouts',4,8,15,2,'None',150000,'OneYear','2024-06-01','2025-05-31','MikeLee','mike.lee@example.com','Impressions:1M;SalesLift:4%','Entry level sponsor');

-- Youth_Academy_Team_Stats
CREATE TABLE Youth_Academy_Team_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    academy_team_id INTEGER,
    season TEXT,
    matches_played INTEGER,
    wins INTEGER,
    draws INTEGER,
    losses INTEGER,
    goals_for INTEGER,
    goals_against INTEGER,
    clean_sheets INTEGER,
    average_age REAL,
    average_height_cm REAL,
    average_weight_kg REAL,
    top_scorer_name TEXT,
    top_scorer_goals INTEGER,
    coach_name TEXT,
    training_hours_per_week REAL,
    injury_count INTEGER,
    promotion_count INTEGER,
    scouting_rating REAL,
    notes TEXT
);
INSERT INTO Youth_Academy_Team_Stats (academy_team_id,season,matches_played,wins,draws,losses,goals_for,goals_against,clean_sheets,average_age,average_height_cm,average_weight_kg,top_scorer_name,top_scorer_goals,coach_name,training_hours_per_week,injury_count,promotion_count,scouting_rating,notes) VALUES (301,'2023/24',30,18,6,6,55,30,12,17.5,175.0,68.0,'LuisDiaz',12,'CoachMuller',15.0,4,6,8.2,'Strong offensive record');
INSERT INTO Youth_Academy_Team_Stats (academy_team_id,season,matches_played,wins,draws,losses,goals_for,goals_against,clean_sheets,average_age,average_height_cm,average_weight_kg,top_scorer_name,top_scorer_goals,coach_name,training_hours_per_week,injury_count,promotion_count,scouting_rating,notes) VALUES (302,'2023/24',28,14,8,6,48,35,9,16.9,172.0,66.5,'MarcoRossi',10,'CoachKhan',14.5,3,5,7.9,'Balanced squad');
INSERT INTO Youth_Academy_Team_Stats (academy_team_id,season,matches_played,wins,draws,losses,goals_for,goals_against,clean_sheets,average_age,average_height_cm,average_weight_kg,top_scorer_name,top_scorer_goals,coach_name,training_hours_per_week,injury_count,promotion_count,scouting_rating,notes) VALUES (303,'2023/24',32,20,7,5,62,28,15,18.1,178.0,70.0,'AhmedKhal',14,'CoachSilva',16.0,2,7,8.7,'Best defensive record');

-- Stadium_Environmental_Sensor_Readings
CREATE TABLE Stadium_Environmental_Sensor_Readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    sensor_id TEXT,
    timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    pm2_5_ug_m3 REAL,
    noise_db REAL,
    wind_speed_mps REAL,
    wind_direction_deg INTEGER,
    rain_mm REAL,
    solar_irradiance_wpm2 REAL,
    battery_voltage_v REAL,
    signal_strength_dbm REAL,
    calibration_date TEXT,
    abnormal_flag INTEGER,
    alert_message TEXT,
    data_quality_score REAL,
    notes TEXT
);
INSERT INTO Stadium_Environmental_Sensor_Readings (stadium_id,sensor_id,timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ug_m3,noise_db,wind_speed_mps,wind_direction_deg,rain_mm,solar_irradiance_wpm2,battery_voltage_v,signal_strength_dbm,calibration_date,abnormal_flag,alert_message,data_quality_score,notes) VALUES (1,'TMP01','2024-04-20 14:00',22.5,55.0,420,12.5,68.0,5.2,180,0.0,800.0,3.7,-70,'2023-12-01',0,'',9.8,'Normal operation');
INSERT INTO Stadium_Environmental_Sensor_Readings (stadium_id,sensor_id,timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ug_m3,noise_db,wind_speed_mps,wind_direction_deg,rain_mm,solar_irradiance_wpm2,battery_voltage_v,signal_strength_dbm,calibration_date,abnormal_flag,alert_message,data_quality_score,notes) VALUES (2,'AQM07','2024-04-20 14:05',24.0,60.0,560,35.0,85.0,3.8,90,0.0,620.0,3.9,-68,'2024-01-15',1,'High PM2.5',7.2,'Alert issued');
INSERT INTO Stadium_Environmental_Sensor_Readings (stadium_id,sensor_id,timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ug_m3,noise_db,wind_speed_mps,wind_direction_deg,rain_mm,solar_irradiance_wpm2,battery_voltage_v,signal_strength_dbm,calibration_date,abnormal_flag,alert_message,data_quality_score,notes) VALUES (3,'WND03','2024-04-20 14:10',21.8,58.0,480,20.0,72.0,6.5,270,0.0,750.0,4.0,-65,'2023-11-20',0,'',9.3,'Normal');

-- Broadcast_Technology_Inventory
CREATE TABLE Broadcast_Technology_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_type TEXT,
    model_number TEXT,
    serial_number TEXT,
    purchase_date TEXT,
    warranty_expiration TEXT,
    location TEXT,
    status TEXT,
    last_maintenance_date TEXT,
    firmware_version TEXT,
    capacity_tb REAL,
    bandwidth_gbps REAL,
    power_consumption_w REAL,
    assigned_to TEXT,
    usage_hours REAL,
    depreciation_rate_percent REAL,
    vendor_name TEXT,
    support_contact TEXT,
    notes TEXT,
    last_inspection_date TEXT
);
INSERT INTO Broadcast_Technology_Inventory (equipment_type,model_number,serial_number,purchase_date,warranty_expiration,location,status,last_maintenance_date,firmware_version,capacity_tb,bandwidth_gbps,power_consumption_w,assigned_to,usage_hours,depreciation_rate_percent,vendor_name,support_contact,notes,last_inspection_date) VALUES ('Encoder','ENCX200','EN123456','2022-03-10','2025-03-10','BroadcastCenter','Active','2024-02-20','v3.2',12.0,10.0,250,'TeamA',3400.5,15.0,'TechMedia','support@techmedia.com','Stable operation','2024-03-01');
INSERT INTO Broadcast_Technology_Inventory (equipment_type,model_number,serial_number,purchase_date,warranty_expiration,location,status,last_maintenance_date,firmware_version,capacity_tb,bandwidth_gbps,power_consumption_w,assigned_to,usage_hours,depreciation_rate_percent,vendor_name,support_contact,notes,last_inspection_date) VALUES ('Camera','CAMX500','CM987654','2021-07-22','2024-07-22','StudioA','Active','2023-12-15','v2.8',0.0,8.0,180,'ProductionTeam','5400.0',18.0,'VisionEquip','help@visionequip.com','Upgrade planned','2024-02-10');
INSERT INTO Broadcast_Technology_Inventory (equipment_type,model_number,serial_number,purchase_date,warranty_expiration,location,status,last_maintenance_date,firmware_version,capacity_tb,bandwidth_gbps,power_consumption_w,assigned_to,usage_hours,depreciation_rate_percent,vendor_name,support_contact,notes,last_inspection_date) VALUES ('Server','SRV900','SV555777','2020-01-15','2023-01-15','DataCenter','Retired','2023-01-14','v1.5',48.0,25.0,400,'ITDept','12000.0',22.0,'DataSolutions','contact@datasolutions.com','Decommissioned','2023-12-30');

-- Fan_Reward_Program
CREATE TABLE Fan_Reward_Program (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    program_name TEXT,
    enrollment_date TEXT,
    tier_level TEXT,
    points_balance INTEGER,
    last_redemption_date TEXT,
    total_redeemed_usd REAL,
    opt_in_marketing INTEGER,
    preferred_communication_channel TEXT,
    birthday_month INTEGER,
    favorite_team_id INTEGER,
    reward_eligibility_flag INTEGER,
    next_tier_threshold INTEGER,
    referral_count INTEGER,
    last_referral_date TEXT,
    last_activity_date TEXT,
    notes TEXT,
    status TEXT,
    expiration_date TEXT
);
INSERT INTO Fan_Reward_Program (fan_id,program_name,enrollment_date,tier_level,points_balance,last_redemption_date,total_redeemed_usd,opt_in_marketing,preferred_communication_channel,birthday_month,favorite_team_id,reward_eligibility_flag,next_tier_threshold,referral_count,last_referral_date,last_activity_date,notes,status,expiration_date) VALUES (50001,'ClubLoyalty','2022-05-10','Silver',12500,'2024-03-15',300.0,1,'Email',7,10,1,20000,5,'2024-02-20','2024-04-01','Active participant','Active','2025-05-10');
INSERT INTO Fan_Reward_Program (fan_id,program_name,enrollment_date,tier_level,points_balance,last_redemption_date,total_redeemed_usd,opt_in_marketing,preferred_communication_channel,birthday_month,favorite_team_id,reward_eligibility_flag,next_tier_threshold,referral_count,last_referral_date,last_activity_date,notes,status,expiration_date) VALUES (50002,'ClubLoyalty','2023-01-22','Gold',27500,'2024-04-10',650.0,1,'SMS',11,12,1,50000,12,'2024-03-05','2024-04-15','High engagement','Active','2025-01-22');
INSERT INTO Fan_Reward_Program (fan_id,program_name,enrollment_date,tier_level,points_balance,last_redemption_date,total_redeemed_usd,opt_in_marketing,preferred_communication_channel,birthday_month,favorite_team_id,reward_eligibility_flag,next_tier_threshold,referral_count,last_referral_date,last_activity_date,notes,status,expiration_date) VALUES (50003,'ClubLoyalty','2021-11-30','Bronze',8000,'2023-12-20',120.0,0,'PushNotification',3,14,1,15000,2,'2023-11-10','2024-02-28','Occasional user','Inactive','2024-11-30');