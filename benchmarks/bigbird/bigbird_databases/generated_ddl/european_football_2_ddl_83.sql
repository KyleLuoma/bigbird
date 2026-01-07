-- Player_Media_Appearances
CREATE TABLE Player_Media_Appearances (
    appearance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    media_type TEXT,
    outlet TEXT,
    appearance_date TEXT,
    view_count INTEGER,
    sentiment_score REAL,
    interview_topic TEXT,
    duration_minutes INTEGER,
    language TEXT,
    region TEXT,
    audience_rating REAL,
    clip_url TEXT,
    article_url TEXT,
    headline TEXT,
    author TEXT,
    reach INTEGER,
    format TEXT,
    genre TEXT,
    notes TEXT
);
INSERT INTO Player_Media_Appearances (player_api_id,media_type,outlet,appearance_date,view_count,sentiment_score,interview_topic,duration_minutes,language,region,audience_rating,clip_url,article_url,headline,author,reach,format,genre,notes) VALUES (101,'Interview','SportsDaily','2023-04-12',150000,0.85,'Career milestones',30,'English','Europe',4.5,'http://video.example.com/clip1','http://article.example.com/1','Player rises to fame','John Doe',200000,'Video','Talk Show','First major interview');
INSERT INTO Player_Media_Appearances (player_api_id,media_type,outlet,appearance_date,view_count,sentiment_score,interview_topic,duration_minutes,language,region,audience_rating,clip_url,article_url,headline,author,reach,format,genre,notes) VALUES (102,'Feature','GlobalNews','2023-06-05',85000,0.72,'Training routine',15,'Spanish','SouthAmerica',4.0,'http://video.example.com/clip2','http://article.example.com/2','Inside the training camp','Maria Lopez',120000,'Video','Documentary','Weekly feature');
INSERT INTO Player_Media_Appearances (player_api_id,media_type,outlet,appearance_date,view_count,sentiment_score,interview_topic,duration_minutes,language,region,audience_rating,clip_url,article_url,headline,author,reach,format,genre,notes) VALUES (103,'Podcast','FootyTalk','2023-07-20',45000,0.68,'Personal life',45,'English','Asia',3.8,'http://audio.example.com/clip3','http://article.example.com/3','Off the pitch','Sam Lee',80000,'Audio','Interview','Seasonal podcast');

-- Team_Sponsorship_Activities
CREATE TABLE Team_Sponsorship_Activities (
    activity_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    sponsor_name TEXT,
    start_date TEXT,
    end_date TEXT,
    activation_type TEXT,
    cost_usd INTEGER,
    target_audience TEXT,
    channel TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversion_rate REAL,
    region TEXT,
    compliance_flag TEXT,
    contract_id TEXT,
    marketing_material TEXT,
    event_name TEXT,
    event_date TEXT,
    measurement_metric TEXT,
    notes TEXT,
    status TEXT
);
INSERT INTO Team_Sponsorship_Activities (team_api_id,sponsor_name,start_date,end_date,activation_type,cost_usd,target_audience,channel,impressions,clicks,conversion_rate,region,compliance_flag,contract_id,marketing_material,event_name,event_date,measurement_metric,notes,status) VALUES (201,'AlphaCorp','2023-01-01','2024-01-01','Stadium Banner',500000,'Fans','Exterior','2000000',15000,0.75,'Europe','Yes','CON123','Banner_V1','Season Launch','2023-08-15','BrandRecall','First year partnership','Active');
INSERT INTO Team_Sponsorship_Activities (team_api_id,sponsor_name,start_date,end_date,activation_type,cost_usd,target_audience,channel,impressions,clicks,conversion_rate,region,compliance_flag,contract_id,marketing_material,event_name,event_date,measurement_metric,notes,status) VALUES (202,'BetaLtd','2023-03-15','2025-03-14','Digital Campaign',300000,'Youth','SocialMedia','5000000',35000,0.62,'NorthAmerica','Yes','CON456','SocialAds_V2','Youth Cup','2023-09-10','Engagement','Multi‑year digital push','Planned');
INSERT INTO Team_Sponsorship_Activities (team_api_id,sponsor_name,start_date,end_date,activation_type,cost_usd,target_audience,channel,impressions,clicks,conversion_rate,region,compliance_flag,contract_id,marketing_material,event_name,event_date,measurement_metric,notes,status) VALUES (203,'GammaEnterprises','2022-07-01','2023-12-31','Community Event',150000,'Local Community','OnSite','800000',5000,0.45,'Asia','Yes','CON789','Flyer_V3','Charity Match','2023-11-20','Attendance','One‑off community outreach','Completed');

