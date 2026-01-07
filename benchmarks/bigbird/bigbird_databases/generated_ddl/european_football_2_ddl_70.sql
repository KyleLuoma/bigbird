-- Stadium audio engineering logs
CREATE TABLE Stadium_Audio_Engineering_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    log_date TEXT,
    engineer_name TEXT,
    mic_count INTEGER,
    speaker_count INTEGER,
    sound_pressure_level REAL,
    frequency_range_min INTEGER,
    frequency_range_max INTEGER,
    calibration_status TEXT,
    notes TEXT,
    equipment_serial_1 TEXT,
    equipment_serial_2 TEXT,
    firmware_version TEXT,
    power_consumption_watts REAL,
    ambient_temperature_c REAL,
    humidity_percent REAL,
    test_signal_type TEXT,
    duration_minutes INTEGER,
    verification_passed INTEGER,
    corrective_action_taken TEXT
);
INSERT INTO Stadium_Audio_Engineering_Logs VALUES (1,101,'2023-08-15','John Doe',12,8,98.5,20,20000,'Completed','Initial calibration','SN12345','SN67890','v1.2',150.0,22.5,45.0,'Sine','30',1,'None');
INSERT INTO Stadium_Audio_Engineering_Logs VALUES (2,102,'2023-09-10','Emily Smith',10,6,95.0,18,18000,'Pending','Follow‑up required','SN22334','SN77880','v1.3',140.0,21.0,48.0,'WhiteNoise','45',0,'Recalibration scheduled');
INSERT INTO Stadium_Audio_Engineering_Logs VALUES (3,103,'2023-10-05','Carlos Ruiz',14,10,102.0,22,21000,'Completed','All systems nominal','SN32321','SN87891','v1.4',160.0,23.0,44.0,'PinkNoise','60',1,'None');

-- Club historical brand logos
CREATE TABLE Club_Historical_Brand_Logos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    logo_version TEXT,
    effective_start_date TEXT,
    effective_end_date TEXT,
    designer_name TEXT,
    file_name TEXT,
    file_format TEXT,
    resolution_width INTEGER,
    resolution_height INTEGER,
    color_palette TEXT,
    usage_rights TEXT,
    copyright_year INTEGER,
    vector_path TEXT,
    raster_path TEXT,
    approval_status TEXT,
    notes TEXT,
    created_timestamp TEXT,
    modified_timestamp TEXT,
    public_visibility INTEGER,
    archival_location TEXT
);
INSERT INTO Club_Historical_Brand_Logos VALUES (1,10,'Logo_v1','2000-01-01','2005-12-31','Anna Lee','logo2000.svg','SVG',2000,2000,'RedBlue','ClubOnly',2000,'/vectors/logo2000.svg','/rasters/logo2000.png','Approved','Original crest','2023-01-01','2023-01-01',1,'/archive/logos');
INSERT INTO Club_Historical_Brand_Logos VALUES (2,10,'Logo_v2','2006-01-01','2010-12-31','Mark Chen','logo2006.png','PNG',2500,2500,'GreenWhite','Global',2006,'/vectors/logo2006.svg','/rasters/logo2006.png','Approved','Modernized design','2023-01-02','2023-01-02',1,'/archive/logos');
INSERT INTO Club_Historical_Brand_Logos VALUES (3,10,'Logo_v3','2011-01-01','2025-12-31','Liu Wang','logo2011.svg','SVG',3000,3000,'GoldBlack','Global',2011,'/vectors/logo2011.svg','/rasters/logo2011.png','Pending','Current version pending approval','2023-01-03','2023-01-03',0,'/archive/logos');

