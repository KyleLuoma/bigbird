-- Table describing additional club facilities and infrastructure
CREATE TABLE Club_Facilities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    facility_name TEXT,
    facility_type TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    year_built INTEGER,
    capacity INTEGER,
    surface_type TEXT,
    lighting_type TEXT,
    maintenance_contract TEXT,
    security_level TEXT,
    parking_spaces INTEGER,
    cafeteria_capacity INTEGER,
    gym_equipment_count INTEGER,
    medical_center_beds INTEGER,
    training_pitch_count INTEGER,
    locker_room_count INTEGER,
    wifi_coverage_percent REAL
);
INSERT INTO Club_Facilities (club_id,facility_name,facility_type,address_line1,address_line2,city,state,zip_code,country,year_built,capacity,surface_type,lighting_type,maintenance_contract,security_level,parking_spaces,cafeteria_capacity,gym_equipment_count,medical_center_beds,training_pitch_count,locker_room_count,wifi_coverage_percent) VALUES (101,'NorthTrainingGround','Training','123 Sports Ave','', 'Londontown','LT','12345','Utopia',2010,5000,'Grass','LED','AcmeMaint','High',200,150,300,20,4,8,98.5);
INSERT INTO Club_Facilities (club_id,facility_name,facility_type,address_line1,address_line2,city,state,zip_code,country,year_built,capacity,surface_type,lighting_type,maintenance_contract,security_level,parking_spaces,cafeteria_capacity,gym_equipment_count,medical_center_beds,training_pitch_count,locker_room_count,wifi_coverage_percent) VALUES (202,'EastMedicalCenter','Medical','45 Health Rd','Suite 2','Metrocity','MC','54321','Utopia',2015,200,'Synthetic','Fluorescent','HealthServ','Medium',50,30,100,40,2,6,92.0);
INSERT INTO Club_Facilities (club_id,facility_name,facility_type,address_line1,address_line2,city,state,zip_code,country,year_built,capacity,surface_type,lighting_type,maintenance_contract,security_level,parking_spaces,cafeteria_capacity,gym_equipment_count,medical_center_beds,training_pitch_count,locker_room_count,wifi_coverage_percent) VALUES (303,'WestStadium','Stadium','78 Arena Blvd','', 'Coastview','CV','67890','Utopia',2005,35000,'Hybrid','LED','StadMaint','High',1200,500,800,15,6,12,99.2);

-- Table describing sponsorship deals for individual players
CREATE TABLE Player_Sponsorships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    sponsor_name TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    sponsorship_type TEXT,
    amount_usd REAL,
    activation_regions TEXT,
    logo_placement TEXT,
    media_exposure_count INTEGER,
    social_media_impressions INTEGER,
    exclusive_rights TEXT,
    product_category TEXT,
    performance_bonus_usd REAL,
    renewal_option TEXT,
    contract_status TEXT,
    payment_terms TEXT,
    contact_person TEXT,
    contact_email TEXT,
    brand_guidelines_version TEXT,
    activation_events_count INTEGER
);
INSERT INTO Player_Sponsorships (player_id,sponsor_name,contract_start_date,contract_end_date,sponsorship_type,amount_usd,activation_regions,logo_placement,media_exposure_count,social_media_impressions,exclusive_rights,product_category,performance_bonus_usd,renewal_option,contract_status,payment_terms,contact_person,contact_email,brand_guidelines_version,activation_events_count) VALUES (1001,'SportPro','2023-01-01','2025-12-31','Primary',250000,'EU,NA','JerseyFront',120,500000,'Yes','Apparel',50000,'OptionYear','Active','Quarterly','JohnDoe','john.doe@sportpro.com','v2.1',12);
INSERT INTO Player_Sponsorships (player_id,sponsor_name,contract_start_date,contract_end_date,sponsorship_type,amount_usd,activation_regions,logo_placement,media_exposure_count,social_media_impressions,exclusive_rights,product_category,performance_bonus_usd,renewal_option,contract_status,payment_terms,contact_person,contact_email,brand_guidelines_version,activation_events_count) VALUES (1002,'EnergyMax','2022-07-15','2024-07-14','Secondary',150000,'ASIA','BootSide',80,300000,'No','EnergyDrink',20000,'AutoRenew','Active','SemiAnnual','JaneSmith','jane.smith@energymax.com','v1.3',8);
INSERT INTO Player_Sponsorships (player_id,sponsor_name,contract_start_date,contract_end_date,sponsorship_type,amount_usd,activation_regions,logo_placement,media_exposure_count,social_media_impressions,exclusive_rights,product_category,performance_bonus_usd,renewal_option,contract_status,payment_terms,contact_person,contact_email,brand_guidelines_version,activation_events_count) VALUES (1003,'TechGear','2024-03-01','2027-02-28','Endorsement',300000,'GLOBAL','Helmet',150,800000,'Yes','SportsTech',60000,'OptionYear','Pending','Annual','MikeLee','mike.lee@techgear.com','v3.0',15);

