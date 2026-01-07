-- City noise monitoring stations
CREATE TABLE city_noise_monitor
(
    monitor_id            INTEGER PRIMARY KEY,
    city_id               INTEGER NOT NULL,
    location_name         TEXT NOT NULL,
    latitude              REAL NOT NULL,
    longitude             REAL NOT NULL,
    installation_date     DATE NOT NULL,
    sensor_type           TEXT NOT NULL,
    db_level              REAL NOT NULL,
    peak_db               REAL NOT NULL,
    avg_db                REAL NOT NULL,
    measurement_interval  INTEGER NOT NULL,
    status                TEXT NOT NULL,
    last_maintenance      DATE NOT NULL,
    firmware_version      TEXT NOT NULL,
    battery_level         REAL NOT NULL,
    connectivity_status   TEXT NOT NULL,
    alerts_count          INTEGER NOT NULL,
    noise_category        TEXT NOT NULL,
    notes                 TEXT,
    created_at            DATE NOT NULL
);

INSERT INTO city_noise_monitor VALUES (1, 101, 'CentralPark', 40.785091, -73.968285, '2022-01-15', 'Acoustic', 65.2, 78.5, 62.3, 10, 'Active', '2023-06-01', 'v1.4.2', 88.5, 'Online', 3, 'Urban', 'Routine check completed', '2023-06-02');
INSERT INTO city_noise_monitor VALUES (2, 102, 'RiversideAve', 40.800000, -73.970000, '2021-11-20', 'Microphone', 58.7, 70.1, 56.4, 15, 'Active', '2023-05-20', 'v1.3.9', 92.0, 'Online', 1, 'Residential', 'No issues', '2023-05-21');
INSERT INTO city_noise_monitor VALUES (3, 103, 'IndustrialZone', 40.750000, -74.000000, '2020-07-05', 'Acoustic', 72.5, 85.0, 69.8, 5, 'Maintenance', '2023-04-10', 'v1.2.5', 45.0, 'Offline', 7, 'Industrial', 'Battery replacement needed', '2023-04-11');

-- Building energy audit records
CREATE TABLE building_energy_audit
(
    audit_id               INTEGER PRIMARY KEY,
    building_id            INTEGER NOT NULL,
    building_name          TEXT NOT NULL,
    address                TEXT NOT NULL,
    city_id                INTEGER NOT NULL,
    audit_date             DATE NOT NULL,
    auditor_name           TEXT NOT NULL,
    total_energy_kwh       REAL NOT NULL,
    electricity_kwh        REAL NOT NULL,
    gas_therms             REAL NOT NULL,
    water_m3               REAL NOT NULL,
    hvac_efficiency        REAL NOT NULL,
    lighting_efficiency    REAL NOT NULL,
    insulation_rating      TEXT NOT NULL,
    renewable_percent      REAL NOT NULL,
    peak_demand_kw         REAL NOT NULL,
    recommendations_count INTEGER NOT NULL,
    overall_score          INTEGER NOT NULL,
    notes                  TEXT,
    created_at             DATE NOT NULL
);

INSERT INTO building_energy_audit VALUES (1001, 2001, 'MainOffice', '123 Main St', 101, '2023-03-15', 'AliceSmith', 12500.5, 8000.2, 1500.0, 500.3, 0.85, 0.78, 'A+', 12.5, 250.0, 8, 92, 'Good overall performance', '2023-03-16');
INSERT INTO building_energy_audit VALUES (1002, 2002, 'WarehouseA', '456 Industrial Rd', 102, '2023-04-10', 'BobJohnson', 34000.0, 30000.0, 2500.0, 800.0, 0.70, 0.65, 'B', 8.0, 420.0, 5, 78, 'Upgrade HVAC recommended', '2023-04-11');
INSERT INTO building_energy_audit VALUES (1003, 2003, 'RetailCenter', '789 Market Ave', 103, '2023-02-20', 'CarolLee', 21000.3, 15000.5, 1800.0, 600.7, 0.80, 0.75, 'A', 15.0, 310.0, 6, 85, 'Consider LED lighting', '2023-02-21');

