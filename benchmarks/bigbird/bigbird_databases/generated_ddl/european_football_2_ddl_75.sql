-- Virtual_Tour_Analytics: Statistics for virtual fan tours
CREATE TABLE Virtual_Tour_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tour_id INTEGER,
    tour_name TEXT,
    start_date TEXT,
    end_date TEXT,
    total_viewers INTEGER,
    avg_view_duration_sec INTEGER,
    peak_concurrent_viewers INTEGER,
    country TEXT,
    language TEXT,
    device_type TEXT,
    platform TEXT,
    video_quality TEXT,
    segment_1_views INTEGER,
    segment_2_views INTEGER,
    segment_3_views INTEGER,
    segment_4_views INTEGER,
    interaction_rate REAL,
    click_through_rate REAL,
    share_count INTEGER,
    comment_count INTEGER,
    rating_average REAL,
    feedback_score REAL
);
INSERT INTO Virtual_Tour_Analytics (tour_id,tour_name,start_date,end_date,total_viewers,avg_view_duration_sec,peak_concurrent_viewers,country,language,device_type,platform,video_quality,segment_1_views,segment_2_views,segment_3_views,segment_4_views,interaction_rate,click_through_rate,share_count,comment_count,rating_average,feedback_score) VALUES (101,'Stadium360Tour','2023-05-01','2023-05-07',45230,180,9500,'England','English','Mobile','App','HD',12000,13000,11000,9200,0.12,0.04,340,120,4.5,87.2);
INSERT INTO Virtual_Tour_Analytics (tour_id,tour_name,start_date,end_date,total_viewers,avg_view_duration_sec,peak_concurrent_viewers,country,language,device_type,platform,video_quality,segment_1_views,segment_2_views,segment_3_views,segment_4_views,interaction_rate,click_through_rate,share_count,comment_count,rating_average,feedback_score) VALUES (102,'ClubHistoryVR','2023-08-15','2023-08-20',29870,210,6200,'Spain','Spanish','Desktop','Web','4K',7500,6800,5600,4500,0.15,0.05,210,95,4.7,92.3);
INSERT INTO Virtual_Tour_Analytics (tour_id,tour_name,start_date,end_date,total_viewers,avg_view_duration_sec,peak_concurrent_viewers,country,language,device_type,platform,video_quality,segment_1_views,segment_2_views,segment_3_views,segment_4_views,interaction_rate,click_through_rate,share_count,comment_count,rating_average,feedback_score) VALUES (103,'FanMeet2024','2024-02-10','2024-02-12',51780,165,11200,'Germany','German','Tablet','App','FullHD',14000,15000,13000,10800,0.10,0.03,420,180,4.3,84.6);

-- Fan_Emotion_Tracking: Sentiment analysis of fan reactions during matches
CREATE TABLE Fan_Emotion_Tracking (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    fan_segment TEXT,
    timestamp TEXT,
    emotion_happy INTEGER,
    emotion_angry INTEGER,
    emotion_sad INTEGER,
    emotion_surprised INTEGER,
    emotion_fearful INTEGER,
    total_responses INTEGER,
    avg_sentiment_score REAL,
    peak_emotion TEXT,
    device_used TEXT,
    region TEXT,
    language TEXT,
    reaction_type TEXT,
    engagement_score REAL,
    noise_level_db INTEGER,
    crowd_density INTEGER,
    stadium_section TEXT,
    camera_angle TEXT,
    social_media_mentions INTEGER,
    hashtag_usage INTEGER
);
INSERT INTO Fan_Emotion_Tracking (match_id,fan_segment,timestamp,emotion_happy,emotion_angry,emotion_sad,emotion_surprised,emotion_fearful,total_responses,avg_sentiment_score,peak_emotion,device_used,region,language,reaction_type,engagement_score,noise_level_db,crowd_density,stadium_section,camera_angle,social_media_mentions,hashtag_usage) VALUES (2025,'HomeFans','2024-03-15T19:23:00',4520,310,210,130,45,5200,0.78,'happy','Mobile','Northern','English','cheer',0.85,96,850,'SectionA','Wide',3120,145);
INSERT INTO Fan_Emotion_Tracking (match_id,fan_segment,timestamp,emotion_happy,emotion_angry,emotion_sad,emotion_surprised,emotion_fearful,total_responses,avg_sentiment_score,peak_emotion,device_used,region,language,reaction_type,engagement_score,noise_level_db,crowd_density,stadium_section,camera_angle,social_media_mentions,hashtag_usage) VALUES (2026,'AwayFans','2024-04-02T17:45:00',2100,540,380,250,70,3350,0.62,'angry','Desktop','Southern','Spanish','boo',0.71,102,730,'SectionC','CloseUp',1980,98);
INSERT INTO Fan_Emotion_Tracking (match_id,fan_segment,timestamp,emotion_happy,emotion_angry,emotion_sad,emotion_surprised,emotion_fearful,total_responses,avg_sentiment_score,peak_emotion,device_used,region,language,reaction_type,engagement_score,noise_level_db,crowd_density,stadium_section,camera_angle,social_media_mentions,hashtag_usage) VALUES (2027,'NeutralZone','2024-05-20T20:05:00',3300,260,150,190,30,4030,0.71,'surprised','Tablet','Central','French','clap',0.78,99,790,'SectionB','Pan',2450,112);

