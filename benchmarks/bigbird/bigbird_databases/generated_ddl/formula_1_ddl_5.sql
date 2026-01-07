-- Circuit weather forecasts table
CREATE TABLE circuit_weather_forecasts (
    forecast_id INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    forecast_date DATE NOT NULL,
    temp_min REAL,
    temp_max REAL,
    precip_prob INTEGER,
    wind_speed REAL,
    wind_dir TEXT,
    humidity INTEGER,
    visibility REAL,
    cloud_cover INTEGER,
    forecast_source TEXT,
    sunrise_time TEXT,
    sunset_time TEXT,
    uv_index INTEGER,
    pressure REAL,
    snow_chance INTEGER,
    dew_point REAL,
    heat_index REAL,
    feels_like_min REAL,
    feels_like_max REAL,
    notes TEXT,
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId)
);
INSERT INTO circuit_weather_forecasts (forecast_id,circuitId,forecast_date,temp_min,temp_max,precip_prob,wind_speed,wind_dir,humidity,visibility,cloud_cover,forecast_source,sunrise_time,sunset_time,uv_index,pressure,snow_chance,dew_point,heat_index,feels_like_min,feels_like_max,notes) VALUES (1,1,'2025-04-10',12.5,18.3,10,5.2,'NE',65,10.0,20,'MetOffice','06:12','20:03',5,1013.2,0,7.1,15.0,11.0,17.5,'Clear morning');
INSERT INTO circuit_weather_forecasts (forecast_id,circuitId,forecast_date,temp_min,temp_max,precip_prob,wind_speed,wind_dir,humidity,visibility,cloud_cover,forecast_source,sunrise_time,sunset_time,uv_index,pressure,snow_chance,dew_point,heat_index,feels_like_min,feels_like_max,notes) VALUES (2,2,'2025-04-10',9.0,14.0,30,7.5,'S',72,9.5,40,'WeatherChannel','06:25','20:15',6,1011.5,0,8.3,13.5,8.0,13.0,'Light rain expected');
INSERT INTO circuit_weather_forecasts (forecast_id,circuitId,forecast_date,temp_min,temp_max,precip_prob,wind_speed,wind_dir,humidity,visibility,cloud_cover,forecast_source,sunrise_time,sunset_time,uv_index,pressure,snow_chance,dew_point,heat_index,feels_like_min,feels_like_max,notes) VALUES (3,3,'2025-04-10',15.0,22.0,5,4.0,'W',55,10.0,10,'AccuWeather','06:05','20:10',7,1015.0,0,6.0,19.0,14.0,20.5,'Sunny and warm');