-- Public transport vehicle status
CREATE TABLE public_transport_vehicle_status
(
    vehicle_id                INTEGER PRIMARY KEY,
    route_id                  INTEGER NOT NULL,
    vehicle_type              TEXT NOT NULL,
    registration_number       TEXT NOT NULL,
    service_start_date        DATE NOT NULL,
    mileage_km                INTEGER NOT NULL,
    fuel_type                 TEXT NOT NULL,
    fuel_level_percent        REAL NOT NULL,
    engine_health_score       INTEGER NOT NULL,
    battery_health_percent    REAL NOT NULL,
    last_inspection_date      DATE NOT NULL,
    next_maintenance_due_km   INTEGER NOT NULL,
    gps_status                TEXT NOT NULL,
    door_status               TEXT NOT NULL,
    air_conditioning_status  TEXT NOT NULL,
    passenger_capacity        INTEGER NOT NULL,
    accessibility_features    TEXT NOT NULL,
    operational_status        TEXT NOT NULL,
    notes                     TEXT,
    recorded_at               DATE NOT NULL
);

INSERT INTO public_transport_vehicle_status VALUES (5001, 301, 'Bus', 'NY-AB1234', '2020-05-01', 120000, 'Diesel', 65.0, 78, 88.5, '2023-05-01', 15000, 'Online', 'Closed', 'Operational', 50, 'Ramp,Audio', 'In Service', 'Scheduled for tire rotation', '2023-05-02');
INSERT INTO public_transport_vehicle_status VALUES (5002, 302, 'Tram', 'NY-CD5678', '2019-03-15', 85000, 'Electric', 90.0, 85, 95.0, '2023-04-20', 10000, 'Online', 'Closed', 'Operational', 120, 'LowFloor', 'In Service', 'Battery health good', '2023-04-21');
INSERT INTO public_transport_vehicle_status VALUES (5003, 303, 'Bus', 'NY-EF9012', '2021-08-10', 60000, 'Hybrid', 45.0, 70, 80.0, '2023-03-15', 20000, 'Offline', 'Open', 'Maintenance', 45, 'Ramp', 'Out of Service', 'Awaiting engine repair', '2023-03-16');

-- Water quality station readings
CREATE TABLE water_quality_station_readings
(
    reading_id               INTEGER PRIMARY KEY,
    station_id               INTEGER NOT NULL,
    station_name             TEXT NOT NULL,
    collection_date          DATE NOT NULL,
    temperature_c            REAL NOT NULL,
    ph_level                 REAL NOT NULL,
    turbidity_ntu            REAL NOT NULL,
    dissolved_oxygen_mg_l    REAL NOT NULL,
    conductivity_us          REAL NOT NULL,
    nitrate_mg_l             REAL NOT NULL,
    phosphate_mg_l           REAL NOT NULL,
    lead_ppb                 REAL NOT NULL,
    arsenic_ppb              REAL NOT NULL,
    bacteria_cfu_per_100ml   INTEGER NOT NULL,
    sample_volume_l          REAL NOT NULL,
    analyst_name             TEXT NOT NULL,
    verification_status      TEXT NOT NULL,
    notes                    TEXT,
    created_at               DATE NOT NULL,
    source_type              TEXT NOT NULL
);

INSERT INTO water_quality_station_readings VALUES (9001, 401, 'LakeSide', '2023-06-01', 15.2, 7.4, 2.5, 8.1, 350.0, 0.3, 0.05, 0.02, 0.01, 120, 1.0, 'DrSmith', 'Verified', 'All parameters within limits', '2023-06-02', 'Surface');
INSERT INTO water_quality_station_readings VALUES (9002, 402, 'RiverBank', '2023-06-02', 12.8, 7.1, 5.0, 6.9, 410.0, 0.6, 0.08, 0.03, 0.02, 250, 1.2, 'DrJones', 'Verified', 'Slight increase in turbidity', '2023-06-03', 'Surface');
INSERT INTO water_quality_station_readings VALUES (9003, 403, 'WellSpring', '2023-06-01', 10.5, 7.8, 1.2, 9.5, 290.0, 0.1, 0.03, 0.01, 0.005, 30, 0.8, 'DrLee', 'Pending', 'Sample awaiting lab analysis', '2023-06-01', 'Ground');