-- Player_Training_Videos: Metadata for player training video assets
CREATE TABLE Player_Training_Videos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    video_id TEXT,
    title TEXT,
    description TEXT,
    sport TEXT,
    session_date TEXT,
    duration_seconds INTEGER,
    video_quality TEXT,
    camera_position TEXT,
    focus_area TEXT,
    drill_type TEXT,
    coach_name TEXT,
    location TEXT,
    weather_conditions TEXT,
    temperature_celsius INTEGER,
    humidity_percent INTEGER,
    file_path TEXT,
    thumbnail_path TEXT,
    view_count INTEGER,
    like_count INTEGER,
    comment_count INTEGER,
    rating_average REAL,
    tags TEXT
);
INSERT INTO Player_Training_Videos (player_api_id,video_id,title,description,sport,session_date,duration_seconds,video_quality,camera_position,focus_area,drill_type,coach_name,location,weather_conditions,temperature_celsius,humidity_percent,file_path,thumbnail_path,view_count,like_count,comment_count,rating_average,tags) VALUES (801,'VID1001','Finishing Drills','Close‑range finishing practice', 'Football','2024-01-10',540,'FullHD','Side','Shooting','Finishing','CoachMike','TrainingGroundA','Clear',22,45,'/videos/vid1001.mp4','/thumbs/vid1001.jpg',1240,340,27,4.6,'finishing,shooting');
INSERT INTO Player_Training_Videos (player_api_id,video_id,title,description,sport,session_date,duration_seconds,video_quality,camera_position,focus_area,drill_type,coach_name,location,weather_conditions,temperature_celsius,humidity_percent,file_path,thumbnail_path,view_count,like_count,comment_count,rating_average,tags) VALUES (802,'VID1002','Defensive Positioning','Defensive shape and positioning drills', 'Football','2024-02-05',720,'4K','Top','Defending','Positioning','CoachAnna','TrainingGroundB','Overcast',19,58,'/videos/vid1002.mp4','/thumbs/vid1002.jpg',985,210,15,4.3,'defense,positioning');
INSERT INTO Player_Training_Videos (player_api_id,video_id,title,description,sport,session_date,duration_seconds,video_quality,camera_position,focus_area,drill_type,coach_name,location,weather_conditions,temperature_celsius,humidity_percent,file_path,thumbnail_path,view_count,like_count,comment_count,rating_average,tags) VALUES (803,'VID1003','Set‑Piece Routine','Team set‑piece execution and timing', 'Football','2024-03-12',600,'FullHD','Side','SetPiece','SetPiece','CoachLuis','TrainingGroundC','Rain',16,70,'/videos/vid1003.mp4','/thumbs/vid1003.jpg',1470,460,38,4.8,'setpiece,team');

