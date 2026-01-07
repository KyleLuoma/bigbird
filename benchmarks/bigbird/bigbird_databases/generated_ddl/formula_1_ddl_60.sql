-- Circuit environment sensor readings
CREATE TABLE circuit_environment_sensors (
    sensor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id INTEGER,
    timestamp INTEGER,
    temperature REAL,
    humidity REAL,
    wind_speed REAL,
    wind_direction REAL,
    pressure REAL,
    rainfall REAL,
    soil_moisture REAL,
    noise_level REAL,
    vibration REAL,
    uv_index REAL,
    pm2_5 REAL,
    pm10 REAL,
    o3 REAL,
    no2 REAL,
    co REAL,
    so2 REAL,
    battery_level REAL,
    signal_strength REAL,
    firmware_version INTEGER
);
INSERT INTO circuit_environment_sensors (circuit_id,timestamp,temperature,humidity,wind_speed,wind_direction,pressure,rainfall,soil_moisture,noise_level,vibration,uv_index,pm2_5,pm10,o3,no2,co,so2,battery_level,signal_strength,firmware_version) VALUES (1,1700000000,22.5,55.0,5.2,180.0,1013.2,0.0,12.3,68.0,0.02,3.1,12.5,20.3,0.04,0.01,0.2,0.005,95.0,78.0,2);
INSERT INTO circuit_environment_sensors (circuit_id,timestamp,temperature,humidity,wind_speed,wind_direction,pressure,rainfall,soil_moisture,noise_level,vibration,uv_index,pm2_5,pm10,o3,no2,co,so2,battery_level,signal_strength,firmware_version) VALUES (2,1700012000,18.9,62.0,3.8,90.0,1015.0,0.5,10.1,70.5,0.01,4.0,15.2,25.1,0.05,0.015,0.25,0.006,90.0,80.0,2);
INSERT INTO circuit_environment_sensors (circuit_id,timestamp,temperature,humidity,wind_speed,wind_direction,pressure,rainfall,soil_moisture,noise_level,vibration,uv_index,pm2_5,pm10,o3,no2,co,so2,battery_level,signal_strength,firmware_version) VALUES (3,1700024000,25.3,48.0,6.4,270.0,1012.5,0.0,13.7,66.2,0.03,2.8,11.0,18.4,0.03,0.009,0.18,0.004,98.0,77.0,2);

-- Sponsor engagement metrics
CREATE TABLE sponsor_engagement_metrics (
    sponsor_id INTEGER,
    event_id INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    spend REAL,
    roi REAL,
    engagement_score REAL,
    social_mentions INTEGER,
    video_views INTEGER,
    newsletter_opens INTEGER,
    webinar_attendees INTEGER,
    booth_visits INTEGER,
    brand_awareness REAL,
    activation_start INTEGER,
    activation_end INTEGER,
    region_code INTEGER,
    market_segment INTEGER,
    campaign_type INTEGER,
    created_at INTEGER,
    updated_at INTEGER
);
INSERT INTO sponsor_engagement_metrics (sponsor_id,event_id,impressions,clicks,conversions,spend,roi,engagement_score,social_mentions,video_views,newsletter_opens,webinar_attendees,booth_visits,brand_awareness,activation_start,activation_end,region_code,market_segment,campaign_type,created_at,updated_at) VALUES (101,2001,500000,12000,300,250000.0,1.8,85.5,1500,8000,25000,3500,2000,78.0,1700000000,1700600000,1,3,2,1700000000,1700600000);
INSERT INTO sponsor_engagement_metrics (sponsor_id,event_id,impressions,clicks,conversions,spend,roi,engagement_score,social_mentions,video_views,newsletter_opens,webinar_attendees,booth_visits,brand_awareness,activation_start,activation_end,region_code,market_segment,campaign_type,created_at,updated_at) VALUES (102,2002,750000,18000,450,350000.0,2.1,92.0,2100,12000,32000,4200,2800,85.0,1700100000,1700700000,2,4,1,1700100000,1700700000);
INSERT INTO sponsor_engagement_metrics (sponsor_id,event_id,impressions,clicks,conversions,spend,roi,engagement_score,social_mentions,video_views,newsletter_opens,webinar_attendees,booth_visits,brand_awareness,activation_start,activation_end,region_code,market_segment,campaign_type,created_at,updated_at) VALUES (103,2003,300000,8000,200,150000.0,1.5,78.2,900,5000,18000,2500,1500,70.0,1700200000,1700800000,3,2,3,1700200000,1700800000);

