-- Digital identity verification records
CREATE TABLE digital_identity_verification (
    verification_id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    id_type TEXT NOT NULL,
    id_number TEXT NOT NULL,
    issue_country TEXT NOT NULL,
    issue_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    verification_method TEXT NOT NULL,
    verification_status TEXT NOT NULL,
    verification_timestamp TIMESTAMP NOT NULL,
    verifier_agent TEXT NOT NULL,
    source_system TEXT NOT NULL,
    confidence_score REAL NOT NULL,
    document_image_path TEXT NOT NULL,
    biometric_hash TEXT NOT NULL,
    audit_log_id INTEGER NOT NULL,
    retry_count INTEGER NOT NULL,
    notes TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    is_active INTEGER NOT NULL
);

INSERT INTO digital_identity_verification VALUES (1, 101, 'passport', 'P1234567', 'US', '2020-01-15', '2030-01-14', 'online', 'approved', '2023-06-01 10:23:45', 'agentA', 'systemX', 0.98, '/images/p1234567.png', 'hashabc123', 5001, 0, 'first verification', '2023-06-01 10:23:45', '2023-06-01 10:23:45', 1);
INSERT INTO digital_identity_verification VALUES (2, 102, 'driver_license', 'D9876543', 'CA', '2019-05-20', '2029-05-19', 'in_person', 'pending', '2023-06-02 11:00:00', 'agentB', 'systemY', 0.85, '/images/d9876543.png', 'hashdef456', 5002, 1, 'awaiting documents', '2023-06-02 11:00:00', '2023-06-02 12:15:30', 1);
INSERT INTO digital_identity_verification VALUES (3, 103, 'national_id', 'N555777', 'UK', '2021-03-10', '2031-03-09', 'mobile_app', 'rejected', '2023-06-03 09:45:20', 'agentC', 'systemZ', 0.60, '/images/n555777.png', 'hashghi789', 5003, 2, 'photo mismatch', '2023-06-03 09:45:20', '2023-06-03 10:00:00', 0);

-- Social media engagement metrics
CREATE TABLE social_media_engagement (
    metric_id INTEGER PRIMARY KEY,
    platform TEXT NOT NULL,
    campaign_id INTEGER NOT NULL,
    post_id TEXT NOT NULL,
    post_date DATE NOT NULL,
    impressions INTEGER NOT NULL,
    clicks INTEGER NOT NULL,
    shares INTEGER NOT NULL,
    comments INTEGER NOT NULL,
    likes INTEGER NOT NULL,
    video_views INTEGER NOT NULL,
    average_view_duration REAL NOT NULL,
    reach INTEGER NOT NULL,
    engagement_rate REAL NOT NULL,
    ctr REAL NOT NULL,
    cpm REAL NOT NULL,
    cpc REAL NOT NULL,
    audience_segment TEXT NOT NULL,
    geography TEXT NOT NULL,
    device_type TEXT NOT NULL,
    created_timestamp TIMESTAMP NOT NULL,
    updated_timestamp TIMESTAMP NOT NULL,
    is_archived INTEGER NOT NULL
);

INSERT INTO social_media_engagement VALUES (1, 'facebook', 2001, 'fbpost123', '2023-05-20', 15000, 350, 45, 12, 800, 0, 0.0, 14500, 0.028, 0.023, 5.00, 0.15, 'young_adults', 'US', 'mobile', '2023-05-21 08:00:00', '2023-05-22 09:00:00', 0);
INSERT INTO social_media_engagement VALUES (2, 'twitter', 2002, 'twpost456', '2023-05-22', 12000, 400, 30, 20, 600, 0, 0.0, 11000, 0.033, 0.030, 4.50, 0.12, 'mid_age', 'CA', 'desktop', '2023-05-23 10:15:00', '2023-05-24 11:20:00', 0);
INSERT INTO social_media_engagement VALUES (3, 'instagram', 2003, 'igpost789', '2023-05-25', 20000, 500, 80, 25, 1500, 2500, 45.6, 19000, 0.038, 0.025, 6.20, 0.10, 'teenagers', 'UK', 'mobile', '2023-05-26 14:30:00', '2023-05-27 15:45:00', 0);

