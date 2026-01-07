-- Stadium_Security_Incidents_Log
CREATE TABLE Stadium_Security_Incidents_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    incident_date TEXT,
    incident_time TEXT,
    incident_type TEXT,
    severity_level INTEGER,
    reported_by TEXT,
    description TEXT,
    action_taken TEXT,
    resolved BOOLEAN,
    resolution_date TEXT,
    officer_on_duty TEXT,
    camera_footage_id TEXT,
    ticket_number TEXT,
    entry_gate TEXT,
    exit_gate TEXT,
    suspect_description TEXT,
    weapon_detected BOOLEAN,
    medical_assistance BOOLEAN,
    follow_up_required BOOLEAN,
    notes TEXT
);
INSERT INTO Stadium_Security_Incidents_Log (stadium_id,incident_date,incident_time,incident_type,severity_level,reported_by,description,action_taken,resolved,resolution_date,officer_on_duty,camera_footage_id,ticket_number,entry_gate,exit_gate,suspect_description,weapon_detected,medical_assistance,follow_up_required,notes) VALUES (101,'2025-03-12','19:45','CrowdDisturbance',2,'SecurityGuard1','Large group pushing near exit','Calmed crowd',1,'2025-03-12','OfficerA','CAM001','TCK123','GateA','GateB','Group of 15 males',0,0,0,'No further action');
INSERT INTO Stadium_Security_Incidents_Log (stadium_id,incident_date,incident_time,incident_type,severity_level,reported_by,description,action_taken,resolved,resolution_date,officer_on_duty,camera_footage_id,ticket_number,entry_gate,exit_gate,suspect_description,weapon_detected,medical_assistance,follow_up_required,notes) VALUES (102,'2025-04-05','14:20','UnauthorizedAccess',4,'SecurityGuard2','Individual bypassed turnstile','Detained and handed to police',1,'2025-04-05','OfficerB','CAM045','TCK987','GateC','GateD','Male approx 180cm',1,0,1,'Investigation ongoing');
INSERT INTO Stadium_Security_Incidents_Log (stadium_id,incident_date,incident_time,incident_type,severity_level,reported_by,description,action_taken,resolved,resolution_date,officer_on_duty,camera_footage_id,ticket_number,entry_gate,exit_gate,suspect_description,weapon_detected,medical_assistance,follow_up_required,notes) VALUES (103,'2025-05-21','09:10','MedicalEmergency',1,'SecurityGuard3','Spectator fainted near concession','Provided first aid',1,'2025-05-21','OfficerC','CAM078','TCK555','GateE','GateF','Female approx 165cm',0,1,0,'Returned to seat');

-- Fan_Social_Network_Analytics
CREATE TABLE Fan_Social_Network_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    platform_name TEXT,
    fan_id TEXT,
    post_id TEXT,
    post_date TEXT,
    post_time TEXT,
    content_type TEXT,
    content_length INTEGER,
    likes INTEGER,
    shares INTEGER,
    comments INTEGER,
    sentiment_score REAL,
    engagement_rate REAL,
    reach INTEGER,
    impressions INTEGER,
    video_views INTEGER,
    story_views INTEGER,
    followers_at_post INTEGER,
    hashtags_used TEXT,
    mentions_used TEXT,
    device_type TEXT,
    location TEXT,
    language TEXT
);
INSERT INTO Fan_Social_Network_Analytics (platform_name,fan_id,post_id,post_date,post_time,content_type,content_length,likes,shares,comments,sentiment_score,engagement_rate,reach,impressions,video_views,story_views,followers_at_post,hashtags_used,mentions_used,device_type,location,language) VALUES ('Twitter','FAN001','POST123','2025-02-01','12:30','Text',140,250,30,15,0.78,0.05,1200,1500,0,0,800,'#TeamA','#PlayerX','Mobile','London','en');
INSERT INTO Fan_Social_Network_Analytics (platform_name,fan_id,post_id,post_date,post_time,content_type,content_length,likes,shares,comments,sentiment_score,engagement_rate,reach,impressions,video_views,story_views,followers_at_post,hashtags_used,mentions_used,device_type,location,language) VALUES ('Instagram','FAN002','POST456','2025-03-15','18:45','Image',0,500,80,40,0.85,0.07,2000,3000,0,0,1500,'#MatchDay','#TeamB','Tablet','Madrid','es');
INSERT INTO Fan_Social_Network_Analytics (platform_name,fan_id,post_id,post_date,post_time,content_type,content_length,likes,shares,comments,sentiment_score,engagement_rate,reach,impressions,video_views,story_views,followers_at_post,hashtags_used,mentions_used,device_type,location,language) VALUES ('TikTok','FAN003','POST789','2025-04-20','20:10','Video',0,800,120,60,0.92,0.09,3500,5000,800,150,2300,'#Goal','#PlayerY','Mobile','Berlin','de');

