-- Esports tournament performance statistics
CREATE TABLE Esports_Team_Performance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    team_name TEXT,
    game_title TEXT,
    match_date TEXT,
    map_played TEXT,
    kills INTEGER,
    deaths INTEGER,
    assists INTEGER,
    avg_score REAL,
    win_rate REAL,
    mvp_awards INTEGER,
    total_hours_practiced INTEGER,
    coach_name TEXT,
    sponsor_name TEXT,
    region TEXT,
    team_rank INTEGER,
    avg_ping INTEGER,
    avg_latency INTEGER,
    fan_viewers INTEGER,
    prize_money INTEGER,
    sponsorship_value INTEGER,
    notes TEXT
);
INSERT INTO Esports_Team_Performance (tournament_id,team_name,game_title,match_date,map_played,kills,deaths,assists,avg_score,win_rate,mvp_awards,total_hours_practiced,coach_name,sponsor_name,region,team_rank,avg_ping,avg_latency,fan_viewers,prize_money,sponsorship_value,notes) VALUES (101,'AlphaGaming','Valorant','2023-04-15','Bind',45,20,30,78.5,0.75,3,120,'CoachLee','TechCorp','NA',2,30,50,25000,500000,200000,'Strong performance');
INSERT INTO Esports_Team_Performance (tournament_id,team_name,game_title,match_date,map_played,kills,deaths,assists,avg_score,win_rate,mvp_awards,total_hours_practiced,coach_name,sponsor_name,region,team_rank,avg_ping,avg_latency,fan_viewers,prize_money,sponsorship_value,notes) VALUES (102,'BetaSquad','CSGO','2023-05-02','Dust2',60,25,15,82.1,0.68,2,140,'CoachKim','GameGear','EU',5,45,70,18000,350000,150000,'Improving consistency');
INSERT INTO Esports_Team_Performance (tournament_id,team_name,game_title,match_date,map_played,kills,deaths,assists,avg_score,win_rate,mvp_awards,total_hours_practiced,coach_name,sponsor_name,region,team_rank,avg_ping,avg_latency,fan_viewers,prize_money,sponsorship_value,notes) VALUES (103,'GammaForce','League of Legends','2023-06-10','SummonerRift',78,40,55,90.3,0.82,5,200,'CoachPark','E-SportsX','ASIA',1,35,55,32000,750000,300000,'Champions');

-- Virtual fan arena usage metrics
CREATE TABLE Virtual_Fan_Arena_Usage (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    arena_id INTEGER,
    event_name TEXT,
    event_date TEXT,
    concurrent_users INTEGER,
    average_session_minutes INTEGER,
    peak_concurrent_users INTEGER,
    total_unique_visitors INTEGER,
    avg_bandwidth_mbps REAL,
    latency_ms INTEGER,
    device_type TEXT,
    region TEXT,
    platform TEXT,
    chat_messages INTEGER,
    emojis_sent INTEGER,
    virtual_gifts INTEGER,
    avg_view_distance REAL,
    sponsor_impressions INTEGER,
    ad_clicks INTEGER,
    revenue_usd INTEGER,
    feedback_score REAL,
    bug_reports INTEGER,
    notes TEXT
);
INSERT INTO Virtual_Fan_Arena_Usage (arena_id,event_name,event_date,concurrent_users,average_session_minutes,peak_concurrent_users,total_unique_visitors,avg_bandwidth_mbps,latency_ms,device_type,region,platform,chat_messages,emojis_sent,virtual_gifts,avg_view_distance,sponsor_impressions,ad_clicks,revenue_usd,feedback_score,bug_reports,notes) VALUES (201,'Opening Ceremony','2023-07-01',15000,45,22000,120000,12.5,80,'VRHeadset','NA','Oculus',35000,5000,1200,3.2,80000,1500,250000,4.5,12,'High engagement');
INSERT INTO Virtual_Fan_Arena_Usage (arena_id,event_name,event_date,concurrent_users,average_session_minutes,peak_concurrent_users,total_unique_visitors,avg_bandwidth_mbps,latency_ms,device_type,region,platform,chat_messages,emojis_sent,virtual_gifts,avg_view_distance,sponsor_impressions,ad_clicks,revenue_usd,feedback_score,bug_reports,notes) VALUES (202,'Quarter Finals','2023-07-15',18000,38,26000,150000,13.2,85,'Desktop','EU','Steam',42000,6200,1400,2.9,95000,1800,310000,4.3,8,'Stable performance');
INSERT INTO Virtual_Fan_Arena_Usage (arena_id,event_name,event_date,concurrent_users,average_session_minutes,peak_concurrent_users,total_unique_visitors,avg_bandwidth_mbps,latency_ms,device_type,region,platform,chat_messages,emojis_sent,virtual_gifts,avg_view_distance,sponsor_impressions,ad_clicks,revenue_usd,feedback_score,bug_reports,notes) VALUES (203,'Finals','2023-07-30',25000,50,35000,200000,14.8,78,'Mobile','ASIA','Android',58000,9000,2100,3.5,130000,2500,420000,4.7,5,'Peak demand handled');

