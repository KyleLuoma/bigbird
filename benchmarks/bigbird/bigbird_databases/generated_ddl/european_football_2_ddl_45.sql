-- Log of daily operational metrics for each stadium
CREATE TABLE Stadium_Operations_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    log_date TEXT,
    security_staff_count INTEGER,
    cleaning_staff_count INTEGER,
    maintenance_issues INTEGER,
    electricity_usage_kwh REAL,
    water_usage_gal REAL,
    waste_tonnage REAL,
    wifi_users INTEGER,
    parking_usage_percent REAL,
    average_temperature_c REAL,
    humidity_percent REAL,
    incident_reports INTEGER,
    emergency_drills_conducted INTEGER,
    lighting_hours INTEGER,
    hvac_runtime_minutes INTEGER,
    staff_shift_start TEXT,
    staff_shift_end TEXT,
    notes TEXT
);
INSERT INTO Stadium_Operations_Log (stadium_id,log_date,security_staff_count,cleaning_staff_count,maintenance_issues,electricity_usage_kwh,water_usage_gal,waste_tonnage,wifi_users,parking_usage_percent,average_temperature_c,humidity_percent,incident_reports,emergency_drills_conducted,lighting_hours,hvac_runtime_minutes,staff_shift_start,staff_shift_end,notes) VALUES (101,'2025-09-01',25,40,2,5320.5,12400.0,3.2,1500,85.5,22.1,60,0,1,12,480,'08:00','22:00','All systems normal');
INSERT INTO Stadium_Operations_Log (stadium_id,log_date,security_staff_count,cleaning_staff_count,maintenance_issues,electricity_usage_kwh,water_usage_gal,waste_tonnage,wifi_users,parking_usage_percent,average_temperature_c,humidity_percent,incident_reports,emergency_drills_conducted,lighting_hours,hvac_runtime_minutes,staff_shift_start,staff_shift_end,notes) VALUES (102,'2025-09-01',30,45,0,6100.2,13800.5,2.8,1700,90.0,21.5,58,1,0,14,510,'07:30','23:00','Minor lighting fault resolved');
INSERT INTO Stadium_Operations_Log (stadium_id,log_date,security_staff_count,cleaning_staff_count,maintenance_issues,electricity_usage_kwh,water_usage_gal,waste_tonnage,wifi_users,parking_usage_percent,average_temperature_c,humidity_percent,incident_reports,emergency_drills_conducted,lighting_hours,hvac_runtime_minutes,staff_shift_start,staff_shift_end,notes) VALUES (103,'2025-09-01',20,35,1,4750.0,11200.3,3.0,1300,78.2,23.0,65,0,1,10,450,'09:00','21:00','Water leak in section B');

