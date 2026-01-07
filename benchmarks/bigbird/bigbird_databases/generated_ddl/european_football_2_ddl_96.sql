-- Venue security cameras
CREATE TABLE Venue_Security_Cameras (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    camera_id TEXT,
    location_desc TEXT,
    install_date TEXT,
    resolution_mp INTEGER,
    fps INTEGER,
    infrared INTEGER,
    pan_range_deg INTEGER,
    tilt_range_deg INTEGER,
    zoom_factor REAL,
    maintenance_date TEXT,
    status_text TEXT,
    firmware_version TEXT,
    ip_address TEXT,
    mac_address TEXT,
    vendor_name TEXT,
    warranty_end TEXT,
    last_check_date TEXT,
    uptime_hours INTEGER,
    field_of_view_deg INTEGER,
    storage_capacity_tb REAL,
    power_source TEXT
);
INSERT INTO Venue_Security_Cameras (stadium_id,camera_id,location_desc,install_date,resolution_mp,fps,infrared,pan_range_deg,tilt_range_deg,zoom_factor,maintenance_date,status_text,firmware_version,ip_address,mac_address,vendor_name,warranty_end,last_check_date,uptime_hours,field_of_view_deg,storage_capacity_tb,power_source) VALUES (1,'Cam001','NorthSide','2022-01-10',12,30,1,180,90,4.0,'2023-01-10','Active','v1.2','192.168.1.101','AA:BB:CC:DD:EE:01','SecureCam','2025-01-10','2023-12-01',1500,90,2.5,'PoE');
INSERT INTO Venue_Security_Cameras (stadium_id,camera_id,location_desc,install_date,resolution_mp,fps,infrared,pan_range_deg,tilt_range_deg,zoom_factor,maintenance_date,status_text,firmware_version,ip_address,mac_address,vendor_name,warranty_end,last_check_date,uptime_hours,field_of_view_deg,storage_capacity_tb,power_source) VALUES (2,'Cam002','SouthEast','2021-07-15',8,25,0,120,60,2.5,'2022-07-15','Inactive','v1.0','192.168.2.202','AA:BB:CC:DD:EE:02','CamTech','2024-07-15','2022-07-01',800,70,1.0,'Solar');
INSERT INTO Venue_Security_Cameras (stadium_id,camera_id,location_desc,install_date,resolution_mp,fps,infrared,pan_range_deg,tilt_range_deg,zoom_factor,maintenance_date,status_text,firmware_version,ip_address,mac_address,vendor_name,warranty_end,last_check_date,uptime_hours,field_of_view_deg,storage_capacity_tb,power_source) VALUES (3,'Cam003','VIPBox','2023-03-20',16,60,1,360,180,8.0,'2024-03-20','Active','v2.1','192.168.3.303','AA:BB:CC:DD:EE:03','VisionPro','2026-03-20','2023-12-15',300,110,4.0,'PoE');

-- Fan merchandise reviews
CREATE TABLE Fan_Merchandise_Reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    merch_id INTEGER,
    fan_id INTEGER,
    rating_int INTEGER,
    review_text TEXT,
    purchase_date TEXT,
    review_date TEXT,
    size TEXT,
    color TEXT,
    style TEXT,
    platform TEXT,
    country_code TEXT,
    sentiment_score REAL,
    helpful_votes INTEGER,
    verified_purchase INTEGER,
    shipping_time_days INTEGER,
    return_reason TEXT,
    review_status TEXT,
    review_source TEXT,
    device_type TEXT,
    ip_address TEXT,
    user_agent TEXT
);
INSERT INTO Fan_Merchandise_Reviews (merch_id,fan_id,rating_int,review_text,purchase_date,review_date,size,color,style,platform,country_code,sentiment_score,helpful_votes,verified_purchase,shipping_time_days,return_reason,review_status,review_source,device_type,ip_address,user_agent) VALUES (101,5001,5,'Great quality and fit','2023-04-01','2023-04-05','L','Red','Jersey','Web','US',0.95,12,1,2,'','Approved','Site','Mobile','203.0.113.5','Mozilla/5.0');
INSERT INTO Fan_Merchandise_Reviews (merch_id,fan_id,rating_int,review_text,purchase_date,review_date,size,color,style,platform,country_code,sentiment_score,helpful_votes,verified_purchase,shipping_time_days,return_reason,review_status,review_source,device_type,ip_address,user_agent) VALUES (102,5002,3,'Average material, expected more','2023-03-15','2023-03-20','M','Blue','Scarf','App','GB',0.45,3,1,5,'Size too small','Pending','App','Desktop','198.51.100.23','Chrome/112.0');
INSERT INTO Fan_Merchandise_Reviews (merch_id,fan_id,rating_int,review_text,purchase_date,review_date,size,color,style,platform,country_code,sentiment_score,helpful_votes,verified_purchase,shipping_time_days,return_reason,review_status,review_source,device_type,ip_address,user_agent) VALUES (103,5003,4,'Nice design, quick delivery','2023-02-28','2023-03-02','S','Black','Cap','Web','CA',0.78,7,1,1,'','Approved','Site','Tablet','192.0.2.12','Safari/16.0');