-- Team_Analytics_Models: Machine‑learning models applied to team performance
CREATE TABLE Team_Analytics_Models (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    model_name TEXT,
    version TEXT,
    created_date TEXT,
    algorithm TEXT,
    target_metric TEXT,
    training_data_range TEXT,
    feature_count INTEGER,
    hyperparameters TEXT,
    accuracy REAL,
    precision REAL,
    recall REAL,
    f1_score REAL,
    validation_method TEXT,
    training_time_seconds INTEGER,
    data_source TEXT,
    author TEXT,
    deployment_status TEXT,
    last_updated TEXT,
    notes TEXT,
    model_file_path TEXT,
    input_schema_version TEXT,
    output_schema_version TEXT
);
INSERT INTO Team_Analytics_Models (team_api_id,model_name,version,created_date,algorithm,target_metric,training_data_range,feature_count,hyperparameters,accuracy,precision,recall,f1_score,validation_method,training_time_seconds,data_source,author,deployment_status,last_updated,notes,model_file_path,input_schema_version,output_schema_version) VALUES (301,'PossessionPredictor','v1.0','2023-11-01','GradientBoosting','possession_percentage','2019-2022',45,'depth=5,learning_rate=0.1',0.89,0.85,0.82,0.83,'CrossValidation',7200,'MatchData','DataScienceTeam','Deployed','2024-01-15','Improved feature engineering','/models/possession_v1.pkl','1.2','2.0');
INSERT INTO Team_Analytics_Models (team_api_id,model_name,version,created_date,algorithm,target_metric,training_data_range,feature_count,hyperparameters,accuracy,precision,recall,f1_score,validation_method,training_time_seconds,data_source,author,deployment_status,last_updated,notes,model_file_path,input_schema_version,output_schema_version) VALUES (302,'GoalScoringEstimator','v2.1','2024-02-20','NeuralNetwork','expected_goals','2020-2023',60,'layers=3,units=128',0.93,0.90,0.88,0.89,'Holdout',14400,'HistoricalStats','MLTeam','Testing','2024-02-28','Added temporal features','/models/goals_v2.1.h5','2.1','3.1');
INSERT INTO Team_Analytics_Models (team_api_id,model_name,version,created_date,algorithm,target_metric,training_data_range,feature_count,hyperparameters,accuracy,precision,recall,f1_score,validation_method,training_time_seconds,data_source,author,deployment_status,last_updated,notes,model_file_path,input_schema_version,output_schema_version) VALUES (303,'DefensiveStability','v0.9','2023-09-15','RandomForest','goals_conceded','2018-2021',38,'trees=200,max_depth=10',0.86,0.81,0.79,0.80,'KFold',5400,'MatchEvents','AnalyticsDept','Retired','2023-12-05','Reduced overfitting','/models/defense_v0.9.rds','1.0','1.5');

-- League_Economic_Indicators: Financial and economic metrics for leagues
CREATE TABLE League_Economic_Indicators (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    broadcasting_revenue_million REAL,
    sponsorship_revenue_million REAL,
    ticket_sales_million REAL,
    merchandise_sales_million REAL,
    total_revenue_million REAL,
    average_player_salary_million REAL,
    salary_cap_million REAL,
    net_profit_million REAL,
    operating_expenses_million REAL,
    market_value_million REAL,
    foreign_investment_million REAL,
    tv_audience_average INTEGER,
    digital_subscriptions INTEGER,
    average_attendance INTEGER,
    stadium_utilization_percent REAL,
    inflation_adjusted_gdp REAL,
    exchange_rate_usd REAL,
    fiscal_year_end TEXT,
    financial_audit_status TEXT,
    notes TEXT,
    last_updated TEXT
);
INSERT INTO League_Economic_Indicators (league_id,season,broadcasting_revenue_million,sponsorship_revenue_million,ticket_sales_million,merchandise_sales_million,total_revenue_million,average_player_salary_million,salary_cap_million,net_profit_million,operating_expenses_million,market_value_million,foreign_investment_million,tv_audience_average,digital_subscriptions,average_attendance,stadium_utilization_percent,inflation_adjusted_gdp,exchange_rate_usd,fiscal_year_end,financial_audit_status,notes,last_updated) VALUES (10,'2023/24',850.5,420.3,310.2,190.1,1770.1,2.5,30.0,150.0,1620.1,3500.0,200.0,18000000,750000,34000,78.5,3.2,0.85,'2024-03-31','Approved','Strong growth in digital platforms','2024-04-10');
INSERT INTO League_Economic_Indicators (league_id,season,broadcasting_revenue_million,sponsorship_revenue_million,ticket_sales_million,merchandise_sales_million,total_revenue_million,average_player_salary_million,salary_cap_million,net_profit_million,operating_expenses_million,market_value_million,foreign_investment_million,tv_audience_average,digital_subscriptions,average_attendance,stadium_utilization_percent,inflation_adjusted_gdp,exchange_rate_usd,fiscal_year_end,financial_audit_status,notes,last_updated) VALUES (12,'2022/23',620.0,300.0,250.0,140.0,1310.0,2.2,25.0,120.0,1190.0,2800.0,150.0,15000000,500000,30000,73.2,2.9,0.90,'2023-12-31','Pending','Plan to increase international broadcast rights','2024-01-05');
INSERT INTO League_Economic_Indicators (league_id,season,broadcasting_revenue_million,sponsorship_revenue_million,ticket_sales_million,merchandise_sales_million,total_revenue_million,average_player_salary_million,salary_cap_million,net_profit_million,operating_expenses_million,market_value_million,foreign_investment_million,tv_audience_average,digital_subscriptions,average_attendance,stadium_utilization_percent,inflation_adjusted_gdp,exchange_rate_usd,fiscal_year_end,financial_audit_status,notes,last_updated) VALUES (15,'2021/22',470.0,210.0,200.0,100.0,980.0,1.8,20.0,80.0,900.0,2100.0,90.0,12000000,350000,28000,68.9,2.5,0.92,'2022-12-31','Approved','Investing in youth development facilities','2023-01-12');

