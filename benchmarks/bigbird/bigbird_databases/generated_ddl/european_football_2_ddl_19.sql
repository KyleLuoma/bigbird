-- Stadium energy management metrics
CREATE TABLE Stadium_Energy_Management (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_code TEXT,
    electricity_consumption_mwh REAL,
    gas_consumption_mwh REAL,
    renewable_pct REAL,
    water_usage_liters REAL,
    waste_generated_tons REAL,
    hvac_efficiency REAL,
    lighting_efficiency REAL,
    solar_panel_capacity_kw REAL,
    wind_turbine_capacity_kw REAL,
    battery_storage_mwh REAL,
    carbon_emission_tons REAL,
    energy_cost_usd REAL,
    energy_audit_date TEXT,
    peak_demand_kw REAL,
    off_peak_demand_kw REAL,
    energy_savings_initiative_count INTEGER,
    green_certification_level TEXT,
    notes TEXT
);
INSERT INTO Stadium_Energy_Management (stadium_code, electricity_consumption_mwh, gas_consumption_mwh, renewable_pct, water_usage_liters, waste_generated_tons, hvac_efficiency, lighting_efficiency, solar_panel_capacity_kw, wind_turbine_capacity_kw, battery_storage_mwh, carbon_emission_tons, energy_cost_usd, energy_audit_date, peak_demand_kw, off_peak_demand_kw, energy_savings_initiative_count, green_certification_level, notes) VALUES ('ST001', 1200.5, 300.2, 25.0, 500000, 12.3, 0.85, 0.78, 1500, 0, 200, 350.4, 250000, '2023-06-15', 5000, 3500, 5, 'Gold', 'Initial audit');
INSERT INTO Stadium_Energy_Management (stadium_code, electricity_consumption_mwh, gas_consumption_mwh, renewable_pct, water_usage_liters, waste_generated_tons, hvac_efficiency, lighting_efficiency, solar_panel_capacity_kw, wind_turbine_capacity_kw, battery_storage_mwh, carbon_emission_tons, energy_cost_usd, energy_audit_date, peak_demand_kw, off_peak_demand_kw, energy_savings_initiative_count, green_certification_level, notes) VALUES ('ST002', 950.0, 210.0, 30.5, 420000, 9.8, 0.88, 0.81, 1800, 0, 150, 280.1, 210000, '2023-07-20', 4700, 3200, 7, 'Platinum', 'Solar upgrade completed');
INSERT INTO Stadium_Energy_Management (stadium_code, electricity_consumption_mwh, gas_consumption_mwh, renewable_pct, water_usage_liters, waste_generated_tons, hvac_efficiency, lighting_efficiency, solar_panel_capacity_kw, wind_turbine_capacity_kw, battery_storage_mwh, carbon_emission_tons, energy_cost_usd, energy_audit_date, peak_demand_kw, off_peak_demand_kw, energy_savings_initiative_count, green_certification_level, notes) VALUES ('ST003', 1100.2, 280.7, 22.1, 480000, 11.0, 0.82, 0.76, 1300, 0, 180, 320.9, 240000, '2023-08-05', 4900, 3400, 4, 'Silver', 'HVAC retrofit pending');

