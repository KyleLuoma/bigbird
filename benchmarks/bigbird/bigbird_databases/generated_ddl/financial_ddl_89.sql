-- Branch Energy Usage Detail
CREATE TABLE branch_energy_usage_detail (
    usage_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    reporting_year INTEGER NOT NULL,
    reporting_month INTEGER NOT NULL,
    electricity_kwh REAL NOT NULL,
    gas_therms REAL NOT NULL,
    water_m3 REAL NOT NULL,
    renewable_percent REAL NOT NULL,
    peak_demand_kw REAL NOT NULL,
    avg_daily_usage_kwh REAL NOT NULL,
    emissions_co2_kg REAL NOT NULL,
    cost_usd REAL NOT NULL,
    created_timestamp INTEGER NOT NULL,
    updated_timestamp INTEGER NOT NULL,
    meter_start INTEGER NOT NULL,
    meter_end INTEGER NOT NULL,
    ignored_flag INTEGER NOT NULL,
    audit_score INTEGER NOT NULL,
    compliance_status INTEGER NOT NULL,
    region_code INTEGER NOT NULL,
    weather_factor REAL NOT NULL
);
INSERT INTO branch_energy_usage_detail VALUES (1,101,2023,1,12500.5,300.2,850.0,45.3,750.0,410.5,2100.7,5300.0,20230101080000,20230131120000,12500,13000,0,85,1,0.98);
INSERT INTO branch_energy_usage_detail VALUES (2,102,2023,1,9800.0,250.0,720.5,38.0,680.0,370.2,1800.4,4100.0,20230102090000,20230131130000,9800,10200,0,90,2,1.02);
INSERT INTO branch_energy_usage_detail VALUES (3,103,2023,1,11200.8,275.5,800.3,42.7,720.0,395.1,1950.9,4700.0,20230103091500,20230131140000,11200,11700,0,88,3,0.95);

-- Fleet Driver Performance
CREATE TABLE fleet_driver_performance (
    perf_id INTEGER PRIMARY KEY,
    driver_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,
    month INTEGER NOT NULL,
    year INTEGER NOT NULL,
    trips_completed INTEGER NOT NULL,
    total_miles REAL NOT NULL,
    avg_speed REAL NOT NULL,
    fuel_consumed_l REAL NOT NULL,
    idle_time_min INTEGER NOT NULL,
    harsh_brake_events INTEGER NOT NULL,
    harsh_accel_events INTEGER NOT NULL,
    on_time_delivery_rate REAL NOT NULL,
    safety_score INTEGER NOT NULL,
    maintenance_issues INTEGER NOT NULL,
    overtime_hours INTEGER NOT NULL,
    gps_signal_loss_min INTEGER NOT NULL,
    traffic_incidents INTEGER NOT NULL,
    route_adherence_percent REAL NOT NULL,
    driver_rating REAL NOT NULL,
    bonus_earned_usd REAL NOT NULL,
    penalty_usd REAL NOT NULL
);
INSERT INTO fleet_driver_performance VALUES (1,201,301,1,2023,120,1500.5,45.2,120.3,80,5,3,0.97,92,0,12,5,1,0.99,4.5,200.0,0);
INSERT INTO fleet_driver_performance VALUES (2,202,302,1,2023,115,1420.0,44.8,115.0,90,4,2,0.95,88,1,15,6,2,0.97,4.2,150.0,20);
INSERT INTO fleet_driver_performance VALUES (3,203,303,1,2023,130,1605.7,46.0,125.5,70,6,4,0.99,95,0,10,3,0,0.98,4.8,250.0,0);

-- Environmental Sensor Station Meta
CREATE TABLE environmental_sensor_station_meta (
    station_id INTEGER PRIMARY KEY,
    station_code TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    elevation_m INTEGER NOT NULL,
    install_year INTEGER NOT NULL,
    sensor_type TEXT NOT NULL,
    manufacturer TEXT NOT NULL,
    maintenance_interval_days INTEGER NOT NULL,
    last_maintenance_date INTEGER NOT NULL,
    next_calibration_date INTEGER NOT NULL,
    data_retention_days INTEGER NOT NULL,
    power_source TEXT NOT NULL,
    communication_protocol TEXT NOT NULL,
    firmware_version TEXT NOT NULL,
    status INTEGER NOT NULL,
    region_id INTEGER NOT NULL,
    owner_org TEXT NOT NULL,
    contact_phone TEXT NOT NULL,
    contact_email TEXT NOT NULL,
    net_speed_mbps REAL NOT NULL,
    battery_capacity_mah INTEGER NOT NULL,
    max_operating_temp_c REAL NOT NULL,
    min_operating_temp_c REAL NOT NULL,
    humidity_range_percent REAL NOT NULL
);
INSERT INTO environmental_sensor_station_meta VALUES (1,'ES001',40.7128,-74.0060,10,2018,'AirQuality','EnviroTech',180,20230101,20230701,365,'Solar','LTE','v1.2',1,5,'CityDept','5551234','info@citydept.com',10.5,5000,45.0,-10.0,0-100);
INSERT INTO environmental_sensor_station_meta VALUES (2,'ES002',34.0522,-118.2437,15,2019,'WaterLevel','AquaSense',365,20221215,20231215,730,'Battery','WiFi','v2.0',1,6,'WaterAgency','5555678','contact@wateragency.com',15.2,7000,50.0,-5.0,0-100);
INSERT INTO environmental_sensor_station_meta VALUES (3,'ES003',41.8781,-87.6298,12,2020,'Noise','SoundMetrics',90,20230220,20230820,180,'Mains','Ethernet','v1.0',1,7,'TransportDept','5559012','noise@transport.com',100.0,0,60.0,-15.0,30-90);

