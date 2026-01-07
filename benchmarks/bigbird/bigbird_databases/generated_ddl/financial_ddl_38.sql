-- Facility inspection logs capturing periodic safety and compliance checks
CREATE TABLE facility_inspection_log (
    inspection_id INTEGER PRIMARY KEY,
    facility_id INTEGER NOT NULL,
    inspection_date DATE NOT NULL,
    inspector_name TEXT NOT NULL,
    inspection_type TEXT NOT NULL,
    overall_score INTEGER NOT NULL,
    safety_compliance INTEGER NOT NULL,
    fire_safety INTEGER NOT NULL,
    equipment_status TEXT NOT NULL,
    notes TEXT,
    follow_up_required INTEGER NOT NULL,
    follow_up_date DATE,
    cost_estimate REAL,
    region_code TEXT NOT NULL,
    building_age INTEGER,
    hvac_status TEXT,
    electrical_status TEXT,
    plumbing_status TEXT,
    structural_status TEXT,
    cleanliness_score INTEGER
);

INSERT INTO facility_inspection_log VALUES (1,101,'2025-01-15','JohnDoe','Annual','95',1,1,'Good','All systems functional',0,NULL,1200.50,'RC01',15,'Operational','Operational','Operational','Good','88');
INSERT INTO facility_inspection_log VALUES (2,102,'2025-02-10','JaneSmith','Quarterly','88',1,0,'Needs Repair','Fire alarm defective',1,'2025-03-05',800.00,'RC02',22,'Needs Maintenance','Operational','Needs Repair','Fair','80');
INSERT INTO facility_inspection_log VALUES (3,103,'2025-03-05','MikeLee','Monthly','92',1,1,'Good','No issues detected',0,NULL,500.00,'RC03',10,'Operational','Operational','Operational','Good','85');

-- Records of environmental sensor stations deployed for monitoring
CREATE TABLE environmental_sensor_station (
    station_id INTEGER PRIMARY KEY,
    station_name TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    elevation INTEGER,
    install_date DATE NOT NULL,
    sensor_type TEXT NOT NULL,
    measurement_interval INTEGER NOT NULL,
    last_calibration DATE,
    status TEXT NOT NULL,
    battery_level INTEGER,
    firmware_version TEXT,
    data_quality_score INTEGER,
    region TEXT,
    owner_org TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance DATE,
    connectivity_type TEXT,
    ip_address TEXT,
    notes TEXT
);

INSERT INTO environmental_sensor_station VALUES (201,'RiverSide01',45.1234,-122.5678,250,'2024-06-01','Humidity','15','2025-01-10','Active',95,'v1.2.3',98,'North','EnviroCorp',180,'2025-02-01','Cellular','192.168.1.20','Located near river bend');
INSERT INTO environmental_sensor_station VALUES (202,'HillTopA',46.2345,-121.6789,400,'2024-07-15','AirQuality','10','2025-01-20','Active',88,'v1.3.0',95,'South','GreenTech',365,'2025-01-15','Satellite','192.168.1.21','High elevation site');
INSERT INTO environmental_sensor_station VALUES (203,'UrbanCenterX',44.9876,-123.4567,30,'2024-09-05','Temperature','5','2025-02-05','Inactive',0,'v1.1.5',70,'East','CityDept',90,'2025-02-10','WiFi','192.168.1.22','Awaiting repair');

-- Telemetry data captured from fleet vehicles
CREATE TABLE fleet_vehicle_telemetry (
    telemetry_id INTEGER PRIMARY KEY,
    vehicle_id INTEGER NOT NULL,
    timestamp TEXT NOT NULL,
    speed REAL,
    engine_rpm INTEGER,
    fuel_level REAL,
    latitude REAL,
    longitude REAL,
    odometer INTEGER,
    tire_pressure_front_left REAL,
    tire_pressure_front_right REAL,
    tire_pressure_rear_left REAL,
    tire_pressure_rear_right REAL,
    brake_status TEXT,
    transmission_temp REAL,
    battery_voltage REAL,
    coolant_temp REAL,
    gps_signal_strength INTEGER,
    driver_id INTEGER,
    trip_id INTEGER,
    event_code TEXT
);

