-- Public transport schedule for city bus routes
CREATE TABLE public_transport_schedule
(
    schedule_id INTEGER NOT NULL PRIMARY KEY,
    route_number TEXT NOT NULL,
    vehicle_type TEXT NOT NULL,
    departure_time TEXT NOT NULL,
    arrival_time TEXT NOT NULL,
    stop_sequence INTEGER NOT NULL,
    stop_name TEXT NOT NULL,
    day_of_week TEXT NOT NULL,
    effective_start_date DATE NOT NULL,
    effective_end_date DATE NOT NULL,
    frequency_minutes INTEGER NOT NULL,
    capacity INTEGER NOT NULL,
    driver_id INTEGER NOT NULL,
    operator_company TEXT NOT NULL,
    fare_amount REAL NOT NULL,
    wheelchair_access INTEGER NOT NULL,
    wifi_available INTEGER NOT NULL,
    air_conditioning INTEGER NOT NULL,
    gps_tracking INTEGER NOT NULL,
    remarks TEXT
);
INSERT INTO public_transport_schedule VALUES (1,'12A','BUS','08:00','08:45',1,'MAIN_STREET','Monday','2024-01-01','2024-12-31',15,40,101,'CityTransit',2.50,1,1,1,1,'Morning commute');
INSERT INTO public_transport_schedule VALUES (2,'12A','BUS','09:00','09:45',2,'ELM_AVENUE','Monday','2024-01-01','2024-12-31',15,40,102,'CityTransit',2.50,1,1,1,1,'');
INSERT INTO public_transport_schedule VALUES (3,'7B','TRAM','14:30','15:15',1,'RIVER_DRIVE','Wednesday','2024-01-01','2024-12-31',20,60,201,'MetroRail',3.00,1,1,1,1,'');

-- City parking permit registry
CREATE TABLE city_parking_permit
(
    permit_id INTEGER NOT NULL PRIMARY KEY,
    permit_number TEXT NOT NULL,
    vehicle_plate TEXT NOT NULL,
    vehicle_make TEXT NOT NULL,
    vehicle_model TEXT NOT NULL,
    vehicle_year INTEGER NOT NULL,
    owner_name TEXT NOT NULL,
    owner_address TEXT NOT NULL,
    issue_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    zone_code TEXT NOT NULL,
    zone_description TEXT NOT NULL,
    parking_type TEXT NOT NULL,
    fee_amount REAL NOT NULL,
    paid_status INTEGER NOT NULL,
    renewable INTEGER NOT NULL,
    enforcement_status TEXT NOT NULL,
    violation_count INTEGER NOT NULL,
    notes TEXT,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL
);
INSERT INTO city_parking_permit VALUES (1001,'PERM2024001','ABC1234','TOYOTA','COROLLA',2018,'JOHN DOE','123 MAIN ST','2024-01-15','2025-01-14','Z1','DOWNTOWN','RESIDENTIAL',120.00,1,1,'ACTIVE',0,'',40.7128,-74.0060);
INSERT INTO city_parking_permit VALUES (1002,'PERM2024002','XYZ5678','HONDA','CIVIC',2020,'JANE SMITH','456 OAK AVE','2024-02-01','2025-01-31','Z2','SUBURBAN','COMMERCIAL',150.00,0,1,'PENDING',2,'Late payment',34.0522,-118.2437);
INSERT INTO city_parking_permit VALUES (1003,'PERM2024003','LMN3456','FORD','FOCUS',2016,'ALICE BROWN','789 PINE RD','2023-12-20','2024-12-19','Z3','INDUSTRIAL','RESIDENTIAL',100.00,1,0,'EXPIRED',1,'Renewal denied',41.8781,-87.6298);

