-- Building Maintenance Log
CREATE TABLE building_maintenance_log (
    maintenance_id INTEGER PRIMARY KEY,
    building_id INTEGER NOT NULL,
    floor INTEGER NOT NULL,
    room_number TEXT NOT NULL,
    maintenance_type TEXT NOT NULL,
    requested_date DATE NOT NULL,
    scheduled_date DATE NOT NULL,
    completed_date DATE,
    technician_id INTEGER NOT NULL,
    vendor_id INTEGER NOT NULL,
    cost REAL NOT NULL,
    priority TEXT NOT NULL,
    status TEXT NOT NULL,
    notes TEXT,
    inspection_required INTEGER NOT NULL,
    safety_clearance TEXT NOT NULL,
    material_used TEXT,
    hours_spent REAL NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL
);

INSERT INTO building_maintenance_log (maintenance_id, building_id, floor, room_number, maintenance_type, requested_date, scheduled_date, completed_date, technician_id, vendor_id, cost, priority, status, notes, inspection_required, safety_clearance, material_used, hours_spent, created_at, updated_at)
VALUES (1, 101, 2, 'A201', 'Electrical', '2023-01-10', '2023-01-12', '2023-01-13', 55, 2001, 350.75, 'High', 'Completed', 'Replaced breaker', 1, 'Clear', 'Copper', 2.5, '2023-01-10', '2023-01-13');

INSERT INTO building_maintenance_log (maintenance_id, building_id, floor, room_number, maintenance_type, requested_date, scheduled_date, completed_date, technician_id, vendor_id, cost, priority, status, notes, inspection_required, safety_clearance, material_used, hours_spent, created_at, updated_at)
VALUES (2, 102, 5, 'B502', 'Plumbing', '2023-02-05', '2023-02-07', '2023-02-08', 60, 2002, 120.00, 'Medium', 'Completed', 'Fixed leak', 0, 'Pending', 'PVC', 1.8, '2023-02-05', '2023-02-08');

INSERT INTO building_maintenance_log (maintenance_id, building_id, floor, room_number, maintenance_type, requested_date, scheduled_date, completed_date, technician_id, vendor_id, cost, priority, status, notes, inspection_required, safety_clearance, material_used, hours_spent, created_at, updated_at)
VALUES (3, 103, 1, 'C101', 'HVAC', '2023-03-01', '2023-03-04', NULL, 70, 2003, 800.00, 'Low', 'InProgress', 'Routine check', 1, 'Clear', 'Freon', 4.0, '2023-03-01', '2023-03-04');

-- Public Transport Route Schedule
CREATE TABLE public_transport_route_schedule (
    schedule_id INTEGER PRIMARY KEY,
    route_id INTEGER NOT NULL,
    direction TEXT NOT NULL,
    stop_sequence INTEGER NOT NULL,
    stop_id INTEGER NOT NULL,
    arrival_time TEXT NOT NULL,
    departure_time TEXT NOT NULL,
    day_type TEXT NOT NULL,
    effective_start DATE NOT NULL,
    effective_end DATE NOT NULL,
    vehicle_type TEXT NOT NULL,
    driver_id INTEGER NOT NULL,
    capacity INTEGER NOT NULL,
    wheelchair_accessible INTEGER NOT NULL,
    fare_zone INTEGER NOT NULL,
    calendar_id INTEGER NOT NULL,
    created_by INTEGER NOT NULL,
    created_at DATE NOT NULL,
    modified_at DATE NOT NULL,
    notes TEXT
);

INSERT INTO public_transport_route_schedule (schedule_id, route_id, direction, stop_sequence, stop_id, arrival_time, departure_time, day_type, effective_start, effective_end, vehicle_type, driver_id, capacity, wheelchair_accessible, fare_zone, calendar_id, created_by, created_at, modified_at, notes)
VALUES (101, 10, 'Northbound', 1, 5001, '08:00', '08:05', 'Weekday', '2023-01-01', '2023-12-31', 'Bus', 301, 50, 1, 2, 1, 1001, '2023-01-01', '2023-01-01', 'First stop');