-- Stadium_Logistics_Inventory: Equipment and logistical assets for stadiums
CREATE TABLE Stadium_Logistics_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    asset_tag TEXT,
    asset_type TEXT,
    description TEXT,
    purchase_date TEXT,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    warranty_expiration TEXT,
    location_within_stadium TEXT,
    quantity INTEGER,
    unit_cost REAL,
    total_value REAL,
    maintenance_cycle_days INTEGER,
    last_maintenance_date TEXT,
    next_maintenance_date TEXT,
    assigned_department TEXT,
    status TEXT,
    depreciation_rate_percent REAL,
    residual_value REAL,
    disposal_date TEXT,
    disposal_method TEXT,
    notes TEXT,
    last_audited TEXT,
    auditor_name TEXT
);
INSERT INTO Stadium_Logistics_Inventory (stadium_id,asset_tag,asset_type,description,purchase_date,manufacturer,model_number,serial_number,warranty_expiration,location_within_stadium,quantity,unit_cost,total_value,maintenance_cycle_days,last_maintenance_date,next_maintenance_date,assigned_department,status,depreciation_rate_percent,residual_value,disposal_date,disposal_method,notes,last_audited,auditor_name) VALUES (55,'STL-001','LED_Screen','North Stand LED display','2020-06-15','TechVision','LEDX200','SN12345','2025-06-15','NorthStand','1',250000.00,250000.00,180,'2023-06-10','2023-12-10','Facilities','Operational',5.0,200000.00,NULL,NULL,'No issues','2024-01-20','JohnDoe');
INSERT INTO Stadium_Logistics_Inventory (stadium_id,asset_tag,asset_type,description,purchase_date,manufacturer,model_number,serial_number,warranty_expiration,location_within_stadium,quantity,unit_cost,total_value,maintenance_cycle_days,last_maintenance_date,next_maintenance_date,assigned_department,status,depreciation_rate_percent,residual_value,disposal_date,disposal_method,notes,last_audited,auditor_name) VALUES (55,'STL-045','Hydro_ pump','Water drainage pump','2019-03-01','AquaFlow','HP-300','SN67890','2024-03-01','SouthTunnel','2',15000.00,30000.00,365,'2023-04-05','2024-04-05','Operations','Operational',7.5,18000.00,NULL,NULL,'Recently serviced','2024-02-15','EmilySmith');
INSERT INTO Stadium_Logistics_Inventory (stadium_id,asset_tag,asset_type,description,purchase_date,manufacturer,model_number,serial_number,warranty_expiration,location_within_stadium,quantity,unit_cost,total_value,maintenance_cycle_days,last_maintenance_date,next_maintenance_date,assigned_department,status,depreciation_rate_percent,residual_value,disposal_date,disposal_method,notes,last_audited,auditor_name) VALUES (55,'STL-102','Portable_Generator','Backup power unit','2021-11-20','PowerMax','GEN-5000','SN54321','2026-11-20','UtilityRoom','1',50000.00,50000.00,730,'2023-11-20','2024-11-20','Facilities','Operational',6.0,38000.00,NULL,NULL,'Test run successful','2024-03-01','MarkLee');

