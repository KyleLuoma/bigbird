-- Energy usage statistics per branch
CREATE TABLE branch_energy_usage
(
    usage_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    report_date DATE NOT NULL,
    electricity_kwh REAL NOT NULL,
    water_m3 REAL NOT NULL,
    gas_therms REAL NOT NULL,
    solar_generation_kwh REAL NOT NULL,
    peak_demand_kw REAL NOT NULL,
    hvac_efficiency REAL NOT NULL,
    lighting_efficiency REAL NOT NULL,
    num_occupants INTEGER NOT NULL,
    avg_outdoor_temp REAL NOT NULL,
    avg_indoor_temp REAL NOT NULL,
    co2_ppm INTEGER NOT NULL,
    hvac_maintenance_flag TEXT NOT NULL,
    renewable_ratio REAL NOT NULL,
    total_cost_usd REAL NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    version TEXT
);

INSERT INTO branch_energy_usage (usage_id,branch_id,report_date,electricity_kwh,water_m3,gas_therms,solar_generation_kwh,peak_demand_kw,hvac_efficiency,lighting_efficiency,num_occupants,avg_outdoor_temp,avg_indoor_temp,co2_ppm,hvac_maintenance_flag,renewable_ratio,total_cost_usd,notes,created_at,updated_at,version)
VALUES (1,101,'2023-01-31',12500.5,850.2,1200.0,3000.0,75.3,0.85,0.78,45,15.2,22.5,420,Yes,0.25,15000.0,'Quarterly report','2023-02-01','2023-02-01','v1');

INSERT INTO branch_energy_usage (usage_id,branch_id,report_date,electricity_kwh,water_m3,gas_therms,solar_generation_kwh,peak_demand_kw,hvac_efficiency,lighting_efficiency,num_occupants,avg_outdoor_temp,avg_indoor_temp,co2_ppm,hvac_maintenance_flag,renewable_ratio,total_cost_usd,notes,created_at,updated_at,version)
VALUES (2,102,'2023-01-31',9800.0,730.0,950.0,2100.0,68.0,0.88,0.80,38,12.8,21.0,380,No,0.30,13200.0,'','2023-02-01','2023-02-01','v1');

INSERT INTO branch_energy_usage (usage_id,branch_id,report_date,electricity_kwh,water_m3,gas_therms,solar_generation_kwh,peak_demand_kw,hvac_efficiency,lighting_efficiency,num_occupants,avg_outdoor_temp,avg_indoor_temp,co2_ppm,hvac_maintenance_flag,renewable_ratio,total_cost_usd,notes,created_at,updated_at,version)
VALUES (3,103,'2023-01-31',14320.7,940.5,1340.0,3500.0,82.1,0.82,0.75,52,18.0,23.2,460,Yes,0.20,17000.0,'High solar contribution','2023-02-01','2023-02-01','v1');

-- Corporate training modules catalog
CREATE TABLE corporate_training_module
(
    module_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    department TEXT NOT NULL,
    level TEXT NOT NULL,
    duration_minutes INTEGER NOT NULL,
    mandatory_flag TEXT NOT NULL,
    effective_date DATE NOT NULL,
    expiration_date DATE,
    trainer_name TEXT NOT NULL,
    trainer_contact TEXT,
    location TEXT,
    max_participants INTEGER NOT NULL,
    current_enrollment INTEGER NOT NULL,
    format TEXT NOT NULL,
    language TEXT NOT NULL,
    assessment_type TEXT,
    passing_score INTEGER,
    created_by TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    version TEXT
);

INSERT INTO corporate_training_module (module_id,title,description,department,level,duration_minutes,mandatory_flag,effective_date,expiration_date,trainer_name,trainer_contact,location,max_participants,current_enrollment,format,language,assessment_type,passing_score,created_by,created_at,updated_at,version)
VALUES (1,'Data Privacy Basics','Fundamentals of data protection','Compliance','Beginner',90,'Yes','2023-01-01','2024-01-01','Alice Smith','alice.smith@bank.com','Room 101',30,5,'InPerson','English','Quiz',80,'HR','2023-01-05','2023-01-05','1.0');

