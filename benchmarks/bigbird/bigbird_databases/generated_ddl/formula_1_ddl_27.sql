-- Acoustic Engine Test Results
CREATE TABLE acoustic_engine_test_results
(
    test_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    engine_id          INTEGER NOT NULL,
    test_date          DATE NOT NULL,
    ambient_temp_c     REAL,
    humidity_percent   REAL,
    sound_level_db     REAL,
    frequency_low_hz   REAL,
    frequency_mid_hz   REAL,
    frequency_high_hz  REAL,
    resonance_peak_hz  REAL,
    vibration_amp_mm   REAL,
    torque_nm          REAL,
    rpm                INTEGER,
    fuel_type          TEXT,
    test_operator      TEXT,
    notes              TEXT,
    approved_by        TEXT,
    approval_date      DATE,
    calibration_id     INTEGER,
    test_location      TEXT,
    equipment_serial   TEXT,
    data_file_path     TEXT
);

INSERT INTO acoustic_engine_test_results (engine_id,test_date,ambient_temp_c,humidity_percent,sound_level_db,frequency_low_hz,frequency_mid_hz,frequency_high_hz,resonance_peak_hz,vibration_amp_mm,torque_nm,rpm,fuel_type,test_operator,notes,approved_by,approval_date,calibration_id,test_location,equipment_serial,data_file_path)
VALUES (101,'2025-03-12',22.5,45.0,112.3,150.0,550.0,1200.0,650.0,0.32,420.5,8500,'petrol','john_doe','initial_test','jane_smith','2025-03-13',201,'hangar_a','EQ12345','/data/tests/001.csv');

INSERT INTO acoustic_engine_test_results (engine_id,test_date,ambient_temp_c,humidity_percent,sound_level_db,frequency_low_hz,frequency_mid_hz,frequency_high_hz,resonance_peak_hz,vibration_amp_mm,torque_nm,rpm,fuel_type,test_operator,notes,approved_by,approval_date,calibration_id,test_location,equipment_serial,data_file_path)
VALUES (102,'2025-04-05',18.0,55.2,108.7,140.0,530.0,1150.0,630.0,0.28,398.0,8200,'hybrid','alice_w','post_update','bob_k','2025-04-06',202,'hangar_b','EQ54321','/data/tests/002.csv');

INSERT INTO acoustic_engine_test_results (engine_id,test_date,ambient_temp_c,humidity_percent,sound_level_db,frequency_low_hz,frequency_mid_hz,frequency_high_hz,resonance_peak_hz,vibration_amp_mm,torque_nm,rpm,fuel_type,test_operator,notes,approved_by,approval_date,calibration_id,test_location,equipment_serial,data_file_path)
VALUES (103,'2025-05-20',25.1,38.0,115.0,160.0,560.0,1230.0,680.0,0.35,435.2,8800,'diesel','mike_r','final_validation','sara_l','2025-05-21',203,'hangar_c','EQ67890','/data/tests/003.csv');

-- Driver Nutrition Logs
CREATE TABLE driver_nutrition_logs
(
    log_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    driver_id         INTEGER NOT NULL,
    log_date          DATE NOT NULL,
    meal_time         TEXT,
    meal_type         TEXT,
    calories          INTEGER,
    protein_g         REAL,
    carbs_g           REAL,
    fats_g            REAL,
    hydration_ml      INTEGER,
    supplement_name   TEXT,
    supplement_dose   TEXT,
    notes             TEXT,
    recorded_by       TEXT,
    approved_by       TEXT,
    approval_date     DATE,
    meal_location     TEXT,
    menu_item_id      INTEGER,
    gluten_free       INTEGER,
    vegan             INTEGER,
    kcal_per_kg_body  REAL,
    bmi               REAL,
    heart_rate_bpm    INTEGER,
    sleep_hours       REAL,
    stress_level      INTEGER
);

