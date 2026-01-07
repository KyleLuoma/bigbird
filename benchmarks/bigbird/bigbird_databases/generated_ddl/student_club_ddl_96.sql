-- Table: campus_renewable_energy_log
CREATE TABLE campus_renewable_energy_log
(
    log_id TEXT PRIMARY KEY,
    facility_id TEXT,
    energy_type TEXT,
    capacity_kw INTEGER,
    production_date TEXT,
    produced_mwh REAL,
    avg_temp_c REAL,
    wind_speed_mps REAL,
    solar_irradiance REAL,
    maintenance_flag TEXT,
    operator_id TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    region TEXT,
    latitude REAL,
    longitude REAL,
    source_certification TEXT,
    downtime_minutes INTEGER,
    emission_reduction_tons REAL,
    cost_usd REAL
);

INSERT INTO campus_renewable_energy_log VALUES
('log001','facA','solar',5000,'2024-05-01',120.5,22.3,0.0,850.0,'N','op123','Initial production','2024-05-02','2024-05-02','North','40.7128','-74.0060','ISO9001',0,15.2,25000);

INSERT INTO campus_renewable_energy_log VALUES
('log002','facB','wind',3000,'2024-05-03',98.7,15.0,12.5,0.0,'Y','op456','Routine maintenance','2024-05-04','2024-05-04','West','34.0522','-118.2437','ISO14001',30,12.0,18000);

INSERT INTO campus_renewable_energy_log VALUES
('log003','facC','hydro',8000,'2024-05-05',210.0,18.5,0.0,0.0,'N','op789','Peak production','2024-05-06','2024-05-06','East','41.8781','-87.6298','ISO50001',0,25.5,40000);

-- Table: academic_research_order
CREATE TABLE academic_research_order
(
    order_id TEXT PRIMARY KEY,
    requester_id TEXT,
    department TEXT,
    project_code TEXT,
    order_date TEXT,
    delivery_date TEXT,
    item_description TEXT,
    quantity INTEGER,
    unit_price REAL,
    total_price REAL,
    vendor_id TEXT,
    approval_status TEXT,
    funding_source TEXT,
    grant_id TEXT,
    priority_level TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_by TEXT,
    updated_at TEXT
);

