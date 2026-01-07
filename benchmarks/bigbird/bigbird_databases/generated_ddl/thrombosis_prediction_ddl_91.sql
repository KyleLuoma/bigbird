-- Hospital building information
CREATE TABLE hospital_building (
    building_id INTEGER PRIMARY KEY,
    name TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    year_constructed INTEGER,
    floors INTEGER,
    total_rooms INTEGER,
    icu_rooms INTEGER,
    or_rooms INTEGER,
    bed_capacity INTEGER,
    elevator_count INTEGER,
    parking_spots INTEGER,
    energy_source TEXT,
    hvac_type TEXT,
    fire_safety_rating INTEGER,
    compliance_date DATE,
    management_company TEXT,
    latitude REAL,
    longitude REAL
);

INSERT INTO hospital_building VALUES (1, 'Main Building', '123 Health Ave', 'MediCity', 'CA', '90001', 1995, 8, 150, 20, 10, 500, 4, 200, 'Electric', 'Central', 5, '2023-01-15', 'HealthOps', 34.0522, -118.2437);
INSERT INTO hospital_building VALUES (2, 'Research Wing', '456 Science Rd', 'MediCity', 'CA', '90002', 2005, 5, 80, 5, 2, 200, 2, 100, 'Solar', 'HVAC-X', 4, '2023-03-10', 'BioTech Services', 34.0530, -118.2440);
INSERT INTO hospital_building VALUES (3, 'Outpatient Center', '789 Care Blvd', 'MediCity', 'CA', '90003', 2010, 3, 60, 2, 1, 120, 1, 80, 'Hybrid', 'VRF', 3, '2023-02-20', 'Outpatient Management', 34.0540, -118.2450);

-- Staff training program detail
CREATE TABLE staff_training_program_detail (
    program_id INTEGER,
    module_id INTEGER,
    module_name TEXT,
    description TEXT,
    start_date DATE,
    end_date DATE,
    duration_hours INTEGER,
    instructor_id INTEGER,
    instructor_name TEXT,
    department TEXT,
    target_audience TEXT,
    certification_required TEXT,
    credits_earned INTEGER,
    delivery_method TEXT,
    language TEXT,
    max_enrollments INTEGER,
    current_enrollments INTEGER,
    cost_usd REAL,
    evaluation_score REAL,
    is_mandatory INTEGER,
    created_at DATE,
    PRIMARY KEY (program_id, module_id)
);

INSERT INTO staff_training_program_detail VALUES (101, 1, 'Infection Control Basics', 'Fundamentals of infection control', '2023-04-01', '2023-04-03', 16, 1001, 'Dr Smith', 'Infection Dept', 'All Staff', 'None', 2, 'InPerson', 'English', 30, 28, 0, 4.5, 1, '2023-03-15');
INSERT INTO staff_training_program_detail VALUES (101, 2, 'Advanced Sterilization', 'Deep dive into sterilization techniques', '2023-05-10', '2023-05-12', 24, 1002, 'Dr Lee', 'Infection Dept', 'Nurse Staff', 'Certificate', 3, 'Online', 'English', 20, 18, 150.00, 4.8, 1, '2023-04-20');
INSERT INTO staff_training_program_detail VALUES (102, 1, 'Electronic Health Records', 'EHR system usage training', '2023-06-05', '2023-06-07', 12, 2001, 'Ms Johnson', 'IT Dept', 'All Clinical Staff', 'None', 1, 'Hybrid', 'English', 40, 35, 0, 4.2, 0, '2023-05-25');

-- Medical device lifecycle tracking
CREATE TABLE medical_device_lifecycle (
    device_id INTEGER PRIMARY KEY,
    serial_number TEXT,
    manufacturer TEXT,
    model TEXT,
    purchase_date DATE,
    warranty_end_date DATE,
    installation_date DATE,
    location TEXT,
    department TEXT,
    status TEXT,
    decommission_date DATE,
    disposal_method TEXT,
    last_service_date DATE,
    service_interval_days INTEGER,
    total_usage_hours REAL,
    calibration_due_date DATE,
    firmware_version TEXT,
    assigned_technician_id INTEGER,
    assigned_technician_name TEXT,
    cost_usd REAL
);