-- Team_Travel_Itinerary_Details
CREATE TABLE Team_Travel_Itinerary_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    travel_date TEXT,
    departure_time TEXT,
    arrival_time TEXT,
    departure_airport TEXT,
    arrival_airport TEXT,
    flight_number TEXT,
    airline TEXT,
    seat_class TEXT,
    accommodation_name TEXT,
    accommodation_address TEXT,
    check_in_date TEXT,
    check_out_date TEXT,
    transport_mode_to_hotel TEXT,
    driver_name TEXT,
    driver_contact TEXT,
    meals_included BOOLEAN,
    special_requests TEXT,
    travel_budget REAL,
    actual_spent REAL,
    carbon_emission_kg REAL,
    notes TEXT
);
INSERT INTO Team_Travel_Itinerary_Details (team_id,travel_date,departure_time,arrival_time,departure_airport,arrival_airport,flight_number,airline,seat_class,accommodation_name,accommodation_address,check_in_date,check_out_date,transport_mode_to_hotel,driver_name,driver_contact,meals_included,special_requests,travel_budget,actual_spent,carbon_emission_kg,notes) VALUES (201,'2025-06-10','08:00','11:30','JFK','LHR','BA117','BritishAirways','Business','GrandHotel','123 Main St London','2025-06-10','2025-06-15','Car','John Doe','+441234567890',1,'VegetarianMeal',15000,14800,1200,'All smooth');
INSERT INTO Team_Travel_Itinerary_Details (team_id,travel_date,departure_time,arrival_time,departure_airport,arrival_airport,flight_number,airline,seat_class,accommodation_name,accommodation_address,check_in_date,check_out_date,transport_mode_to_hotel,driver_name,driver_contact,meals_included,special_requests,travel_budget,actual_spent,carbon_emission_kg,notes) VALUES (202,'2025-07-05','14:45','17:20','CDG','MAD','IB345','Iberia','Economy','CityResort','Avenida 5 Madrid','2025-07-05','2025-07-10','Shuttle','Maria Lopez','+34123456789',0,'LateCheckIn',12000,11950,950,'Minor delay on arrival');
INSERT INTO Team_Travel_Itinerary_Details (team_id,travel_date,departure_time,arrival_time,departure_airport,arrival_airport,flight_number,airline,seat_class,accommodation_name,accommodation_address,check_in_date,check_out_date,transport_mode_to_hotel,driver_name,driver_contact,meals_included,special_requests,travel_budget,actual_spent,carbon_emission_kg,notes) VALUES (203,'2025-08-20','22:15','01:45','SYD','SFO','UA887','United','First','PacificHotel','456 Ocean Blvd SanFrancisco','2025-08-21','2025-08-26','Van','Sam Lee','+14155551234',1,'ExtraBedding',25000,25200,2100,'Exceeded budget due to last minute upgrades');

