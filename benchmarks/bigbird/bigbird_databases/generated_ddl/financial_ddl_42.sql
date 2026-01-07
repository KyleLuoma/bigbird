-- Table containing detailed footfall analysis per branch
CREATE TABLE branch_footfall_analysis
(
    branch_id               INTEGER NOT NULL,
    analysis_date           DATE NOT NULL,
    total_visits            INTEGER NOT NULL,
    unique_visitors         INTEGER NOT NULL,
    avg_dwell_minutes      REAL NOT NULL,
    peak_hour_start         INTEGER NOT NULL,
    peak_hour_end           INTEGER NOT NULL,
    weekend_visits          INTEGER NOT NULL,
    holiday_visits          INTEGER NOT NULL,
    male_visitors           INTEGER NOT NULL,
    female_visitors         INTEGER NOT NULL,
    age_group_18_25         INTEGER NOT NULL,
    age_group_26_35         INTEGER NOT NULL,
    age_group_36_45         INTEGER NOT NULL,
    age_group_46_60         INTEGER NOT NULL,
    age_group_60_plus       INTEGER NOT NULL,
    marketing_campaign_id   INTEGER NOT NULL,
    weather_condition       TEXT NOT NULL,
    temperature_c           REAL NOT NULL,
    footfall_score          REAL NOT NULL,
    notes                   TEXT
);

INSERT INTO branch_footfall_analysis VALUES (101, 2023-01-15, 12450, 10320, 15.2, 9, 11, 2100, 350, 6200, 6250, 2500, 3400, 2800, 1500, 900, 12, Summer, 22.5, 87.3, InitialRun);
INSERT INTO branch_footfall_analysis VALUES (102, 2023-01-15, 9800, 8200, 13.7, 10, 12, 1800, 300, 4800, 5000, 2100, 2900, 2100, 1300, 800, 7, Winter, -5.0, 78.1, SnowDay);
INSERT INTO branch_footfall_analysis VALUES (103, 2023-01-15, 11200, 9700, 14.5, 8, 10, 2000, 320, 5600, 5800, 2300, 3100, 2500, 1400, 850, 9, Rainy, 12.3, 81.4, RainyMorning);


-- Table logging employee certifications and expiration dates
CREATE TABLE employee_certification_log
(
    employee_id            INTEGER NOT NULL,
    cert_name              TEXT NOT NULL,
    cert_number            TEXT NOT NULL,
    issuing_body           TEXT NOT NULL,
    issue_date             DATE NOT NULL,
    expiration_date        DATE NOT NULL,
    status                 TEXT NOT NULL,
    renewal_required       TEXT NOT NULL,
    last_renewal_date      DATE,
    next_renewal_deadline  DATE,
    cert_level             TEXT,
    cert_category          TEXT,
    cert_type              TEXT,
    cert_score             REAL,
    cert_comments          TEXT,
    training_hours         INTEGER,
    trainer_name           TEXT,
    audit_status           TEXT,
    audit_date             DATE,
    created_timestamp      DATE,
    updated_timestamp      DATE
);

INSERT INTO employee_certification_log VALUES (2001, AMLTraining, AML12345, FinRegAuthority, 2022-03-01, 2025-03-01, Active, Yes, 2023-03-01, 2024-03-01, Advanced, Compliance, Online, 95.5, None, 40, JohnDoe, Passed, 2023-04-10, 2023-04-10, 2023-04-10);
INSERT INTO employee_certification_log VALUES (2002, DataPrivacy, DP98765, DataGov, 2021-07-15, 2024-07-15, Expired, Yes, 2023-07-15, 2024-07-15, Intermediate, Privacy, Workshop, 88.2, UpdatedPolicy, 30, JaneSmith, Failed, 2022-08-20, 2022-08-20, 2022-08-20);
INSERT INTO employee_certification_log VALUES (2003, CyberSecurity, CS54321, CyberSecOrg, 2023-01-10, 2026-01-10, Active, No, NULL, NULL, Beginner, Security, Seminar, 92.0, N/A, 20, MikeLee, Pending, NULL, 2023-01-15, 2023-01-15);