-- Smart stadium sensor readings
CREATE TABLE Smart_Stadium_Sensor_Readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    sensor_id TEXT,
    sensor_type TEXT,
    reading_timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    light_lux INTEGER,
    vibration_g REAL,
    occupancy_count INTEGER,
    seat_occupancy_percent REAL,
    wifi_clients INTEGER,
    bluetooth_devices INTEGER,
    air_quality_index INTEGER,
    precipitation_mm REAL,
    wind_speed_kmh REAL,
    wind_direction_deg INTEGER,
    solar_irradiance_wm2 REAL,
    water_leak_detected INTEGER,
    power_usage_kw REAL,
    maintenance_flag INTEGER,
    notes TEXT
);
INSERT INTO Smart_Stadium_Sensor_Readings (stadium_id,sensor_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,noise_db,light_lux,vibration_g,occupancy_count,seat_occupancy_percent,wifi_clients,bluetooth_devices,air_quality_index,precipitation_mm,wind_speed_kmh,wind_direction_deg,solar_irradiance_wm2,water_leak_detected,power_usage_kw,maintenance_flag,notes) VALUES (301,'TMP001','Temperature','2023-08-01T12:00:00',27.3,55.2,650,68.5,12000,0.02,42000,78.5,8500,1200,42,0.0,12.4,15,350.0,0,350.5,0,'Normal operation');
INSERT INTO Smart_Stadium_Sensor_Readings (stadium_id,sensor_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,noise_db,light_lux,vibration_g,occupancy_count,seat_occupancy_percent,wifi_clients,bluetooth_devices,air_quality_index,precipitation_mm,wind_speed_kmh,wind_direction_deg,solar_irradiance_wm2,water_leak_detected,power_usage_kw,maintenance_flag,notes) VALUES (301,'CO215','CO2','2023-08-01T12:05:00',27.5,54.8,720,70.1,11950,0.01,42500,79.2,8600,1250,45,0.0,12.4,15,350.0,0,352.0,0,'CO2 within limits');
INSERT INTO Smart_S

