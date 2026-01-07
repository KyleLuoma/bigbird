-- Campus research center details
CREATE TABLE campus_research_center (
    center_id TEXT PRIMARY KEY,
    name TEXT,
    building TEXT,
    floor INTEGER,
    lead_researcher TEXT,
    contact_email TEXT,
    phone TEXT,
    established_date TEXT,
    focus_area1 TEXT,
    focus_area2 TEXT,
    focus_area3 TEXT,
    num_labs INTEGER,
    total_staff INTEGER,
    annual_budget REAL,
    funding_source TEXT,
    accreditation_status TEXT,
    website TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code INTEGER,
    latitude REAL,
    longitude REAL
);

INSERT INTO campus_research_center VALUES
('CR001','Nanotech Hub','Science Hall',2,'Dr Emily Chen','echen@univ.edu','555-1234','2015-09-01','Nanomaterials','Quantum Devices','Sensors',5,45,1250000.00,'Federal Grant','Accredited','http://nanotech.univ.edu','123 Science Rd','', 'Metrocity','CA',90210,34.0522,-118.2437);

INSERT INTO campus_research_center VALUES
('CR002','AI Innovation Lab','Engineering Complex',3,'Prof Alan Wu','awu@univ.edu','555-5678','2018-01-15','Machine Learning','Computer Vision','Robotics',4,30,900000.00,'Industry Partnership','Accredited','http://ai.univ.edu','456 Tech Ave','Suite 300','Metrocity','CA',90211,34.0550,-118.2500);

INSERT INTO campus_research_center VALUES
('CR003','Environmental Studies Center','Green Campus',1,'Dr Maya Patel','mpatel@univ.edu','555-9012','2012-05-20','Climate Change','Biodiversity','Sustainability',3,20,650000.00,'State Funding','Accredited','http://envstudies.univ.edu','789 Eco Way','', 'Metrocity','CA',90212,34.0600,-118.2600);

-- External partner agreement records
CREATE TABLE external_partner_agreement (
    agreement_id TEXT PRIMARY KEY,
    partner_name TEXT,
    partnership_type TEXT,
    start_date TEXT,
    end_date TEXT,
    primary_contact TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    scope_description TEXT,
    financial_commitment REAL,
    deliverables_count INTEGER,
    status TEXT,
    renewal_option TEXT,
    governing_body TEXT,
    confidentiality_level TEXT,
    signed_by TEXT,
    signature_date TEXT,
    document_url TEXT,
    region TEXT,
    industry TEXT,
    notes TEXT
);

INSERT INTO external_partner_agreement VALUES
('AG001','TechNova Corp','Research Collaboration','2022-01-01','2025-12-31','Linda Gomez','lgomez@technova.com','555-1111','Joint AI research and prototyping',250000.00,12,'Active','Yes','University Board','High','Dr Emily Chen','2021-12-15','http://docs.univ.edu/ag001.pdf','North America','Technology','');

INSERT INTO external_partner_agreement VALUES
('AG002','GreenFuture NGO','Community Outreach','2021-06-15','2024-06-14','Carlos Ruiz','cruiz@greenfuture.org','555-2222','Sustainability workshops and campus greening projects',150000.00,8,'Active','Optional','Community Council','Medium','Prof Alan Wu','2021-05-30','http://docs.univ.edu/ag002.pdf','Europe','Nonprofit','');

INSERT INTO external_partner_agreement VALUES
('AG003','BioHealth Ltd','Clinical Trials','2020-03-01','2023-02-28','Sarah Lee','slee@biohealth.com','555-3333','Phase II trials for new vaccine',500000.00,20,'Completed','No','Medical Ethics Board','High','Dr Maya Patel','2020-02-10','http://docs.univ.edu/ag003.pdf','Asia','Pharmaceutical','Successful completion');

-- Sustainability infrastructure projects
CREATE TABLE sustainability_infrastructure_project (
    project_id TEXT PRIMARY KEY,
    project_name TEXT,
    category TEXT,
    start_date TEXT,
    projected_end_date TEXT,
    actual_end_date TEXT,
    total_cost REAL,
    funding_source TEXT,
    lead_engineer TEXT,
    status TEXT,
    risk_level TEXT,
    carbon_reduction_estimate REAL,
    water_savings_estimate REAL,
    energy_savings_estimate REAL,
    certification_target TEXT,
    location_building TEXT,
    floor INTEGER,
    square_feet INTEGER,
    contractor TEXT,
    subcontractor TEXT,
    permits_obtained TEXT,
    inspection_dates TEXT,
    notes TEXT
);