-- League_Historical_Stats
CREATE TABLE League_Historical_Stats (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    total_matches INTEGER,
    total_goals INTEGER,
    avg_goals_per_match REAL,
    total_attendance INTEGER,
    avg_attendance INTEGER,
    most_goals_team TEXT,
    least_goals_team TEXT,
    champion_team TEXT,
    runner_up_team TEXT,
    fair_play_award TEXT,
    best_young_player TEXT,
    top_scorer TEXT,
    top_assist TEXT,
    total_red_cards INTEGER,
    total_yellow_cards INTEGER,
    disciplinary_points INTEGER,
    notes TEXT
);
INSERT INTO League_Historical_Stats (league_id,season,total_matches,total_goals,avg_goals_per_match,total_attendance,avg_attendance,most_goals_team,least_goals_team,champion_team,runner_up_team,fair_play_award,best_young_player,top_scorer,top_assist,total_red_cards,total_yellow_cards,disciplinary_points,notes) VALUES (1,'2022/2023',380,1024,2.69,12000000,31579,'FC United','Riverside FC','FC United','City Rangers','Riverside FC','Luis Gomez','Marco Silva','Andre Torres',55,640,1750,'Record high attendance');
INSERT INTO League_Historical_Stats (league_id,season,total_matches,total_goals,avg_goals_per_match,total_attendance,avg_attendance,most_goals_team,least_goals_team,champion_team,runner_up_team,fair_play_award,best_young_player,top_scorer,top_assist,total_red_cards,total_yellow_cards,disciplinary_points,notes) VALUES (2,'2021/2022',306,938,3.07,9500000,31046,'Mountain FC','Coastal FC','Mountain FC','Valley United','Mountain FC','Javier Ortiz','Pedro Mendes','Nicolas Ramos',48,582,1590,'Slight dip in goals');
INSERT INTO League_Historical_Stats (league_id,season,total_matches,total_goals,avg_goals_per_match,total_attendance,avg_attendance,most_goals_team,least_goals_team,champion_team,runner_up_team,fair_play_award,best_young_player,top_scorer,top_assist,total_red_cards,total_yellow_cards,disciplinary_points,notes) VALUES (3,'2020/2021',342,1120,3.28,10300000,30116,'Eastern Stars','Western Wanderers','Eastern Stars','Northern FC','Western Wanderers','Ali Khan','Sergio Diaz','Lucas Pereira',63,710,1845,'COVID impact on attendance');

