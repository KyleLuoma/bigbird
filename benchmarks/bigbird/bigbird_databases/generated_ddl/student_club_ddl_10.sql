-- Schedule of campus lectures
CREATE TABLE campus_lecture_schedule (
    lecture_id TEXT PRIMARY KEY,
    course_code TEXT,
    course_name TEXT,
    instructor_id TEXT,
    lecture_date TEXT,
    start_time TEXT,
    end_time TEXT,
    building_code TEXT,
    room_number TEXT,
    capacity INTEGER,
    enrollment INTEGER,
    lecture_type TEXT,
    syllabus_url TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    credit_hours INTEGER,
    semester TEXT,
    academic_year TEXT,
    is_mandatory TEXT,
    attendance_mode TEXT
);
INSERT INTO campus_lecture_schedule VALUES ('L001','CS101','Intro to Computing','I001','2026-02-01','09:00','10:30','B01','101',100,85,'Lecture','http://example.com/syl1','First session','2026-01-01','2026-01-02',3,'Fall','2026','Yes','InPerson');
INSERT INTO campus_lecture_schedule VALUES ('L002','MATH201','Calculus II','I002','2026-02-02','11:00','12:30','B02','202',120,110,'Lecture','http://example.com/syl2','Second session','2026-01-03','2026-01-04',4,'Fall','2026','Yes','InPerson');
INSERT INTO campus_lecture_schedule VALUES ('L003','HIST300','Modern History','I003','2026-02-03','14:00','15:30','B03','303',80,60,'Seminar','http://example.com/syl3','Third session','2026-01-05','2026-01-06',3,'Fall','2026','No','Hybrid');

-- Student on‑campus accommodation assignments
CREATE TABLE student_accommodation (
    accommodation_id TEXT PRIMARY KEY,
    student_id TEXT,
    building_name TEXT,
    wing_code TEXT,
    room_number TEXT,
    floor_number INTEGER,
    bed_type TEXT,
    lease_start TEXT,
    lease_end TEXT,
    rent_amount INTEGER,
    utility_included TEXT,
    security_deposit INTEGER,
    move_in_status TEXT,
    keycard_id TEXT,
    roommate_id TEXT,
    internet_package TEXT,
    parking_permit_id TEXT,
    maintenance_contact TEXT,
    occupancy_status TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    emergency_contact_name TEXT,
    emergency_contact_phone TEXT
);
INSERT INTO student_accommodation VALUES ('A001','S123','Maple Hall','W1','101A',1,'Double','2026-08-01','2027-07-31',3500,'Yes',500,'MovedIn','KC001','S124','Premium','P001','MNT001','Occupied','2026-01-10','2026-01-11','Near elevator','John Doe','5551234567');
INSERT INTO student_accommodation VALUES ('A002','S125','Oak Residence','W2','202B',2,'Single','2026-08-01','2027-07-31',3000,'No',400,'Pending','KC002','S126','Standard','P002','MNT002','Vacant','2026-01-12','2026-01-13','Quiet wing','Jane Smith','5559876543');
INSERT INTO student_accommodation VALUES ('A003','S127','Pine Suites','W3','303C',3,'Triple','2026-08-01','2027-07-31',4000,'Yes',600,'MovedIn','KC003','S128','Premium','P003','MNT003','Occupied','2026-01-14','2026-01-15','Close to lounge','Alice Brown','5555551212');

