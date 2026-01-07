-- Table: environmental_sensor_station
CREATE TABLE environmental_sensor_station (
    station_id                INTEGER PRIMARY KEY,
    station_code              TEXT    NOT NULL,
    station_name              TEXT    NOT NULL,
    latitude                  REAL    NOT NULL,
    longitude                 REAL    NOT NULL,
    elevation_m               REAL    NOT NULL,
    installation_date         DATE    NOT NULL,
    sensor_type               TEXT    NOT NULL,
    measurement_unit          TEXT    NOT NULL,
    accuracy                  REAL    NOT NULL,
    calibration_date          DATE    NOT NULL,
    status                    TEXT    NOT NULL,
    last_maintenance_date     DATE    NOT NULL,
    firmware_version          TEXT    NOT NULL,
    battery_level_percent    INTEGER NOT NULL,
    connectivity_status      TEXT    NOT NULL,
    data_rate_hz              INTEGER NOT NULL,
    manufacturer              TEXT    NOT NULL,
    warranty_end_date         DATE    NOT NULL,
    notes                     TEXT,
    region                    TEXT    NOT NULL,
    city                      TEXT    NOT NULL
);

INSERT INTO environmental_sensor_station (station_id, station_code, station_name, latitude, longitude, elevation_m, installation_date, sensor_type, measurement_unit, accuracy, calibration_date, status, last_maintenance_date, firmware_version, battery_level_percent, connectivity_status, data_rate_hz, manufacturer, warranty_end_date, notes, region, city) VALUES
(1, 'ES001', 'Riverbank', 45.1234, -122.5678, 12.5, '2020-03-15', 'Temperature', 'Celsius', 0.1, '2023-01-10', 'Active', '2023-06-01', 'v1.2.3', 87, 'Online', 10, 'EnviroTech', '2025-03-15', 'No issues', 'North', 'Springfield');

INSERT INTO environmental_sensor_station (station_id, station_code, station_name, latitude, longitude, elevation_m, installation_date, sensor_type, measurement_unit, accuracy, calibration_date, status, last_maintenance_date, firmware_version, battery_level_percent, connectivity_status, data_rate_hz, manufacturer, warranty_end_date, notes, region, city) VALUES
(2, 'ES002', 'Hilltop', 46.9876, -121.4321, 250.0, '2019-11-20', 'Humidity', 'Percent', 0.5, '2022-12-05', 'Active', '2023-05-20', 'v1.3.0', 92, 'Online', 5, 'SensorCo', '2024-11-20', 'Calibration due soon', 'South', 'Riverdale');

INSERT INTO environmental_sensor_station (station_id, station_code, station_name, latitude, longitude, elevation_m, installation_date, sensor_type, measurement_unit, accuracy, calibration_date, status, last_maintenance_date, firmware_version, battery_level_percent, connectivity_status, data_rate_hz, manufacturer, warranty_end_date, notes, region, city) VALUES
(3, 'ES003', 'Coastal', 44.5678, -123.8765, 3.2, '2021-06-05', 'AirQuality', 'AQI', 1.0, '2023-04-18', 'Maintenance', '2023-07-10', 'v2.0.1', 75, 'Offline', 2, 'AirMetrics', '2026-06-05', 'Battery replacement needed', 'West', 'Seaview');

-- Table: fleet_vehicle_maintenance
CREATE TABLE fleet_vehicle_maintenance (
    maintenance_id            INTEGER PRIMARY KEY,
    vehicle_vin               TEXT    NOT NULL,
    maintenance_date          DATE    NOT NULL,
    odometer_km               INTEGER NOT NULL,
    service_type              TEXT    NOT NULL,
    service_center            TEXT    NOT NULL,
    technician_name           TEXT    NOT NULL,
    labor_hours               REAL    NOT NULL,
    parts_cost                REAL    NOT NULL,
    total_cost                REAL    NOT NULL,
    next_service_odometer_km  INTEGER NOT NULL,
    warranty_coverage         TEXT,
    fuel_type                 TEXT    NOT NULL,
    emission_standard         TEXT    NOT NULL,
    tire_pressure_front       REAL    NOT NULL,
    tire_pressure_rear        REAL    NOT NULL,
    brake_pad_thickness_mm    REAL    NOT NULL,
    oil_type                  TEXT    NOT NULL,
    oil_change_interval_km    INTEGER NOT NULL,
    notes                     TEXT,
    fleet_region              TEXT    NOT NULL,
    fleet_manager_id          INTEGER NOT NULL
);

