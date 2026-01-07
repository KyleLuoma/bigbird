-- Player wallet information adjacent to player data
CREATE TABLE player_wallets (
    wallet_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    currency_code TEXT,
    balance REAL,
    total_earned REAL,
    total_spent REAL,
    last_deposit_date DATE,
    last_withdraw_date DATE,
    deposit_count INTEGER,
    withdraw_count INTEGER,
    bonus_points INTEGER,
    tier_level TEXT,
    is_active INTEGER,
    created_at DATE,
    updated_at DATE,
    last_transaction_id INTEGER,
    pending_rewards REAL,
    reward_expiration DATE,
    locked_funds REAL,
    external_account_id TEXT,
    notes TEXT
);

INSERT INTO player_wallets (player_id, currency_code, balance, total_earned, total_spent, last_deposit_date, last_withdraw_date, deposit_count, withdraw_count, bonus_points, tier_level, is_active, created_at, updated_at, last_transaction_id, pending_rewards, reward_expiration, locked_funds, external_account_id, notes) VALUES (101, 'USD', 250.75, 1500.00, 1249.25, '2025-01-10', '2025-01-15', 12, 5, 300, 'Gold', 1, '2024-12-01', '2025-01-20', 555, 15.00, '2025-06-30', 0.00, 'EXT12345', 'Initial wallet setup');
INSERT INTO player_wallets (player_id, currency_code, balance, total_earned, total_spent, last_deposit_date, last_withdraw_date, deposit_count, withdraw_count, bonus_points, tier_level, is_active, created_at, updated_at, last_transaction_id, pending_rewards, reward_expiration, locked_funds, external_account_id, notes) VALUES (102, 'EUR', 480.00, 2000.00, 1520.00, '2025-02-01', '2025-02-05', 20, 8, 150, 'Silver', 1, '2025-01-05', '2025-02-10', 789, 0.00, NULL, 0.00, 'EXT67890', 'Regular activity');
INSERT INTO player_wallets (player_id, currency_code, balance, total_earned, total_spent, last_deposit_date, last_withdraw_date, deposit_count, withdraw_count, bonus_points, tier_level, is_active, created_at, updated_at, last_transaction_id, pending_rewards, reward_expiration, locked_funds, external_account_id, notes) VALUES (103, 'GBP', 0.00, 0.00, 0.00, NULL, NULL, 0, 0, 0, 'Bronze', 0, '2025-01-20', '2025-01-20', NULL, 0.00, NULL, 0.00, 'EXT00000', 'Inactive wallet');

-- Media assets linked to tournaments
CREATE TABLE tournament_media_assets (
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    media_type TEXT,
    file_name TEXT,
    file_path TEXT,
    file_size INTEGER,
    duration_seconds INTEGER,
    resolution TEXT,
    codec TEXT,
    uploaded_by INTEGER,
    upload_date DATE,
    is_public INTEGER,
    view_count INTEGER,
    like_count INTEGER,
    comment_count INTEGER,
    description TEXT,
    tags TEXT,
    copyright_holder TEXT,
    license_type TEXT,
    thumbnail_path TEXT,
    metadata_hash TEXT
);

INSERT INTO tournament_media_assets (tournament_id, media_type, file_name, file_path, file_size, duration_seconds, resolution, codec, uploaded_by, upload_date, is_public, view_count, like_count, comment_count, description, tags, copyright_holder, license_type, thumbnail_path, metadata_hash) VALUES (201, 'video', 'final_match.mp4', '/media/2025/final_match.mp4', 1500000000, 5400, '1920x1080', 'h264', 101, '2025-03-01', 1, 1200, 300, 45, 'Final match highlights', 'final,match,highlights', 'TournamentOrg', 'Standard', '/thumbs/final_match.jpg', 'hashabc123');
INSERT INTO tournament_media_assets (tournament_id, media_type, file_name, file_path, file_size, duration_seconds, resolution, codec, uploaded_by, upload_date, is_public, view_count, like_count, comment_count, description, tags, copyright_holder, license_type, thumbnail_path, metadata_hash) VALUES (202, 'image', 'award_ceremony.png', '/media/2025/award_ceremony.png', 2400000, NULL, '1920x1080', 'png', 102, '2025-03-02', 1, 800, 210, 30, 'Award ceremony photo', 'award,ceremony', 'TournamentOrg', 'Standard', '/thumbs/award_ceremony_thumb.png', 'hashdef456');
INSERT INTO tournament_media_assets (tournament_id, media_type, file_name, file_path, file_size, duration_seconds, resolution, codec, uploaded_by, upload_date, is_public, view_count, like_count, comment_count, description, tags, copyright_holder, license_type, thumbnail_path, metadata_hash) VALUES (203, 'video', 'interview_player.mov', '/media/2025/interview_player.mov', 500000000, 1800, '1280x720', 'prores', 103, '2025-03-03', 0, 150, 40, 12, 'Player interview after finals', 'interview,player', 'MediaTeam', 'Restricted', '/thumbs/interview_player.jpg', 'hashghi789');

