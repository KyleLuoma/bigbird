-- Medical facilities associated with clubs, but not containing player or match data
CREATE TABLE Medical_Facilities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    facility_name TEXT,
    facility_type TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    phone_number TEXT,
    email TEXT,
    capacity_beds INTEGER,
    num_doctors INTEGER,
    num_nurses INTEGER,
    emergency_services TEXT,
    imaging_services TEXT,
    physiotherapy_rooms INTEGER,
    operating_theaters INTEGER,
    affiliation_club_id INTEGER,
    opening_year INTEGER,
    accreditation_body TEXT,
    notes TEXT
);

INSERT INTO Medical_Facilities (facility_name,facility_type,address,city,state,zip_code,phone_number,email,capacity_beds,num_doctors,num_nurses,emergency_services,imaging_services,physiotherapy_rooms,operating_theaters,affiliation_club_id,opening_year,accreditation_body,notes) VALUES
('Healing Center','Hospital','123 Health St','MediCity','StateX','12345','5551234','contact@healingcenter.com',120,25,60,'Yes','MRI,CT',4,2,1,1995,'JointCommission','Primary medical facility'),
('Sports Rehab Unit','Clinic','456 Recovery Rd','FitTown','StateY','23456','5555678','info@rehabunit.org',30,8,15,'No','XRay',2,0,2,2002,'HealthBoard','Specialized for athlete recovery'),
('Club Medics HQ','Medical Office','789 Wellness Ave','PlayVille','StateZ','34567','5559012','admin@clubmedics.com',10,4,10,'No','Ultrasound',1,0,3,2010,'SportsMedCouncil','Administrative hub for club medical staff');

-- Travel itineraries for club related trips (training camps, away fixtures, etc.)
CREATE TABLE Travel_Itineraries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    itinerary_name TEXT,
    start_date TEXT,
    end_date TEXT,
    departure_city TEXT,
    arrival_city TEXT,
    transport_mode TEXT,
    carrier_name TEXT,
    flight_number TEXT,
    bus_route TEXT,
    train_number TEXT,
    accommodation_name TEXT,
    room_type TEXT,
    num_nights INTEGER,
    budget_usd REAL,
    sponsor_id INTEGER,
    notes TEXT,
    approved_by TEXT,
    risk_level TEXT,
    contingency_plan TEXT,
    itinerary_status TEXT
);

INSERT INTO Travel_Itineraries (itinerary_name,start_date,end_date,departure_city,arrival_city,transport_mode,carrier_name,flight_number,bus_route,train_number,accommodation_name,room_type,num_nights,budget_usd,sponsor_id,notes,approved_by,risk_level,contingency_plan,itinerary_status) VALUES
('Preseason Camp Spain','2023-07-01','2023-07-14','London','Madrid','Air','AirFly','AF123','', '', 'Hotel Sol','Double',13,45000.00,5,'Training and friendly matches','DirectorA','Medium','Alternate flight booking','Confirmed'),
('Winter Training Norway','2023-12-05','2023-12-12','Berlin','Oslo','Train','EuroRail','', '', 'ER87', 'Snow Lodge','Single',7,22000.50,3,'Focus on endurance','DirectorB','Low','Reschedule to March','Pending'),
('Charity Tour USA','2024-04-10','2024-04-20','Paris','NewYork','Air','SkyLines','SL456','', 'NYC79', 'City Hotel','Suite',10,80000.75,8,'Community outreach events','DirectorC','High','Cancel if security alert','Approved');

-- Inventory of equipment across clubs and departments
CREATE TABLE Equipment_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_type TEXT,
    brand TEXT,
    model TEXT,
    serial_number TEXT,
    purchase_date TEXT,
    warranty_expiry TEXT,
    cost_usd REAL,
    assigned_team_id INTEGER,
    assigned_department TEXT,
    condition_status TEXT,
    last_maintenance_date TEXT,
    maintenance_interval_days INTEGER,
    storage_location TEXT,
    insurance_policy_number TEXT,
    depreciation_rate REAL,
    current_value_usd REAL,
    last_audit_date TEXT,
    auditor_name TEXT,
    notes TEXT,
    compliance_flag TEXT
);