INSERT INTO driver_nutrition_logs (driver_id,log_date,meal_time,meal_type,calories,protein_g,carbs_g,fats_g,hydration_ml,supplement_name,supplement_dose,notes,recorded_by,approved_by,approval_date,meal_location,menu_item_id,gluten_free,vegan,kcal_per_kg_body,bmi,heart_rate_bpm,sleep_hours,stress_level)
VALUES (7,'2025-06-01','08:00','breakfast',620,35.2,70.0,18.5,500,'vitamin_c','500mg','pre_race_fuel','nutritionist_a','chief_medical','2025-06-02','team_hotel',12,1,0,15.2,23.5,58,7.5,2);

INSERT INTO driver_nutrition_logs (driver_id,log_date,meal_time,meal_type,calories,protein_g,carbs_g,fats_g,hydration_ml,supplement_name,supplement_dose,notes,recorded_by,approved_by,approval_date,meal_location,menu_item_id,gluten_free,vegan,kcal_per_kg_body,bmi,heart_rate_bpm,sleep_hours,stress_level)
VALUES (8,'2025-06-01','13:00','lunch',780,45.0,85.0,22.0,800,'omega_3','2000mg','post_practice','nutritionist_b','chief_medical','2025-06-02','circuit_cafe',15,0,0,16.0,24.1,62,8.0,3);

INSERT INTO driver_nutrition_logs (driver_id,log_date,meal_time,meal_type,calories,protein_g,carbs_g,fats_g,hydration_ml,supplement_name,supplement_dose,notes,recorded_by,approved_by,approval_date,meal_location,menu_item_id,gluten_free,vegan,kcal_per_kg_body,bmi,heart_rate_bpm,sleep_hours,stress_level)
VALUES (9,'2025-06-01','19:30','dinner',950,50.5,110.0,30.0,950,'electrolyte_mix','250ml','recovery','nutritionist_c','chief_medical','2025-06-02','team_hall',18,0,1,17.5,25.3,68,7.0,1);

-- Circuit Parking Permit Records
CREATE TABLE circuit_parking_permit_records
(
    permit_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id           INTEGER NOT NULL,
    vendor_id            INTEGER NOT NULL,
    permit_number        TEXT NOT NULL,
    issue_date           DATE NOT NULL,
    expiry_date          DATE NOT NULL,
    vehicle_type         TEXT,
    max_vehicles_allowed INTEGER,
    zones_covered        TEXT,
    fee_amount           REAL,
    payment_status       TEXT,
    authorized_by        TEXT,
    authorized_date      DATE,
    notes                TEXT,
    inspection_required  INTEGER,
    last_inspection_date DATE,
    compliance_status    TEXT,
    gps_coordinates      TEXT,
    access_control_level TEXT,
    renewable_energy_used INTEGER,
    carbon_offset_units   REAL,
    created_at           DATE,
    updated_at           DATE,
    external_reference    TEXT,
    audit_trail           TEXT
);

INSERT INTO circuit_parking_permit_records (circuit_id,vendor_id,permit_number,issue_date,expiry_date,vehicle_type,max_vehicles_allowed,zones_covered,fee_amount,payment_status,authorized_by,authorized_date,notes,inspection_required,last_inspection_date,compliance_status,gps_coordinates,access_control_level,renewable_energy_used,carbon_offset_units,created_at,updated_at,external_reference,audit_trail)
VALUES (3,45,'PKM-2025-001','2025-01-15','2025-12-31','car',250,'zone_a,zone_b',12000.00,'paid','admin_j','2025-01-10','annual_parking_permit',1,'2025-06-01','compliant','45.4215N_75.6972W','level_2',1,15.5,'2025-01-15','2025-06-01','EXT-REF-001','created');

INSERT INTO circuit_parking_permit_records (circuit_id,vendor_id,permit_number,issue_date,expiry_date,vehicle_type,max_vehicles_allowed,zones_covered,fee_amount,payment_status,authorized_by,authorized_date,notes,inspection_required,last_inspection_date,compliance_status,gps_coordinates,access_control_level,renewable_energy_used,carbon_offset_units,created_at,updated_at,external_reference,audit_trail)
VALUES (5,46,'PKM-2025-002','2025-02-01','2025-12-31','motorcycle',120,'zone_c',5200.00,'pending','admin_k','2025-01-28','new_vendor',0,NULL,'pending','46.2276N_2.2137E','level_1',0,0.0,'2025-02-01','2025-02-01','EXT-REF-002','created');

