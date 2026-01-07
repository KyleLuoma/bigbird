-- Digital Identity Document
CREATE TABLE digital_identity_document (
    doc_id               INTEGER      PRIMARY KEY,
    client_id            INTEGER      NOT NULL,
    doc_type             TEXT         NOT NULL,
    doc_number           TEXT         NOT NULL,
    issue_date           DATE         NOT NULL,
    expiry_date          DATE         NOT NULL,
    issuing_country      TEXT         NOT NULL,
    verification_status  TEXT         NOT NULL,
    scan_path            TEXT         NOT NULL,
    checksum             TEXT         NOT NULL,
    is_primary           INTEGER      NOT NULL,
    notes                TEXT,
    created_at           DATE         NOT NULL,
    updated_at           DATE         NOT NULL,
    document_image_url   TEXT,
    gender               TEXT,
    birth_date           DATE,
    nationality          TEXT,
    issuing_state        TEXT,
    document_version     TEXT
);

INSERT INTO digital_identity_document (doc_id, client_id, doc_type, doc_number, issue_date, expiry_date, issuing_country, verification_status, scan_path, checksum, is_primary, notes, created_at, updated_at, document_image_url, gender, birth_date, nationality, issuing_state, document_version)
VALUES (1, 101, 'Passport', 'P1234567', '2020-01-15', '2030-01-15', 'US', 'Verified', '/scans/passport1.pdf', 'abc123', 1, 'Primary travel document', '2021-06-01', '2021-06-01', 'http://example.com/images/passport1.jpg', 'Male', '1990-04-20', 'American', 'CA', 'v1');

INSERT INTO digital_identity_document (doc_id, client_id, doc_type, doc_number, issue_date, expiry_date, issuing_country, verification_status, scan_path, checksum, is_primary, notes, created_at, updated_at, document_image_url, gender, birth_date, nationality, issuing_state, document_version)
VALUES (2, 102, 'DriverLicense', 'D9876543', '2018-07-10', '2028-07-10', 'US', 'Pending', '/scans/dl2.pdf', 'def456', 0, 'Secondary ID', '2021-07-12', '2021-07-12', 'http://example.com/images/dl2.jpg', 'Female', '1985-11-05', 'American', 'NY', 'v2');

INSERT INTO digital_identity_document (doc_id, client_id, doc_type, doc_number, issue_date, expiry_date, issuing_country, verification_status, scan_path, checksum, is_primary, notes, created_at, updated_at, document_image_url, gender, birth_date, nationality, issuing_state, document_version)
VALUES (3, 103, 'NationalID', 'N5557779', '2015-03-20', '2025-03-20', 'US', 'Verified', '/scans/nid3.pdf', 'ghi789', 1, 'National identification', '2021-08-05', '2021-08-05', 'http://example.com/images/nid3.jpg', 'Male', '1978-02-14', 'American', 'TX', 'v1');

-- Financial Market Newsfeed
CREATE TABLE financial_market_newsfeed (
    news_id               INTEGER      PRIMARY KEY,
    headline              TEXT         NOT NULL,
    summary               TEXT,
    source                TEXT,
    category              TEXT,
    publish_date          DATE,
    language              TEXT,
    url                   TEXT,
    relevance_score       REAL,
    is_breaking           INTEGER,
    region                TEXT,
    sector                TEXT,
    sentiment_score       REAL,
    author                TEXT,
    content_hash          TEXT,
    view_count            INTEGER,
    share_count           INTEGER,
    like_count            INTEGER,
    comment_count         INTEGER,
    attached_file_path    TEXT,
    created_at            DATE
);

INSERT INTO financial_market_newsfeed (news_id, headline, summary, source, category, publish_date, language, url, relevance_score, is_breaking, region, sector, sentiment_score, author, content_hash, view_count, share_count, like_count, comment_count, attached_file_path, created_at)
VALUES (1, 'Tech Stocks Rally', 'Major tech indexes saw gains', 'Bloomberg', 'Equities', '2023-11-01', 'EN', 'http://news.example.com/tech-rally', 0.92, 1, 'NorthAmerica', 'Technology', 0.8, 'Jane Doe', 'hash1', 15000, 300, 1200, 45, '/files/tech_rally.pdf', '2023-11-01');

