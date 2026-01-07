-- Table storing per‑match player statistics
CREATE TABLE Player_Match_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    player_api_id INTEGER,
    team_api_id INTEGER,
    minutes_played INTEGER,
    goals INTEGER,
    assists INTEGER,
    shots_on_target INTEGER,
    passes_completed INTEGER,
    distance_covered_km REAL,
    duels_won INTEGER,
    fouls_committed INTEGER,
    yellow_cards INTEGER,
    red_cards INTEGER,
    rating REAL,
    position TEXT,
    aerial_duels_won INTEGER,
    interceptions INTEGER,
    key_passes INTEGER,
    dribbles_successful INTEGER,
    tackles INTEGER,
    clearances INTEGER,
    offsides INTEGER,
    saves INTEGER,
    cross_accuracy_pct REAL
);
INSERT INTO Player_Match_Stats (match_id,player_api_id,team_api_id,minutes_played,goals,assists,shots_on_target,passes_completed,distance_covered_km,duels_won,fouls_committed,yellow_cards,red_cards,rating,position,aerial_duels_won,interceptions,key_passes,dribbles_successful,tackles,clearances,offsides,saves,cross_accuracy_pct) VALUES (1001,20001,3001,90,2,1,5,45,10.5,30,2,0,0,8.3,Forward,4,3,2,6,5,1,0,0,72.5);
INSERT INTO Player_Match_Stats (match_id,player_api_id,team_api_id,minutes_played,goals,assists,shots_on_target,passes_completed,distance_covered_km,duels_won,fouls_committed,yellow_cards,red_cards,rating,position,aerial_duels_won,interceptions,key_passes,dribbles_successful,tackles,clearances,offsides,saves,cross_accuracy_pct) VALUES (1002,20002,3002,75,0,0,1,60,9.2,22,1,1,0,6.5,Midfielder,2,5,4,3,7,2,2,0,65.0);
INSERT INTO Player_Match_Stats (match_id,player_api_id,team_api_id,minutes_played,goals,assists,shots_on_target,passes_completed,distance_covered_km,duels_won,fouls_committed,yellow_cards,red_cards,rating,position,aerial_duels_won,interceptions,key_passes,dribbles_successful,tackles,clearances,offsides,saves,cross_accuracy_pct) VALUES (1003,20003,3003,60,0,0,0,30,5.8,15,3,0,0,5.2,Goalkeeper,0,0,0,0,1,0,0,5,0.0);

-- Table logging scouting reports for teams
CREATE TABLE Team_Scouting_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    scout_id INTEGER,
    team_api_id INTEGER,
    player_api_id INTEGER,
    report_date TEXT,
    overall_score INTEGER,
    potential_score INTEGER,
    physical_score INTEGER,
    technical_score INTEGER,
    mental_score INTEGER,
    position TEXT,
    recommended_action TEXT,
    contract_status TEXT,
    transfer_fee_estimate_usd INTEGER,
    market_value_usd INTEGER,
    age INTEGER,
    height_cm INTEGER,
    weight_kg INTEGER,
    nationality TEXT,
    source_agency TEXT,
    scouting_region TEXT,
    match_observed_id INTEGER,
    video_link TEXT,
    notes TEXT
);
INSERT INTO Team_Scouting_Logs (scout_id,team_api_id,player_api_id,report_date,overall_score,potential_score,physical_score,technical_score,mental_score,position,recommended_action,contract_status,transfer_fee_estimate_usd,market_value_usd,age,height_cm,weight_kg,nationality,source_agency,scouting_region,match_observed_id,video_link,notes) VALUES (501,3001,20010,'2023-03-10',78,85,80,75,70,Forward,Purchase,Available,25000000,22000000,22,180,76,Spain,ScoutCo,Europe,4001,'http://videos.example.com/20010','Strong finishing');
INSERT INTO Team_Scouting_Logs (scout_id,team_api_id,player_api_id,report_date,overall_score,potential_score,physical_score,technical_score,mental_score,position,recommended_action,contract_status,transfer_fee_estimate_usd,market_value_usd,age,height_cm,weight_kg,nationality,source_agency,scouting_region,match_observed_id,video_link,notes) VALUES (502,3002,20011,'2023-04-02',72,78,70,68,65,Midfielder,Loan,UnderContract,12000000,11000000,24,175,70,Germany,ScoutNet,Europe,4002,'http://videos.example.com/20011','Good vision');
INSERT INTO Team_Scouting_Logs (scout_id,team_api_id,player_api_id,report_date,overall_score,potential_score,physical_score,technical_score,mental_score,position,recommended_action,contract_status,transfer_fee_estimate_usd,market_value_usd,age,height_cm,weight_kg,nationality,source_agency,scouting_region,match_observed_id,video_link,notes) VALUES (503,3003,20012,'2023-05-18',81,88,85,83,80,Defender,Purchase,Available,30000000,28000000,21,185,85,Italy,GlobalScout,Europe,4003,'http://videos.example.com/20012','Excellent aerial ability');

