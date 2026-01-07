-- Branch communication logs capturing interactions between branch staff and clients
CREATE TABLE branch_communication_log
(
    log_id               INTEGER PRIMARY KEY,
    branch_id            INTEGER NOT NULL,
    client_id            INTEGER NOT NULL,
    employee_id          INTEGER NOT NULL,
    communication_type   TEXT NOT NULL,
    channel              TEXT NOT NULL,
    start_timestamp      DATE NOT NULL,
    end_timestamp        DATE NOT NULL,
    duration_minutes     INTEGER NOT NULL,
    outcome              TEXT NOT NULL,
    notes                TEXT,
    recorded_by          TEXT NOT NULL,
    recorded_at          DATE NOT NULL,
    follow_up_required   TEXT NOT NULL,
    follow_up_date       DATE,
    escalation_level     INTEGER,
    rating_score         REAL,
    language_used        TEXT,
    device_used          TEXT,
    compliance_flag      TEXT,
    audit_trail_id       INTEGER
);

INSERT INTO branch_communication_log VALUES (1, 101, 1001, 501, 'Inquiry', 'Phone', '2023-01-02', '2023-01-02', 15, 'Resolved', 'Customer asked about fees', 'system', '2023-01-02', 'No', NULL, 4.5, 'English', 'Desktop', 'Y', 3001);
INSERT INTO branch_communication_log VALUES (2, 102, 1002, 502, 'Complaint', 'Email', '2023-01-05', '2023-01-05', 5, 'Escalated', 'Late transaction processing', 'system', '2023-01-05', 'Yes', '2023-01-10', 2.0, 'Spanish', 'Mobile', 'N', 3002);
INSERT INTO branch_communication_log VALUES (3, 103, 1003, 503, 'Support', 'Chat', '2023-01-08', '2023-01-08', 12, 'Resolved', 'Password reset assistance', 'system', '2023-01-08', 'No', NULL, 5.0, 'English', 'Web', 'Y', 3003);

-- Public transport usage statistics per district
CREATE TABLE district_public_transport_usage
(
    usage_id               INTEGER PRIMARY KEY,
    district_id            INTEGER NOT NULL,
    transport_mode         TEXT NOT NULL,
    day_of_week            TEXT NOT NULL,
    date_recorded          DATE NOT NULL,
    passenger_count        INTEGER NOT NULL,
    average_trip_distance  REAL,
    peak_hour_start        TEXT,
    peak_hour_end          TEXT,
    vehicle_count          INTEGER,
    fare_collected          REAL,
    on_time_performance    REAL,
    service_disruptions    INTEGER,
    weather_condition      TEXT,
    special_event_flag     TEXT,
    average_wait_time      REAL,
    occupancy_rate         REAL,
    fuel_consumption_liters REAL,
    emissions_co2_kg       REAL,
    maintenance_requests   INTEGER,
    comment                TEXT
);

INSERT INTO district_public_transport_usage VALUES (1, 1, 'Bus', 'Monday', '2023-01-02', 1250, 5.4, '07:00', '09:00', 12, 2500.75, 93.5, 0, 'Clear', 'N', 4.2, 78.5, 850.0, 420.0, 2, 'Normal operation');
INSERT INTO district_public_transport_usage VALUES (2, 2, 'Tram', 'Tuesday', '2023-01-03', 870, 7.1, '16:00', '18:00', 8, 1800.20, 88.0, 1, 'Rain', 'Y', 6.0, 85.0, 640.5, 312.3, 4, 'Minor delay due to rain');
INSERT INTO district_public_transport_usage VALUES (3, 3, 'Metro', 'Wednesday', '2023-01-04', 2400, 12.3, '08:00', '10:00', 20, 5400.00, 97.2, 0, 'Clear', 'N', 3.5, 90.0, 1200.0, 600.0, 1, 'Peak weekday ridership');