-- Match_Weather_Sensor_Readings: Environmental sensor data captured during matches
CREATE TABLE Match_Weather_Sensor_Readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    sensor_id TEXT,
    timestamp TEXT,
    temperature_celsius REAL,
    humidity_percent REAL,
    wind_speed_kmh REAL,
    wind_direction TEXT,
    precipitation_mm REAL,
    air_pressure_hpa REAL,
    uv_index INTEGER,
    visibility_km REAL,
    particulate_matter_2_5 REAL,
    carbon_dioxide_ppm REAL,
    noise_level_db INTEGER,
    light_lux REAL,
    sensor_status TEXT,
    battery_level_percent INTEGER,
    firmware_version TEXT,
    notes TEXT,
    data_quality_score REAL,
    calibrated BOOLEAN,
    location_within_stadium TEXT,
    last_updated TEXT
);
INSERT INTO Match_Weather_Sensor_Readings (match_id,sensor_id,timestamp,temperature_celsius,humidity_percent,wind_speed_kmh,wind_direction,precipitation_mm,air_pressure_hpa,uv_index,visibility_km,particulate_matter_2_5,carbon_dioxide_ppm,noise_level_db,light_lux,sensor_status,battery_level_percent,firmware_version,notes,data_quality_score,calibrated,location_within_stadium,last_updated) VALUES (2025,'WS-01','2024-03-15T19:00:00',21.3,58,12.5,'NE',0.0,1013.2,5,12.0,15.2,420,78,'Operational',92,'v1.3','No anomalies','0.97',1,'NorthStands','2024-03-15T19:15:00');
INSERT INTO Match_Weather_Sensor_Readings (match_id,sensor_id,timestamp,temperature_celsius,humidity_percent,wind_speed_kmh,wind_direction,precipitation_mm,air_pressure_hpa,uv_index,visibility_km,particulate_matter_2_5,carbon_dioxide_ppm,noise_level_db,light_lux,sensor_status,battery_level_percent,firmware_version,notes,data_quality_score,calibrated,location_within_stadium,last_updated) VALUES (2026,'WS-07','2024-04-02T17:30:00',18.7,70,8.2,'S',0.2,1010.5,4,10.5,22.1,410,85,'Operational',88,'v1.2','Light drizzle detected','0.94',1,'SouthTerrace','2024-04-02T17:45:00');
INSERT INTO Match_Weather_Sensor_Readings (match_id,sensor_id,timestamp,temperature_celsius,humidity_percent,wind_speed_kmh,wind_direction,precipitation_mm,air_pressure_hpa,uv_index,visibility_km,particulate_matter_2_5,carbon_dioxide_ppm,noise_level_db,light_lux,sensor_status,battery_level_percent,firmware_version,notes,data_quality_score,calibrated,location_within_stadium,last_updated) VALUES (2027,'WS-15','2024-05-20T20:10:00',24.1,45,15.0,'W',0.0,1015.0,7,15.0,10.5,430,70,'Operational',95,'v1.4','Clear night conditions','0.99',1,'EastWing','2024-05-20T20:25:00');