INSERT INTO circuit_parking_permit_records (circuit_id,vendor_id,permit_number,issue_date,expiry_date,vehicle_type,max_vehicles_allowed,zones_covered,fee_amount,payment_status,authorized_by,authorized_date,notes,inspection_required,last_inspection_date,compliance_status,gps_coordinates,access_control_level,renewable_energy_used,carbon_offset_units,created_at,updated_at,external_reference,audit_trail)
VALUES (7,47,'PKM-2025-003','2025-03-10','2025-12-31','truck',30,'zone_d',34000.00,'paid','admin_l','2025-03-05','heavy_vehicle_permit',1,'2025-06-10','compliant','48.8566N_2.3522E','level_3',1,22.0,'2025-03-10','2025-06-10','EXT-REF-003','created');

-- Sponsor Virtual Campaigns
CREATE TABLE sponsor_virtual_campaigns
(
    campaign_id          INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id           INTEGER NOT NULL,
    campaign_name        TEXT NOT NULL,
    start_date           DATE NOT NULL,
    end_date             DATE NOT NULL,
    platform             TEXT,
    budget_usd           REAL,
    impressions          INTEGER,
    clicks               INTEGER,
    conversions          INTEGER,
    cpc_usd              REAL,
    cpm_usd              REAL,
    ctr_percent          REAL,
    conversion_rate_percent REAL,
    creative_type        TEXT,
    targeting_criteria   TEXT,
    geo_targeting        TEXT,
    audience_age_range   TEXT,
    audience_gender      TEXT,
    ad_format            TEXT,
    video_length_seconds INTEGER,
    sponsor_logo_url     TEXT,
    landing_page_url     TEXT,
    status               TEXT,
    created_by           TEXT,
    created_at           DATE,
    updated_at           DATE,
    notes                TEXT
);

INSERT INTO sponsor_virtual_campaigns (sponsor_id,campaign_name,start_date,end_date,platform,budget_usd,impressions,clicks,conversions,cpc_usd,cpm_usd,ctr_percent,conversion_rate_percent,creative_type,targeting_criteria,geo_targeting,audience_age_range,audience_gender,ad_format,video_length_seconds,sponsor_logo_url,landing_page_url,status,created_by,created_at,updated_at,notes)
VALUES (12,'fast_lap_promo','2025-04-01','2025-04-30','social_media',50000.00,2000000,15000,800,3.33,25.00,0.75,5.33,'video','interest_motorsport','global','18-45','all','pre_roll',30,'https://cdn.sponsor.com/logo.png','https://sponsor.com/promo','active','marketing_j','2025-03-20','2025-04-01','first_quarter_campaign');

INSERT INTO sponsor_virtual_campaigns (sponsor_id,campaign_name,start_date,end_date,platform,budget_usd,impressions,clicks,conversions,cpc_usd,cpm_usd,ctr_percent,conversion_rate_percent,creative_type,targeting_criteria,geo_targeting,audience_age_range,audience_gender,ad_format,video_length_seconds,sponsor_logo_url,landing_page_url,status,created_by,created_at,updated_at,notes)
VALUES (13,'team_gear_launch','2025-05-15','2025-06-15','display',75000.00,3500000,22000,1200,3.41,21.43,0.63,5.45,'banner','affinity_f1_fans','europe','25-55','male','banner',NULL,'https://cdn.sponsor.com/gear_logo.png','https://sponsor.com/gear','scheduled','marketing_k','2025-05-01','2025-05-01','gear_line_introduction');