INSERT INTO fleet_vehicle_maintenance (maintenance_id, vehicle_vin, maintenance_date, odometer_km, service_type, service_center, technician_name, labor_hours, parts_cost, total_cost, next_service_odometer_km, warranty_coverage, fuel_type, emission_standard, tire_pressure_front, tire_pressure_rear, brake_pad_thickness_mm, oil_type, oil_change_interval_km, notes, fleet_region, fleet_manager_id) VALUES
(101, '1HGCM82633A004352', '2023-03-12', 45200, 'Full Service', 'AutoHub North', 'JohnDoe', 4.5, 320.75, 560.30, 50000, 'Standard', 'Diesel', 'Euro6', 2.3, 2.3, 12.5, '5W30', 15000, 'Replaced air filter', 'Midwest', 12);

INSERT INTO fleet_vehicle_maintenance (maintenance_id, vehicle_vin, maintenance_date, odometer_km, service_type, service_center, technician_name, labor_hours, parts_cost, total_cost, next_service_odometer_km, warranty_coverage, fuel_type, emission_standard, tire_pressure_front, tire_pressure_rear, brake_pad_thickness_mm, oil_type, oil_change_interval_km, notes, fleet_region, fleet_manager_id) VALUES
(102, 'JH4KA8260MC001234', '2023-07-05', 120500, 'Brake Replacement', 'ServicePro East', 'AliceSmith', 6.0, 480.00, 720.50, 125000, 'Extended', 'Petrol', 'Euro5', 2.5, 2.5, 8.0, '5W20', 10000, 'Brake pads worn', 'East', 7);

INSERT INTO fleet_vehicle_maintenance (maintenance_id, vehicle_vin, maintenance_date, odometer_km, service_type, service_center, technician_name, labor_hours, parts_cost, total_cost, next_service_odometer_km, warranty_coverage, fuel_type, emission_standard, tire_pressure_front, tire_pressure_rear, brake_pad_thickness_mm, oil_type, oil_change_interval_km, notes, fleet_region, fleet_manager_id) VALUES
(103, '3FAHP0HA6AR123456', '2023-11-20', 78500, 'Oil Change', 'QuickLube West', 'BobLee', 1.0, 45.20, 80.70, 85000, 'Standard', 'Hybrid', 'Euro6', 2.2, 2.2, 15.0, '0W20', 12000, 'Oil changed', 'West', 3);

-- Table: marketing_campaign
CREATE TABLE marketing_campaign (
    campaign_id               INTEGER PRIMARY KEY,
    campaign_name             TEXT    NOT NULL,
    start_date                DATE    NOT NULL,
    end_date                  DATE    NOT NULL,
    budget_usd                REAL    NOT NULL,
    channel                   TEXT    NOT NULL,
    target_audience           TEXT    NOT NULL,
    impressions               INTEGER NOT NULL,
    clicks                    INTEGER NOT NULL,
    conversions               INTEGER NOT NULL,
    cpc_usd                   REAL    NOT NULL,
    cpa_usd                   REAL    NOT NULL,
    roi_percent               REAL    NOT NULL,
    creative_type             TEXT    NOT NULL,
    language                  TEXT    NOT NULL,
    geographic_region         TEXT    NOT NULL,
    device_type               TEXT    NOT NULL,
    ad_format                 TEXT    NOT NULL,
    headline                  TEXT    NOT NULL,
    description               TEXT    NOT NULL,
    landing_page_url          TEXT    NOT NULL,
    brand_safety_flag         TEXT    NOT NULL,
    created_by_user_id        INTEGER NOT NULL
);

INSERT INTO marketing_campaign (campaign_id, campaign_name, start_date, end_date, budget_usd, channel, target_audience, impressions, clicks, conversions, cpc_usd, cpa_usd, roi_percent, creative_type, language, geographic_region, device_type, ad_format, headline, description, landing_page_url, brand_safety_flag, created_by_user_id) VALUES
(2001, 'SpringSale2023', '2023-04-01', '2023-04-30', 25000.00, 'Social', 'Adults25-45', 1200000, 48000, 7200, 0.52, 3.47, 125.0, 'Video', 'English', 'NorthAmerica', 'Mobile', 'InStream', 'Super Savings!', 'Enjoy up to 50% off on select items', 'https://example.com/spring', 'Safe', 101);