-- Table describing logistics for team travel and accommodations
CREATE TABLE Team_Travel_Logistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    travel_season TEXT,
    departure_date TEXT,
    return_date TEXT,
    origin_airport TEXT,
    destination_airport TEXT,
    airline TEXT,
    flight_number TEXT,
    accommodation_hotel TEXT,
    room_count INTEGER,
    meals_per_day INTEGER,
    transport_type TEXT,
    bus_provider TEXT,
    travel_budget_usd REAL,
    travel_insurance_provider TEXT,
    medical_staff_onboard TEXT,
    equipment_shipment_id TEXT,
    carbon_offset_tons REAL,
    travel_notes TEXT
);
INSERT INTO Team_Travel_Logistics (team_id,travel_season,departure_date,return_date,origin_airport,destination_airport,airline,flight_number,accommodation_hotel,room_count,meals_per_day,transport_type,bus_provider,travel_budget_usd,travel_insurance_provider,medical_staff_onboard,equipment_shipment_id,carbon_offset_tons,travel_notes) VALUES (11,'PreSeason','2024-07-01','2024-07-10','JFK','LHR','AirGlobal','AG123','GrandHotel','30','3','Bus','TransitCo',120000,'SecureTravel','Yes','EQ001','15.2','Team arrived early for training');
INSERT INTO Team_Travel_Logistics (team_id,travel_season,departure_date,return_date,origin_airport,destination_airport,airline,flight_number,accommodation_hotel,room_count,meals_per_day,transport_type,bus_provider,travel_budget_usd,travel_insurance_provider,medical_staff_onboard,equipment_shipment_id,carbon_offset_tons,travel_notes) VALUES (22,'MidSeason','2024-11-15','2024-11-20','DXB','MAD','SkyFly','SF987','CityLodge','20','2','Van','VanRentals',75000,'TravelGuard','No','EQ042','8.5','Short trip for away match');
INSERT INTO Team_Travel_Logistics (team_id,travel_season,departure_date,return_date,origin_airport,destination_airport,airline,flight_number,accommodation_hotel,room_count,meals_per_day,transport_type,bus_provider,travel_budget_usd,travel_insurance_provider,medical_staff_onboard,equipment_shipment_id,carbon_offset_tons,travel_notes) VALUES (33,'PostSeason','2025-05-01','2025-05-08','SYD','SFO','PacificAir','PA555','OceanView','25','3','Coach','CoachLines',98000,'GlobalSecure','Yes','EQ089','12.0','Celebration tour after championship');

-- Table describing streaming platforms used for match broadcasts
CREATE TABLE Match_Streaming_Platforms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    platform_name TEXT,
    streaming_url TEXT,
    start_time TEXT,
    end_time TEXT,
    max_quality_kbps INTEGER,
    avg_viewers INTEGER,
    peak_viewers INTEGER,
    total_watch_time_minutes INTEGER,
    subscription_required TEXT,
    geo_restriction_regions TEXT,
    ad_breaks_count INTEGER,
    ad_revenue_usd REAL,
    cdn_provider TEXT,
    stream_key TEXT,
    encoding_profile TEXT,
    latency_ms INTEGER,
    subtitle_languages_count INTEGER,
    interactive_features_enabled TEXT
);
INSERT INTO Match_Streaming_Platforms (match_id,platform_name,streaming_url,start_time,end_time,max_quality_kbps,avg_viewers,peak_viewers,total_watch_time_minutes,subscription_required,geo_restriction_regions,ad_breaks_count,ad_revenue_usd,cdn_provider,stream_key,encoding_profile,latency_ms,subtitle_languages_count,interactive_features_enabled) VALUES (5001,'StreamHub','https://streamhub.com/match5001','2024-09-01 18:00','2024-09-01 20:00',8000,45000,72000,5400,'Yes','EU,NA','4',125000,'FastCDN','SK12345','HighPerformance',200,3,'Yes');
INSERT INTO Match_Streaming_Platforms (match_id,platform_name,streaming_url,start_time,end_time,max_quality_kbps,avg_viewers,peak_viewers,total_watch_time_minutes,subscription_required,geo_restriction_regions,ad_breaks_count,ad_revenue_usd,cdn_provider,stream_key,encoding_profile,latency_ms,subtitle_languages_count,interactive_features_enabled) VALUES (5002,'LivePlay','https://liveplay.net/5002','2024-09-02 19:00','2024-09-02 21:30',6000,38000,59000,6300,'No','GLOBAL','3',98000,'EdgeNet','LP98765','Standard',150,2,'No');
INSERT INTO Match_Streaming_Platforms (match_id,platform_name,streaming_url,start_time,end_time,max_quality_kbps,avg_viewers,peak_viewers,total_watch_time_minutes,subscription_required,geo_restriction_regions,ad_breaks_count,ad_revenue_usd,cdn_provider,stream_key,encoding_profile,latency_ms,subtitle_languages_count,interactive_features_enabled) VALUES (5003,'FanStream','https://fanstream.org/match5003','2024-09-03 17:30','2024-09-03 19:45',5000,26000,34000,4050,'No','ASIA','2',45000,'SpeedCDN','FS54321','Eco',180,1,'Yes');

