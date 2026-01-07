-- Table: Sponsor_Engagements
CREATE TABLE Sponsor_Engagements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    club_id INTEGER,
    activation_date TEXT,
    campaign_name TEXT,
    activation_type TEXT,
    location TEXT,
    audience_estimate INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    spend_amount REAL,
    revenue_generated REAL,
    activation_status TEXT,
    social_media_impressions INTEGER,
    tv_impressions INTEGER,
    radio_impressions INTEGER,
    digital_ad_units INTEGER,
    on_site_activations INTEGER,
    activation_feedback_score INTEGER,
    brand_awareness_index REAL,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Sponsor_Engagements (sponsor_id,club_id,activation_date,campaign_name,activation_type,location,audience_estimate,impressions,clicks,spend_amount,revenue_generated,activation_status,social_media_impressions,tv_impressions,radio_impressions,digital_ad_units,on_site_activations,activation_feedback_score,brand_awareness_index,created_at,updated_at) VALUES (101,1,'2023-06-15','SummerBlast','StadiumBanner','MainStadium',50000,1200000,4500,25000.50,40000.75,'Completed',800000,300000,150000,200,5,85,0.92,'2023-06-01','2023-06-20');
INSERT INTO Sponsor_Engagements (sponsor_id,club_id,activation_date,campaign_name,activation_type,location,audience_estimate,impressions,clicks,spend_amount,revenue_generated,activation_status,social_media_impressions,tv_impressions,radio_impressions,digital_ad_units,on_site_activations,activation_feedback_score,brand_awareness_index,created_at,updated_at) VALUES (102,2,'2023-09-01','AutumnDrive','DigitalSeries','Online',75000,2000000,8200,40000.00,65000.30,'Active',1500000,500000,250000,350,12,90,1.05,'2023-08-15','2023-09-05');
INSERT INTO Sponsor_Engagements (sponsor_id,club_id,activation_date,campaign_name,activation_type,location,audience_estimate,impressions,clicks,spend_amount,revenue_generated,activation_status,social_media_impressions,tv_impressions,radio_impressions,digital_ad_units,on_site_activations,activation_feedback_score,brand_awareness_index,created_at,updated_at) VALUES (103,3,'2024-01-20','NewYearKickoff','FanMeet','TrainingGround',30000,900000,3000,18000.75,25000.10,'Planned',600000,220000,110000,180,3,78,0.78,'2023-12-01','2024-01-10');

-- Table: Stadium_Environmental_Sensors
CREATE TABLE Stadium_Environmental_Sensors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    sensor_id TEXT,
    sensor_type TEXT,
    installation_date TEXT,
    latitude REAL,
    longitude REAL,
    measurement_unit TEXT,
    reading_value REAL,
    reading_timestamp TEXT,
    status TEXT,
    battery_level INTEGER,
    calibration_date TEXT,
    firmware_version TEXT,
    signal_strength INTEGER,
    alert_threshold_low REAL,
    alert_threshold_high REAL,
    last_maintenance TEXT,
    maintenance_provider TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Stadium_Environmental_Sensors (stadium_id,sensor_id,sensor_type,installation_date,latitude,longitude,measurement_unit,reading_value,reading_timestamp,status,battery_level,calibration_date,firmware_version,signal_strength,alert_threshold_low,alert_threshold_high,last_maintenance,maintenance_provider,notes,created_at,updated_at) VALUES (1,'SEN001','Temperature','2022-03-10',45.1234,12.3456,'Celsius',22.5,'2024-01-01 10:00:00','Active',85,'2023-12-01','v1.2.0',78,-5.0,35.0,'2023-11-15','EnviroTech','No issues','2024-01-02','2024-01-03');
