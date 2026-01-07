-- Environmental sensor readings captured from various IoT devices
CREATE TABLE environmental_sensor_reading
(
    reading_id          INTEGER PRIMARY KEY,
    sensor_id           INTEGER NOT NULL,
    sensor_type         TEXT NOT NULL,
    location            TEXT NOT NULL,
    reading_timestamp   DATETIME NOT NULL,
    temperature         REAL NOT NULL,
    humidity            REAL NOT NULL,
    air_quality_index   INTEGER NOT NULL,
    noise_level         REAL NOT NULL,
    pm2_5               REAL NOT NULL,
    pm10                REAL NOT NULL,
    co2_ppm             REAL NOT NULL,
    ozone_ppb           REAL NOT NULL,
    latitude            REAL NOT NULL,
    longitude           REAL NOT NULL,
    battery_level       REAL NOT NULL,
    status              TEXT NOT NULL,
    calibration_date    DATE NOT NULL,
    firmware_version    TEXT NOT NULL,
    data_quality_flag   TEXT NOT NULL
);

INSERT INTO environmental_sensor_reading (reading_id, sensor_id, sensor_type, location, reading_timestamp, temperature, humidity, air_quality_index, noise_level, pm2_5, pm10, co2_ppm, ozone_ppb, latitude, longitude, battery_level, status, calibration_date, firmware_version, data_quality_flag) VALUES (1, 101, 'temperature', 'North Wing', '2024-12-01 08:00:00', 22.5, 45.0, 42, 55.2, 12.3, 25.6, 415.0, 30.2, 40.7128, -74.0060, 95.0, 'active', '2023-06-15', 'v1.2', 'good');
INSERT INTO environmental_sensor_reading (reading_id, sensor_id, sensor_type, location, reading_timestamp, temperature, humidity, air_quality_index, noise_level, pm2_5, pm10, co2_ppm, ozone_ppb, latitude, longitude, battery_level, status, calibration_date, firmware_version, data_quality_flag) VALUES (2, 102, 'humidity', 'South Corridor', '2024-12-01 08:05:00', 21.0, 50.2, 38, 48.7, 10.1, 22.4, 398.0, 28.5, 40.7130, -74.0055, 88.0, 'active', '2023-07-01', 'v1.2', 'good');
INSERT INTO environmental_sensor_reading (reading_id, sensor_id, sensor_type, location, reading_timestamp, temperature, humidity, air_quality_index, noise_level, pm2_5, pm10, co2_ppm, ozone_ppb, latitude, longitude, battery_level, status, calibration_date, firmware_version, data_quality_flag) VALUES (3, 103, 'air_quality', 'Lobby', '2024-12-01 08:10:00', 23.2, 47.5, 45, 60.3, 14.5, 28.9, 432.0, 32.1, 40.7125, -74.0065, 92.0, 'active', '2023-08-20', 'v1.3', 'good');

-- Aggregated traffic analysis for urban districts
CREATE TABLE urban_traffic_analysis
(
    analysis_id               INTEGER PRIMARY KEY,
    analysis_date             DATE NOT NULL,
    city                      TEXT NOT NULL,
    district_id               INTEGER NOT NULL,
    total_vehicle_count      INTEGER NOT NULL,
    avg_speed                 REAL NOT NULL,
    peak_hour                 TEXT NOT NULL,
    congestion_level          TEXT NOT NULL,
    incident_count            INTEGER NOT NULL,
    public_transport_ridership INTEGER NOT NULL,
    bike_share_usage          INTEGER NOT NULL,
    pedestrian_count          INTEGER NOT NULL,
    road_closure_flag         TEXT NOT NULL,
    weather_condition         TEXT NOT NULL,
    temperature               REAL NOT NULL,
    precipitation             REAL NOT NULL,
    visibility                REAL NOT NULL,
    air_quality_index         INTEGER NOT NULL,
    notes                     TEXT,
    analyst_name              TEXT NOT NULL
);