-- Driver fitness assessments
CREATE TABLE driver_fitness_assessments (
    assessment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    driver_id INTEGER,
    date INTEGER,
    weight_kg REAL,
    height_cm REAL,
    body_fat_percent REAL,
    vo2_max REAL,
    sprint_100m_ms REAL,
    bench_press_kg REAL,
    squat_kg REAL,
    deadlift_kg REAL,
    flexibility_cm REAL,
    reaction_time_ms REAL,
    sleep_hours REAL,
    calories_intake REAL,
    hydration_liters REAL,
    injury_score REAL,
    stress_level REAL,
    motivation_score REAL,
    test_conductor_id INTEGER,
    notes_code INTEGER
);
INSERT INTO driver_fitness_assessments (driver_id,date,weight_kg,height_cm,body_fat_percent,vo2_max,sprint_100m_ms,bench_press_kg,squat_kg,deadlift_kg,flexibility_cm,reaction_time_ms,sleep_hours,calories_intake,hydration_liters,injury_score,stress_level,motivation_score,test_conductor_id,notes_code) VALUES (10,1700005000,78.5,182.0,10.2,55.0,250.0,120.0,180.0,200.0,35.0,180.0,7.5,2800.0,3.0,0.0,2.0,85.0,5001,0);
INSERT INTO driver_fitness_assessments (driver_id,date,weight_kg,height_cm,body_fat_percent,vo2_max,sprint_100m_ms,bench_press_kg,squat_kg,deadlift_kg,flexibility_cm,reaction_time_ms,sleep_hours,calories_intake,hydration_liters,injury_score,stress_level,motivation_score,test_conductor_id,notes_code) VALUES (12,1700015000,72.0,176.0,9.5,58.0,240.0,115.0,175.0,195.0,38.0,175.0,8.0,2900.0,3.2,0.0,1.5,90.0,5002,0);
INSERT INTO driver_fitness_assessments (driver_id,date,weight_kg,height_cm,body_fat_percent,vo2_max,sprint_100m_ms,bench_press_kg,squat_kg,deadlift_kg,flexibility_cm,reaction_time_ms,sleep_hours,calories_intake,hydration_liters,injury_score,stress_level,motivation_score,test_conductor_id,notes_code) VALUES (15,1700025000,80.0,180.0,11.0,52.0,260.0,125.0,185.0,210.0,33.0,185.0,7.0,2750.0,2.8,0.0,2.5,88.0,5003,0);

-- Race logistics vehicle usage
CREATE TABLE race_logistics_vehicle_usage (
    usage_id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER,
    vehicle_id INTEGER,
    vehicle_type INTEGER,
    driver_id INTEGER,
    start_time INTEGER,
    end_time INTEGER,
    distance_km REAL,
    fuel_used_l REAL,
    load_kg REAL,
    maintenance_status INTEGER,
    gps_signal_quality REAL,
    emissions_kg REAL,
    route_id INTEGER,
    depot_id INTEGER,
    assigned_shift INTEGER,
    cargo_type INTEGER,
    temperature_c REAL,
    humidity_percent REAL,
    comments_code INTEGER
);
INSERT INTO race_logistics_vehicle_usage (race_id,vehicle_id,vehicle_type,driver_id,start_time,end_time,distance_km,fuel_used_l,load_kg,maintenance_status,gps_signal_quality,emissions_kg,route_id,depot_id,assigned_shift,cargo_type,temperature_c,humidity_percent,comments_code) VALUES (101,301,1,10,1700000000,1700024000,350.0,45.0,1200.0,0,98.5,12.0,5,2,1,3,22.0,55.0,0);
INSERT INTO race_logistics_vehicle_usage (race_id,vehicle_id,vehicle_type,driver_id,start_time,end_time,distance_km,fuel_used_l,load_kg,maintenance_status,gps_signal_quality,emissions_kg,route_id,depot_id,assigned_shift,cargo_type,temperature_c,humidity_percent,comments_code) VALUES (102,302,2,12,1700100000,1700125000,420.0,52.0,1500.0,0,96.3,14.5,6,3,2,4,24.0,60.0,0);
INSERT INTO race_logistics_vehicle_usage (race_id,vehicle_id,vehicle_type,driver_id,start_time,end_time,distance_km,fuel_used_l,load_kg,maintenance_status,gps_signal_quality,emissions_kg,route_id,depot_id,assigned_shift,cargo_type,temperature_c,humidity_percent,comments_code) VALUES (103,303,1,15,1700200000,1700223000,380.0,48.5,1300.0,0,97.0,13.2,7,4,1,2,23.0,58.0,0);

