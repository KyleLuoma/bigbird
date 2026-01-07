-- Table storing product inventory details
CREATE TABLE product_inventory
(
    product_id INTEGER NOT NULL PRIMARY KEY,
    sku TEXT,
    product_name TEXT,
    category TEXT,
    subcategory TEXT,
    brand TEXT,
    supplier_code TEXT,
    warehouse_location TEXT,
    aisle TEXT,
    shelf TEXT,
    bin TEXT,
    quantity_on_hand INTEGER,
    reorder_point INTEGER,
    safety_stock INTEGER,
    unit_cost DECIMAL(10,2),
    unit_price DECIMAL(10,2),
    weight_kg DECIMAL(5,2),
    volume_cubic_m DECIMAL(6,3),
    dimensions TEXT,
    color TEXT,
    size TEXT,
    material TEXT,
    manufacture_date DATE,
    expiry_date DATE,
    last_stocked DATETIME,
    discontinued_flag INTEGER,
    notes TEXT
);
INSERT INTO product_inventory VALUES (1,'SKU001','Wireless Mouse','Electronics','Accessories','TechCo','SUP123','WH1','A1','S3','B12',250,50,30,12.50,25.99,0.10,0.0005,'10x5x3cm','Black','Standard','Plastic','2022-01-15','2025-01-15','2023-07-01 09:30:00',0,'Top seller');
INSERT INTO product_inventory VALUES (2,'SKU002','Mechanical Keyboard','Electronics','Accessories','KeyMakers','SUP124','WH2','B2','S1','C07',120,20,15,45.00,79.99,0.80,0.0012,'45x15x5cm','White','Fullsize','Aluminum','2021-11-20','2026-11-20','2023-07-02 14:45:00',0,'High demand');
INSERT INTO product_inventory VALUES (3,'SKU003','USB-C Hub','Electronics','Peripherals','ConnectIt','SUP125','WH1','C3','S4','D03',340,60,40,18.75,34.99,0.15,0.0008,'8x4x2cm','Gray','Compact','Plastic','2022-05-05','2027-05-05','2023-07-03 11:20:00',0,'Bundled with laptops');

-- Table tracking shipments between facilities
CREATE TABLE shipment_tracking
(
    shipment_id INTEGER NOT NULL PRIMARY KEY,
    carrier TEXT,
    tracking_number TEXT,
    origin TEXT,
    destination TEXT,
    departure_date DATE,
    arrival_estimated DATE,
    arrival_actual DATE,
    status TEXT,
    weight_kg DECIMAL(6,2),
    dimensions TEXT,
    volume_cubic_m DECIMAL(7,3),
    service_level TEXT,
    cost DECIMAL(10,2),
    sender_reference TEXT,
    receiver_reference TEXT,
    customs_status TEXT,
    insurance_amount DECIMAL(10,2),
    special_handling_instructions TEXT,
    last_update DATETIME
);
INSERT INTO shipment_tracking VALUES (1001,'FastShip','FS123456789','Warehouse A','Retail Store 5','2023-07-01','2023-07-04','2023-07-04','Delivered',150.75,'120x80x60cm',0.576,'Express',250.00,'REF001','RET005','Cleared',500.00,'Handle with care','2023-07-04 10:15:00');
INSERT INTO shipment_tracking VALUES (1002,'GlobalLogistics','GL987654321','Factory B','Distribution Center 2','2023-07-02','2023-07-06',NULL,'In Transit',820.40,'200x150x120cm',3.600,'Standard',1200.00,'REF102','RET202','Pending',1500.00,'Temperature controlled','2023-07-03 16:40:00');
INSERT INTO shipment_tracking VALUES (1003,'EcoFreight','EF555666777','Port C','Warehouse D','2023-07-03','2023-07-08','2023-07-08','Delivered',45.20,'60x40x30cm',0.072,'Economy',75.00,'REF210','RET310','Cleared',0.00,'No special instructions','2023-07-08 09:05:00');