-- Sponsor_Creative_Assets: Media assets linked to sponsorship campaigns
CREATE TABLE Sponsor_Creative_Assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_name TEXT,
    asset_type TEXT,
    file_name TEXT,
    file_path TEXT,
    file_size_kb INTEGER,
    resolution TEXT,
    duration_seconds INTEGER,
    upload_date TEXT,
    expiry_date TEXT,
    usage_rights TEXT,
    target_audience TEXT,
    platform TEXT,
    language TEXT,
    color_profile TEXT,
    aspect_ratio TEXT,
    approved_by TEXT,
    approval_date TEXT,
    status TEXT,
    impressions_target INTEGER,
    clicks_target INTEGER,
    cost_per_mille REAL,
    total_spend_usd REAL,
    notes TEXT,
    last_modified TEXT,
    modified_by TEXT
);
INSERT INTO Sponsor_Creative_Assets (sponsor_id,campaign_name,asset_type,file_name,file_path,file_size_kb,resolution,duration_seconds,upload_date,expiry_date,usage_rights,target_audience,platform,language,color_profile,aspect_ratio,approved_by,approval_date,status,impressions_target,clicks_target,cost_per_mille,total_spend_usd,notes,last_modified,modified_by) VALUES (2001,'SummerKickoff','Video','summer_kickoff.mp4','/assets/sponsor2001/summer_kickoff.mp4',8200,'1920x1080',30,'2024-01-05','2024-07-31','Unlimited','Adults','TV','English','sRGB','16:9','LisaM','2024-01-03','Active',5000000,25000,5.5,27500.00,'High energy intro','2024-02-10','MikeR');
INSERT INTO Sponsor_Creative_Assets (sponsor_id,campaign_name,asset_type,file_name,file_path,file_size_kb,resolution,duration_seconds,upload_date,expiry_date,usage_rights,target_audience,platform,language,color_profile,aspect_ratio,approved_by,approval_date,status,impressions_target,clicks_target,cost_per_mille,total_spend_usd,notes,last_modified,modified_by) VALUES (2002,'EcoDrive','Image','eco_banner.jpg','/assets/sponsor2002/eco_banner.jpg',450,'1200x600',0,'2023-11-20','2024-11-20','Regional','YoungAdults','Digital','Spanish','AdobeRGB','4:3','TomK','2023-11-18','Active',2000000,15000,3.2,6400.00,'Focus on sustainability','2024-01-15','SarahP');
INSERT INTO Sponsor_Creative_Assets (sponsor_id,campaign_name,asset_type,file_name,file_path,file_size_kb,resolution,duration_seconds,upload_date,expiry_date,usage_rights,target_audience,platform,language,color_profile,aspect_ratio,approved_by,approval_date,status,impressions_target,clicks_target,cost_per_mille,total_spend_usd,notes,last_modified,modified_by) VALUES (2003,'WinterWear','Video','winter_weave.mp4','/assets/sponsor2003/winter_weave.mp4',9600,'3840x2160',45,'2024-02-01','2024-12-31','Global','All','Social','English','Rec2020','16:9','AnnaL','2024-01-30','Pending',8000000,40000,4.8,38400.00,'Ready for holiday launch','2024-02-05','JamesF');

-- Club_Governance_Meetings: Records of board and committee meetings
CREATE TABLE Club_Governance_Meetings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    meeting_date TEXT,
    meeting_type TEXT,
    location TEXT,
    chairperson TEXT,
    secretary TEXT,
    attendees INTEGER,
    agenda TEXT,
    minutes_document_path TEXT,
    decisions_made TEXT,
    action_items TEXT,
    next_meeting_date TEXT,
    quorum_met BOOLEAN,
    voting_result TEXT,
    confidential BOOLEAN,
    meeting_duration_minutes INTEGER,
    external_advisors TEXT,
    compliance_review TEXT,
    risk_assessment TEXT,
    budget_approval_amount REAL,
    notes TEXT,
    recorded_by TEXT,
    record_timestamp TEXT,
    follow_up_status TEXT
);
INSERT INTO Club_Governance_Meetings (club_id,meeting_date,meeting_type,location,chairperson,secretary,attendees,agenda,minutes_document_path,decisions_made,action_items,next_meeting_date,quorum_met,voting_result,confidential,meeting_duration_minutes,external_advisors,compliance_review,risk_assessment,budget_approval_amount,notes,recorded_by,record_timestamp,follow_up_status) VALUES (1,'2024-01-10','Board','ClubHQ','LauraG','MikeH',12,'StrategicPlan,Finance,HR','/minutes/board_20240110.pdf','Approved 5‑year plan','Implement KPI tracking','2024-04-10',1,'Unanimous',0,180,'LegalFirmA','Passed','Low',2500000.00,'Positive outlook','EmmaS','2024-01-10T12:00:00','Completed');
INSERT INTO Club_Governance_Meetings (club_id,meeting_date,meeting_type,location,chairperson,secretary,attendees,agenda,minutes_document_path,decisions_made,action_items,next_meeting_date,quorum_met,voting_result,confidential,meeting_duration_minutes,external_advisors,compliance_review,risk_assessment,budget_approval_amount,notes,recorded_by,record_timestamp,follow_up_status) VALUES (1,'2024-03-05','Audit Committee','ClubHQ','JohnD','SophieL',8,'AuditReport Review','/minutes/audit_20240305.pdf','No major findings','Update internal controls','2024-06-05',1,'Majority',0,90,'AuditFirmX','Completed','Medium',0.00,'Routine audit','TomB','2024-03-05T10:30:00','Pending');
INSERT INTO Club_Governance_Meetings (club_id,meeting_date,meeting_type,location,chairperson,secretary,attendees,agenda,minutes_document_path,decisions_made,action_items,next_meeting_date,quorum_met,voting_result,confidential,meeting_duration_minutes,external_advisors,compliance_review,risk_assessment,budget_approval_amount,notes,recorded_by,record_timestamp,follow_up_status) VALUES (1,'2024-05-20','Risk Committee','ClubHQ','NinaK','VictorM',9,'Risk Register Review','/minutes/risk_20240520.pdf','Adopt new cyber‑risk policy','Train staff on new protocols','2024-08-20',1,'Unanimous',0,120,'SecurityConsultCo','InProgress','High',0.00,'Emerging threats identified','LauraG','2024-05-20T14:45:00','Ongoing');