INSERT INTO marketing_campaign (campaign_id, campaign_name, start_date, end_date, budget_usd, channel, target_audience, impressions, clicks, conversions, cpc_usd, cpa_usd, roi_percent, creative_type, language, geographic_region, device_type, ad_format, headline, description, landing_page_url, brand_safety_flag, created_by_user_id) VALUES
(2002, 'EcoFriendlyLaunch', '2023-06-15', '2023-07-15', 18000.00, 'Search', 'EcoConscious', 800000, 31000, 4500, 0.58, 4.00, 140.0, 'Image', 'English', 'Europe', 'Desktop', 'Banner', 'Green Is The New Black', 'Discover our sustainable product line', 'https://example.com/green', 'Safe', 104);

INSERT INTO marketing_campaign (campaign_id, campaign_name, start_date, end_date, budget_usd, channel, target_audience, impressions, clicks, conversions, cpc_usd, cpa_usd, roi_percent, creative_type, language, geographic_region, device_type, ad_format, headline, description, landing_page_url, brand_safety_flag, created_by_user_id) VALUES
(2003, 'HolidayPromo2023', '2023-11-20', '2023-12-31', 30000.00, 'Email', 'AllCustomers', 500000, 75000, 12500, 0.40, 2.40, 160.0, 'HTML', 'English', 'Global', 'All', 'Newsletter', 'Holiday Deals Inside', 'Shop our festive offers now', 'https://example.com/holiday', 'Safe', 109);

-- Table: digital_asset_log
CREATE TABLE digital_asset_log (
    log_id                    INTEGER PRIMARY KEY,
    asset_id                  TEXT    NOT NULL,
    asset_type                TEXT    NOT NULL,
    action_type               TEXT    NOT NULL,
    performed_by_user_id      INTEGER NOT NULL,
    timestamp                 TIMESTAMP NOT NULL,
    source_system             TEXT    NOT NULL,
    ip_address                TEXT    NOT NULL,
    previous_version          TEXT,
    new_version               TEXT,
    change_summary            TEXT,
    approval_status           TEXT,
    approved_by_user_id       INTEGER,
    approval_timestamp        TIMESTAMP,
    retention_policy_days     INTEGER NOT NULL,
    encryption_used           TEXT NOT NULL,
    storage_location          TEXT NOT NULL,
    compliance_flag           TEXT NOT NULL,
    notes                     TEXT,
    related_project_id        INTEGER,
    risk_level                TEXT NOT NULL,
    data_classification       TEXT NOT NULL
);

INSERT INTO digital_asset_log (log_id, asset_id, asset_type, action_type, performed_by_user_id, timestamp, source_system, ip_address, previous_version, new_version, change_summary, approval_status, approved_by_user_id, approval_timestamp, retention_policy_days, encryption_used, storage_location, compliance_flag, notes, related_project_id, risk_level, data_classification) VALUES
(5001, 'IMG_20230401_001', 'Image', 'Upload', 201, '2023-04-01 08:15:30', 'CMS', '192.168.1.10', NULL, 'v1', 'Initial upload of marketing banner', 'Pending', NULL, NULL, 365, 'AES256', 'S3BucketA', 'Yes', 'High resolution', 301, 'Medium', 'Public');

INSERT INTO digital_asset_log (log_id, asset_id, asset_type, action_type, performed_by_user_id, timestamp, source_system, ip_address, previous_version, new_version, change_summary, approval_status, approved_by_user_id, approval_timestamp, retention_policy_days, encryption_used, storage_location, compliance_flag, notes, related_project_id, risk_level, data_classification) VALUES
(5002, 'DOC_20230515_045', 'Document', 'Edit', 202, '2023-05-15 14:22:10', 'DMS', '192.168.1.12', 'v3', 'v4', 'Updated compliance section', 'Approved', 301, '2023-05-15 15:00:00', 730, 'RSA2048', 'OnPremFS', 'Yes', 'Reviewed by legal', 302, 'Low', 'Confidential');

INSERT INTO digital_asset_log (log_id, asset_id, asset_type, action_type, performed_by_user_id, timestamp, source_system, ip_address, previous_version, new_version, change_summary, approval_status, approved_by_user_id, approval_timestamp, retention_policy_days, encryption_used, storage_location, compliance_flag, notes, related_project_id, risk_level, data_classification) VALUES
(5003, 'VID_20230620_099', 'Video', 'Delete', 203, '2023-06-20 09:45:05', 'CMS', '192.168.1.15', 'v2', NULL, 'Removed outdated tutorial', 'Approved', 302, '2023-06-20 10:10:00', 0, 'None', 'ArchiveVault', 'No', 'Deleted per policy', 303, 'High', 'Restricted');

