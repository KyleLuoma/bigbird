-- Streaming quality metrics for each live session
CREATE TABLE streaming_quality_metrics (
    id INTEGER PRIMARY KEY,
    session_id INTEGER,
    video_bitrate INTEGER,
    audio_bitrate INTEGER,
    frame_rate REAL,
    latency_ms INTEGER,
    dropped_frames INTEGER,
    buffering_events INTEGER,
    avg_buffer_time REAL,
    max_buffer_time REAL,
    start_time DATE,
    end_time DATE,
    viewer_count INTEGER,
    concurrent_streams INTEGER,
    cdn_provider TEXT,
    region TEXT,
    device_type TEXT,
    resolution TEXT,
    error_rate REAL,
    feedback_score INTEGER
);

INSERT INTO streaming_quality_metrics (id, session_id, video_bitrate, audio_bitrate, frame_rate, latency_ms, dropped_frames, buffering_events, avg_buffer_time, max_buffer_time, start_time, end_time, viewer_count, concurrent_streams, cdn_provider, region, device_type, resolution, error_rate, feedback_score)
VALUES (1, 101, 4500, 192, 60.0, 120, 3, 2, 0.5, 1.2, '2025-06-01', '2025-06-01', 1500, 1, 'Akamai', 'NA', 'Desktop', '1080p', 0.02, 85);
INSERT INTO streaming_quality_metrics (id, session_id, video_bitrate, audio_bitrate, frame_rate, latency_ms, dropped_frames, buffering_events, avg_buffer_time, max_buffer_time, start_time, end_time, viewer_count, concurrent_streams, cdn_provider, region, device_type, resolution, error_rate, feedback_score)
VALUES (2, 102, 3000, 128, 30.0, 200, 5, 4, 1.0, 2.5, '2025-07-15', '2025-07-15', 800, 1, 'Cloudflare', 'EU', 'Mobile', '720p', 0.05, 78);
INSERT INTO streaming_quality_metrics (id, session_id, video_bitrate, audio_bitrate, frame_rate, latency_ms, dropped_frames, buffering_events, avg_buffer_time, max_buffer_time, start_time, end_time, viewer_count, concurrent_streams, cdn_provider, region, device_type, resolution, error_rate, feedback_score)
VALUES (3, 103, 6000, 256, 60.0, 80, 1, 1, 0.3, 0.8, '2025-08-20', '2025-08-20', 2300, 2, 'Fastly', 'APAC', 'Desktop', '4K', 0.01, 92);

-- Catalog of game mechanics with detailed attributes
CREATE TABLE game_mechanics_catalog (
    id INTEGER PRIMARY KEY,
    mechanic_code TEXT,
    name TEXT,
    description TEXT,
    first_appearance_set TEXT,
    rarity TEXT,
    power_modifier INTEGER,
    toughness_modifier INTEGER,
    cost_modifier REAL,
    synergy_tags TEXT,
    interaction_notes TEXT,
    creator TEXT,
    creation_date DATE,
    last_updated DATE,
    is_legendary INTEGER,
    is_epic INTEGER,
    is_common INTEGER,
    related_mechanics TEXT,
    official_rulebook_page INTEGER,
    community_popularity_score INTEGER,
    meta_usage_score INTEGER,
    playtesting_notes TEXT
);

