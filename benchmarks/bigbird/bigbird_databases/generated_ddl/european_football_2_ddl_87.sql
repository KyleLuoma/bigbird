-- Broadcast asset tracking for the league’s broadcasting equipment
CREATE TABLE Broadcast_Asset_Tracking (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_tag TEXT,
    asset_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    purchase_date TEXT,
    warranty_end TEXT,
    location_id INTEGER,
    current_status TEXT,
    last_maintenance_date TEXT,
    maintenance_interval_days INTEGER,
    assigned_to TEXT,
    depreciation_rate REAL,
    original_cost REAL,
    current_value REAL,
    serial_number TEXT,
    network_connected INTEGER,
    firmware_version TEXT,
    ip_address TEXT,
    mac_address TEXT,
    notes TEXT
);
INSERT INTO Broadcast_Asset_Tracking (asset_tag,asset_type,manufacturer,model_number,purchase_date,warranty_end,location_id,current_status,last_maintenance_date,maintenance_interval_days,assigned_to,depreciation_rate,original_cost,current_value,serial_number,network_connected,firmware_version,ip_address,mac_address,notes) VALUES ('BCAST001','Encoder','Sony','ENCX100','2021-03-15','2024-03-15',12,'Active','2023-06-01',180,'TechTeamA',0.15,15000.0,12000.0,'SN12345',1,'v2.3','192.168.10.10','AA:BB:CC:DD:EE:01','Main stadium encoder');
INSERT INTO Broadcast_Asset_Tracking (asset_tag,asset_type,manufacturer,model_number,purchase_date,warranty_end,location_id,current_status,last_maintenance_date,maintenance_interval_days,assigned_to,depreciation_rate,original_cost,current_value,serial_number,network_connected,firmware_version,ip_address,mac_address,notes) VALUES ('BCAST002','Camera','Panasonic','CAMZ200','2020-07-22','2023-07-22',8,'InRepair','2023-01-10',365,'CamOpsB',0.20,8000.0,6400.0,'SN67890',1,'v1.9','192.168.10.20','AA:BB:CC:DD:EE:02','Backup camera unit');
INSERT INTO Broadcast_Asset_Tracking (asset_tag,asset_type,manufacturer,model_number,purchase_date,warranty_end,location_id,current_status,last_maintenance_date,maintenance_interval_days,assigned_to,depreciation_rate,original_cost,current_value,serial_number,network_connected,firmware_version,ip_address,mac_address,notes) VALUES ('BCAST003','Mixer','Avid','MX500','2019-11-05','2022-11-05',5,'Retired','2021-12-15',730,'AudioTeamC',0.25,12000.0,9000.0,'SN54321',0,'v3.0','192.168.10.30','AA:BB:CC:DD:EE:03','Decommissioned audio mixer');

