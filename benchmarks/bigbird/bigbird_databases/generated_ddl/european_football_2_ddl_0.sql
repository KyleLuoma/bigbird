-- Weather conditions observed on match days
CREATE TABLE Weather_Conditions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    observation_date TEXT,
    city TEXT,
    country TEXT,
    temperature_c INTEGER,
    humidity_pct INTEGER,
    wind_speed_kph INTEGER,
    precipitation_mm REAL,
    sky_condition TEXT,
    visibility_km REAL,
    pressure_hpa INTEGER,
    uv_index INTEGER,
    dew_point_c INTEGER,
    cloud_cover_pct INTEGER,
    sunrise_time TEXT,
    sunset_time TEXT,
    feels_like_c INTEGER,
    heat_index_c INTEGER,
    wind_gust_kph INTEGER,
    weather_station_id TEXT,
    notes TEXT
);
INSERT INTO Weather_Conditions (observation_date,city,country,temperature_c,humidity_pct,wind_speed_kph,precipitation_mm,sky_condition,visibility_km,pressure_hpa,uv_index,dew_point_c,cloud_cover_pct,sunrise_time,sunset_time,feels_like_c,heat_index_c,wind_gust_kph,weather_station_id,notes) VALUES ('2025-04-01','London','UK',12,78,15,0.0,'Cloudy',10,1015,3,7,85,'06:15','19:45',11,13,20,'WS001','Clear day');
INSERT INTO Weather_Conditions (observation_date,city,country,temperature_c,humidity_pct,wind_speed_kph,precipitation_mm,sky_condition,visibility_km,pressure_hpa,uv_index,dew_point_c,cloud_cover_pct,sunrise_time,sunset_time,feels_like_c,heat_index_c,wind_gust_kph,weather_station_id,notes) VALUES ('2025-04-02','Madrid','Spain',22,45,10,0.0,'Sunny',15,1012,7,5,10,'07:10','20:30',22,26,12,'WS002','Warm');
INSERT INTO Weather_Conditions (observation_date,city,country,temperature_c,humidity_pct,wind_speed_kph,precipitation_mm,sky_condition,visibility_km,pressure_hpa,uv_index,dew_point_c,cloud_cover_pct,sunrise_time,sunset_time,feels_like_c,heat_index_c,wind_gust_kph,weather_station_id,notes) VALUES ('2025-04-03','Berlin','Germany',8,85,20,2.5,'Rain',8,1018,2,6,90,'06:40','20:00',7,9,28,'WS003','Light shower');