INSERT INTO Equipment_Inventory (equipment_type,brand,model,serial_number,purchase_date,warranty_expiry,cost_usd,assigned_team_id,assigned_department,condition_status,last_maintenance_date,maintenance_interval_days,storage_location,insurance_policy_number,depreciation_rate,current_value_usd,last_audit_date,auditor_name,notes,compliance_flag) VALUES
('Training Ball','Adidas','X100','SN001','2022-01-15','2025-01-15',1200.00,1,'Training','Good','2023-06-01',180,'Warehouse A','INS12345',0.10,1080.00,'2023-07-01','AuditorA','Used for drills','Yes'),
('Goalpost Set','GoalMaster','GM-200','SN002','2021-03-10','2026-03-10',5400.00,2,'Stadium','Excellent','2023-02-20',365,'Stadium Storage','INS67890',0.07,5022.00,'2023-07-15','AuditorB','Outdoor use','Yes'),
('Medical Kit','MediPack','MP-5','SN003','2020-11-05','2024-11-05',350.00,0,'Medical','Fair','2022-12-01',365,'Medical Closet','INS11122',0.15,297.50,'2023-06-30','AuditorC','Restocked recent','No');

-- Historical rivalries between clubs
CREATE TABLE Historical_Rivalries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_a_id INTEGER,
    club_b_id INTEGER,
    rivalry_name TEXT,
    first_meeting_year INTEGER,
    total_matches INTEGER,
    wins_a INTEGER,
    draws INTEGER,
    wins_b INTEGER,
    most_memorable_match_year INTEGER,
    fan_base_a_size INTEGER,
    fan_base_b_size INTEGER,
    media_coverage_score REAL,
    social_media_mention_count INTEGER,
    rivalry_intensity_level TEXT,
    tickets_sold_avg INTEGER,
    average_goals_per_match REAL,
    notable_players_involved TEXT,
    rivalry_status TEXT,
    governing_body TEXT,
    notes TEXT
);

INSERT INTO Historical_Rivalries (club_a_id,club_b_id,rivalry_name,first_meeting_year,total_matches,wins_a,draws,wins_b,most_memorable_match_year,fan_base_a_size,fan_base_b_size,media_coverage_score,social_media_mention_count,rivalry_intensity_level,tickets_sold_avg,average_goals_per_match,notable_players_involved,rivalry_status,governing_body,notes) VALUES
(1,2,'City Derby','1990',85,38,9,38,2005,1200000,950000,9.5,350000,'High',75000,2.4,'PlayerX,PlayerY','Active','FA','One of the fiercest rivalries in the league'),
(3,4,'Coastal Clash','1985',60,20,10,30,1998,800000,860000,7.8,210000,'Medium',48000,2.1,'PlayerA,PlayerB','Active','FA','Known for high-scoring games'),
(5,6,'Mountain Showdown','2000',30,12,3,15,2015,400000,420000,5.2,95000,'Low',25000,1.8,'PlayerM,PlayerN','Dormant','FA','Occasional meetings due to league restructuring');

-- Governance structure of clubs
CREATE TABLE Club_Governance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    board_member_name TEXT,
    role TEXT,
    appointment_date TEXT,
    term_years INTEGER,
    contact_email TEXT,
    phone_number TEXT,
    nationality TEXT,
    age INTEGER,
    gender TEXT,
    education_level TEXT,
    previous_position TEXT,
    shares_owned_percent REAL,
    compensation_usd REAL,
    conflict_of_interest TEXT,
    board_meeting_attendance_percent REAL,
    resignation_date TEXT,
    successor_name TEXT,
    notes TEXT
);

INSERT INTO Club_Governance (club_id,board_member_name,role,appointment_date,term_years,contact_email,phone_number,nationality,age,gender,education_level,previous_position,shares_owned_percent,compensation_usd,conflict_of_interest,board_meeting_attendance_percent,resignation_date,successor_name,notes) VALUES
(1,'John Smith','Chairman','2018-05-01',5,'john.smith@club.com','5551000','CountryA',58,'Male','MBA','CEO of SportsCo',12.5,250000,'None',98.0,NULL,NULL,'Long‑term leader'),
(2,'Maria Garcia','Treasurer','2020-03-15',3,'maria.garcia@club.com','5552000','CountryB',45,'Female','CPA','Finance Director','',120000,'Minor',92.5,NULL,NULL,'Handles club finances'),
(3,'Li Wei','Board Member','2019-11-20',4,'li.wei@club.com','5553000','CountryC',52,'Male','PhD Economics','Professor','5.0',90000,'Potential supplier',85.0,NULL,NULL,'Expert in strategic planning');

