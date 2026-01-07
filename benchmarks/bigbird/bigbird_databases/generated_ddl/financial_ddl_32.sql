-- Branch facility details
CREATE TABLE branch_facility
(
    facility_id INTEGER PRIMARY KEY,
    branch_id INTEGER,
    facility_type TEXT,
    opening_date DATE,
    address_line TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    floor_area INTEGER,
    capacity INTEGER,
    maintenance_contract TEXT,
    hvac_status TEXT,
    power_supply TEXT,
    water_supply TEXT,
    security_level INTEGER,
    fire_safety_rating INTEGER,
    last_inspection DATE,
    manager_employee_id INTEGER,
    operational_status TEXT,
    notes TEXT
);

INSERT INTO branch_facility (facility_id, branch_id, facility_type, opening_date, address_line, city, state, zip_code, floor_area, capacity, maintenance_contract, hvac_status, power_supply, water_supply, security_level, fire_safety_rating, last_inspection, manager_employee_id, operational_status, notes) VALUES (1, 101, 'Office', '2015-06-15', '123_Main_St', 'Metropolis', 'NY', '10001', 5000, 200, 'Contract_A', 'Operational', 'Dual', 'Municipal', 3, 5, '2023-08-01', 1001, 'Active', 'N/A');
INSERT INTO branch_facility (facility_id, branch_id, facility_type, opening_date, address_line, city, state, zip_code, floor_area, capacity, maintenance_contract, hvac_status, power_supply, water_supply, security_level, fire_safety_rating, last_inspection, manager_employee_id, operational_status, notes) VALUES (2, 102, 'Call_Center', '2018-02-20', '456_Second_Ave', 'Gotham', 'IL', '60602', 8000, 350, 'Contract_B', 'Scheduled', 'Single', 'Well', 4, 4, '2023-07-15', 1002, 'Active', 'Extended_hours');
INSERT INTO branch_facility (facility_id, branch_id, facility_type, opening_date, address_line, city, state, zip_code, floor_area, capacity, maintenance_contract, hvac_status, power_supply, water_supply, security_level, fire_safety_rating, last_inspection, manager_employee_id, operational_status, notes) VALUES (3, 103, 'Data_Center', '2020-11-05', '789_Third_Rd', 'StarCity', 'CA', '90012', 12000, 100, 'Contract_C', 'Operational', 'Redundant', 'Recycled', 5, 5, '2023-09-10', 1003, 'Active', 'High_security');

-- ATM inventory details
CREATE TABLE atm_inventory
(
    atm_id INTEGER PRIMARY KEY,
    location_id INTEGER,
    model TEXT,
    manufacturer TEXT,
    install_date DATE,
    last_service_date DATE,
    cash_capacity INTEGER,
    cassettes INTEGER,
    software_version TEXT,
    network_status TEXT,
    power_status TEXT,
    gps_latitude REAL,
    gps_longitude REAL,
    security_level INTEGER,
    card_reader_status TEXT,
    printer_status TEXT,
    sensor_status TEXT,
    firmware_update_date DATE,
    uptime_hours INTEGER,
    notes TEXT
);

INSERT INTO atm_inventory (atm_id, location_id, model, manufacturer, install_date, last_service_date, cash_capacity, cassettes, software_version, network_status, power_status, gps_latitude, gps_longitude, security_level, card_reader_status, printer_status, sensor_status, firmware_update_date, uptime_hours, notes) VALUES (1001, 201, 'X1000', 'BankTech', '2019-03-01', '2023-06-20', 20000, 4, 'v3.2.1', 'Online', 'Normal', 40.7128, -74.0060, 4, 'OK', 'OK', 'OK', '2023-05-15', 8760, 'Routine_check');
INSERT INTO atm_inventory (atm_id, location_id, model, manufacturer, install_date, last_service_date, cash_capacity, cassettes, software_version, network_status, power_status, gps_latitude, gps_longitude, security_level, card_reader_status, printer_status, sensor_status, firmware_update_date, uptime_hours, notes) VALUES (1002, 202, 'Z200', 'FinServe', '2020-07-12', '2023-07-01', 25000, 5, 'v4.0.0', 'Online', 'Backup', 34.0522, -118.2437, 5, 'OK', 'OK', 'OK', '2023-06-30', 7200, 'Software_update');
INSERT INTO atm_inventory (atm_id, location_id, model, manufacturer, install_date, last_service_date, cash_capacity, cassettes, software_version, network_status, power_status, gps_latitude, gps_longitude, security_level, card_reader_status, printer_status, sensor_status, firmware_update_date, uptime_hours, notes) VALUES (1003, 203, 'A300', 'SecureBank', '2021-11-05', '2023-08-10', 30000, 6, 'v5.1.2', 'Offline', 'Normal', 41.8781, -87.6298, 3, 'Degraded', 'OK', 'OK', '2023-07-20', 6400, 'Network_issue');

