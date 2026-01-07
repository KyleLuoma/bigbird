-- Table storing player contract history
CREATE TABLE Player_Contract_History (
    contract_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    start_date TEXT,
    end_date TEXT,
    salary INTEGER,
    wage_per_week INTEGER,
    bonus INTEGER,
    signing_bonus INTEGER,
    performance_bonus INTEGER,
    loyalty_bonus INTEGER,
    injury_clause INTEGER,
    extension_option TEXT,
    buyout_fee INTEGER,
    release_clause INTEGER,
    contract_type TEXT,
    salary_currency TEXT,
    guarantee_amount INTEGER,
    payment_frequency TEXT,
    contract_length_months INTEGER,
    contract_status TEXT,
    is_active INTEGER,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);
INSERT INTO Player_Contract_History (player_api_id,start_date,end_date,salary,wage_per_week,bonus,signing_bonus,performance_bonus,loyalty_bonus,injury_clause,extension_option,buyout_fee,release_clause,contract_type,salary_currency,guarantee_amount,payment_frequency,contract_length_months,contract_status,is_active,created_at,updated_at,notes) VALUES (10234,'2022-07-01','2027-06-30',12000000,230769,500000,200000,150000,50000,100000,'Option1',2500000,3000000,'Full','EUR',12000000,'Monthly',60,'Active',1,'2022-07-01','2022-07-01','First contract');
INSERT INTO Player_Contract_History (player_api_id,start_date,end_date,salary,wage_per_week,bonus,signing_bonus,performance_bonus,loyalty_bonus,injury_clause,extension_option,buyout_fee,release_clause,contract_type,salary_currency,guarantee_amount,payment_frequency,contract_length_months,contract_status,is_active,created_at,updated_at,notes) VALUES (11567,'2021-01-15','2024-01-14',8000000,153846,300000,100000,80000,30000,50000,'Option2',1500000,2000000,'Partial','USD',8000000,'Monthly',36,'Expired',0,'2021-01-15','2024-01-15','Renewed once');
INSERT INTO Player_Contract_History (player_api_id,start_date,end_date,salary,wage_per_week,bonus,signing_bonus,performance_bonus,loyalty_bonus,injury_clause,extension_option,buyout_fee,release_clause,contract_type,salary_currency,guarantee_amount,payment_frequency,contract_length_months,contract_status,is_active,created_at,updated_at,notes) VALUES (12980,'2023-03-01','2028-02-28',15000000,288462,600000,250000,200000,75000,150000,'Option3',3000000,4000000,'Full','GBP',15000000,'Monthly',60,'Active',1,'2023-03-01','2023-03-01','High profile signing');

-- Table tracking daily utility usage for stadiums
CREATE TABLE Stadium_Utility_Usage_Details (
    utility_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    date TEXT,
    electricity_kwh INTEGER,
    water_m3 INTEGER,
    gas_therms INTEGER,
    waste_tons REAL,
    recycling_tons REAL,
    carbon_emission_kg REAL,
    peak_demand_kw INTEGER,
    avg_demand_kw INTEGER,
    electricity_cost_usd REAL,
    water_cost_usd REAL,
    gas_cost_usd REAL,
    waste_disposal_cost_usd REAL,
    renewable_percentage REAL,
    utility_provider TEXT,
    maintenance_flag INTEGER,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);
