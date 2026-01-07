-- Digital advertising inventory used by clubs and leagues
CREATE TABLE Digital_Advertising_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    inventory_id TEXT UNIQUE,
    ad_type TEXT,
    platform TEXT,
    placement TEXT,
    start_date TEXT,
    end_date TEXT,
    impressions_target INTEGER,
    cost_per_impression REAL,
    total_cost REAL,
    creative_format TEXT,
    audience_target TEXT,
    geographic_target TEXT,
    ad_status TEXT,
    created_by TEXT,
    created_at TEXT,
    approved_by TEXT,
    approved_at TEXT,
    notes TEXT,
    compliance_flag INTEGER
);
INSERT INTO Digital_Advertising_Inventory (inventory_id,ad_type,platform,placement,start_date,end_date,impressions_target,cost_per_impression,total_cost,creative_format,audience_target,geographic_target,ad_status,created_by,created_at,approved_by,approved_at,notes,compliance_flag) VALUES ('INV001','Banner','Web','Header','2024-01-01','2024-03-31',500000,0.02,10000,'Static','Adults','Europe','Pending','mediaTeam','2023-12-15','legalDept','2023-12-20','Initial setup',0);
INSERT INTO Digital_Advertising_Inventory (inventory_id,ad_type,platform,placement,start_date,end_date,impressions_target,cost_per_impression,total_cost,creative_format,audience_target,geographic_target,ad_status,created_by,created_at,approved_by,approved_at,notes,compliance_flag) VALUES ('INV002','Video','Mobile','Pre-roll','2024-04-01','2024-06-30',200000,0.05,10000,'MP4','Teens','NorthAmerica','Active','digitalOps','2024-01-10','financeDept','2024-01-12','Campaign Q2',1);
INSERT INTO Digital_Advertising_Inventory (inventory_id,ad_type,platform,placement,start_date,end_date,impressions_target,cost_per_impression,total_cost,creative_format,audience_target,geographic_target,ad_status,created_by,created_at,approved_by,approved_at,notes,compliance_flag) VALUES ('INV003','Social','Instagram','Story','2024-07-01','2024-09-30',300000,0.03,9000,'Animated','YoungAdults','Asia','Planned','socialTeam','2024-03-05','legalDept','2024-03-07','Awaiting creatives',0);

-- Uniforms for club staff and crew members
CREATE TABLE Club_Crew_Uniforms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    crew_role TEXT,
    uniform_id TEXT UNIQUE,
    color_primary TEXT,
    color_secondary TEXT,
    jersey_style TEXT,
    pant_style TEXT,
    logo_position TEXT,
    sponsor_logo TEXT,
    size_small INTEGER,
    size_medium INTEGER,
    size_large INTEGER,
    size_xl INTEGER,
    material TEXT,
    season TEXT,
    club_id INTEGER,
    issued_date TEXT,
    returned_date TEXT,
    condition_rating INTEGER,
    laundry_status TEXT,
    notes TEXT
);
INSERT INTO Club_Crew_Uniforms (crew_role,uniform_id,color_primary,color_secondary,jersey_style,pant_style,logo_position,sponsor_logo,size_small,size_medium,size_large,size_xl,material,season,club_id,issued_date,returned_date,condition_rating,laundry_status,notes) VALUES ('GroundStaff','U001','Black','White','ShortSleeve','Shorts','Chest','Nike',5,10,8,2,'Polyester','2024',1,'2024-02-01','2024-05-01',9,'Clean','First batch');
INSERT INTO Club_Crew_Uniforms (crew_role,uniform_id,color_primary,color_secondary,jersey_style,pant_style,logo_position,sponsor_logo,size_small,size_medium,size_large,size_xl,material,season,club_id,issued_date,returned_date,condition_rating,laundry_status,notes) VALUES ('MedicalTeam','U002','Red','Grey','LongSleeve','Pants','Back','Adidas',3,7,6,1,'CottonBlend','2023',2,'2023-09-15','2024-01-15',8,'Clean','Refurbished after season');
INSERT INTO Club_Crew_Uniforms (crew_role,uniform_id,color_primary,color_secondary,jersey_style,pant_style,logo_position,sponsor_logo,size_small,size_medium,size_large,size_xl,material,season,club_id,issued_date,returned_date,condition_rating,laundry_status,notes) VALUES ('Security','U003','Blue','Silver','ShortSleeve','Shorts','Chest','Puma',4,9,5,3,'Nylon','2024',3,'2024-03-10',NULL,7,'Pending','New security hires');