-- Metrics of fan engagement per match
CREATE TABLE Fan_Engagement_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    engagement_score REAL,
    average_watch_time_min REAL,
    peak_concurrent_viewers INTEGER,
    social_shares INTEGER,
    hashtag_mentions INTEGER,
    sentiment_score REAL,
    mobile_app_sessions INTEGER,
    stadium_ambient_noise_db REAL,
    fan_chants_count INTEGER,
    merchandise_browses INTEGER,
    food_sales_usd REAL,
    drink_sales_usd REAL,
    wifi_data_gb REAL,
    avg_fan_age REAL,
    gender_ratio_male REAL,
    gender_ratio_female REAL,
    loyalty_program_enrollments INTEGER,
    post_match_survey_response_rate REAL,
    notes TEXT
);
INSERT INTO Fan_Engagement_Analytics (match_id,engagement_score,average_watch_time_min,peak_concurrent_viewers,social_shares,hashtag_mentions,sentiment_score,mobile_app_sessions,stadium_ambient_noise_db,fan_chants_count,merchandise_browses,food_sales_usd,drink_sales_usd,wifi_data_gb,avg_fan_age,gender_ratio_male,gender_ratio_female,loyalty_program_enrollments,post_match_survey_response_rate,notes) VALUES (2001,78.4,45.2,120000,5600,3400,0.85,25000,78.5,150,3400,12400.5,8700.3,520.7,27.4,0.55,0.45,3200,0.62,'High overall engagement');
INSERT INTO Fan_Engagement_Analytics (match_id,engagement_score,average_watch_time_min,peak_concurrent_viewers,social_shares,hashtag_mentions,sentiment_score,mobile_app_sessions,stadium_ambient_noise_db,fan_chants_count,merchandise_browses,food_sales_usd,drink_sales_usd,wifi_data_gb,avg_fan_age,gender_ratio_male,gender_ratio_female,loyalty_program_enrollments,post_match_survey_response_rate,notes) VALUES (2002,65.1,38.7,95000,4200,2800,0.78,19000,74.2,120,2800,10230.0,7300.1,410.3,28.1,0.60,0.40,2100,0.55,'Slight dip due to rain');
INSERT INTO Fan_Engagement_Analytics (match_id,engagement_score,average_watch_time_min,peak_concurrent_viewers,social_shares,hashtag_mentions,sentiment_score,mobile_app_sessions,stadium_ambient_noise_db,fan_chants_count,merchandise_browses,food_sales_usd,drink_sales_usd,wifi_data_gb,avg_fan_age,gender_ratio_male,gender_ratio_female,loyalty_program_enrollments,post_match_survey_response_rate,notes) VALUES (2003,82.7,52.0,138000,7200,4600,0.91,31000,81.0,180,4100,15680.2,10250.4,610.9,26.9,0.52,0.48,4100,0.68,'Record engagement with derby');

-- Records of sponsor activation events at matches
CREATE TABLE Team_Sponsorship_Activations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    sponsor_name TEXT,
    activation_type TEXT,
    activation_start_time TEXT,
    activation_end_time TEXT,
    booth_location TEXT,
    brand_exposure_minutes INTEGER,
    samples_distributed INTEGER,
    promotional_giveaways INTEGER,
    digital_engagements INTEGER,
    social_media_impressions INTEGER,
    onsite_sales_usd REAL,
    cost_usd REAL,
    expected_roi REAL,
    activation_success_score REAL,
    staff_count INTEGER,
    equipment_list TEXT,
    compliance_flag INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Team_Sponsorship_Activations (match_id,sponsor_name,activation_type,activation_start_time,activation_end_time,booth_location,brand_exposure_minutes,samples_distributed,promotional_giveaways,digital_engagements,social_media_impressions,onsite_sales_usd,cost_usd,expected_roi,activation_success_score,staff_count,equipment_list,compliance_flag,notes,created_at,updated_at) VALUES (2001,AcmeCorp,Booth,'12:00','16:00','NorthWing',45,1200,300,5200,250000,8450.5,15000,1.8,87.5,6,'Tent,Tablet,Banner',1,'Successful product launch','2025-09-01','2025-09-01');
INSERT INTO Team_Sponsorship_Activations (match_id,sponsor_name,activation_type,activation_start_time,activation_end_time,booth_location,brand_exposure_minutes,samples_distributed,promotional_giveaways,digital_engagements,social_media_impressions,onsite_sales_usd,cost_usd,expected_roi,activation_success_score,staff_count,equipment_list,compliance_flag,notes,created_at,updated_at) VALUES (2002,Globex,VRExperience,'14:00','18:00','EastSide',30,800,150,3200,180000,6200.0,12000,1.5,73.2,4,'VRHeadsets,Poster',1,'Positive fan feedback','2025-09-02','2025-09-02');
INSERT INTO Team_Sponsorship_Activations (match_id,sponsor_name,activation_type,activation_start_time,activation_end_time,booth_location,brand_exposure_minutes,samples_distributed,promotional_giveaways,digital_engagements,social_media_impressions,onsite_sales_usd,cost_usd,expected_roi,activation_success_score,staff_count,equipment_list,compliance_flag,notes,created_at,updated_at) VALUES (2003,Initech,FlashSale,'10:00','13:00','MainGate',60,500,200,7100,310000,10200.7,18000,2.0,92.1,8,'Kiosk,Screen',1,'Exceeded sales targets','2025-09-03','2025-09-03');