-- Stadium_Access_Log
CREATE TABLE Stadium_Access_Log (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    access_date TEXT,
    access_time TEXT,
    entry_point TEXT,
    visitor_id INTEGER,
    ticket_type TEXT,
    access_method TEXT,
    staff_on_duty TEXT,
    vehicle_plate TEXT,
    purpose TEXT,
    duration_minutes INTEGER,
    zone TEXT,
    security_status TEXT,
    badge_id TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    notes TEXT,
    incident_reported TEXT,
    incident_id INTEGER
);
INSERT INTO Stadium_Access_Log (stadium_id,access_date,access_time,entry_point,visitor_id,ticket_type,access_method,staff_on_duty,vehicle_plate,purpose,duration_minutes,zone,security_status,badge_id,temperature_c,humidity_percent,notes,incident_reported,incident_id) VALUES (301,'2023-09-01','08:15','North Gate',45001,'Season','CardSwipe','John Smith','ABC1234','Entry','30','Section A','Clear','B123',22.5,45.0,'No issues','No',NULL);
INSERT INTO Stadium_Access_Log (stadium_id,access_date,access_time,entry_point,visitor_id,ticket_type,access_method,staff_on_duty,vehicle_plate,purpose,duration_minutes,zone,security_status,badge_id,temperature_c,humidity_percent,notes,incident_reported,incident_id) VALUES (302,'2023-09-01','09:00','East Gate',45002,'Single','Barcode','Emily Davis','XYZ5678','Vendor Access','45','Section B','Clear','V456',23.0,48.0,'Vendor delivered supplies','No',NULL);
INSERT INTO Stadium_Access_Log (stadium_id,access_date,access_time,entry_point,visitor_id,ticket_type,access_method,staff_on_duty,vehicle_plate,purpose,duration_minutes,zone,security_status,badge_id,temperature_c,humidity_percent,notes,incident_reported,incident_id) VALUES (303,'2023-09-01','10:30','South Gate',45003,'VIP','RFID','Michael Lee','VIP001','Guest Entry','15','VIP Lounge','Clear','VIP789',21.8,42.0,'VIP arrived early','Yes',2001);

-- Fan_Social_Group_Activities
CREATE TABLE Fan_Social_Group_Activities (
    activity_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_club_id INTEGER,
    platform TEXT,
    activity_type TEXT,
    start_date TEXT,
    end_date TEXT,
    participants_count INTEGER,
    main_topic TEXT,
    hashtag TEXT,
    organizer TEXT,
    visibility_score REAL,
    engagement_rate REAL,
    media_url TEXT,
    location TEXT,
    sponsor TEXT,
    budget_usd INTEGER,
    outcome TEXT,
    feedback_score REAL,
    notes TEXT,
    status TEXT,
    created_by TEXT
);
INSERT INTO Fan_Social_Group_Activities (fan_club_id,platform,activity_type,start_date,end_date,participants_count,main_topic,hashtag,organizer,visibility_score,engagement_rate,media_url,location,sponsor,budget_usd,outcome,feedback_score,notes,status,created_by) VALUES (401,'Twitter','HashtagCampaign','2023-08-01','2023-08-07',1200,'Matchday Cheers','#GoTeam','Alice Brown',78.5,4.2,'http://media.example.com/campaign1','Online','BetaLtd',25000,'Increased chatter','4.5','Successful social lift','Active','Mark Twain');
INSERT INTO Fan_Social_Group_Activities (fan_club_id,platform,activity_type,start_date,end_date,participants_count,main_topic,hashtag,organizer,visibility_score,engagement_rate,media_url,location,sponsor,budget_usd,outcome,feedback_score,notes,status,created_by) VALUES (402,'Facebook','LiveWatch','2023-09-10','2023-09-10',800,'Final Showdown','#FinaleWatch','Carlos Ruiz',85.0,5.8,'http://media.example.com/livewatch','Stadium','AlphaCorp',18000,'High viewership','4.8','Peak engagement','Completed','Laura Green');
INSERT INTO Fan_Social_Group_Activities (fan_club_id,platform,activity_type,start_date,end_date,participants_count,main_topic,hashtag,organizer,visibility_score,engagement_rate,media_url,location,sponsor,budget_usd,outcome,feedback_score,notes,status,created_by) VALUES (403,'Instagram','PhotoContest','2023-07-15','2023-07-22',450,'Stadium Moments','#StadiumSnap','Dana White',70.2,3.6,'http://media.example.com/contest','Online','GammaEnterprises',12000,'User generated content','4.2','Nice creativity','Closed','Sam Patel');