-- Driver educational background table
CREATE TABLE driver_educational_background (
    edu_id INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    highest_degree TEXT,
    institution TEXT,
    field_of_study TEXT,
    graduation_year INTEGER,
    gpa REAL,
    honors TEXT,
    scholarship_amount REAL,
    extracurriculars TEXT,
    languages TEXT,
    certifications TEXT,
    thesis_title TEXT,
    advisor_name TEXT,
    study_mode TEXT,
    campus_location TEXT,
    diploma_url TEXT,
    notes TEXT,
    program_duration INTEGER,
    credits_earned INTEGER,
    exchange_program TEXT,
    academic_awards TEXT,
    FOREIGN KEY (driverId) REFERENCES drivers(driverId)
);
INSERT INTO driver_educational_background (edu_id,driverId,highest_degree,institution,field_of_study,graduation_year,gpa,honors,scholarship_amount,extracurriculars,languages,certifications,thesis_title,advisor_name,study_mode,campus_location,diploma_url,notes,program_duration,credits_earned,exchange_program,academic_awards) VALUES (1,1,'BSc','University of Motorsport','Mechanical Engineering',2018,3.7,'Cum Laude',1500,'Robotics Club','English,Spanish','FEA Certified','Aerodynamic Optimization','DrSmith','Full-time','Oxford Campus','http://example.com/diploma1.pdf','N/A',4,120,'Erasmus','Best Graduate');
INSERT INTO driver_educational_background (edu_id,driverId,highest_degree,institution,field_of_study,graduation_year,gpa,honors,scholarship_amount,extracurriculars,languages,certifications,thesis_title,advisor_name,study_mode,campus_location,diploma_url,notes,program_duration,credits_earned,exchange_program,academic_awards) VALUES (2,2,'MSc','Tech Institute','Data Science',2020,3.9,'Magna Cum Laude',2000,'Data Club','English','Python Certified','Predictive Modeling','ProfLee','Part-time','Berlin Campus','http://example.com/diploma2.pdf','N/A',2,60,'None','Dean List');
INSERT INTO driver_educational_background (edu_id,driverId,highest_degree,institution,field_of_study,graduation_year,gpa,honors,scholarship_amount,extracurriculars,languages,certifications,thesis_title,advisor_name,study_mode,campus_location,diploma_url,notes,program_duration,credits_earned,exchange_program,academic_awards) VALUES (3,3,'PhD','Global University','Vehicle Dynamics',2022,4.0,'Summa Cum Laude',0,'Research Assistant','English,French','MATLAB Certified','Dynamic Tire Modeling','DrKhan','Full-time','Tokyo Campus','http://example.com/diploma3.pdf','N/A',5,180,'Exchange with MIT','Outstanding Research');

-- Sponsor engagement metrics table
CREATE TABLE sponsor_engagement_metrics (
    sponsor_metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER NOT NULL,
    season_year INTEGER NOT NULL,
    total_spend REAL,
    media_impressions INTEGER,
    social_engagement INTEGER,
    event_appearances INTEGER,
    hospitality_packages INTEGER,
    brand_awareness_score REAL,
    fan_activation_score REAL,
    activation_budget REAL,
    co_branding_projects INTEGER,
    digital_campaigns INTEGER,
    on_site_logo_count INTEGER,
    product_placements INTEGER,
    sponsorship_tier TEXT,
    contract_start DATE,
    contract_end DATE,
    renewal_option TEXT,
    compliance_rating INTEGER,
    notes TEXT,
    activation_regions TEXT,
    lead_contact TEXT,
    FOREIGN KEY (sponsorId) REFERENCES sponsors(sponsorId)
);
INSERT INTO sponsor_engagement_metrics (sponsor_metric_id,sponsorId,season_year,total_spend,media_impressions,social_engagement,event_appearances,hosting_packages,brand_awareness_score,fan_activation_score,activation_budget,co_branding_projects,digital_campaigns,on_site_logo_count,product_placements,sponsorship_tier,contract_start,contract_end,renewal_option,compliance_rating,notes,activation_regions,lead_contact) VALUES (1,1,2024,2500000,5000000,120000,25,10,85.5,78.2,1500000,5,12,30,20,'Gold','2024-01-01','2026-12-31','Optional',9,'Strong performance','EMEA','JohnDoe');
INSERT INTO sponsor_engagement_metrics (sponsor_metric_id,sponsorId,season_year,total_spend,media_impressions,social_engagement,event_appearances,hosting_packages,brand_awareness_score,fan_activation_score,activation_budget,co_branding_projects,digital_campaigns,on_site_logo_count,product_placements,sponsorship_tier,contract_start,contract_end,renewal_option,compliance_rating,notes,activation_regions,lead_contact) VALUES (2,2,2024,1500000,3000000,80000,15,5,73.4,65.0,900000,3,8,20,12,'Silver','2024-03-15','2025-03-14','Mandatory',8,'Good reach','APAC','JaneSmith');
INSERT INTO sponsor_engagement_metrics (sponsor_metric_id,sponsorId,season_year,total_spend,media_impressions,social_engagement,event_appearances,hosting_packages,brand_awareness_score,fan_activation_score,activation_budget,co_branding_projects,digital_campaigns,on_site_logo_count,product_placements,sponsorship_tier,contract_start,contract_end,renewal_option,compliance_rating,notes,activation_regions,lead_contact) VALUES (3,3,2024,800000,1500000,40000,8,2,60.0,55.0,500000,1,4,10,5,'Bronze','2024-07-01','2025-06-30','Optional',7,'Limited activation','Americas','MikeLee');