-- Cloud resource inventory
CREATE TABLE cloud_resource_inventory (
    resource_id INTEGER PRIMARY KEY,
    provider TEXT NOT NULL,
    service_type TEXT NOT NULL,
    region TEXT NOT NULL,
    account_id TEXT NOT NULL,
    resource_name TEXT NOT NULL,
    sku TEXT NOT NULL,
    launch_date DATE NOT NULL,
    termination_date DATE,
    status TEXT NOT NULL,
    cpu_cores INTEGER,
    memory_gb REAL,
    storage_gb REAL,
    network_bandwidth_mbps REAL,
    os_image TEXT,
    tags TEXT,
    cost_center TEXT,
    owner_user_id INTEGER,
    last_used_timestamp TIMESTAMP,
    compliance_status TEXT,
    backup_enabled INTEGER,
    monitoring_enabled INTEGER,
    encryption_at_rest INTEGER,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    is_deleted INTEGER NOT NULL
);

INSERT INTO cloud_resource_inventory VALUES (1, 'aws', 'ec2', 'us-east-1', 'acc-001', 'web-server-01', 't3.medium', '2022-01-10', NULL, 'running', 2, 4.0, 50.0, 1000.0, 'ubuntu20.04', 'env=prod;role=web', 'CC100', 501, '2023-05-30 12:00:00', 'compliant', 1, 1, 1, '2022-01-10 08:00:00', '2023-05-31 09:00:00', 0);
INSERT INTO cloud_resource_inventory VALUES (2, 'azure', 'sql_database', 'europe-west', 'acc-002', 'sales-db', 'S3', '2021-07-15', NULL, 'online', NULL, NULL, NULL, NULL, 'SQL2022', 'env=prod;dept=sales', 'CC200', 502, '2023-05-28 16:30:00', 'compliant', 0, 1, 1, '2021-07-15 10:15:00', '2023-05-29 11:45:00', 0);
INSERT INTO cloud_resource_inventory VALUES (3, 'gcp', 'bigquery', 'asia-east1', 'acc-003', 'analytics_dw', 'B2', '2023-02-01', NULL, 'active', NULL, NULL, NULL, NULL, 'Standard', 'env=dev;team=analytics', 'CC300', 503, '2023-05-27 09:20:00', 'pending', 0, 0, 0, '2023-02-01 07:45:00', '2023-05-28 08:55:00', 0);

-- Biometric access log
CREATE TABLE biometric_access_log (
    log_id INTEGER PRIMARY KEY,
    facility_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    access_point TEXT NOT NULL,
    access_type TEXT NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    biometric_type TEXT NOT NULL,
    biometric_hash TEXT NOT NULL,
    access_granted INTEGER NOT NULL,
    decision_reason TEXT,
    device_id TEXT NOT NULL,
    firmware_version TEXT,
    ip_address TEXT,
    latitude REAL,
    longitude REAL,
    alert_flag INTEGER,
    workflow_id INTEGER,
    session_id TEXT,
    verification_score REAL,
    notes TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    is_archived INTEGER NOT NULL,
    compliance_tag TEXT,
    retention_policy TEXT
);

INSERT INTO biometric_access_log VALUES (1, 10, 1001, 'MainEntrance', 'entry', '2023-06-01 07:15:00', 'fingerprint', 'hashfp001', 1, 'match', 'devA1', 'v1.2.3', '192.168.1.10', 40.7128, -74.0060, 0, 3001, 'sess001', 0.99, 'first shift entry', '2023-06-01 07:15:10', '2023-06-01 07:16:00', 0, 'high_security', '7_years');
INSERT INTO biometric_access_log VALUES (2, 10, 1002, 'SideDoor', 'exit', '2023-06-01 12:45:30', 'iris', 'hashir002', 1, 'match', 'devB2', 'v1.3.0', '192.168.1.12', 40.7130, -74.0055, 0, 3002, 'sess002', 0.95, 'lunch break exit', '2023-06-01 12:45:40', '2023-06-01 12:46:00', 0, 'high_security', '7_years');
INSERT INTO biometric_access_log VALUES (3, 11, 1003, 'ServerRoom', 'entry', '2023-06-01 22:10:05', 'fingerprint', 'hashfp003', 0, 'no_match', 'devC3', 'v1.2.5', '192.168.2.20', 34.0522, -118.2437, 1, 3003, 'sess003', 0.45, 'unauthorized attempt', '2023-06-01 22:10:15', '2023-06-01 22:11:00', 0, 'critical', '7_years');

-- Grant funding allocation
CREATE TABLE grant_funding_allocation (
    allocation_id INTEGER PRIMARY KEY,
    grant_id INTEGER NOT NULL,
    fiscal_year INTEGER NOT NULL,
    recipient_org TEXT NOT NULL,
    program_area TEXT NOT NULL,
    allocated_amount REAL NOT NULL,
    disbursed_amount REAL,
    balance_amount REAL,
    currency TEXT NOT NULL,
    approval_date DATE NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    funding_source TEXT NOT NULL,
    cost_center TEXT,
    project_manager_id INTEGER,
    reporting_frequency TEXT,
    report_due_date DATE,
    audit_status TEXT,
    notes TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    is_active INTEGER NOT NULL,
    compliance_flag INTEGER,
    risk_level TEXT,
    external_review_needed INTEGER
);

