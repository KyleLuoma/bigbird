-- Table storing schedules for student orientation events
CREATE TABLE student_orientation_schedule
(
    orientation_id TEXT PRIMARY KEY,
    orientation_name TEXT,
    start_date TEXT,
    end_date TEXT,
    location TEXT,
    coordinator_name TEXT,
    max_participants INTEGER,
    description TEXT,
    virtual_link TEXT,
    registration_deadline TEXT,
    orientation_type TEXT,
    target_audience TEXT,
    materials_provided TEXT,
    lunch_included TEXT,
    parking_info TEXT,
    session_count INTEGER,
    feedback_form_link TEXT,
    sponsor_name TEXT,
    budget_allocated REAL,
    notes TEXT
);

INSERT INTO student_orientation_schedule VALUES
('ORI001','Freshman Welcome','2024-08-15','2024-08-16','Main Auditorium','Jane Smith',200,'Welcome event for new students','https://example.com/ori001','2024-08-10','InPerson','Freshmen','WelcomePacket','Yes','Lot A','3','https://example.com/feedback/ori001','StudentUnion',5000.00,'First year orientation');
INSERT INTO student_orientation_schedule VALUES
('ORI002','Transfer Student Intro','2024-09-01','2024-09-01','Science Hall','Mark Lee',100,'Intro for transfer students','https://example.com/ori002','2024-08-28','Hybrid','TransferStudents','TransferGuide','No','Lot B','1','https://example.com/feedback/ori002','AcademicDept',3000.00,'Transfer orientation');
INSERT INTO student_orientation_schedule VALUES
('ORI003','International Students Day','2024-10-05','2024-10-05','Cultural Center','Ana Gomez',150,'Event for international students','https://example.com/ori003','2024-09-30','InPerson','International','MultilingualPack','Yes','Lot C','1','https://example.com/feedback/ori003','GlobalOffice',4000.00,'International focus');

-- Table recording faculty research collaborations
CREATE TABLE faculty_research_collaboration
(
    collaboration_id TEXT PRIMARY KEY,
    primary_faculty_id TEXT,
    secondary_faculty_id TEXT,
    project_title TEXT,
    start_date TEXT,
    end_date TEXT,
    funding_source TEXT,
    funding_amount REAL,
    department TEXT,
    research_area TEXT,
    collaboration_type TEXT,
    status TEXT,
    publications_expected INTEGER,
    meetings_per_month INTEGER,
    shared_lab TEXT,
    data_sharing_agreement TEXT,
    intellectual_property_policy TEXT,
    contact_email TEXT,
    notes TEXT,
    last_updated TEXT
);

INSERT INTO faculty_research_collaboration VALUES
('COLL001','FAC123','FAC456','AI for Healthcare','2023-01-01','2025-12-31','NationalScience','250000.00','ComputerScience','ArtificialIntelligence','Joint','Active',5,2,'LabA','Yes','Standard','faculty1@university.edu','AI collaboration','2024-01-15');
INSERT INTO faculty_research_collaboration VALUES
('COLL002','FAC789','FAC321','Renewable Energy Materials','2022-06-15','2024-06-14','EnergyGrant','180000.00','MaterialsEngineering','Renewables','Consortium','Completed',3,1,'LabB','Yes','University','faculty2@university.edu','Materials study','2023-12-01');
INSERT INTO faculty_research_collaboration VALUES
('COLL003','FAC654','FAC987','Urban Sociology Survey','2024-03-01','2026-02-28','SocialScienceFund','90000.00','Sociology','UrbanStudies','Interdisciplinary','Planning',2,1,'LabC','No','Custom','faculty3@university.edu','Survey project','2024-02-20');

-- Table describing campus artifact exhibits
CREATE TABLE campus_artifact_exhibit
(
    exhibit_id TEXT PRIMARY KEY,
    artifact_id TEXT,
    exhibit_name TEXT,
    start_date TEXT,
    end_date TEXT,
    gallery_location TEXT,
    curator_name TEXT,
    description TEXT,
    condition_report TEXT,
    insurance_value REAL,
    loaned_from TEXT,
    display_type TEXT,
    lighting_requirements TEXT,
    security_level TEXT,
    visitor_capacity INTEGER,
    ticket_price REAL,
    sponsor_name TEXT,
    promotion_channel TEXT,
    attendance_estimate INTEGER,
    notes TEXT
);

