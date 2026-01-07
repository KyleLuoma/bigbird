-- Table storing customer reward tier definitions
CREATE TABLE customer_reward_tier
(
    tier_id INTEGER PRIMARY KEY,
    tier_name TEXT NOT NULL,
    points_required INTEGER NOT NULL,
    discount_percent REAL,
    free_shipping_flag INTEGER,
    priority_support_flag INTEGER,
    annual_fee REAL,
    bonus_points INTEGER,
    welcome_gift TEXT,
    expiration_days INTEGER,
    description TEXT,
    created_date DATE,
    updated_date DATE,
    is_active INTEGER,
    max_members INTEGER,
    tier_level INTEGER,
    required_visits INTEGER,
    average_spend REAL,
    referral_bonus INTEGER,
    cashback_rate REAL,
    upgrade_conditions TEXT,
    downgrade_conditions TEXT,
    marketing_segment TEXT,
    loyalty_score REAL,
    reward_points_multiplier REAL,
    special_event_access INTEGER,
    access_to_exclusive_content INTEGER,
    default_currency TEXT,
    region_code TEXT,
    notes TEXT
);
INSERT INTO customer_reward_tier VALUES (1,'Bronze',0,0,0,0,0,100,'Keychain',365,'Basic tier','2022-01-01','2022-01-01',1,10000,1,5,0,0,'','', 'MassMarket',0.5,1.0,0,0,'USD','US','');
INSERT INTO customer_reward_tier VALUES (2,'Silver',5000,5,1,1,20,500,'Mug',730,'Intermediate tier','2022-01-01','2022-01-01',1,5000,2,10,500,2,'SilverUpgrade','SilverDowngrade','MidScale',0.7,1.2,1,1,'USD','US','');
INSERT INTO customer_reward_tier VALUES (3,'Gold',15000,10,1,1,50,1500,'Watch',1095,'Premium tier','2022-01-01','2022-01-01',1,1000,3,20,1500,5,'GoldUpgrade','GoldDowngrade','HighEnd',0.9,1.5,1,1,'USD','US','');

-- Registry of digital certificates issued to entities
CREATE TABLE digital_certificate_registry
(
    cert_id INTEGER PRIMARY KEY,
    entity_type TEXT NOT NULL,
    entity_id INTEGER NOT NULL,
    cert_type TEXT NOT NULL,
    issue_date DATE,
    expiry_date DATE,
    public_key TEXT,
    signature_algorithm TEXT,
    issuer TEXT,
    status TEXT,
    revocation_reason TEXT,
    revocation_date DATE,
    serial_number TEXT,
    version INTEGER,
    checksum TEXT,
    key_usage TEXT,
    extended_key_usage TEXT,
    subject_alternative_name TEXT,
    organization TEXT,
    organizational_unit TEXT,
    locality TEXT,
    state TEXT,
    country TEXT,
    notes TEXT
);
INSERT INTO digital_certificate_registry VALUES (101,'Server',2001,'SSL','2023-03-01','2025-03-01','AAAAB3NzaC1yc2EAAAADAQABAAABAQ','RSA','RootCA','Active',NULL,NULL,'SN001',3,'ABC123','DigitalSignature','TLSWebServerAuth','www.example.com','ExampleCorp','IT','MetroCity','MetroState','US','');
INSERT INTO digital_certificate_registry VALUES (102,'User',3005,'CodeSigning','2022-11-15','2024-11-15','AAAAB3NzaC1yc2EAAAADAQABAAABAQD','ECDSA','RootCA','Revoked','KeyCompromise','2023-06-10','SN002',2,'DEF456','CodeSigning','CodeSigning','app.example.com','ExampleSoft','Development','TechTown','TechState','US','');
INSERT INTO digital_certificate_registry VALUES (103,'Device',4002,'IoT','2024-01-10','2026-01-10','AAAAB3NzaC1yc2EAAAADAQABAAABAQC','EdDSA','RootCA','Active',NULL,NULL,'SN003',1,'GHI789','DataEncipherment','IoTDeviceAuth','device.example.com','IoTInc','R&D','InnovationPark','InnovationState','US','');

