-- Branch facilities information
CREATE TABLE branch_facilities
(
    facility_id INTEGER PRIMARY KEY,
    branch_code TEXT NOT NULL,
    facility_type TEXT NOT NULL,
    construction_year INTEGER NOT NULL,
    square_feet REAL NOT NULL,
    num_floors INTEGER NOT NULL,
    has_parking INTEGER NOT NULL,
    energy_source TEXT NOT NULL,
    hvac_system TEXT NOT NULL,
    security_level TEXT NOT NULL,
    last_renovation DATE NOT NULL,
    inspection_score INTEGER NOT NULL,
    fire_extinguishers INTEGER NOT NULL,
    elevator_count INTEGER NOT NULL,
    access_control TEXT NOT NULL,
    wifi_coverage REAL NOT NULL,
    maintenance_contract TEXT NOT NULL,
    operational_status TEXT NOT NULL,
    notes TEXT,
    manager_contact TEXT NOT NULL
);

INSERT INTO branch_facilities VALUES (1,'BR001','Office',2005,15000.5,3,1,'Solar','VRF','High','2022-06-15',88,12,2,'Badge',95.2,'ContractA','Active','None','JohnDoe');
INSERT INTO branch_facilities VALUES (2,'BR002','Warehouse',2010,30000.0,1,0,'Grid','Chiller','Medium','2021-09-10',75,8,0,'Keycard',80.0,'ContractB','Active','None','JaneSmith');
INSERT INTO branch_facilities VALUES (3,'BR003','ATM_Hub',2018,8000.0,2,1,'Solar','Split','Low','2023-01-20',90,5,1,'Biometrics',98.5,'ContractC','Planned','None','MikeLee');

-- Employee training program details
CREATE TABLE employee_training_program
(
    program_id INTEGER PRIMARY KEY,
    program_name TEXT NOT NULL,
    dept_code TEXT NOT NULL,
    duration_days INTEGER NOT NULL,
    delivery_method TEXT NOT NULL,
    certification_required TEXT NOT NULL,
    trainer_name TEXT NOT NULL,
    trainer_cert_id TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    max_participants INTEGER NOT NULL,
    current_enrollment INTEGER NOT NULL,
    e_learning_platform TEXT NOT NULL,
    assessment_type TEXT NOT NULL,
    passing_score REAL NOT NULL,
    budget_usd REAL NOT NULL,
    language TEXT NOT NULL,
    material_version TEXT NOT NULL,
    feedback_score REAL NOT NULL,
    status TEXT NOT NULL
);

INSERT INTO employee_training_program VALUES (101,'RiskManagement','FIN',5,'Classroom','Yes','AliceBrown','CERT123','2023-03-01','2023-03-05',20,15,'LMSPro','Exam',85.0,1200.0,'English','v1','4.5','Open');
INSERT INTO employee_training_program VALUES (102,'DataPrivacy','HR',3,'Online','No','BobGreen','CERT456','2023-04-10','2023-04-12',30,27,'LMSPro','Quiz',80.0,800.0,'Spanish','v2','4.2','Open');
INSERT INTO employee_training_program VALUES (103,'Leadership2024','MGT',2,'Hybrid','Yes','CarolWhite','CERT789','2023-05-15','2023-05-16',25,22,'LMSPro','Presentation',90.0,1500.0,'English','v1','4.8','Open');

-- Environmental sensor station readings
CREATE TABLE environmental_sensor_station
(
    station_id INTEGER PRIMARY KEY,
    station_name TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    elevation_m REAL NOT NULL,
    installation_date DATE NOT NULL,
    sensor_type TEXT NOT NULL,
    measurement_interval_min INTEGER NOT NULL,
    pm2_5 REAL NOT NULL,
    pm10 REAL NOT NULL,
    no2 REAL NOT NULL,
    so2 REAL NOT NULL,
    o3 REAL NOT NULL,
    co REAL NOT NULL,
    temperature_c REAL NOT NULL,
    humidity_percent REAL NOT NULL,
    wind_speed_mps REAL NOT NULL,
    wind_direction_deg INTEGER NOT NULL,
    battery_level_percent INTEGER NOT NULL,
    firmware_version TEXT NOT NULL
);