-- Team_Analytics_Models
CREATE TABLE Team_Analytics_Models (
    model_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    model_name TEXT,
    version TEXT,
    training_start_date TEXT,
    training_end_date TEXT,
    algorithm TEXT,
    input_features TEXT,
    target_variable TEXT,
    accuracy REAL,
    precision REAL,
    recall REAL,
    f1_score REAL,
    validation_method TEXT,
    data_source TEXT,
    hyperparameters TEXT,
    deployment_status TEXT,
    last_updated TEXT,
    notes TEXT,
    owner TEXT
);
INSERT INTO Team_Analytics_Models (team_api_id,model_name,version,training_start_date,training_end_date,algorithm,input_features,target_variable,accuracy,precision,recall,f1_score,validation_method,data_source,hyperparameters,deployment_status,last_updated,notes,owner) VALUES (501,'PossessionPredictor','v1.0','2023-01-01','2023-02-15','RandomForest','pass_rate,dribble_success,opponent_pressure','possession_percent',0.88,0.85,0.90,0.87,'KFold','MatchData','max_depth=10;trees=200','Deployed','2023-03-01','Model used for tactical planning','DataScienceTeam');
INSERT INTO Team_Analytics_Models (team_api_id,model_name,version,training_start_date,training_end_date,algorithm,input_features,target_variable,accuracy,precision,recall,f1_score,validation_method,data_source,hyperparameters,deployment_status,last_updated,notes,owner) VALUES (502,'InjuryRiskEstimator','v2.1','2023-04-01','2023-05-20','GradientBoosting','minutes_played,previous_injuries,age','injury_probability',0.81,0.78,0.84,0.81,'Holdout','MedicalLogs','learning_rate=0.05;trees=150','Testing','2023-06-01','Pending medical review','SportsMedTeam');
INSERT INTO Team_Analytics_Models (team_api_id,model_name,version,training_start_date,training_end_date,algorithm,input_features,target_variable,accuracy,precision,recall,f1_score,validation_method,data_source,hyperparameters,deployment_status,last_updated,notes,owner) VALUES (503,'GoalScoringForecast','v3.3','2023-07-01','2023-08-10','NeuralNetwork','shot_accuracy,expected_goals,position','goals_next_5_matches',0.76,0.73,0.78,0.75,'TimeSeries','HistoricalMatches','layers=3;units=64','Staging','2023-09-01','Fine‑tuning required','AnalyticsLab');

-- Sponsor_Brand_Exposure_Logs
CREATE TABLE Sponsor_Brand_Exposure_Logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name TEXT,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    exposure_type TEXT,
    platform TEXT,
    impressions INTEGER,
    reach INTEGER,
    frequency REAL,
    cost_usd INTEGER,
    cpm REAL,
    cpc REAL,
    ctr REAL,
    viewability_percent REAL,
    brand_score REAL,
    target_audience TEXT,
    region TEXT,
    notes TEXT,
    status TEXT,
    created_at TEXT
);
INSERT INTO Sponsor_Brand_Exposure_Logs (sponsor_name,campaign_name,start_date,end_date,exposure_type,platform,impressions,reach,frequency,cost_usd,cpm,cpc,ctr,viewability_percent,brand_score,target_audience,region,notes,status,created_at) VALUES ('AlphaCorp','SummerBlast','2023-06-01','2023-08-31','Video','YouTube',2500000,800000,3.1,400000,0.16,0.05,0.04,85.0,78.5,'Football Fans','Europe','High engagement','Active','2023-09-01');
INSERT INTO Sponsor_Brand_Exposure_Logs (sponsor_name,campaign_name,start_date,end_date,exposure_type,platform,impressions,reach,frequency,cost_usd,cpm,cpc,ctr,viewability_percent,brand_score,target_audience,region,notes,status,created_at) VALUES ('BetaLtd','YouthDrive','2023-03-15','2023-05-15','Banner','Stadium',1200000,450000,2.6,250000,0.21,0.07,0.03,78.0,70.0,'Youth','NorthAmerica','Season ticket promo','Completed','2023-06-01');
INSERT INTO Sponsor_Brand_Exposure_Logs (sponsor_name,campaign_name,start_date,end_date,exposure_type,platform,impressions,reach,frequency,cost_usd,cpm,cpc,ctr,viewability_percent,brand_score,target_audience,region,notes,status,created_at) VALUES ('GammaEnterprises','CommunityConnect','2023-09-01','2023-12-31','Radio','LocalRadio',800000,300000,2.0,180000,0.225,0.09,0.05,70.0,65.0,'Local Residents','Asia','Community outreach','Planned','2023-09-05');

