-- Streaming partners providing live broadcast services
CREATE TABLE Streaming_Partners (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    partner_name TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    platform_type TEXT,
    monthly_fee REAL,
    bandwidth_gb REAL,
    latency_ms INTEGER,
    support_contact TEXT,
    region TEXT,
    content_genre TEXT,
    exclusive_rights_flag INTEGER,
    revenue_share_pct REAL,
    avg_viewers INTEGER,
    peak_viewers INTEGER,
    avg_latency_ms REAL,
    api_endpoint TEXT,
    encryption_type TEXT,
    sla_uptime_pct REAL,
    notes TEXT
);
INSERT INTO Streaming_Partners (id,partner_name,contract_start_date,contract_end_date,platform_type,monthly_fee,bandwidth_gb,latency_ms,support_contact,region,content_genre,exclusive_rights_flag,revenue_share_pct,avg_viewers,peak_viewers,avg_latency_ms,api_endpoint,encryption_type,sla_uptime_pct,notes) VALUES (1,'StreamCo','2022-07-01','2025-06-30','OTT',12000.50,5000,45,'JohnDoe','EMEA','Sports',1,30.5,250000,400000,48.2,'api.streamco.com','AES256',99.9,'Initial contract');
INSERT INTO Streaming_Partners (id,partner_name,contract_start_date,contract_end_date,platform_type,monthly_fee,bandwidth_gb,latency_ms,support_contact,region,content_genre,exclusive_rights_flag,revenue_share_pct,avg_viewers,peak_viewers,avg_latency_ms,api_endpoint,encryption_type,sla_uptime_pct,notes) VALUES (2,'LiveNet','2023-01-15','2026-01-14','Live','9500.00',4200,38,'JaneSmith','APAC','Entertainment',0,25.0,180000,300000,42.7,'api.livenet.net','TLS1.2',99.5,'Renewal pending');
INSERT INTO Streaming_Partners (id,partner_name,contract_start_date,contract_end_date,platform_type,monthly_fee,bandwidth_gb,latency_ms,support_contact,region,content_genre,exclusive_rights_flag,revenue_share_pct,avg_viewers,peak_viewers,avg_latency_ms,api_endpoint,encryption_type,sla_uptime_pct,notes) VALUES (3,'GlobeStream','2021-03-01','2024-02-28','Hybrid',15000.75,6200,50,'MikeLee','Americas','Documentary',1,35.0,300000,500000,55.1,'api.globestream.org','AES128',99.8,'Performance review Q4');

-- Fan club organized events and activities
CREATE TABLE Fan_Club_Events (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_name TEXT,
    event_name TEXT,
    event_date TEXT,
    city TEXT,
    venue TEXT,
    expected_attendance INTEGER,
    ticket_price REAL,
    sponsor_name TEXT,
    event_type TEXT,
    age_restriction INTEGER,
    registration_deadline TEXT,
    volunteer_count INTEGER,
    merchandise_stock INTEGER,
    food_vendor TEXT,
    safety_rating REAL,
    social_media_hashtag TEXT,
    livestream_url TEXT,
    feedback_score REAL,
    notes TEXT
);
INSERT INTO Fan_Club_Events (event_id,club_name,event_name,event_date,city,venue,expected_attendance,ticket_price,sponsor_name,event_type,age_restriction,registration_deadline,volunteer_count,merchandise_stock,food_vendor,safety_rating,social_media_hashtag,livestream_url,feedback_score,notes) VALUES (101,'Eagles FC','Summer Fan Fest','2024-07-20','Madrid','Estadio Central',15000,35.00,'SportsBrand','Festival',12,'2024-07-01',200,5000,'FoodHub',4.7,'#EaglesSummer','http://stream.eaglesfc.com','4.5','First edition');
INSERT INTO Fan_Club_Events (event_id,club_name,event_name,event_date,city,venue,expected_attendance,ticket_price,sponsor_name,event_type,age_restriction,registration_deadline,volunteer_count,merchandise_stock,food_vendor,safety_rating,social_media_hashtag,livestream_url,feedback_score,notes) VALUES (102,'Lions United','Charity Match','2024-09-10','London','Arena West',8000,20.00,'CharityOrg','Match',0,'2024-08-31',120,3000,'QuickBite',4.9,'#LionsCharity','http://stream.lionsunited.com','4.8','Proceeds to local hospitals');
INSERT INTO Fan_Club_Events (event_id,club_name,event_name,event_date,city,venue,expected_attendance,ticket_price,sponsor_name,event_type,age_restriction,registration_deadline,volunteer_count,merchandise_stock,food_vendor,safety_rating,social_media_hashtag,livestream_url,feedback_score,notes) VALUES (103,'Tigers FC','Winter Training Camp','2024-12-05','Berlin','Training Complex',500,10.00,'GearCo','Camp',5,'2024-11-20',80,1500,'SnackBar',4.5,'#TigersWinter','http://stream.tigersfc.com','4.2','Includes youth clinics');