-- Production schedule for card sets
CREATE TABLE set_production_schedule (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    print_run_number INTEGER,
    planned_start_date DATE,
    planned_end_date DATE,
    actual_start_date DATE,
    actual_end_date DATE,
    printer_name TEXT,
    press_operator TEXT,
    sheets_to_print INTEGER,
    sheets_printed INTEGER,
    cards_per_sheet INTEGER,
    total_cards INTEGER,
    quality_check_passed INTEGER,
    defects_found INTEGER,
    downtime_minutes INTEGER,
    notes TEXT,
    created_by INTEGER,
    created_at DATE,
    updated_at DATE,
    version_number INTEGER
);

INSERT INTO set_production_schedule (set_code, print_run_number, planned_start_date, planned_end_date, actual_start_date, actual_end_date, printer_name, press_operator, sheets_to_print, sheets_printed, cards_per_sheet, total_cards, quality_check_passed, defects_found, downtime_minutes, notes, created_by, created_at, updated_at, version_number) VALUES ('SET01', 1, '2025-04-01', '2025-04-10', '2025-04-02', '2025-04-09', 'PrintCo', 'JohnDoe', 5000, 4950, 9, 44550, 1, 12, 30, 'Minor delay due to ink change', 101, '2025-03-15', '2025-04-10', 1);
INSERT INTO set_production_schedule (set_code, print_run_number, planned_start_date, planned_end_date, actual_start_date, actual_end_date, printer_name, press_operator, sheets_to_print, sheets_printed, cards_per_sheet, total_cards, quality_check_passed, defects_found, downtime_minutes, notes, created_by, created_at, updated_at, version_number) VALUES ('SET02', 2, '2025-05-01', '2025-05-12', '2025-05-01', '2025-05-11', 'PrintWorks', 'JaneSmith', 6000, 6000, 8, 48000, 1, 5, 0, 'All on schedule', 102, '2025-04-20', '2025-05-12', 1);
INSERT INTO set_production_schedule (set_code, print_run_number, planned_start_date, planned_end_date, actual_start_date, actual_end_date, printer_name, press_operator, sheets_to_print, sheets_printed, cards_per_sheet, total_cards, quality_check_passed, defects_found, downtime_minutes, notes, created_by, created_at, updated_at, version_number) VALUES ('SET03', 1, '2025-06-01', '2025-06-15', NULL, NULL, 'RapidPrint', 'MikeLee', 5500, 0, 9, 49500, 0, 0, 0, 'Production not started', 103, '2025-05-30', '2025-05-30', 1);

-- Logistics partners for events
CREATE TABLE event_logistics_partners (
    partner_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    partner_name TEXT,
    service_type TEXT,
    contract_start DATE,
    contract_end DATE,
    contact_person TEXT,
    contact_email TEXT,
    phone_number TEXT,
    billing_rate REAL,
    currency TEXT,
    payment_terms TEXT,
    is_active INTEGER,
    insurance_certified INTEGER,
    capacity INTEGER,
    equipment_list TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    compliance_score INTEGER,
    region TEXT
);