INSERT INTO financial_market_newsfeed (news_id, headline, summary, source, category, publish_date, language, url, relevance_score, is_breaking, region, sector, sentiment_score, author, content_hash, view_count, share_count, like_count, comment_count, attached_file_path, created_at)
VALUES (2, 'Oil Prices Slip', 'Crude oil futures decline amid demand concerns', 'Reuters', 'Commodities', '2023-11-02', 'EN', 'http://news.example.com/oil-slip', 0.78, 0, 'Europe', 'Energy', -0.4, 'John Smith', 'hash2', 8000, 120, 540, 20, '/files/oil_slip.pdf', '2023-11-02');

INSERT INTO financial_market_newsfeed (news_id, headline, summary, source, category, publish_date, language, url, relevance_score, is_breaking, region, sector, sentiment_score, author, content_hash, view_count, share_count, like_count, comment_count, attached_file_path, created_at)
VALUES (3, 'Central Bank Signals Rate Hike', 'Policy committee hints at future tightening', 'Financial Times', 'Macro', '2023-11-03', 'EN', 'http://news.example.com/central-bank', 0.85, 0, 'Asia', 'Policy', 0.1, 'Alice Lee', 'hash3', 12000, 250, 950, 35, '/files/central_bank.pdf', '2023-11-03');

-- Employee Remote Work Log
CREATE TABLE employee_remote_worklog (
    log_id                INTEGER      PRIMARY KEY,
    employee_id           INTEGER      NOT NULL,
    work_date             DATE         NOT NULL,
    start_time            TEXT,
    end_time              TEXT,
    total_hours           REAL,
    task_description      TEXT,
    project_code          TEXT,
    location              TEXT,
    device_used           TEXT,
    network_type          TEXT,
    vpn_used              INTEGER,
    productivity_score    REAL,
    manager_approval      INTEGER,
    comments              TEXT,
    created_at            DATE,
    updated_at            DATE,
    remote_ip             TEXT,
    remote_city           TEXT,
    remote_country        TEXT,
    compliance_flag      INTEGER
);

INSERT INTO employee_remote_worklog (log_id, employee_id, work_date, start_time, end_time, total_hours, task_description, project_code, location, device_used, network_type, vpn_used, productivity_score, manager_approval, comments, created_at, updated_at, remote_ip, remote_city, remote_country, compliance_flag)
VALUES (1, 2001, '2023-10-30', '08:30', '17:00', 8.5, 'Developed API endpoints', 'PRJ001', 'HomeOffice', 'Laptop', 'WiFi', 1, 4.2, 1, 'All tasks completed', '2023-10-30', '2023-10-30', '192.168.1.10', 'Seattle', 'US', 0);

INSERT INTO employee_remote_worklog (log_id, employee_id, work_date, start_time, end_time, total_hours, task_description, project_code, location, device_used, network_type, vpn_used, productivity_score, manager_approval, comments, created_at, updated_at, remote_ip, remote_city, remote_country, compliance_flag)
VALUES (2, 2002, '2023-10-30', '09:00', '18:15', 9.25, 'UI design revisions', 'PRJ002', 'CoWorkingSpace', 'Desktop', 'Ethernet', 0, 3.8, 1, 'Reviewed feedback', '2023-10-30', '2023-10-30', '10.0.0.5', 'Austin', 'US', 0);

INSERT INTO employee_remote_worklog (log_id, employee_id, work_date, start_time, end_time, total_hours, task_description, project_code, location, device_used, network_type, vpn_used, productivity_score, manager_approval, comments, created_at, updated_at, remote_ip, remote_city, remote_country, compliance_flag)
VALUES (3, 2003, '2023-10-30', '07:45', '16:30', 8.0, 'Data analysis and reporting', 'PRJ003', 'HomeOffice', 'Tablet', 'Cellular', 1, 4.5, 1, 'Prepared daily report', '2023-10-30', '2023-10-30', '172.16.0.2', 'Boston', 'US', 1);

