-- Branch security device log
CREATE TABLE branch_security_device_log (
    log_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    device_id TEXT NOT NULL,
    device_type TEXT NOT NULL,
    install_date DATE NOT NULL,
    last_maintenance DATE,
    status TEXT NOT NULL,
    firmware_version TEXT,
    ip_address TEXT,
    mac_address TEXT,
    location_description TEXT,
    alert_count INTEGER,
    last_alert_date DATE,
    battery_level REAL,
    signal_strength REAL,
    vendor_name TEXT,
    warranty_expiry DATE,
    config_checksum TEXT,
    admin_user_id INTEGER,
    notes TEXT
);
INSERT INTO branch_security_device_log VALUES (1, 101, DEV001, CAMERA, '2022-01-15', '2023-06-10', ACTIVE, V1.2, 192168001, AA11BB22CC33, Lobby, 0, NULL, 95.5, -70.2, SecuraTech, '2025-01-01', ABC123DEF, 501, NULL);
INSERT INTO branch_security_device_log VALUES (2, 102, DEV002, ACCESS_CTRL, '2021-11-03', '2023-04-22', INACTIVE, V2.0, 192168002, DD44EE55FF66, Vault, 3, '2023-07-01', 80.0, -65.0, GuardInc, '2024-12-31', XYZ789GHI, 502, MaintenanceRequired);
INSERT INTO branch_security_device_log VALUES (3, 103, DEV003, MOTION_SENSOR, '2022-05-20', NULL, ACTIVE, V1.0, 192168003, GG77HH88II99, Parking, 1, '2023-06-15', 60.2, -55.1, SafeWatch, '2026-03-15', LMN456OPQ, 503, NULL);

-- Fleet telemetry summary
CREATE TABLE fleet_telemetry_summary (
    telemetry_id INTEGER PRIMARY KEY,
    vehicle_id TEXT NOT NULL,
    record_timestamp DATE NOT NULL,
    latitude REAL,
    longitude REAL,
    speed_kmh REAL,
    engine_rpm INTEGER,
    fuel_level_percent REAL,
    odometer_km INTEGER,
    coolant_temp_c REAL,
    battery_voltage REAL,
    tire_pressure_front_left REAL,
    tire_pressure_front_right REAL,
    tire_pressure_rear_left REAL,
    tire_pressure_rear_right REAL,
    brake_status TEXT,
    transmission_gear INTEGER,
    driver_id INTEGER,
    trip_id TEXT,
    gps_signal_strength REAL
);
INSERT INTO fleet_telemetry_summary VALUES (1001, VHC001, '2023-07-01', 40.7128, -74.0060, 65.5, 2500, 78.3, 152300, 90.5, 12.6, 32.1, 31.9, 32.0, 31.8, OK, 4, 2001, TRP1001, -70.2);
INSERT INTO fleet_telemetry_summary VALUES (1002, VHC002, '2023-07-01', 34.0522, -118.2437, 0.0, 0, 55.0, 98750, 85.0, 12.4, 0.0, 0.0, 0.0, 0.0, PARKED, 0, 2002, TRP1002, -80.0);
INSERT INTO fleet_telemetry_summary VALUES (1003, VHC003, '2023-07-01', 41.8781, -87.6298, 80.2, 3000, 45.7, 203500, 95.2, 12.8, 33.0, 33.2, 33.1, 32.9, OK, 5, 2003, TRP1003, -68.5);

-- Environmental sensor station meta
CREATE TABLE environmental_sensor_station_meta (
    station_id INTEGER PRIMARY KEY,
    station_name TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    elevation_m REAL,
    install_date DATE,
    sensor_type TEXT,
    manufacturer TEXT,
    maintenance_interval_days INTEGER,
    last_maintenance DATE,
    firmware_version TEXT,
    network_id TEXT,
    power_source TEXT,
    communication_protocol TEXT,
    data_retention_days INTEGER,
    calibration_date DATE,
    calibration_factor REAL,
    is_active TEXT,
    region_code TEXT,
    notes TEXT
);
INSERT INTO environmental_sensor_station_meta VALUES (1, StationA, 35.6895, 139.6917, 44.0, '2020-03-10', Weather, ClimateTech, 180, '2023-03-01', V3.1, NET001, Solar, MQTT, 365, '2023-02-28', 1.02, ACTIVE, JP01, NULL);
INSERT INTO environmental_sensor_station_meta VALUES (2, StationB, 48.8566, 2.3522, 35.0, '2019-07-22', AirQuality, AirSense, 365, '2022-12-15', V2.8, NET002, Grid, HTTP, 730, '2022-12-10', 0.98, INACTIVE, FR01, Decommissioned);
INSERT INTO environmental_sensor_station_meta VALUES (3, StationC, 51.5074, -0.1278, 15.0, '2021-11-05', Water, AquaMetrics, 90, '2023-05-20', V1.5, NET003, Battery, CoAP, 180, '2023-05-18', 1.00, ACTIVE, UK01, NULL);