INSERT INTO sponsor_virtual_campaigns (sponsor_id,campaign_name,start_date,end_date,platform,budget_usd,impressions,clicks,conversions,cpc_usd,cpm_usd,ctr_percent,conversion_rate_percent,creative_type,targeting_criteria,geo_targeting,audience_age_range,audience_gender,ad_format,video_length_seconds,sponsor_logo_url,landing_page_url,status,created_by,created_at,updated_at,notes)
VALUES (14,'eco_initiative','2025-07-01','2025-07-31','video',30000.00,1500000,8000,400,3.75,20.00,0.53,5.00,'video','interest_environment','global','18-60','all','mid_roll',45,'https://cdn.sponsor.com/eco_logo.png','https://sponsor.com/eco','pending','marketing_l','2025-06-20','2025-06-20','promote_renewable_energy');

-- Telemetry Predictive Models
CREATE TABLE telemetry_predictive_models
(
    model_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    model_name          TEXT NOT NULL,
    version             TEXT NOT NULL,
    created_date        DATE NOT NULL,
    trained_on_race_id  INTEGER,
    algorithm           TEXT,
    input_features      TEXT,
    target_variable     TEXT,
    accuracy_percent    REAL,
    mae                 REAL,
    rmse                REAL,
    training_time_seconds INTEGER,
    hyperparameters     TEXT,
    data_source         TEXT,
    is_active           INTEGER,
    deployed_endpoint   TEXT,
    last_evaluated_date DATE,
    evaluation_metrics  TEXT,
    author_name         TEXT,
    author_contact      TEXT,
    model_description   TEXT,
    notes               TEXT,
    approved_by         TEXT,
    approval_date       DATE,
    model_file_path     TEXT
);

INSERT INTO telemetry_predictive_models (model_name,version,created_date,trained_on_race_id,algorithm,input_features,target_variable,accuracy_percent,mae,rmse,training_time_seconds,hyperparameters,data_source,is_active,deployed_endpoint,last_evaluated_date,evaluation_metrics,author_name,author_contact,model_description,notes,approved_by,approval_date,model_file_path)
VALUES ('lap_time_forecast','v1.0','2025-02-10',112,'gradient_boosting','speed,gear,rpm','lap_time_seconds',92.5,0.32,0.45,3600,'max_depth=6;learning_rate=0.1','historical_telemetry',1,'https://ml.api/f1/ltf','2025-03-01','mae=0.32;rmse=0.45','data_scientist_a','ds_a@example.com','predict_next_lap_time','initial_release','lead_engineer','2025-03-05','/models/ltf_v1.pkl');

INSERT INTO telemetry_predictive_models (model_name,version,created_date,trained_on_race_id,algorithm,input_features,target_variable,accuracy_percent,mae,rmse,training_time_seconds,hyperparameters,data_source,is_active,deployed_endpoint,last_evaluated_date,evaluation_metrics,author_name,author_contact,model_description,notes,approved_by,approval_date,model_file_path)
VALUES ('fuel_consumption_estimator','v2.1','2025-04-22',134,'neural_network','rpm,throttle,gear','fuel_liters_per_lap',88.0,0.12,0.18,7200,'layers=4;units=128','combined_telemetry',1,'https://ml.api/f1/fc','2025-05-10','mae=0.12;rmse=0.18','data_scientist_b','ds_b@example.com','estimate_fuel_usage','updated_with_new_sensors','chief_data_officer','2025-05-12','/models/fc_v2.pkl');

INSERT INTO telemetry_predictive_models (model_name,version,created_date,trained_on_race_id,algorithm,input_features,target_variable,accuracy_percent,mae,rmse,training_time_seconds,hyperparameters,data_source,is_active,deployed_endpoint,last_evaluated_date,evaluation_metrics,author_name,author_contact,model_description,notes,approved_by,approval_date,model_file_path)
VALUES ('tire_wear_predictor','v0.9','2025-06-05',158,'random_forest','lap,temperature,pressure','wear_percentage',81.3,1.05,1.30,5400,'trees=200;max_features=sqrt','historical_tire_data',0,NULL,NULL,'pending','author_c','ds_c@example.com','predict_tire_degradation','experimental_phase','lead_engineer_c','2025-06-10','/models/twp_v0.pkl');