INSERT INTO Stadium_Utility_Usage_Details (stadium_id,date,electricity_kwh,water_m3,gas_therms,waste_tons,recycling_tons,carbon_emission_kg,peak_demand_kw,avg_demand_kw,electricity_cost_usd,water_cost_usd,gas_cost_usd,waste_disposal_cost_usd,renewable_percentage,utility_provider,maintenance_flag,created_at,updated_at,notes) VALUES (5,'2023-09-01',125000,800,450,12.5,3.2,56000,4500,2100,15000.5,3000.2,2500.0,1200.0,35.0,'EnergyCo',0,'2023-09-01','2023-09-01','Normal day');
INSERT INTO Stadium_Utility_Usage_Details (stadium_id,date,electricity_kwh,water_m3,gas_therms,waste_tons,recycling_tons,carbon_emission_kg,peak_demand_kw,avg_demand_kw,electricity_cost_usd,water_cost_usd,gas_cost_usd,waste_disposal_cost_usd,renewable_percentage,utility_provider,maintenance_flag,created_at,updated_at,notes) VALUES (9,'2023-10-15',140000,950,500,13.0,4.0,61000,4700,2250,16500.0,3500.0,2800.0,1300.0,30.0,'PowerGrid',0,'2023-10-15','2023-10-15','Match day');
INSERT INTO Stadium_Utility_Usage_Details (stadium_id,date,electricity_kwh,water_m3,gas_therms,waste_tons,recycling_tons,carbon_emission_kg,peak_demand_kw,avg_demand_kw,electricity_cost_usd,water_cost_usd,gas_cost_usd,waste_disposal_cost_usd,renewable_percentage,utility_provider,maintenance_flag,created_at,updated_at,notes) VALUES (12,'2023-12-05',115000,750,400,11.8,2.9,52000,4300,2000,14000.0,2800.0,2300.0,1100.0,40.0,'GreenEnergy',1,'2023-12-05','2023-12-05','Maintenance scheduled');

