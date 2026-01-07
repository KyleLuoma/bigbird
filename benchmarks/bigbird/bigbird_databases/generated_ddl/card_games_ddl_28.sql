-- Employee directory table
CREATE TABLE employee_directory (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    hire_date DATE,
    department TEXT,
    role TEXT,
    manager_id INTEGER,
    salary REAL,
    office_location TEXT,
    employment_type TEXT,
    work_status TEXT,
    birth_date DATE,
    gender TEXT,
    national_id TEXT,
    emergency_contact_name TEXT,
    emergency_contact_phone TEXT,
    start_year INTEGER,
    end_year INTEGER,
    notes TEXT
);

INSERT INTO employee_directory (first_name,last_name,email,phone,hire_date,department,role,manager_id,salary,office_location,employment_type,work_status,birth_date,gender,national_id,emergency_contact_name,emergency_contact_phone,start_year,end_year,notes) VALUES
('Alice','Smith','alice.smith@example.com','5551234567','2020-06-15','Engineering','Software Engineer',2,95000,'HQ-1','FullTime','Active','1990-04-22','Female','ID123456','Bob Smith','5559876543',2020,NULL,'Excellent performer'),
('Bob','Johnson','bob.johnson@example.com','5552345678','2018-03-01','Marketing','Marketing Manager',3,120000,'HQ-2','FullTime','Active','1985-11-03','Male','ID234567','Carol Johnson','5558765432',2018,NULL,'Promoted twice'),
('Carol','Davis','carol.davis@example.com','5553456789','2022-01-20','Human Resources','HR Specialist',1,68000,'HQ-3','PartTime','Active','1995-07-14','Female','ID345678','Dave Davis','5557654321',2022,NULL,'New hire');

-- Warehouse sensors table
CREATE TABLE warehouse_sensors (
    sensor_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    warehouse_id INTEGER,
    sensor_type TEXT,
    installation_date DATE,
    last_maintenance DATE,
    status TEXT,
    battery_level REAL,
    signal_strength REAL,
    temperature_c REAL,
    humidity_percent REAL,
    vibration_level REAL,
    gas_detected TEXT,
    firmware_version TEXT,
    ip_address TEXT,
    mac_address TEXT,
    latitude REAL,
    longitude REAL,
    alert_threshold REAL,
    alert_active INTEGER,
    data_interval_seconds INTEGER,
    manufacturer TEXT
);

INSERT INTO warehouse_sensors (warehouse_id,sensor_type,installation_date,last_maintenance,status,battery_level,signal_strength,temperature_c,humidity_percent,vibration_level,gas_detected,firmware_version,ip_address,mac_address,latitude,longitude,alert_threshold,alert_active,data_interval_seconds,manufacturer) VALUES
(101,'TempHumidity','2021-05-10','2023-02-01','Active',95.5,78.2,22.5,45.3,0.02,'None','v1.2.3','192.168.1.10','AA:BB:CC:DD:EE:01',40.7128,-74.0060,30.0,0,300,'SensorCo'),
(102,'Vibration','2020-11-22','2022-12-15','Active',88.0,80.1,0.0,0.0,0.15,'CO','v2.0.1','192.168.1.11','AA:BB:CC:DD:EE:02',34.0522,-118.2437,0.5,1,600,'VibeTech'),
(103,'Gas','2022-01-05','2023-01-20','Inactive',70.3,60.4,0.0,0.0,0.0,'Methane','v1.0.0','192.168.1.12','AA:BB:CC:DD:EE:03',51.5074,-0.1278,5.0,0,120,'EnviroSensors');

-- Financial audits table
CREATE TABLE financial_audits (
    audit_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    fiscal_year INTEGER,
    quarter INTEGER,
    audit_type TEXT,
    auditor_name TEXT,
    audit_start_date DATE,
    audit_end_date DATE,
    findings_count INTEGER,
    risk_score REAL,
    total_expenditure REAL,
    total_revenue REAL,
    net_profit REAL,
    recommendation_summary TEXT,
    follow_up_required INTEGER,
    follow_up_due_date DATE,
    compliance_status TEXT,
    notes TEXT,
    document_path TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    audit_status TEXT
);