INSERT INTO corporate_training_module (module_id,title,description,department,level,duration_minutes,mandatory_flag,effective_date,expiration_date,trainer_name,trainer_contact,location,max_participants,current_enrollment,format,language,assessment_type,passing_score,created_by,created_at,updated_at,version)
VALUES (2,'Advanced Credit Analysis','Deep dive into credit risk models','Risk','Advanced',180,'No','2023-02-15',NULL,'Bob Jones','bob.jones@bank.com','Room 202',20,8,'Virtual','English','Project',85,'RiskDept','2023-02-01','2023-02-01','1.0');

INSERT INTO corporate_training_module (module_id,title,description,department,level,duration_minutes,mandatory_flag,effective_date,expiration_date,trainer_name,trainer_contact,location,max_participants,current_enrollment,format,language,assessment_type,passing_score,created_by,created_at,updated_at,version)
VALUES (3,'Leadership Essentials','Core leadership skills for managers','Management','Intermediate',120,'Yes','2023-03-01','2025-03-01','Carol Lee','carol.lee@bank.com','Room 303',25,12,'InPerson','English','Presentation',0,'Management','2023-02-20','2023-02-20','1.0');

-- Vendor performance metrics repository
CREATE TABLE vendor_performance_metrics
(
    vendor_perf_id INTEGER PRIMARY KEY,
    vendor_id INTEGER NOT NULL,
    fiscal_year INTEGER NOT NULL,
    on_time_delivery_percent REAL NOT NULL,
    defect_rate_percent REAL NOT NULL,
    avg_response_time_days REAL NOT NULL,
    contract_value_usd REAL NOT NULL,
    compliance_score REAL NOT NULL,
    sustainability_score REAL NOT NULL,
    risk_rating TEXT NOT NULL,
    last_audit_date DATE NOT NULL,
    contact_person TEXT NOT NULL,
    contact_email TEXT NOT NULL,
    region TEXT NOT NULL,
    service_category TEXT NOT NULL,
    num_incidents INTEGER NOT NULL,
    avg_resolution_time_days REAL NOT NULL,
    satisfaction_score REAL NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    version TEXT
);

INSERT INTO vendor_performance_metrics (vendor_perf_id,vendor_id,fiscal_year,on_time_delivery_percent,defect_rate_percent,avg_response_time_days,contract_value_usd,compliance_score,sustainability_score,risk_rating,last_audit_date,contact_person,contact_email,region,service_category,num_incidents,avg_resolution_time_days,satisfaction_score,notes,created_at,updated_at,version)
VALUES (1,5001,2023,96.5,1.2,0.8,2500000.0,92.0,88.0,Low,'2023-01-15','David Miller','david.miller@vendor.com','NorthAmerica','IT Services',2,1.2,89.5,'','2023-02-01','2023-02-01','v1');

INSERT INTO vendor_performance_metrics (vendor_perf_id,vendor_id,fiscal_year,on_time_delivery_percent,defect_rate_percent,avg_response_time_days,contract_value_usd,compliance_score,sustainability_score,risk_rating,last_audit_date,contact_person,contact_email,region,service_category,num_incidents,avg_resolution_time_days,satisfaction_score,notes,created_at,updated_at,version)
VALUES (2,5002,2023,88.0,3.5,2.5,1800000.0,78.0,70.0,Medium,'2023-02-10','Emma Wilson','emma.wilson@vendor.com','Europe','Facilities Management',5,3.0,75.0,'Late deliveries in Q2','2023-02-01','2023-02-01','v1');