-- League_Official_Communication_Archive
CREATE TABLE League_Official_Communication_Archive (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    communication_id TEXT,
    sender_department TEXT,
    recipient_department TEXT,
    sent_date TEXT,
    sent_time TEXT,
    subject TEXT,
    body TEXT,
    attachment_name TEXT,
    attachment_type TEXT,
    confidentiality_level INTEGER,
    read_status BOOLEAN,
    read_date TEXT,
    priority_level INTEGER,
    channel TEXT,
    reference_number TEXT,
    related_match_id INTEGER,
    related_team_id INTEGER,
    approved_by TEXT,
    approval_date TEXT,
    tags TEXT,
    archive_location TEXT,
    notes TEXT
);
INSERT INTO League_Official_Communication_Archive (communication_id,sender_department,recipient_department,sent_date,sent_time,subject,body,attachment_name,attachment_type,confidentiality_level,read_status,read_date,priority_level,channel,reference_number,related_match_id,related_team_id,approved_by,approval_date,tags,archive_location,notes) VALUES ('COM001','Regulations','Scheduling','2025-01-10','09:00','Schedule Update','Updated match schedule for March','schedule_march.pdf','PDF',2,1,'2025-01-10',1,'Email','REF1001',305,12,'DirectorA','2025-01-09','Schedule,Update','FolderA','No issues');
INSERT INTO League_Official_Communication_Archive (communication_id,sender_department,recipient_department,sent_date,sent_time,subject,body,attachment_name,attachment_type,confidentiality_level,read_status,read_date,priority_level,channel,reference_number,related_match_id,related_team_id,approved_by,approval_date,tags,archive_location,notes) VALUES ('COM002','Finance','Clubs','2025-02-15','14:30','Budget Allocation','Quarterly budget distribution details','budget_q1.xlsx','Excel',3,0,NULL,2,'Portal','REF2002',NULL,23,'FinanceHead','2025-02-14','Budget,Finance','FolderB','Pending read');
INSERT INTO League_Official_Communication_Archive (communication_id,sender_department,recipient_department,sent_date,sent_time,subject,body,attachment_name,attachment_type,confidentiality_level,read_status,read_date,priority_level,channel,reference_number,related_match_id,related_team_id,approved_by,approval_date,tags,archive_location,notes) VALUES ('COM003','Legal','All','2025-03-05','11:45','Policy Change','New disciplinary policy effective immediately','policy_doc.pdf','PDF',5,1,'2025-03-05',1,'Email','REF3003',NULL,NULL,'LegalChief','2025-03-04','Policy,Legal','FolderC','Reviewed');

-- Player_Nutrition_Supplement_Records
CREATE TABLE Player_Nutrition_Supplement_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    record_date TEXT,
    supplement_name TEXT,
    dosage_mg INTEGER,
    frequency_per_day INTEGER,
    administration_route TEXT,
    start_time TEXT,
    end_time TEXT,
    prescribed_by TEXT,
    approved BOOLEAN,
    notes TEXT,
    batch_number TEXT,
    supplier_name TEXT,
    cost_per_dose REAL,
    total_cost REAL,
    compliance_rate REAL,
    side_effects_reported TEXT,
    follow_up_date TEXT,
    lab_test_required BOOLEAN,
    lab_result TEXT,
    storage_conditions TEXT
);
INSERT INTO Player_Nutrition_Supplement_Records (player_id,record_date,supplement_name,dosage_mg,frequency_per_day,administration_route,start_time,end_time,prescribed_by,approved,notes,batch_number,supplier_name,cost_per_dose,total_cost,compliance_rate,side_effects_reported,follow_up_date,lab_test_required,lab_result,storage_conditions) VALUES (1001,'2025-04-01','Omega3','2000',2,'Oral','08:00','20:00','NutritionistA',1,'Daily heart health','BATCH01','NutriSupplies',0.5,5.0,0.98,'None','2025-04-15',0,'','CoolDry');
INSERT INTO Player_Nutrition_Supplement_Records (player_id,record_date,supplement_name,dosage_mg,frequency_per_day,administration_route,start_time,end_time,prescribed_by,approved,notes,batch_number,supplier_name,cost_per_dose,total_cost,compliance_rate,side_effects_reported,follow_up_date,lab_test_required,lab_result,storage_conditions) VALUES (1002,'2025-04-03','Creatine','5000',1,'Oral','09:00','09:00','NutritionistB',1,'Pre‑training boost','BATCH02','SuppTech',0.8,8.0,1.00,'Mild stomach upset','2025-04-20',0,'','RoomTemp');
INSERT INTO Player_Nutrition_Supplement_Records (player_id,record_date,supplement_name,dosage_mg,frequency_per_day,administration_route,start_time,end_time,prescribed_by,approved,notes,batch_number,supplier_name,cost_per_dose,total_cost,compliance_rate,side_effects_reported,follow_up_date,lab_test_required,lab_result,storage_conditions) VALUES (1003,'2025-04-05','VitaminD','1000',1,'Oral','07:30','07:30','NutritionistC',1,'Bone health','BATCH03','HealthMakers',0.3,3.0,0.95,'None','2025-04-25',0,'','CoolDry');

