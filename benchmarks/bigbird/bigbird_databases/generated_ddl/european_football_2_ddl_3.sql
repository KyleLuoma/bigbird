-- Advertising campaigns targeting fans and sponsors
CREATE TABLE "Advertising_Campaigns" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "campaign_name" TEXT,
    "start_date" TEXT,
    "end_date" TEXT,
    "budget_usd" INTEGER,
    "media_type" TEXT,
    "target_audience" TEXT,
    "impressions" INTEGER,
    "clicks" INTEGER,
    "ctr" REAL,
    "cpc" REAL,
    "cpm" REAL,
    "creative_format" TEXT,
    "ad_spot" TEXT,
    "region" TEXT,
    "language" TEXT,
    "agency" TEXT,
    "brand_id" INTEGER,
    "product_line" TEXT,
    "platform" TEXT,
    "notes" TEXT
);
INSERT INTO "Advertising_Campaigns" ("campaign_name","start_date","end_date","budget_usd","media_type","target_audience","impressions","clicks","ctr","cpc","cpm","creative_format","ad_spot","region","language","agency","brand_id","product_line","platform","notes") VALUES ('SummerFanBoost','2024-06-01','2024-08-31',150000,'Digital','YouthFans',2000000,45000,0.0225,3.33,75,'Video','PreGame', 'Europe','English','AdMakers',1,'Jersey','YouTube','Initial rollout');
INSERT INTO "Advertising_Campaigns" ("campaign_name","start_date","end_date","budget_usd","media_type","target_audience","impressions","clicks","ctr","cpc","cpm","creative_format","ad_spot","region","language","agency","brand_id","product_line","platform","notes") VALUES ('WinterTicketPush','2024-11-01','2025-01-31',80000,'Social','AdultFans',1200000,18000,0.015,4.44,70,'Image','MidGame','NorthAmerica','English','SocialBoost',2,'SeasonPass','Facebook','Second wave');
INSERT INTO "Advertising_Campaigns" ("campaign_name","start_date","end_date","budget_usd","media_type","target_audience","impressions","clicks","ctr","cpc","cpm","creative_format","ad_spot","region","language","agency","brand_id","product_line","platform","notes") VALUES ('AsiaMerchLaunch','2025-03-15','2025-05-15',60000,'Display','AsianFans',900000,27000,0.03,2.22,66,'Banner','PostGame','Asia','Mandarin','CreativeHub',3,'Caps','Twitter','Launch phase');

-- Providers handling logistics for equipment and merch
CREATE TABLE "Logistics_Providers" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "provider_name" TEXT,
    "contact_email" TEXT,
    "phone_number" TEXT,
    "headquarters_city" TEXT,
    "country" TEXT,
    "service_type" TEXT,
    "fleet_size" INTEGER,
    "rating" REAL,
    "contracts_active" INTEGER,
    "established_year" INTEGER,
    "ceo_name" TEXT,
    "coverage_area" TEXT,
    "insurance_certified" TEXT,
    "eco_score" REAL,
    "avg_delivery_time" INTEGER,
    "max_load_capacity" INTEGER,
    "freight_rate_usd_per_kg" REAL,
    "last_audit_date" TEXT,
    "compliance_status" TEXT,
    "notes" TEXT
);
INSERT INTO "Logistics_Providers" ("provider_name","contact_email","phone_number","headquarters_city","country","service_type","fleet_size","rating","contracts_active","established_year","ceo_name","coverage_area","insurance_certified","eco_score","avg_delivery_time","max_load_capacity","freight_rate_usd_per_kg","last_audit_date","compliance_status","notes") VALUES ('FastFreight','contact@fastfreight.com','+155512345','NewYork','USA','Ground','150',4.7,3,2005,'John Doe','NorthAmerica','Yes',85.5,48,20000,0.12,'2024-09-10','Compliant','Key partner for merch');
INSERT INTO "Logistics_Providers" ("provider_name","contact_email","phone_number","headquarters_city","country","service_type","fleet_size","rating","contracts_active","established_year","ceo_name","coverage_area","insurance_certified","eco_score","avg_delivery_time","max_load_capacity","freight_rate_usd_per_kg","last_audit_date","compliance_status","notes") VALUES ('EcoTrans','info@ecotrans.eu','+33123456789','Paris','France','Air','80',4.3,2,2012,'Marie Curie','Europe','Yes',92.0,36,15000,0.18,'2024-07-22','Compliant','Low carbon footprint');
INSERT INTO "Logistics_Providers" ("provider_name","contact_email","phone_number","headquarters_city","country","service_type","fleet_size","rating","contracts_active","established_year","ceo_name","coverage_area","insurance_certified","eco_score","avg_delivery_time","max_load_capacity","freight_rate_usd_per_kg","last_audit_date","compliance_status","notes") VALUES ('SeaLink','support@sealink.co.jp','+81312345678','Tokyo','Japan','Sea','60',4.1,1,1998,'Kenji Sato','Asia','No',78.0,72,30000,0.09,'2024-06-15','Pending','Evaluating for future contracts');