-- Digital Wallet Activity Summary
CREATE TABLE digital_wallet_activity_summary (
    summary_id INTEGER PRIMARY KEY,
    wallet_id INTEGER NOT NULL,
    period_year INTEGER NOT NULL,
    period_month INTEGER NOT NULL,
    total_transactions INTEGER NOT NULL,
    total_amount_usd REAL NOT NULL,
    avg_transaction_value_usd REAL NOT NULL,
    max_transaction_usd REAL NOT NULL,
    min_transaction_usd REAL NOT NULL,
    successful_transactions INTEGER NOT NULL,
    failed_transactions INTEGER NOT NULL,
    refunds_issued INTEGER NOT NULL,
    chargebacks INTEGER NOT NULL,
    new_users INTEGER NOT NULL,
    active_users INTEGER NOT NULL,
    dormant_users INTEGER NOT NULL,
    fraud_score REAL NOT NULL,
    promo_credits_used REAL NOT NULL,
    cash_out_amount_usd REAL NOT NULL,
    peer_to_peer_transfers INTEGER NOT NULL,
    merchant_payments INTEGER NOT NULL,
    loyalty_points_earned INTEGER NOT NULL,
    loyalty_points_redeemed INTEGER NOT NULL,
    avg_balance_usd REAL NOT NULL,
    peak_balance_usd REAL NOT NULL,
    lowest_balance_usd REAL NOT NULL
);
INSERT INTO digital_wallet_activity_summary VALUES (1,301,2023,1,2500,125000.0,50.0,1000.0,0.5,2400,100,50,20,2000,500,0.02,500.0,30000.0,400,1500,12000,8000,5000.0,7500.0,200.0);
INSERT INTO digital_wallet_activity_summary VALUES (2,302,2023,1,1800,90000.0,50.0,950.0,1.0,1750,50,30,10,1500,400,0.01,300.0,20000.0,300,900,9000,6000,4000.0,6000.0,150.0);
INSERT INTO digital_wallet_activity_summary VALUES (3,303,2023,1,3000,180000.0,60.0,1200.0,0.8,2900,100,70,25,2500,600,0.03,700.0,45000.0,500,1800,15000,10000,6500.0,9000.0,250.0);

-- Regulatory Fine Detail
CREATE TABLE regulatory_fine_detail (
    fine_id INTEGER PRIMARY KEY,
    entity_type TEXT NOT NULL,
    entity_id INTEGER NOT NULL,
    regulator TEXT NOT NULL,
    fine_category TEXT NOT NULL,
    fine_amount_usd REAL NOT NULL,
    assessment_date INTEGER NOT NULL,
    due_date INTEGER NOT NULL,
    payment_date INTEGER,
    status INTEGER NOT NULL,
    violation_code TEXT NOT NULL,
    description TEXT NOT NULL,
    corrective_action_required INTEGER NOT NULL,
    corrective_action_deadline INTEGER NOT NULL,
    audit_reference TEXT NOT NULL,
    risk_score REAL NOT NULL,
    previous_fine_flag INTEGER NOT NULL,
    jurisdiction TEXT NOT NULL,
    enforcement_officer TEXT NOT NULL,
    notes TEXT NOT NULL,
    appeal_deadline INTEGER NOT NULL,
    appeal_status INTEGER NOT NULL,
    settlement_amount_usd REAL,
    discount_percent REAL,
    final_amount_usd REAL
);
INSERT INTO regulatory_fine_detail VALUES (1,'Branch',101,'FINREG','AntiMoneyLaundering',50000.0,20221201,20230115,20230110,1,'AML001','Failure to file SARs',1,20230201,'AUD123',8.5,0,'NY','OfficerA','Reviewed','20230215',0,0,0,0);
INSERT INTO regulatory_fine_detail VALUES (2,'Bank','B001','DEFRAD','ConsumerProtection',75000.0,20221120,20230105,NULL,0,'CP002','Improper fee disclosure',1,20230210,'AUD456',7.2,1,'CA','OfficerB','Pending','20230220',0,NULL,10.0,67500.0);
INSERT INTO regulatory_fine_detail VALUES (3,'Distributor',205,'ENVAG','Environmental',120000.0,20221010,20221231,20221225,1,'ENV003','Emission limit breach',0,0,'AUD789',9.1,0,'TX','OfficerC','Closed','20230115',1,NULL,0,120000.0);

