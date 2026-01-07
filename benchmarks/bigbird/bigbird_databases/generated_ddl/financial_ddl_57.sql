-- Satellite Observation Metadata
CREATE TABLE satellite_observation_meta (
    observation_id INTEGER PRIMARY KEY,
    satellite_name TEXT NOT NULL,
    sensor_type TEXT NOT NULL,
    capture_date DATE NOT NULL,
    orbit_type TEXT NOT NULL,
    resolution REAL NOT NULL,
    cloud_coverage REAL NOT NULL,
    processing_level TEXT NOT NULL,
    data_format TEXT NOT NULL,
    file_size_mb REAL NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    altitude_km REAL NOT NULL,
    sun_elevation REAL NOT NULL,
    moon_phase TEXT NOT NULL,
    view_angle_deg REAL NOT NULL,
    calibration_status TEXT NOT NULL,
    quality_flag TEXT NOT NULL,
    analyst_id INTEGER NOT NULL,
    notes TEXT
);
INSERT INTO satellite_observation_meta (observation_id, satellite_name, sensor_type, capture_date, orbit_type, resolution, cloud_coverage, processing_level, data_format, file_size_mb, latitude, longitude, altitude_km, sun_elevation, moon_phase, view_angle_deg, calibration_status, quality_flag, analyst_id, notes) VALUES (1, 'SatA', 'Optical', '2023-01-10', 'SunSync', 0.5, 12.3, 'L1', 'GeoTIFF', 1240.5, 34.05, -118.25, 700, 45.2, 'Full', 12.0, 'Calibrated', 'Good', 101, 'First observation');
INSERT INTO satellite_observation_meta (observation_id, satellite_name, sensor_type, capture_date, orbit_type, resolution, cloud_coverage, processing_level, data_format, file_size_mb, latitude, longitude, altitude_km, sun_elevation, moon_phase, view_angle_deg, calibration_status, quality_flag, analyst_id, notes) VALUES (2, 'SatB', 'Radar', '2023-02-15', 'Polar', 1.2, 5.0, 'L2', 'HDF5', 980.2, 51.51, -0.13, 800, 30.1, 'Quarter', 8.5, 'Pending', 'Medium', 102, 'Clear weather');
INSERT INTO satellite_observation_meta (observation_id, satellite_name, sensor_type, capture_date, orbit_type, resolution, cloud_coverage, processing_level, data_format, file_size_mb, latitude, longitude, altitude_km, sun_elevation, moon_phase, view_angle_deg, calibration_status, quality_flag, analyst_id, notes) VALUES (3, 'SatC', 'Thermal', '2023-03-20', 'Geostationary', 2.0, 0.0, 'L1B', 'NetCDF', 1125.7, 35.68, 139.69, 35786, 60.5, 'New', 15.3, 'Calibrated', 'Excellent', 103, 'Nighttime capture');

