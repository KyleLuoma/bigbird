-- Hero medical history table
CREATE TABLE hero_medical_history
(
    id INTEGER NOT NULL PRIMARY KEY,
    hero_id INTEGER,
    visit_date TEXT,
    diagnosis TEXT,
    treatment TEXT,
    physician_name TEXT,
    hospital_name TEXT,
    prescription TEXT,
    dosage_mg INTEGER,
    follow_up_date TEXT,
    notes TEXT,
    blood_type TEXT,
    allergies TEXT,
    height_cm INTEGER,
    weight_kg INTEGER,
    immunization_status TEXT,
    test_results TEXT,
    lab_technician TEXT,
    insurance_provider TEXT,
    claim_number TEXT,
    emergency_contact TEXT,
    emergency_contact_phone TEXT
);
INSERT INTO hero_medical_history VALUES (1,101,'2023-01-15','Concussion','Rest','DrSmith','MetroHospital','Ibuprofen',200,'2023-01-22','Patient recovered','O+','None',180,80,'Complete','CTScanClear','JohnDoe','HealthCo','HC12345','JaneDoe','5551234');
INSERT INTO hero_medical_history VALUES (2,102,'2023-02-10','Fracture','Casting','DrLee','CityClinic','Acetaminophen',500,'2023-02-24','Cast applied','A-','Penicillin',175,70,'Partial','XrayClear','AmyTan','MediPlan','MP9876','BobSmith','5555678');
INSERT INTO hero_medical_history VALUES (3,103,'2023-03-05','Allergy','Antihistamine','DrPatel','WestsideHealth','Cetirizine',10,'2023-03-12','Symptoms improved','B+','Pollen',190,85,'Complete','AllergyTestPositive','LiuWang','CarePlus','CP5432','AliceJones','5559012');

-- Fan social network table
CREATE TABLE fan_social_network
(
    id INTEGER NOT NULL PRIMARY KEY,
    fan_id INTEGER,
    platform_name TEXT,
    username TEXT,
    join_date TEXT,
    follower_count INTEGER,
    post_count INTEGER,
    average_likes INTEGER,
    average_comments INTEGER,
    verified_flag INTEGER,
    primary_language TEXT,
    timezone TEXT,
    last_active TEXT,
    profile_bio TEXT,
    favorite_hero_id INTEGER,
    favorite_villain_id INTEGER,
    interests TEXT,
    subscription_level TEXT,
    notification_enabled INTEGER,
    ad_preference TEXT,
    content_genre TEXT,
    engagement_score REAL,
    device_type TEXT,
    app_version TEXT,
    privacy_setting TEXT,
    last_password_change TEXT,
    two_factor_enabled INTEGER,
    referral_code TEXT,
    loyalty_points INTEGER,
    badge_count INTEGER
);
INSERT INTO fan_social_network VALUES (1,201,'Twitter','heroFan01','2020-05-01',12000,350,250,40,1,'English','UTC','2025-12-01','Loves epic battles',1,5,'Comics,Movies','Gold','Yes','Tech','Adventure',85.6,'Mobile','3.14','Public','2023-11-10',1,'REF123',4500,12);
INSERT INTO fan_social_network VALUES (2,202,'Instagram','villainWatcher','2019-08-15',8500,210,300,55,0,'Spanish','UTC+2','2025-11-28','Follows dark side',3,2,'Art,Design','Silver','No','Fashion','Mystery',73.2,'Tablet','2.9','FriendsOnly','2022-09-05',0,'REF456',3200,8);
INSERT INTO fan_social_network VALUES (3,203,'Reddit','multiverseGeek','2021-01-20',15000,500,180,30,1,'German','UTC-5','2025-11-30','Analyzes timelines',7,9,'Science,Theory','Platinum','Yes','Gaming','SciFi',92.4,'Desktop','4.0','Private','2024-02-18',1,'REF789',6100,20);