INSERT INTO urban_traffic_analysis (analysis_id, analysis_date, city, district_id, total_vehicle_count, avg_speed, peak_hour, congestion_level, incident_count, public_transport_ridership, bike_share_usage, pedestrian_count, road_closure_flag, weather_condition, temperature, precipitation, visibility, air_quality_index, notes, analyst_name) VALUES (1, '2024-11-30', 'Metropolis', 12, 15432, 32.5, '08:00-09:00', 'high', 5, 8420, 320, 2150, 'no', 'clear', 18.2, 0.0, 10.0, 45, 'Normal weekday', 'Alice Johnson');
INSERT INTO urban_traffic_analysis (analysis_id, analysis_date, city, district_id, total_vehicle_count, avg_speed, peak_hour, congestion_level, incident_count, public_transport_ridership, bike_share_usage, pedestrian_count, road_closure_flag, weather_condition, temperature, precipitation, visibility, air_quality_index, notes, analyst_name) VALUES (2, '2024-11-30', 'Metropolis', 8, 13210, 35.0, '17:00-18:00', 'medium', 2, 7400, 210, 1800, 'yes', 'rain', 16.5, 3.2, 5.0, 60, 'Roadwork on Main St', 'Bob Smith');
INSERT INTO urban_traffic_analysis (analysis_id, analysis_date, city, district_id, total_vehicle_count, avg_speed, peak_hour, congestion_level, incident_count, public_transport_ridership, bike_share_usage, pedestrian_count, road_closure_flag, weather_condition, temperature, precipitation, visibility, air_quality_index, notes, analyst_name) VALUES (3, '2024-11-30', 'Metropolis', 5, 15890, 30.8, '12:00-13:00', 'high', 7, 9100, 415, 2400, 'no', 'cloudy', 19.0, 0.5, 8.0, 50, 'Event near stadium', 'Carol Lee');

-- Digital advertising campaign details
CREATE TABLE digital_ad_campaign
(
    campaign_id           INTEGER PRIMARY KEY,
    campaign_name         TEXT NOT NULL,
    start_date            DATE NOT NULL,
    end_date              DATE NOT NULL,
    total_budget          REAL NOT NULL,
    daily_budget          REAL NOT NULL,
    target_audience       TEXT NOT NULL,
    platform              TEXT NOT NULL,
    impressions           INTEGER NOT NULL,
    clicks                INTEGER NOT NULL,
    conversions           INTEGER NOT NULL,
    cost_per_click        REAL NOT NULL,
    cost_per_conversion   REAL NOT NULL,
    click_through_rate    REAL NOT NULL,
    conversion_rate       REAL NOT NULL,
    status                TEXT NOT NULL,
    creative_type         TEXT NOT NULL,
    language              TEXT NOT NULL,
    region                TEXT NOT NULL,
    ad_group_count        INTEGER NOT NULL
);

INSERT INTO digital_ad_campaign (campaign_id, campaign_name, start_date, end_date, total_budget, daily_budget, target_audience, platform, impressions, clicks, conversions, cost_per_click, cost_per_conversion, click_through_rate, conversion_rate, status, creative_type, language, region, ad_group_count) VALUES (1, 'SummerSale2024', '2024-06-01', '2024-06-30', 50000.0, 1666.67, '18-35 urban', 'social', 2500000, 12500, 800, 4.0, 62.5, 0.5, 0.064, 'active', 'video', 'en', 'north_america', 5);
INSERT INTO digital_ad_campaign (campaign_id, campaign_name, start_date, end_date, total_budget, daily_budget, target_audience, platform, impressions, clicks, conversions, cost_per_click, cost_per_conversion, click_through_rate, conversion_rate, status, creative_type, language, region, ad_group_count) VALUES (2, 'WinterGearLaunch', '2024-11-15', '2024-12-15', 75000.0, 2500.0, '25-45 outdoor', 'search', 1800000, 7200, 540, 3.47, 46.3, 0.4, 0.075, 'planned', 'image', 'en', 'europe', 4);
INSERT INTO digital_ad_campaign (campaign_id, campaign_name, start_date, end_date, total_budget, daily_budget, target_audience, platform, impressions, clicks, conversions, cost_per_click, cost_per_conversion, click_through_rate, conversion_rate, status, creative_type, language, region, ad_group_count) VALUES (3, 'TechConference2025', '2024-09-01', '2024-10-01', 30000.0, 1000.0, '30-55 tech', 'email', 800000, 6400, 320, 0.156, 31.25, 0.8, 0.05, 'active', 'html', 'en', 'asia_pacific', 3);