-- Seasonal weather analysis impacting club operations
CREATE TABLE Seasonal_Weather_Analysis (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    season TEXT,
    year INTEGER,
    average_temperature_c REAL,
    total_precip_mm REAL,
    highest_temp_c REAL,
    lowest_temp_c REAL,
    average_humidity_percent REAL,
    wind_speed_kmh_avg REAL,
    number_of_rainy_days INTEGER,
    number_of_snowy_days INTEGER,
    sunshine_hours REAL,
    weather_anomaly_flag TEXT,
    extreme_events_count INTEGER,
    affected_match_count INTEGER,
    average_attendance_change_percent REAL,
    revenue_impact_usd REAL,
    climate_zone TEXT,
    data_source TEXT,
    notes TEXT
);

INSERT INTO Seasonal_Weather_Analysis (season,year,average_temperature_c,total_precip_mm,highest_temp_c,lowest_temp_c,average_humidity_percent,wind_speed_kmh_avg,number_of_rainy_days,number_of_snowy_days,sunshine_hours,weather_anomaly_flag,extreme_events_count,affected_match_count,average_attendance_change_percent,revenue_impact_usd,climate_zone,data_source,notes) VALUES
('Spring',2023,12.5,320.0,22.0,5.0,68.0,15.2,45,2,2100.0,'No',0,3,1.2,15000.00,'Temperate','MetOffice','Typical spring season'),
('Summer',2023,24.8,180.0,35.0,16.0,55.0,10.5,20,0,2900.0,'Yes','Heatwave','2','2',-3.5,-45000.00,'Mediterranean','WeatherAPI','Heat affected attendance'),
('Winter',2023,3.2,410.0,12.0,-5.0,80.0,20.0,70,15,800.0,'No',1,5,-2.0,-20000.00,'Continental','NationalWeather','Heavy snow disrupted matches');

-- Digital marketing channels used by clubs
CREATE TABLE Digital_Marketing_Channels (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    channel_name TEXT,
    platform TEXT,
    url TEXT,
    launch_date TEXT,
    monthly_visits INTEGER,
    avg_session_duration_sec INTEGER,
    bounce_rate_percent REAL,
    conversion_rate_percent REAL,
    ad_spend_usd REAL,
    cpc_usd REAL,
    cpm_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    leads_generated INTEGER,
    revenue_attributed_usd REAL,
    channel_manager TEXT,
    last_audit_date TEXT,
    notes TEXT,
    compliance_status TEXT
);