-- Merchandise production plan table
CREATE TABLE merchandise_production_plan
(
    id INTEGER NOT NULL PRIMARY KEY,
    item_id INTEGER,
    item_name TEXT,
    category TEXT,
    supplier_id INTEGER,
    planned_start_date TEXT,
    planned_end_date TEXT,
    batch_quantity INTEGER,
    unit_cost DECIMAL(10,2),
    total_cost DECIMAL(12,2),
    material_type TEXT,
    color_scheme TEXT,
    size_range TEXT,
    quality_grade TEXT,
    packaging_type TEXT,
    shipping_method TEXT,
    warehouse_location TEXT,
    safety_stock INTEGER,
    lead_time_days INTEGER,
    last_quality_check TEXT,
    approved_by TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_by TEXT,
    updated_at TEXT,
    production_status TEXT,
    rejection_reason TEXT,
    final_quantity INTEGER,
    waste_percentage REAL
);
INSERT INTO merchandise_production_plan VALUES (1,301,'ActionFigureA','Figurine',401,'2025-01-10','2025-02-20',5000,3.75,18750.00,'Plastic','RedBlue','Standard','A','Box','Air','WH1',200,30,'2025-02-18','ManagerA','Initial run','PlannerX','2025-01-09','SupervisorY','2025-02-19','Completed','',5000,2.5);
INSERT INTO merchandise_production_plan VALUES (2,302,'PosterB','Print',402,'2025-03-01','2025-03-15',20000,0.50,10000.00,'Paper','GreenYellow','Large','B','Roll','Ground','WH2',500,15,'2025-03-14','ManagerB','High demand','PlannerZ','2025-02-28','SupervisorW','2025-03-15','Completed','',20000,1.0);
INSERT INTO merchandise_production_plan VALUES (3,303,'TShirtC','Apparel',403,'2025-04-05','2025-05-10',8000,5.20,41600.00,'Cotton','Multicolor','SMLXL','A','Bag','Sea','WH3',300,45,'2025-05-08','ManagerC','Seasonal release','PlannerV','2025-04-04','SupervisorU','2025-05-09','InProgress','',0,0.0);

-- Licensing region statistics table
CREATE TABLE licensing_region_statistics
(
    id INTEGER NOT NULL PRIMARY KEY,
    region_code TEXT,
    region_name TEXT,
    total_licenses INTEGER,
    active_licenses INTEGER,
    expired_licenses INTEGER,
    revenue_usd DECIMAL(12,2),
    royalty_rate_percent REAL,
    average_license_value DECIMAL(10,2),
    top_publisher_id INTEGER,
    top_product_id INTEGER,
    compliance_issues INTEGER,
    audits_conducted INTEGER,
    pending_renewals INTEGER,
    average_renewal_time_days INTEGER,
    market_share_percent REAL,
    growth_rate_percent REAL,
    currency TEXT,
    last_report_date TEXT,
    notes TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT,
    data_source TEXT,
    verification_status TEXT,
    regional_manager TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    latitude REAL,
    longitude REAL
);
INSERT INTO licensing_region_statistics VALUES (1,'NA','NorthAmerica',1200,1150,50,8500000.00,7.5,7083.33,10,200,2,1,30,15,12.5,3.2,'USD','2025-11-01','Stable market','2025-10-15','AnalystA','2025-11-02','AnalystB','Internal','Verified','JohnDoe','john.doe@example.com','5551111',40.7128,-74.0060);
INSERT INTO licensing_region_statistics VALUES (2,'EU','Europe',950,900,50,6200000.00,6.8,6526.32,12,180,3,2,25,12,10.2,2.8,'EUR','2025-11-01','Growing interest','2025-10-16','AnalystC','2025-11-03','AnalystD','External','Verified','MariaRossi','maria.rossi@example.eu','5552222',48.8566,2.3522);
INSERT INTO licensing_region_statistics VALUES (3,'AP','AsiaPacific',800,770,30,5400000.00,8.0,6750.00,14,150,1,0,20,10,14.0,3.5,'USD','2025-11-01','Rapid expansion','2025-10-17','AnalystE','2025-11-04','AnalystF','Internal','Verified','LiWei','li.wei@example.cn','5553333',31.2304,121.4737);