-- Continuous health monitoring data captured from player wearables
CREATE TABLE Player_Health_Monitoring (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    monitor_date TEXT,
    heart_rate_bpm INTEGER,
    spo2_percent REAL,
    body_temp_c REAL,
    respiration_rate_bpm INTEGER,
    skin_conductance_microS REAL,
    hydration_level_percent REAL,
    fatigue_index REAL,
    recovery_score REAL,
    stress_level REAL,
    sleep_quality_score REAL,
    steps_taken INTEGER,
    distance_meters REAL,
    calories_burned REAL,
    injury_risk_score REAL,
    gps_latitude REAL,
    gps_longitude REAL,
    session_type TEXT,
    notes TEXT
);
INSERT INTO Player_Health_Monitoring (player_api_id,monitor_date,heart_rate_bpm,spo2_percent,body_temp_c,respiration_rate_bpm,skin_conductance_microS,hydration_level_percent,fatigue_index,recovery_score,stress_level,sleep_quality_score,steps_taken,distance_meters,calories_burned,injury_risk_score,gps_latitude,gps_longitude,session_type,notes) VALUES (1050,'2025-08-30',78,98.5,36.7,16,0.85,62.0,0.32,0.88,0.25,0.92,12000,8500.0,620.5,0.15,40.7128,-74.0060,Training,'Morning session good');
INSERT INTO Player_Health_Monitoring (player_api_id,monitor_date,heart_rate_bpm,spo2_percent,body_temp_c,respiration_rate_bpm,skin_conductance_microS,hydration_level_percent,fatigue_index,recovery_score,stress_level,sleep_quality_score,steps_taken,distance_meters,calories_burned,injury_risk_score,gps_latitude,gps_longitude,session_type,notes) VALUES (1089,'2025-08-31',84,97.8,37.1,18,0.92,58.5,0.45,0.73,0.38,0.80,9500,6200.0,540.0,0.22,34.0522,-118.2437,Match,'High intensity');
INSERT INTO Player_Health_Monitoring (player_api_id,monitor_date,heart_rate_bpm,spo2_percent,body_temp_c,respiration_rate_bpm,skin_conductance_microS,hydration_level_percent,fatigue_index,recovery_score,stress_level,sleep_quality_score,steps_taken,distance_meters,calories_burned,injury_risk_score,gps_latitude,gps_longitude,session_type,notes) VALUES (1123,'2025-09-01',71,99.0,36.5,15,0.78,66.2,0.21,0.94,0.18,0.97,10500,7700.0,580.3,0.09,51.5074,-0.1278,Recovery,'Post‑match recovery');