-- Water quality measurement records
CREATE TABLE water_quality_measurement
(
    measurement_id INTEGER NOT NULL PRIMARY KEY,
    station_id TEXT NOT NULL,
    sample_datetime TEXT NOT NULL,
    pH REAL NOT NULL,
    turbidity REAL NOT NULL,
    dissolved_oxygen_mg_l REAL NOT NULL,
    temperature_c REAL NOT NULL,
    conductivity_us_cm REAL NOT NULL,
    nitrate_mg_l REAL NOT NULL,
    phosphate_mg_l REAL NOT NULL,
    coliform_cfu_100ml INTEGER NOT NULL,
    lead_ppb REAL NOT NULL,
    mercury_ppb REAL NOT NULL,
    arsenic_ppb REAL NOT NULL,
    sampling_method TEXT NOT NULL,
    analyst_name TEXT NOT NULL,
    quality_flag TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    river_name TEXT NOT NULL,
    basin TEXT NOT NULL
);
INSERT INTO water_quality_measurement VALUES (5001,'STN01','2024-03-10 08:00',7.2,3.5,8.1,15.0,250.0,0.8,0.03,120,5.0,0.2,0.1,'AUTOMATED','MARK TAYLOR','PASS',45.1234,-122.5678,'ROSE_RIVER','PACIFIC_BASIN');
INSERT INTO water_quality_measurement VALUES (5002,'STN02','2024-03-11 09:30',6.9,4.2,7.5,14.2,260.5,1.0,0.04,200,7.5,0.3,0.12,'MANUAL','LISA CHEN','PASS',44.9876,-123.1234,'SILVER_STREAM','COASTAL_BASIN');
INSERT INTO water_quality_measurement VALUES (5003,'STN03','2024-03-12 07:45',7.0,2.8,9.0,13.8,240.0,0.5,0.02,80,3.2,0.15,0.09,'AUTOMATED','RAHUL PATEL','PASS',46.0012,-121.8765,'GOLDEN_CREEK','MOUNTAIN_BASIN');

-- Air quality index monitoring
CREATE TABLE air_quality_index
(
    aqi_id INTEGER NOT NULL PRIMARY KEY,
    monitoring_site TEXT NOT NULL,
    record_date DATE NOT NULL,
    hour INTEGER NOT NULL,
    aqi_overall INTEGER NOT NULL,
    pm25_ug_m3 REAL NOT NULL,
    pm10_ug_m3 REAL NOT NULL,
    no2_ppb REAL NOT NULL,
    so2_ppb REAL NOT NULL,
    o3_ppb REAL NOT NULL,
    co_ppm REAL NOT NULL,
    temperature_c REAL NOT NULL,
    humidity_percent REAL NOT NULL,
    wind_speed_m_s REAL NOT NULL,
    wind_direction TEXT NOT NULL,
    health_advisory TEXT NOT NULL,
    data_source TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    remarks TEXT
);
INSERT INTO air_quality_index VALUES (2001,'SITE_A','2024-04-01',8,85,35.2,58.1,22.5,8.3,30.0,0.6,22.5,55.0,3.2,'NE','AQI_BAD','EPA',40.7306,-73.9352,'');
INSERT INTO air_quality_index VALUES (2002,'SITE_B','2024-04-01',14,42,12.5,25.3,15.0,4.1,45.2,0.3,18.2,48.0,2.8,'NW','AQI_MODERATE','LOCAL_AGENCY',34.0522,-118.2437,'');
INSERT INTO air_quality_index VALUES (2003,'SITE_C','2024-04-01',20,110,55.0,90.0,30.5,12.0,20.0,0.9,25.0,70.0,4.5,'SE','AQI_VERY_BAD','EPA',41.8781,-87.6298,'');

-- Urban green space registry
CREATE TABLE urban_green_space
(
    green_space_id INTEGER NOT NULL PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    area_sq_m REAL NOT NULL,
    established_date DATE NOT NULL,
    managing_agency TEXT NOT NULL,
    open_hours TEXT NOT NULL,
    facilities TEXT NOT NULL,
    maintenance_budget REAL NOT NULL,
    number_of_trees INTEGER NOT NULL,
    canopy_coverage_percent REAL NOT NULL,
    wildlife_habitat TEXT NOT NULL,
    accessibility_rating INTEGER NOT NULL,
    lighting_present INTEGER NOT NULL,
    water_features INTEGER NOT NULL,
    playground_present INTEGER NOT NULL,
    dog_park_present INTEGER NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    neighborhood TEXT NOT NULL
);
INSERT INTO urban_green_space VALUES (301,'RIVER_PARK','PUBLIC','15000',2005-04-12,'CITY_PARKS_DEPT','06:00-22:00','PLAYGROUND,BOAT_DOCK','50000.00',1200,45.5,'BIRD_NESTING',4,1,1,1,0,39.9526,-75.1652,'CENTER_CITY');
INSERT INTO urban_green_space VALUES (302,'HILLSIDE_GARDEN','PRIVATE','8000',2010-09-30,'PRIVATE_OWNER','07:00-20:00','GARDEN,STATUE','25000.00',350,30.0,'BUTTERFLY',5,0,0,0,0,36.1699,-115.1398,'NORTH_HILLS');
INSERT INTO urban_green_space VALUES (303,'LAKEVIEW_RESERVE','PUBLIC','22000',1998-06-15,'REGIONAL_AUTHORITY','05:00-23:00','PIER,BOAT_RAMP','75000.00',1800,55.0,'FISH_SPAWN',3,1,1,1,1,47.6062,-122.3321,'WEST_SIDE');

