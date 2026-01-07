-- Production statistics for card printing batches
CREATE TABLE card_production_stats (
    batch_id INTEGER PRIMARY KEY AUTOINCREMENT,
    plant_code TEXT,
    shift TEXT,
    start_date DATE,
    end_date DATE,
    total_printed INTEGER,
    defect_rate REAL,
    average_thickness REAL,
    ink_color_profile TEXT,
    paper_type TEXT,
    press_speed_rpm INTEGER,
    operator_id INTEGER,
    maintenance_flag INTEGER,
    energy_consumption_kwh REAL,
    water_usage_liters REAL,
    waste_generated_kg REAL,
    quality_score INTEGER,
    notes TEXT,
    supervisor_name TEXT,
    production_line TEXT,
    lot_number TEXT
);

INSERT INTO card_production_stats (batch_id, plant_code, shift, start_date, end_date, total_printed, defect_rate, average_thickness, ink_color_profile, paper_type, press_speed_rpm, operator_id, maintenance_flag, energy_consumption_kwh, water_usage_liters, waste_generated_kg, quality_score, notes, supervisor_name, production_line, lot_number)
VALUES (1, 'PLNT01', 'Night', '2023-01-01', '2023-01-02', 500000, 0.02, 0.1, 'CMYK', 'Gloss', 1200, 101, 0, 1500.5, 3000.2, 120.0, 85, 'All good', 'JohnDoe', 'LineA', 'LOT123');

INSERT INTO card_production_stats (batch_id, plant_code, shift, start_date, end_date, total_printed, defect_rate, average_thickness, ink_color_profile, paper_type, press_speed_rpm, operator_id, maintenance_flag, energy_consumption_kwh, water_usage_liters, waste_generated_kg, quality_score, notes, supervisor_name, production_line, lot_number)
VALUES (2, 'PLNT02', 'Day', '2023-02-10', '2023-02-11', 620000, 0.015, 0.09, 'RGB', 'Matte', 1300, 102, 1, 1600.0, 3100.0, 115.0, 90, 'Minor delay', 'JaneSmith', 'LineB', 'LOT124');

INSERT INTO card_production_stats (batch_id, plant_code, shift, start_date, end_date, total_printed, defect_rate, average_thickness, ink_color_profile, paper_type, press_speed_rpm, operator_id, maintenance_flag, energy_consumption_kwh, water_usage_liters, waste_generated_kg, quality_score, notes, supervisor_name, production_line, lot_number)
VALUES (3, 'PLNT03', 'Evening', '2023-03-15', '2023-03-16', 480000, 0.025, 0.11, 'CMYK', 'Gloss', 1150, 103, 0, 1450.3, 2950.7, 130.0, 80, 'Quality issue corrected', 'MikeBrown', 'LineC', 'LOT125');

-- Demographic information about card collectors
CREATE TABLE collector_demographics (
    collector_id INTEGER PRIMARY KEY AUTOINCREMENT,
    country TEXT,
    region TEXT,
    age INTEGER,
    gender TEXT,
    primary_language TEXT,
    years_collecting INTEGER,
    collection_size INTEGER,
    avg_spent_per_year REAL,
    membership_level TEXT,
    newsletter_subscribed INTEGER,
    preferred_format TEXT,
    favorite_set TEXT,
    online_presence TEXT,
    social_media_followers INTEGER,
    avg_daily_visits INTEGER,
    loyalty_score INTEGER,
    last_purchase_date DATE,
    registration_date DATE,
    referral_source TEXT
);

INSERT INTO collector_demographics (collector_id, country, region, age, gender, primary_language, years_collecting, collection_size, avg_spent_per_year, membership_level, newsletter_subscribed, preferred_format, favorite_set, online_presence, social_media_followers, avg_daily_visits, loyalty_score, last_purchase_date, registration_date, referral_source)
VALUES (1, 'USA', 'NorthAmerica', 34, 'Male', 'English', 8, 1200, 350.75, 'Gold', 1, 'Foil', 'IKO', 'Yes', 4500, 15, 92, '2023-12-20', '2020-06-15', 'Friend');

INSERT INTO collector_demographics (collector_id, country, region, age, gender, primary_language, years_collecting, collection_size, avg_spent_per_year, membership_level, newsletter_subscribed, preferred_format, favorite_set, online_presence, social_media_followers, avg_daily_visits, loyalty_score, last_purchase_date, registration_date, referral_source)
VALUES (2, 'Germany', 'Europe', 28, 'Female', 'German', 5, 800, 210.40, 'Silver', 0, 'Standard', 'THB', 'No', 1200, 8, 78, '2023-11-05', '2021-03-22', 'Ad');