-- Customer NPS Score
CREATE TABLE customer_nps_score (
    nps_id                INTEGER      PRIMARY KEY,
    client_id             INTEGER      NOT NULL,
    survey_date           DATE,
    score                 INTEGER,
    promoter_reason       TEXT,
    detractor_reason      TEXT,
    follow_up_required    INTEGER,
    assigned_agent_id     INTEGER,
    contact_method        TEXT,
    notes                 TEXT,
    created_at            DATE,
    updated_at            DATE,
    survey_version        TEXT,
    country               TEXT,
    region                TEXT,
    channel               TEXT,
    response_time_minutes INTEGER,
    is_anonymous          INTEGER,
    survey_platform       TEXT,
    respondent_age        INTEGER,
    respondent_gender     TEXT
);

INSERT INTO customer_nps_score (nps_id, client_id, survey_date, score, promoter_reason, detractor_reason, follow_up_required, assigned_agent_id, contact_method, notes, created_at, updated_at, survey_version, country, region, channel, response_time_minutes, is_anonymous, survey_platform, respondent_age, respondent_gender)
VALUES (1, 101, '2023-10-20', 9, 'Excellent service', NULL, 0, 501, 'Email', NULL, '2023-10-20', '2023-10-20', 'v1', 'US', 'West', 'Online', 5, 0, 'SurveyMonkey', 35, 'Male');

INSERT INTO customer_nps_score (nps_id, client_id, survey_date, score, promoter_reason, detractor_reason, follow_up_required, assigned_agent_id, contact_method, notes, created_at, updated_at, survey_version, country, region, channel, response_time_minutes, is_anonymous, survey_platform, respondent_age, respondent_gender)
VALUES (2, 102, '2023-10-21', 4, NULL, 'Long wait times', 1, 502, 'Phone', 'Will call back', '2023-10-21', '2023-10-21', 'v1', 'US', 'Midwest', 'Phone', 12, 0, 'Qualtrics', 42, 'Female');

INSERT INTO customer_nps_score (nps_id, client_id, survey_date, score, promoter_reason, detractor_reason, follow_up_required, assigned_agent_id, contact_method, notes, created_at, updated_at, survey_version, country, region, channel, response_time_minutes, is_anonymous, survey_platform, respondent_age, respondent_gender)
VALUES (3, 103, '2023-10-22', 7, 'Good pricing', NULL, 0, 503, 'SMS', 'Neutral feedback', '2023-10-22', '2023-10-22', 'v1', 'US', 'East', 'Mobile', 3, 1, 'GoogleForms', 29, 'Male');

-- Supply Chain Inventory Snapshot
CREATE TABLE supply_chain_inventory_snapshot (
    snapshot_id               INTEGER      PRIMARY KEY,
    warehouse_id              INTEGER      NOT NULL,
    product_sku               TEXT,
    product_name              TEXT,
    quantity_on_hand         INTEGER,
    quantity_allocated        INTEGER,
    quantity_reserved         INTEGER,
    unit_cost                 REAL,
    total_value               REAL,
    last_restock_date        DATE,
    next_stockout_estimate   DATE,
    supplier_id               INTEGER,
    lead_time_days            INTEGER,
    safety_stock              INTEGER,
    reorder_point             INTEGER,
    storage_location          TEXT,
    temperature_requirements TEXT,
    humidity_requirements    TEXT,
    batch_number              TEXT,
    expiration_date           DATE,
    created_at                DATE,
    updated_at                DATE
);

INSERT INTO supply_chain_inventory_snapshot (snapshot_id, warehouse_id, product_sku, product_name, quantity_on_hand, quantity_allocated, quantity_reserved, unit_cost, total_value, last_restock_date, next_stockout_estimate, supplier_id, lead_time_days, safety_stock, reorder_point, storage_location, temperature_requirements, humidity_requirements, batch_number, expiration_date, created_at, updated_at)
VALUES (1, 10, 'SKU12345', 'Wireless Router', 250, 30, 20, 45.99, 11497.5, '2023-09-15', '2023-12-01', 2001, 7, 50, 100, 'A1-B2', 'RoomTemp', 'Low', 'BATCH001', '2025-06-30', '2023-10-01', '2023-10-01');