-- Digital wallet activity log
CREATE TABLE digital_wallet_activity
(
    wallet_activity_id INTEGER PRIMARY KEY,
    wallet_id INTEGER,
    client_id INTEGER,
    activity_type TEXT,
    activity_date DATE,
    amount REAL,
    currency TEXT,
    device_type TEXT,
    app_version TEXT,
    ip_address TEXT,
    location_city TEXT,
    location_country TEXT,
    transaction_status TEXT,
    exchange_rate REAL,
    fee_amount REAL,
    fee_currency TEXT,
    balance_before REAL,
    balance_after REAL,
    notes TEXT,
    audit_user_id INTEGER
);

INSERT INTO digital_wallet_activity (wallet_activity_id, wallet_id, client_id, activity_type, activity_date, amount, currency, device_type, app_version, ip_address, location_city, location_country, transaction_status, exchange_rate, fee_amount, fee_currency, balance_before, balance_after, notes, audit_user_id) VALUES (5001, 301, 10001, 'TopUp', '2023-08-15', 150.00, 'USD', 'Mobile', '1.4.2', '192.168.1.10', 'Metropolis', 'US', 'Success', 1.0, 0.50, 'USD', 500.00, 650.00, 'Initial_topup', 9001);
INSERT INTO digital_wallet_activity (wallet_activity_id, wallet_id, client_id, activity_type, activity_date, amount, currency, device_type, app_version, ip_address, location_city, location_country, transaction_status, exchange_rate, fee_amount, fee_currency, balance_before, balance_after, notes, audit_user_id) VALUES (5002, 302, 10002, 'Payment', '2023-08-16', 45.75, 'USD', 'Web', '2.0.0', '10.0.0.5', 'Gotham', 'US', 'Success', 1.0, 0.30, 'USD', 200.00, 154.25, 'Bill_payment', 9002);
INSERT INTO digital_wallet_activity (wallet_activity_id, wallet_id, client_id, activity_type, activity_date, amount, currency, device_type, app_version, ip_address, location_city, location_country, transaction_status, exchange_rate, fee_amount, fee_currency, balance_before, balance_after, notes, audit_user_id) VALUES (5003, 303, 10003, 'Transfer', '2023-08-17', 100.00, 'EUR', 'Tablet', '3.1.1', '172.16.0.20', 'StarCity', 'DE', 'Pending', 0.92, 1.00, 'EUR', 800.00, 699.00, 'Peer_to_peer', 9003);

-- Supplier contract information
CREATE TABLE supplier_contract
(
    contract_id INTEGER PRIMARY KEY,
    supplier_id INTEGER,
    contract_type TEXT,
    start_date DATE,
    end_date DATE,
    total_value REAL,
    currency TEXT,
    payment_terms TEXT,
    renewal_option TEXT,
    performance_score INTEGER,
    compliance_status TEXT,
    risk_rating INTEGER,
    contact_person TEXT,
    contact_email TEXT,
    notice_period_days INTEGER,
    penalty_clause TEXT,
    escalation_procedure TEXT,
    governing_law TEXT,
    amendment_count INTEGER,
    notes TEXT
);