INSERT INTO environmental_sensor_station VALUES (5001,'StationA',40.7128,-74.0060,10.5,'2019-08-01','Multi','15',12.3,25.6,0.021,0.005,0.030,0.7,22.5,55.0,3.2,180,85,'FW1.0');
INSERT INTO environmental_sensor_station VALUES (5002,'StationB',34.0522,-118.2437,30.0,'2020-05-12','Multi','10',9.8,20.1,0.018,0.004,0.028,0.6,24.0,48.0,2.8,90,78,'FW1.1');
INSERT INTO environmental_sensor_station VALUES (5003,'StationC',51.5074,-0.1278,15.0,'2021-02-20','Multi','5',14.2,30.5,0.025,0.006,0.035,0.8,19.8,65.0,4.0,270,92,'FW1.2');

-- Fleet vehicle usage logs
CREATE TABLE fleet_vehicle_usage
(
    vehicle_id INTEGER PRIMARY KEY,
    license_plate TEXT NOT NULL,
    make TEXT NOT NULL,
    model TEXT NOT NULL,
    year INTEGER NOT NULL,
    vin TEXT NOT NULL,
    odometer_km REAL NOT NULL,
    last_service_date DATE NOT NULL,
    fuel_type TEXT NOT NULL,
    engine_capacity_cc INTEGER NOT NULL,
    gps_enabled INTEGER NOT NULL,
    average_speed_kph REAL NOT NULL,
    total_trip_count INTEGER NOT NULL,
    max_load_kg REAL NOT NULL,
    driver_id INTEGER NOT NULL,
    assigned_route TEXT NOT NULL,
    maintenance_status TEXT NOT NULL,
    lease_start DATE NOT NULL,
    lease_end DATE NOT NULL,
    insurance_policy TEXT NOT NULL
);

INSERT INTO fleet_vehicle_usage VALUES (20001,'ABC1234','Ford','Transit',2018,'1FTSW21R08EB12345',85000.5,'2023-02-15','Diesel',2500,1,45.3,1200,1500.0,501,'RouteA','Good','2022-01-01','2025-01-01','PolicyX');
INSERT INTO fleet_vehicle_usage VALUES (20002,'XYZ5678','Mercedes','Sprinter',2020,'WD3PE8CD5JP123456',42000.0,'2023-03-10','Diesel',2993,1,50.1,800,1800.0,502,'RouteB','Good','2021-06-01','2024-06-01','PolicyY');
INSERT INTO fleet_vehicle_usage VALUES (20003,'LMN9012','Volvo','VNR',2019,'4V4NC9EG6JN123456',67000.8,'2023-01-20','Electric',0,1,48.0,950,2000.0,503,'RouteC','Pending','2020-09-15','2023-09-15','PolicyZ');

-- Supplier contract records
CREATE TABLE supplier_contract
(
    contract_id INTEGER PRIMARY KEY,
    supplier_id INTEGER NOT NULL,
    supplier_name TEXT NOT NULL,
    contract_start DATE NOT NULL,
    contract_end DATE NOT NULL,
    contract_value_usd REAL NOT NULL,
    currency TEXT NOT NULL,
    payment_terms TEXT NOT NULL,
    delivery_method TEXT NOT NULL,
    quality_rating INTEGER NOT NULL,
    compliance_status TEXT NOT NULL,
    penalty_clause TEXT NOT NULL,
    renewal_option TEXT NOT NULL,
    contact_person TEXT NOT NULL,
    contact_email TEXT NOT NULL,
    contact_phone TEXT NOT NULL,
    service_level TEXT NOT NULL,
    audit_frequency_months INTEGER NOT NULL,
    notes TEXT,
    status TEXT NOT NULL
);

INSERT INTO supplier_contract VALUES (301,9001,'SupplyCo','2022-01-01','2024-12-31',250000.0,'USD','Net30','Air','5','Compliant','5%Late','Automatic','EmmaWhite','emma@supplyco.com','5551234','Gold',12,'None','Active');
INSERT INTO supplier_contract VALUES (302,9002,'LogiTrans','2021-06-15','2023-06-14',150000.0,'USD','Net45','Sea','4','Compliant','3%Late','Review','LiamBrown','liam@logitrans.com','5555678','Silver',6,'None','Active');
INSERT INTO supplier_contract VALUES (303,9003,'TechParts','2023-03-01','2026-02-28',500000.0,'USD','Net60','Land','5','Compliant','2%Late','Automatic','OliviaGreen','olivia@techparts.com','5559012','Platinum',12,'None','Active');