-- League financial ratio analysis
CREATE TABLE League_Financial_Ratio_Analysis (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    fiscal_year TEXT,
    total_revenue_usd INTEGER,
    total_expenses_usd INTEGER,
    net_income_usd INTEGER,
    operating_margin_percent REAL,
    revenue_per_club_usd INTEGER,
    average_player_salary_usd INTEGER,
    salary_to_revenue_ratio_percent REAL,
    broadcast_income_usd INTEGER,
    sponsorship_income_usd INTEGER,
    ticket_sales_usd INTEGER,
    merchandising_income_usd INTEGER,
    debt_to_equity_ratio_percent REAL,
    current_ratio_percent REAL,
    quick_ratio_percent REAL,
    cash_flow_operating_usd INTEGER,
    cash_flow_investing_usd INTEGER,
    cash_flow_financing_usd INTEGER,
    ebitda_usd INTEGER,
    roi_percent REAL,
    notes TEXT
);
INSERT INTO League_Financial_Ratio_Analysis (league_id,fiscal_year,total_revenue_usd,total_expenses_usd,net_income_usd,operating_margin_percent,revenue_per_club_usd,average_player_salary_usd,salary_to_revenue_ratio_percent,broadcast_income_usd,sponsorship_income_usd,ticket_sales_usd,merchandising_income_usd,debt_to_equity_ratio_percent,current_ratio_percent,quick_ratio_percent,cash_flow_operating_usd,cash_flow_investing_usd,cash_flow_financing_usd,ebitda_usd,roi_percent,notes) VALUES (1,'2022',1200000000,950000000,250000000,20.8,30000000,8000000,6.67,250000000,300000000,400000000,150000000,45.0,150.0,130.0,200000000,50000000,-30000000,180000000,15.2,'Stable growth');
INSERT INTO League_Financial_Ratio_Analysis (league_id,fiscal_year,total_revenue_usd,total_expenses_usd,net_income_usd,operating_margin_percent,revenue_per_club_usd,average_player_salary_usd,salary_to_revenue_ratio_percent,broadcast_income_usd,sponsorship_income_usd,ticket_sales_usd,merchandising_income_usd,debt_to_equity_ratio_percent,current_ratio_percent,quick_ratio_percent,cash_flow_operating_usd,cash_flow_investing_usd,cash_flow_financing_usd,ebitda_usd,roi_percent,notes) VALUES (1,'2023',1300000000,1020000000,280000000,21.5,32000000,8500000,6.54,270000000,320000000,420000000,160000000,40.0,155.0,135.0,210000000,60000000,-35000000,190000000,16.0,'Positive trend');
INSERT INTO League_Financial_Ratio_Analysis (league_id,fiscal_year,total_revenue_usd,total_expenses_usd,net_income_usd,operating_margin_percent,revenue_per_club_usd,average_player_salary_usd,salary_to_revenue_ratio_percent,broadcast_income_usd,sponsorship_income_usd,ticket_sales_usd,merchandising_income_usd,debt_to_equity_ratio_percent,current_ratio_percent,quick_ratio_percent,cash_flow_operating_usd,cash_flow_investing_usd,cash_flow_financing_usd,ebitda_usd,roi_percent,notes) VALUES (1,'2024',1400000000,1080000000,320000000,22.9,34000000,9000000,6.43,290000000,340000000,440000000,170000000,38.0,160.0,140.0,220000000,65000000,-40000000,200000000,17.1,'Expansion phase');

-- Broadcast stream metadata
CREATE TABLE Broadcast_Stream_Metadata (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    stream_id TEXT,
    platform TEXT,
    start_time TEXT,
    end_time TEXT,
    peak_viewers INTEGER,
    average_viewers INTEGER,
    total_view_time_minutes INTEGER,
    bitrate_kbps INTEGER,
    resolution TEXT,
    codec TEXT,
    audio_channels INTEGER,
    latency_seconds INTEGER,
    geo_restriction TEXT,
    ad_breaks INTEGER,
    ad_impressions INTEGER,
    subtitle_languages TEXT,
    commentary_language TEXT,
    stream_quality_score REAL,
    concurrent_chat_messages INTEGER,
    concurrent_reactions INTEGER,
    notes TEXT
);
INSERT INTO Broadcast_Stream_Metadata (match_id,stream_id,platform,start_time,end_time,peak_viewers,average_viewers,total_view_time_minutes,bitrate_kbps,resolution,codec,audio_channels,latency_seconds,geo_restriction,ad_breaks,ad_impressions,subtitle_languages,commentary_language,stream_quality_score,concurrent_chat_messages,concurrent_reactions,notes) VALUES (5001,'STRM1001','YouTube','2023-09-01T18:00:00','2023-09-01T20:00:00',120000,80000,250000,4500,'1080p','H264',2,5,'None',5,60000,'en,es,fr','en',9.2,3400,1500,'Standard HD stream');
INSERT INTO Broadcast_Stream_Metadata (match_id,stream_id,platform,start_time,end_time,peak_viewers,average_viewers,total_view_time_minutes,bitrate_kbps,resolution,codec,audio_channels,latency_seconds,geo_restriction,ad_breaks,ad_impressions,subtitle_languages,commentary_language,stream_quality_score,concurrent_chat_messages,concurrent_reactions,notes) VALUES (5002,'STRM1002','Twitch','2023-09-02T15:00:00','2023-09-02T17:30:00',150000,95000,300000,5000,'720p','VP9',2,3,'EU',6,75000,'en,de','en',8.8,4200,1800,'Low latency mode');
INSERT INTO Broadcast_Stream_Metadata (match_id,stream_id,platform,start_time,end_time,peak_viewers,average_viewers,total_view_time_minutes,bitrate_kbps,resolution,codec,audio_channels,latency_seconds,geo_restriction,ad_breaks,ad_impressions,subtitle_languages,commentary_language,stream_quality_score,concurrent_chat_messages,concurrent_reactions,notes) VALUES (5003,'STRM1003','Facebook','2023-09-03T20:00:00','2023-09-03T22:15:00',90000,60000,210000,4000,'720p','H265',2,7,'APAC',4,50000,'en,zh','en',8.1,2800,1200,'Standard definition with subtitles');