-- Hospitality event schedule table
CREATE TABLE hospitality_event_schedule (
    event_schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER NOT NULL,
    event_name TEXT,
    event_date DATE,
    start_time TEXT,
    end_time TEXT,
    host_entity TEXT,
    expected_attendees INTEGER,
    catering_type TEXT,
    menu_description TEXT,
    beverage_package TEXT,
    special_requirements TEXT,
    vip_access BOOLEAN,
    security_level INTEGER,
    audio_visual_needs TEXT,
    ticket_category TEXT,
    ticket_price REAL,
    sponsor_id INTEGER,
    sponsor_benefits TEXT,
    staff_assigned TEXT,
    notes TEXT,
    live_stream_url TEXT,
    feedback_score REAL,
    FOREIGN KEY (venue_id) REFERENCES hospitality_rooms(venue_id),
    FOREIGN KEY (sponsor_id) REFERENCES sponsors(sponsorId)
);
INSERT INTO hospitality_event_schedule (event_schedule_id,venue_id,event_name,event_date,start_time,end_time,host_entity,expected_attendees,catering_type,menu_description,beverage_package,special_requirements,vip_access,security_level,audio_visual_needs,ticket_category,ticket_price,sponsor_id,sponsor_benefits,staff_assigned,notes,live_stream_url,feedback_score) VALUES (1,101,'Champions Celebration','2025-05-15','18:00','Team A','200','Gourmet','Steak,Salad,Pasta','Open Bar','None',1,3,'HD Projector','VIP',250.00,1,'Logo on backdrop','John,Emily','Successful event','http://stream.example.com/event1',8.7);
INSERT INTO hospitality_event_schedule (event_schedule_id,venue_id,event_name,event_date,start_time,end_time,host_entity,expected_attendees,catering_type,menu_description,beverage_package,special_requirements,vip_access,security_level,audio_visual_needs,ticket_category,ticket_price,sponsor_id,sponsor_benefits,staff_assigned,notes,live_stream_url,feedback_score) VALUES (2,102,'Driver Meet & Greet','2025-05-16','14:00','Marketing','150','Buffet','Sandwiches,Wraps','Soft Drinks','Wheelchair access',0,2,'Sound System','General',75.00,2,'Banner placement','Mike,Sarah','Positive feedback','http://stream.example.com/event2',9.1);
INSERT INTO hospitality_event_schedule (event_schedule_id,venue_id,event_name,event_date,start_time,end_time,host_entity,expected_attendees,catering_type,menu_description,beverage_package,special_requirements,vip_access,security_level,audio_visual_needs,ticket_category,ticket_price,sponsor_id,sponsor_benefits,staff_assigned,notes,live_stream_url,feedback_score) VALUES (3,103,'Tech Expo','2025-05-17','10:00','Tech Partner','300','Plated','Asian Fusion','Wine Service','Stage lighting',0,4,'LED Screens','Premium',120.00,3,'Product demo booth','Anna,Tom','High attendance','http://stream.example.com/event3',7.9);