INSERT INTO grant_funding_allocation VALUES (1, 5001, 2023, 'GreenFutureOrg', 'Renewable Energy', 2500000.00, 1500000.00, 1000000.00, 'USD', '2023-01-15', '2023-02-01', '2025-01-31', 'Federal', 'CC400', 701, 'quarterly', '2023-06-30', 'pending', 'Initial allocation', '2023-02-01 09:00:00', '2023-05-01 10:30:00', 1, 0, 'medium', 0);
INSERT INTO grant_funding_allocation VALUES (2, 5002, 2022, 'HealthAidInc', 'Public Health', 1200000.00, 1200000.00, 0.00, 'EUR', '2022-03-10', '2022-04-01', '2024-03-31', 'EU', 'CC401', 702, 'annual', '2023-12-31', 'approved', 'Fully disbursed', '2022-04-01 08:30:00', '2023-04-01 09:45:00', 0, 1, 'low', 0);
INSERT INTO grant_funding_allocation VALUES (3, 5003, 2024, 'EduTechFoundation', 'Education', 500000.00, 0.00, 500000.00, 'GBP', '2024-05-20', '2024-06-01', '2026-05-31', 'Private', 'CC402', 703, 'semiannual', '2024-11-30', 'pending', 'Awaiting first disbursement', '2024-06-01 10:15:00', '2024-06-01 10:15:00', 1, 0, 'high', 1);

-- Public art installation registry
CREATE TABLE public_art_installation (
    installation_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    artist_name TEXT NOT NULL,
    installation_type TEXT NOT NULL,
    material TEXT NOT NULL,
    height_cm INTEGER,
    width_cm INTEGER,
    depth_cm INTEGER,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    city TEXT NOT NULL,
    district TEXT,
    installation_date DATE NOT NULL,
    expected_lifespan_years INTEGER,
    maintenance_cycle_months INTEGER,
    sponsor TEXT,
    funding_amount REAL,
    currency TEXT,
    public_access INTEGER,
    lighting_available INTEGER,
    interactive_feature INTEGER,
    gps_enabled INTEGER,
    metadata_url TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    is_active INTEGER NOT NULL,
    conservation_status TEXT,
    visitor_count_yearly INTEGER
);

INSERT INTO public_art_installation VALUES (1, 'River Flow', 'Alice Monroe', 'sculpture', 'bronze', 250, 120, 80, 40.7128, -74.0060, 'New York', 'Manhattan', '2022-09-15', 50, 12, 'City Council', 300000.00, 'USD', 1, 1, 0, 1, 'http://artcity.gov/riverflow', '2022-09-20 09:00:00', '2023-01-10 10:00:00', 1, 'good', 15000);
INSERT INTO public_art_installation VALUES (2, 'Light Waves', 'Jin Park', 'installation', 'LED panels', NULL, NULL, NULL, 34.0522, -118.2437, 'Los Angeles', 'Downtown', '2023-03-01', 20, 6, 'TechCorp', 150000.00, 'USD', 1, 1, 1, 1, 'http://laart.org/lightwaves', '2023-03-05 08:30:00', '2023-07-15 11:20:00', 1, 'excellent', 25000);
INSERT INTO public_art_installation VALUES (3, 'Harvest Tiles', 'Miguel Sanchez', 'mural', 'ceramic', NULL, NULL, NULL, 41.8781, -87.6298, 'Chicago', 'South Loop', '2021-10-10', 30, 24, 'Community Fund', 80000.00, 'USD', 1, 0, 0, 0, 'http://chicagoart.net/harvesttiles', '2021-10-12 12:00:00', '2022-02-20 14:45:00', 1, 'fair', 12000);

-- Water distribution network components
CREATE TABLE water_distribution_network (
    component_id INTEGER PRIMARY KEY,
    component_type TEXT NOT NULL,
    material TEXT NOT NULL,
    diameter_mm INTEGER,
    length_m REAL,
    installation_date DATE NOT NULL,
    last_inspection_date DATE,
    status TEXT NOT NULL,
    pressure_bar REAL,
    flow_rate_lps REAL,
    region TEXT NOT NULL,
    zone TEXT,
    asset_tag TEXT,
    maintenance_cycle_days INTEGER,
    next_maintenance_date DATE,
    responsible_entity TEXT,
    cost_center TEXT,
    gps_latitude REAL,
    gps_longitude REAL,
    elevation_m REAL,
    corrosion_rate_mm_per_year REAL,
    leak_detected INTEGER,
    notes TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    is_decommissioned INTEGER NOT NULL,
    compliance_status TEXT,
    replacement_year INTEGER
);