-- Table: regulatory_report
CREATE TABLE regulatory_report (
    report_id                 INTEGER PRIMARY KEY,
    report_name               TEXT    NOT NULL,
    filing_date               DATE    NOT NULL,
    reporting_period_start    DATE    NOT NULL,
    reporting_period_end      DATE    NOT NULL,
    regulator_name            TEXT    NOT NULL,
    submission_method         TEXT    NOT NULL,
    status                    TEXT    NOT NULL,
    total_liabilities_usd     REAL NOT NULL,
    total_assets_usd          REAL NOT NULL,
    capital_adequacy_ratio    REAL NOT NULL,
    risk_weighted_assets_usd  REAL NOT NULL,
    compliance_score_percent REAL NOT NULL,
    notes                     TEXT,
    reviewer_user_id          INTEGER NOT NULL,
    review_timestamp          TIMESTAMP NOT NULL,
    approval_user_id          INTEGER,
    approval_timestamp        TIMESTAMP,
    amendments_required       TEXT,
    next_filing_due_date      DATE NOT NULL,
    report_version            TEXT NOT NULL,
    data_source_system        TEXT NOT NULL,
    external_audit_firm       TEXT
);

INSERT INTO regulatory_report (report_id, report_name, filing_date, reporting_period_start, reporting_period_end, regulator_name, submission_method, status, total_liabilities_usd, total_assets_usd, capital_adequacy_ratio, risk_weighted_assets_usd, compliance_score_percent, notes, reviewer_user_id, review_timestamp, approval_user_id, approval_timestamp, amendments_required, next_filing_due_date, report_version, data_source_system, external_audit_firm) VALUES
(7001, 'AnnualFinancialStatement2022', '2023-02-15', '2022-01-01', '2022-12-31', 'FedReserve', 'Electronic', 'Submitted', 125000000.00, 250000000.00, 12.5, 200000000.00, 98.0, 'All sections complete', 401, '2023-02-10 11:30:00', 402, '2023-02-12 09:45:00', 'None', '2024-02-15', 'v1.0', 'CoreBanking', 'AuditCo');

INSERT INTO regulatory_report (report_id, report_name, filing_date, reporting_period_start, reporting_period_end, regulator_name, submission_method, status, total_liabilities_usd, total_assets_usd, capital_adequacy_ratio, risk_weighted_assets_usd, compliance_score_percent, notes, reviewer_user_id, review_timestamp, approval_user_id, approval_timestamp, amendments_required, next_filing_due_date, report_version, data_source_system, external_audit_firm) VALUES
(7002, 'QuarterlyLiquidityReportQ1_2023', '2023-04-20', '2023-01-01', '2023-03-31', 'FedReserve', 'Electronic', 'Submitted', 80000000.00, 150000000.00, 10.2, 120000000.00, 95.5, 'Liquidity ratios within limits', 403, '2023-04-15 14:20:00', 404, '2023-04-18 10:00:00', 'None', '2023-07-20', 'v1.1', 'CoreBanking', 'AuditCo');

INSERT INTO regulatory_report (report_id, report_name, filing_date, reporting_period_start, reporting_period_end, regulator_name, submission_method, status, total_liabilities_usd, total_assets_usd, capital_adequacy_ratio, risk_weighted_assets_usd, compliance_score_percent, notes, reviewer_user_id, review_timestamp, approval_user_id, approval_timestamp, amendments_required, next_filing_due_date, report_version, data_source_system, external_audit_firm) VALUES
(7003, 'StressTestScenario2023', '2023-09-05', '2023-01-01', '2023-12-31', 'FedReserve', 'Electronic', 'Pending', 130000000.00, 260000000.00, 11.0, 210000000.00, 96.3, 'Awaiting final stress test results', 405, '2023-09-01 09:00:00', NULL, NULL, 'Awaiting regulator feedback', '2024-09-05', 'v2.0', 'RiskEngine', NULL);

