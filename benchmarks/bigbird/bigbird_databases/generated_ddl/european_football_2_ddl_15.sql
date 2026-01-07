-- Coach profile information
CREATE TABLE Coach_Profiles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    coach_api_id INTEGER UNIQUE,
    first_name TEXT,
    last_name TEXT,
    birthdate TEXT,
    nationality TEXT,
    license_level TEXT,
    years_experience INTEGER,
    preferred_formation TEXT,
    tactical_philosophy TEXT,
    last_club TEXT,
    contract_start TEXT,
    contract_end TEXT,
    salary INTEGER,
    bonus_structure TEXT,
    languages_spoken TEXT,
    education TEXT,
    certifications TEXT,
    social_media_followers INTEGER,
    win_rate_percent REAL,
    trophies_won INTEGER,
    performance_rating REAL
);

INSERT INTO Coach_Profiles (coach_api_id,first_name,last_name,birthdate,nationality,license_level,years_experience,preferred_formation,tactical_philosophy,last_club,contract_start,contract_end,salary,bonus_structure,languages_spoken,education,certifications,social_media_followers,win_rate_percent,trophies_won,performance_rating) VALUES (101,'John','Doe','1975-04-12','England','UEFAPro','15','4-3-3','PossessionBased','ManchesterUnited','2022-07-01','2025-06-30',2500000,'PerformanceBased','English,Spanish','SportsScience','UEFALevelA',150000,58.7,3,8.2);
INSERT INTO Coach_Profiles (coach_api_id,first_name,last_name,birthdate,nationality,license_level,years_experience,preferred_formation,tactical_philosophy,last_club,contract_start,contract_end,salary,bonus_structure,languages_spoken,education,certifications,social_media_followers,win_rate_percent,trophies_won,performance_rating) VALUES (102,'Maria','Gonzalez','1980-09-23','Spain','UEFAPro','12','4-2-3-1','HighPress','RealMadrid','2021-01-15','2024-12-31',1800000,'GoalBased','Spanish,English','PhysicalEducation','UEFALevelB',95000,62.4,2,7.5);
INSERT INTO Coach_Profiles (coach_api_id,first_name,last_name,birthdate,nationality,license_level,years_experience,preferred_formation,tactical_philosophy,last_club,contract_start,contract_end,salary,bonus_structure,languages_spoken,education,certifications,social_media_followers,win_rate_percent,trophies_won,performance_rating) VALUES (103,'Liu','Wei','1972-03-08','China','UEFAPro','20','3-5-2','DefensiveStability','ShanghaiShenhua','2020-05-01','2026-04-30',2200000,'AppearanceBased','Chinese,English','CoachingScience','UEFALevelA',120000,55.3,4,8.0);

-- Medical team staff details
CREATE TABLE Medical_Team_Staff (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    staff_api_id INTEGER UNIQUE,
    first_name TEXT,
    last_name TEXT,
    role TEXT,
    specialization TEXT,
    certification TEXT,
    years_experience INTEGER,
    birthdate TEXT,
    nationality TEXT,
    employed_since TEXT,
    contract_end TEXT,
    salary INTEGER,
    shift_pattern TEXT,
    primary_clinic TEXT,
    secondary_clinic TEXT,
    languages_spoken TEXT,
    phone_extension INTEGER,
    email TEXT,
    on_call BOOLEAN,
    injury_cases_handled INTEGER,
    rehab_success_rate REAL,
    performance_score REAL
);