INSERT INTO medical_device_lifecycle VALUES (10001, 'SN10001', 'MedTech', 'VentX200', '2020-01-15', '2025-01-15', '2020-02-01', 'ICU-1', 'Intensive Care', 'Active', NULL, NULL, '2023-01-10', 180, 3500.5, '2023-12-31', 'v3.2', 3001, 'John Doe', 12500);
INSERT INTO medical_device_lifecycle VALUES (10002, 'SN10002', 'HealthCorp', 'Dialyzer Pro', '2018-07-20', '2023-07-20', '2018-08-05', 'Dialysis Ward', 'Nephrology', 'Retired', '2023-08-01', 'Recycle', '2022-12-15', 365, 7200, '2022-11-30', 'v1.8', 3002, 'Jane Smith', 22000);
INSERT INTO medical_device_lifecycle VALUES (10003, 'SN10003', 'ImagingSol', 'MRI-3T', '2019-03-10', '2024-03-10', '2019-04-01', 'Radiology', 'Imaging', 'Active', NULL, NULL, '2023-03-20', 365, 1500, '2024-02-28', 'v5.0', 3003, 'Mike Lee', 850000);

-- Research funding allocation
CREATE TABLE research_funding_allocation (
    grant_id INTEGER,
    project_id INTEGER,
    funding_agency TEXT,
    total_award_amount REAL,
    start_date DATE,
    end_date DATE,
    allocated_amount REAL,
    remaining_balance REAL,
    principal_investigator_id INTEGER,
    pi_name TEXT,
    department TEXT,
    funding_category TEXT,
    is_multi_year INTEGER,
    report_due_date DATE,
    currency TEXT,
    exchange_rate REAL,
    funding_status TEXT,
    allocation_date DATE,
    review_score REAL,
    notes TEXT,
    PRIMARY KEY (grant_id, project_id)
);

INSERT INTO research_funding_allocation VALUES (5001, 2001, 'National Health Institute', 1500000, '2022-01-01', '2025-12-31', 500000, 1000000, 4001, 'Dr Allen', 'Oncology', 'Clinical Trial', 1, '2023-12-31', 'USD', 1.0, 'Active', '2022-01-15', 4.7, 'Phase 1 ongoing');
INSERT INTO research_funding_allocation VALUES (5002, 2002, 'State Research Fund', 800000, '2021-06-01', '2024-05-31', 300000, 500000, 4002, 'Dr Baker', 'Cardiology', 'Basic Science', 1, '2022-12-31', 'USD', 1.0, 'Active', '2021-06-10', 4.5, 'Animal model studies');
INSERT INTO research_funding_allocation VALUES (5003, 2003, 'Private Foundation', 500000, '2023-03-01', '2026-02-28', 200000, 300000, 4003, 'Dr Clark', 'Neurology', 'Translational', 0, '2024-03-31', 'USD', 1.0, 'Pending', '2023-03-05', 0.0, 'Proposal under review');

-- Community health program metrics
CREATE TABLE community_health_program_metric (
    program_id INTEGER,
    metric_id INTEGER,
    metric_name TEXT,
    target_population TEXT,
    year INTEGER,
    quarter INTEGER,
    participation_count INTEGER,
    completed_count INTEGER,
    dropout_rate REAL,
    average_score REAL,
    funding_used REAL,
    external_partners TEXT,
    community_area TEXT,
    data_source TEXT,
    last_updated DATE,
    is_active INTEGER,
    goal_value REAL,
    achieved_value REAL,
    comments TEXT,
    created_date DATE,
    PRIMARY KEY (program_id, metric_id)
);

INSERT INTO community_health_program_metric VALUES (301, 1, 'Vaccination Coverage', 'Adults 65+', 2023, 1, 1200, 1150, 4.2, 89.5, 50000, 'Local Pharmacies', 'North District', 'Survey', '2023-04-01', 1, 90, 89.5, 'On track', '2023-01-15');
INSERT INTO community_health_program_metric VALUES (301, 2, 'Blood Pressure Screening', 'General Population', 2023, 1, 800, 750, 6.3, 78.2, 30000, 'Community Clinics', 'North District', 'Clinic Records', '2023-04-01', 1, 85, 78.2, 'Needs improvement', '2023-01-15');
INSERT INTO community_health_program_metric VALUES (302, 1, 'Diabetes Education Attendance', 'Adults 45-70', 2023, 1, 500, 460, 8.0, 82.0, 25000, 'Health NGOs', 'South Zone', 'Event Logs', '2023-04-01', 1, 600, 460, 'Below target', '2023-01-20');