INSERT INTO supply_chain_inventory_snapshot (snapshot_id, warehouse_id, product_sku, product_name, quantity_on_hand, quantity_allocated, quantity_reserved, unit_cost, total_value, last_restock_date, next_stockout_estimate, supplier_id, lead_time_days, safety_stock, reorder_point, storage_location, temperature_requirements, humidity_requirements, batch_number, expiration_date, created_at, updated_at)
VALUES (2, 12, 'SKU67890', 'LED Monitor', 120, 15, 10, 129.50, 15540.0, '2023-08-20', '2023-11-10', 2002, 10, 30, 60, 'C3-D4', 'RoomTemp', 'Medium', 'BATCH045', '2024-11-15', '2023-10-01', '2023-10-01');

INSERT INTO supply_chain_inventory_snapshot (snapshot_id, warehouse_id, product_sku, product_name, quantity_on_hand, quantity_allocated, quantity_reserved, unit_cost, total_value, last_restock_date, next_stockout_estimate, supplier_id, lead_time_days, safety_stock, reorder_point, storage_location, temperature_requirements, humidity_requirements, batch_number, expiration_date, created_at, updated_at)
VALUES (3, 15, 'SKU54321', 'External Hard Drive', 400, 50, 30, 79.99, 31996.0, '2023-09-30', '2024-01-20', 2003, 5, 80, 150, 'E5-F6', 'RoomTemp', 'Low', 'BATCH078', '2026-03-01', '2023-10-01', '2023-10-01');

-- Regulatory Impact Assessment
CREATE TABLE regulatory_impact_assessment (
    assessment_id           INTEGER      PRIMARY KEY,
    regulation_id           INTEGER      NOT NULL,
    effective_date          DATE,
    jurisdiction            TEXT,
    impact_score            REAL,
    affected_business_units TEXT,
    mitigation_plan         TEXT,
    responsible_owner       TEXT,
    status                  TEXT,
    review_date             DATE,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE,
    compliance_deadline     DATE,
    risk_level              TEXT,
    cost_estimate           REAL,
    benefit_estimate        REAL,
    implementation_status   TEXT,
    external_consultant     TEXT,
    document_url            TEXT,
    approval_signature      TEXT
);

INSERT INTO regulatory_impact_assessment (assessment_id, regulation_id, effective_date, jurisdiction, impact_score, affected_business_units, mitigation_plan, responsible_owner, status, review_date, notes, created_at, updated_at, compliance_deadline, risk_level, cost_estimate, benefit_estimate, implementation_status, external_consultant, document_url, approval_signature)
VALUES (1, 301, '2024-01-01', 'EU', 8.5, 'Finance,Compliance', 'Update reporting modules', 'Alice Johnson', 'Pending', '2023-12-01', 'Initial assessment completed', '2023-10-01', '2023-10-01', '2024-06-30', 'High', 250000.0, 500000.0, 'NotStarted', 'ConsultCo', 'http://docs.example.com/assessment1.pdf', 'AJ2023');

INSERT INTO regulatory_impact_assessment (assessment_id, regulation_id, effective_date, jurisdiction, impact_score, affected_business_units, mitigation_plan, responsible_owner, status, review_date, notes, created_at, updated_at, compliance_deadline, risk_level, cost_estimate, benefit_estimate, implementation_status, external_consultant, document_url, approval_signature)
VALUES (2, 302, '2023-07-15', 'US', 6.2, 'Risk,Legal', 'Revise policy handbook', 'Bob Smith', 'InProgress', '2023-08-20', 'Mid‑term review scheduled', '2023-10-01', '2023-10-01', '2023-12-31', 'Medium', 120000.0, 300000.0, 'Ongoing', 'LegalAdvisors', 'http://docs.example.com/assessment2.pdf', 'BS2023');