-- Comic story arc summary table
CREATE TABLE comic_story_arc_summary
(
    id INTEGER NOT NULL PRIMARY KEY,
    arc_name TEXT,
    series_id INTEGER,
    start_issue INTEGER,
    end_issue INTEGER,
    total_issues INTEGER,
    primary_writer TEXT,
    primary_artist TEXT,
    publication_start_date TEXT,
    publication_end_date TEXT,
    genre TEXT,
    plot_summary TEXT,
    key_characters TEXT,
    major_events TEXT,
    continuity_impact TEXT,
    critical_acclaim_score REAL,
    fan_rating_score REAL,
    sales_volume INTEGER,
    print_run INTEGER,
    digital_downloads INTEGER,
    awards_won INTEGER,
    remake_flag INTEGER,
    spin_offs INTEGER,
    collected_edition_id INTEGER,
    editorial_notes TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT,
    status TEXT,
    notes TEXT,
    reference_url TEXT,
    language TEXT,
    region TEXT,
    isbn TEXT,
    page_count INTEGER
);
INSERT INTO comic_story_arc_summary VALUES (1,'Infinite Crisis',1001,1,7,7,'Geoff Johns','Jim Lee','2005-01-01','2005-07-01','Crossover','Universe reshaped by multiverse events','Superman, Flash, Green Lantern','Crisis of realities','Major cross‑title impact',9.2,8.9,500000,120000,250000,5,0,2,3001,'Highly praised','2025-10-20','EditorA','2025-11-01','EditorB','Published','','http://example.com/infinitecrisis','English','Global','9781234567890',176);
INSERT INTO comic_story_arc_summary VALUES (2,'Civil War',1002,1,7,7,'Mark Millar','Steve McNiven','2006-05-03','2006-12-13','Superhero','Conflict over registration law','Spider-Man, IronMan, Captain America','Registration Act','Divided community',8.7,8.3,450000,110000,200000,3,0,1,3002,'Controversial','2025-10-21','EditorC','2025-11-02','EditorD','Published','','http://example.com/civilwar','English','NorthAmerica','9780987654321',208);
INSERT INTO comic_story_arc_summary VALUES (3,'Age of Apocalypse',1003,1,6,6,'Scott Lobdell','Joe Madureira','1995-09-01','1995-12-01','Post‑Apocalyptic','Reality altered by mutant virus','X‑Men, Magneto, Wolverine','Apocalypse reigns','Redefined mutant timeline',8.5,8.0,300000,90000,150000,2,0,1,3003,'Cult classic','2025-10-22','EditorE','2025-11-03','EditorF','Published','','http://example.com/ageofapocalypse','English','Europe','9781122334455',192);

-- Superhero cinematic release table
CREATE TABLE superhero_cinematic_release
(
    id INTEGER NOT NULL PRIMARY KEY,
    film_title TEXT,
    director TEXT,
    release_date TEXT,
    runtime_minutes INTEGER,
    budget_musd REAL,
    box_office_musd REAL,
    rating_mpaa TEXT,
    primary_hero_id INTEGER,
    supporting_hero_ids TEXT,
    antagonist_id INTEGER,
    production_company TEXT,
    distribution_company TEXT,
    filming_location TEXT,
    cinematographer TEXT,
    editor TEXT,
    music_composer TEXT,
    visual_effects_studio TEXT,
    stunt_coordinator TEXT,
    costume_designer TEXT,
    script_writer TEXT,
    screenplay_writer TEXT,
    producer TEXT,
    executive_producer TEXT,
    marketing_budget_musd REAL,
    domestic_gross_musd REAL,
    international_gross_musd REAL,
    critical_score REAL,
    audience_score REAL,
    awards_won INTEGER,
    nominations INTEGER,
    franchise TEXT,
    sequel_flag INTEGER,
    prequel_flag INTEGER,
    spin_off_flag INTEGER,
    streaming_release_date TEXT,
    streaming_platform TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT
);
INSERT INTO superhero_cinematic_release VALUES (1,'The Dark Knight', 'Christopher Nolan','2008-07-18',152,185.0,1004.6,'PG13',2,'1,3',4,'Warner Bros.','Warner Bros.','Chicago','Wally Pfister','Lee Smith','Hans Zimmer','Double Negative','David Collins','Bob Ringwood','Jonathan Nolan','Christopher Nolan','Emma Thomas','Charles Roven',150.0,447.3,563.5,94.0,94.0,2,8,'Batman',0,0,0,'2025-05-01','Netflix','2025-10-01','AnalystG','2025-10-02','AnalystH');
INSERT INTO superhero_cinematic_release VALUES (2,'Avengers: Endgame','Anthony Russo','2019-04-26',181,356.0,2797.8,'PG13',5,'1,2,3,4','Thanos','Marvel Studios','Disney','Atlanta','Seamus McGarvey','Jeffrey Ford','Alan Silvestri','Industrial Light & Magic','James McClennan','Ruth E. Carter','Christopher Markus','Stephen McFeely','Kevin Feige',200.0,858.4,1939.4,94.0,90.0,1,10,'Avengers',1,0,0,'2025-04-30','Disney+','2025-09-30','AnalystI','2025-10-03','AnalystJ');
INSERT INTO superhero_cinematic_release VALUES (3,'Spider-Man: Into the Spider-Verse','Bob Persichetti','2018-12-14',117,90.0,375.5,'PG','Spider‑Man','Miles Morales, Gwen Stacy','Kingpin','Sony Pictures','Sony Pictures','Atlanta','Bill Pope','Robert Fisher Jr.','Daniel Pemberton','Sony Pictures Imageworks','Stacy Czemier','Lackie House','Phil Lord','Phil Lord','Phil Lord','Avi Arad',50.0,190.2,185.3,87.0,89.0,0,0,'Spider‑Man',0,0,0,'2025-03-15','Netflix','2025-09-28','AnalystK','2025-10-04','AnalystL');