-- Fan Interactive Kiosk Usage
CREATE TABLE fan_interactive_kiosk_usage
(
    usage_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    kiosk_id            INTEGER NOT NULL,
    fan_id              INTEGER,
    session_start       DATETIME NOT NULL,
    session_end         DATETIME,
    interactions_count  INTEGER,
    games_played        INTEGER,
    videos_viewed       INTEGER,
    photos_downloaded   INTEGER,
    merchandise_viewed  INTEGER,
    loyalty_points_earned INTEGER,
    feedback_rating     INTEGER,
    feedback_comments   TEXT,
    location_zone       TEXT,
    kiosk_type          TEXT,
    firmware_version    TEXT,
    last_maintenance    DATE,
    ip_address          TEXT,
    mac_address         TEXT,
    operating_system    TEXT,
    screen_resolution   TEXT,
    language_selected   TEXT,
    power_source        TEXT,
    network_connectivity TEXT,
    created_at          DATE,
    updated_at          DATE,
    notes               TEXT
);

INSERT INTO fan_interactive_kiosk_usage (kiosk_id,fan_id,session_start,session_end,interactions_count,games_played,videos_viewed,photos_downloaded,merchandise_viewed,loyalty_points_earned,feedback_rating,feedback_comments,location_zone,kiosk_type,firmware_version,last_maintenance,ip_address,mac_address,operating_system,screen_resolution,language_selected,power_source,network_connectivity,created_at,updated_at,notes)
VALUES (21,305,'2025-07-15 10:05:00','2025-07-15 10:35:00',45,3,2,1,5,120,4,'great_experience','zone_alpha','touchscreen','v1.4','2025-06-20','192.168.1.21','00:1A:2B:3C:4D:5E','android','1920x1080','en','solar','wifi','2025-07-15','2025-07-15','no_issues');

INSERT INTO fan_interactive_kiosk_usage (kiosk_id,fan_id,session_start,session_end,interactions_count,games_played,videos_viewed,photos_downloaded,merchandise_viewed,loyalty_points_earned,feedback_rating,feedback_comments,location_zone,kiosk_type,firmware_version,last_maintenance,ip_address,mac_address,operating_system,screen_resolution,language_selected,power_source,network_connectivity,created_at,updated_at,notes)
VALUES (22,NULL,'2025-07-16 14:20:00',NULL,12,0,1,0,2,30,3,'needs_more_content','zone_beta','info_terminal','v1.5','2025-07-01','192.168.1.22','00:1A:2B:3C:4D:5F','linux','1280x800','es','mains','ethernet','2025-07-16','2025-07-16','session_ongoing');

INSERT INTO fan_interactive_kiosk_usage (kiosk_id,fan_id,session_start,session_end,interactions_count,games_played,videos_viewed,photos_downloaded,merchandise_viewed,loyalty_points_earned,feedback_rating,feedback_comments,location_zone,kiosk_type,firmware_version,last_maintenance,ip_address,mac_address,operating_system,screen_resolution,language_selected,power_source,network_connectivity,created_at,updated_at,notes)
VALUES (23,410,'2025-07-17 09:00:00','2025-07-17 09:45:00',78,5,4,3,10,250,5,'excellent_features','zone_gamma','kiosk_pro','v2.0','2025-07-10','192.168.1.23','00:1A:2B:3C:4D:60','android','1920x1200','fr','solar','wifi','2025-07-17','2025-07-17','high_engagement');

-- Race Route Planning
CREATE TABLE race_route_planning
(
    plan_id             INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id             INTEGER NOT NULL,
    planner_id          INTEGER NOT NULL,
    version             TEXT NOT NULL,
    created_date        DATE NOT NULL,
    approved_date       DATE,
    route_name          TEXT,
    total_distance_km   REAL,
    number_of_laps      INTEGER,
    pit_lane_length_km  REAL,
    safety_zone_count   INTEGER,
    sector_counts       TEXT,
    elevation_change_m  REAL,
    avg_speed_kph       REAL,
    max_speed_kph       REAL,
    corner_count        INTEGER,
    chicane_count       INTEGER,
    straight_length_km  REAL,
    weather_dependency  TEXT,
    surface_type        TEXT,
    map_file_path       TEXT,
    notes               TEXT,
    is_finalized        INTEGER,
    approved_by         TEXT,
    last_modified_by    TEXT,
    last_modified_date  DATE,
    external_reference   TEXT,
    audit_log           TEXT
);