-- Environmental permits issued to facilities
CREATE TABLE environmental_permit
(
    permit_id INTEGER PRIMARY KEY,
    permit_type TEXT,
    issue_date DATE,
    expiry_date DATE,
    issuing_authority TEXT,
    facility_name TEXT,
    facility_address TEXT,
    latitude REAL,
    longitude REAL,
    pollutant_type TEXT,
    max_emission_limit REAL,
    monitoring_frequency TEXT,
    compliance_status TEXT,
    penalty_amount REAL,
    remediation_required TEXT,
    inspection_date DATE,
    inspector_name TEXT,
    notes TEXT,
    renewable_energy_percent REAL,
    waste_recycling_rate REAL,
    carbon_offset_credits REAL,
    water_usage_limit REAL,
    air_quality_index_threshold INTEGER,
    emission_sampling_method TEXT,
    report_submission_deadline DATE,
    permit_status TEXT,
    amendment_number INTEGER,
    public_hearing_required INTEGER,
    jurisdiction_code TEXT,
    contact_email TEXT
);
INSERT INTO environmental_permit VALUES (5001,'Air','2021-05-01','2026-05-01','EPA','Alpha Plant','123 Green St','40.7128','-74.0060','SO2',150.5,'Quarterly','Compliant',0,'None','2022-04-15','John Doe','','15','80','2500','5000','45','GrabSample','2022-05-01','Active',2,0,'NY','contact@alphaplant.com');
INSERT INTO environmental_permit VALUES (5002,'Water','2020-09-15','2025-09-15','StateWaterBoard','Beta Facility','456 River Rd','34.0522','-118.2437','Lead',0.02,'Monthly','NonCompliant',50000,'TreatmentUpgrade','2021-11-20','Jane Smith','Excess discharge observed','0','60','0','10000','30','Continuous','2021-12-01','Suspended',1,1,'CA','env@betafacility.com');
INSERT INTO environmental_permit VALUES (5003,'Waste','2022-01-20','2027-01-20','DeptOfEnvironment','Gamma Site','789 Waste Ave','41.8781','-87.6298','Hazardous',5,'Annual','Compliant',0,'None','2023-02-10','Alice Johnson','','25','70','500','2000','50','Manual','2023-03-01','Active',0,0,'IL','compliance@gammasite.com');

-- Inventory details for logistics hubs
CREATE TABLE logistics_hub_inventory
(
    hub_id INTEGER,
    hub_name TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    inventory_id INTEGER,
    product_sku TEXT,
    product_name TEXT,
    category TEXT,
    quantity_on_hand INTEGER,
    unit_of_measure TEXT,
    location_zone TEXT,
    pallet_number TEXT,
    batch_number TEXT,
    expiration_date DATE,
    supplier_id INTEGER,
    supplier_name TEXT,
    received_date DATE,
    last_audit_date DATE,
    temperature_control_flag INTEGER,
    humidity_control_flag INTEGER,
    hazard_class TEXT,
    insurance_coverage_amount REAL,
    valuation REAL,
    custodian_employee_id INTEGER,
    notes TEXT,
    last_updated_timestamp DATE,
    audit_status TEXT,
    reorder_level INTEGER,
    PRIMARY KEY (hub_id, inventory_id)
);
INSERT INTO logistics_hub_inventory VALUES (10,'North Hub','100 North St','Northcity','NC','27514','USA',10001,'SKU001','Widget A','Gadgets',500,'PCS','A1','PAL001','BATCH01','2024-12-31',200,'SupplyCo','2023-01-10','2023-06-01',1,0,'None',10000,12000,301,'','2023-06-02','Passed',100);
INSERT INTO logistics_hub_inventory VALUES (10,'North Hub','100 North St','Northcity','NC','27514','USA',10002,'SKU002','Widget B','Gadgets',250,'PCS','A2','PAL002','BATCH02','2025-03-15',201,'PartsInc','2023-02-20','2023-07-15',0,1,'Flammable',15000,18000,302,'Check seal','2023-07-16','Passed',50);
INSERT INTO logistics_hub_inventory VALUES (11,'South Hub','200 South Ave','Southtown','SC','29001','USA',20001,'SKU101','Gadget X','Electronics',1200,'PCS','B1','PAL101','BATCH11','2025-08-20',300,'ElectroSuppliers','2023-03-05','2023-08-10',1,1,'None',20000,25000,401,'','2023-08-11','Passed',200);