-- Table defining season calendar for each league
CREATE TABLE League_Season_Calendar (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    stage_name TEXT,
    start_date TEXT,
    end_date TEXT,
    matchday_number INTEGER,
    total_matchdays INTEGER,
    break_type TEXT,
    break_start_date TEXT,
    break_end_date TEXT,
    champion_team_api_id INTEGER,
    relegated_team_api_id1 INTEGER,
    relegated_team_api_id2 INTEGER,
    promoted_team_api_id1 INTEGER,
    promoted_team_api_id2 INTEGER,
    points_to_win INTEGER,
    average_goals_per_match REAL,
    attendance_average INTEGER,
    tv_revenue_share_pct REAL,
    sponsorship_revenue_usd INTEGER,
    total_matches INTEGER,
    total_goals INTEGER,
    total_attendance INTEGER
);
INSERT INTO League_Season_Calendar (league_id,season,stage_name,start_date,end_date,matchday_number,total_matchdays,break_type,break_start_date,break_end_date,champion_team_api_id,relegated_team_api_id1,relegated_team_api_id2,promoted_team_api_id1,promoted_team_api_id2,points_to_win,average_goals_per_match,attendance_average,tv_revenue_share_pct,sponsorship_revenue_usd,total_matches,total_goals,total_attendance) VALUES (1,'2022/2023','Regular',2022-08-01,2023-05-20,1,38,'Winter','2022-12-20','2023-01-10',3005,3010,3011,3012,3013,85,2.8,25000,35.0,150000000,380,1064,9500000);
INSERT INTO League_Season_Calendar (league_id,season,stage_name,start_date,end_date,matchday_number,total_matchdays,break_type,break_start_date,break_end_date,champion_team_api_id,relegated_team_api_id1,relegated_team_api_id2,promoted_team_api_id1,promoted_team_api_id2,points_to_win,average_goals_per_match,attendance_average,tv_revenue_share_pct,sponsorship_revenue_usd,total_matches,total_goals,total_attendance) VALUES (2,'2022/2023','Regular',2022-09-01,2023-06-01,1,34,'Summer','2023-03-15','2023-04-05',4005,4010,4011,4012,4013,78,2.5,18000,32.5,120000000,306,850,7200000);
INSERT INTO League_Season_Calendar (league_id,season,stage_name,start_date,end_date,matchday_number,total_matchdays,break_type,break_start_date,break_end_date,champion_team_api_id,relegated_team_api_id1,relegated_team_api_id2,promoted_team_api_id1,promoted_team_api_id2,points_to_win,average_goals_per_match,attendance_average,tv_revenue_share_pct,sponsorship_revenue_usd,total_matches,total_goals,total_attendance) VALUES (3,'2022/2023','Regular',2022-07-15,2023-04-30,1,30,'Winter','2022-12-01','2022-12-20',5005,5010,5011,5012,5013,80,2.9,22000,38.0,130000000,300,870,6600000);