-- Table capturing economic impact of fans attending matches
CREATE TABLE Fan_Economic_Impact (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    fan_id INTEGER,
    region TEXT,
    average_spending_usd REAL,
    accommodation_nights INTEGER,
    transport_km INTEGER,
    food_beverage_spending_usd REAL,
    merchandise_spending_usd REAL,
    ticket_price_usd REAL,
    total_spending_usd REAL,
    employment_generated INTEGER,
    tax_revenue_usd REAL,
    local_business_visits INTEGER,
    stay_duration_days INTEGER,
    fan_satisfaction_score INTEGER,
    loyalty_program_member TEXT,
    coupon_used TEXT,
    time_of_visit TEXT,
    promotional_event_attended TEXT,
    social_media_mentions INTEGER
);
INSERT INTO Fan_Economic_Impact (match_id,fan_id,region,average_spending_usd,accommodation_nights,transport_km,food_beverage_spending_usd,merchandise_spending_usd,ticket_price_usd,total_spending_usd,employment_generated,tax_revenue_usd,local_business_visits,stay_duration_days,fan_satisfaction_score,loyalty_program_member,coupon_used,time_of_visit,promotional_event_attended,social_media_mentions) VALUES (5001,20001,'EU',275.50,2,350,120.00,45.00,85.00,525.50,12,37.80,8,2,9,'Yes','No','Evening','FanZoneMeet','35');
INSERT INTO Fan_Economic_Impact (match_id,fan_id,region,average_spending_usd,accommodation_nights,transport_km,food_beverage_spending_usd,merchandise_spending_usd,ticket_price_usd,total_spending_usd,employment_generated,tax_revenue_usd,local_business_visits,stay_duration_days,fan_satisfaction_score,loyalty_program_member,coupon_used,time_of_visit,promotional_event_attended,social_media_mentions) VALUES (5002,20002,'NA',190.00,1,120,70.00,30.00,75.00,365.00,7,26.50,5,1,8,'No','Yes','Afternoon','KidsCamp','22');
INSERT INTO Fan_Economic_Impact (match_id,fan_id,region,average_spending_usd,accommodation_nights,transport_km,food_beverage_spending_usd,merchandise_spending_usd,ticket_price_usd,total_spending_usd,employment_generated,tax_revenue_usd,local_business_visits,stay_duration_days,fan_satisfaction_score,loyalty_program_member,coupon_used,time_of_visit,promotional_event_attended,social_media_mentions) VALUES (5003,20003,'ASIA',210.75,1,200,80.00,50.00,80.00,420.75,9,30.00,6,1,7,'Yes','No','Morning','StadiumTour','18');