INSERT INTO water_distribution_network VALUES (1, 'pipe', 'ductile_iron', 300, 1500.5, '1995-04-12', '2023-01-10', 'operational', 5.2, 120.0, 'NorthRegion', 'ZoneA', 'WDN-001', 365, '2024-01-10', 'UtilityCo', 'CC500', 45.1234, -73.5678, 250.0, 0.05, 0, 'no issues', '1995-04-12 08:00:00', '2023-01-15 09:30:00', 0, 'compliant', 2025);
INSERT INTO water_distribution_network VALUES (2, 'valve', 'stainless_steel', 150, 0.0, '2005-06-20', '2022-11-05', 'operational', 0.0, 0.0, 'SouthRegion', 'ZoneB', 'WDN-002', 180, '2023-11-05', 'UtilityCo', 'CC501', 46.5678, -74.1234, 260.0, 0.00, 0, 'routine check', '2005-06-20 09:15:00', '2022-11-10 10:20:00', 0, 'compliant', 2028);
INSERT INTO water_distribution_network VALUES (3, 'pump_station', 'concrete', NULL, NULL, '2010-09-01', '2023-03-12', 'maintenance_required', 0.0, 0.0, 'EastRegion', 'ZoneC', 'WDN-003', 90, '2023-12-12', 'UtilityCo', 'CC502', 47.8901, -75.2345, 280.0, 0.00, 1, 'leak detected in adjacent pipe', '2010-09-01 07:45:00', '2023-03-15 08:55:00', 0, 'non_compliant', 2026);

-- Satellite telemetry records
CREATE TABLE satellite_telemetry (
    telemetry_id INTEGER PRIMARY KEY,
    satellite_id TEXT NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    orbit_type TEXT NOT NULL,
    altitude_km REAL NOT NULL,
    inclination_deg REAL NOT NULL,
    eccentricity REAL,
    apogee_km REAL,
    perigee_km REAL,
    velocity_km_s REAL,
    power_voltage_v REAL,
    power_current_a REAL,
    temperature_c REAL,
    radiation_level_sieverts REAL,
    payload_status TEXT,
    comms_status TEXT,
    memory_used_mb INTEGER,
    memory_free_mb INTEGER,
    software_version TEXT,
    ground_station TEXT,
    downlink_rate_mbps REAL,
    uplink_rate_mbps REAL,
    anomaly_flag INTEGER,
    anomaly_description TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    is_active INTEGER NOT NULL
);

INSERT INTO satellite_telemetry VALUES (1, 'SAT-Alpha', '2023-06-01 12:00:00', 'LEO', 550.0, 97.5, 0.001, 560.0, 540.0, 7.8, 28.5, 2.1, -15.0, 0.00002, 'operational', 'stable', 2048, 1024, 'v3.2.1', 'GS-01', 150.0, 20.0, 0, NULL, '2023-06-01 12:10:00', '2023-06-01 12:20:00', 1);
INSERT INTO satellite_telemetry VALUES (2, 'SAT-Beta', '2023-06-01 12:05:00', 'GEO', 35786.0, 0.0, 0.0001, 35786.1, 35785.9, 3.1, 30.0, 1.8, 22.0, 0.00001, 'operational', 'stable', 4096, 2048, 'v4.0.0', 'GS-02', 200.0, 25.0, 0, NULL, '2023-06-01 12:15:00', '2023-06-01 12:25:00', 1);
INSERT INTO satellite_telemetry VALUES (3, 'SAT-Gamma', '2023-06-01 12:10:00', 'MEO', 20000.0, 55.0, 0.002, 20200.0, 19800.0, 5.5, 27.0, 2.5, -5.0, 0.00003, 'degraded', 'intermittent', 1024, 512, 'v2.9.8', 'GS-03', 120.0, 15.0, 1, 'communication drop', '2023-06-01 12:20:00', '2023-06-01 12:30:00', 1);

