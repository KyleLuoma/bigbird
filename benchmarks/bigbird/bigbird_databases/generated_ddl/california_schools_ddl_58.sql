-- Regional economic indicators per region and year
CREATE TABLE regional_economic_indicators
(
    region_id TEXT NOT NULL PRIMARY KEY,
    year INTEGER NOT NULL,
    median_income REAL,
    unemployment_rate REAL,
    poverty_rate REAL,
    population INTEGER,
    labor_force INTEGER,
    gdp_per_capita REAL,
    education_attainment_pct REAL,
    housing_units INTEGER,
    median_home_price REAL,
    rental_vacancy_rate REAL,
    business_count INTEGER,
    manufacturing_pct REAL,
    service_pct REAL,
    agriculture_pct REAL,
    tech_sector_pct REAL,
    health_care_pct REAL,
    transportation_pct REAL,
    retail_pct REAL,
    energy_consumption_per_capita REAL,
    crime_rate_per_1000 REAL
);

INSERT INTO regional_economic_indicators VALUES
('R001','2022',55000.0,5.2,12.4,1500000,800000,48000.0,35.1,600000,250000.0,6.5,45000,12.3,55.8,3.1,14.2,9.0,8.4,10.7,3000.5,45.2);

INSERT INTO regional_economic_indicators VALUES
('R002','2022',47000.0,6.8,18.0,900000,500000,41000.0,28.4,350000,180000.0,7.2,30000,9.5,48.3,5.2,10.1,7.5,7.9,9.8,2100.3,38.7);

INSERT INTO regional_economic_indicators VALUES
('R003','2022',62000.0,4.1,9.8,2000000,1100000,52000.0,40.5,800000,320000.0,5.9,62000,15.0,60.1,2.2,16.8,10.2,9.1,12.0,3800.7,52.3);

-- Teacher training modules catalog
CREATE TABLE teacher_training_modules
(
    module_id TEXT NOT NULL PRIMARY KEY,
    module_name TEXT,
    provider TEXT,
    delivery_mode TEXT,
    start_date DATE,
    end_date DATE,
    credit_hours INTEGER,
    target_audience TEXT,
    language TEXT,
    max_participants INTEGER,
    enrolled_participants INTEGER,
    completion_rate REAL,
    assessment_type TEXT,
    cost_usd REAL,
    is_mandatory INTEGER,
    syllabus_url TEXT,
    feedback_score REAL,
    instructor_id TEXT,
    instructor_name TEXT,
    evaluation_method TEXT,
    module_category TEXT,
    version TEXT
);

INSERT INTO teacher_training_modules VALUES
('TM001','Classroom Management Essentials','EduPro','Online','2023-03-01','2023-03-15',5,'K12 Teachers','English',30,28,0.96,'Quiz',350.0,1,'http://example.com/syllabus/tm001',4.5,'I001','Alice Smith','Survey','Professional Development','v1.0');

INSERT INTO teacher_training_modules VALUES
('TM002','Advanced STEM Curriculum Design','STEMCo','Hybrid','2023-04-10','2023-04-20',8,'STEM Teachers','English',25,22,0.91,'Project',500.0,0,'http://example.com/syllabus/tm002',4.2,'I002','Bob Johnson','Rubric','Curriculum Design','v2.1');

INSERT INTO teacher_training_modules VALUES
('TM003','Inclusive Education Strategies','InclusionWorks','InPerson','2023-05-05','2023-05-12',6,'Special Ed Teachers','Spanish',20,18,0.94,'Presentation',420.0,1,'http://example.com/syllabus/tm003',4.8,'I003','Carla Gomez','Peer Review','Equity','v1.3');

-- Community fitness center usage statistics
CREATE TABLE community_fitness_center_usage
(
    center_id TEXT NOT NULL PRIMARY KEY,
    center_name TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip TEXT,
    year INTEGER,
    month INTEGER,
    total_visits INTEGER,
    unique_members INTEGER,
    average_visit_duration_minutes REAL,
    peak_hour_start INTEGER,
    peak_hour_end INTEGER,
    membership_type_basic INTEGER,
    membership_type_premium INTEGER,
    classes_offered INTEGER,
    classes_attended INTEGER,
    equipment_maintenance_requests INTEGER,
    staff_on_shift INTEGER,
    annual_budget_usd REAL,
    energy_consumption_kwh REAL,
    water_usage_gallons REAL
);

INSERT INTO community_fitness_center_usage VALUES
('C001','Northside Fitness','123 Main St','Springfield','IL','62704',2023,1,4520,1200,45.3,17,19,300,150,45,380,12,8,125000.0,8500.0,20000.0);