-- Inventory of digital signage screens in stadiums and fan zones
CREATE TABLE "Digital_Signage_Inventory" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "location_id" INTEGER,
    "screen_model" TEXT,
    "screen_size_inch" INTEGER,
    "resolution" TEXT,
    "orientation" TEXT,
    "install_date" TEXT,
    "last_maintenance" TEXT,
    "vendor" TEXT,
    "warranty_end" TEXT,
    "power_consumption_watts" INTEGER,
    "brightness_nits" INTEGER,
    "content_provider" TEXT,
    "playlist_id" INTEGER,
    "cpu_type" TEXT,
    "os_version" TEXT,
    "network_type" TEXT,
    "ip_address" TEXT,
    "mac_address" TEXT,
    "uptime_hours" INTEGER,
    "maintenance_cost_usd" INTEGER,
    "notes" TEXT
);
INSERT INTO "Digital_Signage_Inventory" ("location_id","screen_model","screen_size_inch","resolution","orientation","install_date","last_maintenance","vendor","warranty_end","power_consumption_watts","brightness_nits","content_provider","playlist_id","cpu_type","os_version","network_type","ip_address","mac_address","uptime_hours","maintenance_cost_usd","notes") VALUES (101,'Samsung QLED','55','1920x1080','Landscape','2022-03-15','2024-08-01','Samsung','2025-03-15',150,350,'Signify',2001,'ARM','Linux4.19','Ethernet','192.168.1.101','AA:BB:CC:DD:EE:01',8500,1200,'Main entrance display');
INSERT INTO "Digital_Signage_Inventory" ("location_id","screen_model","screen_size_inch","resolution","orientation","install_date","last_maintenance","vendor","warranty_end","power_consumption_watts","brightness_nits","content_provider","playlist_id","cpu_type","os_version","network_type","ip_address","mac_address","uptime_hours","maintenance_cost_usd","notes") VALUES (102,'LG OLED','42','3840x2160','Portrait','2023-07-20','2024-07-20','LG','2026-07-20',120,400,'BrightSign',2002,'x86','Windows10','WiFi','192.168.1.102','AA:BB:CC:DD:EE:02',4200,900,'VIP lounge corner');
INSERT INTO "Digital_Signage_Inventory" ("location_id","screen_model","screen_size_inch","resolution","orientation","install_date","last_maintenance","vendor","warranty_end","power_consumption_watts","brightness_nits","content_provider","playlist_id","cpu_type","os_version","network_type","ip_address","mac_address","uptime_hours","maintenance_cost_usd","notes") VALUES (103,'Panasonic LED','65','1920x1080','Landscape','2021-11-05','2024-05-12','Panasonic','2024-11-05',180,300,'SamsungAds',2003,'ARM','Linux5.4','Ethernet','192.168.1.103','AA:BB:CC:DD:EE:03',11500,1500,'Stadium north wall');

