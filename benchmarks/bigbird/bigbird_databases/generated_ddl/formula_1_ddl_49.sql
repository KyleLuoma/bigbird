-- Venue thermal profiles
CREATE TABLE venue_thermal_profiles (
    profile_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    record_date DATE,
    avg_temp REAL,
    max_temp REAL,
    min_temp REAL,
    humidity_percent REAL,
    wind_speed REAL,
    solar_radiation REAL,
    heat_index REAL,
    dew_point REAL,
    equipment_status TEXT,
    sensor_calibration_date DATE,
    data_source TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    temp_variance REAL,
    peak_wind_speed REAL,
    cooling_load REAL,
    heating_load REAL,
    thermal_efficiency REAL
);
INSERT INTO venue_thermal_profiles (venue_id,record_date,avg_temp,max_temp,min_temp,humidity_percent,wind_speed,solar_radiation,heat_index,dew_point,equipment_status,sensor_calibration_date,data_source,notes,created_at,updated_at,temp_variance,peak_wind_speed,cooling_load,heating_load,thermal_efficiency) VALUES (1,'2024-05-01',27.5,35.2,20.3,58.0,12.4,550.0,30.1,15.2,'operational','2024-04-15','sensor_network','initial reading','2024-05-01 08:00:00','2024-05-01 08:00:00',4.7,15.6,1200.5,850.3,0.85);
INSERT INTO venue_thermal_profiles (venue_id,record_date,avg_temp,max_temp,min_temp,humidity_percent,wind_speed,solar_radiation,heat_index,dew_point,equipment_status,sensor_calibration_date,data_source,notes,created_at,updated_at,temp_variance,peak_wind_speed,cooling_load,heating_load,thermal_efficiency) VALUES (2,'2024-05-02',22.1,28.9,16.4,63.5,8.7,480.0,26.5,12.8,'maintenance','2024-04-20','satellite','post‑maintenance','2024-05-02 09:00:00','2024-05-02 09:00:00',3.8,10.2,950.0,1100.0,0.78);
INSERT INTO venue_thermal_profiles (venue_id,record_date,avg_temp,max_temp,min_temp,humidity_percent,wind_speed,solar_radiation,heat_index,dew_point,equipment_status,sensor_calibration_date,data_source,notes,created_at,updated_at,temp_variance,peak_wind_speed,cooling_load,heating_load,thermal_efficiency) VALUES (3,'2024-05-03',19.4,25.0,14.2,70.0,5.3,410.0,23.0,11.5,'operational','2024-04-25','drone','steady conditions','2024-05-03 07:30:00','2024-05-03 07:30:00',2.8,7.1,800.0,1300.0,0.81);

-- Team mental wellness sessions
CREATE TABLE team_mental_wellness_sessions (
    session_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    therapist_id INTEGER,
    session_date DATE,
    session_type TEXT,
    duration_minutes INTEGER,
    focus_area TEXT,
    anxiety_score INTEGER,
    depression_score INTEGER,
    stress_level INTEGER,
    coping_strategy TEXT,
    follow_up_required TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    session_location TEXT,
    participant_count INTEGER,
    feedback_score INTEGER,
    confidentiality_flag INTEGER,
    session_outcome TEXT,
    therapist_notes TEXT,
    program_name TEXT
);
INSERT INTO team_mental_wellness_sessions (team_id,therapist_id,session_date,session_type,duration_minutes,focus_area,anxiety_score,depression_score,stress_level,coping_strategy,follow_up_required,notes,created_at,updated_at,session_location,participant_count,feedback_score,confidentiality_flag,session_outcome,therapist_notes,program_name) VALUES (10,200,'2024-04-10','group',90,'focus',3,2,4,'mindfulness','yes','positive start','2024-04-10 10:00:00','2024-04-10 10:00:00','conference_room',5,8,1,'improved','patient engaged','wellness_series');
INSERT INTO team_mental_wellness_sessions (team_id,therapist_id,session_date,session_type,duration_minutes,focus_area,anxiety_score,depression_score,stress_level,coping_strategy,follow_up_required,notes,created_at,updated_at,session_location,participant_count,feedback_score,confidentiality_flag,session_outcome,therapist_notes,program_name) VALUES (11,201,'2024-04-12','individual',60,'resilience',2,1,3,'breathing','no','focus on performance','2024-04-12 14:30:00','2024-04-12 14:30:00','office_101',1,9,1,'stable','no issues','wellness_series');
INSERT INTO team_mental_wellness_sessions (team_id,therapist_id,session_date,session_type,duration_minutes,focus_area,anxiety_score,depression_score,stress_level,coping_strategy,follow_up_required,notes,created_at,updated_at,session_location,participant_count,feedback_score,confidentiality_flag,session_outcome,therapist_notes,program_name) VALUES (12,202,'2024-04-15','group',120,'team_cohesion',4,3,5,'dialogue','yes','addressing tension','2024-04-15 09:00:00','2024-04-15 09:00:00','meeting_hall',8,7,1,'progress','need follow‑up','wellness_series');