-- Digital wallet transaction log
CREATE TABLE digital_wallet_transaction_log (
    txn_id INTEGER PRIMARY KEY,
    wallet_id TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    txn_date DATE NOT NULL,
    txn_time TEXT NOT NULL,
    amount REAL NOT NULL,
    currency TEXT NOT NULL,
    merchant_id TEXT,
    merchant_category TEXT,
    status TEXT,
    auth_code TEXT,
    channel TEXT,
    device_id TEXT,
    geo_country TEXT,
    geo_city TEXT,
    fee_amount REAL,
    exchange_rate REAL,
    settlement_date DATE,
    notes TEXT,
    reversal_flag TEXT
);
INSERT INTO digital_wallet_transaction_log VALUES (5001, WAL001, 3001, '2023-07-01', '14:22:10', 150.75, USD, MCH001, RETAIL, SUCCESS, AUTH123, MOBILE, DEV001, US, NewYork, 1.50, 1.0, '2023-07-02', NULL, NO);
INSERT INTO digital_wallet_transaction_log VALUES (5002, WAL002, 3002, '2023-07-01', '09:05:45', 45.00, EUR, MCH002, FOOD, FAILED, AUTH456, WEB, DEV002, DE, Berlin, 0.90, 0.95, NULL, InsufficientFunds, NO);
INSERT INTO digital_wallet_transaction_log VALUES (5003, WAL003, 3003, '2023-07-01', '20:30:00', 2000.00, GBP, MCH003, TRAVEL, SUCCESS, AUTH789, APP, DEV003, GB, London, 10.00, 1.3, '2023-07-03', VIPCustomer, NO);

-- Customer loyalty activity
CREATE TABLE customer_loyalty_activity (
    activity_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    activity_date DATE NOT NULL,
    activity_type TEXT NOT NULL,
    points_earned INTEGER,
    points_redeemed INTEGER,
    transaction_id INTEGER,
    channel TEXT,
    product_category TEXT,
    store_id INTEGER,
    staff_id INTEGER,
    promo_code TEXT,
    tier_before TEXT,
    tier_after TEXT,
    comment TEXT,
    location_lat REAL,
    location_long REAL,
    device_type TEXT,
    campaign_id TEXT,
    is_successful TEXT
);
INSERT INTO customer_loyalty_activity VALUES (9001, 4001, '2023-07-01', PURCHASE, 120, 0, 8001, MOBILE, ELECTRONICS, 101, 501, PROMO10, GOLD, PLATINUM, NULL, 40.7128, -74.0060, PHONE, CAMP001, YES);
INSERT INTO customer_loyalty_activity VALUES (9002, 4002, '2023-07-01', REFERRAL, 200, 0, NULL, WEB, N/A, 102, 502, REF2023, SILVER, GOLD, FirstReferral, 34.0522, -118.2437, DESKTOP, CAMP002, YES);
INSERT INTO customer_loyalty_activity VALUES (9003, 4003, '2023-07-01', REDEMPTION, 0, 150, 8003, APP, GROCERY, 103, 503, NULL, PLATINUM, PLATINUM, RedeemedGiftCard, 41.8781, -87.6298, TABLET, CAMP003, YES);

-- Supplier contract detail
CREATE TABLE supplier_contract_detail (
    contract_id INTEGER PRIMARY KEY,
    supplier_id INTEGER NOT NULL,
    contract_start DATE NOT NULL,
    contract_end DATE NOT NULL,
    contract_type TEXT NOT NULL,
    total_value REAL,
    currency TEXT,
    payment_terms TEXT,
    service_level TEXT,
    penalty_clause TEXT,
    renewal_option TEXT,
    governing_law TEXT,
    signatory_name TEXT,
    signatory_title TEXT,
    attached_document TEXT,
    audit_frequency_days INTEGER,
    last_audit DATE,
    compliance_status TEXT,
    notes TEXT,
    is_active TEXT
);
INSERT INTO supplier_contract_detail VALUES (30001, 7001, '2022-01-01', '2025-12-31', FRAMEWORK, 1250000.00, USD, Net30, Gold, Penalty10, AutoRenew, US, JohnDoe, ProcurementMgr, doc30001.pdf, 180, '2023-06-15', COMPLIANT, NULL, YES);
INSERT INTO supplier_contract_detail VALUES (30002, 7002, '2021-06-15', '2024-06-14', SERVICE, 850000.00, EUR, Net45, Silver, NoRenew, EU, MariaSmith, LegalCounsel, doc30002.pdf, 365, '2022-12-01', NONCOMPLIANT, LateDeliveries, NO);
INSERT INTO supplier_contract_detail VALUES (30003, 7003, '2023-03-01', '2026-02-28', SUPPLY, 500000.00, GBP, Net60, Bronze, Penalty5, AutoRenew, UK, AlanBrown, OperationsHead, doc30003.pdf, 90, '2023-05-20', COMPLIANT, GoodPerformance, YES);