-- Nutrition programs offered to athletes and staff
CREATE TABLE "Nutrition_Programs" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "program_name" TEXT,
    "start_date" TEXT,
    "end_date" TEXT,
    "target_group" TEXT,
    "calories_per_day" INTEGER,
    "protein_g" INTEGER,
    "carbs_g" INTEGER,
    "fats_g" INTEGER,
    "vitamins" TEXT,
    "supplements_included" TEXT,
    "meal_count_per_day" INTEGER,
    "dietitian_id" INTEGER,
    "compliance_rate" REAL,
    "feedback_score" REAL,
    "location_id" INTEGER,
    "cost_per_participant_usd" INTEGER,
    "enrollment_cap" INTEGER,
    "active_status" TEXT,
    "program_type" TEXT,
    "notes" TEXT,
    "created_at" TEXT
);
INSERT INTO "Nutrition_Programs" ("program_name","start_date","end_date","target_group","calories_per_day","protein_g","carbs_g","fats_g","vitamins","supplements_included","meal_count_per_day","dietitian_id","compliance_rate","feedback_score","location_id","cost_per_participant_usd","enrollment_cap","active_status","program_type","notes","created_at") VALUES ('EliteRecovery','2024-01-01','2024-12-31','FirstTeam',3000,180,350,90,'Multi','Whey,Creatine',5,41,0.96,4.8,101,250,30,'Active','Performance','Tailored for matchdays','2023-12-01');
INSERT INTO "Nutrition_Programs" ("program_name","start_date","end_date","target_group","calories_per_day","protein_g","carbs_g","fats_g","vitamins","supplements_included","meal_count_per_day","dietitian_id","compliance_rate","feedback_score","location_id","cost_per_participant_usd","enrollment_cap","active_status","program_type","notes","created_at") VALUES ('YouthFuel','2024-03-15','2024-11-15','AcademyU15',2500,130,300,70,'BComplex','ProteinBar',4,52,0.88,4.2,102,120,40,'Active','Development','Focus on growth','2024-03-01');
INSERT INTO "Nutrition_Programs" ("program_name","start_date","end_date","target_group","calories_per_day","protein_g","carbs_g","fats_g","vitamins","supplements_included","meal_count_per_day","dietitian_id","compliance_rate","feedback_score","location_id","cost_per_participant_usd","enrollment_cap","active_status","program_type","notes","created_at") VALUES ('StaffWellness','2024-06-01','2024-12-31','AllStaff',2200,100,250,60,'VitaminD','Multivitamin',3,61,0.92,4.5,103,80,100,'Active','Wellbeing','Open to all non‑players','2024-05-20');

-- Volunteer operations for community events
CREATE TABLE "Volunteer_Operations" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "volunteer_id" INTEGER,
    "event_id" INTEGER,
    "role" TEXT,
    "shift_start" TEXT,
    "shift_end" TEXT,
    "hours_logged" REAL,
    "training_completed" TEXT,
    "certification" TEXT,
    "supervisor_id" INTEGER,
    "feedback_score" REAL,
    "gear_assigned" TEXT,
    "transport_method" TEXT,
    "arrival_time" TEXT,
    "departure_time" TEXT,
    "emergency_contact" TEXT,
    "background_check_status" TEXT,
    "uniform_size" TEXT,
    "notes" TEXT,
    "active_flag" TEXT,
    "created_at" TEXT
);
INSERT INTO "Volunteer_Operations" ("volunteer_id","event_id","role","shift_start","shift_end","hours_logged","training_completed","certification","supervisor_id","feedback_score","gear_assigned","transport_method","arrival_time","departure_time","emergency_contact","background_check_status","uniform_size","notes","active_flag","created_at") VALUES (201,301,'GateKeeper','08:00','12:00',4.0,'Yes','FirstAid','101',4.7,'Badge','Car','07:45','12:15','5551234567','Clear','M','Assigned to north gate','Yes','2024-01-10');
INSERT INTO "Volunteer_Operations" ("volunteer_id","event_id","role","shift_start","shift_end","hours_logged","training_completed","certification","supervisor_id","feedback_score","gear_assigned","transport_method","arrival_time","departure_time","emergency_contact","background_check_status","uniform_size","notes","active_flag","created_at") VALUES (202,302,'Concessions','13:00','16:30',3.5,'Yes','FoodSafety','102',4.5,'Apron','PublicTransit','12:45','16:45','5559876543','Clear','L','Handled snack bar','Yes','2024-02-05');
INSERT INTO "Volunteer_Operations" ("volunteer_id","event_id","role","shift_start","shift_end","hours_logged","training_completed","certification","supervisor_id","feedback_score","gear_assigned","transport_method","arrival_time","departure_time","emergency_contact","background_check_status","uniform_size","notes","active_flag","created_at") VALUES (203,303,'CrowdGuide','18:00','22:00',4.0,'No','None','103',4.2,'Vest','Bike','17:40','22:15','5552223333','Pending','S','Guided fans to exits','Yes','2024-03-12');