-- Costs associated with media production projects
CREATE TABLE Media_Production_Costs (
    cost_id INTEGER PRIMARY KEY AUTOINCREMENT,
    production_name TEXT,
    start_date TEXT,
    end_date TEXT,
    total_budget REAL,
    staff_count INTEGER,
    camera_units INTEGER,
    lighting_units INTEGER,
    editing_hours INTEGER,
    graphics_hours INTEGER,
    music_licence_fee REAL,
    location_fee REAL,
    travel_expense REAL,
    catering_expense REAL,
    equipment_rental REAL,
    post_production_fee REAL,
    overhead_pct REAL,
    final_cost REAL,
    approved_by TEXT,
    notes TEXT
);
INSERT INTO Media_Production_Costs (cost_id,production_name,start_date,end_date,total_budget,staff_count,camera_units,lighting_units,editing_hours,graphics_hours,music_licence_fee,location_fee,travel_expense,catering_expense,equipment_rental,post_production_fee,overhead_pct,final_cost,approved_by,notes) VALUES (301,'Match Highlights Q3','2024-07-01','2024-07-15',85000.00,15,5,8,200,120,2500.00,5000.00,3000.00,2000.00,4000.00,6000.00,12.5,95000.00,'LauraK','Includes extra graphics');
INSERT INTO Media_Production_Costs (cost_id,production_name,start_date,end_date,total_budget,staff_count,camera_units,lighting_units,editing_hours,graphics_hours,music_licence_fee,location_fee,travel_expense,catering_expense,equipment_rental,post_production_fee,overhead_pct,final_cost,approved_by,notes) VALUES (302,'Documentary Series 1','2024-03-10','2024-06-30',210000.00,25,10,12,500,300,8000.00,15000.00,12000.00,8000.00,20000.00,15000.00,15.0,260000.00,'MarkV','Travel to three countries');
INSERT INTO Media_Production_Costs (cost_id,production_name,start_date,end_date,total_budget,staff_count,camera_units,lighting_units,editing_hours,graphics_hours,music_licence_fee,location_fee,travel_expense,catering_expense,equipment_rental,post_production_fee,overhead_pct,final_cost,approved_by,notes) VALUES (303,'Live Stream Finals','2024-11-05','2024-11-06',120000.00,20,8,10,250,150,3000.00,4000.00,2500.00,1500.00,5000.00,7000.00,13.0,140000.00,'SophieM','High‑speed uplink required');