INSERT INTO community_fitness_center_usage VALUES
('C002','Eastside Health Club','456 Oak Ave','Riverdale','NY','10471',2023,1,3890,950,48.7,18,20,260,130,38,290,10,7,112000.0,7700.0,18500.0);

INSERT INTO community_fitness_center_usage VALUES
('C003','West End Wellness','789 Pine Rd','Centerville','TX','75001',2023,1,5010,1350,42.1,16,18,340,170,52,425,15,9,138500.0,9100.0,21500.0);

-- Environmental noise monitoring sensor data
CREATE TABLE environmental_noise_monitoring
(
    sensor_id TEXT NOT NULL PRIMARY KEY,
    location_desc TEXT,
    latitude REAL,
    longitude REAL,
    installation_date DATE,
    sensor_type TEXT,
    frequency_hz REAL,
    sensitivity_db REAL,
    data_collection_interval_minutes INTEGER,
    avg_noise_level_db REAL,
    max_noise_level_db REAL,
    min_noise_level_db REAL,
    noise_events_count INTEGER,
    last_maintenance_date DATE,
    firmware_version TEXT,
    calibration_status TEXT,
    power_source TEXT,
    data_storage_capacity_gb INTEGER,
    alerts_sent INTEGER,
    reporting_period_days INTEGER,
    compliance_status TEXT,
    notes TEXT
);

INSERT INTO environmental_noise_monitoring VALUES
('N001','Industrial Zone A',41.8781,-87.6298,'2021-06-15','Acoustic','1000.0','85.0',10,68.4,92.1,55.0,1240,'2023-02-01','v3.2','Calibrated','Solar','32',45,30,'Compliant','No anomalies');

INSERT INTO environmental_noise_monitoring VALUES
('N002','Residential Area B',34.0522,-118.2437,'2022-01-10','Acoustic','800.0','80.0',15,60.2,78.5,45.3,890,'2023-01-20','v3.0','Calibrated','Mains','64',30,30,'Compliant','Routine check');

INSERT INTO environmental_noise_monitoring VALUES
('N003','Commercial Corridor C',40.7128,-74.0060,'2020-09-05','Acoustic','1200.0','88.0',5,72.9,100.3,58.7,1580,'2023-03-12','v3.4','Calibrated','Battery','128',60,30,'Compliant','Battery replaced 2022');

-- Public art installations inventory
CREATE TABLE public_art_installations_inventory
(
    art_id TEXT NOT NULL PRIMARY KEY,
    title TEXT,
    artist_name TEXT,
    installation_year INTEGER,
    material TEXT,
    height_cm REAL,
    width_cm REAL,
    depth_cm REAL,
    location_address TEXT,
    city TEXT,
    state TEXT,
    zip TEXT,
    gps_latitude REAL,
    gps_longitude REAL,
    maintenance_contract_id TEXT,
    last_restoration_date DATE,
    condition_rating INTEGER,
    funding_source TEXT,
    estimated_value_usd REAL,
    visitor_count_year INTEGER,
    accessibility_features TEXT,
    lighting_type TEXT,
    coordinates_source TEXT
);

INSERT INTO public_art_installations_inventory VALUES
('A001','River Flow','Mia Chen','2018','Bronze',250.0,120.0,90.0','200 River St','Springfield','IL','62704',39.7817,-89.6501','MC1001','2022-05-10',8,'City Grant',75000.0,32000,'Wheelchair Ramp','LED','GPS');

INSERT INTO public_art_installations_inventory VALUES
('A002','Harmony','Luis Ramirez','2020','Stainless Steel',180.0,200.0,60.0','45 Park Lane','Riverdale','NY','10471',40.7128,-74.0060','MC1002','2021-11-22',9,'Private Donor',120000.0,45000,'Audio Guide','Solar','Survey');