-- Fan mobile app interaction logs
CREATE TABLE Fan_Mobile_App_Interaction_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    session_id TEXT,
    device_model TEXT,
    os_version TEXT,
    app_version TEXT,
    login_timestamp TEXT,
    logout_timestamp TEXT,
    pages_viewed INTEGER,
    videos_watched INTEGER,
    articles_read INTEGER,
    live_streams_viewed INTEGER,
    notifications_received INTEGER,
    notifications_clicked INTEGER,
    in_app_purchases INTEGER,
    purchase_amount_usd INTEGER,
    social_shares INTEGER,
    feedback_submitted INTEGER,
    avg_session_duration_seconds INTEGER,
    crash_count INTEGER,
    error_logs TEXT,
    location_country TEXT,
    network_type TEXT,
    notes TEXT
);
INSERT INTO Fan_Mobile_App_Interaction_Logs (fan_id,session_id,device_model,os_version,app_version,login_timestamp,logout_timestamp,pages_viewed,videos_watched,articles_read,live_streams_viewed,notifications_received,notifications_clicked,in_app_purchases,purchase_amount_usd,social_shares,feedback_submitted,avg_session_duration_seconds,crash_count,error_logs,location_country,network_type,notes) VALUES (10001,'SES0001','iPhone12','iOS15','3.2.1','2023-10-01T09:15:00','2023-10-01T09:45:00',12,3,5,1,8,4,2,30,6,1,1800,0,'','US','WiFi','Engaged user');
INSERT INTO Fan_Mobile_App_Interaction_Logs (fan_id,session_id,device_model,os_version,app_version,login_timestamp,logout_timestamp,pages_viewed,videos_watched,articles_read,live_streams_viewed,notifications_received,notifications_clicked,in_app_purchases,purchase_amount_usd,social_shares,feedback_submitted,avg_session_duration_seconds,crash_count,error_logs,location_country,network_type,notes) VALUES (10002,'SES0002','GalaxyS21','Android12','3.2.1','2023-10-02T14:20:00','2023-10-02T15:05:00',9,5,2,2,12,5,1,15,4,0,2100,1,'NullPointerException','UK','4G','Minor crash recorded');
INSERT INTO Fan_Mobile_App_Interaction_Logs (fan_id,session_id,device_model,os_version,app_version,login_timestamp,logout_timestamp,pages_viewed,videos_watched,articles_read,live_streams_viewed,notifications_received,notifications_clicked,in_app_purchases,purchase_amount_usd,social_shares,feedback_submitted,avg_session_duration_seconds,crash_count,error_logs,location_country,network_type,notes) VALUES (10003,'SES0003','Pixel6','Android13','3.2.1','2023-10-03T18:00:00','2023-10-03T18:30:00',15,2,8,0,6,2,0,0,7,2,1500,0,'','CA','5G','High content consumption');