-- Customer Engagement Channel Log
CREATE TABLE customer_engagement_channel_log (
    log_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    channel_type TEXT NOT NULL,
    channel_id TEXT NOT NULL,
    interaction_timestamp INTEGER NOT NULL,
    interaction_type TEXT NOT NULL,
    outcome_code INTEGER NOT NULL,
    duration_seconds INTEGER NOT NULL,
    notes TEXT NOT NULL,
    agent_id INTEGER,
    sentiment_score REAL,
    follow_up_required INTEGER,
    follow_up_due INTEGER,
    campaign_id INTEGER,
    response_rate REAL,
    click_through_rate REAL,
    conversion_flag INTEGER,
    revenue_generated_usd REAL,
    cost_per_interaction_usd REAL,
    net_profit_usd REAL,
    segment_code TEXT NOT NULL,
    device_type TEXT NOT NULL,
    location_region INTEGER NOT NULL,
    previous_interactions INTEGER,
    last_response_timestamp INTEGER,
    opt_out_flag INTEGER,
    language_preference TEXT NOT NULL,
    timezone_offset INTEGER,
    data_quality_score REAL
);
INSERT INTO customer_engagement_channel_log VALUES (1,1001,'Email','EML001',20230101120000,'Open',1,30,'Opened email',2001,0.8,0,0,3001,0.75,0.20,0,0.0,0.01,0.0,'SEG_A','Desktop',5,3,20221231113000,0,'EN',-5,0.95);
INSERT INTO customer_engagement_channel_log VALUES (2,1002,'SMS','SMS045',20230102143000,'Click',2,10,'Clicked link',2002,0.6,1,20230110,3002,0.60,0.15,1,150.0,0.05,149.95,'SEG_B','Mobile',3,5,20230101120000,0,'ES',1,0.88);
INSERT INTO customer_engagement_channel_log VALUES (3,1003,'Chat','CHT78',20230103101000,'Resolve',3,300,'Issue resolved',2003,0.9,0,0,3003,0.85,0.25,1,200.0,0.08,199.92,'SEG_C','Web',2,2,20230102113000,0,'FR',0,0.92);

-- Loan Product Feature Detail
CREATE TABLE loan_product_feature_detail (
    feature_id INTEGER PRIMARY KEY,
    loan_product_id INTEGER NOT NULL,
    feature_name TEXT NOT NULL,
    description TEXT NOT NULL,
    is_mandatory INTEGER NOT NULL,
    max_limit_amount INTEGER NOT NULL,
    min_limit_amount INTEGER NOT NULL,
    interest_rate_basis REAL NOT NULL,
    fixed_rate_flag INTEGER NOT NULL,
    variable_rate_flag INTEGER NOT NULL,
    grace_period_days INTEGER NOT NULL,
    early_repayment_penalty_percent REAL NOT NULL,
    late_payment_fee REAL NOT NULL,
    collateral_required INTEGER NOT NULL,
    collateral_type TEXT,
    insurance_required INTEGER NOT NULL,
    insurance_provider TEXT,
    max_term_months INTEGER NOT NULL,
    eligibility_score_threshold REAL NOT NULL,
    documentation_required INTEGER NOT NULL,
    credit_check_depth INTEGER NOT NULL,
    underwriting_automation_flag INTEGER NOT NULL,
    digital_signature_required INTEGER NOT NULL,
    regulatory_approval_needed INTEGER NOT NULL,
    approval_time_days INTEGER NOT NULL,
    fee_structure TEXT,
    amortization_type TEXT,
    rollover_allowed INTEGER NOT NULL,
    refinance_option INTEGER NOT NULL,
    special_discount_percent REAL
);
INSERT INTO loan_product_feature_detail VALUES (1,401,'Standard Repayment','Monthly equal installments',1,500000,5000,4.5,1,0,30,1.0,25,1,'Property',1,'InsureCo',360,700.0,1,3,1,1,0,5,'FlatFee','StraightLine',0,1,5.0);
INSERT INTO loan_product_feature_detail VALUES (2,402,'InterestOnly','Pay interest only for first years',0,300000,10000,3.8,0,1,60,0.5,20,0,NULL,0,NULL,240,650.0,1,2,0,1,0,10,'Percentage','InterestOnly',1,0,2.5);
INSERT INTO loan_product_feature_detail VALUES (3,403,'Balloon Payment','Large final payment',0,800000,20000,5.2,1,0,45,2.0,30,1,'Vehicle',1,'SafeGuard',180,720.0,1,4,0,0,1,7,'Mixed','Balloon',0,1,3.0);