-- Multiverse branch activity table
CREATE TABLE multiverse_branch_activity
(
    id INTEGER NOT NULL PRIMARY KEY,
    branch_name TEXT,
    activation_date TEXT,
    deactivation_date TEXT,
    active_flag INTEGER,
    governing_body TEXT,
    primary_universe_id INTEGER,
    number_of_realms INTEGER,
    average_stability_index REAL,
    known_anomalies TEXT,
    total_events INTEGER,
    major_event_ids TEXT,
    resource_allocation_musd REAL,
    security_level TEXT,
    diplomatic_relations TEXT,
    trade_volume_musd REAL,
    research_projects INTEGER,
    tech_level TEXT,
    population_estimate INTEGER,
    energy_consumption_petajoules REAL,
    waste_output_petatonnes REAL,
    cultural_artifacts INTEGER,
    last_audit_date TEXT,
    audit_status TEXT,
    notes TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT,
    status TEXT,
    external_link TEXT
);
INSERT INTO multiverse_branch_activity VALUES (1,'Prime','2020-01-01',NULL,1,'Council of Elders',1,12,92.5,'None',150,'101,102,103',500.0,'High','Allied',1200.0,45,'Advanced',5000000,2500.0,15.0,300,'2025-09-15','Compliant','Stable branch','2025-10-05','AnalystM','2025-10-06','AnalystN','Active','http://example.com/prime');
INSERT INTO multiverse_branch_activity VALUES (2,'Eclipse','2022-06-15',NULL,1,'Shadow Council',5,8,78.3,'Temporal Rift',85,'201,202',300.0,'Medium','Neutral',800.0,30,'Intermediate',2000000,1200.0,8.5,150,'2025-09-16','Under Review','Fluctuating stability','2025-10-07','AnalystO','2025-10-08','AnalystP','Active','http://example.com/eclipse');
INSERT INTO multiverse_branch_activity VALUES (3,'Abyss','2023-11-01','2025-12-31',0,'Void Assembly',9,4,45.0,'Dimensional Tear',40,'301,302',150.0,'Low','Hostile',200.0,12,'Primitive',500000,600.0,3.2,50,'2025-09-17','Closed','Decommissioned','2025-10-09','AnalystQ','2025-10-10','AnalystR','Inactive','http://example.com/abyss');