-- Table storing readings from environmental sensors installed in stadiums
CREATE TABLE Stadium_Environmental_Sensors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    sensor_type TEXT,
    installation_date TEXT,
    location_description TEXT,
    measurement_unit TEXT,
    reading_value REAL,
    reading_timestamp TEXT,
    calibration_date TEXT,
    battery_level_percent INTEGER,
    maintenance_status TEXT,
    firmware_version TEXT,
    data_quality_flag TEXT,
    alert_threshold REAL,
    last_alert_timestamp TEXT,
    sensor_owner TEXT,
    connectivity_type TEXT,
    signal_strength_db INTEGER,
    data_transmission_interval_sec INTEGER,
    sensor_serial_number TEXT,
    warranty_expiration_date TEXT
);
INSERT INTO Stadium_Environmental_Sensors (stadium_id,sensor_type,installation_date,location_description,measurement_unit,reading_value,reading_timestamp,calibration_date,battery_level_percent,maintenance_status,firmware_version,data_quality_flag,alert_threshold,last_alert_timestamp,sensor_owner,connectivity_type,signal_strength_db,data_transmission_interval_sec,sensor_serial_number,warranty_expiration_date) VALUES (1,'Temperature','2022-03-01','NorthStand','Celsius',22.5,'2024-09-01 12:00','2023-03-01',95,'Good','v1.2','Pass',30.0,'2024-08-30 09:15','StadiumOps','WiFi',-65,300,'TSN-001','2025-03-01');
INSERT INTO Stadium_Environmental_Sensors (stadium_id,sensor_type,installation_date,location_description,measurement_unit,reading_value,reading_timestamp,calibration_date,battery_level_percent,maintenance_status,firmware_version,data_quality_flag,alert_threshold,last_alert_timestamp,sensor_owner,connectivity_type,signal_strength_db,data_transmission_interval_sec,sensor_serial_number,warranty_expiration_date) VALUES (1,'AirQuality','2022-04-10','EastWing','PPM',400,'2024-09-01 12:05','2023-04-10',88,'Good','v2.0','Pass',500.0,'2024-07-20 14:00','StadiumOps','LoRa',-70,600,'AQS-045','2026-04-10');
INSERT INTO Stadium_Environmental_Sensors (stadium_id,sensor_type,installation_date,location_description,measurement_unit,reading_value,reading_timestamp,calibration_date,battery_level_percent,maintenance_status,firmware_version,data_quality_flag,alert_threshold,last_alert_timestamp,sensor_owner,connectivity_type,signal_strength_db,data_transmission_interval_sec,sensor_serial_number,warranty_expiration_date) VALUES (1,'Noise','2022-05-15','SouthGate','dB',68,'2024-09-01 12:10','2023-05-15',80,'Good','v1.5','Pass',85.0,'2024-08-28 11:45','StadiumOps','ZigBee',-72,120,'NS-210','2025-05-15');

-- Table listing league-wide brand partnership agreements
CREATE TABLE League_Brand_Partners (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    partner_name TEXT,
    partnership_start_date TEXT,
    partnership_end_date TEXT,
    sponsorship_level TEXT,
    financial_contribution_usd REAL,
    branding_areas TEXT,
    exclusive_rights TEXT,
    activation_events_per_year INTEGER,
    digital_campaigns_count INTEGER,
    tv_ad_spots INTEGER,
    social_media_impressions INTEGER,
    contract_status TEXT,
    renewal_option TEXT,
    primary_contact_name TEXT,
    primary_contact_email TEXT,
    logo_file_path TEXT,
    brand_guidelines_version TEXT,
    compliance_audit_date TEXT,
    notes TEXT
);
INSERT INTO League_Brand_Partners (league_id,partner_name,partnership_start_date,partnership_end_date,sponsorship_level,financial_contribution_usd,branding_areas,exclusive_rights,activation_events_per_year,digital_campaigns_count,tv_ad_spots,social_media_impressions,contract_status,renewal_option,primary_contact_name,primary_contact_email,logo_file_path,brand_guidelines_version,compliance_audit_date,notes) VALUES (1,'GlobalSports','2023-01-01','2028-12-31','Platinum',12000000,'AllStadiums,Website','Yes',12,25,60,3500000,'Active','OptionYear','AliceBrown','alice.brown@globalsports.com','/logos/globalsports.png','v4.0','2024-06-15','Long term strategic partner');
INSERT INTO League_Brand_Partners (league_id,partner_name,partnership_start_date,partnership_end_date,sponsorship_level,financial_contribution_usd,branding_areas,exclusive_rights,activation_events_per_year,digital_campaigns_count,tv_ad_spots,social_media_impressions,contract_status,renewal_option,primary_contact_name,primary_contact_email,logo_file_path,brand_guidelines_version,compliance_audit_date,notes) VALUES (1,'EnergyWave','2022-03-15','2025-03-14','Gold',7500000,'StadiumLED,App','No',8,15,40,2100000,'Active','AutoRenew','BobClark','bob.clark@energywave.com','/logos/energywave.svg','v2.2','2024-03-20','Focus on sustainability initiatives');
INSERT INTO League_Brand_Partners (league_id,partner_name,partnership_start_date,partnership_end_date,sponsorship_level,financial_contribution_usd,branding_areas,exclusive_rights,activation_events_per_year,digital_campaigns_count,tv_ad_spots,social_media_impressions,contract_status,renewal_option,primary_contact_name,primary_contact_email,logo_file_path,brand_guidelines_version,compliance_audit_date,notes) VALUES (1,'TechConnect','2024-07-01','2029-06-30','Silver',5000000,'DigitalPlatforms,Social','No',5,10,30,1800000,'Pending','OptionYear','CarolDavis','carol.davis@techconnect.io','/logos/techconnect.jpg','v1.0','2024-07-10','Emerging tech partner');

