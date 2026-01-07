-- Player_Media_Appearances: records of media appearances by players (e.g., interviews, podcasts)
CREATE TABLE Player_Media_Appearances (
    appearance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    media_type TEXT,
    outlet_name TEXT,
    program_title TEXT,
    appearance_date TEXT,
    duration_minutes INTEGER,
    audience_estimate INTEGER,
    region TEXT,
    language TEXT,
    segment_type TEXT,
    host_name TEXT,
    topic_category TEXT,
    rating_score REAL,
    viewership_share REAL,
    online_views INTEGER,
    social_shares INTEGER,
    sentiment_score REAL,
    production_company TEXT,
    broadcast_platform TEXT,
    episode_number INTEGER,
    season_number INTEGER,
    notes TEXT
);
INSERT INTO Player_Media_Appearances VALUES (1,101,'Interview','SkySports','Match Preview','2023-10-14',30,50000,'Europe','English','PreMatch','JohnDoe','Tactics',8.2,12.5,20000,150,0.85,'ProductionOne','TV',5,2,'First appearance of season');
INSERT INTO Player_Media_Appearances VALUES (2,202,'Podcast','TheFootballShow','Player Insights','2023-11-02',45,30000,'NorthAmerica','English','PostMatch','JaneSmith','Fitness',7.8,10.1,15000,200,0.78,'AudioWorks','Spotify',12,3,'Discussed recovery routine');
INSERT INTO Player_Media_Appearances VALUES (3,303,'Interview','BBC','Sports Hour','2023-12-05',60,75000,'Asia','Spanish','Feature','CarlosGomez','Leadership',9.1,15.3,40000,300,0.92,'MediaCorp','Radio',8,1,'Talked about captaincy');

-- Team_Sponsorship_History: historical sponsorship deals for teams
CREATE TABLE Team_Sponsorship_History (
    deal_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    sponsor_name TEXT,
    sponsorship_type TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    annual_value_usd INTEGER,
    activation_regions TEXT,
    branding_exposure TEXT,
    logo_placement TEXT,
    jersey_number TEXT,
    exclusivity_flag INTEGER,
    performance_bonus INTEGER,
    renewal_option INTEGER,
    termination_clause TEXT,
    marketing_budget_usd INTEGER,
    co_branding_opportunities TEXT,
    social_media_mentions INTEGER,
    event_presence_count INTEGER,
    community_programs INTEGER,
    sustainability_focus TEXT,
    digital_assets_included TEXT,
    compliance_audit_passed INTEGER,
    notes TEXT
);
INSERT INTO Team_Sponsorship_History VALUES (1,1001,'Adidas','Kit','2020-01-01','2025-12-31',2500000,'Europe,NorthAmerica','Full','Front','01',1,500000,1,'30DaysNotice',300000,'JointCampaigns',1200,35,10,'EcoFriendly','BannerAds',1,'Long term partnership');
INSERT INTO Team_Sponsorship_History VALUES (2,1002,'Pepsi','Official','2018-07-15','2023-07-14',1800000,'Asia,SouthAmerica','Partial','Sleeve','02',0,250000,0,'EarlyTermination',200000,'CoPromo',800,20,5,'Recycling','SocialPosts',1,'Contract ended with renewal');
INSERT INTO Team_Sponsorship_History VALUES (3,1003,'Nike','Kit','2022-03-01','2027-02-28',3000000,'Global','Full','Front','03',1,600000,1,'6MonthsNotice',350000,'GlobalLaunch',1500,40,12,'CarbonNeutral','DigitalBanners',1,'New flagship deal');

-- League_Fan_Demographics: demographic breakdown of league-wide fan base
CREATE TABLE League_Fan_Demographics (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    total_fans INTEGER,
    male_percentage REAL,
    female_percentage REAL,
    age_group_12_17 INTEGER,
    age_group_18_24 INTEGER,
    age_group_25_34 INTEGER,
    age_group_35_44 INTEGER,
    age_group_45_54 INTEGER,
    age_group_55_plus INTEGER,
    average_income_usd INTEGER,
    urban_percentage REAL,
    rural_percentage REAL,
    education_highschool INTEGER,
    education_bachelor INTEGER,
    education_postgrad INTEGER,
    employment_fulltime INTEGER,
    employment_parttime INTEGER,
    unemployed INTEGER,
    subscriber_count INTEGER,
    average_match_view_time_minutes INTEGER,
    fan_loyalty_index REAL,
    notes TEXT
);
INSERT INTO League_Fan_Demographics VALUES (1,1,'2022/2023',25000000,55.2,44.8,1200000,3500000,8000000,6000000,3000000,1000000,45000,68.5,31.5,4000000,9000000,1200000,15000000,3000000,2000000,5000000,45,78.4,'Steady growth in 25-34 age group');
INSERT INTO League_Fan_Demographics VALUES (2,2,'2022/2023',18000000,52.0,48.0,900000,2800000,6000000,5000000,2500000,700000,38000,70.0,30.0,3500000,8000000,1100000,10000000,2500000,1500000,4000000,42,75.1,'Higher urban concentration');
INSERT INTO League_Fan_Demographics VALUES (3,3,'2022/2023',22000000,56.5,43.5,1000000,3200000,7500000,5500000,2500000,800000,42000,66.0,34.0,3800000,8500000,1300000,12000000,2600000,1400000,4500000,44,76.8,'Increase in female fans');