-- Assignment of broadcast production crew members per match
CREATE TABLE Broadcast_Production_Team (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    crew_role TEXT,
    crew_member_name TEXT,
    employee_id INTEGER,
    shift_start TEXT,
    shift_end TEXT,
    equipment_assigned TEXT,
    language TEXT,
    experience_years INTEGER,
    certifications TEXT,
    contact_number TEXT,
    email TEXT,
    on_call_flag INTEGER,
    travel_allowance_usd REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    crew_group TEXT,
    shift_location TEXT,
    broadcast_network TEXT
);
INSERT INTO Broadcast_Production_Team (match_id,crew_role,crew_member_name,employee_id,shift_start,shift_end,equipment_assigned,language,experience_years,certifications,contact_number,email,on_call_flag,travel_allowance_usd,notes,created_at,updated_at,crew_group,shift_location,broadcast_network) VALUES (2001,Director,JohnDoe,3001,'09:00','18:00','CameraRigA','English',12,'HDCP,ISO9001','5551234567','jdoe@example.com',1,2500.0,'Lead director for derby','2025-09-01','2025-09-01','Primary','MainControlRoom','SportsNet');
INSERT INTO Broadcast_Production_Team (match_id,crew_role,crew_member_name,employee_id,shift_start,shift_end,equipment_assigned,language,experience_years,certifications,contact_number,email,on_call_flag,travel_allowance_usd,notes,created_at,updated_at,crew_group,shift_location,broadcast_network) VALUES (2002,AudioEngineer,JaneSmith,3002,'10:00','20:00','AudioMixerB','English',8,'AudioTech','5559876543','jsmith@example.com',0,1800.0,'Handled crowd mic array','2025-09-02','2025-09-02','Support','AudioBooth','LiveChannel');
INSERT INTO Broadcast_Production_Team (match_id,crew_role,crew_member_name,employee_id,shift_start,shift_end,equipment_assigned,language,experience_years,certifications,contact_number,email,on_call_flag,travel_allowance_usd,notes,created_at,updated_at,crew_group,shift_location,broadcast_network) VALUES (2003,CameraOperator,MarcoLee,3003,'08:30','19:30','CamRigC','Spanish',5,'CineCam','5553210987','mlee@example.com',1,2200.0','Steady camera work on second half','2025-09-03','2025-09-03','Primary','CameraDeck','GlobalSports');

-- Detailed travel itinerary for teams per match
CREATE TABLE Travel_Itinerary_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    team_id INTEGER,
    departure_city TEXT,
    arrival_city TEXT,
    departure_date TEXT,
    arrival_date TEXT,
    transport_mode TEXT,
    airline TEXT,
    flight_number TEXT,
    seat_class TEXT,
    hotel_name TEXT,
    check_in_date TEXT,
    check_out_date TEXT,
    room_type TEXT,
    meals_included INTEGER,
    travel_cost_usd REAL,
    accommodation_cost_usd REAL,
    total_cost_usd REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Travel_Itinerary_Details (match_id,team_id,departure_city,arrival_city,departure_date,arrival_date,transport_mode,airline,flight_number,seat_class,hotel_name,check_in_date,check_out_date,room_type,meals_included,travel_cost_usd,accommodation_cost_usd,total_cost_usd,notes,created_at,updated_at) VALUES (2001,501,'London','Manchester','2025-08-31','2025-08-31','Air','UKAir','UK123','Business','ManchesterInn','2025-08-31','2025-09-02','Deluxe',1,850.0,450.0,1300.0,'Standard travel package','2025-09-01','2025-09-01');
INSERT INTO Travel_Itinerary_Details (match_id,team_id,departure_city,arrival_city,departure_date,arrival_date,transport_mode,airline,flight_number,seat_class,hotel_name,check_in_date,check_out_date,room_type,meals_included,travel_cost_usd,accommodation_cost_usd,total_cost_usd,notes,created_at,updated_at) VALUES (2002,502,'Madrid','Barcelona','2025-09-01','2025-09-01','Train','RailCo','RC456','First','BarcaSuites','2025-09-01','2025-09-03','Suite',1,120.0,600.0,720.0,'High‑speed train', '2025-09-02','2025-09-02');
INSERT INTO Travel_Itinerary_Details (match_id,team_id,departure_city,arrival_city,departure_date,arrival_date,transport_mode,airline,flight_number,seat_class,hotel_name,check_in_date,check_out_date,room_type,meals_included,travel_cost_usd,accommodation_cost_usd,total_cost_usd,notes,created_at,updated_at) VALUES (2003,503,'Rome','Milan','2025-09-02','2025-09-02','Bus','CoachLine','CL789','Economy','MilanHostel','2025-09-02','2025-09-04','Standard',0,45.0,200.0,245.0,'Budget travel', '2025-09-03','2025-09-03');

-- Merchandise sales broken down by sales channel
CREATE TABLE Merchandise_Sales_By_Channel (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    channel_name TEXT,
    sku TEXT,
    units_sold INTEGER,
    revenue_usd REAL,
    average_price_usd REAL,
    discount_percent REAL,
    returns INTEGER,
    inventory_on_hand INTEGER,
    promotion_applied TEXT,
    transaction_date TEXT,
    customer_region TEXT,
    online_visit_id TEXT,
    payment_method TEXT,
    shipping_cost_usd REAL,
    profit_margin_percent REAL,
    gross_margin_usd REAL,
    net_margin_usd REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Merchandise_Sales_By_Channel (match_id,channel_name,sku,units_sold,revenue_usd,average_price_usd,discount_percent,returns,inventory_on_hand,promotion_applied,transaction_date,customer_region,online_visit_id,payment_method,shipping_cost_usd,profit_margin_percent,gross_margin_usd,net_margin_usd,notes,created_at,updated_at) VALUES (2001,Online,SHIRT001,120,7200.0,60.0,10.0,5,380,'SeasonKickoff','2025-09-01','EU','VIS123','CreditCard',15.0,55.0,3960.0,3750.0,'Strong online sales','2025-09-01','2025-09-01');
INSERT INTO Merchandise_Sales_By_Channel (match_id,channel_name,sku,units_sold,revenue_usd,average_price_usd,discount_percent,returns,inventory_on_hand,promotion_applied,transaction_date,customer_region,online_visit_id,payment_method,shipping_cost_usd,profit_margin_percent,gross_margin_usd,net_margin_usd,notes,created_at,updated_at) VALUES (2001,Stadium,SCARF045,80,3200.0,40.0,5.0,2,120,'MatchDayDeal','2025-09-01','Local','NA','Cash',0.0,48.0,1536.0,1400.0,'High foot traffic','2025-09-01','2025-09-01');
INSERT INTO Merchandise_Sales_By_Channel (match_id,channel_name,sku,units_sold,revenue_usd,average_price_usd,discount_percent,returns,inventory_on_hand,promotion_applied,transaction_date,customer_region,online_visit_id,payment_method,shipping_cost_usd,profit_margin_percent,gross_margin_usd,net_margin_usd,notes,created_at,updated_at) VALUES (2002,Online,HOODIE023,65,5850.0,90.0,0.0,1,210,'None','2025-09-02','NA','VIS456','PayPal',20.0,60.0,3510.0,3270.0,'Online banner ads','2025-09-02','2025-09-02');

-- Environmental impact metrics captured per match
CREATE TABLE Environmental_Impact_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    carbon_emissions_kg REAL,
    electricity_consumed_kwh REAL,
    water_consumed_liters REAL,
    waste_generated_kg REAL,
    recyclable_waste_kg REAL,
    nonrecyclable_waste_kg REAL,
    renewable_energy_percent REAL,
    average_noise_db REAL,
    air_quality_index INTEGER,
    temperature_c REAL,
    humidity_percent REAL,
    fan_transport_mode TEXT,
    public_transit_usage_percent REAL,
    car_parking_occupancy_percent REAL,
    bike_parking_occupancy_percent REAL,
    trees_planted INTEGER,
    offset_credits_purchased REAL,
    sustainability_score REAL,
    notes TEXT,
    recorded_at TEXT,
    analyst_name TEXT
);
INSERT INTO Environmental_Impact_Metrics (match_id,carbon_emissions_kg,electricity_consumed_kwh,water_consumed_liters,waste_generated_kg,recyclable_waste_kg,nonrecyclable_waste_kg,renewable_energy_percent,average_noise_db,air_quality_index,temperature_c,humidity_percent,fan_transport_mode,public_transit_usage_percent,car_parking_occupancy_percent,bike_parking_occupancy_percent,trees_planted,offset_credits_purchased,sustainability_score,notes,recorded_at,analyst_name) VALUES (2001,1245.5,5600.0,78000.0,22.3,15.0,7.3,35.0,79.0,42,22.5,55,'Car',30.0,70.0,10.0,25,1500.0,78.4,'Average impact','2025-09-01','Alice');
INSERT INTO Environmental_Impact_Metrics (match_id,carbon_emissions_kg,electricity_consumed_kwh,water_consumed_liters,waste_generated_kg,recyclable_waste_kg,nonrecyclable_waste_kg,renewable_energy_percent,average_noise_db,air_quality_index,temperature_c,humidity_percent,fan_transport_mode,public_transit_usage_percent,car_parking_occupancy_percent,bike_parking_occupancy_percent,trees_planted,offset_credits_purchased,sustainability_score,notes,recorded_at,analyst_name) VALUES (2002,980.2,4700.0,62000.0,18.0,12.5,5.5,40.0,76.0,38,21.0,60,'PublicTransit',55.0,45.0,15.0,30,1200.0,82.1,'Improved transit usage','2025-09-02','Bob');
INSERT INTO Environmental_Impact_Metrics (match_id,carbon_emissions_kg,electricity_consumed_kwh,water_consumed_liters,waste_generated_kg,recyclable_waste_kg,nonrecyclable_waste_kg,renewable_energy_percent,average_noise_db,air_quality_index,temperature_c,humidity_percent,fan_transport_mode,public_transit_usage_percent,car_parking_occupancy_percent,bike_parking_occupancy_percent,trees_planted,offset_credits_purchased,sustainability_score,notes,recorded_at,analyst_name) VALUES (2003,1430.0,6200.0,85000.0,27.5,18.0,9.5,30.0,82.0,48,23.0,52,'Mixed',40.0,65.0,12.0,20,1600.0,75.0,'High attendance impact','2025-09-03','Carol');

-- Planned coaching session details
CREATE TABLE Coaching_Session_Plans (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    session_date TEXT,
    session_type TEXT,
    focus_area TEXT,
    duration_minutes INTEGER,
    location TEXT,
    coach_name TEXT,
    assistant_coach_name TEXT,
    drill_primary TEXT,
    drill_secondary TEXT,
    equipment_needed TEXT,
    player_group TEXT,
    tactical_objective TEXT,
    expected_outcome TEXT,
    video_analysis_flag INTEGER,
    feedback_method TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    session_status TEXT,
    attendance_target INTEGER
);
INSERT INTO Coaching_Session_Plans (team_id,session_date,session_type,focus_area,duration_minutes,location,coach_name,assistant_coach_name,drill_primary,drill_secondary,equipment_needed,player_group,tactical_objective,expected_outcome,video_analysis_flag,feedback_method,notes,created_at,updated_at,session_status,attendance_target) VALUES (501,'2025-09-05','Tactical','Possession',90,'TrainingGroundA','MikeTaylor','LauraGreen','Rondo','ShadowPlay','Cones,Balls','FirstTeam','Maintain high press','Improved ball retention',1,'Video','Focus on quick transitions','2025-09-01','2025-09-01','Scheduled',22);
INSERT INTO Coaching_Session_Plans (team_id,session_date,session_type,focus_area,duration_minutes,location,coach_name,assistant_coach_name,drill_primary,drill_secondary,equipment_needed,player_group,tactical_objective,expected_outcome,video_analysis_flag,feedback_method,notes,created_at,updated_at,session_status,attendance_target) VALUES (502,'2025-09-07','Physical','Endurance',75,'GymFacility','SarahLee','TomBrown','IntervalRun','Circuit','Treadmills,Weights','ReserveTeam','Boost stamina','Higher VO2 max',0,'Live','Include breathing exercises','2025-09-02','2025-09-02','Planned',18);
INSERT INTO Coaching_Session_Plans (team_id,session_date,session_type,focus_area,duration_minutes,location,coach_name,assistant_coach_name,drill_primary,drill_secondary,equipment_needed,player_group,tactical_objective,expected_outcome,video_analysis_flag,feedback_method,notes,created_at,updated_at,session_status,attendance_target) VALUES (503,'2025-09-09','SetPiece','FreeKicks',60,'TrainingGroundB','DavidKim','EmilyWhite','FreeKickRoutine','WallPlay','GoalFrames,Balls','FirstTeam','Increase conversion rate','More goals from set pieces',1,'CoachTalk','Test new placement strategy','2025-09-03','2025-09-03','Confirmed',22);

-- Historical assignments of referees to matches
CREATE TABLE Referee_Assignment_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    referee_id INTEGER,
    assistant_referee_1 INTEGER,
    assistant_referee_2 INTEGER,
    fourth_official INTEGER,
    video_assistant_referee INTEGER,
    assignment_date TEXT,
    role TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    stadium_id INTEGER,
    weather_condition TEXT,
    travel_distance_km REAL,
    accommodation_hotel TEXT,
    accommodation_nights INTEGER,
    accommodation_cost_usd REAL,
    travel_cost_usd REAL,
    total_cost_usd REAL
);
INSERT INTO Referee_Assignment_History (match_id,referee_id,assistant_referee_1,assistant_referee_2,fourth_official,video_assistant_referee,assignment_date,role,notes,created_at,updated_at,stadium_id,weather_condition,travel_distance_km,accommodation_hotel,accommodation_nights,accommodation_cost_usd,travel_cost_usd,total_cost_usd) VALUES (2001,9001,9002,9003,9004,9005,'2025-08-31','Center','Standard assignment','2025-09-01','2025-09-01',101,'Clear',210.5,'HotelGrand',2,300.0,150.0,450.0);
INSERT INTO Referee_Assignment_History (match_id,referee_id,assistant_referee_1,assistant_referee_2,fourth_official,video_assistant_referee,assignment_date,role,notes,created_at,updated_at,stadium_id,weather_condition,travel_distance_km,accommodation_hotel,accommodation_nights,accommodation_cost_usd,travel_cost_usd,total_cost_usd) VALUES (2002,9010,9011,9012,9013,9014,'2025-09-01','Center','Rain delay backup','2025-09-02','2025-09-02',102,'Rain',340.0,'CityInn',3,450.0,200.0,650.0);
INSERT INTO Referee_Assignment_History (match_id,referee_id,assistant_referee_1,assistant_referee_2,fourth_official,video_assistant_referee,assignment_date,role,notes,created_at,updated_at,stadium_id,weather_condition,travel_distance_km,accommodation_hotel,accommodation_nights,accommodation_cost_usd,travel_cost_usd,total_cost_usd) VALUES (2003,9025,9026,9027,9028,9029,'2025-09-02','Center','High‑profile derby','2025-09-03','2025-09-03',103,'Clear',180.0,'StadiumLodge',1,200.0,120.0,320.0);

