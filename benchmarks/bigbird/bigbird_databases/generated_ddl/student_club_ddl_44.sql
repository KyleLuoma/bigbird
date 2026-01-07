-- Campus building access log
CREATE TABLE campus_building_access_log
(
    log_id TEXT PRIMARY KEY,
    building_id TEXT,
    building_name TEXT,
    access_point_id TEXT,
    access_point_name TEXT,
    user_id TEXT,
    user_role TEXT,
    access_time TEXT,
    access_type TEXT,
    credential_type TEXT,
    credential_id TEXT,
    authorized INTEGER,
    reason TEXT,
    device_ip TEXT,
    device_mac TEXT,
    floor_number INTEGER,
    zone TEXT,
    method TEXT,
    notes TEXT,
    recorded_by TEXT
);

INSERT INTO campus_building_access_log (log_id,building_id,building_name,access_point_id,access_point_name,user_id,user_role,access_time,access_type,credential_type,credential_id,authorized,reason,device_ip,device_mac,floor_number,zone,method,notes,recorded_by) VALUES
('log001','B001','Science Hall','AP001','Main Entrance','U123','Student','2025-09-01 08:15:00','enter','card','C12345',1,'Class','192.168.1.10','AA:BB:CC:DD:EE:01',1,'North','Swipe','None','security_system'),
('log002','B002','Library','AP005','Side Door','U456','Faculty','2025-09-01 09:00:00','enter','mobile','M56789',1,'Research','192.168.1.12','AA:BB:CC:DD:EE:02',2,'East','NFC','None','security_system'),
('log003','B001','Science Hall','AP002','North Exit','U789','Visitor','2025-09-01 10:30:00','exit','card','C98765',0,'Expired Card','192.168.1.11','AA:BB:CC:DD:EE:03',1,'North','Swipe','Alert sent','security_system');

-- Academic course offering
CREATE TABLE academic_course_offering
(
    offering_id TEXT PRIMARY KEY,
    course_code TEXT,
    course_title TEXT,
    department TEXT,
    term TEXT,
    year INTEGER,
    instructor_id TEXT,
    instructor_name TEXT,
    schedule_days TEXT,
    start_time TEXT,
    end_time TEXT,
    location TEXT,
    capacity INTEGER,
    enrolled INTEGER,
    waitlist INTEGER,
    format TEXT,
    credits REAL,
    syllabus_url TEXT,
    prerequisite TEXT,
    notes TEXT
);

INSERT INTO academic_course_offering (offering_id,course_code,course_title,department,term,year,instructor_id,instructor_name,schedule_days,start_time,end_time,location,capacity,enrolled,waitlist,format,credits,syllabus_url,prerequisite,notes) VALUES
('off001','CS101','Intro to Computer Science','Computer Science','Fall','2025','F001','Dr Smith','MonWedFri','09:00','09:50','Room 101',100,95,5,'InPerson',3.0,'http://example.com/cs101.pdf','None','Core course'),
('off002','ENG202','Shakespearean Drama','English','Spring','2025','F002','Prof Jones','TueThu','11:00','12:15','Room 202',40,38,2,'InPerson',3.0,'http://example.com/eng202.pdf','ENG101','Elective'),
('off003','BIO150','General Biology Lab','Biology','Summer','2025','F003','Dr Lee','MonWed','14:00','16:00','Lab 3',30,30,0,'InPerson',1.0,'http://example.com/bio150.pdf','BIO100','Lab required');

-- Research project milestone
CREATE TABLE research_project_milestone
(
    milestone_id TEXT PRIMARY KEY,
    project_id TEXT,
    milestone_name TEXT,
    description TEXT,
    target_date TEXT,
    actual_date TEXT,
    status TEXT,
    owner_id TEXT,
    owner_name TEXT,
    budget_allocated REAL,
    budget_spent REAL,
    risk_level TEXT,
    dependencies TEXT,
    deliverables TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    priority INTEGER,
    progress_percent REAL,
    completion_flag INTEGER
);