INSERT INTO regulatory_impact_assessment (assessment_id, regulation_id, effective_date, jurisdiction, impact_score, affected_business_units, mitigation_plan, responsible_owner, status, review_date, notes, created_at, updated_at, compliance_deadline, risk_level, cost_estimate, benefit_estimate, implementation_status, external_consultant, document_url, approval_signature)
VALUES (3, 303, '2025-03-01', 'APAC', 7.0, 'Operations,IT', 'Implement new encryption standards', 'Carol Lee', 'Planned', '2024-11-15', 'Awaiting budget approval', '2023-10-01', '2023-10-01', '2025-09-30', 'High', 400000.0, 800000.0, 'NotStarted', 'SecureTech', 'http://docs.example.com/assessment3.pdf', 'CL2023');

-- Environmental Noise Event
CREATE TABLE environmental_noise_event (
    event_id                INTEGER      PRIMARY KEY,
    sensor_id               INTEGER      NOT NULL,
    event_timestamp         DATETIME,
    decibel_level           REAL,
    frequency_range         TEXT,
    location_lat            REAL,
    location_long           REAL,
    zone_type               TEXT,
    city                    TEXT,
    county                  TEXT,
    cause                   TEXT,
    duration_seconds        INTEGER,
    is_reported             INTEGER,
    reporter_id             INTEGER,
    mitigation_action       TEXT,
    status                  TEXT,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE,
    archived_flag           INTEGER,
    related_incident_id    INTEGER
);

INSERT INTO environmental_noise_event (event_id, sensor_id, event_timestamp, decibel_level, frequency_range, location_lat, location_long, zone_type, city, county, cause, duration_seconds, is_reported, reporter_id, mitigation_action, status, notes, created_at, updated_at, archived_flag, related_incident_id)
VALUES (1, 9001, '2023-10-15 22:35:00', 85.3, '250-4000Hz', 47.6097, -122.3331, 'Residential', 'Seattle', 'King', 'Construction', 1800, 1, 3001, 'Install sound barriers', 'Closed', 'Noise reduced after barriers', '2023-10-16', '2023-10-16', 0, NULL);

INSERT INTO environmental_noise_event (event_id, sensor_id, event_timestamp, decibel_level, frequency_range, location_lat, location_long, zone_type, city, county, cause, duration_seconds, is_reported, reporter_id, mitigation_action, status, notes, created_at, updated_at, archived_flag, related_incident_id)
VALUES (2, 9002, '2023-10-18 14:20:00', 92.7, '500-8000Hz', 34.0522, -118.2437, 'Commercial', 'LosAngeles', 'LosAngeles', 'Traffic', 7200, 1, 3002, 'Adjust traffic flow', 'Open', 'Investigating alternative routes', '2023-10-19', '2023-10-19', 0, NULL);

INSERT INTO environmental_noise_event (event_id, sensor_id, event_timestamp, decibel_level, frequency_range, location_lat, location_long, zone_type, city, county, cause, duration_seconds, is_reported, reporter_id, mitigation_action, status, notes, created_at, updated_at, archived_flag, related_incident_id)
VALUES (3, 9003, '2023-10-20 09:05:00', 78.0, '200-3000Hz', 40.7128, -74.0060, 'Industrial', 'NewYork', 'NewYork', 'Machinery', 5400, 0, NULL, 'Schedule maintenance', 'Pending', 'Awaiting maintenance crew', '2023-10-20', '2023-10-20', 0, NULL);

-- Fleet Autonomous Vehicle Data
CREATE TABLE fleet_autonomous_vehicle_data (
    av_data_id              INTEGER      PRIMARY KEY,
    vehicle_id              INTEGER      NOT NULL,
    trip_id                 INTEGER,
    start_timestamp         DATETIME,
    end_timestamp           DATETIME,
    distance_km             REAL,
    average_speed_kmh       REAL,
    energy_consumed_kwh     REAL,
    autonomous_level        INTEGER,
    software_version        TEXT,
    sensor_fusion_score     REAL,
    anomaly_detected        INTEGER,
    anomaly_type            TEXT,
    driver_override_count   INTEGER,
    route_id                INTEGER,
    weather_conditions      TEXT,
    traffic_density         TEXT,
    battery_state_of_charge INTEGER,
    maintenance_flag        INTEGER,
    created_at              DATE,
    updated_at              DATE
);