-- Player scouting heatmaps
CREATE TABLE Player_Scouting_Heatmaps (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    match_id INTEGER,
    segment_number INTEGER,
    heatmap_image_path TEXT,
    avg_speed REAL,
    max_speed REAL,
    distance_covered REAL,
    possession_time_sec INTEGER,
    duels_won INTEGER,
    duels_lost INTEGER,
    passes_completed INTEGER,
    passes_attempted INTEGER,
    shots_on_target INTEGER,
    shots_off_target INTEGER,
    dribbles_successful INTEGER,
    dribbles_attempted INTEGER,
    aerial_duels_won INTEGER,
    aerial_duels_lost INTEGER,
    defensive_actions INTEGER,
    offensive_actions INTEGER,
    created_at TEXT
);
INSERT INTO Player_Scouting_Heatmaps (player_id,match_id,segment_number,heatmap_image_path,avg_speed,max_speed,distance_covered,possession_time_sec,duels_won,duels_lost,passes_completed,passes_attempted,shots_on_target,shots_off_target,dribbles_successful,dribbles_attempted,aerial_duels_won,aerial_duels_lost,defensive_actions,offensive_actions,created_at) VALUES (2001,3001,1,'/heatmaps/2001_3001_1.png',6.5,23.1,9.8,112,5,2,34,45,1,0,3,5,0,0,7,4,'2023-05-01');
INSERT INTO Player_Scouting_Heatmaps (player_id,match_id,segment_number,heatmap_image_path,avg_speed,max_speed,distance_covered,possession_time_sec,duels_won,duels_lost,passes_completed,passes_attempted,shots_on_target,shots_off_target,dribbles_successful,dribbles_attempted,aerial_duels_won,aerial_duels_lost,defensive_actions,offensive_actions,created_at) VALUES (2002,3002,2,'/heatmaps/2002_3002_2.png',5.9,20.4,7.3,95,3,4,28,38,0,1,2,4,1,2,5,3,'2023-05-02');
INSERT INTO Player_Scouting_Heatmaps (player_id,match_id,segment_number,heatmap_image_path,avg_speed,max_speed,distance_covered,possession_time_sec,duels_won,duels_lost,passes_completed,passes_attempted,shots_on_target,shots_off_target,dribbles_successful,dribbles_attempted,aerial_duels_won,aerial_duels_lost,defensive_actions,offensive_actions,created_at) VALUES (2003,3003,3,'/heatmaps/2003_3003_3.png',7.2,25.0,10.4,130,8,1,42,50,2,2,5,6,0,0,10,6,'2023-05-03');