-- Accessibility audit records for stadium facilities
CREATE TABLE Stadium_Accessibility_Audits (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    audit_date TEXT,
    wheelchair_access_score INTEGER,
    blind_access_score INTEGER,
    hearing_assist_score INTEGER,
    ramp_count INTEGER,
    elevator_count INTEGER,
    signage_quality_score INTEGER,
    staff_training_hours INTEGER,
    emergency_evacuation_time_sec INTEGER,
    compliance_status TEXT,
    auditor_name TEXT,
    notes TEXT,
    next_audit_due TEXT,
    accessible_toilets INTEGER,
    braille_signage_count INTEGER,
    audio_announcements INTEGER,
    parking_spots_reserved INTEGER,
    public_transport_score INTEGER,
    lighting_score INTEGER
);
INSERT INTO Stadium_Accessibility_Audits (audit_id,stadium_id,audit_date,wheelchair_access_score,blind_access_score,hearing_assist_score,ramp_count,elevator_count,signage_quality_score,staff_training_hours,emergency_evacuation_time_sec,compliance_status,auditor_name,notes,next_audit_due,accessible_toilets,braille_signage_count,audio_announcements,parking_spots_reserved,public_transport_score,lighting_score) VALUES (401,10,'2024-04-12',85,78,90,12,4,88,30,180,'Compliant','AnaR','Good overall','2025-04-12',8,15,1,20,80,85);
INSERT INTO Stadium_Accessibility_Audits (audit_id,stadium_id,audit_date,wheelchair_access_score,blind_access_score,hearing_assist_score,ramp_count,elevator_count,signage_quality_score,staff_training_hours,emergency_evacuation_time_sec,compliance_status,auditor_name,notes,next_audit_due,accessible_toilets,braille_signage_count,audio_announcements,parking_spots_reserved,public_transport_score,lighting_score) VALUES (402,12,'2024-06-20',70,65,72,8,2,70,20,210,'Non‑Compliant','LuisM','Ramp angles need improvement','2025-06-20',5,10,0,12,60,70);
INSERT INTO Stadium_Accessibility_Audits (audit_id,stadium_id,audit_date,wheelchair_access_score,blind_access_score,hearing_assist_score,ramp_count,elevator_count,signage_quality_score,staff_training_hours,emergency_evacuation_time_sec,compliance_status,auditor_name,notes,next_audit_due,accessible_toilets,braille_signage_count,audio_announcements,parking_spots_reserved,public_transport_score,lighting_score) VALUES (403,15,'2024-08-05',92,88,95,15,5,93,35,165,'Compliant','EmilyT','Exceeds standards','2025-08-05',10,20,2,25,85,90);

-- Scholarships awarded to youth academy players by clubs
CREATE TABLE Club_Youth_Scholarships (
    scholarship_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    season TEXT,
    scholarship_name TEXT,
    amount_usd REAL,
    eligibility_criteria TEXT,
    applicant_count INTEGER,
    awarded_count INTEGER,
    average_gpa REAL,
    sport_discipline TEXT,
    enrollment_status TEXT,
    renewal_possible_flag INTEGER,
    sponsor_name TEXT,
    notes TEXT,
    application_deadline TEXT,
    award_date TEXT,
    scholarship_type TEXT,
    duration_months INTEGER,
    contact_email TEXT,
    contact_phone TEXT
);
INSERT INTO Club_Youth_Scholarships (scholarship_id,club_id,season,scholarship_name,amount_usd,eligibility_criteria,applicant_count,awarded_count,average_gpa,sport_discipline,enrollment_status,renewal_possible_flag,sponsor_name,notes,application_deadline,award_date,scholarship_type,duration_months,contact_email,contact_phone) VALUES (501,3,'2024/25','Future Star Grant',5000.00,'U18, GPA>3.0',120,15,3.5,'Football','Full','1','GlobalSports','Top tier','2024-07-01','2024-08-15','Merit',12,'scholarships@club3.com','+1234567890');
INSERT INTO Club_Youth_Scholarships (scholarship_id,club_id,season,scholarship_name,amount_usd,eligibility_criteria,applicant_count,awarded_count,average_gpa,sport_discipline,enrollment_status,renewal_possible_flag,sponsor_name,notes,application_deadline,award_date,scholarship_type,duration_months,contact_email,contact_phone) VALUES (502,5,'2024/25','Academic Athlete Award',3000.00,'U16, GPA>3.5',90,10,3.8,'Basketball','Partial','0','EduFund','Limited seats','2024-06-15','2024-07-20','Need‑Based',10,'scholarships@club5.com','+1987654321');
INSERT INTO Club_Youth_Scholarships (scholarship_id,club_id,season,scholarship_name,amount_usd,eligibility_criteria,applicant_count,awarded_count,average_gpa,sport_discipline,enrollment_status,renewal_possible_flag,sponsor_name,notes,application_deadline,award_date,scholarship_type,duration_months,contact_email,contact_phone) VALUES (503,8,'2024/25','Community Support Scholarship',2500.00,'U15, community service required',80,8,3.6,'Volleyball','Full','1','CommunityCorp','Focus on outreach','2024-08-01','2024-09-10','Community',12,'scholarships@club8.com','+1122334455');