-- Regulatory report summary
CREATE TABLE regulatory_report_summary (
    report_id INTEGER PRIMARY KEY,
    report_name TEXT NOT NULL,
    reporting_period TEXT NOT NULL,
    submission_date DATE,
    regulator TEXT,
    total_issues INTEGER,
    critical_issues INTEGER,
    high_issues INTEGER,
    medium_issues INTEGER,
    low_issues INTEGER,
    resolved_issues INTEGER,
    pending_issues INTEGER,
    compliance_score REAL,
    remarks TEXT,
    file_path TEXT,
    approved_by TEXT,
    approval_date DATE,
    review_cycle_days INTEGER,
    next_due_date DATE,
    is_final TEXT
);
INSERT INTO regulatory_report_summary VALUES (4001, AMLReport, Q2_2023, '2023-07-10', FINCEN, 12, 2, 3, 4, 3, 8, 4, 92.5, NULL, /reports/aml_q2_2023.pdf, JaneLee, '2023-07-11', 90, '2023-10-09', YES);
INSERT INTO regulatory_report_summary VALUES (4002, GDPRAudit, FY2022, '2023-04-05', EUCommission, 5, 0, 1, 2, 2, 5, 0, 98.0, MinorFindingsCorrected, /reports/gdpr_fy2022.pdf, MarkTaylor, '2023-04-06', 365, '2024-04-05', YES);
INSERT INTO regulatory_report_summary VALUES (4003, BaselIIICompliance, Q1_2023, '2023-04-20', BSB, 20, 5, 5, 5, 5, 15, 5, 85.0, FollowUpRequired, /reports/basel_q1_2023.pdf, SusanWhite, '2023-04-21', 180, '2023-10-18', NO);

-- ATM maintenance task log
CREATE TABLE atm_maintenance_task_log (
    task_id INTEGER PRIMARY KEY,
    atm_id INTEGER NOT NULL,
    maintenance_date DATE NOT NULL,
    technician_id INTEGER,
    task_type TEXT NOT NULL,
    task_status TEXT,
    notes TEXT,
    cash_loaded INTEGER,
    cash_removed INTEGER,
    cassette_count INTEGER,
    software_version TEXT,
    hardware_version TEXT,
    error_code TEXT,
    downtime_minutes INTEGER,
    next_scheduled DATE,
    priority_level TEXT,
    location_lat REAL,
    location_long REAL,
    compliance_checked TEXT,
    supervisor_id INTEGER
);
INSERT INTO atm_maintenance_task_log VALUES (7001, 2001, '2023-06-30', 9001, CASH_REPLENISH, COMPLETED, RefilledToFull, 20000, 0, 4, V1.4, HW2, NULL, 15, '2023-09-30', HIGH, 40.7128, -74.0060, YES, 8001);
INSERT INTO atm_maintenance_task_log VALUES (7002, 2002, '2023-07-01', 9002, SOFTWARE_UPDATE, IN_PROGRESS, UpdatingOS, 0, 0, 4, V1.5, HW2, ERR12, 30, '2023-10-01', MEDIUM, 34.0522, -118.2437, NO, 8002);
INSERT INTO atm_maintenance_task_log VALUES (7003, 2003, '2023-07-02', 9003, HARDWARE_REPAIR, PENDING, ReplaceCardReader, 0, 0, 4, V1.4, HW3, ERR07, 0, '2023-08-15', HIGH, 41.8781, -87.6298, NO, 8003);