-- Detailed logs of match incident events
CREATE TABLE Match_Incident_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    incident_minute INTEGER,
    incident_type TEXT,
    player_id INTEGER,
    team_id INTEGER,
    description TEXT,
    severity_level INTEGER,
    action_taken TEXT,
    disciplinary_action TEXT,
    video_clip_reference TEXT,
    referee_id INTEGER,
    assistant_referee_id INTEGER,
    location_on_pitch TEXT,
    weather_at_incident TEXT,
    crowd_noise_db REAL,
    medical_attention_flag INTEGER,
    substitution_occurred INTEGER,
    secondary_incident_flag INTEGER,
    notes TEXT,
    recorded_at TEXT,
    analyst_name TEXT
);
INSERT INTO Match_Incident_Details (match_id,incident_minute,incident_type,player_id,team_id,description,severity_level,action_taken,disciplinary_action,video_clip_reference,referee_id,assistant_referee_id,location_on_pitch,weather_at_incident,crowd_noise_db,medical_attention_flag,substitution_occurred,secondary_incident_flag,notes,recorded_at,analyst_name) VALUES (2001,23,YellowCard,1050,501,'Late tackle on opponent',2,'Warning','Yellow','VID12345',9001,9002,'LeftBack','Clear',78.0,0,0,0,'No escalation','2025-09-01','Dana');
INSERT INTO Match_Incident_Details (match_id,incident_minute,incident_type,player_id,team_id,description,severity_level,action_taken,disciplinary_action,video_clip_reference,referee_id,assistant_referee_id,location_on_pitch,weather_at_incident,crowd_noise_db,medical_attention_flag,substitution_occurred,secondary_incident_flag,notes,recorded_at,analyst_name) VALUES (2002,57,Foul,1089,502,'Handball in box',3,'FreeKick','Yellow','VID67890',9010,9011,'PenaltySpot','Rain',82.5,0,0,0,'Potential penalty','2025-09-02','Eli');
INSERT INTO Match_Incident_Details (match_id,incident_minute,incident_type,player_id,team_id,description,severity_level,action_taken,disciplinary_action,video_clip_reference,referee_id,assistant_referee_id,location_on_pitch,weather_at_incident,crowd_noise_db,medical_attention_flag,substitution_occurred,secondary_incident_flag,notes,recorded_at,analyst_name) VALUES (2003,81,RedCard,1123,503,'Violent conduct',5,'Ejection','Red','VID54321',9025,9026,'CenterCircle','Clear',90.0,1,0,0,'Player required medical attention','2025-09-03','Fiona');