-- Environmental monitoring stations installed in stadiums
CREATE TABLE Environmental_Monitoring_Stations (
    station_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    station_name TEXT,
    install_date TEXT,
    sensor_type TEXT,
    measurement_unit TEXT,
    calibration_date TEXT,
    data_update_frequency_min INTEGER,
    avg_temperature_c REAL,
    avg_humidity_percent REAL,
    co2_ppm REAL,
    noise_db REAL,
    pm25_ug_m3 REAL,
    pm10_ug_m3 REAL,
    wind_speed_m_s REAL,
    wind_direction_deg REAL,
    power_source TEXT,
    maintenance_last_date TEXT,
    status TEXT,
    notes TEXT
);
INSERT INTO Environmental_Monitoring_Stations (station_id,stadium_id,station_name,install_date,sensor_type,measurement_unit,calibration_date,data_update_frequency_min,avg_temperature_c,avg_humidity_percent,co2_ppm,noise_db,pm25_ug_m3,pm10_ug_m3,wind_speed_m_s,wind_direction_deg,power_source,maintenance_last_date,status,notes) VALUES (601,10,'NorthWing_Env01','2023-05-10','Multi','Metric','2024-01-01',15,22.5,55.0,420.0,68.0,12.5,25.0,3.2,180,'Solar','2024-06-01','Active','No issues');
INSERT INTO Environmental_Monitoring_Stations (station_id,stadium_id,station_name,install_date,sensor_type,measurement_unit,calibration_date,data_update_frequency_min,avg_temperature_c,avg_humidity_percent,co2_ppm,noise_db,pm25_ug_m3,pm10_ug_m3,wind_speed_m_s,wind_direction_deg,power_source,maintenance_last_date,status,notes) VALUES (602,12,'SouthGate_Env02','2023-08-20','AirQuality','Metric','2024-02-15',10,24.0,60.0,500.0,70.0,14.0,30.0,2.8,210,'Grid','2024-05-15','Active','Calibration due Q4');
INSERT INTO Environmental_Monitoring_Stations (station_id,stadium_id,station_name,install_date,sensor_type,measurement_unit,calibration_date,data_update_frequency_min,avg_temperature_c,avg_humidity_percent,co2_ppm,noise_db,pm25_ug_m3,pm10_ug_m3,wind_speed_m_s,wind_direction_deg,power_source,maintenance_last_date,status,notes) VALUES (603,15,'Center_Env03','2024-01-05','Weather','Metric','2024-03-01',5,21.0,50.0,380.0,65.0,10.0,20.0,3.5,150,'Hybrid','2024-07-10','Active','Newly commissioned');

-- Logs of digital asset usage across departments
CREATE TABLE Digital_Asset_Usage_Logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id INTEGER,
    asset_type TEXT,
    usage_date TEXT,
    used_by_department TEXT,
    duration_seconds INTEGER,
    file_size_mb REAL,
    format TEXT,
    resolution TEXT,
    bandwidth_mbps REAL,
    access_key TEXT,
    permission_level TEXT,
    download_count INTEGER,
    view_count INTEGER,
    edit_count INTEGER,
    comment_count INTEGER,
    checksum TEXT,
    expiration_date TEXT,
    status TEXT,
    notes TEXT
);
INSERT INTO Digital_Asset_Usage_Logs (log_id,asset_id,asset_type,usage_date,used_by_department,duration_seconds,file_size_mb,format,resolution,bandwidth_mbps,access_key,permission_level,download_count,view_count,edit_count,comment_count,checksum,expiration_date,status,notes) VALUES (701,2001,'Video','2024-07-12','Marketing',3600,1500.5,'MP4','1920x1080',15.0,'AK12345','ReadWrite',5,20,2,3,'ABCDEF123456','2025-07-12','Active','Used for campaign');
INSERT INTO Digital_Asset_Usage_Logs (log_id,asset_id,asset_type,usage_date,used_by_department,duration_seconds,file_size_mb,format,resolution,bandwidth_mbps,access_key,permission_level,download_count,view_count,edit_count,comment_count,checksum,expiration_date,status,notes) VALUES (702,2002,'Image','2024-06-30','Design',0,25.3,'PNG','3840x2160',0.0,'AK67890','ReadOnly',12,0,0,5,'789XYZ456','2024-12-31','Archived','Brand guidelines');
INSERT INTO Digital_Asset_Usage_Logs (log_id,asset_id,asset_type,usage_date,used_by_department,duration_seconds,file_size_mb,format,resolution,bandwidth_mbps,access_key,permission_level,download_count,view_count,edit_count,comment_count,checksum,expiration_date,status,notes) VALUES (703,2003,'Audio','2024-08-05','Broadcast',1800,120.0,'WAV','N/A',5.0,'AK24680','ReadWrite',3,15,1,2,'LMN987654','2025-01-01','Active','Podcast intro');