INSERT INTO fleet_vehicle_telemetry VALUES (301,5001,'2025-03-01 08:30:00',65.2,2500,78.5,37.7749,-122.4194,120450,32.1,32.3,31.9,32.0,'Released',85.0,13.8,90.5,4,9001,7001,'NORMAL');
INSERT INTO fleet_vehicle_telemetry VALUES (302,5002,'2025-03-01 09:15:00',48.0,1800,55.0,34.0522,-118.2437,84500,31.5,31.7,31.4,31.6,'Applied',78.0,13.9,88.0,5,9002,7002,'NORMAL');
INSERT INTO fleet_vehicle_telemetry VALUES (303,5003,'2025-03-01 10:05:00',0.0,0,20.0,40.7128,-74.0060,50200,30.0,30.0,30.0,30.0,'Released',65.0,13.5,85.0,3,9003,7003,'IDLE');

-- Customer loyalty program activity tracking
CREATE TABLE customer_loyalty_activity (
    activity_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    activity_date DATE NOT NULL,
    activity_type TEXT NOT NULL,
    points_earned INTEGER,
    points_redeemed INTEGER,
    campaign_code TEXT,
    channel TEXT,
    location TEXT,
    device_type TEXT,
    transaction_id INTEGER,
    product_category TEXT,
    merchant_id INTEGER,
    loyalty_tier TEXT,
    net_points_balance INTEGER,
    notes TEXT,
    referral_code TEXT,
    bonus_multiplier REAL,
    expiration_date DATE,
    reward_id INTEGER
);

INSERT INTO customer_loyalty_activity VALUES (401,3001,'2025-02-20','Purchase',120,0,'SPRING23','Online','NYC','Mobile',8001,'Electronics',150,'Gold',1200,'First purchase bonus','REF123',1.5,'2025-12-31',501);
INSERT INTO customer_loyalty_activity VALUES (402,3002,'2025-02-22','Redemption',0,200,'WINTER22','InStore','LA','POS',8002,'Apparel',151,'Silver',800,'Redeemed summer voucher','REF124',1.0,'2025-11-30',502);
INSERT INTO customer_loyalty_activity VALUES (403,3003,'2025-02-25','Referral',50,0,'FALL21','Online','CHI','Web',8003,'HomeGoods',152,'Bronze',950,'Referral bonus applied','REF125',2.0,'2025-10-15',503);

-- Regional economic indicators for analysis
CREATE TABLE regional_economic_indicator (
    indicator_id INTEGER PRIMARY KEY,
    region_code TEXT NOT NULL,
    year INTEGER NOT NULL,
    gdp REAL,
    unemployment_rate REAL,
    inflation_rate REAL,
    median_income REAL,
    population INTEGER,
    poverty_rate REAL,
    business_births INTEGER,
    business_deaths INTEGER,
    trade_balance REAL,
    foreign_investment REAL,
    housing_price_index REAL,
    consumer_confidence_index REAL,
    manufacturing_output REAL,
    services_output REAL,
    agriculture_output REAL,
    energy_consumption REAL,
    education_spending REAL
);

INSERT INTO regional_economic_indicator VALUES (501,'RC01',2024,560000.0,4.2,2.5,58000.0,1250000,12.3,450,210,15000.0,250000.0,210.5,98.0,34000.0,72000.0,15000.0,3400.0,120000.0);
INSERT INTO regional_economic_indicator VALUES (502,'RC02',2024,430000.0,5.1,3.1,47000.0,950000,15.0,380,190,12000.0,180000.0,190.2,95.5,26000.0,54000.0,12000.0,2800.0,95000.0);
INSERT INTO regional_economic_indicator VALUES (503,'RC03',2024,720000.0,3.8,2.0,63000.0,1600000,10.5,500,150,20000.0,320000.0,230.7,101.2,42000.0,95000.0,18000.0,4100.0,140000.0);