INSERT INTO race_route_planning (race_id,planner_id,version,created_date,approved_date,route_name,total_distance_km,number_of_laps,pit_lane_length_km,safety_zone_count,sector_counts,elevation_change_m,avg_speed_kph,max_speed_kph,corner_count,chicane_count,straight_length_km,weather_dependency,surface_type,map_file_path,notes,is_finalized,approved_by,last_modified_by,last_modified_date,external_reference,audit_log)
VALUES (22,12,'v1.0','2025-01-10','2025-02-01','grand_prix_a',305.5,58,0.8,12,'1:10,2:12,3:8',45.0,210.0,340.0,96,8,3.2,'high','asphalt','/maps/gp_a_v1.kml','initial_draft',0,'chief_planner','planner_j','2025-01-15','EXT-001','created');

INSERT INTO race_route_planning (race_id,planner_id,version,created_date,approved_date,route_name,total_distance_km,number_of_laps,pit_lane_length_km,safety_zone_count,sector_counts,elevation_change_m,avg_speed_kph,max_speed_kph,corner_count,chicane_count,straight_length_km,weather_dependency,surface_type,map_file_path,notes,is_finalized,approved_by,last_modified_by,last_modified_date,external_reference,audit_log)
VALUES (23,13,'v2.1','2025-03-05','2025-03-20','street_circuit_x',120.7,45,0.5,9,'1:6,2:7,3:5',12.0,180.0,300.0,72,5,1.0,'moderate','concrete','/maps/street_x_v2.kml','updated_after_safety_review',1,'senior_planner','planner_k','2025-03-10','EXT-002','approved');

INSERT INTO race_route_planning (race_id,planner_id,version,created_date,approved_date,route_name,total_distance_km,number_of_laps,pit_lane_length_km,safety_zone_count,sector_counts,elevation_change_m,avg_speed_kph,max_speed_kph,corner_count,chicane_count,straight_length_km,weather_dependency,surface_type,map_file_path,notes,is_finalized,approved_by,last_modified_by,last_modified_date,external_reference,audit_log)
VALUES (24,14,'v1.3','2025-05-12',NULL,'mountain_circuit_z',210.3,52,0.9,15,'1:8,2:9,3:10',250.0,190.0,320.0,84,6,2.5,'low','asphalt','/maps/mountain_z_v1.kml','pending_weather_assessment',0,'','planner_l','2025-05-15','EXT-003','draft');

-- Official Disqualification Records
CREATE TABLE official_disqualification_records
(
    disq_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id               INTEGER NOT NULL,
    driver_id             INTEGER,
    constructor_id        INTEGER,
    official_id           INTEGER NOT NULL,
    disqualification_date DATE NOT NULL,
    reason_code           TEXT,
    detailed_reason       TEXT,
    lap_number            INTEGER,
    lap_time              TEXT,
    penalty_points        INTEGER,
    reinstated            INTEGER,
    reinstatement_date    DATE,
    appealed              INTEGER,
    appeal_outcome        TEXT,
    notes                 TEXT,
    documentation_path    TEXT,
    created_by            TEXT,
    created_at            DATE,
    updated_by            TEXT,
    updated_at            DATE,
    status                TEXT,
    audit_trail           TEXT,
    external_reference    TEXT,
    reviewed_by           TEXT
);

INSERT INTO official_disqualification_records (race_id,driver_id,constructor_id,official_id,disqualification_date,reason_code,detailed_reason,lap_number,lap_time,penalty_points,reinstated,reinstatement_date,appealed,appeal_outcome,notes,documentation_path,created_by,created_at,updated_by,updated_at,status,audit_trail,external_reference,reviewed_by)
VALUES (30,9,4,101,'2025-06-15','TECH','illegal_ride_height',42,'1:38.452',5,0,NULL,1,'upheld','driver_exceeded_technical_limits','/docs/disq_30_9.pdf','admin_m','2025-06-16','admin_n','2025-06-16','active','created','REF-030','chief_officer');