INSERT INTO financial_audits (fiscal_year,quarter,audit_type,auditor_name,audit_start_date,audit_end_date,findings_count,risk_score,total_expenditure,total_revenue,net_profit,recommendation_summary,follow_up_required,follow_up_due_date,compliance_status,notes,document_path,created_at,updated_at,audit_status) VALUES
(2023,2,'Internal','John Doe','2023-04-01','2023-04-15',5,2.3,1500000,2000000,500000,'Improve reporting granularity',1,'2023-05-01','Compliant','Quarterly audit','/docs/audit_q2_2023.pdf','2023-04-01 09:00:00','2023-04-15 17:00:00','Closed'),
(2022,4,'External','Jane Smith','2022-11-10','2022-11-25',2,1.1,1400000,2100000,700000,'Maintain current controls',0,NULL,'Compliant','Year end external audit','/docs/audit_2022_end.pdf','2022-11-10 10:30:00','2022-11-25 16:45:00','Closed'),
(2021,1,'Internal','Mike Lee','2021-02-05','2021-02-20',8,3.7,1300000,1900000,600000,'Revise expense approval workflow',1,'2021-03-15','NonCompliant','First quarter audit with issues','/docs/audit_q1_2021.pdf','2021-02-05 08:15:00','2021-02-20 15:30:00','Open');