-- Community outreach events organized by clubs
CREATE TABLE "Community_Outreach_Events" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "event_name" TEXT,
    "date" TEXT,
    "venue" TEXT,
    "city" TEXT,
    "region" TEXT,
    "expected_attendance" INTEGER,
    "actual_attendance" INTEGER,
    "sponsor_id" INTEGER,
    "budget_usd" INTEGER,
    "funds_raised_usd" INTEGER,
    "media_coverage" TEXT,
    "volunteer_count" INTEGER,
    "partner_organizations" TEXT,
    "theme" TEXT,
    "target_audience" TEXT,
    "feedback_average" REAL,
    "duration_hours" INTEGER,
    "covid_protocols" TEXT,
    "notes" TEXT,
    "status" TEXT
);
INSERT INTO "Community_Outreach_Events" ("event_name","date","venue","city","region","expected_attendance","actual_attendance","sponsor_id","budget_usd","funds_raised_usd","media_coverage","volunteer_count","partner_organizations","theme","target_audience","feedback_average","duration_hours","covid_protocols","notes","status") VALUES ('Kids Soccer Day','2024-04-20','City Park','Springfield','Midwest',500,480,11,20000,7500,'LocalTV,Radio','30','YouthClub,HealthDept','Play & Learn','Children','4.6',6,'MaskAndDistancing','Great family turnout','Completed');
INSERT INTO "Community_Outreach_Events" ("event_name","date","venue","city","region","expected_attendance","actual_attendance","sponsor_id","budget_usd","funds_raised_usd","media_coverage","volunteer_count","partner_organizations","theme","target_audience","feedback_average","duration_hours","covid_protocols","notes","status") VALUES ('Women Empowerment Match','2024-09-10','Stadium East Stand','Riverdale','South',800,820,12,35000,12000,'NationalNews','45','WomenSportsAssoc,NGO','Equality on the Pitch','Women','4.8',4,'VaccinationRequired','High engagement','Completed');
INSERT INTO "Community_Outreach_Events" ("event_name","date","venue","city","region","expected_attendance","actual_attendance","sponsor_id","budget_usd","funds_raised_usd","media_coverage","volunteer_count","partner_organizations","theme","target_audience","feedback_average","duration_hours","covid_protocols","notes","status") VALUES ('Senior Fitness Clinic','2024-11-05','Community Center','Lakeside','North',150,140,13,10000,3000,'LocalPaper','20','HealthOrg,RedCross','Active Aging','Seniors','4.4',3,'TemperatureChecks','Positive health impact','Completed');

-- Shipments of merchandise to retail locations
CREATE TABLE "Merchandise_Shipments" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "shipment_id" TEXT,
    "origin_warehouse_id" INTEGER,
    "destination_store_id" INTEGER,
    "dispatch_date" TEXT,
    "arrival_date" TEXT,
    "carrier" TEXT,
    "tracking_number" TEXT,
    "total_weight_kg" REAL,
    "volume_cubic_m" REAL,
    "item_count" INTEGER,
    "shipment_value_usd" INTEGER,
    "customs_clearance" TEXT,
    "insurance_covered" TEXT,
    "carrier_rating" REAL,
    "delay_reason" TEXT,
    "notes" TEXT,
    "created_by" TEXT,
    "verified_by" TEXT,
    "status" TEXT
);
INSERT INTO "Merchandise_Shipments" ("shipment_id","origin_warehouse_id","destination_store_id","dispatch_date","arrival_date","carrier","tracking_number","total_weight_kg","volume_cubic_m","item_count","shipment_value_usd","customs_clearance","insurance_covered","carrier_rating","delay_reason","notes","created_by","verified_by","status") VALUES ('MSH001',10,201,'2024-07-01','2024-07-04','FastFreight','FF123456789',1200.5,3.4,2500,45000,'Yes','Yes',4.7,'None','First batch of winter jerseys','LogisticsTeam','OpsLead','Delivered');
INSERT INTO "Merchandise_Shipments" ("shipment_id","origin_warehouse_id","destination_store_id","dispatch_date","arrival_date","carrier","tracking_number","total_weight_kg","volume_cubic_m","item_count","shipment_value_usd","customs_clearance","insurance_covered","carrier_rating","delay_reason","notes","created_by","verified_by","status") VALUES ('MSH002',12,202,'2024-07-10','2024-07-13','EcoTrans','ET987654321',800.0,2.1,1800,32000,'Yes','Yes',4.3,'Weather','Re‑stock of training kits','LogisticsTeam','OpsLead','Delivered');
INSERT INTO "Merchandise_Shipments" ("shipment_id","origin_warehouse_id","destination_store_id","dispatch_date","arrival_date","carrier","tracking_number","total_weight_kg","volume_cubic_m","item_count","shipment_value_usd","customs_clearance","insurance_covered","carrier_rating","delay_reason","notes","created_by","verified_by","status") VALUES ('MSH003',15,203,'2024-07-20','2024-07-23','SeaLink','SL555666777',2100.8,5.0,3500,75000,'No','Yes',4.1,'PortCongestion','Special order of limited edition caps','LogisticsTeam','OpsLead','InTransit');