INSERT INTO official_disqualification_records (race_id,driver_id,constructor_id,official_id,disqualification_date,reason_code,detailed_reason,lap_number,lap_time,penalty_points,reinstated,reinstatement_date,appealed,appeal_outcome,notes,documentation_path,created_by,created_at,updated_by,updated_at,status,audit_trail,external_reference,reviewed_by)
VALUES (31,12,5,102,'2025-07-02','SPORT','dangerous_overtaking',57,'1:45.210',10,1,'2025-07-05',1,'reversed','overtake_deemed unsafe_but_mitigated','/docs/disq_31_12.pdf','admin_o','2025-07-03','admin_p','2025-07-05','closed','updated','REF-031','senior_officer');

INSERT INTO official_disqualification_records (race_id,driver_id,constructor_id,official_id,disqualification_date,reason_code,detailed_reason,lap_number,lap_time,penalty_points,reinstated,reinstatement_date,appealed,appeal_outcome,notes,documentation_path,created_by,created_at,updated_by,updated_at,status,audit_trail,external_reference,reviewed_by)
VALUES (32,NULL,6,103,'2025-08-10','CONST','team_staff_involvement',0,NULL,0,0,NULL,0,NULL,'team_mechanics_entered_pit_lane','/docs/disq_32_const6.pdf','admin_q','2025-08-11','admin_r','2025-08-11','active','created','REF-032','chief_officer');

-- Hospitality Vendor Feedback
CREATE TABLE hospitality_vendor_feedback
(
    feedback_id          INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id             INTEGER NOT NULL,
    vendor_id            INTEGER NOT NULL,
    service_type         TEXT,
    rating_overall       INTEGER,
    rating_taste         INTEGER,
    rating_presentation  INTEGER,
    rating_timeliness    INTEGER,
    comments             TEXT,
    suggestions          TEXT,
    contacted_person     TEXT,
    contact_email        TEXT,
    contact_phone        TEXT,
    response_status      TEXT,
    response_date        DATE,
    follow_up_required   INTEGER,
    follow_up_date       DATE,
    created_by           TEXT,
    created_at           DATE,
    updated_by           TEXT,
    updated_at           DATE,
    status               TEXT,
    audit_log            TEXT,
    external_reference   TEXT,
    venue_location       TEXT,
    event_date           DATE,
    category             TEXT
);

INSERT INTO hospitality_vendor_feedback (event_id,vendor_id,service_type,rating_overall,rating_taste,rating_presentation,rating_timeliness,comments,suggestions,contacted_person,contact_email,contact_phone,response_status,response_date,follow_up_required,follow_up_date,created_by,created_at,updated_by,updated_at,status,audit_log,external_reference,venue_location,event_date,category)
VALUES (101,201,'catering',9,8,9,7,'excellent_food_quality','add_more_vegetarian_options','john_smith','john.smith@example.com','5551234567','responded','2025-04-02',0,NULL,'admin_v','2025-04-01','admin_v','2025-04-02','closed','log1','EVT-101','grand_prix_circuit','2025-04-08','food');

INSERT INTO hospitality_vendor_feedback (event_id,vendor_id,service_type,rating_overall,rating_taste,rating_presentation,rating_timeliness,comments,suggestions,contacted_person,contact_email,contact_phone,response_status,response_date,follow_up_required,follow_up_date,created_by,created_at,updated_by,updated_at,status,audit_log,external_reference,venue_location,event_date,category)
VALUES (102,202,'beverage',7,6,8,8,'drink_service_was_slow','increase_staff_during_peak','alice_j','alice.j@example.com','5559876543','pending',NULL,1,'2025-05-10','admin_w','2025-05-01','admin_w','2025-05-05','open','log2','EVT-102','city_hall','2025-05-15','beverage');