-- Renewable energy farm performance
CREATE TABLE renewable_energy_farm_performance
(
    farm_id                  INTEGER PRIMARY KEY,
    farm_name                TEXT NOT NULL,
    location_latitude        REAL NOT NULL,
    location_longitude       REAL NOT NULL,
    farm_type                TEXT NOT NULL,
    installed_capacity_mw    REAL NOT NULL,
    generation_date          DATE NOT NULL,
    energy_generated_mwh     REAL NOT NULL,
    capacity_factor_percent  REAL NOT NULL,
    average_wind_speed_ms    REAL,
    solar_irradiance_w_m2    REAL,
    availability_percent     REAL NOT NULL,
    downtime_hours           REAL NOT NULL,
    maintenance_events       INTEGER NOT NULL,
    grid_connection_status   TEXT NOT NULL,
    emissions_avoided_tonnes REAL NOT NULL,
    remarks                  TEXT,
    recorded_at              DATE NOT NULL,
    operator_name            TEXT NOT NULL,
    data_source              TEXT NOT NULL
);

INSERT INTO renewable_energy_farm_performance VALUES (7001, 'WindParkNorth', 42.3500, -71.0500, 'Wind', 150.0, '2023-05-31', 32000.5, 24.3, 7.5, NULL, 98.0, 12.5, 4, 'Connected', 34000.0, 'Stable production', '2023-06-01', 'EcoPower', 'SCADA');
INSERT INTO renewable_energy_farm_performance VALUES (7002, 'SolarValley', 34.1200, -117.3100, 'Solar', 80.0, '2023-05-31', 12000.0, 17.1, NULL, 650.0, 95.5, 8.0, 2, 'Connected', 15000.0, 'Clear skies', '2023-06-01', 'SunEnergy', 'PVMonitor');
INSERT INTO renewable_energy_farm_performance VALUES (7003, 'HybridHills', 39.7400, -104.9900, 'Hybrid', 200.0, '2023-05-31', 45000.0, 26.7, 6.8, 600.0, 97.2, 10.0, 5, 'Connected', 48000.0, 'Mixed output', '2023-06-01', 'GreenTech', 'HybridSCADA');

-- Supplier quality audit
CREATE TABLE supplier_quality_audit
(
    audit_id                 INTEGER PRIMARY KEY,
    supplier_id              INTEGER NOT NULL,
    supplier_name            TEXT NOT NULL,
    audit_date               DATE NOT NULL,
    auditor                  TEXT NOT NULL,
    product_category         TEXT NOT NULL,
    compliance_score         INTEGER NOT NULL,
    defects_found            INTEGER NOT NULL,
    corrective_actions       INTEGER NOT NULL,
    follow_up_required       TEXT NOT NULL,
    next_audit_due          DATE NOT NULL,
    documentation_status    TEXT NOT NULL,
    sampling_method          TEXT NOT NULL,
    sample_size              INTEGER NOT NULL,
    average_lead_time_days   REAL NOT NULL,
    on_time_delivery_percent REAL NOT NULL,
    certifications_held      TEXT,
    remarks                  TEXT,
    created_at               DATE NOT NULL,
    source_system            TEXT NOT NULL
);

INSERT INTO supplier_quality_audit VALUES (11001, 501, 'AlphaComponents', '2023-04-15', 'LauraMiller', 'Electronics', 88, 3, 2, 'Yes', '2024-04-15', 'Complete', 'Random', 50, 12.5, 96.0, 'ISO9001,ISO14001', 'Improvement needed in packaging', '2023-04-16', 'QualityDB');
INSERT INTO supplier_quality_audit VALUES (11002, 502, 'BetaMetals', '2023-05-10', 'MarkDavis', 'Metals', 92, 1, 1, 'No', '2024-05-10', 'Complete', 'Stratified', 30, 9.8, 98.5, 'ISO9001', 'Excellent overall', '2023-05-11', 'QualityDB');
INSERT INTO supplier_quality_audit VALUES (11003, 503, 'GammaTextiles', '2023-03-20', 'SusanLee', 'Fabric', 75, 7, 5, 'Yes', '2024-03-20', 'Incomplete', 'Batch', 40, 14.2, 89.0, 'ISO9001,ISO45001', 'High defect rate in dye process', '2023-03-21', 'QualityDB');