INSERT INTO sustainability_infrastructure_project VALUES
('SP001','Solar Array Expansion','Energy','2023-04-01','2024-09-30','',3000000.00,'State Grant','Eng Michael Brown','In Progress','Medium',1200.5,0,1250.0,'LEED Gold','Engineering Complex',2,15000,'SunPower Inc','EcoBuild LLC','Yes','2023-05-15;2023-11-20','');

INSERT INTO sustainability_infrastructure_project VALUES
('SP002','Rainwater Harvesting System','Water','2022-01-10','2022-12-31','2022-12-20',750000.00,'University Funds','Eng Laura Kim','Completed','Low',0,850.0,0,'LEED Certified','Green Campus',1,8000,'AquaTech','', 'Yes','2022-02-15;2022-10-05','');

INSERT INTO sustainability_infrastructure_project VALUES
('SP003','Green Roof Installation','Ecosystem','2024-02-01','2025-08-31','',1200000.00,'Federal Grant','Eng Raj Patel','Planned','High',0,0,500.0,'LEED Platinum','Science Hall',3,12000,'RoofCo','Landscape Ltd','Pending','', 'Awaiting permits');

-- Campus artifact catalog
CREATE TABLE campus_artifact_catalog (
    artifact_id TEXT PRIMARY KEY,
    title TEXT,
    creator TEXT,
    creation_year INTEGER,
    material TEXT,
    dimensions TEXT,
    location_building TEXT,
    location_room TEXT,
    acquisition_date TEXT,
    acquisition_method TEXT,
    value_estimated REAL,
    condition_status TEXT,
    conservation_status TEXT,
    display_status TEXT,
    exhibit_history TEXT,
    donor_name TEXT,
    donor_contact TEXT,
    insurance_policy TEXT,
    catalog_number TEXT,
    classification TEXT,
    keywords TEXT,
    notes TEXT
);

INSERT INTO campus_artifact_catalog VALUES
('AR001','Bronze Statue of Athena','Unknown',1850,'Bronze','24x12x12','History Museum','Room 101','2010-06-15','Donation',55000.00,'Good','Under Conservation','On Display','Annual Heritage Expo','John Doe','555-4444','POL12345','CAT-001','Sculpture','Greek, Mythology','');

INSERT INTO campus_artifact_catalog VALUES
('AR002','Mid-20th Century Typewriter','Olivia Smith',1955,'Metal','15x10x8','Library','Special Collections','2015-09-20','Purchase',12000.00,'Excellent','Stable','In Storage','None','Acme Antiques','555-5555','POL67890','CAT-002','Object','Office Equipment, Vintage','');

INSERT INTO campus_artifact_catalog VALUES
('AR003','Oil Painting "Sunset Over Valley"','Emily Reed',1998,'Canvas','30x40','Art Gallery','Wall A','2020-03-05','Gift',30000.00,'Fair','Restoration Needed','On Loan','Spring Art Show','Laura Green','555-6666','POL54321','CAT-003','Painting','Landscape, Modern','Awaiting restoration');

-- Digital learning module records
CREATE TABLE digital_learning_module (
    module_id TEXT PRIMARY KEY,
    title TEXT,
    description TEXT,
    course_code TEXT,
    instructor TEXT,
    release_date TEXT,
    version TEXT,
    language TEXT,
    duration_minutes INTEGER,
    format TEXT,
    access_level TEXT,
    prerequisite_modules TEXT,
    associated_credits INTEGER,
    max_enrollment INTEGER,
    current_enrollment INTEGER,
    platform TEXT,
    url TEXT,
    thumbnail_path TEXT,
    average_rating REAL,
    rating_count INTEGER,
    last_updated TEXT,
    tags TEXT,
    notes TEXT
);

INSERT INTO digital_learning_module VALUES
('LM001','Introduction to Data Science','Fundamentals of data analysis','DS101','Prof Karen Lee','2022-01-10','1.0','English',180,'Video','Open','',3,200,180,'Canvas','http://learn.univ.edu/lm001','/images/lm001.png',4.5,120,'2023-02-01','data,science,analytics','');

INSERT INTO digital_learning_module VALUES
('LM002','Advanced Robotics','Design and control of robotic systems','RB301','Dr Samir Khan','2021-09-05','2.1','English',240,'Interactive','Enrollment Required','LM001',4,150,140,'Moodle','http://learn.univ.edu/lm002','/images/lm002.png',4.7,85,'2023-01-15','robotics,automation,AI','');

INSERT INTO digital_learning_module VALUES
('LM003','Creative Writing Workshop','Developing narrative techniques','CW210','Prof Ana Martinez','2023-03-20','1.0','English',120,'Video','Open','',2,100,95,'Canvas','http://learn.univ.edu/lm003','/images/lm003.png',4.2,45,'2023-04-10','writing,creative,lit','');