INSERT INTO supplier_contract (contract_id, supplier_id, contract_type, start_date, end_date, total_value, currency, payment_terms, renewal_option, performance_score, compliance_status, risk_rating, contact_person, contact_email, notice_period_days, penalty_clause, escalation_procedure, governing_law, amendment_count, notes) VALUES (8001, 401, 'Supply', '2022-01-01', '2024-12-31', 2500000, 'USD', 'Net30', 'Auto', 85, 'Compliant', 2, 'John_Doe', 'john.doe@example.com', 60, 'Late_delivery', 'Escalate_to_Manager', 'NY_Law', 1, 'Standard_terms');
INSERT INTO supplier_contract (contract_id, supplier_id, contract_type, start_date, end_date, total_value, currency, payment_terms, renewal_option, performance_score, compliance_status, risk_rating, contact_person, contact_email, notice_period_days, penalty_clause, escalation_procedure, governing_law, amendment_count, notes) VALUES (8002, 402, 'Service', '2021-05-15', '2023-05-14', 1200000, 'EUR', 'Net45', 'Manual', 78, 'Conditional', 3, 'Jane_Smith', 'jane.smith@example.eu', 90, 'Penalty_per_day', 'Escalate_to_Director', 'EU_Law', 2, 'Includes_support');
INSERT INTO supplier_contract (contract_id, supplier_id, contract_type, start_date, end_date, total_value, currency, payment_terms, renewal_option, performance_score, compliance_status, risk_rating, contact_person, contact_email, notice_period_days, penalty_clause, escalation_procedure, governing_law, amendment_count, notes) VALUES (8003, 403, 'Consulting', '2023-03-01', '2025-02-28', 500000, 'GBP', 'Net60', 'Auto', 92, 'Compliant', 1, 'Alice_Wong', 'alice.wong@example.co.uk', 30, 'No_penalty', 'Escalate_to_Executive', 'UK_Law', 0, 'Strategic_project');

-- Building certification records
CREATE TABLE building_certification
(
    cert_id INTEGER PRIMARY KEY,
    building_id INTEGER,
    certifying_body TEXT,
    certification_type TEXT,
    issue_date DATE,
    expiry_date DATE,
    level TEXT,
    score INTEGER,
    energy_efficiency_rating REAL,
    water_efficiency_rating REAL,
    waste_management_score INTEGER,
    indoor_air_quality_score INTEGER,
    daylight_factor REAL,
    thermal_comfort_score INTEGER,
    verification_document TEXT,
    auditor_name TEXT,
    audit_date DATE,
    remarks TEXT,
    status TEXT,
    last_updated DATE
);

INSERT INTO building_certification (cert_id, building_id, certifying_body, certification_type, issue_date, expiry_date, level, score, energy_efficiency_rating, water_efficiency_rating, waste_management_score, indoor_air_quality_score, daylight_factor, thermal_comfort_score, verification_document, auditor_name, audit_date, remarks, status, last_updated) VALUES (9001, 501, 'USGBC', 'LEED', '2022-04-20', '2027-04-20', 'Gold', 88, 95.5, 92.0, 85, 90, 0.45, 88, 'doc123.pdf', 'Mark_Taylor', '2022-04-15', 'Good_performance', 'Active', '2023-07-01');
INSERT INTO building_certification (cert_id, building_id, certifying_body, certification_type, issue_date, expiry_date, level, score, energy_efficiency_rating, water_efficiency_rating, waste_management_score, indoor_air_quality_score, daylight_factor, thermal_comfort_score, verification_document, auditor_name, audit_date, remarks, status, last_updated) VALUES (9002, 502, 'BREEAM', 'BREEAM', '2021-09-10', '2026-09-10', 'Excellent', 92, 98.0, 95.0, 90, 93, 0.48, 91, 'doc456.pdf', 'Susan_Lee', '2021-09-05', 'Outstanding', 'Active', '2023-06-15');
INSERT INTO building_certification (cert_id, building_id, certifying_body, certification_type, issue_date, expiry_date, level, score, energy_efficiency_rating, water_efficiency_rating, waste_management_score, indoor_air_quality_score, daylight_factor, thermal_comfort_score, verification_document, auditor_name, audit_date, remarks, status, last_updated) VALUES (9003, 503, 'WELL', 'WELL_Building', '2023-01-12', '2028-01-12', 'Platinum', 95, 97.2, 96.5, 92, 95, 0.50, 94, 'doc789.pdf', 'Peter_Khan', '2023-01-08', 'Exceeds_expectations', 'Pending', '2023-08-20');

