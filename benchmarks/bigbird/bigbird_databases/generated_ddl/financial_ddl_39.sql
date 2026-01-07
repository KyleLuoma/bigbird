-- Tax audit records for fiscal compliance
CREATE TABLE tax_audit_record (
    audit_id INTEGER PRIMARY KEY,
    fiscal_year INTEGER NOT NULL,
    entity_type TEXT NOT NULL,
    entity_id INTEGER NOT NULL,
    audit_start_date DATE NOT NULL,
    audit_end_date DATE NOT NULL,
    auditor_name TEXT NOT NULL,
    findings TEXT NOT NULL,
    total_penalty REAL NOT NULL,
    status TEXT NOT NULL,
    notes TEXT,
    reviewed_by TEXT,
    review_date DATE,
    correction_deadline DATE,
    adjusted_amount REAL,
    compliance_score INTEGER,
    sampling_method TEXT,
    risk_level TEXT,
    audit_type TEXT,
    jurisdiction TEXT
);

INSERT INTO tax_audit_record VALUES (1,2022,'Corporation',101,'2022-01-15','2022-02-10','Alice Smith','Late filing, missing receipts',15000.00,'Closed','Reviewed with legal', 'John Doe','2022-02-12','2022-03-01',14500.00,85,'Random','Medium','Financial','State');
INSERT INTO tax_audit_record VALUES (2,2023,'Individual',202,'2023-03-05','2023-03-20','Bob Johnson','Underreported income',5000.00,'Open','Pending response',NULL,NULL,NULL,NULL,NULL,'Targeted','High','Income','Federal');
INSERT INTO tax_audit_record VALUES (3,2021,'Partnership',303,'2021-07-01','2021-07-25','Carol Lee','Incorrect expense classification',2000.00,'Closed','All issues resolved','Emily Clark','2021-07-27','2021-08-15',1800.00,92,'Stratified','Low','Corporate','State');

-- Sustainability initiatives undertaken by the organization
CREATE TABLE sustainability_initiative (
    initiative_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    department TEXT NOT NULL,
    budget REAL NOT NULL,
    target_metric TEXT NOT NULL,
    target_value REAL NOT NULL,
    actual_value REAL,
    status TEXT NOT NULL,
    sponsor TEXT,
    description TEXT,
    responsible_manager TEXT,
    impact_area TEXT,
    carbon_reduction_tons REAL,
    water_savings_cubic_meters REAL,
    waste_reduction_percent REAL,
    stakeholder_engagement_level TEXT,
    reporting_frequency TEXT,
    last_report_date DATE
);

INSERT INTO sustainability_initiative VALUES (1,'Solar Rooftop Project','2021-04-01','2023-04-01','Facilities',250000.00,'EnergyGeneratedMWh',5000.00,4800.00,'Completed','Green Fund','Installation of 1MW solar panels','Laura Green','Energy',2500.00,0.00,0.0,'High','Quarterly','2023-03-30');
INSERT INTO sustainability_initiative VALUES (2,'Paperless Office','2022-01-15',NULL,'Administration',75000.00,'PaperSavedKg',200000.00,NULL,'InProgress','Eco Initiative','Transition to digital workflows','Mark Davis','Operations',0.00,0.00,30.0,'Medium','Biannual','2022-12-15');
INSERT INTO sustainability_initiative VALUES (3,'Water Conservation','2020-06-01','2022-06-01','Operations',120000.00,'WaterSavedCubicMeters',150000.00,155000.00,'Completed','Utility Partner','Upgrade of fixtures and recycling','Susan Lee','Water',0.00,150000.00,0.0,'High','Annual','2022-05-30');

-- Inventory of urban green spaces
CREATE TABLE urban_green_space_inventory (
    space_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    area_sq_m REAL NOT NULL,
    location TEXT NOT NULL,
    city TEXT NOT NULL,
    district_id INTEGER NOT NULL,
    tree_count INTEGER,
    bench_count INTEGER,
    lighting_type TEXT,
    maintenance_schedule TEXT,
    last_maintenance_date DATE,
    soil_type TEXT,
    irrigation_type TEXT,
    flora_diversity_index REAL,
    fauna_presence TEXT,
    accessibility_rating INTEGER,
    public_usage_daily INTEGER,
    green_certification TEXT,
    funding_source TEXT,
    notes TEXT
);