INSERT INTO public_art_installations_inventory VALUES
('A003','Sky Reach','Aisha Patel','2019','Glass','300.0','100.0','100.0','78 Skyline Blvd','Centerville','TX','75001',31.9686,-99.9018','MC1003','2023-01-15',7,'State Arts Fund',200000.0,60000,'Braille Panels','Spotlight','Drone');

-- District technology asset depreciation schedule
CREATE TABLE district_technology_asset_depreciation_schedule
(
    asset_id TEXT NOT NULL PRIMARY KEY,
    asset_type TEXT,
    manufacturer TEXT,
    model TEXT,
    purchase_date DATE,
    purchase_price_usd REAL,
    depreciation_method TEXT,
    useful_life_years INTEGER,
    salvage_value_usd REAL,
    accumulated_depreciation_usd REAL,
    net_book_value_usd REAL,
    department_responsible TEXT,
    warranty_expires DATE,
    location TEXT,
    serial_number TEXT,
    asset_tag TEXT,
    last_audit_date DATE,
    depreciation_status TEXT,
    comments TEXT,
    assigned_user_id TEXT,
    assigned_user_name TEXT,
    maintenance_schedule TEXT
);

INSERT INTO district_technology_asset_depreciation_schedule VALUES
('T001','Laptop','Dell','Latitude 5420','2020-08-15',1200.0,'StraightLine',5,200.0,960.0,240.0,'IT Services','2023-08-15','Room 214','SN123456','TAG001','2023-01-10','InProgress','Replaced battery Q1 2023','U101','John Doe','Annual');

INSERT INTO district_technology_asset_depreciation_schedule VALUES
('T002','Projector','Epson','PowerLite 1795F','2019-03-20',850.0,'DecliningBalance',7,100.0,680.0,70.0,'Facilities','2024-03-20','Auditorium A','SN789012','TAG002','2023-02-18','Complete','Lens cleaned Q2 2023','U102','Emily Clark','Biannual');

INSERT INTO district_technology_asset_depreciation_schedule VALUES
('T003','Server','HP','ProLiant DL380','2021-01-05',4500.0,'StraightLine',8,500.0,1125.0,2875.0,'Data Center','2025-01-05','Data Hall 3','SN345678','TAG003','2023-03-05','InProgress','Firmware update pending','U103','Michael Lee','Quarterly');

-- School artistic exhibition catalog
CREATE TABLE school_artistic_exhibition_catalog
(
    exhibition_id TEXT NOT NULL PRIMARY KEY,
    exhibition_name TEXT,
    start_date DATE,
    end_date DATE,
    venue_name TEXT,
    venue_address TEXT,
    city TEXT,
    state TEXT,
    zip TEXT,
    curator_name TEXT,
    number_of_artworks INTEGER,
    total_visitors INTEGER,
    ticket_price_usd REAL,
    sponsor_name TEXT,
    sponsor_amount_usd REAL,
    thematic_focus TEXT,
    media_type TEXT,
    opening_night_attendance INTEGER,
    educational_programs INTEGER,
    accessibility_rating INTEGER,
    press_release_url TEXT,
    social_media_hashtag TEXT,
    evaluation_score REAL
);

INSERT INTO school_artistic_exhibition_catalog VALUES
('E001','Visions of Tomorrow','2023-09-15','2023-10-30','Art Hall','12 College Ave','Springfield','IL','62704','Dr. Karen White',150,4200,5.0,'Community Arts Fund',20000.0','Future','Mixed Media',350,12,9,'http://example.com/press/e001','#Visions2023',4.6);

INSERT INTO school_artistic_exhibition_catalog VALUES
('E002','Nature Reimagined','2023-11-05','2023-12-20','Gallery West','45 River Rd','Riverdale','NY','10471','Ms. Laura Green',200,5200,7.5,'Eco Grants',30000.0','Environment','Photography',280,8,8,'http://example.com/press/e002','#NatureReimagined',4.8);

INSERT INTO school_artistic_exhibition_catalog VALUES
('E003','Cultural Tapestry','2024-02-10','2024-03-25','Cultural Center','78 Heritage St','Centerville','TX','75001','Mr. Alan Patel',180,3900,6.0,'Heritage Trust',25000.0','Diversity','Sculpture',310,10,9,'http://example.com/press/e003','#CulturalTapestry',4.7);

-- District renewable energy asset log
CREATE TABLE district_renewable_energy_asset_log
(
    asset_id TEXT NOT NULL PRIMARY KEY,
    asset_type TEXT,
    capacity_kw REAL,
    installation_date DATE,
    location_desc TEXT,
    latitude REAL,
    longitude REAL,
    manufacturer TEXT,
    model TEXT,
    expected_lifetime_years INTEGER,
    current_output_kw REAL,
    maintenance_last_date DATE,
    maintenance_status TEXT,
    funding_source TEXT,
    cost_usd REAL,
    operational_status TEXT,
    net_generation_kwh_year REAL,
    carbon_offset_tons_year REAL,
    warranty_expires DATE,
    performance_ratio REAL,
    notes TEXT,
    last_inspection_date DATE
);

INSERT INTO district_renewable_energy_asset_log VALUES
('RE001','Solar PV','500.0','2020-04-12','North Roof','41.8781','-87.6298','SunPower','E20-5','25',480.0,'2023-01-15','UpToDate','Bond Issue',750000.0,'Active',421000.0,320.0,'2045-04-12',0.96,'No issues','2023-02-20');

INSERT INTO district_renewable_energy_asset_log VALUES
('RE002','Wind Turbine','1500.0','2019-09-30','West Field','34.0522','-118.2437','GE','1.5MW','20',1380.0,'2022-11-30','Pending','Grant',2100000.0,'Active',1205000.0,900.0,'2039-09-30',0.92,'Blade inspection required','2023-03-10');

INSERT INTO district_renewable_energy_asset_log VALUES
('RE003','Geothermal','800.0','2021-06-05','South Campus','40.7128','-74.0060','Mitsubishi','GHP-800','30',780.0,'2023-02-25','UpToDate','Capital Allocation',1800000.0,'Active',6896000.0,650.0','2051-06-05',0.975,'System optimized','2023-04-01');

-- Community health clinic visit records
CREATE TABLE community_health_clinic_visits
(
    visit_id TEXT NOT NULL PRIMARY KEY,
    clinic_id TEXT,
    patient_id TEXT,
    visit_date DATE,
    visit_type TEXT,
    primary_diagnosis TEXT,
    secondary_diagnosis TEXT,
    provider_id TEXT,
    provider_name TEXT,
    duration_minutes INTEGER,
    prescription_given INTEGER,
    follow_up_required INTEGER,
    referral_made INTEGER,
    insurance_type TEXT,
    copay_usd REAL,
    outcome TEXT,
    notes TEXT,
    temperature_celsius REAL,
    blood_pressure_systolic INTEGER,
    blood_pressure_diastolic INTEGER,
    heart_rate INTEGER,
    bmi REAL
);

INSERT INTO community_health_clinic_visits VALUES
('V001','CL001','P001','2023-03-12','Checkup','Hypertension','','DR001','Dr. Alan Brown',30,1,1,0,'Medicaid',5.0,'Improved','Patient advised lifestyle changes',36.7,140,90,78,27.5);

INSERT INTO community_health_clinic_visits VALUES
('V002','CL001','P002','2023-04-05','Vaccination','Influenza','', 'DR002','Nurse Jenna Lee',15,0,0,0,'Private',0.0,'Completed','Routine flu shot administered',37.0,120,80,72,22.1);

INSERT INTO community_health_clinic_visits VALUES
('V003','CL002','P003','2023-05-20','Followup','Diabetes','Hypertension','DR003','Dr. Susan Patel',25,1,0,1,'Medicare',10.0,'Stable','Medication dosage adjusted',36.5,130,85,76,31.2);

-- Regional transportation infrastructure projects
CREATE TABLE regional_transportation_infrastructure_projects
(
    project_id TEXT NOT NULL PRIMARY KEY,
    project_name TEXT,
    agency_responsible TEXT,
    start_date DATE,
    projected_end_date DATE,
    actual_end_date DATE,
    budget_usd REAL,
    expenditure_to_date_usd REAL,
    project_status TEXT,
    route_length_km REAL,
    number_of_bridges INTEGER,
    number_of_tunnels INTEGER,
    environmental_impact_score REAL,
    public_comments_count INTEGER,
    funding_source_federal REAL,
    funding_source_state REAL,
    funding_source_local REAL,
    projected_traffic_increase_pct REAL,
    completed_milestones INTEGER,
    total_milestones INTEGER,
    contractor_name TEXT,
    contract_number TEXT,
    last_report_date DATE
);

INSERT INTO regional_transportation_infrastructure_projects VALUES
('P001','River Bridge Replacement','Dept of Transportation','2022-01-15','2024-12-31','',8500000.0,4200000.0,'InProgress',12.5,3,0,4.2,250,3000000.0,2000000.0,500000.0,12.5,5,10,'BridgeCo','C-2022-001','2023-03-20');

INSERT INTO regional_transportation_infrastructure_projects VALUES
('P002','Westside Light Rail Expansion','Transit Authority','2021-06-01','2025-06-30','',12500000.0,8000000.0,'InProgress',22.0,0,2,5.1,480,6000000.0,4000000.0,2000000.0,18.0,7,12,'RailWorks','C-2021-045','2023-04-15');

INSERT INTO regional_transportation_infrastructure_projects VALUES
('P003','Northern Highway Safety Upgrade','State Highway Dept','2023-03-10','2026-09-30','',5400000.0,1200000.0,'Planned',8.3,1,0,3.8,150,1500000.0,2000000.0,1000000.0,9.5,2,8,'SafeRoads','C-2023-012','2023-03-10');