INSERT INTO Medical_Team_Staff (staff_api_id,first_name,last_name,role,specialization,certification,years_experience,birthdate,nationality,employed_since,contract_end,salary,shift_pattern,primary_clinic,secondary_clinic,languages_spoken,phone_extension,email,on_call,injury_cases_handled,rehab_success_rate,performance_score) VALUES (201,'Emma','Clark','Physiotherapist','KneeRehab','PTLevel2',8,'1988-11-02','UK','2018-03-01','2023-12-31',90000,'Day','MainClinic','WestWing','English,French',112,'emma.clark@club.com',1,150,0.92,8.7);
INSERT INTO Medical_Team_Staff (staff_api_id,first_name,last_name,role,specialization,certification,years_experience,birthdate,nationality,employed_since,contract_end,salary,shift_pattern,primary_clinic,secondary_clinic,languages_spoken,phone_extension,email,on_call,injury_cases_handled,rehab_success_rate,performance_score) VALUES (202,'Hiro','Tanaka','TeamDoctor','SportsMedicine','MDSports',12,'1976-06-15','Japan','2015-07-01','2025-06-30',150000,'Rotating','EastClinic','NorthClinic','Japanese,English',215,'hiro.tanaka@club.com',0,340,0.88,9.1);
INSERT INTO Medical_Team_Staff (staff_api_id,first_name,last_name,role,specialization,certification,years_experience,birthdate,nationality,employed_since,contract_end,salary,shift_pattern,primary_clinic,secondary_clinic,languages_spoken,phone_extension,email,on_call,injury_cases_handled,rehab_success_rate,performance_score) VALUES (203,'Sara','Muller','Nutritionist','PerformanceNutrition','CNLevel1',6,'1990-02-20','Germany','2020-01-15','2024-12-31',85000,'Day','NutritionCenter','', 'German,English',317,'sara.muller@club.com',1,80,0.95,8.3);

-- Fan loyalty program details
CREATE TABLE Fan_Loyalty_Programs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    program_code TEXT UNIQUE,
    program_name TEXT,
    launch_date TEXT,
    points_per_ticket INTEGER,
    points_per_merchandise INTEGER,
    tier_bronze_min INTEGER,
    tier_silver_min INTEGER,
    tier_gold_min INTEGER,
    tier_platinum_min INTEGER,
    benefit_bracket TEXT,
    redemption_rate REAL,
    partner_brand TEXT,
    activation_cost INTEGER,
    annual_budget INTEGER,
    average_engagement_score REAL,
    total_members INTEGER,
    active_members INTEGER,
    churn_rate REAL,
    digital_platform TEXT,
    marketing_channel TEXT,
    reward_catalog_size INTEGER,
    average_redemption_value REAL,
    satisfaction_score REAL
);

