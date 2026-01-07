-- Broadcast metadata for each televised event
CREATE TABLE Broadcast_Metadata (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_id INTEGER,
    network_name TEXT,
    start_time TEXT,
    end_time TEXT,
    language TEXT,
    region TEXT,
    feed_type TEXT,
    bitrate INTEGER,
    resolution TEXT,
    frame_rate INTEGER,
    audio_channels INTEGER,
    subtitle_available INTEGER,
    commercials_count INTEGER,
    ad_duration_total INTEGER,
    content_rating TEXT,
    production_company TEXT,
    director TEXT,
    producer TEXT,
    editor TEXT,
    camera_count INTEGER,
    dolby_atmos INTEGER,
    streaming_url TEXT
);
INSERT INTO Broadcast_Metadata (broadcast_id, network_name, start_time, end_time, language, region, feed_type, bitrate, resolution, frame_rate, audio_channels, subtitle_available, commercials_count, ad_duration_total, content_rating, production_company, director, producer, editor, camera_count, dolby_atmos, streaming_url) VALUES (101, 'GlobalSports', '2023-09-01 18:00', '2023-09-01 20:00', 'English', 'Europe', 'Live', 5000, '1080p', 60, 6, 1, 5, 15, 'PG', 'PrimeProd', 'John Doe', 'Jane Smith', 'Mike Lee', 12, 1, 'http://stream.example.com/101');
INSERT INTO Broadcast_Metadata (broadcast_id, network_name, start_time, end_time, language, region, feed_type, bitrate, resolution, frame_rate, audio_channels, subtitle_available, commercials_count, ad_duration_total, content_rating, production_company, director, producer, editor, camera_count, dolby_atmos, streaming_url) VALUES (102, 'SportNet', '2023-10-15 20:30', '2023-10-15 22:45', 'Spanish', 'SouthAmerica', 'Delayed', 3500, '720p', 30, 2, 0, 3, 9, 'G', 'VisionMedia', 'Carlos Ruiz', 'Ana Gomez', 'Luis Alvarez', 8, 0, 'http://stream.example.com/102');
INSERT INTO Broadcast_Metadata (broadcast_id, network_name, start_time, end_time, language, region, feed_type, bitrate, resolution, frame_rate, audio_channels, subtitle_available, commercials_count, ad_duration_total, content_rating, production_company, director, producer, editor, camera_count, dolby_atmos, streaming_url) VALUES (103, 'WorldLive', '2023-11-05 15:00', '2023-11-05 17:00', 'French', 'Africa', 'Live', 4000, '1080p', 60, 8, 1, 4, 12, 'PG-13', 'GlobalBroadcast', 'Marie Dupont', 'Pierre Martin', 'Sophie Laurent', 10, 1, 'http://stream.example.com/103');