-- Track surface analysis table
CREATE TABLE track_surface_analysis (
    analysis_id INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    sample_date DATE,
    location TEXT,
    surface_type TEXT,
    grip_level REAL,
    temperature REAL,
    humidity REAL,
    abrasion_index REAL,
    oil_content REAL,
    rubber_deposit REAL,
    crack_length REAL,
    crack_width REAL,
    patch_area REAL,
    maintenance_action TEXT,
    technician_id INTEGER,
    notes TEXT,
    inspection_time TEXT,
    measurement_device TEXT,
    calibration_date DATE,
    data_accuracy REAL,
    analyst_name TEXT,
    weather_condition TEXT,
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId)
);
INSERT INTO track_surface_analysis (analysis_id,circuitId,sample_date,location,surface_type,grip_level,temperature,humidity,abrasion_index,oil_content,rubber_deposit,crack_length,crack_width,patch_area,maintenance_action,technician_id,notes,inspection_time,measurement_device,calibration_date,data_accuracy,analyst_name,weather_condition) VALUES (1,1,'2025-04-20','Turn 3','Asphalt',0.85,28.0,55,0.12,0.03,0.45,0.0,0.0,0.0,'None',12,'Surface within spec','09:30','LaserProfiler','2025-01-10',0.99,'AliceBrown','Clear');
INSERT INTO track_surface_analysis (analysis_id,circuitId,sample_date,location,surface_type,grip_level,temperature,humidity,abrasion_index,oil_content,rubber_deposit,crip_length,crack_width,patch_area,maintenance_action,technician_id,notes,inspection_time,measurement_device,calibration_date,data_accuracy,analyst_name,weather_condition) VALUES (2,2,'2025-04-21','Straight 2','Concrete',0.78,22.0,70,0.20,0.07,0.60,0.2,0.015,1.5,'Reseal',15,'Minor wear observed','11:15','ContactSensor','2024-12-05',0.97,'BobSmith','Light Rain');
INSERT INTO track_surface_analysis (analysis_id,circuitId,sample_date,location,surface_type,grip_level,temperature,humidity,abrasion_index,oil_content,rubber_deposit,crack_length,crack_width,patch_area,maintenance_action,technician_id,notes,inspection_time,measurement_device,calibration_date,data_accuracy,analyst_name,weather_condition) VALUES (3,3,'2025-04-22','Sector B','Asphalt',0.90,30.0,45,0.10,0.02,0.30,0.0,0.0,0.0,'Cleaning',9,'Excellent condition','13:45','InfraredScanner','2025-02-20',0.995,'CarolLee','Sunny');

-- Media social metrics table
CREATE TABLE media_social_metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    platform TEXT,
    post_date DATE,
    post_time TEXT,
    content_type TEXT,
    impressions INTEGER,
    engagements INTEGER,
    likes INTEGER,
    shares INTEGER,
    comments INTEGER,
    video_views INTEGER,
    click_through_rate REAL,
    follower_gain INTEGER,
    hashtag_used TEXT,
    campaign_id INTEGER,
    sentiment_score REAL,
    reach INTEGER,
    story_views INTEGER,
    post_url TEXT,
    notes TEXT,
    created_by TEXT,
    verified BOOLEAN,
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);
INSERT INTO media_social_metrics (metric_id,raceId,platform,post_date,post_time,content_type,impressions,engagements,likes,shares,comments,video_views,click_through_rate,follower_gain,hashtag_used,campaign_id,sentiment_score,reach,story_views,post_url,notes,created_by,verified) VALUES (1,1,'Twitter','2025-05-10','12:00','Image',150000,12000,8000,1500,300,0,0.08,500,'#GrandPrix2025',101,0.87,140000,0,'http://twitter.com/post1','High engagement','SocialTeam',1);
INSERT INTO media_social_metrics (metric_id,raceId,platform,post_date,post_time,content_type,impressions,engagements,likes,shares,comments,video_views,click_through_rate,follower_gain,hashtag_used,campaign_id,sentiment_score,reach,story_views,post_url,notes,created_by,verified) VALUES (2,2,'Instagram','2025-05-11','15:30','Video',200000,25000,18000,3000,500,50000,0.12,700,'#SpeedWeek',102,0.92,190000,2500,'http://instagram.com/post2','Viral video','SocialTeam',1);
INSERT INTO media_social_metrics (metric_id,raceId,platform,post_date,post_time,content_type,impressions,engagements,likes,shares,comments,video_views,click_through_rate,follower_gain,hashtag_used,campaign_id,sentiment_score,reach,story_views,post_url,notes,created_by,verified) VALUES (3,3,'Facebook','2025-05-12','09:45','Link',120000,9000,6000,800,200,0,0.07,300,'#RacingLife',103,0.81,115000,0,'http://facebook.com/post3','Steady reach','SocialTeam',1);

