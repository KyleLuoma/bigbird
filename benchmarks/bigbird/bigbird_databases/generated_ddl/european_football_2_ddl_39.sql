-- Physiotherapy sessions for players
CREATE TABLE Physiotherapy_Sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    session_date TEXT,
    therapist_name TEXT,
    injury_type TEXT,
    treatment_type TEXT,
    session_type TEXT,
    duration_minutes INTEGER,
    pain_level INTEGER,
    mobility_score INTEGER,
    equipment_used TEXT,
    follow_up_required TEXT,
    next_session_date TEXT,
    session_outcome TEXT,
    blood_pressure_systolic INTEGER,
    blood_pressure_diastolic INTEGER,
    heart_rate INTEGER,
    temperature_c REAL,
    oxygen_sat INTEGER,
    notes TEXT,
    FOREIGN KEY(player_api_id) REFERENCES Player(player_api_id)
);
INSERT INTO Physiotherapy_Sessions (player_api_id,session_date,therapist_name,injury_type,treatment_type,session_type,duration_minutes,pain_level,mobility_score,equipment_used,follow_up_required,next_session_date,session_outcome,blood_pressure_systolic,blood_pressure_diastolic,heart_rate,temperature_c,oxygen_sat,notes) VALUES (10001,'2024-10-01','John Doe','Hamstring','Massage','Rehab',45,3,78,'FoamRoller','Yes','2024-10-08','Improved',120,80,72,36.6,98,'Patient responded well');
INSERT INTO Physiotherapy_Sessions (player_api_id,session_date,therapist_name,injury_type,treatment_type,session_type,duration_minutes,pain_level,mobility_score,equipment_used,follow_up_required,next_session_date,session_outcome,blood_pressure_systolic,blood_pressure_diastolic,heart_rate,temperature_c,oxygen_sat,notes) VALUES (10002,'2024-09-28','Emily Smith','Ankle','Cryotherapy','Recovery',30,2,85,'IcePack','No',NULL,'Stable',118,78,68,36.5,99,'No complications');
INSERT INTO Physiotherapy_Sessions (player_api_id,session_date,therapist_name,injury_type,treatment_type,session_type,duration_minutes,pain_level,mobility_score,equipment_used,follow_up_required,next_session_date,session_outcome,blood_pressure_systolic,blood_pressure_diastolic,heart_rate,temperature_c,oxygen_sat,notes) VALUES (10003,'2024-10-03','Carlos Ruiz','Knee','PhysioExercise','Strength',60,4,70,'ResistanceBand','Yes','2024-10-10','Progressing',122,82,75,36.7,97,'Increased range of motion');

-- Fan reward redemption tracking
CREATE TABLE Fan_Reward_Redemptions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    reward_id INTEGER,
    redemption_date TEXT,
    points_used INTEGER,
    status TEXT,
    store_location TEXT,
    channel TEXT,
    receipt_number TEXT,
    redeem_method TEXT,
    product_category TEXT,
    quantity INTEGER,
    total_value_usd REAL,
    shipping_required TEXT,
    shipping_address TEXT,
    delivery_estimate_date TEXT,
    promo_code_used TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Fan_Reward_Redemptions (fan_id,reward_id,redemption_date,points_used,status,store_location,channel,receipt_number,redeem_method,product_category,quantity,total_value_usd,shipping_required,shipping_address,delivery_estimate_date,promo_code_used,notes,created_at,updated_at) VALUES (2001,301,'2024-09-15',1500,'Completed','Online','Web','RCPT1001','Online','Apparel',1,45.00,'Yes','123 Fan St','2024-09-20','FAN10','First redemption', '2024-09-15','2024-09-15');