-- Inventory of sensor network devices deployed across venues
CREATE TABLE Sensor_Network_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT,
    sensor_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    installation_date TEXT,
    location_desc TEXT,
    latitude REAL,
    longitude REAL,
    firmware_version TEXT,
    battery_status INTEGER,
    signal_strength INTEGER,
    last_maintenance TEXT,
    calibration_date TEXT,
    status TEXT,
    network_id TEXT,
    ip_address TEXT,
    mac_address TEXT,
    data_rate INTEGER,
    power_source TEXT,
    warranty_expiry TEXT,
    notes TEXT,
    uptime_hours INTEGER
);
INSERT INTO Sensor_Network_Inventory (sensor_id, sensor_type, manufacturer, model_number, installation_date, location_desc, latitude, longitude, firmware_version, battery_status, signal_strength, last_maintenance, calibration_date, status, network_id, ip_address, mac_address, data_rate, power_source, warranty_expiry, notes, uptime_hours) VALUES ('SEN001', 'Temperature', 'SensTech', 'T100', '2022-01-15', 'Stadium Main Gate', 40.7128, -74.0060, 'v1.2.3', 95, -70, '2023-06-01', '2023-06-01', 'Active', 'NET01', '192.168.1.10', 'AA:BB:CC:DD:EE:01', 5, 'Mains', '2025-01-15', 'Calibrated annually', 1200);
INSERT INTO Sensor_Network_Inventory (sensor_id, sensor_type, manufacturer, model_number, installation_date, location_desc, latitude, longitude, firmware_version, battery_status, signal_strength, last_maintenance, calibration_date, status, network_id, ip_address, mac_address, data_rate, power_source, warranty_expiry, notes, uptime_hours) VALUES ('SEN002', 'Humidity', 'EnviroSense', 'H200', '2021-09-10', 'Stadium Roof', 34.0522, -118.2437, 'v2.0.1', 88, -65, '2023-05-20', '2023-05-20', 'Active', 'NET01', '192.168.1.11', 'AA:BB:CC:DD:EE:02', 5, 'Solar', '2024-09-10', 'Needs firmware update', 950);
INSERT INTO Sensor_Network_Inventory (sensor_id, sensor_type, manufacturer, model_number, installation_date, location_desc, latitude, longitude, firmware_version, battery_status, signal_strength, last_maintenance, calibration_date, status, network_id, ip_address, mac_address, data_rate, power_source, warranty_expiry, notes, uptime_hours) VALUES ('SEN003', 'AirQuality', 'AirMetrics', 'AQ300', '2023-03-05', 'Stadium Concourse', 51.5074, -0.1278, 'v3.1.0', 100, -60, '2023-08-15', '2023-08-15', 'Active', 'NET02', '192.168.2.20', 'AA:BB:CC:DD:EE:03', 10, 'Mains', '2026-03-05', 'Installed during renovation', 300);

-- Statistics for fan engagement across digital channels
CREATE TABLE Fan_Engagement_Channel_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    channel_name TEXT,
    platform TEXT,
    monthly_active_users INTEGER,
    daily_visits INTEGER,
    average_session_minutes REAL,
    bounce_rate REAL,
    conversion_rate REAL,
    posts_per_month INTEGER,
    comments_per_month INTEGER,
    likes_per_month INTEGER,
    shares_per_month INTEGER,
    new_followers INTEGER,
    churn_rate REAL,
    revenue_generated REAL,
    ad_impressions INTEGER,
    click_through_rate REAL,
    content_type TEXT,
    moderation_policy TEXT,
    last_update TEXT,
    geo_focus TEXT,
    language TEXT,
    target_age_group TEXT
);
INSERT INTO Fan_Engagement_Channel_Stats (channel_name, platform, monthly_active_users, daily_visits, average_session_minutes, bounce_rate, conversion_rate, posts_per_month, comments_per_month, likes_per_month, shares_per_month, new_followers, churn_rate, revenue_generated, ad_impressions, click_through_rate, content_type, moderation_policy, last_update, geo_focus, language, target_age_group) VALUES ('OfficialUpdates', 'MobileApp', 125000, 5400, 5.2, 0.45, 0.03, 120, 250, 1800, 300, 4000, 0.12, 75000.00, 2100000, 0.014, 'News', 'Strict', '2023-12-01', 'Global', 'English', '18-35');
INSERT INTO Fan_Engagement_Channel_Stats (channel_name, platform, monthly_active_users, daily_visits, average_session_minutes, bounce_rate, conversion_rate, posts_per_month, comments_per_month, likes_per_month, shares_per_month, new_followers, churn_rate, revenue_generated, ad_impressions, click_through_rate, content_type, moderation_policy, last_update, geo_focus, language, target_age_group) VALUES ('MatchHighlights', 'YouTube', 890000, 32000, 7.8, 0.32, 0.07, 45, 1020, 56000, 8500, 15000, 0.08, 210000.00, 8500000, 0.025, 'Video', 'Moderate', '2023-11-28', 'Europe', 'English', '15-45');
INSERT INTO Fan_Engagement_Channel_Stats (channel_name, platform, monthly_active_users, daily_visits, average_session_minutes, bounce_rate, conversion_rate, posts_per_month, comments_per_month, likes_per_month, shares_per_month, new_followers, churn_rate, revenue_generated, ad_impressions, click_through_rate, content_type, moderation_policy, last_update, geo_focus, language, target_age_group) VALUES ('FanForum', 'Web', 45000, 2100, 12.4, 0.60, 0.01, 8, 340, 1200, 150, 800, 0.20, 15000.00, 300000, 0.005, 'Discussion', 'Lenient', '2023-12-03', 'NorthAmerica', 'English', '20-50');