-- Sponsor brand audience engagement
CREATE TABLE Sponsor_Brand_Audience_Engagement (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_id INTEGER,
    start_date TEXT,
    end_date TEXT,
    total_impressions INTEGER,
    total_clicks INTEGER,
    click_through_rate_percent REAL,
    unique_viewers INTEGER,
    average_view_time_seconds INTEGER,
    social_shares INTEGER,
    hashtag_uses INTEGER,
    audience_age_group TEXT,
    audience_gender TEXT,
    geographic_region TEXT,
    platform TEXT,
    ad_format TEXT,
    cost_usd INTEGER,
    revenue_generated_usd INTEGER,
    roi_percent REAL,
    brand_sentiment_score REAL,
    survey_responses INTEGER,
    net_promoter_score INTEGER,
    notes TEXT
);
INSERT INTO Sponsor_Brand_Audience_Engagement (sponsor_id,campaign_id,start_date,end_date,total_impressions,total_clicks,
click_through_rate_percent,unique_viewers,average_view_time_seconds,social_shares,hashtag_uses,
audience_age_group,audience_gender,geographic_region,platform,ad_format,cost_usd,revenue_generated_usd,
roi_percent,brand_sentiment_score,survey_responses,net_promoter_score,notes) VALUES (501,2001,'2023-01-01','2023-03-31',5000000,250000,5.0,3500000,45,12000,8000,'18-34','Male','NA','YouTube','Video',200000,350000,75.0,78.5,1500,70,'Successful Q1 campaign');
INSERT INTO Sponsor_Brand_Audience_Engagement (sponsor_id,campaign_id,start_date,end_date,total_impressions,total_clicks,
click_through_rate_percent,unique_viewers,average_view_time_seconds,social_shares,hashtag_uses,
audience_age_group,audience_gender,geographic_region,platform,ad_format,cost_usd,revenue_generated_usd,
roi_percent,brand_sentiment_score,survey_responses,net_promoter_score,notes) VALUES (501,2002,'2023-04-01','2023-06-30',6000000,300000,5.0,4200000,48,15000,9500,'25-44','Female','EU','Instagram','Stories',250000,400000,60.0,80.2,1800,75,'Mid‑year boost');
INSERT INTO Sponsor_Brand_Audience_Engagement (sponsor_id,campaign_id,start_date,end_date,total_impressions,total_clicks,
click_through_rate_percent,unique_viewers,average_view_time_seconds,social_shares,hashtag_uses,
audience_age_group,audience_gender,geographic_region,platform,ad_format,cost_usd,revenue_generated_usd,
roi_percent,brand_sentiment_score,survey_responses,net_promoter_score,notes) VALUES (501,2003,'2023-07-01','2023-09-30',5500000,275000,5.0,3800000,46,13000,8700,'35-54','All','ASIA','TikTok','InFeed',230000,380000,65.2,79.0,1600,72,'Positive Q3 results');

-- Sponsor brand audience engagement (continued) 