-- Table capturing online advertising session details
CREATE TABLE online_advertising_session
(
    session_id               INTEGER NOT NULL,
    campaign_id              INTEGER NOT NULL,
    ad_unit_id               INTEGER NOT NULL,
    impression_timestamp     DATE NOT NULL,
    click_timestamp          DATE,
    user_id                  INTEGER,
    device_type              TEXT,
    browser                  TEXT,
    os_version               TEXT,
    country                  TEXT,
    region                   TEXT,
    city                     TEXT,
    ip_address               TEXT,
    referrer_url             TEXT,
    landing_page_url         TEXT,
    conversion_flag          TEXT,
    conversion_timestamp     DATE,
    revenue_generated        REAL,
    cost_per_click           REAL,
    bid_amount               REAL,
    ad_quality_score         REAL,
    viewability_percentage   REAL,
    fraud_score              REAL,
    notes                    TEXT
);

INSERT INTO online_advertising_session VALUES (50001, 301, 7001, 2023-03-01, 2023-03-01, 9001, Mobile, Chrome, 112, US, California, LosAngeles, 192168001, google.com, landingpage.com, Yes, 2023-03-01, 15.75, 0.45, 1.2, 8.5, 95.0, 0.02, FirstClick);
INSERT INTO online_advertising_session VALUES (50002, 302, 7002, 2023-03-02, NULL, 9002, Desktop, Firefox, 98, UK, England, London, 192168002, bing.com, landingpage2.com, No, NULL, 0.00, 0.30, 0.9, 7.2, 88.0, 0.15, NoClick);
INSERT INTO online_advertising_session VALUES (50003, 303, 7003, 2023-03-03, 2023-03-03, 9003, Tablet, Safari, 14, CA, Ontario, Toronto, 192168003, yahoo.com, landingpage3.com, Yes, 2023-03-03, 22.40, 0.55, 1.5, 9.1, 92.5, 0.05, RepeatVisitor);


-- Table documenting supply chain incident reports
CREATE TABLE supply_chain_incident_report
(
    incident_id             INTEGER NOT NULL,
    incident_date           DATE NOT NULL,
    reported_by             TEXT NOT NULL,
    incident_type           TEXT NOT NULL,
    severity_level          TEXT NOT NULL,
    affected_product_id     INTEGER NOT NULL,
    location_code           TEXT NOT NULL,
    description             TEXT,
    root_cause              TEXT,
    corrective_action       TEXT,
    preventive_measure      TEXT,
    status                  TEXT NOT NULL,
    closure_date            DATE,
    estimated_loss_usd      REAL,
    downtime_hours          REAL,
    supplier_id             INTEGER,
    transport_mode          TEXT,
    carrier_name            TEXT,
    customs_clearance_flag  TEXT,
    impact_on_delivery_days INTEGER,
    financial_impact_score  REAL,
    risk_rating             REAL,
    notes                   TEXT
);

INSERT INTO supply_chain_incident_report VALUES (8001, 2023-02-10, JohnDoe, Damage, High, 45001, WH01, Box cracked on arrival, Improper handling, Replace box, Improve packaging, Closed, 2023-02-12, 12000.00, 5.5, 3001, Truck, FastTrans, Yes, 3, 85.0, 9.2, Resolved);
INSERT INTO supply_chain_incident_report VALUES (8002, 2023-02-15, JaneSmith, Delay, Medium, 45002, PORT02, Customs hold, Documentation error, Submit correct docs, Staff training, Open, NULL, 8000.00, 12.0, 3002, Ship, Oceanic, No, 7, 70.0, 6.5, Pending);
INSERT INTO supply_chain_incident_report VALUES (8003, 2023-02-20, MikeLee, Theft, Critical, 45003, WH03, Missing pallets, Security breach, Police report, Upgrade CCTV, UnderInvestigation, NULL, 25000.00, 0.0, 3003, Rail, RailLogistics, Yes, 0, 95.0, 9.8, InvestigationOngoing);