-- Match_Streaming_Quality_Metrics
CREATE TABLE Match_Streaming_Quality_Metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    streaming_platform TEXT,
    start_time TEXT,
    end_time TEXT,
    avg_bitrate_kbps INTEGER,
    max_bitrate_kbps INTEGER,
    min_bitrate_kbps INTEGER,
    buffering_events INTEGER,
    avg_buffer_duration_sec REAL,
    quality_score REAL,
    resolution TEXT,
    codec TEXT,
    latency_ms INTEGER,
    dropped_frames INTEGER,
    user_experience_rating REAL,
    region TEXT,
    concurrent_viewers INTEGER,
    notes TEXT,
    recorded_at TEXT,
    status TEXT
);
INSERT INTO Match_Streaming_Quality_Metrics (match_id,streaming_platform,start_time,end_time,avg_bitrate_kbps,max_bitrate_kbps,min_bitrate_kbps,buffering_events,avg_buffer_duration_sec,quality_score,resolution,codec,latency_ms,dropped_frames,user_experience_rating,region,concurrent_viewers,notes,recorded_at,status) VALUES (601,'StreamNow','2023-09-10 19:00','2023-09-10 21:00',3500,5000,2500,12,3.4,8.5,'1080p','H.264',120,200,4.2,'Europe',75000,'Stable stream','2023-09-10 22:00','Validated');
INSERT INTO Match_Streaming_Quality_Metrics (match_id,streaming_platform,start_time,end_time,avg_bitrate_kbps,max_bitrate_kbps,min_bitrate_kbps,buffering_events,avg_buffer_duration_sec,quality_score,resolution,codec,latency_ms,dropped_frames,user_experience_rating,region,concurrent_viewers,notes,recorded_at,status) VALUES (602,'LivePlay','2023-09-11 18:30','2023-09-11 20:45',2800,4500,2200,20,5.1,7.8,'720p','VP9',180,350,3.9,'Asia',62000,'Higher buffering during peak','2023-09-11 21:30','Reviewed');
INSERT INTO Match_Streaming_Quality_Metrics (match_id,streaming_platform,start_time,end_time,avg_bitrate_kbps,max_bitrate_kbps,min_bitrate_kbps,buffering_events,avg_buffer_duration_sec,quality_score,resolution,codec,latency_ms,dropped_frames,user_experience_rating,region,concurrent_viewers,notes,recorded_at,status) VALUES (603,'GameCast','2023-09-12 20:00','2023-09-12 22:15',4000,6000,3000,8,2.2,9.1,'4K','AV1',90,100,4.7,'NorthAmerica',85000,'Excellent quality','2023-09-12 23:00','Validated');