-- Travel package offers for fan trips
CREATE TABLE Travel_Package_Offers (
    offer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    provider_name TEXT,
    package_name TEXT,
    departure_city TEXT,
    destination_city TEXT,
    departure_date TEXT,
    return_date TEXT,
    price_usd REAL,
    accommodation_type TEXT,
    meals_included TEXT,
    transport_mode TEXT,
    seats_available INTEGER,
    rating_out_of_5 REAL,
    cancellation_policy TEXT,
    travel_insurance_included INTEGER,
    contact_email TEXT,
    contact_phone TEXT,
    promo_code TEXT,
    terms_and_conditions TEXT,
    notes TEXT
);
INSERT INTO Travel_Package_Offers (offer_id,provider_name,package_name,departure_city,destination_city,departure_date,return_date,price_usd,accommodation_type,meals_included,transport_mode,seats_available,rating_out_of_5,cancellation_policy,travel_insurance_included,contact_email,contact_phone,promo_code,terms_and_conditions,notes) VALUES (801,'FanTravelCo','Euro Cup Experience','Madrid','London','2024-09-10','2024-09-20',1250.00,'Hotel 4*','Breakfast','Flight',30,4.7,'Full Refund 48h',1,'info@fantravelco.com','+441234567890','EURO2024','Non‑refundable after 48h','Includes stadium tour');
INSERT INTO Travel_Package_Offers (offer_id,provider_name,package_name,departure_city,destination_city,departure_date,return_date,price_usd,accommodation_type,meals_included,transport_mode,seats_available,rating_out_of_5,cancellation_policy,travel_insurance_included,contact_email,contact_phone,promo_code,terms_and_conditions,notes) VALUES (802,'TravelHub','South America Fan Trip','São Paulo','Buenos Aires','2024-11-05','2024-11-15',980.00,'Hostel','All Meals','Bus',20,4.3,'Partial Refund 72h',0,'support@travelhub.com','+5511998765432','SOUTH2024','Refund only for unused days','Includes local matches');
INSERT INTO Travel_Package_Offers (offer_id,provider_name,package_name,departure_city,destination_city,departure_date,return_date,price_usd,accommodation_type,meals_included,transport_mode,seats_available,rating_out_of_5,cancellation_policy,travel_insurance_included,contact_email,contact_phone,promo_code,terms_and_conditions,notes) VALUES (803,'GlobeTours','Asian Champions Tour','Tokyo','Seoul','2025-02-01','2025-02-10',1100.00,'Apartment','Breakfast','Train',15,4.5,'Full Refund 24h',1,'contact@globetours.jp','+81312345678','ASIA2025','Premium seating at matches','Includes city sightseeing');