INSERT INTO campus_artifact_exhibit VALUES
('EXH001','ART1001','Ancient Pottery','2024-05-01','2024-08-31','History Gallery','Linda Brown','Early ceramic pieces','Good','15000.00','MuseumX','Pedestal','Low','Medium',200,5.00,'HeritageFund','SocialMedia',1800,'Spring exhibit');
INSERT INTO campus_artifact_exhibit VALUES
('EXH002','ART2002','Vintage Cameras','2024-09-15','2024-12-15','Science Hall','Tom Wilson','Camera collection from 1900s','Excellent','8000.00','CollectorY','WallMount','Medium','Low',150,3.00,'TechSponsor','EmailNewsletter',1200,'Fall exhibit');
INSERT INTO campus_artifact_exhibit VALUES
('EXH003','ART3003','Medieval Armor','2025-02-10','2025-05-10','Art Center','Emily Davis','Full suit of armor','Restored','25000.00','RoyalEstate','FreeStanding','High','High',250,7.00,'HistorySociety','CampusRadio',2100,'Winter exhibit');

-- Table logging digital resource access in the library
CREATE TABLE library_digital_access_log
(
    log_id TEXT PRIMARY KEY,
    user_id TEXT,
    resource_id TEXT,
    access_timestamp TEXT,
    resource_type TEXT,
    ip_address TEXT,
    device_type TEXT,
    browser TEXT,
    access_duration_seconds INTEGER,
    download_flag TEXT,
    streaming_flag TEXT,
    authentication_method TEXT,
    subscription_status TEXT,
    location TEXT,
    content_category TEXT,
    access_purpose TEXT,
    notes TEXT,
    staff_assisted TEXT,
    resolution TEXT,
    latency_ms INTEGER
);

INSERT INTO library_digital_access_log VALUES
('LOG001','USR001','RES100','2024-04-12T09:15:30','Ebook','192.168.1.10','Laptop','Chrome',300,'Yes','No','Password','Active','Campus','Science','Study','First access','No','1080p',45);
INSERT INTO library_digital_access_log VALUES
('LOG002','USR002','RES200','2024-04-12T10:05:12','Journal','192.168.1.22','Tablet','Safari',120,'No','Yes','SSO','Active','OffCampus','Medicine','Research','Downloaded PDF','Yes','720p',30);
INSERT INTO library_digital_access_log VALUES
('LOG003','USR003','RES300','2024-04-12T11:45:00','Video','192.168.1.33','Desktop','Firefox',600,'No','Yes','Password','Expired','Campus','History','LectureReview','Streaming issue','No','1080p',60);

-- Table for health service vaccination campaigns
CREATE TABLE health_service_vaccination_campaign
(
    campaign_id TEXT PRIMARY KEY,
    vaccine_name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_population TEXT,
    total_doses_allocated INTEGER,
    doses_administered INTEGER,
    locations_count INTEGER,
    coordinator_name TEXT,
    funding_source TEXT,
    budget_amount REAL,
    ad_campaign TEXT,
    registration_required TEXT,
    consent_form_link TEXT,
    side_effect_monitoring TEXT,
    follow_up_schedule TEXT,
    notes TEXT,
    reported_adverse_events INTEGER,
    outreach_channels TEXT,
    status TEXT
);

INSERT INTO health_service_vaccination_campaign VALUES
('VAC001','FluShot','2024-10-01','2024-12-31','Students',5000,4200,12,'Laura Miller','HealthGrant','15000.00','CampusPosters','Yes','https://example.com/consent','OnlineForm','TwoWeeks','Annual flu campaign',2,'Email,SocialMedia','Active');
INSERT INTO health_service_vaccination_campaign VALUES
('VAC002','COVIDBooster','2024-04-01','2024-06-30','Faculty',3000,2800,8,'James Patel','FederalAid','12000.00','RadioAds','Yes','https://example.com/covidconsent','Hotline','OneMonth','Booster rollout',1,'Radio,Email','Completed');
INSERT INTO health_service_vaccination_campaign VALUES
('VAC003','MMR','2024-08-15','2024-09-15','Children',2000,1900,5,'Sophie Lee','StateHealth','8000.00','Flyers','No','N/A','ClinicLog','None','Child immunization drive',0,'Flyers,SchoolNewsletters','Active');