INSERT INTO urban_green_space_inventory VALUES (1,'Central Park','25000.5','5th Ave','Metropolis',10,350,45,'LED','Monthly','2022-11-10','Loam','Sprinkler',0.85,'Squirrels',4,1200,'Gold','City Budget','Renovated 2021');
INSERT INTO urban_green_space_inventory VALUES (2,'Riverside Green','8000.0','Riverbank','Metropolis',12,120,20,'Solar','Quarterly','2022-09-05','Silt','Drip',0.70,'Birds',5,600,'Silver','Private Donation','Planned planting of native species');
INSERT INTO urban_green_space_inventory VALUES (3,'Eastside Gardens','15000.3','East St','Metropolis',14,200,30,'LED','Monthly','2022-10-20','Clay','Manual',0.78,'Insects',3,900,'Bronze','Grant','Community volunteer program');

-- Maintenance logs for medical devices
CREATE TABLE medical_device_maintenance (
    maintenance_id INTEGER PRIMARY KEY,
    device_id INTEGER NOT NULL,
    device_type TEXT NOT NULL,
    hospital_id INTEGER NOT NULL,
    maintenance_date DATE NOT NULL,
    technician_name TEXT NOT NULL,
    maintenance_type TEXT NOT NULL,
    parts_replaced TEXT,
    cost REAL,
    downtime_minutes INTEGER,
    next_scheduled_date DATE,
    compliance_status TEXT,
    warranty_status TEXT,
    calibration_required INTEGER,
    firmware_version TEXT,
    service_contract_id INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT
);

INSERT INTO medical_device_maintenance VALUES (1,1001,'MRI Scanner',501,'2022-08-15','Thomas Reed','Preventive','Cooling Fan',1200.00,45,'2023-08-15','Compliant','Valid',1,'v3.2',3001,'All parameters within range','2022-08-15','2022-08-15','Completed');
INSERT INTO medical_device_maintenance VALUES (2,1002,'Ventilator',502,'2023-01-10','Megan Fox','Corrective','Pressure Valve',800.00,30,'2023-07-10','Compliant','Expired',0,'v2.5',3002,'Replaced faulty valve','2023-01-10','2023-01-10','Completed');
INSERT INTO medical_device_maintenance VALUES (3,1003,'X-ray Machine',503,'2022-12-05','Carlos Mendoza','Calibration',NULL,0,0,'2023-12-05','Compliant','Valid',1,'v1.9',3003,'Routine calibration performed','2022-12-05','2022-12-05','Completed');

