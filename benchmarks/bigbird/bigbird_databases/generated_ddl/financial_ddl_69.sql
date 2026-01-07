-- City public parking permits
CREATE TABLE city_public_parking_permit
(
    permit_id          INTEGER PRIMARY KEY,
    city_id            INTEGER NOT NULL,
    zone               TEXT NOT NULL,
    permit_number      TEXT NOT NULL,
    vehicle_type       TEXT NOT NULL,
    vehicle_plate      TEXT NOT NULL,
    issue_date         DATE NOT NULL,
    expiration_date    DATE NOT NULL,
    fee                REAL NOT NULL,
    issued_by          TEXT NOT NULL,
    status             TEXT NOT NULL,
    payment_method     TEXT NOT NULL,
    renewal_flag       INTEGER NOT NULL,
    notes              TEXT,
    latitude           REAL,
    longitude          REAL,
    created_at         DATE NOT NULL,
    updated_at         DATE,
    admin_contact      TEXT,
    audit_flag         INTEGER
);

INSERT INTO city_public_parking_permit VALUES (1, 101, 'Downtown', 'PP-0001', 'Car', 'ABC1234', '2023-01-15', '2024-01-14', 120.50, 'ParkingDept', 'Active', 'CreditCard', 0, 'First year permit', 40.7128, -74.0060, '2023-01-10', NULL, 'john.doe@example.com', 0);
INSERT INTO city_public_parking_permit VALUES (2, 102, 'Uptown', 'PP-0002', 'Motorcycle', 'XYZ5678', '2023-03-01', '2024-02-28', 45.00, 'ParkingDept', 'Active', 'Cash', 0, NULL, 40.7851, -73.9683, '2023-02-25', NULL, 'jane.smith@example.com', 0);
INSERT INTO city_public_parking_permit VALUES (3, 103, 'Midtown', 'PP-0003', 'Van', 'LMN9012', '2022-12-01', '2023-11-30', 200.00, 'ParkingDept', 'Expired', 'Check', 1, 'Renewal required', 40.7549, -73.9840, '2022-11-20', '2023-11-30', 'admin@example.com', 1);


-- Vehicle registration records
CREATE TABLE vehicle_registration_record
(
    registration_id   INTEGER PRIMARY KEY,
    owner_id          INTEGER NOT NULL,
    vehicle_vin       TEXT NOT NULL,
    make              TEXT NOT NULL,
    model             TEXT NOT NULL,
    year_of_manufacture INTEGER NOT NULL,
    color             TEXT,
    engine_size_cc    INTEGER,
    fuel_type         TEXT,
    registration_state TEXT NOT NULL,
    registration_number TEXT NOT NULL,
    issue_date        DATE NOT NULL,
    expiration_date   DATE NOT NULL,
    registration_fee  REAL,
    insurance_policy  TEXT,
    insurance_expiry  DATE,
    odometer_km       INTEGER,
    emission_class    TEXT,
    last_inspection_date DATE,
    inspection_status TEXT,
    notes             TEXT
);

INSERT INTO vehicle_registration_record VALUES (1001, 5001, '1HGCM82633A004352', 'Honda', 'Accord', 2020, 'Blue', 1998, 'Petrol', 'NY', 'NY-1001', '2023-02-01', '2024-01-31', 150.00, 'POL12345', '2024-01-31', 35000, 'Euro5', '2023-06-15', 'Passed', NULL);
INSERT INTO vehicle_registration_record VALUES (1002, 5002, '2FTRX18W1XCA12345', 'Ford', 'F-150', 2019, 'Red', 3000, 'Diesel', 'CA', 'CA-2002', '2022-11-20', '2023-11-19', 180.00, 'POL67890', '2023-11-19', 47000, 'Euro6', '2023-04-10', 'Passed', 'Replaced brake pads');
INSERT INTO vehicle_registration_record VALUES (1003, 5003, 'JH4KA9650MC012345', 'Acura', 'TL', 2021, 'White', 2410, 'Hybrid', 'TX', 'TX-3003', '2023-07-05', '2024-07-04', 170.00, 'POL24680', '2024-07-04', 15000, 'Euro5', '2023-09-01', 'Pending', 'Awaiting inspection');