-- Vehicle telematics data
CREATE TABLE vehicle_telematics
(
    vehicle_id INTEGER PRIMARY KEY,
    vin TEXT,
    make TEXT,
    model TEXT,
    year INTEGER,
    license_plate TEXT,
    driver_id INTEGER,
    gps_latitude REAL,
    gps_longitude REAL,
    speed_kph REAL,
    odometer_km REAL,
    fuel_level_percent REAL,
    engine_rpm REAL,
    coolant_temp_c REAL,
    battery_voltage REAL,
    tire_pressure_front_left REAL,
    tire_pressure_front_right REAL,
    tire_pressure_rear_left REAL,
    tire_pressure_rear_right REAL,
    acceleration_g REAL,
    braking_g REAL,
    last_service_date DATE,
    next_service_due DATE,
    insurance_policy_number TEXT,
    registration_state TEXT,
    telematics_device_id TEXT,
    firmware_version TEXT,
    data_timestamp DATE,
    connectivity_status TEXT,
    geofence_id INTEGER,
    violation_code TEXT,
    notes TEXT
);
INSERT INTO vehicle_telematics VALUES (501,'1HGCM82633A004352','Honda','Accord',2019,'ABC1234',1001,40.7128,-74.0060,80.5,45000,75,2500,90,12.6,32,32,30,30,0.3,0.1,'2022-09-15','2023-09-15','POL12345','NY','DEV001','v1.2','2023-03-01','Online',12,'SPD001','');
INSERT INTO vehicle_telematics VALUES (502,'2FTRX18W1XCA01234','Ford','F-150',2020,'XYZ5678',1002,34.0522,-118.2437,65.2,37000,60,2200,85,12.4,31,31,29,29,0.25,0.05,'2022-06-10','2023-06-10','POL67890','CA','DEV002','v1.3','2023-03-02','Online',8,'HAR001','');
INSERT INTO vehicle_telematics VALUES (503,'3C6UR5HL5EG123456','RAM','2500',2021,'LMN3456',1003,41.8781,-87.6298,70.0,18000,80,2400,88,12.5,33,33,31,31,0.28,0.08,'2022-12-01','2023-12-01','POL54321','IL','DEV003','v1.4','2023-03-03','Online',5,'IDL001','');

-- Market segmentation definitions
CREATE TABLE market_segmentation
(
    segment_id INTEGER PRIMARY KEY,
    segment_name TEXT,
    description TEXT,
    target_age_min INTEGER,
    target_age_max INTEGER,
    income_min REAL,
    income_max REAL,
    household_size_min INTEGER,
    household_size_max INTEGER,
    urbanization_level TEXT,
    primary_channel TEXT,
    secondary_channel TEXT,
    discount_sensitivity REAL,
    brand_loyalty_score REAL,
    purchase_frequency_per_year REAL,
    avg_transaction_value REAL,
    preferred_product_category TEXT,
    social_media_platform TEXT,
    mobile_usage_percent REAL,
    email_open_rate REAL,
    churn_rate REAL,
    lifetime_value REAL,
    acquisition_cost REAL,
    retention_strategy TEXT,
    campaign_budget REAL,
    segment_status TEXT,
    last_review_date DATE,
    analyst_name TEXT,
    notes TEXT,
    region_code TEXT
);
INSERT INTO market_segmentation VALUES (1,'Young Professionals','Urban millennials',22,35,40000,90000,1,2,'Urban','Online','Social Media',0.8,0.6,12,150,'Electronics','Instagram',85,30,5,18000,2000,'LoyaltyProgram',50000,'Active','2023-01-15','Alice Brown','','NE');
INSERT INTO market_segmentation VALUES (2,'Retirees','Suburban seniors',65,80,30000,60000,2,3,'Suburban','Mail','Phone',0.5,0.9,4,80,'Health','Facebook',45,20,10,12000,1500,'PersonalAdvisor',30000,'Active','2023-02-10','Bob Smith','','MW');
INSERT INTO market_segmentation VALUES (3,'Families','Mid‑range families',30,45,50000,110000,3,5,'Urban','Online','TV',0.7,0.7,8,200,'Home Goods','Pinterest',70,25,7,25000,2500,'BundledOffers',40000,'Active','2023-03-05','Carol Lee','','SW');