INSERT INTO event_logistics_partners (event_id, partner_name, service_type, contract_start, contract_end, contact_person, contact_email, phone_number, billing_rate, currency, payment_terms, is_active, insurance_certified, capacity, equipment_list, notes, created_at, updated_at, compliance_score, region) VALUES (301, 'StageMasters', 'Stage Build', '2025-01-01', '2025-02-01', 'AliceBrown', 'alice@stagemasters.com', '5551234567', 12000.00, 'USD', 'Net30', 1, 1, 500, 'Stage, Lighting, Sound', 'Experienced partner', '2025-01-10', '2025-01-20', 95, 'NorthAmerica');
INSERT INTO event_logistics_partners (event_id, partner_name, service_type, contract_start, contract_end, contact_person, contact_email, phone_number, billing_rate, currency, payment_terms, is_active, insurance_certified, capacity, equipment_list, notes, created_at, updated_at, compliance_score, region) VALUES (302, 'FoodFlex', 'Catering', '2025-02-15', '2025-02-20', 'BobGreen', 'bob@foodflex.com', '5559876543', 8000.00, 'USD', 'Net45', 1, 1, 300, 'Buffet, Snacks, Beverages', 'Vegan options included', '2025-02-01', '2025-02-10', 88, 'Europe');
INSERT INTO event_logistics_partners (event_id, partner_name, service_type, contract_start, contract_end, contact_person, contact_email, phone_number, billing_rate, currency, payment_terms, is_active, insurance_certified, capacity, equipment_list, notes, created_at, updated_at, compliance_score, region) VALUES (303, 'SecureGuard', 'Security', '2025-03-05', '2025-03-10', 'CarolWhite', 'carol@secureguard.com', '5555551212', 5000.00, 'USD', 'Net15', 1, 1, 200, 'Guards, CCTV', '24/7 coverage', '2025-02-25', '2025-03-01', 92, 'Asia');

-- Reviews specific to card artwork
CREATE TABLE card_artwork_reviews (
    review_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artwork_id INTEGER,
    reviewer_id INTEGER,
    rating INTEGER,
    review_text TEXT,
    review_date DATE,
    is_approved INTEGER,
    approved_by INTEGER,
    approval_date DATE,
    comments TEXT,
    suggested_changes TEXT,
    color_accuracy_score REAL,
    composition_score REAL,
    detail_score REAL,
    originality_score REAL,
    style TEXT,
    medium TEXT,
    dimensions TEXT,
    file_checksum TEXT,
    version INTEGER,
    source TEXT
);

INSERT INTO card_artwork_reviews (artwork_id, reviewer_id, rating, review_text, review_date, is_approved, approved_by, approval_date, comments, suggested_changes, color_accuracy_score, composition_score, detail_score, originality_score, style, medium, dimensions, file_checksum, version, source) VALUES (401, 101, 9, 'Vivid colors and strong composition.', '2025-04-01', 1, 102, '2025-04-02', 'Excellent work.', 'Minor adjustment to background gradient.', 9.5, 9.0, 8.8, 9.2, 'Fantasy', 'Digital', '3000x4200', 'chk123abc', 1, 'Internal');
INSERT INTO card_artwork_reviews (artwork_id, reviewer_id, rating, review_text, review_date, is_approved, approved_by, approval_date, comments, suggested_changes, color_accuracy_score, composition_score, detail_score, originality_score, style, medium, dimensions, file_checksum, version, source) VALUES (402, 103, 7, 'Good concept but colors are muted.', '2025-04-05', 0, NULL, NULL, 'Consider brighter palette.', 'Increase saturation.', 6.5, 7.0, 6.8, 7.1, 'SciFi', 'Traditional', '2500x3500', 'chk456def', 1, 'External');
INSERT INTO card_artwork_reviews (artwork_id, reviewer_id, rating, review_text, review_date, is_approved, approved_by, approval_date, comments, suggested_changes, color_accuracy_score, composition_score, detail_score, originality_score, style, medium, dimensions, file_checksum, version, source) VALUES (403, 105, 8, 'Strong detail and thematic style.', '2025-04-10', 1, 106, '2025-04-11', 'Ready for publishing.', 'No changes needed.', 8.8, 8.5, 9.0, 8.6, 'Horror', 'Digital', '2800x4000', 'chk789ghi', 2, 'Internal');

-- Mental health checks for players
CREATE TABLE player_mental_health_checks (
    check_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    check_date DATE,
    stress_level INTEGER,
    anxiety_level INTEGER,
    mood_score INTEGER,
    sleep_hours REAL,
    fatigue_level INTEGER,
    concentration_score INTEGER,
    coping_score INTEGER,
    therapist_id INTEGER,
    notes TEXT,
    follow_up_required INTEGER,
    follow_up_date DATE,
    overall_score INTEGER,
    is_confidential INTEGER,
    created_at DATE,
    updated_at DATE,
    assessment_method TEXT,
    location TEXT,
    session_duration_minutes INTEGER,
    outcome TEXT
);