-- Club community impact metrics
CREATE TABLE Club_Community_Impact_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    reporting_year TEXT,
    community_events_hosted INTEGER,
    volunteers_participated INTEGER,
    beneficiaries_reached INTEGER,
    funds_raised_usd INTEGER,
    youth_programs_supported INTEGER,
    education_workshops_conducted INTEGER,
    health_initiatives_led INTEGER,
    environmental_projects INTEGER,
    hours_of_service INTEGER,
    media_mentions INTEGER,
    social_media_positive_mentions INTEGER,
    partnership_organizations INTEGER,
    average_event_rating REAL,
    net_community_sentiment_score REAL,
    employee_engagement_percent REAL,
    carbon_offset_tons INTEGER,
    water_saved_liters INTEGER,
    waste_recycled_tons INTEGER,
    public_transport_promoted_trips INTEGER,
    notes TEXT
);
INSERT INTO Club_Community_Impact_Metrics (club_id,reporting_year,community_events_hosted,volunteers_participated,beneficiaries_reached,funds_raised_usd,youth_programs_supported,education_workshops_conducted,health_initiatives_led,environmental_projects,hours_of_service,media_mentions,social_media_positive_mentions,partnership_organizations,average_event_rating,net_community_sentiment_score,employee_engagement_percent,carbon_offset_tons,water_saved_liters,waste_recycled_tons,public_transport_promoted_trips,notes) VALUES (301,'2022',35,1200,8000,500000,12,20,8,5,25000,45,300,15,4.5,85.2,78.0,150,200000,30,1200,'Strong community involvement');
INSERT INTO Club_Community_Impact_Metrics (club_id,reporting_year,community_events_hosted,volunteers_participated,beneficiaries_reached,funds_raised_usd,youth_programs_supported,education_workshops_conducted,health_initiatives_led,environmental_projects,hours_of_service,media_mentions,social_media_positive_mentions,partnership_organizations,average_event_rating,net_community_sentiment_score,employee_engagement_percent,carbon_offset_tons,water_saved_liters,waste_recycled_tons,public_transport_promoted_trips,notes) VALUES (301,'2023',42,1500,9500,650000,15,25,10,7,30000,55,420,18,4.7,87.5,80.5,170,250000,35,1500,'Expanded outreach programs');
INSERT INTO Club_Community_Impact_Metrics (club_id,reporting_year,community_events_hosted,volunteers_participated,beneficiaries_reached,funds_raised_usd,youth_programs_supported,education_workshops_conducted,health_initiatives_led,environmental_projects,hours_of_service,media_mentions,social_media_positive_mentions,partnership_organizations,average_event_rating,net_community_sentiment_score,employee_engagement_percent,carbon_offset_tons,water_saved_liters,waste_recycled_tons,public_transport_promoted_trips,notes) VALUES (301,'2024',48,1800,11000,800000,18,30,12,9,35000,65,500,22,4.9,89.0,82.3,190,300000,40,1800,'Continued growth in impact');

-- Training center equipment utilization
CREATE TABLE Training_Center_Equipment_Utilization (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    equipment_id TEXT,
    equipment_type TEXT,
    last_maintenance_date TEXT,
    total_usage_hours INTEGER,
    average_daily_usage_minutes INTEGER,
    peak_usage_minutes INTEGER,
    downtime_minutes INTEGER,
    maintenance_frequency_days INTEGER,
    energy_consumption_kwh INTEGER,
    calibration_status TEXT,
    allocated_to_team TEXT,
    usage_by_coach TEXT,
    warranty_expiry_date TEXT,
    replacement_cost_usd INTEGER,
    depreciation_percent REAL,
    utilization_rate_percent REAL,
    notes TEXT,
    last_inspection_date TEXT,
    inspector_name TEXT
);
INSERT INTO Training_Center_Equipment_Utilization (center_id,equipment_id,equipment_type,last_maintenance_date,total_usage_hours,average_daily_usage_minutes,peak_usage_minutes,downtime_minutes,maintenance_frequency_days,energy_consumption_kwh,calibration_status,allocated_to_team,usage_by_coach,warranty_expiry_date,replacement_cost_usd,depreciation_percent,utilization_rate_percent,notes,last_inspection_date,inspector_name) VALUES (401,'EQP001','Treadmill','2023-06-01',820,45,70,120,180,3500,'Calibrated','FirstTeam','CoachA','2025-06-01',2500,10.0,85.0,'Regular usage','2023-09-01','JohnDoe');
INSERT INTO Training_Center_Equipment_Utilization (center_id,equipment_id,equipment_type,last_maintenance_date,total_usage_hours,average_daily_usage_minutes,peak_usage_minutes,downtime_minutes,maintenance_frequency_days,energy_consumption_kwh,calibration_status,allocated_to_team,usage_by_coach,warranty_expiry_date,replacement_cost_usd,depreciation_percent,utilization_rate_percent,notes,last_inspection_date,inspector_name) VALUES (401,'EQP002','StrengthRack','2023-05-15',1500,60,95,200,365,4800,'Calibrated','SecondTeam','CoachB','2026-05-15',4000,12.5,92.0,'High demand','2023-09-02','JaneSmith');
INSERT INTO Training_Center_Equipment_Utilization (center_id,equipment_id,equipment_type,last_maintenance_date,total_usage_hours,average_daily_usage_minutes,peak_usage_minutes,downtime_minutes,maintenance_frequency_days,energy_consumption_kwh,calibration_status,allocated_to_team,usage_by_coach,warranty_expiry_date,replacement_cost_usd,depreciation_percent,utilization_rate_percent,notes,last_inspection_date,inspector_name) VALUES (401,'EQP003','RecoveryPool','2023-07-20',600,30,45,80,180,2100,'Calibrated','AllTeams','CoachC','2025-07-20',3500,8.0,78.0,'Used for physiotherapy','2023-09-03','MikeLee');