INSERT INTO fleet_autonomous_vehicle_data (av_data_id, vehicle_id, trip_id, start_timestamp, end_timestamp, distance_km, average_speed_kmh, energy_consumed_kwh, autonomous_level, software_version, sensor_fusion_score, anomaly_detected, anomaly_type, driver_override_count, route_id, weather_conditions, traffic_density, battery_state_of_charge, maintenance_flag, created_at, updated_at)
VALUES (1, 5001, 8001, '2023-10-01 08:00:00', '2023-10-01 08:45:00', 45.2, 60.5, 12.3, 5, 'v3.2.1', 0.96, 0, NULL, 2, 300, 'Clear', 'Moderate', 85, 0, '2023-10-01', '2023-10-01');

INSERT INTO fleet_autonomous_vehicle_data (av_data_id, vehicle_id, trip_id, start_timestamp, end_timestamp, distance_km, average_speed_kmh, energy_consumed_kwh, autonomous_level, software_version, sensor_fusion_score, anomaly_detected, anomaly_type, driver_override_count, route_id, weather_conditions, traffic_density, battery_state_of_charge, maintenance_flag, created_at, updated_at)
VALUES (2, 5002, 8002, '2023-10-02 14:30:00', '2023-10-02 15:15:00', 38.0, 55.0, 10.8, 4, 'v3.1.0', 0.89, 1, 'LaneDeparture', 1, 301, 'Rain', 'Heavy', 70, 1, '2023-10-02', '2023-10-02');

INSERT INTO fleet_autonomous_vehicle_data (av_data_id, vehicle_id, trip_id, start_timestamp, end_timestamp, distance_km, average_speed_kmh, energy_consumed_kwh, autonomous_level, software_version, sensor_fusion_score, anomaly_detected, anomaly_type, driver_override_count, route_id, weather_conditions, traffic_density, battery_state_of_charge, maintenance_flag, created_at, updated_at)
VALUES (3, 5003, 8003, '2023-10-03 09:15:00', '2023-10-03 10:05:00', 50.5, 62.0, 13.5, 5, 'v3.3.0', 0.98, 0, NULL, 0, 302, 'Fog', 'Low', 90, 0, '2023-10-03', '2023-10-03');

-- ATM Security Camera Log
CREATE TABLE atm_security_camera_log (
    cam_log_id              INTEGER      PRIMARY KEY,
    atm_id                  INTEGER      NOT NULL,
    camera_id               INTEGER      NOT NULL,
    capture_timestamp       DATETIME,
    image_path              TEXT,
    motion_detected         INTEGER,
    motion_confidence       REAL,
    video_clip_path         TEXT,
    incident_flag           INTEGER,
    reporter_user_id        INTEGER,
    resolution              TEXT,
    frame_rate              REAL,
    bitrate                 INTEGER,
    storage_location        TEXT,
    encryption_key_id       INTEGER,
    reviewed_by             TEXT,
    review_timestamp        DATETIME,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE
);

INSERT INTO atm_security_camera_log (cam_log_id, atm_id, camera_id, capture_timestamp, image_path, motion_detected, motion_confidence, video_clip_path, incident_flag, reporter_user_id, resolution, frame_rate, bitrate, storage_location, encryption_key_id, reviewed_by, review_timestamp, notes, created_at, updated_at)
VALUES (1, 4001, 1, '2023-10-10 02:15:00', '/images/atm4001_cam1_0215.jpg', 1, 0.92, '/videos/atm4001_cam1_0215.mp4', 0, 9001, '1080p', 30.0, 5000, 'VaultRoom', 101, 'SecurityTeam', '2023-10-10 04:00:00', 'No incident detected', '2023-10-10', '2023-10-10');