-- Security incidents recorded during matches and events
CREATE TABLE "Security_Incidents" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "incident_id" TEXT,
    "date" TEXT,
    "time" TEXT,
    "location_id" INTEGER,
    "incident_type" TEXT,
    "severity_level" TEXT,
    "reported_by" TEXT,
    "description" TEXT,
    "actions_taken" TEXT,
    "resolved" TEXT,
    "resolution_time_minutes" INTEGER,
    "law_enforcement_involved" TEXT,
    "fines_imposed_usd" INTEGER,
    "staff_involved" INTEGER,
    "cameras_activated" TEXT,
    "witness_count" INTEGER,
    "followup_required" TEXT,
    "notes" TEXT,
    "status" TEXT,
    "created_at" TEXT
);
INSERT INTO "Security_Incidents" ("incident_id","date","time","location_id","incident_type","severity_level","reported_by","description","actions_taken","resolved","resolution_time_minutes","law_enforcement_involved","fines_imposed_usd","staff_involved","cameras_activated","witness_count","followup_required","notes","status","created_at") VALUES ('SEC001','2024-05-12','19:35',101,'FoulPlay','Medium','SecurityGuard','Altercation between two supporters','Security ejected both fans','Yes',15,'Yes',200,2,'Yes',3,'Yes','Fans were escorted out','Closed','2024-05-13');
INSERT INTO "Security_Incidents" ("incident_id","date","time","location_id","incident_type","severity_level","reported_by","description","actions_taken","resolved","resolution_time_minutes","law_enforcement_involved","fines_imposed_usd","staff_involved","cameras_activated","witness_count","followup_required","notes","status","created_at") VALUES ('SEC002','2024-08-03','21:10',102,'UnauthorizedEntry','High','CameraSystem','Individual entered restricted area','Security detained, police notified','No',0,'Yes',0,1,'Yes',1,'Yes','Investigation ongoing','Open','2024-08-04');
INSERT INTO "Security_Incidents" ("incident_id","date","time","location_id","incident_type","severity_level","reported_by","description","actions_taken","resolved","resolution_time_minutes","law_enforcement_involved","fines_imposed_usd","staff_involved","cameras_activated","witness_count","followup_required","notes","status","created_at") VALUES ('SEC003','2024-09-20','18:45',103,'BagCheck','Low','GateKeeper','Bag left unattended','Bag secured, owner contacted','Yes',5,'No',0,1,'Yes',0,'No','No further action','Closed','2024-09-21');