INSERT INTO player_mental_health_checks (player_id, check_date, stress_level, anxiety_level, mood_score, sleep_hours, fatigue_level, concentration_score, coping_score, therapist_id, notes, follow_up_required, follow_up_date, overall_score, is_confidential, created_at, updated_at, assessment_method, location, session_duration_minutes, outcome) VALUES (101, '2025-05-01', 3, 2, 8, 7.5, 2, 9, 8, 201, 'Feeling good after tournament.', 0, NULL, 85, 1, '2025-05-01', '2025-05-01', 'Survey', 'Online', 30, 'Positive');
INSERT INTO player_mental_health_checks (player_id, check_date, stress_level, anxiety_level, mood_score, sleep_hours, fatigue_level, concentration_score, coping_score, therapist_id, notes, follow_up_required, follow_up_date, overall_score, is_confidential, created_at, updated_at, assessment_method, location, session_duration_minutes, outcome) VALUES (102, '2025-05-03', 6, 5, 5, 5.0, 5, 6, 5, 202, 'High stress due to upcoming qualifier.', 1, '2025-05-10', 60, 1, '2025-05-03', '2025-05-03', 'Interview', 'Clinic', 45, 'Needs monitoring');
INSERT INTO player_mental_health_checks (player_id, check_date, stress_level, anxiety_level, mood_score, sleep_hours, fatigue_level, concentration_score, coping_score, therapist_id, notes, follow_up_required, follow_up_date, overall_score, is_confidential, created_at, updated_at, assessment_method, location, session_duration_minutes, outcome) VALUES (103, '2025-05-05', 2, 1, 9, 8.0, 1, 9, 9, NULL, 'No issues reported.', 0, NULL, 92, 1, '2025-05-05', '2025-05-05', 'SelfReport', 'Home', 20, 'Stable');

-- Offers on digital marketplace
CREATE TABLE digital_marketplace_offers (
    offer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id INTEGER,
    seller_id INTEGER,
    buyer_id INTEGER,
    offer_price REAL,
    currency_code TEXT,
    offer_date DATE,
    expiration_date DATE,
    status TEXT,
    is_counter_offer INTEGER,
    counter_offer_price REAL,
    negotiation_rounds INTEGER,
    payment_method TEXT,
    delivery_method TEXT,
    escrow_account TEXT,
    terms TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    platform_fee REAL,
    tax_amount REAL,
    total_amount REAL
);

INSERT INTO digital_marketplace_offers (asset_id, seller_id, buyer_id, offer_price, currency_code, offer_date, expiration_date, status, is_counter_offer, counter_offer_price, negotiation_rounds, payment_method, delivery_method, escrow_account, terms, notes, created_at, updated_at, platform_fee, tax_amount, total_amount) VALUES (501, 101, NULL, 150.00, 'USD', '2025-06-01', '2025-06-08', 'Pending', 0, NULL, 0, 'CreditCard', 'Digital', 'ESC001', 'StandardTerms', 'First offer', '2025-06-01', '2025-06-01', 5.00, 12.00, 167.00);
INSERT INTO digital_marketplace_offers (asset_id, seller_id, buyer_id, offer_price, currency_code, offer_date, expiration_date, status, is_counter_offer, counter_offer_price, negotiation_rounds, payment_method, delivery_method, escrow_account, terms, notes, created_at, updated_at, platform_fee, tax_amount, total_amount) VALUES (502, 102, 103, 200.00, 'EUR', '2025-06-02', '2025-06-09', 'Accepted', 1, 210.00, 2, 'PayPal', 'Digital', 'ESC002', 'FlexibleTerms', 'Counter offer accepted', '2025-06-02', '2025-06-03', 7.00, 15.00, 232.00);
INSERT INTO digital_marketplace_offers (asset_id, seller_id, buyer_id, offer_price, currency_code, offer_date, expiration_date, status, is_counter_offer, counter_offer_price, negotiation_rounds, payment_method, delivery_method, escrow_account, terms, notes, created_at, updated_at, platform_fee, tax_amount, total_amount) VALUES (503, 104, NULL, 75.00, 'GBP', '2025-06-05', '2025-06-12', 'Withdrawn', 0, NULL, 0, 'BankTransfer', 'Digital', 'ESC003', 'StandardTerms', 'Offer retracted', '2025-06-05', '2025-06-06', 3.00, 6.00, 84.00);

