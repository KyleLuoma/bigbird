-- Venue Air Quality Reports
CREATE TABLE venue_air_quality_reports (
    report_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    report_date DATE,
    pm25 REAL,
    pm10 REAL,
    no2 REAL,
    so2 REAL,
    co REAL,
    o3 REAL,
    temperature REAL,
    humidity REAL,
    wind_speed REAL,
    wind_direction TEXT,
    aqi INTEGER,
    sensor_location TEXT,
    status TEXT,
    created_at TEXT,
    updated_at TEXT,
    remarks TEXT,
    validation_code TEXT,
    external_reference TEXT
);

INSERT INTO venue_air_quality_reports (venue_id, report_date, pm25, pm10, no2, so2, co, o3, temperature, humidity, wind_speed, wind_direction, aqi, sensor_location, status, created_at, updated_at, remarks, validation_code, external_reference)
VALUES (1, '2025-03-10', 12.3, 25.6, 0.04, 0.01, 0.5, 0.03, 22.5, 55, 5.2, 'N', 45, 'NorthWing', 'Approved', '2025-03-10 08:00', '2025-03-10 09:00', 'All good', 'VAL123', 'REF001');

INSERT INTO venue_air_quality_reports (venue_id, report_date, pm25, pm10, no2, so2, co, o3, temperature, humidity, wind_speed, wind_direction, aqi, sensor_location, status, created_at, updated_at, remarks, validation_code, external_reference)
VALUES (2, '2025-03-11', 20.1, 40.2, 0.07, 0.015, 0.6, 0.04, 24.0, 60, 4.8, 'E', 70, 'EastGate', 'Pending', '2025-03-11 07:30', '2025-03-11 08:45', 'Review needed', 'VAL124', 'REF002');

INSERT INTO venue_air_quality_reports (venue_id, report_date, pm25, pm10, no2, so2, co, o3, temperature, humidity, wind_speed, wind_direction, aqi, sensor_location, status, created_at, updated_at, remarks, validation_code, external_reference)
VALUES (3, '2025-03-12', 8.5, 18.9, 0.03, 0.008, 0.4, 0.02, 21.3, 50, 6.0, 'S', 30, 'SouthParking', 'Approved', '2025-03-12 09:15', '2025-03-12 10:00', 'Excellent', 'VAL125', 'REF003');


-- Driver Contract Bonus Terms
CREATE TABLE driver_contract_bonus_terms (
    bonus_id INTEGER PRIMARY KEY AUTOINCREMENT,
    driver_id INTEGER,
    season_year INTEGER,
    bonus_type TEXT,
    criteria TEXT,
    threshold REAL,
    amount REAL,
    currency TEXT,
    payment_date DATE,
    paid INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    approval_status TEXT,
    approval_by TEXT,
    contract_section TEXT,
    performance_metric TEXT,
    value_metric REAL,
    eligibility BOOLEAN,
    review_cycle TEXT
);

INSERT INTO driver_contract_bonus_terms (driver_id, season_year, bonus_type, criteria, threshold, amount, currency, payment_date, paid, notes, created_at, updated_at, approval_status, approval_by, contract_section, performance_metric, value_metric, eligibility, review_cycle)
VALUES (10, 2025, 'Win Bonus', 'NumberOfWins', 3, 500000, 'USD', '2025-12-31', 0, 'Pending verification', '2025-01-01 12:00', '2025-01-01 12:00', 'Pending', 'LegalDept', 'Section5', 'Wins', 3, 1, 'Annual');

INSERT INTO driver_contract_bonus_terms (driver_id, season_year, bonus_type, criteria, threshold, amount, currency, payment_date, paid, notes, created_at, updated_at, approval_status, approval_by, contract_section, performance_metric, value_metric, eligibility, review_cycle)
VALUES (12, 2025, 'Pole Position Bonus', 'PolePositions', 5, 250000, 'USD', '2025-12-31', 0, 'To be paid after season', '2025-01-02 09:30', '2025-01-02 09:30', 'Pending', 'LegalDept', 'Section6', 'Poles', 5, 1, 'Annual');