INSERT INTO collector_demographics (collector_id, country, region, age, gender, primary_language, years_collecting, collection_size, avg_spent_per_year, membership_level, newsletter_subscribed, preferred_format, favorite_set, online_presence, social_media_followers, avg_daily_visits, loyalty_score, last_purchase_date, registration_date, referral_source)
VALUES (3, 'Japan', 'Asia', 42, 'Male', 'Japanese', 12, 2100, 480.20, 'Platinum', 1, 'Foil', 'M20', 'Yes', 8000, 20, 97, '2023-12-02', '2019-11-10', 'Website');

-- Fee details for marketplace transactions
CREATE TABLE marketplace_transaction_fees (
    fee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    transaction_id INTEGER,
    fee_type TEXT,
    amount REAL,
    currency TEXT,
    applied_date DATE,
    applied_by TEXT,
    notes TEXT,
    percentage REAL,
    min_fee REAL,
    max_fee REAL,
    is_reversible INTEGER,
    reversal_date DATE,
    audit_user TEXT,
    audit_timestamp DATE,
    region TEXT,
    settlement_status TEXT,
    settlement_date DATE,
    external_reference TEXT,
    tax_included INTEGER,
    tax_amount REAL
);

INSERT INTO marketplace_transaction_fees (fee_id, transaction_id, fee_type, amount, currency, applied_date, applied_by, notes, percentage, min_fee, max_fee, is_reversible, reversal_date, audit_user, audit_timestamp, region, settlement_status, settlement_date, external_reference, tax_included, tax_amount)
VALUES (1, 10001, 'Listing', 0.25, 'USD', '2023-10-01', 'System', 'Standard fee', 2.5, 0.1, 1.0, 1, NULL, 'admin', '2023-10-01', 'NA', 'Settled', '2023-10-02', 1, 0.05);

INSERT INTO marketplace_transaction_fees (fee_id, transaction_id, fee_type, amount, currency, applied_date, applied_by, notes, percentage, min_fee, max_fee, is_reversible, reversal_date, audit_user, audit_timestamp, region, settlement_status, settlement_date, external_reference, tax_included, tax_amount)
VALUES (2, 10002, 'Transaction', 2.00, 'USD', '2023-10-03', 'System', 'Buyer fee', 3.0, 0.5, 5.0, 0, NULL, 'admin', '2023-10-03', 'EU', 'Pending', NULL, 1, 0.40);

INSERT INTO marketplace_transaction_fees (fee_id, transaction_id, fee_type, amount, currency, applied_date, applied_by, notes, percentage, min_fee, max_fee, is_reversible, reversal_date, audit_user, audit_timestamp, region, settlement_status, settlement_date, external_reference, tax_included, tax_amount)
VALUES (3, 10003, 'Service', 1.50, 'USD', '2023-10-05', 'System', 'Premium service', 1.5, 0.2, 2.0, 1, '2023-10-07', 'admin', '2023-10-05', 'ASIA', 'Settled', '2023-10-06', 'REF12345', 0, 0.00);

-- Workflow tracking for set design projects
CREATE TABLE set_design_workflow (
    workflow_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    phase TEXT,
    start_date DATE,
    end_date DATE,
    designer_id INTEGER,
    art_director_id INTEGER,
    status TEXT,
    review_comments TEXT,
    asset_count INTEGER,
    revision_number INTEGER,
    approved_by TEXT,
    approval_date DATE,
    estimated_cost REAL,
    actual_cost REAL,
    risk_level TEXT,
    contingency_plan TEXT,
    milestone_name TEXT,
    milestone_due DATE,
    notes TEXT
);

INSERT INTO set_design_workflow (workflow_id, set_code, phase, start_date, end_date, designer_id, art_director_id, status, review_comments, asset_count, revision_number, approved_by, approval_date, estimated_cost, actual_cost, risk_level, contingency_plan, milestone_name, milestone_due, notes)
VALUES (1, 'IKO', 'Concept', '2023-01-05', '2023-02-10', 201, 301, 'InProgress', 'Initial sketches', 120, 1, 'LeadArt', '2023-02-12', 25000.00, 0.0, 'Medium', 'Reserve budget', 'Concept Approval', '2023-02-15', 'N/A');