-- Table for regional air quality monitoring stations
CREATE TABLE regional_air_quality_station
(
    station_id                INTEGER NOT NULL,
    station_name              TEXT NOT NULL,
    city                      TEXT NOT NULL,
    region                    TEXT NOT NULL,
    latitude                  REAL NOT NULL,
    longitude                 REAL NOT NULL,
    elevation_m               REAL,
    installation_date         DATE,
    pm2_5_concentration       REAL,
    pm10_concentration        REAL,
    ozone_ppb                 REAL,
    no2_ppb                   REAL,
    so2_ppb                   REAL,
    co_ppm                    REAL,
    temperature_c             REAL,
    humidity_percent          REAL,
    wind_speed_mps            REAL,
    wind_direction_deg        REAL,
    last_maintenance_date     DATE,
    maintenance_interval_days INTEGER,
    data_quality_flag         TEXT,
    operational_status        TEXT,
    notes                     TEXT
);

INSERT INTO regional_air_quality_station VALUES (9001, CentralStation, Metropolis, EastRegion, 45.1234, -73.5678, 150.0, 2020-05-10, 12.5, 25.0, 30.2, 18.4, 4.1, 0.6, 22.0, 55.0, 3.2, 180, 2023-01-15, 180, Good, Active, RoutineCheck);
INSERT INTO regional_air_quality_station VALUES (9002, WestCoastStation, Oceanview, WestRegion, 36.9876, -122.3456, 20.0, 2019-08-22, 10.1, 22.3, 28.5, 15.0, 3.8, 0.5, 19.5, 60.0, 5.0, 90, 2023-02-10, 180, Moderate, Active, CalibrationNeeded);
INSERT INTO regional_air_quality_station VALUES (9003, HighlandStation, Hilltown, NorthRegion, 52.4567, -1.2345, 300.0, 2021-11-01, 8.9, 18.7, 25.0, 12.3, 2.9, 0.4, 16.8, 70.0, 2.5, 45, 2023-03-05, 180, Good, Maintenance, NewInstallation);


-- Table storing detailed insurance policy claim adjustments
CREATE TABLE policy_claim_adjustment
(
    adjustment_id               INTEGER NOT NULL,
    claim_id                    INTEGER NOT NULL,
    policy_number               TEXT NOT NULL,
    adjustment_date             DATE NOT NULL,
    adjuster_id                 INTEGER NOT NULL,
    adjustment_type             TEXT NOT NULL,
    original_amount_usd         REAL NOT NULL,
    adjusted_amount_usd         REAL NOT NULL,
    reason_code                 TEXT,
    notes                       TEXT,
    approved_flag               TEXT NOT NULL,
    approval_date               DATE,
    payment_method              TEXT,
    bank_account_number         TEXT,
    currency_code               TEXT,
    exchange_rate_to_usd        REAL,
    tax_withheld_usd            REAL,
    net_payment_usd             REAL,
    follow_up_required          TEXT,
    follow_up_due_date          DATE,
    audit_trail_id              INTEGER,
    created_timestamp           DATE,
    updated_timestamp           DATE
);

INSERT INTO policy_claim_adjustment VALUES (11001, 50001, POL123456, 2023-04-01, 4001, Increase, 5000.00, 5500.00, RC01, AddedCoverage, Yes, 2023-04-03, Wire, ACC001, USD, 1.0, 250.00, 5250.00, No, NULL, 7001, 2023-04-01, 2023-04-03);
INSERT INTO policy_claim_adjustment VALUES (11002, 50002, POL654321, 2023-04-05, 4002, Decrease, 3000.00, 2800.00, RC02, RevisedEstimate, Yes, 2023-04-07, Check, ACC002, EUR, 1.1, 140.00, 2660.00, Yes, 2023-04-20, 7002, 2023-04-05, 2023-04-07);
INSERT INTO policy_claim_adjustment VALUES (11003, 50003, POL789012, 2023-04-10, 4003, Correction, 4500.00, 4450.00, RC03, DataEntryError, Yes, 2023-04-12, ACH, ACC003, GBP, 1.3, 200.00, 4250.00, No, NULL, 7003, 2023-04-10, 2023-04-12);