INSERT INTO public_transport_route_schedule (schedule_id, route_id, direction, stop_sequence, stop_id, arrival_time, departure_time, day_type, effective_start, effective_end, vehicle_type, driver_id, capacity, wheelchair_accessible, fare_zone, calendar_id, created_by, created_at, modified_at, notes)
VALUES (102, 10, 'Northbound', 2, 5002, '08:10', '08:12', 'Weekday', '2023-01-01', '2023-12-31', 'Bus', 301, 50, 1, 2, 1, 1001, '2023-01-01', '2023-01-01', 'Second stop');

INSERT INTO public_transport_route_schedule (schedule_id, route_id, direction, stop_sequence, stop_id, arrival_time, departure_time, day_type, effective_start, effective_end, vehicle_type, driver_id, capacity, wheelchair_accessible, fare_zone, calendar_id, created_by, created_at, modified_at, notes)
VALUES (103, 10, 'Northbound', 3, 5003, '08:20', '08:22', 'Weekday', '2023-01-01', '2023-12-31', 'Bus', 301, 50, 1, 2, 1, 1001, '2023-01-01', '2023-01-01', 'Third stop');

-- Energy Grid Node Status
CREATE TABLE energy_grid_node_status (
    node_status_id INTEGER PRIMARY KEY,
    node_id INTEGER NOT NULL,
    region_code TEXT NOT NULL,
    voltage REAL NOT NULL,
    frequency REAL NOT NULL,
    load_mw REAL NOT NULL,
    status TEXT NOT NULL,
    last_checked DATE NOT NULL,
    maintenance_due DATE NOT NULL,
    temperature_c REAL NOT NULL,
    humidity_percent REAL NOT NULL,
    power_factor REAL NOT NULL,
    alarm_code INTEGER,
    operator_id INTEGER NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    comments TEXT,
    is_active INTEGER NOT NULL,
    notes TEXT,
    audit_trail TEXT
);

INSERT INTO energy_grid_node_status (node_status_id, node_id, region_code, voltage, frequency, load_mw, status, last_checked, maintenance_due, temperature_c, humidity_percent, power_factor, alarm_code, operator_id, created_at, updated_at, comments, is_active, notes, audit_trail)
VALUES (1, 2001, 'NE', 110.5, 60.0, 150.2, 'Operational', '2023-07-01', '2023-12-31', 35.2, 45.0, 0.98, NULL, 501, '2023-07-01', '2023-07-01', 'All parameters normal', 1, '', '');

INSERT INTO energy_grid_node_status (node_status_id, node_id, region_code, voltage, frequency, load_mw, status, last_checked, maintenance_due, temperature_c, humidity_percent, power_factor, alarm_code, operator_id, created_at, updated_at, comments, is_active, notes, audit_trail)
VALUES (2, 2002, 'NW', 115.0, 60.0, 200.5, 'MaintenanceRequired', '2023-07-02', '2023-08-15', 38.0, 50.0, 0.95, 12, 502, '2023-07-02', '2023-07-02', 'Scheduled maintenance', 1, '', '');

INSERT INTO energy_grid_node_status (node_status_id, node_id, region_code, voltage, frequency, load_mw, status, last_checked, maintenance_due, temperature_c, humidity_percent, power_factor, alarm_code, operator_id, created_at, updated_at, comments, is_active, notes, audit_trail)
VALUES (3, 2003, 'SE', 108.7, 60.0, 120.0, 'Operational', '2023-07-03', '2024-01-10', 33.5, 40.0, 0.99, NULL, 503, '2023-07-03', '2023-07-03', 'Stable', 1, '', '');

-- Digital Content License
CREATE TABLE digital_content_license (
    license_id INTEGER PRIMARY KEY,
    content_id INTEGER NOT NULL,
    license_type TEXT NOT NULL,
    effective_from DATE NOT NULL,
    effective_to DATE NOT NULL,
    usage_limit INTEGER NOT NULL,
    region TEXT NOT NULL,
    fee REAL NOT NULL,
    currency TEXT NOT NULL,
    granted_by INTEGER NOT NULL,
    granted_to INTEGER NOT NULL,
    rights_description TEXT,
    revoked INTEGER NOT NULL,
    revoked_date DATE,
    terms_url TEXT,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    audit_trail TEXT,
    is_exclusive INTEGER NOT NULL
);

