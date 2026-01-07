-- District Renewable Energy Projects
CREATE TABLE district_renewable_energy_projects (
    project_id TEXT PRIMARY KEY,
    district_code TEXT,
    project_name TEXT,
    energy_type TEXT,
    capacity_mw REAL,
    start_date DATE,
    end_date DATE,
    contractor TEXT,
    funding_source TEXT,
    total_cost REAL,
    grant_amount REAL,
    status TEXT,
    annual_generation_mwh REAL,
    co2_reduction_tons REAL,
    permit_number TEXT,
    approval_date DATE,
    completion_percent REAL,
    latitude REAL,
    longitude REAL,
    notes TEXT
);
INSERT INTO district_renewable_energy_projects VALUES ('proj001','DC01','SolarFieldNorth','Solar',15.2,'2021-04-01','2023-09-15','SunPowerInc','FederalGrant',12000000,5000000,'Completed',45.6,3500,'PN12345','2021-03-15',100.0,35.6895,-97.3456,'Initial phase completed');
INSERT INTO district_renewable_energy_projects VALUES ('proj002','DC02','WindTurbineEast','Wind',8.5,'2022-01-10','2024-06-30','WindWorks','StateFunding',8000000,2000000,'InProgress',30.2,2100,'PN67890','2021-12-20',65.0,36.1020,-96.7890,'Awaiting final inspection');
INSERT INTO district_renewable_energy_projects VALUES ('proj003','DC03','BiogasPlantWest','Biogas',3.0,'2020-07-15','2022-12-01','EcoEnergy','PrivateInvestment',5000000,0,'Completed',12.0,800,'PN54321','2020-06-30',100.0,34.9876,-95.4321,'Operates at full capacity');

-- Community Arts Festival
CREATE TABLE community_arts_festival (
    festival_id TEXT PRIMARY KEY,
    county_code TEXT,
    festival_name TEXT,
    start_date DATE,
    end_date DATE,
    venue TEXT,
    expected_attendance INTEGER,
    budget REAL,
    sponsor TEXT,
    coordinator_name TEXT,
    coordinator_email TEXT,
    num_events INTEGER,
    featured_artists TEXT,
    local_business_partners TEXT,
    volunteer_hours INTEGER,
    ticket_price REAL,
    weather_plan TEXT,
    social_media_tag TEXT,
    accessibility_notes TEXT,
    post_event_report_url TEXT
);
INSERT INTO community_arts_festival VALUES ('fest001','C001','RiverfrontArts','2023-08-10','2023-08-12','RiverPark','2500',75000,'ArtsCouncil','LauraSmith','laura.smith@example.com','12','BandA,BandB','CafeOne,BookstoreX',180,15.0,'IndoorBackup','#RiverArts','WheelchairAccess','http://example.com/report1');
INSERT INTO community_arts_festival VALUES ('fest002','C002','MountainMusicFest','2024-07-05','2024-07-07','MountainMeadow','4000',120000,'MusicFoundation','JamesLee','james.lee@example.com','8','ArtistX,ArtistY','GearShop,OutdoorGear',220,20.0,'RainShelters','#MountMusic','SignLanguageInterpretation','http://example.com/report2');
INSERT INTO community_arts_festival VALUES ('fest003','C003','CityStreetArt','2022-09-20','2022-09-22','MainStreet','3500',90000,'CityCouncil','MeganDoe','megan.doe@example.com','15','GraffitiCrew,StreetDancers','CoffeeBar,LocalGym',200,12.5,'TentStructures','#CityStreet','ASLProvided','http://example.com/report3');