INSERT INTO Stadium_Environmental_Sensors (stadium_id,sensor_id,sensor_type,installation_date,latitude,longitude,measurement_unit,reading_value,reading_timestamp,status,battery_level,calibration_date,firmware_version,signal_strength,alert_threshold_low,alert_threshold_high,last_maintenance,maintenance_provider,notes,created_at,updated_at) VALUES (2,'SEN045','Humidity','2021-07-22',46.9876,13.2109,'Percent',55.2,'2024-01-01 10:05:00','Active',73,'2023-06-30','v3.0.1',82,30.0,70.0,'2023-12-20','ClimateServ','Slight drift','2024-01-02','2024-01-03');
INSERT INTO Stadium_Environmental_Sensors (stadium_id,sensor_id,sensor_type,installation_date,latitude,longitude,measurement_unit,reading_value,reading_timestamp,status,battery_level,calibration_date,firmware_version,signal_strength,alert_threshold_low,alert_threshold_high,last_maintenance,maintenance_provider,notes,created_at,updated_at) VALUES (3,'SEN099','AirQuality','2023-01-15',44.5555,11.1111,'AQI',42,'2024-01-01 10:10:00','Active',92,'2023-12-15','v2.5.4',90,0,100,'2023-12-30','AirMon','All good','2024-01-02','2024-01-03');

-- Table: Fan_Digital_Reward_Transactions
CREATE TABLE Fan_Digital_Reward_Transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    reward_id INTEGER,
    transaction_date TEXT,
    reward_type TEXT,
    points_spent INTEGER,
    reward_status TEXT,
    redemption_code TEXT,
    expiration_date TEXT,
    platform TEXT,
    device_type TEXT,
    ip_address TEXT,
    geo_country TEXT,
    geo_city TEXT,
    verification_status TEXT,
    loyalty_tier TEXT,
    campaign_source TEXT,
    notes TEXT,
    processed_by TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Fan_Digital_Reward_Transactions (fan_id,reward_id,transaction_date,reward_type,points_spent,reward_status,redemption_code,expiration_date,platform,device_type,ip_address,geo_country,geo_city,verification_status,loyalty_tier,campaign_source,notes,processed_by,created_at,updated_at) VALUES (1001,501,'2024-01-05','MerchVoucher',1500,'Redeemed','RV20240105','2024-06-30','MobileApp','Smartphone','192.168.1.10','USA','NewYork','Verified','Gold','SeasonKickoff','First redemption','System','2024-01-05','2024-01-05');
INSERT INTO Fan_Digital_Reward_Transactions (fan_id,reward_id,transaction_date,reward_type,points_spent,reward_status,redemption_code,expiration_date,platform,device_type,ip_address,geo_country,geo_city,verification_status,loyalty_tier,campaign_source,notes,processed_by,created_at,updated_at) VALUES (1002,502,'2024-01-12','TicketUpgrade',2500,'Pending','TU20240112','2024-07-15','Web','Desktop','10.0.0.5','Canada','Toronto','Pending','Platinum','Anniversary','Awaiting confirmation','System','2024-01-12','2024-01-12');
INSERT INTO Fan_Digital_Reward_Transactions (fan_id,reward_id,transaction_date,reward_type,points_spent,reward_status,redemption_code,expiration_date,platform,device_type,ip_address,geo_country,geo_city,verification_status,loyalty_tier,campaign_source,notes,processed_by,created_at,updated_at) VALUES (1003,503,'2024-01-20','VIPAccess',5000,'Cancelled','VIP20240120','2024-08-01','MobileApp','Tablet','172.16.0.2','UK','London','Cancelled','Silver','Promo','User opted out','System','2024-01-20','2024-01-20');