-- Biomedical Device Registry
CREATE TABLE biomedical_device_registry (
    device_id INTEGER PRIMARY KEY,
    manufacturer TEXT NOT NULL,
    model_number TEXT NOT NULL,
    device_type TEXT NOT NULL,
    approval_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    serial_number TEXT NOT NULL,
    firmware_version TEXT NOT NULL,
    battery_life_hours INTEGER NOT NULL,
    connectivity TEXT NOT NULL,
    usage_category TEXT NOT NULL,
    risk_class TEXT NOT NULL,
    maintenance_interval_days INTEGER NOT NULL,
    last_maintenance_date DATE NOT NULL,
    calibration_status TEXT NOT NULL,
    assigned_department TEXT NOT NULL,
    location_room TEXT NOT NULL,
    responsible_staff_id INTEGER NOT NULL,
    warranty_end_date DATE NOT NULL,
    notes TEXT
);
INSERT INTO biomedical_device_registry (device_id, manufacturer, model_number, device_type, approval_date, expiry_date, serial_number, firmware_version, battery_life_hours, connectivity, usage_category, risk_class, maintenance_interval_days, last_maintenance_date, calibration_status, assigned_department, location_room, responsible_staff_id, warranty_end_date, notes) VALUES (1, 'MedTech', 'MT-500', 'InfusionPump', '2021-04-01', '2026-04-01', 'SN123456', 'v1.2.3', 240, 'WiFi', 'CriticalCare', 'ClassII', 180, '2023-06-01', 'Calibrated', 'ICU', 'Room101', 501, '2025-12-31', 'Initial deployment');
INSERT INTO biomedical_device_registry (device_id, manufacturer, model_number, device_type, approval_date, expiry_date, serial_number, firmware_version, battery_life_hours, connectivity, usage_category, risk_class, maintenance_interval_days, last_maintenance_date, calibration_status, assigned_department, location_room, responsible_staff_id, warranty_end_date, notes) VALUES (2, 'HealCo', 'HC-200', 'Ventilator', '2020-09-15', '2025-09-15', 'SN789012', 'v3.0.1', 120, 'Ethernet', 'Respiratory', 'ClassIII', 365, '2023-01-20', 'Pending', 'ER', 'Room202', 502, '2024-11-30', 'Spare unit');
INSERT INTO biomedical_device_registry (device_id, manufacturer, model_number, device_type, approval_date, expiry_date, serial_number, firmware_version, battery_life_hours, connectivity, usage_category, risk_class, maintenance_interval_days, last_maintenance_date, calibration_status, assigned_department, location_room, responsible_staff_id, warranty_end_date, notes) VALUES (3, 'BioSys', 'BS-330', 'ECGMonitor', '2022-02-10', '2027-02-10', 'SN345678', 'v2.5.0', 480, 'Bluetooth', 'Diagnostic', 'ClassI', 90, '2023-09-15', 'Calibrated', 'Cardiology', 'Room303', 503, '2026-08-31', 'Under warranty');

-- Urban Noise Monitoring Station
CREATE TABLE urban_noise_monitoring_station (
    station_id INTEGER PRIMARY KEY,
    city TEXT NOT NULL,
    neighborhood TEXT NOT NULL,
    installation_date DATE NOT NULL,
    sensor_type TEXT NOT NULL,
    sensitivity_db REAL NOT NULL,
    frequency_range_hz TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    height_m REAL NOT NULL,
    power_source TEXT NOT NULL,
    data_upload_interval_min INTEGER NOT NULL,
    last_service_date DATE NOT NULL,
    firmware_version TEXT NOT NULL,
    maintenance_vendor TEXT NOT NULL,
    status TEXT NOT NULL,
    avg_noise_level_db REAL NOT NULL,
    peak_noise_level_db REAL NOT NULL,
    alerts_triggered INTEGER NOT NULL,
    notes TEXT
);
INSERT INTO urban_noise_monitoring_station (station_id, city, neighborhood, installation_date, sensor_type, sensitivity_db, frequency_range_hz, latitude, longitude, height_m, power_source, data_upload_interval_min, last_service_date, firmware_version, maintenance_vendor, status, avg_noise_level_db, peak_noise_level_db, alerts_triggered, notes) VALUES (1, 'Metropolis', 'Downtown', '2022-05-01', 'Acoustic', -35.5, '20-20000', 40.7128, -74.0060, 5.0, 'Solar', 15, '2023-04-20', 'v1.0.0', 'NoiseTech', 'Active', 62.3, 95.0, 3, 'Baseline monitoring');
INSERT INTO urban_noise_monitoring_station (station_id, city, neighborhood, installation_date, sensor_type, sensitivity_db, frequency_range_hz, latitude, longitude, height_m, power_source, data_upload_interval_min, last_service_date, firmware_version, maintenance_vendor, status, avg_noise_level_db, peak_noise_level_db, alerts_triggered, notes) VALUES (2, 'Gotham', 'Harbor', '2021-11-15', 'Acoustic', -38.0, '30-18000', 34.0522, -118.2437, 6.5, 'Mains', 10, '2023-02-10', 'v1.1.2', 'AcoustiServe', 'Active', 70.1, 110.5, 5, 'Near construction site');
INSERT INTO urban_noise_monitoring_station (station_id, city, neighborhood, installation_date, sensor_type, sensitivity_db, frequency_range_hz, latitude, longitude, height_m, power_source, data_upload_interval_min, last_service_date, firmware_version, maintenance_vendor, status, avg_noise_level_db, peak_noise_level_db, alerts_triggered, notes) VALUES (3, 'StarCity', 'Uptown', '2023-01-20', 'Acoustic', -36.2, '25-19000', 51.5074, -0.1278, 4.2, 'Battery', 20, '2023-06-05', 'v1.0.5', 'SoundGuard', 'Active', 55.6, 85.2, 1, 'Quiet residential area');