-- Race legal documents
CREATE TABLE race_legal_documents (
    doc_id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER,
    doc_type TEXT,
    title TEXT,
    version INTEGER,
    issue_date DATE,
    effective_date DATE,
    expiration_date DATE,
    author TEXT,
    reviewed_by TEXT,
    approval_status TEXT,
    storage_path TEXT,
    confidentiality_level TEXT,
    checksum TEXT,
    page_count INTEGER,
    language TEXT,
    signed_flag INTEGER,
    notarized_flag INTEGER,
    jurisdiction TEXT,
    related_case TEXT,
    notes TEXT,
    created_at TEXT
);
INSERT INTO race_legal_documents (race_id,doc_type,title,version,issue_date,effective_date,expiration_date,author,reviewed_by,approval_status,storage_path,confidentiality_level,checksum,page_count,language,signed_flag,notarized_flag,jurisdiction,related_case,notes,created_at) VALUES (100,'contract','grand_prix_contract',1,'2023-06-01','2023-07-01','2024-06-30','legal_dept','compliance_officer','approved','/files/contracts/gp100_v1.pdf','high','abc123def','25','en',1,1,'uk','case42','initial version','2023-06-01 12:00:00');
INSERT INTO race_legal_documents (race_id,doc_type,title,version,issue_date,effective_date,expiration_date,author,reviewed_by,approval_status,storage_path,confidentiality_level,checksum,page_count,language,signed_flag,notarized_flag,jurisdiction,related_case,notes,created_at) VALUES (101,'permit','environmental_permit',2,'2023-07-15','2023-08-01','2025-07-31','regulatory_dept','environment_officer','pending','/files/permits/env101_v2.pdf','medium','def456ghi','10','en',0,0,'de','case57','awaiting signature','2023-07-15 09:30:00');
INSERT INTO race_legal_documents (race_id,doc_type,title,version,issue_date,effective_date,expiration_date,author,reviewed_by,approval_status,storage_path,confidentiality_level,checksum,page_count,language,signed_flag,notarized_flag,jurisdiction,related_case,notes,created_at) VALUES (102,'agreement','sponsor_agreement',3,'2023-08-20','2023-09-01','2026-08-31','partnership_team','finance_officer','approved','/files/agreements/sp102_v3.pdf','high','ghi789jkl','30','en',1,1,'fr','case63','final version','2023-08-20 15:45:00');