INSERT INTO vendor_performance_metrics (vendor_perf_id,vendor_id,fiscal_year,on_time_delivery_percent,defect_rate_percent,avg_response_time_days,contract_value_usd,compliance_score,sustainability_score,risk_rating,last_audit_date,contact_person,contact_email,region,service_category,num_incidents,avg_resolution_time_days,satisfaction_score,notes,created_at,updated_at,version)
VALUES (3,5003,2023,99.2,0.5,0.3,3200000.0,95.0,92.0,Low,'2023-01-20','Frank Liu','frank.liu@vendor.com','AsiaPacific','Consulting',1,0.5,93.0,'Excellent performance','2023-02-01','2023-02-01','v1');

-- Digital advertising campaign metrics
CREATE TABLE digital_campaign_metrics
(
    campaign_id INTEGER PRIMARY KEY,
    platform TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    impressions INTEGER NOT NULL,
    clicks INTEGER NOT NULL,
    ctr REAL NOT NULL,
    cpc_usd REAL NOT NULL,
    spend_usd REAL NOT NULL,
    conversions INTEGER NOT NULL,
    conversion_rate REAL NOT NULL,
    revenue_usd REAL NOT NULL,
    roas REAL NOT NULL,
    audience_age_range TEXT NOT NULL,
    audience_gender TEXT NOT NULL,
    geo_target TEXT NOT NULL,
    ad_format TEXT NOT NULL,
    creative_id TEXT NOT NULL,
    budget_usd REAL NOT NULL,
    status TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    version TEXT
);

INSERT INTO digital_campaign_metrics (campaign_id,platform,start_date,end_date,impressions,clicks,ctr,cpc_usd,spend_usd,conversions,conversion_rate,revenue_usd,roas,audience_age_range,audience_gender,geo_target,ad_format,creative_id,budget_usd,status,created_at,updated_at,version)
VALUES (1,'GoogleAds','2023-01-01','2023-01-31',1200000,45000,0.0375,0.50,22500.0,3200,0.0711,56000.0,2.49,'25-34','Female','US','Display','CR123',30000.0,'Completed','2023-02-01','2023-02-01','v1');

INSERT INTO digital_campaign_metrics (campaign_id,platform,start_date,end_date,impressions,clicks,ctr,cpc_usd,spend_usd,conversions,conversion_rate,revenue_usd,roas,audience_age_range,audience_gender,geo_target,ad_format,creative_id,budget_usd,status,created_at,updated_at,version)
VALUES (2,'Facebook','2023-02-01','2023-02-28',950000,38000,0.04,0.45,17100.0,2100,0.0553,42000.0,2.46,'35-44','Male','EU','Video','FB456',25000.0,'Running','2023-03-01','2023-03-01','v1');

INSERT INTO digital_campaign_metrics (campaign_id,platform,start_date,end_date,impressions,clicks,ctr,cpc_usd,spend_usd,conversions,conversion_rate,revenue_usd,roas,audience_age_range,audience_gender,geo_target,ad_format,creative_id,budget_usd,status,created_at,updated_at,version)
VALUES (3,'LinkedIn','2023-03-01','2023-03-31',500000,15000,0.03,0.80,12000.0,900,0.06,27000.0,2.25,'45-54','All','APAC','SponsoredContent','LN789',20000.0,'Planned','2023-04-01','2023-04-01','v1');

-- Environmental sensor reading logs
CREATE TABLE environmental_sensor_readings
(
    sensor_reading_id INTEGER PRIMARY KEY,
    sensor_id INTEGER NOT NULL,
    station_id INTEGER NOT NULL,
    reading_timestamp DATE NOT NULL,
    temperature_c REAL NOT NULL,
    humidity_percent REAL NOT NULL,
    pm2_5_ugm3 REAL NOT NULL,
    pm10_ugm3 REAL NOT NULL,
    ozone_ppb REAL NOT NULL,
    co_ppm REAL NOT NULL,
    no2_ppb REAL NOT NULL,
    so2_ppb REAL NOT NULL,
    wind_speed_mps REAL NOT NULL,
    wind_direction_deg INTEGER NOT NULL,
    rainfall_mm REAL NOT NULL,
    battery_voltage REAL NOT NULL,
    signal_strength_dbm REAL NOT NULL,
    firmware_version TEXT NOT NULL,
    alert_flag TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    version TEXT
);