-- Table: Club_Real_Estate_Assets
CREATE TABLE Club_Real_Estate_Assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    asset_name TEXT,
    asset_type TEXT,
    acquisition_date TEXT,
    acquisition_price REAL,
    current_market_value REAL,
    location_city TEXT,
    location_state TEXT,
    location_country TEXT,
    land_area_sqft INTEGER,
    building_area_sqft INTEGER,
    occupancy_status TEXT,
    annual_rent_income REAL,
    maintenance_cost_yearly REAL,
    insurance_cost_yearly REAL,
    zoning_type TEXT,
    tax_assessed_value REAL,
    mortgage_outstanding REAL,
    last_valuation_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Club_Real_Estate_Assets (club_id,asset_name,asset_type,acquisition_date,acquisition_price,current_market_value,location_city,location_state,location_country,land_area_sqft,building_area_sqft,occupancy_status,annual_rent_income,maintenance_cost_yearly,insurance_cost_yearly,zoning_type,tax_assessed_value,mortgage_outstanding,last_valuation_date,notes,created_at,updated_at) VALUES (1,'NorthWing','TrainingFacility','2018-04-10',3500000.00,4200000.00,'MetroCity','StateA','CountryX',80000,50000,'Occupied',250000.00,75000.00,20000.00,'Commercial',3800000.00,1500000.00,'2023-12-01','Renovated 2022','2024-01-01','2024-01-01');
INSERT INTO Club_Real_Estate_Assets (club_id,asset_name,asset_type,acquisition_date,acquisition_price,current_market_value,location_city,location_state,location_country,land_area_sqft,building_area_sqft,occupancy_status,annual_rent_income,maintenance_cost_yearly,insurance_cost_yearly,zoning_type,tax_assessed_value,mortgage_outstanding,last_valuation_date,notes,created_at,updated_at) VALUES (2,'LakeViewResidences','HousingComplex','2020-09-15',6200000.00,6800000.00,'LakeTown','StateB','CountryY',150000,120000,'Partial','350000.00',120000.00,30000.00,'Residential',6500000.00,2000000.00,'2023-11-20','Planned expansion','2024-01-01','2024-01-01');
INSERT INTO Club_Real_Estate_Assets (club_id,asset_name,asset_type,acquisition_date,acquisition_price,current_market_value,location_city,location_state,location_country,land_area_sqft,building_area_sqft,occupancy_status,annual_rent_income,maintenance_cost_yearly,insurance_cost_yearly,zoning_type,tax_assessed_value,mortgage_outstanding,last_valuation_date,notes,created_at,updated_at) VALUES (3,'SolarPark','EnergyFacility','2019-02-20',4500000.00,5000000.00,'SunVille','StateC','CountryZ',200000,0,'Occupied','0.00',50000.00,15000.00,'Industrial',4700000.00,1000000.00,'2023-10-10','Generates 2MW','2024-01-01','2024-01-01');

-- Table: Media_Streaming_Stats
CREATE TABLE Media_Streaming_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    platform_name TEXT,
    stream_start_time TEXT,
    stream_end_time TEXT,
    concurrent_viewers_peak INTEGER,
    average_concurrent_viewers INTEGER,
    total_unique_viewers INTEGER,
    avg_watch_time_minutes REAL,
    stream_quality TEXT,
    bitrate_kbps INTEGER,
    ad_breaks_count INTEGER,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    geo_viewers_us INTEGER,
    geo_viewers_eu INTEGER,
    geo_viewers_asia INTEGER,
    geo_viewers_other INTEGER,
    device_mobile INTEGER,
    device_desktop INTEGER,
    device_tv INTEGER,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Media_Streaming_Stats (match_id,platform_name,stream_start_time,stream_end_time,concurrent_viewers_peak,average_concurrent_viewers,total_unique_viewers,avg_watch_time_minutes,stream_quality,bitrate_kbps,ad_breaks_count,ad_impressions,ad_clicks,geo_viewers_us,geo_viewers_eu,geo_viewers_asia,geo_viewers_other,device_mobile,device_desktop,device_tv,created_at,updated_at) VALUES (10001,'GlobalStream','2024-01-01 15:00:00','2024-01-01 17:00:00',120000,75000,300000,85.5,'HD',3500,4,80000,1200,150000,90000,30000,30000,50000,80000,20000,'2024-01-02','2024-01-02');