-- Stadium_Operational_Capacity: operational metrics for stadiums
CREATE TABLE Stadium_Operational_Capacity (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    event_date TEXT,
    max_seating_capacity INTEGER,
    available_seats INTEGER,
    standing_capacity INTEGER,
    disabled_access_seats INTEGER,
    vip_boxes INTEGER,
    hospitality_rooms INTEGER,
    concession_stands INTEGER,
    restroom_units INTEGER,
    security_staff_on_duty INTEGER,
    average_entry_time_seconds INTEGER,
    average_exit_time_seconds INTEGER,
    crowd_density_percent REAL,
    emergency_exits INTEGER,
    parking_spaces INTEGER,
    avg_parking_utilization_percent REAL,
    WiFi_access_points INTEGER,
    average_WiFi_speed_mbps REAL,
    average_noise_level_db REAL,
    temperature_celsius REAL,
    humidity_percent REAL,
    notes TEXT
);
INSERT INTO Stadium_Operational_Capacity VALUES (1,201,'2023-09-15',60000,58000,5000,200,30,25,40,35,150,45,30,96.5,20,12000,85.2,150,50.3,72.5,45,60,'Pre‑season match');
INSERT INTO Stadium_Operational_Capacity VALUES (2,202,'2023-10-01',45000,43000,3000,150,20,15,30,28,120,40,28,94.2,15,8000,78.0,120,48.0,68.0,48,55,'International friendly');
INSERT INTO Stadium_Operational_Capacity VALUES (3,203,'2023-11-20',75000,72000,6000,250,35,30,45,40,180,50,32,97.8,25,15000,90.5,180,55.5,70.0,42,58,'Cup final');

-- Match_Audience_Engagement: metrics of audience engagement per match
CREATE TABLE Match_Audience_Engagement (
    engagement_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    live_viewers INTEGER,
    peak_concurrent_viewers INTEGER,
    average_watch_time_minutes INTEGER,
    chat_message_count INTEGER,
    cheer_count INTEGER,
    boo_count INTEGER,
    social_media_mentions INTEGER,
    hashtag_usage INTEGER,
    sentiment_score REAL,
    replay_views INTEGER,
    highlights_views INTEGER,
    average_buffer_time_seconds INTEGER,
    device_mobile_percent REAL,
    device_desktop_percent REAL,
    device_tablet_percent REAL,
    geo_north_america_percent REAL,
    geo_europe_percent REAL,
    geo_asia_percent REAL,
    geo_rest_of_world_percent REAL,
    ad_impressions INTEGER,
    ad_click_through_rate REAL,
    notes TEXT
);
INSERT INTO Match_Audience_Engagement VALUES (1,301,180000,250000,65,34000,1200,200,8000,1500,0.78,40000,120000,3,62.5,35.0,2.5,30.0,40.0,25.0,5.0,500000,0.04,'High engagement in Europe');
INSERT INTO Match_Audience_Engagement VALUES (2,302,95000,130000,58,21000,800,150,4000,900,0.71,25000,85000,5,55.0,40.0,5.0,25.0,35.0,30.0,10.0,300000,0.03,'Strong mobile viewership');
INSERT INTO Match_Audience_Engagement VALUES (3,303,210000,300000,70,50000,1500,250,12000,2000,0.82,60000,150000,2,68.0,30.0,2.0,35.0,45.0,15.0,5.0,750000,0.05,'Peak during second half');