INSERT INTO driver_contract_bonus_terms (driver_id, season_year, bonus_type, criteria, threshold, amount, currency, payment_date, paid, notes, created_at, updated_at, approval_status, approval_by, contract_section, performance_metric, value_metric, eligibility, review_cycle)
VALUES (15, 2025, 'Championship Bonus', 'OverallChampionship', 1, 1000000, 'USD', '2025-12-31', 0, 'Awarded if driver wins championship', '2025-01-03 14:45', '2025-01-03 14:45', 'Pending', 'LegalDept', 'Section7', 'Championships', 1, 1, 'Annual');


-- Constructor Supply Chain Risk Assessments
CREATE TABLE constructor_supply_chain_risk_assessments (
    assessment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    constructor_id INTEGER,
    assessment_year INTEGER,
    risk_category TEXT,
    risk_score INTEGER,
    description TEXT,
    mitigation_plan TEXT,
    responsible_party TEXT,
    status TEXT,
    last_review_date DATE,
    next_review_date DATE,
    created_at TEXT,
    updated_at TEXT,
    documentation_link TEXT,
    impact_level TEXT,
    probability_level TEXT,
    control_effectiveness TEXT,
    severity_score INTEGER,
    risk_owner TEXT,
    escalation_procedure TEXT
);

INSERT INTO constructor_supply_chain_risk_assessments (constructor_id, assessment_year, risk_category, risk_score, description, mitigation_plan, responsible_party, status, last_review_date, next_review_date, created_at, updated_at, documentation_link, impact_level, probability_level, control_effectiveness, severity_score, risk_owner, escalation_procedure)
VALUES (3, 2025, 'MaterialShortage', 78, 'Potential shortage of carbon fiber', 'Increase safety stock', 'ProcurementLead', 'Open', '2025-02-15', '2025-08-15', '2025-02-01 10:00', '2025-02-01 10:00', 'http://docs.example.com/risk/001', 'High', 'Medium', 'Moderate', 85, 'SupplyChainMgr', 'NotifyCFO');

INSERT INTO constructor_supply_chain_risk_assessments (constructor_id, assessment_year, risk_category, risk_score, description, mitigation_plan, responsible_party, status, last_review_date, next_review_date, created_at, updated_at, documentation_link, impact_level, probability_level, control_effectiveness, severity_score, risk_owner, escalation_procedure)
VALUES (5, 2025, 'LogisticsDelay', 65, 'Transport delays due to port congestion', 'Alternative routes', 'LogisticsCoordinator', 'InProgress', '2025-03-10', '2025-09-10', '2025-03-01 09:30', '2025-03-01 09:30', 'http://docs.example.com/risk/002', 'Medium', 'High', 'Low', 70, 'LogisticsMgr', 'EscalateToOps');

INSERT INTO constructor_supply_chain_risk_assessments (constructor_id, assessment_year, risk_category, risk_score, description, mitigation_plan, responsible_party, status, last_review_date, next_review_date, created_at, updated_at, documentation_link, impact_level, probability_level, control_effectiveness, severity_score, risk_owner, escalation_procedure)
VALUES (7, 2025, 'RegulatoryChange', 55, 'New emissions regulations', 'Adjust engine design', 'R&DHead', 'Closed', '2025-01-20', '2025-07-20', '2025-01-05 14:20', '2025-01-05 14:20', 'http://docs.example.com/risk/003', 'Low', 'Medium', 'High', 60, 'ComplianceOfficer', 'ReportToBoard');


-- Race Media Rights Licensing
CREATE TABLE race_media_rights_licensing (
    license_id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER,
    media_type TEXT,
    licensee TEXT,
    territory TEXT,
    start_date DATE,
    end_date DATE,
    fee REAL,
    currency TEXT,
    exclusive INTEGER,
    rights_description TEXT,
    distribution_channels TEXT,
    approval_status TEXT,
    approval_date DATE,
    created_at TEXT,
    updated_at TEXT,
    contract_reference TEXT,
    notes TEXT,
    renewal_option TEXT,
    termination_clause TEXT
);

