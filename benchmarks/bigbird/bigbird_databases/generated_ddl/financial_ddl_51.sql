-- Public transport routes information
CREATE TABLE public_transport_route
(
    route_id               INTEGER PRIMARY KEY,
    route_name             TEXT    NOT NULL,
    start_stop             TEXT    NOT NULL,
    end_stop               TEXT    NOT NULL,
    distance_km            REAL    NOT NULL,
    average_speed_kmph     REAL    NOT NULL,
    operating_hours        TEXT    NOT NULL,
    weekday_service        TEXT    NOT NULL,
    weekend_service        TEXT    NOT NULL,
    capacity               INTEGER NOT NULL,
    vehicle_type           TEXT    NOT NULL,
    fare_zone              TEXT    NOT NULL,
    last_maintenance_date  DATE    NOT NULL,
    status                 TEXT    NOT NULL,
    created_at             DATE    NOT NULL,
    updated_at             DATE    NOT NULL,
    notes                  TEXT,
    contact_phone          TEXT,
    email                  TEXT,
    region_id              INTEGER NOT NULL
);

INSERT INTO public_transport_route VALUES (1, 'RouteA', 'CentralStation', 'NorthPark', 12.5, 35.0, '05:00-23:00', 'Every5min', 'Every10min', 80, 'Bus', 'Zone1', '2023-06-01', 'Active', '2023-01-01', '2023-12-01', 'Main city line', '5551234', 'citytransit@example.com', 101);
INSERT INTO public_transport_route VALUES (2, 'RouteB', 'EastSide', 'WestEnd', 8.2, 28.0, '06:00-22:00', 'Every7min', 'Every12min', 60, 'Tram', 'Zone2', '2023-05-15', 'Active', '2023-01-01', '2023-12-01', 'Cross town', '5555678', 'citytransit@example.com', 102);
INSERT INTO public_transport_route VALUES (3, 'RouteC', 'University', 'Airport', 15.0, 40.0, '04:30-01:00', 'Every10min', 'Every15min', 100, 'Bus', 'Zone3', '2023-07-20', 'Planned', '2023-01-01', '2023-12-01', 'Airport connector', '5559012', 'citytransit@example.com', 103);

-- City traffic flow sensor data
CREATE TABLE city_traffic_flow
(
    sensor_id                INTEGER PRIMARY KEY,
    location_desc            TEXT NOT NULL,
    road_name                TEXT NOT NULL,
    lane_count               INTEGER NOT NULL,
    vehicle_count_hour       INTEGER NOT NULL,
    avg_speed_kmph           REAL NOT NULL,
    congestion_level         TEXT NOT NULL,
    timestamp                DATE NOT NULL,
    weather_condition        TEXT,
    incident_reported        TEXT,
    camera_id                INTEGER,
    latitude                 REAL NOT NULL,
    longitude                REAL NOT NULL,
    upstream_sensor_id       INTEGER,
    downstream_sensor_id     INTEGER,
    data_quality_score       REAL,
    collected_by             TEXT,
    maintenance_status       TEXT,
    firmware_version         TEXT,
    battery_level_percent    REAL,
    last_calibration_date    DATE
);

INSERT INTO city_traffic_flow VALUES (101, 'MainSt_5thAve', 'Main Street', 4, 1200, 32.5, 'Medium', '2023-09-01', 'Clear', 'None', 201, 40.7128, -74.0060, 102, 103, 0.95, 'DeptA', 'Good', 'v1.2', 85.0, '2023-08-15');
INSERT INTO city_traffic_flow VALUES (102, 'Broadway_7thAve', 'Broadway', 3, 950, 28.0, 'High', '2023-09-01', 'Rain', 'MinorAccident', 202, 40.7135, -74.0070, 101, 104, 0.92, 'DeptB', 'Good', 'v1.3', 78.0, '2023-08-20');
INSERT INTO city_traffic_flow VALUES (103, 'ElmSt_2ndAve', 'Elm Street', 2, 600, 45.0, 'Low', '2023-09-01', 'Clear', 'None', 203, 40.7140, -74.0080, 101, 105, 0.97, 'DeptC', 'Excellent', 'v1.1', 90.0, '2023-08-10');