-- Insurance underwriting data
CREATE TABLE insurance_underwriting
(
    policy_id INTEGER PRIMARY KEY,
    policy_number TEXT,
    product_type TEXT,
    effective_date DATE,
    expiry_date DATE,
    insured_name TEXT,
    insured_address TEXT,
    insured_city TEXT,
    insured_state TEXT,
    insured_zip TEXT,
    insured_country TEXT,
    risk_score REAL,
    premium_amount REAL,
    deductible_amount REAL,
    coverage_limit REAL,
    co_insurance_percent REAL,
    underwriting_status TEXT,
    underwriter_id INTEGER,
    underwriting_notes TEXT,
    payment_mode TEXT,
    installment_amount REAL,
    total_installments INTEGER,
    previous_claims_count INTEGER,
    fraud_indicator INTEGER,
    reinsurance_required_flag INTEGER,
    reinsurance_provider TEXT,
    reinsurance_share_percent REAL,
    regulatory_approval_flag INTEGER,
    approval_date DATE,
    last_update_timestamp DATE,
    policy_status TEXT,
    broker_id INTEGER,
    broker_name TEXT,
    commission_percent REAL,
    notes TEXT,
    audit_trail TEXT
);
INSERT INTO insurance_underwriting VALUES (1001,'POL1001','Auto','2023-01-01','2024-01-01','John Doe','123 Main St','Springfield','IL','62704','USA',0.35,1200,500,25000,80,'Approved',501,'All checks passed','Monthly',100,12,0,0,0,NULL,NULL,0,NULL,'2023-01-02','2023-02-01','Active',301,'BestBroker',5,'','');
INSERT INTO insurance_underwriting VALUES (1002,'POL1002','Home','2022-06-15','2023-06-15','Jane Smith','456 Oak Ave','Lincoln','NE','68508','USA',0.45,950,1000,150000,90,'Pending',502,'Pending further documents','Quarterly',237.5,4,1,0,1,'ReinsCo','20',1,'2022-07-01','2022-07-15','Pending',302,'SecureBroker',4,'','');
INSERT INTO insurance_underwriting VALUES (1003,'POL1003','Life','2021-09-01','2026-09-01','Acme Corp','789 Pine Rd','Columbus','OH','43215','USA',0.25,25000,2000,500000,95,'Approved',503,'No issues','Annual',25000,1,0,0,0,NULL,NULL,0,NULL,'2021-09-02','2021-09-10','Active',303,'LegacyBroker',6,'','');