-- Card Tokenization Audit
CREATE TABLE card_tokenization_audit (
    audit_id INTEGER PRIMARY KEY,
    card_id INTEGER NOT NULL,
    token TEXT NOT NULL,
    tokenization_date INTEGER NOT NULL,
    token_expiration INTEGER NOT NULL,
    algorithm_used TEXT NOT NULL,
    key_identifier TEXT NOT NULL,
    provider TEXT NOT NULL,
    success_flag INTEGER NOT NULL,
    failure_reason TEXT,
    retry_count INTEGER NOT NULL,
    latency_ms REAL NOT NULL,
    compliance_status INTEGER NOT NULL,
    audit_user_id INTEGER NOT NULL,
    audit_timestamp INTEGER NOT NULL,
    source_ip TEXT NOT NULL,
    device_fingerprint TEXT NOT NULL,
    encryption_level TEXT NOT NULL,
    token_status TEXT NOT NULL,
    revocation_date INTEGER,
    revocation_reason TEXT,
    last_used_timestamp INTEGER,
    usage_count INTEGER NOT NULL,
    risk_score REAL NOT NULL,
    notes TEXT NOT NULL,
    regulatory_reference TEXT NOT NULL,
    audit_version INTEGER NOT NULL,
    validation_checksum TEXT NOT NULL,
    external_reference_id TEXT NOT NULL,
    anomaly_flag INTEGER NOT NULL
);
INSERT INTO card_tokenization_audit VALUES (1,10001,'TOK123ABC',20230101120000,20240101120000,'AES256','KID001','TokenServ',1,NULL,0,15.2,1,5001,20230101121000,'192.168.1.10','FP12345','High','Active',NULL,NULL,NULL,10,0.3,'Initial tokenization','REG001',1,'CHK123','EXT001',0);
INSERT INTO card_tokenization_audit VALUES (2,10002,'TOK456DEF',20221215103000,20231215103000,'RSA2048','KID002','SecureToken',0,'Key mismatch',2,45.7,0,5002,20221215104500,'10.0.0.5','FP67890','Medium','Failed',20221215110000,'Key rotate',20221215120000,0,0.9,'Retry after key update','REG002',2,'CHK456','EXT002',1);
INSERT INTO card_tokenization_audit VALUES (3,10003,'TOK789GHI',20230120150000,20240120150000,'AES256','KID003','TokenHub',1,NULL,0,12.5,1,5003,20230120150500,'172.16.0.20','FP24680','High','Active',NULL,NULL,20230125160000,5,0.1,'Routine usage','REG003',1,'CHK789','EXT003',0);

-- ATM Security Device Log Detail
CREATE TABLE atm_security_device_log_detail (
    log_entry_id INTEGER PRIMARY KEY,
    atm_id INTEGER NOT NULL,
    device_type TEXT NOT NULL,
    event_timestamp INTEGER NOT NULL,
    event_type TEXT NOT NULL,
    severity_level INTEGER NOT NULL,
    firmware_version TEXT NOT NULL,
    serial_number TEXT NOT NULL,
    ip_address TEXT NOT NULL,
    mac_address TEXT NOT NULL,
    location_latitude REAL NOT NULL,
    location_longitude REAL NOT NULL,
    operator_id INTEGER,
    resolved_flag INTEGER NOT NULL,
    resolution_timestamp INTEGER,
    root_cause TEXT,
    mitigation_action TEXT,
    downtime_seconds INTEGER,
    false_positive_flag INTEGER,
    alert_generated INTEGER,
    ticket_number TEXT,
    maintenance_required INTEGER,
    next_maintenance_due INTEGER,
    battery_level_percent REAL,
    temperature_celsius REAL,
    humidity_percent REAL,
    video_feed_available INTEGER,
    encryption_status TEXT,
    compliance_check_passed INTEGER,
    auditor_id INTEGER,
    comments TEXT,
    escalation_level INTEGER,
    risk_rating REAL
);
INSERT INTO atm_security_device_log_detail VALUES (1,601,'Camera','20230101103000','Tamper','3','v1.4','SN001','192.168.10.5','AA:BB:CC:DD:EE:FF',40.7128,-74.0060,7001,0,NULL,'Physical obstruction','Inspect and clean',720,0,1,'TCK1001',1,20230201,85.0,22.5,45.0,1,'Enabled',1,8001,'No issues',2,4.5);
INSERT INTO atm_security_device_log_detail VALUES (2,602,'Keypad','20230102120000','FailedAuth','2','v2.0','SN002','192.168.10.6','11:22:33:44:55:66',34.0522,-118.2437,7002,1,20230102123000,'Brute force attempts','Lock keypad','0',0,1,'TCK1002',0,NULL,95.0,21.0,40.0,0,'Enabled',1,8002,'Resolved',1,2.0);
INSERT INTO atm_security_device_log_detail VALUES (3,603,'DoorSensor','20230103150000','OpenDuringClosedHours','4','v1.9','SN003','192.168.10.7','77:88:99:AA:BB:CC',41.8781,-87.6298,7003,0,NULL,'Unauthorized opening','Investigate breach','1800',0,1,'TCK1003',1,20230301,78.0,23.0,50.0,1,'Enabled',0,8003,'Pending review',3,5.0);