-- Logistics route performance metrics
CREATE TABLE logistics_route_performance
(
    route_perf_id INTEGER PRIMARY KEY,
    route_id INTEGER,
    date DATE,
    avg_speed REAL,
    max_speed REAL,
    total_distance REAL,
    fuel_consumed REAL,
    emissions REAL,
    delay_minutes INTEGER,
    incidents_count INTEGER,
    on_time_percentage REAL,
    driver_id INTEGER,
    vehicle_id INTEGER,
    weather_condition TEXT,
    traffic_condition TEXT,
    cargo_weight INTEGER,
    cargo_type TEXT,
    maintenance_flag INTEGER,
    notes TEXT,
    recorded_by INTEGER
);

INSERT INTO logistics_route_performance (route_perf_id, route_id, date, avg_speed, max_speed, total_distance, fuel_consumed, emissions, delay_minutes, incidents_count, on_time_percentage, driver_id, vehicle_id, weather_condition, traffic_condition, cargo_weight, cargo_type, maintenance_flag, notes, recorded_by) VALUES (11001, 601, '2023-08-01', 45.5, 80.0, 350.0, 45.0, 120.0, 12, 0, 96.5, 701, 801, 'Clear', 'Moderate', 12000, 'Electronics', 0, 'No_issues', 9001);
INSERT INTO logistics_route_performance (route_perf_id, route_id, date, avg_speed, max_speed, total_distance, fuel_consumed, emissions, delay_minutes, incidents_count, on_time_percentage, driver_id, vehicle_id, weather_condition, traffic_condition, cargo_weight, cargo_type, maintenance_flag, notes, recorded_by) VALUES (11002, 602, '2023-08-02', 38.2, 70.0, 420.0, 58.0, 155.0, 30, 1, 89.0, 702, 802, 'Rain', 'Heavy', 15000, 'Furniture', 1, 'Minor_delay_due_to_weather', 9002);
INSERT INTO logistics_route_performance (route_perf_id, route_id, date, avg_speed, max_speed, total_distance, fuel_consumed, emissions, delay_minutes, incidents_count, on_time_percentage, driver_id, vehicle_id, weather_condition, traffic_condition, cargo_weight, cargo_type, maintenance_flag, notes, recorded_by) VALUES (11003, 603, '2023-08-03', 50.0, 85.0, 300.0, 40.0, 110.0, 5, 0, 98.0, 703, 803, 'Clear', 'Light', 8000, 'Pharmaceuticals', 0, 'Smooth_run', 9003);

-- Marketing campaign budget details
CREATE TABLE marketing_campaign_budget
(
    campaign_budget_id INTEGER PRIMARY KEY,
    campaign_id INTEGER,
    fiscal_year INTEGER,
    allocated_amount REAL,
    spent_amount REAL,
    remaining_amount REAL,
    currency TEXT,
    approval_status TEXT,
    approved_by INTEGER,
    approval_date DATE,
    variance REAL,
    cost_center TEXT,
    department TEXT,
    sponsor TEXT,
    target_audience TEXT,
    channel_mix TEXT,
    expected_roi REAL,
    actual_roi REAL,
    notes TEXT,
    last_updated DATE
);

INSERT INTO marketing_campaign_budget (campaign_budget_id, campaign_id, fiscal_year, allocated_amount, spent_amount, remaining_amount, currency, approval_status, approved_by, approval_date, variance, cost_center, department, sponsor, target_audience, channel_mix, expected_roi, actual_roi, notes, last_updated) VALUES (21001, 301, 2023, 500000, 350000, 150000, 'USD', 'Approved', 1101, '2023-01-10', 0.0, 'CC01', 'Marketing', 'Global_Corp', 'Adults_25_45', 'Online_Social', 12.5, 13.0, 'On_track', '2023-08-15');
INSERT INTO marketing_campaign_budget (campaign_budget_id, campaign_id, fiscal_year, allocated_amount, spent_amount, remaining_amount, currency, approval_status, approved_by, approval_date, variance, cost_center, department, sponsor, target_audience, channel_mix, expected_roi, actual_roi, notes, last_updated) VALUES (21002, 302, 2023, 300000, 280000, 20000, 'EUR', 'Approved', 1102, '2023-02-05', 0.0, 'CC02', 'Sales', 'Regional_Partner', 'SMEs', 'Email_Events', 10.0, 9.5, 'Slight_overrun', '2023-08-16');
INSERT INTO marketing_campaign_budget (campaign_budget_id, campaign_id, fiscal_year, allocated_amount, spent_amount, remaining_amount, currency, approval_status, approved_by, approval_date, variance, cost_center, department, sponsor, target_audience, channel_mix, expected_roi, actual_roi, notes, last_updated) VALUES (21003, 303, 2023, 200000, 150000, 50000, 'GBP', 'Pending', 1103, '2023-03-12', 0.0, 'CC03', 'Product', 'Tech_Innovators', 'Professionals', 'Webinars', 15.0, 0.0, 'Awaiting_final_approval', '2023-08-17');