-- Reservations of research equipment
CREATE TABLE research_equipment_reservation (
    reservation_id TEXT PRIMARY KEY,
    equipment_id TEXT,
    researcher_id TEXT,
    project_code TEXT,
    reservation_start TEXT,
    reservation_end TEXT,
    purpose TEXT,
    safety_check_passed TEXT,
    supervisor_id TEXT,
    lab_location TEXT,
    access_level TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    cost_center TEXT,
    estimated_hours INTEGER,
    actual_hours INTEGER,
    calibration_status TEXT,
    maintenance_due TEXT,
    priority_level TEXT,
    approval_status TEXT,
    email_notification_sent TEXT,
    last_modified_by TEXT,
    extended_flag TEXT
);
INSERT INTO research_equipment_reservation VALUES ('R001','EQ100','R001','PRJ01','2026-03-01','2026-03-05','Microscopy analysis','Yes','SUP01','LabA','Level2','2026-02-20','2026-02-21','N/A','CC100','40','0','Calibrated','2026-12-01','High','Pending','No','Admin01','No');
INSERT INTO research_equipment_reservation VALUES ('R002','EQ101','R002','PRJ02','2026-04-10','2026-04-12','Spectroscopy test','Yes','SUP02','LabB','Level3','2026-04-01','2026-04-02','Urgent','CC101','24','0','Calibration needed','2026-11-15','Medium','Approved','Yes','Admin02','No');
INSERT INTO research_equipment_reservation VALUES ('R003','EQ102','R003','PRJ03','2026-05-20','2026-05-22','DNA sequencing','No','SUP03','LabC','Level1','2026-05-10','2026-05-11','Pending safety','CC102','12','0','Not calibrated','2026-10-20','Low','Rejected','No','Admin03','Yes');

-- Campus bus route schedule
CREATE TABLE campus_bus_route (
    route_id TEXT PRIMARY KEY,
    route_name TEXT,
    start_point TEXT,
    end_point TEXT,
    total_distance REAL,
    average_speed REAL,
    operating_hours TEXT,
    frequency_minutes INTEGER,
    driver_id TEXT,
    bus_id TEXT,
    capacity INTEGER,
    wheelchair_accessible TEXT,
    fare_type TEXT,
    fuel_type TEXT,
    maintenance_status TEXT,
    last_inspection_date TEXT,
    next_inspection_due TEXT,
    gps_tracker_id TEXT,
    route_status TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    contact_phone TEXT,
    emergency_contact TEXT,
    average_load_factor REAL,
    peak_hour_start TEXT,
    peak_hour_end TEXT
);
INSERT INTO campus_bus_route VALUES ('B001','North Loop','Dorm A','Library',5.2,30.0,'06:00-22:00',15,'D001','BUS01',50,'Yes','Student','Diesel','Good','2025-12-01','2026-12-01','GT001','Active','2025-01-01','2025-01-02','N/A','5551112222','Facilities','0.75','07:00','09:00');
INSERT INTO campus_bus_route VALUES ('B002','East Connector','Gym','Science Hall',3.8,25.0,'07:00-20:00',20,'D002','BUS02',40,'No','Public','Electric','Minor issues','2025-11-15','2026-11-15','GT002','Active','2025-02-01','2025-02-02','Late afternoon crowd','5553334444','Transit Office','0.60','12:00','14:00');
INSERT INTO campus_bus_route VALUES ('B003','South Shuttle','Cafeteria','Student Center',2.5,20.0,'08:00-18:00',30,'D003','BUS03',30,'Yes','Student','Hybrid','Good','2025-10-20','2026-10-20','GT003','Planned','2025-03-01','2025-03-02','Seasonal route','5555556666','Transport Admin','0.50','09:00','11:00');

-- Dining hall menu items
CREATE TABLE dining_hall_menu (
    menu_item_id TEXT PRIMARY KEY,
    dining_hall_name TEXT,
    item_name TEXT,
    category TEXT,
    cuisine TEXT,
    calories INTEGER,
    protein_grams INTEGER,
    carbs_grams INTEGER,
    fat_grams INTEGER,
    gluten_free TEXT,
    vegan TEXT,
    vegetarian TEXT,
    nut_free TEXT,
    dairy_free TEXT,
    price_cents INTEGER,
    available_start TEXT,
    available_end TEXT,
    supplier_id TEXT,
    preparation_time_minutes INTEGER,
    spiciness_level TEXT,
    seasonal TEXT,
    dietary_notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    portion_size TEXT,
    allergens TEXT,
    chef_name TEXT,
    rating_average REAL,
    votes INTEGER,
    special_instructions TEXT
);
INSERT INTO dining_hall_menu VALUES ('M001','Maple Hall','Grilled Chicken Salad','Salad','American',350,30,20,10,'Yes','No','Yes','Yes','Yes',850,'2026-01-01','2026-12-31','S001',15,'Mild','No','Low sodium','2025-12-01','2025-12-02','Medium','None','Chef Anna',4.5,120,'No dressing on request');
INSERT INTO dining_hall_menu VALUES ('M002','Oak Hall','Vegan Burrito Bowl','Entree','Mexican',500,20,60,15,'Yes','Yes','Yes','Yes','Yes',950,'2026-02-01','2026-08-31','S002',20,'Medium','Yes','High fiber','2025-12-15','2025-12-16','Large','Tree nuts','Chef Luis',4.2,95,'Extra guacamole');
INSERT INTO dining_hall_menu VALUES ('M003','Pine Hall','Gluten Free Pancakes','Breakfast','American',400,10,50,8,'Yes','No','Yes','Yes','No',750,'2026-03-01','2026-06-30','S003',10,'Low','No','Sugar free','2025-12-20','2025-12-21','Small','Eggs','Chef Maya',4.8,150,'Serve with maple syrup');