-- Table recording environmental sensor readings for stadiums
CREATE TABLE Stadium_Environmental_Readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    reading_timestamp TEXT,
    temperature_c REAL,
    humidity_pct REAL,
    air_quality_index INTEGER,
    noise_db REAL,
    wind_speed_kph REAL,
    precipitation_mm REAL,
    solar_irradiance_wm2 REAL,
    co2_ppm INTEGER,
    pm2_5_ugm3 REAL,
    pm10_ugm3 REAL,
    o3_ppb INTEGER,
    no2_ppb INTEGER,
    so2_ppb INTEGER,
    latitude REAL,
    longitude REAL,
    sensor_status TEXT,
    maintenance_date TEXT,
    notes TEXT
);
INSERT INTO Stadium_Environmental_Readings (stadium_id,reading_timestamp,temperature_c,humidity_pct,air_quality_index,noise_db,wind_speed_kph,precipitation_mm,solar_irradiance_wm2,co2_ppm,pm2_5_ugm3,pm10_ugm3,o3_ppb,no2_ppb,so2_ppb,latitude,longitude,sensor_status,maintenance_date,notes) VALUES (100,'2023-09-01 14:00',22.5,55.0,42,68.0,12.3,0.0,850.0,420,12.5,20.1,30,15,5,40.7128,-74.0060,Active,'2023-08-01','Routine reading');
INSERT INTO Stadium_Environmental_Readings (stadium_id,reading_timestamp,temperature_c,humidity_pct,air_quality_index,noise_db,wind_speed_kph,precipitation_mm,solar_irradiance_wm2,co2_ppm,pm2_5_ugm3,pm10_ugm3,o3_ppb,no2_ppb,so2_ppb,latitude,longitude,sensor_status,maintenance_date,notes) VALUES (101,'2023-09-01 14:05',23.0,58.0,38,70.0,10.0,0.0,870.0,415,11.0,19.0,28,13,4,51.5074,-0.1278,Active,'2023-08-01','Clear day');
INSERT INTO Stadium_Environmental_Readings (stadium_id,reading_timestamp,temperature_c,humidity_pct,air_quality_index,noise_db,wind_speed_kph,precipitation_mm,solar_irradiance_wm2,co2_ppm,pm2_5_ugm3,pm10_ugm3,o3_ppb,no2_ppb,so2_ppb,latitude,longitude,sensor_status,maintenance_date,notes) VALUES (102,'2023-09-01 14:10',21.8,60.0,45,65.0,8.5,0.2,830.0,430,13.2,22.5,32,16,6,48.8566,2.3522,Active,'2023-08-01','Light drizzle');

-- Table summarizing digital engagement metrics for fan clubs
CREATE TABLE Fan_Digital_Engagement_Summary (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_club_id INTEGER,
    season TEXT,
    total_posts INTEGER,
    total_comments INTEGER,
    total_likes INTEGER,
    total_shares INTEGER,
    average_engagement_rate REAL,
    peak_month TEXT,
    most_active_platform TEXT,
    video_views INTEGER,
    story_views INTEGER,
    live_stream_minutes INTEGER,
    newsletter_subscriptions INTEGER,
    app_sessions INTEGER,
    push_notifications_sent INTEGER,
    click_through_rate REAL,
    conversion_rate REAL,
    churn_rate REAL,
    new_members INTEGER,
    retained_members INTEGER,
    revenue_generated_usd INTEGER,
    average_session_duration_sec REAL
);
INSERT INTO Fan_Digital_Engagement_Summary (fan_club_id,season,total_posts,total_comments,total_likes,total_shares,average_engagement_rate,peak_month,most_active_platform,video_views,story_views,live_stream_minutes,newsletter_subscriptions,app_sessions,push_notifications_sent,click_through_rate,conversion_rate,churn_rate,new_members,retained_members,revenue_generated_usd,average_session_duration_sec) VALUES (2001,'2022/2023',3500,12000,45000,8000,3.2,'October','Instagram',250000,180000,7200,15000,30000,50000,2.5,1.1,4.0,800,1200,350000,180.5);
INSERT INTO Fan_Digital_Engagement_Summary (fan_club_id,season,total_posts,total_comments,total_likes,total_shares,average_engagement_rate,peak_month,most_active_platform,video_views,story_views,live_stream_minutes,newsletter_subscriptions,app_sessions,push_notifications_sent,click_through_rate,conversion_rate,churn_rate,new_members,retained_members,revenue_generated_usd,average_session_duration_sec) VALUES (2002,'2022/2023',2800,9500,38000,6000,2.9,'December','Twitter',200000,150000,5400,13000,25000,40000,2.2,0.9,5.0,600,1100,280000,165.0);
INSERT INTO Fan_Digital_Engagement_Summary (fan_club_id,season,total_posts,total_comments,total_likes,total_shares,average_engagement_rate,peak_month,most_active_platform,video_views,story_views,live_stream_minutes,newsletter_subscriptions,app_sessions,push_notifications_sent,click_through_rate,conversion_rate,churn_rate,new_members,retained_members,revenue_generated_usd,average_session_duration_sec) VALUES (2003,'2022/2023',4100,14000,52000,9500,3.5,'September','TikTok',300000,210000,9000,17000,35000,60000,2.8,1.3,3.5,900,1300,420000,190.2);