-- Circuit public art installations
CREATE TABLE circuit_public_art_installations (
    installation_id INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id INTEGER,
    artist_name TEXT,
    artwork_title TEXT,
    installation_date DATE,
    material TEXT,
    dimensions TEXT,
    location_within_circuit TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance_date DATE,
    condition_status TEXT,
    insurance_policy_number TEXT,
    value_estimate REAL,
    sponsor_name TEXT,
    sponsor_contribution REAL,
    description TEXT,
    created_at TEXT,
    updated_at TEXT,
    photo_url TEXT,
    gps_lat REAL,
    gps_lng REAL,
    public_access_flag INTEGER
);
INSERT INTO circuit_public_art_installations (circuit_id,artist_name,artwork_title,installation_date,material,dimensions,location_within_circuit,maintenance_cycle_days,last_maintenance_date,condition_status,insurance_policy_number,value_estimate,sponsor_name,sponsor_contribution,description,created_at,updated_at,photo_url,gps_lat,gps_lng,public_access_flag) VALUES (1,'jane_doe','speed_sculpture','2022-05-10','steel','5m_x_2m','paddock','180','2023-11-01','good','INS12345',150000,'fast_tires','20000','abstract representation of speed','2022-05-10 09:00:00','2023-11-01 10:00:00','/images/art1.jpg',48.8566,2.3522,1);
INSERT INTO circuit_public_art_installations (circuit_id,artist_name,artwork_title,installation_date,material,dimensions,location_within_circuit,maintenance_cycle_days,last_maintenance_date,condition_status,insurance_policy_number,value_estimate,sponsor_name,sponsor_contribution,description,created_at,updated_at,photo_url,gps_lat,gps_lng,public_access_flag) VALUES (2,'mark_smith','turning_point','2023-03-22','bronze','3m_x_1.5m','grandstand','365','2024-03-20','excellent','INS67890',85000,'auto_group','12000','dynamic turn illustration','2023-03-22 14:30:00','2024-03-20 08:00:00','/images/art2.jpg',51.5074,-0.1278,1);
INSERT INTO circuit_public_art_installations (circuit_id,artist_name,artwork_title,installation_date,material,dimensions,location_within_circuit,maintenance_cycle_days,last_maintenance_date,condition_status,insurance_policy_number,value_estimate,sponsor_name,sponsor_contribution,description,created_at,updated_at,photo_url,gps_lat,gps_lng,public_access_flag) VALUES (3,'lisa_chen','track_wave','2021-09-15','glass','4m_x_2.5m','pit_lane','730','2022-09-14','good','INS54321',200000,'luxury_parts','25000','fluid motion theme','2021-09-15 11:00:00','2022-09-14 12:00:00','/images/art3.jpg',40.7128,-74.0060,0);

-- Driver cultural exchange events
CREATE TABLE driver_cultural_exchange_events (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    driver_id INTEGER,
    host_country TEXT,
    event_name TEXT,
    start_date DATE,
    end_date DATE,
    purpose TEXT,
    participants_count INTEGER,
    cultural_activity TEXT,
    accommodation_type TEXT,
    travel_mode TEXT,
    sponsor_name TEXT,
    budget REAL,
    outcomes TEXT,
    feedback_score INTEGER,
    language_used TEXT,
    media_coverage_flag INTEGER,
    photos_url TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    exchange_program TEXT
);
INSERT INTO driver_cultural_exchange_events (driver_id,host_country,event_name,start_date,end_date,purpose,participants_count,cultural_activity,accommodation_type,travel_mode,sponsor_name,budget,outcomes,feedback_score,language_used,media_coverage_flag,photos_url,created_at,updated_at,notes,exchange_program) VALUES (300,'japan','sakura_drive','2023-04-01','2023-04-07','promote motorsport','12','tea_ceremony','hotel','flight','global_sports','15000','enhanced brand visibility',9,'japanese',1,'/photos/sakura.jpg','2023-04-01 08:00:00','2023-04-07 18:00:00','positive reception','asia_pilot');
INSERT INTO driver_cultural_exchange_events (driver_id,host_country,event_name,start_date,end_date,purpose,participants_count,cultural_activity,accommodation_type,travel_mode,sponsor_name,budget,outcomes,feedback_score,language_used,media_coverage_flag,photos_url,created_at,updated_at,notes,exchange_program) VALUES (301,'brazil','carnaval_speed','2023-02-15','2023-02-20','community outreach','8','dance_workshop','guest_house','flight','energy_partner','12000','community engagement increased',8,'portuguese',1,'/photos/carnaval.jpg','2023-02-15 09:00:00','2023-02-20 20:00:00','great local media','latin_america');
INSERT INTO driver_cultural_exchange_events (driver_id,host_country,event_name,start_date,end_date,purpose,participants_count,cultural_activity,accommodation_type,travel_mode,sponsor_name,budget,outcomes,feedback_score,language_used,media_coverage_flag,photos_url,created_at,updated_at,notes,exchange_program) VALUES (302,'germany','tech_festival','2023-06-10','2023-06-12','technology showcase','5','engineering_seminar','apartment','train','tech_sponsor','20000','knowledge exchange achieved',10,'german',0,'/photos/techfest.jpg','2023-06-10 07:30:00','2023-06-12 19:00:00','well received by engineers','europe_innovation');