INSERT INTO Media_Streaming_Stats (match_id,platform_name,stream_start_time,stream_end_time,concurrent_viewers_peak,average_concurrent_viewers,total_unique_viewers,avg_watch_time_minutes,stream_quality,bitrate_kbps,ad_breaks_count,ad_impressions,ad_clicks,geo_viewers_us,geo_viewers_eu,geo_viewers_asia,geo_viewers_other,device_mobile,device_desktop,device_tv,created_at,updated_at) VALUES (10002,'StreamPlus','2024-01-08 18:30:00','2024-01-08 20:45:00',95000,62000,250000,78.3,'FullHD',4500,3,60000,950,120000,80000,25000,25000,40000,70000,15000,'2024-01-09','2024-01-09');
INSERT INTO Media_Streaming_Stats (match_id,platform_name,stream_start_time,stream_end_time,concurrent_viewers_peak,average_concurrent_viewers,total_unique_viewers,avg_watch_time_minutes,stream_quality,bitrate_kbps,ad_breaks_count,ad_impressions,ad_clicks,geo_viewers_us,geo_viewers_eu,geo_viewers_asia,geo_viewers_other,device_mobile,device_desktop,device_tv,created_at,updated_at) VALUES (10003,'LiveArena','2024-01-15 20:00:00','2024-01-15 22:05:00',110000,80000,320000,90.0,'FullHD',5000,5,100000,1800,170000,100000,30000,20000,60000,85000,25000,'2024-01-16','2024-01-16');