-- Club_Governance_Board: details of club board members and governance
CREATE TABLE Club_Governance_Board (
    board_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    member_name TEXT,
    position TEXT,
    appointment_date TEXT,
    term_years INTEGER,
    age INTEGER,
    nationality TEXT,
    education_level TEXT,
    previous_company TEXT,
    shareholding_percent REAL,
    board_committees TEXT,
    is_executive INTEGER,
    compensation_usd INTEGER,
    email TEXT,
    phone_number TEXT,
    linkedin_profile TEXT,
    board_meeting_attendance_percent REAL,
    conflict_of_interest_flag INTEGER,
    independence_status TEXT,
    notes TEXT
);
INSERT INTO Club_Governance_Board VALUES (1,1,'Laura Smith','Chairperson','2019-06-01',5,52,'UK','MBA','GlobalFinance','1.5','Audit,Strategy',1,250000,'laura.smith@example.com','+441234567890','linkedin.com/in/laurasmith',98.0,0,'Independent','Longstanding chair');
INSERT INTO Club_Governance_Board VALUES (2,2,'Marco Rossi','CEO','2020-01-15',4,48,'Italy','Engineering','TechSolutions','2.0','Operations,Finance',1,300000,'marco.rossi@example.com','+390212345678','linkedin.com/in/marcorossi',95.5,0,'Independent','Founder of tech startup');
INSERT INTO Club_Governance_Board VALUES (3,3,'Emily Chen','Non‑Executive Director','2021-03-20',3,57,'Canada','Law','LegalPartners','0.8','Governance,Risk',0,120000,'emily.chen@example.com','+14165551234','linkedin.com/in/emilychen',92.0,0,'Independent','Legal expert');

-- National_Team_Rosters: roster information for national teams (no direct link to club players)
CREATE TABLE National_Team_Rosters (
    roster_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nation TEXT,
    tournament TEXT,
    squad_number INTEGER,
    player_name TEXT,
    position TEXT,
    club_affiliation TEXT,
    age INTEGER,
    caps INTEGER,
    goals INTEGER,
    height_cm INTEGER,
    weight_kg INTEGER,
    dominant_foot TEXT,
    last_callup_date TEXT,
    contract_status TEXT,
    market_value_usd INTEGER,
    injury_status TEXT,
    fitness_score REAL,
    coaching_staff TEXT,
    tactical_role TEXT,
    jersey_color TEXT,
    notes TEXT
);
INSERT INTO National_Team_Rosters VALUES (1,'Spain','Euro2024',1,'Carlos Alvarez','Goalkeeper','RealMadrid',29,95,2,188,85,'Right','2023-08-15','Active',12000000,'Fit',9.1,'Coach Gomez','Sweeper Keeper','Red','First choice keeper');
INSERT INTO National_Team_Rosters VALUES (2,'Germany','WorldCup2026',10,'Lukas Becker','Midfielder','BayernMunich',26,60,8,180,76,'Left','2023-09-01','Active',15000000,'Minor injury',8.4,'Coach Schmidt','Box-to-Box','White','Key playmaker');
INSERT INTO National_Team_Rosters VALUES (3,'Brazil','CopaAmerica2024',9,'Rafael Silva','Forward','SaoPauloFC',24,30,12,175,70,'Right','2023-07-20','Active',18000000,'Fit',9.5,'Coach Santos','Poacher','Yellow','Rising star');

-- Youth_Scout_Evaluations: scouting reports from youth tournaments
CREATE TABLE Youth_Scout_Evaluations (
    eval_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_name TEXT,
    player_name TEXT,
    age INTEGER,
    position TEXT,
    scouting_agency TEXT,
    evaluation_date TEXT,
    technical_score REAL,
    tactical_score REAL,
    physical_score REAL,
    mental_score REAL,
    potential_score REAL,
    overall_rating REAL,
    recommended_action TEXT,
    next_step_date TEXT,
    scouting_notes TEXT,
    video_link TEXT,
    contact_email TEXT,
    expected_transfer_fee_usd INTEGER,
    nationality TEXT,
    club_current TEXT,
    academy_affiliation TEXT,
    notes TEXT
);
INSERT INTO Youth_Scout_Evaluations VALUES (1,'U17 European Cup','Matej Novak',17,'Defender','ScoutPro','2023-05-10',8.2,7.9,8.5,7.8,9.0,8.3,'Monitor','2023-08-01','Strong aerial ability','video.com/matej','matej.scout@example.com',3500000,'Slovakia','FCBratislava','Bratislava Academy','Potential first‑team debut');
INSERT INTO Youth_Scout_Evaluations VALUES (2,'South American U20','Diego Martinez',19,'Forward','TalentFinders','2023-06-22',9.0,8.7,8.9,8.5,9.5,9.2,'Buy','2023-09-15','Excellent finishing','video.com/diego','diego.scout@example.com',8000000,'Argentina','RiverPlate','River Academy','Target for european clubs');
INSERT INTO Youth_Scout_Evaluations VALUES (3,'Asian U16','Hao Lin',16,'Midfielder','GlobalScout','2023-04-18',8.5,8.2,8.0,8.1,8.8,8.4,'Observe','2023-07-20','Great vision and passing','video.com/hao','hao.scout@example.com',1200000,'China','BeijingFC','Beijing Youth','Potential national team prospect');