-- Logistics vehicle registry table
CREATE TABLE logistics_vehicle_registry (
    vehicle_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fleet_number TEXT,
    vehicle_type TEXT,
    make TEXT,
    model TEXT,
    year INTEGER,
    license_plate TEXT,
    vin TEXT,
    registration_expiry DATE,
    insurance_provider TEXT,
    insurance_policy TEXT,
    capacity_tons REAL,
    fuel_type TEXT,
    mileage INTEGER,
    last_service_date DATE,
    next_service_due DATE,
    assigned_route TEXT,
    driver_id INTEGER,
    status TEXT,
    gps_tracker_id TEXT,
    notes TEXT,
    purchase_price REAL
);
INSERT INTO logistics_vehicle_registry (vehicle_id,fleet_number,vehicle_type,make,model,year,license_plate,vin,registration_expiry,insurance_provider,insurance_policy,capacity_tons,fuel_type,mileage,last_service_date,next_service_due,assigned_route,driver_id,status,gps_tracker_id,notes,purchase_price) VALUES (1,'FN-001','Truck','Volvo','FH16',2020,'ABC1234','1HGBH41JXMN109186','2025-12-31','Allianz','POL12345',20.0,'Diesel',85000,'2024-06-15','2024-12-15','Circuit A',12,'Active','GPS-001','Main transport vehicle',120000);
INSERT INTO logistics_vehicle_registry (vehicle_id,fleet_number,vehicle_type,make,model,year,license_plate,vin,registration_expiry,insurance_provider,insurance_policy,capacity_tons,fuel_type,mileage,last_service_date,next_service_due,assigned_route,driver_id,status,gps_tracker_id,notes,purchase_price) VALUES (2,'FN-002','Van','Mercedes','Sprinter',2021,'DEF5678','2HGBH41JXMN109187','2026-03-30','Zurich','POL67890',2.5,'Petrol',45000,'2024-04-20','2024-10-20','Circuit B',15,'Active','GPS-002','Utility van',45000);
INSERT INTO logistics_vehicle_registry (vehicle_id,fleet_number,vehicle_type,make,model,year,license_plate,vin,registration_expiry,insurance_provider,insurance_policy,capacity_tons,fuel_type,mileage,last_service_date,next_service_due,assigned_route,driver_id,status,gps_tracker_id,notes,purchase_price) VALUES (3,'FN-003','Hybrid','Toyota','Proace',2022,'GHI9012','3HGBH41JXMN109188','2027-07-15','AXA','POL34567',3.0,'Hybrid',30000,'2024-02-10','2024-08-10','Circuit C',18,'In Maintenance','GPS-003','Awaiting parts',55000);