-- Geographic references for stadium locations
CREATE TABLE Stadium_Geocode_References (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    latitude REAL,
    longitude REAL,
    elevation_meters REAL,
    city TEXT,
    region TEXT,
    country TEXT,
    postal_code TEXT,
    timezone TEXT,
    geo_source TEXT,
    accuracy_meters REAL,
    last_updated TEXT,
    map_provider TEXT,
    map_layer TEXT,
    building_type TEXT,
    capacity_estimate INTEGER,
    nearest_airport TEXT,
    public_transport TEXT,
    parking_spaces INTEGER,
    handicap_access INTEGER,
    environmental_zone TEXT,
    notes TEXT
);
INSERT INTO Stadium_Geocode_References (stadium_id,latitude,longitude,elevation_meters,city,region,country,postal_code,timezone,geo_source,accuracy_meters,last_updated,map_provider,map_layer,building_type,capacity_estimate,nearest_airport,public_transport,parking_spaces,handicap_access,environmental_zone,notes) VALUES (101,34.0522,-118.2437,71,'LosAngeles','CA','USA','90015','PST','GIS','5',2023-08-01,'GoogleMaps','Satellite','Outdoor',61000,'LAX','Metro',12000,1,'Urban','Primary stadium for LA team');
INSERT INTO Stadium_Geocode_References (stadium_id,latitude,longitude,elevation_meters,city,region,country,postal_code,timezone,geo_source,accuracy_meters,last_updated,map_provider,map_layer,building_type,capacity_estimate,nearest_airport,public_transport,parking_spaces,handicap_access,environmental_zone,notes) VALUES (102,51.5074,-0.1278,35,'London','England','UK','SW1A','GMT','OSMap','3',2023-07-15,'OpenStreetMap','Terrain','Enclosed',60000,'LHR','Underground',15000,1,'Urban','Premier league venue');
INSERT INTO Stadium_Geocode_References (stadium_id,latitude,longitude,elevation_meters,city,region,country,postal_code,timezone,geo_source,accuracy_meters,last_updated,map_provider,map_layer,building_type,capacity_estimate,nearest_airport,public_transport,parking_spaces,handicap_access,environmental_zone,notes) VALUES (103,35.6895,139.6917,44,'Tokyo','Kanto','Japan','100-0001','JST','GIS','4',2023-09-10,'YahooMaps','Hybrid','Outdoor',68000,'NRT','Monorail',18000,1,'Urban','National stadium';

-- Competitive balance metrics for each league season
CREATE TABLE League_Competitive_Balance_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    gini_coefficient REAL,
    point_distribution_std REAL,
    win_margin_avg REAL,
    goal_diff_std REAL,
    top5_point_share REAL,
    bottom5_point_share REAL,
    parity_index REAL,
    competitive_balance_rating INTEGER,
    matches_played INTEGER,
    total_goals INTEGER,
    average_goals_per_match REAL,
    upset_frequency REAL,
    title_closeness REAL,
    relegation_gap REAL,
    promotion_gap REAL,
    financial_redistribution_factor REAL,
    foreign_player_ratio REAL,
    avg_attendance REAL,
    tv_rating_index REAL,
    revenue_share_std REAL,
    fan_engagement_score REAL,
    notes TEXT
);
INSERT INTO League_Competitive_Balance_Metrics (league_id,season,gini_coefficient,point_distribution_std,win_margin_avg,goal_diff_std,top5_point_share,bottom5_point_share,parity_index,competitive_balance_rating,matches_played,total_goals,average_goals_per_match,upset_frequency,title_closeness,relegation_gap,promotion_gap,financial_redistribution_factor,foreign_player_ratio,avg_attendance,tv_rating_index,revenue_share_std,fan_engagement_score,notes) VALUES (1,'2022/23',0.21,12.5,1.3,5.2,0.35,0.12,0.78,85,380,1024,2.69,0.18,0.65,2.1,1.9,0.45,0.28,25000,7.5,3.2,78,'Season shows moderate parity');
INSERT INTO League_Competitive_Balance_Metrics (league_id,season,gini_coefficient,point_distribution_std,win_margin_avg,goal_diff_std,top5_point_share,bottom5_point_share,parity_index,competitive_balance_rating,matches_played,total_goals,average_goals_per_match,upset_frequency,title_closeness,relegation_gap,promotion_gap,financial_redistribution_factor,foreign_player_ratio,avg_attendance,tv_rating_index,revenue_share_std,fan_engagement_score,notes) VALUES (2,'2021/22',0.15,9.8,0.9,4.1,0.28,0.09,0.84,92,342,945,2.76,0.12,0.73,1.5,1.2,0.52,0.32,27000,8.2,2.9,84,'High competitive balance observed');
INSERT INTO League_Competitive_Balance_Metrics (league_id,season,gini_coefficient,point_distribution_std,win_margin_avg,goal_diff_std,top5_point_share,bottom5_point_share,parity_index,competitive_balance_rating,matches_played,total_goals,average_goals_per_match,upset_frequency,title_closeness,relegation_gap,promotion_gap,financial_redistribution_factor,foreign_player_ratio,avg_attendance,tv_rating_index,revenue_share_std,fan_engagement_score,notes) VALUES (3,'2020/21',0.27,15.4,2.0,6.3,0.42,0.18,0.71,78,380,1102,2.90,0.22,0.58,2.8,2.3,0.38,0.24,23000,6.9,3.6,71,'More dominance by top clubs');