-- Analytics of merchandise returns
CREATE TABLE Merchandise_Return_Analytics (
    return_id INTEGER PRIMARY KEY AUTOINCREMENT,
    merchandise_id INTEGER,
    return_date TEXT,
    customer_id INTEGER,
    reason_code TEXT,
    condition_rating INTEGER,
    refund_amount_usd REAL,
    restock_fee_usd REAL,
    processing_time_days INTEGER,
    inspected_by TEXT,
    return_method TEXT,
    shipping_cost_usd REAL,
    resale_possible_flag INTEGER,
    resale_price_usd REAL,
    notes TEXT,
    store_location TEXT,
    manager_approval TEXT,
    audit_timestamp TEXT,
    final_status TEXT,
    notes2 TEXT
);
INSERT INTO Merchandise_Return_Analytics (return_id,merchandise_id,return_date,customer_id,reason_code,condition_rating,refund_amount_usd,restock_fee_usd,processing_time_days,inspected_by,return_method,shipping_cost_usd,resale_possible_flag,resale_price_usd,notes,store_location,manager_approval,audit_timestamp,final_status,notes2) VALUES (901,3001,'2024-07-15',45001,'SizeTooLarge',4,75.00,5.00,3,'AnaR','Mail',2.50,1,70.00,'Sent to outlet','Stadium Shop','JohnK','2024-07-16 09:00:00','Completed','');
INSERT INTO Merchandise_Return_Analytics (return_id,merchandise_id,return_date,customer_id,reason_code,condition_rating,refund_amount_usd,restock_fee_usd,processing_time_days,inspected_by,return_method,shipping_cost_usd,resale_possible_flag,resale_price_usd,notes,store_location,manager_approval,audit_timestamp,final_status,notes2) VALUES (902,3002,'2024-08-02',45012,'Defective',2,120.00,10.00,5,'LuisM','InStore',0.00,0,0.00,'Damaged packaging','Online Store','MariaS','2024-08-03 14:30:00','Rejected','Defect verified');
INSERT INTO Merchandise_Return_Analytics (return_id,merchandise_id,return_date,customer_id,reason_code,condition_rating,refund_amount_usd,restock_fee_usd,processing_time_days,inspected_by,return_method,shipping_cost_usd,resale_possible_flag,resale_price_usd,notes,store_location,manager_approval,audit_timestamp,final_status,notes2) VALUES (903,3003,'2024-09-10',45023,'ChangedMind',5,50.00,3.00,2,'EmilyT','Courier',1.75,1,45.00,'Resold on clearance','Stadium Kiosk','PeterL','2024-09-11 11:20:00','Completed','');

-- Infrastructure items used in training camps
CREATE TABLE Training_Camp_Infrastructure (
    infra_id INTEGER PRIMARY KEY AUTOINCREMENT,
    camp_id INTEGER,
    infra_type TEXT,
    quantity INTEGER,
    manufacturer TEXT,
    purchase_date TEXT,
    warranty_expiry TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance_date TEXT,
    condition_score INTEGER,
    location_within_camp TEXT,
    power_requirements_kw REAL,
    water_requirements_l_per_day REAL,
    portable_flag INTEGER,
    usage_rate_percent REAL,
    depreciation_years INTEGER,
    assigned_to_team TEXT,
    notes TEXT,
    compliance_standard TEXT,
    audit_date TEXT
);
INSERT INTO Training_Camp_Infrastructure (infra_id,camp_id,infra_type,quantity,manufacturer,purchase_date,warranty_expiry,maintenance_cycle_days,last_maintenance_date,condition_score,location_within_camp,power_requirements_kw,water_requirements_l_per_day,portable_flag,usage_rate_percent,depreciation_years,assigned_to_team,notes,compliance_standard,audit_date) VALUES (1001,201,'Turf_Machine',3,'GreenTech','2022-03-15','2027-03-15',180,'2024-06-01',92,'North Field',15.0,200.0,0,75.5,5,'U18 Squad','Well maintained','ISO9001','2024-07-01');
INSERT INTO Training_Camp_Infrastructure (infra_id,camp_id,infra_type,quantity,manufacturer,purchase_date,warranty_expiry,maintenance_cycle_days,last_maintenance_date,condition_score,location_within_camp,power_requirements_kw,water_requirements_l_per_day,portable_flag,usage_rate_percent,depreciation_years,assigned_to_team,notes,compliance_standard,audit_date) VALUES (1002,202,'Fitness_Tracker',50,'FitWear','2023-11-20','2028-11-20',90,'2024-05-20',88,'Gym Area',0.2,0.0,1,60.0,3,'Senior Team','Battery replacements due','CE','2024-06-15');
INSERT INTO Training_Camp_Infrastructure (infra_id,camp_id,infra_type,quantity,manufacturer,purchase_date,warranty_expiry,maintenance_cycle_days,last_maintenance_date,condition_score,location_within_camp,power_requirements_kw,water_requirements_l_per_day,portable_flag,usage_rate_percent,depreciation_years,assigned_to_team,notes,compliance_standard,audit_date) VALUES (1003,203,'Medical_Station',1,'MediCore','2021-01-10','2026-01-10',365,'2024-04-10',95,'Central Complex',5.0,0.0,0,30.0,6,'All Teams','Upgraded equipment','ISO13485','2024-05-05');