-- Detailed economic indicators for regions
CREATE TABLE regional_economic_indicator_detail
(
    indicator_id            INTEGER PRIMARY KEY,
    region_id               INTEGER NOT NULL,
    year                    INTEGER NOT NULL,
    quarter                 INTEGER NOT NULL,
    gdp_real                REAL NOT NULL,
    gdp_per_capita          REAL,
    unemployment_rate       REAL,
    inflation_rate          REAL,
    consumer_confidence     REAL,
    industrial_production   REAL,
    export_value            REAL,
    import_value            REAL,
    trade_balance           REAL,
    fiscal_surplus_deficit  REAL,
    public_debt_percent_gdp REAL,
    household_income_avg    REAL,
    poverty_rate            REAL,
    investment_fdi          REAL,
    retail_sales_growth     REAL,
    tourism_arrivals        INTEGER,
    construction_permits    INTEGER,
    renewable_energy_pct    REAL,
    comment                 TEXT
);

INSERT INTO regional_economic_indicator_detail VALUES (1, 10, 2022, 1, 125000.5, 31000.2, 5.4, 2.1, 98.3, 85.0, 25000.0, 22000.0, 3000.0, -150.0, 45.2, 32000.0, 12.5, 3000.0, 2.1, 150000, 2000, 22.5, 'Stable growth');
INSERT INTO regional_economic_indicator_detail VALUES (2, 11, 2022, 2, 128500.9, 31500.8, 5.1, 2.3, 99.0, 86.5, 26000.0, 23000.0, 3000.0, -180.0, 44.8, 32500.0, 12.0, 3100.0, 2.3, 155000, 2100, 23.0, 'Slight improvement');
INSERT INTO regional_economic_indicator_detail VALUES (3, 12, 2022, 3, 130200.3, 31800.5, 4.9, 2.2, 99.5, 87.0, 27000.0, 24000.0, 3000.0, -200.0, 44.5, 33000.0, 11.8, 3200.0, 2.5, 160000, 2200, 24.0, 'Continues upward trend');

-- Customer loyalty tier history tracking changes over time
CREATE TABLE customer_loyalty_tier_history
(
    history_id          INTEGER PRIMARY KEY,
    client_id           INTEGER NOT NULL,
    tier_code           TEXT NOT NULL,
    tier_name           TEXT NOT NULL,
    effective_date      DATE NOT NULL,
    expiration_date     DATE,
    points_earned       INTEGER,
    points_redeemed     INTEGER,
    total_points_balance INTEGER,
    promotion_eligible  TEXT,
    last_purchase_date  DATE,
    last_purchase_amount REAL,
    average_spend_month REAL,
    transaction_count   INTEGER,
    channel_preference  TEXT,
    communication_opt_in TEXT,
    reward_status       TEXT,
    feedback_score      REAL,
    special_offer_used  TEXT,
    notes               TEXT,
    audit_user          TEXT,
    audit_timestamp     DATE
);

INSERT INTO customer_loyalty_tier_history VALUES (1, 1001, 'G', 'Gold', '2023-01-01', NULL, 5000, 1200, 3800, 'Y', '2023-01-20', 250.75, 180.5, 45, 'Online', 'Y', 'Active', 4.7, 'N', 'Upgraded after promotion', 'admin', '2023-01-21');
INSERT INTO customer_loyalty_tier_history VALUES (2, 1002, 'S', 'Silver', '2022-06-15', '2023-06-14', 3000, 800, 2200, 'Y', '2023-01-18', 150.00, 120.3, 30, 'Branch', 'N', 'Active', 4.2, 'Y', 'Redeemed summer offer', 'admin', '2023-01-19');
INSERT INTO customer_loyalty_tier_history VALUES (3, 1003, 'B', 'Bronze', '2021-03-10', '2022-03-09', 1500, 400, 1100, 'N', '2022-12-25', 80.25, 75.1, 15, 'Mobile', 'Y', 'Inactive', 3.8, 'N', 'Downgraded after inactivity', 'system', '2022-03-10');