-- Metadata for digital assets
CREATE TABLE Digital_Asset_Metadata (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_type TEXT,
    file_name TEXT,
    file_extension TEXT,
    upload_date TEXT,
    uploader_id INTEGER,
    file_size_bytes INTEGER,
    resolution TEXT,
    duration_seconds INTEGER,
    codec TEXT,
    description TEXT,
    tags TEXT,
    usage_rights TEXT,
    access_level TEXT,
    download_count INTEGER,
    last_accessed TEXT,
    checksum TEXT,
    version_number INTEGER,
    related_campaign_id INTEGER,
    archive_status TEXT,
    notes TEXT
);
INSERT INTO Digital_Asset_Metadata (asset_type, file_name, file_extension, upload_date, uploader_id, file_size_bytes, resolution, duration_seconds, codec, description, tags, usage_rights, access_level, download_count, last_accessed, checksum, version_number, related_campaign_id, archive_status, notes) VALUES ('image', 'stadium_aerial', 'jpg', '2023-05-01', 101, 2048000, '3840x2160', 0, 'jpeg', 'Aerial view of main stadium', 'aerial,stadium,2023', 'internal', 'public', 120, '2023-08-15', 'abc123def', 1, 301, 'active', '');
INSERT INTO Digital_Asset_Metadata (asset_type, file_name, file_extension, upload_date, uploader_id, file_size_bytes, resolution, duration_seconds, codec, description, tags, usage_rights, access_level, download_count, last_accessed, checksum, version_number, related_campaign_id, archive_status, notes) VALUES ('video', 'match_highlights', 'mp4', '2023-06-20', 102, 500000000, '1920x1080', 3600, 'h264', 'Highlights from season opener', 'highlights,match,season2023', 'license', 'restricted', 85, '2023-08-20', 'def456ghi', 2, 302, 'active', '');
INSERT INTO Digital_Asset_Metadata (asset_type, file_name, file_extension, upload_date, uploader_id, file_size_bytes, resolution, duration_seconds, codec, description, tags, usage_rights, access_level, download_count, last_accessed, checksum, version_number, related_campaign_id, archive_status, notes) VALUES ('document', 'sponsor_contract', 'pdf', '2023-04-15', 103, 850000, '', 0, '', 'Signed contract with sponsor Alpha', 'contract,sponsor,alpha', 'confidential', 'private', 15, '2023-07-30', 'ghi789jkl', 1, 303, 'archived', 'expires2025');

-- Fan sentiment analytics per event
CREATE TABLE Fan_Sentiment_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_code TEXT,
    sentiment_score REAL,
    positive_mentions INTEGER,
    negative_mentions INTEGER,
    neutral_mentions INTEGER,
    social_platform TEXT,
    region TEXT,
    language TEXT,
    analysis_date TEXT,
    influencer_count INTEGER,
    trending_hashtag TEXT,
    average_engagement REAL,
    sentiment_trend TEXT,
    sentiment_category TEXT,
    comments_sample TEXT,
    data_source TEXT,
    reliability_rating INTEGER,
    notes TEXT,
    analyst_id INTEGER,
    created_at TEXT
);
INSERT INTO Fan_Sentiment_Analytics (event_code, sentiment_score, positive_mentions, negative_mentions, neutral_mentions, social_platform, region, language, analysis_date, influencer_count, trending_hashtag, average_engagement, sentiment_trend, sentiment_category, comments_sample, data_source, reliability_rating, notes, analyst_id, created_at) VALUES ('EVT001', 0.73, 1240, 210, 460, 'Twitter', 'Europe', 'en', '2023-08-10', 35, '#Victory', 4.2, 'upward', 'positive', 'Great performance', 'internal', 9, '', 501, '2023-08-11');
INSERT INTO Fan_Sentiment_Analytics (event_code, sentiment_score, positive_mentions, negative_mentions, neutral_mentions, social_platform, region, language, analysis_date, influencer_count, trending_hashtag, average_engagement, sentiment_trend, sentiment_category, comments_sample, data_source, reliability_rating, notes, analyst_id, created_at) VALUES ('EVT002', -0.42, 320, 780, 250, 'Instagram', 'Asia', 'zh', '2023-08-12', 22, '#Disappointment', 2.8, 'downward', 'negative', 'Poor tactics', 'external', 7, 'spike after halftime', 502, '2023-08-13');
INSERT INTO Fan_Sentiment_Analytics (event_code, sentiment_score, positive_mentions, negative_mentions, neutral_mentions, social_platform, region, language, analysis_date, influencer_count, trending_hashtag, average_engagement, sentiment_trend, sentiment_category, comments_sample, data_source, reliability_rating, notes, analyst_id, created_at) VALUES ('EVT003', 0.15, 560, 540, 300, 'Facebook', 'NorthAmerica', 'en', '2023-08-15', 18, '#MixedFeelings', 3.1, 'stable', 'mixed', 'Neutral reaction', 'internal', 8, '', 503, '2023-08-16');