-- Table: supplier_quality_audit
CREATE TABLE supplier_quality_audit (
    audit_id                  INTEGER PRIMARY KEY,
    supplier_id               INTEGER NOT NULL,
    audit_date                DATE    NOT NULL,
    auditor_name              TEXT    NOT NULL,
    product_category          TEXT    NOT NULL,
    compliance_score_percent  REAL    NOT NULL,
    non_conformance_count    INTEGER NOT NULL,
    corrective_action_required TEXT NOT NULL,
    corrective_action_due_date DATE NOT NULL,
    follow_up_date            DATE,
    audit_status              TEXT    NOT NULL,
    notes                     TEXT,
    site_location             TEXT    NOT NULL,
    audit_type                TEXT    NOT NULL,
    risk_level                TEXT    NOT NULL,
    contract_id               INTEGER NOT NULL,
    payment_terms             TEXT NOT NULL,
    quality_certification     TEXT,
    shipment_accuracy_percent REAL,
    defect_rate_percent       REAL,
    lead_time_days            INTEGER,
    sustainability_score      REAL,
    last_updated_timestamp    TIMESTAMP NOT NULL,
    updated_by_user_id        INTEGER NOT NULL
);

INSERT INTO supplier_quality_audit (audit_id, supplier_id, audit_date, auditor_name, product_category, compliance_score_percent, non_conformance_count, corrective_action_required, corrective_action_due_date, follow_up_date, audit_status, notes, site_location, audit_type, risk_level, contract_id, payment_terms, quality_certification, shipment_accuracy_percent, defect_rate_percent, lead_time_days, sustainability_score, last_updated_timestamp, updated_by_user_id) VALUES
(9001, 1201, '2023-03-12', 'EmilyClark', 'Electronics', 92.5, 2, 'Yes', '2023-04-30', '2023-05-15', 'Closed', 'Minor packaging issue resolved', 'Factory_A', 'Onsite', 'Medium', 501, 'Net30', 'ISO9001', 98.0, 0.8, 12, 85.0, '2023-05-01 10:20:00', 601);

INSERT INTO supplier_quality_audit (audit_id, supplier_id, audit_date, auditor_name, product_category, compliance_score_percent, non_conformance_count, corrective_action_required, corrective_action_due_date, follow_up_date, audit_status, notes, site_location, audit_type, risk_level, contract_id, payment_terms, quality_certification, shipment_accuracy_percent, defect_rate_percent, lead_time_days, sustainability_score, last_updated_timestamp, updated_by_user_id) VALUES
(9002, 1202, '2023-06-25', 'MichaelBrown', 'Pharmaceuticals', 88.0, 5, 'Yes', '2023-08-15', NULL, 'Open', 'Pending investigation of contamination', 'Plant_B', 'Remote', 'High', 502, 'Net45', 'ISO13485', 95.0, 1.5, 20, 70.0, '2023-07-10 14:05:00', 602);

INSERT INTO supplier_quality_audit (audit_id, supplier_id, audit_date, auditor_name, product_category, compliance_score_percent, non_conformance_count, corrective_action_required, corrective_action_due_date, follow_up_date, audit_status, notes, site_location, audit_type, risk_level, contract_id, payment_terms, quality_certification, shipment_accuracy_percent, defect_rate_percent, lead_time_days, sustainability_score, last_updated_timestamp, updated_by_user_id) VALUES
(9003, 1203, '2023-09-08', 'SarahLee', 'Apparel', 95.0, 1, 'No', '2023-09-30', '2023-10-10', 'Closed', 'All standards met', 'Factory_C', 'Onsite', 'Low', 503, 'Net30', 'ISO9001', 99.5, 0.3, 8, 92.0, '2023-10-01 08:45:00', 603);

-- Table: research_project
CREATE TABLE research_project (
    project_id                INTEGER PRIMARY KEY,
    project_code              TEXT    NOT NULL,
    project_name              TEXT    NOT NULL,
    start_date                DATE    NOT NULL,
    end_date                  DATE,
    principal_investigator    TEXT    NOT NULL,
    funding_agency            TEXT    NOT NULL,
    total_budget_usd          REAL    NOT NULL,
    allocated_amount_usd      REAL    NOT NULL,
    spent_amount_usd          REAL    NOT NULL,
    status                    TEXT    NOT NULL,
    research_area             TEXT    NOT NULL,
    methodology               TEXT    NOT NULL,
    data_sharing_policy       TEXT    NOT NULL,
    ethical_approval_id       TEXT,
    publication_target_journal TEXT,
    number_of_publications    INTEGER,
    number_of_conferences     INTEGER,
    patents_filed             INTEGER,
    collaborators_count       INTEGER,
    data_repository_url       TEXT,
    project_summary           TEXT,
    last_modified_timestamp   TIMESTAMP NOT NULL,
    modified_by_user_id       INTEGER NOT NULL
);