-- ATM security device status logs
CREATE TABLE atm_security_device_status
(
    status_id            INTEGER PRIMARY KEY,
    atm_id               INTEGER NOT NULL,
    device_serial        TEXT NOT NULL,
    device_type          TEXT NOT NULL,
    firmware_version     TEXT,
    last_check_date      DATE NOT NULL,
    status               TEXT NOT NULL,
    error_code           TEXT,
    error_description    TEXT,
    battery_level_percent INTEGER,
    tamper_status        TEXT,
    physical_integrity   TEXT,
    network_connectivity TEXT,
    last_update_timestamp DATE,
    inspected_by         TEXT,
    inspection_result    TEXT,
    maintenance_due_date DATE,
    next_scheduled_test  DATE,
    sensor_calibration   TEXT,
    alert_generated      TEXT,
    comment              TEXT,
    logged_by            TEXT,
    log_timestamp        DATE
);

INSERT INTO atm_security_device_status VALUES (1, 2001, 'SN12345', 'Camera', 'v2.1.0', '2023-01-20', 'OK', NULL, NULL, 95, 'None', 'Intact', 'Online', '2023-01-20', 'tech1', 'Pass', '2023-07-20', '2023-02-20', 'Calibrated', 'N', 'All good', 'system', '2023-01-20');
INSERT INTO atm_security_device_status VALUES (2, 2002, 'SN54321', 'Shield', 'v1.8.3', '2023-01-18', 'Warning', 'E001', 'Camera obstruction', 80, 'Detected', 'Intact', 'Online', '2023-01-18', 'tech2', 'Fail', '2023-07-18', '2023-02-18', 'Calibration needed', 'Y', 'Obstruction cleared', 'system', '2023-01-18');
INSERT INTO atm_security_device_status VALUES (3, 2003, 'SN67890', 'CardReader', 'v3.0.5', '2023-01-22', 'OK', NULL, NULL, 100, 'None', 'Intact', 'Online', '2023-01-22', 'tech3', 'Pass', '2023-07-22', '2023-02-22', 'Calibrated', 'N', 'No issues', 'system', '2023-01-22');

-- Loan product pricing details
CREATE TABLE loan_product_pricing
(
    pricing_id               INTEGER PRIMARY KEY,
    loan_product_id          INTEGER NOT NULL,
    effective_start_date     DATE NOT NULL,
    effective_end_date       DATE,
    base_interest_rate       REAL NOT NULL,
    interest_rate_margin     REAL,
    max_interest_rate        REAL,
    min_interest_rate        REAL,
    fees_initial             REAL,
    fees_annual              REAL,
    processing_fee_percent   REAL,
    early_repayment_penalty  REAL,
    loan_term_months         INTEGER NOT NULL,
    loan_amount_min          INTEGER,
    loan_amount_max          INTEGER,
    credit_score_min         INTEGER,
    credit_score_max         INTEGER,
    amortization_type        TEXT,
    variable_rate_flag       TEXT,
    rate_adjustment_interval INTEGER,
    rate_cap_percent         REAL,
    promotional_rate         REAL,
    promotional_period_months INTEGER,
    notes                    TEXT,
    created_by               TEXT,
    created_at               DATE
);