INSERT INTO set_design_workflow (workflow_id, set_code, phase, start_date, end_date, designer_id, art_director_id, status, review_comments, asset_count, revision_number, approved_by, approval_date, estimated_cost, actual_cost, risk_level, contingency_plan, milestone_name, milestone_due, notes)
VALUES (2, 'THB', 'Artwork', '2023-03-01', '2023-04-20', 202, 302, 'Completed', 'All art finalized', 300, 3, 'ChiefArt', '2023-04-25', 60000.00, 59000.00, 'Low', 'None', 'Artwork Signoff', '2023-04-30', 'All assets delivered');

INSERT INTO set_design_workflow (workflow_id, set_code, phase, start_date, end_date, designer_id, art_director_id, status, review_comments, asset_count, revision_number, approved_by, approval_date, estimated_cost, actual_cost, risk_level, contingency_plan, milestone_name, milestone_due, notes)
VALUES (3, 'M20', 'Production', '2023-05-10', '2023-06-30', 203, 303, 'Pending', 'Awaiting materials', 0, 0, NULL, NULL, 35000.00, 0.0, 'High', 'Alternate supplier', 'Production Start', '2023-06-15', 'Materials delayed');

-- Staffing details for event security personnel
CREATE TABLE event_security_staffing (
    staff_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    role TEXT,
    shift_start DATE,
    shift_end DATE,
    staff_name TEXT,
    certification_level TEXT,
    background_check_passed INTEGER,
    assigned_area TEXT,
    contact_number TEXT,
    emergency_contact TEXT,
    hourly_rate REAL,
    hours_assigned INTEGER,
    notes TEXT,
    supervisor_id INTEGER,
    equipment_issued TEXT,
    badge_number TEXT,
    lunch_break_minutes INTEGER,
    overtime_authorized INTEGER,
    incident_reports INTEGER
);

INSERT INTO event_security_staffing (staff_id, event_id, role, shift_start, shift_end, staff_name, certification_level, background_check_passed, assigned_area, contact_number, emergency_contact, hourly_rate, hours_assigned, notes, supervisor_id, equipment_issued, badge_number, lunch_break_minutes, overtime_authorized, incident_reports)
VALUES (1, 5001, 'GateGuard', '2023-11-01', '2023-11-02', 'AliceGreen', 'Level2', 1, 'MainEntrance', '5551234', '5555678', 18.5, 12, 'No issues', 9001, 'Radio,Flashlight', 'BG001', 30, 0, 0);

INSERT INTO event_security_staffing (staff_id, event_id, role, shift_start, shift_end, staff_name, certification_level, background_check_passed, assigned_area, contact_number, emergency_contact, hourly_rate, hours_assigned, notes, supervisor_id, equipment_issued, badge_number, lunch_break_minutes, overtime_authorized, incident_reports)
VALUES (2, 5001, 'Patrol', '2023-11-01', '2023-11-02', 'BobWhite', 'Level3', 1, 'Hallways', '5552345', '5556789', 20.0, 10, 'Minor disturbance', 9002, 'Radio', 'PW002', 45, 1, 1);

INSERT INTO event_security_staffing (staff_id, event_id, role, shift_start, shift_end, staff_name, certification_level, background_check_passed, assigned_area, contact_number, emergency_contact, hourly_rate, hours_assigned, notes, supervisor_id, equipment_issued, badge_number, lunch_break_minutes, overtime_authorized, incident_reports)
VALUES (3, 5002, 'CrowdControl', '2023-12-05', '2023-12-06', 'CarolBlue', 'Level1', 1, 'StageArea', '5553456', '5557890', 17.0, 14, 'All clear', 9003, 'Whistle,Radio', 'CC003', 60, 0, 0);

-- Queue tracking for digital asset rendering jobs
CREATE TABLE digital_asset_render_queue (
    render_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id TEXT,
    queue_timestamp DATE,
    priority INTEGER,
    render_status TEXT,
    attempted_runs INTEGER,
    last_error TEXT,
    resolution TEXT,
    format TEXT,
    file_size_mb REAL,
    estimated_time_minutes REAL,
    assigned_engine TEXT,
    gpu_type TEXT,
    cpu_cores INTEGER,
    memory_gb REAL,
    output_path TEXT,
    created_by TEXT,
    approved_by TEXT,
    approval_date DATE,
    notes TEXT,
    version_number INTEGER
);