INSERT INTO digital_content_license (license_id, content_id, license_type, effective_from, effective_to, usage_limit, region, fee, currency, granted_by, granted_to, rights_description, revoked, revoked_date, terms_url, notes, created_at, updated_at, audit_trail, is_exclusive)
VALUES (1, 3001, 'Standard', '2023-01-01', '2024-01-01', 1000, 'US', 150.00, 'USD', 101, 201, 'Online distribution rights', 0, NULL, 'http://example.com/terms1', 'Initial license', '2023-01-01', '2023-01-01', '', 0);

INSERT INTO digital_content_license (license_id, content_id, license_type, effective_from, effective_to, usage_limit, region, fee, currency, granted_by, granted_to, rights_description, revoked, revoked_date, terms_url, notes, created_at, updated_at, audit_trail, is_exclusive)
VALUES (2, 3002, 'Exclusive', '2023-03-15', '2025-03-15', 500, 'EU', 500.00, 'EUR', 102, 202, 'Broadcast rights', 0, NULL, 'http://example.com/terms2', '', '2023-03-15', '2023-03-15', '', 1);

INSERT INTO digital_content_license (license_id, content_id, license_type, effective_from, effective_to, usage_limit, region, fee, currency, granted_by, granted_to, rights_description, revoked, revoked_date, terms_url, notes, created_at, updated_at, audit_trail, is_exclusive)
VALUES (3, 3003, 'Limited', '2023-06-01', '2023-12-31', 200, 'APAC', 75.00, 'JPY', 103, 203, 'Mobile app usage', 0, NULL, 'http://example.com/terms3', 'Short term', '2023-06-01', '2023-06-01', '', 0);

-- Research Grant Allocation
CREATE TABLE research_grant_allocation (
    grant_alloc_id INTEGER PRIMARY KEY,
    grant_id INTEGER NOT NULL,
    project_id INTEGER NOT NULL,
    funding_amount REAL NOT NULL,
    currency TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    principal_investigator INTEGER NOT NULL,
    co_investigator INTEGER,
    department TEXT NOT NULL,
    allocation_percentage REAL NOT NULL,
    reporting_frequency TEXT NOT NULL,
    status TEXT NOT NULL,
    review_score REAL,
    funding_source TEXT NOT NULL,
    purpose TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    notes TEXT,
    is_active INTEGER NOT NULL
);

INSERT INTO research_grant_allocation (grant_alloc_id, grant_id, project_id, funding_amount, currency, start_date, end_date, principal_investigator, co_investigator, department, allocation_percentage, reporting_frequency, status, review_score, funding_source, purpose, created_at, updated_at, notes, is_active)
VALUES (1, 4001, 501, 250000.00, 'USD', '2023-01-01', '2025-12-31', 8001, 8002, 'Biology', 100.0, 'Annual', 'Active', 4.5, 'NationalScienceFund', 'Genome sequencing', '2023-01-01', '2023-01-01', '', 1);

INSERT INTO research_grant_allocation (grant_alloc_id, grant_id, project_id, funding_amount, currency, start_date, end_date, principal_investigator, co_investigator, department, allocation_percentage, reporting_frequency, status, review_score, funding_source, purpose, created_at, updated_at, notes, is_active)
VALUES (2, 4002, 502, 150000.00, 'EUR', '2023-06-15', '2024-06-14', 8003, NULL, 'Physics', 75.0, 'SemiAnnual', 'Pending', NULL, 'EuropeanResearchCouncil', 'Quantum optics', '2023-06-15', '2023-06-15', '', 0);

INSERT INTO research_grant_allocation (grant_alloc_id, grant_id, project_id, funding_amount, currency, start_date, end_date, principal_investigator, co_investigator, department, allocation_percentage, reporting_frequency, status, review_score, funding_source, purpose, created_at, updated_at, notes, is_active)
VALUES (3, 4003, 503, 50000.00, 'GBP', '2023-09-01', '2024-08-31', 8004, 8005, 'Chemistry', 50.0, 'Quarterly', 'Active', 3.8, 'UniversityFund', 'Catalyst development', '2023-09-01', '2023-09-01', '', 1);