-- Table recording media production details for each match
CREATE TABLE Media_Production_Teams (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    production_company TEXT,
    director TEXT,
    lead_camera_operator TEXT,
    sound_engineer TEXT,
    graphics_designer TEXT,
    total_staff_count INTEGER,
    equipment_list TEXT,
    production_budget_usd REAL,
    location TEXT,
    shoot_start_time TEXT,
    shoot_end_time TEXT,
    post_production_start_date TEXT,
    post_production_end_date TEXT,
    editing_software TEXT,
    rendering_farm_used TEXT,
    delivery_format TEXT,
    share_percentage REAL,
    client_approval_status TEXT,
    notes TEXT
);
INSERT INTO Media_Production_Teams (match_id,production_company,director,lead_camera_operator,sound_engineer,graphics_designer,total_staff_count,equipment_list,production_budget_usd,location,shoot_start_time,shoot_end_time,post_production_start_date,post_production_end_date,editing_software,rendering_farm_used,delivery_format,share_percentage,client_approval_status,notes) VALUES (5001,'VisionMedia','EmmaWhite','LiamFox','NoahGreen','OliviaBrown','45','4K Cams, Drones, AudioMixers',85000,'StadiumNorth','2024-09-01 17:00','2024-09-01 20:00','2024-09-02','2024-09-05','AdobePremiere','RenderCloudX','MP4',0.12,'Approved','High quality multi‑angle coverage');
INSERT INTO Media_Production_Teams (match_id,production_company,director,lead_camera_operator,sound_engineer,graphics_designer,total_staff_count,equipment_list,production_budget_usd,location,shoot_start_time,shoot_end_time,post_production_start_date,post_production_end_date,editing_software,rendering_farm_used,delivery_format,share_percentage,client_approval_status,notes) VALUES (5002,'LiveEdge','VictorGray','EthanStone','MiaTaylor','SofiaHill','38','HD Cams, Steadicams, AudioBooms',72000,'StadiumEast','2024-09-02 18:30','2024-09-02 21:30','2024-09-03','2024-09-06','FinalCutPro','RenderFarmZ','MOV',0.10,'Pending','Focus on fan reaction shots');
INSERT INTO Media_Production_Teams (match_id,production_company,director,lead_camera_operator,sound_engineer,graphics_designer,total_staff_count,equipment_list,production_budget_usd,location,shoot_start_time,shoot_end_time,post_production_start_date,post_production_end_date,editing_software,rendering_farm_used,delivery_format,share_percentage,client_approval_status,notes) VALUES (5003,'PrimeBroadcast','LauraBlack','JackReed','SophiaLee','LilyWang','42','4K Cams, Gimbals, MicRigs',79000,'StadiumSouth','2024-09-03 16:45','2024-09-03 19:45','2024-09-04','2024-09-07','DaVinciResolve','RenderGridY','MKV',0.11,'Approved','Included 360° highlights');