-- Broadcast_Streaming_Paths: technical details of streaming delivery for broadcasts
CREATE TABLE Broadcast_Streaming_Paths (
    path_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    streaming_provider TEXT,
    cdn_name TEXT,
    origin_server_ip TEXT,
    edge_server_region TEXT,
    protocol TEXT,
    bitrate_kbps INTEGER,
    resolution TEXT,
    audio_channels INTEGER,
    latency_ms INTEGER,
    packet_loss_percent REAL,
    concurrent_viewers INTEGER,
    max_bandwidth_mbps REAL,
    encryption_method TEXT,
    drm_enabled INTEGER,
    adaptive_streaming INTEGER,
    start_time TEXT,
    end_time TEXT,
    viewer_geolocation TEXT,
    average_buffer_time_seconds REAL,
    notes TEXT
);
INSERT INTO Broadcast_Streaming_Paths VALUES (1,301,'StreamNow','Akamai','192.0.2.1','Europe','HLS',5000,'1080p',2,150,0.02,180000,1200.5,'AES-128',1,1,'2023-09-15 19:00','2023-09-15 21:00','EU','2.5','Primary live stream');
INSERT INTO Broadcast_Streaming_Paths VALUES (2,302,'LivePlay','CloudFront','198.51.100.22','NorthAmerica','DASH',3500,'720p',2,200,0.05,95000,800.0,'AES-256',1,1,'2023-10-01 15:00','2023-10-01 17:00','NA','3.0','Backup stream');
INSERT INTO Broadcast_Streaming_Paths VALUES (3,303,'GameCast','Fastly','203.0.113.45','Asia','HLS',4500,'1080p',2,180,0.03,120000,1000.0,'AES-128',1,1,'2023-11-20 20:00','2023-11-20 22:00','AS','2.8','Regional feed');

-- Training_Equipment_Utilization: stats on usage of training equipment
CREATE TABLE Training_Equipment_Utilization (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    equipment_type TEXT,
    equipment_id TEXT,
    usage_hours_per_week REAL,
    maintenance_interval_weeks INTEGER,
    last_maintenance_date TEXT,
    next_due_date TEXT,
    average_wear_percent REAL,
    total_cycles INTEGER,
    downtime_hours INTEGER,
    responsible_technician TEXT,
    calibration_status TEXT,
    safety_inspection_passed INTEGER,
    warranty_expiration_date TEXT,
    cost_usd INTEGER,
    vendor_name TEXT,
    location_within_facility TEXT,
    usage_by_position TEXT,
    notes TEXT
);
INSERT INTO Training_Equipment_Utilization VALUES (1,101,'GPS_Tracker','GPS-001',12.5,30,'2023-06-01','2023-07-01',15.0,2500,2,'John Doe','Calibrated',1,'2025-06-01',2500,'TechSports','Training Field','Midfielders','High usage during preseason');
INSERT INTO Training_Equipment_Utilization VALUES (2,102,'Force_Plate','FP-12',8.0,45,'2023-05-15','2023-07-15',10.5,1800,1,'Anna Lee','Calibrated',1,'2024-05-15',4200,'ForceTech','Gym','Defenders','Used in strength sessions');
INSERT INTO Training_Equipment_Utilization VALUES (3,103,'Heart_Rate_Monitor','HRM-07',10.2,40,'2023-04-20','2023-06-20',12.0,2100,0,'Mike Smith','Calibrated',1,'2025-04-20',3100,'HealthGear','Medical Center','All positions','Routine monitoring');

-- Match_Incident_Details: granular incident data per match (e.g., injuries, VAR decisions)
CREATE TABLE Match_Incident_Details (
    incident_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    minute INTEGER,
    incident_type TEXT,
    player_api_id INTEGER,
    team_api_id INTEGER,
    description TEXT,
    referee_api_id INTEGER,
    video_review_available INTEGER,
    outcome TEXT,
    severity TEXT,
    medical_attention_required INTEGER,
    substitution_made INTEGER,
    substitution_in_player INTEGER,
    substitution_out_player INTEGER,
    penalty_awarded INTEGER,
    offside_flag INTEGER,
    fouled_by_player INTEGER,
    fouled_player INTEGER,
    yellow_card_flag INTEGER,
    red_card_flag INTEGER,
    notes TEXT
);
INSERT INTO Match_Incident_Details VALUES (1,301,23,'Foul',10101,1001,'Late challenge from behind',201,'1','Free Kick','Medium',1,0,NULL,NULL,0,0,10101,10102,0,0,'No card given');
INSERT INTO Match_Incident_Details VALUES (2,301,58,'Injury',10202,1002,'Hamstring pull, player limps off',202,'1','Goal Kick','High',1,1,10303,10202,0,0,10202,NULL,0,0,'Substituted at 60');
INSERT INTO Match_Incident_Details VALUES (3,301,77,'VAR Review',10303,1001,'Potential handball in box',203,'1','Penalty Awarded','High',0,0,NULL,NULL,1,0,10303,10404,0,1,'Penalty confirmed after review');