INSERT INTO research_project (project_id, project_code, project_name, start_date, end_date, principal_investigator, funding_agency, total_budget_usd, allocated_amount_usd, spent_amount_usd, status, research_area, methodology, data_sharing_policy, ethical_approval_id, publication_target_journal, number_of_publications, number_of_conferences, patents_filed, collaborators_count, data_repository_url, project_summary, last_modified_timestamp, modified_by_user_id) VALUES
(11001, 'RP-2023-001', 'Quantum Computing Algorithms', '2023-01-15', NULL, 'DrAliceWong', 'NSF', 1500000.00, 1500000.00, 450000.00, 'Active', 'ComputerScience', 'Simulation', 'Open', 'EA-2023-45', 'NatureComputing', 2, 1, 0, 5, 'https://dataverse.org/dataset/qp', 'Develop new quantum algorithms for optimization', '2023-09-20 12:00:00', 701);

INSERT INTO research_project (project_id, project_code, project_name, start_date, end_date, principal_investigator, funding_agency, total_budget_usd, allocated_amount_usd, spent_amount_usd, status, research_area, methodology, data_sharing_policy, ethical_approval_id, publication_target_journal, number_of_publications, number_of_conferences, patents_filed, collaborators_count, data_repository_url, project_summary, last_modified_timestamp, modified_by_user_id) VALUES
(11002, 'RP-2023-002', 'Renewable Energy Storage', '2022-06-01', '2025-05-31', 'DrBobMiller', 'DOE', 2000000.00, 2000000.00, 1200000.00, 'Active', 'EnergyEngineering', 'Experimental', 'Restricted', 'EA-2022-12', 'EnergyJournal', 4, 3, 2, 8, 'https://doi.org/10.5281/zenodo.123456', 'Investigate new battery chemistries for grid storage', '2023-09-18 09:30:00', 702);

INSERT INTO research_project (project_id, project_code, project_name, start_date, end_date, principal_investigator, funding_agency, total_budget_usd, allocated_amount_usd, spent_amount_usd, status, research_area, methodology, data_sharing_policy, ethical_approval_id, publication_target_journal, number_of_publications, number_of_conferences, patents_filed, collaborators_count, data_repository_url, project_summary, last_modified_timestamp, modified_by_user_id) VALUES
(11003, 'RP-2023-003', 'AI for Healthcare Diagnostics', '2021-09-01', '2024-08-31', 'DrCarolNg', 'NIH', 2500000.00, 2500000.00, 2100000.00, 'Completed', 'MedicalAI', 'MachineLearning', 'Open', 'EA-2021-78', 'LancetDigitalHealth', 6, 5, 1, 10, 'https://github.com/healthai/project', 'Develop AI models for early disease detection using imaging', '2024-08-15 16:45:00', 703);

-- Table: branch_security_log
CREATE TABLE branch_security_log (
    log_id                    INTEGER PRIMARY KEY,
    branch_id                 INTEGER NOT NULL,
    event_timestamp           TIMESTAMP NOT NULL,
    event_type                TEXT    NOT NULL,
    employee_id               INTEGER,
    device_id                 TEXT,
    description               TEXT,
    severity_level            TEXT NOT NULL,
    resolved_flag             TEXT NOT NULL,
    resolution_timestamp      TIMESTAMP,
    resolution_notes          TEXT,
    incident_category         TEXT NOT NULL,
    location_detail           TEXT,
    camera_snapshot_id        TEXT,
    access_control_method    TEXT,
    authentication_status    TEXT,
    security_zone            TEXT,
    risk_score                REAL,
    regulatory_reference      TEXT,
    audit_trail_id            TEXT,
    follow_up_action          TEXT,
    assigned_to_user_id       INTEGER,
    last_updated_timestamp    TIMESTAMP NOT NULL
);

INSERT INTO branch_security_log (log_id, branch_id, event_timestamp, event_type, employee_id, device_id, description, severity_level, resolved_flag, resolution_timestamp, resolution_notes, incident_category, location_detail, camera_snapshot_id, access_control_method, authentication_status, security_zone, risk_score, regulatory_reference, audit_trail_id, follow_up_action, assigned_to_user_id, last_updated_timestamp) VALUES
(8001, 10, '2023-04-18 08:45:00', 'UnauthorizedAccess', 301, 'CAM01', 'Attempted badge access after hours', 'High', 'Yes', '2023-04-18 09:10:00', 'Access denied by system', 'Physical', 'FrontDoor', 'SNAP001', 'Badge', 'Failed', 'Public', 8.5, 'Reg-2023-01', 'AT-8001', 'Increase patrol', 401, '2023-04-18 09:15:00');