-- Demographic profiles for fans
CREATE TABLE Fan_Profile_Demographics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    age INTEGER,
    gender TEXT,
    income_bracket TEXT,
    education_level TEXT,
    marital_status TEXT,
    number_of_children INTEGER,
    region TEXT,
    city TEXT,
    postal_code TEXT,
    favorite_team_id INTEGER,
    membership_years INTEGER,
    loyalty_score REAL,
    average_match_attendance INTEGER,
    average_tv_view_hours REAL,
    social_media_platform TEXT,
    followers_count INTEGER,
    engagement_rate REAL,
    preferred_merch_category TEXT,
    spending_per_season REAL,
    language TEXT,
    notes TEXT
);
INSERT INTO Fan_Profile_Demographics (fan_id,age,gender,income_bracket,education_level,marital_status,number_of_children,region,city,postal_code,favorite_team_id,membership_years,loyalty_score,average_match_attendance,average_tv_view_hours,social_media_platform,followers_count,engagement_rate,preferred_merch_category,spending_per_season,language,notes) VALUES (1001,34,'Male','75k-100k','Bachelor','Single',0,'North','Chicago','60601',12,5,0.89,12,8.5,'Instagram',2500,0.07,'Jerseys',1200.0,'English','High engagement fan');
INSERT INTO Fan_Profile_Demographics (fan_id,age,gender,income_bracket,education_level,marital_status,number_of_children,region,city,postal_code,favorite_team_id,membership_years,loyalty_score,average_match_attendance,average_tv_view_hours,social_media_platform,followers_count,engagement_rate,preferred_merch_category,spending_per_season,language,notes) VALUES (1002,28,'Female','50k-75k','Master','Married',1,'South','Atlanta','30303',8,3,0.73,6,5.2,'Twitter',1800,0.05,'Scarves',850.0,'English','Family oriented fan');
INSERT INTO Fan_Profile_Demographics (fan_id,age,gender,income_bracket,education_level,marital_status,number_of_children,region,city,postal_code,favorite_team_id,membership_years,loyalty_score,average_match_attendance,average_tv_view_hours,social_media_platform,followers_count,engagement_rate,preferred_merch_category,spending_per_season,language,notes) VALUES (1003,45,'Male','100k-150k','Doctorate','Divorced',2,'West','SanFrancisco','94102',21,10,0.95,20,12.0,'YouTube',3200,0.09,'TrainingGear',2100.0,'English','Season ticket holder');

-- Financial commitments from sponsors
CREATE TABLE Sponsor_Financial_Commitments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    contract_id INTEGER,
    start_date TEXT,
    end_date TEXT,
    annual_commitment REAL,
    total_value REAL,
    payment_frequency TEXT,
    currency TEXT,
    financial_security_deposit REAL,
    performance_bonus REAL,
    marketing_budget_allocation REAL,
    activation_budget REAL,
    digital_spend REAL,
    grassroots_spend REAL,
    stadium_naming_rights INTEGER,
    logo_placement_level TEXT,
    exclusivity_clause TEXT,
    renewal_option BOOLEAN,
    early_termination_fee REAL,
    compliance_audit_score REAL,
    notes TEXT
);
INSERT INTO Sponsor_Financial_Commitments (sponsor_id,contract_id,start_date,end_date,annual_commitment,total_value,payment_frequency,currency,financial_security_deposit,performance_bonus,marketing_budget_allocation,activation_budget,digital_spend,grassroots_spend,stadium_naming_rights,logo_placement_level,exclusivity_clause,renewal_option,early_termination_fee,compliance_audit_score,notes) VALUES (2001,301,'2022-01-01','2025-12-31',5000000.0,15000000.0,'Quarterly','USD',250000.0,300000.0,4000000.0,2000000.0,1200000.0,800000.0,1,'PrimaryBanner','FullExclusive',1,150000.0,92.5,'Long‑term partnership');
INSERT INTO Sponsor_Financial_Commitments (sponsor_id,contract_id,start_date,end_date,annual_commitment,total_value,payment_frequency,currency,financial_security_deposit,performance_bonus,marketing_budget_allocation,activation_budget,digital_spend,grassroots_spend,stadium_naming_rights,logo_placement_level,exclusivity_clause,renewal_option,early_termination_fee,compliance_audit_score,notes) VALUES (2002,302,'2023-04-01','2026-03-31',3000000.0,9000000.0,'Annually','EUR',150000.0,200000.0,2500000.0,1500000.0,900000.0,600000.0,0,'SideBanner','Partial',0,100000.0,88.0,'Mid‑term deal');
INSERT INTO Sponsor_Financial_Commitments (sponsor_id,contract_id,start_date,end_date,annual_commitment,total_value,payment_frequency,currency,financial_security_deposit,performance_bonus,marketing_budget_allocation,activation_budget,digital_spend,grassroots_spend,stadium_naming_rights,logo_placement_level,exclusivity_clause,renewal_option,early_termination_fee,compliance_audit_score,notes) VALUES (2003,303,'2021-07-01','2024-06-30',2000000.0,6000000.0,'Monthly','GBP',100000.0,150000.0,1800000.0,1000000.0,500000.0,400000.0,0,'CornerAds','NonExclusive',1,80000.0,91.0,'Shorter contract');