INSERT INTO loan_product_pricing VALUES (1, 301, '2023-01-01', NULL, 3.5, 0.8, 5.0, 2.5, 100.0, 20.0, 0.5, 2.0, 60, 5000, 50000, 650, 850, 'Fixed', 'N', NULL, NULL, NULL, NULL, 'Standard loan', 'admin', '2023-01-01');
INSERT INTO loan_product_pricing VALUES (2, 302, '2023-02-01', '2023-12-31', 2.9, 0.6, 4.5, 2.0, 150.0, 25.0, 0.4, 1.5, 48, 10000, 75000, 700, 900, 'Fixed', 'Y', 12, 0.3, 2.5, 6, 'Promotional rate for Q2', 'admin', '2023-02-01');
INSERT INTO loan_product_pricing VALUES (3, 303, '2023-03-15', NULL, 4.2, 1.0, 6.0, 3.2, 120.0, 22.0, 0.6, 2.5, 72, 20000, 100000, 600, 800, 'Variable', 'Y', 6, 0.5, 0.0, NULL, 'High‑value loan tier', 'admin', '2023-03-15');

-- Card fraud detection event logs
CREATE TABLE card_fraud_detection
(
    fraud_id               INTEGER PRIMARY KEY,
    card_id                INTEGER NOT NULL,
    detection_timestamp    DATE NOT NULL,
    fraud_type             TEXT NOT NULL,
    risk_score             REAL,
    merchant_category_code TEXT,
    transaction_amount     REAL,
    transaction_currency   TEXT,
    location_country       TEXT,
    location_city          TEXT,
    device_id              TEXT,
    ip_address             TEXT,
    login_attempts        INTEGER,
    previous_fraud_flag    TEXT,
    action_taken           TEXT,
    case_status            TEXT,
    analyst_assigned       TEXT,
    resolution_timestamp   DATE,
    notes                  TEXT,
    reported_by            TEXT,
    report_timestamp       DATE,
    escalation_level       INTEGER,
    mitigation_details    TEXT,
    alert_generated        TEXT
);

INSERT INTO card_fraud_detection VALUES (1, 4001, '2023-01-19', 'StolenCard', 92.5, '5411', 1200.00, 'USD', 'US', 'NewYork', 'DEV123', '192.168.1.10', 0, 'N', 'CardBlocked', 'Closed', 'analyst1', '2023-01-20', 'Customer confirmed theft', 'system', '2023-01-19', 2, 'Card reissued', 'Y');
INSERT INTO card_fraud_detection VALUES (2, 4002, '2023-01-22', 'CardNotPresent', 78.0, '4111', 300.50, 'EUR', 'DE', 'Berlin', 'DEV456', '10.0.0.5', 1, 'Y', 'TransactionCancelled', 'Open', 'analyst2', NULL, 'Investigating merchant dispute', 'system', '2023-01-22', 1, NULL, 'Y');
INSERT INTO card_fraud_detection VALUES (3, 4003, '2023-01-25', 'Velocity', 65.3, '5999', 50.00, 'GBP', 'GB', 'London', 'DEV789', '172.16.0.2', 3, 'N', 'AlertSent', 'Monitoring', 'analyst3', NULL, 'Multiple small purchases in short time', 'system', '2023-01-25', 0, NULL, 'Y');

-- Digital wallet activity log
CREATE TABLE digital_wallet_activity_log
(
    activity_id            INTEGER PRIMARY KEY,
    wallet_id              INTEGER NOT NULL,
    user_id                INTEGER NOT NULL,
    activity_timestamp     DATE NOT NULL,
    activity_type          TEXT NOT NULL,
    amount                 REAL,
    currency               TEXT,
    merchant_id            TEXT,
    merchant_category      TEXT,
    device_type            TEXT,
    ip_address             TEXT,
    location_country       TEXT,
    location_city          TEXT,
    session_id             TEXT,
    auth_method            TEXT,
    fraud_flag             TEXT,
    notes                  TEXT,
    processed_by           TEXT,
    processed_timestamp    DATE,
    status                 TEXT,
    settlement_date        DATE,
    settlement_reference   TEXT,
    reversal_amount        REAL,
    reversal_reason        TEXT,
    audit_user             TEXT,
    audit_timestamp        DATE
);