-- Stadium water system analytics
CREATE TABLE Stadium_Water_System_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    measurement_timestamp TEXT,
    total_consumption_liters INTEGER,
    rainfall_capture_liters INTEGER,
    water_pressure_bar REAL,
    filtration_efficiency_percent REAL,
    recycled_water_percent REAL,
    leak_detection_flag INTEGER,
    average_temperature_c REAL,
    humidity_percent REAL,
    pump_operating_hours INTEGER,
    chemical_treatment_level_ppm INTEGER,
    sensor_status TEXT,
    maintenance_required INTEGER,
    notes TEXT,
    daily_cost_usd INTEGER,
    water_saving_initiative TEXT,
    annual_savings_liters INTEGER,
    carbon_footprint_reduction_kg INTEGER,
    external_audit_passed INTEGER,
    audit_date TEXT
);
INSERT INTO Stadium_Water_System_Analytics (stadium_id,measurement_timestamp,total_consumption_liters,rainfall_capture_liters,water_pressure_bar,filtration_efficiency_percent,recycled_water_percent,leak_detection_flag,average_temperature_c,humidity_percent,pump_operating_hours,chemical_treatment_level_ppm,sensor_status,maintenance_required,notes,daily_cost_usd,water_saving_initiative,annual_savings_liters,carbon_footprint_reduction_kg,external_audit_passed,audit_date) VALUES (301,'2023-08-15T10:00:00',1200000,80000,3.2,96.5,22.0,0,22.5,55,12,30,'OK',0,'Normal operation',450,'LowFlowNozzles',1500000,3500,1,'2023-07-01');
INSERT INTO Stadium_Water_System_Analytics (stadium_id,measurement_timestamp,total_consumption_liters,rainfall_capture_liters,water_pressure_bar,filtration_efficiency_percent,recycled_water_percent,leak_detection_flag,average_temperature_c,humidity_percent,pump_operating_hours,chemical_treatment_level_ppm,sensor_status,maintenance_required,notes,daily_cost_usd,water_saving_initiative,annual_savings_liters,carbon_footprint_reduction_kg,external_audit_passed,audit_date) VALUES (301,'2023-08-15T14:00:00',1250000,85000,3.1,97.0,23.5,0,24.0,58,13,28,'OK',0,'Peak usage period',470,'GreywaterReuse',1600000,3800,1,'2023-07-01');
INSERT INTO Stadium_Water_System_Analytics (stadium_id,measurement_timestamp,total_consumption_liters,rainfall_capture_liters,water_pressure_bar,filtration_efficiency_percent,recycled_water_percent,leak_detection_flag,average_temperature_c,humidity_percent,pump_operating_hours,chemical_treatment_level_ppm,sensor_status,maintenance_required,notes,daily_cost_usd,water_saving_initiative,annual_savings_liters,carbon_footprint_reduction_kg,external_audit_passed,audit_date) VALUES (301,'2023-08-15T18:00:00',1180000,75000,3.3,95.8,21.0,1,23.0,57,11,32,'Alert',1,'Minor leak detected','Alert','LowFlowNozzles',1450000,3400,0,'2023-07-01');