-- Fan merchandise preferences table
CREATE TABLE fan_merchandise_preferences (
    preference_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER NOT NULL,
    season_year INTEGER,
    favorite_team TEXT,
    preferred_category TEXT,
    size TEXT,
    color_preference TEXT,
    purchase_frequency INTEGER,
    avg_spend REAL,
    loyalty_program BOOLEAN,
    last_purchase_date DATE,
    preferred_store TEXT,
    online_vs_store TEXT,
    custom_design BOOLEAN,
    limited_edition_interest BOOLEAN,
    seasonal_interest TEXT,
    feedback_rating INTEGER,
    notes TEXT,
    promo_opt_in BOOLEAN,
    last_feedback_date DATE,
    preferred_payment_method TEXT,
    shipping_preference TEXT
);
INSERT INTO fan_merchandise_preferences (preference_id,fan_id,season_year,favorite_team,preferred_category,size,color_preference,purchase_frequency,avg_spend,loyalty_program,last_purchase_date,preferred_store,online_vs_store,custom_design,limited_edition_interest,seasonal_interest,feedback_rating,notes,promo_opt_in,last_feedback_date,preferred_payment_method,shipping_preference) VALUES (1,1001,2024,'TeamA','Apparel','M','Red',5,150.00,1,'2024-04-20','Official Store','Online',0,1,'Winter',8,'Loves caps','1','2024-04-22','CreditCard','Standard');
INSERT INTO fan_merchandise_preferences (preference_id,fan_id,season_year,favorite_team,preferred_category,size,color_preference,purchase_frequency,avg_spend,loyalty_program,last_purchase_date,preferred_store,online_vs_store,custom_design,limited_edition_interest,seasonal_interest,feedback_rating,notes,promo_opt_in,last_feedback_date,preferred_payment_method,shipping_preference) VALUES (2,1002,2024,'TeamB','Accessories','OneSize','Blue',2,80.00,0,'2024-03-15','Partner Outlet','InStore',1,0,'Summer',9,'Enjoys keychains','0','2024-03-20','PayPal','Express');
INSERT INTO fan_merchandise_preferences (preference_id,fan_id,season_year,favorite_team,preferred_category,size,color_preference,purchase_frequency,avg_spend,loyalty_program,last_purchase_date,preferred_store,online_vs_store,custom_design,limited_edition_interest,seasonal_interest,feedback_rating,notes,promo_opt_in,last_feedback_date,preferred_payment_method,shipping_preference) VALUES (3,1003,2024,'TeamC','Collectibles','N/A','Green',1,300.00,1,'2024-02-10','Online Store','Online',0,1,'All',10,'Collector','1','2024-02-12','DebitCard','Signature');

-- Environmental permit records table
CREATE TABLE environmental_permit_records (
    permit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    permit_type TEXT,
    issue_date DATE,
    expiry_date DATE,
    authority TEXT,
    condition_summary TEXT,
    compliance_status TEXT,
    inspection_date DATE,
    inspector_name TEXT,
    penalty_amount REAL,
    renewal_required BOOLEAN,
    documents_url TEXT,
    notes TEXT,
    amendment_number INTEGER,
    amendment_date DATE,
    emission_limit REAL,
    noise_limit REAL,
    waste_management_plan TEXT,
    water_usage_limit REAL,
    sustainability_goal TEXT,
    monitoring_frequency TEXT,
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId)
);
INSERT INTO environmental_permit_records (permit_id,circuitId,permit_type,issue_date,expiry_date,authority,condition_summary,compliance_status,inspection_date,inspector_name,penalty_amount,renewal_required,documents_url,notes,amendment_number,amendment_date,emission_limit,noise_limit,waste_management_plan,water_usage_limit,sustainability_goal,monitoring_frequency) VALUES (1,1,'Air Quality','2024-01-01','2026-12-31','Environmental Agency','Limit CO2 to 50kg/h','Compliant','2024-06-15','LauraGreen',0,1,'http://docs.example.com/permit1.pdf','All good',0,NULL,50.0,70.0,'Recycling only','2000','Zero Emission','Quarterly');
INSERT INTO environmental_permit_records (permit_id,circuitId,permit_type,issue_date,expiry_date,authority,condition_summary,compliance_status,inspection_date,inspector_name,penalty_amount,renewal_required,documents_url,notes,amendment_number,amendment_date,emission_limit,noise_limit,waste_management_plan,water_usage_limit,sustainability_goal,monitoring_frequency) VALUES (2,2,'Water Usage','2024-03-10','2025-03-09','Water Board','Max 5000m3 per event','Conditional','2024-07-20','MarkWhite',5000,1,'http://docs.example.com/permit2.pdf','Minor breach recorded',1,'2024-08-01',NULL,80.0,'Treat water before discharge','1500','Reduce consumption 10%','Biannual');
INSERT INTO environmental_permit_records (permit_id,circuitId,permit_type,issue_date,expiry_date,authority,condition_summary,compliance_status,inspection_date,inspector_name,penalty_amount,renewal_required,documents_url,notes,amendment_number,amendment_date,emission_limit,noise_limit,waste_management_plan,water_usage_limit,sustainability_goal,monitoring_frequency) VALUES (3,3,'Noise Control','2023-11-15','2025-11-14','Noise Authority','Max 85 dB(A) during races','Compliant','2024-05-05','EmilyStone',0,0,'http://docs.example.com/permit3.pdf','No issues',0,NULL,NULL,85.0,'Full recycling','1200','Achieve carbon neutral','Monthly');