-- Emergency protocols for stadiums
CREATE TABLE Stadium_Emergency_Protocols (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    protocol_id TEXT UNIQUE,
    hazard_type TEXT,
    description TEXT,
    activation_criteria TEXT,
    response_team TEXT,
    equipment_needed TEXT,
    training_required TEXT,
    review_date TEXT,
    last_test_date TEXT,
    contact_person TEXT,
    contact_phone TEXT,
    status TEXT,
    version TEXT,
    approval_date TEXT,
    created_by TEXT,
    notes TEXT,
    location_specific TEXT,
    evacuation_route TEXT,
    shelter_area TEXT
);
INSERT INTO Stadium_Emergency_Protocols (protocol_id,hazard_type,description,activation_criteria,response_team,equipment_needed,training_required,review_date,last_test_date,contact_person,contact_phone,status,version,approval_date,created_by,notes,location_specific,evacuation_route,shelter_area) VALUES ('EP001','Fire','Fire outbreak in concourse','Smoke detector alarm','FireBrigade','Extinguishers, Hoses','AnnualFireDrill','2024-01-01','2024-02-15','JohnDoe','5551234','Active','v1','2023-12-20','SafetyDept','Reviewed after recent audit','NorthStand','StaircaseA','NorthEastField');
INSERT INTO Stadium_Emergency_Protocols (protocol_id,hazard_type,description,activation_criteria,response_team,equipment_needed,training_required,review_date,last_test_date,contact_person,contact_phone,status,version,approval_date,created_by,notes,location_specific,evacuation_route,shelter_area) VALUES ('EP002','Medical','Mass casualty event','Multiple injuries reported','MedicalTeam','FirstAidKits, Defibrillators','QuarterlyMedicalDrill','2024-03-01','2024-04-10','JaneSmith','5555678','Active','v2','2024-02-25','HealthDept','Added new defibrillator units','SouthWing','ExitB','SouthWestParkingLot');
INSERT INTO Stadium_Emergency_Protocols (protocol_id,hazard_type,description,activation_criteria,response_team,equipment_needed,training_required,review_date,last_test_date,contact_person,contact_phone,status,version,approval_date,created_by,notes,location_specific,evacuation_route,shelter_area) VALUES ('EP003','Weather','Severe thunderstorm','Wind speed > 70km/h','SecurityTeam','Tents, RainGear','MonthlyWeatherDrill','2024-05-01','2024-05-20','MikeLee','5559012','Planned','v1','2024-04-28','Operations','Pending installation of weather sensors','AllAreas','MainGate','EastField');