-- Streaming advertising campaigns
CREATE TABLE streaming_ad_campaigns (
    campaign_id INTEGER PRIMARY KEY AUTOINCREMENT,
    platform TEXT,
    advertiser_name TEXT,
    start_date DATE,
    end_date DATE,
    budget REAL,
    cpm REAL,
    total_impressions INTEGER,
    total_clicks INTEGER,
    ctr REAL,
    conversion_rate REAL,
    creative_type TEXT,
    creative_file_path TEXT,
    target_audience TEXT,
    geo_targeting TEXT,
    device_targeting TEXT,
    frequency_cap INTEGER,
    status TEXT,
    created_by INTEGER,
    created_at DATE,
    updated_at DATE,
    notes TEXT
);

INSERT INTO streaming_ad_campaigns (platform, advertiser_name, start_date, end_date, budget, cpm, total_impressions, total_clicks, ctr, conversion_rate, creative_type, creative_file_path, target_audience, geo_targeting, device_targeting, frequency_cap, status, created_by, created_at, updated_at, notes) VALUES ('Twitch', 'GameCo', '2025-07-01', '2025-07-31', 5000.00, 12.5, 400000, 8000, 2.0, 1.5, 'Video', '/ads/gameco_summer.mp4', '18-35_Male', 'NA', 'Desktop', 3, 'Active', 101, '2025-06-20', '2025-06-20', 'Summer launch');
INSERT INTO streaming_ad_campaigns (platform, advertiser_name, start_date, end_date, budget, cpm, total_impressions, total_clicks, ctr, conversion_rate, creative_type, creative_file_path, target_audience, geo_targeting, device_targeting, frequency_cap, status, created_by, created_at, updated_at, notes) VALUES ('YouTube', 'CardStore', '2025-08-01', '2025-08-15', 3000.00, 10.0, 250000, 5000, 2.0, 2.2, 'Banner', '/ads/cardstore_august.jpg', '25-45_All', 'EU', 'Mobile', 2, 'Scheduled', 102, '2025-07-10', '2025-07-10', 'Mid-year promotion');
INSERT INTO streaming_ad_campaigns (platform, advertiser_name, start_date, end_date, budget, cpm, total_impressions, total_clicks, ctr, conversion_rate, creative_type, creative_file_path, target_audience, geo_targeting, device_targeting, frequency_cap, status, created_by, created_at, updated_at, notes) VALUES ('Facebook', 'EventCo', '2025-09-01', '2025-09-20', 2000.00, 8.0, 180000, 3600, 2.0, 1.8, 'Video', '/ads/eventco_fall.mp4', '30-50_Female', 'APAC', 'All', 4, 'Planned', 103, '2025-08-15', '2025-08-15', 'Fall event teaser');

-- Environmental readings from venues
CREATE TABLE venue_environmental_readings (
    reading_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    reading_timestamp DATETIME,
    temperature_celsius REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    illumination_lux INTEGER,
    air_quality_index INTEGER,
    water_leak_detected INTEGER,
    energy_consumption_kwh REAL,
    occupancy_count INTEGER,
    ventilation_status TEXT,
    hvac_mode TEXT,
    filter_status TEXT,
    maintenance_required INTEGER,
    notes TEXT,
    recorded_by INTEGER,
    created_at DATE,
    updated_at DATE,
    sensor_firmware_version TEXT
);