-- Assets located in club-owned parking and recreational parks
CREATE TABLE Club_Park_Assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_tag TEXT,
    asset_name TEXT,
    category TEXT,
    purchase_date TEXT,
    cost REAL,
    vendor TEXT,
    warranty_years INTEGER,
    depreciation_years INTEGER,
    location TEXT,
    condition TEXT,
    last_inspection TEXT,
    next_maintenance TEXT,
    responsible_manager TEXT,
    insurance_policy TEXT,
    serial_number TEXT,
    dimensions_cm TEXT,
    weight_kg REAL,
    assigned_to TEXT,
    usage_hours INTEGER,
    status TEXT,
    notes TEXT,
    disposal_date TEXT
);
INSERT INTO Club_Park_Assets (asset_tag, asset_name, category, purchase_date, cost, vendor, warranty_years, depreciation_years, location, condition, last_inspection, next_maintenance, responsible_manager, insurance_policy, serial_number, dimensions_cm, weight_kg, assigned_to, usage_hours, status, notes, disposal_date) VALUES ('PA001', 'Kayak', 'Watercraft', '2020-06-12', 1200.00, 'AquaGear', 3, 7, 'River Park', 'Good', '2023-04-10', '2023-10-10', 'Laura Miller', 'POL12345', 'KG-202006', '250x70x40', 30.5, 'TeamA', 350, 'In Use', 'Handled gently', NULL);
INSERT INTO Club_Park_Assets (asset_tag, asset_name, category, purchase_date, cost, vendor, warranty_years, depreciation_years, location, condition, last_inspection, next_maintenance, responsible_manager, insurance_policy, serial_number, dimensions_cm, weight_kg, assigned_to, usage_hours, status, notes, disposal_date) VALUES ('PA002', 'Electric Golf Cart', 'Vehicle', '2019-03-22', 8500.00, 'GolfPro', 5, 10, 'Training Grounds', 'Fair', '2023-03-01', '2023-09-01', 'Mike Torres', 'POL67890', 'GC-201903', '200x120x150', 450.0, 'Facility', 1200, 'In Service', 'Battery replaced 2022', NULL);
INSERT INTO Club_Park_Assets (asset_tag, asset_name, category, purchase_date, cost, vendor, warranty_years, depreciation_years, location, condition, last_inspection, next_maintenance, responsible_manager, insurance_policy, serial_number, dimensions_cm, weight_kg, assigned_to, usage_hours, status, notes, disposal_date) VALUES ('PA003', 'Outdoor LED Screen', 'Display', '2021-11-05', 25000.00, 'BrightView', 4, 8, 'Main Entrance', 'Excellent', '2023-07-20', '2024-01-20', 'Sandra Lee', 'POL54321', 'LED-202111', '5000x2000x150', 350.0, 'Public', 800, 'Operational', 'Scheduled upgrade 2025', NULL);