-- Staff Wellness Programs
CREATE TABLE staff_wellness_programs (
    program_id TEXT PRIMARY KEY,
    school_code TEXT,
    program_name TEXT,
    launch_date DATE,
    target_audience TEXT,
    activities TEXT,
    budget REAL,
    external_partner TEXT,
    health_metrics_tracked TEXT,
    participation_rate REAL,
    satisfaction_score REAL,
    wellness_coordinator TEXT,
    coordinator_email TEXT,
    duration_weeks INTEGER,
    frequency_per_week INTEGER,
    resources_provided TEXT,
    evaluation_method TEXT,
    notes TEXT,
    last_updated DATE,
    active INTEGER
);
INSERT INTO staff_wellness_programs VALUES ('wp001','SCH001','MindfulMornings','2022-01-10','AllStaff','Yoga,Meditation','15000','HealthCo','StressLevel,HeartRate',0.45,4.2,'AnnaBrown','anna.brown@example.com',12,3,'YogaMats,Guides','Survey','Positive feedback','2023-03-01',1);
INSERT INTO staff_wellness_programs VALUES ('wp002','SCH002','FitStepChallenge','2021-09-01','Teachers','StepCount,WalkingGroups','10000','FitTrack','Steps,Calories',0.60,3.9,'MarkGreen','mark.green@example.com',16,2,'FitBands,Leaderboard','AppMetrics','High engagement','2022-12-15',1);
INSERT INTO staff_wellness_programs VALUES ('wp003','SCH003','NutritionNook','2023-03-20','SupportStaff','CookingClasses,MealPlans','8000','NutriLife','BMI,Weight',0.38,4.0,'SaraWhite','sara.white@example.com',8,1,'RecipeBooks,Snacks','PrePostSurvey','Needs more promotion','2023-05-10',1);

-- Student Exchange Partners
CREATE TABLE student_exchange_partners (
    partnership_id TEXT PRIMARY KEY,
    school_code TEXT,
    partner_institution TEXT,
    country TEXT,
    start_year INTEGER,
    end_year INTEGER,
    student_quota INTEGER,
    exchange_type TEXT,
    funding_model TEXT,
    contact_name TEXT,
    contact_email TEXT,
    agreement_signed DATE,
    program_status TEXT,
    language_focus TEXT,
    cultural_activities TEXT,
    prerequisite_gpa REAL,
    notes TEXT,
    last_review_date DATE,
    active INTEGER,
    exchange_frequency_per_year INTEGER
);
INSERT INTO student_exchange_partners VALUES ('exch001','SCH001','GlobalHigh','Canada','2022','2025','8','Semester','SharedFunding','EmilyClark','emily.clark@globalhigh.ca','2021-11-20','Active','English/French','CityTours,Workshops',3.0,'Strong bilateral interest','2022-10-01',1,2);
INSERT INTO student_exchange_partners VALUES ('exch002','SCH002','InternationalAcademy','Japan','2021','2024','5','YearLong','GovernmentGrant','TaroYamamoto','taro.yamamoto@intacad.jp','2020-09-15','Active','Japanese','CulturalFestivals,LanguageLabs',3.5,'Focus on STEM exchange','2021-12-05',1,1);
INSERT INTO student_exchange_partners VALUES ('exch003','SCH003','EuroLyceum','Germany','2023','2026','6','Quarter','PrivateSponsorship','LenaSchmidt','lena.schmidt@eurolyceum.de','2022-03-10','Pending','German','ArtExhibitions,TechProjects',3.2,'Awaiting final approval','2022-11-20',0,0);

-- School Bus Maintenance Log
CREATE TABLE school_bus_maintenance_log (
    maintenance_id TEXT PRIMARY KEY,
    bus_id TEXT,
    service_date DATE,
    mileage INTEGER,
    service_type TEXT,
    provider TEXT,
    cost REAL,
    parts_replaced TEXT,
    next_service_due DATE,
    odometer_at_next_service INTEGER,
    technician_name TEXT,
    technician_certification TEXT,
    downtime_hours REAL,
    comments TEXT,
    approved_by TEXT,
    approval_date DATE,
    warranty_covered INTEGER,
    fuel_efficiency_before REAL,
    fuel_efficiency_after REAL,
    status TEXT
);
INSERT INTO school_bus_maintenance_log VALUES ('maint001','BUS1001','2023-02-15',45200,'EngineCheck','AutoCare','1250.00','Filter,Oil','2023-08-15',48000','JohnDoe','ASECertified',4.5,'Replaced oil filter','Superintendent','2023-02-16',1,5.8,6.2','Completed');
INSERT INTO school_bus_maintenance_log VALUES ('maint002','BUS1002','2023-03-10',37800,'BrakeService','BrakeMasters','980.00','BrakePads','2023-09-10',41000','JaneSmith','BrakeTech',3.2,'Front brake pads worn','FacilitiesMgr','2023-03-11',0,6.0,6.5','Completed');
INSERT INTO school_bus_maintenance_log VALUES ('maint003','BUS1003','2023-01-20',61000,'TireRotation','WheelWorks','300.00','Tires','2023-07-20',64000','MikeLee','TireSpecialist',2.0,'Rotated all tires','OperationsDir','2023-01-21',1,5.5,5.7','Completed');