INSERT INTO atm_security_camera_log (cam_log_id, atm_id, camera_id, capture_timestamp, image_path, motion_detected, motion_confidence, video_clip_path, incident_flag, reporter_user_id, resolution, frame_rate, bitrate, storage_location, encryption_key_id, reviewed_by, review_timestamp, notes, created_at, updated_at)
VALUES (2, 4002, 2, '2023-10-11 22:45:00', '/images/atm4002_cam2_2245.jpg', 1, 0.85, '/videos/atm4002_cam2_2245.mp4', 1, 9002, '720p', 25.0, 4500, 'Lobby', 102, 'SecurityTeam', '2023-10-12 01:30:00', 'Suspicious loitering observed', '2023-10-11', '2023-10-12');

INSERT INTO atm_security_camera_log (cam_log_id, atm_id, camera_id, capture_timestamp, image_path, motion_detected, motion_confidence, video_clip_path, incident_flag, reporter_user_id, resolution, frame_rate, bitrate, storage_location, encryption_key_id, reviewed_by, review_timestamp, notes, created_at, updated_at)
VALUES (3, 4003, 1, '2023-10-12 18:20:00', '/images/atm4003_cam1_1820.jpg', 0, NULL, NULL, 0, 9003, '1080p', 30.0, 5000, 'Exterior', 103, 'SecurityTeam', '2023-10-12 20:00:00', 'Routine check, no motion', '2023-10-12', '2023-10-12');

-- Loan Underwriting Metric
CREATE TABLE loan_underwriting_metric (
    metric_id               INTEGER      PRIMARY KEY,
    loan_application_id     INTEGER      NOT NULL,
    credit_score            INTEGER,
    debt_to_income_ratio    REAL,
    loan_amount             INTEGER,
    loan_term_months        INTEGER,
    interest_rate           REAL,
    collateral_value        INTEGER,
    LTV_ratio               REAL,
    employment_length_years INTEGER,
    annual_income           INTEGER,
    existing_loans_count    INTEGER,
    recent_inquiries        INTEGER,
    bankruptcies            INTEGER,
    fraud_score             REAL,
    underwriting_decision   TEXT,
    decision_reason         TEXT,
    risk_category           TEXT,
    created_at              DATE,
    updated_at              DATE
);

INSERT INTO loan_underwriting_metric (metric_id, loan_application_id, credit_score, debt_to_income_ratio, loan_amount, loan_term_months, interest_rate, collateral_value, LTV_ratio, employment_length_years, annual_income, existing_loans_count, recent_inquiries, bankruptcies, fraud_score, underwriting_decision, decision_reason, risk_category, created_at, updated_at)
VALUES (1, 7001, 740, 0.32, 150000, 360, 3.75, 200000, 0.75, 5, 95000, 1, 2, 0, 0.12, 'Approved', 'Meets all criteria', 'Low', '2023-10-01', '2023-10-01');

INSERT INTO loan_underwriting_metric (metric_id, loan_application_id, credit_score, debt_to_income_ratio, loan_amount, loan_term_months, interest_rate, collateral_value, LTV_ratio, employment_length_years, annual_income, existing_loans_count, recent_inquiries, bankruptcies, fraud_score, underwriting_decision, decision_reason, risk_category, created_at, updated_at)
VALUES (2, 7002, 610, 0.48, 80000, 240, 5.60, 0, NULL, 2, 55000, 3, 5, 1, 0.45, 'Denied', 'High debt-to-income ratio', 'High', '2023-10-02', '2023-10-02');

INSERT INTO loan_underwriting_metric (metric_id, loan_application_id, credit_score, debt_to_income_ratio, loan_amount, loan_term_months, interest_rate, collateral_value, LTV_ratio, employment_length_years, annual_income, existing_loans_count, recent_inquiries, bankruptcies, fraud_score, underwriting_decision, decision_reason, risk_category, created_at, updated_at)
VALUES (3, 7003, 680, 0.40, 120000, 300, 4.85, 150000, 0.80, 4, 72000, 2, 3, 0, 0.22, 'Approved', 'Strong collateral and income', 'Medium', '2023-10-03', '2023-10-03');