INSERT INTO digital_wallet_activity_log VALUES (1, 5001, 1001, '2023-01-10', 'Payment', 45.75, 'USD', 'M123', 'Retail', 'Mobile', '203.0.113.5', 'US', 'NewYork', 'SID001', 'Biometric', 'N', NULL, 'system', '2023-01-10', 'Completed', '2023-01-11', 'SETT001', NULL, NULL, 'admin', '2023-01-10');
INSERT INTO digital_wallet_activity_log VALUES (2, 5002, 1002, '2023-01-12', 'Transfer', 250.00, 'EUR', 'U456', 'Transfer', 'Web', '198.51.100.23', 'DE', 'Berlin', 'SID002', 'Password', 'N', NULL, 'system', '2023-01-12', 'Pending', NULL, NULL, NULL, NULL, 'admin', '2023-01-12');
INSERT INTO digital_wallet_activity_log VALUES (3, 5003, 1003, '2023-01-15', 'Refund', 30.00, 'GBP', 'M789', 'Service', 'Tablet', '192.0.2.77', 'GB', 'London', 'SID003', 'Password', 'Y', 'Possible duplicate', 'system', '2023-01-15', 'Reversed', '2023-01-16', 'SETT003', 30.00, 'Duplicate transaction', 'admin', '2023-01-15');

-- Risk metric time series data
CREATE TABLE risk_metric_time_series
(
    record_id                INTEGER PRIMARY KEY,
    metric_name              TEXT NOT NULL,
    observation_date         DATE NOT NULL,
    value_numeric            REAL,
    value_category           TEXT,
    source_system            TEXT,
    confidence_level         REAL,
    notes                    TEXT,
    created_by               TEXT,
    created_at               DATE,
    updated_by               TEXT,
    updated_at               DATE,
    threshold_warning       REAL,
    threshold_critical      REAL,
    alert_sent               TEXT,
    remediation_action       TEXT,
    regulatory_flag          TEXT,
    data_quality_score       REAL,
    aggregation_level        TEXT,
    region_id                INTEGER,
    department_id            INTEGER,
    related_metric_id        INTEGER,
    external_reference       TEXT,
    compliance_status        TEXT
);

INSERT INTO risk_metric_time_series VALUES (1, 'LiquidityRatio', '2023-01-31', 1.85, NULL, 'FinanceCore', 0.98, 'Within normal range', 'system', '2023-01-31', 'system', '2023-01-31', 1.5, 1.2, 'N', NULL, 'N', 0.99, 'Monthly', 1, 10, NULL, NULL, 'Compliant');
INSERT INTO risk_metric_time_series VALUES (2, 'CreditDefaultRate', '2023-01-31', 0.032, NULL, 'RiskEngine', 0.95, 'Slight increase YoY', 'system', '2023-01-31', 'system', '2023-01-31', 0.025, 0.04, 'Y', 'Review needed', 'N', 0.94, 'Monthly', 1, 10, NULL, NULL, 'Watchlist');
INSERT INTO risk_metric_time_series VALUES (3, 'OperationalLosses', '2023-01-31', 75000.0, NULL, 'OpsMonitor', 0.92, 'Higher than budget', 'system', '2023-01-31', 'system', '2023-01-31', 50000.0, 100000.0, 'Y', 'Investigate root cause', 'Y', 0.90, 'Monthly', 1, 10, NULL, NULL, 'NonCompliant');

-- Environmental sensor station readings
CREATE TABLE environmental_sensor_station_readings
(
    reading_id               INTEGER PRIMARY KEY,
    station_id               INTEGER NOT NULL,
    reading_timestamp        DATE NOT NULL,
    temperature_celsius      REAL,
    humidity_percent         REAL,
    pm2_5_ug_m3              REAL,
    pm10_ug_m3               REAL,
    no2_ppb                  REAL,
    o3_ppb                   REAL,
    co_ppm                   REAL,
    wind_speed_m_s           REAL,
    wind_direction_deg       INTEGER,
    precipitation_mm         REAL,
    solar_irradiance_wm2     REAL,
    battery_voltage          REAL,
    signal_strength_dbm      REAL,
    maintenance_required    TEXT,
    alert_flag               TEXT,
    notes                    TEXT,
    recorded_by              TEXT,
    recorded_at              DATE,
    calibration_date         DATE,
    sensor_firmware_version  TEXT,
    data_quality_flag        TEXT,
    regulatory_compliance    TEXT
);