-- Employee skill matrix
CREATE TABLE employee_skill_matrix
(
    employee_id            INTEGER PRIMARY KEY,
    first_name             TEXT NOT NULL,
    last_name              TEXT NOT NULL,
    department             TEXT NOT NULL,
    position_title         TEXT NOT NULL,
    skill_category         TEXT NOT NULL,
    skill_name             TEXT NOT NULL,
    proficiency_level      INTEGER NOT NULL,
    years_experience       REAL NOT NULL,
    last_certification_date DATE,
    certification_name     TEXT,
    training_hours_last_year INTEGER NOT NULL,
    last_training_date     DATE,
    mentorship_flag        TEXT NOT NULL,
    competency_verified    TEXT NOT NULL,
    notes                  TEXT,
    record_created         DATE NOT NULL,
    updated_by             TEXT NOT NULL,
    review_cycle           TEXT NOT NULL,
    active_flag            TEXT NOT NULL
);

INSERT INTO employee_skill_matrix VALUES (20001, 'John', 'Doe', 'IT', 'Data Engineer', 'Programming', 'Python', 5, 4.2, '2022-11-10', 'Data Engineering Cert', 40, '2023-04-01', 'Yes', 'Yes', 'Strong in ETL pipelines', '2023-04-02', 'HRSystem', 'Annual', 'Yes');
INSERT INTO employee_skill_matrix VALUES (20002, 'Emma', 'Smith', 'Finance', 'Analyst', 'Analytics', 'SQL', 4, 3.5, '2021-09-05', 'SQL Advanced', 30, '2023-03-15', 'No', 'Yes', 'Needs improvement in forecasting', '2023-03-16', 'HRSystem', 'SemiAnnual', 'Yes');
INSERT INTO employee_skill_matrix VALUES (20003, 'Liam', 'Brown', 'Operations', 'Manager', 'Leadership', 'Team Management', 5, 7.0, NULL, NULL, 20, '2023-02-20', 'Yes', 'Yes', 'Excellent leadership', '2023-02-21', 'HRSystem', 'Annual', 'Yes');

-- Digital advertising campaign metrics
CREATE TABLE digital_ad_campaign_metrics
(
    campaign_id                INTEGER PRIMARY KEY,
    campaign_name              TEXT NOT NULL,
    start_date                 DATE NOT NULL,
    end_date                   DATE NOT NULL,
    platform                   TEXT NOT NULL,
    total_impressions          INTEGER NOT NULL,
    total_clicks               INTEGER NOT NULL,
    click_through_rate_percent REAL NOT NULL,
    cost_per_click_usd         REAL NOT NULL,
    total_spend_usd            REAL NOT NULL,
    conversions                INTEGER NOT NULL,
    conversion_rate_percent    REAL NOT NULL,
    cost_per_acquisition_usd   REAL NOT NULL,
    average_position           REAL NOT NULL,
    quality_score              INTEGER NOT NULL,
    audience_targeting         TEXT NOT NULL,
    ad_format                  TEXT NOT NULL,
    creative_version           TEXT NOT NULL,
    notes                      TEXT,
    data_recorded_at           DATE NOT NULL
);

INSERT INTO digital_ad_campaign_metrics VALUES (3001, 'SummerSale2023', '2023-06-01', '2023-06-30', 'GoogleAds', 1500000, 45000, 3.0, 0.75, 33750.0, 1200, 2.67, 28.13, 1.5, 8, 'Age18-35', 'Search', 'V1', 'Strong performance in week 2', '2023-07-01');
INSERT INTO digital_ad_campaign_metrics VALUES (3002, 'HolidayPromo', '2023-12-01', '2023-12-31', 'Facebook', 2000000, 60000, 3.0, 0.60, 36000.0, 1500, 2.5, 24.00, 1.8, 7, 'AllAdults', 'Display', 'V2', 'Higher CPM observed', '2024-01-02');
INSERT INTO digital_ad_campaign_metrics VALUES (3003, 'ProductLaunch', '2023-09-15', '2023-10-15', 'LinkedIn', 800000, 20000, 2.5, 1.20, 24000.0, 800, 4.0, 30.00, 2.0, 9, 'Professionals', 'SponsoredContent', 'V1', 'Good lead quality', '2023-10-16');