-- Sponsor event engagements
CREATE TABLE Sponsor_Event_Engagements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_id INTEGER,
    engagement_type TEXT,
    start_date TEXT,
    end_date TEXT,
    expected_audience INTEGER,
    actual_audience INTEGER,
    activation_cost_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    social_media_mention_count INTEGER,
    on_site_activity_score REAL,
    brand_awareness_index REAL,
    feedback_score REAL,
    notes TEXT,
    compliance_flag INTEGER,
    contract_reference TEXT,
    created_by TEXT,
    created_at TEXT
);
INSERT INTO Sponsor_Event_Engagements (sponsor_id, event_id, engagement_type, start_date, end_date, expected_audience, actual_audience, activation_cost_usd, impressions, clicks, conversions, social_media_mention_count, on_site_activity_score, brand_awareness_index, feedback_score, notes, compliance_flag, contract_reference, created_by, created_at) VALUES (201, 801, 'booth', '2023-07-01', '2023-07-03', 50000, 56200, 120000, 850000, 7200, 540, 430, 78.5, 84.2, 4.6, '', 1, 'CTR-2023-07', 'alice', '2023-07-04');
INSERT INTO Sponsor_Event_Engagements (sponsor_id, event_id, engagement_type, start_date, end_date, expected_audience, actual_audience, activation_cost_usd, impressions, clicks, conversions, social_media_mention_count, on_site_activity_score, brand_awareness_index, feedback_score, notes, compliance_flag, contract_reference, created_by, created_at) VALUES (202, 802, 'digital_ads', '2023-08-10', '2023-08-12', 80000, 79500, 95000, 1200000, 10500, 820, 610, 82.1, 88.0, 4.9, 'High engagement on mobile', 1, 'DAD-2023-08', 'bob', '2023-08-13');
INSERT INTO Sponsor_Event_Engagements (sponsor_id, event_id, engagement_type, start_date, end_date, expected_audience, actual_audience, activation_cost_usd, impressions, clicks, conversions, social_media_mention_count, on_site_activity_score, brand_awareness_index, feedback_score, notes, compliance_flag, contract_reference, created_by, created_at) VALUES (203, 803, 'stadium_ signage', '2023-09-05', '2023-09-07', 60000, 57400, 70000, 660000, 5400, 410, 350, 71.3, 79.5, 4.2, '', 1, 'SIG-2023-09', 'carol', '2023-09-08');

-- Club asset valuation records
CREATE TABLE Club_Asset_Valuation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_type TEXT,
    asset_description TEXT,
    acquisition_date TEXT,
    acquisition_cost_usd REAL,
    current_valuation_usd REAL,
    depreciation_years INTEGER,
    depreciation_method TEXT,
    location TEXT,
    responsible_department TEXT,
    valuation_date TEXT,
    appraiser_name TEXT,
    insurance_coverage_usd REAL,
    condition_rating INTEGER,
    maintenance_cost_annual_usd REAL,
    depreciation_accumulated_usd REAL,
    salvage_value_usd REAL,
    asset_tag TEXT,
    tax_id TEXT,
    notes TEXT
);
INSERT INTO Club_Asset_Valuation (asset_type, asset_description, acquisition_date, acquisition_cost_usd, current_valuation_usd, depreciation_years, depreciation_method, location, responsible_department, valuation_date, appraiser_name, insurance_coverage_usd, condition_rating, maintenance_cost_annual_usd, depreciation_accumulated_usd, salvage_value_usd, asset_tag, tax_id, notes) VALUES ('vehicle', 'Team bus', '2018-04-12', 250000, 180000, 10, 'straight_line', 'HQ_Garage', 'Transport', '2023-07-01', 'eva', 200000, 8, 12000, 70000, 30000, 'VB001', 'TX12345', '');
INSERT INTO Club_Asset_Valuation (asset_type, asset_description, acquisition_date, acquisition_cost_usd, current_valuation_usd, depreciation_years, depreciation_method, location, responsible_department, valuation_date, appraiser_name, insurance_coverage_usd, condition_rating, maintenance_cost_annual_usd, depreciation_accumulated_usd, salvage_value_usd, asset_tag, tax_id, notes) VALUES ('building', 'Training complex', '2015-09-20', 8500000, 7200000, 30, 'declining_balance', 'Training_Camp', 'Facilities', '2023-07-15', 'mike', 9000000, 9, 250000, 1300000, 500000, 'BLD001', 'TX67890', '');
INSERT INTO Club_Asset_Valuation (asset_type, asset_description, acquisition_date, acquisition_cost_usd, current_valuation_usd, depreciation_years, depreciation_method, location, responsible_department, valuation_date, appraiser_name, insurance_coverage_usd, condition_rating, maintenance_cost_annual_usd, depreciation_accumulated_usd, salvage_value_usd, asset_tag, tax_id, notes) VALUES ('equipment', 'VR training system', '2021-02-05', 150000, 130000, 5, 'straight_line', 'Tech_Lab', 'Innovation', '2023-08-01', 'sara', 180000, 7, 15000, 30000, 20000, 'EQP001', 'TX54321', '');

