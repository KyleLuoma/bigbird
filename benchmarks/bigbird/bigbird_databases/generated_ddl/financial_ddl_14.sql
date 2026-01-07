-- Warehouse inventory log
CREATE TABLE warehouse_inventory_log (
    log_id INTEGER PRIMARY KEY,
    warehouse_id INTEGER NOT NULL,
    product_sku TEXT NOT NULL,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    quantity_on_hand INTEGER NOT NULL,
    quantity_reserved INTEGER NOT NULL,
    quantity_incoming INTEGER NOT NULL,
    batch_number TEXT NOT NULL,
    received_date DATE NOT NULL,
    expiration_date DATE,
    supplier_id INTEGER NOT NULL,
    location_aisle TEXT NOT NULL,
    location_shelf TEXT NOT NULL,
    temperature_celsius REAL,
    humidity_percent REAL,
    weight_kg REAL,
    volume_cubic_m REAL,
    barcode TEXT,
    last_audit_date DATE,
    audit_status TEXT,
    notes TEXT
);
INSERT INTO warehouse_inventory_log VALUES (1,10,'SKU123','Widget A','Gadgets',100,20,50,'BATCH001','2024-01-10','2025-01-10',200,'A','01',22.5,45.0,12.5,0.03,'123456789012','2024-06-01','OK','Initial stock');
INSERT INTO warehouse_inventory_log VALUES (2,10,'SKU124','Widget B','Gadgets',200,30,70,'BATCH002','2024-02-15','2025-02-15',201,'B','02',20.0,40.0,25.0,0.05,'123456789013','2024-06-01','OK','Restocked');
INSERT INTO warehouse_inventory_log VALUES (3,11,'SKU200','Gizmo X','Widgets',150,10,20,'BATCH010','2024-03-05',NULL,210,'C','03',18.0,35.0,15.0,0.04,'123456789014','2024-06-01','PENDING','Awaiting inspection');

-- Mobile network node status
CREATE TABLE mobile_network_node_status (
    node_id INTEGER PRIMARY KEY,
    region TEXT NOT NULL,
    site_name TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    antenna_type TEXT NOT NULL,
    frequency_band TEXT NOT NULL,
    power_output_watts REAL NOT NULL,
    backhaul_type TEXT NOT NULL,
    ip_address TEXT NOT NULL,
    mac_address TEXT NOT NULL,
    firmware_version TEXT NOT NULL,
    status TEXT NOT NULL,
    last_maintenance DATE,
    uptime_hours INTEGER,
    temperature_celsius REAL,
    cpu_util_percent REAL,
    memory_util_percent REAL,
    connected_devices INTEGER,
    alarm_state TEXT,
    notes TEXT,
    capacity_gbps REAL
);
INSERT INTO mobile_network_node_status VALUES (101,'North','SiteAlpha',45.1234,-93.1234,'Panel','700MHz',150.0,'Fiber','192.168.1.10','AA:BB:CC:DD:EE:01','v1.2.3','Active','2024-05-01',7200,35.0,20.5,45.0,120,'None','Stable','100');
INSERT INTO mobile_network_node_status VALUES (102,'South','SiteBeta',46.5678,-94.5678,'Dish','1800MHz',200.0,'Microwave','192.168.1.11','AA:BB:CC:DD:EE:02','v1.3.0','Active','2024-04-15',5400,33.0,18.0,40.0,95,'Warning','Temperature high','200');
INSERT INTO mobile_network_node_status VALUES (103,'East','SiteGamma',47.9012,-95.9012,'Panel','2600MHz',180.0,'Fiber','192.168.1.12','AA:BB:CC:DD:EE:03','v1.2.8','Inactive','2024-03-20',3000,28.0,10.0,30.0,60,'Critical','Power loss','150');