INSERT INTO digital_asset_render_queue (render_id, asset_id, queue_timestamp, priority, render_status, attempted_runs, last_error, resolution, format, file_size_mb, estimated_time_minutes, assigned_engine, gpu_type, cpu_cores, memory_gb, output_path, created_by, approved_by, approval_date, notes, version_number)
VALUES (1, 'ASSET001', '2023-09-01', 5, 'Pending', 0, '', '1920x1080', 'PNG', 15.2, 30.0, 'EngineX', 'RTX3080', 8, 32.0, '/renders/asset001_v1.png', 'artistA', 'leadB', '2023-09-02', 'First pass', 1);

INSERT INTO digital_asset_render_queue (render_id, asset_id, queue_timestamp, priority, render_status, attempted_runs, last_error, resolution, format, file_size_mb, estimated_time_minutes, assigned_engine, gpu_type, cpu_cores, memory_gb, output_path, created_by, approved_by, approval_date, notes, version_number)
VALUES (2, 'ASSET002', '2023-09-02', 3, 'Running', 1, 'Timeout error', '3840x2160', 'EXR', 45.8, 120.0, 'EngineY', 'RTX3090', 12, 64.0, '/renders/asset002_v2.exr', 'artistC', 'leadD', '2023-09-03', 'Retry after fix', 2);

INSERT INTO digital_asset_render_queue (render_id, asset_id, queue_timestamp, priority, render_status, attempted_runs, last_error, resolution, format, file_size_mb, estimated_time_minutes, assigned_engine, gpu_type, cpu_cores, memory_gb, output_path, created_by, approved_by, approval_date, notes, version_number)
VALUES (3, 'ASSET003', '2023-09-03', 1, 'Completed', 2, '', '1280x720', 'MP4', 200.0, 45.0, 'EngineZ', 'RTX3070', 6, 24.0, '/renders/asset003_final.mp4', 'artistE', 'leadF', '2023-09-04', 'Quality approved', 3);

-- Energy consumption records for venues
CREATE TABLE venue_energy_consumption (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    date DATE,
    electricity_kwh REAL,
    gas_therms REAL,
    water_liters REAL,
    renewable_percent REAL,
    peak_demand_kw REAL,
    avg_temperature_c REAL,
    hvac_runtime_minutes INTEGER,
    lighting_runtime_minutes INTEGER,
    equipment_runtime_minutes INTEGER,
    carbon_emission_kg REAL,
    cost_usd REAL,
    meter_reading_start REAL,
    meter_reading_end REAL,
    notes TEXT,
    auditor_name TEXT,
    audit_date DATE,
    compliance_status TEXT
);

INSERT INTO venue_energy_consumption (record_id, venue_id, date, electricity_kwh, gas_therms, water_liters, renewable_percent, peak_demand_kw, avg_temperature_c, hvac_runtime_minutes, lighting_runtime_minutes, equipment_runtime_minutes, carbon_emission_kg, cost_usd, meter_reading_start, meter_reading_end, notes, auditor_name, audit_date, compliance_status)
VALUES (1, 101, '2023-08-01', 12500.5, 850.2, 24000.0, 35.0, 75.0, 22.5, 480, 300, 180, 5300.0, 2100.75, 102000.0, 114500.0, 'Normal day', 'EmmaAudit', '2023-08-02', 'Compliant');

INSERT INTO venue_energy_consumption (record_id, venue_id, date, electricity_kwh, gas_therms, water_liters, renewable_percent, peak_demand_kw, avg_temperature_c, hvac_runtime_minutes, lighting_runtime_minutes, equipment_runtime_minutes, carbon_emission_kg, cost_usd, meter_reading_start, meter_reading_end, notes, auditor_name, audit_date, compliance_status)
VALUES (2, 102, '2023-08-01', 9800.0, 600.5, 18000.0, 40.0, 68.0, 21.0, 420, 260, 150, 4100.0, 1650.30, 88000.0, 97800.0, 'Slightly high usage', 'LiamCheck', '2023-08-02', 'Compliant');

INSERT INTO venue_energy_consumption (record_id, venue_id, date, electricity_kwh, gas_therms, water_liters, renewable_percent, peak_demand_kw, avg_temperature_c, hvac_runtime_minutes, lighting_runtime_minutes, equipment_runtime_minutes, carbon_emission_kg, cost_usd, meter_reading_start, meter_reading_end, notes, auditor_name, audit_date, compliance_status)
VALUES (3, 103, '2023-08-01', 15000.2, 1100.8, 30000.0, 30.0, 85.0, 23.0, 540, 350, 200, 6400.0, 2550.60, 132000.0, 147000.0, 'Peak day', 'NoahInspect', '2023-08-02', 'NonCompliant');