-- Satellite imagery archive metadata
CREATE TABLE satellite_imagery_archive
(
    image_id                 INTEGER PRIMARY KEY,
    satellite_name           TEXT NOT NULL,
    capture_date             DATE NOT NULL,
    resolution_m             REAL NOT NULL,
    band                     TEXT NOT NULL,
    cloud_coverage_percent   REAL NOT NULL,
    file_path                TEXT NOT NULL,
    size_mb                  REAL NOT NULL,
    checksum                 TEXT NOT NULL,
    latitude_center          REAL NOT NULL,
    longitude_center         REAL NOT NULL,
    north_bound              REAL NOT NULL,
    south_bound              REAL NOT NULL,
    east_bound               REAL NOT NULL,
    west_bound               REAL NOT NULL,
    processing_level         TEXT NOT NULL,
    generated_by             TEXT NOT NULL,
    approval_status          TEXT NOT NULL,
    version                  INTEGER NOT NULL,
    notes                    TEXT,
    archive_location         TEXT NOT NULL
);

INSERT INTO satellite_imagery_archive VALUES (5001, 'Sentinel2', '2023-07-15', 10.0, 'RGB', 5.2, '/archive/2023/07/5001.tif', 150.5, 'abc123def', 35.6895, 139.6917, 35.6950, 35.6840, 139.6970, 139.6860, 'Level2A', 'ProcessorA', 'Approved', 1, 'Urban area', 'ColdStorageA');
INSERT INTO satellite_imagery_archive VALUES (5002, 'Landsat8', '2023-06-20', 30.0, 'NIR', 12.0, '/archive/2023/06/5002.tif', 200.0, 'def456ghi', 51.5074, -0.1278, 51.5120, 51.5020, -0.1200, -0.1350, 'Level1', 'ProcessorB', 'Pending', 1, 'Coastal region', 'ColdStorageB');
INSERT INTO satellite_imagery_archive VALUES (5003, 'WorldView3', '2023-08-05', 0.31, 'PAN', 0.0, '/archive/2023/08/5003.tif', 500.0, 'ghi789jkl', -33.8688, 151.2093, -33.8650, -33.8725, 151.2150, 151.2030, 'Level0', 'ProcessorC', 'Approved', 2, 'High resolution city', 'ColdStorageC');

-- Environmental policy review records
CREATE TABLE environmental_policy_review
(
    policy_id                INTEGER PRIMARY KEY,
    policy_name              TEXT NOT NULL,
    effective_date           DATE NOT NULL,
    review_date              DATE NOT NULL,
    reviewer_name            TEXT NOT NULL,
    department               TEXT NOT NULL,
    status                   TEXT NOT NULL,
    summary                  TEXT,
    impact_score             REAL,
    compliance_required      TEXT,
    amendment_needed         TEXT,
    amendment_deadline       DATE,
    budget_allocated         REAL,
    funds_used               REAL,
    risk_level               TEXT,
    stakeholder_notes        TEXT,
    regulatory_reference    TEXT,
    public_comment_count    INTEGER,
    external_audit_needed    TEXT,
    update_timestamp         DATE NOT NULL
);

INSERT INTO environmental_policy_review VALUES (301, 'AirQualityAct', '2020-01-01', '2023-05-10', 'AliceSmith', 'EnvDept', 'Approved', 'Improves city air standards', 8.5, 'Yes', 'No', NULL, 500000, 450000, 'Medium', 'Stakeholders support', 'Reg123', 124, 'No', '2023-05-10');
INSERT INTO environmental_policy_review VALUES (302, 'WaterConservationPlan', '2019-04-15', '2023-06-20', 'BobJones', 'WaterDept', 'Pending', 'Needs further study', 6.2, 'Yes', 'Yes', '2023-12-31', 300000, 150000, 'High', 'Mixed feedback', 'Reg456', 78, 'Yes', '2023-06-20');
INSERT INTO environmental_policy_review VALUES (303, 'WasteManagementDirective', '2021-09-01', '2023-07-01', 'CarolLee', 'WasteDept', 'Approved', 'Reduces landfill usage', 9.1, 'Yes', 'No', NULL, 400000, 380000, 'Low', 'Positive response', 'Reg789', 200, 'No', '2023-07-01');