-- Clinical trial phases
CREATE TABLE clinical_trial_phase
(
    trial_phase_id    INTEGER PRIMARY KEY,
    trial_id          INTEGER NOT NULL,
    phase_name        TEXT NOT NULL,
    start_date        DATE NOT NULL,
    end_date          DATE,
    participant_target INTEGER,
    participants_enrolled INTEGER,
    sponsor           TEXT,
    budget_usd        REAL,
    primary_outcome   TEXT,
    secondary_outcome TEXT,
    status            TEXT,
    regulatory_approval BOOLEAN,
    data_management_system TEXT,
    monitoring_center TEXT,
    protocol_version TEXT,
    ethical_approval_date DATE,
    notes             TEXT,
    created_by        TEXT,
    created_at        DATE,
    updated_at        DATE
);

INSERT INTO clinical_trial_phase VALUES (1, 9001, 'Phase I', '2023-01-01', '2023-06-30', 50, 48, 'PharmaCo', 500000.00, 'Safety', 'Pharmacokinetics', 'Completed', 1, 'CTMS1', 'CenterA', 'v1.0', '2022-12-01', NULL, 'alice', '2022-11-15', NULL);
INSERT INTO clinical_trial_phase VALUES (2, 9001, 'Phase II', '2023-07-01', '2024-12-31', 200, 150, 'PharmaCo', 2000000.00, 'Efficacy', 'Dosage', 'Ongoing', 1, 'CTMS1', 'CenterB', 'v2.0', '2023-06-15', 'Interim analysis pending', 'bob', '2023-05-20', NULL);
INSERT INTO clinical_trial_phase VALUES (3, 9002, 'Phase I', '2022-03-01', '2022-09-30', 30, 30, 'BioGen', 300000.00, 'Tolerability', 'Biomarkers', 'Completed', 1, 'CTMS2', 'CenterC', 'v1.0', '2022-02-10', 'No adverse events', 'carol', '2022-01-25', '2022-10-01');


-- Solar farm maintenance log
CREATE TABLE solar_farm_maintenance_log
(
    maintenance_id    INTEGER PRIMARY KEY,
    farm_id           INTEGER NOT NULL,
    maintenance_date  DATE NOT NULL,
    technician_id     INTEGER NOT NULL,
    activity_type     TEXT NOT NULL,
    duration_hours    REAL,
    components_serviced TEXT,
    issue_reported   TEXT,
    resolution_action TEXT,
    parts_used        TEXT,
    cost_usd          REAL,
    downtime_minutes  INTEGER,
    weather_conditions TEXT,
    safety_checks_performed BOOLEAN,
    notes             TEXT,
    created_at        DATE NOT NULL,
    updated_at        DATE,
    supervisor_name   TEXT,
    approval_status   TEXT,
    follow_up_required BOOLEAN
);

INSERT INTO solar_farm_maintenance_log VALUES (101, 1, '2023-04-15', 301, 'Panel Cleaning', 8.0, 'Panels', NULL, 'Cleaned all panels', 'Cleaning solution', 1200.00, 30, 'Sunny', 1, 'Routine cleaning', '2023-04-10', NULL, 'Mike Turner', 'Approved', 0);
INSERT INTO solar_farm_maintenance_log VALUES (102, 1, '2023-07-20', 302, 'Inverter Replacement', 12.5, 'Inverter #3', 'Inverter failure', 'Replaced inverter', 'Inverter Model X', 8500.00, 120, 'Cloudy', 1, 'Replaced faulty inverter', '2023-07-15', NULL, 'Laura Smith', 'Approved', 0);
INSERT INTO solar_farm_maintenance_log VALUES (103, 2, '2023-09-05', 303, 'Cable Inspection', 5.0, 'Cable trays', 'Wear detected', 'Replaced worn cables', 'Cable Type Y', 2400.00, 45, 'Windy', 1, 'Inspection and replacement', '2023-09-01', NULL, 'Sam Lee', 'Pending', 1);


-- Public transport vehicle status
CREATE TABLE public_transport_vehicle_status
(
    vehicle_status_id INTEGER PRIMARY KEY,
    vehicle_id        INTEGER NOT NULL,
    route_id          INTEGER NOT NULL,
    status_timestamp  DATE NOT NULL,
    operational_status TEXT NOT NULL,
    latitude          REAL,
    longitude         REAL,
    speed_kmh         REAL,
    passenger_count   INTEGER,
    door_status       TEXT,
    engine_temperature REAL,
    fuel_level_percent INTEGER,
    battery_charge_percent INTEGER,
    next_stop_id      INTEGER,
    delay_minutes     INTEGER,
    incident_report   TEXT,
    driver_id         INTEGER,
    supervisor_id     INTEGER,
    notes             TEXT,
    created_at        DATE NOT NULL,
    updated_at        DATE
);