-- Training program analytics
CREATE TABLE Training_Program_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    program_id INTEGER,
    program_name TEXT,
    start_date TEXT,
    end_date TEXT,
    total_sessions INTEGER,
    avg_session_duration_min REAL,
    participant_count INTEGER,
    completion_rate_pct REAL,
    satisfaction_score REAL,
    curriculum_version TEXT,
    instructor_id INTEGER,
    platform_used TEXT,
    device_type TEXT,
    bandwidth_usage_mb REAL,
    latency_ms REAL,
    error_rate_pct REAL,
    certification_awarded_count INTEGER,
    notes TEXT,
    created_by TEXT,
    updated_at TEXT
);
INSERT INTO Training_Program_Analytics (program_id, program_name, start_date, end_date, total_sessions, avg_session_duration_min, participant_count, completion_rate_pct, satisfaction_score, curriculum_version, instructor_id, platform_used, device_type, bandwidth_usage_mb, latency_ms, error_rate_pct, certification_awarded_count, notes, created_by, updated_at) VALUES (301, 'Tactical Awareness', '2023-05-01', '2023-06-30', 12, 45.5, 28, 92.3, 4.7, 'v2', 401, 'InHousePlatform', 'desktop', 500.2, 35, 0.8, 22, '', 'coach_john', '2023-07-01');
INSERT INTO Training_Program_Analytics (program_id, program_name, start_date, end_date, total_sessions, avg_session_duration_min, participant_count, completion_rate_pct, satisfaction_score, curriculum_version, instructor_id, platform_used, device_type, bandwidth_usage_mb, latency_ms, error_rate_pct, certification_awarded_count, notes, created_by, updated_at) VALUES (302, 'Physical Conditioning', '2023-07-10', '2023-08-20', 8, 60.0, 15, 88.0, 4.5, 'v1', 402, 'FitTrack', 'mobile', 300.0, 20, 1.2, 15, 'High injury prevention focus', 'coach_mary', '2023-08-21');
INSERT INTO Training_Program_Analytics (program_id, program_name, start_date, end_date, total_sessions, avg_session_duration_min, participant_count, completion_rate_pct, satisfaction_score, curriculum_version, instructor_id, platform_used, device_type, bandwidth_usage_mb, latency_ms, error_rate_pct, certification_awarded_count, notes, created_by, updated_at) VALUES (303, 'Goalkeeping Drills', '2023-09-01', '2023-09-30', 6, 50.0, 9, 95.0, 4.9, 'v3', 403, 'GoalKeeperPro', 'tablet', 250.5, 15, 0.5, 8, '', 'coach_paul', '2023-10-01');

-- Broadcast viewer demographics
CREATE TABLE Broadcast_Viewer_Demographics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_id INTEGER,
    country_code TEXT,
    region TEXT,
    age_group TEXT,
    gender TEXT,
    device_type TEXT,
    average_view_time_min REAL,
    peak_viewers INTEGER,
    average_quality TEXT,
    subscription_type TEXT,
    ad_exposure_count INTEGER,
    revenue_usd REAL,
    data_collection_date TEXT,
    notes TEXT,
    source TEXT,
    reliability_score INTEGER,
    created_at TEXT,
    updated_at TEXT,
    analyst_id INTEGER
);
INSERT INTO Broadcast_Viewer_Demographics (broadcast_id, country_code, region, age_group, gender, device_type, average_view_time_min, peak_viewers, average_quality, subscription_type, ad_exposure_count, revenue_usd, data_collection_date, notes, source, reliability_score, created_at, updated_at, analyst_id) VALUES (401, 'GB', 'Europe', '25-34', 'female', 'smartphone', 78.5, 120000, 'HD', 'premium', 35000, 420000, '2023-08-10', '', 'internal', 9, '2023-08-11', '2023-08-12', 601);
INSERT INTO Broadcast_Viewer_Demographics (broadcast_id, country_code, region, age_group, gender, device_type, average_view_time_min, peak_viewers, average_quality, subscription_type, ad_exposure_count, revenue_usd, data_collection_date, notes, source, reliability_score, created_at, updated_at, analyst_id) VALUES (402, 'US', 'NorthAmerica', '35-44', 'male', 'desktop', 85.2, 200000, 'FullHD', 'standard', 47000, 610000, '2023-08-12', 'Higher ad load', 'external', 8, '2023-08-13', '2023-08-14', 602);
INSERT INTO Broadcast_Viewer_Demographics (broadcast_id, country_code, region, age_group, gender, device_type, average_view_time_min, peak_viewers, average_quality, subscription_type, ad_exposure_count, revenue_usd, data_collection_date, notes, source, reliability_score, created_at, updated_at, analyst_id) VALUES (403, 'DE', 'Europe', '18-24', 'nonbinary', 'tablet', 64.3, 90000, 'HD', 'free', 25000, 300000, '2023-08-15', '', 'internal', 7, '2023-08-16', '2023-08-17', 603);

