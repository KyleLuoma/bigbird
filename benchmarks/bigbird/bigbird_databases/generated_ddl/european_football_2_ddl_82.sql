-- Media_Press_Release_Log
CREATE TABLE Media_Press_Release_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    release_id INTEGER,
    title TEXT,
    release_date TEXT,
    region TEXT,
    language TEXT,
    distribution_channel TEXT,
    audience_target TEXT,
    summary TEXT,
    created_by TEXT,
    approved_by TEXT,
    version TEXT,
    press_contact_email TEXT,
    press_contact_phone TEXT,
    related_match_id INTEGER,
    related_team_id INTEGER,
    related_player_id INTEGER,
    file_path TEXT,
    url TEXT,
    notes TEXT
);
INSERT INTO Media_Press_Release_Log (release_id,title,release_date,region,language,distribution_channel,audience_target,summary,created_by,approved_by,version,press_contact_email,press_contact_phone,related_match_id,related_team_id,related_player_id,file_path,url,notes) VALUES (1001,'SeasonKickoff2024','2024-07-01','Europe','English','Online','Fans','Official kickoff announcement','PRTeam','HeadOfPR','v1','media@club.com','1234567890',NULL,NULL,NULL,'/files/kickoff.pdf','http://club.com/kickoff','');
INSERT INTO Media_Press_Release_Log (release_id,title,release_date,region,language,distribution_channel,audience_target,summary,created_by,approved_by,version,press_contact_email,press_contact_phone,related_match_id,related_team_id,related_player_id,file_path,url,notes) VALUES (1002,'StadiumRenovationUpdate','2024-08-15','NorthAmerica','English','Print','Investors','Renovation progress report','PRTeam','HeadOfPR','v2','invest@club.com','0987654321',NULL,5,NULL,'/files/renovation.pdf','http://club.com/renovation','');
INSERT INTO Media_Press_Release_Log (release_id,title,release_date,region,language,distribution_channel,audience_target,summary,created_by,approved_by,version,press_contact_email,press_contact_phone,related_match_id,related_team_id,related_player_id,file_path,url,notes) VALUES (1003,'NewSponsorAgreement','2024-09-10','Asia','English','Online','Sponsors','Announcing new global sponsor','PRTeam','HeadOfPR','v1','sponsor@brand.com','1122334455',NULL,NULL,2001,'/files/sponsor.pdf','http://club.com/sponsor','');

-- Sponsor_Brand_Award
CREATE TABLE Sponsor_Brand_Award (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    award_id INTEGER,
    sponsor_id INTEGER,
    award_name TEXT,
    year INTEGER,
    category TEXT,
    award_level TEXT,
    ceremony_date TEXT,
    location TEXT,
    presenter TEXT,
    sponsor_rep_name TEXT,
    sponsor_rep_title TEXT,
    prize_amount REAL,
    description TEXT,
    logo_path TEXT,
    press_release_id INTEGER,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    rating REAL,
    verification_status TEXT
);
INSERT INTO Sponsor_Brand_Award (award_id,sponsor_id,award_name,year,category,award_level,ceremony_date,location,presenter,sponsor_rep_name,sponsor_rep_title,prize_amount,description,logo_path,press_release_id,created_at,updated_at,notes,rating,verification_status) VALUES (501,300,'GlobalPartnerAward',2023,'Partnership','Gold','2023-12-01','London','ExecutiveBoard','AliceSmith','VP Marketing',50000,'Award for outstanding global partnership','/logos/partner.png',1003,'2023-11-01','2023-11-15','',4.8,'Verified');
INSERT INTO Sponsor_Brand_Award (award_id,sponsor_id,award_name,year,category,award_level,ceremony_date,location,presenter,sponsor_rep_name,sponsor_rep_title,prize_amount,description,logo_path,press_release_id,created_at,updated_at,notes,rating,verification_status) VALUES (502,301,'InnovationLeader',2024,'Technology','Silver','2024-01-20','Berlin','TechCommittee','BobJones','CTO',30000,'Recognizes innovative tech solutions','/logos/innovation.png',1002,'2023-12-10','2024-01-05','',4.5,'Pending');
INSERT INTO Sponsor_Brand_Award (award_id,sponsor_id,award_name,year,category,award_level,ceremony_date,location,presenter,sponsor_rep_name,sponsor_rep_title,prize_amount,description,logo_path,press_release_id,created_at,updated_at,notes,rating,verification_status) VALUES (503,302,'CommunityImpact',2022,'CSR','Bronze','2022-09-15','NewYork','CSRBoard','CarolLee','CSR Manager',15000,'Award for community projects','/logos/community.png',1001,'2022-08-20','2022-09-01','',4.2,'Verified');