-- Cooling system logs for data centers
CREATE TABLE data_center_cooling_log (
    log_id INTEGER PRIMARY KEY,
    data_center_id INTEGER NOT NULL,
    timestamp TEXT NOT NULL,
    temperature_c REAL NOT NULL,
    humidity_percent REAL,
    coolant_flow_rate_lpm REAL,
    chillers_active INTEGER,
    cooling_units_active INTEGER,
    power_consumption_kw REAL,
    alarm_status TEXT,
    maintenance_flag INTEGER,
    operator_name TEXT,
    set_point_c REAL,
    outside_temp_c REAL,
    heat_exhaust_c REAL,
    fan_speed_rpm INTEGER,
    sensor_id INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO data_center_cooling_log VALUES (1,10,'2022-11-01 08:00:00',22.5,45.0,350.0,2,4,120.5,'Normal',0,'Anna Lee',23.0,15.0,5.0,1500,101,'Routine operation','2022-11-01 08:05:00','2022-11-01 08:05:00');
INSERT INTO data_center_cooling_log VALUES (2,10,'2022-11-01 12:00:00',23.0,47.0,360.0,2,4,122.0,'Normal',0,'Anna Lee',23.0,18.0,5.5,1520,101,'Slight rise in temp','2022-11-01 12:05:00','2022-11-01 12:05:00');
INSERT INTO data_center_cooling_log VALUES (3,10,'2022-11-01 16:00:00',24.2,50.0,380.0,3,4,130.0,'Warning',1,'Anna Lee',23.0,20.0,6.0,1600,101,'Chiller engaged','2022-11-01 16:05:00','2022-11-01 16:05:00');

-- Fulfillment details for e‑commerce orders
CREATE TABLE ecommerce_order_fulfillment (
    fulfillment_id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL,
    warehouse_id INTEGER NOT NULL,
    picker_id INTEGER NOT NULL,
    pick_start_time TEXT,
    pick_end_time TEXT,
    items_picked INTEGER,
    weight_kg REAL,
    shipping_method TEXT,
    carrier TEXT,
    tracking_number TEXT,
    dispatch_date DATE,
    expected_delivery_date DATE,
    actual_delivery_date DATE,
    delivery_status TEXT,
    packaged_by INTEGER,
    packaging_type TEXT,
    cost REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO ecommerce_order_fulfillment VALUES (1,5001,20,301,'2022-10-01 09:15:00','2022-10-01 09:45:00',3,2.5,'Ground','FastShip','FS123456789','2022-10-01','2022-10-05',NULL,'Picked','Box','12.99','Handled with care','2022-10-01 09:50:00','2022-10-01 09:50:00');
INSERT INTO ecommerce_order_fulfillment VALUES (2,5002,21,302,'2022-10-02 11:00:00','2022-10-02 11:30:00',1,0.8,'Air','AirExpress','AE987654321','2022-10-02','2022-10-04','2022-10-04','Delivered','303','Envelope','5.50','Express delivery','2022-10-02 11:35:00','2022-10-04 15:20:00');
INSERT INTO ecommerce_order_fulfillment VALUES (3,5003,20,303,'2022-10-03 14:20:00','2022-10-03 14:55:00',5,7.0,'Ground','FastShip','FS112233445','2022-10-03','2022-10-08',NULL,'InTransit','301','Box','18.75','Pending delivery','2022-10-03 15:00:00','2022-10-03 15:00:00');

-- Service contracts with telecom providers
CREATE TABLE telecom_service_contract (
    contract_id INTEGER PRIMARY KEY,
    provider_name TEXT NOT NULL,
    service_type TEXT NOT NULL,
    contract_start DATE NOT NULL,
    contract_end DATE NOT NULL,
    monthly_fee REAL NOT NULL,
    bandwidth_gbps REAL,
    sla_uptime_percent REAL,
    support_contact TEXT,
    termination_fee REAL,
    renewal_option TEXT,
    auto_renew INTEGER,
    payment_terms TEXT,
    discount_percent REAL,
    contract_status TEXT,
    region TEXT,
    account_manager TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO telecom_service_contract VALUES (1,'NetLink','Internet','2021-01-01','2024-12-31',2500.00,10.0,99.9,'support@netlink.com',50000.00,'5-year','1','Net 30','10.0','Active','North','Emily Clark','Preferred provider','2021-01-01','2022-06-15');
INSERT INTO telecom_service_contract VALUES (2,'VoiceCo','VoIP','2022-05-15','2025-05-14',1200.00,2.0,99.5,'voip@voiceco.com',20000.00','Annual','0','Quarterly','5.0','Pending','South','David Kim','Negotiation in progress','2022-05-15','2022-05-15');
INSERT INTO telecom_service_contract VALUES (3,'DataStream','Dedicated Line','2020-09-01','2023-08-31',4000.00,5.0,99.8','contact@datastream.com',30000.00','Automatic','1','Annual','7.5','Expired','East','Linda Patel','Renewal scheduled','2020-09-01','2022-12-01');

-- Issuance records for renewable energy certificates
CREATE TABLE renewable_energy_certificate_issuance (
    certificate_id INTEGER PRIMARY KEY,
    plant_id INTEGER NOT NULL,
    plant_name TEXT NOT NULL,
    energy_type TEXT NOT NULL,
    generation_date DATE NOT NULL,
    megawatt_hours REAL NOT NULL,
    certificate_number TEXT NOT NULL,
    issued_by TEXT NOT NULL,
    issue_date DATE NOT NULL,
    expiry_date DATE,
    buyer_name TEXT,
    price_per_mwh REAL,
    total_price REAL,
    status TEXT,
    verification_method TEXT,
    regulator TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    transaction_id INTEGER,
    audit_status TEXT
);

INSERT INTO renewable_energy_certificate_issuance VALUES (1,2001,'Sunnyvale Solar','Solar','2022-06-30',1500.00,'CERT20220630A','RenewableAuthority','2022-07-01','2027-06-30','GreenEnergy Corp',30.00,45000.00,'Issued','ThirdParty','StateRenewables','First batch','2022-07-01','2022-07-01',50001,'Verified');
INSERT INTO renewable_energy_certificate_issuance VALUES (2,2002,'RiverWind Farm','Wind','2022-07-15',2000.00,'CERT20220715B','RenewableAuthority','2022-07-20','2027-07-15','EcoPower Ltd',28.00,56000.00,'Issued','Internal','StateRenewables','Wind generation','2022-07-20','2022-07-20',50002,'Verified');
INSERT INTO renewable_energy_certificate_issuance VALUES (3,2003,'HillHydro Plant','Hydro','2022-08-01',2500.00,'CERT20220801C','RenewableAuthority','2022-08-05','2027-08-01','HydroInvest','32.00',80000.00,'Pending','ThirdParty','StateRenewables','Awaiting buyer','2022-08-05','2022-08-05',50003,'Pending');

-- Schedule for public art installation projects
CREATE TABLE public_art_installation_schedule (
    schedule_id INTEGER PRIMARY KEY,
    artwork_title TEXT NOT NULL,
    artist_name TEXT NOT NULL,
    installation_start DATE NOT NULL,
    installation_end DATE NOT NULL,
    location TEXT NOT NULL,
    city TEXT NOT NULL,
    district_id INTEGER NOT NULL,
    material TEXT,
    dimensions_cm TEXT,
    lighting_requirements TEXT,
    maintenance_responsibility TEXT,
    budget REAL,
    sponsor TEXT,
    status TEXT,
    public_accessible INTEGER,
    opening_event_date DATE,
    visitor_capacity INTEGER,
    security_level TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO public_art_installation_schedule VALUES (1,'Rhythm of Light','Mia Torres','2022-09-01','2022-09-10','Central Plaza','Metropolis',10,'LED Panels','200x300','Spotlights','CityWorks',50000.00,'Arts Council','Completed',1,'2022-09-12',5000,'Medium','Well received','2022-08-20','2022-09-15');
INSERT INTO public_art_installation_schedule VALUES (2,'Silent Echo','Liam Patel','2023-03-15','2023-03-25','River Walk','Metropolis',12,'Bronze','150x200','None','River Authority',30000.00,'Private Donor','InProgress',1,NULL,2000,'Low','Awaiting final permits','2023-02-28','2023-03-01');
INSERT INTO public_art_installation_schedule VALUES (3,'Sky Mirror','Ava Nguyen','2022-11-05','2022-11-20','Rooftop Garden','Metropolis',14,'Stainless Steel','250x250','LED Strip','Building Management',75000.00,'Corporate Sponsor','Planned',0,NULL,0,'High','Design phase','2022-10-01','2022-10-15');

-- Agronomy field trial data
CREATE TABLE agronomy_field_trial (
    trial_id INTEGER PRIMARY KEY,
    trial_name TEXT NOT NULL,
    crop_type TEXT NOT NULL,
    field_id INTEGER NOT NULL,
    sowing_date DATE NOT NULL,
    harvest_date DATE,
    plot_size_hectares REAL,
    fertilizer_type TEXT,
    fertilizer_amount_kg_per_ha REAL,
    irrigation_schedule TEXT,
    pesticide_used TEXT,
    yield_kg_per_hectare REAL,
    soil_ph REAL,
    soil_moisture_percent REAL,
    weather_conditions TEXT,
    trial_status TEXT,
    researcher_name TEXT,
    funding_source TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    data_quality_score INTEGER
);

INSERT INTO agronomy_field_trial VALUES (1,'Winter Wheat Yield','Wheat',301,'2022-10-01','2023-05-15',2.5,'NPK',120.0,'Weekly','None',4800.0,6.5,22.0,'Cold, rain','Completed','Dr. John Miller','AgriFund','Successful trial','2022-10-01','2023-06-01',95);
INSERT INTO agronomy_field_trial VALUES (2,'Drought Tolerant Corn','Corn',302,'2023-03-10',NULL,1.8,'Urea',100.0,'Biweekly','Herbicide X',3500.0,6.2,18.0,'Hot, dry','Ongoing','Dr. Sarah Lee','GovGrant','Monitoring soil moisture','2023-03-10','2023-07-01',88);
INSERT INTO agronomy_field_trial VALUES (3,'Organic Soybean Study','Soybean',303,'2022-04-20','2022-10-10',3.0,'Compost',80.0,'Weekly','BioPesticide Y',2800.0,6.8,20.5,'Mild, wet','Completed','Dr. Ahmed Khan','Private Sponsor','Yield lower than expected','2022-04-20','2022-10-15',80);