-- Marine Fishing Permit
CREATE TABLE marine_fishing_permit (
    permit_id INTEGER PRIMARY KEY,
    vessel_id INTEGER NOT NULL,
    vessel_name TEXT NOT NULL,
    owner_name TEXT NOT NULL,
    permit_issue_date DATE NOT NULL,
    permit_expiry_date DATE NOT NULL,
    catch_limit_tons REAL NOT NULL,
    gear_type TEXT NOT NULL,
    region TEXT NOT NULL,
    authorized_species TEXT NOT NULL,
    quota_number INTEGER NOT NULL,
    compliance_status TEXT NOT NULL,
    inspection_date DATE NOT NULL,
    inspector_id INTEGER NOT NULL,
    fine_amount REAL NOT NULL,
    renewal_required TEXT NOT NULL,
    notes TEXT,
    registration_number TEXT NOT NULL,
    flag_state TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    vessel_length_m REAL NOT NULL
);
INSERT INTO marine_fishing_permit (permit_id, vessel_id, vessel_name, owner_name, permit_issue_date, permit_expiry_date, catch_limit_tons, gear_type, region, authorized_species, quota_number, compliance_status, inspection_date, inspector_id, fine_amount, renewal_required, notes, registration_number, flag_state, latitude, longitude, vessel_length_m) VALUES (1, 1001, 'SeaVoyager', 'Oceanic LLC', '2022-03-01', '2024-03-01', 150.0, 'Trawl', 'NorthSea', 'Cod', 12, 'Compliant', '2023-06-15', 301, 0.0, 'No', 'Standard permit', 'REG12345', 'UK', 54.0, 1.2, 30.5);
INSERT INTO marine_fishing_permit (permit_id, vessel_id, vessel_name, owner_name, permit_issue_date, permit_expiry_date, catch_limit_tons, gear_type, region, authorized_species, quota_number, compliance_status, inspection_date, inspector_id, fine_amount, renewal_required, notes, registration_number, flag_state, latitude, longitude, vessel_length_m) VALUES (2, 1002, 'BlueMarlin', 'Atlantic Fisheries', '2021-07-15', '2023-07-15', 200.0, 'Gillnet', 'Baltic', 'Herring', 18, 'Pending', '2023-01-20', 302, 5000.0, 'Yes', 'Late filing', 'REG67890', 'Sweden', 55.5, 12.5, 45.0);
INSERT INTO marine_fishing_permit (permit_id, vessel_id, vessel_name, owner_name, permit_issue_date, permit_expiry_date, catch_limit_tons, gear_type, region, authorized_species, quota_number, compliance_status, inspection_date, inspector_id, fine_amount, renewal_required, notes, registration_number, flag_state, latitude, longitude, vessel_length_m) VALUES (3, 1003, 'OceanQuest', 'Pacific Ventures', '2023-01-10', '2025-01-10', 120.0, 'Longline', 'Pacific', 'Tuna', 7, 'Compliant', '2023-08-05', 303, 0.0, 'No', 'New vessel', 'REG11223', 'USA', 34.0, -120.0, 28.0);