INSERT INTO game_mechanics_catalog (id, mechanic_code, name, description, first_appearance_set, rarity, power_modifier, toughness_modifier, cost_modifier, synergy_tags, interaction_notes, creator, creation_date, last_updated, is_legendary, is_epic, is_common, related_mechanics, official_rulebook_page, community_popularity_score, meta_usage_score, playtesting_notes)
VALUES (1, 'MECH01', 'Flying', 'Allows creature to evade blockers without flying', 'Alpha', 'Common', 0, 0, 0.0, 'Aerial', 'Interacts with Reach', 'DesignTeamA', '1993-08-05', '2024-01-10', 0, 0, 1, 'Reach,Hover', 12, 88, 45, 'Stable');
INSERT INTO game_mechanics_catalog (id, mechanic_code, name, description, first_appearance_set, rarity, power_modifier, toughness_modifier, cost_modifier, synergy_tags, interaction_notes, creator, creation_date, last_updated, is_legendary, is_epic, is_common, related_mechanics, official_rulebook_page, community_popularity_score, meta_usage_score, playtesting_notes)
VALUES (2, 'MECH02', 'Trample', 'Excess damage carries over to defending player', 'Beta', 'Uncommon', 0, 0, 0.0, 'Aggressive', 'Works with Deathtouch', 'DesignTeamB', '1994-09-01', '2024-02-15', 0, 0, 0, 'Deathtouch,Overrun', 45, 73, 36, 'Balanced');
INSERT INTO game_mechanics_catalog (id, mechanic_code, name, description, first_appearance_set, rarity, power_modifier, toughness_modifier, cost_modifier, synergy_tags, interaction_notes, creator, creation_date, last_updated, is_legendary, is_epic, is_common, related_mechanics, official_rulebook_page, community_popularity_score, meta_usage_score, playtesting_notes)
VALUES (3, 'MECH03', 'Hexproof', 'Cannot be targeted by opponents'' spells', 'IceAge', 'Rare', 0, 0, 0.0, 'Protective', 'Synergy with Untap', 'DesignTeamC', '1995-07-20', '2024-03-08', 0, 1, 0, 'Indestructible,Shroud', 78, 65, 28, 'Requires fine tuning');

-- Statistics about individual collectors
CREATE TABLE collector_statistics (
    id INTEGER PRIMARY KEY,
    collector_id INTEGER,
    total_cards INTEGER,
    unique_sets INTEGER,
    rare_cards INTEGER,
    mythic_cards INTEGER,
    total_value REAL,
    average_card_price REAL,
    last_update DATE,
    most_valued_card_id TEXT,
    most_valued_card_name TEXT,
    total_foils INTEGER,
    total_alternatives INTEGER,
    total_promos INTEGER,
    total_reprints INTEGER,
    total_reserved INTEGER,
    total_online_only INTEGER,
    total_oversized INTEGER,
    total_textless INTEGER,
    total_timeshifted INTEGER,
    total_wildcards INTEGER,
    total_token_cards INTEGER
);

INSERT INTO collector_statistics (id, collector_id, total_cards, unique_sets, rare_cards, mythic_cards, total_value, average_card_price, last_update, most_valued_card_id, most_valued_card_name, total_foils, total_alternatives, total_promos, total_reprints, total_reserved, total_online_only, total_oversized, total_textless, total_timeshifted, total_wildcards, total_token_cards)
VALUES (1, 2001, 5000, 350, 800, 150, 125000.00, 25.00, '2025-01-10', 'CARD12345', 'AncientDragon', 1200, 300, 250, 400, 50, 20, 15, 5, 8, 30, 200);
INSERT INTO collector_statistics (id, collector_id, total_cards, unique_sets, rare_cards, mythic_cards, total_value, average_card_price, last_update, most_valued_card_id, most_valued_card_name, total_foils, total_alternatives, total_promos, total_reprints, total_reserved, total_online_only, total_oversized, total_textless, total_timeshifted, total_wildcards, total_token_cards)
VALUES (2, 2002, 3200, 210, 450, 90, 62000.00, 19.38, '2025-02-12', 'CARD67890', 'MysticPhoenix', 800, 150, 180, 250, 30, 12, 10, 3, 6, 20, 120);
INSERT INTO collector_statistics (id, collector_id, total_cards, unique_sets, rare_cards, mythic_cards, total_value, average_card_price, last_update, most_valued_card_id, most_valued_card_name, total_foils, total_alternatives, total_promos, total_reprints, total_reserved, total_online_only, total_oversized, total_textless, total_timeshifted, total_wildcards, total_token_cards)
VALUES (3, 2003, 7500, 480, 1300, 260, 210000.00, 28.00, '2025-03-05', 'CARD54321', 'EternalTitan', 1800, 500, 400, 600, 80, 35, 25, 9, 12, 45, 350);