-- Facility maintenance request log
CREATE TABLE facility_maintenance_request (
    request_id TEXT PRIMARY KEY,
    building_code TEXT,
    floor_number INTEGER,
    room_number TEXT,
    request_type TEXT,
    priority_level TEXT,
    description TEXT,
    reported_by TEXT,
    reported_date TEXT,
    assigned_to TEXT,
    assignment_date TEXT,
    status TEXT,
    completion_date TEXT,
    cost_estimate INTEGER,
    actual_cost INTEGER,
    materials_used TEXT,
    safety_concern TEXT,
    follow_up_required TEXT,
    follow_up_date TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    photos_attached TEXT,
    vendor_id TEXT,
    warranty_required TEXT,
    escalation_level TEXT,
    survey_sent TEXT,
    satisfaction_score INTEGER,
    resolution_notes TEXT
);
INSERT INTO facility_maintenance_request VALUES ('FR001','B01',2,'210','Plumbing','High','Leaking faucet in restroom','JSmith','2026-01-05','TLee','2026-01-06','InProgress','','150','200','Faucet kit','No','Yes','2026-01-15','2026-01-05','2026-01-06','Awaiting parts','Yes','V001','Yes','Level2','Yes',5,'Fixed with new valve');
INSERT INTO facility_maintenance_request VALUES ('FR002','B02',1,'101','Electrical','Medium','Flickering lights in hallway','ALee','2026-01-10','MNguyen','2026-01-11','Completed','2026-01-13','100','80','LED bulbs','No','No','','2026-01-10','2026-01-11','All good','No','V002','No','Level1','No',4,'Replaced faulty ballast');
INSERT INTO facility_maintenance_request VALUES ('FR003','B03',3,'305','HVAC','Low','Air conditioner not cooling','KPatel','2026-01-12','RKim','2026-01-13','Pending','','300','0','','Yes','Yes','2026-01-25','2026-01-12','2026-01-13','Parts on order','Yes','V003','Yes','Level3','Yes',0,'Awaiting new compressor');