INSERT INTO race_media_rights_licensing (race_id, media_type, licensee, territory, start_date, end_date, fee, currency, exclusive, rights_description, distribution_channels, approval_status, approval_date, created_at, updated_at, contract_reference, notes, renewal_option, termination_clause)
VALUES (101, 'LiveStream', 'GlobalSportsNet', 'Worldwide', '2025-07-01', '2025-07-02', 1500000, 'USD', 1, 'Live broadcast of race', 'Online,Mobile', 'Approved', '2025-05-15', '2025-05-01 11:00', '2025-05-01 11:00', 'LIC001', 'First year deal', 'AutoRenew', '30dayNotice');

INSERT INTO race_media_rights_licensing (race_id, media_type, licensee, territory, start_date, end_date, fee, currency, exclusive, rights_description, distribution_channels, approval_status, approval_date, created_at, updated_at, contract_reference, notes, renewal_option, termination_clause)
VALUES (102, 'HighlightReel', 'HighlightHub', 'Europe', '2025-08-01', '2025-08-31', 300000, 'EUR', 0, 'Post‑race highlight package', 'Web,Social', 'Pending', NULL, '2025-06-10 09:45', '2025-06-10 09:45', 'LIC002', 'Negotiations ongoing', 'NoRenewal', 'NoClause');

INSERT INTO race_media_rights_licensing (race_id, media_type, licensee, territory, start_date, end_date, fee, currency, exclusive, rights_description, distribution_channels, approval_status, approval_date, created_at, updated_at, contract_reference, notes, renewal_option, termination_clause)
VALUES (103, 'AudioBroadcast', 'RadioWave', 'NorthAmerica', '2025-09-01', '2025-09-02', 200000, 'USD', 0, 'Audio only feed', 'Radio,Online', 'Approved', '2025-07-20', '2025-07-01 08:30', '2025-07-01 08:30', 'LIC003', 'Include sponsor spots', 'AutoRenew', '30dayNotice');


-- Fan Experience App Usage
CREATE TABLE fan_experience_app_usage (
    usage_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    app_version TEXT,
    session_start TEXT,
    session_end TEXT,
    pages_viewed INTEGER,
    features_used TEXT,
    device_type TEXT,
    os_version TEXT,
    location_city TEXT,
    location_country TEXT,
    download_source TEXT,
    rating INTEGER,
    feedback TEXT,
    crash_reports INTEGER,
    average_latency REAL,
    data_consumed_mb REAL,
    active_minutes INTEGER,
    push_notifications_enabled INTEGER,
    created_at TEXT
);

INSERT INTO fan_experience_app_usage (fan_id, app_version, session_start, session_end, pages_viewed, features_used, device_type, os_version, location_city, location_country, download_source, rating, feedback, crash_reports, average_latency, data_consumed_mb, active_minutes, push_notifications_enabled, created_at)
VALUES (1001, '1.4.2', '2025-06-01 10:15', '2025-06-01 11:05', 12, 'LiveTiming,ARMap', 'Smartphone', 'iOS14', 'London', 'UK', 'AppStore', 5, 'Great experience', 0, 0.85, 45.6, 45, 1, '2025-06-01 10:00');

INSERT INTO fan_experience_app_usage (fan_id, app_version, session_start, session_end, pages_viewed, features_used, device_type, os_version, location_city, location_country, download_source, rating, feedback, crash_reports, average_latency, data_consumed_mb, active_minutes, push_notifications_enabled, created_at)
VALUES (1002, '1.4.2', '2025-06-02 14:20', '2025-06-02 15:00', 8, 'TicketPurchase,Leaderboard', 'Tablet', 'Android11', 'Berlin', 'Germany', 'PlayStore', 4, 'Good but slow loading', 1, 1.20, 30.2, 38, 0, '2025-06-02 14:00');

INSERT INTO fan_experience_app_usage (fan_id, app_version, session_start, session_end, pages_viewed, features_used, device_type, os_version, location_city, location_country, download_source, rating, feedback, crash_reports, average_latency, data_consumed_mb, active_minutes, push_notifications_enabled, created_at)
VALUES (1003, '1.4.2', '2025-06-03 09:05', '2025-06-03 09:45', 15, 'LiveStream,Chat', 'Smartphone', 'iOS15', 'Madrid', 'Spain', 'AppStore', 5, 'Loved the live stream', 0, 0.70, 52.1, 50, 1, '2025-06-03 09:00');