INSERT INTO research_project_milestone (milestone_id,project_id,milestone_name,description,target_date,actual_date,status,owner_id,owner_name,budget_allocated,budget_spent,risk_level,dependencies,deliverables,notes,created_at,updated_at,priority,progress_percent,completion_flag) VALUES
('ms001','PRJ001','Literature Review','Complete review of related work','2025-03-01','2025-02-28','Completed','U001','Dr Allen',5000.00,4800.00,'Low','None','Review Document','', '2025-01-15','2025-02-28',1,100.0,1),
('ms002','PRJ001','Prototype Development','Build functional prototype','2025-06-01','2025-06-10','Delayed','U002','Dr Baker',20000.00,15000.00,'Medium','Milestone ms001','Prototype v1','Requires additional testing','2025-03-01','2025-06-10',2,70.0,0),
('ms003','PRJ002','Field Testing','Conduct field trials','2025-09-15','','Planned','U003','Dr Clark',15000.00,0.00,'High','Milestone ms002','Test Report','Pending prototype completion','2025-04-20','2025-04-20',3,0.0,0);

-- Faculty consulting engagement
CREATE TABLE faculty_consulting_engagement
(
    engagement_id TEXT PRIMARY KEY,
    faculty_id TEXT,
    faculty_name TEXT,
    client_organization TEXT,
    contract_id TEXT,
    start_date TEXT,
    end_date TEXT,
    total_fee REAL,
    hourly_rate REAL,
    hours_worked REAL,
    engagement_type TEXT,
    area_of_expertise TEXT,
    deliverable_summary TEXT,
    status TEXT,
    invoiced_amount REAL,
    payment_received REAL,
    payment_status TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT
);

INSERT INTO faculty_consulting_engagement (engagement_id,faculty_id,faculty_name,client_organization,contract_id,start_date,end_date,total_fee,hourly_rate,hours_worked,engagement_type,area_of_expertise,deliverable_summary,status,invoiced_amount,payment_received,payment_status,notes,created_by,created_at) VALUES
('eng001','F001','Dr Allen','TechCorp','C001','2025-01-01','2025-03-31',30000.00,150.00,200,'Advisory','Data Science','Strategy Report','Completed',30000.00,30000.00,'Paid','Project successful','admin','2025-01-01'),
('eng002','F002','Prof Jones','HealthInc','C002','2025-04-01','2025-06-30',20000.00,120.00,150,'Consulting','Epidemiology','Risk Assessment','InProgress',15000.00,5000.00,'Partial','Awaiting final deliverable','admin','2025-04-01'),
('eng003','F003','Dr Lee','EcoSolutions','C003','2025-07-01','2025-12-31',50000.00,200.00,250,'Research','Sustainability','Model Development','Planned',0.00,0.00,'Pending','Kickoff meeting scheduled','admin','2025-07-01');

-- Health service provider directory
CREATE TABLE health_service_provider_directory
(
    provider_id TEXT PRIMARY KEY,
    provider_name TEXT,
    provider_type TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code INTEGER,
    phone TEXT,
    email TEXT,
    website TEXT,
    specialty TEXT,
    license_number TEXT,
    accreditation TEXT,
    operating_hours TEXT,
    emergency_services TEXT,
    walk_in_available TEXT,
    insurance_accepted TEXT,
    contact_person TEXT,
    contact_phone TEXT,
    notes TEXT
);

INSERT INTO health_service_provider_directory (provider_id,provider_name,provider_type,address,city,state,zip_code,phone,email,website,specialty,license_number,accreditation,operating_hours,emergency_services,walk_in_available,insurance_accepted,contact_person,contact_phone,notes) VALUES
('hp001','City Health Clinic','Clinic','123 Main St','Springfield','IL',62704,'555-1234','info@cityhealth.org','http://cityhealth.org','Primary Care','LIC12345','Joint Commission','Mon-Fri 08:00-17:00','Yes','Yes','All major plans','Jane Doe','555-5678','Open to community'),
('hp002','Westside Dental','Dental Office','456 Oak Ave','Springfield','IL',62711,'555-2345','contact@westdental.com','http://westdental.com','Dentistry','LIC23456','ADA','Mon-Fri 09:00-18:00','No','Yes','Dentacare','John Smith','555-6789','Specializes in orthodontics'),
('hp003','Greenfield Physical Therapy','Therapy Center','789 Pine Rd','Springfield','IL',62712,'555-3456','support@greenpt.com','http://greenpt.com','Physical Therapy','LIC34567','XYZ Accred','Mon-Thu 07:00-19:00','No','Yes','HealthPlus','Emily Clark','555-7890','Offers sports rehab');