-- Cybersecurity policy document
CREATE TABLE cybersecurity_policy_document (
    policy_id INTEGER PRIMARY KEY,
    policy_name TEXT NOT NULL,
    version TEXT NOT NULL,
    effective_date DATE NOT NULL,
    review_date DATE,
    owner_department TEXT NOT NULL,
    confidentiality_level TEXT,
    scope TEXT,
    applicability TEXT,
    risk_rating TEXT,
    compliance_requirements TEXT,
    control_mechanisms TEXT,
    approval_status TEXT,
    approved_by TEXT,
    signature_date DATE,
    retention_years INTEGER,
    encryption_required BOOLEAN,
    access_control TEXT,
    audit_trail_required BOOLEAN,
    training_required BOOLEAN,
    notes TEXT,
    document_uri TEXT
);
INSERT INTO cybersecurity_policy_document VALUES (1,'Password Policy','v1.0','2023-01-01','2024-01-01','IT Security','High','All Systems','Global','Medium','ISO27001','Password Complexity','Approved','CISO','2023-01-02',5,1,'RoleBased',1,1,'Enforced across organization','/docs/pwd_policy_v1.pdf');
INSERT INTO cybersecurity_policy_document VALUES (2,'Data Retention Policy','v2.1','2022-06-15','2023-06-15','Data Governance','Medium','All Data Stores','Regional','Low','GDPR','Archival Rules','Approved','Data Officer','2022-06-16',7,0,'RBAC',1,1,'Reviewed quarterly','/docs/data_retention_v2.pdf');
INSERT INTO cybersecurity_policy_document VALUES (3,'Incident Response Policy','v3.3','2021-09-30','2022-09-30','Security Ops','High','Incident Management','Global','High','NIST','Alerting, Containment','Approved','Head of Ops','2021-10-01',10,1,'MFA',1,1,'Updated after major breach','/docs/incident_response_v3.pdf');

-- Legal regulation tracker
CREATE TABLE legal_regulation_tracker (
    regulation_id INTEGER PRIMARY KEY,
    jurisdiction TEXT NOT NULL,
    regulation_name TEXT NOT NULL,
    citation TEXT,
    enactment_date DATE,
    repeal_date DATE,
    status TEXT,
    responsible_agency TEXT,
    summary TEXT,
    impact_score INTEGER,
    compliance_deadline DATE,
    monitoring_frequency TEXT,
    penalty_amount REAL,
    related_sector TEXT,
    amendment_number INTEGER,
    amendment_date DATE,
    public_notice TEXT,
    legal_category TEXT,
    enforcement_mechanism TEXT,
    last_update DATE,
    notes TEXT,
    url TEXT
);
INSERT INTO legal_regulation_tracker VALUES (1,'EU','General Data Protection Regulation','Regulation (EU) 2016/679','2016-04-27',NULL,'Active','European Commission','Data protection and privacy','9','2020-05-25','Annual','20000000','Technology',2,'2018-05-10','GDPR Update 2018','Privacy','Fines', '2024-01-01','Core privacy regulation','https://eur-lex.europa.eu');
INSERT INTO legal_regulation_tracker VALUES (2,'US','Sarbanes-Oxley Act','Public Law 107-204','2002-07-30',NULL,'Active','SEC','Corporate financial accountability','8','2005-01-01','Quarterly','5000000','Finance',1,'2003-02-15','SOX Amend 2003','Accounting','Audits','2023-12-15','Mandates internal controls','https://www.sec.gov');
INSERT INTO legal_regulation_tracker VALUES (3,'CA','Consumer Privacy Act','Bill 123','2020-11-05','2025-12-31','Pending','Office of the Privacy Commissioner','Consumer data rights','7','2022-01-01','Biannual','1000000','Retail',0,NULL,'CPPA Notice','Privacy','Regulatory Review','2023-06-30','Awaiting enactment','https://www.oipc.ca');

-- Customer behavior profile
CREATE TABLE customer_behavior_profile (
    profile_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    segment_name TEXT,
    avg_monthly_spend REAL,
    transaction_count INTEGER,
    online_visits INTEGER,
    app_sessions INTEGER,
    churn_risk_score REAL,
    loyalty_score REAL,
    preferred_channel TEXT,
    preferred_product_category TEXT,
    last_purchase_date DATE,
    avg_purchase_interval_days REAL,
    avg_cart_size INTEGER,
    promo_response_rate REAL,
    feedback_score REAL,
    complaint_count INTEGER,
    referral_count INTEGER,
    lifetime_value REAL,
    risk_level TEXT,
    notes TEXT,
    created_at DATE
);
INSERT INTO customer_behavior_profile VALUES (1,1001,'Premium','1500.75',45,120,80,0.12,0.88,'Online','Electronics','2024-05-20',15.5,5,0.45,4.7,0,3,12000.00,'Low','High spend frequent buyer','2024-01-01');
INSERT INTO customer_behavior_profile VALUES (2,1002,'Budget','300.20',30,80,40,0.65,0.45,'Branch','Groceries','2024-04-10',30.0,10,0.20,3.2,2,0,2500.00,'Medium','Price sensitive occasional shopper','2024-01-10');
INSERT INTO customer_behavior_profile VALUES (3,1003,'Occasional','750.00',12,25,15,0.30,0.60,'Mobile','Travel','2024-03-05',60.0,2,0.35,4.0,1,1,5000.00,'Medium','Trips abroad few times a year','2024-01-15');