-- Sponsor impact assessments
CREATE TABLE sponsor_impact_assessments (
    assessment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_id INTEGER,
    assessment_date DATE,
    brand_exposure_score REAL,
    audience_reach INTEGER,
    sentiment_score REAL,
    sales_impact_estimate REAL,
    media_mentions INTEGER,
    social_engagement INTEGER,
    activation_type TEXT,
    cost_per_impression REAL,
    roi REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    analyst_name TEXT,
    region TEXT,
    product_category TEXT,
    campaign_duration_days INTEGER,
    target_demographic TEXT,
    assessment_method TEXT,
    confidence_interval REAL
);
INSERT INTO sponsor_impact_assessments (sponsor_id,event_id,assessment_date,brand_exposure_score,audience_reach,sentiment_score,sales_impact_estimate,media_mentions,social_engagement,activation_type,cost_per_impression,roi,notes,created_at,updated_at,analyst_name,region,product_category,campaign_duration_days,target_demographic,assessment_method,confidence_interval) VALUES (400,1000,'2023-05-01',78.5,250000,0.86,120000.0,340,5600,'trackside_banner',0.05,3.2,'strong brand lift','2023-05-01 10:00:00','2023-05-01 10:00:00','alice_k','europe','tires',30,'motorsport_fans','survey',0.04);
INSERT INTO sponsor_impact_assessments (sponsor_id,event_id,assessment_date,brand_exposure_score,audience_reach,sentiment_score,sales_impact_estimate,media_mentions,social_engagement,activation_type,cost_per_impression,roi,notes,created_at,updated_at,analyst_name,region,product_category,campaign_duration_days,target_demographic,assessment_method,confidence_interval) VALUES (401,1001,'2023-06-15',65.2,180000,0.79,85000.0,210,4300,'digital_activation',0.07,2.8,'good online traction','2023-06-15 11:30:00','2023-06-15 11:30:00','bob_l','asia','engine_oil',45,'young_drivers','web_analytics',0.05);
INSERT INTO sponsor_impact_assessments (sponsor_id,event_id,assessment_date,brand_exposure_score,audience_reach,sentiment_score,sales_impact_estimate,media_mentions,social_engagement,activation_type,cost_per_impression,roi,notes,created_at,updated_at,analyst_name,region,product_category,campaign_duration_days,target_demographic,assessment_method,confidence_interval) VALUES (402,1002,'2023-07-20',82.1,300000,0.91,150000.0,410,6200,'hospitality_suite',0.04,3.6,'exceptional ROI','2023-07-20 09:45:00','2023-07-20 09:45:00','carol_m','north_america','sponsorship',60,'high_income','event_feedback',0.03);