-- Cultural Heritage Site
CREATE TABLE cultural_heritage_site (
    site_id INTEGER PRIMARY KEY,
    site_name TEXT NOT NULL,
    country TEXT NOT NULL,
    region TEXT NOT NULL,
    designation_date DATE NOT NULL,
    heritage_type TEXT NOT NULL,
    governing_body TEXT NOT NULL,
    area_hectares REAL NOT NULL,
    visitor_capacity INTEGER NOT NULL,
    annual_visitors INTEGER NOT NULL,
    conservation_status TEXT NOT NULL,
    primary_threats TEXT NOT NULL,
    restoration_phase TEXT NOT NULL,
    last_restoration_date DATE NOT NULL,
    responsible_agency TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    altitude_m REAL NOT NULL,
    access_restrictions TEXT NOT NULL,
    public_outreach_program TEXT NOT NULL,
    notes TEXT
);
INSERT INTO cultural_heritage_site (site_id, site_name, country, region, designation_date, heritage_type, governing_body, area_hectares, visitor_capacity, annual_visitors, conservation_status, primary_threats, restoration_phase, last_restoration_date, responsible_agency, latitude, longitude, altitude_m, access_restrictions, public_outreach_program, notes) VALUES (1, 'OldFort', 'CountryA', 'RegionX', '1995-06-20', 'Architectural', 'NationalTrust', 12.5, 5000, 120000, 'Good', 'Erosion', 'Completed', '2022-09-15', 'HeritageDept', 45.1234, -71.5678, 250, 'None', 'GuidedTours', 'Open year round');
INSERT INTO cultural_heritage_site (site_id, site_name, country, region, designation_date, heritage_type, governing_body, area_hectares, visitor_capacity, annual_visitors, conservation_status, primary_threats, restoration_phase, last_restoration_date, responsible_agency, latitude, longitude, altitude_m, access_restrictions, public_outreach_program, notes) VALUES (2, 'AncientTemple', 'CountryB', 'RegionY', '2001-03-11', 'Archaeological', 'CulturalMinistry', 8.2, 3000, 80000, 'Fair', 'Moisture', 'InProgress', '2023-04-10', 'ArchaeologyInstitute', 12.3456, 98.7654, 1500, 'GuidedOnly', 'SchoolVisits', 'Under active study');
INSERT INTO cultural_heritage_site (site_id, site_name, country, region, designation_date, heritage_type, governing_body, area_hectares, visitor_capacity, annual_visitors, conservation_status, primary_threats, restoration_phase, last_restoration_date, responsible_agency, latitude, longitude, altitude_m, access_restrictions, public_outreach_program, notes) VALUES (3, 'HistoricBridge', 'CountryC', 'RegionZ', '1988-11-05', 'Engineering', 'InfrastructureAgency', 3.0, 2000, 50000, 'Excellent', 'Traffic', 'Completed', '2021-07-22', 'TransportDept', 60.1122, 10.3344, 75, 'LimitedHeavyVehicles', 'CommunityEvents', 'Featured in local festivals');

-- Agricultural Pesticide Application
CREATE TABLE agricultural_pesticide_application (
    application_id INTEGER PRIMARY KEY,
    farm_id INTEGER NOT NULL,
    field_id INTEGER NOT NULL,
    crop_type TEXT NOT NULL,
    pesticide_name TEXT NOT NULL,
    active_ingredient TEXT NOT NULL,
    application_date DATE NOT NULL,
    dosage_kg_per_hectare REAL NOT NULL,
    method TEXT NOT NULL,
    equipment_id INTEGER NOT NULL,
    operator_id INTEGER NOT NULL,
    weather_condition TEXT NOT NULL,
    wind_speed_kmh REAL NOT NULL,
    temperature_c REAL NOT NULL,
    humidity_percent REAL NOT NULL,
    pre_harvest_interval_days INTEGER NOT NULL,
    residue_limit_ppm REAL NOT NULL,
    compliance_status TEXT NOT NULL,
    notes TEXT,
    gps_latitude REAL NOT NULL,
    gps_longitude REAL NOT NULL,
    field_area_hectares REAL NOT NULL
);
INSERT INTO agricultural_pesticide_application (application_id, farm_id, field_id, crop_type, pesticide_name, active_ingredient, application_date, dosage_kg_per_hectare, method, equipment_id, operator_id, weather_condition, wind_speed_kmh, temperature_c, humidity_percent, pre_harvest_interval_days, residue_limit_ppm, compliance_status, notes, gps_latitude, gps_longitude, field_area_hectares) VALUES (1, 2001, 301, 'Wheat', 'HerbX', 'Glyphosate', '2023-04-12', 1.5, 'Spray', 4001, 8001, 'Clear', 5.2, 22.0, 40.0, 30, 0.1, 'Compliant', 'Standard application', 35.6895, -78.1234, 12.0);
INSERT INTO agricultural_pesticide_application (application_id, farm_id, field_id, crop_type, pesticide_name, active_ingredient, application_date, dosage_kg_per_hectare, method, equipment_id, operator_id, weather_condition, wind_speed_kmh, temperature_c, humidity_percent, pre_harvest_interval_days, residue_limit_ppm, compliance_status, notes, gps_latitude, gps_longitude, field_area_hectares) VALUES (2, 2002, 302, 'Corn', 'InsectY', 'Imidacloprid', '2023-05-05', 0.8, 'Aerial', 4002, 8002, 'PartlyCloudy', 12.5, 25.0, 55.0, 21, 0.05, 'Pending', 'Delay due to weather', 36.7783, -119.4179, 20.5);
INSERT INTO agricultural_pesticide_application (application_id, farm_id, field_id, crop_type, pesticide_name, active_ingredient, application_date, dosage_kg_per_hectare, method, equipment_id, operator_id, weather_condition, wind_speed_kmh, temperature_c, humidity_percent, pre_harvest_interval_days, residue_limit_ppm, compliance_status, notes, gps_latitude, gps_longitude, field_area_hectares) VALUES (3, 2003, 303, 'Soy', 'FungZ', 'Mancozeb', '2023-06-18', 2.0, 'Ground', 4003, 8003, 'Rain', 3.0, 19.0, 70.0, 45, 0.2, 'Compliant', 'Post-rain application', 40.7128, -74.0060, 15.3);