-- Regional fan club activities
CREATE TABLE Regional_Fan_Club_Activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    region_name TEXT,
    fan_club_name TEXT,
    activity_date TEXT,
    activity_type TEXT,
    participant_count INTEGER,
    venue_name TEXT,
    coordinator_name TEXT,
    sponsor_name TEXT,
    budget_usd REAL,
    funds_raised_usd REAL,
    merchandise_sold INTEGER,
    food_items_sold INTEGER,
    feedback_score INTEGER,
    social_media_hashtag TEXT,
    media_coverage TEXT,
    photos_count INTEGER,
    videos_count INTEGER,
    notes TEXT,
    created_by TEXT,
    created_timestamp TEXT
);
INSERT INTO Regional_Fan_Club_Activities VALUES (1,'North','NorthStars','2023-07-20','WatchParty',120,'City Hall','Sam Patel','Acme Corp',5000.0,7500.0,200,150,9,'#NorthStars2023','LocalNews',30,5,'Great turnout','admin','2023-07-01');
INSERT INTO Regional_Fan_Club_Activities VALUES (2,'South','SouthSide','2023-08-10','CharityRun',80,'River Park','Laura Kim','GoodHealth',3000.0,4000.0,0,0,8,'#SouthSideRun','RegionalTV',20,2,'All proceeds to charity','admin','2023-07-15');
INSERT INTO Regional_Fan_Club_Activities VALUES (3,'East','EastEnders','2023-09-05','FanMeet',45,'Community Center','Mike Torres','TechGear',1200.0,1800.0,75,30,7,'#EastEndersMeet','OnlineBlog',15,1,'Positive feedback','admin','2023-08-01');

-- Player travel accommodation records
CREATE TABLE Player_Travel_Accommodation_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    match_id INTEGER,
    travel_start_date TEXT,
    travel_end_date TEXT,
    departure_city TEXT,
    arrival_city TEXT,
    airline_name TEXT,
    flight_number TEXT,
    hotel_name TEXT,
    room_type TEXT,
    checkin_date TEXT,
    checkout_date TEXT,
    nights_stayed INTEGER,
    total_cost_usd REAL,
    tax_amount_usd REAL,
    currency TEXT,
    booking_agent TEXT,
    special_requests TEXT,
    verified_by TEXT,
    verification_date TEXT,
    notes TEXT
);
INSERT INTO Player_Travel_Accommodation_Records VALUES (1,1001,5001,'2023-08-01','2023-08-02','Madrid','London','AirFly','AF123','GrandHotel','Deluxe','2023-08-01','2023-08-03',2,800.0,80.0,'EUR','TravelCo','LateCheckin','OpsTeam','2023-08-02','No issues');
INSERT INTO Player_Travel_Accommodation_Records VALUES (2,1002,5002,'2023-09-10','2023-09-11','Berlin','Paris','EuroAir','EA456','CityInn','Standard','2023-09-10','2023-09-12',2,600.0,60.0,'EUR','TravelCo','VegetarianMeal','OpsTeam','2023-09-11','Meal preference fulfilled');
INSERT INTO Player_Travel_Accommodation_Records VALUES (3,1003,5003,'2023-10-05','2023-10-06','Rome','Amsterdam','SkyLine','SL789','RiverView','Suite','2023-10-05','2023-10-07',2,1200.0,120.0,'EUR','TravelCo','ExtraBed','OpsTeam','2023-10-06','Extra bed added');

-- Team uniform tailoring orders
CREATE TABLE Team_Uniform_Tailoring_Orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    season_year TEXT,
    uniform_type TEXT,
    size TEXT,
    quantity INTEGER,
    fabric_type TEXT,
    color_code TEXT,
    supplier_name TEXT,
    order_date TEXT,
    delivery_date TEXT,
    cost_per_piece_usd REAL,
    total_cost_usd REAL,
    order_status TEXT,
    quality_check_passed INTEGER,
    notes TEXT,
    created_by TEXT,
    created_timestamp TEXT,
    updated_by TEXT,
    updated_timestamp TEXT,
    contract_number TEXT,
    shipping_tracking_number TEXT
);
INSERT INTO Team_Uniform_Tailoring_Orders VALUES (1,20,'2023/24','HomeKit','M',30,'Polyester','#0044FF','SportsTex','2023-04-01','2023-05-15',45.0,1350.0,'Delivered',1,'All items met spec','procurement','2023-04-01','procurement','2023-05-16','CN001','TRK12345');
INSERT INTO Team_Uniform_Tailoring_Orders VALUES (2,20,'2023/24','AwayKit','L',30,'Nylon','#FF8800','SportsTex','2023-04-02','2023-05-20',47.0,1410.0,'Delivered',1,'Minor stitching adjustment','procurement','2023-04-02','procurement','2023-05-21','CN002','TRK12346');
INSERT INTO Team_Uniform_Tailoring_Orders VALUES (3,20,'2023/24','Goalkeeper','XL',10,'Polyester','#000000','GoalGear','2023-04-03','2023-05-25',50.0,500.0,'Pending',0,'Awaiting fabric approval','procurement','2023-04-03','procurement','2023-05-26','CN003','TRK12347');