-- Log of accesses to digital assets such as videos, documents, and media files
CREATE TABLE Digital_Asset_Access_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id TEXT,
    user_id TEXT,
    access_timestamp TEXT,
    action_type TEXT,
    ip_address TEXT,
    device_type TEXT,
    location TEXT,
    result TEXT,
    session_id TEXT,
    file_version TEXT,
    download_speed_mbps REAL,
    upload_speed_mbps REAL,
    encryption_used TEXT,
    auth_method TEXT,
    duration_seconds INTEGER,
    notes TEXT,
    compliance_flag INTEGER,
    data_category TEXT,
    confidentiality_level TEXT,
    access_reason TEXT,
    admin_override INTEGER
);
INSERT INTO Digital_Asset_Access_Log (asset_id, user_id, access_timestamp, action_type, ip_address, device_type, location, result, session_id, file_version, download_speed_mbps, upload_speed_mbps, encryption_used, auth_method, duration_seconds, notes, compliance_flag, data_category, confidentiality_level, access_reason, admin_override) VALUES ('AS001', 'U1001', '2023-12-01 09:15:00', 'Download', '203.0.113.5', 'Desktop', 'London', 'Success', 'S12345', 'v2', 45.2, 5.1, 'AES256', 'SSO', 30, 'Standard request', 1, 'Video', 'High', 'Match Review', 0);
INSERT INTO Digital_Asset_Access_Log (asset_id, user_id, access_timestamp, action_type, ip_address, device_type, location, result, session_id, file_version, download_speed_mbps, upload_speed_mbps, encryption_used, auth_method, duration_seconds, notes, compliance_flag, data_category, confidentiality_level, access_reason, admin_override) VALUES ('AS002', 'U1002', '2023-12-01 10:05:22', 'View', '198.51.100.12', 'Mobile', 'Paris', 'Success', 'S12346', 'v1', 20.8, 1.3, 'TLS1.2', 'Password', 12, 'Read-only', 1, 'Document', 'Medium', 'Training Material', 0);
INSERT INTO Digital_Asset_Access_Log (asset_id, user_id, access_timestamp, action_type, ip_address, device_type, location, result, session_id, file_version, download_speed_mbps, upload_speed_mbps, encryption_used, auth_method, duration_seconds, notes, compliance_flag, data_category, confidentiality_level, access_reason, admin_override) VALUES ('AS003', 'U1003', '2023-12-01 11:45:10', 'Upload', '192.0.2.33', 'Tablet', 'Berlin', 'Failed', 'S12347', 'v3', 0.0, 0.0, 'None', 'None', 0, 'Permission denied', 0, 'Image', 'Low', 'Marketing Asset', 1);

-- Assessment of sponsor campaign impact on brand metrics
CREATE TABLE Sponsor_Impact_Assessment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id TEXT,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    total_expenditure REAL,
    impressions INTEGER,
    reach INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cost_per_impression REAL,
    cost_per_click REAL,
    cost_per_conversion REAL,
    brand_awareness_score REAL,
    sentiment_analysis_score REAL,
    media_mix TEXT,
    target_audience TEXT,
    region TEXT,
    product_category TEXT,
    sales_delta REAL,
    brand_loyalty_change REAL,
    ROI_percent REAL,
    notes TEXT
);
INSERT INTO Sponsor_Impact_Assessment (sponsor_id, campaign_name, start_date, end_date, total_expenditure, impressions, reach, clicks, conversions, cost_per_impression, cost_per_click, cost_per_conversion, brand_awareness_score, sentiment_analysis_score, media_mix, target_audience, region, product_category, sales_delta, brand_loyalty_change, ROI_percent, notes) VALUES ('SP001', 'SummerBoost', '2023-06-01', '2023-08-31', 500000.00, 20000000, 8000000, 150000, 25000, 0.025, 3.33, 20.00, 78.5, 0.12, 'Digital,TV,OOH', 'Young Adults', 'Europe', 'Beverage', 1200000.00, 5.4, 240.0, 'Successful multi‑channel push');
INSERT INTO Sponsor_Impact_Assessment (sponsor_id, campaign_name, start_date, end_date, total_expenditure, impressions, reach, clicks, conversions, cost_per_impression, cost_per_click, cost_per_conversion, brand_awareness_score, sentiment_analysis_score, media_mix, target_audience, region, product_category, sales_delta, brand_loyalty_change, ROI_percent, notes) VALUES ('SP002', 'WinterGear', '2023-11-01', '2024-02-28', 300000.00, 12000000, 5000000, 90000, 12000, 0.025, 3.33, 25.00, 65.2, 0.08, 'Print,Social,Influencer', 'Adults 25-45', 'NorthAmerica', 'Apparel', 800000.00, 3.1, 166.7, 'Higher conversion cost than expected');
INSERT INTO Sponsor_Impact_Assessment (sponsor_id, campaign_name, start_date, end_date, total_expenditure, impressions, reach, clicks, conversions, cost_per_impression, cost_per_click, cost_per_conversion, brand_awareness_score, sentiment_analysis_score, media_mix, target_audience, region, product_category, sales_delta, brand_loyalty_change, ROI_percent, notes) VALUES ('SP003', 'TechLaunch', '2023-09-15', '2023-12-15', 750000.00, 25000000, 10000000, 200000, 30000, 0.03, 3.75, 25.00, 82.0, 0.15, 'Online,Event,Radio', 'Tech Enthusiasts', 'Asia', 'Electronics', 2100000.00, 7.8, 380.0, 'Strong ROI driven by event activations');