INSERT INTO branch_security_log (log_id, branch_id, event_timestamp, event_type, employee_id, device_id, description, severity_level, resolved_flag, resolution_timestamp, resolution_notes, incident_category, location_detail, camera_snapshot_id, access_control_method, authentication_status, security_zone, risk_score, regulatory_reference, audit_trail_id, follow_up_action, assigned_to_user_id, last_updated_timestamp) VALUES
(8002, 12, '2023-07-22 14:20:00', 'FireAlarm', NULL, 'FIRE01', 'Smoke detected in teller area', 'Critical', 'Yes', '2023-07-22 14:25:00', 'Evacuated and fire extinguished', 'Safety', 'TellerRoom', 'SNAP045', 'Manual', 'N/A', 'Restricted', 9.7, 'Reg-2023-05', 'AT-8002', 'Inspect fire suppression system', 403, '2023-07-22 14:30:00');

INSERT INTO branch_security_log (log_id, branch_id, event_timestamp, event_type, employee_id, device_id, description, severity_level, resolved_flag, resolution_timestamp, resolution_notes, incident_category, location_detail, camera_snapshot_id, access_control_method, authentication_status, security_zone, risk_score, regulatory_reference, audit_trail_id, follow_up_action, assigned_to_user_id, last_updated_timestamp) VALUES
(8003, 15, '2023-11-05 10:05:00', 'SuspiciousPackage', 312, 'CAM07', 'Unattended bag near lobby', 'Medium', 'No', NULL, NULL, 'Threat', 'Lobby', 'SNAP078', 'CCTV', 'N/A', 'Public', 6.2, 'Reg-2023-09', 'AT-8003', 'Call bomb squad', 405, '2023-11-05 10:15:00');

-- Table: weather_station
CREATE TABLE weather_station (
    station_id                INTEGER PRIMARY KEY,
    station_code              TEXT    NOT NULL,
    latitude                  REAL    NOT NULL,
    longitude                 REAL    NOT NULL,
    elevation_m               REAL    NOT NULL,
    installation_date         DATE    NOT NULL,
    sensor_package            TEXT    NOT NULL,
    manufacturer              TEXT    NOT NULL,
    maintenance_interval_days INTEGER NOT NULL,
    last_maintenance_date     DATE    NOT NULL,
    status                    TEXT    NOT NULL,
    data_collection_interval_min INTEGER NOT NULL,
    temperature_celsius       REAL,
    humidity_percent          REAL,
    wind_speed_mps            REAL,
    wind_direction_deg        REAL,
    precipitation_mm          REAL,
    solar_radiation_wm2       REAL,
    air_quality_index         INTEGER,
    battery_status_percent    INTEGER,
    connectivity_status       TEXT,
    notes                     TEXT,
    region                    TEXT,
    city                      TEXT
);

INSERT INTO weather_station (station_id, station_code, latitude, longitude, elevation_m, installation_date, sensor_package, manufacturer, maintenance_interval_days, last_maintenance_date, status, data_collection_interval_min, temperature_celsius, humidity_percent, wind_speed_mps, wind_direction_deg, precipitation_mm, solar_radiation_wm2, air_quality_index, battery_status_percent, connectivity_status, notes, region, city) VALUES
(401, 'WS001', 40.7128, -74.0060, 10.0, '2019-05-10', 'Standard', 'MeteoTech', 180, '2023-03-01', 'Active', 10, 22.5, 60.0, 5.2, 180.0, 0.0, 450.0, 42, 95, 'Online', 'Urban station', 'Northeast', 'NewYork');

INSERT INTO weather_station (station_id, station_code, latitude, longitude, elevation_m, installation_date, sensor_package, manufacturer, maintenance_interval_days, last_maintenance_date, status, data_collection_interval_min, temperature_celsius, humidity_percent, wind_speed_mps, wind_direction_deg, precipitation_mm, solar_radiation_wm2, air_quality_index, battery_status_percent, connectivity_status, notes, region, city) VALUES
(402, 'WS002', 34.0522, -118.2437, 71.0, '2020-07-15', 'Advanced', 'ClimateSensors', 365, '2022-12-20', 'Active', 5, 27.3, 45.0, 3.1, 90.0, 0.0, 580.0, 35, 88, 'Online', 'Coastal station', 'West', 'LosAngeles');