-- League social responsibility initiatives
CREATE TABLE League_Social_Responsibility_Initiatives (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    initiative_name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_community TEXT,
    budget_usd REAL,
    funds_spent_usd REAL,
    metrics_collected TEXT,
    impact_score INTEGER,
    partner_organization TEXT,
    coordinator_name TEXT,
    status TEXT,
    description TEXT,
    media_release_link TEXT,
    photos_count INTEGER,
    videos_count INTEGER,
    notes TEXT,
    created_timestamp TEXT,
    updated_timestamp TEXT,
    approval_status TEXT
);
INSERT INTO League_Social_Responsibility_Initiatives VALUES (1,1,'YouthFootballCamps','2023-06-01','2023-08-31','UrbanAreas',200000.0,150000.0,'Attendance,Progress','85','CitySports','Olivia Reed','Active','Summer camps for under‑privileged youth','http://league.org/press/youthcamps','120','15','Positive community feedback','2023-05-20','2023-08-01','Approved');
INSERT INTO League_Social_Responsibility_Initiatives VALUES (2,1,'GreenStadiumProgram','2023-01-01','2023-12-31','AllStadiums',500000.0,300000.0,'EnergySaved,CO2Reduced','78','EcoPartners','James Liu','Ongoing','Installation of solar panels across venues','http://league.org/press/greenstadium','80','10','Phase 1 completed','2023-01-10','2023-09-15','Pending');
INSERT INTO League_Social_Responsibility_Initiatives VALUES (3,1,'WomenCoachingScholarship','2023-03-01','2024-02-28','National','120000.0','50000.0','Applications,Retentions','70','WomenSport','Maria Gomez','Active','Scholarships for female coaches','http://league.org/press/womencoach','40','5','First cohort awarded','2023-02-20','2023-11-05','Approved');

-- Stadium emergency evacuation drills
CREATE TABLE Stadium_Emergency_Evacuation_Drills (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    drill_date TEXT,
    drill_type TEXT,
    participants_count INTEGER,
    evacuation_time_seconds INTEGER,
    coordinator_name TEXT,
    scenario_description TEXT,
    broadcast_used INTEGER,
    safety_officers_present INTEGER,
    equipment_checklist TEXT,
    issues_reported INTEGER,
    corrective_actions TEXT,
    drill_successful INTEGER,
    notes TEXT,
    created_by TEXT,
    created_timestamp TEXT,
    reviewed_by TEXT,
    review_date TEXT,
    approval_status TEXT,
    drill_version TEXT
);
INSERT INTO Stadium_Emergency_Evacuation_Drills VALUES (1,101,'2023-04-15','Fire','200','420','Karen Brooks','Simulated fire in west stand',1,5,'Extinguishers,Alarms',0,'All clear','1','No issues','ops','2023-04-01','safety','2023-04-16','Approved','v1.0');
INSERT INTO Stadium_Emergency_Evacuation_Drills VALUES (2,102,'2023-07-20','BombThreat','250','390','Luis Martinez','Mock bomb threat announcement',0,6,'PA System,Evac Maps',1,'Improved PA clarity','1','Minor PA delay','ops','2023-07-01','safety','2023-07-21','Approved','v1.1');
INSERT INTO Stadium_Emergency_Evacuation_Drills VALUES (3,103,'2023-10-05','Earthquake','300','360','Sofia Patel','Seismic activity simulation',1,7,'Seismographs,ExitSigns',0,'All systems functional','1','Excellent performance','ops','2023-09-20','safety','2023-10-06','Approved','v1.2');