-- Traffic signal timing configuration
CREATE TABLE traffic_signal_timing
(
    signal_id INTEGER NOT NULL PRIMARY KEY,
    intersection_id TEXT NOT NULL,
    location_description TEXT NOT NULL,
    cycle_length_seconds INTEGER NOT NULL,
    green_time_north_s INTEGER NOT NULL,
    green_time_south_s INTEGER NOT NULL,
    green_time_east_s INTEGER NOT NULL,
    green_time_west_s INTEGER NOT NULL,
    yellow_time_seconds INTEGER NOT NULL,
    red_clearance_seconds INTEGER NOT NULL,
    pedestrian_phase INTEGER NOT NULL,
    sensor_type TEXT NOT NULL,
    adaptive_control INTEGER NOT NULL,
    last_maintenance_date DATE NOT NULL,
    firmware_version TEXT NOT NULL,
    operator_agency TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    notes TEXT,
    operational_status TEXT NOT NULL
);
INSERT INTO traffic_signal_timing VALUES (4001,'INT001','MAIN_ST-1ST_AVE',120,30,30,25,25,5,3,1,'INDUCTION_LOOP',1,'2023-11-20','v2.3','CITY_TRANSPORT',40.7128,-74.0060,'','OPERATIONAL');
INSERT INTO traffic_signal_timing VALUES (4002,'INT002','2ND_ST-ELM_AVE',110,28,28,27,27,5,3,1,'VIDEO',0,'2023-09-15','v2.1','CITY_TRANSPORT',34.0522,-118.2437,'','OPERATIONAL');
INSERT INTO traffic_signal_timing VALUES (4003,'INT003','RIVER_DR-5TH_BLVD',130,35,35,30,30,5,3,1,'RADAR',1,'2024-01-05','v2.4','CITY_TRANSPORT',41.8781,-87.6298,'','MAINTENANCE_REQUIRED');

-- Community library usage logs
CREATE TABLE community_library_usage
(
    usage_id INTEGER NOT NULL PRIMARY KEY,
    library_branch TEXT NOT NULL,
    member_id INTEGER NOT NULL,
    visit_date DATE NOT NULL,
    visit_time TEXT NOT NULL,
    books_checked_out INTEGER NOT NULL,
    computers_used INTEGER NOT NULL,
    study_rooms_reserved INTEGER NOT NULL,
    event_participation INTEGER NOT NULL,
    wifi_sessions INTEGER NOT NULL,
    overdue_fines_paid REAL NOT NULL,
    membership_type TEXT NOT NULL,
    age_group TEXT NOT NULL,
    gender TEXT NOT NULL,
    zip_code TEXT NOT NULL,
    librarian_on_duty TEXT NOT NULL,
    feedback_score INTEGER NOT NULL,
    comments TEXT,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL
);
INSERT INTO community_library_usage VALUES (8001,'DOWNTOWN_BRANCH',15001,'2024-05-10','10:15',2,1,0,1,3,0.00,'ADULT','30-39','F','10001','SARAH K','9','Great service',40.7128,-74.0060);
INSERT INTO community_library_usage VALUES (8002,'NORTH_SIDE',15002,'2024-05-11','14:45',0,2,1,0,1,5.00,'CHILD','0-9','M','10002','MICHAEL L','8','Helpful staff',34.0522,-118.2437);
INSERT INTO community_library_usage VALUES (8003,'WEST_END',15003,'2024-05-12','09:30',1,0,0,0,2,0.00,'SENIOR','60-69','F','10003','EMILY R','10','Quiet environment',41.8781,-87.6298);

-- Renewable energy certificate registry
CREATE TABLE renewable_energy_certificate
(
    cert_id INTEGER NOT NULL PRIMARY KEY,
    certificate_number TEXT NOT NULL,
    plant_id TEXT NOT NULL,
    plant_name TEXT NOT NULL,
    energy_type TEXT NOT NULL,
    generation_mwh REAL NOT NULL,
    issue_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    buyer_entity TEXT NOT NULL,
    price_per_mwh REAL NOT NULL,
    total_price REAL NOT NULL,
    status TEXT NOT NULL,
    verification_agency TEXT NOT NULL,
    verified_date DATE NOT NULL,
    co2_offset_tonnes REAL NOT NULL,
    renewable_percentage INTEGER NOT NULL,
    region TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    notes TEXT
);
INSERT INTO renewable_energy_certificate VALUES (9001,'CERT2024001','PLT001','SUNNY_VALLEY_WIND','WIND',5000.00,'2024-02-01','2034-01-31','GREEN_CORP',12.5,62500.00,'ISSUED','ISO_CERT','2024-02-05',2500.00,100,'MIDWEST',40.1106,-88.2073,'');
INSERT INTO renewable_energy_certificate VALUES (9002,'CERT2024002','PLT002','RIVER_RUN_SOLAR','SOLAR',3000.00,'2024-03-15','2034-03-14','ECO_ENERGY','15.0',45000.00,'ISSUED','GREEN_CERT','2024-03-20',1800.00,100,'SOUTHWEST',34.0489,-111.0937,'');
INSERT INTO renewable_energy_certificate VALUES (9003,'CERT2024003','PLT003','HILLTOP_BIO','BIOMASS',2000.00,'2024-04-10','2034-04-09','NATURAL_POWER','10.0',20000.00,'PENDING','ISO_CERT','2024-04-12',900.00,80,'NORTHEAST',42.3601,-71.0589,'Awaiting verification');