-- Enterprise architecture component
CREATE TABLE enterprise_architecture_component (
    component_id INTEGER PRIMARY KEY,
    component_name TEXT NOT NULL,
    type TEXT,
    layer TEXT,
    owner_department TEXT,
    version TEXT,
    status TEXT,
    deployment_date DATE,
    decommission_date DATE,
    dependencies TEXT,
    interfaces TEXT,
    scalability TEXT,
    reliability TEXT,
    security_classification TEXT,
    data_residency TEXT,
    cost_center INTEGER,
    operational_cost REAL,
    compliance_requirements TEXT,
    documentation_uri TEXT,
    last_review DATE,
    notes TEXT,
    criticality_level TEXT
);
INSERT INTO enterprise_architecture_component VALUES (1,'PaymentGateway','Service','Application','Payments','v3.4','Active','2022-02-01',NULL,'AuthService,DBCluster','REST,SOAP','Horizontal','99.9%','High','EU','5000',150000.00,'PCI-DSS','/docs/paygateway_v3.pdf','2024-03-01','Core transaction processor','Critical');
INSERT INTO enterprise_architecture_component VALUES (2,'DataLake','Platform','Data','Analytics','v2.1','Active','2021-07-15',NULL,'IngestionService','Parquet,CSV','Scalable','99.5%','Medium','US','4200',85000.00,'GDPR','/docs/datalake_v2.pdf','2024-02-15','Stores raw event data','High');
INSERT INTO enterprise_architecture_component VALUES (3,'LegacyCRM','Application','Business','Sales','v1.0','Retired','2010-05-10','2023-12-31','LegacyDB','SOAP','Vertical','95%','Low','EU','3000',50000.00,'None','/docs/legacycrm.pdf','2023-12-01','Replaced by new CRM','Medium');

-- Data center power metrics
CREATE TABLE data_center_power_metrics (
    metric_id INTEGER PRIMARY KEY,
    data_center_id INTEGER NOT NULL,
    timestamp DATE NOT NULL,
    total_power_kw REAL,
    backup_power_kw REAL,
    power_usage_effectiveness REAL,
    dc_ratio REAL,
    cooling_power_kw REAL,
    it_load_kw REAL,
    ambient_temp_celsius REAL,
    humidity_percent REAL,
    ups_efficiency REAL,
    generator_runtime_hours INTEGER,
    power_outage_count INTEGER,
    outage_duration_minutes INTEGER,
    renewable_source_percent REAL,
    carbon_intensity_gco2_per_kwh REAL,
    alarm_status TEXT,
    maintenance_window DATE,
    notes TEXT,
    recorded_by TEXT,
    sensor_id INTEGER
);
INSERT INTO data_center_power_metrics VALUES (1,101,'2024-06-01',5000.0,1200.0,1.45,0.15,750.0,4250.0,22.0,45.0,0.98,150,0,0,30.0,0.15,'Normal','2024-06-05','All systems nominal','system','3001');
INSERT INTO data_center_power_metrics VALUES (2,101,'2024-06-02',5050.0,1150.0,1.48,0.16,760.0,4290.0,22.5,44.5,0.97,152,1,15,28.0,0.16,'Warning','2024-06-06','Minor UPS alert','system','3002');
INSERT INTO data_center_power_metrics VALUES (3,102,'2024-06-01',4800.0,1300.0,1.42,0.14,700.0,4100.0,21.0,46.0,0.99,140,0,0,35.0,0.14,'Normal','2024-06-05','All systems nominal','operator','3101');