-- Medical equipment maintenance log
CREATE TABLE medical_equipment_maintenance
(
    maintenance_id            INTEGER PRIMARY KEY,
    equipment_id              INTEGER NOT NULL,
    equipment_name            TEXT NOT NULL,
    serial_number             TEXT NOT NULL,
    department                TEXT NOT NULL,
    last_service_date        DATE NOT NULL,
    next_service_due_date    DATE NOT NULL,
    service_type              TEXT NOT NULL,
    technician_name           TEXT NOT NULL,
    service_duration_minutes  INTEGER NOT NULL,
    parts_replaced            TEXT,
    replacement_cost_usd      REAL,
    downtime_minutes          INTEGER NOT NULL,
    status_after_service      TEXT NOT NULL,
    calibration_performed     TEXT NOT NULL,
    notes                     TEXT,
    logged_at                 DATE NOT NULL,
    compliance_checked        TEXT NOT NULL,
    service_provider          TEXT NOT NULL,
    urgency_level             TEXT NOT NULL
);

INSERT INTO medical_equipment_maintenance VALUES (4001, 601, 'MRI Scanner', 'SN-MRI-2021', 'Radiology', '2023-03-10', '2024-03-10', 'Preventive', 'MikeTaylor', 180, 'CoolantPump', 2500.0, 30, 'Operational', 'Yes', 'No issues found', '2023-03-11', 'Yes', 'MedTech Services', 'Medium');
INSERT INTO medical_equipment_maintenance VALUES (4002, 602, 'Ventilator', 'SN-VEN-9876', 'ICU', '2023-05-01', '2023-11-01', 'Corrective', 'AnnaWhite', 90, 'Filter,Sensor', 400.0, 15, 'Operational', 'Yes', 'Replaced faulty sensor', '2023-05-02', 'Yes', 'HealthEquip Co', 'High');
INSERT INTO medical_equipment_maintenance VALUES (4003, 603, 'Defibrillator', 'SN-DEF-5432', 'Emergency', '2022-12-20', '2023-12-20', 'Preventive', 'JohnKim', 60, NULL, NULL, 0, 'Operational', 'No', 'Battery check performed', '2022-12-21', 'Yes', 'InHouse', 'Low');

-- Research project milestone tracking
CREATE TABLE research_project_milestone
(
    milestone_id             INTEGER PRIMARY KEY,
    project_id               INTEGER NOT NULL,
    project_name             TEXT NOT NULL,
    milestone_name           TEXT NOT NULL,
    planned_date             DATE NOT NULL,
    actual_date              DATE,
    status                   TEXT NOT NULL,
    responsible_party        TEXT NOT NULL,
    budget_allocated_usd     REAL NOT NULL,
    actual_spent_usd         REAL,
    percent_complete         REAL NOT NULL,
    risk_level               TEXT NOT NULL,
    dependencies             TEXT,
    deliverables             TEXT,
    notes                    TEXT,
    created_at               DATE NOT NULL,
    updated_at               DATE NOT NULL,
    sponsor_name             TEXT NOT NULL,
    reporting_frequency      TEXT NOT NULL
);

INSERT INTO research_project_milestone VALUES (8001, 901, 'AI Drug Discovery', 'Data Collection', '2023-01-15', '2023-01-18', 'Completed', 'DrAlice', 50000.0, 52000.0, 100.0, 'Low', NULL, 'Raw datasets', 'Collected from partner labs', '2023-01-20', '2023-01-20', 'PharmaCorp', 'Monthly');
INSERT INTO research_project_milestone VALUES (8002, 902, 'Quantum Computing Study', 'Prototype Development', '2023-04-01', NULL, 'InProgress', 'DrBob', 150000.0, 80000.0, 55.0, 'Medium', 'Data Collection', 'Prototype hardware', 'Awaiting component delivery', '2023-04-15', '2023-04-15', 'QuantumInc', 'Quarterly');
INSERT INTO research_project_milestone VALUES (8003, 903, 'Renewable Energy Grid Integration', 'Regulatory Approval', '2023-03-10', '2023-03-20', 'Completed', 'DrCarol', 75000.0, 73000.0, 100.0, 'Low', 'Prototype Development', 'Approval documents', 'Submitted to regulator', '2023-03-22', '2023-03-22', 'EnergyGov', 'Biannual');