-- Attendance statistics for each league
CREATE TABLE League_Fan_Attendance_Statistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    average_home_attendance INTEGER,
    average_away_attendance INTEGER,
    total_season_attendance INTEGER,
    peak_attendance INTEGER,
    peak_match_id INTEGER,
    median_attendance INTEGER,
    attendance_variance REAL,
    ticket_price_average REAL,
    concessions_sales_average REAL,
    merchandise_sales_average REAL,
    fan_satisfaction_score REAL,
    weather_impact_factor REAL,
    day_of_week_factor REAL,
    promotion_effectiveness REAL,
    stadium_capacity_utilization REAL,
    broadcast_viewership_correlation REAL,
    notes TEXT
);
INSERT INTO League_Fan_Attendance_Statistics (league_id,season,average_home_attendance,average_away_attendance,total_season_attendance,peak_attendance,peak_match_id,median_attendance,attendance_variance,ticket_price_average,concessions_sales_average,merchandise_sales_average,fan_satisfaction_score,weather_impact_factor,day_of_week_factor,promotion_effectiveness,stadium_capacity_utilization,broadcast_viewership_correlation,notes) VALUES (1,'2023/2024',25400,21000,15000000,59000,1023,25000,0.12,45.5,12.3,8.7,4.2,0.05,0.08,0.15,0.78,0.62,'Strong growth');
INSERT INTO League_Fan_Attendance_Statistics (league_id,season,average_home_attendance,average_away_attendance,total_season_attendance,peak_attendance,peak_match_id,median_attendance,attendance_variance,ticket_price_average,concessions_sales_average,merchandise_sales_average,fan_satisfaction_score,weather_impact_factor,day_of_week_factor,promotion_effectiveness,stadium_capacity_utilization,broadcast_viewership_correlation,notes) VALUES (2,'2023/2024',18500,15000,9000000,34000,2045,18000,0.15,38.0,9.5,6.2,3.9,0.07,0.06,0.12,0.70,0.55,'Stable');
INSERT INTO League_Fan_Attendance_Statistics (league_id,season,average_home_attendance,average_away_attendance,total_season_attendance,peak_attendance,peak_match_id,median_attendance,attendance_variance,ticket_price_average,concessions_sales_average,merchandise_sales_average,fan_satisfaction_score,weather_impact_factor,day_of_week_factor,promotion_effectiveness,stadium_capacity_utilization,broadcast_viewership_correlation,notes) VALUES (3,'2023/2024',10200,9000,5000000,21000,3078,10000,0.20,30.0,7.1,4.5,3.5,0.10,0.09,0.08,0.60,0.48,'Decline due to economic factors');

-- Media rights agreements for leagues
CREATE TABLE Media_Rights_Agreements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    agreement_id TEXT UNIQUE,
    league_id INTEGER,
    season TEXT,
    broadcaster_name TEXT,
    rights_type TEXT,
    territory TEXT,
    start_date TEXT,
    end_date TEXT,
    fee_amount REAL,
    payment_terms TEXT,
    exclusivity_flag INTEGER,
    broadcast_quality TEXT,
    digital_platforms_included TEXT,
    language_options TEXT,
    amendment_count INTEGER,
    last_amendment_date TEXT,
    legal_contact TEXT,
    status TEXT,
    notes TEXT,
    renewal_option TEXT
);
INSERT INTO Media_Rights_Agreements (agreement_id,league_id,season,broadcaster_name,rights_type,territory,start_date,end_date,fee_amount,payment_terms,exclusivity_flag,broadcast_quality,digital_platforms_included,language_options,amendment_count,last_amendment_date,legal_contact,status,notes,renewal_option) VALUES ('AGR001',1,'2024/2025','SportsNet','LiveBroadcast','NorthAmerica','2024-08-01','2026-07-31',25000000,'Annual','1','HD','Streaming,Mobile','English,Spanish',2,'2025-01-15','lawDept','Active','Extended after renegotiation','Option2Years');
INSERT INTO Media_Rights_Agreements (agreement_id,league_id,season,broadcaster_name,rights_type,territory,start_date,end_date,fee_amount,payment_terms,exclusivity_flag,broadcast_quality,digital_platforms_included,language_options,amendment_count,last_amendment_date,legal_contact,status,notes,renewal_option) VALUES ('AGR002',2,'2024/2025','EuroVision','HighlightReel','Europe','2024-09-01','2025-08-31',12000000,'SemiAnnual','0','4K','Web,App','English,French,German',1,'2024-12-10','legalTeam','Pending','Awaiting board approval','Option1Year');
INSERT INTO Media_Rights_Agreements (agreement_id,league_id,season,broadcaster_name,rights_type,territory,start_date,end_date,fee_amount,payment_terms,exclusivity_flag,broadcast_quality,digital_platforms_included,language_options,amendment_count,last_amendment_date,legal_contact,status,notes,renewal_option) VALUES ('AGR003',3,'2024/2025','GlobalSports','LiveAndReplay','Asia','2024-07-15','2025-07-14',8500000,'Quarterly','1','HD','Streaming','English,Mandarin',0,NULL,'complianceDesk','Active','Standard terms','Option3Years');