-- Table logging sponsor activation events for teams
CREATE TABLE Team_Sponsorship_Activation_Log (
    activation_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    sponsor_id INTEGER,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    activation_type TEXT,
    target_audience TEXT,
    budget_usd INTEGER,
    actual_spend_usd INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    conversion_rate REAL,
    channel TEXT,
    location TEXT,
    creative_asset TEXT,
    KPI_met INTEGER,
    remarks TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Team_Sponsorship_Activation_Log (team_id,sponsor_id,campaign_name,start_date,end_date,activation_type,target_audience,budget_usd,actual_spend_usd,impressions,clicks,conversion_rate,channel,location,creative_asset,KPI_met,remarks,created_at,updated_at) VALUES (3,45,'Summer Blast','2023-06-01','2023-08-31','Digital','Fans 18-35',500000,470000,12000000,340000,0.028,'Social','Online','Banner_1',1,'Successful rollout','2023-06-01','2023-08-31');
INSERT INTO Team_Sponsorship_Activation_Log (team_id,sponsor_id,campaign_name,start_date,end_date,activation_type,target_audience,budget_usd,actual_spend_usd,impressions,clicks,conversion_rate,channel,location,creative_asset,KPI_met,remarks,created_at,updated_at) VALUES (7,52,'Winter Warmup','2023-11-15','2024-02-15','Stadium','Local supporters',300000,310000,8000000,210000,0.026,'Billboard','Stadium Entrance','Poster_A',0,'Exceeded budget','2023-11-15','2024-02-15');
INSERT INTO Team_Sponsorship_Activation_Log (team_id,sponsor_id,campaign_name,start_date,end_date,activation_type,target_audience,budget_usd,actual_spend_usd,impressions,clicks,conversion_rate,channel,location,creative_asset,KPI_met,remarks,created_at,updated_at) VALUES (12,61,'Champions Journey','2024-03-01','2024-05-31','Video','All fans',750000,720000,20000000,560000,0.028,'Streaming','Online','Video_Clip_X',1,'Met all KPIs','2024-03-01','2024-05-31');

-- Table capturing digital touchpoints for fan engagement
CREATE TABLE Fan_Engagement_Digital_Touchpoints (
    touchpoint_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    platform TEXT,
    interaction_type TEXT,
    timestamp TEXT,
    duration_seconds INTEGER,
    content_id INTEGER,
    campaign_id INTEGER,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    location_city TEXT,
    location_country TEXT,
    engagement_score REAL,
    response_action TEXT,
    referral_source TEXT,
    is_new_user INTEGER,
    session_id TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);
INSERT INTO Fan_Engagement_Digital_Touchpoints (fan_id,platform,interaction_type,timestamp,duration_seconds,content_id,campaign_id,device_type,os_version,app_version,location_city,location_country,engagement_score,response_action,referral_source,is_new_user,session_id,created_at,updated_at,notes) VALUES (231,'MobileApp','VideoPlay','2023-09-10 14:23:05',45,5678,102,'Smartphone','iOS14','1.2.3','Madrid','Spain',0.85,'Like','Social','0','sessA1','2023-09-10','2023-09-10','First interaction');
INSERT INTO Fan_Engagement_Digital_Touchpoints (fan_id,platform,interaction_type,timestamp,duration_seconds,content_id,campaign_id,device_type,os_version,app_version,location_city,location_country,engagement_score,response_action,referral_source,is_new_user,session_id,created_at,updated_at,notes) VALUES (845,'Web','ArticleRead','2023-10-02 09:12:30',180,7821,205,'Desktop','Windows10','2.0.0','London','UK',0.70,'Share','Email','0','sessB2','2023-10-02','2023-10-02','High dwell time');
INSERT INTO Fan_Engagement_Digital_Touchpoints (fan_id,platform,interaction_type,timestamp,duration_seconds,content_id,campaign_id,device_type,os_version,app_version,location_city,location_country,engagement_score,response_action,referral_source,is_new_user,session_id,created_at,updated_at,notes) VALUES (1190,'MobileApp','PollVote','2023-11-15 18:45:12',30,3345,307,'Tablet','Android11','3.1.0','Berlin','Germany',0.92,'Vote','Push','1','sessC3','2023-11-15','2023-11-15','Converted to subscriber');

-- Table defining versions of medical treatment protocols
CREATE TABLE Medical_Treatment_Protocol_Versions (
    protocol_id INTEGER PRIMARY KEY AUTOINCREMENT,
    version_number INTEGER,
    sport_type TEXT,
    injury_type TEXT,
    description TEXT,
    recommended_rehab_days INTEGER,
    physiotherapy_sessions INTEGER,
    strength_sessions INTEGER,
    modalities_used TEXT,
    medication_prescribed TEXT,
    dosage_mg INTEGER,
    frequency_per_day INTEGER,
    contraindications TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_at TEXT,
    approval_status TEXT,
    review_date TEXT,
    notes TEXT,
    is_active INTEGER
);
INSERT INTO Medical_Treatment_Protocol_Versions (version_number,sport_type,injury_type,description,recommended_rehab_days,physiotherapy_sessions,strength_sessions,modalities_used,medication_prescribed,dosage_mg,frequency_per_day,contraindications,created_by,created_at,updated_at,approval_status,review_date,notes,is_active) VALUES (1,'Football','ACL Tear','Anterior cruciate ligament reconstruction protocol',180,30,20,'Ice,Electrotherapy','PainReliefMed',500,2,'Pregnancy','DrSmith','2022-01-15','2022-01-15','Approved','2023-01-10','Standard ACL protocol',1);
INSERT INTO Medical_Treatment_Protocol_Versions (version_number,sport_type,injury_type,description,recommended_rehab_days,physiotherapy_sessions,strength_sessions,modalities_used,medication_prescribed,dosage_mg,frequency_per_day,contraindications,created_by,created_at,updated_at,approval_status,review_date,notes,is_active) VALUES (2,'Basketball','Ankle Sprain','Grade II lateral ankle sprain treatment',45,12,8,'Compression,Bandage','AntiInflam',250,1,'KidneyDisease','DrLee','2023-03-20','2023-03-20','Pending','2023-09-01','Awaiting review',0);
INSERT INTO Medical_Treatment_Protocol_Versions (version_number,sport_type,injury_type,description,recommended_rehab_days,physiotherapy_sessions,strength_sessions,modalities_used,medication_prescribed,dosage_mg,frequency_per_day,contraindications,created_by,created_at,updated_at,approval_status,review_date,notes,is_active) VALUES (1,'Rugby','Concussion','Gradual return-to-play concussion protocol',14,0,0,'NeurocognitiveTesting','None',0,0,'None','DrKim','2021-06-05','2021-06-05','Approved','2022-06-05','Updated for 2022 guidelines',1);

-- Table logging carbon emissions for travel itineraries
CREATE TABLE Travel_Itinerary_Carbon_Emission (
    itinerary_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    travel_type TEXT,
    departure_date TEXT,
    return_date TEXT,
    origin_city TEXT,
    destination_city TEXT,
    distance_km INTEGER,
    transport_mode TEXT,
    fuel_type TEXT,
    emission_kg_co2 REAL,
    passengers INTEGER,
    average_occupancy REAL,
    carbon_offset_used INTEGER,
    total_cost_usd INTEGER,
    sponsor_id INTEGER,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    is_verified INTEGER
);
INSERT INTO Travel_Itinerary_Carbon_Emission (team_id,travel_type,departure_date,return_date,origin_city,destination_city,distance_km,transport_mode,fuel_type,emission_kg_co2,passengers,average_occupancy,carbon_offset_used,total_cost_usd,sponsor_id,created_at,updated_at,notes,is_verified) VALUES (4,'AwayMatch','2023-09-12','2023-09-13','Barcelona','Milan',985,'Airplane','JetA','12345.6',30,0.78,1,25000,12,'2023-09-12','2023-09-13','Offset purchased','1');
INSERT INTO Travel_Itinerary_Carbon_Emission (team_id,travel_type,departure_date,return_date,origin_city,destination_city,distance_km,transport_mode,fuel_type,emission_kg_co2,passengers,average_occupancy,carbon_offset_used,total_cost_usd,sponsor_id,created_at,updated_at,notes,is_verified) VALUES (9,'TrainingCamp','2023-10-05','2023-10-10','London','Manchester',262,'Bus','Diesel','1850.2',25,0.85,0,8000,7,'2023-10-05','2023-10-10','No offset','0');
INSERT INTO Travel_Itinerary_Carbon_Emission (team_id,travel_type,departure_date,return_date,origin_city,destination_city,distance_km,transport_mode,fuel_type,emission_kg_co2,passengers,average_occupancy,carbon_offset_used,total_cost_usd,sponsor_id,created_at,updated_at,notes,is_verified) VALUES (15,'Friendly','2023-12-01','2023-12-02','Rome','Athens',1058,'Airplane','JetA','14000.0',28,0.80,1,27000,15,'2023-12-01','2023-12-02','Offset for charity','1');

-- Table assessing youth academy technical skills
CREATE TABLE Youth_Academy_Technical_Skills_Assessment (
    assessment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    academy_id INTEGER,
    player_api_id INTEGER,
    assessment_date TEXT,
    skill_dribbling INTEGER,
    skill_passing INTEGER,
    skill_shooting INTEGER,
    skill_tackling INTEGER,
    skill_positioning INTEGER,
    skill_vision INTEGER,
    skill_agility INTEGER,
    skill_strength INTEGER,
    skill_endurance INTEGER,
    coach_id INTEGER,
    overall_score INTEGER,
    rating_category TEXT,
    comments TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_final INTEGER,
    notes TEXT
);
INSERT INTO Youth_Academy_Technical_Skills_Assessment (academy_id,player_api_id,assessment_date,skill_dribbling,skill_passing,skill_shooting,skill_tackling,skill_positioning,skill_vision,skill_agility,skill_strength,skill_endurance,coach_id,overall_score,rating_category,comments,created_at,updated_at,is_final,notes) VALUES (2,12678,'2023-08-20',85,78,70,60,80,88,90,75,82,31,78,'B','Promising winger','2023-08-20','2023-08-20',0,'Requires work on shooting');
INSERT INTO Youth_Academy_Technical_Skills_Assessment (academy_id,player_api_id,assessment_date,skill_dribbling,skill_passing,skill_shooting,skill_tackling,skill_positioning,skill_vision,skill_agility,skill_strength,skill_endurance,coach_id,overall_score,rating_category,comments,created_at,updated_at,is_final,notes) VALUES (5,13455,'2023-09-15',70,65,68,80,72,60,75,82,78,44,71,'C','Solid defender','2023-09-15','2023-09-15',1,'Potential for leadership');
INSERT INTO Youth_Academy_Technical_Skills_Assessment (academy_id,player_api_id,assessment_date,skill_dribbling,skill_passing,skill_shooting,skill_tackling,skill_positioning,skill_vision,skill_agility,skill_strength,skill_endurance,coach_id,overall_score,rating_category,comments,created_at,updated_at,is_final,notes) VALUES (3,14022,'2023-10-01',92,88,85,55,90,95,93,78,88,27,94,'A','Elite midfielder','2023-10-01','2023-10-01',0,'Fast track to senior squad');

-- Table with detailed broadcast region audience metrics
CREATE TABLE Broadcast_Region_Audience_Metrics_Detail (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    region_code TEXT,
    broadcast_network_id INTEGER,
    match_id INTEGER,
    date TEXT,
    average_viewers INTEGER,
    peak_viewers INTEGER,
    market_share_pct REAL,
    average_watch_time_min REAL,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    revenue_usd REAL,
    streaming_quality TEXT,
    latency_ms INTEGER,
    buffer_events INTEGER,
    device_type TEXT,
    gender_distribution REAL,
    age_group_distribution TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Broadcast_Region_Audience_Metrics_Detail (region_code,broadcast_network_id,match_id,date,average_viewers,peak_viewers,market_share_pct,average_watch_time_min,ad_impressions,ad_clicks,revenue_usd,streaming_quality,latency_ms,buffer_events,device_type,gender_distribution,age_group_distribution,created_at,updated_at) VALUES ('EU1',3,101,'2023-09-03',2500000,3200000,22.5,45.2,8000000,210000,1500000.0,'HD',120,15,'SmartTV',48.0,'18-24:30,25-34:40,35-44:20,45+:10','2023-09-03','2023-09-03');
INSERT INTO Broadcast_Region_Audience_Metrics_Detail (region_code,broadcast_network_id,match_id,date,average_viewers,peak_viewers,market_share_pct,average_watch_time_min,ad_impressions,ad_clicks,revenue_usd,streaming_quality,latency_ms,buffer_events,device_type,gender_distribution,age_group_distribution,created_at,updated_at) VALUES ('AS2',5,104,'2023-10-12',1800000,2500000,18.0,38.5,6000000,150000,1100000.0,'FullHD',95,10,'Mobile',52.0,'18-24:35,25-34:45,35-44:15,45+:5','2023-10-12','2023-10-12');
INSERT INTO Broadcast_Region_Audience_Metrics_Detail (region_code,broadcast_network_id,match_id,date,average_viewers,peak_viewers,market_share_pct,average_watch_time_min,ad_impressions,ad_clicks,revenue_usd,streaming_quality,latency_ms,buffer_events,device_type,gender_distribution,age_group_distribution,created_at,updated_at) VALUES ('NA3',2,109,'2023-11-20',3000000,3800000,25.0,50.0,10000000,260000,2000000.0,'HD',85,8,'Desktop',49.0,'18-24:28,25-34:42,35-44:20,45+:10','2023-11-20','2023-11-20');

-- Table logging sensor calibration activities in stadiums
CREATE TABLE Stadium_Sensor_Calibration_Log (
    calibration_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_id INTEGER,
    sensor_type TEXT,
    stadium_id INTEGER,
    calibration_date TEXT,
    technician_id INTEGER,
    calibration_status TEXT,
    offset_value REAL,
    scale_factor REAL,
    temperature_c REAL,
    humidity_percent REAL,
    last_error_code TEXT,
    next_due_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER,
    location_description TEXT
);
INSERT INTO Stadium_Sensor_Calibration_Log (sensor_id,sensor_type,stadium_id,calibration_date,technician_id,calibration_status,offset_value,scale_factor,temperature_c,humidity_percent,last_error_code,next_due_date,notes,created_at,updated_at,is_active,location_description) VALUES (301,'Temperature','1','2023-07-15',12,'Passed',0.02,1.00,22.5,45.0,'None','2024-07-15','Routine calibration','2023-07-15','2023-07-15',1,'North stand');
INSERT INTO Stadium_Sensor_Calibration_Log (sensor_id,sensor_type,stadium_id,calibration_date,technician_id,calibration_status,offset_value,scale_factor,temperature_c,humidity_percent,last_error_code,next_due_date,notes,created_at,updated_at,is_active,location_description) VALUES (402,'Pressure','2','2023-09-01',8,'Failed',0.15,0.98,21.0,50.0,'E02','2023-12-01','Recalibration required after storm','2023-09-01','2023-09-01',0,'South entrance');
INSERT INTO Stadium_Sensor_Calibration_Log (sensor_id,sensor_type,stadium_id,calibration_date,technician_id,calibration_status,offset_value,scale_factor,temperature_c,humidity_percent,last_error_code,next_due_date,notes,created_at,updated_at,is_active,location_description) VALUES (510,'Light','3','2023-11-20',5,'Passed',0.00,1.00,19.8,40.0,'None','2024-11-20','All readings within spec','2023-11-20','2023-11-20',1,'East roof');

-- Table tracking sponsor brand audience reach analytics
CREATE TABLE Sponsor_Brand_Audience_Reach_Analytics (
    analytics_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_id INTEGER,
    period_start TEXT,
    period_end TEXT,
    total_audience INTEGER,
    unique_audience INTEGER,
    demographic_male_pct REAL,
    demographic_female_pct REAL,
    age_18_24_pct REAL,
    age_25_34_pct REAL,
    age_35_44_pct REAL,
    age_45_plus_pct REAL,
    geographic_region TEXT,
    platform_mix TEXT,
    engagement_rate REAL,
    conversion_rate REAL,
    cost_per_impression_usd REAL,
    total_spend_usd INTEGER,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Sponsor_Brand_Audience_Reach_Analytics (sponsor_id,campaign_id,period_start,period_end,total_audience,unique_audience,demographic_male_pct,demographic_female_pct,age_18_24_pct,age_25_34_pct,age_35_44_pct,age_45_plus_pct,geographic_region,platform_mix,engagement_rate,conversion_rate,cost_per_impression_usd,total_spend_usd,created_at,updated_at) VALUES (23,301,'2023-06-01','2023-08-31',5000000,4200000,48.0,52.0,30.0,40.0,20.0,10.0,'Europe','Social,Display',0.045,0.008,0.02,100000,'2023-06-01','2023-08-31');
INSERT INTO Sponsor_Brand_Audience_Reach_Analytics (sponsor_id,campaign_id,period_start,period_end,total_audience,unique_audience,demographic_male_pct,demographic_female_pct,age_18_24_pct,age_25_34_pct,age_35_44_pct,age_45_plus_pct,geographic_region,platform_mix,engagement_rate,conversion_rate,cost_per_impression_usd,total_spend_usd,created_at,updated_at) VALUES (37,412,'2023-09-01','2023-11-30',6200000,5500000,46.0,54.0,35.0,38.0,18.0,9.0,'NorthAmerica','Video,Social',0.052,0.010,0.025,150000,'2023-09-01','2023-11-30');
INSERT INTO Sponsor_Brand_Audience_Reach_Analytics (sponsor_id,campaign_id,period_start,period_end,total_audience,unique_audience,demographic_male_pct,demographic_female_pct,age_18_24_pct,age_25_34_pct,age_35_44_pct,age_45_plus_pct,geographic_region,platform_mix,engagement_rate,conversion_rate,cost_per_impression_usd,total_spend_usd,created_at,updated_at) VALUES (45,527,'2023-12-01','2024-02-28',7400000,6800000,47.0,53.0,32.0,42.0,19.0,7.0,'Asia','Display,Search',0.060,0.012,0.018,180000,'2023-12-01','2024-02-28');