-- Fleet Driver Training
CREATE TABLE fleet_driver_training (
    training_record_id INTEGER PRIMARY KEY,
    driver_id INTEGER NOT NULL,
    training_course_code TEXT NOT NULL,
    course_name TEXT NOT NULL,
    provider TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    hours_completed REAL NOT NULL,
    certificate_number TEXT,
    certified INTEGER NOT NULL,
    expiration_date DATE,
    score REAL,
    trainer_id INTEGER,
    training_type TEXT,
    location TEXT,
    status TEXT,
    remarks TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    is_mandatory INTEGER NOT NULL
);

INSERT INTO fleet_driver_training (training_record_id, driver_id, training_course_code, course_name, provider, start_date, end_date, hours_completed, certificate_number, certified, expiration_date, score, trainer_id, training_type, location, status, remarks, created_at, updated_at, is_mandatory)
VALUES (1, 9001, 'DS101', 'Defensive Driving', 'RoadSafe Inc', '2023-02-01', '2023-02-05', 8.0, 'CERT001', 1, '2025-02-01', 95.0, 501, 'Mandatory', 'HQ', 'Completed', '', '2023-02-01', '2023-02-05', 1);

INSERT INTO fleet_driver_training (training_record_id, driver_id, training_course_code, course_name, provider, start_date, end_date, hours_completed, certificate_number, certified, expiration_date, score, trainer_id, training_type, location, status, remarks, created_at, updated_at, is_mandatory)
VALUES (2, 9002, 'EH202', 'Emergency Handling', 'SafeDrive Ltd', '2023-03-10', '2023-03-12', 6.0, 'CERT002', 1, '2025-03-10', 88.5, 502, 'Optional', 'Branch1', 'Completed', '', '2023-03-10', '2023-03-12', 0);

INSERT INTO fleet_driver_training (training_record_id, driver_id, training_course_code, course_name, provider, start_date, end_date, hours_completed, certificate_number, certified, expiration_date, score, trainer_id, training_type, location, status, remarks, created_at, updated_at, is_mandatory)
VALUES (3, 9003, 'HA303', 'Hazard Awareness', 'TransportAcademy', '2023-04-20', '2023-04-21', 4.0, NULL, 0, NULL, NULL, NULL, 'Mandatory', 'HQ', 'Pending', '', '2023-04-20', '2023-04-20', 1);

-- Supplier Quality Audit
CREATE TABLE supplier_quality_audit (
    audit_id INTEGER PRIMARY KEY,
    supplier_id INTEGER NOT NULL,
    audit_date DATE NOT NULL,
    auditor_id INTEGER NOT NULL,
    score REAL NOT NULL,
    grade TEXT NOT NULL,
    findings TEXT,
    corrective_action_required INTEGER NOT NULL,
    target_completion_date DATE,
    status TEXT NOT NULL,
    notes TEXT,
    category TEXT,
    sub_category TEXT,
    severity INTEGER,
    risk_rating REAL,
    document_path TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    is_passed INTEGER NOT NULL,
    follow_up_date DATE
);

INSERT INTO supplier_quality_audit (audit_id, supplier_id, audit_date, auditor_id, score, grade, findings, corrective_action_required, target_completion_date, status, notes, category, sub_category, severity, risk_rating, document_path, created_at, updated_at, is_passed, follow_up_date)
VALUES (1, 6001, '2023-05-01', 701, 85.0, 'B', 'Minor packaging issues', 1, '2023-06-01', 'Open', '', 'Manufacturing', 'Packaging', 2, 3.2, '/docs/audit1.pdf', '2023-05-01', '2023-05-01', 0, '2023-06-15');

INSERT INTO supplier_quality_audit (audit_id, supplier_id, audit_date, auditor_id, score, grade, findings, corrective_action_required, target_completion_date, status, notes, category, sub_category, severity, risk_rating, document_path, created_at, updated_at, is_passed, follow_up_date)
VALUES (2, 6002, '2023-05-15', 702, 92.5, 'A', 'All criteria met', 0, NULL, 'Closed', '', 'Logistics', 'Transport', 1, 1.0, '/docs/audit2.pdf', '2023-05-15', '2023-05-15', 1, NULL);