INSERT INTO Fan_Loyalty_Programs (program_code,program_name,launch_date,points_per_ticket,points_per_merchandise,tier_bronze_min,tier_silver_min,tier_gold_min,tier_platinum_min,benefit_bracket,redemption_rate,partner_brand,activation_cost,annual_budget,average_engagement_score,total_members,active_members,churn_rate,digital_platform,marketing_channel,reward_catalog_size,average_redemption_value,satisfaction_score) VALUES ('FLP01','Club Elite','2019-08-01',10,5,0,500,1500,3000','BronzeSilverGoldPlatinum',0.07,'Nike',500000,2000000,78.5,120000,105000,0.12,'MobileApp','Email',250,12.5,8.6);
INSERT INTO Fan_Loyalty_Programs (program_code,program_name,launch_date,points_per_ticket,points_per_merchandise,tier_bronze_min,tier_silver_min,tier_gold_min,tier_platinum_min,benefit_bracket,redemption_rate,partner_brand,activation_cost,annual_budget,average_engagement_score,total_members,active_members,churn_rate,digital_platform,marketing_channel,reward_catalog_size,average_redemption_value,satisfaction_score) VALUES ('FLP02','Supporter Circle','2020-03-15',8,4,0,400,1200,2500','BronzeSilverGold',0.06,'Adidas',400000,1500000,74.2,95000,82000,0.14,'WebPortal','SocialMedia',180,9.8,8.2);
INSERT INTO Fan_Loyalty_Programs (program_code,program_name,launch_date,points_per_ticket,points_per_merchandise,tier_bronze_min,tier_silver_min,tier_gold_min,tier_platinum_min,benefit_bracket,redemption_rate,partner_brand,activation_cost,annual_budget,average_engagement_score,total_members,active_members,churn_rate,digital_platform,marketing_channel,reward_catalog_size,average_redemption_value,satisfaction_score) VALUES ('FLP03','FanPlus','2021-11-10',12,6,0,600,1800,3500','BronzeSilverGoldPlatinum',0.08,'Puma',600000,2500000,81.0,140000,130000,0.09,'MobileApp','PushNotifications',300,11.3,9.0);

-- Stadium construction and renovation projects
CREATE TABLE Stadium_Construction_Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    project_code TEXT UNIQUE,
    project_name TEXT,
    stadium_id INTEGER,
    start_date TEXT,
    expected_completion TEXT,
    actual_completion TEXT,
    budget_estimate INTEGER,
    budget_spent INTEGER,
    contractor_name TEXT,
    project_manager TEXT,
    phase_design INTEGER,
    phase_permitting INTEGER,
    phase_groundwork INTEGER,
    phase_structural INTEGER,
    phase_finishing INTEGER,
    sustainability_rating TEXT,
    seats_added INTEGER,
    facilities_upgraded INTEGER,
    public_transport_links INTEGER,
    community_impact_score REAL,
    risk_level TEXT,
    status TEXT,
    notes TEXT
);

INSERT INTO Stadium_Construction_Projects (project_code,project_name,stadium_id,start_date,expected_completion,actual_completion,budget_estimate,budget_spent,contractor_name,project_manager,phase_design,phase_permitting,phase_groundwork,phase_structural,phase_finishing,sustainability_rating,seats_added,facilities_upgraded,public_transport_links,community_impact_score,risk_level,status,notes) VALUES ('SC001','North Stand Expansion',5,'2022-01-10','2024-05-30','',85000000,0,'BuildCorp','Laura Smith',1,0,0,0,0,'Gold',12000,3,2,78.5,'Medium','Planning','');
INSERT INTO Stadium_Construction_Projects (project_code,project_name,stadium_id,start_date,expected_completion,actual_completion,budget_estimate,budget_spent,contractor_name,project_manager,phase_design,phase_permitting,phase_groundwork,phase_structural,phase_finishing,sustainability_rating,seats_added,facilities_upgraded,public_transport_links,community_impact_score,risk_level,status,notes) VALUES ('SC002','LED Lighting Upgrade',3,'2021-06-01','2022-12-15','2022-12-10',12000000,11850000,'LightTech','Marco Ruiz',1,1,1,1,1,'Platinum',0,2,1,85.2,'Low','Completed','Energy saving 30%');
INSERT INTO Stadium_Construction_Projects (project_code,project_name,stadium_id,start_date,expected_completion,actual_completion,budget_estimate,budget_spent,contractor_name,project_manager,phase_design,phase_permitting,phase_groundwork,phase_structural,phase_finishing,sustainability_rating,seats_added,facilities_upgraded,public_transport_links,community_impact_score,risk_level,status,notes) VALUES ('SC003','South Wing Renovation',7,'2023-03-15','2025-09-30','',60000000,15000000,'RenovaBuild','Nina Patel',1,0,0,0,0,'Silver',8000,4,3,70.0,'High','InProgress','');

-- Broadcast advertisement slots
CREATE TABLE Broadcast_Ad_Slots (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    slot_id TEXT UNIQUE,
    match_id INTEGER,
    broadcaster TEXT,
    start_minute INTEGER,
    end_minute INTEGER,
    ad_category TEXT,
    advertiser_name TEXT,
    cost INTEGER,
    impressions_estimated INTEGER,
    click_through_rate REAL,
    viewability_percentage REAL,
    ad_format TEXT,
    creative_type TEXT,
    language TEXT,
    region TEXT,
    frequency_cap INTEGER,
    bonus_included BOOLEAN,
    contract_start TEXT,
    contract_end TEXT,
    performance_score REAL,
    notes TEXT,
    last_updated TEXT,
    approved_by TEXT,
    compliance_status TEXT,
    revenue_share_percentage REAL
);

INSERT INTO Broadcast_Ad_Slots (slot_id,match_id,broadcaster,start_minute,end_minute,ad_category,advertiser_name,cost,impressions_estimated,click_through_rate,viewability_percentage,ad_format,creative_type,language,region,frequency_cap,bonus_included,contract_start,contract_end,performance_score,notes,last_updated,approved_by,compliance_status,revenue_share_percentage) VALUES ('ADS001',45,'SportTV',15,18,'Automotive','AutoMax',25000,500000,0.045,92.3,'Video','Animated','English','Europe',3,0,'2022-01-01','2022-12-31',8.2,'','2022-03-10','John Doe','Approved',15.0);
INSERT INTO Broadcast_Ad_Slots (slot_id,match_id,broadcaster,start_minute,end_minute,ad_category,advertiser_name,cost,impressions_estimated,click_through_rate,viewability_percentage,ad_format,creative_type,language,region,frequency_cap,bonus_included,contract_start,contract_end,performance_score,notes,last_updated,approved_by,compliance_status,revenue_share_percentage) VALUES ('ADS002',78,'LiveStream',45,48,'Technology','TechNova',18000,350000,0.032,88.7,'Banner','Static','Spanish','SouthAmerica',2,1,'2022-05-15','2023-05-14',7.5,'','2022-06-01','Maria Lopez','Pending',12.5);
INSERT INTO Broadcast_Ad_Slots (slot_id,match_id,broadcaster,start_minute,end_minute,ad_category,advertiser_name,cost,impressions_estimated,click_through_rate,viewability_percentage,ad_format,creative_type,language,region,frequency_cap,bonus_included,contract_start,contract_end,performance_score,notes,last_updated,approved_by,compliance_status,revenue_share_percentage) VALUES ('ADS003',102,'GlobalSports',30,33,'Beverage','DrinkUp',22000,420000,0.038,90.1,'Video','LiveAction','French','Africa',3,0,'2023-02-01','2023-11-30',8.0,'','2023-03-15','Liam Smith','Approved',14.0);

-- Travel logistics for teams and officials
CREATE TABLE Travel_Logistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    itinerary_id TEXT UNIQUE,
    match_id INTEGER,
    team_or_official TEXT,
    departure_airport TEXT,
    arrival_airport TEXT,
    departure_time TEXT,
    arrival_time TEXT,
    transport_mode TEXT,
    accommodation_name TEXT,
    room_type TEXT,
    number_of_rooms INTEGER,
    meal_plan TEXT,
    travel_cost INTEGER,
    accommodation_cost INTEGER,
    total_cost INTEGER,
    travel_agency TEXT,
    liaison_officer TEXT,
    emergency_contact TEXT,
    covid_protocols TEXT,
    special_requests TEXT,
    confirmed BOOLEAN,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    priority_level TEXT
);

INSERT INTO Travel_Logistics (itinerary_id,match_id,team_or_official,departure_airport,arrival_airport,departure_time,arrival_time,transport_mode,accommodation_name,room_type,number_of_rooms,meal_plan,travel_cost,accommodation_cost,total_cost,travel_agency,liaison_officer,emergency_contact,covid_protocols,special_requests,confirmed,notes,created_at,updated_at,status,priority_level) VALUES ('TRV001',55,'Team','LHR','CDG','2022-09-10 08:30','2022-09-10 11:45','Flight','HotelParis','Suite',2,'FullBoard',12000,8000,20000,'TravelCo','Anna Becker','+447700900111','PCRTest','LateCheckIn',1,'','2022-08-01','2022-08-15','Booked','High');
INSERT INTO Travel_Logistics (itinerary_id,match_id,team_or_official,departure_airport,arrival_airport,departure_time,arrival_time,transport_mode,accommodation_name,room_type,number_of_rooms,meal_plan,travel_cost,accommodation_cost,total_cost,travel_agency,liaison_officer,emergency_contact,covid_protocols,special_requests,confirmed,notes,created_at,updated_at,status,priority_level) VALUES ('TRV002',67,'Official','JFK','LAX','2023-03-05 14:00','2023-03-05 17:30','Flight','LAInn','Standard',1,'BreakfastOnly',5000,1500,6500,'FlyHigh','Mark Daniels','+12125551234','VaccinationProof','WheelchairAccess',1,'','2023-02-20','2023-02-25','Confirmed','Medium');
INSERT INTO Travel_Logistics (itinerary_id,match_id,team_or_official,departure_airport,arrival_airport,departure_time,arrival_time,transport_mode,accommodation_name,room_type,number_of_rooms,meal_plan,travel_cost,accommodation_cost,total_cost,travel_agency,liaison_officer,emergency_contact,covid_protocols,special_requests,confirmed,notes,created_at,updated_at,status,priority_level) VALUES ('TRV003',89,'Team','NRT','SYD','2024-07-12 09:45','2024-07-12 19:20','Flight','SydneyResort','Deluxe',3,'AllInclusive',18000,12000,30000,'GlobeTravel','Yuki Tanaka','+819012345678','RapidTest','GymAccess',0,'Pending approval','2024-06-01','2024-06-15','Pending','High');

-- Equipment inspection records
CREATE TABLE Equipment_Inspection_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    inspection_id TEXT UNIQUE,
    equipment_id INTEGER,
    equipment_type TEXT,
    inspection_date TEXT,
    inspector_name TEXT,
    status TEXT,
    notes TEXT,
    next_due_date TEXT,
    location TEXT,
    serial_number TEXT,
    manufacturer TEXT,
    warranty_expiration TEXT,
    calibration_required BOOLEAN,
    calibration_date TEXT,
    safety_rating INTEGER,
    usage_hours INTEGER,
    last_maintenance_cost INTEGER,
    total_maintenance_cost INTEGER,
    depreciation_value INTEGER,
    compliance_certificate TEXT,
    risk_level TEXT,
    created_at TEXT,
    updated_at TEXT,
    approved_by TEXT,
    verification_status TEXT
);