INSERT INTO environmental_sensor_readings (sensor_reading_id,sensor_id,station_id,reading_timestamp,temperature_c,humidity_percent,pm2_5_ugm3,pm10_ugm3,ozone_ppb,co_ppm,no2_ppb,so2_ppb,wind_speed_mps,wind_direction_deg,rainfall_mm,battery_voltage,signal_strength_dbm,firmware_version,alert_flag,created_at,updated_at,version)
VALUES (1,101,10,'2023-02-01',22.5,55.0,12.3,25.7,30.2,0.4,15.0,4.2,3.6,180,0.0,3.7, -70,'v2.1','No','2023-02-01','2023-02-01','v1');

INSERT INTO environmental_sensor_readings (sensor_reading_id,sensor_id,station_id,reading_timestamp,temperature_c,humidity_percent,pm2_5_ugm3,pm10_ugm3,ozone_ppb,co_ppm,no2_ppb,so2_ppb,wind_speed_mps,wind_direction_deg,rainfall_mm,battery_voltage,signal_strength_dbm,firmware_version,alert_flag,created_at,updated_at,version)
VALUES (2,102,11,'2023-02-01',18.2,62.3,8.1,20.4,28.7,0.3,12.5,3.9,2.1,90,0.2,3.8,-68,'v2.1','Yes','2023-02-01','2023-02-01','v1');

INSERT INTO environmental_sensor_readings (sensor_reading_id,sensor_id,station_id,reading_timestamp,temperature_c,humidity_percent,pm2_5_ugm3,pm10_ugm3,ozone_ppb,co_ppm,no2_ppb,so2_ppb,wind_speed_mps,wind_direction_deg,rainfall_mm,battery_voltage,signal_strength_dbm,firmware_version,alert_flag,created_at,updated_at,version)
VALUES (3,103,12,'2023-02-01',25.0,48.0,15.0,35.0,34.0,0.5,18.0,5.0,4.5,270,1.0,3.6,-72,'v2.1','No','2023-02-01','2023-02-01','v1');

-- Logistics vehicle route tracking
CREATE TABLE logistics_vehicle_route
(
    route_id INTEGER PRIMARY KEY,
    vehicle_id INTEGER NOT NULL,
    driver_id INTEGER NOT NULL,
    start_location TEXT NOT NULL,
    end_location TEXT NOT NULL,
    departure_time DATE NOT NULL,
    arrival_time DATE NOT NULL,
    distance_km REAL NOT NULL,
    avg_speed_kph REAL NOT NULL,
    fuel_consumed_l REAL NOT NULL,
    cargo_weight_kg REAL NOT NULL,
    cargo_type TEXT NOT NULL,
    route_status TEXT NOT NULL,
    num_stops INTEGER NOT NULL,
    idle_time_minutes REAL NOT NULL,
    gps_signal_strength REAL NOT NULL,
    maintenance_due_flag TEXT NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    route_priority TEXT NOT NULL,
    version TEXT
);

INSERT INTO logistics_vehicle_route (route_id,vehicle_id,driver_id,start_location,end_location,departure_time,arrival_time,distance_km,avg_speed_kph,fuel_consumed_l,cargo_weight_kg,cargo_type,route_status,num_stops,idle_time_minutes,gps_signal_strength,maintenance_due_flag,notes,created_at,updated_at,route_priority,version)
VALUES (1,2001,3001,'Warehouse A','Branch X','2023-02-01','2023-02-01',120.5,60.0,45.0,2000.0,'Cash','Completed',3,15.0,0.95,'No','Delivered on time','2023-02-01','2023-02-01','High','v1');