-- Client device registry
CREATE TABLE client_device_registry
(
    device_id               INTEGER PRIMARY KEY,
    client_id               INTEGER NOT NULL,
    device_type             TEXT NOT NULL,
    manufacturer            TEXT NOT NULL,
    model                   TEXT NOT NULL,
    serial_number           TEXT NOT NULL,
    purchase_date           DATE NOT NULL,
    warranty_expiry         DATE,
    os_version              TEXT,
    mac_address             TEXT,
    ip_address              TEXT,
    last_sync_date          DATE,
    status                  TEXT NOT NULL,
    assigned_user           TEXT,
    location                TEXT,
    encryption_enabled      TEXT,
    backup_schedule         TEXT,
    support_contract_id     INTEGER,
    decommission_date       DATE,
    notes                   TEXT
);

INSERT INTO client_device_registry VALUES (9001, 1001, 'Smartphone', 'Apple', 'iPhone12', 'SN12345', '2022-03-10', '2025-03-10', 'iOS15', '00:1A:2B:3C:4D:5E', '192.168.1.10', '2023-09-01', 'Active', 'JohnDoe', 'Office1', 'Yes', 'Weekly', 3001, NULL, 'Primary device');
INSERT INTO client_device_registry VALUES (9002, 1002, 'Laptop', 'Dell', 'XPS13', 'SN67890', '2021-07-22', '2024-07-22', 'Windows11', '00:1A:2B:3C:4D:5F', '192.168.1.11', '2023-09-02', 'Active', 'JaneSmith', 'HomeOffice', 'Yes', 'Daily', 3002, NULL, 'Engineering laptop');
INSERT INTO client_device_registry VALUES (9003, 1003, 'Tablet', 'Samsung', 'GalaxyTab', 'SN54321', '2020-11-05', '2023-11-05', 'Android12', '00:1A:2B:3C:4D:60', '192.168.1.12', '2023-08-30', 'Retired', 'MikeBrown', 'RemoteSite', 'No', 'Monthly', NULL, '2023-09-15', 'Replaced by new model');

-- Regional health statistics
CREATE TABLE regional_health_statistics
(
    region_id               INTEGER PRIMARY KEY,
    report_year             INTEGER NOT NULL,
    population              INTEGER NOT NULL,
    avg_life_expectancy    REAL NOT NULL,
    infant_mortality_rate   REAL NOT NULL,
    vaccination_coverage_percent REAL NOT NULL,
    hospital_beds_per_1000 REAL NOT NULL,
    doctors_per_1000        REAL NOT NULL,
    nurses_per_1000         REAL NOT NULL,
    cases_flu               INTEGER,
    cases_covid             INTEGER,
    cases_measles           INTEGER,
    health_expenditure_percent_gdp REAL,
    obesity_rate_percent    REAL,
    smoking_rate_percent    REAL,
    alcohol_consumption_l_per_capita REAL,
    diabetes_prevalence_percent REAL,
    mental_health_cases    INTEGER,
    average_wait_time_days REAL,
    data_source             TEXT
);