-- Technology incubator mentor
CREATE TABLE technology_incubator_mentor
(
    mentor_id TEXT PRIMARY KEY,
    mentor_name TEXT,
    organization TEXT,
    expertise_area TEXT,
    years_experience INTEGER,
    email TEXT,
    phone TEXT,
    linkedin_profile TEXT,
    mentorship_type TEXT,
    max_startups INTEGER,
    current_startups TEXT,
    availability TEXT,
    bio TEXT,
    rating REAL,
    last_active TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    assigned_startup_id TEXT,
    assigned_startup_name TEXT
);

INSERT INTO technology_incubator_mentor (mentor_id,mentor_name,organization,expertise_area,years_experience,email,phone,linkedin_profile,mentorship_type,max_startups,current_startups,availability,bio,rating,last_active,notes,created_at,updated_at,assigned_startup_id,assigned_startup_name) VALUES
('mt001','Alice Johnson','Alpha Ventures','AI/ML',12,'alice@alphaventures.com','555-1111','linkedin.com/in/alicejohnson','OneOnOne',5,'StartupA,StartupB','Weekdays','Serial entrepreneur and angel investor',4.8,'2025-08-01','Preferred mentor for AI startups','2025-01-10','2025-08-01','ST001','EcoAnalytics'),
('mt002','Bob Lee','Beta Labs','FinTech',8,'bob@betalabs.com','555-2222','linkedin.com/in/boblee','Group','3','StartupC','Weekends','FinTech strategist with banking background',4.5,'2025-07-20','Available for pilot projects','2025-02-15','2025-07-20','ST002','PayFlow'),
('mt003','Carol Smith','Gamma Innovations','HealthTech',10,'carol@gammainnov.com','555-3333','linkedin.com/in/carolsmith','OneOnOne',4,'StartupD','Flexible','Health data analytics expert',4.7,'2025-08-05','Open to remote mentorship','2025-03-05','2025-08-05','ST003','MediTrack');

-- Sustainability initiative budget
CREATE TABLE sustainability_initiative_budget
(
    budget_id TEXT PRIMARY KEY,
    initiative_id TEXT,
    initiative_name TEXT,
    fiscal_year INTEGER,
    total_allocated REAL,
    total_spent REAL,
    remaining_balance REAL,
    source_funding TEXT,
    approval_status TEXT,
    approved_by TEXT,
    approval_date TEXT,
    expense_category TEXT,
    expense_description TEXT,
    expense_amount REAL,
    expense_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    reviewed_by TEXT,
    review_date TEXT
);

INSERT INTO sustainability_initiative_budget (budget_id,initiative_id,initiative_name,fiscal_year,total_allocated,total_spent,remaining_balance,source_funding,approval_status,approved_by,approval_date,expense_category,expense_description,expense_amount,expense_date,notes,created_at,updated_at,reviewed_by,review_date) VALUES
('sb001','SI001','Campus Solar Project','2025',200000.00,50000.00,150000.00,'Green Fund','Approved','VP Finance','2025-02-01','Equipment','Solar panels purchase',50000.00,'2025-03-15','Phase 1 complete','2025-02-01','2025-03-20','Audit Team','2025-03-25'),
('sb002','SI002','Zero Waste Initiative','2025',100000.00,25000.00,75000.00,'Donations','Approved','Director Sustainability','2025-01-15','Materials','Compost bins',25000.00,'2025-02-10','Installation in main dorms','2025-01-15','2025-02-12','Audit Team','2025-02-15'),
('sb003','SI003','Bike Share Expansion','2025',80000.00,10000.00,70000.00,'City Grant','Pending','Dean Operations','2025-04-01','Infrastructure','New bike stations',10000.00,'2025-04-15','Awaiting final approval','2025-04-01','2025-04-20','Audit Team','2025-04-22');

-- Community event participant
CREATE TABLE community_event_participant
(
    participant_id TEXT PRIMARY KEY,
    event_id TEXT,
    community_member_id TEXT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    registration_date TEXT,
    attendance_status TEXT,
    role TEXT,
    organization TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code INTEGER,
    age INTEGER,
    gender TEXT,
    dietary_restrictions TEXT,
    notes TEXT,
    feedback_score REAL
);