INSERT INTO hospitality_vendor_feedback (event_id,vendor_id,service_type,rating_overall,rating_taste,rating_presentation,rating_timeliness,comments,suggestions,contacted_person,contact_email,contact_phone,response_status,response_date,follow_up_required,follow_up_date,created_by,created_at,updated_by,updated_at,status,audit_log,external_reference,venue_location,event_date,category)
VALUES (103,203,'equipment_rental',5,0,0,6,'equipment_malfunctioned','provide_spare_parts','mike_t','mike.t@example.com','5553217890','responded','2025-06-20',0,NULL,'admin_x','2025-06-15','admin_x','2025-06-20','closed','log3','EVT-103','racing_complex','2025-06-20','equipment');

-- Carbon Offset Transactions
CREATE TABLE carbon_offset_transactions
(
    transaction_id        INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id               INTEGER NOT NULL,
    contractor_id         INTEGER NOT NULL,
    offset_type           TEXT,
    amount_tonnes         REAL,
    price_per_tonne_usd   REAL,
    total_price_usd       REAL,
    transaction_date      DATE,
    verification_body     TEXT,
    certificate_number    TEXT,
    project_location      TEXT,
    project_type          TEXT,
    expected_reduction_percent REAL,
    actual_reduction_percent REAL,
    compliance_status    TEXT,
    notes                 TEXT,
    created_by            TEXT,
    created_at            DATE,
    updated_by            TEXT,
    updated_at            DATE,
    audit_trail           TEXT,
    external_reference    TEXT,
    verification_date     DATE,
    expiry_date           DATE,
    contract_term_years   INTEGER,
    renewable_energy_source TEXT
);

INSERT INTO carbon_offset_transactions (race_id,contractor_id,offset_type,amount_tonnes,price_per_tonne_usd,total_price_usd,transaction_date,verification_body,certificate_number,project_location,project_type,expected_reduction_percent,actual_reduction_percent,compliance_status,notes,created_by,created_at,updated_by,updated_at,audit_trail,external_reference,verification_date,expiry_date,contract_term_years,renewable_energy_source)
VALUES (35,301,'reforestation',120.5,15.00,1807.50,'2025-03-10','green_verify','CERT-001','amazon_basin','forest','85.0',82.3,'compliant','offset_for_2025_season','admin_y','2025-03-11','admin_y','2025-03-11','logA','TX-035','2025-03-12','2028-03-10',3,'wind');

INSERT INTO carbon_offset_transactions (race_id,contractor_id,offset_type,amount_tonnes,price_per_tonne_usd,total_price_usd,transaction_date,verification_body,certificate_number,project_location,project_type,expected_reduction_percent,actual_reduction_percent,compliance_status,notes,created_by,created_at,updated_by,updated_at,audit_trail,external_reference,verification_date,expiry_date,contract_term_years,renewable_energy_source)
VALUES (36,302,'renewable_energy','solar','45.0',20.00,900.00,'2025-04-15','energy_audits','CERT-002','desert_zone','solar_farm','90.0',88.5,'compliant','solar_installation_for_race_36','admin_z','2025-04-16','admin_z','2025-04-16','logB','TX-036','2025-04-17','2029-04-15',4,'solar');

INSERT INTO carbon_offset_transactions (race_id,contractor_id,offset_type,amount_tonnes,price_per_tonne_usd,total_price_usd,transaction_date,verification_body,certificate_number,project_location,project_type,expected_reduction_percent,actual_reduction_percent,compliance_status,notes,created_by,created_at,updated_by,updated_at,audit_trail,external_reference,verification_date,expiry_date,contract_term_years,renewable_energy_source)
VALUES (37,303,'methane_capture','30.0',25.00,750.00,'2025-05-20','climate_check','CERT-003','landfill_site','methane_capture','80.0',79.0,'compliant','methane_capture_project_for_race_37','admin_aa','2025-05-21','admin_aa','2025-05-21','logC','TX-037','2025-05-22','2028-05-20',3,'biogas');