-- Match_Operational_Checklist_Items
CREATE TABLE Match_Operational_Checklist_Items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    checklist_section TEXT,
    item_description TEXT,
    responsible_role TEXT,
    due_time TEXT,
    completed BOOLEAN,
    completion_time TEXT,
    comments TEXT,
    verification_status TEXT,
    verification_by TEXT,
    verification_date TEXT,
    priority_level INTEGER,
    escalation_needed BOOLEAN,
    escalation_contact TEXT,
    risk_level TEXT,
    resource_needed TEXT,
    resource_quantity INTEGER,
    backup_plan TEXT,
    last_updated TEXT,
    audit_trail TEXT,
    status_notes TEXT
);
INSERT INTO Match_Operational_Checklist_Items (match_id,checklist_section,item_description,responsible_role,due_time,completed,completion_time,comments,verification_status,verification_by,verification_date,priority_level,escalation_needed,escalation_contact,risk_level,resource_needed,resource_quantity,backup_plan,last_updated,audit_trail,status_notes) VALUES (4001,'Security','Verify perimeter fencing','SecurityChief','18:00',1,'18:05','All clear','Approved','SupervisorA','2025-03-01',1,0,NULL,'Low','FencingPanels',20,'ExtraPanels','2025-02-28','Log001','No issues');
INSERT INTO Match_Operational_Checklist_Items (match_id,checklist_section,item_description,responsible_role,due_time,completed,completion_time,comments,verification_status,verification_by,verification_date,priority_level,escalation_needed,escalation_contact,risk_level,resource_needed,resource_quantity,backup_plan,last_updated,audit_trail,status_notes) VALUES (4002,'Medical','Set up first aid stations','MedicalLead','17:30',1,'17:35','Stations ready','Approved','SupervisorB','2025-03-02',1,0,NULL,'Medium','FirstAidKits',10,'AdditionalKits','2025-02-28','Log002','Ready');
INSERT INTO Match_Operational_Checklist_Items (match_id,checklist_section,item_description,responsible_role,due_time,completed,completion_time,comments,verification_status,verification_by,verification_date,priority_level,escalation_needed,escalation_contact,risk_level,resource_needed,resource_quantity,backup_plan,last_updated,audit_trail,status_notes) VALUES (4003,'Broadcast','Test camera feeds','BroadcastTech','16:45',1,'16:50','All feeds functional','Approved','SupervisorC','2025-03-03',1,0,NULL,'Low','CameraUnits',5,'SpareCameras','2025-02-28','Log003','All good');

-- Club_Real_Estate_Transactions
CREATE TABLE Club_Real_Estate_Transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    transaction_type TEXT,
    property_name TEXT,
    property_address TEXT,
    purchase_price REAL,
    sale_price REAL,
    transaction_date TEXT,
    seller_name TEXT,
    buyer_name TEXT,
    title_deed_number TEXT,
    legal_firm TEXT,
    financing_source TEXT,
    loan_amount REAL,
    interest_rate REAL,
    loan_term_years INTEGER,
    appraisal_value REAL,
    property_type TEXT,
    land_area_sqft INTEGER,
    building_area_sqft INTEGER,
    zoning_class TEXT,
    tax_assessed_value REAL,
    notes TEXT
);
INSERT INTO Club_Real_Estate_Transactions (club_id,transaction_type,property_name,property_address,purchase_price,sale_price,transaction_date,seller_name,buyer_name,title_deed_number,legal_firm,financing_source,loan_amount,interest_rate,loan_term_years,appraisal_value,property_type,land_area_sqft,building_area_sqft,zoning_class,tax_assessed_value,notes) VALUES (301,'Purchase','TrainingComplexA','12 Academy Rd','2500000',NULL,'2025-01-15','RealEstateCo','ClubA','DEED123','LawFirmX','BankLoan','2000000',3.5,15,'2600000','Complex',50000,30000,'C2','2000000','Strategic expansion');
INSERT INTO Club_Real_Estate_Transactions (club_id,transaction_type,property_name,property_address,purchase_price,sale_price,transaction_date,seller_name,buyer_name,title_deed_number,legal_firm,financing_source,loan_amount,interest_rate,loan_term_years,appraisal_value,property_type,land_area_sqft,building_area_sqft,zoning_class,tax_assessed_value,notes) VALUES (302,'Sale','OldStadium','45 Legacy St','1500000','1800000','2025-03-10','ClubB','DeveloperZ','DEED456','LawFirmY','Cash',NULL,NULL,NULL,'1700000','Stadium',80000,60000,'D1','1800000','Redevelopment plan');
INSERT INTO Club_Real_Estate_Transactions (club_id,transaction_type,property_name,property_address,purchase_price,sale_price,transaction_date,seller_name,buyer_name,title_deed_number,legal_firm,financing_source,loan_amount,interest_rate,loan_term_years,appraisal_value,property_type,land_area_sqft,building_area_sqft,zoning_class,tax_assessed_value,notes) VALUES (303,'Lease','GymFacility','78 Fitness Ave','0','500000','2025-05-20','OwnerCo','ClubC','DEED789','LawFirmZ','Lease','500000',0,5,'550000','Gym',20000,15000,'E3','500000','5‑year lease');