-- Race safety training sessions table
CREATE TABLE race_safety_training_sessions (
    session_id INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    trainer_name TEXT,
    session_date DATE,
    start_time TEXT,
    end_time TEXT,
    location TEXT,
    topics_covered TEXT,
    attendance_count INTEGER,
    mandatory BOOLEAN,
    certification_issued BOOLEAN,
    feedback_score REAL,
    training_materials_url TEXT,
    equipment_used TEXT,
    safety_level INTEGER,
    notes TEXT,
    follow_up_actions TEXT,
    participant_group TEXT,
    duration_minutes INTEGER,
    evaluation_method TEXT,
    trainer_contact TEXT,
    policy_reference TEXT,
    created_at TEXT,
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);
INSERT INTO race_safety_training_sessions (session_id,raceId,trainer_name,session_date,start_time,end_time,location,topics_covered,attendance_count,mandatory,certification_issued,feedback_score,training_materials_url,equipment_used,safety_level,notes,follow_up_actions,participant_group,duration_minutes,evaluation_method,trainer_contact,policy_reference,created_at) VALUES (1,1,'John Carter','2025-04-30','08:00','10:00','Pit Lane','Fire safety,Evacuation,First aid',25,1,1,9.2,'http://training.example.com/material1.pdf','Fire Extinguishers',5,'All participants passed','Review drills quarterly','Drivers and crew',120,'Practical','john.carter@example.com','SR-101','2025-04-01 09:00');
INSERT INTO race_safety_training_sessions (session_id,raceId,trainer_name,session_date,start_time,end_time,location,topics_covered,attendance_count,mandatory,certification_issued,feedback_score,training_materials_url,equipment_used,safety_level,notes,follow_up_actions,participant_group,duration_minutes,evaluation_method,trainer_contact,policy_reference,created_at) VALUES (2,2,'Emma Liu','2025-05-01','09:00','11:30','Garage','Chemical handling,Spill response, PPE usage',30,1,1,8.8,'http://training.example.com/material2.pdf','Spill Kits',4,'Minor issues with PPE','Schedule refresher session','Mechanics',150,'Written','emma.liu@example.com','SR-102','2025-04-02 10:15');
INSERT INTO race_safety_training_sessions (session_id,raceId,trainer_name,session_date,start_time,end_time,location,topics_covered,attendance_count,mandatory,certification_issued,feedback_score,training_materials_url,equipment_used,safety_level,notes,follow_up_actions,participant_group,duration_minutes,evaluation_method,trainer_contact,policy_reference,created_at) VALUES (3,3,'Alex Novak','2025-05-02','07:30','09:00','Medical Tent','Emergency response, CPR, Trauma care',20,1,1,9.5,'http://training.example.com/material3.pdf','Defibrillator',5,'Excellent engagement','Update emergency protocols','Medical staff',90,'Simulation','alex.novak@example.com','SR-103','2025-04-03 08:45');