-- Supplier risk assessment scores
CREATE TABLE supply_chain_risk_score
(
    risk_id                     INTEGER PRIMARY KEY,
    supplier_id                 INTEGER NOT NULL,
    product_category            TEXT NOT NULL,
    risk_score                  REAL NOT NULL,
    risk_level                  TEXT NOT NULL,
    last_assessment_date        DATE NOT NULL,
    financial_stability_score   REAL NOT NULL,
    geopolitical_risk_score     REAL NOT NULL,
    compliance_score            REAL NOT NULL,
    environmental_risk_score    REAL NOT NULL,
    delivery_delay_rate         REAL NOT NULL,
    defect_rate                 REAL NOT NULL,
    audit_count                 INTEGER NOT NULL,
    last_audit_date             DATE NOT NULL,
    mitigation_plan             TEXT NOT NULL,
    responsible_manager        TEXT NOT NULL,
    notes                       TEXT,
    created_at                  TIMESTAMP NOT NULL,
    updated_at                  TIMESTAMP NOT NULL,
    active_flag                 TEXT NOT NULL
);

INSERT INTO supply_chain_risk_score (risk_id, supplier_id, product_category, risk_score, risk_level, last_assessment_date, financial_stability_score, geopolitical_risk_score, compliance_score, environmental_risk_score, delivery_delay_rate, defect_rate, audit_count, last_audit_date, mitigation_plan, responsible_manager, notes, created_at, updated_at, active_flag) VALUES (1, 2001, 'electronics', 72.5, 'medium', '2024-10-01', 85.0, 40.0, 78.0, 30.0, 0.12, 0.03, 3, '2024-09-20', 'increase buffer stock', 'Dana White', 'Review quarterly', '2024-10-05 09:00:00', '2024-10-05 09:00:00', 'yes');
INSERT INTO supply_chain_risk_score (risk_id, supplier_id, product_category, risk_score, risk_level, last_assessment_date, financial_stability_score, geopolitical_risk_score, compliance_score, environmental_risk_score, delivery_delay_rate, defect_rate, audit_count, last_audit_date, mitigation_plan, responsible_manager, notes, created_at, updated_at, active_flag) VALUES (2, 2002, 'raw_materials', 88.0, 'high', '2024-09-15', 60.0, 70.0, 65.0, 55.0, 0.25, 0.08, 5, '2024-09-10', 'source alternative vendors', 'Eli Grant', 'High exposure to region X', '2024-09-16 10:30:00', '2024-09-16 10:30:00', 'yes');
INSERT INTO supply_chain_risk_score (risk_id, supplier_id, product_category, risk_score, risk_level, last_assessment_date, financial_stability_score, geopolitical_risk_score, compliance_score, environmental_risk_score, delivery_delay_rate, defect_rate, audit_count, last_audit_date, mitigation_plan, responsible_manager, notes, created_at, updated_at, active_flag) VALUES (3, 2003, 'packaging', 45.0, 'low', '2024-08-20', 92.0, 20.0, 88.0, 15.0, 0.05, 0.01, 2, '2024-08-15', 'maintain current contracts', 'Fiona Liu', NULL, '2024-08-21 08:45:00', '2024-08-21 08:45:00', 'yes');

-- Employee wellbeing survey results
CREATE TABLE employee_wellbeing_survey
(
    survey_id                INTEGER PRIMARY KEY,
    employee_id              INTEGER NOT NULL,
    survey_date              DATE NOT NULL,
    overall_satisfaction     INTEGER NOT NULL,
    work_life_balance        INTEGER NOT NULL,
    stress_level             INTEGER NOT NULL,
    physical_health          INTEGER NOT NULL,
    mental_health            INTEGER NOT NULL,
    engagement_score         INTEGER NOT NULL,
    manager_support          INTEGER NOT NULL,
    career_growth            INTEGER NOT NULL,
    compensation_satisfaction INTEGER NOT NULL,
    benefits_satisfaction    INTEGER NOT NULL,
    remote_work_preference   TEXT NOT NULL,
    comments                 TEXT,
    department               TEXT NOT NULL,
    location                 TEXT NOT NULL,
    tenure_years             INTEGER NOT NULL,
    response_time_minutes    INTEGER NOT NULL,
    follow_up_action         TEXT
);