-- Training_Center_Sensor_Readings
CREATE TABLE Training_Center_Sensor_Readings (
    reading_id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    sensor_type TEXT,
    reading_timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    vibration_mms REAL,
    light_lux INTEGER,
    occupancy_count INTEGER,
    air_quality_index INTEGER,
    water_flow_lpm REAL,
    power_consumption_kw REAL,
    status TEXT,
    alert_flag TEXT,
    maintenance_due_date TEXT,
    notes TEXT,
    recorded_by TEXT,
    version TEXT
);
INSERT INTO Training_Center_Sensor_Readings (center_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,noise_db,vibration_mms,light_lux,occupancy_count,air_quality_index,water_flow_lpm,power_consumption_kw,status,alert_flag,maintenance_due_date,notes,recorded_by,version) VALUES (701,'Environmental','2023-09-01 08:00',22.5,45.0,420,55.2,0.3,800,12,42,12.5,5.6,'Operational','No','2024-01-15','Normal morning reading','TechA','v1.0');
INSERT INTO Training_Center_Sensor_Readings (center_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,noise_db,vibration_mms,light_lux,occupancy_count,air_quality_index,water_flow_lpm,power_consumption_kw,status,alert_flag,maintenance_due_date,notes,recorded_by,version) VALUES (702,'Environmental','2023-09-01 12:30',24.1,48.0,560,68.5,0.5,950,30,58,15.2,7.3,'Operational','Yes','2024-02-10','CO2 spike detected','TechB','v1.1');
INSERT INTO Training_Center_Sensor_Readings (center_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,noise_db,vibration_mms,light_lux,occupancy_count,air_quality_index,water_flow_lpm,power_consumption_kw,status,alert_flag,maintenance_due_date,notes,recorded_by,version) VALUES (703,'Environmental','2023-09-01 18:45',21.0,42.0,380,50.0,0.2,700,8,35,10.0,4.9,'Operational','No','2024-03-05','Evening stable','TechC','v1.0');

-- Player_Biometric_Tracking
CREATE TABLE Player_Biometric_Tracking (
    track_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    session_date TEXT,
    heart_rate_bpm INTEGER,
    respiration_rate_bpm INTEGER,
    skin_temp_c REAL,
    blood_oxygen_percent REAL,
    lactate_mmol_l REAL,
    distance_m INTEGER,
    speed_kmh REAL,
    acceleration_m_s2 REAL,
    fatigue_score REAL,
    stress_score REAL,
    recovery_time_min INTEGER,
    gps_latitude REAL,
    gps_longitude REAL,
    device_id TEXT,
    notes TEXT,
    analyst TEXT,
    recorded_at TEXT
);
INSERT INTO Player_Biometric_Tracking (player_api_id,session_date,heart_rate_bpm,respiration_rate_bpm,skin_temp_c,blood_oxygen_percent,lactate_mmol_l,distance_m,speed_kmh,acceleration_m_s2,fatigue_score,stress_score,recovery_time_min,gps_latitude,gps_longitude,device_id,notes,analyst,recorded_at) VALUES (101,'2023-09-10',158,22,36.5,98.2,4.5,10500,18.2,3.1,7.5,5.2,48,51.5074,-0.1278,'DEV1001','High intensity','DrSmith','2023-09-10 20:00');
INSERT INTO Player_Biometric_Tracking (player_api_id,session_date,heart_rate_bpm,respiration_rate_bpm,skin_temp_c,blood_oxygen_percent,lactate_mmol_l,distance_m,speed_kmh,acceleration_m_s2,fatigue_score,stress_score,recovery_time_min,gps_latitude,gps_longitude,device_id,notes,analyst,recorded_at) VALUES (102,'2023-09-11',145,20,35.8,97.9,3.8,9800,16.5,2.8,6.8,4.9,42,48.8566,2.3522,'DEV1002','Steady state cardio','DrLee','2023-09-11 19:30');
INSERT INTO Player_Biometric_Tracking (player_api_id,session_date,heart_rate_bpm,respiration_rate_bpm,skin_temp_c,blood_oxygen_percent,lactate_mmol_l,distance_m,speed_kmh,acceleration_m_s2,fatigue_score,stress_score,recovery_time_min,gps_latitude,gps_longitude,device_id,notes,analyst,recorded_at) VALUES (103,'2023-09-12',162,24,36.9,98.5,5.1,11200,19.0,3.3,8.0,5.8,55,40.7128,-74.0060,'DEV1003','Peak sprint drills','DrKim','2023-09-12 21:15');