-- Analytics for digital ticketing platforms
CREATE TABLE "Digital_Ticketing_Analytics" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "match_id" INTEGER,
    "platform" TEXT,
    "total_requests" INTEGER,
    "successful_sales" INTEGER,
    "failed_requests" INTEGER,
    "avg_response_time_ms" REAL,
    "peak_concurrency" INTEGER,
    "error_rate_percent" REAL,
    "geo_distribution" TEXT,
    "device_type_mobile" INTEGER,
    "device_type_desktop" INTEGER,
    "payment_method_credit" INTEGER,
    "payment_method_paypal" INTEGER,
    "payment_method_other" INTEGER,
    "avg_purchase_value_usd" REAL,
    "conversion_rate" REAL,
    "refund_count" INTEGER,
    "refund_amount_usd" INTEGER,
    "timestamp" TEXT,
    "notes" TEXT
);
INSERT INTO "Digital_Ticketing_Analytics" ("match_id","platform","total_requests","successful_sales","failed_requests","avg_response_time_ms","peak_concurrency","error_rate_percent","geo_distribution","device_type_mobile","device_type_desktop","payment_method_credit","payment_method_paypal","payment_method_other","avg_purchase_value_usd","conversion_rate","refund_count","refund_amount_usd","timestamp","notes") VALUES (501,'TicketMaster',120000,95000,25000,210.5,4800,20.8,'Europe:60%,NA:30%,Asia:10%',80000,40000,90000,4000,2000,85.5,0.79,120,3600,'2024-07-15 10:00:00','Peak before match day');
INSERT INTO "Digital_Ticketing_Analytics" ("match_id","platform","total_requests","successful_sales","failed_requests","avg_response_time_ms","peak_concurrency","error_rate_percent","geo_distribution","device_type_mobile","device_type_desktop","payment_method_credit","payment_method_paypal","payment_method_other","avg_purchase_value_usd","conversion_rate","refund_count","refund_amount_usd","timestamp","notes") VALUES (502,'EventBrite',95000,80000,15000,185.2,3500,15.8,'Europe:55%,NA:35%,Africa:10%',60000,35000,75000,3000,1500,78.2,0.84,95,1900,'2024-08-02 14:30:00','Smooth traffic');
INSERT INTO "Digital_Ticketing_Analytics" ("match_id","platform","total_requests","successful_sales","failed_requests","avg_response_time_ms","peak_concurrency","error_rate_percent","geo_distribution","device_type_mobile","device_type_desktop","payment_method_credit","payment_method_paypal","payment_method_other","avg_purchase_value_usd","conversion_rate","refund_count","refund_amount_usd","timestamp","notes") VALUES (503,'StadiumDirect',80000,62000,18000,230.1,4200,22.5,'Europe:70%,NA:20%,SouthAmerica:10%',55000,25000,60000,2000,2200,82.7,0.78,150,4500,'2024-09-10 09:00:00','Higher errors during load';

-- Surveys capturing fan experience after matches
CREATE TABLE "Fan_Experience_Surveys" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "match_id" INTEGER,
    "fan_id" INTEGER,
    "survey_date" TEXT,
    "overall_satisfaction" INTEGER,
    "stadium_cleanliness" INTEGER,
    "food_quality" INTEGER,
    "staff_friendliness" INTEGER,
    "security_feeling" INTEGER,
    "seat_comfort" INTEGER,
    "audio_quality" INTEGER,
    "visual_quality" INTEGER,
    "transport_ease" INTEGER,
    "ticket_price_fairness" INTEGER,
    "merchandise_variety" INTEGER,
    "likelihood_recommend" INTEGER,
    "comments" TEXT,
    "time_spent_minutes" INTEGER,
    "survey_method" TEXT,
    "language" TEXT,
    "completed" TEXT,
    "notes" TEXT
);
INSERT INTO "Fan_Experience_Surveys" ("match_id","fan_id","survey_date","overall_satisfaction","stadium_cleanliness","food_quality","staff_friendliness","security_feeling","seat_comfort","audio_quality","visual_quality","transport_ease","ticket_price_fairness","merchandise_variety","likelihood_recommend","comments","time_spent_minutes","survey_method","language","completed","notes") VALUES (501,1001,'2024-07-16',9,8,7,9,8,8,9,9,7,8,7,9,'Great atmosphere','12','Online','English','Yes','Collected via email');
INSERT INTO "Fan_Experience_Surveys" ("match_id","fan_id","survey_date","overall_satisfaction","stadium_cleanliness","food_quality","staff_friendliness","security_feeling","seat_comfort","audio_quality","visual_quality","transport_ease","ticket_price_fairness","merchandise_variety","likelihood_recommend","comments","time_spent_minutes","survey_method","language","completed","notes") VALUES (502,1002,'2024-08-03',7,6,6,7,5,6,6,6,5,6,5,6,'Long queues at entry','15','Kiosk','Spanish','Yes','Paper form');
INSERT INTO "Fan_Experience_Surveys" ("match_id","fan_id","survey_date","overall_satisfaction","stadium_cleanliness","food_quality","staff_friendliness","security_feeling","seat_comfort","audio_quality","visual_quality","transport_ease","ticket_price_fairness","merchandise_variety","likelihood_recommend","comments","time_spent_minutes","survey_method","language","completed","notes") VALUES (503,1003,'2024-09-11',8,9,8,8,9,8,8,8,8,8,8,8,'Excellent service','10','MobileApp','French','Yes','Auto‑sent push notification');