INSERT INTO Fan_Reward_Redemptions (fan_id,reward_id,redemption_date,points_used,status,store_location,channel,receipt_number,redeem_method,product_category,quantity,total_value_usd,shipping_required,shipping_address,delivery_estimate_date,promo_code_used,notes,created_at,updated_at) VALUES (2002,302,'2024-09-18',2000,'Pending','StadiumShop','Kiosk','RCPT1002','InStore','Merchandise',2,90.00,'No','',NULL,'','Awaiting pickup','2024-09-18','2024-09-18');
INSERT INTO Fan_Reward_Redemptions (fan_id,reward_id,redemption_date,points_used,status,store_location,channel,receipt_number,redeem_method,product_category,quantity,total_value_usd,shipping_required,shipping_address,delivery_estimate_date,promo_code_used,notes,created_at,updated_at) VALUES (2003,303,'2024-09-20',2500,'Completed','Online','Mobile','RCPT1003','Online','Tickets',1,120.00,'No','',NULL,'','Season pass redemption','2024-09-20','2024-09-20');

-- Stadium energy source details
CREATE TABLE Stadium_Energy_Source_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    source_type TEXT,
    provider_name TEXT,
    capacity_mw REAL,
    start_date TEXT,
    end_date TEXT,
    contract_id TEXT,
    cost_per_mwh REAL,
    renewable_flag TEXT,
    co2_emission_tco2 REAL,
    avg_daily_output_mwh REAL,
    maintenance_schedule TEXT,
    reliability_percent REAL,
    peak_output_mw REAL,
    connection_point TEXT,
    grid_region TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    FOREIGN KEY(stadium_id) REFERENCES Stadium_Facilities(stadium_id)
);
INSERT INTO Stadium_Energy_Source_Details (stadium_id,source_type,provider_name,capacity_mw,start_date,end_date,contract_id,cost_per_mwh,renewable_flag,co2_emission_tco2,avg_daily_output_mwh,maintenance_schedule,reliability_percent,peak_output_mw,connection_point,grid_region,notes,created_at,updated_at) VALUES (1,'Solar','SunPower',5.0,'2023-01-01','2028-12-31','C001',45.5,'Yes',0.0,120.0,'Quarterly',99.5,5.5,'CP01','North','Northwest roof panels',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Stadium_Energy_Source_Details (stadium_id,source_type,provider_name,capacity_mw,start_date,end_date,contract_id,cost_per_mwh,renewable_flag,co2_emission_tco2,avg_daily_output_mwh,maintenance_schedule,reliability_percent,peak_output_mw,connection_point,grid_region,notes,created_at,updated_at) VALUES (2,'NaturalGas','EnergyCo',10.0,'2022-06-15','2032-06-14','C002',55.0,'No',350.0,250.0,'Biannual',95.0,12.0,'CP02','South','Backup generator unit',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Stadium_Energy_Source_Details (stadium_id,source_type,provider_name,capacity_mw,start_date,end_date,contract_id,cost_per_mwh,renewable_flag,co2_emission_tco2,avg_daily_output_mwh,maintenance_schedule,reliability_percent,peak_output_mw,connection_point,grid_region,notes,created_at,updated_at) VALUES (3,'Wind','WindForce',8.0,'2024-03-01','2029-02-28','C003',48.0,'Yes',20.0,180.0,'Monthly',98.0,9.0,'CP03','East','On‑site turbine array',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Media broadcast event log
CREATE TABLE Media_Broadcast_Event_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    broadcast_network_id INTEGER,
    start_time TEXT,
    end_time TEXT,
    language TEXT,
    quality TEXT,
    bitrate_kbps INTEGER,
    stream_url TEXT,
    viewership_estimate INTEGER,
    ad_breaks_count INTEGER,
    technical_issues_flag TEXT,
    commentary_team TEXT,
    production_company TEXT,
    camera_count INTEGER,
    overlay_graphics_used TEXT,
    subtitle_language TEXT,
    geo_restriction TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    FOREIGN KEY(match_id) REFERENCES "Match"(id)
);
INSERT INTO Media_Broadcast_Event_Log (match_id,broadcast_network_id,start_time,end_time,language,quality,bitrate_kbps,stream_url,viewership_estimate,ad_breaks_count,technical_issues_flag,commentary_team,production_company,camera_count,overlay_graphics_used,subtitle_language,geo_restriction,notes,created_at,updated_at) VALUES (1,10,'2024-10-01 15:00:00','2024-10-01 16:45:00','English','HD',5000,'http://stream1.example.com',150000,3,'No','TeamA_TeamB','ProdCoX',12,'Yes','Spanish','None','Live broadcast',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Media_Broadcast_Event_Log (match_id,broadcast_network_id,start_time,end_time,language,quality,bitrate_kbps,stream_url,viewership_estimate,ad_breaks_count,technical_issues_flag,commentary_team,production_company,camera_count,overlay_graphics_used,subtitle_language,geo_restriction,notes,created_at,updated_at) VALUES (2,12,'2024-10-02 18:30:00','2024-10-02 20:15:00','French','FullHD',8000,'http://stream2.example.com',200000,4,'Yes','CommentaryX','ProdCoY',14,'Yes','English','EU','Minor sync issue at halftime',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Media_Broadcast_Event_Log (match_id,broadcast_network_id,start_time,end_time,language,quality,bitrate_kbps,stream_url,viewership_estimate,ad_breaks_count,technical_issues_flag,commentary_team,production_company,camera_count,overlay_graphics_used,subtitle_language,geo_restriction,notes,created_at,updated_at) VALUES (3,15,'2024-10-03 20:00:00','2024-10-03 21:45:00','Spanish','HD',4500,'http://stream3.example.com',120000,2,'No','TeamC_TeamD','ProdCoZ',10,'No','Portuguese','LATAM','Standard broadcast',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Player endorsement campaigns
CREATE TABLE Player_Endorsement_Campaigns (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    brand_name TEXT,
    contract_start TEXT,
    contract_end TEXT,
    compensation_usd REAL,
    campaign_name TEXT,
    region TEXT,
    media_channels TEXT,
    impressions_target INTEGER,
    clicks_target INTEGER,
    video_views INTEGER,
    social_mentions INTEGER,
    activation_events INTEGER,
    exclusive_flag TEXT,
    product_category TEXT,
    contract_status TEXT,
    renewal_option TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    FOREIGN KEY(player_api_id) REFERENCES Player(player_api_id)
);
INSERT INTO Player_Endorsement_Campaigns (player_api_id,brand_name,contract_start,contract_end,compensation_usd,campaign_name,region,media_channels,impressions_target,clicks_target,video_views,social_mentions,activation_events,exclusive_flag,product_category,contract_status,renewal_option,notes,created_at,updated_at) VALUES (10001,'Nike','2023-07-01','2025-06-30',2500000,'SpeedBoost','Global','TV,Online,Social',5000000,250000,1200000,80000,30,'Yes','Footwear','Active','Yes','Lead athlete for new line',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Player_Endorsement_Campaigns (player_api_id,brand_name,contract_start,contract_end,compensation_usd,campaign_name,region,media_channels,impressions_target,clicks_target,video_views,social_mentions,activation_events,exclusive_flag,product_category,contract_status,renewal_option,notes,created_at,updated_at) VALUES (10002,'Adidas','2024-01-15','2026-01-14',1800000,'PerformancePlus','Europe','Online,Social',3000000,150000,900000,45000,20,'No','Apparel','Active','No','Co‑branding with club',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Player_Endorsement_Campaigns (player_api_id,brand_name,contract_start,contract_end,compensation_usd,campaign_name,region,media_channels,impressions_target,clicks_target,video_views,social_mentions,activation_events,exclusive_flag,product_category,contract_status,renewal_option,notes,created_at,updated_at) VALUES (10003,'Puma','2022-03-01','2024-02-28',1300000,'RapidRun','Asia','TV,Print',2500000,120000,750000,30000,15,'Yes','Footwear','Expired','Yes','Renewal under negotiation',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Team kit release details
CREATE TABLE Team_Kit_Release_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    season TEXT,
    kit_type TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    supplier TEXT,
    launch_date TEXT,
    units_produced INTEGER,
    units_sold INTEGER,
    average_price_usd REAL,
    online_sales_percent REAL,
    retail_sales_percent REAL,
    wholesale_sales_percent REAL,
    limited_edition_flag TEXT,
    design_theme TEXT,
    sponsor_logo_present TEXT,
    material_composition TEXT,
    sustainability_certified TEXT,
    sales_region TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    FOREIGN KEY(team_api_id) REFERENCES Team(team_api_id)
);
INSERT INTO Team_Kit_Release_Details (team_api_id,season,kit_type,primary_color,secondary_color,supplier,launch_date,units_produced,units_sold,average_price_usd,online_sales_percent,retail_sales_percent,wholesale_sales_percent,limited_edition_flag,design_theme,sponsor_logo_present,material_composition,sustainability_certified,sales_region,notes,created_at,updated_at) VALUES (1001,'2024/25','Home','Blue','White','Nike','2024-08-01',50000,42000,85.00,60.0,30.0,10.0,'No','ClassicStripes','Yes','PolyesterBlend','Yes','Global','Standard home kit',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Team_Kit_Release_Details (team_api_id,season,kit_type,primary_color,secondary_color,supplier,launch_date,units_produced,units_sold,average_price_usd,online_sales_percent,retail_sales_percent,wholesale_sales_percent,limited_edition_flag,design_theme,sponsor_logo_present,material_composition,sustainability_certified,sales_region,notes,created_at,updated_at) VALUES (1002,'2024/25','Away','Red','Black','Adidas','2024-08-10',40000,35000,80.00,55.0,35.0,10.0,'Yes','GradientFade','Yes','RecycledPolyester','Yes','Europe','Limited edition away kit',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Team_Kit_Release_Details (team_api_id,season,kit_type,primary_color,secondary_color,supplier,launch_date,units_produced,units_sold,average_price_usd,online_sales_percent,retail_sales_percent,wholesale_sales_percent,limited_edition_flag,design_theme,sponsor_logo_present,material_composition,sustainability_certified,sales_region,notes,created_at,updated_at) VALUES (1003,'2024/25','Third','Green','Gold','Puma','2024-08-20',30000,25000,90.00,50.0,40.0,10.0,'No','Geometric','No','SyntheticFiber','No','Asia','Alternative third kit',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Youth team match statistics
CREATE TABLE Youth_Team_Match_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    team_api_id INTEGER,
    opponent_team_id INTEGER,
    possession_percent REAL,
    shots_on_target INTEGER,
    shots_off_target INTEGER,
    corners INTEGER,
    fouls INTEGER,
    offsides INTEGER,
    yellow_cards INTEGER,
    red_cards INTEGER,
    pass_accuracy_percent REAL,
    tackles_won INTEGER,
    interceptions INTEGER,
    clearances INTEGER,
    dribbles_completed INTEGER,
    aerial_duels_won INTEGER,
    saves INTEGER,
    goals_scored INTEGER,
    assists INTEGER,
    minutes_played INTEGER,
    coaching_notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    FOREIGN KEY(match_id) REFERENCES "Match"(id),
    FOREIGN KEY(team_api_id) REFERENCES Team(team_api_id)
);
INSERT INTO Youth_Team_Match_Stats (match_id,team_api_id,opponent_team_id,possession_percent,shots_on_target,shots_off_target,corners,fouls,offsides,yellow_cards,red_cards,pass_accuracy_percent,tackles_won,interceptions,clearances,dribbles_completed,aerial_duels_won,saves,goals_scored,assists,minutes_played,coaching_notes,created_at,updated_at) VALUES (101,2001,2002,52.5,8,5,4,12,3,2,0,78.0,15,7,20,10,6,2,3,2,90,'Strong attacking play','2024-09-20','2024-09-20');
INSERT INTO Youth_Team_Match_Stats (match_id,team_api_id,opponent_team_id,possession_percent,shots_on_target,shots_off_target,corners,fouls,offsides,yellow_cards,red_cards,pass_accuracy_percent,tackles_won,interceptions,clearances,dribbles_completed,aerial_duels_won,saves,goals_scored,assists,minutes_played,coaching_notes,created_at,updated_at) VALUES (102,2003,2004,48.0,5,7,2,14,5,3,1,70.0,12,9,18,8,5,3,2,1,90,'Need to improve defensive shape','2024-09-21','2024-09-21');
INSERT INTO Youth_Team_Match_Stats (match_id,team_api_id,opponent_team_id,possession_percent,shots_on_target,shots_off_target,corners,fouls,offsides,yellow_cards,red_cards,pass_accuracy_percent,tackles_won,interceptions,clearances,dribbles_completed,aerial_duels_won,saves,goals_scored,assists,minutes_played,coaching_notes,created_at,updated_at) VALUES (103,2005,2006,55.0,10,4,6,10,2,1,0,82.0,18,6,22,12,8,1,4,3,90,'Excellent ball control','2024-09-22','2024-09-22');

-- Sponsor brand exposure analytics
CREATE TABLE Sponsor_Brand_Exposure_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    match_id INTEGER,
    exposure_seconds INTEGER,
    impressions_online INTEGER,
    impressions_tv INTEGER,
    region TEXT,
    platform TEXT,
    exposure_type TEXT,
    cost_usd REAL,
    viewability_percent REAL,
    brand_recognition_score INTEGER,
    click_through_rate REAL,
    social_shares INTEGER,
    video_completion_rate REAL,
    ad_slot_position TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    FOREIGN KEY(match_id) REFERENCES "Match"(id)
);
INSERT INTO Sponsor_Brand_Exposure_Analytics (sponsor_id,match_id,exposure_seconds,impressions_online,impressions_tv,region,platform,exposure_type,cost_usd,viewability_percent,brand_recognition_score,click_through_rate,social_shares,video_completion_rate,ad_slot_position,notes,created_at,updated_at) VALUES (401,101,30,50000,20000,'Europe','Online','Banner',15000,85.0,78,0.12,300,0.95,'PreMatch','High traffic match','2024-09-20','2024-09-20');
INSERT INTO Sponsor_Brand_Exposure_Analytics (sponsor_id,match_id,exposure_seconds,impressions_online,impressions_tv,region,platform,exposure_type,cost_usd,viewability_percent,brand_recognition_score,click_through_rate,social_shares,video_completion_rate,ad_slot_position,notes,created_at,updated_at) VALUES (402,102,45,75000,35000,'NorthAmerica','TV','MidRoll',25000,90.0,84,0.15,500,0.89,'HalfTime','Prominent placement','2024-09-21','2024-09-21');
INSERT INTO Sponsor_Brand_Exposure_Analytics (sponsor_id,match_id,exposure_seconds,impressions_online,impressions_tv,region,platform,exposure_type,cost_usd,viewability_percent,brand_recognition_score,click_through_rate,social_shares,video_completion_rate,ad_slot_position,notes,created_at,updated_at) VALUES (403,103,20,40000,15000,'Asia','Mobile','Overlay',12000,80.0,70,0.10,200,0.92,'PostMatch','Targeted mobile audience','2024-09-22','2024-09-22');

-- Training center sensor readings
CREATE TABLE Training_Center_Sensor_Readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    sensor_id TEXT,
    reading_timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    air_quality_index INTEGER,
    noise_db REAL,
    vibration_mms REAL,
    power_consumption_kw REAL,
    status_flag TEXT,
    maintenance_due_date TEXT,
    calibration_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Training_Center_Sensor_Readings (center_id,sensor_id,reading_timestamp,temperature_c,humidity_percent,air_quality_index,noise_db,vibration_mms,power_consumption_kw,status_flag,maintenance_due_date,calibration_date,notes,created_at,updated_at) VALUES (10,'TMP001','2024-09-20 08:00:00',22.5,45.0,35,55.2,0.4,12.5,'OK','2025-01-15','2024-06-01','Normal operation',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Training_Center_Sensor_Readings (center_id,sensor_id,reading_timestamp,temperature_c,humidity_percent,air_quality_index,noise_db,vibration_mms,power_consumption_kw,status_flag,maintenance_due_date,calibration_date,notes,created_at,updated_at) VALUES (10,'HMD002','2024-09-20 08:05:00',22.7,44.8,36,54.8,0.5,12.6,'OK','2025-01-15','2024-06-01','Humidity stable',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Training_Center_Sensor_Readings (center_id,sensor_id,reading_timestamp,temperature_c,humidity_percent,air_quality_index,noise_db,vibration_mms,power_consumption_kw,status_flag,maintenance_due_date,calibration_date,notes,created_at,updated_at) VALUES (11,'AQI003','2024-09-20 08:10:00',21.9,46.2,30,53.5,0.3,11.9,'OK','2025-02-20','2024-07-10','Air quality good',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Fan digital badge awards
CREATE TABLE Fan_Digital_Badge_Award (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    badge_name TEXT,
    award_date TEXT,
    badge_level TEXT,
    points_required INTEGER,
    earned_via TEXT,
    related_event_id INTEGER,
    description TEXT,
    badge_image_url TEXT,
    redemption_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Fan_Digital_Badge_Award (fan_id,badge_name,award_date,badge_level,points_required,earned_via,related_event_id,description,badge_image_url,redemption_status,notes,created_at,updated_at) VALUES (3001,'SuperFan','2024-09-10','Gold',5000,'MatchAttendance',101,'Awarded for attending 10 matches','http://images.example.com/badge1.png','Unredeemed','First gold badge',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Fan_Digital_Badge_Award (fan_id,badge_name,award_date,badge_level,points_required,earned_via,related_event_id,description,badge_image_url,redemption_status,notes,created_at,updated_at) VALUES (3002,'SocialGuru','2024-09-12','Silver',3000,'SocialShare',NULL,'Awarded for 100 social media shares','http://images.example.com/badge2.png','Redeemed','Redeemed for merch discount',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Fan_Digital_Badge_Award (fan_id,badge_name,award_date,badge_level,points_required,earned_via,related_event_id,description,badge_image_url,redemption_status,notes,created_at,updated_at) VALUES (3003,'TriviaMaster','2024-09-15','Bronze',1500,'QuizParticipation',NULL,'Awarded for winning fan quiz','http://images.example.com/badge3.png','Unredeemed','Pending redemption',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Sponsor brand assets
CREATE TABLE Sponsor_Brand_Assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    asset_name TEXT,
    asset_type TEXT,
    file_path TEXT,
    file_size_bytes INTEGER,
    resolution TEXT,
    color_profile TEXT,
    usage_rights TEXT,
    creation_date TEXT,
    last_modified_date TEXT,
    approved_by TEXT,
    campaign_associated TEXT,
    platform TEXT,
    active_flag TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Sponsor_Brand_Assets (sponsor_id,asset_name,asset_type,file_path,file_size_bytes,resolution,color_profile,usage_rights,creation_date,last_modified_date,approved_by,campaign_associated,platform,active_flag,notes,created_at,updated_at) VALUES (401,'LogoPrimary','Image','/assets/sponsor401/logo_primary.png',245678,'1024x768','RGB','Exclusive','2024-01-05','2024-08-01','MarketingLead','SeasonLaunch','Web','Yes','Primary logo for all media',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Sponsor_Brand_Assets (sponsor_id,asset_name,asset_type,file_path,file_size_bytes,resolution,color_profile,usage_rights,creation_date,last_modified_date,approved_by,campaign_associated,platform,active_flag,notes,created_at,updated_at) VALUES (402,'BannerMidRoll','Image','/assets/sponsor402/banner_midroll.jpg',587923,'1920x1080','CMYK','Limited','2024-02-10','2024-07-15','CampaignManager','MidSeasonPromo','TV','Yes','Mid‑roll banner for TV spots',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Sponsor_Brand_Assets (sponsor_id,asset_name,asset_type,file_path,file_size_bytes,resolution,color_profile,usage_rights,creation_date,last_modified_date,approved_by,campaign_associated,platform,active_flag,notes,created_at,updated_at) VALUES (403,'SocialVideoAd','Video','/assets/sponsor403/social_ad.mp4',20485760,'1080p','RGB','Non‑exclusive','2024-03-20','2024-08-05','SocialMediaLead','EngagementBoost','Social','Yes','Short video for social channels',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

-- Training session video analytics
CREATE TABLE Training_Session_Video_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_id INTEGER,
    video_url TEXT,
    duration_seconds INTEGER,
    avg_frame_rate REAL,
    resolution TEXT,
    motion_intensity_score REAL,
    player_presence_percent REAL,
    key_event_timestamps TEXT,
    heatmap_image_url TEXT,
    analysis_notes TEXT,
    analyst_id INTEGER,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Training_Session_Video_Analytics (session_id,video_url,duration_seconds,avg_frame_rate,resolution,motion_intensity_score,player_presence_percent,key_event_timestamps,heatmap_image_url,analysis_notes,analyst_id,created_at,updated_at) VALUES (501,'http://videos.example.com/session501.mp4',3600,29.97,'1080p',0.78,92.5,'00:15:20,00:42:05,01:10:30','http://images.example.com/heatmap501.png','Strong possession phases observed',101, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO Training_Session_Video_Analytics (session_id,video_url,duration_seconds,avg_frame_rate,resolution,motion_intensity_score,player_presence_percent,key_event_timestamps,heatmap_image_url,analysis_notes,analyst_id,created_at,updated_at) VALUES (502,'http://videos.example.com/session502.mp4',2700,30.00,'720p',0.65,88.0,'00:10:45,00:35:00','http://images.example.com/heatmap502.png','Need to improve transition speed',102, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO Training_Session_Video_Analytics (session_id,video_url,duration_seconds,avg_frame_rate,resolution,motion_intensity_score,player_presence_percent,key_event_timestamps,heatmap_image_url,analysis_notes,analyst_id,created_at,updated_at) VALUES (503,'http://videos.example.com/session503.mp4',4500,29.50,'1080p',0.82,95.0,'00:05:30,00:25:15,01:20:45','http://images.example.com/heatmap503.png','Excellent pressing throughout',103, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Player social media engagement
CREATE TABLE Player_Social_Media_Engagement (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    platform TEXT,
    followers INTEGER,
    posts_last_30_days INTEGER,
    likes_last_30_days INTEGER,
    comments_last_30_days INTEGER,
    shares_last_30_days INTEGER,
    engagement_rate_percent REAL,
    top_post_url TEXT,
    verified_flag TEXT,
    last_activity_date TEXT,
    brand_collaborations INTEGER,
    audience_gender_ratio TEXT,
    audience_age_distribution TEXT,
    geographic_reach TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    FOREIGN KEY(player_api_id) REFERENCES Player(player_api_id)
);
INSERT INTO Player_Social_Media_Engagement (player_api_id,platform,followers,posts_last_30_days,likes_last_30_days,comments_last_30_days,shares_last_30_days,engagement_rate_percent,top_post_url,verified_flag,last_activity_date,brand_collaborations,audience_gender_ratio,audience_age_distribution,geographic_reach,notes,created_at,updated_at) VALUES (10001,'Instagram',1200000,12,340000,8500,4200,2.85,'http://insta.example.com/p/abc123','Yes','2024-09-30',5,'Male:55,Female:45','18-24:40,25-34:35,35-44:15,45+:10','Global','High engagement on training clips',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Player_Social_Media_Engagement (player_api_id,platform,followers,posts_last_30_days,likes_last_30_days,comments_last_30_days,shares_last_30_days,engagement_rate_percent,top_post_url,verified_flag,last_activity_date,brand_collaborations,audience_gender_ratio,audience_age_distribution,geographic_reach,notes,created_at,updated_at) VALUES (10002,'Twitter',850000,8,210000,4300,1900,2.40,'http://twitter.example.com/status/xyz789','Yes','2024-09-28',3,'Male:60,Female:40','18-24:45,25-34:30,35-44:15,45+:10','Europe','Frequent live match commentary',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO Player_Social_Media_Engagement (player_api_id,platform,followers,posts_last_30_days,likes_last_30_days,comments_last_30_days,shares_last_30_days,engagement_rate_percent,top_post_url,verified_flag,last_activity_date,brand_collaborations,audience_gender_ratio,audience_age_distribution,geographic_reach,notes,created_at,updated_at) VALUES (10003,'Facebook',600000,5,150000,2100,850,2.10,'http://fb.example.com/posts/def456','Yes','2024-09-25',2,'Male:58,Female:42','25-34:40,35-44:30,45+:30','SouthAmerica','Family-oriented content',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);