-- Resources allocated for virtual events
CREATE TABLE virtual_event_resources (
    id INTEGER PRIMARY KEY,
    event_id INTEGER,
    cpu_cores INTEGER,
    ram_gb INTEGER,
    storage_gb INTEGER,
    bandwidth_mbps INTEGER,
    concurrent_users_limit INTEGER,
    load_balancer TEXT,
    failover_region TEXT,
    backup_strategy TEXT,
    encryption_enabled INTEGER,
    monitoring_tool TEXT,
    logs_retention_days INTEGER,
    support_staff INTEGER,
    escalation_path TEXT,
    estimated_cost_usd REAL,
    actual_cost_usd REAL,
    start_time DATE,
    end_time DATE,
    resource_status TEXT,
    notes TEXT
);

INSERT INTO virtual_event_resources (id, event_id, cpu_cores, ram_gb, storage_gb, bandwidth_mbps, concurrent_users_limit, load_balancer, failover_region, backup_strategy, encryption_enabled, monitoring_tool, logs_retention_days, support_staff, escalation_path, estimated_cost_usd, actual_cost_usd, start_time, end_time, resource_status, notes)
VALUES (1, 301, 64, 256, 5000, 10000, 20000, 'ELB', 'US_East', 'DailyIncremental', 1, 'Datadog', 90, 5, 'Tier2Support', 15000.00, 14800.00, '2025-04-01', '2025-04-02', 'Active', 'All systems nominal');
INSERT INTO virtual_event_resources (id, event_id, cpu_cores, ram_gb, storage_gb, bandwidth_mbps, concurrent_users_limit, load_balancer, failover_region, backup_strategy, encryption_enabled, monitoring_tool, logs_retention_days, support_staff, escalation_path, estimated_cost_usd, actual_cost_usd, start_time, end_time, resource_status, notes)
VALUES (2, 302, 32, 128, 3000, 8000, 15000, 'NGINX', 'EU_Central', 'Snapshot', 1, 'Prometheus', 60, 3, 'Tier1Support', 9000.00, 9100.00, '2025-05-10', '2025-05-10', 'Completed', 'Minor latency spikes');
INSERT INTO virtual_event_resources (id, event_id, cpu_cores, ram_gb, storage_gb, bandwidth_mbps, concurrent_users_limit, load_balancer, failover_region, backup_strategy, encryption_enabled, monitoring_tool, logs_retention_days, support_staff, escalation_path, estimated_cost_usd, actual_cost_usd, start_time, end_time, resource_status, notes)
VALUES (3, 303, 48, 192, 4000, 9000, 18000, 'HAProxy', 'APAC_South', 'Continuous', 1, 'NewRelic', 75, 4, 'Tier2Support', 12000.00, 11850.00, '2025-06-15', '2025-06-15', 'Active', 'Peak usage within limits');

-- Environmental impact assessments for events and venues
CREATE TABLE environmental_impact_assessments (
    id INTEGER PRIMARY KEY,
    venue_id INTEGER,
    event_id INTEGER,
    carbon_footprint_tons REAL,
    waste_kg INTEGER,
    energy_consumption_kwh REAL,
    water_usage_liters REAL,
    recycling_rate_percent REAL,
    renewable_energy_percent REAL,
    transportation_emissions_tons REAL,
    local_supplier_percent REAL,
    certification_status TEXT,
    assessment_date DATE,
    assessor_name TEXT,
    notes TEXT,
    mitigation_actions TEXT,
    projected_savings_tons REAL,
    actual_savings_tons REAL,
    compliance_score INTEGER,
    overall_rating TEXT,
    follow_up_required INTEGER
);