-- Table recording vehicle service events for campus transport fleet
CREATE TABLE transport_vehicle_service_log
(
    service_id TEXT PRIMARY KEY,
    vehicle_id TEXT,
    service_date TEXT,
    mileage INTEGER,
    service_type TEXT,
    provider_name TEXT,
    cost REAL,
    parts_replaced TEXT,
    warranty_covered TEXT,
    next_service_due INTEGER,
    odometer_reading INTEGER,
    technician_name TEXT,
    fuel_efficiency_before REAL,
    fuel_efficiency_after REAL,
    notes TEXT,
    approval_status TEXT,
    service_order_number TEXT,
    downtime_hours INTEGER,
    emergency_flag TEXT,
    recorded_by TEXT
);

INSERT INTO transport_vehicle_service_log VALUES
('SVL001','VEH100','2024-03-10',15000,'OilChange','AutoCare','250.00','OilFilter','Yes',20000,15000,'Mike Ross','15.2','16.0','Routine maintenance','Approved','SO12345',2,'No','Anna Kim');
INSERT INTO transport_vehicle_service_log VALUES
('SVL002','VEH200','2024-04-05',30000,'BrakeReplacement','BrakeMasters','800.00','BrakePads','No',35000,30000,'Sara Lee','12.5','12.0','Brake wear','Pending','SO12346',4,'Yes','Tom Nguyen');
INSERT INTO transport_vehicle_service_log VALUES
('SVL003','VEH300','2024-02-20',8000,'TireRotation','WheelWorks','120.00','N/A','Yes',12000,8000,'Liam Patel','14.0','14.2','Check tires','Approved','SO12347',1,'No','Emily Zhang');

-- Table for sustainability audits of events
CREATE TABLE event_sustainability_audit
(
    audit_id TEXT PRIMARY KEY,
    event_id TEXT,
    audit_date TEXT,
    auditor_name TEXT,
    carbon_footprint REAL,
    waste_generated_kg REAL,
    recycling_rate_percent REAL,
    water_usage_liters REAL,
    energy_consumed_kwh REAL,
    sustainable_vendor_used TEXT,
    sustainable_materials_percentage REAL,
    transportation_mode_breakdown TEXT,
    offset_projects TEXT,
    compliance_status TEXT,
    recommendations TEXT,
    overall_score INTEGER,
    notes TEXT,
    follow_up_date TEXT,
    corrective_actions_taken TEXT,
    audit_status TEXT
);