-- Transport routes table
CREATE TABLE transport_routes (
    route_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    origin_city TEXT,
    destination_city TEXT,
    distance_km REAL,
    average_time_minutes INTEGER,
    transport_mode TEXT,
    carrier_name TEXT,
    schedule_start_date DATE,
    schedule_end_date DATE,
    daily_frequency INTEGER,
    max_load_tons REAL,
    min_load_tons REAL,
    cost_per_km REAL,
    fuel_type TEXT,
    vehicle_type TEXT,
    route_status TEXT,
    last_inspection_date DATE,
    inspector_name TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO transport_routes (origin_city,destination_city,distance_km,average_time_minutes,transport_mode,carrier_name,schedule_start_date,schedule_end_date,daily_frequency,max_load_tons,min_load_tons,cost_per_km,fuel_type,vehicle_type,route_status,last_inspection_date,inspector_name,notes,created_at,updated_at) VALUES
('New York','Chicago',1275.5,720,'Truck','FastFreight','2023-01-01','2023-12-31',2,30.0,5.0,0.85,'Diesel','SemiTrailer','Active','2023-06-10','Laura Green','Main north‑south corridor','2023-01-01 00:00:00','2023-06-10 12:00:00'),
('Los Angeles','San Francisco',610.2,360,'Rail','CoastRail','2022-05-01','2024-04-30',3,25.0,3.0,0.60,'Electric','FreightTrain','Active','2023-05-20','Mark Brown','High‑capacity rail line','2022-05-01 00:00:00','2023-05-20 09:30:00'),
('Miami','Atlanta',1065.0,540,'Air','SkyCargo','2023-03-15','2023-11-15',1,15.0,2.0,2.50,'JetA','CargoPlane','Planned','2023-03-01','Emily White','Seasonal charter service','2023-03-15 00:00:00','2023-03-15 08:45:00');

-- Customer feedback surveys table
CREATE TABLE customer_feedback_surveys (
    survey_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    survey_date DATE,
    channel TEXT,
    overall_rating INTEGER,
    product_quality_rating INTEGER,
    delivery_speed_rating INTEGER,
    support_rating INTEGER,
    net_promoter_score INTEGER,
    comments TEXT,
    follow_up_needed INTEGER,
    follow_up_date DATE,
    respondent_age INTEGER,
    respondent_gender TEXT,
    region TEXT,
    device_used TEXT,
    ip_address TEXT,
    completion_time_seconds INTEGER,
    survey_version TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO customer_feedback_surveys (customer_id,survey_date,channel,overall_rating,product_quality_rating,delivery_speed_rating,support_rating,net_promoter_score,comments,follow_up_needed,follow_up_date,respondent_age,respondent_gender,region,device_used,ip_address,completion_time_seconds,survey_version,created_at,updated_at) VALUES
(1001,'2023-07-12','Email',9,10,8,9,70,'Great product, fast shipping',0,NULL,34,'Male','NorthAmerica','Desktop','192.0.2.1',180,'v1.0','2023-07-12 10:00:00','2023-07-12 10:03:00'),
(1002,'2023-07-13','Web',6,5,6,5,20,'Average experience, could be better',1,'2023-07-20',28,'Female','Europe','Mobile','198.51.100.2',240,'v1.0','2023-07-13 14:30:00','2023-07-13 14:34:00'),
(1003,'2023-07-14','Phone',8,9,7,8,55,'Satisfied overall, minor issues',0,NULL,45,'Male','Asia','Tablet','203.0.113.3',200,'v1.0','2023-07-14 09:15:00','2023-07-14 09:18:00');

-- Environmental readings table
CREATE TABLE environmental_readings (
    reading_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    site_code TEXT,
    reading_timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    pm2_5_ug_m3 REAL,
    pm10_ug_m3 REAL,
    noise_db REAL,
    wind_speed_m_s REAL,
    wind_direction_deg INTEGER,
    precipitation_mm REAL,
    solar_irradiance_w_m2 REAL,
    battery_voltage REAL,
    sensor_status TEXT,
    firmware_version TEXT,
    latitude REAL,
    longitude REAL,
    altitude_m REAL,
    uploaded_at DATETIME,
    processed_flag INTEGER
);

INSERT INTO environmental_readings (site_code,reading_timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ug_m3,pm10_ug_m3,noise_db,wind_speed_m_s,wind_direction_deg,precipitation_mm,solar_irradiance_w_m2,battery_voltage,sensor_status,firmware_version,latitude,longitude,altitude_m,uploaded_at,processed_flag) VALUES
('SITE001','2023-07-15 08:00:00',22.5,48.0,415.0,12.3,20.1,55.0,3.2,180,0.0,560.0,3.7,'OK','v3.1',40.7128,-74.0060,10.0,'2023-07-15 08:05:00',0),
('SITE002','2023-07-15 08:05:00',18.2,55.0,390.0,8.5,15.0,48.0,2.8,210,0.0,480.0,3.6,'OK','v3.1',34.0522,-118.2437,30.0,'2023-07-15 08:10:00',0),
('SITE003','2023-07-15 08:10:00',15.0,60.0,420.0,10.0,18.0,50.0,60.0,5.0,270,0.2,300.0,3.5,'Maintenance','v3.0',51.5074,-0.1278,25.0,'2023-07-15 08:15:00',1);

-- Training course catalog table
CREATE TABLE training_course_catalog (
    course_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    description TEXT,
    category TEXT,
    difficulty_level TEXT,
    duration_minutes INTEGER,
    credit_hours REAL,
    language TEXT,
    provider TEXT,
    certification_available INTEGER,
    release_date DATE,
    last_update DATE,
    enrollment_limit INTEGER,
    current_enrollment INTEGER,
    prerequisite_course_id INTEGER,
    instructor_name TEXT,
    video_url TEXT,
    document_url TEXT,
    assessment_type TEXT,
    pass_score INTEGER,
    max_attempts INTEGER,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO training_course_catalog (title,description,category,difficulty_level,duration_minutes,credit_hours,language,provider,certification_available,release_date,last_update,enrollment_limit,current_enrollment,prerequisite_course_id,instructor_name,video_url,document_url,assessment_type,pass_score,max_attempts,created_at,updated_at) VALUES
('Data Science Fundamentals','Introduction to data science concepts','Data Science','Beginner',180,3.0,'English','TechAcademy',1,'2022-01-15','2023-06-01',200,180,NULL,'Dr Emily Clark','https://videos.techacademy.com/ds_fundamentals','https://docs.techacademy.com/ds_fundamentals','Quiz',70,3,'2022-01-15 09:00:00','2023-06-01 12:00:00'),
('Advanced Cloud Architecture','Deep dive into cloud design patterns','Cloud Computing','Advanced',240,4.0,'English','CloudMasters',1,'2021-09-10','2023-05-20',150,150,101,'Mr John Kim','https://videos.cloudmasters.com/adv_cloud','https://docs.cloudmasters.com/adv_cloud','Project',80,2,'2021-09-10 10:30:00','2023-05-20 15:45:00'),
('Project Management Basics','Core principles of project management','Management','Intermediate',120,2.0,'English','BizLearn',0,'2023-03-01','2023-07-10',250,60,202,'Ms Laura Patel','https://videos.bizlearn.com/pm_basics','https://docs.bizlearn.com/pm_basics','Assignment',65,4,'2023-03-01 08:15:00','2023-07-10 11:20:00');

-- Software release notes table
CREATE TABLE software_release_notes (
    release_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    product_name TEXT,
    version TEXT,
    release_date DATE,
    build_number TEXT,
    changelog_summary TEXT,
    critical_fixes_count INTEGER,
    new_features_count INTEGER,
    known_issues_count INTEGER,
    impacted_modules TEXT,
    deployment_environment TEXT,
    released_by TEXT,
    approval_status TEXT,
    rollback_plan_url TEXT,
    documentation_url TEXT,
    support_contact TEXT,
    min_os_version TEXT,
    max_os_version TEXT,
    release_type TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO software_release_notes (product_name,version,release_date,build_number,changelog_summary,critical_fixes_count,new_features_count,known_issues_count,impacted_modules,deployment_environment,released_by,approval_status,rollback_plan_url,documentation_url,support_contact,min_os_version,max_os_version,release_type,notes,created_at,updated_at) VALUES
('AlphaCRM','3.2.1','2023-05-20','20230520A','Bug fixes and performance improvements',5,2,3,'UserManagement,Reporting','Production','Alice Turner','Approved','https://docs.alphacrm.com/rollback_3_2_1','https://docs.alphacrm.com/release_3_2_1','support@alphacrm.com','Windows10','Windows11','Minor','Hotfix for critical login issue','2023-05-20 09:00:00','2023-05-20 17:00:00'),
('BetaAnalytics','5.0.0','2022-11-15','20221115B','Major release with new AI features',0,8,1,'AnalyticsEngine,DataIngestion','Staging','Bob Martinez','Pending','https://docs.betaanalytics.com/rollback_5_0_0','https://docs.betaanalytics.com/release_5_0_0','support@betaanalytics.com','Linux4.15','Linux5.10','Major','Introduce predictive analytics module','2022-11-15 10:30:00','2022-11-15 18:45:00'),
('GammaPOS','2.5.4','2023-07-01','20230701C','Security patches and UI tweaks',3,0,2,'Checkout,Inventory','Production','Carol Lee','Approved','https://docs.gammapos.com/rollback_2_5_4','https://docs.gammapos.com/release_2_5_4','support@gammapos.com','iOS13','iOS15','Patch','Address CVE‑2023‑1234','2023-07-01 08:15:00','2023-07-01 16:00:00');

-- Vendor performance metrics table
CREATE TABLE vendor_performance_metrics (
    metric_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    vendor_id INTEGER,
    evaluation_period_start DATE,
    evaluation_period_end DATE,
    score_quality REAL,
    score_timeliness REAL,
    score_cost REAL,
    incidents_reported INTEGER,
    contracts_complied INTEGER,
    avg_response_time_hours REAL,
    satisfaction_rating REAL,
    audits_conducted INTEGER,
    penalty_amount REAL,
    bonus_amount REAL,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    region TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO vendor_performance_metrics (vendor_id,evaluation_period_start,evaluation_period_end,score_quality,score_timeliness,score_cost,incidents_reported,contracts_complied,avg_response_time_hours,satisfaction_rating,audits_conducted,penalty_amount,bonus_amount,contact_name,contact_email,contact_phone,region,notes,created_at,updated_at) VALUES
(501,'2023-01-01','2023-12-31',8.5,9.0,7.5,2,12,4.2,4.8,3,1500.00,2500.00,'Diana Ross','diana.ross@vendorx.com','5551112222','NorthAmerica','Improved delivery times','2023-01-02 09:00:00','2023-12-30 17:00:00'),
(502,'2022-04-01','2023-03-31',7.0,6.5,8.0,5,10,6.5,4.0,2,3000.00,0.00,'Ethan Hunt','ethan.hunt@vendory.com','5553334444','Europe','Needs cost reduction plan','2022-04-02 10:30:00','2023-03-30 15:45:00'),
(503,'2023-07-01','2024-06-30',9.2,9.5,9.0,0,15,2.8,5.0,4,0.00,5000.00,'Fiona Gallagher','fiona.gallagher@vendorz.com','5555556666','Asia','Outstanding performance','2023-07-02 08:15:00','2024-06-28 16:20:00');

-- Virtual event sessions table
CREATE TABLE virtual_event_sessions (
    session_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    session_title TEXT,
    speaker_name TEXT,
    start_time DATETIME,
    end_time DATETIME,
    session_type TEXT,
    max_attendees INTEGER,
    current_attendees INTEGER,
    platform TEXT,
    stream_url TEXT,
    recording_available INTEGER,
    audience_poll_enabled INTEGER,
    chat_enabled INTEGER,
    languages_supported TEXT,
    subtitles_available INTEGER,
    registration_required INTEGER,
    registration_deadline DATE,
    feedback_score REAL,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO virtual_event_sessions (event_id,session_title,speaker_name,start_time,end_time,session_type,max_attendees,current_attendees,platform,stream_url,recording_available,audience_poll_enabled,chat_enabled,languages_supported,subtitles_available,registration_required,registration_deadline,feedback_score,notes,created_at,updated_at) VALUES
(10001,'Opening Keynote','Dr Sarah Lee','2023-09-01 09:00:00','2023-09-01 10:00:00','Keynote',5000,4325,'Zoom','https://zoom.us/j/123456789','1','1','1','English,Spanish','1','1','2023-08-25',4.8,'High engagement','2023-08-01 12:00:00','2023-09-01 10:05:00'),
(10001,'Panel Discussion: Future of Gaming','Panelists','2023-09-01 11:00:00','2023-09-01 12:30:00','Panel',3000,2750,'MicrosoftTeams','https://teams.microsoft.com/l/meetup-join/987654321','1','1','1','English','0','1','2023-08-25',4.5,'Technical issues at start','2023-08-01 12:30:00','2023-09-01 12:35:00'),
(10002,'Workshop: AI in Card Design','Prof Alex Kim','2023-10-15 14:00:00','2023-10-15 15:45:00','Workshop',200,180,'Webex','https://webex.com/meet/24680','0','0','1','English,Japanese','1','0',NULL,4.2,'Limited seats, full registration','2023-09-20 09:00:00','2023-10-15 15:50:00');