INSERT INTO Digital_Marketing_Channels (channel_name,platform,url,launch_date,monthly_visits,avg_session_duration_sec,bounce_rate_percent,conversion_rate_percent,ad_spend_usd,cpc_usd,cpm_usd,impressions,clicks,leads_generated,revenue_attributed_usd,channel_manager,last_audit_date,notes,compliance_status) VALUES
('Club Official Site','Web','www.clubofficial.com','2015-06-01',120000,180,42.5,3.2,25000.00,0.45,5.0,500000,6400,320,80000.00,'Alice Brown','2023-07-01','Main hub for fan engagement','Yes'),
('Club Instagram','Social','instagram.com/clubofficial','2016-09-15',85000,95,58.0,1.5,15000.00,0.30,2.5,400000,6000,150,25000.00','Bob Green','2023-07-01','Strong visual content','Yes'),
('Club YouTube','Video','youtube.com/clubofficial','2017-03-20',53000,210,37.0,2.8,18000.00,0.40,4.0,450000,5350,210,40000.00','Carol White','2023-07-01','Video highlights and interviews','Yes');

-- Fan travel statistics for attending matches
CREATE TABLE Fan_Travel_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    match_id INTEGER,
    origin_city TEXT,
    destination_city TEXT,
    travel_mode TEXT,
    distance_km INTEGER,
    travel_time_minutes INTEGER,
    accommodation_needed TEXT,
    nights_stayed INTEGER,
    total_spend_usd REAL,
    ticket_category TEXT,
    travel_group_size INTEGER,
    travel_agency TEXT,
    loyalty_program_member TEXT,
    carbon_footprint_kgco2 REAL,
    satisfaction_score INTEGER,
    feedback_comments TEXT,
    travel_date TEXT,
    notes TEXT
);

INSERT INTO Fan_Travel_Stats (fan_id,match_id,origin_city,destination_city,travel_mode,distance_km,travel_time_minutes,accommodation_needed,nights_stayed,total_spend_usd,ticket_category,travel_group_size,travel_agency,loyalty_program_member,carbon_footprint_kgco2,satisfaction_score,feedback_comments,travel_date,notes) VALUES
(101,1001,'London','Manchester','Train',260,180,'Yes',2,420.75,'Premium',4,'TravelCo','Gold',55.2,9,'Great experience','2023-10-15','First time travel'),
(102,1002,'Berlin','Munich','Car',580,420,'No',0,310.00,'Standard',1,'Self','Silver',78.5,7,'Smooth ride','2023-11-03','Family trip'),
(103,1003,'Madrid','Barcelona','Bus',620,480,'Yes',1,250.30,'Standard',3,'BusWorld','Bronze',68.0,8,'Comfortable seats','2023-12-01','Group travel');

-- Usage statistics for training gear allocated to players and teams
CREATE TABLE Training_Gear_Usage (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    gear_id INTEGER,
    gear_type TEXT,
    brand TEXT,
    model TEXT,
    assigned_player_id INTEGER,
    usage_start_date TEXT,
    usage_end_date TEXT,
    total_sessions_used INTEGER,
    avg_minutes_per_session INTEGER,
    wear_level_percent REAL,
    maintenance_required_flag TEXT,
    last_inspection_date TEXT,
    inspector_name TEXT,
    replacement_due_date TEXT,
    notes TEXT,
    cost_usd REAL,
    depreciation_percent REAL,
    current_value_usd REAL,
    assigned_team_id INTEGER,
    compliance_flag TEXT
);

INSERT INTO Training_Gear_Usage (gear_id,gear_type,brand,model,assigned_player_id,usage_start_date,usage_end_date,total_sessions_used,avg_minutes_per_session,wear_level_percent,maintenance_required_flag,last_inspection_date,inspector_name,replacement_due_date,notes,cost_usd,depreciation_percent,current_value_usd,assigned_team_id,compliance_flag) VALUES
(2001,'Boots','Nike','Phantom','12','2023-01-10','2023-07-20',45,85,22.5,'No','2023-07-21','Mike Coach','2024-01-10','Used in all matches','150.00',0.12,132.00,1,'Yes'),
(2002,'Training Vest','Adidas','FitVest','23','2023-02-05','2023-08-30',30,60,15.0,'Yes','2023-08-31','Sara Analyst','2024-02-05','Needs cleaning','80.00',0.10,72.00,2,'Yes'),
(2003,'Shin Guard','Puma','GuardPro','34','2022-09-01','2023-09-01',60,90,35.0,'Yes','2023-09-02','Tom Manager','2024-09-01','Slight cracks','60.00',0.15,51.00,3,'No');

-- Educational programs run by clubs for youth and community development
CREATE TABLE Club_Educational_Programs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    program_name TEXT,
    description TEXT,
    start_date TEXT,
    end_date TEXT,
    target_audience TEXT,
    enrollment_capacity INTEGER,
    enrolled_students INTEGER,
    instructor_name TEXT,
    instructor_credentials TEXT,
    program_cost_usd REAL,
    scholarship_available_flag TEXT,
    scholarship_amount_usd REAL,
    partner_organization TEXT,
    accreditation_body TEXT,
    outcome_metrics TEXT,
    success_rate_percent REAL,
    feedback_average_score INTEGER,
    program_status TEXT,
    last_updated TEXT,
    notes TEXT
);

INSERT INTO Club_Educational_Programs (program_name,description,start_date,end_date,target_audience,enrollment_capacity,enrolled_students,instructor_name,instructor_credentials,program_cost_usd,scholarship_available_flag,scholarship_amount_usd,partner_organization,accreditation_body,outcome_metrics,success_rate_percent,feedback_average_score,program_status,last_updated,notes) VALUES
('Future Stars Academy','Talent development for ages 12-16','2023-08-01','2024-07-31','Youth Players',120,95,'Laura Coach','UEFA Pro License',5000.00,'Yes',1500.00,'Local School','UEFA','Graduation Rate','88.5',9,'Active','2023-07-20','High demand'),
('Community Coaching Clinic','Free coaching for local schools','2023-05-15','2023-09-15','School Students',200,180,'Mark Trainer','FA Level 2','0.00','No',0.00,'City Council','FA','Attendance','95.0',8,'Completed','2023-09-20','Positive community impact'),
('Sports Management Diploma','Certificate in sports administration','2023-09-01','2024-06-30','Adult Learners',50,45,'Emma Director','MBA Sports Management',3000.00,'Yes',1000.00,'University X','Accredited Body Y','Employment Rate','82.0',7,'Active','2023-07-25','Open enrollment next term');