INSERT INTO regional_health_statistics VALUES (501, 2022, 1500000, 78.5, 3.2, 92.0, 3.5, 2.8, 5.0, 1200, 3500, 30, 9.5, 22.0, 15.0, 8.2, 7.5, 4500, 5.2, 'HealthDept');
INSERT INTO regional_health_statistics VALUES (502, 2022, 800000, 80.1, 2.8, 95.0, 4.0, 3.2, 6.0, 800, 2100, 12, 8.8, 18.5, 12.0, 6.5, 6.0, 2100, 4.8, 'HealthDept');
INSERT INTO regional_health_statistics VALUES (503, 2022, 2300000, 77.0, 3.9, 88.0, 2.9, 2.5, 4.8, 1800, 4800, 45, 10.2, 25.0, 20.0, 9.0, 8.2, 6200, 6.0, 'HealthDept');

-- Employee attendance records
CREATE TABLE employee_attendance_record
(
    attendance_id           INTEGER PRIMARY KEY,
    employee_id             INTEGER NOT NULL,
    date                    DATE NOT NULL,
    clock_in_time           TEXT NOT NULL,
    clock_out_time          TEXT NOT NULL,
    total_hours             REAL NOT NULL,
    overtime_hours          REAL,
    shift_type              TEXT,
    department              TEXT,
    location                TEXT,
    status                  TEXT,
    approved_by             TEXT,
    notes                   TEXT,
    late_minutes            INTEGER,
    early_leave_minutes     INTEGER,
    absence_reason          TEXT,
    entry_method            TEXT,
    biometric_verified      TEXT,
    payroll_processed       TEXT,
    last_updated            DATE
);

INSERT INTO employee_attendance_record VALUES (2001, 4001, '2023-09-01', '08:00', '17:00', 8.0, 0.0, 'Day', 'Finance', 'HQ', 'Present', 'ManagerA', 'On time', 0, 0, NULL, 'Badge', 'Yes', 'Yes', '2023-09-01');
INSERT INTO employee_attendance_record VALUES (2002, 4002, '2023-09-01', '09:15', '18:30', 8.5, 1.0, 'Day', 'IT', 'Branch1', 'Present', 'ManagerB', 'Late due to traffic', 15, 0, NULL, 'MobileApp', 'Yes', 'Yes', '2023-09-01');
INSERT INTO employee_attendance_record VALUES (2003, 4003, '2023-09-01', NULL, NULL, 0.0, 0.0, 'Day', 'HR', 'HQ', 'Absent', 'ManagerC', 'Sick leave', 0, 0, 'Illness', 'None', 'No', 'No', '2023-09-01');

-- Digital subscription plans
CREATE TABLE digital_subscription_plan
(
    plan_id                 INTEGER PRIMARY KEY,
    plan_name               TEXT NOT NULL,
    price_monthly           REAL NOT NULL,
    price_yearly            REAL NOT NULL,
    max_users               INTEGER NOT NULL,
    storage_gb              REAL NOT NULL,
    support_level           TEXT NOT NULL,
    renewal_policy          TEXT NOT NULL,
    trial_period_days       INTEGER NOT NULL,
    features_list           TEXT,
    created_date            DATE NOT NULL,
    last_modified           DATE NOT NULL,
    is_active               TEXT NOT NULL,
    currency                TEXT NOT NULL,
    discount_percent        REAL,
    promo_code_allowed      TEXT,
    analytics_enabled       TEXT,
    api_access              TEXT,
    sla_uptime_percent      REAL,
    notes                   TEXT
);

INSERT INTO digital_subscription_plan VALUES (101, 'Basic', 9.99, 99.99, 3, 50, 'Email', 'Auto', 14, 'FeatureA,FeatureB', '2022-01-01', '2023-08-01', 'Yes', 'USD', 0.0, 'No', 'No', 'No', 99.0, 'Entry level plan');
INSERT INTO digital_subscription_plan VALUES (102, 'Pro', 29.99, 299.99, 10, 200, 'Phone', 'Auto', 30, 'FeatureA,FeatureB,FeatureC', '2022-01-01', '2023-08-01', 'Yes', 'USD', 10.0, 'Yes', 'Yes', 'Yes', 99.9, 'Professional plan with discounts');
INSERT INTO digital_subscription_plan VALUES (103, 'Enterprise', 99.99, 999.99, 100, 1000, 'Dedicated', 'Manual', 60, 'AllFeatures', '2022-01-01', '2023-08-01', 'Yes', 'USD', 15.0, 'Yes', 'Yes', 'Yes', 99.99, 'Enterprise tier with SLA');