-- Supply Chain Shipment Log
CREATE TABLE supply_chain_shipment_log (
    shipment_id INTEGER PRIMARY KEY,
    carrier_id INTEGER NOT NULL,
    origin_warehouse_id INTEGER NOT NULL,
    destination_warehouse_id INTEGER NOT NULL,
    departure_date INTEGER NOT NULL,
    arrival_date INTEGER NOT NULL,
    scheduled_departure INTEGER NOT NULL,
    scheduled_arrival INTEGER NOT NULL,
    actual_departure INTEGER,
    actual_arrival INTEGER,
    status_code INTEGER NOT NULL,
    cargo_type TEXT NOT NULL,
    total_weight_kg REAL NOT NULL,
    total_volume_m3 REAL NOT NULL,
    pallet_count INTEGER NOT NULL,
    container_id TEXT,
    temperature_control_flag INTEGER NOT NULL,
    temperature_min_c REAL,
    temperature_max_c REAL,
    humidity_control_flag INTEGER,
    humidity_min_percent REAL,
    humidity_max_percent REAL,
    carrier_tracking_number TEXT,
    customs_declaration_number TEXT,
    inspection_passed INTEGER,
    inspection_notes TEXT,
    delay_reason TEXT,
    freight_cost_usd REAL,
    insurance_coverage_usd REAL,
    special_handling_instructions TEXT,
    hazardous_material_flag INTEGER,
    compliance_document_id TEXT,
    created_timestamp INTEGER NOT NULL,
    last_updated_timestamp INTEGER NOT NULL,
    priority_level INTEGER,
    risk_score REAL,
    allocation_group TEXT
);
INSERT INTO supply_chain_shipment_log VALUES (1,801,101,201,20230101080000,20230101120000,20230101080000,20230101120000,20230101080000,20230101115500,1,'Electronics',1200.5,15.2,30,'CONT001',0,NULL,NULL,0,NULL,NULL,'TRK001','CUS001',1,'All good',NULL,1500.0,2000.0,'Handle with care',0,'DOC001',20230101120000,20230101121000,2,1.2,'GroupA');
INSERT INTO supply_chain_shipment_log VALUES (2,802,102,202,20230102100000,20230102180000,20230102100000,20230102180000,20230102101000,20230102182500,2,'Pharmaceuticals',800.0,8.5,20,'CONT002',1,2.0,8.0,1,30.0,70.0,'TRK002','CUS002',0,'Temperature deviation', 'Cold chain breach',2000.0,2500.0,'Keep refrigerated',1,'DOC002',20230102180000,20230102183000,1,3.5,'GroupB');
INSERT INTO supply_chain_shipment_log VALUES (3,803,103,203,20230103120000,20230103160000,20230103120000,20230103160000,20230103120000,20230103155500,1,'Furniture',2500.0,30.0,50,'CONT003',0,NULL,NULL,0,NULL,NULL,'TRK003','CUS003',1,'All good',NULL,3000.0,3500.0,'Do not stack',0,'DOC003',20230103160000,20230103161000,3,0.8,'GroupC');