-- Media live stream metrics
CREATE TABLE media_live_stream_metrics (
    stream_id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER,
    platform TEXT,
    start_time TEXT,
    end_time TEXT,
    peak_viewers INTEGER,
    average_viewers INTEGER,
    total_watch_time_seconds INTEGER,
    bitrate_kbps INTEGER,
    resolution TEXT,
    latency_ms INTEGER,
    dropped_frames INTEGER,
    concurrent_streams INTEGER,
    ad_breaks INTEGER,
    ad_revenue REAL,
    chat_messages INTEGER,
    likes INTEGER,
    shares INTEGER,
    comments INTEGER,
    stream_quality_score REAL,
    content_rating TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO media_live_stream_metrics (race_id,platform,start_time,end_time,peak_viewers,average_viewers,total_watch_time_seconds,bitrate_kbps,resolution,latency_ms,dropped_frames,concurrent_streams,ad_breaks,ad_revenue,chat_messages,likes,shares,comments,stream_quality_score,content_rating,created_at,updated_at) VALUES (100,'youtube','2024-04-01 14:00:00','2024-04-01 16:30:00',85000,42000,10800000,4500,'1080p',120,320,2,5,45000.0,15000,3200,650,1200,9.2,'pg13','2024-04-01 14:00:00','2024-04-01 16:30:00');
INSERT INTO media_live_stream_metrics (race_id,platform,start_time,end_time,peak_viewers,average_viewers,total_watch_time_seconds,bitrate_kbps,resolution,latency_ms,dropped_frames,concurrent_streams,ad_breaks,ad_revenue,chat_messages,likes,shares,comments,stream_quality_score,content_rating,created_at,updated_at) VALUES (101,'twitch','2024-05-10 13:30:00','2024-05-10 15:45:00',62000,30000,8400000,3800,'720p',150,210,3,4,22000.0,12000,2500,540,950,8.7,'pg','2024-05-10 13:30:00','2024-05-10 15:45:00');
INSERT INTO media_live_stream_metrics (race_id,platform,start_time,end_time,peak_viewers,average_viewers,total_watch_time_seconds,bitrate_kbps,resolution,latency_ms,dropped_frames,concurrent_streams,ad_breaks,ad_revenue,chat_messages,likes,shares,comments,stream_quality_score,content_rating,created_at,updated_at) VALUES (102,'facebook','2024-06-20 15:00:00','2024-06-20 17:20:00',72000,35000,9600000,4200,'1080p',130,280,2,6,31000.0,13500,2900,720,1080,9.0,'pg13','2024-06-20 15:00:00','2024-06-20 17:20:00');

-- Fan virtual experience assets
CREATE TABLE fan_virtual_experience_assets (
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    asset_type TEXT,
    asset_name TEXT,
    creation_date DATE,
    file_path TEXT,
    file_size_mb REAL,
    format TEXT,
    version INTEGER,
    status TEXT,
    access_level TEXT,
    usage_count INTEGER,
    last_accessed TEXT,
    associated_event_id INTEGER,
    description TEXT,
    creator TEXT,
    copyright TEXT,
    license TEXT,
    tags TEXT,
    rating INTEGER,
    feedback TEXT,
    created_at TEXT
);
INSERT INTO fan_virtual_experience_assets (fan_id,asset_type,asset_name,creation_date,file_path,file_size_mb,format,version,status,access_level,usage_count,last_accessed,associated_event_id,description,creator,copyright,license,tags,rating,feedback,created_at) VALUES (5000,'3d_model','paddock_view','2023-12-01','/assets/models/paddock.glb',15.2,'glb',1,'active','premium',12,'2024-01-05 10:00:00',100,'high_detail_paddock','studio_xyz','studio_xyz_2023','cc_by','paddock,vr',5,'excellent','2023-12-01 09:30:00');
INSERT INTO fan_virtual_experience_assets (fan_id,asset_type,asset_name,creation_date,file_path,file_size_mb,format,version,status,access_level,usage_count,last_accessed,associated_event_id,description,creator,copyright,license,tags,rating,feedback,created_at) VALUES (5001,'video','race_highlights','2024-02-15','/assets/videos/highlights.mp4',250.0,'mp4',2,'active','standard',30,'2024-02-20 14:20:00',101,'highlights_of_race_2024','media_team','media_team_2024','cc0','highlights,2024',4,'good','2024-02-15 08:00:00');
INSERT INTO fan_virtual_experience_assets (fan_id,asset_type,asset_name,creation_date,file_path,file_size_mb,format,version,status,access_level,usage_count,last_accessed,associated_event_id,description,creator,copyright,license,tags,rating,feedback,created_at) VALUES (5002,'audio','pit_lane_ambience','2023-11-20','/assets/audio/pit_ambience.wav',45.5,'wav',1,'active','free',8,'2024-01-10 12:45:00',102,'ambient_sound_of_pit_lane','sound_lab','sound_lab_2023','cc_by_sa','ambient,pit',5,'very_good','2023-11-20 07:45:00');

-- Logistics carrier contracts
CREATE TABLE logistics_carrier_contracts (
    contract_id INTEGER PRIMARY KEY AUTOINCREMENT,
    carrier_name TEXT,
    contract_start DATE,
    contract_end DATE,
    service_level TEXT,
    max_weight_kg REAL,
    max_volume_cbm REAL,
    rate_per_kg REAL,
    rate_per_cbm REAL,
    insurance_coverage REAL,
    liability_limit REAL,
    penalty_clause TEXT,
    renewal_option TEXT,
    contact_person TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    payment_terms TEXT,
    performance_bonus REAL,
    performance_penalty REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO logistics_carrier_contracts (carrier_name,contract_start,contract_end,service_level,max_weight_kg,max_volume_cbm,rate_per_kg,rate_per_cbm,insurance_coverage,liability_limit,penalty_clause,renewal_option,contact_person,contact_phone,contact_email,payment_terms,performance_bonus,performance_penalty,notes,created_at,updated_at) VALUES ('fast_freight','2023-01-01','2025-12-31','express',25000,120,2.5,15,500000,1000000,'late_delivery','auto','john_doe','+441234567890','john.doe@fastfreight.com','net30',10000,5000,'preferred carrier','2023-01-01 09:00:00','2023-01-01 09:00:00');
INSERT INTO logistics_carrier_contracts (carrier_name,contract_start,contract_end,service_level,max_weight_kg,max_volume_cbm,rate_per_kg,rate_per_cbm,insurance_coverage,liability_limit,penalty_clause,renewal_option,contact_person,contact_phone,contact_email,payment_terms,performance_bonus,performance_penalty,notes,created_at,updated_at) VALUES ('global_ship','2022-06-15','2024-06-14','standard',40000,200,1.8,12,750000,1500000,'damage_claims','manual','jane_smith','+33123456789','jane.smith@globalship.com','net45',8000,4000,'includes customs clearance','2022-06-15 10:30:00','2022-06-15 10:30:00');
INSERT INTO logistics_carrier_contracts (carrier_name,contract_start,contract_end,service_level,max_weight_kg,max_volume_cbm,rate_per_kg,rate_per_cbm,insurance_coverage,liability_limit,penalty_clause,renewal_option,contact_person,contact_phone,contact_email,payment_terms,performance_bonus,performance_penalty,notes,created_at,updated_at) VALUES ('euro_logistics','2024-03-01','2026-02-28','priority',30000,150,2.2,14,600000,1200000,'late_pickup','auto','mike_lee','+3412345678','mike.lee@eurologistics.com','net30',9000,4500,'covers EU shipments','2024-03-01 08:15:00','2024-03-01 08:15:00');

-- Environmental restoration measurements
CREATE TABLE environmental_restoration_measurements (
    measurement_id INTEGER PRIMARY KEY AUTOINCREMENT,
    site_id INTEGER,
    measurement_date DATE,
    soil_ph REAL,
    soil_moisture_percent REAL,
    vegetation_cover_percent REAL,
    biodiversity_index REAL,
    water_quality_index REAL,
    air_quality_index REAL,
    noise_level_db REAL,
    remediation_method TEXT,
    contractor_name TEXT,
    cost REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    gps_lat REAL,
    gps_lng REAL,
    sample_depth_cm REAL,
    temperature_c REAL,
    humidity_percent REAL,
    compliance_status TEXT
);
INSERT INTO environmental_restoration_measurements (site_id,measurement_date,soil_ph,soil_moisture_percent,vegetation_cover_percent,biodiversity_index,water_quality_index,air_quality_index,noise_level_db,remediation_method,contractor_name,cost,notes,created_at,updated_at,gps_lat,gps_lng,sample_depth_cm,temperature_c,humidity_percent,compliance_status) VALUES (1,'2023-09-10',6.8,22.5,45.0,0.78,85,70,55,'phytoremediation','green_earth','25000','first phase complete','2023-09-10 09:00:00','2023-09-10 09:00:00',48.8566,2.3522,30,18.5,60,'compliant');
INSERT INTO environmental_restoration_measurements (site_id,measurement_date,soil_ph,soil_moisture_percent,vegetation_cover_percent,biodiversity_index,water_quality_index,air_quality_index,noise_level_db,remediation_method,contractor_name,cost,notes,created_at,updated_at,gps_lat,gps_lng,sample_depth_cm,temperature_c,humidity_percent,compliance_status) VALUES (2,'2023-10-05',7.1,20.0,50.2,0.82,88,72,58,'bioaugmentation','eco_solutions','30000','monitoring ongoing','2023-10-05 10:30:00','2023-10-05 10:30:00',51.5074,-0.1278,25,16.2,65,'compliant');
INSERT INTO environmental_restoration_measurements (site_id,measurement_date,soil_ph,soil_moisture_percent,vegetation_cover_percent,biodiversity_index,water_quality_index,air_quality_index,noise_level_db,remediation_method,contractor_name,cost,notes,created_at,updated_at,gps_lat,gps_lng,sample_depth_cm,temperature_c,humidity_percent,compliance_status) VALUES (3,'2023-11-12',6.5,24.3,42.7,0.75,80,68,52,'phytoextraction','nature_restore','22000','pre‑remediation data','2023-11-12 08:45:00','2023-11-12 08:45:00',40.7128,-74.0060,35,19.0,58,'pending');