-- Supplier contract details
CREATE TABLE supplier_contract_detail
(
    contract_id               INTEGER PRIMARY KEY,
    supplier_id               INTEGER NOT NULL,
    supplier_name             TEXT NOT NULL,
    contract_start_date       DATE NOT NULL,
    contract_end_date         DATE NOT NULL,
    contract_value_usd        REAL NOT NULL,
    payment_terms_days        INTEGER NOT NULL,
    renewal_option            TEXT NOT NULL,
    service_level_agreement   TEXT NOT NULL,
    performance_bonus_percent REAL,
    penalty_rate_percent      REAL,
    authorized_contact_name   TEXT NOT NULL,
    authorized_contact_email  TEXT NOT NULL,
    governing_law             TEXT NOT NULL,
    confidentiality_clause    TEXT NOT NULL,
    dispute_resolution        TEXT NOT NULL,
    amendment_history         TEXT,
    notes                     TEXT,
    created_at                DATE NOT NULL,
    last_modified_at          DATE NOT NULL
);

INSERT INTO supplier_contract_detail VALUES (60001, 701, 'SupplyCo', '2022-01-01', '2025-12-31', 1200000.0, 30, 'Option2Years', 'Gold', 5.0, 2.0, 'MichaelGreen', 'mgreen@supplyco.com', 'NYState', 'Standard', 'Arbitration', 'Amendment2023-03-15', 'Preferred supplier for electronics', '2023-04-01', '2023-04-01');
INSERT INTO supplier_contract_detail VALUES (60002, 702, 'LogiTrans', '2021-06-15', '2024-06-14', 800000.0, 45, 'NoRenewal', 'Silver', 3.0, 1.5, 'SarahBrown', 'sbrown@logitrans.com', 'California', 'Restricted', 'Mediation', 'Amendment2022-11-20', 'Logistics services', '2022-12-01', '2022-12-01');
INSERT INTO supplier_contract_detail VALUES (60003, 703, 'HealthSupplies', '2023-02-01', '2026-01-31', 500000.0, 60, 'Option1Year', 'Platinum', 7.0, 2.5, 'DavidLee', 'dlee@healthsupplies.com', 'Texas', 'Enhanced', 'Arbitration', NULL, 'Medical consumables', '2023-02-15', '2023-02-15');

-- Energy consumption log for facilities
CREATE TABLE energy_consumption_log
(
    log_id                     INTEGER PRIMARY KEY,
    facility_id                INTEGER NOT NULL,
    facility_name              TEXT NOT NULL,
    log_date                   DATE NOT NULL,
    electricity_kwh             REAL NOT NULL,
    natural_gas_therms         REAL NOT NULL,
    water_m3                   REAL NOT NULL,
    renewable_energy_kwh       REAL,
    peak_demand_kw             REAL,
    average_load_factor        REAL,
    carbon_emission_kg         REAL,
    energy_cost_usd            REAL,
    cost_per_kwh               REAL,
    billing_cycle              TEXT NOT NULL,
    meter_reading_start        REAL,
    meter_reading_end          REAL,
    notes                      TEXT,
    recorded_by                TEXT NOT NULL,
    created_at                 DATE NOT NULL,
    source_system              TEXT NOT NULL
);

INSERT INTO energy_consumption_log VALUES (90001, 801, 'Headquarters', '2023-05-31', 25000.0, 1200.0, 800.0, 5000.0, 150.0, 0.75, 21000.0, 32000.0, 1.28, 'Monthly', 102500.0, 127500.0, 'Normal consumption', 'EnergyTeam', '2023-06-01', 'EMS');
INSERT INTO energy_consumption_log VALUES (90002, 802, 'BranchNorth', '2023-05-31', 15000.0, 800.0, 500.0, 3000.0, 100.0, 0.68, 13000.0, 19000.0, 1.27, 'Monthly', 50300.0, 65300.0, 'Slight increase vs previous month', 'EnergyTeam', '2023-06-01', 'EMS');
INSERT INTO energy_consumption_log VALUES (90003, 803, 'DataCenter', '2023-05-31', 40000.0, 0.0, 0.0, 10000.0, 250.0, 0.80, 35000.0, 55000.0, 1.38, 'Monthly', 210000.0, 250000.0, 'Peak demand due to new servers', 'EnergyTeam', '2023-06-01', 'EMS');