-- Stadium_Architectural_Details
CREATE TABLE Stadium_Architectural_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    architect_firm TEXT,
    design_style TEXT,
    construction_start_date TEXT,
    construction_end_date TEXT,
    total_cost REAL,
    seating_capacity INTEGER,
    roof_type TEXT,
    field_surface TEXT,
    lighting_rating TEXT,
    acoustic_rating TEXT,
    sustainability_certification TEXT,
    number_of_exits INTEGER,
    accessibility_features TEXT,
    parking_spaces INTEGER,
    VIP_boxes INTEGER,
    concession_stands INTEGER,
    media_center_area_sqm REAL,
    WiFi_coverage_percent REAL,
    maintenance_cycle_months INTEGER
);
INSERT INTO Stadium_Architectural_Details (stadium_id,architect_firm,design_style,construction_start_date,construction_end_date,total_cost,seating_capacity,roof_type,field_surface,lighting_rating,acoustic_rating,sustainability_certification,number_of_exits,accessibility_features,parking_spaces,VIP_boxes,concession_stands,media_center_area_sqm,WiFi_coverage_percent,maintenance_cycle_months) VALUES (10,'ArcDesign','Modern','2020-01-15','2022-06-30',250000000,60000,'Retractable','HybridGrass','A+','B+','LEEDGold',48,'Ramps,Elevators',12000,50,30,1500.5,98.5,12);
INSERT INTO Stadium_Architectural_Details (stadium_id,architect_firm,design_style,construction_start_date,construction_end_date,total_cost,seating_capacity,roof_type,field_surface,lighting_rating,acoustic_rating,sustainability_certification,number_of_exits,accessibility_features,parking_spaces,VIP_boxes,concession_stands,media_center_area_sqm,WiFi_coverage_percent,maintenance_cycle_months) VALUES (11,'BlueStone','Futuristic','2018-03-01','2020-11-20',180000000,45000,'Fixed','NaturalGrass','A','A-','BREEAM','34','Ramps,WideAisles',9000,30,25,1120.0,95.0,10);
INSERT INTO Stadium_Architectural_Details (stadium_id,architect_firm,design_style,construction_start_date,construction_end_date,total_cost,seating_capacity,roof_type,field_surface,lighting_rating,acoustic_rating,sustainability_certification,number_of_exits,accessibility_features,parking_spaces,VIP_boxes,concession_stands,media_center_area_sqm,WiFi_coverage_percent,maintenance_cycle_months) VALUES (12,'GreenArc','EcoFriendly','2021-05-10','2023-12-01',300000000,75000,'Hybrid','HybridGrass','A+','A+', 'LEEDPlatinum',60,'Ramps,AssistiveTech',15000,80,40,2000.0,99.0,14);