INSERT INTO public_transport_vehicle_status VALUES (1, 50001, 101, '2023-10-01', 'On Time', 40.7128, -74.0060, 45.0, 30, 'Closed', 85.0, 65, 90, 2001, 0, NULL, 8001, 9001, NULL, '2023-09-30', NULL);
INSERT INTO public_transport_vehicle_status VALUES (2, 50002, 102, '2023-10-01', 'Delayed', 40.7306, -73.9866, 20.0, 12, 'Open', 78.5, 40, 70, 2005, 15, 'Traffic jam near 5th Ave', 8002, 9002, 'Driver reported heavy rain', '2023-09-30', NULL);
INSERT INTO public_transport_vehicle_status VALUES (3, 50003, 103, '2023-10-01', 'Out of Service', 40.7580, -73.9855, 0.0, 0, 'Closed', 0.0, 0, 0, NULL, NULL, 'Engine failure', 8003, 9003, 'To be towed to depot', '2023-09-30', NULL);


-- Art gallery acquisitions
CREATE TABLE art_gallery_acquisition
(
    acquisition_id    INTEGER PRIMARY KEY,
    gallery_id        INTEGER NOT NULL,
    artwork_id        INTEGER NOT NULL,
    title             TEXT NOT NULL,
    artist            TEXT NOT NULL,
    acquisition_date  DATE NOT NULL,
    purchase_price_usd REAL,
    donor_name        TEXT,
    donor_contact     TEXT,
    medium            TEXT,
    dimensions_cm     TEXT,
    provenance        TEXT,
    condition_report TEXT,
    insurance_value_usd REAL,
    display_location  TEXT,
    exhibit_start_date DATE,
    exhibit_end_date   DATE,
    curatorial_notes  TEXT,
    created_by        TEXT,
    created_at        DATE NOT NULL,
    updated_at        DATE
);

INSERT INTO art_gallery_acquisition VALUES (1, 10, 5001, 'Sunset Over River', 'Jane Doe', '2023-03-10', 25000.00, NULL, NULL, 'Oil on Canvas', '100x150', 'Private collection', 'Excellent', 30000.00, 'Hall A', '2023-05-01', '2023-08-31', 'Featured in spring exhibition', 'curator1', '2023-03-05', NULL);
INSERT INTO art_gallery_acquisition VALUES (2, 10, 5002, 'Abstract Forms', 'John Smith', '2022-11-22', NULL, 'Emily Green', 'emily.green@example.com', 'Acrylic', '80x80', 'Donated by Emily Green', 'Good', 15000.00, 'Gallery 2', NULL, NULL, 'Potential loan to museum', 'curator2', '2022-11-15', NULL);
INSERT INTO art_gallery_acquisition VALUES (3, 12, 5003, 'Sculpture of Unity', 'Luis Martinez', '2023-07-01', 50000.00, NULL, NULL, 'Bronze', 'Height 200cm', 'Commissioned piece', 'Fair', 60000.00, 'Sculpture Garden', '2023-09-01', '2024-02-28', 'Outdoor installation', 'curator3', '2023-06-20', NULL);


-- Digital KYC process
CREATE TABLE digital_kyc_process
(
    kyc_id            INTEGER PRIMARY KEY,
    user_id           INTEGER NOT NULL,
    submission_date   DATE NOT NULL,
    verification_status TEXT NOT NULL,
    document_type      TEXT,
    document_number    TEXT,
    document_expiry    DATE,
    selfie_image_path  TEXT,
    address_proof_path TEXT,
    risk_score        REAL,
    verification_agent INTEGER,
    notes              TEXT,
    failure_reason     TEXT,
    retry_count        INTEGER,
    last_retry_date    DATE,
    approved_by        TEXT,
    approval_date      DATE,
    created_at         DATE NOT NULL,
    updated_at         DATE,
    source_channel     TEXT,
    compliance_flag    BOOLEAN
);