INSERT INTO venue_environmental_readings (venue_id, reading_timestamp, temperature_celsius, humidity_percent, co2_ppm, noise_db, illumination_lux, air_quality_index, water_leak_detected, energy_consumption_kwh, occupancy_count, ventilation_status, hvac_mode, filter_status, maintenance_required, notes, recorded_by, created_at, updated_at, sensor_firmware_version) VALUES (1, '2025-10-01 10:00:00', 22.5, 45.0, 600, 55.0, 400, 42, 0, 1200.5, 150, 'Normal', 'Cooling', 'Good', 0, 'All clear', 101, '2025-10-01', '2025-10-01', 'v1.2');
INSERT INTO venue_environmental_readings (venue_id, reading_timestamp, temperature_celsius, humidity_percent, co2_ppm, noise_db, illumination_lux, air_quality_index, water_leak_detected, energy_consumption_kwh, occupancy_count, ventilation_status, hvac_mode, filter_status, maintenance_required, notes, recorded_by, created_at, updated_at, sensor_firmware_version) VALUES (2, '2025-10-01 10:05:00', 24.0, 50.0, 650, 58.0, 380, 45, 0, 1150.3, 200, 'Elevated', 'Heating', 'Fair', 0, 'Ventilation check required', 102, '2025-10-01', '2025-10-01', 'v1.3');
INSERT INTO venue_environmental_readings (venue_id, reading_timestamp, temperature_celsius, humidity_percent, co2_ppm, noise_db, illumination_lux, air_quality_index, water_leak_detected, energy_consumption_kwh, occupancy_count, ventilation_status, hvac_mode, filter_status, maintenance_required, notes, recorded_by, created_at, updated_at, sensor_firmware_version) VALUES (3, '2025-10-01 10:10:00', 21.0, 40.0, 580, 52.0, 420, 40, 1, 1300.0, 120, 'Normal', 'Cooling', 'Poor', 1, 'Leak detected in roof', 103, '2025-10-01', '2025-10-01', 'v1.1');

-- Sponsor engagement surveys for events
CREATE TABLE sponsor_engagement_surveys (
    survey_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_id INTEGER,
    survey_date DATE,
    overall_satisfaction INTEGER,
    brand_visibility_score INTEGER,
    audience_relevance_score INTEGER,
    lead_quality_score INTEGER,
    ROI_estimate REAL,
    net_promoter_score INTEGER,
    comments TEXT,
    suggestions TEXT,
    responded_by INTEGER,
    response_time_days INTEGER,
    follow_up_action TEXT,
    is_completed INTEGER,
    created_at DATE,
    updated_at DATE,
    survey_version INTEGER,
    distribution_channel TEXT,
    confidentiality_level TEXT,
    archived INTEGER
);

INSERT INTO sponsor_engagement_surveys (sponsor_id, event_id, survey_date, overall_satisfaction, brand_visibility_score, audience_relevance_score, lead_quality_score, ROI_estimate, net_promoter_score, comments, suggestions, responded_by, response_time_days, follow_up_action, is_completed, created_at, updated_at, survey_version, distribution_channel, confidentiality_level, archived) VALUES (301, 401, '2025-11-01', 9, 8, 9, 7, 150000.00, 70, 'Excellent partnership', 'Increase signage', 101, 2, 'Schedule follow-up meeting', 1, '2025-10-20', '2025-10-22', 1, 'Email', 'Internal', 0);
INSERT INTO sponsor_engagement_surveys (sponsor_id, event_id, survey_date, overall_satisfaction, brand_visibility_score, audience_relevance_score, lead_quality_score, ROI_estimate, net_promoter_score, comments, suggestions, responded_by, response_time_days, follow_up_action, is_completed, created_at, updated_at, survey_version, distribution_channel, confidentiality_level, archived) VALUES (302, 402, '2025-11-05', 7, 6, 7, 5, 80000.00, 55, 'Good exposure but room for improvement', 'Add interactive booth', 102, 3, 'Provide booth upgrades', 1, '2025-10-25', '2025-10-28', 1, 'WebPortal', 'External', 0);
INSERT INTO sponsor_engagement_surveys (sponsor_id, event_id, survey_date, overall_satisfaction, brand_visibility_score, audience_relevance_score, lead_quality_score, ROI_estimate, net_promoter_score, comments, suggestions, responded_by, response_time_days, follow_up_action, is_completed, created_at, updated_at, survey_version, distribution_channel, confidentiality_level, archived) VALUES (303, 403, '2025-11-10', 5, 4, 5, 3, 30000.00, 40, 'Limited engagement', 'Improve promotional materials', 103, 5, 'Reevaluate sponsorship package', 0, '2025-11-01', '2025-11-01', 1, 'Phone', 'Internal', 0);