-- Table detailing sponsor contract information for clubs
CREATE TABLE Sponsor_Contract_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    club_id INTEGER,
    contract_start_date TEXT,
    contract_end_date TEXT,
    contract_value_usd INTEGER,
    activation_events INTEGER,
    logo_placement_positions TEXT,
    media_exposure_hours INTEGER,
    exclusivity_category TEXT,
    renewal_option TEXT,
    performance_clauses TEXT,
    penalty_fee_usd INTEGER,
    brand_alignment_score INTEGER,
    social_media_mentions INTEGER,
    tv_ad_spots INTEGER,
    stadium_banner_count INTEGER,
    digital_ad_impressions INTEGER,
    hospitality_packages INTEGER,
    community_initiatives TEXT,
    sponsor_contact_name TEXT,
    sponsor_contact_email TEXT,
    sponsor_contact_phone TEXT
);
INSERT INTO Sponsor_Contract_Details (sponsor_id,club_id,contract_start_date,contract_end_date,contract_value_usd,activation_events,logo_placement_positions,media_exposure_hours,exclusivity_category,renewal_option,performance_clauses,penalty_fee_usd,brand_alignment_score,social_media_mentions,tv_ad_spots,stadium_banner_count,digital_ad_impressions,hospitality_packages,community_initiatives,sponsor_contact_name,sponsor_contact_email,sponsor_contact_phone) VALUES (9001,1,'2023-01-01','2026-12-31',50000000,12,'Jersey,Stadium,Website',2500,'CategoryA','Option1','KPIs>80%',500000,85,1200,300,150,8000000,25,'YouthPrograms','JohnDoe','john.doe@example.com','5551234567');
INSERT INTO Sponsor_Contract_Details (sponsor_id,club_id,contract_start_date,contract_end_date,contract_value_usd,activation_events,logo_placement_positions,media_exposure_hours,exclusivity_category,renewal_option,performance_clauses,penalty_fee_usd,brand_alignment_score,social_media_mentions,tv_ad_spots,stadium_banner_count,digital_ad_impressions,hospitality_packages,community_initiatives,sponsor_contact_name,sponsor_contact_email,sponsor_contact_phone) VALUES (9002,2,'2022-07-01','2025-06-30',35000000,8,'Stadium,App',1800,'CategoryB','Option2','KPIs>75%',350000,78,900,200,100,5000000,15,'CharityRuns','JaneSmith','jane.smith@example.com','5559876543');
INSERT INTO Sponsor_Contract_Details (sponsor_id,club_id,contract_start_date,contract_end_date,contract_value_usd,activation_events,logo_placement_positions,media_exposure_hours,exclusivity_category,renewal_option,performance_clauses,penalty_fee_usd,brand_alignment_score,social_media_mentions,tv_ad_spots,stadium_banner_count,digital_ad_impressions,hospitality_packages,community_initiatives,sponsor_contact_name,sponsor_contact_email,sponsor_contact_phone) VALUES (9003,3,'2024-03-15','2027-03-14',42000000,10,'Jersey,Website',2100,'CategoryA','Option1','KPIs>85%',420000,82,1100,250,130,6500000,20,'SchoolProgram','MikeBrown','mike.brown@example.com','5552468101');

-- Table recording referee evaluation scores per match
CREATE TABLE Referee_Evaluation_Scores (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    referee_id INTEGER,
    match_id INTEGER,
    evaluation_date TEXT,
    overall_score INTEGER,
    fitness_score INTEGER,
    decision_accuracy_score INTEGER,
    positioning_score INTEGER,
    communication_score INTEGER,
    control_score INTEGER,
    disciplinary_consistency_score INTEGER,
    var_usage_score INTEGER,
    pressure_handling_score INTEGER,
    games_managed_this_season INTEGER,
    yellow_cards_given INTEGER,
    red_cards_given INTEGER,
    fouls_called INTEGER,
    offsides_correct INTEGER,
    penalty_decisions_correct INTEGER,
    average_decision_time_sec REAL,
    notes TEXT
);
INSERT INTO Referee_Evaluation_Scores (referee_id,match_id,evaluation_date,overall_score,fitness_score,decision_accuracy_score,positioning_score,communication_score,control_score,disciplinary_consistency_score,var_usage_score,pressure_handling_score,games_managed_this_season,yellow_cards_given,red_cards_given,fouls_called,offsides_correct,penalty_decisions_correct,average_decision_time_sec,notes) VALUES (601,1001,'2023-05-01',88,92,90,85,87,89,91,86,90,25,3,0,45,40,5,7.2,'Excellent performance');
INSERT INTO Referee_Evaluation_Scores (referee_id,match_id,evaluation_date,overall_score,fitness_score,decision_accuracy_score,positioning_score,communication_score,control_score,disciplinary_consistency_score,var_usage_score,pressure_handling_score,games_managed_this_season,yellow_cards_given,red_cards_given,fouls_called,offsides_correct,penalty_decisions_correct,average_decision_time_sec,notes) VALUES (602,1002,'2023-05-03',81,85,78,80,82,80,79,75,77,22,4,1,50,38,4,8.5,'Solid but room for improvement');
INSERT INTO Referee_Evaluation_Scores (referee_id,match_id,evaluation_date,overall_score,fitness_score,decision_accuracy_score,positioning_score,communication_score,control_score,disciplinary_consistency_score,var_usage_score,pressure_handling_score,games_managed_this_season,yellow_cards_given,red_cards_given,fouls_called,offsides_correct,penalty_decisions_correct,average_decision_time_sec,notes) VALUES (603,1003,'2023-05-05',74,78,70,72,73,71,68,65,70,18,2,0,30,35,3,9.1,'Inconsistent decisions');