INSERT INTO digital_kyc_process VALUES (10001, 7001, '2023-08-01', 'Approved', 'Passport', 'P1234567', '2033-08-01', '/images/selfie1.png', '/images/address1.png', 0.12, 9001, NULL, NULL, 0, NULL, 'admin1', '2023-08-02', '2023-07-30', NULL, 'mobile_app', 1);
INSERT INTO digital_kyc_process VALUES (10002, 7002, '2023-08-05', 'Rejected', 'DriverLicense', 'D7654321', '2028-05-01', '/images/selfie2.png', '/images/address2.png', 0.85, 9002, 'Photo blurry', 'Insufficient image quality', 1, '2023-08-06', 'admin2', '2023-08-07', '2023-08-04', NULL, 'web_portal', 0);
INSERT INTO digital_kyc_process VALUES (10003, 7003, '2023-08-10', 'Pending', 'NationalID', 'N11223344', '2025-12-31', '/images/selfie3.png', '/images/address3.png', 0.45, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-08-09', NULL, 'partner_api', 0);


-- Community health center statistics
CREATE TABLE community_health_center_stats
(
    center_id           INTEGER PRIMARY KEY,
    region_id           INTEGER NOT NULL,
    reporting_month     TEXT NOT NULL,
    total_visits        INTEGER,
    new_patients        INTEGER,
    vaccinations_given  INTEGER,
    chronic_cases       INTEGER,
    staff_count         INTEGER,
    doctors_on_duty     INTEGER,
    nurses_on_duty      INTEGER,
    average_wait_time_minutes REAL,
    patient_satisfaction_score REAL,
    emergency_cases     INTEGER,
    referrals_outbound  INTEGER,
    referrals_inbound   INTEGER,
    budget_allocated_usd REAL,
    expenses_usd        REAL,
    equipment_issues    INTEGER,
    community_outreach_events INTEGER,
    notes               TEXT,
    data_verified_by   TEXT,
    verification_date   DATE
);

INSERT INTO community_health_center_stats VALUES (1, 501, '2023-09', 1240, 300, 850, 45, 25, 5, 10, 15.2, 4.5, 30, 12, 8, 200000.00, 180500.00, 2, 5, NULL, 'auditor1', '2023-09-30');
INSERT INTO community_health_center_stats VALUES (2, 502, '2023-09', 980, 210, 720, 38, 22, 4, 9, 12.8, 4.2, 22, 9, 6, 180000.00, 165000.00, 1, 3, 'Low pediatric visits', 'auditor2', '2023-09-30');
INSERT INTO community_health_center_stats VALUES (3, 503, '2023-09', 1500, 350, 950, 50, 30, 6, 12, 10.5, 4.7, 40, 15, 10, 250000.00, 230000.00, 0, 7, NULL, 'auditor3', '2023-09-30');


-- Energy storage battery log
CREATE TABLE energy_storage_battery_log
(
    log_id               INTEGER PRIMARY KEY,
    storage_facility_id  INTEGER NOT NULL,
    battery_id           INTEGER NOT NULL,
    log_timestamp        DATE NOT NULL,
    state_of_charge_pct  REAL,
    voltage_volts        REAL,
    current_amperes      REAL,
    temperature_celsius  REAL,
    health_indicator     REAL,
    cycles_completed     INTEGER,
    last_maintenance_date DATE,
    next_maintenance_due DATE,
    fault_code           TEXT,
    operational_status   TEXT,
    power_output_kw      REAL,
    power_input_kw       REAL,
    efficiency_percent   REAL,
    notes                TEXT,
    recorded_by          TEXT,
    created_at           DATE NOT NULL,
    updated_at           DATE
);

INSERT INTO energy_storage_battery_log VALUES (50001, 1, 101, '2023-10-01', 78.5, 400.0, 150.0, 25.0, 0.95, 500, '2023-06-01', '2024-06-01', NULL, 'Operational', 120.0, 130.0, 92.3, NULL, 'tech1', '2023-09-30', NULL);
INSERT INTO energy_storage_battery_log VALUES (50002, 1, 102, '2023-10-01', 62.0, 398.5, 140.0, 27.5, 0.90, 450, '2023-05-15', '2024-05-15', 'F12', 'Degraded', 110.0, 125.0, 88.0, 'Voltage dip observed', 'tech2', '2023-09-30', NULL);
INSERT INTO energy_storage_battery_log VALUES (50003, 2, 201, '2023-10-01', 85.0, 405.0, 160.0, 24.0, 0.97, 600, '2023-07-20', '2024-07-20', NULL, 'Operational', 130.0, 140.0, 93.5, 'All parameters normal', 'tech3', '2023-09-30', NULL);


-- Smart city IoT device registry
CREATE TABLE smart_city_iot_device
(
    device_id            INTEGER PRIMARY KEY,
    device_type          TEXT NOT NULL,
    installation_date    DATE NOT NULL,
    location_latitude    REAL,
    location_longitude   REAL,
    firmware_version     TEXT,
    connectivity_type    TEXT,
    power_source         TEXT,
    last_comm_timestamp  DATE,
    status               TEXT,
    manufacturer         TEXT,
    model_number         TEXT,
    serial_number        TEXT,
    data_endpoint_url    TEXT,
    battery_level_percent INTEGER,
    signal_strength_dbm  REAL,
    alert_thresholds     TEXT,
    maintenance_interval_days INTEGER,
    last_maintenance_date DATE,
    next_maintenance_due DATE,
    assigned_manager     TEXT,
    created_at           DATE NOT NULL,
    updated_at           DATE
);

INSERT INTO smart_city_iot_device VALUES (1001, 'AirQualitySensor', '2022-01-15', 40.7128, -74.0060, 'v1.2.3', 'LoRaWAN', 'Battery', '2023-09-30', 'Active', 'EnviroTech', 'AQ-100', 'SN001', 'https://api.city/iot/aq/1001', 85, -70.5, 'PM2.5>35', 180, '2023-03-01', '2023-08-28', 'manager1', '2022-01-10', NULL);
INSERT INTO smart_city_iot_device VALUES (1002, 'TrafficCamera', '2021-06-20', 40.7306, -73.9866, 'v3.0.0', '5G', 'Mains', '2023-09-28', 'Active', 'VisionCorp', 'TC-200', 'SN002', 'https://api.city/iot/tc/1002', NULL, -60.0, 'VehicleCount>1000', 365, '2023-01-15', '2024-01-14', 'manager2', '2021-06-15', NULL);
INSERT INTO smart_city_iot_device VALUES (1003, 'SmartStreetLight', '2020-11-05', 40.7549, -73.9840, 'v2.5.1', 'Zigbee', 'Solar', '2023-09-25', 'MaintenanceRequired', 'LightCo', 'SL-300', 'SN003', 'https://api.city/iot/sl/1003', 45, -80.0, 'Luminosity<200', 90, '2023-06-01', '2023-08-30', 'manager3', '2020-11-01', NULL);


-- Vehicle registration records (additional advanced table)
CREATE TABLE vehicle_registration_advanced
(
    reg_advanced_id     INTEGER PRIMARY KEY,
    vehicle_vin          TEXT NOT NULL,
    owner_name           TEXT NOT NULL,
    owner_address        TEXT NOT NULL,
    registration_state   TEXT NOT NULL,
    registration_number  TEXT NOT NULL,
    registration_date    DATE NOT NULL,
    expiry_date          DATE NOT NULL,
    vehicle_type         TEXT,
    fuel_type            TEXT,
    engine_capacity_cc   INTEGER,
    emission_standard    TEXT,
    insurance_provider   TEXT,
    insurance_policy_no  TEXT,
    insurance_expiry     DATE,
    odometer_km          INTEGER,
    last_service_date    DATE,
    service_center       TEXT,
    notes                TEXT,
    created_at           DATE NOT NULL,
    updated_at           DATE,
    compliance_flag      BOOLEAN,
    last_inspection_date DATE,
    inspection_result   TEXT,
    next_renewal_notice DATE
);

INSERT INTO vehicle_registration_advanced VALUES (2001, '5YJ3E1EA7KF123456', 'Alice Johnson', '123 Main St Cityville', 'NY', 'NY-5501', '2022-04-10', '2023-04-09', 'Sedan', 'Electric', 0, 'ZeroEmissions', 'EcoInsure', 'ECO12345', '2023-04-09', 15000, '2023-01-15', 'AutoCenter A', NULL, '2022-04-01', NULL, 1, '2023-01-15', 'Pass', '2023-03-15');
INSERT INTO vehicle_registration_advanced VALUES (2002, '1FTSW21R08EB12345', 'Bob Smith', '456 Oak Ave Townsville', 'CA', 'CA-6602', '2021-07-20', '2022-07-19', 'Truck', 'Diesel', 5000, 'Euro6', 'TruckSecure', 'TRK67890', '2022-07-19', 85000, '2021-12-10', 'TruckService B', 'Brake pads replaced', '2021-07-01', NULL, 1, '2021-12-10', 'Pass', '2022-06-20');
INSERT INTO vehicle_registration_advanced VALUES (2003, 'JH4KA8260MC012345', 'Carlos Rivera', '789 Pine Rd Village', 'TX', 'TX-7703', '2023-01-05', '2024-01-04', 'SUV', 'Hybrid', 2400, 'Euro5', 'HybridShield', 'HBR11223', '2024-01-04', 22000, '2023-03-20', 'HybridCare C', NULL, '2023-01-01', NULL, 0, '2023-03-20', 'Pending', '2023-12-01');