-- Circuit Water Usage Log
CREATE TABLE circuit_water_usage_log (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id INTEGER,
    log_date DATE,
    total_consumption_liters REAL,
    recycled_water_liters REAL,
    rainwater_harvested_liters REAL,
    irrigation_liters REAL,
    evaporation_loss_liters REAL,
    maintenance_use_liters REAL,
    cooling_system_liters REAL,
    water_quality_ph REAL,
    temperature_celsius REAL,
    operator_name TEXT,
    shift TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    audit_status TEXT,
    external_audit_reference TEXT,
    compliance_flag INTEGER
);

INSERT INTO circuit_water_usage_log (circuit_id, log_date, total_consumption_liters, recycled_water_liters, rainwater_harvested_liters, irrigation_liters, evaporation_loss_liters, maintenance_use_liters, cooling_system_liters, water_quality_ph, temperature_celsius, operator_name, shift, notes, created_at, updated_at, audit_status, external_audit_reference, compliance_flag)
VALUES (1, '2025-04-01', 120000.5, 30000.2, 15000.0, 20000.0, 5000.5, 8000.0, 25000.0, 7.2, 22.5, 'JohnDoe', 'Day', 'Normal operation', '2025-04-01 08:00', '2025-04-01 16:00', 'Passed', 'AUD001', 1);

INSERT INTO circuit_water_usage_log (circuit_id, log_date, total_consumption_liters, recycled_water_liters, rainwater_harvested_liters, irrigation_liters, evaporation_loss_liters, maintenance_use_liters, cooling_system_liters, water_quality_ph, temperature_celsius, operator_name, shift, notes, created_at, updated_at, audit_status, external_audit_reference, compliance_flag)
VALUES (2, '2025-04-02', 135000.0, 35000.0, 20000.0, 25000.0, 6000.0, 9000.0, 30000.0, 7.0, 23.0, 'JaneSmith', 'Night', 'Higher cooling demand', '2025-04-02 20:00', '2025-04-03 04:00', 'Pending', 'AUD002', 0);

INSERT INTO circuit_water_usage_log (circuit_id, log_date, total_consumption_liters, recycled_water_liters, rainwater_harvested_liters, irrigation_liters, evaporation_loss_liters, maintenance_use_liters, cooling_system_liters, water_quality_ph, temperature_celsius, operator_name, shift, notes, created_at, updated_at, audit_status, external_audit_reference, compliance_flag)
VALUES (3, '2025-04-03', 110000.8, 28000.5, 12000.0, 18000.0, 4500.0, 7500.0, 22000.0, 7.3, 21.8, 'MikeLee', 'Day', 'Rainfall reduced irrigation', '2025-04-03 07:00', '2025-04-03 15:00', 'Passed', 'AUD003', 1);


-- Medical Staff Shift Assignments
CREATE TABLE medical_staff_shift_assignments (
    assignment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    staff_id INTEGER,
    shift_date DATE,
    shift_start TEXT,
    shift_end TEXT,
    role TEXT,
    department TEXT,
    location TEXT,
    supervisor_id INTEGER,
    on_call INTEGER,
    team_id INTEGER,
    equipment_assigned TEXT,
    patients_assigned INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    break_duration_minutes INTEGER,
    overtime_hours REAL,
    certification_level TEXT
);

INSERT INTO medical_staff_shift_assignments (staff_id, shift_date, shift_start, shift_end, role, department, location, supervisor_id, on_call, team_id, equipment_assigned, patients_assigned, notes, created_at, updated_at, status, break_duration_minutes, overtime_hours, certification_level)
VALUES (201, '2025-05-10', '08:00', '20:00', 'Physician', 'Emergency', 'PitLane', 150, 1, 12, 'Defibrillator,ECG', 5, 'No incidents', '2025-05-01 09:00', '2025-05-01 09:00', 'Scheduled', 60, 2.5, 'BoardCertified');

INSERT INTO medical_staff_shift_assignments (staff_id, shift_date, shift_start, shift_end, role, department, location, supervisor_id, on_call, team_id, equipment_assigned, patients_assigned, notes, created_at, updated_at, status, break_duration_minutes, overtime_hours, certification_level)
VALUES (202, '2025-05-11', '10:00', '22:00', 'Paramedic', 'Rescue', 'MedicalCenter', 151, 0, 13, 'Stretcher,FirstAidKit', 3, 'Handled minor injuries', '2025-05-02 10:15', '2025-05-02 10:15', 'Scheduled', 45, 1.0, 'Advanced');