-- Table defining user activity segments for behavior analysis
CREATE TABLE user_activity_segment
(
    segment_id                  INTEGER NOT NULL,
    segment_name                TEXT NOT NULL,
    description                 TEXT,
    start_date                  DATE NOT NULL,
    end_date                    DATE,
    total_users                 INTEGER NOT NULL,
    avg_sessions_per_user       REAL,
    avg_session_duration_min    REAL,
    most_used_device_type       TEXT,
    primary_channel             TEXT,
    conversion_rate_percent     REAL,
    churn_rate_percent          REAL,
    revenue_per_user_usd        REAL,
    lifetime_value_usd          REAL,
    engagement_score            REAL,
    risk_score                  REAL,
    created_by                  TEXT,
    created_timestamp           DATE,
    updated_by                  TEXT,
    updated_timestamp           DATE,
    notes                       TEXT,
    is_active                   TEXT
);

INSERT INTO user_activity_segment VALUES (21001, HighValue, UsersWithHighSpending, 2023-01-01, NULL, 1500, 5.2, 32.5, Mobile, App, 12.5, 2.0, 250.00, 3500.00, 88.0, 15.0, AnalystA, 2023-01-01, AnalystB, 2023-03-01, None, Yes);
INSERT INTO user_activity_segment VALUES (21002, Infrequent, LowEngagementUsers, 2023-01-01, NULL, 8000, 1.1, 8.0, Desktop, Web, 1.2, 15.0, 15.00, 50.00, 35.0, 45.0, AnalystC, 2023-01-01, AnalystD, 2023-03-01, Seasonal, Yes);
INSERT INTO user_activity_segment VALUES (21003, NewAcquisitions, RecentlyJoined, 2023-02-15, NULL, 2500, 2.0, 15.0, Tablet, App, 5.0, 5.0, 80.00, 1200.00, 65.0, 30.0, AnalystE, 2023-02-15, AnalystF, 2023-04-01, Promo, Yes);


-- Table logging vehicle operational events
CREATE TABLE vehicle_operation_log
(
    log_id                     INTEGER NOT NULL,
    vehicle_id                 INTEGER NOT NULL,
    event_timestamp            DATE NOT NULL,
    event_type                 TEXT NOT NULL,
    driver_id                  INTEGER,
    odometer_km                REAL,
    fuel_level_percent         REAL,
    engine_temperature_c       REAL,
    tire_pressure_psi_front_left  REAL,
    tire_pressure_psi_front_right REAL,
    tire_pressure_psi_rear_left   REAL,
    tire_pressure_psi_rear_right  REAL,
    gps_latitude               REAL,
    gps_longitude              REAL,
    speed_kph                  REAL,
    heading_deg                REAL,
    route_id                   INTEGER,
    maintenance_required_flag TEXT,
    maintenance_due_km         REAL,
    notes                      TEXT,
    created_timestamp          DATE,
    updated_timestamp          DATE
);

INSERT INTO vehicle_operation_log VALUES (31001, 6001, 2023-05-01, EngineStart, 8001, 15000.5, 85.0, 90.0, 32.0, 31.5, 33.0, 32.5, 40.7128, -74.0060, 0.0, 0.0, 4001, No, NULL, StartOfShift, 2023-05-01, 2023-05-01);
INSERT INTO vehicle_operation_log VALUES (31002, 6002, 2023-05-01, SpeedingAlert, 8002, 30200.2, 70.0, 95.0, 30.0, 30.5, 31.0, 30.8, 34.0522, -118.2437, 105.0, 270.0, 4002, Yes, 500.0, ExceededSpeedLimit, 2023-05-01, 2023-05-01);
INSERT INTO vehicle_operation_log VALUES (31003, 6003, 2023-05-01, MaintenanceCheck, 8003, 12000.0, 60.0, 88.0, 31.0, 31.0, 31.0, 31.0, 51.5074, -0.1278, 0.0, 0.0, 4003, Yes, 0.0, OilChangeRequired, 2023-05-01, 2023-05-01);