-- Alumni network contacts
CREATE TABLE alumni_network (
    alumni_id TEXT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    graduation_year INTEGER,
    degree TEXT,
    major_id TEXT,
    current_employer TEXT,
    job_title TEXT,
    email TEXT,
    phone TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    linkedin_url TEXT,
    twitter_handle TEXT,
    facebook_profile TEXT,
    mailing_address TEXT,
    preferred_contact_method TEXT,
    last_update TEXT,
    engagement_score INTEGER,
    mentoring_available TEXT,
    donor_status TEXT,
    last_donation_date TEXT,
    total_donated INTEGER,
    newsletter_subscribed TEXT,
    event_participation TEXT,
    volunteer_hours INTEGER,
    interests TEXT,
    bio TEXT,
    photo_url TEXT
);
INSERT INTO alumni_network VALUES ('AL001','Emily','Clark','2010','BSc','MJR001','TechCorp','Senior Engineer','eclark@example.com','5551112222','Seattle','WA','USA','http://linkedin.com/in/eclark','eclark','eclarkfb','123 Main St, Seattle, WA','Email','2025-12-01',85,'Yes','Gold','2025-11-15',15000,'Yes','Conference2025','20','AI, Hiking','Passionate about mentoring','http://images.example.com/eclark.jpg');
INSERT INTO alumni_network VALUES ('AL002','Michael','Brown','2012','MBA','MJR002','FinanceInc','Portfolio Manager','mbrown@example.com','5553334444','Chicago','IL','USA','http://linkedin.com/in/mbrown','mbrown','mbrownfb','456 Oak Ave, Chicago, IL','Phone','2025-11-20',70,'No','Silver','2025-10-05',8000,'No','AlumniGala2025','5','Investing, Golf','Enjoys community service','http://images.example.com/mbrown.jpg');
INSERT INTO alumni_network VALUES ('AL003','Sofia','Martinez','2015','MSc','MJR003','HealthPlus','Research Scientist','smartinez@example.com','5555556666','Austin','TX','USA','http://linkedin.com/in/smartinez','smartinez','smartinezfb','789 Pine Rd, Austin, TX','Mail','2025-12-15',60,'Yes','Bronze','2025-09-30',3000,'Yes','Workshop2025','0','Biotech, Music','Active in alumni mentorship program','http://images.example.com/smartinez.jpg');

-- Campus parking permit registry
CREATE TABLE campus_parking_permit (
    permit_id TEXT PRIMARY KEY,
    vehicle_plate TEXT,
    vehicle_make TEXT,
    vehicle_model TEXT,
    vehicle_year INTEGER,
    owner_id TEXT,
    permit_type TEXT,
    issue_date TEXT,
    expiration_date TEXT,
    zone_code TEXT,
    permit_status TEXT,
    issued_by TEXT,
    last_renewal_date TEXT,
    renewal_count INTEGER,
    parking_spot TEXT,
    handicap_accessible TEXT,
    electric_vehicle TEXT,
    assigned_guardian TEXT,
    comments TEXT,
    created_at TEXT,
    updated_at TEXT,
    violation_count INTEGER,
    total_fines INTEGER,
    last_violation_date TEXT,
    payment_method TEXT,
    auto_renewal TEXT,
    insurance_provider TEXT,
    insurance_policy_number TEXT,
    insurance_expiry TEXT,
    gps_tracker_installed TEXT,
    sticker_number TEXT
);
INSERT INTO campus_parking_permit VALUES ('P001','ABC123','Toyota','Camry',2020,'S123','Student','2025-08-01','2026-07-31','Z1','Active','AdminA','2025-08-01',1,'Spot12','No','No','GuardA','None','2025-08-01','2025-08-02',0,0,'','CreditCard','Yes','InsureCo','POL12345','2026-12-31','Yes','STK001');
INSERT INTO campus_parking_permit VALUES ('P002','XYZ789','Tesla','Model3',2022,'S124','Faculty','2025-08-15','2026-08-14','Z2','Active','AdminB','2025-08-15',1,'Spot34','Yes','Yes','GuardB','EV charging','2025-08-15','2025-08-16',0,0,'','DirectDebit','Yes','SafeAuto','POL67890','2027-06-30','Yes','STK002');
INSERT INTO campus_parking_permit VALUES ('P003','LMN456','Ford','F-150',2018,'S125','Staff','2025-09-01','2026-08-31','Z3','Suspended','AdminC','2025-09-01',0,'Spot56','No','No','GuardC','Overdue fines','2025-09-01','2025-09-02',2,150,'2025-12-10','Cash','No','AutoShield','POL54321','2026-05-15','No','STK003');