-- Team media social analytics
CREATE TABLE Team_Media_Social_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    platform_name TEXT,
    followers_count INTEGER,
    engagement_rate REAL,
    posts_last_30d INTEGER,
    likes_last_30d INTEGER,
    comments_last_30d INTEGER,
    shares_last_30d INTEGER,
    video_views_last_30d INTEGER,
    reach_last_30d INTEGER,
    impressions_last_30d INTEGER,
    profile_visits_last_30d INTEGER,
    sentiment_score REAL,
    top_hashtag TEXT,
    top_post_id TEXT,
    growth_rate_monthly REAL,
    avg_post_length INTEGER,
    median_response_time_sec INTEGER,
    last_update TEXT
);
INSERT INTO Team_Media_Social_Analytics (team_id,platform_name,followers_count,engagement_rate,posts_last_30d,likes_last_30d,comments_last_30d,shares_last_30d,video_views_last_30d,reach_last_30d,impressions_last_30d,profile_visits_last_30d,sentiment_score,top_hashtag,top_post_id,growth_rate_monthly,avg_post_length,median_response_time_sec,last_update) VALUES (10,'Twitter',125000,2.3,45,35000,1200,800,90000,200000,400000,15000,0.78,'#GoTeam','tpost123',1.5,120,360,'2023-05-01');
INSERT INTO Team_Media_Social_Analytics (team_id,platform_name,followers_count,engagement_rate,posts_last_30d,likes_last_30d,comments_last_30d,shares_last_30d,video_views_last_30d,reach_last_30d,impressions_last_30d,profile_visits_last_30d,sentiment_score,top_hashtag,top_post_id,growth_rate_monthly,avg_post_length,median_response_time_sec,last_update) VALUES (10,'Instagram',210000,3.1,38,48000,2100,950,120000,250000,500000,20000,0.85,'#Victory','ipost456',2.0,140,300,'2023-05-01');
INSERT INTO Team_Media_Social_Analytics (team_id,platform_name,followers_count,engagement_rate,posts_last_30d,likes_last_30d,comments_last_30d,shares_last_30d,video_views_last_30d,reach_last_30d,impressions_last_30d,profile_visits_last_30d,sentiment_score,top_hashtag,top_post_id,growth_rate_monthly,avg_post_length,median_response_time_sec,last_update) VALUES (10,'Facebook',340000,1.8,50,56000,1800,700,80000,300000,600000,25000,0.72,'#Champions','fpost789',1.2,130,420,'2023-05-01');

-- League season sponsorships
CREATE TABLE League_Season_Sponsorships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season_year TEXT,
    sponsor_name TEXT,
    deal_value_musd REAL,
    contract_start TEXT,
    contract_end TEXT,
    activation_budget REAL,
    media_impressions INTEGER,
    brand_exposure_score REAL,
    exclusivity_flag INTEGER,
    renewal_option TEXT,
    sponsor_category TEXT,
    region TEXT,
    contact_person TEXT,
    contact_email TEXT,
    payment_schedule TEXT,
    performance_bonus REAL,
    termination_clause TEXT,
    notes TEXT
);
INSERT INTO League_Season_Sponsorships (league_id,season_year,sponsor_name,deal_value_musd,contract_start,contract_end,activation_budget,media_impressions,brand_exposure_score,exclusivity_flag,renewal_option,sponsor_category,region,contact_person,contact_email,payment_schedule,performance_bonus,termination_clause,notes) VALUES (1,'2023-2024','GlobalTech','45.5','2023-01-01','2025-12-31','10.0',120000000,8.9,1,'OptionA','Technology','Europe','John Doe','john.doe@globaltech.com','Quarterly',5.0,'ForceMajeure','Primary league partner');
INSERT INTO League_Season_Sponsorships (league_id,season_year,sponsor_name,deal_value_musd,contract_start,contract_end,activation_budget,media_impressions,brand_exposure_score,exclusivity_flag,renewal_option,sponsor_category,region,contact_person,contact_email,payment_schedule,performance_bonus,termination_clause,notes) VALUES (2,'2023-2024','EcoEnergy','30.0','2023-03-15','2026-03-14','7.5',90000000,7.4,0,'OptionB','Energy','Asia','Maria Lee','maria.lee@ecoenergy.com','SemiAnnual',3.0,'EarlyTermination','Sustainability focus');
INSERT INTO League_Season_Sponsorships (league_id,season_year,sponsor_name,deal_value_musd,contract_start,contract_end,activation_budget,media_impressions,brand_exposure_score,exclusivity_flag,renewal_option,sponsor_category,region,contact_person,contact_email,payment_schedule,performance_bonus,termination_clause,notes) VALUES (3,'2023-2024','SportWear','22.0','2023-07-01','2024-06-30','5.0',75000000,6.2,1,'OptionC','Apparel','NorthAmerica','Alan Smith','alan.smith@sportwear.com','Annual',2.5,'Breach','Official kit supplier');