INSERT INTO Equipment_Inspection_Records (inspection_id,equipment_id,equipment_type,inspection_date,inspector_name,status,notes,next_due_date,location,serial_number,manufacturer,warranty_expiration,calibration_required,calibration_date,safety_rating,usage_hours,last_maintenance_cost,total_maintenance_cost,depreciation_value,compliance_certificate,risk_level,created_at,updated_at,approved_by,verification_status) VALUES ('INSP001',301,'TrainingCone','2022-11-20','Luis Gomez','Pass','No issues','2023-11-20','TrainingGroundA','TC-1001','SportGear','2025-12-31',0,NULL,9,150,200,1200,5000,'CERT123','Low','2022-11-20','2022-11-20','HeadCoach','Verified');
INSERT INTO Equipment_Inspection_Records (inspection_id,equipment_id,equipment_type,inspection_date,inspector_name,status,notes,next_due_date,location,serial_number,manufacturer,warranty_expiration,calibration_required,calibration_date,safety_rating,usage_hours,last_maintenance_cost,total_maintenance_cost,depreciation_value,compliance_certificate,risk_level,created_at,updated_at,approved_by,verification_status) VALUES ('INSP002',452,'GoalPost','2023-03-15','Emily Reed','Pass','Minor rust treated','2024-03-15','StadiumEast','GP-2020','GoalMakers','2028-08-15',0,NULL,8,2500,500,3000,10000,'CERT456','Medium','2023-03-15','2023-03-15','FacilitiesMgr','Verified');
INSERT INTO Equipment_Inspection_Records (inspection_id,equipment_id,equipment_type,inspection_date,inspector_name,status,notes,next_due_date,location,serial_number,manufacturer,warranty_expiration,calibration_required,calibration_date,safety_rating,usage_hours,last_maintenance_cost,total_maintenance_cost,depreciation_value,compliance_certificate,risk_level,created_at,updated_at,approved_by,verification_status) VALUES ('INSP003',578,'HeartRateMonitor','2023-07-01','Dr. Lee','Fail','Battery replacement needed','2023-08-01','MedicalRoom','HRM-789','HealthTech','2024-06-30',1,'2023-07-01',5,500,0,0,2000,'CERT789','High','2023-07-01','2023-07-01','MedicalDirector','Pending');