-- Environmental sensor station logs
CREATE TABLE environmental_sensor_station_log (
    station_id INTEGER,
    sensor_id INTEGER,
    sensor_type TEXT,
    reading_datetime DATETIME,
    temperature_c REAL,
    humidity_pct REAL,
    co2_ppm INTEGER,
    pm2_5_ugm3 REAL,
    pm10_ugm3 REAL,
    noise_db REAL,
    wind_speed_ms REAL,
    wind_direction_deg INTEGER,
    rainfall_mm REAL,
    battery_level_pct REAL,
    signal_strength_dbm REAL,
    maintenance_flag INTEGER,
    firmware_version TEXT,
    latitude REAL,
    longitude REAL,
    operator_id INTEGER,
    PRIMARY KEY (station_id, sensor_id, reading_datetime)
);

INSERT INTO environmental_sensor_station_log VALUES (1, 101, 'TempHumidity', '2023-04-10 08:00:00', 22.5, 45.0, 420, NULL, NULL, NULL, NULL, NULL, NULL, 95.0, -70, 0, 'v2.1', 34.0522, -118.2437, 9001);
INSERT INTO environmental_sensor_station_log VALUES (1, 102, 'CO2', '2023-04-10 08:00:00', NULL, NULL, 620, NULL, NULL, NULL, NULL, NULL, NULL, 93.0, -68, 0, 'v2.1', 34.0522, -118.2437, 9001);
INSERT INTO environmental_sensor_station_log VALUES (2, 201, 'AirQuality', '2023-04-10 08:05:00', 21.0, 50.0, 400, 12.5, 25.0, 55.0, 3.2, 180, 0.0, 88.0, -65, 0, 'v3.0', 34.0530, -118.2440, 9002);

-- Pharmacy cold chain monitor detail
CREATE TABLE pharmacy_cold_chain_monitor_detail (
    batch_id INTEGER PRIMARY KEY,
    product_name TEXT,
    sku TEXT,
    storage_temp_c REAL,
    temp_min_c REAL,
    temp_max_c REAL,
    monitoring_start_date DATE,
    monitoring_end_date DATE,
    avg_temp_c REAL,
    max_temp_c REAL,
    min_temp_c REAL,
    temp_deviation_flag INTEGER,
    alarm_triggered INTEGER,
    responsible_technician_id INTEGER,
    technician_name TEXT,
    location TEXT,
    device_id INTEGER,
    device_model TEXT,
    calibration_date DATE,
    notes TEXT
);

INSERT INTO pharmacy_cold_chain_monitor_detail VALUES (90001, 'Insulin Aspart', 'INS-001', 2.0, 1.0, 8.0, '2023-03-01', '2023-03-15', 4.2, 7.5, 1.2, 0, 0, 3101, 'Emily White', 'Pharmacy Cold Room A', 5001, 'ColdBox X', '2023-02-20', 'No issues');
INSERT INTO pharmacy_cold_chain_monitor_detail VALUES (90002, 'Vaccines Pfizer', 'VAC-PFZ', 2.5, 2.0, 8.0, '2023-03-05', '2023-03-20', 3.9, 7.8, 2.1, 0, 1, 3102, 'Mark Green', 'Pharmacy Cold Room B', 5002, 'ColdBox Y', '2023-02-25', 'Minor temp spike on day 7');
INSERT INTO pharmacy_cold_chain_monitor_detail VALUES (90003, 'Heparin Sodium', 'HEP-002', 4.0, 2.0, 8.0, '2023-03-10', '2023-03-25', 4.5, 7.9, 2.5, 0, 0, 3103, 'Sara Blue', 'Pharmacy Cold Room C', 5003, 'ColdBox Z', '2023-03-01', 'All parameters within range');