-- Audio_Commentary_Team
CREATE TABLE Audio_Commentary_Team (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    commentator_primary TEXT,
    commentator_secondary TEXT,
    color_commentator TEXT,
    production_lead TEXT,
    studio_location TEXT,
    audio_format TEXT,
    broadcast_network TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    language TEXT,
    microphone_model TEXT,
    headphones_model TEXT,
    recording_device TEXT,
    notes TEXT,
    rating REAL,
    audience_feedback_score REAL,
    created_at TEXT,
    updated_at TEXT,
    status TEXT
);
INSERT INTO Audio_Commentary_Team (match_id,commentator_primary,commentator_secondary,color_commentator,production_lead,studio_location,audio_format,broadcast_network,contract_start_date,contract_end_date,language,microphone_model,headphones_model,recording_device,notes,rating,audience_feedback_score,created_at,updated_at,status) VALUES (2001,'JohnDoe','MikeSmith','LauraBrown','EmmaWhite','StudioA','Stereo','GlobalSports','2023-01-01','2025-12-31','English','ShureSM58','SonyWH1000','ZoomH5','',4.7,4.9,'2023-01-02','2023-01-10','Active');
INSERT INTO Audio_Commentary_Team (match_id,commentator_primary,commentator_secondary,color_commentator,production_lead,studio_location,audio_format,broadcast_network,contract_start_date,contract_end_date,language,microphone_model,headphones_model,recording_device,notes,rating,audience_feedback_score,created_at,updated_at,status) VALUES (2002,'AlexGreen','SamLee','NinaGrey','LiamBlack','StudioB','Mono','EuroBroadcast','2024-03-15','2026-03-14','Spanish','RodeNT5','BoseQC35','ZoomH4n','',4.5,4.6,'2024-03-16','2024-03-20','Pending');
INSERT INTO Audio_Commentary_Team (match_id,commentator_primary,commentator_secondary,color_commentator,production_lead,studio_location,audio_format,broadcast_network,contract_start_date,contract_end_date,language,microphone_model,headphones_model,recording_device,notes,rating,audience_feedback_score,created_at,updated_at,status) VALUES (2003,'ChrisBlue','PatKim','OliviaRed','SofiaGold','StudioC','Stereo','AsiaNetwork','2022-07-01','2024-06-30','Mandarin','Audio-TechnicaAT2020','SennheiserHD','ZoomH6','',4.8,4.7,'2022-07-02','2022-07-05','Completed');

-- Fantasy_League_User_Stats
CREATE TABLE Fantasy_League_User_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    season TEXT,
    league_id INTEGER,
    total_points INTEGER,
    total_goals INTEGER,
    total_assists INTEGER,
    total_clean_sheets INTEGER,
    transfers_in INTEGER,
    transfers_out INTEGER,
    budget_remaining REAL,
    rank INTEGER,
    average_points_per_game REAL,
    highest_score_week INTEGER,
    lowest_score_week INTEGER,
    most_transferred_in_player_id INTEGER,
    most_transferred_out_player_id INTEGER,
    team_name TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);
INSERT INTO Fantasy_League_User_Stats (user_id,season,league_id,total_points,total_goals,total_assists,total_clean_sheets,transfers_in,transfers_out,budget_remaining,rank,average_points_per_game,highest_score_week,lowest_score_week,most_transferred_in_player_id,most_transferred_out_player_id,team_name,created_at,updated_at,notes) VALUES (501,'2024',1,1450,80,65,20,30,28,12.5,5,75.0,150,30,2001,2005,'RedRaptors','2024-04-01','2024-04-02','');
INSERT INTO Fantasy_League_User_Stats (user_id,season,league_id,total_points,total_goals,total_assists,total_clean_sheets,transfers_in,transfers_out,budget_remaining,rank,average_points_per_game,highest_score_week,lowest_score_week,most_transferred_in_player_id,most_transferred_out_player_id,team_name,created_at,updated_at,notes) VALUES (502,'2024',1,1320,70,55,25,25,27,10.0,12,66.0,140,35,2002,2006,'BlueBlazers','2024-04-01','2024-04-02','');
INSERT INTO Fantasy_League_User_Stats (user_id,season,league_id,total_points,total_goals,total_assists,total_clean_sheets,transfers_in,transfers_out,budget_remaining,rank,average_points_per_game,highest_score_week,lowest_score_week,most_transferred_in_player_id,most_transferred_out_player_id,team_name,created_at,updated_at,notes) VALUES (503,'2024',2,1580,90,80,22,32,30,13.0,2,79.0,160,28,2003,2007,'GreenGiants','2024-04-01','2024-04-02','');