-- Player visa and work permit records
CREATE TABLE Player_Visa_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    visa_type TEXT,
    issuing_country TEXT,
    visa_number TEXT,
    issue_date TEXT,
    expiry_date TEXT,
    work_permit_number TEXT,
    work_permit_issue_date TEXT,
    work_permit_expiry_date TEXT,
    status TEXT,
    immigration_officer TEXT,
    notes TEXT,
    compliance_flag INTEGER,
    document_scan_path TEXT,
    renewal_notice_sent INTEGER,
    renewal_deadline TEXT,
    last_updated TEXT,
    created_at TEXT
);
INSERT INTO Player_Visa_Records (player_api_id,visa_type,issuing_country,visa_number,issue_date,expiry_date,work_permit_number,work_permit_issue_date,work_permit_expiry_date,status,immigration_officer,notes,compliance_flag,document_scan_path,renewal_notice_sent,renewal_deadline,last_updated,created_at) VALUES (105,'Work','Germany','V1234567','2022-05-01','2025-04-30','WP987654','2022-05-01','2025-04-30','Valid','OfficerKlein','All documents verified',1,'/scans/visa105.pdf',0,'2025-04-01','2024-12-01','2023-01-15');
INSERT INTO Player_Visa_Records (player_api_id,visa_type,issuing_country,visa_number,issue_date,expiry_date,work_permit_number,work_permit_issue_date,work_permit_expiry_date,status,immigration_officer,notes,compliance_flag,document_scan_path,renewal_notice_sent,renewal_deadline,last_updated,created_at) VALUES (210,'Sport','Spain','V7654321','2023-08-15','2026-08-14','WP123789','2023-08-15','2026-08-14','Pending','OfficerGarcia','Awaiting renewal',0,'/scans/visa210.pdf',1,'2026-07-30','2024-02-20','2023-08-15');
INSERT INTO Player_Visa_Records (player_api_id,visa_type,issuing_country,visa_number,issue_date,expiry_date,work_permit_number,work_permit_issue_date,work_permit_expiry_date,status,immigration_officer,notes,compliance_flag,document_scan_path,renewal_notice_sent,renewal_deadline,last_updated,created_at) VALUES (322,'Work','England','V9988776','2021-11-10','2024-11-09','WP456123','2021-11-10','2024-11-09','Expired','OfficerSmith','Expired, needs renewal',0,'/scans/visa322.pdf',1,'2024-10-15','2024-01-05','2021-11-10');

-- Inventory of team logistics assets
CREATE TABLE Team_Logistics_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    item_id TEXT UNIQUE,
    item_name TEXT,
    category TEXT,
    quantity_total INTEGER,
    quantity_in_use INTEGER,
    manufacturer TEXT,
    model_number TEXT,
    purchase_date TEXT,
    warranty_expiry TEXT,
    status TEXT,
    location TEXT,
    assigned_to TEXT,
    maintenance_schedule TEXT,
    last_maintenance_date TEXT,
    next_maintenance_date TEXT,
    cost REAL,
    depreciation_rate REAL,
    notes TEXT,
    compliance_flag INTEGER
);
INSERT INTO Team_Logistics_Inventory (team_id,item_id,item_name,category,quantity_total,quantity_in_use,manufacturer,model_number,purchase_date,warranty_expiry,status,location,assigned_to,maintenance_schedule,last_maintenance_date,next_maintenance_date,cost,depreciation_rate,notes,compliance_flag) VALUES (1,'ITM001','Travel Bus','Transport',3,2,'Volvo','V123',2022-01-15,2027-01-15,'Active','GarageA','LogisticsMgr','Annual','2023-12-01','2024-12-01',250000,0.10,'Routine checks completed',1);
INSERT INTO Team_Logistics_Inventory (team_id,item_id,item_name,category,quantity_total,quantity_in_use,manufacturer,model_number,purchase_date,warranty_expiry,status,location,assigned_to,maintenance_schedule,last_maintenance_date,next_maintenance_date,cost,depreciation_rate,notes,compliance_flag) VALUES (2,'ITM002','Medical Kit','Medical',50,45,'MedSupplies','MK-500',2021-06-01,2026-06-01,'Active','MedicalRoom','TeamPhysio','Quarterly','2024-03-15','2024-06-15',5000,0.15,'Restocked after season',1);
INSERT INTO Team_Logistics_Inventory (team_id,item_id,item_name,category,quantity_total,quantity_in_use,manufacturer,model_number,purchase_date,warranty_expiry,status,location,assigned_to,maintenance_schedule,last_maintenance_date,next_maintenance_date,cost,depreciation_rate,notes,compliance_flag) VALUES (3,'ITM003','Training Cones','Equipment',200,180,'SportTech','TC-20',2023-09-10,2028-09-10,'Active','TrainingGround','CoachA','Biannual','2024-01-20','2024-07-20',1200,0.05,'New batch for youth academy',0);