-- City infrastructure project
CREATE TABLE city_infrastructure_project (
    project_id INTEGER PRIMARY KEY,
    city_name TEXT NOT NULL,
    project_name TEXT NOT NULL,
    project_type TEXT,
    start_date DATE,
    planned_end_date DATE,
    actual_end_date DATE,
    budget_usd REAL,
    spent_usd REAL,
    contractor_id INTEGER,
    status TEXT,
    primary_contact TEXT,
    description TEXT,
    phase TEXT,
    critical_path BOOLEAN,
    risk_level TEXT,
    permits_required INTEGER,
    permits_obtained INTEGER,
    public_impact_score INTEGER,
    sustainability_score REAL,
    notes TEXT,
    url TEXT
);
INSERT INTO city_infrastructure_project VALUES (1,'Springfield','River Bridge Replacement','Construction','2023-01-15','2024-12-31',NULL,25000000.00,18000000.00,501,'In Progress','John Doe','Replace aging bridge over river','Construction',1,'High',5,3,85,78.5,'Expected completion Q4 2024','http://city.gov/riverbridge');
INSERT INTO city_infrastructure_project VALUES (2,'Springfield','Downtown Light Rail','Transportation','2022-06-01','2025-06-30',NULL,50000000.00,22000000.00,502,'Planning','Jane Smith','Build light rail line through downtown','Planning',0,'Medium',7,2,70,82.0,'Environmental review pending','http://city.gov/lightrail');
INSERT INTO city_infrastructure_project VALUES (3,'Shelbyville','New Water Treatment Plant','Utility','2021-09-01','2023-09-30','2023-09-20',12000000.00,11950000.00,503,'Completed','Mike Brown','Upgrade water treatment capacity','Operations',0,'Low',3,3,60,90.0,'Project delivered on time','http://city.gov/waterplant');

-- Pharmaceutical batch record
CREATE TABLE pharmaceutical_batch_record (
    batch_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    dosage_form TEXT,
    strength TEXT,
    manufacturer_id INTEGER,
    production_date DATE,
    expiration_date DATE,
    lot_number TEXT,
    serial_number TEXT,
    quantity_produced INTEGER,
    quantity_distributed INTEGER,
    quality_test_passed BOOLEAN,
    qc_report_uri TEXT,
    storage_temperature_celsius REAL,
    storage_humidity_percent REAL,
    distribution_region TEXT,
    regulatory_status TEXT,
    recall_flag BOOLEAN,
    recall_date DATE,
    notes TEXT,
    created_by TEXT,
    last_updated DATE
);
INSERT INTO pharmaceutical_batch_record VALUES (10001,'PainRelief','Tablet','500mg',2001,'2024-01-10','2026-01-10','LR202401','SN001',100000,85000,1,'/qc/reports/10001.pdf',25.0,60.0,'NorthAmerica','Approved',0,NULL,'First batch of 2024','QA','2024-05-01');
INSERT INTO pharmaceutical_batch_record VALUES (10002,'AllergyEase','Capsule','10mg',2002,'2023-11-20','2025-11-20','LR202311','SN002',50000,48000,1,'/qc/reports/10002.pdf',22.0,55.0,'Europe','Approved',0,NULL,'Stable batch','QA','2024-04-20');
INSERT INTO pharmaceutical_batch_record VALUES (10003,'SleepWell','Syrup','5mg/5ml',2003,'2024-03-05','2025-03-05','LR202403','SN003',30000,25000,0,'/qc/reports/10003.pdf',20.0,50.0,'Asia','Pending',1,'2024-06-15','Failed impurity test','QC','2024-06-01');

-- Renewable energy farm status
CREATE TABLE renewable_energy_farm_status (
    farm_id INTEGER PRIMARY KEY,
    farm_name TEXT NOT NULL,
    farm_type TEXT,
    location TEXT,
    capacity_mw REAL,
    current_output_mw REAL,
    capacity_factor REAL,
    average_wind_speed REAL,
    solar_irradiance REAL,
    temperature_celsius REAL,
    operational_status TEXT,
    last_inspection DATE,
    maintenance_due DATE,
    fault_count INTEGER,
    total_energy_generated_mwh REAL,
    grid_connection_status TEXT,
    ownership TEXT,
    subsidy_amount REAL,
    carbon_offset_tons REAL,
    notes TEXT,
    reported_by TEXT,
    report_date DATE
);
INSERT INTO renewable_energy_farm_status VALUES (1,'Sunrise Wind Farm','Wind','County A',150.0,120.5,0.85,8.5,NULL,15.0,'Operational','2024-04-10','2024-10-10',2,1050000.0,'Connected','Private','5000000.00','12000.5','Running within expected parameters','Operator','2024-06-01');
INSERT INTO renewable_energy_farm_status VALUES (2,'Green Valley Solar','Solar','County B',80.0,65.0,0.75,NULL,2000.0,22.0,'Operational','2024-03-20','2024-09-20',0,420000.0,'Connected','Public','3000000.00','8000.0','Peak production during summer','Operator','2024-06-01');
INSERT INTO renewable_energy_farm_status VALUES (3,'Hillside Hybrid','Hybrid','County C',200.0,150.0,0.80,7.2,1500.0,18.0,'Maintenance','2024-02-15','2024-08-15',5,1500000.0,'Disconnected','Joint Venture','7500000.00','15000.0','Scheduled maintenance ongoing','Operator','2024-06-01');