-- Inventory of digital assets managed by the organization
CREATE TABLE digital_asset_inventory (
    asset_id INTEGER PRIMARY KEY,
    asset_name TEXT NOT NULL,
    asset_type TEXT NOT NULL,
    file_format TEXT,
    size_bytes INTEGER,
    created_date DATE,
    modified_date DATE,
    owner_user_id INTEGER,
    checksum TEXT,
    storage_location TEXT,
    retention_policy TEXT,
    encryption_status TEXT,
    access_level TEXT,
    version_number INTEGER,
    tags TEXT,
    description TEXT,
    related_project_id INTEGER,
    lifecycle_stage TEXT,
    last_accessed TEXT,
    compliance_status TEXT
);

INSERT INTO digital_asset_inventory VALUES (601,'Q1_Report','Document','PDF',254000,'2024-04-01','2025-01-10',1001,'AB12CD34','/mnt/reports','5yr','Encrypted','Confidential',3,'finance,quarterly','Q1 financial results',2001,'Active','2025-02-28 09:15:00','Compliant');
INSERT INTO digital_asset_inventory VALUES (602,'Customer_Data_Export','Dataset','CSV',10485760,'2024-06-15','2025-02-05',1002,'EF56GH78','/mnt/data','7yr','Encrypted','Restricted',1,'customer,export','Export of customer data for analysis',2002,'Active','2025-03-01 14:20:00','Compliant');
INSERT INTO digital_asset_inventory VALUES (603,'Marketing_Video_2025','Media','MP4',52428800,'2024-12-01','2025-01-20',1003,'IJ90KL12','/mnt/media','3yr','Encrypted','Public',2,'marketing,video','Introductory marketing video',2003,'Archived','2025-02-15 11:00:00','Compliant');

-- Network of healthcare providers participating in the system
CREATE TABLE healthcare_provider_network (
    provider_id INTEGER PRIMARY KEY,
    provider_name TEXT NOT NULL,
    network_id INTEGER NOT NULL,
    specialty TEXT,
    license_number TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    phone_number TEXT,
    email_address TEXT,
    contracting_status TEXT,
    agreement_start DATE,
    agreement_end DATE,
    max_patients INTEGER,
    avg_wait_time INTEGER,
    rating REAL,
    credentialed INTEGER,
    referral_allowed INTEGER,
    tax_id TEXT,
    npi_number TEXT,
    hours_of_operation TEXT,
    telehealth_enabled INTEGER
);

INSERT INTO healthcare_provider_network VALUES (701,'Sunrise Clinic',10,'Family Medicine','LIC12345','123 Main St','Suite 100','Springfield','IL','62704','2175551234','info@sunriseclinic.com','Active','2023-01-01','2028-12-31',1500,15,4.6,1,1,'TAX987654','NPI111222333','Mon-Fri 08:00-17:00',1);
INSERT INTO healthcare_provider_network VALUES (702,'Riverbend Hospital',12,'Cardiology','LIC67890','456 River Rd','', 'Rivercity','TX','75001','9725555678','contact@riverbendhospital.com','Active','2022-06-15','2027-06-14',3000,20,4.2,1,0,'TAX123456','NPI444555666','24/7',1);
INSERT INTO healthcare_provider_network VALUES (703,'Mountainview Pediatrics',11,'Pediatrics','LIC54321','789 Hill Ave','Floor 2','Hilltown','CO','80014','3035559012','peds@mountainview.com','Pending','2024-03-01','2029-02-28',800,10,4.8,0,1,'TAX654321','NPI777888999','Mon-Fri 09:00-18:00',0);

-- Nodes of the electrical grid with technical specifications
CREATE TABLE energy_grid_node (
    node_id INTEGER PRIMARY KEY,
    node_name TEXT NOT NULL,
    node_type TEXT,
    region TEXT,
    voltage_level REAL,
    capacity_mw REAL,
    installation_date DATE,
    latitude REAL,
    longitude REAL,
    operational_status TEXT,
    last_outage DATE,
    outage_duration_minutes INTEGER,
    maintenance_schedule TEXT,
    transformer_id INTEGER,
    substation_id INTEGER,
    load_factor REAL,
    reactive_power_mvar REAL,
    harmonic_distortion REAL,
    controller_firmware TEXT,
    notes TEXT
);