-- Streaming quality metrics for match broadcasts
CREATE TABLE Match_Streaming_Quality_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    platform TEXT,
    resolution TEXT,
    bitrate_avg REAL,
    latency_avg REAL,
    buffering_events INTEGER,
    buffering_duration_total REAL,
    dropped_frames INTEGER,
    start_time_offset REAL,
    end_time_offset REAL,
    concurrent_viewers_peak INTEGER,
    concurrent_viewers_avg REAL,
    geo_distribution TEXT,
    device_type_distribution TEXT,
    error_rate REAL,
    user_feedback_score REAL,
    stream_start_success INTEGER,
    stream_end_success INTEGER,
    notes TEXT,
    recorded_at TEXT
);
INSERT INTO Match_Streaming_Quality_Metrics (match_id,platform,resolution,bitrate_avg,latency_avg,buffering_events,buffering_duration_total,dropped_frames,start_time_offset,end_time_offset,concurrent_viewers_peak,concurrent_viewers_avg,geo_distribution,device_type_distribution,error_rate,user_feedback_score,stream_start_success,stream_end_success,notes,recorded_at) VALUES (1023,'YouTube','1080p',4500,2.5,3,12.4,150,0.2,0.1,75000,45200,'Europe,Asia','Desktop,Mobile',0.001,4.5,1,1,'Stable streaming',2024-03-15);
INSERT INTO Match_Streaming_Quality_Metrics (match_id,platform,resolution,bitrate_avg,latency_avg,buffering_events,buffering_duration_total,dropped_frames,start_time_offset,end_time_offset,concurrent_viewers_peak,concurrent_viewers_avg,geo_distribution,device_type_distribution,error_rate,user_feedback_score,stream_start_success,stream_end_success,notes,recorded_at) VALUES (2045,'Twitch','720p',2500,3.2,5,20.7,300,0.5,0.3,50000,31200,'NorthAmerica,SouthAmerica','Desktop',0.003,4.0,1,0,'End of stream cut',2024-04-10);
INSERT INTO Match_Streaming_Quality_Metrics (match_id,platform,resolution,bitrate_avg,latency_avg,buffering_events,buffering_duration_total,dropped_frames,start_time_offset,end_time_offset,concurrent_viewers_peak,concurrent_viewers_avg,geo_distribution,device_type_distribution,error_rate,user_feedback_score,stream_start_success,stream_end_success,notes,recorded_at) VALUES (3078,'Facebook','1080p',4200,2.8,2,8.5,90,0.1,0.05,62000,40100,'Europe,MiddleEast','Mobile',0.0008,4.7,1,1,'Excellent quality',2024-05-20);