INSERT INTO logistics_vehicle_route (route_id,vehicle_id,driver_id,start_location,end_location,departure_time,arrival_time,distance_km,avg_speed_kph,fuel_consumed_l,cargo_weight_kg,cargo_type,route_status,num_stops,idle_time_minutes,gps_signal_strength,maintenance_due_flag,notes,created_at,updated_at,route_priority,version)
VALUES (2,2002,3002,'Warehouse B','Branch Y','2023-02-01','2023-02-01',85.0,55.0,30.0,1500.0,'Documents','Delayed',2,30.0,0.88,'Yes','Traffic congestion','2023-02-01','2023-02-01','Medium','v1');

INSERT INTO logistics_vehicle_route (route_id,vehicle_id,driver_id,start_location,end_location,departure_time,arrival_time,distance_km,avg_speed_kph,fuel_consumed_l,cargo_weight_kg,cargo_type,route_status,num_stops,idle_time_minutes,gps_signal_strength,maintenance_due_flag,notes,created_at,updated_at,route_priority,version)
VALUES (3,2003,3003,'Warehouse C','Branch Z','2023-02-01','2023-02-01',200.0,70.0,80.0,2500.0,'Equipment','InProgress',4,10.0,0.97,'No','','2023-02-01','2023-02-01','Low','v1');

-- Insurance policy details
CREATE TABLE insurance_policy_details
(
    policy_id INTEGER PRIMARY KEY,
    policy_number TEXT NOT NULL,
    holder_name TEXT NOT NULL,
    holder_dob DATE NOT NULL,
    holder_gender TEXT NOT NULL,
    policy_type TEXT NOT NULL,
    effective_date DATE NOT NULL,
    expiration_date DATE NOT NULL,
    premium_usd REAL NOT NULL,
    deductible_usd REAL NOT NULL,
    coverage_limit_usd REAL NOT NULL,
    beneficiary_name TEXT NOT NULL,
    beneficiary_relationship TEXT NOT NULL,
    underwriting_status TEXT NOT NULL,
    agent_name TEXT NOT NULL,
    agent_contact TEXT NOT NULL,
    payment_frequency TEXT NOT NULL,
    claim_history_flag TEXT NOT NULL,
    last_claim_date DATE,
    policy_status TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    version TEXT
);

INSERT INTO insurance_policy_details (policy_id,policy_number,holder_name,holder_dob,holder_gender,policy_type,effective_date,expiration_date,premium_usd,deductible_usd,coverage_limit_usd,beneficiary_name,beneficiary_relationship,underwriting_status,agent_name,agent_contact,payment_frequency,claim_history_flag,last_claim_date,policy_status,created_at,updated_at,version)
VALUES (1,'POL100001','John Doe','1975-06-15','Male','Life','2023-01-01','2033-01-01',1200.0,500.0,1000000.0,'Jane Doe','Spouse','Approved','Mike Brown','mike.brown@agency.com','Annual','No',NULL,'Active','2023-01-01','2023-01-01','v1');

INSERT INTO insurance_policy_details (policy_id,policy_number,holder_name,holder_dob,holder_gender,policy_type,effective_date,expiration_date,premium_usd,deductible_usd,coverage_limit_usd,beneficiary_name,beneficiary_relationship,underwriting_status,agent_name,agent_contact,payment_frequency,claim_history_flag,last_claim_date,policy_status,created_at,updated_at,version)
VALUES (2,'POL100002','Emily Clark','1982-11-23','Female','Auto','2023-03-15','2024-03-15',850.0,250.0,50000.0,'Robert Clark','Brother','Pending','Sarah Lee','sarah.lee@agency.com','SemiAnnual','Yes','2023-06-20','Lapsed','2023-03-01','2023-03-01','v1');

INSERT INTO insurance_policy_details (policy_id,policy_number,holder_name,holder_dob,holder_gender,policy_type,effective_date,expiration_date,premium_usd,deductible_usd,coverage_limit_usd,beneficiary_name,beneficiary_relationship,underwriting_status,agent_name,agent_contact,payment_frequency,claim_history_flag,last_claim_date,policy_status,created_at,updated_at,version)
VALUES (3,'POL100003','Michael Smith','1990-02-05','Male','Home','2023-05-01','2024-05-01',950.0,1000.0,250000.0,'Laura Smith','Spouse','Approved','Anna Green','anna.green@agency.com','Monthly','No',NULL,'Active','2023-04-20','2023-04-20','v1');