-- Digital Certificate Registry
CREATE TABLE digital_certificate_registry (
    cert_id INTEGER PRIMARY KEY,
    entity_type TEXT NOT NULL,
    entity_id INTEGER NOT NULL,
    certificate_type TEXT NOT NULL,
    serial_number TEXT NOT NULL,
    issuer TEXT NOT NULL,
    issue_date INTEGER NOT NULL,
    expiration_date INTEGER NOT NULL,
    public_key_algo TEXT NOT NULL,
    key_size INTEGER NOT NULL,
    signature_algo TEXT NOT NULL,
    thumbprint TEXT NOT NULL,
    status INTEGER NOT NULL,
    revoked_date INTEGER,
    revocation_reason TEXT,
    renewal_allowed INTEGER NOT NULL,
    renewal_window_days INTEGER,
    last_renewal_date INTEGER,
    usage_purpose TEXT NOT NULL,
    compliance_framework TEXT,
    policy_oid TEXT,
    extensions TEXT,
    hash_algorithm TEXT,
    crl_distribution_point TEXT,
    ocsp_responder_url TEXT,
    certificate_profile TEXT,
    key_usage TEXT,
    extended_key_usage TEXT,
    subject_alt_name TEXT,
    authority_key_identifier TEXT,
    subject_key_identifier TEXT,
    created_timestamp INTEGER NOT NULL,
    updated_timestamp INTEGER NOT NULL,
    owner_contact TEXT,
    notes TEXT
);
INSERT INTO digital_certificate_registry VALUES (1,'Branch',101,'TLS','SN001','LetsEncrypt',20220101000000,20240101000000,'RSA',2048,'SHA256','THB001',1,NULL,NULL,1,30,20231201000000,'ServerAuth','PCI-DSS','1.2.3','{ext1:true}','SHA256','http://crl.example.com','http://ocsp.example.com','ProfileA','digitalSignature','serverAuth','www.example.com','AKI001','SKI001',20220101000000,20230101000000,'admin@example.com','Initial issuance');
INSERT INTO digital_certificate_registry VALUES (2,'ATM','601','CodeSigning','SN002','GlobalSign',20220215000000,20240215000000,'ECDSA',256,'SHA384','THB002',1,NULL,NULL,1,45,20231215000000,'CodeSigning','ISO27001','2.1.0','{ext2:false}','SHA384','http://crl.global.com','http://ocsp.global.com','ProfileB','nonRepudiation','codeSigning','atmsoftware.example.com','AKI002','SKI002',20220215000000,20230215000000,'security@bank.com','Code signing cert');
INSERT INTO digital_certificate_registry VALUES (3,'DigitalWallet','301','ClientAuth','SN003','DigiCert',20220320000000,20240320000000,'RSA',3072,'SHA512','THB003',0,20230401000000,'KeyCompromise',0,NULL,NULL,'ClientAuth','GDPR','3.0.0','{ext3:true}','SHA512','http://crl.digicert.com','http://ocsp.digicert.com','ProfileC','keyEncipherment','clientAuth','walletuser.example.com','AKI003','SKI003',20220320000000,20230320000000,'support@wallet.com','Revoked due to compromise');

-- Energy Grid Node Status
CREATE TABLE energy_grid_node_status (
    node_id INTEGER PRIMARY KEY,
    node_name TEXT NOT NULL,
    region_id INTEGER NOT NULL,
    node_type TEXT NOT NULL,
    status_code INTEGER NOT NULL,
    voltage_kv REAL NOT NULL,
    current_ka REAL NOT NULL,
    power_mw REAL NOT NULL,
    frequency_hz REAL NOT NULL,
    temperature_celsius REAL NOT NULL,
    load_percent REAL NOT NULL,
    outage_start INTEGER,
    outage_end INTEGER,
    maintenance_scheduled INTEGER,
    maintenance_start INTEGER,
    maintenance_end INTEGER,
    last_inspection_date INTEGER,
    inspection_result INTEGER,
    transformer_age_years INTEGER,
    capacitor_bank_status INTEGER,
    fault_count INTEGER,
    reactive_power_mvar REAL,
    harmonic_distortion_percent REAL,
    protection_scheme TEXT,
    communication_status INTEGER,
    firmware_version TEXT,
    data_latency_ms REAL,
    backup_power_available INTEGER,
    renewable_integration_percent REAL,
    grid_stability_index REAL,
    created_timestamp INTEGER NOT NULL,
    updated_timestamp INTEGER NOT NULL,
    operator_id INTEGER,
    notes TEXT,
    risk_level REAL
);
INSERT INTO energy_grid_node_status VALUES (1,'NodeA',5,'Substation',1,115.0,0.85,97.75,60.0,35.2,78.5,NULL,NULL,0,NULL,NULL,20221215000000,1,12,1,2,5.3,0.6,'DistanceRelay',1,'v3.2',12.5,1,25.0,0.92,20230101120000,20230101121000,9001,'All parameters normal',2.1);
INSERT INTO energy_grid_node_status VALUES (2,'NodeB',7,'Transformer',2,33.0,0.45,14.85,59.9,40.1,95.0,20230105080000,20230105120000,1,20230201000000,20230202000000,20221220000000,0,20,0,5,2.1,1.2,'CurrentDifferential',0,'v2.8',25.0,0,15.0,0.85,20230105130000,20230105132000,9002,'Outage due to storm',4.5);
INSERT INTO energy_grid_node_status VALUES (3,'NodeC',3,'Switchgear',1,11.0,0.20,2.20,60.2,28.5,68.0,NULL,NULL,0,NULL,NULL,20230101000000,1,5,1,0,0.8,0.3,'Overcurrent',1,'v4.0',8.0,1,10.0,0.96,20230101140000,20230101141000,9003,'Routine operation',1.3);