-- Stadium weather impact logs
CREATE TABLE Stadium_Weather_Impact_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    match_id INTEGER,
    weather_condition TEXT,
    temperature_c REAL,
    humidity_percent INTEGER,
    wind_speed_kmh REAL,
    precipitation_mm REAL,
    pitch_condition TEXT,
    attendance INTEGER,
    revenue REAL,
    concession_sales REAL,
    incident_count INTEGER,
    delay_minutes INTEGER,
    postponement_flag INTEGER,
    fan_complaint_count INTEGER,
    temperature_change_last_hour REAL,
    wind_direction TEXT,
    uv_index INTEGER,
    air_quality_index INTEGER,
    log_timestamp TEXT
);
INSERT INTO Stadium_Weather_Impact_Logs (stadium_id,match_id,weather_condition,temperature_c,humidity_percent,wind_speed_kmh,precipitation_mm,pitch_condition,attendance,revenue,concession_sales,incident_count,delay_minutes,postponement_flag,fan_complaint_count,temperature_change_last_hour,wind_direction,uv_index,air_quality_index,log_timestamp) VALUES (1,4001,'Clear',22.5,45,12.0,0.0,'Good',45000,850000.0,120000.0,0,0,0,2,0.2,'NE',5,30,'2023-04-20 19:00:00');
INSERT INTO Stadium_Weather_Impact_Logs (stadium_id,match_id,weather_condition,temperature_c,humidity_percent,wind_speed_kmh,precipitation_mm,pitch_condition,attendance,revenue,concession_sales,incident_count,delay_minutes,postponement_flag,fan_complaint_count,temperature_change_last_hour,wind_direction,uv_index,air_quality_index,log_timestamp) VALUES (2,4002,'Rain',16.0,78,8.5,4.3,'Wet',30000,600000.0,95000.0,3,15,0,10, -0.5,'SW',3,55,'2023-04-21 15:30:00');
INSERT INTO Stadium_Weather_Impact_Logs (stadium_id,match_id,weather_condition,temperature_c,humidity_percent,wind_speed_kmh,precipitation_mm,pitch_condition,attendance,revenue,concession_sales,incident_count,delay_minutes,postponement_flag,fan_complaint_count,temperature_change_last_hour,wind_direction,uv_index,air_quality_index,log_timestamp) VALUES (3,4003,'Snow', -2.0,92,5.0,1.2,'Sloppy',12000,300000.0,40000.0,7,45,1,20, -1.0,'N',1,70,'2023-01-10 13:00:00');

-- Broadcast channel offerings
CREATE TABLE Broadcast_Channel_Offerings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    channel_name TEXT,
    package_name TEXT,
    start_date TEXT,
    end_date TEXT,
    hd_available INTEGER,
    four_k_available INTEGER,
    live_stream_flag INTEGER,
    on_demand_flag INTEGER,
    subscription_price_usd REAL,
    advertising_slots INTEGER,
    max_viewers_estimate INTEGER,
    regional_rights TEXT,
    language TEXT,
    commentary_team TEXT,
    broadcast_quality TEXT,
    transmission_method TEXT,
    contract_value_usd REAL,
    notes TEXT
);
INSERT INTO Broadcast_Channel_Offerings (league_id,channel_name,package_name,start_date,end_date,hd_available,four_k_available,live_stream_flag,on_demand_flag,subscription_price_usd,advertising_slots,max_viewers_estimate,regional_rights,language,commentary_team,broadcast_quality,transmission_method,contract_value_usd,notes) VALUES (1,'SportNet','Premium','2023-01-01','2025-12-31',1,1,1,1,24.99,150,2000000,'Global','English','John Coach','HD','Satellite',50000000,'Primary broadcast partner');
INSERT INTO Broadcast_Channel_Offerings (league_id,channel_name,package_name,start_date,end_date,hd_available,four_k_available,live_stream_flag,on_demand_flag,subscription_price_usd,advertising_slots,max_viewers_estimate,regional_rights,language,commentary_team,broadcast_quality,transmission_method,contract_value_usd,notes) VALUES (2,'LocalTV','Standard','2023-06-01','2024-05-31',1,0,1,0,9.99,80,800000,'Regional','Spanish','Ana Perez','SD','Cable',12000000,'Secondary regional feed');
INSERT INTO Broadcast_Channel_Offerings (league_id,channel_name,package_name,start_date,end_date,hd_available,four_k_available,live_stream_flag,on_demand_flag,subscription_price_usd,advertising_slots,max_viewers_estimate,regional_rights,language,commentary_team,broadcast_quality,transmission_method,contract_value_usd,notes) VALUES (3,'StreamPlus','Elite','2023-03-15','2026-03-14',1,1,1,1,14.99,200,2500000,'International','Multiple','Various','4K','Internet',75000000,'Digital streaming exclusive');