-- Table containing employee master records
CREATE TABLE employee_records
(
    employee_id INTEGER NOT NULL PRIMARY KEY,
    first_name TEXT,
    middle_initial TEXT,
    last_name TEXT,
    hire_date DATE,
    termination_date DATE,
    position TEXT,
    department TEXT,
    manager_id INTEGER,
    employment_type TEXT,
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    gender TEXT,
    birthdate DATE,
    ethnicity TEXT,
    marital_status TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    phone_number TEXT,
    email TEXT,
    emergency_contact_name TEXT,
    emergency_contact_relationship TEXT,
    emergency_contact_phone TEXT,
    employee_status TEXT,
    notes TEXT
);
INSERT INTO employee_records VALUES (5001,'Alice','M','Johnson','2018-03-15',NULL,'Senior Engineer','R&D',4001,'FullTime',95000.00,5000.00,'Female','1990-07-22','Caucasian','Married','123 Maple St','Apt 4B','Springfield','IL','62704','USA','555-1234','alice.johnson@example.com','Bob Johnson','Spouse','555-5678','Active','Promoted 2022');
INSERT INTO employee_records VALUES (5002,'Bob','L','Smith','2020-11-01',NULL,'Data Analyst','Analytics',4002,'FullTime',72000.00,3000.00,'Male','1988-02-10','AfricanAmerican','Single','456 Oak Ave','Suite 12','Greenville','NC','27834','USA','555-2345','bob.smith@example.com','Carol Smith','Sister','555-6789','Active','Completed certification');
INSERT INTO employee_records VALUES (5003,'Clara','J','Lee','2019-06-20','2023-05-30','Project Manager','Operations',4003,'Contractor',65000.00,0.00,'Female','1985-12-05','Asian','Divorced','789 Pine Rd','', 'Lakeview','CA','91011','USA','555-3456','clara.lee@example.com','David Lee','Brother','555-7890','Terminated','Left for new opportunity');

-- Table describing conference schedule and sessions
CREATE TABLE conference_schedule
(
    session_id INTEGER NOT NULL PRIMARY KEY,
    conference_name TEXT,
    location TEXT,
    start_date DATE,
    end_date DATE,
    room_name TEXT,
    session_title TEXT,
    session_type TEXT,
    speaker_name TEXT,
    speaker_bio TEXT,
    abstract TEXT,
    start_time TIME,
    end_time TIME,
    track TEXT,
    capacity INTEGER,
    registered_attendees INTEGER,
    is_keynote INTEGER,
    language TEXT,
    equipment_needed TEXT,
    sponsor TEXT,
    rating DECIMAL(3,2),
    feedback_score INTEGER,
    created_at DATETIME
);
INSERT INTO conference_schedule VALUES (20001,'Tech Innovators Summit','San Francisco','2023-09-10','2023-09-12','Hall A','AI Ethics Panel','Panel','Dr Emma Green','Expert in AI policy','Discussion on ethical AI frameworks','09:00','10:30','AI','200','183',0,'English','Projector, Microphone','FutureTech','4.75',92,'2023-03-20 08:30:00');
INSERT INTO conference_schedule VALUES (20002,'Tech Innovators Summit','San Francisco','2023-09-10','2023-09-12','Main Auditorium','Opening Keynote','Keynote','Mr John Doe','CEO of InnovateX','Vision for the next decade of technology','08:00','09:00','Keynote','500','498',1,'English','Stage Lighting','InnovateX','4.90',98,'2023-03-18 12:00:00');
INSERT INTO conference_schedule VALUES (20003,'Tech Innovators Summit','San Francisco','2023-09-11','2023-09-12','Room 101','Cloud Security Workshop','Workshop','Ms Laura Kim','Cloud security architect','Hands‑on lab for securing cloud workloads','14:00','16:00','Security','50','45',0,'English','Computers, Wi‑Fi','SecureCloud','4.60',88,'2023-04-01 15:45:00');