-- Marketing event schedule
CREATE TABLE marketing_event_schedule
(
    event_id INTEGER PRIMARY KEY,
    event_name TEXT NOT NULL,
    event_type TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    venue TEXT NOT NULL,
    city TEXT NOT NULL,
    expected_attendees INTEGER NOT NULL,
    sponsor TEXT NOT NULL,
    budget_usd REAL NOT NULL,
    actual_spend_usd REAL,
    marketing_channel TEXT NOT NULL,
    lead_generation_target INTEGER NOT NULL,
    actual_leads INTEGER,
    feedback_score REAL,
    organizer TEXT NOT NULL,
    contact_email TEXT NOT NULL,
    status TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    notes TEXT,
    version TEXT
);

INSERT INTO marketing_event_schedule (event_id,event_name,event_type,start_date,end_date,venue,city,expected_attendees,sponsor,budget_usd,actual_spend_usd,marketing_channel,lead_generation_target,actual_leads,feedback_score,organizer,contact_email,status,created_at,updated_at,notes,version)
VALUES (1,'Spring Financial Forum','Conference','2023-04-10','Grand Hall','New York',250,'Acme Corp',50000.0,47000.0,'Email','1500',1400,4.5,'Emily Johnson','emily.johnson@bank.com','Completed','2023-03-01','2023-04-12','Great turnout','v1');

INSERT INTO marketing_event_schedule (event_id,event_name,event_type,start_date,end_date,venue,city,expected_attendees,sponsor,budget_usd,actual_spend_usd,marketing_channel,lead_generation_target,actual_leads,feedback_score,organizer,contact_email,status,created_at,updated_at,notes,version)
VALUES (2,'Digital Innovation Webinar','Webinar','2023-05-20','Online','Virtual',500,'Tech Partners',20000.0,21000.0,'SocialMedia','800',820,4.2,'David Lee','david.lee@bank.com','Completed','2023-04-15','2023-05-21','Exceeded lead target','v1');

INSERT INTO marketing_event_schedule (event_id,event_name,event_type,start_date,end_date,venue,city,expected_attendees,sponsor,budget_usd,actual_spend_usd,marketing_channel,lead_generation_target,actual_leads,feedback_score,organizer,contact_email,status,created_at,updated_at,notes,version)
VALUES (3,'Community Outreach Day','Community','2023-06-05','City Park','Chicago',800,'Local Business Association',30000.0,29500.0,'DirectMail','2000',1900,4.7,'Laura Martinez','laura.martinez@bank.com','Planned','2023-05-01','2023-05-01','','v1');

-- Compliance document archive
CREATE TABLE compliance_document_archive
(
    doc_id INTEGER PRIMARY KEY,
    doc_title TEXT NOT NULL,
    doc_type TEXT NOT NULL,
    version_number TEXT NOT NULL,
    effective_date DATE NOT NULL,
    expiration_date DATE,
    responsible_department TEXT NOT NULL,
    author TEXT NOT NULL,
    review_cycle_months INTEGER NOT NULL,
    last_review_date DATE NOT NULL,
    compliance_status TEXT NOT NULL,
    risk_level TEXT NOT NULL,
    storage_location TEXT NOT NULL,
    access_level TEXT NOT NULL,
    digital_signature_flag TEXT NOT NULL,
    retention_period_years INTEGER NOT NULL,
    archive_date DATE NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    version TEXT
);

INSERT INTO compliance_document_archive (doc_id,doc_title,doc_type,version_number,effective_date,expiration_date,responsible_department,author,review_cycle_months,last_review_date,compliance_status,risk_level,storage_location,access_level,digital_signature_flag,retention_period_years,archive_date,notes,created_at,updated_at,version)
VALUES (1,'Anti Money Laundering Policy','Policy','v3','2022-01-01','2027-01-01','Compliance','Sandra White',12,'2023-01-15','Compliant','Low','Vault A','Confidential','Yes',5,'2023-02-01','','2023-02-01','2023-02-01','v1');