-- Resources owned or leased by clubs
CREATE TABLE Club_Ecosystem_Resources (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    resource_type TEXT,
    resource_name TEXT,
    provider TEXT,
    contract_start TEXT,
    contract_end TEXT,
    annual_cost REAL,
    capacity_units INTEGER,
    utilization_percent REAL,
    maintenance_window TEXT,
    service_level_agreement TEXT,
    downtime_minutes INTEGER,
    sustainability_rating REAL,
    carbon_footprint_kg REAL,
    renewable_percentage REAL,
    depreciation_years INTEGER,
    warranty_end TEXT,
    risk_level TEXT,
    compliance_status TEXT,
    notes TEXT
);
INSERT INTO Club_Ecosystem_Resources (club_id,resource_type,resource_name,provider,contract_start,contract_end,annual_cost,capacity_units,utilization_percent,maintenance_window,service_level_agreement,downtime_minutes,sustainability_rating,carbon_footprint_kg,renewable_percentage,depreciation_years,warranty_end,risk_level,compliance_status,notes) VALUES (10,'TrainingFacility','EliteGym','FitCo','2020-01-01','2025-12-31',250000.0,2000,78.5,'02:00-04:00','24/7','120',4.5,12000.0,55.0,10,'2024-12-31','Medium','Compliant','High‑end gym for first team');
INSERT INTO Club_Ecosystem_Resources (club_id,resource_type,resource_name,provider,contract_start,contract_end,annual_cost,capacity_units,utilization_percent,maintenance_window,service_level_agreement,downtime_minutes,sustainability_rating,carbon_footprint_kg,renewable_percentage,depreciation_years,warranty_end,risk_level,compliance_status,notes) VALUES (12,'ITInfrastructure','ServerFarm','DataHub','2021-06-15','2026-06-14',500000.0,500,92.0,'01:00-03:00','99.9%Uptime','30',4.8,25000.0,70.0,5,'2025-06-15','Low','Compliant','Supports analytics platform');
INSERT INTO Club_Ecosystem_Resources (club_id,resource_type,resource_name,provider,contract_start,contract_end,annual_cost,capacity_units,utilization_percent,maintenance_window,service_level_agreement,downtime_minutes,sustainability_rating,carbon_footprint_kg,renewable_percentage,depreciation_years,warranty_end,risk_level,compliance_status,notes) VALUES (15,'Transportation','TeamBusFleet','TransitLtd','2019-03-01','2024-02-28',180000.0,8,85.0,'03:00-05:00','OnTime','45',4.2,8000.0,40.0,8,'2023-02-28','Medium','Compliant','Used for away matches');