INSERT INTO environmental_sensor_station_readings VALUES (1, 8001, '2023-01-20', 22.5, 55.0, 12.3, 25.0, 30.0, 45.0, 0.4, 3.2, 180, 0.0, 500.0, 3.7, -70, 'N', 'N', NULL, 'system', '2023-01-20', '2022-12-01', 'v1.2.3', 'Good', 'Compliant');
INSERT INTO environmental_sensor_station_readings VALUES (2, 8002, '2023-01-20', 18.2, 65.0, 20.1, 40.5, 28.0, 50.0, 0.5, 2.8, 90, 1.2, 480.0, 3.6, -68, 'Y', 'Y', 'High PM2.5 observed', 'system', '2023-01-20', '2022-11-15', 'v1.2.1', 'Moderate', 'Compliant');
INSERT INTO environmental_sensor_station_readings VALUES (3, 8003, '2023-01-20', 5.0, 80.0, 5.0, 10.0, 15.0, 20.0, 0.2, 5.0, 270, 0.0, 300.0, 3.8, -72, 'N', 'N', NULL, 'system', '2023-01-20', '2022-10-30', 'v1.1.9', 'Good', 'Compliant');

-- Fleet vehicle usage logs
CREATE TABLE fleet_vehicle_usage
(
    usage_id                 INTEGER PRIMARY KEY,
    vehicle_id               INTEGER NOT NULL,
    driver_id                INTEGER NOT NULL,
    trip_start_timestamp     DATE NOT NULL,
    trip_end_timestamp       DATE NOT NULL,
    start_odometer_km        INTEGER,
    end_odometer_km          INTEGER,
    distance_km              INTEGER,
    fuel_consumed_liters     REAL,
    average_speed_kmh        REAL,
    cargo_weight_kg          REAL,
    route_id                 INTEGER,
    maintenance_required     TEXT,
    violation_flag           TEXT,
    gps_signal_quality       TEXT,
    temperature_celsius      REAL,
    humidity_percent         REAL,
    road_condition           TEXT,
    notes                    TEXT,
    logged_by                TEXT,
    log_timestamp            DATE,
    inspection_due_date      DATE,
    last_inspection_date     DATE,
    insurance_expiry_date    DATE,
    compliance_status        TEXT
);

INSERT INTO fleet_vehicle_usage VALUES (1, 9001, 701, '2023-01-10', '2023-01-10', 15000, 15120, 120, 15.5, 60.0, 500.0, 401, 'N', 'N', 'Strong', 22.0, 55.0, 'Good', NULL, 'system', '2023-01-10', '2023-07-10', '2023-01-05', '2024-01-01', 'Compliant');
INSERT INTO fleet_vehicle_usage VALUES (2, 9002, 702, '2023-01-12', '2023-01-12', 25000, 25180, 180, 22.0, 55.0, 800.0, 402, 'Y', 'Y', 'Weak', 18.0, 65.0, 'Poor', 'Tire pressure low', 'system', '2023-01-12', '2023-08-12', '2023-01-07', '2024-02-15', 'NonCompliant');
INSERT INTO fleet_vehicle_usage VALUES (3, 9003, 703, '2023-01-15', '2023-01-15', 35000, 35150, 150, 18.3, 58.0, 600.0, 403, 'N', 'N', 'Strong', 20.0, 60.0, 'Good', NULL, 'system', '2023-01-15', '2023-09-15', '2023-01-10', '2024-03-20', 'Compliant');