-- Hospitality event schedule
CREATE TABLE hospitality_event_schedule (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    venue_id INTEGER,
    start_timestamp INTEGER,
    end_timestamp INTEGER,
    capacity INTEGER,
    avg_ticket_price REAL,
    catering_budget REAL,
    security_staff INTEGER,
    media_coverage_level INTEGER,
    vip_count INTEGER,
    sponsor_id INTEGER,
    theme_code INTEGER,
    decor_budget REAL,
    lighting_budget REAL,
    sound_budget REAL,
    logistics_budget REAL,
    expected_attendance INTEGER,
    actual_attendance INTEGER,
    satisfaction_score REAL,
    feedback_code INTEGER
);
INSERT INTO hospitality_event_schedule (event_id,venue_id,start_timestamp,end_timestamp,capacity,avg_ticket_price,catering_budget,security_staff,media_coverage_level,vip_count,sponsor_id,theme_code,decor_budget,lighting_budget,sound_budget,logistics_budget,expected_attendance,actual_attendance,satisfaction_score,feedback_code) VALUES (2001,401,1700000000,1700007200,500,150.0,20000.0,30,2,50,101,1,5000.0,3000.0,4000.0,15000.0,450,460,4.8,0);
INSERT INTO hospitality_event_schedule (event_id,venue_id,start_timestamp,end_timestamp,capacity,avg_ticket_price,catering_budget,security_staff,media_coverage_level,vip_count,sponsor_id,theme_code,decor_budget,lighting_budget,sound_budget,logistics_budget,expected_attendance,actual_attendance,satisfaction_score,feedback_code) VALUES (2002,402,1700100000,1700107200,650,170.0,25000.0,35,3,70,102,2,6000.0,3500.0,4500.0,18000.0,600,610,4.9,0);
INSERT INTO hospitality_event_schedule (event_id,venue_id,start_timestamp,end_timestamp,capacity,avg_ticket_price,catering_budget,security_staff,media_coverage_level,vip_count,sponsor_id,theme_code,decor_budget,lighting_budget,sound_budget,logistics_budget,expected_attendance,actual_attendance,satisfaction_score,feedback_code) VALUES (2003,403,1700200000,1700207200,400,130.0,18000.0,25,1,40,103,3,4500.0,2500.0,3500.0,13000.0,380,385,4.7,0);

-- Broadcast media rights
CREATE TABLE broadcast_media_rights (
    rights_id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER,
    media_company_id INTEGER,
    territory_code INTEGER,
    start_date INTEGER,
    end_date INTEGER,
    fee REAL,
    revenue_share_percent REAL,
    exclusivity_flag INTEGER,
    broadcast_type INTEGER,
    language_code INTEGER,
    hd_flag INTEGER,
    vod_flag INTEGER,
    streaming_quality INTEGER,
    ad_slots INTEGER,
    viewership_estimate INTEGER,
    contract_signed_date INTEGER,
    contract_status INTEGER,
    renewal_option INTEGER,
    compliance_score REAL,
    audit_flag INTEGER
);
INSERT INTO broadcast_media_rights (race_id,media_company_id,territory_code,start_date,end_date,fee,revenue_share_percent,exclusivity_flag,broadcast_type,language_code,hd_flag,vod_flag,streaming_quality,ad_slots,viewership_estimate,contract_signed_date,contract_status,renewal_option,compliance_score,audit_flag) VALUES (101,501,1,1700000000,1700600000,1000000.0,0.6,1,2,1,1,1,1080,12,2500000,1699000000,1,1,95.0,0);
INSERT INTO broadcast_media_rights (race_id,media_company_id,territory_code,start_date,end_date,fee,revenue_share_percent,exclusivity_flag,broadcast_type,language_code,hd_flag,vod_flag,streaming_quality,ad_slots,viewership_estimate,contract_signed_date,contract_status,renewal_option,compliance_score,audit_flag) VALUES (102,502,2,1700100000,1700700000,1200000.0,0.65,0,3,2,1,0,720,10,3000000,1699100000,1,0,92.0,0);
INSERT INTO broadcast_media_rights (race_id,media_company_id,territory_code,start_date,end_date,fee,revenue_share_percent,exclusivity_flag,broadcast_type,language_code,hd_flag,vod_flag,streaming_quality,ad_slots,viewership_estimate,contract_signed_date,contract_status,renewal_option,compliance_score,audit_flag) VALUES (103,503,3,1700200000,1700800000,900000.0,0.55,1,1,3,0,1,480,8,2000000,1699200000,0,1,88.0,0);