-- Virtual_Reality_Event_Stats
CREATE TABLE Virtual_Reality_Event_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    vr_platform TEXT,
    concurrent_users INTEGER,
    peak_concurrent_users INTEGER,
    avg_session_duration_sec INTEGER,
    total_play_time_sec INTEGER,
    device_type TEXT,
    location TEXT,
    content_type TEXT,
    sponsor_id INTEGER,
    engagement_score REAL,
    feedback_rating REAL,
    bug_reports_count INTEGER,
    patches_applied INTEGER,
    launch_date TEXT,
    end_date TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    status TEXT
);
INSERT INTO Virtual_Reality_Event_Stats (event_id,vr_platform,concurrent_users,peak_concurrent_users,avg_session_duration_sec,total_play_time_sec,device_type,location,content_type,sponsor_id,engagement_score,feedback_rating,bug_reports_count,patches_applied,launch_date,end_date,created_at,updated_at,notes,status) VALUES (9001,'Oculus','1500','2000','900','1350000','Headset','USA','MatchReplay',300,'8.5','4.2',12,3,'2024-05-01','2024-05-07','2024-05-01','2024-05-08','', 'Closed');
INSERT INTO Virtual_Reality_Event_Stats (event_id,vr_platform,concurrent_users,peak_concurrent_users,avg_session_duration_sec,total_play_time_sec,device_type,location,content_type,sponsor_id,engagement_score,feedback_rating,bug_reports_count,patches_applied,launch_date,end_date,created_at,updated_at,notes,status) VALUES (9002,'HTC','800','1200','750','900000','Desktop','UK','TrainingModule',301,'7.8','4.0',8,2,'2024-06-10','2024-06-15','2024-06-10','2024-06-16','', 'Closed');
INSERT INTO Virtual_Reality_Event_Stats (event_id,vr_platform,concurrent_users,peak_concurrent_users,avg_session_duration_sec,total_play_time_sec,device_type,location,content_type,sponsor_id,engagement_score,feedback_rating,bug_reports_count,patches_applied,launch_date,end_date,created_at,updated_at,notes,status) VALUES (9003,'Valve','2000','2500','1000','1800000','Headset','Germany','FanInteraction',302,'9.1','4.5',5,4,'2024-07-20','2024-07-27','2024-07-20','2024-07-28','', 'Closed');

-- Environmental_Impact_Assessment
CREATE TABLE Environmental_Impact_Assessment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    assessment_id INTEGER,
    stadium_id INTEGER,
    assessment_date TEXT,
    assessor_name TEXT,
    carbon_footprint_tonnes REAL,
    water_usage_cubic_meters REAL,
    waste_generated_tonnes REAL,
    recycling_rate_percent REAL,
    energy_consumption_mwh REAL,
    renewable_energy_percent REAL,
    air_quality_index INTEGER,
    noise_level_db REAL,
    mitigation_measures TEXT,
    compliance_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    rating REAL,
    verification_date TEXT
);
INSERT INTO Environmental_Impact_Assessment (assessment_id,stadium_id,assessment_date,assessor_name,carbon_footprint_tonnes,water_usage_cubic_meters,waste_generated_tonnes,recycling_rate_percent,energy_consumption_mwh,renewable_energy_percent,air_quality_index,noise_level_db,mitigation_measures,compliance_status,notes,created_at,updated_at,rating,verification_date) VALUES (8001,10,'2024-03-15','EcoAuditCorp',1200.5,85000,30.2,45.0,5000,60.0,42,78.5,'SolarPanels,WaterReuse','Compliant','', '2024-03-16','2024-03-20',4.6,'2024-03-25');
INSERT INTO Environmental_Impact_Assessment (assessment_id,stadium_id,assessment_date,assessor_name,carbon_footprint_tonnes,water_usage_cubic_meters,waste_generated_tonnes,recycling_rate_percent,energy_consumption_mwh,renewable_energy_percent,air_quality_index,noise_level_db,mitigation_measures,compliance_status,notes,created_at,updated_at,rating,verification_date) VALUES (8002,11,'2024-04-10','GreenMetrics',950.0,72000,25.0,50.0,4200,55.0,38,72.0,'LEDLighting,RecyclingProgram','Compliant','', '2024-04-11','2024-04-15',4.8,'2024-04-20');
INSERT INTO Environmental_Impact_Assessment (assessment_id,stadium_id,assessment_date,assessor_name,carbon_footprint_tonnes,water_usage_cubic_meters,waste_generated_tonnes,recycling_rate_percent,energy_consumption_mwh,renewable_energy_percent,air_quality_index,noise_level_db,mitigation_measures,compliance_status,notes,created_at,updated_at,rating,verification_date) VALUES (8003,12,'2024-05-05','SustainCheck',1400.0,95000,35.5,42.0,6200,65.0,45,80.0,'WindTurbines,GreenRoof','Pending','', '2024-05-06','2024-05-10',4.4,'2024-05-15');