-- Digital content library for media assets
CREATE TABLE Digital_Content_Library (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id TEXT UNIQUE,
    asset_type TEXT,
    title TEXT,
    description TEXT,
    file_path TEXT,
    file_size_mb INTEGER,
    duration_seconds INTEGER,
    resolution TEXT,
    codec TEXT,
    created_date TEXT,
    uploaded_by TEXT,
    language TEXT,
    region TEXT,
    usage_rights TEXT,
    expiration_date TEXT,
    view_count INTEGER,
    download_count INTEGER,
    rating REAL,
    tags TEXT,
    related_match_id INTEGER,
    related_player_id INTEGER,
    status TEXT,
    last_accessed TEXT,
    approved_by TEXT,
    compliance_flag BOOLEAN,
    archival_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Digital_Content_Library (asset_id,asset_type,title,description,file_path,file_size_mb,duration_seconds,resolution,codec,created_date,uploaded_by,language,region,usage_rights,expiration_date,view_count,download_count,rating,tags,related_match_id,related_player_id,status,last_accessed,approved_by,compliance_flag,archival_status,notes,created_at,updated_at) VALUES ('DC001','Video','Goal Celebration Montage','Compilation of top 10 goals','/media/goals2022.mp4',350,7200,'1080p','H.264','2022-12-10','MediaTeam','English','Global','ClubUse','2025-12-31',1200,300,4.8,'goal,celebration,2022',45,102,'Active','2023-01-05','John Doe',0,'Archived','', '2022-12-10','2023-01-10');
INSERT INTO Digital_Content_Library (asset_id,asset_type,title,description,file_path,file_size_mb,duration_seconds,resolution,codec,created_date,uploaded_by,language,region,usage_rights,expiration_date,view_count,download_count,rating,tags,related_match_id,related_player_id,status,last_accessed,approved_by,compliance_flag,archival_status,notes,created_at,updated_at) VALUES ('DC002','Image','Stadium Panorama','360 degree view of stadium','/media/stadium_panorama.jpg',25,0,'4K','JPEG','2023-03-15','DesignTeam','English','Europe','Public','2028-03-15',800,0,4.5,'stadium,panorama',NULL,NULL,'Active','2023-04-01','Maria Lopez',0,'Active','', '2023-03-15','2023-04-02');
INSERT INTO Digital_Content_Library (asset_id,asset_type,title,description,file_path,file_size_mb,duration_seconds,resolution,codec,created_date,uploaded_by,language,region,usage_rights,expiration_date,view_count,download_count,rating,tags,related_match_id,related_player_id,status,last_accessed,approved_by,compliance_flag,archival_status,notes,created_at,updated_at) VALUES ('DC003','Audio','Club Anthem','Official club anthem audio file','/media/anthem.wav',15,180,'','PCM','2021-08-01','AudioTeam','English','Global','ClubUse','2026-08-01',1500,0,4.9','anthem,club',NULL,NULL,'Active','2022-12-20','Liam Smith',0,'Active','', '2021-08-01','2022-12-21');

-- Venue safety inspection logs
CREATE TABLE Venue_Safety_Inspections (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    inspection_id TEXT UNIQUE,
    venue_id INTEGER,
    inspection_date TEXT,
    inspector_name TEXT,
    fire_exits_status TEXT,
    emergency_lighting_status TEXT,
    crowd_control_measures TEXT,
    first_aid_kits_status TEXT,
    structural_integrity TEXT,
    electrical_safety TEXT,
    HVAC_system_status TEXT,
    signage_compliance TEXT,
    accessibility_compliance TEXT,
    incident_reported BOOLEAN,
    incident_description TEXT,
    corrective_actions TEXT,
    follow_up_date TEXT,
    overall_score INTEGER,
    rating_category TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    approved_by TEXT,
    compliance_status TEXT,
    risk_assessment TEXT,
    next_inspection_due TEXT,
    inspection_type TEXT,
    region TEXT,
    weather_conditions TEXT
);

INSERT INTO Venue_Safety_Inspections (inspection_id,venue_id,inspection_date,inspector_name,fire_exits_status,emergency_lighting_status,crowd_control_measures,first_aid_kits_status,structural_integrity,electrical_safety,HVAC_system_status,signage_compliance,accessibility_compliance,incident_reported,incident_description,corrective_actions,follow_up_date,overall_score,rating_category,notes,created_at,updated_at,approved_by,compliance_status,risk_assessment,next_inspection_due,inspection_type,region,weather_conditions) VALUES ('VS001',3,'2023-05-20','Karen Young','Adequate','Operational','Sufficient','Available','Good','Compliant','Operational','Clear','Compliant',0,NULL,NULL,NULL,92,'Excellent','', '2023-05-20','2023-05-20','FacilityMgr','Pass','Low','2024-05-20','Annual','NorthAmerica','Clear');
INSERT INTO Venue_Safety_Inspections (inspection_id,venue_id,inspection_date,inspector_name,fire_exits_status,emergency_lighting_status,crowd_control_measures,first_aid_kits_status,structural_integrity,electrical_safety,HVAC_system_status,signage_compliance,accessibility_compliance,incident_reported,incident_description,corrective_actions,follow_up_date,overall_score,rating_category,notes,created_at,updated_at,approved_by,compliance_status,risk_assessment,next_inspection_due,inspection_type,region,weather_conditions) VALUES ('VS002',5,'2022-11-10','Samuel Lee','Partial','Operational','Improved','Limited','Fair','MinorIssues','Operational','Partial','Partial',1,'Minor crowd crush near gate 4','Added extra stewards and signage', '2023-01-15',78,'Good','Follow-up required','2022-11-10','2022-11-10','SafetyOfficer','Conditional','Medium','2023-11-10','Special','Europe','Rainy');
INSERT INTO Venue_Safety_Inspections (inspection_id,venue_id,inspection_date,inspector_name,fire_exits_status,emergency_lighting_status,crowd_control_measures,first_aid_kits_status,structural_integrity,electrical_safety,HVAC_system_status,signage_compliance,accessibility_compliance,incident_reported,incident_description,corrective_actions,follow_up_date,overall_score,rating_category,notes,created_at,updated_at,approved_by,compliance_status,risk_assessment,next_inspection_due,inspection_type,region,weather_conditions) VALUES ('VS003',7,'2024-02-05','Olivia Chen','Adequate','NonFunctional','Sufficient','Available','Good','Compliant','Operational','Clear','Compliant',0,NULL,NULL,NULL,85,'Good','', '2024-02-05','2024-02-05','SiteMgr','Pass','Low','2025-02-05','Annual','Asia','Clear');

-- Club strategic plan milestones
CREATE TABLE Club_Strategic_Plan (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    plan_id TEXT UNIQUE,
    fiscal_year_start TEXT,
    fiscal_year_end TEXT,
    objective TEXT,
    key_results TEXT,
    responsible_department TEXT,
    budget_allocation INTEGER,
    target_metric TEXT,
    baseline_value REAL,
    target_value REAL,
    confidence_level REAL,
    risk_assessment TEXT,
    dependencies TEXT,
    status TEXT,
    progress_percentage REAL,
    last_review_date TEXT,
    next_review_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    approved_by TEXT,
    alignment_to_vision TEXT,
    stakeholder_engagement TEXT,
    monitoring_tool TEXT,
    escalation_procedure TEXT,
    communication_plan TEXT,
    evaluation_method TEXT,
    milestone_id TEXT,
    milestone_description TEXT,
    milestone_due_date TEXT,
    milestone_status TEXT,
    milestone_owner TEXT
);

INSERT INTO Club_Strategic_Plan (plan_id,fiscal_year_start,fiscal_year_end,objective,key_results,responsible_department,budget_allocation,target_metric,baseline_value,target_value,confidence_level,risk_assessment,dependencies,status,progress_percentage,last_review_date,next_review_date,notes,created_at,updated_at,approved_by,alignment_to_vision,stakeholder_engagement,monitoring_tool,escalation_procedure,communication_plan,evaluation_method,milestone_id,milestone_description,milestone_due_date,milestone_status,milestone_owner) VALUES ('SP001','2023-01-01','2023-12-31','Increase global fan base','+15% social followers','Marketing',2000000,'Followers','10M','11.5M',0.85,'Medium','CreativeCampaign','InProgress',45,'2023-06-01','2023-12-01','', '2023-01-01','2023-06-01','CEO','Strategic','High','Dashboard','NotifyPM','MonthlyNewsletter','Survey','M001','Launch hashtag campaign','2023-04-15','Completed','Alex Gomez');
INSERT INTO Club_Strategic_Plan (plan_id,fiscal_year_start,fiscal_year_end,objective,key_results,responsible_department,budget_allocation,target_metric,baseline_value,target_value,confidence_level,risk_assessment,dependencies,status,progress_percentage,last_review_date,next_review_date,notes,created_at,updated_at,approved_by,alignment_to_vision,stakeholder_engagement,monitoring_tool,escalation_procedure,communication_plan,evaluation_method,milestone_id,milestone_description,milestone_due_date,milestone_status,milestone_owner) VALUES ('SP002','2024-01-01','2024-12-31','Enhance youth academy output','Promote 3 U18 players to senior team','Academy',1200000,'PromotedPlayers','0','3',0.70,'High','CoachHiring','Planned',0,'2023-12-20','2024-06-01','', '2023-12-20','2024-01-01','Board','LongTerm','Medium','ProgressTracker','EscalateToDirector','QuarterlyReport','Metrics','M002','Scout 50 U15 talents','2024-03-30','Pending','Sofia Ramos');
INSERT INTO Club_Strategic_Plan (plan_id,fiscal_year_start,fiscal_year_end,objective,key_results,responsible_department,budget_allocation,target_metric,baseline_value,target_value,confidence_level,risk_assessment,dependencies,status,progress_percentage,last_review_date,next_review_date,notes,created_at,updated_at,approved_by,alignment_to_vision,stakeholder_engagement,monitoring_tool,escalation_procedure,communication_plan,evaluation_method,milestone_id,milestone_description,milestone_due_date,milestone_status,milestone_owner) VALUES ('SP003','2025-01-01','2025-12-31','Upgrade stadium facilities','Install solar panels covering 30% roof','Facilities',5000000,'EnergySavings','0%','30%',0.60,'Low','BudgetApproval','NotStarted',0,'2024-11-01','2025-06-01','', '2024-11-01','2024-11-01','CFO','Sustainability','Low','ProjectDashboard','NotifyOps','BiMonthlyBrief','ROI','M003','Select solar vendor','2025-02-15','Pending','Michael Lee');