-- Environmental noise monitoring
CREATE TABLE environmental_noise_monitoring (
    monitor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id INTEGER,
    timestamp INTEGER,
    noise_db_a REAL,
    noise_db_b REAL,
    frequency_hz REAL,
    wind_speed REAL,
    temperature REAL,
    humidity REAL,
    sensor_status INTEGER,
    battery_percent REAL,
    calibration_date INTEGER,
    avg_noise_db REAL,
    max_noise_db REAL,
    min_noise_db REAL,
    event_flag INTEGER,
    compliance_status INTEGER,
    reporting_user_id INTEGER,
    notes_code INTEGER,
    latitude REAL,
    longitude REAL
);
INSERT INTO environmental_noise_monitoring (circuit_id,timestamp,noise_db_a,noise_db_b,frequency_hz,wind_speed,temperature,humidity,sensor_status,battery_percent,calibration_date,avg_noise_db,max_noise_db,min_noise_db,event_flag,compliance_status,reporting_user_id,notes_code,latitude,longitude) VALUES (1,1700005000,68.5,70.2,1000.0,4.5,21.0,55.0,1,96.0,1699500000,69.0,73.0,65.0,0,1,6001,0,45.1234,-73.5678);
INSERT INTO environmental_noise_monitoring (circuit_id,timestamp,noise_db_a,noise_db_b,frequency_hz,wind_speed,temperature,humidity,sensor_status,battery_percent,calibration_date,avg_noise_db,max_noise_db,min_noise_db,event_flag,compliance_status,reporting_user_id,notes_code,latitude,longitude) VALUES (2,1700015000,71.0,69.5,950.0,5.0,19.5,60.0,1,94.0,1699510000,70.2,75.0,66.5,0,1,6002,0,46.2345,-74.6789);
INSERT INTO environmental_noise_monitoring (circuit_id,timestamp,noise_db_a,noise_db_b,frequency_hz,wind_speed,temperature,humidity,sensor_status,battery_percent,calibration_date,avg_noise_db,max_noise_db,min_noise_db,event_flag,compliance_status,reporting_user_id,notes_code,latitude,longitude) VALUES (3,1700025000,66.8,68.0,1020.0,3.8,22.5,52.0,1,97.0,1699520000,67.5,71.0,64.0,0,1,6003,0,44.9876,-72.4567);

-- Track surface friction tests
CREATE TABLE track_surface_friction_tests (
    test_id INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id INTEGER,
    date INTEGER,
    segment_id INTEGER,
    tire_type INTEGER,
    pressure_kpa REAL,
    temperature_c REAL,
    humidity_percent REAL,
    friction_coefficient REAL,
    slip_ratio REAL,
    longitudinal_force REAL,
    lateral_force REAL,
    test_speed_kph REAL,
    operator_id INTEGER,
    equipment_id INTEGER,
    result_code INTEGER,
    repeatability_score REAL,
    compliance_flag INTEGER,
    notes_code INTEGER,
    gps_lat REAL,
    gps_lng REAL
);
INSERT INTO track_surface_friction_tests (circuit_id,date,segment_id,tire_type,pressure_kpa,temperature_c,humidity_percent,friction_coefficient,slip_ratio,longitudinal_force,lateral_force,test_speed_kph,operator_id,equipment_id,result_code,repeatability_score,compliance_flag,notes_code,gps_lat,gps_lng) VALUES (1,1700008000,12,2,210.0,27.0,45.0,0.95,0.02,1800.0,1200.0,150.0,55,7001,3001,0,0.98,1,0,45.1122,-73.5544);
INSERT INTO track_surface_friction_tests (circuit_id,date,segment_id,tire_type,pressure_kpa,temperature_c,humidity_percent,friction_coefficient,slip_ratio,longitudinal_force,lateral_force,test_speed_kph,operator_id,equipment_id,result_code,repeatability_score,compliance_flag,notes_code,gps_lat,gps_lng) VALUES (2,1700018000,8,1,200.0,25.0,50.0,0.92,0.025,1750.0,1150.0,148.0,58,7002,3002,0,0.95,1,0,46.2211,-74.6655);
INSERT INTO track_surface_friction_tests (circuit_id,date,segment_id,tire_type,pressure_kpa,temperature_c,humidity_percent,friction_coefficient,slip_ratio,longitudinal_force,lateral_force,test_speed_kph,operator_id,equipment_id,result_code,repeatability_score,compliance_flag,notes_code,gps_lat,gps_lng) VALUES (3,1700028000,15,3,215.0,29.0,42.0,0.97,0.018,1820.0,1220.0,152.0,53,7003,3003,0,0.99,1,0,44.9988,-72.4321);