-- Table allocating resources for training centers
CREATE TABLE Training_Center_Resource_Allocation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    allocation_date TEXT,
    budget_usd INTEGER,
    staff_count INTEGER,
    facility_maintenance_usd INTEGER,
    equipment_purchase_usd INTEGER,
    nutrition_program_usd INTEGER,
    medical_services_usd INTEGER,
    technology_investment_usd INTEGER,
    player_accommodation_usd INTEGER,
    transport_budget_usd INTEGER,
    energy_cost_usd INTEGER,
    water_cost_usd INTEGER,
    waste_management_usd INTEGER,
    security_cost_usd INTEGER,
    training_sessions_scheduled INTEGER,
    max_capacity_players INTEGER,
    avg_occupancy_rate REAL,
    notes TEXT
);
INSERT INTO Training_Center_Resource_Allocation (center_id,allocation_date,budget_usd,staff_count,facility_maintenance_usd,equipment_purchase_usd,nutrition_program_usd,medical_services_usd,technology_investment_usd,player_accommodation_usd,transport_budget_usd,energy_cost_usd,water_cost_usd,waste_management_usd,security_cost_usd,training_sessions_scheduled,max_capacity_players,avg_occupancy_rate,notes) VALUES (801,'2023-01-01',1200000,45,150000,200000,100000,120000,180000,250000,80000,90000,30000,25000,50000,200,30,85.0,'Annual allocation');
INSERT INTO Training_Center_Resource_Allocation (center_id,allocation_date,budget_usd,staff_count,facility_maintenance_usd,equipment_purchase_usd,nutrition_program_usd,medical_services_usd,technology_investment_usd,player_accommodation_usd,transport_budget_usd,energy_cost_usd,water_cost_usd,waste_management_usd,security_cost_usd,training_sessions_scheduled,max_capacity_players,avg_occupancy_rate,notes) VALUES (802,'2023-01-01',950000,38,120000,150000,85000,95000,140000,200000,60000,75000,25000,20000,40000,150,28,78.5,'Mid‑year update');
INSERT INTO Training_Center_Resource_Allocation (center_id,allocation_date,budget_usd,staff_count,facility_maintenance_usd,equipment_purchase_usd,nutrition_program_usd,medical_services_usd,technology_investment_usd,player_accommodation_usd,transport_budget_usd,energy_cost_usd,water_cost_usd,waste_management_usd,security_cost_usd,training_sessions_scheduled,max_capacity_players,avg_occupancy_rate,notes) VALUES (803,'2023-01-01',800000,30,100000,130000,70000,80000,100000,180000,55000,65000,20000,15000,35000,130,25,72.0,'Quarterly review');