-- District Grant Proposals
CREATE TABLE district_grant_proposals (
    proposal_id TEXT PRIMARY KEY,
    district_code TEXT,
    grant_name TEXT,
    submission_deadline DATE,
    submission_date DATE,
    principal_investigator TEXT,
    amount_requested REAL,
    amount_awarded REAL,
    funding_agency TEXT,
    project_title TEXT,
    abstract TEXT,
    status TEXT,
    review_score REAL,
    reviewers TEXT,
    award_date DATE,
    reporting_requirements TEXT,
    compliance_status TEXT,
    last_modified DATE,
    notes TEXT,
    active INTEGER
);
INSERT INTO district_grant_proposals VALUES ('prop001','DC01','STEM Innovation','2022-12-01','2022-11-15','DrAllen','500000','500000','NationalScience','Advanced Robotics Lab','Developing autonomous robots for education','Awarded',92.5,'RevA,RevB','2023-02-01','QuarterlyReports','Compliant','2023-03-01','First phase successful',1);
INSERT INTO district_grant_proposals VALUES ('prop002','DC02','Arts Expansion','2023-03-15','2023-03-10','MsRogers','250000',NULL,'StateArtsCouncil','Community Art Centers','Creating multipurpose art spaces in underserved areas','Pending',NULL,'','',NULL,'AnnualReport','Pending','2023-04-01','Awaiting decision',1);
INSERT INTO district_grant_proposals VALUES ('prop003','DC03','Green Schools Initiative','2022-09-30','2022-09-25','DrKim','300000','300000','EPA','Energy Efficient Upgrades','Retrofitting schools with solar panels and LED lighting','Awarded',88.0,'RevC,RevD','2022-12-15','BiannualReports','Compliant','2023-01-20','Installation ongoing',1);