-- Medical ongoing treatments
CREATE TABLE Medical_Ongoing_Treatments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    treatment_type TEXT,
    start_date TEXT,
    expected_end_date TEXT,
    provider_name TEXT,
    dosage_mg REAL,
    frequency_per_day INTEGER,
    administration_route TEXT,
    side_effects TEXT,
    progress_notes TEXT,
    last_review_date TEXT,
    next_appointment_date TEXT,
    compliance_rate_percent REAL,
    therapist_id INTEGER,
    insurance_covered_flag INTEGER,
    cost_usd REAL,
    outcome_score REAL,
    treatment_status TEXT,
    comments TEXT
);
INSERT INTO Medical_Ongoing_Treatments (player_id,treatment_type,start_date,expected_end_date,provider_name,dosage_mg,frequency_per_day,administration_route,side_effects,progress_notes,last_review_date,next_appointment_date,compliance_rate_percent,therapist_id,insurance_covered_flag,cost_usd,outcome_score,treatment_status,comments) VALUES (2001,'Physiotherapy','2023-03-01','2023-06-01','HealWell Clinic',0,1,'Manual','None','Improved range of motion','2023-04-15','2023-05-15',95.0,301,1,1200.0,8.5,'Active','No complications');
INSERT INTO Medical_Ongoing_Treatments (player_id,treatment_type,start_date,expected_end_date,provider_name,dosage_mg,frequency_per_day,administration_route,side_effects,progress_notes,last_review_date,next_appointment_date,compliance_rate_percent,therapist_id,insurance_covered_flag,cost_usd,outcome_score,treatment_status,comments) VALUES (2002,'Nutritional Supplement','2023-02-10','2023-08-10','SportNutrition Ltd',500,2,'Oral','Mild stomach upset','Weight stable, energy up','2023-04-10','2023-05-10',88.0,302,1,800.0,7.2,'Active','Adjust dosage if symptoms persist');
INSERT INTO Medical_Ongoing_Treatments (player_id,treatment_type,start_date,expected_end_date,provider_name,dosage_mg,frequency_per_day,administration_route,side_effects,progress_notes,last_review_date,next_appointment_date,compliance_rate_percent,therapist_id,insurance_covered_flag,cost_usd,outcome_score,treatment_status,comments) VALUES (2003,'Hydrotherapy','2023-04-01','2023-07-01','AquaHealth Center',0,1,'Water','None','Swelling reduced','2023-04-20','2023-05-20',92.0,303,0,1500.0,8.0,'Active','Consider adding massage therapy');