-- Table defining meal plans for training camps
CREATE TABLE Training_Camp_Meal_Plans (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    camp_id INTEGER,
    day_number INTEGER,
    breakfast_menu TEXT,
    lunch_menu TEXT,
    dinner_menu TEXT,
    snack_options TEXT,
    total_calories INTEGER,
    protein_grams INTEGER,
    carbs_grams INTEGER,
    fats_grams INTEGER,
    hydration_liters REAL,
    special_diet_notes TEXT,
    chef_name TEXT,
    supplier_company TEXT,
    cost_per_meal_usd REAL,
    meal_quality_rating INTEGER,
    allergen_info TEXT,
    meal_preparation_time_min INTEGER,
    waste_percentage REAL,
    feedback_score INTEGER
);
INSERT INTO Training_Camp_Meal_Plans (camp_id,day_number,breakfast_menu,lunch_menu,dinner_menu,snack_options,total_calories,protein_grams,carbs_grams,fats_grams,hydration_liters,special_diet_notes,chef_name,supplier_company,cost_per_meal_usd,meal_quality_rating,allergen_info,meal_preparation_time_min,waste_percentage,feedback_score) VALUES (301,1,'Oatmeal,Berries','GrilledChicken,Quinoa','Salmon,Vegetables','FruitBars,Nuts',2500,150,300,80,3.5,'GlutenFree','ChefMarco','FreshFoods',12.5,9,'None',30,5.0,8);
INSERT INTO Training_Camp_Meal_Plans (camp_id,day_number,breakfast_menu,lunch_menu,dinner_menu,snack_options,total_calories,protein_gram s,carbs_grams,fats_grams,hydration_liters,special_diet_notes,chef_name,supplier_company,cost_per_meal_usd,meal_quality_rating,allergen_info,meal_preparation_time_min,waste_percentage,feedback_score) VALUES (301,2,'EggWhiteWrap,Apple','TurkeyWrap,Rice','BeefStirFry,Broccoli','Yogurt,Granola',2600,155,320,85,3.7,'LowSodium','ChefMarco','FreshFoods',13.0,9,'None',28,4.5,9);
INSERT INTO Training_Camp_Meal_Plans (camp_id,day_number,breakfast_menu,lunch_menu,dinner_menu,snack_options,total_calories,protein_grams,carbs_grams,fats_grams,hydration_liters,special_diet_notes,chef_name,supplier_company,cost_per_meal_usd,meal_quality_rating,allergen_info,meal_preparation_time_min,waste_percentage,feedback_score) VALUES (301,3,'Smoothie,Almonds','Pasta,TomatoSauce','GrilledTofu,Spinach','ProteinShake,Seeds',2400,140,310,70,3.6,'Vegan','ChefMarco','FreshFoods',11.5,8,'Soy',32,6.0,7);

-- Table tracking volunteer engagement and activity
CREATE TABLE Volunteer_Engagement_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    volunteer_id INTEGER,
    event_id INTEGER,
    role TEXT,
    shift_start_time TEXT,
    shift_end_time TEXT,
    hours_contributed REAL,
    tasks_completed INTEGER,
    training_completed TEXT,
    background_check_status TEXT,
    uniform_provided TEXT,
    performance_rating INTEGER,
    feedback_comments TEXT,
    reward_points INTEGER,
    emergency_contact_name TEXT,
    emergency_contact_phone TEXT,
    transport_provided TEXT,
    meals_provided TEXT,
    swag_item_received TEXT,
    sign_off_date TEXT
);
INSERT INTO Volunteer_Engagement_Records (volunteer_id,event_id,role,shift_start_time,shift_end_time,hours_contributed,tasks_completed,training_completed,background_check_status,uniform_provided,performance_rating,feedback_comments,reward_points,emergency_contact_name,emergency_contact_phone,transport_provided,meals_provided,swag_item_received,sign_off_date) VALUES (9001,401,'GateKeeper','2024-09-01 08:00','2024-09-01 12:00',4.0,20,'Yes','Clear','Yes',8,'Prompt and friendly',120,'LauraMills','5551234567','Shuttle','Lunch','T-Shirt','2024-09-02');
INSERT INTO Volunteer_Engagement_Records (volunteer_id,event_id,role,shift_start_time,shift_end_time,hours_contributed,tasks_completed,training_completed,background_check_status,uniform_provided,performance_rating,feedback_comments,reward_points,emergency_contact_name,emergency_contact_phone,transport_provided,meals_provided,swag_item_received,sign_off_date) VALUES (9002,401,'ConcessionStand','2024-09-01 12:30','2024-09-01 16:30',4.0,15,'Yes','Clear','Yes',7,'Handled crowds well',110,'MarkDavis','5559876543','None','SnackPack','Cap','2024-09-02');
INSERT INTO Volunteer_Engagement_Records (volunteer_id,event_id,role,shift_start_time,shift_end_time,hours_contributed,tasks_completed,training_completed,background_check_status,uniform_provided,performance_rating,feedback_comments,reward_points,emergency_contact_name,emergency_contact_phone,transport_provided,meals_provided,swag_item_received,sign_off_date) VALUES (9003,402,'InfoDesk','2024-09-02 09:00','2024-09-02 13:00',4.0,25,'Yes','Clear','Yes',9,'Excellent knowledge of venue',130,'SaraLee','5553332211','Shuttle','Breakfast','WaterBottle','2024-09-03');