-- Marketing campaign performance
CREATE TABLE marketing_campaign_performance (
    campaign_id INTEGER PRIMARY KEY,
    campaign_name TEXT NOT NULL,
    start_date DATE,
    end_date DATE,
    channel TEXT,
    budget_usd REAL,
    spend_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    conversion_rate REAL,
    cpc REAL,
    cpm REAL,
    roi_percent REAL,
    target_audience TEXT,
    geo_target TEXT,
    device_target TEXT,
    creative_type TEXT,
    status TEXT,
    notes TEXT
);
INSERT INTO marketing_campaign_performance VALUES (90001, SummerSale2023, '2023-06-01', '2023-06-30', Social, 50000, 47000, 2500000, 125000, 5000, 4.0, 0.376, 18.8, 6.38, Adults30_45, US, Mobile, Video, COMPLETED, NULL);
INSERT INTO marketing_campaign_performance VALUES (90002, NewProductLaunch, '2023-07-01', '2023-07-31', Email, 20000, 19000, 800000, 40000, 3000, 7.5, 0.475, 23.75, 15.79, Professionals, EU, Desktop, HTML, RUNNING, AdjustingBid);
INSERT INTO marketing_campaign_performance VALUES (90003, HolidayPromo, '2023-11-01', '2023-11-30', TV, 150000, 148000, 500000, 20000, 8000, 4.0, 7.4, 29.6, 10.81, Families, Global, All, Spot, PLANNED, NULL);

-- Loan collateral inventory
CREATE TABLE loan_collateral_inventory (
    collateral_id INTEGER PRIMARY KEY,
    loan_id INTEGER NOT NULL,
    collateral_type TEXT NOT NULL,
    description TEXT,
    valuation_amount REAL,
    valuation_date DATE,
    currency TEXT,
    location TEXT,
    serial_number TEXT,
    registration_number TEXT,
    owner_name TEXT,
    lien_status TEXT,
    insurance_policy_id TEXT,
    insurance_status TEXT,
    depreciation_rate REAL,
    estimated_resale_value REAL,
    appraisal_company TEXT,
    notes TEXT,
    last_inspection DATE,
    is_active TEXT
);
INSERT INTO loan_collateral_inventory VALUES (11001, 50001, REAL_ESTATE, DowntownCondo, 350000, '2023-06-15', USD, NewYork, SN12345, REG98765, JohnDoe, LIENED, POL001, ACTIVE, 1.2, 340000, ABCAppraisals, NULL, '2023-07-01', YES);
INSERT INTO loan_collateral_inventory VALUES (11002, 50002, VEHICLE, Sedan2020, 25000, '2023-05-20', USD, LosAngeles, SN67890, REG54321, JaneSmith, UNLIENED, POL002, EXPIRED, 2.5, 24000, XYZValuations, MinorScratches, '2023-06-30', YES);
INSERT INTO loan_collateral_inventory VALUES (11003, 50003, EQUIPMENT, CNC_Machine, 120000, '2023-07-01', USD, Chicago, SN24680, REG13579, AcmeCorp, LIENED, POL003, ACTIVE, 1.8, 118000, DEFAssessors, RequiresMaintenance, '2023-07-02', YES);

-- Digital asset usage
CREATE TABLE digital_asset_usage (
    usage_id INTEGER PRIMARY KEY,
    asset_id TEXT NOT NULL,
    asset_type TEXT NOT NULL,
    user_id INTEGER,
    usage_start DATETIME,
    usage_end DATETIME,
    duration_seconds INTEGER,
    access_method TEXT,
    device_id TEXT,
    ip_address TEXT,
    location_lat REAL,
    location_long REAL,
    data_transferred_mb REAL,
    action_performed TEXT,
    status TEXT,
    notes TEXT,
    compliance_flag TEXT,
    retention_policy TEXT,
    last_modified DATETIME,
    is_active TEXT
);
INSERT INTO digital_asset_usage VALUES (20001, ASSET001, IMAGE, 4001, '2023-07-01 09:15:00', '2023-07-01 09:15:05', 5, API, DEV100, 192168010, 40.7128, -74.0060, 0.5, VIEW, SUCCESS, NULL, YES, STANDARD, '2023-07-01 09:15:05', YES);
INSERT INTO digital_asset_usage VALUES (20002, ASSET002, VIDEO, 4002, '2023-07-01 10:00:00', '2023-07-01 10:30:00', 1800, WEB, DEV101, 192168011, 34.0522, -118.2437, 1500, PLAY, SUCCESS, NULL, YES, PREMIUM, '2023-07-01 10:30:00', YES);
INSERT INTO digital_asset_usage VALUES (20003, ASSET003, DOCUMENT, 4003, '2023-07-01 11:45:00', '2023-07-01 11:47:30', 150, MOBILE, DEV102, 192168012, 41.8781, -87.6298, 2.3, EDIT, SUCCESS, RevisedSection2, YES, ARCHIVE, '2023-07-01 11:47:30', YES);