-- Club digital signature approvals
CREATE TABLE Club_Digital_Signature_Approvals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    document_type TEXT,
    document_id TEXT,
    signer_name TEXT,
    signer_role TEXT,
    signature_date TEXT,
    ip_address TEXT,
    device_type TEXT,
    location TEXT,
    approval_status TEXT,
    comments TEXT,
    version_number INTEGER,
    hash_value TEXT,
    signed_copy_path TEXT,
    verification_method TEXT,
    verified_by TEXT,
    verification_date TEXT,
    created_timestamp TEXT,
    updated_timestamp TEXT,
    archive_flag INTEGER
);
INSERT INTO Club_Digital_Signature_Approvals VALUES (1,10,'Sponsorship','SP001','Alice Green','CEO','2023-06-01','192.168.1.10','Desktop','London','Approved','All terms accepted',1,'AB12CD34EF56','/signatures/SP001_v1.pdf','HashCheck','LegalDept','2023-06-02','2023-06-01','2023-06-02',0);
INSERT INTO Club_Digital_Signature_Approvals VALUES (2,10,'Contract','CT045','Bob White','SportDirector','2023-07-15','192.168.1.20','Laptop','Manchester','Pending','Awaiting finance sign‑off',2,'CD34EF56AB12','/signatures/CT045_v2.pdf','SignatureLog','FinanceDept','2023-07-16','2023-07-15','2023-07-16',0);
INSERT INTO Club_Digital_Signature_Approvals VALUES (3,10,'Policy','PL099','Clara Black','HRManager','2023-08-20','192.168.1.30','Tablet','Liverpool','Approved','Policy updated for 2023',1,'EF56AB12CD34','/signatures/PL099_v1.pdf','AuditTrail','HRDept','2023-08-21','2023-08-20','2023-08-21',0);

-- Match referee equipment checklist
CREATE TABLE Match_Referee_Equipment_Checklist (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    referee_id INTEGER,
    equipment_set TEXT,
    checklist_date TEXT,
    whistle_condition TEXT,
    cards_condition TEXT,
    camera_model TEXT,
    camera_battery_level INTEGER,
    radio_frequency TEXT,
    earpiece_status TEXT,
    notebook_present INTEGER,
    water_bottle_present INTEGER,
    first_aid_kit_present INTEGER,
    notes TEXT,
    verified_by TEXT,
    verification_time TEXT,
    issues_found INTEGER,
    corrective_action TEXT,
    overall_status TEXT,
    created_timestamp TEXT
);
INSERT INTO Match_Referee_Equipment_Checklist VALUES (1,5001,200,'Standard','2023-08-12','Good','New','CanonX100',85,'101.5MHz','Operational',1,1,1,'All items ready','Supervisor','09:00','0','None','Pass','2023-08-12');
INSERT INTO Match_Referee_Equipment_Checklist VALUES (2,5002,201,'Advanced','2023-09-18','Worn','Good','SonyZ50',70,'102.0MHz','LowBattery',1,1,0,'First aid kit missing','Supervisor','10:15','1','Add kit','Fail','2023-09-18');
INSERT INTO Match_Referee_Equipment_Checklist VALUES (3,5003,202,'Standard','2023-10-03','Good','Good','NikonD200',90,'103.2MHz','Operational',1,0,1,'Water bottle not supplied','Supervisor','08:45','1','Provide bottle','Pass','2023-10-03');

-- Youth academy instructor certifications
CREATE TABLE Youth_Academy_Instructor_Certifications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    academy_id INTEGER,
    instructor_name TEXT,
    certification_name TEXT,
    certification_body TEXT,
    issue_date TEXT,
    expiry_date TEXT,
    certification_number TEXT,
    level INTEGER,
    is_active INTEGER,
    last_renewal_date TEXT,
    next_renewal_due TEXT,
    training_hours INTEGER,
    specialty_area TEXT,
    notes TEXT,
    created_by TEXT,
    created_timestamp TEXT,
    updated_by TEXT,
    updated_timestamp TEXT,
    audit_status TEXT,
    compliance_score INTEGER
);
INSERT INTO Youth_Academy_Instructor_Certifications VALUES (1,1,'Diego Martinez','CoachingLevel1','NationalFA','2021-03-01','2024-03-01','CERT001',1,1,'2022-03-01','2023-03-01',120,'Technical','Excellent performer','admin','2021-03-01','admin','2022-03-01','Compliant',95);
INSERT INTO Youth_Academy_Instructor_Certifications VALUES (2,1,'Sara Liu','StrengthAndConditioning','InternationalSportsOrg','2020-05-15','2023-05-15','CERT002',2,0,'2021-05-15','2022-05-15',150,'Physical','License lapsed, pending renewal','admin','2020-05-15','admin','2021-05-15','NonCompliant',70);
INSERT INTO Youth_Academy_Instructor_Certifications VALUES (3,1,'Ahmed Khan','Goalkeeping','FAAcademy','2022-01-20','2025-01-20','CERT003',1,1,'2023-01-20','2024-01-20',80,'Goalkeeping','New addition to staff','admin','2022-01-20','admin','2023-01-20','Compliant',88);