-- Staff Training Materials
CREATE TABLE staff_training_materials (
    material_id TEXT PRIMARY KEY,
    department TEXT,
    title TEXT,
    version TEXT,
    author TEXT,
    creation_date DATE,
    last_updated DATE,
    format TEXT,
    file_path TEXT,
    page_count INTEGER,
    language TEXT,
    audience TEXT,
    required INTEGER,
    status TEXT,
    review_cycle_months INTEGER,
    rating REAL,
    usage_count INTEGER,
    related_course TEXT,
    notes TEXT,
    active INTEGER
);
INSERT INTO staff_training_materials VALUES ('mat001','HR','Onboarding Guide','v2','KarenMiller','2021-05-01','2023-02-10','PDF','/files/onboarding_v2.pdf',45,'English','AllNewHires',1,'Approved',12,4.5,120,'HR101','Updated with remote policy',1);
INSERT INTO staff_training_materials VALUES ('mat002','IT','Cybersecurity Basics','v1','LuisGomez','2022-01-15','2022-12-05','DOCX','/files/cyber_basics.docx',30,'English','ITStaff',1,'Draft',6,4.0,85,'IT201','Pending final review',1);
INSERT INTO staff_training_materials VALUES ('mat003','Finance','Budget Planning','v3','RebeccaLee','2020-09-20','2023-01-18','PDF','/files/budget_planning_v3.pdf',60,'English','FinanceTeam',0,'Approved',24,4.8,200','FIN301','Includes new fiscal guidelines',1);

-- School WiFi Usage Stats
CREATE TABLE school_wifi_usage_stats (
    record_id TEXT PRIMARY KEY,
    school_code TEXT,
    date DATE,
    total_devices INTEGER,
    avg_bandwidth_mbps REAL,
    peak_bandwidth_mbps REAL,
    total_data_gb REAL,
    downtime_minutes INTEGER,
    outage_incidents INTEGER,
    latency_ms REAL,
    wifi_ssid TEXT,
    security_protocol TEXT,
    firmware_version TEXT,
    access_point_count INTEGER,
    guest_network_enabled INTEGER,
    concurrent_sessions_peak INTEGER,
    average_session_duration_minutes REAL,
    data_usage_per_device_gb REAL,
    notes TEXT,
    last_updated DATE
);
INSERT INTO school_wifi_usage_stats VALUES ('wifi001','SCH001','2023-04-01',850,12.5,45.0,320.5,15,2,30,'SchoolNet','WPA2','FW1.2.3',25,1,200,45.0,0.38','Normal day','2023-04-02');
INSERT INTO school_wifi_usage_stats VALUES ('wifi002','SCH002','2023-04-01',640,10.2,38.5,210.0,10,1,28,'EduWiFi','WPA3','FW2.0.1',20,0,150,38.0,0.33','Minor slowdown after lunch','2023-04-02');
INSERT INTO school_wifi_usage_stats VALUES ('wifi003','SCH003','2023-04-01',720,11.0,42.0,275.8,12,1,29,'CampusHotspot','WPA2','FW1.9.8',22,1,180,42.5,0.36','Vaccination information portal active','2023-04-02');

-- District Heritage Sites
CREATE TABLE district_heritance_sites (
    site_id TEXT PRIMARY KEY,
    district_code TEXT,
    site_name TEXT,
    address TEXT,
    city TEXT,
    zip TEXT,
    latitude REAL,
    longitude REAL,
    designation_date DATE,
    historical_period TEXT,
    significance TEXT,
    owner_type TEXT,
    public_access INTEGER,
    visitor_count_year INTEGER,
    maintenance_budget REAL,
    last_renovation DATE,
    architect TEXT,
    photo_url TEXT,
    notes TEXT,
    active INTEGER
);
INSERT INTO district_heritage_sites VALUES ('herit001','DC01','Old Mill Museum','123 River Rd','RiverTown','45678',35.1234,-97.5678','1995-06-20','Industrial','First powered mill in region','Public',1,12000,75000,'2018-04-15','JohnDoe','http://example.com/mill.jpg','Ongoing preservation','1');
INSERT INTO district_heritage_sites VALUES ('herit002','DC02','Historic Courthouse','456 Main St','CapitolCity','12345',36.2345,-96.6789','1978-09-10','Civic','Seat of county government since 1900','Government',1,8500,50000,'2020-09-30','JaneSmith','http://example.com/courthouse.jpg','Restored exterior','1');
INSERT INTO district_heritage_sites VALUES ('herit003','DC03','Pioneer Farmstead','789 Country Ln','FarmVille','23456',34.9876,-95.4321','2005-03-05','Agricultural','Illustrates early 20th century farming','Private',0,0,30000,'2015-11-20','MikeBrown','http://example.com/farm.jpg','Closed to public','0');

-- Student Cybersecurity Incidents
CREATE TABLE student_cybersecurity_incidents (
    incident_id TEXT PRIMARY KEY,
    student_id TEXT,
    school_code TEXT,
    incident_date DATE,
    incident_type TEXT,
    severity_level TEXT,
    detection_method TEXT,
    affected_systems TEXT,
    data_compromised INTEGER,
    response_action TEXT,
    resolved INTEGER,
    resolution_date DATE,
    investigator_name TEXT,
    notes TEXT,
    reported_to_authorities INTEGER,
    followup_actions TEXT,
    training_recommended INTEGER,
    incident_status TEXT,
    last_updated DATE,
    active INTEGER
);
INSERT INTO student_cybersecurity_incidents VALUES ('inc001','STU1001','SCH001','2023-01-15','Phishing','High','EmailFilter','Email','0','PasswordReset','1','2023-01-16','OfficerClark','Student clicked malicious link','0','MonitorAccount','1','Closed','2023-01-17',1);
INSERT INTO student_cybersecurity_incidents VALUES ('inc002','STU2003','SCH002','2023-02-05','Malware','Medium','Antivirus','Laptop','1500','IsolateDevice','1','2023-02-07','OfficerDavis','Malware detected on personal laptop','0','EducateStudent','1','Resolved','2023-02-08',1);
INSERT INTO student_cybersecurity_incidents VALUES ('inc003','STU3007','SCH003','2023-03-12','UnauthorizedAccess','Low','NetworkMonitor','SchoolPortal','0','AccountLockout','1','2023-03-13','OfficerEvans','Attempted login from unknown IP','0','ChangePassword','0','Closed','2023-03-14',1);