-- Telecom Fiber Network Inventory
CREATE TABLE telecom_fiber_network_inventory (
    fiber_id INTEGER PRIMARY KEY,
    fiber_route TEXT NOT NULL,
    start_node_id INTEGER NOT NULL,
    end_node_id INTEGER NOT NULL,
    length_km REAL NOT NULL,
    fiber_type TEXT NOT NULL,
    capacity_gbps INTEGER NOT NULL,
    installed_date INTEGER NOT NULL,
    last_maintenance_date INTEGER,
    maintenance_interval_days INTEGER NOT NULL,
    splice_count INTEGER NOT NULL,
    attenuation_db_km REAL NOT NULL,
    refractive_index REAL NOT NULL,
    protective_coating TEXT,
    conduit_material TEXT,
    buried_flag INTEGER NOT NULL,
    aerial_flag INTEGER NOT NULL,
    rating_class TEXT,
    owner_company TEXT,
    operational_status INTEGER NOT NULL,
    fault_history_count INTEGER,
    last_fault_timestamp INTEGER,
    redundancy_path_id INTEGER,
    backup_capacity_gbps INTEGER,
    quality_of_service TEXT,
    service_level_agreement TEXT,
    monitoring_system TEXT,
    alert_threshold_db REAL,
    maintenance_contact TEXT,
    regulatory_compliance INTEGER,
    funding_source TEXT,
    project_id INTEGER,
    created_timestamp INTEGER NOT NULL,
    updated_timestamp INTEGER NOT NULL,
    notes TEXT,
    geographic_region TEXT,
    risk_assessment_score REAL
);
INSERT INTO telecom_fiber_network_inventory VALUES (1,'RouteA',1001,1002,12.5,'SingleMode',100,20200101000000,20221201000000,180,15,0.35,1.468,'Polymer','PVC',1,0,'ClassA','TeleCo','1',2,20230101000000,2001,120,2,'Premium','Gold','SNMP','-3.0','maint@teleco.com',1,'Grant','5001',20200101000000,20230101120000,'No issues','NorthEast',1.2);
INSERT INTO telecom_fiber_network_inventory VALUES (2,'RouteB',1003,1004,8.0,'MultiMode',40,20210315000000,20221115000000,365,10,0.45,1.470,'Acrylic','Steel',0,1,'ClassB','NetWorks','1',0,NULL,NULL,NULL,'Standard','Silver','Syslog','-4.5','ops@networks.com',1,'Bond','5002',20210315000000,20230102130000,'Minor splice loss','Midwest',0.9);
INSERT INTO telecom_fiber_network_inventory VALUES (3,'RouteC',1005,1006,20.0,'SingleMode',200,20190520000000,20221020000000,180,20,0.30,1.467,'Polymer','HDPE',1,0,'ClassA','FiberLink','1',5,20221225000000,2002,130,3,'Ultra','Platinum','SNMP','-2.5','support@fiblink.com',1,'Equity','5003',20190520000000,20230103140000,'Scheduled upgrade','SouthWest',1.5);