INSERT INTO environmental_impact_assessments (id, venue_id, event_id, carbon_footprint_tons, waste_kg, energy_consumption_kwh, water_usage_liters, recycling_rate_percent, renewable_energy_percent, transportation_emissions_tons, local_supplier_percent, certification_status, assessment_date, assessor_name, notes, mitigation_actions, projected_savings_tons, actual_savings_tons, compliance_score, overall_rating, follow_up_required)
VALUES (1, 10, 301, 2.5, 800, 12000.0, 25000.0, 45.0, 30.0, 0.8, 20.0, 'ISO14001', '2025-04-03', 'EcoTeamA', 'Good overall', 'TreePlanting', 0.3, 0.35, 88, 'A', 0);
INSERT INTO environmental_impact_assessments (id, venue_id, event_id, carbon_footprint_tons, waste_kg, energy_consumption_kwh, water_usage_liters, recycling_rate_percent, renewable_energy_percent, transportation_emissions_tons, local_supplier_percent, certification_status, assessment_date, assessor_name, notes, mitigation_actions, projected_savings_tons, actual_savings_tons, compliance_score, overall_rating, follow_up_required)
VALUES (2, 12, 302, 1.8, 500, 9000.0, 18000.0, 55.0, 40.0, 0.5, 30.0, 'LEED_Gold', '2025-05-11', 'EcoTeamB', 'Excellent waste management', 'SolarPanels', 0.25, 0.27, 92, 'A+', 0);
INSERT INTO environmental_impact_assessments (id, venue_id, event_id, carbon_footprint_tons, waste_kg, energy_consumption_kwh, water_usage_liters, recycling_rate_percent, renewable_energy_percent, transportation_emissions_tons, local_supplier_percent, certification_status, assessment_date, assessor_name, notes, mitigation_actions, projected_savings_tons, actual_savings_tons, compliance_score, overall_rating, follow_up_required)
VALUES (3, 15, 303, 3.0, 950, 14000.0, 30000.0, 38.0, 25.0, 1.1, 15.0, 'ISO14001', '2025-06-16', 'EcoTeamC', 'Higher carbon due to travel', 'BikeIncentive', 0.4, 0.38, 81, 'B', 1);

-- Licensing agreement terms and conditions
CREATE TABLE licensing_agreement_terms (
    id INTEGER PRIMARY KEY,
    license_id TEXT,
    licensor TEXT,
    licensee TEXT,
    effective_date DATE,
    expiration_date DATE,
    territory TEXT,
    exclusivity INTEGER,
    royalty_rate_percent REAL,
    min_royalty_usd REAL,
    advance_payment_usd REAL,
    payment_schedule TEXT,
    audit_rights INTEGER,
    confidentiality_clause INTEGER,
    termination_notice_days INTEGER,
    sublicensing_allowed INTEGER,
    usage_limits TEXT,
    reporting_requirements TEXT,
    amendment_count INTEGER,
    status TEXT,
    notes TEXT,
    version INTEGER
);

INSERT INTO licensing_agreement_terms (id, license_id, licensor, licensee, effective_date, expiration_date, territory, exclusivity, royalty_rate_percent, min_royalty_usd, advance_payment_usd, payment_schedule, audit_rights, confidentiality_clause, termination_notice_days, sublicensing_allowed, usage_limits, reporting_requirements, amendment_count, status, notes, version)
VALUES (1, 'LIC001', 'ArtHouseCo', 'GameStudioX', '2024-01-01', '2029-12-31', 'Global', 1, 5.0, 10000.00, 50000.00, 'Quarterly', 1, 1, 60, 0, 'UnlimitedDigital', 'AnnualReport', 2, 'Active', 'First term', 1);
INSERT INTO licensing_agreement_terms (id, license_id, licensor, licensee, effective_date, expiration_date, territory, exclusivity, royalty_rate_percent, min_royalty_usd, advance_payment_usd, payment_schedule, audit_rights, confidentiality_clause, termination_notice_days, sublicensing_allowed, usage_limits, reporting_requirements, amendment_count, status, notes, version)
VALUES (2, 'LIC002', 'MusicWorks', 'StreamerY', '2023-06-15', '2026-06-14', 'NorthAmerica', 0, 3.5, 5000.00, 20000.00, 'SemiAnnual', 0, 1, 90, 1, 'StreamingOnly', 'BiAnnualReport', 1, 'Pending', 'Negotiation ongoing', 1);
INSERT INTO licensing_agreement_terms (id, license_id, licensor, licensee, effective_date, expiration_date, territory, exclusivity, royalty_rate_percent, min_royalty_usd, advance_payment_usd, payment_schedule, audit_rights, confidentiality_clause, termination_notice_days, sublicensing_allowed, usage_limits, reporting_requirements, amendment_count, status, notes, version)
VALUES (3, 'LIC003', 'PixelArts', 'MerchVendorZ', '2025-03-01', '2030-02-28', 'Europe', 1, 4.2, 8000.00, 30000.00, 'Annual', 1, 0, 120, 0, 'PrintOnDemand', 'QuarterlyReport', 0, 'Active', 'Standard terms', 1);