-- Renewable Energy Certificate Log
CREATE TABLE renewable_energy_certificate_log (
    certificate_id INTEGER PRIMARY KEY,
    project_id INTEGER NOT NULL,
    certificate_number TEXT NOT NULL,
    issue_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    energy_mwh REAL NOT NULL,
    certificate_type TEXT NOT NULL,
    issuer TEXT NOT NULL,
    owner TEXT NOT NULL,
    transfer_status TEXT NOT NULL,
    transfer_date DATE,
    verification_method TEXT NOT NULL,
    audit_report TEXT,
    market_price_usd REAL NOT NULL,
    renewable_source TEXT NOT NULL,
    location_country TEXT NOT NULL,
    location_region TEXT NOT NULL,
    notes TEXT,
    created_by INTEGER NOT NULL,
    last_modified DATE NOT NULL,
    status TEXT NOT NULL
);
INSERT INTO renewable_energy_certificate_log (certificate_id, project_id, certificate_number, issue_date, expiry_date, energy_mwh, certificate_type, issuer, owner, transfer_status, transfer_date, verification_method, audit_report, market_price_usd, renewable_source, location_country, location_region, notes, created_by, last_modified, status) VALUES (1, 5001, 'REC-2023-001', '2023-01-15', '2030-01-15', 5000.0, 'Generation', 'RenewCertAuthority', 'GreenEnergyCo', 'Pending', NULL, 'Online', NULL, 30.5, 'Solar', 'CountryA', 'RegionX', 'Initial issuance', 9001, '2023-01-15', 'Active');
INSERT INTO renewable_energy_certificate_log (certificate_id, project_id, certificate_number, issue_date, expiry_date, energy_mwh, certificate_type, issuer, owner, transfer_status, transfer_date, verification_method, audit_report, market_price_usd, renewable_source, location_country, location_region, notes, created_by, last_modified, status) VALUES (2, 5002, 'REC-2023-002', '2023-02-20', '2032-02-20', 7500.0, 'Generation', 'RenewCertAuthority', 'EcoPowerLtd', 'Completed', '2023-03-01', 'SiteVisit', 'Audit2023-03', 32.0, 'Wind', 'CountryB', 'RegionY', 'Transfer completed', 9002, '2023-03-01', 'Active');
INSERT INTO renewable_energy_certificate_log (certificate_id, project_id, certificate_number, issue_date, expiry_date, energy_mwh, certificate_type, issuer, owner, transfer_status, transfer_date, verification_method, audit_report, market_price_usd, renewable_source, location_country, location_region, notes, created_by, last_modified, status) VALUES (3, 5003, 'REC-2023-003', '2023-04-10', '2035-04-10', 3000.0, 'Generation', 'RenewCertAuthority', 'SolarFuture', 'Pending', NULL, 'Remote', NULL, 28.7, 'Solar', 'CountryC', 'RegionZ', 'Awaiting transfer', 9003, '2023-04-10', 'Pending');