-- Regulatory fine details
CREATE TABLE regulatory_fine_detail
(
    fine_id INTEGER PRIMARY KEY,
    entity_type TEXT,
    entity_id INTEGER,
    regulation TEXT,
    violation_date DATE,
    fine_amount REAL,
    currency TEXT,
    paid_status TEXT,
    payment_date DATE,
    assessing_agency TEXT,
    case_number TEXT,
    severity_level INTEGER,
    corrective_action TEXT,
    due_date DATE,
    notes TEXT,
    appealed_status TEXT,
    appeal_deadline DATE,
    auditor_id INTEGER,
    audit_reference TEXT,
    settlement_amount REAL,
    settlement_date DATE
);

INSERT INTO regulatory_fine_detail (fine_id, entity_type, entity_id, regulation, violation_date, fine_amount, currency, paid_status, payment_date, assessing_agency, case_number, severity_level, corrective_action, due_date, notes, appealed_status, appeal_deadline, auditor_id, audit_reference, settlement_amount, settlement_date) VALUES (31001, 'Branch', 101, 'AML_Act', '2023-04-20', 25000, 'USD', 'Paid', '2023-05-15', 'FINCEN', 'C001', 3, 'Enhanced_KYC', '2023-06-01', 'No_further_issues', 'No', NULL, 1201, 'AR001', 25000, '2023-05-15');
INSERT INTO regulatory_fine_detail (fine_id, entity_type, entity_id, regulation, violation_date, fine_amount, currency, paid_status, payment_date, assessing_agency, case_number, severity_level, corrective_action, due_date, notes, appealed_status, appeal_deadline, auditor_id, audit_reference, settlement_amount, settlement_date) VALUES (31002, 'Supplier', 402, 'EPA_Rules', '2023-03-10', 18000, 'EUR', 'Unpaid', NULL, 'EPA', 'E123', 2, 'Install_Scrubbers', '2023-04-15', 'Pending_payment', 'Yes', '2023-04-30', 1202, 'AR002', NULL, NULL);
INSERT INTO regulatory_fine_detail (fine_id, entity_type, entity_id, regulation, violation_date, fine_amount, currency, paid_status, payment_date, assessing_agency, case_number, severity_level, corrective_action, due_date, notes, appealed_status, appeal_deadline, auditor_id, audit_reference, settlement_amount, settlement_date) VALUES (31003, 'Individual', 10012, 'GDPR', '2023-02-05', 5000, 'GBP', 'Paid', '2023-02-20', 'ICO', 'G456', 1, 'Data_Deletion', '2023-03-01', 'Resolved', 'No', NULL, 1203, 'AR003', 5000, '2023-02-20');

-- Corporate training module catalog
CREATE TABLE corporate_training_module
(
    module_id INTEGER PRIMARY KEY,
    title TEXT,
    description TEXT,
    department TEXT,
    start_date DATE,
    end_date DATE,
    duration_hours INTEGER,
    trainer_id INTEGER,
    delivery_mode TEXT,
    location TEXT,
    capacity INTEGER,
    enrolled_count INTEGER,
    completion_rate REAL,
    certification_required TEXT,
    assessment_method TEXT,
    pass_threshold REAL,
    cost REAL,
    currency TEXT,
    status TEXT,
    last_updated DATE,
    version_number INTEGER,
    notes TEXT
);