-- Loan interest rate history
CREATE TABLE loan_interest_rate_history
(
    rate_id                 INTEGER PRIMARY KEY,
    loan_type               TEXT NOT NULL,
    effective_date          DATE NOT NULL,
    interest_rate_percent   REAL NOT NULL,
    apr_percent             REAL NOT NULL,
    fixed_term_months       INTEGER,
    variable_rate_indicator TEXT,
    base_rate_percent       REAL,
    spread_basis_points     INTEGER,
    index_reference         TEXT,
    ceiling_rate_percent    REAL,
    floor_rate_percent      REAL,
    created_by              TEXT,
    approval_status         TEXT,
    comments                TEXT,
    last_updated            DATE,
    regulatory_compliance   TEXT,
    region_code             TEXT,
    risk_category           TEXT,
    source_document         TEXT
);

INSERT INTO loan_interest_rate_history VALUES (4001, 'Mortgage', '2023-01-01', 3.5, 3.8, 360, 'Fixed', NULL, NULL, NULL, NULL, NULL, 'AdminA', 'Approved', 'Standard 30yr fixed', '2023-01-01', 'Yes', 'US', 'Low', 'DocA');
INSERT INTO loan_interest_rate_history VALUES (4002, 'Personal', '2023-04-01', 5.2, 5.6, 60, 'Variable', 2.5, 150, 'LIBOR', 7.0, 3.0, 'AdminB', 'Pending', 'Seesaw rate', '2023-04-01', 'Yes', 'EU', 'Medium', 'DocB');
INSERT INTO loan_interest_rate_history VALUES (4003, 'Auto', '2023-06-15', 4.0, 4.3, 72, 'Fixed', NULL, NULL, NULL, NULL, NULL, 'AdminC', 'Approved', 'Fixed 6yr auto loan', '2023-06-15', 'Yes', 'CA', 'Low', 'DocC');

-- Card security events
CREATE TABLE card_security_event
(
    event_id                INTEGER PRIMARY KEY,
    card_id                 INTEGER NOT NULL,
    event_timestamp         DATE NOT NULL,
    event_type              TEXT NOT NULL,
    location                TEXT,
    ip_address              TEXT,
    device_id               INTEGER,
    fraud_score             REAL,
    action_taken            TEXT,
    resolved_by             TEXT,
    resolution_timestamp    DATE,
    notes                   TEXT,
    merchant_category       TEXT,
    transaction_amount      REAL,
    currency                TEXT,
    risk_level              TEXT,
    alert_generated         TEXT,
    compliance_flag         TEXT,
    investigation_status    TEXT,
    analyst_id              INTEGER,
    file_reference          TEXT
);

INSERT INTO card_security_event VALUES (7001, 12345, '2023-09-01', 'Skimming', 'MallBranch', '203.0.113.5', 301, 85.0, 'CardBlocked', 'AnalystA', '2023-09-02', 'Captured at POS', 'Retail', 120.00, 'USD', 'High', 'Yes', 'Yes', 'Closed', 9001, 'FileA');
INSERT INTO card_security_event VALUES (7002, 12346, '2023-09-03', 'UnauthorizedOnline', 'EcommerceSite', '198.51.100.22', 302, 70.0, 'AlertSent', 'AnalystB', '2023-09-04', 'Suspicious login', 'Online', 200.00, 'USD', 'Medium', 'Yes', 'No', 'Open', 9002, 'FileB');
INSERT INTO card_security_event VALUES (7003, 12347, '2023-09-05', 'LostCard', 'CustomerHome', NULL, NULL, NULL, 'CardCancelled', 'AnalystC', '2023-09-05', 'Customer reported loss', 'N/A', 0.0, 'USD', 'Low', 'No', 'No', 'Closed', 9003, 'FileC');