-- Digital Identity Verification Log
CREATE TABLE digital_identity_verification_log (
    verification_id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    verification_method TEXT NOT NULL,
    provider TEXT NOT NULL,
    request_timestamp DATE NOT NULL,
    response_timestamp DATE NOT NULL,
    verification_status TEXT NOT NULL,
    attempt_number INTEGER NOT NULL,
    ip_address TEXT NOT NULL,
    device_id TEXT NOT NULL,
    device_type TEXT NOT NULL,
    os_version TEXT NOT NULL,
    app_version TEXT NOT NULL,
    location_latitude REAL NOT NULL,
    location_longitude REAL NOT NULL,
    risk_score REAL NOT NULL,
    notes TEXT,
    analyst_id INTEGER NOT NULL,
    resolution TEXT NOT NULL,
    feedback TEXT,
    is_successful INTEGER NOT NULL
);
INSERT INTO digital_identity_verification_log (verification_id, user_id, verification_method, provider, request_timestamp, response_timestamp, verification_status, attempt_number, ip_address, device_id, device_type, os_version, app_version, location_latitude, location_longitude, risk_score, notes, analyst_id, resolution, feedback, is_successful) VALUES (1, 10001, 'DocumentScan', 'IDVerifyCorp', '2023-07-01', '2023-07-01', 'Approved', 1, '192.168.1.10', 'DEV12345', 'Smartphone', 'iOS14', '1.2.0', 40.7128, -74.0060, 12.5, 'First attempt', 501, 'Auto', 'None', 1);
INSERT INTO digital_identity_verification_log (verification_id, user_id, verification_method, provider, request_timestamp, response_timestamp, verification_status, attempt_number, ip_address, device_id, device_type, os_version, app_version, location_latitude, location_longitude, risk_score, notes, analyst_id, resolution, feedback, is_successful) VALUES (2, 10002, 'Biometric', 'SecureID', '2023-07-02', '2023-07-02', 'Rejected', 2, '10.0.0.5', 'DEV67890', 'Tablet', 'Android11', '3.4.1', 34.0522, -118.2437, 78.9, 'Face mismatch', 502, 'ManualReview', 'User appealed', 0);
INSERT INTO digital_identity_verification_log (verification_id, user_id, verification_method, provider, request_timestamp, response_timestamp, verification_status, attempt_number, ip_address, device_id, device_type, os_version, app_version, location_latitude, location_longitude, risk_score, notes, analyst_id, resolution, feedback, is_successful) VALUES (3, 10003, 'OTP', 'AuthPlus', '2023-07-03', '2023-07-03', 'Approved', 1, '172.16.0.2', 'DEV54321', 'Desktop', 'Windows10', '5.6.0', 51.5074, -0.1278, 5.2, 'Verified via SMS', 503, 'Auto', 'User satisfied', 1);

-- AI Model Deployment
CREATE TABLE ai_model_deployment (
    deployment_id INTEGER PRIMARY KEY,
    model_name TEXT NOT NULL,
    version TEXT NOT NULL,
    environment TEXT NOT NULL,
    deployment_date DATE NOT NULL,
    deployed_by INTEGER NOT NULL,
    runtime TEXT NOT NULL,
    cpu_cores INTEGER NOT NULL,
    gpu_count INTEGER NOT NULL,
    memory_gb REAL NOT NULL,
    endpoint_url TEXT NOT NULL,
    request_rate_rps REAL NOT NULL,
    error_rate_percent REAL NOT NULL,
    latency_ms REAL NOT NULL,
    scaling_policy TEXT NOT NULL,
    monitoring_enabled TEXT NOT NULL,
    alert_threshold REAL NOT NULL,
    compliance_status TEXT NOT NULL,
    notes TEXT,
    last_updated DATE NOT NULL,
    status TEXT NOT NULL
);
INSERT INTO ai_model_deployment (deployment_id, model_name, version, environment, deployment_date, deployed_by, runtime, cpu_cores, gpu_count, memory_gb, endpoint_url, request_rate_rps, error_rate_percent, latency_ms, scaling_policy, monitoring_enabled, alert_threshold, compliance_status, notes, last_updated, status) VALUES (1, 'FraudDetect', 'v1.0', 'Production', '2023-05-01', 7001, 'Python3.9', 8, 2, 32.0, 'https://api.bank.com/fraud', 150.0, 0.2, 45.5, 'AutoScale', 'Yes', 0.5, 'Compliant', 'Initial rollout', '2023-05-01', 'Active');
INSERT INTO ai_model_deployment (deployment_id, model_name, version, environment, deployment_date, deployed_by, runtime, cpu_cores, gpu_count, memory_gb, endpoint_url, request_rate_rps, error_rate_percent, latency_ms, scaling_policy, monitoring_enabled, alert_threshold, compliance_status, notes, last_updated, status) VALUES (2, 'CreditScore', 'v2.3', 'Staging', '2023-06-10', 7002, 'Java11', 4, 1, 16.0, 'https://stg.api.bank.com/creditscore', 80.0, 0.1, 30.2, 'ManualScale', 'Yes', 0.3, 'Review', 'Testing new features', '2023-06-15', 'Testing');
INSERT INTO ai_model_deployment (deployment_id, model_name, version, environment, deployment_date, deployed_by, runtime, cpu_cores, gpu_count, memory_gb, endpoint_url, request_rate_rps, error_rate_percent, latency_ms, scaling_policy, monitoring_enabled, alert_threshold, compliance_status, notes, last_updated, status) VALUES (3, 'RiskPredict', 'v0.9beta', 'Development', '2023-07-20', 7003, 'Node14', 2, 0, 8.0, 'http://dev.api.bank.com/risk', 20.0, 0.0, 25.0, 'NoScale', 'No', 0.0, 'NonCompliant', 'Beta testing', '2023-07-25', 'Inactive');