INSERT INTO employee_wellbeing_survey (survey_id, employee_id, survey_date, overall_satisfaction, work_life_balance, stress_level, physical_health, mental_health, engagement_score, manager_support, career_growth, compensation_satisfaction, benefits_satisfaction, remote_work_preference, comments, department, location, tenure_years, response_time_minutes, follow_up_action) VALUES (1, 5001, '2024-10-12', 8, 7, 4, 9, 8, 8, 9, 7, 6, 7, 'full_remote', 'Feeling motivated', 'IT', 'NewYork', 3, 12, 'schedule one-on-one');
INSERT INTO employee_wellbeing_survey (survey_id, employee_id, survey_date, overall_satisfaction, work_life_balance, stress_level, physical_health, mental_health, engagement_score, manager_support, career_growth, compensation_satisfaction, benefits_satisfaction, remote_work_preference, comments, department, location, tenure_years, response_time_minutes, follow_up_action) VALUES (2, 5002, '2024-10-12', 6, 5, 6, 7, 6, 6, 7, 5, 5, 6, 'hybrid', 'Need more training', 'Finance', 'Chicago', 5, 15, 'provide mentorship');
INSERT INTO employee_wellbeing_survey (survey_id, employee_id, survey_date, overall_satisfaction, work_life_balance, stress_level, physical_health, mental_health, engagement_score, manager_support, career_growth, compensation_satisfaction, benefits_satisfaction, remote_work_preference, comments, department, location, tenure_years, response_time_minutes, follow_up_action) VALUES (3, 5003, '2024-10-12', 9, 8, 3, 9, 9, 9, 9, 8, 8, 9, 'on_site', NULL, 'HR', 'LosAngeles', 2, 10, 'recognition program');

-- Log of customer interactions across channels
CREATE TABLE customer_engagement_channel_log
(
    log_id                INTEGER PRIMARY KEY,
    customer_id           INTEGER NOT NULL,
    channel_type          TEXT NOT NULL,
    interaction_timestamp DATETIME NOT NULL,
    interaction_type      TEXT NOT NULL,
    content_id            INTEGER,
    campaign_id           INTEGER,
    outcome               TEXT NOT NULL,
    duration_seconds      INTEGER NOT NULL,
    satisfaction_score    INTEGER,
    agent_id              INTEGER,
    notes                 TEXT,
    device_type           TEXT,
    os_version            TEXT,
    app_version           TEXT,
    location              TEXT,
    ip_address            TEXT,
    country               TEXT,
    city                  TEXT,
    response_required_flag TEXT NOT NULL
);

INSERT INTO customer_engagement_channel_log (log_id, customer_id, channel_type, interaction_timestamp, interaction_type, content_id, campaign_id, outcome, duration_seconds, satisfaction_score, agent_id, notes, device_type, os_version, app_version, location, ip_address, country, city, response_required_flag) VALUES (1, 9001, 'email', '2024-11-20 09:15:00', 'open', 1201, 301, 'opened', 0, 5, NULL, NULL, 'desktop', 'Windows10', '2.1.0', 'NewYork', '192.168.10.5', 'USA', 'New York', 'no');
INSERT INTO customer_engagement_channel_log (log_id, customer_id, channel_type, interaction_timestamp, interaction_type, content_id, campaign_id, outcome, duration_seconds, satisfaction_score, agent_id, notes, device_type, os_version, app_version, location, ip_address, country, city, response_required_flag) VALUES (2, 9002, 'chat', '2024-11-20 10:05:00', 'message', 1302, 302, 'resolved', 300, 9, 2001, 'Issue resolved quickly', 'mobile', 'iOS14', '3.0.1', 'Chicago', '10.0.0.45', 'USA', 'Chicago', 'no');
INSERT INTO customer_engagement_channel_log (log_id, customer_id, channel_type, interaction_timestamp, interaction_type, content_id, campaign_id, outcome, duration_seconds, satisfaction_score, agent_id, notes, device_type, os_version, app_version, location, ip_address, country, city, response_required_flag) VALUES (3, 9003, 'phone', '2024-11-20 11:20:00', 'call', NULL, 303, 'escalated', 600, 4, 2002, 'Requested supervisor', 'landline', NULL, NULL, 'LosAngeles', '172.16.2.12', 'USA', 'Los Angeles', 'yes');