-- Training_Simulation_Metrics
CREATE TABLE Training_Simulation_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    simulation_id INTEGER,
    team_id INTEGER,
    scenario_name TEXT,
    duration_minutes INTEGER,
    player_participation_count INTEGER,
    average_speed_kmh REAL,
    max_speed_kmh REAL,
    distance_covered_km REAL,
    tactical_success_rate_percent REAL,
    fatigue_index REAL,
    injury_risk_score REAL,
    equipment_used TEXT,
    software_version TEXT,
    analyst_name TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    rating REAL,
    status TEXT
);
INSERT INTO Training_Simulation_Metrics (simulation_id,team_id,scenario_name,duration_minutes,player_participation_count,average_speed_kmh,max_speed_kmh,distance_covered_km,tactical_success_rate_percent,fatigue_index,injury_risk_score,equipment_used,software_version,analyst_name,created_at,updated_at,notes,rating,status) VALUES (3001,5,'HighPressAttack',45,11,22.5,35.0,18.0,78.0,0.4,0.2,'VRHeadsets,TrackerV2','1.3.5','JohnDoe','2024-03-01','2024-03-02','',4.7,'Completed');
INSERT INTO Training_Simulation_Metrics (simulation_id,team_id,scenario_name,duration_minutes,player_participation_count,average_speed_kmh,max_speed_kmh,distance_covered_km,tactical_success_rate_percent,fatigue_index,injury_risk_score,equipment_used,software_version,analyst_name,created_at,updated_at,notes,rating,status) VALUES (3002,6,'CounterAttack',30,9,20.0,33.0,12.5,65.0,0.3,0.15,'VRGloves,TrackerV1','1.3.5','EmmaWhite','2024-03-05','2024-03-06','',4.5,'Completed');
INSERT INTO Training_Simulation_Metrics (simulation_id,team_id,scenario_name,duration_minutes,player_participation_count,average_speed_kmh,max_speed_kmh,distance_covered_km,tactical_success_rate_percent,fatigue_index,injury_risk_score,equipment_used,software_version,analyst_name,created_at,updated_at,notes,rating,status) VALUES (3003,7,'SetPieceDefense',60,11,18.0,30.0,20.0,82.0,0.5,0.25,'VRHeadsets,TrackerV3','1.4.0','LiamBlack','2024-03-10','2024-03-11','',4.8,'Completed');