-- Youth_Team_Development_Plan: Structured plans for youth squads
CREATE TABLE Youth_Team_Development_Plan (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    academy_id INTEGER,
    age_group TEXT,
    season TEXT,
    technical_focus TEXT,
    tactical_focus TEXT,
    physical_focus TEXT,
    mental_focus TEXT,
    weekly_training_sessions INTEGER,
    match_play_frequency INTEGER,
    coach_lead TEXT,
    assistant_coach TEXT,
    performance_metrics TEXT,
    evaluation_method TEXT,
    nutrition_program TEXT,
    education_support TEXT,
    scouting_targets TEXT,
    partnership_clubs TEXT,
    budget_allocation_usd REAL,
    expected_player_output INTEGER,
    milestones TEXT,
    risk_factors TEXT,
    contingency_plan TEXT,
    notes TEXT,
    created_by TEXT,
    created_date TEXT,
    last_review_date TEXT,
    reviewer_name TEXT
);
INSERT INTO Youth_Team_Development_Plan (academy_id,age_group,season,technical_focus,tactical_focus,physical_focus,mental_focus,weekly_training_sessions,match_play_frequency,coach_lead,assistant_coach,performance_metrics,evaluation_method,nutrition_program,education_support,scouting_targets,partner_clubs,budget_allocation_usd,expected_player_output,milestones,risk_factors,contingency_plan,notes,created_by,created_date,last_review_date,reviewer_name) VALUES (10,'U15','2024/25','BallControl','PositionalPlay','Endurance','Resilience',5,2,'CoachPeter','CoachAna','PassSuccess%,DistanceCovered','VideoAnalysis','BalancedDietPlan','LocalSchools','ClubB','200000.00',12,'Qualify for U15 Cup','Injuries','Extra physio staff','Focus on homegrown talent','AnnaR','2024-01-01','2024-06-01','MarkL');
INSERT INTO Youth_Team_Development_Plan (academy_id,age_group,season,technical_focus,tactical_focus,physical_focus,mental_focus,weekly_training_sessions,match_play_frequency,coach_lead,assistant_coach,performance_metrics,evaluation_method,nutrition_program,education_support,scouting_targets,partner_clubs,budget_allocation_usd,expected_player_output,milestones,risk_factors,contingency_plan,notes,created_by,created_date,last_review_date,reviewer_name) VALUES (10,'U17','2024/25','Shooting','HighPress','Strength','Leadership',6,3,'CoachLaura','CoachMike','GoalConversion%,SprintSpeed','StatisticalModels','HighProteinPlan','TutoringProgram','RegionalLeagues','ClubC','250000.00',8,'Reach U17 National Finals','DropoutRate','Scholarship incentives','Preparing players for senior squad','BrianT','2024-01-15','2024-07-01','SophieV');
INSERT INTO Youth_Team_Development_Plan (academy_id,age_group,season,technical_focus,tactical_focus,physical_focus,mental_focus,weekly_training_sessions,match_play_frequency,coach_lead,assistant_coach,performance_metrics,evaluation_method,nutrition_program,education_support,scouting_targets,partner_clubs,budget_allocation_usd,expected_player_output,milestones,risk_factors,contingency_plan,notes,created_by,created_date,last_review_date,reviewer_name) VALUES (10,'U19','2024/25','Leadership','TransitionPlay','Power','Psychology',4,1,'CoachJames','CoachElena','AssistRate%,AerialDuels','ExpertReview','CustomMealPlan','UniversityLinks','ClubD','300000.00',5,'Integrate two players into senior squad','RegulationChanges','Flexible loan agreements','Bridge to professional level','CarlaM','2024-02-01','2024-08-01','DavidP');