-- Hospital energy consumption detail
CREATE TABLE hospital_energy_consumption_detail (
    record_id INTEGER PRIMARY KEY,
    department_id INTEGER,
    department_name TEXT,
    consumption_date DATE,
    energy_type TEXT,
    consumption_kwh REAL,
    cost_usd REAL,
    peak_demand_kw REAL,
    avg_demand_kw REAL,
    on_peak_hours REAL,
    off_peak_hours REAL,
    renewable_percent REAL,
    co2_emission_kg REAL,
    meter_reading_start REAL,
    meter_reading_end REAL,
    operator_id INTEGER,
    shift TEXT,
    remarks TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO hospital_energy_consumption_detail VALUES (40001, 10, 'ICU', '2023-04-01', 'Electric', 5600.5, 720.0, 150.0, 120.0, 8, 16, 12.5, 3400.0, 120000.0, 125600.0, 8001, 'Night', 'Normal operation', '2023-04-02', '2023-04-02');
INSERT INTO hospital_energy_consumption_detail VALUES (40002, 20, 'Radiology', '2023-04-01', 'Electric', 4200.0, 540.0, 130.0, 110.0, 7, 15, 10.0, 2500.0, 85000.0, 89200.0, 8002, 'Day', 'Increased MRI usage', '2023-04-02', '2023-04-02');
INSERT INTO hospital_energy_consumption_detail VALUES (40003, 30, 'Outpatient', '2023-04-01', 'Electric', 3100.3, 400.0, 100.0, 85.0, 6, 14, 8.0, 1900.0, 60000.0, 63100.0, 8003, 'Evening', 'Routine', '2023-04-02', '2023-04-02');

-- Staff transport request detail
CREATE TABLE staff_transport_request (
    request_id INTEGER PRIMARY KEY,
    request_date DATE,
    requester_id INTEGER,
    requester_name TEXT,
    transport_type TEXT,
    origin_location TEXT,
    destination_location TEXT,
    priority_level TEXT,
    scheduled_time TIME,
    estimated_duration_min INTEGER,
    vehicle_id INTEGER,
    driver_id INTEGER,
    driver_name TEXT,
    status TEXT,
    approval_required INTEGER,
    approved_by_id INTEGER,
    approved_by_name TEXT,
    reason TEXT,
    notes TEXT,
    created_at DATE
);

INSERT INTO staff_transport_request VALUES (70001, '2023-04-10', 1101, 'Alice Brown', 'Wheelchair', 'Ward A', 'Radiology', 'High', '09:30:00', 15, 3001, 2101, 'Tom Clark', 'Approved', 1, 5001, 'Dr Emily', 'Transfer patient for scan', 'N/A', '2023-04-09');
INSERT INTO staff_transport_request VALUES (70002, '2023-04-11', 1102, 'Bob Davis', 'Stretcher', 'Operating Room', 'ICU', 'Urgent', '14:00:00', 10, 3002, 2102, 'Sara Lee', 'Pending', 1, NULL, NULL, 'Emergency surgery prep', 'Needs confirmation', '2023-04-10');
INSERT INTO staff_transport_request VALUES (70003, '2023-04-12', 1103, 'Carol Evans', 'Standard', 'Lobby', 'Main Entrance', 'Normal', '11:15:00', 5, 3003, 2103, 'Mike Jones', 'Completed', 0, NULL, NULL, 'Visitor escort', 'Completed successfully', '2023-04-11');

-- Medical device calibration certificate
CREATE TABLE medical_device_calibration_certificate (
    certificate_id INTEGER PRIMARY KEY,
    device_id INTEGER,
    calibration_date DATE,
    calibrator_name TEXT,
    calibration_lab TEXT,
    certificate_number TEXT,
    valid_until DATE,
    calibration_method TEXT,
    standards_followed TEXT,
    result_status TEXT,
    notes TEXT,
    uploaded_by_id INTEGER,
    uploaded_by_name TEXT,
    upload_date DATE,
    file_path TEXT,
    reviewer_id INTEGER,
    reviewer_name TEXT,
    review_date DATE,
    approval_status TEXT,
    signature TEXT
);

INSERT INTO medical_device_calibration_certificate VALUES (80001, 10001, '2023-01-10', 'Calibration Co', 'Lab A', 'CERT-001', '2024-01-10', 'Method X', 'ISO 17025', 'Pass', 'All parameters within tolerance', 9001, 'Anna Miller', '2023-01-12', '/certs/80001.pdf', 9101, 'Dr Kevin', '2023-01-13', 'Approved', 'KM');
INSERT INTO medical_device_calibration_certificate VALUES (80002, 10002, '2022-12-15', 'CalibratePro', 'Lab B', 'CERT-002', '2023-12-15', 'Method Y', 'ISO 9001', 'Pass', 'Minor adjustment required', 9002, 'Brian Scott', '2022-12-16', '/certs/80002.pdf', 9102, 'Dr Laura', '2022-12-17', 'Approved', 'LS');
INSERT INTO medical_device_calibration_certificate VALUES (80003, 10003, '2023-03-20', 'PrecisionCal', 'Lab C', 'CERT-003', '2024-03-20', 'Method Z', 'ISO 17025', 'Fail', 'Temperature sensor out of range', 9003, 'Catherine Wu', '2023-03-21', '/certs/80003.pdf', 9103, 'Dr Peter', '2023-03-22', 'Rejected', 'PW');