-- Employee benefits enrollment
CREATE TABLE employee_benefits
(
    employee_id INTEGER,
    benefit_plan_id INTEGER,
    plan_name TEXT,
    enrollment_date DATE,
    coverage_start_date DATE,
    coverage_end_date DATE,
    benefit_type TEXT,
    provider_name TEXT,
    provider_contact TEXT,
    monthly_premium REAL,
    employee_contribution REAL,
    employer_contribution REAL,
    deductible_amount REAL,
    out_of_pocket_max REAL,
    coverage_level TEXT,
    eligibility_status TEXT,
    dependent_coverage_flag INTEGER,
    dependent_count INTEGER,
    beneficiary_name TEXT,
    beneficiary_relationship TEXT,
    beneficiary_date_of_birth DATE,
    beneficiary_contact TEXT,
    plan_status TEXT,
    last_modified_date DATE,
    notes TEXT,
    plan_admin_contact TEXT,
    plan_admin_email TEXT,
    plan_admin_phone TEXT,
    enrollment_status TEXT,
    termination_date DATE,
    reason_for_termination TEXT,
    grace_period_days INTEGER,
    rollover_allowed_flag INTEGER,
    taxable_amount REAL,
    pre_tax_amount REAL,
    post_tax_amount REAL,
    contribution_frequency TEXT,
    plan_document_url TEXT,
    compliance_status TEXT,
    PRIMARY KEY (employee_id, benefit_plan_id)
);
INSERT INTO employee_benefits VALUES (10001,1,'Health Basic','2022-01-15','2022-02-01','2023-01-31','Health','HealthCo','555-1111',200,100,100,500,2000,'Standard','Eligible',1,2,'Emily Doe','Spouse','1990-05-12','555-2222','Active','2022-12-01','','John Admin','admin@healthco.com','555-3333','Enrolled',NULL,NULL,30,1,0,200,0,'Monthly','http://docs.healthco.com/plan1.pdf','Compliant');
INSERT INTO employee_benefits VALUES (10002,2,'Dental Plus','2022-03-01','2022-04-01','2023-03-31','Dental','DentalCare','555-4444',50,25,25,0,500,'Enhanced','Eligible',1,1,'Mark Doe','Child','2015-09-20','555-5555','Active','2022-12-15','Needs update','Sara Admin','admin@dentalcare.com','555-6666','Enrolled',NULL,NULL,30,0,0,50,0,'Monthly','http://docs.dentalcare.com/plan2.pdf','Compliant');
INSERT INTO employee_benefits VALUES (10003,3,'Vision Standard','2021-06-10','2021-07-01','2022-06-30','Vision','VisionPlus','555-7777',30,15,15,0,200,'Standard','Inactive',0,0,NULL,NULL,NULL,NULL,'Terminated','2022-07-01','Plan not renewed','Mike Admin','admin@visionplus.com','555-8888','Terminated','2022-06-30','Moved','0',0,0,0,'Annual','http://docs.visionplus.com/plan3.pdf','NonCompliant');

-- Supplier quality audit records
CREATE TABLE supplier_quality_audit
(
    audit_id INTEGER PRIMARY KEY,
    supplier_id INTEGER,
    supplier_name TEXT,
    audit_date DATE,
    auditor_name TEXT,
    audit_score REAL,
    compliance_status TEXT,
    non_conformance_count INTEGER,
    critical_non_conformance_count INTEGER,
    corrective_action_required_flag INTEGER,
    corrective_action_due_date DATE,
    follow_up_audit_date DATE,
    audit_scope TEXT,
    audit_type TEXT,
    site_location TEXT,
    product_category TEXT,
    certification_status TEXT,
    certification_body TEXT,
    certification_expiry DATE,
    risk_level TEXT,
    contract_status TEXT,
    payment_terms TEXT,
    delivery_performance_score REAL,
    quality_metric_score REAL,
    sustainability_score REAL,
    notes TEXT,
    audit_report_url TEXT,
    last_updated DATE,
    audit_status TEXT,
    regulatory_reference TEXT,
    sampling_method TEXT,
    sample_size INTEGER,
    findings_summary TEXT,
    improvement_plan_id INTEGER,
    escalation_required_flag INTEGER,
    escalation_contact TEXT,
    penalty_amount REAL,
    reward_amount REAL,
    audit_comments TEXT,
    confidentiality_flag INTEGER
);
INSERT INTO supplier_quality_audit VALUES (9001,200,'Alpha Supplies','2023-02-20','Laura Green',92.5,'Compliant',1,0,1,'2023-03-15','2023-04-20','Manufacturing','Routine','Factory A','Electronics','ISO9001','SGS','2025-12-31','Medium','Active','Net30',88.0,90.0,85.0,'All good','http://reports.alpha.com/9001.pdf','2023-02-21','Closed','ISO9001','Random','50','Minor defects noted','101',0,'','0','0','No major issues',0);
INSERT INTO supplier_quality_audit VALUES (9002,201,'Beta Components','2023-05-10','Mark Turner',78.0,'NonCompliant',3,1,1,'2023-06-01','2023-07-10','Components','Focused','Plant B','Mechanical','ISO14001','BureauVeritas','2024-07-15','High','Suspended','Net45',65.0,60.0,55.0,'Repeated non‑conformities','http://reports.beta.com/9002.pdf','2023-05-11','Open','ISO14001','Stratified','100','Critical safety issue','102',1,'John Manager',15000,0,'Immediate action required',1);
INSERT INTO supplier_quality_audit VALUES (9003,202,'Gamma Logistics','2022-11-05','Sofia Lee',85.0,'Compliant',0,0,0,NULL,NULL,'Logistics','Routine','Warehouse C','Transport','ISO45001','DNV','2026-03-30','Low','Active','Net60',90.0,92.0,88.0,'No findings','http://reports.gamma.com/9003.pdf','2022-11-06','Closed','ISO45001','Batch','30','All processes satisfactory','103',0,'','0','0','Good performance',0);