-- Snapshot of currency exchange rates at specific times
CREATE TABLE currency_market_snapshot
(
    snapshot_id            INTEGER PRIMARY KEY,
    snapshot_date          DATE NOT NULL,
    base_currency          TEXT NOT NULL,
    target_currency        TEXT NOT NULL,
    exchange_rate          REAL NOT NULL,
    bid_price              REAL NOT NULL,
    ask_price              REAL NOT NULL,
    high_24h               REAL NOT NULL,
    low_24h                REAL NOT NULL,
    volume_24h             REAL NOT NULL,
    market_cap             REAL NOT NULL,
    source                 TEXT NOT NULL,
    provider               TEXT NOT NULL,
    last_updated           TIMESTAMP NOT NULL,
    volatility_24h         REAL NOT NULL,
    moving_average_7d     REAL NOT NULL,
    moving_average_30d    REAL NOT NULL,
    spread                 REAL NOT NULL,
    status                 TEXT NOT NULL,
    notes                  TEXT,
    created_by             TEXT NOT NULL
);

INSERT INTO currency_market_snapshot (snapshot_id, snapshot_date, base_currency, target_currency, exchange_rate, bid_price, ask_price, high_24h, low_24h, volume_24h, market_cap, source, provider, last_updated, volatility_24h, moving_average_7d, moving_average_30d, spread, status, notes, created_by) VALUES (1, '2024-11-20', 'USD', 'EUR', 0.913, 0.9125, 0.9135, 0.920, 0.905, 1500000, 920000000, 'central_bank', 'FXCorp', '2024-11-20 12:00:00', 0.015, 0.914, 0.910, 0.0010, 'active', NULL, 'system');
INSERT INTO currency_market_snapshot (snapshot_id, snapshot_date, base_currency, target_currency, exchange_rate, bid_price, ask_price, high_24h, low_24h, volume_24h, market_cap, source, provider, last_updated, volatility_24h, moving_average_7d, moving_average_30d, spread, status, notes, created_by) VALUES (2, '2024-11-20', 'USD', 'JPY', 149.35, 149.30, 149.40, 151.00, 147.80, 2100000, 1490000000, 'central_bank', 'FXCorp', '2024-11-20 12:00:00', 0.020, 149.10, 148.50, 0.10, 'active', NULL, 'system');
INSERT INTO currency_market_snapshot (snapshot_id, snapshot_date, base_currency, target_currency, exchange_rate, bid_price, ask_price, high_24h, low_24h, volume_24h, market_cap, source, provider, last_updated, volatility_24h, moving_average_7d, moving_average_30d, spread, status, notes, created_by) VALUES (3, '2024-11-20', 'USD', 'GBP', 0.785, 0.7845, 0.7855, 0.792, 0.778, 900000, 785000000, 'central_bank', 'FXCorp', '2024-11-20 12:00:00', 0.012, 0.786, 0.783, 0.0010, 'active', NULL, 'system');

-- Detailed energy audit information for facilities
CREATE TABLE facility_energy_audit_detail
(
    audit_id                 INTEGER PRIMARY KEY,
    facility_id              INTEGER NOT NULL,
    audit_date               DATE NOT NULL,
    auditor_name             TEXT NOT NULL,
    total_energy_consumption REAL NOT NULL,
    electricity_consumption  REAL NOT NULL,
    gas_consumption          REAL NOT NULL,
    water_consumption        REAL NOT NULL,
    renewable_energy_percentage REAL NOT NULL,
    peak_demand              REAL NOT NULL,
    demand_charge            REAL NOT NULL,
    energy_efficiency_score  REAL NOT NULL,
    recommended_actions      TEXT NOT NULL,
    implementation_status    TEXT NOT NULL,
    follow_up_date           DATE,
    notes                    TEXT,
    building_area_sqft       REAL NOT NULL,
    occupancy_rate           REAL NOT NULL,
    hvac_efficiency          REAL NOT NULL,
    lighting_efficiency      REAL NOT NULL,
    compliance_status        TEXT NOT NULL
);