-- Table containing research publication metadata
CREATE TABLE research_publications
(
    publication_id INTEGER NOT NULL PRIMARY KEY,
    title TEXT,
    abstract TEXT,
    journal TEXT,
    volume TEXT,
    issue TEXT,
    pages TEXT,
    publication_date DATE,
    doi TEXT,
    isbn TEXT,
    authors TEXT,
    corresponding_author TEXT,
    institution TEXT,
    funding_agency TEXT,
    grant_number TEXT,
    keywords TEXT,
    citation_count INTEGER,
    impact_factor DECIMAL(4,2),
    peer_reviewed_flag INTEGER,
    open_access_flag INTEGER,
    pdf_url TEXT,
    supplementary_material_url TEXT,
    notes TEXT
);
INSERT INTO research_publications VALUES (3001,'Deep Learning for Image Recognition','Study of convolutional networks','Journal of AI Research','45','3','112-130','2022-06-15','10.1234/jair.2022.456','978-3-16-148410-0','A. Kumar; B. Lee; C. Zhang','A. Kumar','University of Tech','National Science Fund','NSF-2021-1122','deep learning, image recognition','125',5.67,1,0,'http://example.com/papers/3001.pdf','http://example.com/papers/3001_supp.zip','Highly cited');
INSERT INTO research_publications VALUES (3002,'Quantum Computing Applications','Exploration of quantum algorithms','Computing Advances','12','1','45-67','2021-11-20','10.5678/ca.2021.789','978-0-12-345678-9','D. Patel; E. Wong','D. Patel','Institute of Quantum','Quantum Initiative','QI-2020-3344','quantum computing, algorithms','78',3.45,1,1,'http://example.com/papers/3002.pdf','http://example.com/papers/3002_supp.zip','Open access');
INSERT INTO research_publications VALUES (3003,'Sustainable Urban Planning Models','Framework for eco‑friendly cities','Urban Studies Review','78','2','210-230','2023-02-10','10.9012/usr.2023.112','978-1-23-456789-0','F. Rossi; G. Müller','F. Rossi','City University','Green Cities Fund','GCF-2022-5566','urban planning, sustainability','34',2.89,1,0,'http://example.com/papers/3003.pdf','http://example.com/papers/3003_supp.zip','Pending additional data');

-- Table storing logs from IoT devices
CREATE TABLE iot_device_logs
(
    log_id INTEGER NOT NULL PRIMARY KEY,
    device_id TEXT,
    device_type TEXT,
    firmware_version TEXT,
    ip_address TEXT,
    mac_address TEXT,
    location TEXT,
    temperature_c DECIMAL(5,2),
    humidity_percent DECIMAL(5,2),
    battery_percent DECIMAL(5,2),
    signal_strength_dbm DECIMAL(5,2),
    event_type TEXT,
    event_timestamp DATETIME,
    event_value TEXT,
    status_code INTEGER,
    error_code INTEGER,
    description TEXT,
    uploaded_at DATETIME,
    processed_flag INTEGER,
    anomaly_score DECIMAL(4,3)
);
INSERT INTO iot_device_logs VALUES (40001,'DEV1001','Thermostat','1.4.2','192.168.1.10','AA:BB:CC:DD:EE:01','Office 1',22.45,45.30,87.00,-70.5,'TemperatureRead','2023-07-04 08:00:00','22.45',200,0,'Normal reading','2023-07-04 08:05:00',1,0.001);
INSERT INTO iot_device_logs VALUES (40002,'DEV2003','AirQualitySensor','3.2.0','192.168.1.20','AA:BB:CC:DD:EE:02','Lobby',0.00,55.00,92.00,-65.0,'AirQualityAlert','2023-07-04 09:15:00','PM2.5 > 35',500,101,'High particulate matter','2023-07-04 09:20:00',0,0.845);
INSERT INTO iot_device_logs VALUES (40003,'DEV3005','SecurityCamera','2.1.0','192.168.1.30','AA:BB:CC:DD:EE:03','Entrance',0.00,0.00,100.00,-60.0,'MotionDetected','2023-07-04 10:30:00','MotionZone1',200,0,'Motion detected at entrance','2023-07-04 10:31:00',1,0.120);