-- Table capturing broadcast quality metrics for matches
CREATE TABLE Match_Broadcast_Quality_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    broadcast_network TEXT,
    broadcast_date TEXT,
    resolution TEXT,
    bitrate_kbps INTEGER,
    audio_channels INTEGER,
    latency_ms INTEGER,
    dropped_frames INTEGER,
    buffering_events INTEGER,
    average_buffer_time_ms REAL,
    viewer_quality_score REAL,
    start_delay_seconds INTEGER,
    end_delay_seconds INTEGER,
    stream_type TEXT,
    codec_used TEXT,
    encryption_method TEXT,
    ad_insertion_count INTEGER,
    concurrent_viewers_peak INTEGER,
    average_concurrent_viewers INTEGER,
    geographic_coverage_regions TEXT,
    feedback_rating REAL,
    technical_issues_reported TEXT
);
INSERT INTO Match_Broadcast_Quality_Metrics (match_id,broadcast_network,broadcast_date,resolution,bitrate_kbps,audio_channels,latency_ms,dropped_frames,buffering_events,average_buffer_time_ms,viewer_quality_score,start_delay_seconds,end_delay_seconds,stream_type,codec_used,encryption_method,ad_insertion_count,concurrent_viewers_peak,average_concurrent_viewers,geographic_coverage_regions,feedback_rating,technical_issues_reported) VALUES (1001,'NetworkA','2023-05-01','1080p',4500,2,120,15,5,200.5,8.6,8,10,'Live','H264','AES','2',15000,8500,'Europe,NorthAmerica','4.5','None');
INSERT INTO Match_Broadcast_Quality_Metrics (match_id,broadcast_network,broadcast_date,resolution,bitrate_kbps,audio_channels,latency_ms,dropped_frames,buffering_events,average_buffer_time_ms,viewer_quality_score,start_delay_seconds,end_delay_seconds,stream_type,codec_used,encryption_method,ad_insertion_count,concurrent_viewers_peak,average_concurrent_viewers,geographic_coverage_regions,feedback_rating,technical_issues_reported) VALUES (1002,'NetworkB','2023-05-03','720p',3000,2,150,25,8,350.0,7.9,12,15,'Live','H265','AES','3',12000,6500,7500,'Europe','4.0','Minor buffering');
INSERT INTO Match_Broadcast_Quality_Metrics (match_id,broadcast_network,broadcast_date,resolution,bitrate_kbps,audio_channels,latency_ms,dropped_frames,buffering_events,average_buffer_time_ms,viewer_quality_score,start_delay_seconds,end_delay_seconds,stream_type,codec_used,encryption_method,ad_insertion_count,concurrent_viewers_peak,average_concurrent_viewers,geographic_coverage_regions,feedback_rating,technical_issues_reported) VALUES (1003,'NetworkC','2023-05-05','1080p',5000,2,100,10,3,150.0,9.1,5,7,'Live','H264','AES','1',18000,9500,9000,'Europe,Asia','4.8','None');

-- Table storing governance documents for clubs
CREATE TABLE Club_Governance_Documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    document_type TEXT,
    version_number INTEGER,
    effective_date TEXT,
    expiration_date TEXT,
    author TEXT,
    reviewer TEXT,
    approver TEXT,
    status TEXT,
    confidentiality_level TEXT,
    storage_location TEXT,
    checksum TEXT,
    document_url TEXT,
    summary TEXT,
    related_committee TEXT,
    last_modified_by TEXT,
    last_modified_date TEXT,
    approval_date TEXT,
    revocation_date TEXT,
    notes TEXT
);
INSERT INTO Club_Governance_Documents (club_id,document_type,version_number,effective_date,expiration_date,author,reviewer,approver,status,confidentiality_level,storage_location,checksum,document_url,summary,related_committee,last_modified_by,last_modified_date,approval_date,revocation_date,notes) VALUES (1,'Charter',3,'2022-01-01','2032-01-01','AliceSmith','BobJones','CarolLee','Active','Public','VaultA','abc123def','http://docs.example.com/charter_v3','Club charter and bylaws','Board','DaveMiller','2023-03-15','2022-01-01',NULL,'No changes required');
INSERT INTO Club_Governance_Documents (club_id,document_type,version_number,effective_date,expiration_date,author,reviewer,approver,status,confidentiality_level,storage_location,checksum,document_url,summary,related_committee,last_modified_by,last_modified_date,approval_date,revocation_date,notes) VALUES (2,'FinancialPolicy',2,'2021-07-01','2026-07-01','EveClark','FrankWright','GraceHill','Active','Confidential','VaultB','def456ghi','http://docs.example.com/finpolicy_v2','Financial handling procedures','Finance','HeidiKim','2023-02-20','2021-07-01',NULL,'Reviewed annually');
INSERT INTO Club_Governance_Documents (club_id,document_type,version_number,effective_date,expiration_date,author,reviewer,approver,status,confidentiality_level,storage_location,checksum,document_url,summary,related_committee,last_modified_by,last_modified_date,approval_date,revocation_date,notes) VALUES (3,'CodeOfConduct',1,'2023-01-01','2028-01-01','IanLee','JaneDoe','KyleBrown','Draft','Public','VaultC','ghi789jkl','http://docs.example.com/conduct_v1','Member conduct guidelines','HR','LiamFox','2023-01-10','2023-01-01',NULL,'Pending final review');