-- Secret identity access audit table
CREATE TABLE secret_identity_access_audit
(
    id INTEGER NOT NULL PRIMARY KEY,
    hero_id INTEGER,
    accessed_by_user_id INTEGER,
    access_timestamp TEXT,
    access_purpose TEXT,
    access_method TEXT,
    ip_address TEXT,
    location TEXT,
    device_type TEXT,
    authentication_status TEXT,
    two_factor_used INTEGER,
    clearance_level INTEGER,
    notes TEXT,
    approved_by INTEGER,
    approval_timestamp TEXT,
    denial_reason TEXT,
    risk_score REAL,
    data_elements_accessed TEXT,
    duration_seconds INTEGER,
    compliance_flag INTEGER,
    audit_operator TEXT,
    audit_timestamp TEXT,
    remediation_action TEXT,
    severity_level TEXT,
    policy_version TEXT,
    incident_id INTEGER,
    escalation_required INTEGER,
    resolved_timestamp TEXT,
    resolution_notes TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT
);
INSERT INTO secret_identity_access_audit VALUES (1,101,501,'2025-10-01 09:15:00','Investigation','WebPortal','192.168.1.10','Metropolis','Desktop','Success',1,5,'Accessed for legal case','601','2025-10-01 09:30:00','',2.5,'FullRecord',300,1,'AuditorA','2025-10-01 10:00:00','None','Low','v1.2',1001,0,NULL,NULL,'2025-10-01','AdminA','2025-10-01','AdminB');
INSERT INTO secret_identity_access_audit VALUES (2,102,502,'2025-10-02 14:45:00','Research','API','10.0.0.5','Gotham','Server','Success',1,4,'Statistical analysis of hero activity','602','2025-10-02 15:00:00','',1.8,'AnonymizedData',120,0,'AuditorB','2025-10-02 15:30:00','DataMasking','Medium','v1.2',1002,0,NULL,NULL,'2025-10-02','AdminC','2025-10-02','AdminD');
INSERT INTO secret_identity_access_audit VALUES (3,103,503,'2025-10-03 08:20:00','Unauthorized','MobileApp','172.16.0.2','Star City','Mobile','Failure',0,1,'Attempted breach','',NULL,'Invalid credentials','9.7','None',0,1,'AuditorC','2025-10-03 08:45:00','AccountLock','High','v1.2',1003,1,'2025-10-04','Password reset required','2025-10-03','AdminE','2025-10-03','AdminF');

-- Villain network profile table
CREATE TABLE villain_network_profile
(
    id INTEGER NOT NULL PRIMARY KEY,
    villain_id INTEGER,
    organization_name TEXT,
    rank TEXT,
    base_of_operations TEXT,
    known_allies TEXT,
    known_enemies TEXT,
    specialty TEXT,
    resources_musd REAL,
    influence_index REAL,
    criminal_score INTEGER,
    recruitment_rate REAL,
    training_facilities INTEGER,
    technology_level TEXT,
    average_operational_cost_musd REAL,
    recent_activity_summary TEXT,
    last_known_operation TEXT,
    status TEXT,
    captured_flag INTEGER,
    bounty_usd INTEGER,
    security_clearance_level INTEGER,
    public_perception TEXT,
    media_coverage TEXT,
    legal_status TEXT,
    last_arrest_date TEXT,
    next_target TEXT,
    strategic_goal TEXT,
    communication_channel TEXT,
    encryption_used INTEGER,
    safe_house_locations TEXT,
    asset_inventory TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT,
    notes TEXT
);
INSERT INTO villain_network_profile VALUES (1,301,'Shadow Syndicate','Leader','Underground Lair','Mercenary Guild, Rogue AI','Superhero Alliance','Cyber Warfare',750.0,88.5,95,0.85,3,'Advanced',45.0,'Coordinated cyber‑attacks on utilities','Data Breach at Metro Grid','Active',0,500000,5,'Feared','High','Wanted','2025-09-10','Global Power Grid','World Domination','EncryptedRadio',1,'LocationA,LocationB','Bots,Servers','2025-10-01','AnalystS','2025-10-02','AnalystT','Highly organized');
INSERT INTO villain_network_profile VALUES (2,302,'Crimson Cartel','Boss','Abandoned Warehouse','Street Gangs','Law Enforcement','Smuggling',300.0,62.0,70,0.45,1,'Intermediate',20.0,'Illicit trade of exotic goods','Contraband Shipment at Harbor','Active',0,250000,3,'Disliked','Medium','At Large','2025-08-15','Luxury Yacht','Control of Black Market','SecurePhone',0,'LocationC','Weapons,Contraband','2025-10-01','AnalystU','2025-10-03','AnalystV','Operative network');
INSERT INTO villain_network_profile VALUES (3,303,'Obsidian Order','Commander','Mountain Fortress','Cultists','Heroes','Dark Magic',500.0,78.0,80,0.60,2,'Mystic',30.0,'Rituals to summon entity','Summoning Ritual at Eclipse','Dormant',1,0,4,'Unknown','Low','Neutralized','2025-07-20','None','Preserve secrecy','MysticCircle',1,'LocationD','Artifacts,Scrolls','2025-10-01','AnalystW','2025-10-04','AnalystX','Contains dangerous artifacts');