-- Sustainability project tracking
CREATE TABLE sustainability_project (
    project_id TEXT PRIMARY KEY,
    project_name TEXT,
    department TEXT,
    lead_id TEXT,
    start_date TEXT,
    end_date TEXT,
    budget INTEGER,
    funds_used INTEGER,
    carbon_reduction_tons REAL,
    water_saved_liters REAL,
    waste_diverted_percent REAL,
    status TEXT,
    milestones TEXT,
    risks TEXT,
    stakeholders TEXT,
    reporting_frequency TEXT,
    last_report_date TEXT,
    next_report_due TEXT,
    external_partner TEXT,
    grant_funded TEXT,
    grant_amount INTEGER,
    compliance_certified TEXT,
    certification_body TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    technology_used TEXT,
    expected_impact TEXT,
    current_phase TEXT,
    key_performance_indicators TEXT,
    community_involvement TEXT
);
INSERT INTO sustainability_project VALUES ('SP001','Solar Panel Installation','Facilities','L001','2025-01-01','2026-12-31',500000,250000,25.5,0,30.0,'InProgress','Phase1,Phase2','Weather delays','Facilities,StudentBody','Quarterly','2025-12-01','2026-03-01','GreenTech Corp','Yes',200000,'Yes','ISO14001','2025-01-02','2025-01-03','Initial site survey complete','PV panels','Reduce campus emissions','Construction','Energy generation, Cost savings','High');
INSERT INTO sustainability_project VALUES ('SP002','Rainwater Harvesting','Engineering','L002','2025-06-15','2027-06-14',300000,120000,0,1500000,45.0,'Planned','Design,Approval','Regulatory approvals','Engineering,Facilities','Biannual','2025-12-15','2026-06-15','WaterWorks Ltd','No',0,'No','','2025-06-16','2025-06-17','Land acquisition pending','Cisterns','Reduce water consumption','Planning','Water storage, Irrigation','Medium');
INSERT INTO sustainability_project VALUES ('SP003','Campus Composting Program','Student Affairs','L003','2025-03-01','2025-12-31',80000,60000,0,0,60.0,'Completed','Launch,Education,Evaluation','Participation rates','StudentBody,Facilities','Monthly','2025-09-01','2025-10-01','Local Farm Co','Yes',50000,'Yes','Compost Certification','2025-03-02','2025-03-03','Program fully operational','Compost bins','Divert organic waste','Operation','Waste diversion, Education','High');

-- Campus Wi‑Fi access point inventory
CREATE TABLE campus_wifi_access_point (
    ap_id TEXT PRIMARY KEY,
    ssid TEXT,
    location_building TEXT,
    location_floor INTEGER,
    location_room TEXT,
    mac_address TEXT,
    ip_address TEXT,
    firmware_version TEXT,
    installation_date TEXT,
    last_maintenance_date TEXT,
    status TEXT,
    bandwidth_mbps REAL,
    client_capacity INTEGER,
    poe_enabled TEXT,
    antenna_type TEXT,
    channel INTEGER,
    security_mode TEXT,
    encryption_type TEXT,
    guest_network_enabled TEXT,
    power_source TEXT,
    uplink_port TEXT,
    vendor TEXT,
    model TEXT,
    warranty_expiration TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    maintenance_contract TEXT,
    software_update_pending TEXT
);
INSERT INTO campus_wifi_access_point VALUES ('AP001','CampusNet','B01',1,'Lobby','00:1A:2B:3C:4D:5E','192.168.1.10','v1.2.3','2025-02-01','2025-12-01','Active',500.0,200,'Yes','Omni','36','WPA2','AES','Yes','PoE','Port1','Cisco','Aironet 3800','2027-02-01','2025-02-01','2025-02-02','Main entrance AP',47.6101,-122.3425','ContractA','No');
INSERT INTO campus_wifi_access_point VALUES ('AP002','CampusNet','B02',2,'Room205','00:1A:2B:3C:4D:5F','192.168.1.11','v1.2.3','2025-03-15','2025-12-15','Active',300.0,150,'Yes','Directional','40','WPA2','AES','No','PoE','Port2','Aruba','AP-315','2026-03-15','2025-03-15','2025-03-16','Lab AP',47.6105,-122.3410','ContractB','Yes');
INSERT INTO campus_wifi_access_point VALUES ('AP003','CampusGuest','B03',3,'Cafeteria','00:1A:2B:3C:4D:60','192.168.1.12','v1.2.1','2024-11-20','2025-11-20','Active',250.0,100,'No','Omni','44','WPA3','AES','Yes','AC','Port3','Ubiquiti','UAP‑AC‑PRO','2025-11-20','2024-11-20','2024-11-21','Guest area AP',47.6110,-122.3400','ContractC','No');