-- Smart meter reading logs
CREATE TABLE smart_meter_reading
(
    reading_id INTEGER NOT NULL PRIMARY KEY,
    meter_id TEXT NOT NULL,
    account_id INTEGER NOT NULL,
    reading_datetime TEXT NOT NULL,
    consumption_kwh REAL NOT NULL,
    voltage_v REAL NOT NULL,
    current_a REAL NOT NULL,
    power_factor REAL NOT NULL,
    peak_demand_kw REAL NOT NULL,
    tariff_type TEXT NOT NULL,
    billing_period_start DATE NOT NULL,
    billing_period_end DATE NOT NULL,
    anomaly_flag INTEGER NOT NULL,
    uploaded_by TEXT NOT NULL,
    upload_timestamp TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    device_status TEXT NOT NULL,
    firmware_version TEXT NOT NULL,
    notes TEXT
);
INSERT INTO smart_meter_reading VALUES (12001,'MTR001',20001,'2024-05-01 00:00',150.75,240.0,0.65,0.98,5.1,'RESIDENTIAL','2024-04-01','2024-04-30',0,'SYSTEM','2024-05-01 01:00',40.7128,-74.0060,'ACTIVE','v1.5','');
INSERT INTO smart_meter_reading VALUES (12002,'MTR002',20002,'2024-05-01 00:00',220.40,240.0,0.70,0.97,6.3,'COMMERCIAL','2024-04-01','2024-04-30',1,'SYSTEM','2024-05-01 01:05',34.0522,-118.2437,'ACTIVE','v1.5','High variance detected');
INSERT INTO smart_meter_reading VALUES (12003,'MTR003',20003,'2024-05-01 00:00',95.20,240.0,0.60,0.99,3.8,'RESIDENTIAL','2024-04-01','2024-04-30',0,'SYSTEM','2024-05-01 01:10',41.8781,-87.6298,'INACTIVE','v1.4','Meter offline for maintenance');

-- Hospital equipment inventory
CREATE TABLE hospital_equipment_inventory
(
    equipment_id INTEGER NOT NULL PRIMARY KEY,
    equipment_type TEXT NOT NULL,
    manufacturer TEXT NOT NULL,
    model_number TEXT NOT NULL,
    serial_number TEXT NOT NULL,
    purchase_date DATE NOT NULL,
    warranty_end_date DATE NOT NULL,
    department TEXT NOT NULL,
    location_floor INTEGER NOT NULL,
    location_room TEXT NOT NULL,
    status TEXT NOT NULL,
    last_maintenance_date DATE NOT NULL,
    next_maintenance_due DATE NOT NULL,
    usage_hours INTEGER NOT NULL,
    calibrated INTEGER NOT NULL,
    calibration_date DATE NOT NULL,
    calibration_due DATE NOT NULL,
    responsible_staff_id INTEGER NOT NULL,
    cost_usd REAL NOT NULL,
    depreciation_years INTEGER NOT NULL
);
INSERT INTO hospital_equipment_inventory VALUES (50001,'MRI_SCANNER','GE','SIGNA','SN123456','2018-05-20','2023-05-20','RADIOLOGY',2,'R2','IN_SERVICE','2023-06-15','2024-06-15',3200,1,'2023-06-01','2024-06-01',3001,2500000.00,10);
INSERT INTO hospital_equipment_inventory VALUES (50002,'ULTRASOUND','PHILIPS','EPIQ','SN789012','2020-03-10','2025-03-10','OBSTETRICS',1,'U12','IN_SERVICE','2023-11-01','2024-11-01',1500,1,'2023-10-20','2024-10-20',3002,750000.00,8);
INSERT INTO hospital_equipment_inventory VALUES (50003,'VENTILATOR','DAVIDSON','VENTEX','SN345678','2019-07-15','2024-07-15','ICU',3,'V5','MAINTENANCE_REQUIRED','2023-09-30','2024-09-30',2100,0,'','2024-09-30',3003,120000.00,7);