INSERT INTO compliance_document_archive (doc_id,doc_title,doc_type,version_number,effective_date,expiration_date,responsible_department,author,review_cycle_months,last_review_date,compliance_status,risk_level,storage_location,access_level,digital_signature_flag,retention_period_years,archive_date,notes,created_at,updated_at,version)
VALUES (2,'Customer Data Retention Guidelines','Guideline','v2','2021-06-01','2026-06-01','Legal','Tom Green',24,'2022-12-20','Compliant','Medium','Vault B','Restricted','Yes',7,'2023-03-01','Updated with GDPR changes','2023-03-01','2023-03-01','v1');

INSERT INTO compliance_document_archive (doc_id,doc_title,doc_type,version_number,effective_date,expiration_date,responsible_department,author,review_cycle_months,last_review_date,compliance_status,risk_level,storage_location,access_level,digital_signature_flag,retention_period_years,archive_date,notes,created_at,updated_at,version)
VALUES (3,'Business Continuity Plan','Plan','v1','2020-09-01','2025-09-01','Operations','Karen Black',18,'2023-01-10','Compliant','High','Vault C','Internal','No',10,'2023-04-01','Pending annual drill','2023-04-01','2023-04-01','v1');

-- External API usage log
CREATE TABLE external_api_usage_log
(
    api_log_id INTEGER PRIMARY KEY,
    api_name TEXT NOT NULL,
    endpoint TEXT NOT NULL,
    request_timestamp DATE NOT NULL,
    response_time_ms REAL NOT NULL,
    status_code INTEGER NOT NULL,
    request_payload TEXT,
    response_payload TEXT,
    client_app TEXT NOT NULL,
    api_key TEXT NOT NULL,
    rate_limit_remaining INTEGER NOT NULL,
    error_message TEXT,
    user_id INTEGER,
    ip_address TEXT NOT NULL,
    geo_location TEXT,
    data_volume_kb REAL NOT NULL,
    authenticated_flag TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    version TEXT
);

INSERT INTO external_api_usage_log (api_log_id,api_name,endpoint,request_timestamp,response_time_ms,status_code,request_payload,response_payload,client_app,api_key,rate_limit_remaining,error_message,user_id,ip_address,geo_location,data_volume_kb,authenticated_flag,created_at,updated_at,version)
VALUES (1,'CurrencyExchange','/v1/rates','2023-02-15',120.5,200,'{base:USD,targets:EUR,GBP}','{EUR:0.85,GBP:0.75}','MobileApp','key123',98,NULL,301,'192.168.1.10','US','2.5','Yes','2023-02-15','2023-02-15','v1');

INSERT INTO external_api_usage_log (api_log_id,api_name,endpoint,request_timestamp,response_time_ms,status_code,request_payload,response_payload,client_app,api_key,rate_limit_remaining,error_message,user_id,ip_address,geo_location,data_volume_kb,authenticated_flag,created_at,updated_at,version)
VALUES (2,'CreditScoreCheck','/v2/score','2023-02-16',250.0,429,'{ssn:123456789}','','WebPortal','key456',95,'Rate limit exceeded',NULL,'192.168.1.20','CA','1.0','No','2023-02-16','2023-02-16','v1');

INSERT INTO external_api_usage_log (api_log_id,api_name,endpoint,request_timestamp,response_time_ms,status_code,request_payload,response_payload,client_app,api_key,rate_limit_remaining,error_message,user_id,ip_address,geo_location,data_volume_kb,authenticated_flag,created_at,updated_at,version)
VALUES (3,'TransactionHistory','/v1/history','2023-02-17',85.3,200,'{accountId:5678,from:2023-01-01,to:2023-01-31}','{transactions:[...] }','DesktopApp','key789',99,NULL,402,'192.168.1.30','UK','3.2','Yes','2023-02-17','2023-02-17','v1');