-- Merchandise production planning details
CREATE TABLE merchandise_production_plan (
    id INTEGER PRIMARY KEY,
    product_sku TEXT,
    product_name TEXT,
    category TEXT,
    design_id TEXT,
    material TEXT,
    supplier_id INTEGER,
    batch_size INTEGER,
    lead_time_days INTEGER,
    production_start DATE,
    production_end DATE,
    quality_control_pass_rate REAL,
    estimated_cost_per_unit REAL,
    retail_price_usd REAL,
    inventory_target INTEGER,
    safety_stock INTEGER,
    warehouse_location TEXT,
    shipping_method TEXT,
    expected_release_date DATE,
    marketing_campaign TEXT,
    sales_forecast_units INTEGER,
    actual_units_produced INTEGER,
    notes TEXT
);

INSERT INTO merchandise_production_plan (id, product_sku, product_name, category, design_id, material, supplier_id, batch_size, lead_time_days, production_start, production_end, quality_control_pass_rate, estimated_cost_per_unit, retail_price_usd, inventory_target, safety_stock, warehouse_location, shipping_method, expected_release_date, marketing_campaign, sales_forecast_units, actual_units_produced, notes)
VALUES (1, 'SKU001', 'DragonFigurine', 'Collectible', 'DES100', 'Resin', 501, 2000, 45, '2025-02-01', '2025-03-18', 0.96, 35.00, 79.99, 1500, 300, 'WH_A', 'Air', '2025-04-01', 'SpringLaunch', 1800, 1950, 'High demand');
INSERT INTO merchandise_production_plan (id, product_sku, product_name, category, design_id, material, supplier_id, batch_size, lead_time_days, production_start, production_end, quality_control_pass_rate, estimated_cost_per_unit, retail_price_usd, inventory_target, safety_stock, warehouse_location, shipping_method, expected_release_date, marketing_campaign, sales_forecast_units, actual_units_produced, notes)
VALUES (2, 'SKU002', 'MageTShirt', 'Apparel', 'DES200', 'Cotton', 502, 5000, 30, '2025-01-15', '2025-02-14', 0.99, 12.00, 25.00, 4000, 800, 'WH_B', 'Ground', '2025-03-01', 'SummerPromo', 4200, 4100, 'Seasonal colors');
INSERT INTO merchandise_production_plan (id, product_sku, product_name, category, design_id, material, supplier_id, batch_size, lead_time_days, production_start, production_end, quality_control_pass_rate, estimated_cost_per_unit, retail_price_usd, inventory_target, safety_stock, warehouse_location, shipping_method, expected_release_date, marketing_campaign, sales_forecast_units, actual_units_produced, notes)
VALUES (3, 'SKU003', 'ChampionMug', 'Accessory', 'DES300', 'Ceramic', 503, 3000, 20, '2025-03-05', '2025-03-25', 0.98, 8.00, 19.99, 2500, 500, 'WH_C', 'Sea', '2025-04-15', 'HolidaySpecial', 2600, 2550, 'Limited edition');

