-- Scholarship fund information
CREATE TABLE scholarship_fund
(
    fund_id TEXT PRIMARY KEY,
    fund_name TEXT,
    governing_body TEXT,
    start_date TEXT,
    end_date TEXT,
    total_amount INTEGER,
    amount_disbursed INTEGER,
    remaining_amount INTEGER,
    eligibility_criteria TEXT,
    number_of_recipients INTEGER,
    award_type TEXT,
    application_deadline TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    is_active TEXT,
    fund_category TEXT,
    fund_source TEXT,
    notes TEXT,
    review_cycle TEXT,
    max_award_per_student INTEGER
);

INSERT INTO scholarship_fund VALUES
('SF001','STEM_Innovation_Fund','Office_of_Research','2022-01-01','2025-12-31',500000,150000,350000','GPA>3.5_and_Major_STEM',30,'Merit','2024-03-01','scholarships@univ.edu','5551234567','yes','Undergraduate','Alumni_Donations','Initial_fund_setup','Annual','20000');

INSERT INTO scholarship_fund VALUES
('SF002','Humanities_Excellence','College_of_Arts','2021-09-01','2024-08-31',200000,80000,120000','GPA>3.7_and_Essay_Submission',15,'Merit','2023-11-15','humanscholar@univ.edu','5559876543','yes','Graduate','Endowment','Second_phase','Biannual','15000');

INSERT INTO scholarship_fund VALUES
('SF003','Community_Service_Grant','Community_Affairs','2023-05-01','2026-04-30',100000,25000,75000','Minimum_20hrs_service',40,'Need','2024-02-20','servicegrant@univ.edu','5552223344','yes','Undergraduate','Corporate_Sponsor','Pilot_program','Annual','5000');

-- Faculty office allocation
CREATE TABLE faculty_office
(
    office_id TEXT PRIMARY KEY,
    building_code TEXT,
    floor_number INTEGER,
    room_number TEXT,
    square_feet INTEGER,
    capacity INTEGER,
    faculty_id TEXT,
    department TEXT,
    phone_extension TEXT,
    email TEXT,
    is_shared TEXT,
    lease_start TEXT,
    lease_end TEXT,
    furniture_type TEXT,
    hvac_system TEXT,
    window_type TEXT,
    security_access_level TEXT,
    renovation_date TEXT,
    parking_spot TEXT,
    notes TEXT
);

INSERT INTO faculty_office VALUES
('OF001','ENG','2','210A',180,2,'F123','Engineering','3456','john.doe@univ.edu','no','2020-07-01','2025-06-30','Modern','VRF','DoublePane','Level2','2022-01-15','P101','Near_labs');

INSERT INTO faculty_office VALUES
('OF002','SCI','3','315B',200,3,'F456','Science','6789','jane.smith@univ.edu','yes','2019-09-01','2024-08-31','Standard','ChilledWater','SinglePane','Level3','2021-09-10','P202','Shared_with_postdoc');

INSERT INTO faculty_office VALUES
('OF003','ART','1','101C',150,1,'F789','Arts','1122','alice.lee@univ.edu','no','2021-01-15','2026-01-14','Custom','RadiantFloor','TriplePane','Level1','2023-03-05','P303','Studio_space');

-- Research data portal registry
CREATE TABLE research_data_portal
(
    portal_id TEXT PRIMARY KEY,
    portal_name TEXT,
    url TEXT,
    admin_user_id TEXT,
    storage_capacity_gb INTEGER,
    used_capacity_gb INTEGER,
    access_level TEXT,
    authentication_method TEXT,
    encryption_enabled TEXT,
    backup_schedule TEXT,
    data_retention_policy TEXT,
    last_audit_date TEXT,
    support_contact TEXT,
    service_tier TEXT,
    uptime_percentage REAL,
    api_endpoint TEXT,
    ftp_enabled TEXT,
    max_download_rate_mbps INTEGER,
    user_quota_gb INTEGER,
    notes TEXT
);

INSERT INTO research_data_portal VALUES
('RP001','Genomics_Data_Hub','https://data.univ.edu/genomics','U001',10000,2500,'Restricted','SSO','yes','Daily','5_years','2024-06-01','it_support@univ.edu','Premium',99.9,'https://api.univ.edu/genomics','no',500,200,'High_security');

INSERT INTO research_data_portal VALUES
('RP002','Social_Science_Archive','https://data.univ.edu/social','U002',5000,1200,'Open','OAuth','no','Weekly','3_years','2024-05-20','dataadmin@univ.edu','Standard',98.5,'https://api.univ.edu/social','yes',200,100,'Public_access');

INSERT INTO research_data_portal VALUES
('RP003','Physics_Simulation_Repo','https://data.univ.edu/physics','U003',8000,3400,'Restricted','Kerberos','yes','Daily','7_years','2024-04-15','physics_it@univ.edu','Enterprise',99.7,'https://api.univ.edu/physics','no',400,150,'Large_datasets');

-- Campus transport vehicle inventory
CREATE TABLE campus_transport_vehicle
(
    vehicle_id TEXT PRIMARY KEY,
    vehicle_type TEXT,
    license_plate TEXT,
    manufacturer TEXT,
    model_year INTEGER,
    seating_capacity INTEGER,
    fuel_type TEXT,
    fuel_efficiency_mpg REAL,
    last_service_date TEXT,
    next_service_due TEXT,
    mileage INTEGER,
    vin TEXT,
    assigned_route_id TEXT,
    driver_employee_id TEXT,
    insurance_policy_number TEXT,
    registration_expiry TEXT,
    gps_enabled TEXT,
    status TEXT,
    depreciation_value REAL,
    notes TEXT
);

INSERT INTO campus_transport_vehicle VALUES
('TV001','Shuttle','ABC123','Ford','2019',20,'Diesel',22.5,'2024-03-10','2024-09-10',56000,'1FTSW21R08EC12345','R001','E100','INS12345','2025-12-31','yes','Active',8500,'Campus_west_loop');

INSERT INTO campus_transport_vehicle VALUES
('TV002','Electric_Bus','ELEC456','Tesla','2021',30,'Electric',0,'2024-02-05','2024-08-05',24000,'5YJ3E1EA7MF123456','R002','E101','INS67890','2026-06-30','yes','Active',12000,'Downtown_route');

INSERT INTO campus_transport_vehicle VALUES
('TV003','Maintenance_Van','VAN789','Chevrolet','2018',4,'Gasoline',18.0,'2024-01-20','2024-07-20',78000,'2G1WF52E559123456','R003','E102','INS54321','2024-12-31','no','In_Service',6000,'Facilities_support');

-- Student wellness program catalog
CREATE TABLE student_wellness_program
(
    program_id TEXT PRIMARY KEY,
    program_name TEXT,
    launch_date TEXT,
    target_population TEXT,
    focus_area TEXT,
    coordinator_id TEXT,
    budget_allocated INTEGER,
    budget_spent INTEGER,
    enrollment_limit INTEGER,
    current_enrollment INTEGER,
    meeting_frequency TEXT,
    location TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    online_resources_url TEXT,
    evaluation_score REAL,
    is_mandatory TEXT,
    accreditation_status TEXT,
    notes TEXT,
    next_review_date TEXT
);

INSERT INTO student_wellness_program VALUES
('WP001','Mindful_Stress_Reduction','2022-08-15','Undergraduate','Mental_Health','C001',50000,21000,300,150,'Weekly','Wellness_Center','wellness@univ.edu','5551112222','https://wellness.univ.edu/mindful','4.5','no','Accredited','Positive_feedback','2025-08-01');

INSERT INTO student_wellness_program VALUES
('WP002','Nutrition_Education','2021-01-10','All_Students','Physical_Health','C002',30000,15000,200,180,'Biweekly','Student_Dining_Hall','nutrition@univ.edu','5553334444','https://wellness.univ.edu/nutrition','4.2','no','Accredited','High_participation','2024-12-15');

INSERT INTO student_wellness_program VALUES
('WP003','Peer_Support_Network','2023-03-01','Graduate','Mental_Health','C003',40000,12000,150,80,'Monthly','Graduate_Commons','peersupport@univ.edu','5555556666','https://wellness.univ.edu/peer','4.7','no','Pending','Pilot_phase','2025-03-01');

-- Alumni publication records
CREATE TABLE alumni_publication
(
    publication_id TEXT PRIMARY KEY,
    title TEXT,
    publication_date TEXT,
    journal_name TEXT,
    volume TEXT,
    issue TEXT,
    pages TEXT,
    doi TEXT,
    author_alumni_id TEXT,
    coauthor_ids TEXT,
    abstract TEXT,
    keywords TEXT,
    impact_factor REAL,
    citation_count INTEGER,
    pdf_url TEXT,
    is_peer_reviewed TEXT,
    funding_source TEXT,
    notes TEXT,
    editor_in_chief TEXT,
    submission_deadline TEXT
);

INSERT INTO alumni_publication VALUES
('AP001','Advances_in_AI','2023-05-20','Journal_of_Computer_Science','12','3','101-115','10.1234/jcs.2023.001','A001','A002;A003','Explores_new_algorithms','AI;Machine_Learning',5.2,45,'https://pubs.univ.edu/ap001.pdf','yes','Tech_Foundation','Award_winning','Dr_Smith','2023-04-01');

INSERT INTO alumni_publication VALUES
('AP002','Renewable_Energy_Storage','2022-11-10','Energy_Research_Reviews','8','2','220-235','10.5678/err.2022.045','A004','A005;A006','Investigation_of_battery_technologies','Renewables;Storage',4.8,30,'https://pubs.univ.edu/ap002.pdf','yes','Green_Initiative','Highly_cited','Dr_Jones','2022-10-01');

INSERT INTO alumni_publication VALUES
('AP003','Social_Impact_of_URBAN_Planning','2024-02-15','Urban_Studies_Journal','15','1','50-68','10.9101/usj.2024.012','A007','A008','Analyzes_community_outcomes','Urban;Planning',3.9,12,'https://pubs.univ.edu/ap003.pdf','yes','City_Grant','In_press','Dr_Lee','2024-01-01');

-- Energy efficiency audit logs
CREATE TABLE energy_efficiency_audit
(
    audit_id TEXT PRIMARY KEY,
    building_id TEXT,
    audit_date TEXT,
    auditor_name TEXT,
    audit_type TEXT,
    total_score INTEGER,
    hvac_score INTEGER,
    lighting_score INTEGER,
    envelope_score INTEGER,
    renewable_integration_score INTEGER,
    recommendations_count INTEGER,
    estimated_savings_kwh INTEGER,
    estimated_savings_cost INTEGER,
    status TEXT,
    follow_up_date TEXT,
    report_url TEXT,
    notes TEXT,
    compliance_level TEXT,
    certification_awarded TEXT,
    next_audit_due TEXT
);

INSERT INTO energy_efficiency_audit VALUES
('EA001','B001','2023-09-12','Laura_Kim','Comprehensive',85,22,20,18,25,12,150000,18000,'Completed','2024-03-12','https://audit.univ.edu/ea001.pdf','Significant_improvements','High','LEED_Gold','2025-09-12');

INSERT INTO energy_efficiency_audit VALUES
('EA002','B002','2024-01-05','Michael_Chan','Midterm',78,20,19,16,13,8,90000,11000,'Completed','2024-07-05','https://audit.univ.edu/ea002.pdf','Moderate_updates','Medium','ENERGY_STAR','2025-01-05');

INSERT INTO energy_efficiency_audit VALUES
('EA003','B003','2023-06-20','Sophie_Rao','Preliminary',70,18,15,17,10,5,60000,7500,'In_Progress','2023-12-20','https://audit.univ.edu/ea003.pdf','Pending_recommendations','Low','None','2024-06-20');

-- Library seat reservation system
CREATE TABLE library_seat_reservation
(
    reservation_id TEXT PRIMARY KEY,
    seat_id TEXT,
    library_branch_id TEXT,
    patron_id TEXT,
    reservation_date TEXT,
    start_time TEXT,
    end_time TEXT,
    reservation_status TEXT,
    created_timestamp TEXT,
    updated_timestamp TEXT,
    purpose TEXT,
    notes TEXT,
    is_extended TEXT,
    extension_allowed_until TEXT,
    admin_override_flag TEXT,
    cancellation_reason TEXT,
    email_notification_sent TEXT,
    sms_notification_sent TEXT,
    max_occupancy INTEGER,
    reservation_type TEXT
);

INSERT INTO library_seat_reservation VALUES
('RS001','S101','LB01','P001','2024-04-10','09:00','12:00','Confirmed','2024-04-01 08:30','2024-04-01 08:30','Study','Near_window','no',NULL,'no',NULL,'yes','no',1,'Individual');

INSERT INTO library_seat_reservation VALUES
('RS002','S202','LB02','P002','2024-04-11','13:00','15:00','Cancelled','2024-04-02 10:15','2024-04-03 09:00','Group_work','Near_printer','no',NULL,'yes','Student_requested_change','yes','yes',4,'Group');

INSERT INTO library_seat_reservation VALUES
('RS003','S303','LB01','P003','2024-04-12','10:30','13:30','Confirmed','2024-04-05 11:00','2024-04-05 11:00','Research','Quiet_zone','yes','2024-04-12 14:00','no',NULL,'yes','no',1,'Individual');

-- Community health initiative tracking
CREATE TABLE community_health_initiative
(
    initiative_id TEXT PRIMARY KEY,
    name TEXT,
    launch_date TEXT,
    target_community TEXT,
    health_focus TEXT,
    lead_coordinator_id TEXT,
    funding_source TEXT,
    total_budget INTEGER,
    spent_budget INTEGER,
    participants_count INTEGER,
    events_conducted INTEGER,
    outcomes_summary TEXT,
    evaluation_score REAL,
    report_url TEXT,
    is_active TEXT,
    next_phase_start TEXT,
    partnership_orgs TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    notes TEXT
);

INSERT INTO community_health_initiative VALUES
('CHI001','Healthy_Eating_Campaign','2022-02-01','Local_Schools','Nutrition','L001','State_Grant',80000,35000,1200,8','Improved_fruit_intake','4.3','https://health.univ.edu/chi001.pdf','yes','2024-02-01','Local_Farmers_Assoc','health@univ.edu','5557778888','Positive_feedback');

INSERT INTO community_health_initiative VALUES
('CHI002','Mental_Wellness_Workshops','2023-05-15','Community_Centers','Mental_Health','L002','Private_Donor',60000,20000,900,5','Reduced_stigma','4.6','https://health.univ.edu/chi002.pdf','yes','2025-05-15','Mental_Health_NGO','wellness@univ.edu','5559990000','Expansion_planned');

INSERT INTO community_health_initiative VALUES
('CHI003','Senior_Fitness_Program','2021-09-10','Senior_Citizens','Physical_Activity','L003','Federal_Fund',50000,40000,300,12','Increased_mobility','4.1','https://health.univ.edu/chi003.pdf','no','2023-09-10','Senior_Center_Assoc','seniorfit@univ.edu','5551113333','Program_completed');

-- Technology workshop catalog
CREATE TABLE technology_workshop
(
    workshop_id TEXT PRIMARY KEY,
    topic TEXT,
    date TEXT,
    start_time TEXT,
    end_time TEXT,
    location TEXT,
    instructor_id TEXT,
    max_participants INTEGER,
    enrolled_count INTEGER,
    prerequisites TEXT,
    materials_provided TEXT,
    equipment_needed TEXT,
    registration_deadline TEXT,
    cost_per_participant INTEGER,
    is_certified TEXT,
    certificate_url TEXT,
    feedback_score_avg REAL,
    notes TEXT,
    is_recurring TEXT,
    recurrence_pattern TEXT
);

INSERT INTO technology_workshop VALUES
('TW001','Intro_to_Python','2024-06-20','10:00','13:00','Lab_A','I001',30,28,'None','Printed_handouts','Computers_with_Python','2024-06-10',0,'yes','https://tech.univ.edu/cert/tw001.pdf','4.8','High_demand','yes','Monthly');

INSERT INTO technology_workshop VALUES
('TW002','Data_Visualization_with_R','2024-07-15','14:00','17:00','Lab_B','I002',25,22,'Basic_R_knowledge','Digital_slides','Computers_with_R','2024-07-05',20,'yes','https://tech.univ.edu/cert/tw002.pdf','4.5','Include_real_world_cases','no','');

INSERT INTO technology_workshop VALUES
('TW003','Cybersecurity_Basics','2024-08-05','09:00','12:00','Conference_Room','I003',40,35,'None','Online_resources','Projector','2024-07-25',15,'no','',3.9,'Open_to_all','yes','Quarterly');