-- Marketing campaign statistics
CREATE TABLE marketing_campaign_stats
(
    campaign_id INTEGER PRIMARY KEY,
    campaign_name TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    budget_usd REAL NOT NULL,
    channel TEXT NOT NULL,
    impressions INTEGER NOT NULL,
    clicks INTEGER NOT NULL,
    conversions INTEGER NOT NULL,
    cost_per_click REAL NOT NULL,
    cost_per_acquisition REAL NOT NULL,
    roi_percent REAL NOT NULL,
    target_audience TEXT NOT NULL,
    region TEXT NOT NULL,
    creative_type TEXT NOT NULL,
    frequency_cap INTEGER NOT NULL,
    ad_format TEXT NOT NULL,
    landing_page TEXT NOT NULL,
    attribution_model TEXT NOT NULL,
    status TEXT NOT NULL
);

INSERT INTO marketing_campaign_stats VALUES (401,'SpringSale','2023-03-01','2023-03-31',50000.0,'Online','1000000','25000','5000',2.0,10.0,150.0,'Adults18-35','NorthAmerica','Banner',3,'Display','spring.landing.com','LastClick','Active');
INSERT INTO marketing_campaign_stats VALUES (402,'HolidayPush','2023-11-15','2023-12-31',120000.0,'TV','500000','20000','3000',6.0,40.0,200.0,'Families','Europe','Video',2,'Spot','holiday.landing.com','Linear','Active');
INSERT INTO marketing_campaign_stats VALUES (403,'SummerLaunch','2023-06-01','2023-06-30',75000.0,'Social','800000','18000','2500',4.2,30.0,180.0,'YoungAdults','Asia','Carousel',4,'Story','summer.landing.com','DataDriven','Active');

-- Energy consumption logs per facility
CREATE TABLE energy_consumption_log
(
    log_id INTEGER PRIMARY KEY,
    facility_id INTEGER NOT NULL,
    record_date DATE NOT NULL,
    energy_type TEXT NOT NULL,
    consumption_kwh REAL NOT NULL,
    peak_demand_kw REAL NOT NULL,
    average_power_kw REAL NOT NULL,
    cost_usd REAL NOT NULL,
    meter_reading_start REAL NOT NULL,
    meter_reading_end REAL NOT NULL,
    tariff_type TEXT NOT NULL,
    carbon_emission_kg REAL NOT NULL,
    renewable_percentage REAL NOT NULL,
    grid_status TEXT NOT NULL,
    outage_flag INTEGER NOT NULL,
    operator TEXT NOT NULL,
    shift TEXT NOT NULL,
    notes TEXT,
    validation_status TEXT NOT NULL,
    source_system TEXT NOT NULL
);

INSERT INTO energy_consumption_log VALUES (501,1,'2023-03-01','Electric','12500.5','750','620','1500.0','250000.0','262500.5','TimeOfUse','5600.0','20.0','Stable',0,'OpsA','Day','None','Validated','SCADA');
INSERT INTO energy_consumption_log VALUES (502,2,'2023-03-01','Electric','24000.0','1200','1100','3000.0','480000.0','504000.0','Flat','10800.0','35.0','Stable',0,'OpsB','Night','None','Validated','SCADA');
INSERT INTO energy_consumption_log VALUES (503,3,'2023-03-01','Electric','8000.3','500','420','960.0','160000.0','168000.3','TimeOfUse','3600.0','15.0','Stable',0,'OpsC','Day','None','Validated','SCADA');

-- Regulatory audit events
CREATE TABLE regulatory_audit_event
(
    event_id INTEGER PRIMARY KEY,
    audit_name TEXT NOT NULL,
    audit_date DATE NOT NULL,
    regulator TEXT NOT NULL,
    entity TEXT NOT NULL,
    finding_summary TEXT NOT NULL,
    severity_level TEXT NOT NULL,
    action_required TEXT NOT NULL,
    deadline DATE NOT NULL,
    responsible_officer TEXT NOT NULL,
    status TEXT NOT NULL,
    remediation_cost_usd REAL NOT NULL,
    compliance_status TEXT NOT NULL,
    follow_up_date DATE NOT NULL,
    document_reference TEXT NOT NULL,
    notes TEXT,
    audit_score INTEGER NOT NULL,
    risk_category TEXT NOT NULL,
    audit_type TEXT NOT NULL,
    region TEXT NOT NULL
);