INSERT INTO energy_grid_node VALUES (801,'NodeA','Substation','North',115.0,250.0,'2020-05-10',40.7128,-74.0060,'Operational',NULL,NULL,'2025-06-01',5001,3001,0.78,45.0,0.5,'FW1.2.3','Primary substation for zone A');
INSERT INTO energy_grid_node VALUES (802,'NodeB','Transformer','South',33.0,80.0,'2021-08-22',34.0522,-118.2437,'Operational','2025-01-15',90,'2025-07-15',5002,3002,0.65,30.0,0.3,'FW1.2.5','Transformer serving industrial area');
INSERT INTO energy_grid_node VALUES (803,'NodeC','Switchgear','East',11.0,20.0,'2019-11-05',41.8781,-87.6298,'Maintenance','2024-12-20',180,'2025-08-20',5003,3003,0.55,20.0,0.2,'FW1.3.0','Switchgear pending upgrade');

-- Allocation details for research grants awarded by the institution
CREATE TABLE research_grant_allocation (
    grant_id INTEGER PRIMARY KEY,
    grant_title TEXT NOT NULL,
    sponsor_name TEXT,
    award_amount REAL,
    start_date DATE,
    end_date DATE,
    principal_investigator_id INTEGER,
    department TEXT,
    project_code TEXT,
    funding_cycle INTEGER,
    status TEXT,
    allocated_funds REAL,
    spent_to_date REAL,
    remaining_funds REAL,
    reporting_frequency TEXT,
    report_due_date DATE,
    compliance_score INTEGER,
    ethical_approval INTEGER,
    ancillary_support TEXT,
    notes TEXT
);

INSERT INTO research_grant_allocation VALUES (901,'AI for Healthcare','National Science Fund',500000.0,'2023-09-01','2026-08-31',2001,'Computer Science','AIH2023',1,'Active',500000.0,120000.0,380000.0,'Quarterly','2024-12-31',92,1,'Cloud credits','Project on AI diagnostic tools');
INSERT INTO research_grant_allocation VALUES (902,'Renewable Energy Storage','Green Energy Initiative',300000.0,'2024-01-15','2027-01-14',2002,'Electrical Engineering','RES2024',1,'Active',300000.0,50000.0,250000.0,'Annually','2025-01-15',88,1,'Lab equipment','Battery technology development');
INSERT INTO research_grant_allocation VALUES (903,'Urban Mobility Study','City Development Council',150000.0,'2022-06-01','2025-05-31',2003,'Urban Planning','UMS2022',2,'Completed',150000.0,150000.0,0.0,'Biannual','2025-04-30',95,1,'Survey incentives','Comprehensive analysis of transport patterns');

-- Schedules for public transport routes and services
CREATE TABLE public_transport_schedule (
    schedule_id INTEGER PRIMARY KEY,
    route_id INTEGER NOT NULL,
    route_name TEXT NOT NULL,
    start_stop TEXT,
    end_stop TEXT,
    departure_time TEXT,
    arrival_time TEXT,
    travel_time_minutes INTEGER,
    frequency_minutes INTEGER,
    service_day TEXT,
    vehicle_type TEXT,
    driver_id INTEGER,
    capacity INTEGER,
    accessibility_features TEXT,
    fare_zone INTEGER,
    peak_hour_indicator INTEGER,
    weekend_service INTEGER,
    maintenance_window TEXT,
    real_time_updates INTEGER,
    notes TEXT
);

INSERT INTO public_transport_schedule VALUES (1001,10,'Downtown Loop','Central Station','Parkside','07:00','07:30',30,15,'Weekday','Bus',4001,50,'Wheelchair Ramp',2,1,0,'02:00-03:00',1,'Runs every 15 minutes on weekdays');
INSERT INTO public_transport_schedule VALUES (1002,11,'Uptown Express','Uptown Hub','North Terminal','08:00','08:25',25,20,'Weekday','Tram',4002,120,'Low Floor',3,1,0,'03:30-04:00',1,'Limited stops for faster service');
INSERT INTO public_transport_schedule VALUES (1003,12,'Weekend Leisure','Beach Station','Museum',09:00,09:45,45,30,'Weekend','Bus',4003,45,'Wheelchair Ramp',1,0,1,'None',0,'Reduced frequency on weekends');