-- Extended metrics for sponsor engagements
CREATE TABLE sponsor_engagement_metrics_ext (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_id INTEGER,
    engagement_type TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    conversion_rate REAL,
    cost_per_click REAL,
    cost_per_impression REAL,
    revenue_generated REAL,
    roi REAL,
    start_date DATE,
    end_date DATE,
    target_audience TEXT,
    platform TEXT,
    creative_id TEXT,
    status TEXT,
    notes TEXT,
    created_by TEXT,
    created_at DATE,
    last_modified DATE,
    region TEXT,
    budget_usd REAL,
    cpm REAL
);

INSERT INTO sponsor_engagement_metrics_ext (metric_id, sponsor_id, campaign_id, engagement_type, impressions, clicks, ctr, conversion_rate, cost_per_click, cost_per_impression, revenue_generated, roi, start_date, end_date, target_audience, platform, creative_id, status, notes, created_by, created_at, last_modified, region, budget_usd, cpm)
VALUES (1, 201, 301, 'VideoAd', 500000, 2500, 0.5, 2.0, 0.75, 0.2, 12500.0, 4.2, '2023-07-01', '2023-07-31', 'Adults', 'YouTube', 'CRTV01', 'Active', 'Strong performance', 'MarketerA', '2023-07-01', '2023-07-15', 'NA', 20000.0, 40.0);

INSERT INTO sponsor_engagement_metrics_ext (metric_id, sponsor_id, campaign_id, engagement_type, impressions, clicks, ctr, conversion_rate, cost_per_click, cost_per_impression, revenue_generated, roi, start_date, end_date, target_audience, platform, creative_id, status, notes, created_by, created_at, last_modified, region, budget_usd, cpm)
VALUES (2, 202, 302, 'Banner', 300000, 1200, 0.4, 1.5, 0.60, 0.15, 8000.0, 3.5, '2023-08-01', '2023-08-31', 'Teens', 'Website', 'BNR02', 'Paused', 'Need better placement', 'MarketerB', '2023-08-01', '2023-08-10', 'EU', 15000.0, 30.0);

INSERT INTO sponsor_engagement_metrics_ext (metric_id, sponsor_id, campaign_id, engagement_type, impressions, clicks, ctr, conversion_rate, cost_per_click, cost_per_impression, revenue_generated, roi, start_date, end_date, target_audience, platform, creative_id, status, notes, created_by, created_at, last_modified, region, budget_usd, cpm)
VALUES (3, 203, 303, 'SocialPost', 200000, 800, 0.3, 1.2, 0.55, 0.12, 6000.0, 3.0, '2023-09-01', '2023-09-30', 'YoungAdults', 'Instagram', 'SOC03', 'Active', 'Steady growth', 'MarketerC', '2023-09-01', '2023-09-12', 'APAC', 12000.0, 28.0);

-- Logging of tournament seeding algorithm executions
CREATE TABLE tournament_seeding_algorithm_log (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    algorithm_version TEXT,
    seed_method TEXT,
    execution_time_ms INTEGER,
    generated_seeds INTEGER,
    conflicts_resolved INTEGER,
    avg_gap REAL,
    max_gap REAL,
    notes TEXT,
    executed_by TEXT,
    execution_date DATE,
    parameters TEXT,
    random_seed INTEGER,
    runtime_environment TEXT,
    cpu_usage_percent REAL,
    memory_usage_mb REAL,
    error_flag INTEGER,
    error_message TEXT,
    result_checksum TEXT,
    duration_seconds INTEGER
);

INSERT INTO tournament_seeding_algorithm_log (log_id, tournament_id, algorithm_version, seed_method, execution_time_ms, generated_seeds, conflicts_resolved, avg_gap, max_gap, notes, executed_by, execution_date, parameters, random_seed, runtime_environment, cpu_usage_percent, memory_usage_mb, error_flag, error_message, result_checksum, duration_seconds)
VALUES (1, 401, 'v1.2', 'Swiss', 850, 128, 5, 1.2, 3.5, 'Standard run', 'sysadmin', '2023-06-10', 'maxRounds=5;tieBreaker=points', 123456, 'Linux', 45.0, 1024.5, 0, '', 'ABC123DEF', 30);