INSERT INTO supplier_quality_audit (audit_id, supplier_id, audit_date, auditor_id, score, grade, findings, corrective_action_required, target_completion_date, status, notes, category, sub_category, severity, risk_rating, document_path, created_at, updated_at, is_passed, follow_up_date)
VALUES (3, 6003, '2023-06-10', 703, 78.0, 'C', 'Non‑conformance in material specs', 1, '2023-07-10', 'Open', '', 'Materials', 'RawMaterials', 3, 4.5, '/docs/audit3.pdf', '2023-06-10', '2023-06-10', 0, '2023-07-20');

-- Branch Security Device Log
CREATE TABLE branch_security_device_log (
    log_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    device_id INTEGER NOT NULL,
    device_type TEXT NOT NULL,
    event_timestamp DATE NOT NULL,
    event_type TEXT NOT NULL,
    severity_level INTEGER NOT NULL,
    description TEXT,
    operator_id INTEGER,
    resolved INTEGER NOT NULL,
    resolution_timestamp DATE,
    maintenance_required INTEGER NOT NULL,
    firmware_version TEXT,
    ip_address TEXT,
    mac_address TEXT,
    location TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    notes TEXT,
    is_active INTEGER NOT NULL
);

INSERT INTO branch_security_device_log (log_id, branch_id, device_id, device_type, event_timestamp, event_type, severity_level, description, operator_id, resolved, resolution_timestamp, maintenance_required, firmware_version, ip_address, mac_address, location, created_at, updated_at, notes, is_active)
VALUES (1, 10, 90001, 'Camera', '2023-07-01', 'MotionDetected', 2, 'Movement in lobby after hours', 401, 1, '2023-07-01', 0, 'v2.1', '192.168.1.10', 'AA:BB:CC:DD:EE:01', 'Lobby', '2023-07-01', '2023-07-01', '', 1);

INSERT INTO branch_security_device_log (log_id, branch_id, device_id, device_type, event_timestamp, event_type, severity_level, description, operator_id, resolved, resolution_timestamp, maintenance_required, firmware_version, ip_address, mac_address, location, created_at, updated_at, notes, is_active)
VALUES (2, 12, 90002, 'Alarm', '2023-07-03', 'Tamper', 3, 'Alarm panel opened unauthorized', 402, 0, NULL, 1, 'v3.0', '192.168.1.20', 'AA:BB:CC:DD:EE:02', 'Vault', '2023-07-03', '2023-07-03', '', 1);

INSERT INTO branch_security_device_log (log_id, branch_id, device_id, device_type, event_timestamp, event_type, severity_level, description, operator_id, resolved, resolution_timestamp, maintenance_required, firmware_version, ip_address, mac_address, location, created_at, updated_at, notes, is_active)
VALUES (3, 15, 90003, 'AccessControl', '2023-07-05', 'AccessDenied', 1, 'Card read failure at main entrance', 403, 1, '2023-07-05', 0, 'v1.5', '192.168.1.30', 'AA:BB:CC:DD:EE:03', 'Entrance', '2023-07-05', '2023-07-05', '', 1);

-- Weather Station Observation
CREATE TABLE weather_station_observation (
    observation_id INTEGER PRIMARY KEY,
    station_id INTEGER NOT NULL,
    observation_date DATE NOT NULL,
    temperature_c REAL NOT NULL,
    humidity_percent REAL NOT NULL,
    wind_speed_kph REAL NOT NULL,
    wind_direction TEXT NOT NULL,
    precipitation_mm REAL NOT NULL,
    pressure_hpa REAL NOT NULL,
    uv_index INTEGER NOT NULL,
    visibility_km REAL NOT NULL,
    cloud_cover_percent INTEGER NOT NULL,
    dew_point_c REAL NOT NULL,
    solar_radiation_wm2 REAL NOT NULL,
    weather_condition TEXT NOT NULL,
    sensor_status TEXT NOT NULL,
    battery_level_percent REAL NOT NULL,
    data_quality_flag INTEGER NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL
);

INSERT INTO weather_station_observation (observation_id, station_id, observation_date, temperature_c, humidity_percent, wind_speed_kph, wind_direction, precipitation_mm, pressure_hpa, uv_index, visibility_km, cloud_cover_percent, dew_point_c, solar_radiation_wm2, weather_condition, sensor_status, battery_level_percent, data_quality_flag, created_at, updated_at)
VALUES (1, 1001, '2023-07-01', 28.5, 60.0, 12.3, 'NE', 0.0, 1013.2, 5, 10.0, 20, 19.0, 450.0, 'Clear', 'OK', 95.0, 0, '2023-07-01', '2023-07-01');