-- Artifact exhibit schedule table
CREATE TABLE artifact_exhibit_schedule
(
    id INTEGER NOT NULL PRIMARY KEY,
    exhibit_name TEXT,
    artifact_id INTEGER,
    start_date TEXT,
    end_date TEXT,
    museum_name TEXT,
    gallery_hall TEXT,
    curatorial_lead TEXT,
    loan_origin TEXT,
    insurance_value_usd INTEGER,
    security_level TEXT,
    climate_control_required INTEGER,
    lighting_scheme TEXT,
    visitor_capacity INTEGER,
    ticket_price_usd REAL,
    expected_visitors INTEGER,
    promotional_campaign TEXT,
    sponsor_name TEXT,
    media_partner TEXT,
    educational_program TEXT,
    accessibility_features TEXT,
    opening_hours TEXT,
    closed_days TEXT,
    special_events TEXT,
    conservation_notes TEXT,
    transport_method TEXT,
    handling_procedure TEXT,
    installation_date TEXT,
    deinstallation_date TEXT,
    status TEXT,
    remarks TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT
);
INSERT INTO artifact_exhibit_schedule VALUES (1,'Origin of Light','4001','2025-11-01','2025-12-31','National Museum','Hall A','Dr Allen','Ancient Vault','2000000','High',1,'Spotlight','5000',15.0,12000,'Winter Campaign','TechCorp','GlobalNews','Kids Workshop','Wheelchair Access','09:00-17:00','Mon','Lecture Series','Handled with gloves','AirFreight','ColdChain','2025-10-28','2026-01-05','Scheduled','First of its kind','2025-10-01','CuratorA','2025-10-02','CuratorB');
INSERT INTO artifact_exhibit_schedule VALUES (2,'Celestial Relic','4002','2026-01-15','2026-03-15','City Art Gallery','Gallery 3','Ms Bennett','Space Agency','3500000','Medium',0,'Ambient','3000',20.0,8000,'New Year Promo','StarTech','MediaPlus','Astronomy Talk','Audio Guides','10:00-18:00','Tue','Star Gazing Night','No exposure to direct sunlight','SeaFreight','Standard','2026-01-10','2026-03-20','Planned','High public interest','2025-12-01','CuratorC','2025-12-02','CuratorD');
INSERT INTO artifact_exhibit_schedule VALUES (3,'Echoes of War','4003','2026-04-01','2026-06-30','Historical Museum','War Room','Dr Patel','National Archive','1500000','Low',0,'Dim','4000',12.0,15000,'Summer Showcase','HeritageFund','HistoryNow','Veteran Stories','Braille Signs','08:30-16:30','Wed','Veteran Day Ceremony','Maintain humidity at 45%','RoadTransport','Cushioned','2026-03-28','2026-07-05','Confirmed','Commemorative','2026-02-15','CuratorE','2026-02-16','CuratorF');

-- Hero fitness profile table
CREATE TABLE hero_fitness_profile
(
    id INTEGER NOT NULL PRIMARY KEY,
    hero_id INTEGER,
    assessment_date TEXT,
    aerobic_capacity_ml INTEGER,
    anaerobic_capacity_ml INTEGER,
    max_heart_rate INTEGER,
    resting_heart_rate INTEGER,
    vo2_max REAL,
    flexibility_score INTEGER,
    strength_score INTEGER,
    endurance_score INTEGER,
    body_fat_percentage REAL,
    muscle_mass_kg REAL,
    BMI REAL,
    injury_history TEXT,
    recovery_time_days INTEGER,
    nutrition_plan TEXT,
    supplement_regimen TEXT,
    sleep_hours_average REAL,
    stress_level INTEGER,
    mental_resilience_score INTEGER,
    agility_score INTEGER,
    balance_score INTEGER,
    reaction_time_ms INTEGER,
    training_frequency_per_week INTEGER,
    personal_trainer TEXT,
    gym_location TEXT,
    last_training_session TEXT,
    next_assessment_date TEXT,
    notes TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT,
    status TEXT
);
INSERT INTO hero_fitness_profile VALUES (1,101,'2025-09-01',3500,1500,210,55,55.0,85,90,88,12.5,78.0,24.5,'Knee sprain 2023',30,'High protein','Multivitamin',7.5,3,88,92,95,180,'John Coach','Metro Gym','2025-10-01','2026-03-01','Improving agility','2025-10-03','AnalystY','2025-10-04','AnalystZ','Active');
INSERT INTO hero_fitness_profile VALUES (2,102,'2025-09-15',3000,1300,200,60,48.0,80,85,80,15.0,70.0,23.1,'None',20,'Balanced diet','Omega3',8.0,2,82,85,88,160,'Alex Trainer','City Fitness','2025-10-02','2026-02-15','Maintain current regime','2025-10-04','AnalystAA','2025-10-05','AnalystBB','Active');
INSERT INTO hero_fitness_profile VALUES (3,103,'2025-08-20',3800,1600,220,50,60.0,90,95,93,10.0,85.0,25.0,'Shoulder injury 2022',40,'Keto','ProteinShake',7.0,4,90,94,97,200,'Sam Mentor','Elite Center','2025-09-30','2026-03-20','Focus on shoulder rehab','2025-10-05','AnalystCC','2025-10-06','AnalystDD','Active');