-- Digital Payment Method Fee
CREATE TABLE digital_payment_method_fee (
    fee_id INTEGER PRIMARY KEY,
    payment_method TEXT NOT NULL,
    provider TEXT NOT NULL,
    fee_type TEXT NOT NULL,
    fee_amount_usd REAL NOT NULL,
    fee_percent REAL NOT NULL,
    currency TEXT NOT NULL,
    effective_date INTEGER NOT NULL,
    expiration_date INTEGER,
    min_transaction_amount_usd REAL,
    max_transaction_amount_usd REAL,
    region_code INTEGER NOT NULL,
    surcharge_flag INTEGER NOT NULL,
    tax_applicable INTEGER NOT NULL,
    tax_rate_percent REAL,
    discount_allowed INTEGER,
    discount_percent REAL,
    flat_fee_usd REAL,
    per_transaction_cap_usd REAL,
    per_day_cap_usd REAL,
    settlement_period_days INTEGER,
    risk_score REAL,
    compliance_check INTEGER,
    notes TEXT,
    created_timestamp INTEGER NOT NULL,
    updated_timestamp INTEGER NOT NULL,
    created_by_user_id INTEGER,
    updated_by_user_id INTEGER,
    approved_flag INTEGER,
    approval_timestamp INTEGER,
    regulatory_reference TEXT,
    audit_log_id INTEGER,
    revision_number INTEGER
);
INSERT INTO digital_payment_method_fee VALUES (1,'CreditCard','Visa','Processing',0.30,2.5,'USD',20230101000000,NULL,10.0,10000.0,1,0,1,5.0,0,0.0,0.0,500.0,2000.0,2,1.5,1,'Standard CC fee',20230101000000,20230101120000,100,101,1,20230101123000,'REG001',5001,1);
INSERT INTO digital_payment_method_fee VALUES (2,'DigitalWallet','PayFast','Transaction',0.10,1.0,'USD',20230101000000,NULL,5.0,5000.0,2,1,1,4.0,1,2.0,0.0,300.0,1500.0,1,2.0,1,'Wallet small fee',20230101000000,20230101121000,102,102,1,20230101123500,'REG002',5002,1);
INSERT INTO digital_payment_method_fee VALUES (3,'BankTransfer','BankXYZ','Wire',5.00,0.0,'USD',20230101000000,NULL,100.0,20000.0,3,0,0,NULL,0,0.0,5.0,1000.0,4000.0,3,0.8,1,'Flat wire fee',20230101000000,20230101122000,103,104,1,20230101124000,'REG003',5003,1);

-- Loan Market Trends
CREATE TABLE loan_market_trends (
    trend_id INTEGER PRIMARY KEY,
    month INTEGER NOT NULL,
    year INTEGER NOT NULL,
    average_interest_rate REAL NOT NULL,
    median_loan_amount INTEGER NOT NULL,
    total_loan_volume INTEGER NOT NULL,
    new_loan_count INTEGER NOT NULL,
    default_rate_percent REAL NOT NULL,
    delinquency_rate_percent REAL NOT NULL,
    average_loan_term_months INTEGER NOT NULL,
    mortgage_share_percent REAL NOT NULL,
    auto_loan_share_percent REAL NOT NULL,
    personal_loan_share_percent REAL NOT NULL,
    business_loan_share_percent REAL NOT NULL,
    government_loan_share_percent REAL NOT NULL,
    credit_score_average REAL NOT NULL,
    debt_to_income_average REAL NOT NULL,
    loan_purpose_home_improvement_percent REAL NOT NULL,
    loan_purpose_debt_consolidation_percent REAL NOT NULL,
    loan_purpose_education_percent REAL NOT NULL,
    regional_indicator INTEGER NOT NULL,
    economic_growth_rate_percent REAL NOT NULL,
    inflation_rate_percent REAL NOT NULL,
    unemployment_rate_percent REAL NOT NULL,
    housing_price_index REAL NOT NULL,
    consumer_confidence_index REAL NOT NULL,
    policy_change_flag INTEGER NOT NULL,
    policy_change_description TEXT,
    risk_assessment_score REAL,
    forecasted_default_rate_percent REAL,
    created_timestamp INTEGER NOT NULL,
    updated_timestamp INTEGER NOT NULL,
    analyst_id INTEGER,
    notes TEXT
);
INSERT INTO loan_market_trends VALUES (1,1,2023,4.2,250000,50000000,2000,1.2,2.0,360,55.0,20.0,15.0,8.0,2.0,680.0,0.35,12.0,5.0,3.0,1,2.5,3.1,4.0,150.0,95.0,0,'No major changes',3.5,1.3,20230101120000,20230101130000,9001,'Quarterly snapshot');
INSERT INTO loan_market_trends VALUES (2,2,2023,4.0,260000,52000000,2100,1.1,1.9,360,56.0,19.0,14.0,8.5,2.5,685.0,0.34,11.5,5.2,3.2,2,2.6,3.0,4.1,152.0,96.0,0,'Steady market',3.4,1.2,20230201120000,20230201130000,9002,'Monthly update');
INSERT INTO loan_market_trends VALUES (3,3,2023,3.9,270000,54000000,2200,1.0,1.8,360,57.0,18.5,13.5,9.0,3.0,690.0,0.33,11.0,5.5,3.4,3,2.7,2.9,4.2,154.0,97.0,1,'Interest rate cut',3.3,1.1,20230301120000,20230301130000,9003,'End of Q1');