INSERT INTO facility_energy_audit_detail (audit_id, facility_id, audit_date, auditor_name, total_energy_consumption, electricity_consumption, gas_consumption, water_consumption, renewable_energy_percentage, peak_demand, demand_charge, energy_efficiency_score, recommended_actions, implementation_status, follow_up_date, notes, building_area_sqft, occupancy_rate, hvac_efficiency, lighting_efficiency, compliance_status) VALUES (1, 301, '2024-09-15', 'Laura Chen', 1250000.0, 950000.0, 200000.0, 100000.0, 22.5, 3000.0, 15000.0, 84.0, 'install LED lighting; upgrade HVAC filters', 'in_progress', '2024-12-01', NULL, 250000.0, 0.95, 0.88, 0.92, 'compliant');
INSERT INTO facility_energy_audit_detail (audit_id, facility_id, audit_date, auditor_name, total_energy_consumption, electricity_consumption, gas_consumption, water_consumption, renewable_energy_percentage, peak_demand, demand_charge, energy_efficiency_score, recommended_actions, implementation_status, follow_up_date, notes, building_area_sqft, occupancy_rate, hvac_efficiency, lighting_efficiency, compliance_status) VALUES (2, 302, '2024-10-05', 'Mark Patel', 980000.0, 780000.0, 150000.0, 50000.0, 30.0, 2500.0, 12000.0, 88.5, 'add solar panels; implement demand response program', 'planned', '2025-02-15', 'Budget approved', 180000.0, 0.90, 0.91, 0.94, 'compliant');
INSERT INTO facility_energy_audit_detail (audit_id, facility_id, audit_date, auditor_name, total_energy_consumption, electricity_consumption, gas_consumption, water_consumption, renewable_energy_percentage, peak_demand, demand_charge, energy_efficiency_score, recommended_actions, implementation_status, follow_up_date, notes, building_area_sqft, occupancy_rate, hvac_efficiency, lighting_efficiency, compliance_status) VALUES (3, 303, '2024-08-20', 'Sofia Ramos', 1500000.0, 1200000.0, 250000.0, 150000.0, 15.0, 3500.0, 18000.0, 78.0, 'replace aging boilers; retrofit windows', 'completed', '2024-11-30', 'Energy savings realized', 300000.0, 0.85, 0.79, 0.82, 'non_compliant');

-- Results of marketing experiments
CREATE TABLE marketing_experiment_result
(
    experiment_id               INTEGER PRIMARY KEY,
    experiment_name             TEXT NOT NULL,
    start_date                  DATE NOT NULL,
    end_date                    DATE NOT NULL,
    hypothesis                  TEXT NOT NULL,
    variant_a_description       TEXT NOT NULL,
    variant_b_description       TEXT NOT NULL,
    metric_name                 TEXT NOT NULL,
    variant_a_metric            REAL NOT NULL,
    variant_b_metric            REAL NOT NULL,
    lift_percentage             REAL NOT NULL,
    p_value                     REAL NOT NULL,
    significance_level          REAL NOT NULL,
    confidence_interval_low     REAL NOT NULL,
    confidence_interval_high    REAL NOT NULL,
    sample_size                 INTEGER NOT NULL,
    segment                     TEXT NOT NULL,
    status                      TEXT NOT NULL,
    conclusions                 TEXT NOT NULL,
    analyst                     TEXT NOT NULL
);