-- Volunteer information for community events
CREATE TABLE Community_Event_Volunteers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id TEXT,
    volunteer_id TEXT,
    name TEXT,
    contact_email TEXT,
    phone TEXT,
    registration_date TEXT,
    role TEXT,
    shift_start TEXT,
    shift_end TEXT,
    hours_committed INTEGER,
    hours_completed INTEGER,
    training_completed INTEGER,
    background_check_status TEXT,
    assigned_manager TEXT,
    feedback_score REAL,
    notes TEXT,
    emergency_contact TEXT,
    availability TEXT,
    preferred_tasks TEXT,
    language TEXT,
    t_shirt_size TEXT
);
INSERT INTO Community_Event_Volunteers (event_id, volunteer_id, name, contact_email, phone, registration_date, role, shift_start, shift_end, hours_committed, hours_completed, training_completed, background_check_status, assigned_manager, feedback_score, notes, emergency_contact, availability, preferred_tasks, language, t_shirt_size) VALUES ('EV001', 'V1001', 'Alice Brown', 'alice.brown@example.com', '555-1234', '2023-10-01', 'Usher', '08:00', '12:00', 4, 4, 1, 'Cleared', 'John Smith', 4.8, 'Punctual and friendly', 'Bob Brown', 'Weekends', 'Ticketing', 'English', 'M');
INSERT INTO Community_Event_Volunteers (event_id, volunteer_id, name, contact_email, phone, registration_date, role, shift_start, shift_end, hours_committed, hours_completed, training_completed, background_check_status, assigned_manager, feedback_score, notes, emergency_contact, availability, preferred_tasks, language, t_shirt_size) VALUES ('EV001', 'V1002', 'Carlos Diaz', 'carlos.diaz@example.com', '555-5678', '2023-10-02', 'Security', '12:00', '16:00', 4, 3, 1, 'Cleared', 'John Smith', 4.5, 'Needs reminder for shift', 'Maria Lopez', 'Weekends', 'Crowd Management', 'Spanish', 'L');
INSERT INTO Community_Event_Volunteers (event_id, volunteer_id, name, contact_email, phone, registration_date, role, shift_start, shift_end, hours_committed, hours_completed, training_completed, background_check_status, assigned_manager, feedback_score, notes, emergency_contact, availability, preferred_tasks, language, t_shirt_size) VALUES ('EV002', 'V1003', 'Emily Zhang', 'emily.zhang@example.com', '555-9012', '2023-11-05', 'Info Desk', '09:00', '13:00', 4, 4, 1, 'Pending', 'Sarah Lee', 5.0, 'Excellent communication', 'Liam Zhang', 'Weekdays', 'Guest Assistance', 'English', 'S');