-- Construction projects for training centers
CREATE TABLE Training_Center_Construction_Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    project_id TEXT UNIQUE,
    center_name TEXT,
    location TEXT,
    phase TEXT,
    start_date TEXT,
    planned_end_date TEXT,
    actual_end_date TEXT,
    budget_estimated REAL,
    budget_actual REAL,
    contractor TEXT,
    architect TEXT,
    permits_obtained INTEGER,
    environmental_impact_score REAL,
    status TEXT,
    milestone_1_date TEXT,
    milestone_2_date TEXT,
    milestone_3_date TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT
);
INSERT INTO Training_Center_Construction_Projects (project_id,center_name,location,phase,start_date,planned_end_date,actual_end_date,budget_estimated,budget_actual,contractor,architect,permits_obtained,environmental_impact_score,status,milestone_1_date,milestone_2_date,milestone_3_date,notes,created_by,created_at) VALUES ('TP001','North Academy','Berlin','Design','2023-01-10','2024-06-30',NULL,15000000,0,'BuildCo','ArchDesign','0',2.5,'Planning','2023-03-01','2023-09-01',NULL,'Awaiting permit approval','ProjectMgr','2023-01-05');
INSERT INTO Training_Center_Construction_Projects (project_id,center_name,location,phase,start_date,planned_end_date,actual_end_date,budget_estimated,budget_actual,contractor,architect,permits_obtained,environmental_impact_score,status,milestone_1_date,milestone_2_date,milestone_3_date,notes,created_by,created_at) VALUES ('TP002','South Facility','Madrid','Construction','2022-05-15','2023-12-15','2023-12-10',12000000,11950000,'ConstructAll','DesignStudio','1',1.8,'Completed','2022-07-01','2023-03-01','2023-11-01','Project delivered on time','LeadEngineer','2022-04-20');
INSERT INTO Training_Center_Construction_Projects (project_id,center_name,location,phase,start_date,planned_end_date,actual_end_date,budget_estimated,budget_actual,contractor,architect,permits_obtained,environmental_impact_score,status,milestone_1_date,milestone_2_date,milestone_3_date,notes,created_by,created_at) VALUES ('TP003','East Youth Hub','Warsaw','Groundwork','2024-02-01','2025-08-31',NULL,8000000,0,'GroundWorksLtd','EcoArch','0',3.0,'Planning','2024-04-01',NULL,NULL,'Soil testing pending','ProjectCoordinator','2024-01-20');

-- Fan cultural festivals organized by clubs
CREATE TABLE Fan_Cultural_Festivals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    festival_id TEXT UNIQUE,
    club_id INTEGER,
    festival_name TEXT,
    start_date TEXT,
    end_date TEXT,
    city TEXT,
    country TEXT,
    expected_attendance INTEGER,
    ticket_price REAL,
    sponsor_name TEXT,
    main_act TEXT,
    secondary_acts TEXT,
    food_vendors_count INTEGER,
    merchandise_stalls_count INTEGER,
    security_staff_count INTEGER,
    transport_partner TEXT,
    media_partner TEXT,
    social_media_hashtag TEXT,
    feedback_score REAL,
    notes TEXT
);
INSERT INTO Fan_Cultural_Festivals (festival_id,club_id,festival_name,start_date,end_date,city,country,expected_attendance,ticket_price,sponsor_name,main_act,secondary_acts,food_vendors_count,merchandise_stalls_count,security_staff_count,transport_partner,media_partner,social_media_hashtag,feedback_score,notes) VALUES ('FEST001',1,'RedWave Festival','2024-07-10','2024-07-12','Berlin','Germany',15000,25.0,'AutoCorp','BandA','DJMix,LocalBand',30,20,150,'CityTransit','LocalTV','#RedWave',4.6,'First edition');
INSERT INTO Fan_Cultural_Festivals (festival_id,club_id,festival_name,start_date,end_date,city,country,expected_attendance,ticket_price,sponsor_name,main_act,secondary_acts,food_vendors_count,merchandise_stalls_count,security_staff_count,transport_partner,media_partner,social_media_hashtag,feedback_score,notes) VALUES ('FEST002',2,'BlueSun Celebration','2024-08-20','2024-08-22','Madrid','Spain',20000,30.0,'TechSolutions','PopStarX','DJBeat,StreetArtists',45,25,180,'BusCo','NationalRadio','#BlueSun',4.8,'High demand tickets sold out');
INSERT INTO Fan_Cultural_Festivals (festival_id,club_id,festival_name,start_date,end_date,city,country,expected_attendance,ticket_price,sponsor_name,main_act,secondary_acts,food_vendors_count,merchandise_stalls_count,security_staff_count,transport_partner,media_partner,social_media_hashtag,feedback_score,notes) VALUES ('FEST003',3,'GreenField Fair','2024-09-05','2024-09-07','Warsaw','Poland',12000,20.0,'EnergyPlus','FolkBand','AcousticGroup,KidsShow',20,15,120,'RailLink','RegionalTV','#GreenField',4.4,'Family friendly event');