-- Health service clinic information
CREATE TABLE health_service_clinic (
    clinic_id TEXT PRIMARY KEY,
    clinic_name TEXT,
    campus TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code INTEGER,
    phone TEXT,
    fax TEXT,
    email TEXT,
    opening_hours TEXT,
    services_offered TEXT,
    emergency_available TEXT,
    walk_in_available TEXT,
    staff_count INTEGER,
    director_name TEXT,
    director_contact TEXT,
    accreditation_status TEXT,
    last_inspection_date TEXT,
    bed_count INTEGER,
    wheelchair_accessible TEXT,
    parking_available TEXT,
    notes TEXT
);

INSERT INTO health_service_clinic VALUES
('HC001','Student Health Center','Main Campus','123 Wellness Blvd','','Metrocity','CA',90210,'555-7777','555-7778','healthcenter@univ.edu','Mon-Fri 8am-6pm','General Medicine;Mental Health;Dental','Yes','Yes',25,'Dr Laura White','555-7779','Accredited','2022-11-10',5,'Yes','Yes','');

INSERT INTO health_service_clinic VALUES
('HC002','Counseling Services','Main Campus','124 Wellness Blvd','','Metrocity','CA',90210,'555-7888','555-7889','counsel@univ.edu','Mon-Fri 9am-5pm','Psychotherapy;Group Therapy','No','Yes',15,'Dr Michael Green','555-7890','Accredited','2023-02-20',0,'Yes','Yes','');

INSERT INTO health_service_clinic VALUES
('HC003','Dental Clinic','Health Sciences Campus','200 Tooth Ave','Suite 2','Metrocity','CA',90211,'555-7999','555-8000','dental@univ.edu','Tue-Thu 8am-4pm','Preventive;Restorative;Orthodontics','No','No',10,'Dr Susan Patel','555-8001','Accredited','2022-08-05',2,'Yes','Limited','');

-- Alumni network group details
CREATE TABLE alumni_network_group (
    group_id TEXT PRIMARY KEY,
    group_name TEXT,
    formation_date TEXT,
    focus_topic TEXT,
    coordinator_name TEXT,
    coordinator_email TEXT,
    coordinator_phone TEXT,
    member_count INTEGER,
    meeting_frequency TEXT,
    last_meeting_date TEXT,
    next_meeting_date TEXT,
    location_building TEXT,
    location_room TEXT,
    online_platform TEXT,
    social_media_handle TEXT,
    description TEXT,
    active_status TEXT,
    budget_allocated REAL,
    funding_source TEXT,
    recent_events TEXT,
    notes TEXT,
    website TEXT
);

INSERT INTO alumni_network_group VALUES
('AGP001','Tech Innovators','2015-03-01','Emerging Technologies','Karen Liu','kliu@univ.edu','555-8100',320,'Quarterly','2023-03-10','2023-06-15','Science Hall','Room 210','Zoom','@TechInnovators','Connecting alumni in tech','Active',20000.00,'Alumni Fund','Annual Hackathon','', 'http://alumni.univ.edu/tech-innovators');

INSERT INTO alumni_network_group VALUES
('AGP002','Health Professionals Network','2012-07-15','Healthcare Leadership','James Ortiz','jortiz@univ.edu','555-8200',210,'Biannual','2023-02-20','2023-08-20','Health Sciences','Auditorium','Teams','@HealthPros','Support for alumni in health fields','Active',15000.00,'University Grant','Wellness Seminar','', 'http://alumni.univ.edu/health-pros');

INSERT INTO alumni_network_group VALUES
('AGP003','Arts & Culture Circle','2018-11-05','Creative Arts','Megan Brooks','mbrooks@univ.edu','555-8300',145,'Monthly','2023-04-05','2023-05-05','Arts Center','Gallery 3','Zoom','@ArtsCulture','Foster artistic collaboration','Active',12000.00,'Donations','Gallery Opening','', 'http://alumni.univ.edu/arts-culture');

-- Campus energy meter reading logs
CREATE TABLE campus_energy_meter_reading (
    meter_id TEXT PRIMARY KEY,
    building TEXT,
    floor INTEGER,
    meter_type TEXT,
    serial_number TEXT,
    reading_date TEXT,
    reading_value REAL,
    unit TEXT,
    cumulative_start REAL,
    cumulative_end REAL,
    reading_method TEXT,
    verified_by TEXT,
    verification_date TEXT,
    anomaly_flag TEXT,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    installation_date TEXT,
    last_maintenance_date TEXT,
    maintenance_contact TEXT,
    calibration_status TEXT
);

INSERT INTO campus_energy_meter_reading VALUES
('MTR001','Engineering Complex',2,'Electric','SN-1001','2023-04-01',4532.5,'kWh',0,4532.5,'Automated','Sam Patel','2023-04-02','No','','34.0550,-118.2500','2018-03-15','2023-03-20','Facilities Team','Calibrated');