INSERT INTO weather_station_observation (observation_id, station_id, observation_date, temperature_c, humidity_percent, wind_speed_kph, wind_direction, precipitation_mm, pressure_hpa, uv_index, visibility_km, cloud_cover_percent, dew_point_c, solar_radiation_wm2, weather_condition, sensor_status, battery_level_percent, data_quality_flag, created_at, updated_at)
VALUES (2, 1002, '2023-07-01', 22.1, 80.0, 5.0, 'S', 2.5, 1008.5, 3, 8.0, 70, 17.5, 200.0, 'Rain', 'OK', 88.0, 0, '2023-07-01', '2023-07-01');

INSERT INTO weather_station_observation (observation_id, station_id, observation_date, temperature_c, humidity_percent, wind_speed_kph, wind_direction, precipitation_mm, pressure_hpa, uv_index, visibility_km, cloud_cover_percent, dew_point_c, solar_radiation_wm2, weather_condition, sensor_status, battery_level_percent, data_quality_flag, created_at, updated_at)
VALUES (3, 1003, '2023-07-01', 15.0, 55.0, 20.0, 'W', 0.0, 1020.0, 7, 12.0, 10, 8.0, 600.0, 'Sunny', 'OK', 92.0, 0, '2023-07-01', '2023-07-01');

-- Insurance Policy Premium History
CREATE TABLE insurance_policy_premium_history (
    premium_history_id INTEGER PRIMARY KEY,
    policy_id INTEGER NOT NULL,
    effective_date DATE NOT NULL,
    expiration_date DATE NOT NULL,
    premium_amount REAL NOT NULL,
    currency TEXT NOT NULL,
    payment_frequency TEXT NOT NULL,
    payment_method TEXT NOT NULL,
    discount_percentage REAL NOT NULL,
    tax_amount REAL NOT NULL,
    total_amount_due REAL NOT NULL,
    status TEXT NOT NULL,
    adjustment_reason TEXT,
    adjusted_by INTEGER,
    adjustment_date DATE,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    is_active INTEGER NOT NULL,
    legacy_policy_number TEXT
);

INSERT INTO insurance_policy_premium_history (premium_history_id, policy_id, effective_date, expiration_date, premium_amount, currency, payment_frequency, payment_method, discount_percentage, tax_amount, total_amount_due, status, adjustment_reason, adjusted_by, adjustment_date, notes, created_at, updated_at, is_active, legacy_policy_number)
VALUES (1, 7001, '2023-01-01', '2023-12-31', 1200.00, 'USD', 'Annual', 'CreditCard', 5.0, 96.00, 1248.00, 'Active', NULL, NULL, NULL, 'Initial premium', '2023-01-01', '2023-01-01', 1, 'LEG12345');

INSERT INTO insurance_policy_premium_history (premium_history_id, policy_id, effective_date, expiration_date, premium_amount, currency, payment_frequency, payment_method, discount_percentage, tax_amount, total_amount_due, status, adjustment_reason, adjusted_by, adjustment_date, notes, created_at, updated_at, is_active, legacy_policy_number)
VALUES (2, 7002, '2023-04-01', '2024-03-31', 950.00, 'EUR', 'SemiAnnual', 'BankTransfer', 0.0, 76.00, 1026.00, 'Active', 'RateIncrease', 801, '2023-04-15', 'Adjusted due to market change', '2023-04-01', '2023-04-15', 1, 'LEG67890');

INSERT INTO insurance_policy_premium_history (premium_history_id, policy_id, effective_date, expiration_date, premium_amount, currency, payment_frequency, payment_method, discount_percentage, tax_amount, total_amount_due, status, adjustment_reason, adjusted_by, adjustment_date, notes, created_at, updated_at, is_active, legacy_policy_number)
VALUES (3, 7003, '2023-07-01', '2024-06-30', 500.00, 'GBP', 'Quarterly', 'DebitCard', 10.0, 40.00, 540.00, 'Pending', 'PolicyRenewal', 802, '2023-07-10', 'Renewal pending approval', '2023-07-01', '2023-07-10', 0, 'LEG54321');