INSERT INTO medical_staff_shift_assignments (staff_id, shift_date, shift_start, shift_end, role, department, location, supervisor_id, on_call, team_id, equipment_assigned, patients_assigned, notes, created_at, updated_at, status, break_duration_minutes, overtime_hours, certification_level)
VALUES (203, '2025-05-12', '06:00', '18:00', 'Nurse', 'Recovery', 'HospitalWing', 152, 1, 14, 'Ventilator,Monitors', 4, 'Monitoring post‑race', '2025-05-03 08:30', '2025-05-03 08:30', 'Scheduled', 30, 0.0, 'Registered');


-- Hospitality Event Staff Schedule
CREATE TABLE hospitality_event_staff_schedule (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    staff_id INTEGER,
    role TEXT,
    shift_date DATE,
    shift_start TEXT,
    shift_end TEXT,
    venue_section TEXT,
    uniform_required INTEGER,
    language_proficiency TEXT,
    experience_years INTEGER,
    assigned_table INTEGER,
    special_instructions TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    break_time_minutes INTEGER,
    meal_provided INTEGER,
    transport_provided INTEGER,
    supervisor_name TEXT
);

INSERT INTO hospitality_event_staff_schedule (event_id, staff_id, role, shift_date, shift_start, shift_end, venue_section, uniform_required, language_proficiency, experience_years, assigned_table, special_instructions, created_at, updated_at, status, break_time_minutes, meal_provided, transport_provided, supervisor_name)
VALUES (301, 401, 'Waiter', '2025-06-20', '11:00', '16:00', 'VIPLounge', 1, 'English', 3, 12, 'Serve only premium guests', '2025-05-15 09:00', '2025-05-15 09:00', 'Confirmed', 15, 1, 1, 'AliceBrown');

INSERT INTO hospitality_event_staff_schedule (event_id, staff_id, role, shift_date, shift_start, shift_end, venue_section, uniform_required, language_proficiency, experience_years, assigned_table, special_instructions, created_at, updated_at, status, break_time_minutes, meal_provided, transport_provided, supervisor_name)
VALUES (302, 402, 'Host', '2025-06-21', '12:00', '18:00', 'MainHall', 1, 'English,Spanish', 5, 0, 'Greet VIP entrants', '2025-05-16 10:30', '2025-05-16 10:30', 'Confirmed', 20, 1, 0, 'BobClark');

INSERT INTO hospitality_event_staff_schedule (event_id, staff_id, role, shift_date, shift_start, shift_end, venue_section, uniform_required, language_proficiency, experience_years, assigned_table, special_instructions, created_at, updated_at, status, break_time_minutes, meal_provided, transport_provided, supervisor_name)
VALUES (303, 403, 'Bartender', '2025-06-22', '14:00', '20:00', 'BarArea', 1, 'English', 2, 5, 'Prepare signature cocktails', '2025-05-17 11:45', '2025-05-17 11:45', 'Confirmed', 10, 1, 1, 'CarolDavis');


-- Telemetry Anomaly Events
CREATE TABLE telemetry_anomaly_events (
    anomaly_id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER,
    driver_id INTEGER,
    timestamp TEXT,
    sensor_id INTEGER,
    parameter TEXT,
    observed_value REAL,
    expected_range TEXT,
    severity TEXT,
    description TEXT,
    action_taken TEXT,
    resolved INTEGER,
    resolution_timestamp TEXT,
    engineer_id INTEGER,
    status TEXT,
    created_at TEXT,
    updated_at TEXT,
    confidence_score REAL,
    data_source TEXT,
    impact_on_race TEXT
);