-- Customer loyalty activity tracking
CREATE TABLE customer_loyalty_activity
(
    activity_id               INTEGER PRIMARY KEY,
    client_id                 INTEGER NOT NULL,
    loyalty_program_id        INTEGER NOT NULL,
    activity_date             DATE NOT NULL,
    activity_type             TEXT NOT NULL,
    points_earned             INTEGER NOT NULL,
    points_redeemed           INTEGER NOT NULL,
    transaction_id            INTEGER,
    channel                   TEXT NOT NULL,
    campaign_code             TEXT,
    status                    TEXT NOT NULL,
    notes                     TEXT,
    recorded_at               DATE NOT NULL,
    processed_by              TEXT NOT NULL,
    expiration_date           DATE,
    tier_level                TEXT,
    bonus_multiplier          REAL,
    referral_flag             TEXT,
    source_system             TEXT NOT NULL,
    last_updated              DATE NOT NULL
);

INSERT INTO customer_loyalty_activity VALUES (120001, 301, 1, '2023-05-20', 'Purchase', 150, 0, 4001, 'Online', 'SPRING23', 'Completed', 'Earned points from order', '2023-05-20', 'LoyaltyEngine', '2024-05-20', 'Gold', 1.0, 'No', 'CRM', '2023-05-21');
INSERT INTO customer_loyalty_activity VALUES (120002, 302, 1, '2023-06-01', 'Referral', 200, 0, NULL, 'MobileApp', 'REF2023', 'Pending', 'Referral pending verification', '2023-06-01', 'LoyaltyEngine', '2024-06-01', 'Platinum', 1.5, 'Yes', 'CRM', '2023-06-02');
INSERT INTO customer_loyalty_activity VALUES (120003, 303, 2, '2023-04-15', 'Redemption', 0, 300, 5002, 'InStore', 'WINTER22', 'Completed', 'Redeemed points for gift card', '2023-04-15', 'LoyaltyEngine', '2024-04-15', 'Silver', 1.0, 'No', 'CRM', '2023-04-16');

-- Regulatory audit summary records
CREATE TABLE regulatory_audit_summary
(
    audit_summary_id          INTEGER PRIMARY KEY,
    audit_id                  INTEGER NOT NULL,
    audit_name                TEXT NOT NULL,
    audit_date                DATE NOT NULL,
    regulator                 TEXT NOT NULL,
    scope                     TEXT NOT NULL,
    findings_count            INTEGER NOT NULL,
    high_risk_findings        INTEGER NOT NULL,
    medium_risk_findings      INTEGER NOT NULL,
    low_risk_findings         INTEGER NOT NULL,
    corrective_actions_taken   INTEGER NOT NULL,
    pending_actions           INTEGER NOT NULL,
    overall_compliance_score  REAL NOT NULL,
    compliance_status         TEXT NOT NULL,
    executive_summary         TEXT,
    detailed_report_path      TEXT,
    notes                     TEXT,
    created_at                DATE NOT NULL,
    reviewed_by               TEXT NOT NULL,
    status                    TEXT NOT NULL
);

INSERT INTO regulatory_audit_summary VALUES (210001, 9001, 'Quarterly Financial Audit', '2023-04-30', 'SEC', 'Financial Reporting', 12, 2, 3, 7, 8, 4, 88.5, 'Compliant', 'All major issues resolved', '/reports/qfa_2023_q1.pdf', 'No major concerns', '2023-05-01', 'JaneDoe', 'Closed');
INSERT INTO regulatory_audit_summary VALUES (210002, 9002, 'Data Privacy Inspection', '2023-06-15', 'GDPR', 'Customer Data Handling', 8, 1, 2, 5, 5, 3, 92.0, 'Compliant', 'Improved encryption applied', '/reports/dpi_2023_june.pdf', 'Follow‑up on storage policies', '2023-06-16', 'JohnSmith', 'Open');
INSERT INTO regulatory_audit_summary VALUES (210003, 9003, 'Environmental Compliance Review', '2023-05-20', 'EPA', 'Emissions Reporting', 15, 3, 4, 8, 10, 5, 80.0, 'Conditional', 'Pending corrective measures for emissions', '/reports/ecr_2023_may.pdf', 'Schedule site inspections', '2023-05-21', 'EmilyClark', 'InProgress');