-- Table containing environmental sensor readings
CREATE TABLE environmental_readings
(
    reading_id INTEGER NOT NULL PRIMARY KEY,
    station_id TEXT,
    station_name TEXT,
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    elevation_m DECIMAL(6,2),
    reading_timestamp DATETIME,
    temperature_c DECIMAL(5,2),
    humidity_percent DECIMAL(5,2),
    wind_speed_mps DECIMAL(5,2),
    wind_direction_deg INTEGER,
    precipitation_mm DECIMAL(5,2),
    solar_radiation_wm2 DECIMAL(6,2),
    air_quality_index INTEGER,
    co2_ppm INTEGER,
    pm2_5_ugm3 DECIMAL(5,2),
    pm10_ugm3 DECIMAL(5,2),
    noise_level_db DECIMAL(5,2),
    battery_voltage DECIMAL(4,2),
    transmission_status TEXT
);
INSERT INTO environmental_readings VALUES (50001,'STN01','North Ridge','45.123456','-122.654321','250.50','2023-07-04 07:00:00',15.20,68.00,3.40,180,0.00,200.00,45,410,12.5,25.0,55.00,12.5,'Success');
INSERT INTO environmental_readings VALUES (50002,'STN02','Lake View','44.987654','-123.123456','310.00','2023-07-04 07:15:00',13.80,72.50,2.80,90,0.05,180.00,30,395,9.8,20.4,48.30,12.6,'Success');
INSERT INTO environmental_readings VALUES (50003,'STN03','Urban Center','45.001122','-122.998877','150.00','2023-07-04 07:30:00',22.10,55.20,1.50,270,0.00,250.00,85,420,35.2,58.7,70.10,12.3,'Success');

-- Table describing corporate training courses
CREATE TABLE corporate_training_courses
(
    course_id INTEGER NOT NULL PRIMARY KEY,
    course_name TEXT,
    description TEXT,
    department TEXT,
    target_audience TEXT,
    delivery_method TEXT,
    duration_hours DECIMAL(5,2),
    credits INTEGER,
    prerequisite_course_ids TEXT,
    instructor_name TEXT,
    instructor_bio TEXT,
    start_date DATE,
    end_date DATE,
    enrollment_capacity INTEGER,
    enrolled_count INTEGER,
    completion_rate DECIMAL(5,2),
    assessment_type TEXT,
    passing_score INTEGER,
    cost DECIMAL(10,2),
    certification_available_flag INTEGER,
    internal_course_code TEXT,
    external_course_url TEXT,
    last_updated DATETIME
);
INSERT INTO corporate_training_courses VALUES (6001,'Advanced Data Analytics','In‑depth techniques for data analysis','Analytics','Data Scientists','Online',40.00,4,'5001,5002','Dr Sarah Lee','Senior data scientist with 10 years experience','2023-08-01','2023-08-31',30,28,92.86,'Project','85',1200.00,1,'ADA-2023','http://training.example.com/adv-data-analytics','2023-04-15 09:00:00');
INSERT INTO corporate_training_courses VALUES (6002,'Effective Communication','Building communication skills for managers','HR','Team Leads','Classroom',16.00,2,'','Mr Tom Harris','Leadership coach','2023-09-05','2023-09-07',25,22,88.00,'Quiz','70',300.00,0,'COM-2023','http://training.example.com/effective-communication','2023-04-20 11:30:00');
INSERT INTO corporate_training_courses VALUES (6003,'Cybersecurity Basics','Fundamentals of protecting digital assets','IT','All Employees','Blended',24.00,3,'6002','Ms Nina Patel','Security analyst','2023-10-10','2023-10-14',40,35,85.71,'Exam','75',500.00,1,'CYB-BASE','http://training.example.com/cybersecurity-basics','2023-04-25 14:45:00');