-- Airflow systems installed in stadiums for ventilation control
CREATE TABLE Stadium_Airflow_Systems (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    system_id TEXT,
    manufacturer TEXT,
    model TEXT,
    installation_date TEXT,
    capacity_cfm INTEGER,
    power_rating_kw REAL,
    control_type TEXT,
    location TEXT,
    maintenance_cycle_months INTEGER,
    last_service_date TEXT,
    next_service_date TEXT,
    status TEXT,
    airflow_efficiency_percent REAL,
    noise_level_db REAL,
    warranty_until TEXT,
    firmware_version TEXT,
    remote_monitoring INTEGER,
    sensor_count INTEGER,
    avg_pressure_pa REAL,
    avg_temperature_c REAL,
    notes TEXT,
    operational_hours INTEGER
);
INSERT INTO Stadium_Airflow_Systems (system_id, manufacturer, model, installation_date, capacity_cfm, power_rating_kw, control_type, location, maintenance_cycle_months, last_service_date, next_service_date, status, airflow_efficiency_percent, noise_level_db, warranty_until, firmware_version, remote_monitoring, sensor_count, avg_pressure_pa, avg_temperature_c, notes, operational_hours) VALUES ('AFS001', 'VentusTech', 'VTX-200', '2020-05-10', 120000, 75.5, 'BMS', 'Main Bowl', 12, '2023-05-01', '2024-05-01', 'Active', 92.3, 55.0, '2025-05-10', 'v4.2.1', 1, 24, 1015.2, 22.5, 'Routine cleaning performed', 15000);
INSERT INTO Stadium_Airflow_Systems (system_id, manufacturer, model, installation_date, capacity_cfm, power_rating_kw, control_type, location, maintenance_cycle_months, last_service_date, next_service_date, status, airflow_efficiency_percent, noise_level_db, warranty_until, firmware_version, remote_monitoring, sensor_count, avg_pressure_pa, avg_temperature_c, notes, operational_hours) VALUES ('AFS002', 'AirFlowCo', 'AFC-350', '2021-08-22', 150000, 90.0, 'PLC', 'VIP Boxes', 12, '2023-08-15', '2024-08-15', 'Active', 89.7, 58.2, '2026-08-22', 'v3.9.4', 1, 30, 1020.5, 21.0, 'Upgraded filters in 2023', 12000);
INSERT INTO Stadium_Airflow_Systems (system_id, manufacturer, model, installation_date, capacity_cfm, power_rating_kw, control_type, location, maintenance_cycle_months, last_service_date, next_service_date, status, airflow_efficiency_percent, noise_level_db, warranty_until, firmware_version, remote_monitoring, sensor_count, avg_pressure_pa, avg_temperature_c, notes, operational_hours) VALUES ('AFS003', 'BreezeSystems', 'BS-150', '2019-11-05', 90000, 60.3, 'DCS', 'Concourse', 12, '2023-11-02', '2024-11-02', 'Active', 94.1, 52.5, '2024-11-05', 'v5.0.0', 1, 20, 1008.7, 23.2, 'No issues reported', 18000);

-- Global analysis of sponsorship market trends
CREATE TABLE Global_Sponsorship_Market_Analysis (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    year INTEGER,
    region TEXT,
    industry TEXT,
    total_spend_usd REAL,
    number_of_deals INTEGER,
    average_deal_value_usd REAL,
    top_sponsor TEXT,
    emerging_trends TEXT,
    digital_spend_percent REAL,
    traditional_spend_percent REAL,
    ROI_average_percent REAL,
    brand_impact_score REAL,
    regulatory_changes TEXT,
    economic_indicator TEXT,
    forecast_spend_usd REAL,
    market_growth_percent REAL,
    key_players TEXT,
    investment_focus TEXT,
    notes TEXT,
    data_source TEXT
);
INSERT INTO Global_Sponsorship_Market_Analysis (year, region, industry, total_spend_usd, number_of_deals, average_deal_value_usd, top_sponsor, emerging_trends, digital_spend_percent, traditional_spend_percent, ROI_average_percent, brand_impact_score, regulatory_changes, economic_indicator, forecast_spend_usd, market_growth_percent, key_players, investment_focus, notes, data_source) VALUES (2023, 'Europe', 'Sports', 9500000000.00, 342, 27777777.78, 'MegaCorp', 'Live streaming integration', 58.2, 41.8, 115.4, 78.5, 'UEFA advertising caps', 'GDP Growth 2.5%', 11000000000.00, 15.8, 'MegaCorp;AlphaSports', 'eSports platforms', 'Steady growth despite inflation', 'EuroStat');
INSERT INTO Global_Sponsorship_Market_Analysis (year, region, industry, total_spend_usd, number_of_deals, average_deal_value_usd, top_sponsor, emerging_trends, digital_spend_percent, traditional_spend_percent, ROI_average_percent, brand_impact_score, regulatory_changes, economic_indicator, forecast_spend_usd, market_growth_percent, key_players, investment_focus, notes, data_source) VALUES (2023, 'Asia', 'Entertainment', 7200000000.00, 210, 34285714.29, 'StarEnterprises', 'Short‑form video ads', 63.0, 37.0, 122.0, 84.2, 'New content rating rules', 'Consumer Confidence 85', 8300000000.00, 15.3, 'StarEnterprises;NovaMedia', 'Mobile gaming', 'Rapid adoption of 5G', 'AsianStat');
INSERT INTO Global_Sponsorship_Market_Analysis (year, region, industry, total_spend_usd, number_of_deals, average_deal_value_usd, top_sponsor, emerging_trends, digital_spend_percent, traditional_spend_percent, ROI_average_percent, brand_impact_score, regulatory_changes, economic_indicator, forecast_spend_usd, market_growth_percent, key_players, investment_focus, notes, data_source) VALUES (2023, 'NorthAmerica', 'Automotive', 6100000000.00, 185, 32972973.00, 'AutoLeader', 'AR test drives', 55.5, 44.5, 108.7, 76.9, 'Emissions disclosure', 'Unemployment 4.2%', 7200000000.00, 18.0, 'AutoLeader;DriveTech', 'Connected cars', 'Shift towards electric vehicles', 'USStat');