INSERT INTO marketing_experiment_result (experiment_id, experiment_name, start_date, end_date, hypothesis, variant_a_description, variant_b_description, metric_name, variant_a_metric, variant_b_metric, lift_percentage, p_value, significance_level, confidence_interval_low, confidence_interval_high, sample_size, segment, status, conclusions, analyst) VALUES (1, 'CTA_Button_Color', '2024-06-01', '2024-06-15', 'Red button increases clicks', 'Red button', 'Blue button', 'click_through_rate', 0.058, 0.065, 12.07, 0.021, 0.05, 0.054, 0.066, 50000, 'all_users', 'completed', 'Blue button outperformed red', 'Natalie Green');
INSERT INTO marketing_experiment_result (experiment_id, experiment_name, start_date, end_date, hypothesis, variant_a_description, variant_b_description, metric_name, variant_a_metric, variant_b_metric, lift_percentage, p_value, significance_level, confidence_interval_low, confidence_interval_high, sample_size, segment, status, conclusions, analyst) VALUES (2, 'Email_Subject_Line', '2024-07-01', '2024-07-07', 'Personalized subject boosts open rate', 'First name subject', 'Generic subject', 'open_rate', 0.212, 0.195, -8.02, 0.035, 0.05, 0.190, 0.225, 30000, 'newsletter_subscribers', 'completed', 'Personalized subject performed better', 'Omar Khalil');
INSERT INTO marketing_experiment_result (experiment_id, experiment_name, start_date, end_date, hypothesis, variant_a_description, variant_b_description, metric_name, variant_a_metric, variant_b_metric, lift_percentage, p_value, significance_level, confidence_interval_low, confidence_interval_high, sample_size, segment, status, conclusions, analyst) VALUES (3, 'Landing_Page_Layout', '2024-08-10', '2024-08-20', 'Long form copy increases conversions', 'Long copy', 'Short copy', 'conversion_rate', 0.045, 0.052, 15.56, 0.018, 0.05, 0.040, 0.060, 40000, 'new_visitors', 'completed', 'Short copy led to higher conversions', 'Priya Desai');

-- Legal compliance documentation metadata
CREATE TABLE legal_compliance_document
(
    doc_id                     INTEGER PRIMARY KEY,
    title                      TEXT NOT NULL,
    version                    TEXT NOT NULL,
    effective_date             DATE NOT NULL,
    expiry_date                DATE,
    regulator                  TEXT NOT NULL,
    jurisdiction               TEXT NOT NULL,
    compliance_area            TEXT NOT NULL,
    status                     TEXT NOT NULL,
    last_review_date           DATE NOT NULL,
    reviewed_by                TEXT NOT NULL,
    approval_date              DATE NOT NULL,
    approved_by                TEXT NOT NULL,
    document_type              TEXT NOT NULL,
    file_path                  TEXT NOT NULL,
    confidentiality_level      TEXT NOT NULL,
    retention_period_months    INTEGER NOT NULL,
    related_policy_id          INTEGER,
    notes                      TEXT,
    created_at                 TIMESTAMP NOT NULL
);

INSERT INTO legal_compliance_document (doc_id, title, version, effective_date, expiry_date, regulator, jurisdiction, compliance_area, status, last_review_date, reviewed_by, approval_date, approved_by, document_type, file_path, confidentiality_level, retention_period_months, related_policy_id, notes, created_at) VALUES (1, 'Data Protection Policy', '1.2', '2023-01-01', NULL, 'DataAuthority', 'USA', 'data_privacy', 'active', '2024-09-01', 'Emma White', '2023-12-15', 'James Clark', 'policy', '/docs/dpp_v1.2.pdf', 'confidential', 60, NULL, NULL, '2023-01-01 09:00:00');
INSERT INTO legal_compliance_document (doc_id, title, version, effective_date, expiry_date, regulator, jurisdiction, compliance_area, status, last_review_date, reviewed_by, approval_date, approved_by, document_type, file_path, confidentiality_level, retention_period_months, related_policy_id, notes, created_at) VALUES (2, 'Anti Money Laundering Procedure', '3.0', '2022-07-15', NULL, 'FinancialRegulator', 'EU', 'aml', 'active', '2024-08-20', 'Liam O\'Connor', '2022-07-20', 'Sofia Martinez', 'procedure', '/docs/aml_v3.0.pdf', 'restricted', 120, 7, NULL, '2022-07-15 10:30:00');
INSERT INTO legal_compliance_document (doc_id, title, version, effective_date, expiry_date, regulator, jurisdiction, compliance_area, status, last_review_date, reviewed_by, approval_date, approved_by, document_type, file_path, confidentiality_level, retention_period_months, related_policy_id, notes, created_at) VALUES (3, 'Environmental Impact Assessment', '2.1', '2021-03-01', '2026-03-01', 'EnvAgency', 'Canada', 'environment', 'archived', '2024-07-15', 'Olivia Brown', '2021-03-05', 'Michael Green', 'assessment', '/docs/eia_v2.1.pdf', 'public', 36, NULL, 'Final version', '2021-03-01 08:15:00');