INSERT INTO campus_energy_meter_reading VALUES
('MTR002','Science Hall',1,'Water','SN-2003','2023-04-01',1280.0,'Gallons',0,1280.0,'Manual','Linda Gomez','2023-04-03','No','','34.0522,-118.2437','2019-06-10','2023-03-25','Facilities Team','Calibrated');

INSERT INTO campus_energy_meter_reading VALUES
('MTR003','Green Campus',0,'Gas','SN-3005','2023-04-01',875.3,'Therms',0,875.3,'Automated','Raj Patel','2023-04-02','No','','34.0600,-118.2600','2020-01-20','2023-03-22','Facilities Team','Calibrated');

-- Transportation fleet vehicle inventory
CREATE TABLE transportation_fleet_vehicle (
    vehicle_id TEXT PRIMARY KEY,
    vehicle_type TEXT,
    make TEXT,
    model TEXT,
    year INTEGER,
    vin TEXT,
    license_plate TEXT,
    registration_state TEXT,
    assigned_department TEXT,
    driver_assigned TEXT,
    capacity INTEGER,
    fuel_type TEXT,
    fuel_capacity REAL,
    mileage INTEGER,
    last_service_date TEXT,
    next_service_due TEXT,
    insurance_policy_number TEXT,
    insurance_expiry TEXT,
    gps_tracker_id TEXT,
    status TEXT,
    purchase_date TEXT,
    cost REAL,
    depreciation_rate REAL,
    notes TEXT
);

INSERT INTO transportation_fleet_vehicle VALUES
('V001','Shuttle','Ford','Transit','2020','1FADP3F2XJL123456','ABC123','CA','Student Transport','Emily Chen',30,'Diesel',30.0,25000,'2023-03-10','2023-09-10','INS-001','2024-03-01','GPS-1001','Active','2019-07-15',35000.00,0.15,'');

INSERT INTO transportation_fleet_vehicle VALUES
('V002','Cargo Van','Mercedes','Sprinter','2019','WD3PF2CD1KP567890','XYZ789','CA','Facilities','Mike Davis',2,'Gasoline',15.0,40000,'2023-02-20','2023-08-20','INS-002','2024-02-28','GPS-1002','In Service','2018-05-20',42000.00,0.18,'');

INSERT INTO transportation_fleet_vehicle VALUES
('V003','Electric Bus','BYD','K9','2022','5YJ3C1EB9MF123789','ECO456','CA','Campus Shuttle','Laura Kim',45,'Electric',0,10000,'2023-04-01','2023-10-01','INS-003','2025-04-01','GPS-1003','Active','2021-09-01',250000.00,0.10,'');

-- Community service project records
CREATE TABLE community_service_project (
    project_id TEXT PRIMARY KEY,
    project_name TEXT,
    sponsor_org TEXT,
    start_date TEXT,
    end_date TEXT,
    location_city TEXT,
    location_state TEXT,
    volunteer_target INTEGER,
    volunteers_actual INTEGER,
    hours_contributed REAL,
    budget_allocated REAL,
    budget_spent REAL,
    primary_contact TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    objectives_summary TEXT,
    outcomes_summary TEXT,
    impact_score REAL,
    status TEXT,
    follow_up_needed TEXT,
    next_phase_start TEXT,
    notes TEXT,
    report_url TEXT
);

INSERT INTO community_service_project VALUES
('CS001','Neighborhood Clean‑Up','EcoAction','2023-04-01','2023-04-05','Metrocity','CA',200,180,720.0,15000.00,14000.00','Anna Lopez','alopez@ecoaction.org','555-9100','Remove litter, plant trees','Improved park cleanliness, 15 new trees','8.5','Completed','No','','','Successful project','http://reports.univ.edu/cs001.pdf');

INSERT INTO community_service_project VALUES
('CS002','Literacy Tutoring','ReadTogether','2023-05-10','2023-08-30','Riverside','CA',150,160,1280.0,20000.00,19000.00','Brian Kim','bkim@readtogether.org','555-9200','Provide reading assistance to elementary students','Tutored 300 students, improved test scores','9.0','Ongoing','Yes','2023-09-15','Planning next semester','http://reports.univ.edu/cs002.pdf');

INSERT INTO community_service_project VALUES
('CS003','Senior Tech Workshop','SilverTech','2023-03-15','2023-06-15','Lakeview','CA',100,95,570.0,12000.00,11500.00','Carla Mendes','cmendes@silvertec.org','555-9300','Teach seniors basic computer skills','80 seniors completed course, high satisfaction','8.0','Completed','No','','','http://reports.univ.edu/cs003.pdf');