-- Cloud Resource Usage
CREATE TABLE cloud_resource_usage (
    usage_id INTEGER PRIMARY KEY,
    resource_id TEXT NOT NULL,
    resource_type TEXT NOT NULL,
    account_id INTEGER NOT NULL,
    region TEXT NOT NULL,
    start_time DATE NOT NULL,
    end_time DATE NOT NULL,
    cpu_hours REAL NOT NULL,
    memory_gb_hours REAL NOT NULL,
    storage_gb_hours REAL NOT NULL,
    network_gb REAL NOT NULL,
    cost_usd REAL NOT NULL,
    billing_period TEXT NOT NULL,
    tag_project TEXT NOT NULL,
    tag_environment TEXT NOT NULL,
    owner_id INTEGER NOT NULL,
    last_modified DATE NOT NULL,
    utilization_percent REAL NOT NULL,
    anomaly_flag TEXT NOT NULL,
    notes TEXT,
    provider TEXT NOT NULL
);
INSERT INTO cloud_resource_usage (usage_id, resource_id, resource_type, account_id, region, start_time, end_time, cpu_hours, memory_gb_hours, storage_gb_hours, network_gb, cost_usd, billing_period, tag_project, tag_environment, owner_id, last_modified, utilization_percent, anomaly_flag, notes, provider) VALUES (1, 'i-0a1b2c3d4e5f', 'VM', 9001, 'us-east-1', '2023-04-01', '2023-04-30', 720.0, 1440.0, 500.0, 120.5, 350.75, '2023-04', 'FinAnalytics', 'Production', 8001, '2023-04-30', 75.0, 'None', 'Standard web server', 'AWS');
INSERT INTO cloud_resource_usage (usage_id, resource_id, resource_type, account_id, region, start_time, end_time, cpu_hours, memory_gb_hours, storage_gb_hours, network_gb, cost_usd, billing_period, tag_project, tag_environment, owner_id, last_modified, utilization_percent, anomaly_flag, notes, provider) VALUES (2, 'db-01x23y', 'Database', 9002, 'eu-west-2', '2023-04-01', '2023-04-30', 600.0, 1800.0, 800.0, 250.0, 420.60, '2023-04', 'RiskEngine', 'Staging', 8002, '2023-04-30', 65.0, 'Spike', 'Increased query load', 'Azure');
INSERT INTO cloud_resource_usage (usage_id, resource_id, resource_type, account_id, region, start_time, end_time, cpu_hours, memory_gb_hours, storage_gb_hours, network_gb, cost_usd, billing_period, tag_project, tag_environment, owner_id, last_modified, utilization_percent, anomaly_flag, notes, provider) VALUES (3, 'storage-abc123', 'ObjectStorage', 9003, 'ap-southeast-1', '2023-04-01', '2023-04-30', 0.0, 0.0, 2000.0, 500.0, 150.20, '2023-04', 'DataLake', 'Development', 8003, '2023-04-30', 20.0, 'None', 'Archival data', 'GCP');