-- Fan loyalty rewards program
CREATE TABLE fan_loyalty_rewards_program (
    reward_id INTEGER PRIMARY KEY AUTOINCREMENT,
    program_id INTEGER,
    tier_level INTEGER,
    points_required INTEGER,
    reward_type INTEGER,
    discount_percent REAL,
    merchandise_id INTEGER,
    voucher_code INTEGER,
    validity_days INTEGER,
    activation_date INTEGER,
    expiration_date INTEGER,
    usage_limit INTEGER,
    redemption_count INTEGER,
    partner_id INTEGER,
    bonus_points INTEGER,
    eligibility_score REAL,
    status_flag INTEGER,
    created_by_user_id INTEGER,
    last_modified_timestamp INTEGER,
    audit_trail_code INTEGER
);
INSERT INTO fan_loyalty_rewards_program (program_id,tier_level,points_required,reward_type,discount_percent,merchandise_id,voucher_code,validity_days,activation_date,expiration_date,usage_limit,redemption_count,partner_id,bonus_points,eligibility_score,status_flag,created_by_user_id,last_modified_timestamp,audit_trail_code) VALUES (1,1,5000,2,10.0,1001,20001,90,1700000000,1700900000,1,0,3001,100,0.85,1,4001,1700000000,0);
INSERT INTO fan_loyalty_rewards_program (program_id,tier_level,points_required,reward_type,discount_percent,merchandise_id,voucher_code,validity_days,activation_date,expiration_date,usage_limit,redemption_count,partner_id,bonus_points,eligibility_score,status_flag,created_by_user_id,last_modified_timestamp,audit_trail_code) VALUES (1,2,12000,3,15.0,1002,20002,180,1700100000,1701900000,2,0,3002,250,0.92,1,4002,1700100000,0);
INSERT INTO fan_loyalty_rewards_program (program_id,tier_level,points_required,reward_type,discount_percent,merchandise_id,voucher_code,validity_days,activation_date,expiration_date,usage_limit,redemption_count,partner_id,bonus_points,eligibility_score,status_flag,created_by_user_id,last_modified_timestamp,audit_trail_code) VALUES (1,3,25000,4,20.0,1003,20003,365,1700200000,1730200000,3,0,3003,500,0.97,1,4003,1700200000,0);

-- Race security patrols
CREATE TABLE race_security_patrols (
    patrol_id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER,
    shift_start INTEGER,
    shift_end INTEGER,
    patrol_area_code INTEGER,
    officer_id INTEGER,
    vehicle_id INTEGER,
    incident_count INTEGER,
    response_time_avg REAL,
    equipment_checklist INTEGER,
    radio_channel INTEGER,
    gps_start_lat REAL,
    gps_start_lng REAL,
    gps_end_lat REAL,
    gps_end_lng REAL,
    fatigue_score REAL,
    training_level INTEGER,
    notes_code INTEGER,
    compliance_flag INTEGER,
    logged_by_user_id INTEGER,
    audit_timestamp INTEGER
);
INSERT INTO race_security_patrols (race_id,shift_start,shift_end,patrol_area_code,officer_id,vehicle_id,incident_count,response_time_avg,equipment_checklist,radio_channel,gps_start_lat,gps_start_lng,gps_end_lat,gps_end_lng,fatigue_score,training_level,notes_code,compliance_flag,logged_by_user_id,audit_timestamp) VALUES (101,1700000000,1700018000,5,8001,9001,2,3.5,1,101,45.1200,-73.5600,45.1300,-73.5700,1.2,3,0,1,8501,1700000000);
INSERT INTO race_security_patrols (race_id,shift_start,shift_end,patrol_area_code,officer_id,vehicle_id,incident_count,response_time_avg,equipment_checklist,radio_channel,gps_start_lat,gps_start_lng,gps_end_lat,gps_end_lng,fatigue_score,training_level,notes_code,compliance_flag,logged_by_user_id,audit_timestamp) VALUES (102,1700100000,1700118000,7,8002,9002,1,2.8,1,102,46.2300,-74.6700,46.2400,-74.6800,1.0,4,0,1,8502,1700100000);
INSERT INTO race_security_patrols (race_id,shift_start,shift_end,patrol_area_code,officer_id,vehicle_id,incident_count,response_time_avg,equipment_checklist,radio_channel,gps_start_lat,gps_start_lng,gps_end_lat,gps_end_lng,fatigue_score,training_level,notes_code,compliance_flag,logged_by_user_id,audit_timestamp) VALUES (103,1700200000,1700218000,3,8003,9003,3,4.2,1,103,44.9900,-72.4500,44.9950,-72.4550,1.5,2,0,1,8503,1700200000);