INSERT INTO tournament_seeding_algorithm_log (log_id, tournament_id, algorithm_version, seed_method, execution_time_ms, generated_seeds, conflicts_resolved, avg_gap, max_gap, notes, executed_by, execution_date, parameters, random_seed, runtime_environment, cpu_usage_percent, memory_usage_mb, error_flag, error_message, result_checksum, duration_seconds)
VALUES (2, 402, 'v1.3', 'RoundRobin', 1200, 64, 0, 0.8, 2.0, 'No conflicts', 'engineerX', '2023-07-15', 'seedSize=64;balance=true', 654321, 'Windows', 55.0, 2048.0, 0, '', 'XYZ789GHI', 45);

INSERT INTO tournament_seeding_algorithm_log (log_id, tournament_id, algorithm_version, seed_method, execution_time_ms, generated_seeds, conflicts_resolved, avg_gap, max_gap, notes, executed_by, execution_date, parameters, random_seed, runtime_environment, cpu_usage_percent, memory_usage_mb, error_flag, error_message, result_checksum, duration_seconds)
VALUES (3, 403, 'v2.0', 'Bracket', 2000, 32, 2, 1.5, 4.0, 'Adjusted for late entries', 'adminUser', '2023-08-20', 'bracketSize=32;lateEntryBuffer=2', 789012, 'Linux', 60.0, 3072.0, 1, 'TimeoutError', 'LMN456OPQ', 60);

-- Restoration records for magical artifacts
CREATE TABLE artifact_restoration_records (
    restoration_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_id TEXT,
    restoration_date DATE,
    conservator_id INTEGER,
    technique TEXT,
    materials_used TEXT,
    duration_hours REAL,
    cost_usd REAL,
    condition_before TEXT,
    condition_after TEXT,
    assessment_score INTEGER,
    notes TEXT,
    approved_by TEXT,
    approval_date DATE,
    storage_location TEXT,
    humidity_percent REAL,
    temperature_c REAL,
    light_exposure_lux REAL,
    photos_path TEXT,
    documentation_path TEXT,
    followup_date DATE
);

INSERT INTO artifact_restoration_records (restoration_id, artifact_id, restoration_date, conservator_id, technique, materials_used, duration_hours, cost_usd, condition_before, condition_after, assessment_score, notes, approved_by, approval_date, storage_location, humidity_percent, temperature_c, light_exposure_lux, photos_path, documentation_path, followup_date)
VALUES (1, 'ARTF001', '2023-05-10', 501, 'Cleaning', 'DistilledWater,SoftBrush', 5.5, 300.0, 'Faded', 'Restored', 88, 'Minor touch up', 'DrMiller', '2023-05-12', 'VaultA', 45.0, 20.0, 150.0, '/photos/artf001_before.png', '/docs/artf001_report.pdf', '2024-05-10');

INSERT INTO artifact_restoration_records (restoration_id, artifact_id, restoration_date, conservator_id, technique, materials_used, duration_hours, cost_usd, condition_before, condition_after, assessment_score, notes, approved_by, approval_date, storage_location, humidity_percent, temperature_c, light_exposure_lux, photos_path, documentation_path, followup_date)
VALUES (2, 'ARTF002', '2023-06-15', 502, 'Rebinding', 'Leather,Glue', 8.0, 750.0, 'TornPages', 'Repaired', 92, 'Edges reinforced', 'DrLee', '2023-06-18', 'VaultB', 50.0, 22.0, 120.0, '/photos/artf002_before.png', '/docs/artf002_report.pdf', '2024-06-15');

INSERT INTO artifact_restoration_records (restoration_id, artifact_id, restoration_date, conservator_id, technique, materials_used, duration_hours, cost_usd, condition_before, condition_after, assessment_score, notes, approved_by, approval_date, storage_location, humidity_percent, temperature_c, light_exposure_lux, photos_path, documentation_path, followup_date)
VALUES (3, 'ARTF003', '2023-07-20', 503, 'Stabilization', 'AcrylicResin', 12.0, 1200.0, 'Cracks', 'Stabilized', 85, 'Full structural support', 'DrKim', '2023-07-22', 'VaultC', 48.0, 21.0, 130.0, '/photos/artf003_before.png', '/docs/artf003_report.pdf', '2024-07-20');