-- Utilization statistics for media production rooms
CREATE TABLE Media_Room_Utilization_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    room_id INTEGER,
    date TEXT,
    start_time TEXT,
    end_time TEXT,
    broadcast_type TEXT,
    crew_count INTEGER,
    equipment_used TEXT,
    bandwidth_mbps REAL,
    recording_quality TEXT,
    viewer_capacity INTEGER,
    live_audience INTEGER,
    replay_available BOOLEAN,
    notes TEXT,
    average_cpu_load REAL,
    storage_used_gb REAL,
    power_consumption_kw REAL,
    temperature_celsius REAL,
    humidity_percent REAL,
    acoustic_level_db REAL
);
INSERT INTO Media_Room_Utilization_Stats (room_id,date,start_time,end_time,broadcast_type,crew_count,equipment_used,bandwidth_mbps,recording_quality,viewer_capacity,live_audience,replay_available,notes,average_cpu_load,storage_used_gb,power_consumption_kw,temperature_celsius,humidity_percent,acoustic_level_db) VALUES (5,'2023-09-12','09:00','12:00','LiveMatch',12,'SwitchA,CameraSet3',850.5,'4K','20000',15000,1,'Premier League match','45.2',1200.5,'12.5','22.0','45','68');
INSERT INTO Media_Room_Utilization_Stats (room_id,date,start_time,end_time,broadcast_type,crew_count,equipment_used,bandwidth_mbps,recording_quality,viewer_capacity,live_audience,replay_available,notes,average_cpu_load,storage_used_gb,power_consumption_kw,temperature_celsius,humidity_percent,acoustic_level_db) VALUES (7,'2023-09-13','14:00','16:30','PostMatchAnalysis',8,'SwitchB,CameraSet1',320.0,'1080p','5000',3000,1,'Analysis of last match','38.6',600.2','8.3','21.5','48','55');
INSERT INTO Media_Room_Utilization_Stats (room_id,date,start_time,end_time,broadcast_type,crew_count,equipment_used,bandwidth_mbps,recording_quality,viewer_capacity,live_audience,replay_available,notes,average_cpu_load,storage_used_gb,power_consumption_kw,temperature_celsius,humidity_percent,acoustic_level_db) VALUES (9,'2023-09-14','10:00','11:00','PressConference',5,'SwitchC',150.0,'1080p','2000',500,0,'Coach press briefing','30.1',250.0','5.0','20.0','42','60');

-- Airflow monitoring in training centers
CREATE TABLE Training_Center_Airflow_Monitoring (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    sensor_id INTEGER,
    install_date TEXT,
    last_calibration TEXT,
    airflow_cfm REAL,
    pressure_pa REAL,
    temperature_celsius REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    voc_ppb REAL,
    noise_db REAL,
    power_status INTEGER,
    battery_level_percent INTEGER,
    alert_threshold_exceeded BOOLEAN,
    maintenance_required BOOLEAN,
    notes TEXT,
    firmware_version TEXT,
    ip_address TEXT,
    mac_address TEXT,
    data_log_path TEXT
);
INSERT INTO Training_Center_Airflow_Monitoring (center_id,sensor_id,install_date,last_calibration,airflow_cfm,pressure_pa,temperature_celsius,humidity_percent,co2_ppm,voc_ppb,noise_db,power_status,battery_level_percent,alert_threshold_exceeded,maintenance_required,notes,firmware_version,ip_address,mac_address,data_log_path) VALUES (3,101,'2020-05-10','2023-06-01',1500.0,101.2,20.5,45.0,600.0,250.0,55.0,1,95,0,0,'Main gym airflow sensor','v1.2','10.0.0.5','AA:BB:CC:DD:EE:10','/logs/center3/sensor101');
INSERT INTO Training_Center_Airflow_Monitoring (center_id,sensor_id,install_date,last_calibration,airflow_cfm,pressure_pa,temperature_celsius,humidity_percent,co2_ppm,voc_ppb,noise_db,power_status,battery_level_percent,alert_threshold_exceeded,maintenance_required,notes,firmware_version,ip_address,mac_address,data_log_path) VALUES (5,202,'2021-03-22','2023-05-15',1800.0,98.5,22.0,48.0,620.0,260.0,58.0,1,88,1,0,'Recovery area sensor','v1.3','10.0.0.6','AA:BB:CC:DD:EE:11','/logs/center5/sensor202');
INSERT INTO Training_Center_Airflow_Monitoring (center_id,sensor_id,install_date,last_calibration,airflow_cfm,pressure_pa,temperature_celsius,humidity_percent,co2_ppm,voc_ppb,noise_db,power_status,battery_level_percent,alert_threshold_exceeded,maintenance_required,notes,firmware_version,ip_address,mac_address,data_log_path) VALUES (7,303,'2019-11-30','2023-04-20',1300.0,105.0,19.5,42.0,580.0,240.0,52.0,1,92,0,1,'Physio room sensor','v1.1','10.0.0.7','AA:BB:CC:DD:EE:12','/logs/center7/sensor303');

-- Workflow tracking for digital content creation
CREATE TABLE Digital_Content_Creation_Workflow (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    content_id INTEGER,
    title TEXT,
    creator_id INTEGER,
    creation_date TEXT,
    revision_number INTEGER,
    status TEXT,
    platform TEXT,
    format TEXT,
    duration_seconds INTEGER,
    file_size_mb REAL,
    thumbnail_path TEXT,
    description TEXT,
    tags TEXT,
    language TEXT,
    audience_target TEXT,
    approval_stage TEXT,
    approved_by INTEGER,
    approval_date TEXT,
    publish_date TEXT,
    views_count INTEGER,
    engagement_score REAL,
    notes TEXT
);
INSERT INTO Digital_Content_Creation_Workflow (content_id,title,creator_id,creation_date,revision_number,status,platform,format,duration_seconds,file_size_mb,thumbnail_path,description,tags,language,audience_target,approval_stage,approved_by,approval_date,publish_date,views_count,engagement_score,notes) VALUES (9001,'MatchHighlights','301','2023-08-20',1,'Draft','YouTube','MP4',180,250.0,'/thumbs/9001.jpg','Highlights from match','highlights,goals','English','Fans','Review',401,'2023-08-21','2023-08-22',15000,0.84,'Pending final edit');
INSERT INTO Digital_Content_Creation_Workflow (content_id,title,creator_id,creation_date,revision_number,status,platform,format,duration_seconds,file_size_mb,thumbnail_path,description,tags,language,audience_target,approval_stage,approved_by,approval_date,publish_date,views_count,engagement_score,notes) VALUES (9002,'PlayerInterview','302','2023-08-18',2,'Approved','Instagram','MP4',90,80.0,'/thumbs/9002.jpg','Interview with star player','interview,player','English','Fans','Publish',402,'2023-08-19','2023-08-20',8000,0.78,'Published on Stories');
INSERT INTO Digital_Content_Creation_Workflow (content_id,title,creator_id,creation_date,revision_number,status,platform,format,duration_seconds,file_size_mb,thumbnail_path,description,tags,language,audience_target,approval_stage,approved_by,approval_date,publish_date,views_count,engagement_score,notes) VALUES (9003,'TrainingSessionRecap','303','2023-08-15',1,'Reviewed','ClubWebsite','MP4',300,500.0,'/thumbs/9003.jpg','Weekly training recap','training,recap','English','Coaches','FinalCheck',403,'2023-08-16','2023-08-17',5000,0.65,'Awaiting final sign‑off');

-- Global indices measuring fan engagement
CREATE TABLE Global_Fan_Engagement_Indices (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    region TEXT,
    country TEXT,
    year INTEGER,
    index_name TEXT,
    value REAL,
    source TEXT,
    methodology TEXT,
    confidence_interval_low REAL,
    confidence_interval_high REAL,
    sample_size INTEGER,
    median_age REAL,
    gender_balance REAL,
    urban_rural_ratio REAL,
    internet_penetration_percent REAL,
    average_spending_usd REAL,
    social_media_engagement_score REAL,
    tv_viewership_score REAL,
    stadium_attendance_score REAL,
    merchandise_purchase_score REAL,
    notes TEXT
);
INSERT INTO Global_Fan_Engagement_Indices (region,country,year,index_name,value,source,methodology,confidence_interval_low,confidence_interval_high,sample_size,median_age,gender_balance,urban_rural_ratio,internet_penetration_percent,average_spending_usd,social_media_engagement_score,tv_viewership_score,stadium_attendance_score,merchandise_purchase_score,notes) VALUES ('Europe','Germany',2023,'FanEngageIndex',78.5,'EuroStat','Survey+Digital','75.0','82.0',12000,34.0,0.52,0.71,92.0,250.0,0.84,0.78,0.73,0.68,'Strong overall engagement');
INSERT INTO Global_Fan_Engagement_Indices (region,country,year,index_name,value,source,methodology,confidence_interval_low,confidence_interval_high,sample_size,median_age,gender_balance,urban_rural_ratio,internet_penetration_percent,average_spending_usd,social_media_engagement_score,tv_viewership_score,stadium_attendance_score,merchandise_purchase_score,notes) VALUES ('Asia','Japan',2023,'FanEngageIndex',82.3,'JFA','MixedMethods','80.0','84.5',15000,31.0,0.49,0.68,96.0,300.0,0.88,0.81,0.79,0.74,'High digital interaction');
INSERT INTO Global_Fan_Engagement_Indices (region,country,year,index_name,value,source,methodology,confidence_interval_low,confidence_interval_high,sample_size,median_age,gender_balance,urban_rural_ratio,internet_penetration_percent,average_spending_usd,social_media_engagement_score,tv_viewership_score,stadium_attendance_score,merchandise_purchase_score,notes) VALUES ('NorthAmerica','USA',2023,'FanEngageIndex',75.2,'NASN','Survey','72.0','78.5',18000,36.0,0.51,0.65,94.0,280.0,0.80,0.85,0.70,0.66,'Balanced fan profile');