-- Sponsor_Brand_Campaign_Performance
CREATE TABLE Sponsor_Brand_Campaign_Performance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_audience TEXT,
    budget REAL,
    spent REAL,
    impressions INTEGER,
    click_through_rate REAL,
    conversion_rate REAL,
    cost_per_acquisition REAL,
    brand_awareness_score REAL,
    sentiment_score REAL,
    media_channels TEXT,
    creative_type TEXT,
    geographic_scope TEXT,
    platform_breakdown TEXT,
    roi REAL,
    notes TEXT,
    approval_status TEXT,
    approved_by TEXT,
    approval_date TEXT
);
INSERT INTO Sponsor_Brand_Campaign_Performance (sponsor_id,campaign_name,start_date,end_date,target_audience,budget,spent,impressions,click_through_rate,conversion_rate,cost_per_acquisition,brand_awareness_score,sentiment_score,media_channels,creative_type,geographic_scope,platform_breakdown,roi,notes,approval_status,approved_by,approval_date) VALUES (401,'SummerKickoff','2025-06-01','2025-08-31','YoungAdults','200000','180000','5000000',0.025,0.012,15.0,78.5,0.84,'TV,Social','Video','Europe','TV:60%,Social:40%',1.25,'Successful reach','Approved','MarketingHead','2025-05-20');
INSERT INTO Sponsor_Brand_Campaign_Performance (sponsor_id,campaign_name,start_date,end_date,target_audience,budget,spent,impressions,click_through_rate,conversion_rate,cost_per_acquisition,brand_awareness_score,sentiment_score,media_channels,creative_type,geographic_scope,platform_breakdown,roi,notes,approval_status,approved_by,approval_date) VALUES (402,'WinterWarmth','2025-11-01','2026-01-31','Families','150000','155000','3000000',0.018,0.009,20.0,70.2,0.78,'Radio,Online','Audio','NorthAmerica','Radio:55%,Online:45%',0.95,'Overspent','Pending','MarketingMgr','2025-10-15');
INSERT INTO Sponsor_Brand_Campaign_Performance (sponsor_id,campaign_name,start_date,end_date,target_audience,budget,spent,impressions,click_through_rate,conversion_rate,cost_per_acquisition,brand_awareness_score,sentiment_score,media_channels,creative_type,geographic_scope,platform_breakdown,roi,notes,approval_status,approved_by,approval_date) VALUES (403,'GlobalLaunch','2025-03-01','2025-05-31','Global','300000','295000','8000000',0.030,0.015,12.5,85.0,0.90,'Digital,Outdoors','Mixed','Worldwide','Digital:70%,Outdoors:30%',1.40,'Exceeded KPI','Approved','ChiefOfficer','2025-02-25');