-- Table: Transportation_Partnerships
CREATE TABLE Transportation_Partnerships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    provider_name TEXT,
    partnership_start_date TEXT,
    partnership_end_date TEXT,
    service_type TEXT,
    discount_rate_percent REAL,
    vehicle_capacity INTEGER,
    avg_daily_rides INTEGER,
    total_rides_year INTEGER,
    carbon_offset_tons REAL,
    cost_per_ride REAL,
    contract_value REAL,
    renewal_option TEXT,
    contact_person TEXT,
    contact_email TEXT,
    service_area TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Transportation_Partnerships (club_id,provider_name,partnership_start_date,partnership_end_date,service_type,discount_rate_percent,vehicle_capacity,avg_daily_rides,total_rides_year,carbon_offset_tons,cost_per_ride,contract_value,renewal_option,contact_person,contact_email,service_area,notes,created_at,updated_at) VALUES (1,'EcoRide','2022-01-01','2025-12-31','Shuttle','15.0',30,200,73000,120.5,5.75,2500000.00','Option1','John Doe','john.doe@ecoride.com','MetroArea','Green partnership','2024-01-01','2024-01-01');
INSERT INTO Transportation_Partnerships (club_id,provider_name,partnership_start_date,partnership_end_date,service_type,discount_rate_percent,vehicle_capacity,avg_daily_rides,total_rides_year,carbon_offset_tons,cost_per_ride,contract_value,renewal_option,contact_person,contact_email,service_area,notes,created_at,updated_at) VALUES (2,'CityTransit','2021-06-15','2024-06-14','Bus','10.0',50,350,127750,200.0,4.20,1800000.00','Option2','Emily Smith','emily.smith@citytransit.org','UrbanCore','Standard contract','2024-01-01','2024-01-01');
INSERT INTO Transportation_Partnerships (club_id,provider_name,partnership_start_date,partnership_end_date,service_type,discount_rate_percent,vehicle_capacity,avg_daily_rides,total_rides_year,carbon_offset_tons,cost_per_ride,contract_value,renewal_option,contact_person,contact_email,service_area,notes,created_at,updated_at) VALUES (3,'RideShareX','2023-03-01','2026-02-28','RideHailing','5.0',4,500,182500,80.0,3.50,2100000.00','Option1','Carlos Ruiz','carlos.ruiz@ridesharex.com','Regional','Flexible volume','2024-01-01','2024-01-01');

-- Table: Health_Nutrition_Programs
CREATE TABLE Health_Nutrition_Programs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    program_name TEXT,
    target_group TEXT,
    start_date TEXT,
    end_date TEXT,
    daily_calorie_target INTEGER,
    protein_grams INTEGER,
    carbs_grams INTEGER,
    fats_grams INTEGER,
    supplement_vitamin_c_mg INTEGER,
    supplement_omega_3_mg INTEGER,
    compliance_rate_percent REAL,
    average_weight_change_kg REAL,
    nutritionist_id INTEGER,
    meal_plan_file TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Health_Nutrition_Programs (program_name,target_group,start_date,end_date,daily_calorie_target,protein_grams,carbs_grams,fats_grams,supplement_vitamin_c_mg,supplement_omega_3_mg,compliance_rate_percent,average_weight_change_kg,nutritionist_id,meal_plan_file,notes,created_at,updated_at) VALUES ('PeakPerformance','FirstTeam','2024-01-01','2024-06-30',3000,180,350,80,500,1000,92.5,-1.2,201,'peak_mealplan.pdf','Season prep','2024-01-01','2024-01-01');
INSERT INTO Health_Nutrition_Programs (program_name,target_group,start_date,end_date,daily_calorie_target,protein_grams,carbs_grams,fats_grams,supplement_vitamin_c_mg,supplement_omega_3_mg,compliance_rate_percent,average_weight_change_kg,nutritionist_id,meal_plan_file,notes,created_at,updated_at) VALUES ('RecoveryBoost','SecondTeam','2024-02-15','2024-08-15',2800,150,300,70,400,800,88.0,-0.8,202,'recovery_mealplan.pdf','Post‑injury focus','2024-02-15','2024-02-15');
INSERT INTO Health_Nutrition_Programs (program_name,target_group,start_date,end_date,daily_calorie_target,protein_grams,carbs_grams,fats_grams,supplement_vitamin_c_mg,supplement_omega_3_mg,compliance_rate_percent,average_weight_change_kg,nutritionist_id,meal_plan_file,notes,created_at,updated_at) VALUES ('YouthDevelopment','AcademyU18','2024-03-01','2024-12-31',2500,130,320,60,350,600,95.0,0.0,203,'youth_mealplan.pdf','Growth phase','2024-03-01','2024-03-01');

-- Table: Community_Event_Schedules
CREATE TABLE Community_Event_Schedules (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    event_name TEXT,
    event_type TEXT,
    event_date TEXT,
    start_time TEXT,
    end_time TEXT,
    venue TEXT,
    expected_attendance INTEGER,
    registration_fee REAL,
    sponsor_id INTEGER,
    volunteer_needed INTEGER,
    volunteer_assigned INTEGER,
    community_partner TEXT,
    target_audience TEXT,
    logistics_notes TEXT,
    marketing_channel TEXT,
    ticket_sales_target INTEGER,
    actual_ticket_sales INTEGER,
    feedback_score INTEGER,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Community_Event_Schedules (club_id,event_name,event_type,event_date,start_time,end_time,venue,expected_attendance,registration_fee,sponsor_id,volunteer_needed,volunteer_assigned,community_partner,target_audience,logistics_notes,marketing_channel,ticket_sales_target,actual_ticket_sales,feedback_score,created_at,updated_at) VALUES (1,'Kids Soccer Clinic','Clinic','2024-04-10','09:00','12:00','ClubGroundA',150,0,301,20,18,'LocalSchool','Children 6-12','Need extra water stations','SocialMedia',150,148,92,'2024-01-01','2024-01-02');
INSERT INTO Community_Event_Schedules (club_id,event_name,event_type,event_date,start_time,end_time,venue,expected_attendance,registration_fee,sponsor_id,volunteer_needed,volunteer_assigned,community_partner,target_audience,logistics_notes,marketing_channel,ticket_sales_target,actual_ticket_sales,feedback_score,created_at,updated_at) VALUES (2,'Charity Match','Match','2024-05-20','15:00','18:00','StadiumB',5000,25,302,50,45,'HealthCharity','General Public','Half‑price tickets for donors','EmailCampaign',5000,4980,88,'2024-01-05','2024-01-06');
INSERT INTO Community_Event_Schedules (club_id,event_name,event_type,event_date,start_time,end_time,venue,expected_attendance,registration_fee,sponsor_id,volunteer_needed,volunteer_assigned,community_partner,target_audience,logistics_notes,marketing_channel,ticket_sales_target,actual_ticket_sales,feedback_score,created_at,updated_at) VALUES (3,'Women Coaches Workshop','Workshop','2024-06-15','10:00','14:00','ConferenceHallC',200,15,303,10,9,'WomenSportsOrg','Female Coaches','Provide catering','FlyerDistribution',200,195,94,'2024-01-10','2024-01-11');

-- Table: Merchandise_Design_Assets
CREATE TABLE Merchandise_Design_Assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    design_id INTEGER,
    season TEXT,
    item_type TEXT,
    design_name TEXT,
    designer_name TEXT,
    design_file_path TEXT,
    color_palette TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    tertiary_color TEXT,
    material TEXT,
    size_range TEXT,
    production_method TEXT,
    estimated_cost_per_unit REAL,
    retail_price REAL,
    launch_date TEXT,
    stock_quantity INTEGER,
    warehouse_location TEXT,
    discontinued_flag INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Merchandise_Design_Assets (design_id,season,item_type,design_name,designer_name,design_file_path,color_palette,primary_color,secondary_color,tertiary_color,material,size_range,production_method,estimated_cost_per_unit,retail_price,launch_date,stock_quantity,warehouse_location,discontinued_flag,notes,created_at,updated_at) VALUES (1001,'2024','Jersey','EagleStrike','Anna Lee','/designs/eagle_strike.ai','RedBlack','Red','Black','White','Polyester','S-M-XL','ScreenPrint',20.75,49.99,'2024-03-01',5000,'WarehouseA',0,'Main home jersey','2024-01-01','2024-01-01');
INSERT INTO Merchandise_Design_Assets (design_id,season,item_type,design_name,designer_name,design_file_path,color_palette,primary_color,secondary_color,tertiary_color,material,size_range,production_method,estimated_cost_per_unit,retail_price,launch_date,stock_quantity,warehouse_location,discontinued_flag,notes,created_at,updated_at) VALUES (1002,'2024','Scarf','WindBlow','Mark Tan','/designs/wind_blow.ai','BlueWhite','Blue','White','Grey','Cotton','OneSize','Knitting',8.50,19.99,'2024-02-15',3000,'WarehouseB',0,'Winter scarf','2024-01-05','2024-01-05');
INSERT INTO Merchandise_Design_Assets (design_id,season,item_type,design_name,designer_name,design_file_path,color_palette,primary_color,secondary_color,tertiary_color,material,size_range,production_method,estimated_cost_per_unit,retail_price,launch_date,stock_quantity,warehouse_location,discontinued_flag,notes,created_at,updated_at) VALUES (1003,'2023','Hat','SunCap','Liu Wei','/designs/sun_cap.ai','YellowBlack','Yellow','Black','None','Polyester','M-L','Embroidery',5.20,14.99,'2023-09-01',1500,'WarehouseC',1,'Seasonal cap discontinued','2023-12-01','2023-12-01');

-- Table: Legal_Compliance_Audits
CREATE TABLE Legal_Compliance_Audits (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    audit_type TEXT,
    audit_start_date TEXT,
    audit_end_date TEXT,
    department_responsible TEXT,
    auditor_name TEXT,
    audit_scope TEXT,
    findings_count INTEGER,
    critical_findings INTEGER,
    non_critical_findings INTEGER,
    corrective_actions_plan TEXT,
    action_deadline TEXT,
    status TEXT,
    compliance_score REAL,
    regulatory_body TEXT,
    reference_document TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Legal_Compliance_Audits (audit_type,audit_start_date,audit_end_date,department_responsible,auditor_name,audit_scope,findings_count,critical_findings,non_critical_findings,corrective_actions_plan,action_deadline,status,compliance_score,regulatory_body,reference_document,notes,created_at,updated_at) VALUES ('DataPrivacy','2024-01-10','2024-01-25','IT','Sophie Green','GDPR compliance check',12,2,10,'Update privacy policy and training','2024-04-30','Open',87.5,'EUDataAgency','DP-2024-01','No major breaches','2024-01-26','2024-01-26');
INSERT INTO Legal_Compliance_Audits (audit_type,audit_start_date,audit_end_date,department_responsible,auditor_name,audit_scope,findings_count,critical_findings,non_critical_findings,corrective_actions_plan,action_deadline,status,compliance_score,regulatory_body,reference_document,notes,created_at,updated_at) VALUES ('FinancialReporting','2023-11-01','2023-11-20','Finance','Michael Brooks','Annual financial statements',8,1,7,'Revise expense categorization','2024-02-15','Closed',92.0','FinancialRegulator','FR-2023-11','All issues resolved','2023-11-21','2023-11-21');
INSERT INTO Legal_Compliance_Audits (audit_type,audit_start_date,audit_end_date,department_responsible,auditor_name,audit_scope,findings_count,critical_findings,non_critical_findings,corrective_actions_plan,action_deadline,status,compliance_score,regulatory_body,reference_document,notes,created_at,updated_at) VALUES ('HealthSafety','2024-02-05','2024-02-18','Operations','Laura Patel','Stadium safety inspection',15,3,12,'Install additional fire exits','2024-05-01','Open',78.3,'SafetyBoard','HS-2024-02','Follow‑up required','2024-02-19','2024-02-19');

-- Table: Sponsor_Visibility_Reports
CREATE TABLE Sponsor_Visibility_Reports (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    match_id INTEGER,
    visibility_type TEXT,
    impressions INTEGER,
    unique_viewers INTEGER,
    click_through_rate REAL,
    cost_per_impression REAL,
    cost_per_click REAL,
    duration_seconds INTEGER,
    placement TEXT,
    audience_segment TEXT,
    geographic_region TEXT,
    device_category TEXT,
    report_date TEXT,
    analyst_name TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Sponsor_Visibility_Reports (sponsor_id,match_id,visibility_type,impressions,unique_viewers,click_through_rate,cost_per_impression,cost_per_click,duration_seconds,placement,audience_segment,geographic_region,device_category,report_date,analyst_name,notes,created_at,updated_at) VALUES (101,10001,'Banner','500000','300000',0.004,0.02,5.00,30,'TopScreen','AllFans','Europe','Desktop','2024-01-02','Ana Lopez','High engagement','2024-01-03','2024-01-03');
INSERT INTO Sponsor_Visibility_Reports (sponsor_id,match_id,visibility_type,impressions,unique_viewers,click_through_rate,cost_per_impression,cost_per_click,duration_seconds,placement,audience_segment,geographic_region,device_category,report_date,analyst_name,notes,created_at,updated_at) VALUES (102,10002,'Video','800000','450000',0.006,0.015,4.00,45,'MidRoll','PremiumFans','NorthAmerica','Mobile','2024-01-09','Ben Carter','Positive ROI','2024-01-10','2024-01-10');
INSERT INTO Sponsor_Visibility_Reports (sponsor_id,match_id,visibility_type,impressions,unique_viewers,click_through_rate,cost_per_impression,cost_per_click,duration_seconds,placement,audience_segment,geographic_region,device_category,report_date,analyst_name,notes,created_at,updated_at) VALUES (103,10003,'Overlay','300000','180000',0.003,0.025,6.50,20,'SideBar','CasualViewers','Asia','Tablet','2024-01-16','Clara Zhou','Needs optimization','2024-01-17','2024-01-17');

-- Table: Training_Facility_Utilization
CREATE TABLE Training_Facility_Utilization (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    facility_id INTEGER,
    date TEXT,
    hour INTEGER,
    field_name TEXT,
    usage_type TEXT,
    team_id INTEGER,
    player_count INTEGER,
    equipment_used TEXT,
    maintenance_flag INTEGER,
    temperature_celsius REAL,
    humidity_percent REAL,
    lighting_lux INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Training_Facility_Utilization (facility_id,date,hour,field_name,usage_type,team_id,player_count,equipment_used,maintenance_flag,temperature_celsius,humidity_percent,lighting_lux,notes,created_at,updated_at) VALUES (1,'2024-01-03',9,'GrassPitch','Practice',1,22,'Balls,Cones',0,20.5,55,15000,'Morning session','2024-01-04','2024-01-04');
INSERT INTO Training_Facility_Utilization (facility_id,date,hour,field_name,usage_type,team_id,player_count,equipment_used,maintenance_flag,temperature_celsius,humidity_percent,lighting_lux,notes,created_at,updated_at) VALUES (2,'2024-01-03',14,'IndoorHall','Gym',1,12,'Weights,Mat',0,22.0,40,8000,'Strength training','2024-01-04','2024-01-04');
INSERT INTO Training_Facility_Utilization (facility_id,date,hour,field_name,usage_type,team_id,player_count,equipment_used,maintenance_flag,temperature_celsius,humidity_percent,lighting_lux,notes,created_at,updated_at) VALUES (1,'2024-01-04',10,'GrassPitch','Recovery',1,18,'FoamRollers',0,21.0,50,15000,'Physio session','2024-01-05','2024-01-05');

-- Table: Fan_Digital_Collectibles
CREATE TABLE Fan_Digital_Collectibles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    collectible_id TEXT,
    fan_id INTEGER,
    acquisition_date TEXT,
    collectible_type TEXT,
    rarity_level TEXT,
    token_id TEXT,
    blockchain TEXT,
    metadata_uri TEXT,
    market_value_usd REAL,
    last_trade_date TEXT,
    trade_volume INTEGER,
    holder_since TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Fan_Digital_Collectibles (collectible_id,fan_id,acquisition_date,collectible_type,rarity_level,token_id,blockchain,metadata_uri,market_value_usd,last_trade_date,trade_volume,holder_since,status,notes,created_at,updated_at) VALUES ('COLL001',1001,'2024-01-01','PlayerCard','Rare','TOK12345','Ethereum','ipfs://metadata/12345',150.75,'2024-01-20',2,'2024-01-01','Owned','First purchase','2024-01-01','2024-01-01');
INSERT INTO Fan_Digital_Collectibles (collectible_id,fan_id,acquisition_date,collectible_type,rarity_level,token_id,blockchain,metadata_uri,market_value_usd,last_trade_date,trade_volume,holder_since,status,notes,created_at,updated_at) VALUES ('COLL002',1002,'2024-01-10','StadiumBadge','Common','TOK67890','Polygon','ipfs://metadata/67890',45.00,'2024-01-15',1,'2024-01-10','Owned','Gift from club','2024-01-10','2024-01-10');
INSERT INTO Fan_Digital_Collectibles (collectible_id,fan_id,acquisition_date,collectible_type,rarity_level,token_id,blockchain,metadata_uri,market_value_usd,last_trade_date,trade_volume,holder_since,status,notes,created_at,updated_at) VALUES ('COLL003',1003,'2024-01-18','MatchHighlight','Epic','TOK54321','Solana','ipfs://metadata/54321',320.00,'2024-01-25',3,'2024-01-18','Owned','Limited edition','2024-01-18','2024-01-18');