INSERT INTO corporate_training_module (module_id, title, description, department, start_date, end_date, duration_hours, trainer_id, delivery_mode, location, capacity, enrolled_count, completion_rate, certification_required, assessment_method, pass_threshold, cost, currency, status, last_updated, version_number, notes) VALUES (41001, 'Risk_Management_Basics', 'Intro_to_risk_management', 'Risk', '2023-09-01', '2023-09-05', 20, 2001, 'Online', 'Virtual', 30, 28, 95.0, 'Yes', 'Quiz', 80.0, 1500, 'USD', 'Active', '2023-08-20', 1, 'First_cohort');
INSERT INTO corporate_training_module (module_id, title, description, department, start_date, end_date, duration_hours, trainer_id, delivery_mode, location, capacity, enrolled_count, completion_rate, certification_required, assessment_method, pass_threshold, cost, currency, status, last_updated, version_number, notes) VALUES (41002, 'Advanced_SQL', 'Deep_dive_into_SQL_techniques', 'IT', '2023-10-10', '2023-10-12', 16, 2002, 'InPerson', 'HQ_Room_12', 20, 18, 88.5, 'Yes', 'Project', 85.0, 2000, 'USD', 'Scheduled', '2023-08-22', 1, 'Limited_seats');
INSERT INTO corporate_training_module (module_id, title, description, department, start_date, end_date, duration_hours, trainer_id, delivery_mode, location, capacity, enrolled_count, completion_rate, certification_required, assessment_method, pass_threshold, cost, currency, status, last_updated, version_number, notes) VALUES (41003, 'Leadership_Development', 'Building_leadership_skills', 'HR', '2023-11-01', '2023-11-03', 24, 2003, 'Hybrid', 'Main_Campus', 25, 22, 90.0, 'No', 'Presentation', 0.0, 2500, 'USD', 'Planned', '2023-08-25', 1, 'Executive_audience');

-- Public transport fare structure
CREATE TABLE public_transport_fare_structure
(
    fare_structure_id INTEGER PRIMARY KEY,
    transport_mode TEXT,
    route_id INTEGER,
    fare_type TEXT,
    base_fare REAL,
    discount_rate REAL,
    peak_multiplier REAL,
    offpeak_multiplier REAL,
    effective_date DATE,
    expiration_date DATE,
    currency TEXT,
    ticket_validity_minutes INTEGER,
    transfer_allowed INTEGER,
    zone_count INTEGER,
    accessibility_discount INTEGER,
    student_discount INTEGER,
    senior_discount INTEGER,
    comments TEXT,
    last_updated DATE,
    approved_by INTEGER
);

INSERT INTO public_transport_fare_structure (fare_structure_id, transport_mode, route_id, fare_type, base_fare, discount_rate, peak_multiplier, offpeak_multiplier, effective_date, expiration_date, currency, ticket_validity_minutes, transfer_allowed, zone_count, accessibility_discount, student_discount, senior_discount, comments, last_updated, approved_by) VALUES (51001, 'Bus', 801, 'Standard', 2.5, 0.0, 1.2, 0.8, '2023-01-01', '2025-12-31', 'USD', 120, 1, 3, 0, 0, 0, 'No_special_discounts', '2023-07-01', 1301);
INSERT INTO public_transport_fare_structure (fare_structure_id, transport_mode, route_id, fare_type, base_fare, discount_rate, peak_multiplier, offpeak_multiplier, effective_date, expiration_date, currency, ticket_validity_minutes, transfer_allowed, zone_count, accessibility_discount, student_discount, senior_discount, comments, last_updated, approved_by) VALUES (51002, 'Metro', 802, 'Student', 1.5, 0.2, 1.0, 0.9, '2023-03-01', '2024-02-28', 'USD', 90, 1, 2, 0, 1, 0, 'Student_discount_applied', '2023-07-02', 1302);
INSERT INTO public_transport_fare_structure (fare_structure_id, transport_mode, route_id, fare_type, base_fare, discount_rate, peak_multiplier, offpeak_multiplier, effective_date, expiration_date, currency, ticket_validity_minutes, transfer_allowed, zone_count, accessibility_discount, student_discount, senior_discount, comments, last_updated, approved_by) VALUES (51003, 'Tram', 803, 'Senior', 1.8, 0.15, 1.0, 0.85, '2023-05-01', '2025-04-30', 'USD', 100, 0, 1, 0, 0, 1, 'Senior_discount_applied', '2023-07-03', 1303);