-- Hero training module table
CREATE TABLE hero_training_module
(
    id INTEGER NOT NULL PRIMARY KEY,
    module_name TEXT,
    description TEXT,
    difficulty_level TEXT,
    duration_minutes INTEGER,
    prerequisite_module_id INTEGER,
    training_type TEXT,
    instructor_name TEXT,
    location TEXT,
    equipment_needed TEXT,
    max_participants INTEGER,
    min_participants INTEGER,
    certification_required INTEGER,
    certification_name TEXT,
    assessment_method TEXT,
    pass_score REAL,
    cost_usd INTEGER,
    scheduled_start_date TEXT,
    scheduled_end_date TEXT,
    enrollment_deadline TEXT,
    status TEXT,
    enrollment_count INTEGER,
    feedback_score REAL,
    average_completion_time_minutes INTEGER,
    drop_rate_percent REAL,
    syllabus_link TEXT,
    resources_link TEXT,
    video_content_link TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT,
    notes TEXT
);
INSERT INTO hero_training_module VALUES (1,'Advanced Combat Tactics','High‑intensity combat drills','Hard',180,5,'Physical','Captain Rex','Central Dojo','Weapons, Mats',20,5,1,'Combat Certification','Practical Test',85.0,5000,'2025-11-01','2025-11-30','2025-10-25','Open',12,4.8,175,15.0,'http://example.com/syllabus1','http://example.com/resources1','http://example.com/video1','2025-10-01','AnalystEE','2025-10-02','AnalystFF','Requires prior completion of Basic Combat');
INSERT INTO hero_training_module VALUES (2,'Stealth Operations','Covert movement and infiltration','Medium',120,2,'Tactical','Agent Nova','Stealth Facility','Night Vision, Rope',15,3,0,'','Written Exam',70.0,3000,'2025-12-05','2025-12-20','2025-11-28','Open',9,4.5,110,10.0,'http://example.com/syllabus2','http://example.com/resources2','http://example.com/video2','2025-11-01','AnalystGG','2025-11-02','AnalystHH','Prerequisite: Basic Surveillance');
INSERT INTO hero_training_module VALUES (3,'Rescue & Evacuation','Mass rescue protocols','Easy',90,NULL,'Emergency','Dr Mira','Rescue Center','Rescue Gear',25,5,0,'','Simulation',80.0,2000,'2025-10-15','2025-10-25','2025-10-10','Open',20,4.2,85,5.0,'http://example.com/syllabus3','http://example.com/resources3','http://example.com/video3','2025-09-20','AnalystII','2025-09-21','AnalystJJ','Open to all heroes');

-- Secret identity access log table (different from audit for logging purposes)
CREATE TABLE secret_identity_access_log
(
    id INTEGER NOT NULL PRIMARY KEY,
    hero_id INTEGER,
    accessed_by TEXT,
    access_time TEXT,
    access_reason TEXT,
    source_ip TEXT,
    source_location TEXT,
    device TEXT,
    outcome TEXT,
    notes TEXT,
    logged_by TEXT,
    log_timestamp TEXT
);
INSERT INTO secret_identity_access_log VALUES (1,101,'AgentX','2025-09-30 08:00:00','Legal subpoena','203.0.113.5','Capital City','Desktop','Success','Provided documents per court order','System','2025-09-30 08:01:00');
INSERT INTO secret_identity_access_log VALUES (2,102,'ResearcherY','2025-10-02 14:20:00','Statistical study','198.51.100.8','Metroville','Server','Success','Aggregated anonymized data','System','2025-10-02 14:21:00');
INSERT INTO secret_identity_access_log VALUES (3,103,'Unknown','2025-10-03 22:15:00','Unauthorized access','192.0.2.10','Unknown','Mobile','Failure','Invalid credentials','System','2025-10-03 22:16:00');