INSERT INTO community_event_participant (participant_id,event_id,community_member_id,first_name,last_name,email,phone,registration_date,attendance_status,role,organization,address,city,state,zip_code,age,gender,dietary_restrictions,notes,feedback_score) VALUES
('cp001','EV001','CM001','John','Doe','jdoe@example.com','555-1010','2025-08-01','Attended','Speaker','Local Nonprofit','123 Elm St','Springfield','IL',62704,45,'Male','None','Excellent presentation',4.5),
('cp002','EV001','CM002','Maria','Garcia','mgarcia@example.com','555-2020','2025-08-02','NoShow','Volunteer','Community Center','456 Oak Ave','Springfield','IL',62704,32,'Female','Vegetarian','Did not attend due to illness',3.0),
('cp003','EV002','CM003','Liam','Nguyen','lnguyen@example.com','555-3030','2025-09-05','Attended','Attendee','Business Association','789 Pine Rd','Springfield','IL',62704,28,'Male','GlutenFree','Provided valuable feedback',4.0);

-- Environmental sensor deployment
CREATE TABLE environmental_sensor_deployment
(
    deployment_id TEXT PRIMARY KEY,
    sensor_id TEXT,
    sensor_type TEXT,
    model TEXT,
    manufacturer TEXT,
    location_id TEXT,
    latitude REAL,
    longitude REAL,
    installation_date TEXT,
    calibration_date TEXT,
    status TEXT,
    firmware_version TEXT,
    battery_level REAL,
    data_endpoint TEXT,
    sampling_rate INTEGER,
    measurement_unit TEXT,
    maintenance_schedule TEXT,
    last_maintenance TEXT,
    notes TEXT,
    created_by TEXT
);

INSERT INTO environmental_sensor_deployment (deployment_id,sensor_id,sensor_type,model,manufacturer,location_id,latitude,longitude,installation_date,calibration_date,status,firmware_version,battery_level,data_endpoint,sampling_rate,measurement_unit,maintenance_schedule,last_maintenance,notes,created_by) VALUES
('ed001','S001','AirQuality','AQ-100','EnviroTech','LOC01',40.7128,-74.0060,'2025-03-01','2025-03-05','Active','v1.2',95.0,'http://data.university.edu/aq001',60,'PPM','Quarterly','2025-06-01','Installed near main entrance','engineer1'),
('ed002','S002','Temperature','TMP-200','ClimateCorp','LOC02',40.7135,-74.0055,'2025-04-15','2025-04-20','Active','v2.0',88.0,'http://data.university.edu/tmp002',30,'Celsius','Biannual','2025-07-15','Located in library basement','engineer2'),
('ed003','S003','Noise','NS-300','SoundMetrics','LOC03',40.7140,-74.0040,'2025-05-10','2025-05-12','Inactive','v1.0',0.0,'http://data.university.edu/ns003',15,'Decibel','Annual','2025-08-10','Sensor under maintenance','engineer3');

-- Campus WiFi access policy
CREATE TABLE campus_wifi_access_policy
(
    policy_id TEXT PRIMARY KEY,
    ssid_name TEXT,
    network_type TEXT,
    authentication_method TEXT,
    encryption_type TEXT,
    max_bandwidth REAL,
    guest_access_allowed INTEGER,
    device_limit INTEGER,
    allowed_roles TEXT,
    restricted_hours TEXT,
    vlan_id INTEGER,
    firewall_rules TEXT,
    qos_profile TEXT,
    created_at TEXT,
    updated_at TEXT,
    approved_by TEXT,
    approval_date TEXT,
    notes TEXT,
    compliance_status TEXT,
    policy_version INTEGER
);

INSERT INTO campus_wifi_access_policy (policy_id,ssid_name,network_type,authentication_method,encryption_type,max_bandwidth,guest_access_allowed,device_limit,allowed_roles,restricted_hours,vlan_id,firewall_rules,qos_profile,created_at,updated_at,approved_by,approval_date,notes,compliance_status,policy_version) VALUES
('wp001','CampusSecure','Enterprise','802.1X','WPA2-Enterprise',500.0,0,5,'Faculty,Staff,Students','22:00-06:00',10,'AllowAll','Gold','2025-01-01','2025-07-01','IT Director','2025-01-05','Standard policy','Compliant',2),
('wp002','CampusGuest','Guest','Password','WPA2-Personal',100.0,1,3,'Guest','08:00-22:00',20,'BlockStreaming','Silver','2025-02-15','2025-08-01','IT Manager','2025-02-20','Limited access for visitors','Compliant',1),
('wp003','CampusIoT','IoT','Certificate','WPA3',200.0,0,10,'IoTDevices','00:00-23:59',30,'AllowIoT','Bronze','2025-03-10','2025-09-01','Security Lead','2025-03-12','Policy for campus sensors','Pending',1);