-- Sponsor activation metrics for marketing events
CREATE TABLE sponsor_activation_metrics (
    id INTEGER PRIMARY KEY,
    sponsor_id INTEGER,
    activation_id TEXT,
    event_id INTEGER,
    activation_type TEXT,
    start_date DATE,
    end_date DATE,
    impressions INTEGER,
    engagements INTEGER,
    click_through_rate REAL,
    cost_usd REAL,
    revenue_generated_usd REAL,
    brand_awareness_score INTEGER,
    audience_reach INTEGER,
    geographic_target TEXT,
    platform TEXT,
    creative_id TEXT,
    conversion_rate REAL,
    post_event_feedback_score INTEGER,
    activation_status TEXT,
    notes TEXT,
    compliance_ok INTEGER
);

INSERT INTO sponsor_activation_metrics (id, sponsor_id, activation_id, event_id, activation_type, start_date, end_date, impressions, engagements, click_through_rate, cost_usd, revenue_generated_usd, brand_awareness_score, audience_reach, geographic_target, platform, creative_id, conversion_rate, post_event_feedback_score, activation_status, notes, compliance_ok)
VALUES (1, 301, 'ACT1001', 301, 'Banner', '2025-04-01', '2025-04-02', 250000, 18000, 0.072, 20000.00, 35000.00, 85, 200000, 'Global', 'Web', 'CR001', 0.045, 78, 'Completed', 'High performance', 1);
INSERT INTO sponsor_activation_metrics (id, sponsor_id, activation_id, event_id, activation_type, start_date, end_date, impressions, engagements, click_through_rate, cost_usd, revenue_generated_usd, brand_awareness_score, audience_reach, geographic_target, platform, creative_id, conversion_rate, post_event_feedback_score, activation_status, notes, compliance_ok)
VALUES (2, 302, 'ACT1002', 302, 'LiveStreamOverlay', '2025-05-10', '2025-05-10', 120000, 9500, 0.079, 15000.00, 27000.00, 80, 110000, 'EU', 'Streaming', 'CR002', 0.053, 82, 'Completed', 'Positive audience reaction', 1);
INSERT INTO sponsor_activation_metrics (id, sponsor_id, activation_id, event_id, activation_type, start_date, end_date, impressions, engagements, click_through_rate, cost_usd, revenue_generated_usd, brand_awareness_score, audience_reach, geographic_target, platform, creative_id, conversion_rate, post_event_feedback_score, activation_status, notes, compliance_ok)
VALUES (3, 303, 'ACT1003', 303, 'SocialMediaChallenge', '2025-06-15', '2025-06-20', 300000, 25000, 0.083, 25000.00, 42000.00, 88, 280000, 'APAC', 'Social', 'CR003', 0.062, 90, 'Completed', 'Viral success', 1);

-- Player coaching session logs
CREATE TABLE player_coaching_sessions (
    id INTEGER PRIMARY KEY,
    player_id INTEGER,
    coach_id INTEGER,
    session_date DATE,
    session_duration_minutes INTEGER,
    mode TEXT,
    focus_area TEXT,
    objectives TEXT,
    outcome TEXT,
    rating INTEGER,
    follow_up_actions TEXT,
    next_session_date DATE,
    notes TEXT,
    video_recording_path TEXT,
    feedback_score INTEGER,
    improvement_score INTEGER,
    skill_level_before INTEGER,
    skill_level_after INTEGER,
    session_type TEXT,
    platform TEXT,
    cost_usd REAL
);