INSERT INTO academic_research_order VALUES
('ord001','mem001','Physics','PRJ1001','2024-04-10','2024-04-20','High precision balance',2,1500.00,3000.00','ven001','Approved','University Fund','GR001','High','Urgent for experiment','admin01','2024-04-11','admin01','2024-04-11');

INSERT INTO academic_research_order VALUES
('ord002','mem002','Chemistry','PRJ2002','2024-04-12','2024-04-22','Solvent bottles set',5,200.00,1000.00','ven002','Pending','Department Grant','GR002','Medium','Standard order','admin02','2024-04-13','admin02','2024-04-13');

INSERT INTO academic_research_order VALUES
('ord003','mem003','Biology','PRJ3003','2024-04-15','2024-04-25','Microscope slides',100,0.50,50.00','ven003','Approved','External Grant','GR003','Low','Bulk purchase','admin03','2024-04-16','admin03','2024-04-16');

-- Table: library_digital_metadata
CREATE TABLE library_digital_metadata
(
    metadata_id TEXT PRIMARY KEY,
    digital_asset_id TEXT,
    title TEXT,
    creator TEXT,
    subject TEXT,
    description TEXT,
    publisher TEXT,
    contributor TEXT,
    date_created TEXT,
    format TEXT,
    identifier TEXT,
    source TEXT,
    language TEXT,
    relation TEXT,
    coverage TEXT,
    rights TEXT,
    collection TEXT,
    accession_number TEXT,
    preservation_status TEXT,
    checksum TEXT,
    file_size_bytes INTEGER
);

INSERT INTO library_digital_metadata VALUES
('meta001','asset001','Digital Archive of 2020','John Doe','History','Full text of 2020 events','University Press','Jane Smith','2020-01-01','PDF','doi:10.1000/xyz123','Library System','en','Part of Series A','Global','CC BY 4.0','Historical Collection','ACC001','Preserved','a1b2c3d4e5',2048000);

INSERT INTO library_digital_metadata VALUES
('meta002','asset002','Campus Map 2023','Map Lab','Geography','Interactive campus map','Campus Services','Tom Lee','2023-08-15','HTML','doi:10.2000/abc456','Web Portal','en','Links to Building Directory','Campus','Public Domain','Maps Collection','ACC002','Active','f6g7h8i9j0',1024000);

INSERT INTO library_digital_metadata VALUES
('meta003','asset003','Lecture Video Spring','Prof. Allen','Education','Video of spring semester lectures','Online Learning','Emily Clark','2024-02-10','MP4','doi:10.3000/def789','Streaming Service','en','Supplement to Course XYZ','Online','All Rights Reserved','Video Archive','ACC003','Ingesting','k1l2m3n4o5',51200000);

-- Table: student_cohort_analysis
CREATE TABLE student_cohort_analysis
(
    cohort_id TEXT PRIMARY KEY,
    academic_year TEXT,
    program TEXT,
    start_term TEXT,
    end_term TEXT,
    total_students INTEGER,
    average_gpa REAL,
    median_gpa REAL,
    dropout_rate REAL,
    employment_rate REAL,
    avg_starting_salary INTEGER,
    scholarship_count INTEGER,
    international_students INTEGER,
    gender_ratio TEXT,
    ethnicity_distribution TEXT,
    average_credits_per_semester REAL,
    average_attendance_percent REAL,
    average_course_load REAL,
    retention_rate REAL,
    notes TEXT
);

INSERT INTO student_cohort_analysis VALUES
('coh001','2022-2023','Computer Science','Fall','Spring',120,3.2,3.3,5.0,78.0,72000,30,15,'Male:60,Female:40','Asian:40,White:35,Other:25',15.5,92.0,5.0,95.0,'Strong performance overall');

INSERT INTO student_cohort_analysis VALUES
('coh002','2022-2023','Mechanical Engineering','Fall','Spring',95,2.9,3.0,8.0,65.0,68000,20,10,'Male:70,Female:30','White:50,Asian:30,Other:20',14.8,88.0,5.2,90.0,'Higher dropout due to industry demands');

INSERT INTO student_cohort_analysis VALUES
('coh003','2022-2023','Psychology','Fall','Spring',110,3.5,3.6,3.0,85.0,58000,45,12,'Male:45,Female:55','White:45,Asian:25,Other:30',13.5,95.0,4.8,97.0,'Excellent retention and employment');

-- Table: faculty_thesis_defense
CREATE TABLE faculty_thesis_defense
(
    defense_id TEXT PRIMARY KEY,
    faculty_id TEXT,
    student_id TEXT,
    thesis_title TEXT,
    defense_date TEXT,
    location TEXT,
    committee_chair TEXT,
    committee_member_1 TEXT,
    committee_member_2 TEXT,
    committee_member_3 TEXT,
    outcome TEXT,
    grade TEXT,
    revisions_required TEXT,
    final_submission_date TEXT,
    archival_location TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    approval_status TEXT,
    external_examiner TEXT
);

INSERT INTO faculty_thesis_defense VALUES
('def001','fac001','stu001','Deep Learning for Healthcare','2024-04-20','Room 101','profA','profB','profC','profD','Pass','A','Minor','2024-05-10','ArchiveRoom5','Well received','2024-04-21','2024-05-11','Approved','DrExternal1');

INSERT INTO faculty_thesis_defense VALUES
('def002','fac002','stu002','Renewable Energy Storage Systems','2024-04-22','Room 202','profE','profF','profG','profH','Pass','B+','Major','2024-06-01','ArchiveRoom9','Requires extensive revisions','2024-04-23','2024-06-02','Pending','DrExternal2');

INSERT INTO faculty_thesis_defense VALUES
('def003','fac003','stu003','Quantum Computing Algorithms','2024-04-25','Room 303','profI','profJ','profK','profL','Pass','A-','Minor','2024-05-15','ArchiveRoom12','Excellent research','2024-04-26','2024-05-16','Approved','DrExternal3');

-- Table: event_virtual_platform
CREATE TABLE event_virtual_platform
(
    platform_id TEXT PRIMARY KEY,
    event_id TEXT,
    platform_name TEXT,
    url TEXT,
    access_code TEXT,
    provider TEXT,
    subscription_type TEXT,
    start_time TEXT,
    end_time TEXT,
    max_participants INTEGER,
    recording_available TEXT,
    recording_url TEXT,
    chat_enabled TEXT,
    poll_enabled TEXT,
    qna_enabled TEXT,
    breakout_rooms TEXT,
    technical_support_contact TEXT,
    bandwidth_requirement_mbps REAL,
    latency_ms INTEGER,
    notes TEXT
);

INSERT INTO event_virtual_platform VALUES
('plat001','event001','Zoom','https://zoom.us/j/123456789','ABC123','Zoom Inc','Pro','2024-05-10 09:00','2024-05-10 12:00',300,'Yes','https://zoom.us/recordings/123','Yes','Yes','Yes','5','support@zoom.com',5.0,50,'Main conference');

INSERT INTO event_virtual_platform VALUES
('plat002','event002','Microsoft Teams','https://teams.microsoft.com/l/meeting/987654321','DEF456','Microsoft','Enterprise','2024-05-12 14:00','2024-05-12 16:00',200,'No','', 'Yes','No','Yes','3','teams-support@ms.com',3.5,30,'Workshop session');

INSERT INTO event_virtual_platform VALUES
('plat003','event003','Webex','https://webex.com/meet/11223344','GHI789','Cisco','Standard','2024-05-15 10:00','2024-05-15 13:00',150,'Yes','https://webex.com/recordings/1122','No','Yes','No','2','webex-help@cisco.com',4.0,40,'Panel discussion');

-- Table: transport_route_schedule
CREATE TABLE transport_route_schedule
(
    schedule_id TEXT PRIMARY KEY,
    route_id TEXT,
    vehicle_id TEXT,
    departure_time TEXT,
    arrival_time TEXT,
    start_location TEXT,
    end_location TEXT,
    distance_km REAL,
    estimated_duration_min INTEGER,
    driver_id TEXT,
    passengers_expected INTEGER,
    actual_departure TEXT,
    actual_arrival TEXT,
    delay_minutes INTEGER,
    fuel_used_liters REAL,
    emissions_kg REAL,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO transport_route_schedule VALUES
('sch001','routeA','veh001','08:00','09:30','Main Campus','North Campus',12.5,90,'drv001',40,'08:05','09:35',5,8.2,20.0,'On Time','Morning shuttle','2024-04-01','2024-04-01');

INSERT INTO transport_route_schedule VALUES
('sch002','routeB','veh002','12:00','13:45','South Campus','East Campus',15.0,105,'drv002',35,'12:10','13:50',10,9.5,22.5,'Delayed','Afternoon service','2024-04-01','2024-04-01');

INSERT INTO transport_route_schedule VALUES
('sch003','routeC','veh003','17:00','18:30','East Campus','Main Campus',11.8,90,'drv003',30,'17:00','18:32',2,7.9,19.0,'On Time','Evening return','2024-04-01','2024-04-01');

-- Table: food_nutrition_profile
CREATE TABLE food_nutrition_profile
(
    profile_id TEXT PRIMARY KEY,
    menu_item_id TEXT,
    item_name TEXT,
    calories INTEGER,
    protein_g REAL,
    fat_g REAL,
    carbohydrate_g REAL,
    fiber_g REAL,
    sugar_g REAL,
    sodium_mg INTEGER,
    cholesterol_mg INTEGER,
    vitamin_a_iu INTEGER,
    vitamin_c_mg REAL,
    calcium_mg INTEGER,
    iron_mg REAL,
    serving_size_g INTEGER,
    dietary_category TEXT,
    allergens TEXT,
    preparation_method TEXT,
    notes TEXT
);

INSERT INTO food_nutrition_profile VALUES
('nut001','menu001','Grilled Chicken Salad',350,30.0,10.0,20.0,5.0,4.0,350,70,500,15.0,150,2.0,250,'Low Carb','None','Grilled','Fresh and healthy');

INSERT INTO food_nutrition_profile VALUES
('nut002','menu002','Veggie Wrap',280,8.0,6.0,40.0,6.0,5.0,420,0,300,20.0,120,1.5,200,'Vegetarian','Gluten','Wrap','Popular vegetarian option');

INSERT INTO food_nutrition_profile VALUES
('nut003','menu003','Chocolate Chip Cookie',150,2.0,8.0,18.0,1.0,12.0,120,0,0,0,20,0.5,30,'Dessert','Gluten','Baked','Classic treat');

-- Table: health_service_pharmacy_inventory
CREATE TABLE health_service_pharmacy_inventory
(
    inventory_id TEXT PRIMARY KEY,
    pharmacy_id TEXT,
    medication_name TEXT,
    sku TEXT,
    batch_number TEXT,
    expiration_date TEXT,
    quantity_on_hand INTEGER,
    reorder_level INTEGER,
    supplier_id TEXT,
    purchase_price_usd REAL,
    selling_price_usd REAL,
    storage_location TEXT,
    controlled_substance_flag TEXT,
    last_audit_date TEXT,
    next_audit_due TEXT,
    responsible_pharmacist TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    dispensing_unit TEXT
);

INSERT INTO health_service_pharmacy_inventory VALUES
('inv001','pharm001','Amoxicillin','AMX100','B12345','2025-12-31',200,50,'sup001',5.00,8.00','Shelf A1','No','2024-03-01','2024-09-01','pharmA','First line antibiotic','2024-03-02','2024-03-02','Tablet');

INSERT INTO health_service_pharmacy_inventory VALUES
('inv002','pharm002','Lisinopril','LSN200','B67890','2026-06-30',150,30,'sup002',2.50,4.00','Shelf B2','No','2024-02-15','2024-08-15','pharmB','Blood pressure med','2024-02-16','2024-02-16','Tablet');

INSERT INTO health_service_pharmacy_inventory VALUES
('inv003','pharm003','Morphine','MRP300','B54321','2024-11-15',25,10,'sup003',15.00,30.00','Refrigerated C3','Yes','2024-01-20','2024-07-20','pharmC','Controlled opioid','2024-01-21','2024-01-21','Injection');

-- Table: community_fundraising_event
CREATE TABLE community_fundraising_event
(
    fundraising_id TEXT PRIMARY KEY,
    event_name TEXT,
    organizer_id TEXT,
    target_amount_usd INTEGER,
    amount_raised_usd INTEGER,
    start_date TEXT,
    end_date TEXT,
    venue_id TEXT,
    beneficiary_id TEXT,
    sponsorship_level TEXT,
    number_of_donors INTEGER,
    average_donation_usd REAL,
    fundraising_method TEXT,
    marketing_channel TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    external_partner_id TEXT,
    tax_receipt_issued_flag TEXT
);

INSERT INTO community_fundraising_event VALUES
('fund001','Spring Charity Walk','org001',50000,37500,'2024-04-01','2024-04-30','venue001','benef001','Gold',120,312.5,'Online','Social Media','Annual community walk','2024-03-15','2024-04-30','Active','partner001','Yes');

INSERT INTO community_fundraising_event VALUES
('fund002','Holiday Food Drive','org002',30000,28000,'2024-12-01','2024-12-31','venue002','benef002','Silver',200,140.0,'In-Kind','Flyers','Winter food collection','2024-11-01','2024-12-31','Completed','partner002','Yes');

INSERT INTO community_fundraising_event VALUES
('fund003','Tech for Schools Gala','org003',75000,50000,'2025-02-10','2025-02-12','venue003','benef003','Platinum',85,588.2,'Ticket Sale','Email','Fundraising gala for equipment','2025-01-20','2025-02-12','Planned','partner003','No');