-- Referee profiles and statistics
CREATE TABLE Referee_Profiles (
    referee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    birthdate TEXT,
    nationality TEXT,
    height_cm INTEGER,
    weight_kg INTEGER,
    years_experience INTEGER,
    matches_officiated INTEGER,
    yellow_cards_given INTEGER,
    red_cards_given INTEGER,
    avg_fouls_per_match REAL,
    avg_offsides_per_match REAL,
    fitness_score INTEGER,
    languages_spoken TEXT,
    certification_level TEXT,
    last_training_date TEXT,
    preferred_style TEXT,
    penalty_accuracy_pct REAL,
    notes TEXT
);
INSERT INTO Referee_Profiles (first_name,last_name,birthdate,nationality,height_cm,weight_kg,years_experience,matches_officiated,yellow_cards_given,red_cards_given,avg_fouls_per_match,avg_offsides_per_match,fitness_score,languages_spoken,certification_level,last_training_date,preferred_style,penalty_accuracy_pct,notes) VALUES ('John','Doe','1975-06-15','England',185,78,20,1500,350,15,3.2,0.5,88,'English,Spanish','Level1','2024-12-01','Strict',92.5,'Veteran referee');
INSERT INTO Referee_Profiles (first_name,last_name,birthdate,nationality,height_cm,weight_kg,years_experience,matches_officiated,yellow_cards_given,red_cards_given,avg_fouls_per_match,avg_offsides_per_match,fitness_score,languages_spoken,certification_level,last_training_date,preferred_style,penalty_accuracy_pct,notes) VALUES ('Luis','Martinez','1980-03-22','Spain',178,73,15,1200,280,10,2.9,0.6,85,'Spanish,English','Level2','2024-11-15','Playful',89.0,'Fast paced');
INSERT INTO Referee_Profiles (first_name,last_name,birthdate,nationality,height_cm,weight_kg,years_experience,matches_officiated,yellow_cards_given,red_cards_given,avg_fouls_per_match,avg_offsides_per_match,fitness_score,languages_spoken,certification_level,last_training_date,preferred_style,penalty_accuracy_pct,notes) VALUES ('Marco','Rossi','1985-09-08','Italy',182,80,12,950,210,8,3.0,0.55,90,'Italian,English','Level1','2024-10-20','Balanced',91.0,'Rising star';

-- Stadium facilities and amenities
CREATE TABLE Stadium_Facilities (
    facility_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_name TEXT,
    location_city TEXT,
    location_country TEXT,
    seating_capacity INTEGER,
    grass_type TEXT,
    roof_type TEXT,
    floodlight_lumens INTEGER,
    vip_boxes INTEGER,
    parking_spaces INTEGER,
    concession_stands INTEGER,
    medical_center_beds INTEGER,
    locker_rooms INTEGER,
    press_rooms INTEGER,
    wifi_coverage_pct INTEGER,
    accessibility_rating INTEGER,
    construction_year INTEGER,
    renovation_year INTEGER,
    sustainability_cert TEXT,
    sponsor_name TEXT,
    notes TEXT
);
INSERT INTO Stadium_Facilities (stadium_name,location_city,location_country,seating_capacity,grass_type,roof_type,floodlight_lumens,vip_boxes,parking_spaces,concession_stands,medical_center_beds,locker_rooms,press_rooms,wifi_coverage_pct,accessibility_rating,construction_year,renovation_year,sustainability_cert,sponsor_name,notes) VALUES ('Northgate Arena','Manchester','UK',50000,'Natural','Open',1800000,120,2500,80,12,30,10,95,9,1998,2015,'LEEDGold','TechCorp','Modern venue');
INSERT INTO Stadium_Facilities (stadium_name,location_city,location_country,seating_capacity,grass_type,roof_type,floodlight_lumens,vip_boxes,parking_spaces,concession_stands,medical_center_beds,locker_rooms,press_rooms,wifi_coverage_pct,accessibility_rating,construction_year,renovation_year,sustainability_cert,sponsor_name,notes) VALUES ('Sunset Stadium','Lisbon','Portugal',35000,'Hybrid','Closed',1500000,80,1800,60,8,20,6,90,8,2005,2020,'BREEAM','EnergyPlus','Cozy');
INSERT INTO Stadium_Facilities (stadium_name,location_city,location_country,seating_capacity,grass_type,roof_type,floodlight_lumens,vip_boxes,parking_spaces,concession_stands,medical_center_beds,locker_rooms,press_rooms,wifi_coverage_pct,accessibility_rating,construction_year,renovation_year,sustainability_cert,sponsor_name,notes) VALUES ('Alpine Park','Zurich','Switzerland',28000,'Artificial','Open',1300000,45,1200,40,5,15,4,85,9,2012,2018,'LEEDSilver','AlpineCo','Scenic view');

-- Broadcast network details
CREATE TABLE Broadcast_Networks (
    network_id INTEGER PRIMARY KEY AUTOINCREMENT,
    network_name TEXT,
    country TEXT,
    headquarters_city TEXT,
    founded_year INTEGER,
    owner_company TEXT,
    channels_available INTEGER,
    avg_viewership_millions REAL,
    broadcast_type TEXT,
    primary_language TEXT,
    satellite_coverage TEXT,
    streaming_platform TEXT,
    sports_rights TEXT,
    contact_email TEXT,
    website TEXT,
    annual_revenue_millions REAL,
    employee_count INTEGER,
    rating_agency TEXT,
    broadcast_standard TEXT,
    notes TEXT
);
INSERT INTO Broadcast_Networks (network_name,country,headquarters_city,founded_year,owner_company,channels_available,avg_viewership_millions,broadcast_type,primary_language,satellite_coverage,streaming_platform,sports_rights,contact_email,website,annual_revenue_millions,employee_count,rating_agency,broadcast_standard,notes) VALUES ('EuroSport','UK','London',1992,'EuroMedia',12,3.4,'Television','English','Global','EuroStream','Football, Tennis','info@eurosport.com','www.eurosport.com',850.5,3200,'Moody','HD','Leading sports channel');
INSERT INTO Broadcast_Networks (network_name,country,headquarters_city,founded_year,owner_company,channels_available,avg_viewership_millions,broadcast_type,primary_language,satellite_coverage,streaming_platform,sports_rights,contact_email,website,annual_revenue_millions,employee_count,rating_agency,broadcast_standard,notes) VALUES ('SportVision','Spain','Madrid',2001,'VisionGroup',8,2.1,'Television','Spanish','Europe','VisionPlay','Football, Basketball','contact@sportvision.es','www.sportvision.es',420.7,1900,'S&P','HD','Fast growing network');
INSERT INTO Broadcast_Networks (network_name,country,headquarters_city,founded_year,owner_company,channels_available,avg_viewership_millions,broadcast_type,primary_language,satellite_coverage,streaming_platform,sports_rights,contact_email,website,annual_revenue_millions,employee_count,rating_agency,broadcast_standard,notes) VALUES ('LiveArena','Germany','Berlin',1998,'ArenaCorp',10,2.8,'Television','German','Europe','ArenaLive','Football, Handball','support@livearena.de','www.livearena.de',610.3,2500,'Fitch','FullHD','Strong digital presence');

-- Ticket sales per event
CREATE TABLE Ticket_Sales (
    sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    stadium_name TEXT,
    sale_date TEXT,
    ticket_type TEXT,
    price_usd REAL,
    quantity_sold INTEGER,
    total_revenue_usd REAL,
    buyer_age_group TEXT,
    buyer_country TEXT,
    purchase_channel TEXT,
    discount_code TEXT,
    seats_assigned TEXT,
    vip_access TEXT,
    refund_requested INTEGER,
    refund_processed INTEGER,
    sales_rep_id INTEGER,
    payment_method TEXT,
    currency TEXT,
    notes TEXT
);
INSERT INTO Ticket_Sales (event_id,stadium_name,sale_date,ticket_type,price_usd,quantity_sold,total_revenue_usd,buyer_age_group,buyer_country,purchase_channel,discount_code,seats_assigned,vip_access,refund_requested,refund_processed,sales_rep_id,payment_method,currency,notes) VALUES (101,'Northgate Arena','2025-03-15','Standard',75.00,1200,90000,'Adult','UK','Online','SPRING23','A12-A1312','No',0,0,45,'CreditCard','USD','Early bird');
INSERT INTO Ticket_Sales (event_id,stadium_name,sale_date,ticket_type,price_usd,quantity_sold,total_revenue_usd,buyer_age_group,buyer_country,purchase_channel,discount_code,seats_assigned,vip_access,refund_requested,refund_processed,sales_rep_id,payment_method,currency,notes) VALUES (102,'Sunset Stadium','2025-04-02','Family',150.00,300,45000,'Family','Portugal','BoxOffice','FAM2025','B20-B2299','Yes',1,1,12,'PayPal','EUR','Family pack');
INSERT INTO Ticket_Sales (event_id,stadium_name,sale_date,ticket_type,price_usd,quantity_sold,total_revenue_usd,buyer_age_group,buyer_country,purchase_channel,discount_code,seats_assigned,vip_access,refund_requested,refund_processed,sales_rep_id,payment_method,currency,notes) VALUES (103,'Alpine Park','2025-05-10','Premium',200.00,150,30000,'Adult','Switzerland','Online','PREM5','C5-C1549','Yes',0,0,33,'DebitCard','CHF','Premium seating');

-- Merchandise inventory catalogue
CREATE TABLE Merchandise_Inventory (
    item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    category TEXT,
    subcategory TEXT,
    brand TEXT,
    model TEXT,
    size TEXT,
    color TEXT,
    material TEXT,
    wholesale_price_usd REAL,
    retail_price_usd REAL,
    stock_quantity INTEGER,
    reorder_level INTEGER,
    supplier_name TEXT,
    supplier_contact TEXT,
    warehouse_location TEXT,
    last_stock_date TEXT,
    sales_last_month INTEGER,
    rating REAL,
    warranty_months INTEGER,
    notes TEXT
);
INSERT INTO Merchandise_Inventory (category,subcategory,brand,model,size,color,material,wholesale_price_usd,retail_price_usd,stock_quantity,reorder_level,supplier_name,supplier_contact,warehouse_location,last_stock_date,sales_last_month,rating,warranty_months,notes) VALUES ('Apparel','Jersey','TeamWear','Home2025','L','Red','Polyester',30.00,55.00,500,100,'SportSupplies','contact@sportsupplies.com','WH1','2024-12-20',120,4.5,12,'Best seller');
INSERT INTO Merchandise_Inventory (category,subcategory,brand,model,size,color,material,wholesale_price_usd,retail_price_usd,stock_quantity,reorder_level,supplier_name,supplier_contact,warehouse_location,last_stock_date,sales_last_month,rating,warranty_months,notes) VALUES ('Apparel','Jersey','TeamWear','Away2025','M','Blue','Polyester',32.00,58.00,400,80,'SportSupplies','contact@sportsupplies.com','WH2','2024-12-18',95,4.3,12,'Second best');
INSERT INTO Merchandise_Inventory (category,subcategory,brand,model,size,color,material,wholesale_price_usd,retail_price_usd,stock_quantity,reorder_level,supplier_name,supplier_contact,warehouse_location,last_stock_date,sales_last_month,rating,warranty_months,notes) VALUES ('Accessories','Scarf','FanGear','Winter2025','OneSize','White','Wool',8.00,18.00,300,50,'FanGearCo','info@fangearco.com','WH1','2024-12-25',210,4.7,0,'Winter collection');

-- Fan club memberships
CREATE TABLE Fan_Club_Memberships (
    membership_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_club_name TEXT,
    member_name TEXT,
    member_email TEXT,
    join_date TEXT,
    membership_level TEXT,
    annual_fee_usd REAL,
    points_earned INTEGER,
    favorite_team TEXT,
    activities_participated INTEGER,
    newsletter_subscribed INTEGER,
    referral_code TEXT,
    last_event_attended TEXT,
    social_media_handle TEXT,
    region TEXT,
    age INTEGER,
    gender TEXT,
    loyalty_score REAL,
    notes TEXT
);
INSERT INTO Fan_Club_Memberships (fan_club_name,member_name,member_email,join_date,membership_level,annual_fee_usd,points_earned,favorite_team,activities_participated,newsletter_subscribed,referral_code,last_event_attended,social_media_handle,region,age,gender,loyalty_score,notes) VALUES ('Red Lions Supporters','Alice Smith','alice.smith@example.com','2023-05-10','Gold',120.00,2400,'Northgate Arena',15,1,'REF123','2025-03-12','aliceLions','UK',29,'F',89.5,'Active member');
INSERT INTO Fan_Club_Memberships (fan_club_name,member_name,member_email,join_date,membership_level,annual_fee_usd,points_earned,favorite_team,activities_participated,newsletter_subscribed,referral_code,last_event_attended,social_media_handle,region,age,gender,loyalty_score,notes) VALUES ('Sunset Ultras','Bob Martinez','bob.m@example.com','2022-09-22','Silver',85.00,1800,'Sunset Stadium',10,1,'REF456','2025-02-28','bobU12','Portugal',35,'M',76.0,'Regular attendee');
INSERT INTO Fan_Club_Memberships (fan_club_name,member_name,member_email,join_date,membership_level,annual_fee_usd,points_earned,favorite_team,activities_participated,newsletter_subscribed,referral_code,last_event_attended,social_media_handle,region,age,gender,loyalty_score,notes) VALUES ('Alpine Fans','Clara Keller','clara.k@example.com','2024-01-15','Bronze',60.00,950,'Alpine Park',5,0,'REF789','2025-01-20','claraAlp','Switzerland',27,'F',64.3,'New member');

-- Sponsorship deals overview
CREATE TABLE Sponsorship_Deals (
    deal_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name TEXT,
    sport_category TEXT,
    contract_start TEXT,
    contract_end TEXT,
    amount_usd REAL,
    activation_fee_usd REAL,
    exclusivity TEXT,
    branding_areas TEXT,
    deliverables TEXT,
    performance_bonus_usd REAL,
    termination_clause TEXT,
    renewal_option TEXT,
    contact_person TEXT,
    contact_email TEXT,
    payment_schedule TEXT,
    total_exposure_hours INTEGER,
    notes TEXT
);
INSERT INTO Sponsorship_Deals (sponsor_name,sport_category,contract_start,contract_end,amount_usd,activation_fee_usd,exclusivity,branding_areas,deliverables,performance_bonus_usd,termination_clause,renewal_option,contact_person,contact_email,payment_schedule,total_exposure_hours,notes) VALUES ('TechCorp','Football','2024-01-01','2028-12-31',5000000,250000,'Full','Stadium signage,Kit','30 ads per season',500000,'30days','Option to extend 2 years','John Doe','john.doe@techcorp.com','Quarterly',12000,'Flagship sponsor');
INSERT INTO Sponsorship_Deals (sponsor_name,sport_category,contract_start,contract_end,amount_usd,activation_fee_usd,exclusivity,branding_areas,deliverables,performance_bonus_usd,termination_clause,renewal_option,contact_person,contact_email,payment_schedule,total_exposure_hours,notes) VALUES ('EnergyPlus','Basketball','2025-03-01','2027-02-28',3000000,150000,'Partial','LED boards,Community events','20 socials per season',250000,'60days','Option to extend 1 year','Maria Lopez','m.lopez@energyplus.com','SemiAnnual',8000,'Secondary sponsor');
INSERT INTO Sponsorship_Deals (sponsor_name,sport_category,contract_start,contract_end,amount_usd,activation_fee_usd,exclusivity,branding_areas,deliverables,performance_bonus_usd,termination_clause,renewal_option,contact_person,contact_email,payment_schedule,total_exposure_hours,notes) VALUES ('AlpineCo','WinterSports','2023-06-15','2026-06-14',2000000,100000,'Exclusive','Team jackets,Peak banners','15 events per season',150000,'45days','Option to extend 3 years','Lukas Meier','l.meier@alpineco.com','Annual',5000,'Focused on winter events');

-- Training camp logistics
CREATE TABLE Training_Camps (
    camp_id INTEGER PRIMARY KEY AUTOINCREMENT,
    camp_name TEXT,
    host_country TEXT,
    host_city TEXT,
    facility_name TEXT,
    start_date TEXT,
    end_date TEXT,
    number_of_teams INTEGER,
    coaches_involved INTEGER,
    total_players INTEGER,
    daily_sessions INTEGER,
    focus_areas TEXT,
    accommodation_type TEXT,
    meals_included TEXT,
    transport_arranged TEXT,
    medical_staff_present INTEGER,
    weather_conditions TEXT,
    budget_usd REAL,
    sponsor_name TEXT,
    notes TEXT
);
INSERT INTO Training_Camps (camp_name,host_country,host_city,facility_name,start_date,end_date,number_of_teams,coaches_involved,total_players,daily_sessions,focus_areas,accommodation_type,meals_included,transport_arranged,medical_staff_present,weather_conditions,budget_usd,sponsor_name,notes) VALUES ('Spring Prep Camp','Germany','Munich','Olympic Center','2025-03-01','2025-03-15',8,12,200,3,'Fitness, Tactics','Hotel','Full board','Shuttle buses',5,'Mild','750000','TechCorp','Pre‑season preparation');
INSERT INTO Training_Camps (camp_name,host_country,host_city,facility_name,start_date,end_date,number_of_teams,coaches_involved,total_players,daily_sessions,focus_areas,accommodation_type,meals_included,transport_arranged,medical_staff_present,weather_conditions,budget_usd,sponsor_name,notes) VALUES ('Mid‑Season Camp','Spain','Seville','LaFinca Sports','2025-06-10','2025-06-20',5,8,130,2,'Set‑pieces, Conditioning','Resort','Half board','Private vans',3,'Warm','500000','EnergyPlus','Mid‑season boost');
INSERT INTO Training_Camps (camp_name,host_country,host_city,facility_name,start_date,end_date,number_of_teams,coaches_involved,total_players,daily_sessions,focus_areas,accommodation_type,meals_included,transport_arranged,medical_staff_present,weather_conditions,budget_usd,sponsor_name,notes) VALUES ('Winter Skills Camp','Switzerland','Geneva','Alpine Training Center','2025-12-05','2025-12-15',4,6,100,4,'Technical drills, Mental prep','Cabins','Breakfast only','Charter flights',4,'Cold','600000','AlpineCo','Focused on technical skills');

-- Injury log for athletes (non‑player entities)
CREATE TABLE Injury_Log (
    injury_id INTEGER PRIMARY KEY AUTOINCREMENT,
    athlete_id INTEGER,
    athlete_name TEXT,
    injury_type TEXT,
    date_reported TEXT,
    expected_recovery_days INTEGER,
    severity_level TEXT,
    treatment_given TEXT,
    medical_staff TEXT,
    matches_missed INTEGER,
    rehab_sessions INTEGER,
    cause TEXT,
    injury_location TEXT,
    notes TEXT,
    follow_up_date TEXT,
    prognosis TEXT,
    previous_injuries INTEGER,
    risk_factor TEXT,
    insurance_claimed INTEGER,
    rehabilitation_center TEXT
);
INSERT INTO Injury_Log (athlete_id,athlete_name,injury_type,date_reported,expected_recovery_days,severity_level,treatment_given,medical_staff,matches_missed,rehab_sessions,cause,injury_location,notes,follow_up_date,prognosis,previous_injuries,risk_factor,insurance_claimed,rehabilitation_center) VALUES (301,'Markus Klein','Hamstring Strain','2025-02-20',21,'Moderate','Physiotherapy','Dr. Stein',2,10,'Sprint','Posterior thigh','Returned to training','2025-03-15','Full recovery','1','Insufficient warm‑up','1','SportMed Center');
INSERT INTO Injury_Log (athlete_id,athlete_name,injury_type,date_reported,expected_recovery_days,severity_level,treatment_given,medical_staff,matches_missed,rehab_sessions,cause,injury_location,notes,follow_up_date,prognosis,previous_injuries,risk_factor,insurance_claimed,rehabilitation_center) VALUES (302,'Luis Gomez','Ankle Sprain','2025-04-05',14,'Mild','RICE protocol','Dr. Alvarez',1,5,'Landing','Lateral ankle','No complications','2025-04-20','Full recovery','0','Previous ankle issues','0','HealthPlus Clinic');
INSERT INTO Injury_Log (athlete_id,athlete_name,injury_type,date_reported,expected_recovery_days,severity_level,treatment_given,medical_staff,matches_missed,rehab_sessions,cause,injury_location,notes,follow_up_date,prognosis,previous_injuries,risk_factor,insurance_claimed,rehabilitation_center) VALUES (303,'Anna Novak','Concussion','2025-05-12',7,'Severe','Neurological monitoring','Dr. Meyer',0,3,'Head collision','Head','Monitored for 48h','2025-05-19','Full recovery','2','Aggressive playing style','1','NeuroCare Center');