-- Staff certifications for training center personnel
CREATE TABLE Training_Center_Staff_Certifications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    staff_id TEXT,
    staff_name TEXT,
    certification_name TEXT,
    issuing_body TEXT,
    certification_date TEXT,
    expiry_date TEXT,
    license_number TEXT,
    level TEXT,
    status TEXT,
    renewal_reminder_date TEXT,
    notes TEXT,
    department TEXT,
    role TEXT,
    competency_score REAL,
    training_hours INTEGER,
    last_training_date TEXT,
    next_training_due TEXT,
    trainer_name TEXT,
    compliance_flag INTEGER,
    document_path TEXT,
    verified_by TEXT
);
INSERT INTO Training_Center_Staff_Certifications (staff_id, staff_name, certification_name, issuing_body, certification_date, expiry_date, license_number, level, status, renewal_reminder_date, notes, department, role, competency_score, training_hours, last_training_date, next_training_due, trainer_name, compliance_flag, document_path, verified_by) VALUES ('ST001', 'Mark Jensen', 'CPR Certification', 'RedCross', '2022-04-12', '2024-04-12', 'CPR-202204', 'Advanced', 'Active', '2024-03-01', 'Required for all medical staff', 'Medical', 'Trainer', 95.0, 12, '2023-04-10', '2024-04-10', 'Laura Hill', 1, '/docs/cpr_mark_jensen.pdf', 'AdminUser');
INSERT INTO Training_Center_Staff_Certifications (staff_id, staff_name, certification_name, issuing_body, certification_date, expiry_date, license_number, level, status, renewal_reminder_date, notes, department, role, competency_score, training_hours, last_training_date, next_training_due, trainer_name, compliance_flag, document_path, verified_by) VALUES ('ST002', 'Nina Patel', 'Strength & Conditioning Coach', 'NSCA', '2021-09-05', '2025-09-05', 'NSCA-202109', 'Level II', 'Active', '2025-08-01', 'Focus on athlete performance', 'Performance', 'Coach', 88.5, 200, '2023-09-01', '2025-09-01', 'Mike Daniels', 1, '/docs/nsca_nina_patol.pdf', 'AdminUser');
INSERT INTO Training_Center_Staff_Certifications (staff_id, staff_name, certification_name, issuing_body, certification_date, expiry_date, license_number, level, status, renewal_reminder_date, notes, department, role, competency_score, training_hours, last_training_date, next_training_due, trainer_name, compliance_flag, document_path, verified_by) VALUES ('ST003', 'Olivia Chen', 'First Aid Instructor', 'StJohns', '2020-02-20', '2023-02-20', 'FAI-202002', 'Instructor', 'Expired', '2023-01-15', 'Needs renewal', 'Medical', 'Instructor', 91.0, 30, '2022-12-15', '2023-02-20', 'Robert Lee', 0, '/docs/first_aid_olivia_chen.pdf', 'AdminUser');