-- Training_Center_Environmental_Sensor_Data
CREATE TABLE Training_Center_Environmental_Sensor_Data (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    sensor_id TEXT,
    sensor_type TEXT,
    reading_timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    pm25_ug_m3 REAL,
    noise_db REAL,
    light_lux REAL,
    vibration_mms REAL,
    battery_level_percent INTEGER,
    status TEXT,
    maintenance_required BOOLEAN,
    calibration_date TEXT,
    notes TEXT,
    location_description TEXT,
    firmware_version TEXT,
    data_quality_score REAL,
    alert_triggered BOOLEAN,
    alert_type TEXT
);
INSERT INTO Training_Center_Environmental_Sensor_Data (center_id,sensor_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,pm25_ug_m3,noise_db,light_lux,vibration_mms,battery_level_percent,status,maintenance_required,calibration_date,notes,location_description,firmware_version,data_quality_score,alert_triggered,alert_type) VALUES (1,'SENS001','TempHum','2025-04-01T08:00:00',22.5,45.0,600,12.3,55.0,300,0.05,95,'OK',0,'2025-01-15','Normal operation','Gym Hall A','v1.2',0.98,0,'');
INSERT INTO Training_Center_Environmental_Sensor_Data (center_id,sensor_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,pm25_ug_m3,noise_db,light_lux,vibration_mms,battery_level_percent,status,maintenance_required,calibration_date,notes,location_description,firmware_version,data_quality_score,alert_triggered,alert_type) VALUES (1,'SENS002','AirQuality','2025-04-01T08:05:00',22.7,44.5,1200,30.5,58.0,310,0.07,90,'OK',0,'2025-01-15','Elevated CO2','Gym Hall B','v1.0',0.95,1,'CO2High');
INSERT INTO Training_Center_Environmental_Sensor_Data (center_id,sensor_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,pm25_ug_m3,noise_db,light_lux,vibration_mms,battery_level_percent,status,maintenance_required,calibration_date,notes,location_description,firmware_version,data_quality_score,alert_triggered,alert_type) VALUES (2,'SENS003','Noise','2025-04-01T08:10:00',21.9,46.2,500,10.0,85.0,280,0.03,85,'OK',0,'2025-02-01','Peak noise during training','Recovery Room','v2.1',0.99,1,'NoiseHigh');

-- Digital_Content_Production_Schedule
CREATE TABLE Digital_Content_Production_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    content_id TEXT,
    title TEXT,
    production_phase TEXT,
    assigned_team TEXT,
    start_date TEXT,
    end_date TEXT,
    status TEXT,
    priority INTEGER,
    budget REAL,
    actual_cost REAL,
    resources_needed TEXT,
    resource_quantity INTEGER,
    approval_required BOOLEAN,
    approved_by TEXT,
    approval_date TEXT,
    platform TEXT,
    target_audience TEXT,
    distribution_channels TEXT,
    expected_views INTEGER,
    actual_views INTEGER,
    engagement_rate REAL,
    notes TEXT,
    last_modified TEXT
);
INSERT INTO Digital_Content_Production_Schedule (content_id,title,production_phase,assigned_team,start_date,end_date,status,priority,budget,actual_cost,resources_needed,resource_quantity,approval_required,approved_by,approval_date,platform,target_audience,distribution_channels,expected_views,actual_views,engagement_rate,notes,last_modified) VALUES ('DC001','MatchHighlights','Planning','VideoTeam','2025-03-01','2025-03-05','Pending',2,5000,0,'Cameras',3,1,'ContentLead','2025-02-28','YouTube','Fans','200000',0,0,'Awaiting footage','2025-02-28');
INSERT INTO Digital_Content_Production_Schedule (content_id,title,production_phase,assigned_team,start_date,end_date,status,priority,budget,actual_cost,resources_needed,resource_quantity,approval_required,approved_by,approval_date,platform,target_audience,distribution_channels,expected_views,actual_views,engagement_rate,notes,last_modified) VALUES ('DC002','PlayerInterview','Production','MediaTeam','2025-04-10','2025-04-12','InProgress',1,3000,1200,'StudioTime',2,1,'EditorLead','2025-04-09','Instagram','Followers','150000',0,0,'Shooting day 1 completed','2025-04-10');
INSERT INTO Digital_Content_Production_Schedule (content_id,title,production_phase,assigned_team,start_date,end_date,status,priority,budget,actual_cost,resources_needed,resource_quantity,approval_required,approved_by,approval_date,platform,target_audience,distribution_channels,expected_views,actual_views,engagement_rate,notes,last_modified) VALUES ('DC003','SeasonPreview','PostProduction','GraphicsTeam','2025-05-01','2025-05-03','Scheduled',3,4000,0,'Animators',4,1,'CreativeDirector','2025-04-28','Facebook','Fans','250000',0,0,'Storyboard approved','2025-04-28');

-- Club_Real_Estate_Transactions (additional example if needed) 

-- (The script ends here)