-- Table evaluating supplier performance metrics
CREATE TABLE supplier_performance
(
    supplier_id INTEGER NOT NULL PRIMARY KEY,
    supplier_name TEXT,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    rating_overall DECIMAL(3,2),
    rating_quality DECIMAL(3,2),
    rating_on_time DECIMAL(3,2),
    rating_cost DECIMAL(3,2),
    contracts_active INTEGER,
    total_spend_usd DECIMAL(12,2),
    last_contract_date DATE,
    next_review_date DATE,
    compliance_status TEXT,
    risk_level TEXT,
    notes TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    tax_id TEXT,
    payment_terms TEXT,
    average_lead_time_days DECIMAL(5,1)
);
INSERT INTO supplier_performance VALUES (7001,'Alpha Components','John Miller','john.miller@alpha.com','555-1111',4.5,4.7,4.8,4.2,3,1250000.00,'2022-12-01','2024-01-15','Compliant','Low','Longstanding partner','100 Industrial Way','Suite 5','Metropolis','NY','10001','USA','12-3456789','Net30',12.5);
INSERT INTO supplier_performance VALUES (7002,'Beta Logistics','Linda Green','linda.green@beta.com','555-2222',3.9,4.0,3.5,4.1,2,845000.00,'2023-03-10','2023-12-20','Compliant','Medium','Improving delivery times','250 Cargo Blvd','', 'Harbor City','CA','90210','USA','98-7654321','Net45',18.0);
INSERT INTO supplier_performance VALUES (7003,'Gamma Supplies','Carlos Diaz','carlos.diaz@gamma.com','555-3333',4.2,4.1,4.3,3.9,1,430000.00,'2022-07-22','2023-09-30','Non‑Compliant','High','Need audit','78 Supply Road','Building B','River Town','TX','75001','USA','23-4567890','Net60',22.7);

-- Table cataloging digital assets in the media library
CREATE TABLE digital_asset_library
(
    asset_id INTEGER NOT NULL PRIMARY KEY,
    asset_name TEXT,
    asset_type TEXT,
    file_path TEXT,
    file_size_bytes BIGINT,
    mime_type TEXT,
    uploaded_by_user_id INTEGER,
    upload_date DATETIME,
    description TEXT,
    tags TEXT,
    copyright_holder TEXT,
    license_type TEXT,
    expiration_date DATE,
    usage_count INTEGER,
    last_accessed DATETIME,
    is_public INTEGER,
    is_archived INTEGER,
    resolution TEXT,
    duration_seconds INTEGER,
    width_pixels INTEGER,
    height_pixels INTEGER,
    color_profile TEXT,
    created_by TEXT,
    source_url TEXT,
    checksum_sha256 TEXT
);
INSERT INTO digital_asset_library VALUES (80001,'Company Logo','Image','/assets/logo.png',45231,'image/png',1,'2023-01-15 10:20:00','Primary logo for branding','logo;brand;official','TechCorp','Proprietary','2099-12-31',1520,'2023-06-30 14:00:00',1,0,'1024x768',0,1024,768,'sRGB','Design Team','http://assets.techcorp.com/logo.png','a3f5c9d1e2b4f6a7c9d8e0f1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c');
INSERT INTO digital_asset_library VALUES (80002,'Product Demo Video','Video','/assets/demo.mp4',104857600,'video/mp4',2,'2023-02-20 15:45:00','Demo video for product launch','demo;product;launch','TechCorp','Creative Commons','2025-05-01',342,'2023-07-02 09:30:00',0,0,'1920x1080',180,1920,1080,'Rec.709','Marketing Team','http://assets.techcorp.com/demo.mp4','b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2');
INSERT INTO digital_asset_library VALUES (80003,'Annual Report PDF','Document','/assets/annual_report_2022.pdf',2097152,'application/pdf',3,'2023-03-10 08:00:00','2022 annual financial report','report;finance;2022','TechCorp','Public Domain','2024-12-31',58,'2023-07-01 12:00:00',1,0,'A4',0,0,0,'','Finance Dept','http://assets.techcorp.com/annual_report_2022.pdf','c9d8e7f6a5b4c3d2e1f0a9b8c7d6e5f4a3b2c1d0e9f8a7b6c5d4e3f2a1b0c9d');