-- Enterprise risk dashboard metrics
CREATE TABLE enterprise_risk_dashboard (
    metric_id INTEGER PRIMARY KEY,
    risk_category TEXT NOT NULL,
    metric_name TEXT NOT NULL,
    measurement_unit TEXT,
    current_value REAL,
    target_value REAL,
    threshold_low REAL,
    threshold_high REAL,
    assessment_date DATE NOT NULL,
    responsible_department TEXT,
    risk_owner_id INTEGER,
    mitigation_action TEXT,
    status TEXT,
    priority_level TEXT,
    comments TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    is_active INTEGER NOT NULL,
    trend_direction TEXT,
    last_updated_by TEXT,
    data_source TEXT,
    frequency TEXT,
    confidence_score REAL,
    escalation_required INTEGER,
    escalation_level TEXT
);

INSERT INTO enterprise_risk_dashboard VALUES (1, 'operational', 'system_downtime_minutes', 'minutes', 45.0, 30.0, 0.0, 60.0, '2023-05-31', 'IT', 801, 'increase monitoring', 'at_risk', 'high', 'downtime spike after patch', '2023-06-01 08:00:00', '2023-06-01 09:00:00', 1, 'up', 'alice', 'monitoring_system', 'monthly', 0.85, 1, 'level_2');
INSERT INTO enterprise_risk_dashboard VALUES (2, 'financial', 'credit_exposure', 'USD', 1250000.00, 1000000.00, 800000.00, 1500000.00, '2023-05-31', 'Finance', 802, 'hedge positions', 'warning', 'medium', 'exceeds target due to market shift', '2023-06-01 08:15:00', '2023-06-01 09:30:00', 1, 'up', 'bob', 'financial_system', 'weekly', 0.78, 1, 'level_3');
INSERT INTO enterprise_risk_dashboard VALUES (3, 'compliance', 'regulatory_fine_pending', 'count', 2.0, 0.0, 0.0, 1.0, '2023-05-31', 'Legal', 803, 'settle fines', 'critical', 'high', 'two pending fines from Q2', '2023-06-01 08:30:00', '2023-06-01 09:45:00', 1, 'stable', 'carol', 'legal_system', 'quarterly', 0.92, 1, 'level_1');

-- Urban noise monitoring stations
CREATE TABLE urban_noise_monitoring (
    station_id INTEGER PRIMARY KEY,
    station_name TEXT NOT NULL,
    location_description TEXT,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    installation_date DATE NOT NULL,
    sensor_type TEXT NOT NULL,
    measurement_interval_seconds INTEGER,
    noise_level_db_a REAL,
    noise_level_db_c REAL,
    max_noise_db REAL,
    min_noise_db REAL,
    average_noise_db REAL,
    peak_hour_start TIME,
    peak_hour_end TIME,
    maintenance_due_date DATE,
    status TEXT NOT NULL,
    firmware_version TEXT,
    power_source TEXT,
    network_connectivity TEXT,
    data_retention_months INTEGER,
    alerts_triggered INTEGER,
    last_alert_timestamp TIMESTAMP,
    notes TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    is_decommissioned INTEGER NOT NULL,
    regulatory_compliance TEXT,
    city_zone TEXT
);

INSERT INTO urban_noise_monitoring VALUES (1, 'Central Plaza', 'Near main square', 40.7128, -74.0060, '2022-03-01', 'microphone_array', 60, 68.5, 70.2, 85.0, 45.0, 62.3, '18:00:00', '20:00:00', '2023-12-31', 'operational', 'v1.0', 'solar', 'wifi', 24, 3, '2023-05-30 19:45:00', 'routine check', '2022-03-01 08:00:00', '2023-06-01 09:00:00', 0, 'compliant', 'downtown');
INSERT INTO urban_noise_monitoring VALUES (2, 'Riverfront', 'Along river walk', 34.0522, -118.2437, '2021-07-15', 'acoustic_sensor', 120, 65.0, 66.5, 80.0, 40.0, 58.7, '07:00:00', '09:00:00', '2023-11-30', 'operational', 'v1.2', 'grid', 'cellular', 36, 1, '2023-05-15 08:30:00', 'low traffic area', '2021-07-15 09:15:00', '2023-05-20 10:20:00', 0, 'compliant', 'midtown');
INSERT INTO urban_noise_monitoring VALUES (3, 'Industrial Zone', 'Near factory complex', 41.8781, -87.6298, '2020-01-10', 'high_gain_microphone', 30, 75.3, 78.0, 95.0, 55.0, 80.1, '12:00:00', '14:00:00', '2024-06-30', 'maintenance_required', 'v2.0', 'grid', 'ethernet', 12, 5, '2023-05-28 13:10:00', 'high noise area, schedule maintenance', '2020-01-10 07:45:00', '2023-05-28 14:00:00', 0, 'non_compliant', 'industrial').