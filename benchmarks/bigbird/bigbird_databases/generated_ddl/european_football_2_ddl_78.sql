-- Media_Podcast_Episodes: details of podcast episodes produced by league media
CREATE TABLE Media_Podcast_Episodes (
    episode_id INTEGER PRIMARY KEY AUTOINCREMENT,
    podcast_name TEXT,
    episode_title TEXT,
    episode_number INTEGER,
    release_date TEXT,
    duration_seconds INTEGER,
    host_name TEXT,
    guest_name TEXT,
    topic_category TEXT,
    description TEXT,
    language TEXT,
    audio_format TEXT,
    file_size_mb REAL,
    download_url TEXT,
    listen_count INTEGER,
    like_count INTEGER,
    share_count INTEGER,
    rating_avg REAL,
    rating_count INTEGER,
    sponsor_name TEXT,
    sponsor_message TEXT,
    is_explicit INTEGER,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Media_Podcast_Episodes (podcast_name,episode_title,episode_number,release_date,duration_seconds,host_name,guest_name,topic_category,description,language,audio_format,file_size_mb,download_url,listen_count,like_count,share_count,rating_avg,rating_count,sponsor_name,sponsor_message,is_explicit,created_at,updated_at) VALUES ('LeagueTalk','SeasonPreview','1','2024-07-01',3600,'JohnDoe','JaneSmith','Preseason','Discussion on upcoming season', 'English','MP3',45.2,'http://example.com/ep1.mp3',1200,300,50,4.5,200,'SportsGear','Check out the new gear',0,'2024-07-01','2024-07-01');
INSERT INTO Media_Podcast_Episodes (podcast_name,episode_title,episode_number,release_date,duration_seconds,host_name,guest_name,topic_category,description,language,audio_format,file_size_mb,download_url,listen_count,like_count,share_count,rating_avg,rating_count,sponsor_name,sponsor_message,is_explicit,created_at,updated_at) VALUES ('LeagueTalk','MidSeasonReview','2','2024-11-15',4200,'JohnDoe','MikeBrown','Midseason','Analysis of mid‑season performance', 'English','MP3',52.8,'http://example.com/ep2.mp3',2500,600,120,4.7,350,'EnergyDrink','Fuel your game',0,'2024-11-15','2024-11-15');
INSERT INTO Media_Podcast_Episodes (podcast_name,episode_title,episode_number,release_date,duration_seconds,host_name,guest_name,topic_category,description,language,audio_format,file_size_mb,download_url,listen_count,like_count,share_count,rating_avg,rating_count,sponsor_name,sponsor_message,is_explicit,created_at,updated_at) VALUES ('LeagueTalk','PlayoffsPreview','3','2025-04-20',3900,'JohnDoe','SarahLee','Playoffs','Preview of playoff contenders', 'English','MP3',48.5,'http://example.com/ep3.mp3',1800,400,80,4.6,280,'TechCorp','Innovate your training',0,'2025-04-20','2025-04-20');

-- Stadium_Vending_Machine_Inventory: inventory tracking for stadium vending machines
CREATE TABLE Stadium_Vending_Machine_Inventory (
    inventory_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    machine_id TEXT,
    location_description TEXT,
    product_sku TEXT,
    product_name TEXT,
    product_category TEXT,
    quantity_on_hand INTEGER,
    reorder_threshold INTEGER,
    unit_price REAL,
    currency TEXT,
    supplier_name TEXT,
    last_restock_date TEXT,
    next_restock_estimate TEXT,
    is_active INTEGER,
    temperature_control INTEGER,
    calorie_count INTEGER,
    gluten_free INTEGER,
    vegan INTEGER,
    sugar_free INTEGER,
    organic INTEGER,
    packaging_type TEXT,
    last_audit_date TEXT,
    audit_status TEXT,
    notes TEXT
);

INSERT INTO Stadium_Vending_Machine_Inventory (stadium_id,machine_id,location_description,product_sku,product_name,product_category,quantity_on_hand,reorder_threshold,unit_price,currency,supplier_name,last_restock_date,next_restock_estimate,is_active,temperature_control,calorie_count,gluten_free,vegan,sugar_free,organic,packaging_type,last_audit_date,audit_status,notes) VALUES (1,'VM001','NorthGate','SKU101','EnergyBar','Snack',150,30,2.5,'USD','SnackSupplyCo','2024-06-01','2024-06-10',1,0,250,1,0,0,0,1,'Plastic','2024-06-01','Passed','');
INSERT INTO Stadium_Vending_Machine_Inventory (stadium_id,machine_id,location_description,product_sku,product_name,product_category,quantity_on_hand,reorder_threshold,unit_price,currency,supplier_name,last_restock_date,next_restock_estimate,is_active,temperature_control,calorie_count,gluten_free,vegan,sugar_free,organic,packaging_type,last_audit_date,audit_status,notes) VALUES (2,'VM045','EastStand','SKU202','ColdBrew','Beverage',80,20,3.0,'USD','BeverageWorld','2024-06-03','2024-06-12',1,1,0,1,1,0,0,1,'Can','2024-06-03','Passed','');
INSERT INTO Stadium_Vending_Machine_Inventory (stadium_id,machine_id,location_description,product_sku,product_name,product_category,quantity_on_hand,reorder_threshold,unit_price,currency,supplier_name,last_restock_date,next_restock_estimate,is_active,temperature_control,calorie_count,gluten_free,vegan,sugar_free,organic,packaging_type,last_audit_date,audit_status,notes) VALUES (3,'VM078','SouthEntrance','SKU303','FruitSalad','Snack',45,15,4.0,'USD','FreshFoodInc','2024-06-05','2024-06-14',1,0,120,1,1,1,1,1,'Box','2024-06-05','Passed','Seasonal item');

-- Fan_AI_Interaction_Logs: logs of AI‑driven interactions with fans via mobile app
CREATE TABLE Fan_AI_Interaction_Logs (
    interaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    interaction_timestamp TEXT,
    interaction_type TEXT,
    ai_module_name TEXT,
    user_message TEXT,
    ai_response TEXT,
    sentiment_score REAL,
    intent_detected TEXT,
    confidence_level REAL,
    response_time_ms INTEGER,
    language TEXT,
    device_type TEXT,
    app_version TEXT,
    is_successful INTEGER,
    error_code TEXT,
    session_id TEXT,
    channel TEXT,
    funnel_stage TEXT,
    points_earned INTEGER,
    badge_awarded TEXT,
    feedback_rating INTEGER,
    feedback_comment TEXT,
    resolved_timestamp TEXT,
    notes TEXT
);

INSERT INTO Fan_AI_Interaction_Logs (fan_id,interaction_timestamp,interaction_type,ai_module_name,user_message,ai_response,sentiment_score,intent_detected,confidence_level,response_time_ms,language,device_type,app_version,is_successful,error_code,session_id,channel,funnel_stage,points_earned,badge_awarded,feedback_rating,feedback_comment,resolved_timestamp,notes) VALUES (101,'2024-07-10 14:23:05','Chat','MatchInfoBot','When is the next match?','The next match is on 2024-08-01.',0.8,'AskMatchDate',0.95,350,'EN','iOS','2.3.1',1,NULL,'SID123','Mobile','Inquiry',10,'EarlyBird',5,'Great help','2024-07-10 14:23:06','');
INSERT INTO Fan_AI_Interaction_Logs (fan_id,interaction_timestamp,interaction_type,ai_module_name,user_message,ai_response,sentiment_score,intent_detected,confidence_level,response_time_ms,language,device_type,app_version,is_successful,error_code,session_id,channel,funnel_stage,points_earned,badge_awarded,feedback_rating,feedback_comment,resolved_timestamp,notes) VALUES (202,'2024-07-11 09:15:42','Voice','TicketAssist','I need a ticket for home game','Your request has been saved.',0.6,'BuyTicket',0.88,420,'EN','Android','2.3.1',1,NULL,'SID124','Mobile','Purchase',15,'TicketGuru',4,'Quick response','2024-07-11 09:16:00','');
INSERT INTO Fan_AI_Interaction_Logs (fan_id,interaction_timestamp,interaction_type,ai_module_name,user_message,ai_response,sentiment_score,intent_detected,confidence_level,response_time_ms,language,device_type,app_version,is_successful,error_code,session_id,channel,funnel_stage,points_earned,badge_awarded,feedback_rating,feedback_comment,resolved_timestamp,notes) VALUES (303,'2024-07-12 18:45:20','Chat','MerchBot','Show me the latest jersey','Here is the latest jersey: http://example.com/jersey.jpg',0.9,'ShowProduct',0.97,280,'EN','Web','2.3.1',1,NULL,'SID125','Web','Browse',5,'Shopper',5,'Loved it','2024-07-12 18:45:21','');

-- Referee_Training_Modules: curriculum modules for referee education
CREATE TABLE Referee_Training_Modules (
    module_id INTEGER PRIMARY KEY AUTOINCREMENT,
    module_code TEXT,
    title TEXT,
    description TEXT,
    category TEXT,
    difficulty_level TEXT,
    duration_minutes INTEGER,
    credit_hours REAL,
    video_url TEXT,
    slides_url TEXT,
    quiz_question_count INTEGER,
    passing_score_percent REAL,
    language TEXT,
    author_name TEXT,
    release_date TEXT,
    last_update TEXT,
    is_mandatory INTEGER,
    prerequisite_module_code TEXT,
    max_attempts INTEGER,
    average_completion_rate REAL,
    feedback_average REAL,
    certifications_awarded TEXT,
    region TEXT,
    version TEXT,
    notes TEXT
);

INSERT INTO Referee_Training_Modules (module_code,title,description,category,difficulty_level,duration_minutes,credit_hours,video_url,slides_url,quiz_question_count,passing_score_percent,language,author_name,release_date,last_update,is_mandatory,prerequisite_module_code,max_attempts,average_completion_rate,feedback_average,certifications_awarded,region,version,notes) VALUES ('RFM101','Laws of the Game','Comprehensive overview of official laws','Fundamentals','Beginner',90,1.5,'http://example.com/video1.mp4','http://example.com/slides1.pdf',20,80,'EN','RefereeBoard','2023-01-15','2024-06-01',1,NULL,3,0.85,4.5,'Basic Referee Cert','Europe','v1','');
INSERT INTO Referee_Training_Modules (module_code,title,description,category,difficulty_level,duration_minutes,credit_hours,video_url,slides_url,quiz_question_count,passing_score_percent,language,author_name,release_date,last_update,is_mandatory,prerequisite_module_code,max_attempts,average_completion_rate,feedback_average,certifications_awarded,region,version,notes) VALUES ('RFM202','Video Assistant Referee','Advanced usage of VAR technology','Technology','Intermediate',120,2.0,'http://example.com/video2.mp4','http://example.com/slides2.pdf',25,85,'EN','TechRefereeTeam','2023-06-10','2024-05-20',0,'RFM101',3,0.78,4.2,'VAR Specialist','NorthAmerica','v2','');
INSERT INTO Referee_Training_Modules (module_code,title,description,category,difficulty_level,duration_minutes,credit_hours,video_url,slides_url,quiz_question_count,passing_score_percent,language,author_name,release_date,last_update,is_mandatory,prerequisite_module_code,max_attempts,average_completion_rate,feedback_average,certifications_awarded,region,version,notes) VALUES ('RFM303','Fitness & Positioning','Physical conditioning for referees','Fitness','Advanced',150,2.5,'http://example.com/video3.mp4','http://example.com/slides3.pdf',30,90,'EN','HealthDept','2024-02-01','2024-06-15',0,'RFM101',2,0.70,4.0,'Fitness Cert','Asia','v1','');

-- League_Sponsorship_Package_Details: descriptive data for league‑level sponsorship packages
CREATE TABLE League_Sponsorship_Package_Details (
    package_id INTEGER PRIMARY KEY AUTOINCREMENT,
    package_name TEXT,
    package_code TEXT,
    tier TEXT,
    description TEXT,
    start_date TEXT,
    end_date TEXT,
    total_value_usd REAL,
    payment_frequency TEXT,
    logo_placement TEXT,
    broadcast_mentions_per_season INTEGER,
    digital_impressions_estimate INTEGER,
    on_site_activations INTEGER,
    hospitality_vip_passes INTEGER,
    exclusive_rights TEXT,
    activation_budget_usd REAL,
    agency_responsible TEXT,
    compliance_requirements TEXT,
    renewal_option INTEGER,
    renewal_discount_percent REAL,
    performance_bonus_usd REAL,
    created_by TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);

INSERT INTO League_Sponsorship_Package_Details (package_name,package_code,tier,description,start_date,end_date,total_value_usd,payment_frequency,logo_placement,broadcast_mentions_per_season,digital_impressions_estimate,on_site_activations,hotelty_vip_passes,exclusive_rights,activation_budget_usd,agency_responsible,compliance_requirements,renewal_option,renewal_discount_percent,performance_bonus_usd,created_by,created_at,updated_at,notes) VALUES ('Premier Partner','SP001','Platinum','Top tier global partnership', '2024-01-01','2027-12-31',12000000,'Annual','CenterField','50',5000000,20,30,'Exclusive jersey branding',2500000,'GlobalAgency','BrandSafetyAudit',1,10,500000,'Admin','2024-06-01','2024-06-01','');
INSERT INTO League_Sponsorship_Package_Details (package_name,package_code,tier,description,start_date,end_date,total_value_usd,payment_frequency,logo_placement,broadcast_mentions_per_season,digital_impressions_estimate,on_site_activations,hotelty_vip_passes,exclusive_rights,activation_budget_usd,agency_responsible,compliance_requirements,renewal_option,renewal_discount_percent,performance_bonus_usd,created_by,created_at,updated_at,notes) VALUES ('Official Supplier','SP002','Gold','Official equipment supplier', '2024-03-15','2026-03-14',4500000,'SemiAnnual','SideBanner','30',2000000,12,15,'Equipment exclusivity',800000,'SportCorp','ComplianceCheck',1,5,200000,'Admin','2024-06-01','2024-06-01','');
INSERT INTO League_Sponsorship_Package_Details (package_name,package_code,tier,description,start_date,end_date,total_value_usd,payment_frequency,logo_placement,broadcast_mentions_per_season,digital_impressions_estimate,on_site_activations,hotelty_vip_passes,exclusive_rights,activation_budget_usd,agency_responsible,compliance_requirements,renewal_option,renewal_discount_percent,performance_bonus_usd,created_by,created_at,updated_at,notes) VALUES ('Community Partner','SP003','Silver','Community outreach partnership', '2024-05-01','2025-04-30',1500000,'Annual','LogoCorner','15',800000,6,8,'Community event rights',300000,'LocalAgency','CSRReport',0,0,50000,'Admin','2024-06-01','2024-06-01','');

-- Club_Emergency_Response_Resources: assets and contacts for club‑level emergency planning
CREATE TABLE Club_Emergency_Response_Resources (
    resource_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    resource_type TEXT,
    description TEXT,
    quantity INTEGER,
    location TEXT,
    maintenance_schedule TEXT,
    last_inspection_date TEXT,
    next_inspection_date TEXT,
    responsible_person TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    activation_protocol TEXT,
    is_active INTEGER,
    vendor_name TEXT,
    vendor_contract_expiry TEXT,
    safety_rating INTEGER,
    capacity INTEGER,
    power_source TEXT,
    backup_duration_minutes INTEGER,
    compliance_certified INTEGER,
    compliance_cert_number TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Club_Emergency_Response_Resources (club_id,resource_type,description,quantity,location,maintenance_schedule,last_inspection_date,next_inspection_date,responsible_person,contact_phone,contact_email,activation_protocol,is_active,vendor_name,vendor_contract_expiry,safety_rating,capacity,power_source,backup_duration_minutes,compliance_certified,compliance_cert_number,notes,created_at,updated_at) VALUES (1,'Defibrillator','Automated external defibrillator',4,'MedicalRoom','Quarterly','2024-04-15','2024-10-15','JohnMedic','5551234','john@club.com','ImmediateUse',1,'MedEquipCo','2025-04-01',9,1,'Battery','120',1,'DEF2024','', '2024-06-01','2024-06-01');
INSERT INTO Club_Emergency_Response_Resources (club_id,resource_type,description,quantity,location,maintenance_schedule,last_inspection_date,next_inspection_date,responsible_person,contact_phone,contact_email,activation_protocol,is_active,vendor_name,vendor_contract_expiry,safety_rating,capacity,power_source,backup_duration_minutes,compliance_certified,compliance_cert_number,notes,created_at,updated_at) VALUES (2,'FireExtinguisher','CO2 extinguisher',20,'StadiumNorthWing','Biannual','2024-02-20','2024-08-20','EmilyFire','5555678','emily@club.com','ManualActivation',1,'SafetySupplies','2026-02-01',8,20,'Pressurized','0',1,'FIRE2024','', '2024-06-01','2024-06-01');
INSERT INTO Club_Emergency_Response_Resources (club_id,resource_type,description,quantity,location,maintenance_schedule,last_inspection_date,next_inspection_date,responsible_person,contact_phone,contact_email,activation_protocol,is_active,vendor_name,vendor_contract_expiry,safety_rating,capacity,power_source,backup_duration_minutes,compliance_certified,compliance_cert_number,notes,created_at,updated_at) VALUES (3,'EmergencyGenerator','Diesel generator',2,'PowerHouse','Annual','2024-03-10','2025-03-10','MarkPower','5559012','mark@club.com','AutoStart',1,'PowerGenInc','2027-03-01',10,2000,'Diesel','2880',1,'GEN2024','', '2024-06-01','2024-06-01');

-- Venue_Weather_Station_Readings: environmental sensor data for each venue
CREATE TABLE Venue_Weather_Station_Readings (
    reading_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    station_id TEXT,
    reading_timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    wind_speed_kph REAL,
    wind_direction_deg INTEGER,
    precipitation_mm REAL,
    pressure_hpa REAL,
    uv_index INTEGER,
    visibility_km REAL,
    dew_point_c REAL,
    air_quality_index INTEGER,
    pollen_count INTEGER,
    solar_radiation_wm2 REAL,
    sensor_status TEXT,
    battery_level_percent REAL,
    firmware_version TEXT,
    maintenance_due_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Venue_Weather_Station_Readings (venue_id,station_id,reading_timestamp,temperature_c,humidity_percent,wind_speed_kph,wind_direction_deg,precipitation_mm,pressure_hpa,uv_index,visibility_km,dew_point_c,air_quality_index,pollen_count,solar_radiation_wm2,sensor_status,battery_level_percent,firmware_version,maintenance_due_date,notes,created_at,updated_at) VALUES (1,'WS001','2024-07-10 10:00:00',22.5,55.0,12.3,180,0.0,1013.2,5,15.0,12.0,42,150,500.0,'OK',95.0,'v1.2','2025-01-01','', '2024-07-10','2024-07-10');
INSERT INTO Venue_Weather_Station_Readings (venue_id,station_id,reading_timestamp,temperature_c,humidity_percent,wind_speed_kph,wind_direction_deg,precipitation_mm,pressure_hpa,uv_index,visibility_km,dew_point_c,air_quality_index,pollen_count,solar_radiation_wm2,sensor_status,battery_level_percent,firmware_version,maintenance_due_date,notes,created_at,updated_at) VALUES (2,'WS045','2024-07-10 10:05:00',18.3,65.0,8.0,90,0.2,1010.5,3,20.0,10.5,30,80,420.0,'OK',88.0,'v1.1','2025-01-15','', '2024-07-10','2024-07-10');
INSERT INTO Venue_Weather_Station_Readings (venue_id,station_id,reading_timestamp,temperature_c,humidity_percent,wind_speed_kph,wind_direction_deg,precipitation_mm,pressure_hpa,uv_index,visibility_km,dew_point_c,air_quality_index,pollen_count,solar_radiation_wm2,sensor_status,battery_level_percent,firmware_version,maintenance_due_date,notes,created_at,updated_at) VALUES (3,'WS078','2024-07-10 10:10:00',25.0,48.0,15.0,270,0.0,1015.0,7,12.0,13.0,55,200,580.0,'OK',92.0,'v1.3','2025-02-01','', '2024-07-10','2024-07-10');

-- Digital_Asset_Usage_Audit: tracking of internal digital assets (images, videos, etc.)
CREATE TABLE Digital_Asset_Usage_Audit (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id TEXT,
    asset_type TEXT,
    asset_name TEXT,
    created_by TEXT,
    created_at TEXT,
    modified_by TEXT,
    modified_at TEXT,
    usage_context TEXT,
    used_in_campaign TEXT,
    campaign_start_date TEXT,
    campaign_end_date TEXT,
    view_count INTEGER,
    download_count INTEGER,
    share_count INTEGER,
    last_accessed TEXT,
    access_permission_level TEXT,
    compliance_status TEXT,
    compliance_check_date TEXT,
    notes TEXT,
    version_number INTEGER,
    file_size_mb REAL,
    storage_location TEXT,
    retention_policy TEXT,
    archived INTEGER,
    archive_date TEXT
);

INSERT INTO Digital_Asset_Usage_Audit (asset_id,asset_type,asset_name,created_by,created_at,modified_by,modified_at,usage_context,used_in_campaign,campaign_start_date,campaign_end_date,view_count,download_count,share_count,last_accessed,access_permission_level,compliance_status,compliance_check_date,notes,version_number,file_size_mb,storage_location,retention_policy,archived,archive_date) VALUES ('IMG001','Image','TeamLogo','DesignTeam','2024-03-01','DesignTeam','2024-05-01','Branding','SeasonLaunch','2024-06-01','2025-05-31',15000,2000,500,'2024-06-15','Public','Compliant','2024-06-01','',1,2.5,'/assets/images','3Year','0',NULL);
INSERT INTO Digital_Asset_Usage_Audit (asset_id,asset_type,asset_name,created_by,created_at,modified_by,modified_at,usage_context,used_in_campaign,campaign_start_date,campaign_end_date,view_count,download_count,share_count,last_accessed,access_permission_level,compliance_status,compliance_check_date,notes,version_number,file_size_mb,storage_location,retention_policy,archived,archive_date) VALUES ('VID020','Video','HighlightReel2024','MediaTeam','2024-04-10','MediaTeam','2024-07-01','SocialMedia','FanEngagement','2024-07-01','2024-12-31',25000,5000,1200,'2024-07-02','Restricted','Compliant','2024-07-01','',2,150.0,'/assets/videos','5Year','0',NULL);
INSERT INTO Digital_Asset_Usage_Audit (asset_id,asset_type,asset_name,created_by,created_at,modified_by,modified_at,usage_context,used_in_campaign,campaign_start_date,campaign_end_date,view_count,download_count,share_count,last_accessed,access_permission_level,compliance_status,compliance_check_date,notes,version_number,file_size_mb,storage_location,retention_policy,archived,archive_date) VALUES ('DOC110','Document','SponsorshipGuide','LegalTeam','2024-01-20','LegalTeam','2024-06-20','Internal','PartnerOnboarding','2024-06-20','2025-06-20',500,20,5,'2024-06-21','Confidential','Compliant','2024-06-20','',1,0.8,'/assets/docs','2Year','0',NULL);

-- Sponsor_Brand_Campaign_Performance: metrics for sponsor brand campaigns during seasons
CREATE TABLE Sponsor_Brand_Campaign_Performance (
    campaign_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_name TEXT,
    season TEXT,
    start_date TEXT,
    end_date TEXT,
    total_impressions INTEGER,
    total_engagements INTEGER,
    click_through_rate REAL,
    conversion_rate REAL,
    cost_per_impression_usd REAL,
    cost_per_click_usd REAL,
    total_spend_usd REAL,
    roi_percent REAL,
    primary_channel TEXT,
    secondary_channel TEXT,
    target_audience TEXT,
    geographic_scope TEXT,
    creative_type TEXT,
    frequency_capping INTEGER,
    viewability_rate REAL,
    brand_lift_score REAL,
    sentiment_score REAL,
    compliance_issues INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Sponsor_Brand_Campaign_Performance (sponsor_id,campaign_name,season,start_date,end_date,total_impressions,total_engagements,click_through_rate,conversion_rate,cost_per_impression_usd,cost_per_click_usd,total_spend_usd,roi_percent,primary_channel,secondary_channel,target_audience,geographic_scope,creative_type,frequency_capping,viewability_rate,brand_lift_score,sentiment_score,compliance_issues,notes,created_at,updated_at) VALUES (101,'BoostYourPlay','2024/25','2024-08-01','2025-05-31',2000000,150000,0.07,0.12,0.005,0.07,100000,150, 'Digital','Social','Fans 18-35','Global','Video',3,0.85,4.2,0.75,0,'', '2024-06-01','2024-06-01');
INSERT INTO Sponsor_Brand_Campaign_Performance (sponsor_id,campaign_name,season,start_date,end_date,total_impressions,total_engagements,click_through_rate,conversion_rate,cost_per_impression_usd,cost_per_click_usd,total_spend_usd,roi_percent,primary_channel,secondary_channel,target_audience,geographic_scope,creative_type,frequency_capping,viewability_rate,brand_lift_score,sentiment_score,compliance_issues,notes,created_at,updated_at) VALUES (102,'FitForLife','2024/25','2024-09-15','2025-03-15',1200000,80000,0.065,0.10,0.006,0.075,72000,130,'Television','Radio','Adults 25-45','Europe','Static',2,0.80,3.8,0.70,1,'Minor timing issue', '2024-06-01','2024-06-01');
INSERT INTO Sponsor_Brand_Campaign_Performance (sponsor_id,campaign_name,season,start_date,end_date,total_impressions,total_engagements,click_through_rate,conversion_rate,cost_per_impression_usd,cost_per_click_usd,total_spend_usd,roi_percent,primary_channel,secondary_channel,target_audience,geographic_scope,creative_type,frequency_capping,viewability_rate,brand_lift_score,sentiment_score,compliance_issues,notes,created_at,updated_at) VALUES (103,'GameGear2024','2024/25','2024-10-01','2025-04-30',1800000,130000,0.072,0.11,0.0045,0.065,90000,160,'Online','Mobile','Teens 13-19','NorthAmerica','Interactive',4,0.88,4.5,0.80,0,'', '2024-06-01','2024-06-01');

-- Sports_Equipment_Rental_Transactions: renting of equipment to clubs and events
CREATE TABLE Sports_Equipment_Rental_Transactions (
    rental_id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_id TEXT,
    equipment_type TEXT,
    equipment_model TEXT,
    renter_club_id INTEGER,
    renter_name TEXT,
    rental_start_date TEXT,
    rental_end_date TEXT,
    daily_rate_usd REAL,
    total_days INTEGER,
    total_amount_usd REAL,
    security_deposit_usd REAL,
    insurance_covered INTEGER,
    insurance_provider TEXT,
    condition_at_checkout TEXT,
    condition_at_return TEXT,
    damage_fee_usd REAL,
    late_fee_usd REAL,
    payment_status TEXT,
    payment_method TEXT,
    invoice_number TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Sports_Equipment_Rental_Transactions (equipment_id,equipment_type,equipment_model,renter_club_id,renter_name,rental_start_date,rental_end_date,daily_rate_usd,total_days,total_amount_usd,security_deposit_usd,insurance_covered,insurance_provider,condition_at_checkout,condition_at_return,damage_fee_usd,late_fee_usd,payment_status,payment_method,invoice_number,notes,created_at,updated_at) VALUES ('EQ001','Goalpost','Standard200','1','FC North','2024-07-01','2024-07-07',150.0,6,900.0,300.0,1,'EquipInsure','Good','Good',0.0,0.0,'Paid','CreditCard','INV001','', '2024-06-25','2024-07-08');
INSERT INTO Sports_Equipment_Rental_Transactions (equipment_id,equipment_type,equipment_model,renter_club_id,renter_name,rental_start_date,rental_end_date,daily_rate_usd,total_days,total_amount_usd,security_deposit_usd,insurance_covered,insurance_provider,condition_at_checkout,condition_at_return,damage_fee_usd,late_fee_usd,payment_status,payment_method,invoice_number,notes,created_at,updated_at) VALUES ('EQ045','TrainingCone','EcoCone','2','United FC','2024-08-15','2024-08-20',20.0,5,100.0,50.0,0,NULL,'Excellent','Excellent',0.0,0.0,'Pending','BankTransfer','INV045','Delay due to processing', '2024-08-10','2024-08-21');
INSERT INTO Sports_Equipment_Rental_Transactions (equipment_id,equipment_type,equipment_model,renter_club_id,renter_name,rental_start_date,rental_end_date,daily_rate_usd,total_days,total_amount_usd,security_deposit_usd,insurance_covered,insurance_provider,condition_at_checkout,condition_at_return,damage_fee_usd,late_fee_usd,payment_status,payment_method,invoice_number,notes,created_at,updated_at) VALUES ('EQ078','VideoBoard','LEDX500','3','City Stadium','2024-09-01','2024-09-10',500.0,9,4500.0,1000.0,1,'TechCover','MinorScratch','MinorScratch',0.0,0.0,'Paid','WireTransfer','INV078','Returned with minor scratches', '2024-08-30','2024-09-11');