INSERT INTO player_coaching_sessions (id, player_id, coach_id, session_date, session_duration_minutes, mode, focus_area, objectives, outcome, rating, follow_up_actions, next_session_date, notes, video_recording_path, feedback_score, improvement_score, skill_level_before, skill_level_after, session_type, platform, cost_usd)
VALUES (1, 4001, 5001, '2025-02-20', 60, 'Online', 'DeckBuilding', 'Improve aggro deck', 'Adjusted mana curve', 9, 'Review next week', '2025-03-01', 'Player enthusiastic', '/videos/coach4001_20250220.mp4', 92, 15, 3, 5, 'OneOnOne', 'Zoom', 150.00);
INSERT INTO player_coaching_sessions (id, player_id, coach_id, session_date, session_duration_minutes, mode, focus_area, objectives, outcome, rating, follow_up_actions, next_session_date, notes, video_recording_path, feedback_score, improvement_score, skill_level_before, skill_level_after, session_type, platform, cost_usd)
VALUES (2, 4002, 5002, '2025-03-05', 45, 'InPerson', 'MacroPlay', 'Learn lane control', 'Implemented effective zoning', 8, 'Practice in custom games', '2025-03-20', 'Good progress', '/videos/coach5002_20250305.mp4', 85, 12, 2, 4, 'Workshop', 'Arena', 200.00);
INSERT INTO player_coaching_sessions (id, player_id, coach_id, session_date, session_duration_minutes, mode, focus_area, objectives, outcome, rating, follow_up_actions, next_session_date, notes, video_recording_path, feedback_score, improvement_score, skill_level_before, skill_level_after, session_type, platform, cost_usd)
VALUES (3, 4003, 5003, '2025-04-12', 30, 'Online', 'Mindset', 'Improve decision making', 'Adopted pause technique', 10, 'Maintain habit', '2025-04-26', 'Excellent engagement', '/videos/coach5003_20250412.mp4', 98, 18, 1, 4, 'OneOnOne', 'Discord', 120.00);

-- Metadata for digital artifacts used in the platform
CREATE TABLE digital_artifact_metadata (
    id INTEGER PRIMARY KEY,
    artifact_id TEXT,
    title TEXT,
    description TEXT,
    creator TEXT,
    creation_date DATE,
    file_type TEXT,
    file_size_bytes INTEGER,
    checksum TEXT,
    version INTEGER,
    status TEXT,
    access_level TEXT,
    licensing TEXT,
    tags TEXT,
    related_artifact_ids TEXT,
    usage_count INTEGER,
    last_accessed DATE,
    storage_location TEXT,
    retention_policy TEXT,
    archival_date DATE,
    expiration_date DATE,
    notes TEXT
);

INSERT INTO digital_artifact_metadata (id, artifact_id, title, description, creator, creation_date, file_type, file_size_bytes, checksum, version, status, access_level, licensing, tags, related_artifact_ids, usage_count, last_accessed, storage_location, retention_policy, archival_date, expiration_date, notes)
VALUES (1, 'DA1001', 'DragonIllustration', 'HighResArtOfRedDragon', 'ArtistA', '2024-11-05', 'PNG', 5242880, 'ABCDEF123456', 1, 'Active', 'Public', 'CC0', 'dragon,art,highres', 'DA2001,DA3001', 1500, '2025-01-15', 'S3Bucket1', 'Indefinite', '2025-12-31', NULL, 'Used in promotional material');
INSERT INTO digital_artifact_metadata (id, artifact_id, title, description, creator, creation_date, file_type, file_size_bytes, checksum, version, status, access_level, licensing, tags, related_artifact_ids, usage_count, last_accessed, storage_location, retention_policy, archival_date, expiration_date, notes)
VALUES (2, 'DA1002', 'ThemeMusicLoop', 'LoopedBackgroundMusic', 'ComposerB', '2025-02-10', 'MP3', 1048576, '123456ABCDEF', 1, 'Active', 'Internal', 'RoyaltyFree', 'music,loop', '', 800, '2025-03-01', 'S3Bucket2', '5Years', '2029-02-10', NULL, 'Background for streams');
INSERT INTO digital_artifact_metadata (id, artifact_id, title, description, creator, creation_date, file_type, file_size_bytes, checksum, version, status, access_level, licensing, tags, related_artifact_ids, usage_count, last_accessed, storage_location, retention_policy, archival_date, expiration_date, notes)
VALUES (3, 'DA1003', 'CardTemplateSVG', 'VectorTemplateForCards', 'DesignerC', '2023-09-18', 'SVG', 2097152, 'FEDCBA654321', 2, 'Archived', 'Public', 'CCBY', 'template,svg,card', 'DA1004', 1200, '2024-12-20', 'S3Bucket3', 'Indefinite', '2028-09-18', NULL, 'Reference for card designers');