INSERT INTO telemetry_anomaly_events (race_id, driver_id, timestamp, sensor_id, parameter, observed_value, expected_range, severity, description, action_taken, resolved, resolution_timestamp, engineer_id, status, created_at, updated_at, confidence_score, data_source, impact_on_race)
VALUES (101, 10, '2025-07-01 13:45:22', 77, 'EngineTemp', 115.5, '90-110', 'High', 'Temperature exceeds limit', 'Reduced engine map', 1, '2025-07-01 13: fifty', 5001, 'Closed', '2025-07-01 13:40', '2025-07-01 13:45', 0.92, 'TelemetryStream', 'Minor lap loss');

INSERT INTO telemetry_anomaly_events (race_id, driver_id, timestamp, sensor_id, parameter, observed_value, expected_range, severity, description, action_taken, resolved, resolution_timestamp, engineer_id, status, created_at, updated_at, confidence_score, data_source, impact_on_race)
VALUES (102, 12, '2025-08-15 10:22:08', 45, 'BrakePressure', 5.2, '6-10', 'Low', 'Brake pressure below threshold', 'Alert driver, adjust braking', 0, NULL, 5002, 'Open', '2025-08-15 10:00', '2025-08-15 10:20', 0.85, 'SensorLog', 'Potential safety risk');

INSERT INTO telemetry_anomaly_events (race_id, driver_id, timestamp, sensor_id, parameter, observed_value, expected_range, severity, description, action_taken, resolved, resolution_timestamp, engineer_id, status, created_at, updated_at, confidence_score, data_source, impact_on_race)
VALUES (103, 15, '2025-09-05 16:05:33', 88, 'FuelFlow', 2.1, '2.5-3.5', 'Low', 'Fuel flow lower than expected', 'Injected additional fuel', 1, '2025-09-05 16:10:00', 5003, 'Closed', '2025-09-05 16:00', '2025-09-05 16:05', 0.78, 'TelemetryFeed', 'Lost positions for 2 laps');


-- Sustainability Initiative Outcomes
CREATE TABLE sustainability_initiative_outcomes (
    outcome_id INTEGER PRIMARY KEY AUTOINCREMENT,
    initiative_id INTEGER,
    year INTEGER,
    metric_name TEXT,
    baseline_value REAL,
    target_value REAL,
    actual_value REAL,
    unit TEXT,
    percentage_change REAL,
    status TEXT,
    verification_body TEXT,
    verification_date DATE,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    responsible_party TEXT,
    cost REAL,
    budget REAL,
    carbon_reduction_tons REAL,
    energy_savings_mwh REAL
);

INSERT INTO sustainability_initiative_outcomes (initiative_id, year, metric_name, baseline_value, target_value, actual_value, unit, percentage_change, status, verification_body, verification_date, notes, created_at, updated_at, responsible_party, cost, budget, carbon_reduction_tons, energy_savings_mwh)
VALUES (901, 2025, 'WaterReuseRate', 45.0, 65.0, 62.3, 'percent', 38.4, 'Achieved', 'EcoAuditInc', '2025-12-01', 'Exceeded expectations', '2025-01-05 08:00', '2025-01-05 08:00', 'FacilitiesMgr', 120000, 150000, 0.0, 0.0);

INSERT INTO sustainability_initiative_outcomes (initiative_id, year, metric_name, baseline_value, target_value, actual_value, unit, percentage_change, status, verification_body, verification_date, notes, created_at, updated_at, responsible_party, cost, budget, carbon_reduction_tons, energy_savings_mwh)
VALUES (902, 2025, 'RenewableEnergyUse', 30.0, 55.0, 50.8, 'percent', 69.3, 'OnTrack', 'GreenCertOrg', '2025-11-15', 'Progressing well', '2025-02-10 09:30', '2025-02-10 09:30', 'EnergyMgr', 200000, 250000, 12.5, 85.0);

INSERT INTO sustainability_initiative_outcomes (initiative_id, year, metric_name, baseline_value, target_value, actual_value, unit, percentage_change, status, verification_body, verification_date, notes, created_at, updated_at, responsible_party, cost, budget, carbon_reduction_tons, energy_savings_mwh)
VALUES (903, 2025, 'WasteDiversionRate', 40.0, 70.0, 68.0, 'percent', 70.0, 'Achieved', 'SustainAuditLLC', '2025-12-20', 'Near full compliance', '2025-03-12 11:45', '2025-03-12 11:45', 'OperationsMgr', 150000, 180000, 0.0, 0.0);