INSERT INTO regulatory_audit_event VALUES (601,'AML_Check','2023-02-15','FINRA','Branch001','No suspicious activity detected','Low','None','2023-03-01','JohnDoe','Closed',0.0,'Compliant','2023-04-01','DOC123','None',95,'Low','Compliance','NorthAmerica');
INSERT INTO regulatory_audit_event VALUES (602,'DataPrivacy','2023-04-10','EUCommission','Branch002','Missing consent logs','Medium','Update procedures','2023-05-15','JaneSmith','Open',15000.0,'NonCompliant','2023-06-30','DOC456','Follow up required',78,'Medium','Privacy','Europe');
INSERT INTO regulatory_audit_event VALUES (603,'RiskManagement','2023-06-20','SEC','Branch003','Risk metrics outdated','High','Revise risk model','2023-08-01','MikeLee','Open',50000.0,'NonCompliant','2023-09-15','DOC789','Urgent',62,'High','Risk','Asia');

-- Digital asset log
CREATE TABLE digital_asset_log
(
    asset_id INTEGER PRIMARY KEY,
    asset_type TEXT NOT NULL,
    file_name TEXT NOT NULL,
    file_path TEXT NOT NULL,
    size_bytes INTEGER NOT NULL,
    checksum TEXT NOT NULL,
    created_at DATE NOT NULL,
    modified_at DATE NOT NULL,
    owner_user TEXT NOT NULL,
    access_level TEXT NOT NULL,
    encryption_status TEXT NOT NULL,
    retention_policy TEXT NOT NULL,
    archival_location TEXT NOT NULL,
    last_accessed DATE NOT NULL,
    download_count INTEGER NOT NULL,
    version INTEGER NOT NULL,
    metadata_json TEXT,
    classification TEXT NOT NULL,
    status TEXT NOT NULL,
    tags TEXT
);

INSERT INTO digital_asset_log VALUES (701,'Document','Policy2023.pdf','/policies/2023/','204800','ABCDEF123456','2023-01-10','2023-03-05','admin','Confidential','Encrypted','7years','ArchiveA','2023-04-01',12,3,'{}','Internal','Active','policy,2023');
INSERT INTO digital_asset_log VALUES (702,'Image','Logo.png','/branding/','102400','123456ABCDEF','2022-11-20','2023-02-15','designer','Public','None','5years','ArchiveB','2023-03-20',5,1,'{}','Public','Active','logo,brand');
INSERT INTO digital_asset_log VALUES (703,'Video','LaunchPromo.mp4','/videos/','5242880','FEDCBA654321','2023-04-01','2023-04-10','marketing','Restricted','Encrypted','3years','ArchiveC','2023-04-12',2,1,'{}','Marketing','Active','promo,launch');

-- Fleet driver daily logs
CREATE TABLE fleet_driver_log
(
    log_id INTEGER PRIMARY KEY,
    driver_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,
    date DATE NOT NULL,
    start_odometer_km REAL NOT NULL,
    end_odometer_km REAL NOT NULL,
    driving_hours REAL NOT NULL,
    breaks_count INTEGER NOT NULL,
    incidents_reported TEXT,
    fuel_consumed_liters REAL NOT NULL,
    distance_km REAL NOT NULL,
    average_speed_kph REAL NOT NULL,
    route_id TEXT NOT NULL,
    shift_type TEXT NOT NULL,
    weather_conditions TEXT NOT NULL,
    notes TEXT,
    compliance_flag INTEGER NOT NULL,
    training_completed TEXT NOT NULL,
    violation_count INTEGER NOT NULL,
    status TEXT NOT NULL
);

INSERT INTO fleet_driver_log VALUES (801,501,20001,'2023-04-01',1200.5,1250.7,5.2,2,'None',45.0,50.2,45.3,'R001','Day','Clear','None',1,'Yes',0,'Completed');
INSERT INTO fleet_driver_log VALUES (802,502,20002,'2023-04-01',800.0,845.3,4.8,1,'MinorDelay',38.0,45.3,47.5,'R002','Night','Rain','Traffic jam',1,'Yes',1,'Completed');
INSERT INTO fleet_driver_log VALUES (803,503,20003,'2023-04-01',1500.0,1555.8,6.0,3,'None',55.0,60.5,50.4,'R003','Day','Fog','None',1,'Yes',0,'Completed');