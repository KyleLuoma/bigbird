-- Branch ventilation system information
CREATE TABLE branch_ventilation_system
(
    ventilation_id INTEGER PRIMARY KEY,
    branch_id INTEGER,
    system_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    installation_date DATE,
    last_maintenance_date DATE,
    airflow_cfm INTEGER,
    power_kw REAL,
    noise_db INTEGER,
    filter_type TEXT,
    filter_change_interval_days INTEGER,
    current_filter_change_date DATE,
    sensor_status TEXT,
    temperature_celsius REAL,
    humidity_percent REAL,
    pressure_pa REAL,
    operational_status TEXT,
    warranty_expiry DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO branch_ventilation_system VALUES
(1, 101, 'HVAC', 'VentCorp', 'VC100', '2020-03-15', '2023-06-01', 5000, 2.5, 55, 'HEPA', 180, '2023-06-01', 'OK', 22.5, 45.0, 101325, 'Operational', '2025-03-15', 'Routine check', '2023-01-01', '2023-01-02');

INSERT INTO branch_ventilation_system VALUES
(2, 102, 'Exhaust', 'AirFlowInc', 'AF200', '2019-11-20', '2023-05-20', 3500, 1.8, 48, 'Carbon', 365, '2023-05-20', 'OK', 21.0, 50.0, 100800, 'Operational', '2024-11-20', 'Filter replaced', '2023-02-15', '2023-02-16');

INSERT INTO branch_ventilation_system VALUES
(3, 103, 'HVAC', 'CoolVent', 'CV300', '2021-07-05', '2023-07-10', 4200, 2.2, 52, 'HEPA', 200, '2023-07-10', 'OK', 23.0, 40.0, 101500, 'Operational', '2026-07-05', 'No issues', '2023-03-10', '2023-03-11');

-- Mobile device firmware update logs
CREATE TABLE mobile_device_firmware_update
(
    update_id INTEGER PRIMARY KEY,
    device_id TEXT,
    device_type TEXT,
    imei TEXT,
    firmware_version TEXT,
    update_version TEXT,
    update_release_date DATE,
    update_install_date DATE,
    install_success INTEGER,
    rollback_performed INTEGER,
    battery_level_before INTEGER,
    battery_level_after INTEGER,
    network_type TEXT,
    download_size_mb REAL,
    duration_seconds INTEGER,
    error_code TEXT,
    initiated_by TEXT,
    verification_status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO mobile_device_firmware_update VALUES
(1, 'DEV001', 'Smartphone', '356789012345678', '1.0.3', '1.0.4', '2023-01-10', '2023-01-12', 1, 0, 85, 90, 'WiFi', 45.2, 300, '', 'System', 'Verified', 'First rollout', '2023-01-12', '2023-01-13');

INSERT INTO mobile_device_firmware_update VALUES
(2, 'DEV002', 'Tablet', '356789012345679', '2.1.0', '2.1.1', '2023-02-05', '2023-02-07', 1, 0, 70, 78, '4G', 58.7, 420, '', 'Admin', 'Verified', 'Second batch', '2023-02-07', '2023-02-08');

INSERT INTO mobile_device_firmware_update VALUES
(3, 'DEV003', 'Smartphone', '356789012345680', '3.5.2', '3.5.3', '2023-03-01', '2023-03-03', 0, 1, 60, 60, 'WiFi', 50.0, 500, 'E102', 'User', 'Failed', 'Rollback required', '2023-03-03', '2023-03-04');

-- Digital asset transfer log
CREATE TABLE digital_asset_transfer_log
(
    transfer_id INTEGER PRIMARY KEY,
    asset_id TEXT,
    asset_type TEXT,
    source_account_id INTEGER,
    destination_account_id INTEGER,
    transfer_date DATE,
    transfer_amount REAL,
    currency TEXT,
    transaction_hash TEXT,
    blockchain TEXT,
    status TEXT,
    fee_amount REAL,
    fee_currency TEXT,
    gas_price REAL,
    gas_limit INTEGER,
    confirmation_count INTEGER,
    initiator_user_id INTEGER,
    purpose TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    audit_trail TEXT
);

INSERT INTO digital_asset_transfer_log VALUES
(1, 'ASSET001', 'Token', 1001, 2001, '2023-04-15', 1500.00, 'USD', 'hashabc123', 'Ethereum', 'Completed', 2.5, 'USD', 45.0, 21000, 12, 501, 'Payment', 'Monthly fee', '2023-04-15', '2023-04-16', 'audit001');

INSERT INTO digital_asset_transfer_log VALUES
(2, 'ASSET002', 'NFT', 1002, 2002, '2023-05-10', 1.00, 'ETH', 'hashdef456', 'Ethereum', 'Pending', 0.01, 'ETH', 30.0, 150000, 0, 502, 'Purchase', 'Art acquisition', '2023-05-10', '2023-05-11', 'audit002');

INSERT INTO digital_asset_transfer_log VALUES
(3, 'ASSET003', 'Token', 1003, 2003, '2023-06-01', 2500.00, 'USD', 'hashghi789', 'BinanceSmartChain', 'Failed', 3.0, 'USD', 60.0, 25000, 0, 503, 'Refund', 'Transaction error', '2023-06-01', '2023-06-02', 'audit003');

-- Customer behavioral survey results
CREATE TABLE customer_behavioral_survey
(
    survey_id INTEGER PRIMARY KEY,
    client_id INTEGER,
    survey_date DATE,
    channel TEXT,
    q1_response TEXT,
    q2_response TEXT,
    q3_response TEXT,
    q4_response TEXT,
    q5_response TEXT,
    q6_response TEXT,
    q7_response TEXT,
    q8_response TEXT,
    q9_response TEXT,
    q10_response TEXT,
    overall_score INTEGER,
    completion_time_seconds INTEGER,
    submitter_user_id INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO customer_behavioral_survey VALUES
(1, 3001, '2023-07-01', 'Email', 'A', 'B', 'C', 'D', 'A', 'B', 'C', 'D', 'A', 'B', 85, 240, 701, 'First quarter survey', '2023-07-01', '2023-07-02');

INSERT INTO customer_behavioral_survey VALUES
(2, 3002, '2023-07-15', 'Web', 'B', 'C', 'B', 'A', 'C', 'D', 'A', 'B', 'C', 'D', 78, 300, 702, 'Second quarter check', '2023-07-15', '2023-07-16');

INSERT INTO customer_behavioral_survey VALUES
(3, 3003, '2023-08-01', 'Phone', 'C', 'A', 'D', 'B', 'B', 'C', 'D', 'A', 'D', 'C', 90, 180, 703, 'Feedback after service', '2023-08-01', '2023-08-02');

-- Fleet vehicle sensor data records
CREATE TABLE fleet_vehicle_sensor_data
(
    sensor_data_id INTEGER PRIMARY KEY,
    vehicle_id INTEGER,
    sensor_type TEXT,
    reading_timestamp DATE,
    latitude REAL,
    longitude REAL,
    speed_kph REAL,
    fuel_rate_lph REAL,
    engine_temp_celsius REAL,
    tire_pressure_front_left REAL,
    tire_pressure_front_right REAL,
    tire_pressure_rear_left REAL,
    tire_pressure_rear_right REAL,
    battery_voltage REAL,
    odometer_km INTEGER,
    acceleration_g REAL,
    braking_event INTEGER,
    gps_signal_strength INTEGER,
    data_quality_flag TEXT,
    uploaded_flag INTEGER,
    created_at DATE,
    updated_at DATE
);

INSERT INTO fleet_vehicle_sensor_data VALUES
(1, 4001, 'Telemetry', '2023-09-01', 40.7128, -74.0060, 60.5, 15.2, 85.0, 32.5, 32.7, 33.0, 32.9, 12.6, 120000, 0.3, 0, 5, 'Good', 1, '2023-09-01', '2023-09-02');

INSERT INTO fleet_vehicle_sensor_data VALUES
(2, 4002, 'Telemetry', '2023-09-02', 34.0522, -118.2437, 45.0, 12.8, 78.5, 31.8, 31.9, 32.1, 32.0, 12.4, 85000, 0.1, 1, 4, 'Good', 1, '2023-09-02', '2023-09-03');

INSERT INTO fleet_vehicle_sensor_data VALUES
(3, 4003, 'Telemetry', '2023-09-03', 51.5074, -0.1278, 70.2, 16.0, 90.2, 33.2, 33.1, 33.3, 33.0, 12.8, 150000, 0.4, 0, 5, 'Good', 1, '2023-09-03', '2023-09-04');

-- Regulatory policy snapshot records
CREATE TABLE regulatory_policy_snapshot
(
    snapshot_id INTEGER PRIMARY KEY,
    policy_id INTEGER,
    effective_date DATE,
    expiry_date DATE,
    jurisdiction TEXT,
    policy_type TEXT,
    version_number TEXT,
    summary TEXT,
    full_text TEXT,
    created_by INTEGER,
    approved_by INTEGER,
    status TEXT,
    compliance_level TEXT,
    amendment_number INTEGER,
    related_regulation_id INTEGER,
    impact_score INTEGER,
    enforcement_agency TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    source_system TEXT
);

INSERT INTO regulatory_policy_snapshot VALUES
(1, 5001, '2023-01-01', '2025-12-31', 'StateX', 'Finance', 'v1.0', 'Initial release', 'Full text of policy', 901, 902, 'Active', 'High', 0, NULL, 85, 'RegAgencyA', 'No notes', '2023-01-01', '2023-01-02', 'PolicyMgmt');

INSERT INTO regulatory_policy_snapshot VALUES
(2, 5002, '2022-06-15', '2024-06-14', 'StateY', 'Health', 'v2.1', 'Amended version', 'Full amended text', 903, 904, 'Active', 'Medium', 2, 5001, 70, 'RegAgencyB', 'Amendment applied', '2022-06-15', '2022-06-16', 'PolicyMgmt');

INSERT INTO regulatory_policy_snapshot VALUES
(3, 5003, '2021-03-01', '2023-02-28', 'Federal', 'Environment', 'v3.0', 'Updated standards', 'Full environmental policy', 905, 906, 'Expired', 'Low', 5, 5002, 60, 'RegAgencyC', 'Policy expired', '2021-03-01', '2021-03-02', 'PolicyMgmt');

-- Energy market trade records
CREATE TABLE energy_market_trade_record
(
    trade_id INTEGER PRIMARY KEY,
    market_id INTEGER,
    trade_date DATE,
    settlement_date DATE,
    product_type TEXT,
    quantity_mwh REAL,
    price_per_mwh REAL,
    total_value REAL,
    counterparty_id INTEGER,
    trade_status TEXT,
    broker_id INTEGER,
    trade_type TEXT,
    price_currency TEXT,
    execution_venue TEXT,
    clearing_house TEXT,
    margin_required REAL,
    net_position REAL,
    regulatory_reporting_flag INTEGER,
    created_by INTEGER,
    created_at DATE,
    updated_at DATE,
    notes TEXT
);

INSERT INTO energy_market_trade_record VALUES
(1, 6001, '2023-10-01', '2023-10-02', 'Electricity', 1500.5, 45.75, 68823.62, 7001, 'Confirmed', 8001, 'Spot', 'USD', 'EEX', 'EEXCH', 5000.00, 1500.5, 1, 901, '2023-10-01', '2023-10-02', 'Standard trade');

INSERT INTO energy_market_trade_record VALUES
(2, 6002, '2023-10-05', '2023-10-06', 'Gas', 800.0, 30.20, 24160.00, 7002, 'Pending', 8002, 'Forward', 'EUR', 'ICE', 'ICECH', 3000.00, 800.0, 0, 902, '2023-10-05', '2023-10-06', 'Awaiting confirmation');

INSERT INTO energy_market_trade_record VALUES
(3, 6003, '2023-10-10', '2023-10-11', 'Electricity', 2000.0, 48.00, 96000.00, 7003, 'Cancelled', 8003, 'Spot', 'USD', 'NYMEX', 'NYMEXCH', 6000.00, 2000.0, 1, 903, '2023-10-10', '2023-10-11', 'Trade cancelled by counterparty');

-- Healthcare provider agreement details
CREATE TABLE healthcare_provider_agreement
(
    agreement_id INTEGER PRIMARY KEY,
    provider_id INTEGER,
    contract_number TEXT,
    start_date DATE,
    end_date DATE,
    service_type TEXT,
    reimbursement_rate REAL,
    cap_amount REAL,
    fee_schedule TEXT,
    renewal_option TEXT,
    termination_notice_days INTEGER,
    governing_law TEXT,
    jurisdiction TEXT,
    confidentiality_clause TEXT,
    indemnity_clause TEXT,
    audit_rights TEXT,
    performance_metrics TEXT,
    contact_person TEXT,
    contact_phone TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO healthcare_provider_agreement VALUES
(1, 9001, 'HPA-001', '2023-01-01', '2025-12-31', 'PrimaryCare', 150.00, 500000.00, 'Monthly', 'Automatic', 60, 'StateLaw', 'StateZ', 'StandardConfidentiality', 'StandardIndemnity', 'AnnualAudit', 'KPIs', 'JohnDoe', '5551234', '2023-01-01', '2023-01-02');

INSERT INTO healthcare_provider_agreement VALUES
(2, 9002, 'HPA-002', '2022-06-15', '2024-06-14', 'Specialist', 200.00, 300000.00, 'Quarterly', 'Manual', 90, 'FederalLaw', 'RegionA', 'EnhancedConfidentiality', 'EnhancedIndemnity', 'BiannualAudit', 'QualityMetrics', 'JaneSmith', '5555678', '2022-06-15', '2022-06-16');

INSERT INTO healthcare_provider_agreement VALUES
(3, 9003, 'HPA-003', '2021-03-01', '2023-02-28', 'Diagnostics', 120.00, 200000.00, 'Monthly', 'Automatic', 30, 'StateLaw', 'StateY', 'StandardConfidentiality', 'StandardIndemnity', 'AnnualAudit', 'ServiceLevel', 'MikeBrown', '5559012', '2021-03-01', '2021-03-02');

-- Supply chain shipment plan entries
CREATE TABLE supply_chain_shipment_plan
(
    shipment_id INTEGER PRIMARY KEY,
    supplier_id INTEGER,
    destination_id INTEGER,
    expected_departure DATE,
    expected_arrival DATE,
    carrier TEXT,
    mode_of_transport TEXT,
    container_type TEXT,
    container_id TEXT,
    gross_weight_kg REAL,
    volume_cbm REAL,
    items_quantity INTEGER,
    special_handling_instructions TEXT,
    hazard_class TEXT,
    customs_declaration_number TEXT,
    insurance_policy_number TEXT,
    cost_estimate REAL,
    priority_level TEXT,
    status TEXT,
    created_by INTEGER,
    created_at DATE,
    updated_at DATE
);

INSERT INTO supply_chain_shipment_plan VALUES
(1, 11001, 21001, '2023-11-01', '2023-11-05', 'LogiTrans', 'Road', 'DryVan', 'CONT001', 12000.5, 30.2, 500, 'None', 'None', 'CDN12345', 'INS67890', 25000.00, 'High', 'Scheduled', 1001, '2023-10-20', '2023-10-21');

INSERT INTO supply_chain_shipment_plan VALUES
(2, 11002, 21002, '2023-11-03', '2023-11-08', 'SeaFreightCo', 'Sea', 'Reefer', 'CONT002', 25000.0, 55.5, 800, 'Refrigerated', 'Class3', 'CDN54321', 'INS09876', 40000.00, 'Medium', 'InTransit', 1002, '2023-10-22', '2023-10-23');

INSERT INTO supply_chain_shipment_plan VALUES
(3, 11003, 21003, '2023-11-10', '2023-11-12', 'AirExpress', 'Air', 'Box', 'CONT003', 5000.0, 12.0, 200, 'Fragile', 'None', 'CDN11223', 'INS33445', 15000.00, 'Low', 'Pending', 1003, '2023-10-25', '2023-10-26');

-- Marketing media analytics data
CREATE TABLE marketing_media_analytics
(
    analytics_id INTEGER PRIMARY KEY,
    campaign_id INTEGER,
    media_channel TEXT,
    impression_count INTEGER,
    click_count INTEGER,
    conversion_count INTEGER,
    cost_spent REAL,
    revenue_generated REAL,
    ctr_percent REAL,
    cpc_cost REAL,
    cpm_cost REAL,
    bounce_rate_percent REAL,
    avg_time_on_page_seconds INTEGER,
    audience_age_range TEXT,
    audience_gender TEXT,
    geographic_region TEXT,
    device_type TEXT,
    date DATE,
    notes TEXT,
    created_at DATE
);

INSERT INTO marketing_media_analytics VALUES
(1, 12001, 'Social', 500000, 25000, 3000, 12000.00, 45000.00, 5.0, 0.48, 24.00, 30.0, 180, '25-34', 'Female', 'NorthAmerica', 'Mobile', '2023-09-01', 'Successful Q3 campaign', '2023-09-02');

INSERT INTO marketing_media_analytics VALUES
(2, 12002, 'Search', 800000, 40000, 5000, 20000.00, 75000.00, 5.0, 0.50, 25.00, 25.0, 210, '35-44', 'Male', 'Europe', 'Desktop', '2023-09-15', 'High conversion rate', '2023-09-16');

INSERT INTO marketing_media_analytics VALUES
(3, 12003, 'Display', 300000, 12000, 800, 8000.00, 15000.00, 4.0, 0.67, 26.67, 45.0, 90, '18-24', 'Mixed', 'Asia', 'Tablet', '2023-09-30', 'Low engagement', '2023-10-01');