-- Table recording cryptocurrency transaction logs
CREATE TABLE crypto_txn
(
    txn_id                     INTEGER NOT NULL,
    wallet_address             TEXT NOT NULL,
    txn_timestamp              DATE NOT NULL,
    crypto_symbol              TEXT NOT NULL,
    txn_type                   TEXT NOT NULL,
    amount                     REAL NOT NULL,
    fee_usd                    REAL,
    usd_value_at_txn           REAL,
    source_exchange            TEXT,
    destination_exchange       TEXT,
    network_confirmation_count INTEGER,
    block_number               INTEGER,
    txn_status                 TEXT,
    memo                       TEXT,
    created_timestamp          DATE,
    updated_timestamp          DATE,
    risk_score                 REAL,
    compliance_flag            TEXT,
    auditor_id                 INTEGER,
    notes                      TEXT
);

INSERT INTO crypto_txn VALUES (41001, WAL123ABC, 2023-06-01, BTC, Transfer, 0.5, 12.5, 25000.00, ExchangeA, ExchangeB, 6, 780123, Completed, None, 2023-06-01, 2023-06-01, 2.5, Yes, 9001, FirstTransfer);
INSERT INTO crypto_txn VALUES (41002, WAL456DEF, 2023-06-02, ETH, Swap, 10.0, 5.0, 18000.00, ExchangeC, ExchangeD, 12, 780124, Pending, ReviewNeeded, 2023-06-02, 2023-06-02, 4.0, No, 9002, SwapPending);
INSERT INTO crypto_txn VALUES (41003, WAL789GHI, 2023-06-03, LTC, Withdrawal, 100.0, 0.8, 12000.00, ExchangeE, External, 3, 780125, Completed, Urgent, 2023-06-03, 2023-06-03, 1.2, Yes, 9003, HighPriority);


-- Table for healthcare equipment service schedules
CREATE TABLE healthcare_equipment_service
(
    service_id                 INTEGER NOT NULL,
    equipment_id               INTEGER NOT NULL,
    equipment_type             TEXT NOT NULL,
    manufacturer               TEXT,
    model_number               TEXT,
    serial_number              TEXT,
    purchase_date              DATE,
    warranty_expiration_date   DATE,
    last_service_date          DATE,
    next_service_due_date      DATE,
    service_provider           TEXT,
    technician_id              INTEGER,
    service_type               TEXT,
    service_notes              TEXT,
    cost_usd                   REAL,
    downtime_hours             REAL,
    compliance_status          TEXT,
    regulatory_reference       TEXT,
    created_timestamp          DATE,
    updated_timestamp          DATE,
    risk_assessment_score      REAL,
    priority_level             TEXT,
    external_contract_id       INTEGER,
    notes                      TEXT
);

INSERT INTO healthcare_equipment_service VALUES (51001, 7001, MRI_Scanner, MedTech, MX200, SN12345, 2018-03-15, 2023-03-15, 2023-02-10, 2023-08-10, ServiceCo, 8501, Preventive, CheckedAllParameters, 15000.00, 8.0, Compliant, Reg123, 2023-02-10, 2023-02-10, 3.5, High, 3001, None);
INSERT INTO healthcare_equipment_service VALUES (51002, 7002, Ventilator, BreathWell, VW10, SN67890, 2019-07-20, 2024-07-20, 2023-01-05, 2023-07-05, HealthServ, 8502, Repair, ReplacedFilter, 2500.00, 4.0, Compliant, Reg456, 2023-01-05, 2023-01-05, 2.0, Medium, 3002, ReplacedFilterModule);
INSERT INTO healthcare_equipment_service VALUES (51003, 7003, Ultrasound, UltraSoundInc, US300, SN54321, 2020-11-01, 2025-11-01, 2023-03-22, 2023-09-22, MedMaintain, 8503, Calibration, CalibrationSuccessful, 1200.00, 2.0, Compliant, Reg789, 2023-03-22, 2023-03-22, 1.5, Low, 3003, RoutineCalibration);