-- Cyber threat intelligence records
CREATE TABLE cyber_threat_intel
(
    intel_id INTEGER PRIMARY KEY,
    source_id INTEGER,
    source_name TEXT,
    report_date DATE,
    threat_type TEXT,
    severity_level TEXT,
    cvss_score REAL,
    affected_system TEXT,
    vulnerability_id TEXT,
    exploitability_score REAL,
    remediation_status TEXT,
    patch_available_flag INTEGER,
    patch_release_date DATE,
    threat_actor TEXT,
    campaign_name TEXT,
    attack_vector TEXT,
    malware_family TEXT,
    indicator_type TEXT,
    indicator_value TEXT,
    confidence_score REAL,
    mitigation_strategy TEXT,
    detection_rule_id TEXT,
    detection_rule_description TEXT,
    related_incident_id INTEGER,
    impact_estimate REAL,
    financial_loss_estimate REAL,
    regulatory_impact_flag INTEGER,
    compliance_requirement TEXT,
    notes TEXT,
    analyst_name TEXT,
    review_date DATE,
    status TEXT,
    escalation_level INTEGER,
    response_action_taken TEXT,
    next_review_date DATE,
    threat_status TEXT,
    geo_origin TEXT,
    targeted_industry TEXT,
    additional_references TEXT,
    log_timestamp DATE
);
INSERT INTO cyber_threat_intel VALUES (1,10,'ThreatFeedA','2023-03-01','Ransomware','High',9.8,'Windows Server','CVE-2022-1234',8.5,'Unpatched',1,'2023-03-10','APT28','OperationNight','Network','WannaCry','Hash','abcd1234efgh5678',0.95,'Isolate affected hosts','DR001','Detects abnormal SMB traffic',1001,500000,200000,1,'PCI-DSS','','Emma White','2023-03-02','Open',2,'Network isolation','2023-04-01','Active','Russia','Finance','http://intel.example.com/1','2023-03-01');
INSERT INTO cyber_threat_intel VALUES (2,11,'ThreatFeedB','2023-04-15','Phishing','Medium',6.4,'Email System','CVE-2021-5678',5.0,'Mitigated',1,'2023-04-20','Unknown','PhishCampaignX','Email','Emotet','URL','http://malicious.example.com',0.85,'User education and filtering','DR002','Detects suspicious links',1002,100000,50000,0,'GDPR','','Liam Gray','2023-04-16','Closed',1,'User awareness training','2023-05-16','Resolved','Germany','Healthcare','http://intel.example.com/2','2023-04-15');
INSERT INTO cyber_threat_intel VALUES (3,12,'ThreatFeedC','2023-05-20','DDoS','Low',4.0,'Web Application','CVE-2020-0001',3.2,'Monitored',0,NULL,'BotnetXYZ','Flood2023','Network','Mirai','IP','192.0.2.45',0.70,'Rate limiting','DR003','Detects traffic spikes',1003,25000,10000,0,'ISO27001','','Olivia Black','2023-05-21','Open',1,'Activate scrubbing service','2023-06-21','Active','China','E‑commerce','http://intel.example.com/3','2023-05-20');

-- Additional tables (placeholder for completeness, no inserts required as per instruction)
-- The script includes exactly 10 new tables each with three INSERT statements.