-- Records of sponsor contract terms and renewals
CREATE TABLE Sponsor_Contract_Terms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    renewal_option TEXT,
    annual_fee_usd REAL,
    performance_bonus_usd REAL,
    exclusivity_flag INTEGER,
    activation_requirements TEXT,
    termination_clause TEXT,
    sponsor_contact_name TEXT,
    sponsor_contact_email TEXT,
    sponsor_contact_phone TEXT,
    league_id INTEGER,
    team_id INTEGER,
    branding_placement TEXT,
    digital_exposure_impressions INTEGER,
    on_site_activation_events INTEGER,
    compliance_audit_required INTEGER,
    audit_frequency_months INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    payment_schedule TEXT,
    currency TEXT,
    inflation_adjustment_percent REAL
);
INSERT INTO Sponsor_Contract_Terms (sponsor_name,contract_start_date,contract_end_date,renewal_option,annual_fee_usd,performance_bonus_usd,exclusivity_flag,activation_requirements,termination_clause,sponsor_contact_name,sponsor_contact_email,sponsor_contact_phone,league_id,team_id,branding_placement,digital_exposure_impressions,on_site_activation_events,compliance_audit_required,audit_frequency_months,notes,created_at,updated_at,payment_schedule,currency,inflation_adjustment_percent) VALUES (AcmeCorp,2024-01-01,2027-12-31,Option1,500000.0,75000.0,1,LogoOnJerseys,30DaysNotice,JohnDoe,jdoe@acme.com,5551234567,1,101,StadiumBanner,1200000,8,1,12,'Multi‑year strategic partner','2025-09-01','2025-09-01','Quarterly','USD',2.5);
INSERT INTO Sponsor_Contract_Terms (sponsor_name,contract_start_date,contract_end_date,renewal_option,annual_fee_usd,performance_bonus_usd,exclusivity_flag,activation_requirements,termination_clause,sponsor_contact_name,sponsor_contact_email,sponsor_contact_phone,league_id,team_id,branding_placement,digital_exposure_impressions,on_site_activation_events,compliance_audit_required,audit_frequency_months,notes,created_at,updated_at,payment_schedule,currency,inflation_adjustment_percent) VALUES (Globex,2025-03-01,2028-02-28,Option2,300000.0,50000.0,0,StadiumLEDAds,60DaysNotice,JaneSmith,jsmith@globex.com,5559876543,2,102,DigitalScreen,950000,5,0,0,'Flexible terms for new sponsor','2025-09-02','2025-09-02','SemiAnnual','USD',1.8);
INSERT INTO Sponsor_Contract_Terms (sponsor_name,contract_start_date,contract_end_date,renewal_option,annual_fee_usd,performance_bonus_usd,exclusivity_flag,activation_requirements,termination_clause,sponsor_contact_name,sponsor_contact_email,sponsor_contact_phone,league_id,team_id,branding_placement,digital_exposure_impressions,on_site_activation_events,compliance_audit_required,audit_frequency_months,notes,created_at,updated_at,payment_schedule,currency,inflation_adjustment_percent) VALUES (Initech,2023-07-01,2026-06-30,Option3,200000.0,30000.0,0,TeamBusWraps,90DaysNotice,MarcoLee,mlee@initech.com,5553210987,3,103,TeamKit,800000,3,1,24,'Innovative branding on kits','2025-09-03','2025-09-03','Annual','USD',2.0);