INSERT INTO event_sustainability_audit VALUES
('AUD001','EVT100','2024-05-02','Nina Patel',1200.5,350.0,45.0,8000.0,2500.0,'GreenCaterers','30.0','Bus30%Car50%Bike20%','TreePlanting','Compliant','Use biodegradable plates','85','First audit','2024-06-01','Replaced plastic cups','Closed');
INSERT INTO event_sustainability_audit VALUES
('AUD002','EVT200','2024-07-15','Omar Khan',800.0,200.0,60.0,5000.0,1800.0,'EcoLogistics','40.0','Train40%Car60%','CarbonOffset','Conditional','Add recycling stations','78','Second audit','2024-08-01','Added recycling bins','Open');
INSERT INTO event_sustainability_audit VALUES
('AUD003','EVT300','2024-09-20','Lara Gomez',1500.0,500.0,35.0,9000.0,3000.0','SustainSupply','25.0','Car70%Bus30%','Reforestation','NonCompliant','Reduce single-use plastics','65','Third audit','2024-10-15','Implemented reusable containers','Open');

-- Table tracking alumni career trajectories
CREATE TABLE alumni_career_trajectory
(
    record_id TEXT PRIMARY KEY,
    alumni_id TEXT,
    graduation_year INTEGER,
    degree TEXT,
    first_position TEXT,
    first_employer TEXT,
    current_position TEXT,
    current_employer TEXT,
    industry TEXT,
    years_experience INTEGER,
    salary_range TEXT,
    professional_certifications TEXT,
    leadership_role TEXT,
    geographic_location TEXT,
    LinkedIn_url TEXT,
    mentorship_involvement TEXT,
    speaking_engagements INTEGER,
    publications INTEGER,
    notes TEXT,
    last_updated TEXT
);

INSERT INTO alumni_career_trajectory VALUES
('ALC001','ALU001',2015,'BScComputerScience','SoftwareEngineer','TechCorp','SeniorEngineer','InnovateLtd','Technology',8,'80k-100k','AWS Certified','TeamLead','SanFrancisco','https://linkedin.com/in/alumni1','Yes',3,2,'Progressed to senior role','2024-01-10');
INSERT INTO alumni_career_trajectory VALUES
('ALC002','ALU002',2012,'MBA','Analyst','FinanceGroup','Director','GlobalBank','Finance',12,'120k-150k','CFA','Director','NewYork','https://linkedin.com/in/alumni2','No',1,0,'Moved into leadership','2023-12-05');
INSERT INTO alumni_career_trajectory VALUES
('ALC003','ALU003',2018,'BAHistory','ResearchAssistant','UniversityLab','ProjectManager','MuseoNational','Arts',4,'50k-70k','None','ProjectCoordinator','Chicago','https://linkedin.com/in/alumni3','Yes',0,1','Developed grant project','2024-02-20');

-- Table monitoring usage of parking structures
CREATE TABLE parking_structure_usage
(
    usage_id TEXT PRIMARY KEY,
    structure_id TEXT,
    date TEXT,
    total_spaces INTEGER,
    occupied_spaces INTEGER,
    peak_hour TEXT,
    average_occupancy_percent REAL,
    weekend_occupancy_percent REAL,
    event_related_flag TEXT,
    revenue_collected REAL,
    violation_count INTEGER,
    maintenance_issues_reported INTEGER,
    lighting_status TEXT,
    security_incidents INTEGER,
    electricity_consumption_kwh REAL,
    water_usage_liters REAL,
    notes TEXT,
    sensor_status TEXT,
    last_inspection_date TEXT,
    manager_name TEXT
);

INSERT INTO parking_structure_usage VALUES
('PUU001','STR001','2024-04-15',500,350,'12:00',70.0,60.0,'No',3500.00,5,2,'Operational',1,1500.00,2000.00,'Normal day','Active','2024-04-01','John Doe');
INSERT INTO parking_structure_usage VALUES
('PUU002','STR002','2024-04-15',300,250,'18:00',83.3,55.0,'Yes',2500.00,2,1,'Operational',0,900.00,1200.00,'Event day','Active','2024-04-02','Jane Smith');
INSERT INTO parking_structure_usage VALUES
('PUU003','STR003','2024-04-15',200,120,'09:00',60.0,50.0,'No',1200.00,0,0,'Maintenance',0,600.00,800.00,'Minor issue reported','Active','2024-04-03','Mike Lee');

-- Table describing a series of sustainability workshops
CREATE TABLE sustainability_workshop_series
(
    workshop_id TEXT PRIMARY KEY,
    series_name TEXT,
    session_number INTEGER,
    date TEXT,
    location TEXT,
    facilitator_name TEXT,
    topic TEXT,
    duration_hours REAL,
    target_audience TEXT,
    max_participants INTEGER,
    registered_participants INTEGER,
    materials_provided TEXT,
    outcome_summary TEXT,
    feedback_score INTEGER,
    certification_awarded TEXT,
    sponsor_name TEXT,
    budget_allocated REAL,
    notes TEXT,
    evaluation_report_link TEXT,
    status TEXT
);

INSERT INTO sustainability_workshop_series VALUES
('WS001','GreenCampusSeries',1,'2024-03-10','EcoCenter','Dr. Green','EnergyEfficiency','2.5','Students',50,45,'Handouts','Reduced energy usage recommendations','85','Certificate','EcoFund',2000.00,'First session','https://example.com/report/ws001','Closed');
INSERT INTO sustainability_workshop_series VALUES
('WS002','GreenCampusSeries',2,'2024-04-14','EcoCenter','Prof. Leaf','WasteReduction','3.0','Faculty',40,38,'Toolkits','Implemented composting plans','90','Certificate','EcoFund',2500.00,'Second session','https://example.com/report/ws002','Closed');
INSERT INTO sustainability_workshop_series VALUES
('WS003','GreenCampusSeries',3,'2024-05-20','EcoCenter','Ms. River','WaterConservation','2.0','Staff',30,28,'Guides','Adopted low‑flow fixtures','88','Certificate','EcoFund',1800.00,'Third session','https://example.com/report/ws003','Closed');