-- Venue safety inspection logs
CREATE TABLE Venue_Safety_Inspection_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    inspection_date TEXT,
    inspector_name TEXT,
    inspection_type TEXT,
    fire_safety_score INTEGER,
    structural_integrity_score INTEGER,
    crowd_control_score INTEGER,
    emergency_exits_available INTEGER,
    first_aid_kits_count INTEGER,
    signage_compliance_score INTEGER,
    electrical_safety_score INTEGER,
    water_system_score INTEGER,
    hvac_score INTEGER,
    waste_management_score INTEGER,
    overall_rating INTEGER,
    corrective_actions_needed TEXT,
    follow_up_date TEXT,
    notes TEXT,
    created_at TEXT
);
INSERT INTO Venue_Safety_Inspection_Logs (venue_id, inspection_date, inspector_name, inspection_type, fire_safety_score, structural_integrity_score, crowd_control_score, emergency_exits_available, first_aid_kits_count, signage_compliance_score, electrical_safety_score, water_system_score, hvac_score, waste_management_score, overall_rating, corrective_actions_needed, follow_up_date, notes, created_at) VALUES (501, '2023-07-20', 'david', 'annual', 88, 92, 85, 12, 8, 90, 87, 84, 89, 80, 88, 'replace fire extinguishers in sector B', '2023-09-01', '', '2023-07-21');
INSERT INTO Venue_Safety_Inspection_Logs (venue_id, inspection_date, inspector_name, inspection_type, fire_safety_score, structural_integrity_score, crowd_control_score, emergency_exits_available, first_aid_kits_count, signage_compliance_score, electrical_safety_score, water_system_score, hvac_score, waste_management_score, overall_rating, corrective_actions_needed, follow_up_date, notes, created_at) VALUES (502, '2023-08-05', 'elena', 'pre_event', 92, 95, 90, 14, 10, 94, 91, 88, 93, 86, 92, 'upgrade emergency lighting', '2023-10-10', 'All other items compliant', '2023-08-06');
INSERT INTO Venue_Safety_Inspection_Logs (venue_id, inspection_date, inspector_name, inspection_type, fire_safety_score, structural_integrity_score, crowd_control_score, emergency_exits_available, first_aid_kits_count, signage_compliance_score, electrical_safety_score, water_system_score, hvac_score, waste_management_score, overall_rating, corrective_actions_needed, follow_up_date, notes, created_at) VALUES (503, '2023-09-12', 'frank', 'post_event', 85, 88, 80, 10, 6, 82, 78, 75, 80, 70, 81, 'conduct roof leak investigation', '2024-01-15', '', '2023-09-13');