INSERT INTO weather_station (station_id, station_code, latitude, longitude, elevation_m, installation_date, sensor_package, manufacturer, maintenance_interval_days, last_maintenance_date, status, data_collection_interval_min, temperature_celsius, humidity_percent, wind_speed_mps, wind_direction_deg, precipitation_mm, solar_radiation_wm2, air_quality_index, battery_status_percent, connectivity_status, notes, region, city) VALUES
(403, 'WS003', 47.6062, -122.3321, 53.0, '2021-03-22', 'Standard', 'MeteoTech', 180, '2023-02-10', 'Active', 10, 18.7, 72.0, 4.5, 250.0, 0.2, 420.0, 55, 92, 'Online', 'Riverine station', 'Northwest', 'Seattle');

-- Table: loan_collateral_inventory
CREATE TABLE loan_collateral_inventory (
    collateral_id             INTEGER PRIMARY KEY,
    loan_id                   INTEGER NOT NULL,
    collateral_type           TEXT    NOT NULL,
    description               TEXT,
    appraised_value_usd       REAL    NOT NULL,
    market_value_usd          REAL,
    valuation_date            DATE NOT NULL,
    location_address          TEXT NOT NULL,
    legal_owner               TEXT NOT NULL,
    lien_status               TEXT NOT NULL,
    insurance_policy_number   TEXT,
    insurance_provider        TEXT,
    insurance_coverage_usd    REAL,
    insurance_expiry_date     DATE,
    condition_rating          TEXT,
    depreciation_rate_percent REAL,
    current_value_usd         REAL,
    last_inspection_date      DATE,
    next_inspection_due_date  DATE,
    remarks                   TEXT,
    collateral_status         TEXT NOT NULL,
    registered_by_user_id     INTEGER NOT NULL,
    registration_timestamp    TIMESTAMP NOT NULL,
    audit_trail_id            TEXT
);

INSERT INTO loan_collateral_inventory (collateral_id, loan_id, collateral_type, description, appraised_value_usd, market_value_usd, valuation_date, location_address, legal_owner, lien_status, insurance_policy_number, insurance_provider, insurance_coverage_usd, insurance_expiry_date, condition_rating, depreciation_rate_percent, current_value_usd, last_inspection_date, next_inspection_due_date, remarks, collateral_status, registered_by_user_id, registration_timestamp, audit_trail_id) VALUES
(6001, 3001, 'RealEstate', '2‑story residential house', 350000.00, 340000.00, '2023-01-15', '123 Main St, Springfield', 'JohnDoe', 'None', 'POL123456', 'SafeGuard', 300000.00, '2024-12-31', 'Good', 1.2, 335000.00, '2023-06-01', '2024-06-01', 'Well maintained', 'Active', 801, '2023-01-20 09:30:00', 'AT-6001');

INSERT INTO loan_collateral_inventory (collateral_id, loan_id, collateral_type, description, appraised_value_usd, market_value_usd, valuation_date, location_address, legal_owner, lien_status, insurance_policy_number, insurance_provider, insurance_coverage_usd, insurance_expiry_date, condition_rating, depreciation_rate_percent, current_value_usd, last_inspection_date, next_inspection_due_date, remarks, collateral_status, registered_by_user_id, registration_timestamp, audit_trail_id) VALUES
(6002, 3002, 'Vehicle', '2019 Sedan VIN1HGCM82633A004352', 25000.00, 24000.00, '2023-02-10', '456 Oak Ave, Metropolis', 'Acme Corp', 'BankLien', 'POL654321', 'AutoSecure', 22000.00, '2025-05-15', 'Excellent', 0.8, 24200.00, '2023-07-20', '2024-07-20', 'Low mileage', 'Active', 802, '2023-02-12 11:00:00', 'AT-6002');

INSERT INTO loan_collateral_inventory (collateral_id, loan_id, collateral_type, description, appraised_value_usd, market_value_usd, valuation_date, location_address, legal_owner, lien_status, insurance_policy_number, insurance_provider, insurance_coverage_usd, insurance_expiry_date, condition_rating, depreciation_rate_percent, current_value_usd, last_inspection_date, next_inspection_due_date, remarks, collateral_status, registered_by_user_id, registration_timestamp, audit_trail_id) VALUES
(6003, 3003, 'Equipment', 'Industrial CNC Machine', 120000.00, 115000.00, '2023-03-05', '789 Industrial Rd, FactoryTown', 'TechManufacturing', 'BankLien', 'POL789012', 'EquipInsure', 110000.00, '2026-01-01', 'Fair', 2.5, 112125.00, '2023-08-15', '2024-08-15', 'Requires minor maintenance', 'Active', 803, '2023-03-07 14:20:00', 'AT-6003');