-- Travel accommodation batches
CREATE TABLE Travel_Accommodation_Batches (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    travel_batch_number TEXT,
    departure_date TEXT,
    return_date TEXT,
    hotel_name TEXT,
    room_type TEXT,
    num_rooms INTEGER,
    total_cost_usd REAL,
    flight_number TEXT,
    airline TEXT,
    seat_class TEXT,
    travel_insurance_provider TEXT,
    insurance_policy_number TEXT,
    luggage_allowance_kg INTEGER,
    meal_plan TEXT,
    ground_transport TEXT,
    itinerary_url TEXT,
    coordinator_name TEXT,
    notes TEXT
);
INSERT INTO Travel_Accommodation_Batches (team_id,travel_batch_number,departure_date,return_date,hotel_name,room_type,num_rooms,total_cost_usd,flight_number,airline,seat_class,travel_insurance_provider,insurance_policy_number,luggage_allowance_kg,meal_plan,ground_transport,itinerary_url,coordinator_name,notes) VALUES (10,'B001','2023-06-01','2023-06-10','Grand Hotel','Deluxe',12,85000.0,'AF123','AirFrance','Business','GlobalInsure','POL123456',30,'Full Board','Coach Bus','http://travel.example.com/itinerary/B001','Emily Clark','Pre‑season tour');
INSERT INTO Travel_Accommodation_Batches (team_id,travel_batch_number,departure_date,return_date,hotel_name,room_type,num_rooms,total_cost_usd,flight_number,airline,seat_class,travel_insurance_provider,insurance_policy_number,luggage_allowance_kg,meal_plan,ground_transport,itinerary_url,coordinator_name,notes) VALUES (11,'B002','2023-07-15','2023-07-22','City Lodge','Standard',8,42000.0,'BA456','BritishAirways','Economy','TravelSafe','POL654321',20,'Half Board','Van','http://travel.example.com/itinerary/B002','Mark Davis','Mid‑season friendly');
INSERT INTO Travel_Accommodation_Batches (team_id,travel_batch_number,departure_date,return_date,hotel_name,room_type,num_rooms,total_cost_usd,flight_number,airline,seat_class,travel_insurance_provider,insurance_policy_number,luggage_allowance_kg,meal_plan,ground_transport,itinerary_url,coordinator_name,notes) VALUES (12,'B003','2023-08-05','2023-08-12','Beach Resort','Suite',6,68000.0,'DL789','Delta','First','SecureTravel','POL789012',35,'All Inclusive','Limousine','http://travel.example.com/itinerary/B003','Sofia Martinez','Pre‑playoff trip');

-- Community fundraising events
CREATE TABLE Community_Fundraising_Events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    event_name TEXT,
    event_date TEXT,
    location TEXT,
    target_amount_usd REAL,
    amount_raised_usd REAL,
    num_participants INTEGER,
    sponsor_name TEXT,
    organizer_contact TEXT,
    volunteer_count INTEGER,
    media_coverage_flag INTEGER,
    ticket_price_usd REAL,
    merchandise_sold_usd REAL,
    food_beverage_sales_usd REAL,
    net_profit_usd REAL,
    cause_description TEXT,
    donation_distribution_percent REAL,
    post_event_report_url TEXT,
    notes TEXT
);
INSERT INTO Community_Fundraising_Events (club_id,event_name,event_date,location,target_amount_usd,amount_raised_usd,num_participants,sponsor_name,organizer_contact,volunteer_count,media_coverage_flag,ticket_price_usd,merchandise_sold_usd,food_beverage_sales_usd,net_profit_usd,cause_description,donation_distribution_percent,post_event_report_url,notes) VALUES (1,'Charity Marathon','2023-09-10','Central Park',50000.0,62000.0,1500,'FitLife','alice@fitlife.com',200,1,30.0,8000.0,12000.0,15000.0,'Youth sports programs',80.0,'http://club.example.com/reports/marathon','Exceeded target');
INSERT INTO Community_Fundraising_Events (club_id,event_name,event_date,location,target_amount_usd,amount_raised_usd,num_participants,sponsor_name,organizer_contact,volunteer_count,media_coverage_flag,ticket_price_usd,merchandise_sold_usd,food_beverage_sales_usd,net_profit_usd,cause_description,donation_distribution_percent,post_event_report_url,notes) VALUES (2,'Gala Dinner','2023-10-22','Grand Ballroom',100000.0,95000.0,300,'LuxuryCars','bob@luxurycars.com',50,1,150.0,20000.0,15000.0,25000.0,'Hospital equipment',75.0,'http://club.example.com/reports/gala','Close to goal');
INSERT INTO Community_Fundraising_Events (club_id,event_name,event_date,location,target_amount_usd,amount_raised_usd,num_participants,sponsor_name,organizer_contact,volunteer_count,media_coverage_flag,ticket_price_usd,merchandise_sold_usd,food_beverage_sales_usd,net_profit_usd,cause_description,donation_distribution_percent,post_event_report_url,notes) VALUES (3,'Family Fun Day','2023-08-05','Stadium Grounds',30000.0,28000.0,800,'HappyFoods','carol@happyfoods.com',120,0,20.0,4000.0,6000.0,5000.0,'Local school supplies',85.0,'http://club.example.com/reports/funday','Good community response');