-- Global_Fan_Demographics
CREATE TABLE Global_Fan_Demographics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    country_code TEXT,
    region TEXT,
    city TEXT,
    age INTEGER,
    gender TEXT,
    preferred_team_id INTEGER,
    engagement_level_score REAL,
    average_match_attendance INTEGER,
    merchandise_spending_usd REAL,
    social_media_platform TEXT,
    follower_count INTEGER,
    subscription_status TEXT,
    loyalty_tier TEXT,
    last_purchase_date TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    rating REAL,
    verification_status TEXT
);
INSERT INTO Global_Fan_Demographics (fan_id,country_code,region,city,age,gender,preferred_team_id,engagement_level_score,average_match_attendance,merchandise_spending_usd,social_media_platform,follower_count,subscription_status,loyalty_tier,last_purchase_date,created_at,updated_at,notes,rating,verification_status) VALUES (10001,'GB','England','London',28,'Male',5,8.5,2,150.0,'Twitter',1200,'Active','Gold','2024-04-20','2024-04-01','2024-04-02','',4.7,'Verified');
INSERT INTO Global_Fan_Demographics (fan_id,country_code,region,city,age,gender,preferred_team_id,engagement_level_score,average_match_attendance,merchandise_spending_usd,social_media_platform,follower_count,subscription_status,loyalty_tier,last_purchase_date,created_at,updated_at,notes,rating,verification_status) VALUES (10002,'US','California','LosAngeles',34,'Female',8,7.2,5,200.0,'Instagram',2500,'Active','Silver','2024-04-15','2024-04-01','2024-04-02','',4.5,'Verified');
INSERT INTO Global_Fan_Demographics (fan_id,country_code,region,city,age,gender,preferred_team_id,engagement_level_score,average_match_attendance,merchandise_spending_usd,social_media_platform,follower_count,subscription_status,loyalty_tier,last_purchase_date,created_at,updated_at,notes,rating,verification_status) VALUES (10003,'JP','Kanto','Tokyo',22,'Male',12,9.0,3,180.0,'TikTok',3000,'Active','Platinum','2024-04-18','2024-04-01','2024-04-02','',4.8,'Verified');

-- Social_Media_Trend_Analytics
CREATE TABLE Social_Media_Trend_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    trend_id INTEGER,
    platform TEXT,
    start_date TEXT,
    end_date TEXT,
    hashtag TEXT,
    mentions_count INTEGER,
    reach_estimate INTEGER,
    sentiment_score REAL,
    top_influencer_handle TEXT,
    influencer_followers INTEGER,
    engagement_rate_percent REAL,
    content_type_distribution TEXT,
    geographic_distribution TEXT,
    peak_hour TEXT,
    average_daily_posts INTEGER,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    rating REAL,
    status TEXT
);
INSERT INTO Social_Media_Trend_Analytics (trend_id,platform,start_date,end_date,hashtag,mentions_count,reach_estimate,sentiment_score,top_influencer_handle,influencer_followers,engagement_rate_percent,content_type_distribution,geographic_distribution,peak_hour,average_daily_posts,created_at,updated_at,notes,rating,status) VALUES (4001,'Twitter','2024-04-01','2024-04-07','#ClubVictory',25000,500000,0.85,'@FanGuru','150000','2.5','Video,Image,Text','EU,NA','20:00','350','2024-04-08','2024-04-09','',4.9,'Active');
INSERT INTO Social_Media_Trend_Analytics (trend_id,platform,start_date,end_date,hashtag,mentions_count,reach_estimate,sentiment_score,top_influencer_handle,influencer_followers,engagement_rate_percent,content_type_distribution,geographic_distribution,peak_hour,average_daily_posts,created_at,updated_at,notes,rating,status) VALUES (4002,'Instagram','2024-03-15','2024-03-21','#TeamSpirit',18000,350000,0.78,'@InstaStar','200000','3.0','Image,Story','AS,EU','19:30','270','2024-03-22','2024-03-23','',4.6,'Active');
INSERT INTO Social_Media_Trend_Analytics (trend_id,platform,start_date,end_date,hashtag,mentions_count,reach_estimate,sentiment_score,top_influencer_handle,influencer_followers,engagement_rate_percent,content_type_distribution,geographic_distribution,peak_hour,average_daily_posts,created_at,updated_at,notes,rating,status) VALUES (4003,'TikTok','2024-02-20','2024-02-27','#GoalReplays',30000,800000,0.90,'@TikTalker','180000','4.1','Video,ShortClip','NA,SA','21:00','420','2024-02-28','2024-03-01','',5.0,'Active');