-- Hero public profile table
CREATE TABLE hero_public_profile
(
    id INTEGER NOT NULL PRIMARY KEY,
    hero_id INTEGER,
    public_name TEXT,
    tagline TEXT,
    origin_story TEXT,
    debut_year INTEGER,
    first_appearance_issue TEXT,
    affiliated_team TEXT,
    primary_power TEXT,
    secondary_power TEXT,
    costume_color_scheme TEXT,
    catchphrase TEXT,
    fan_favorite_rank INTEGER,
    social_media_followers INTEGER,
    official_website TEXT,
    merchandise_line TEXT,
    biography TEXT,
    notable_villains TEXT,
    allies TEXT,
    media_adaptations TEXT,
    awards TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT,
    status TEXT,
    notes TEXT,
    rating REAL,
    popularity_index REAL,
    legacy_score REAL,
    profile_image_url TEXT
);
INSERT INTO hero_public_profile VALUES (1,101,'Solar Sentinel','Light of Justice','Born in solar flare','2005','Issue 12','Justice League','Solar Energy','Flight','Gold Yellow','Shine On!','1',2500000,'http://solarsentinel.com','Solar Gear','Defender of Earth','Dark Matter, Shadow', 'Lightning Bolt','Movies, TV Series','Best Hero 2020','2025-10-01','AdminG','2025-10-02','AdminH','Active','Iconic','9.5','95','9','http://example.com/solar.png');
INSERT INTO hero_public_profile VALUES (2,102,'Aqua Avenger','Depths of Courage','From underwater kingdom','2008','Issue 45','Aquatic Alliance','Hydrokinesis','Water Blast','Blue Aqua','Dive Deep!','3',1800000,'http://aquaavenger.com','Aqua Gear','Protector of seas','Tide Lord, Kraken','Marine Guard','Animated Series','Best Team 2019','2025-10-01','AdminI','2025-10-02','AdminJ','Active','Well‑known','8.7','88','8','http://example.com/aqua.png');
INSERT INTO hero_public_profile VALUES (3,103,'Terra Titan','Strength of Earth','Raised by mountains','2002','Issue 3','Earth Guard','Geokinesis','Super Strength','Brown Green','Grounded!','2',2000000,'http://terratitan.com','Terra Gear','Guardian of nature','Rock Golem, Lava Beast','Forest Rangers','Live‑Action Film','Nature Hero Award 2021','2025-10-01','AdminK','2025-10-02','AdminL','Active','Respected','9.0','90','9','http://example.com/terra.png');

-- Hero financial transaction table
CREATE TABLE hero_financial_transaction
(
    id INTEGER NOT NULL PRIMARY KEY,
    hero_id INTEGER,
    transaction_date TEXT,
    transaction_type TEXT,
    amount_usd REAL,
    currency TEXT,
    source TEXT,
    destination TEXT,
    description TEXT,
    category TEXT,
    receipt_number TEXT,
    approved_by INTEGER,
    approval_date TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    created_by TEXT,
    updated_at TEXT,
    updated_by TEXT
);
INSERT INTO hero_financial_transaction VALUES (1,101,'2025-09-10','Grant','50000','USD','City Council','Hero Fund','Infrastructure support','Funding','RCPT001',301,'2025-09-11','Approved','Monthly allocation','2025-09-12','AdminM','2025-09-13','AdminN');
INSERT INTO hero_financial_transaction VALUES (2,102,'2025-09-15','Merchandise Sale','25000','USD','Online Store','Hero Account','Sale of action figures','Revenue','RCPT002',302,'2025-09-16','Approved','Quarterly sales','2025-09-17','AdminO','2025-09-18','AdminP');
INSERT INTO hero_financial_transaction VALUES (3,103,'2025-09-20','Expense','12000','USD','Hero Account','Equipment Supplier','Purchase of new gear','Expense','RCPT003',303,'2025-09-21','Approved','Equipment upgrade','2025-09-22','AdminQ','2025-09-23','AdminR');