-- Club community investment projects
CREATE TABLE Club_Community_Investment_Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    project_name TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_usd REAL,
    community_partner TEXT,
    target_beneficiaries INTEGER,
    impact_metric TEXT,
    status TEXT,
    project_manager TEXT,
    location TEXT,
    funding_source TEXT,
    sustainability_score INTEGER,
    media_coverage_count INTEGER,
    volunteer_hours INTEGER,
    reported_outcomes TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    compliance_flag INTEGER
);
INSERT INTO Club_Community_Investment_Projects (project_name, start_date, end_date, budget_usd, community_partner, target_beneficiaries, impact_metric, status, project_manager, location, funding_source, sustainability_score, media_coverage_count, volunteer_hours, reported_outcomes, notes, created_at, updated_at, compliance_flag) VALUES ('Youth Football Clinics', '2023-04-01', '2023-09-30', 50000, 'Local Schools', 1200, 'participants', 'completed', 'gina', 'CityCenter', 'club_funds', 85, 12, 350, 'Improved skill levels', '', '2023-10-01', '2023-10-02', 1);
INSERT INTO Club_Community_Investment_Projects (project_name, start_date, end_date, budget_usd, community_partner, target_beneficiaries, impact_metric, status, project_manager, location, funding_source, sustainability_score, media_coverage_count, volunteer_hours, reported_outcomes, notes, created_at, updated_at, compliance_flag) VALUES ('Stadium Accessibility Upgrade', '2023-06-15', '2023-12-15', 120000, 'Accessibility NGO', 800, 'access_improved', 'in_progress', 'henry', 'NorthWing', 'sponsor_alpha', 90, 8, 200, 'Wheelchair ramps installed', '', '2023-07-01', '2023-07-02', 1);
INSERT INTO Club_Community_Investment_Projects (project_name, start_date, end_date, budget_usd, community_partner, target_beneficiaries, impact_metric, status, project_manager, location, funding_source, sustainability_score, media_coverage_count, volunteer_hours, reported_outcomes, notes, created_at, updated_at, compliance_flag) VALUES ('Environmental Awareness Campaign', '2023-08-01', '2024-01-31', 30000, 'Green Earth', 5000, 'awareness_score', 'planned', 'irene', 'Online', 'club_funds', 78, 5, 0, '', 'Kickoff scheduled for September', '2023-08-05', '2023-08-06', 0);

-- International fan tour itineraries
CREATE TABLE International_Fan_Tour_Itineraries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tour_name TEXT,
    departure_date TEXT,
    return_date TEXT,
    num_cities INTEGER,
    total_fans_estimated INTEGER,
    primary_market TEXT,
    travel_mode TEXT,
    accommodation_type TEXT,
    budget_per_fan_usd REAL,
    sponsor_id INTEGER,
    itinerary_details TEXT,
    health_safety_plan TEXT,
    visa_requirements TEXT,
    marketing_campaign TEXT,
    ticket_price_usd REAL,
    sales_start_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO International_Fan_Tour_Itineraries (tour_name, departure_date, return_date, num_cities, total_fans_estimated, primary_market, travel_mode, accommodation_type, budget_per_fan_usd, sponsor_id, itinerary_details, health_safety_plan, visa_requirements, marketing_campaign, ticket_price_usd, sales_start_date, notes, created_at, updated_at) VALUES ('Euro Fan Fest', '2023-09-01', '2023-09-15', 5, 2500, 'Europe', 'air', 'hotel', 1500, 401, 'London;Paris;Berlin;Rome;Madrid', 'COVID19 protocols', 'Schengen Visa', 'Euro2023', 250, '2023-07-01', '', '2023-07-05', '2023-07-06');
INSERT INTO International_Fan_Tour_Itineraries (tour_name, departure_date, return_date, num_cities, total_fans_estimated, primary_market, travel_mode, accommodation_type, budget_per_fan_usd, sponsor_id, itinerary_details, health_safety_plan, visa_requirements, marketing_campaign, ticket_price_usd, sales_start_date, notes, created_at, updated_at) VALUES ('Asia Fan Connect', '2023-10-10', '2023-10-25', 4, 1800, 'Asia', 'air', 'resort', 1200, 402, 'Tokyo;Seoul;Bangkok;Singapore', 'Standard health checks', 'eVisa', 'AsiaPulse', 200, '2023-08-01', '', '2023-08-05', '2023-08-06');
INSERT INTO International_Fan_Tour_Itineraries (tour_name, departure_date, return_date, num_cities, total_fans_estimated, primary_market, travel_mode, accommodation_type, budget_per_fan_usd, sponsor_id, itinerary_details, health_safety_plan, visa_requirements, marketing_campaign, ticket_price_usd, sales_start_date, notes, created_at, updated_at) VALUES ('South America Celebration', '2023-11-05', '2023-11-20', 3, 2200, 'SouthAmerica', 'air', 'hostel', 900, 403, 'BuenosAires;Santiago;Lima', 'Vaccination required', 'No visa for most', 'SA_Fans', 150, '2023-09-01', '', '2023-09-05', '2023-09-06');