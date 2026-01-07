-- Broadcast license details for leagues
CREATE TABLE Broadcast_License_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    license_type TEXT,
    start_date TEXT,
    end_date TEXT,
    cost_usd INTEGER,
    currency TEXT,
    territory TEXT,
    provider TEXT,
    agreement_number TEXT,
    contract_status TEXT,
    renewal_option TEXT,
    sublicensed TEXT,
    exclusive_flag TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    compliance_score INTEGER,
    audit_date TEXT
);

INSERT INTO Broadcast_License_Details (league_id, season, license_type, start_date, end_date, cost_usd, currency, territory, provider, agreement_number, contract_status, renewal_option, sublicensed, exclusive_flag, notes, created_at, updated_at, compliance_score, audit_date) VALUES (1, '2023', 'Full', '2023-01-01', '2023-12-31', 5000000, 'USD', 'Europe', 'MediaCo', 'AG12345', 'Active', 'Yes', 'No', 'Yes', 'Initial contract', '2023-01-01', '2023-01-01', 95, '2023-02-01');
INSERT INTO Broadcast_License_Details (league_id, season, license_type, start_date, end_date, cost_usd, currency, territory, provider, agreement_number, contract_status, renewal_option, sublicensed, exclusive_flag, notes, created_at, updated_at, compliance_score, audit_date) VALUES (2, '2024', 'Partial', '2024-03-01', '2024-11-30', 3200000, 'EUR', 'Asia', 'GlobalNet', 'AG67890', 'Pending', 'No', 'Yes', 'No', 'Negotiation ongoing', '2024-03-01', '2024-03-01', 88, '2024-04-15');
INSERT INTO Broadcast_License_Details (league_id, season, license_type, start_date, end_date, cost_usd, currency, territory, provider, agreement_number, contract_status, renewal_option, sublicensed, exclusive_flag, notes, created_at, updated_at, compliance_score, audit_date) VALUES (3, '2025', 'Full', '2025-01-15', '2025-12-15', 7500000, 'USD', 'NorthAmerica', 'SportStream', 'AG54321', 'Active', 'Yes', 'No', 'Yes', 'Extended for two seasons', '2025-01-15', '2025-01-15', 97, '2025-02-10');

-- Medical research trials related to sports health
CREATE TABLE Medical_Research_Trials (
    trial_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_org TEXT,
    study_title TEXT,
    phase TEXT,
    start_date TEXT,
    end_date TEXT,
    number_of_participants INTEGER,
    primary_outcome TEXT,
    secondary_outcome TEXT,
    status TEXT,
    lead_researcher TEXT,
    institution TEXT,
    funding_amount INTEGER,
    funding_currency TEXT,
    ethical_approval_date TEXT,
    data_sharing_policy TEXT,
    trial_url TEXT,
    created_at TEXT,
    updated_at TEXT,
    trial_category TEXT,
    notes TEXT
);

INSERT INTO Medical_Research_Trials (sponsor_org, study_title, phase, start_date, end_date, number_of_participants, primary_outcome, secondary_outcome, status, lead_researcher, institution, funding_amount, funding_currency, ethical_approval_date, data_sharing_policy, trial_url, created_at, updated_at, trial_category, notes) VALUES ('HealthCorp', 'Impact of Altitude on Player VO2 Max', 'Phase2', '2023-06-01', '2024-05-31', 80, 'VO2 Max increase', 'Recovery time reduction', 'Active', 'Dr Smith', 'UniMed', 1200000, 'USD', '2023-05-15', 'Open', 'http://example.com/trial1', '2023-06-01', '2023-06-01', 'Physiology', 'Midway recruitment');
INSERT INTO Medical_Research_Trials (sponsor_org, study_title, phase, start_date, end_date, number_of_participants, primary_outcome, secondary_outcome, status, lead_researcher, institution, funding_amount, funding_currency, ethical_approval_date, data_sharing_policy, trial_url, created_at, updated_at, trial_category, notes) VALUES ('SportScience Inc', 'Nutritional Supplements and Injury Rates', 'Phase3', '2022-09-15', '2025-09-14', 200, 'Injury incidence', 'Performance metrics', 'Completed', 'Dr Lee', 'SportsInstitute', 2500000, 'EUR', '2022-08-30', 'Restricted', 'http://example.com/trial2', '2022-09-15', '2025-09-14', 'Nutrition', 'Results published');
INSERT INTO Medical_Research_Trials (sponsor_org, study_title, phase, start_date, end_date, number_of_participants, primary_outcome, secondary_outcome, status, lead_researcher, institution, funding_amount, funding_currency, ethical_approval_date, data_sharing_policy, trial_url, created_at, updated_at, trial_category, notes) VALUES ('GlobalHealth', 'Psychological Resilience in Elite Athletes', 'Phase1', '2024-01-10', '2026-12-31', 150, 'Resilience score', 'Anxiety levels', 'Recruiting', 'Dr Patel', 'MindFit Center', 900000, 'USD', '2023-12-20', 'Open', 'http://example.com/trial3', '2024-01-10', '2024-01-10', 'MentalHealth', 'First cohort');

-- Fan volunteer recognition and awards
CREATE TABLE Fan_Volunteer_Recognition (
    recognition_id INTEGER PRIMARY KEY AUTOINCREMENT,
    volunteer_id INTEGER,
    event_id INTEGER,
    recognition_type TEXT,
    award_name TEXT,
    award_date TEXT,
    points_earned INTEGER,
    tier_level TEXT,
    sponsor_name TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    total_hours INTEGER,
    region TEXT,
    committee_approval TEXT,
    verification_status TEXT,
    gift_item TEXT,
    gift_value_usd INTEGER,
    redemption_status TEXT,
    redemption_date TEXT,
    feedback_score INTEGER
);

INSERT INTO Fan_Volunteer_Recognition (volunteer_id, event_id, recognition_type, award_name, award_date, points_earned, tier_level, sponsor_name, notes, created_at, updated_at, total_hours, region, committee_approval, verification_status, gift_item, gift_value_usd, redemption_status, redemption_date, feedback_score) VALUES (101, 5001, 'Hours', 'Gold Service Medal', '2023-07-20', 1500, 'Gold', 'ClubCorp', 'Outstanding dedication', '2023-07-20', '2023-07-20', 120, 'North', 'Approved', 'Verified', 'Team Scarf', 45, 'Redeemed', '2023-08-01', 9);
INSERT INTO Fan_Volunteer_Recognition (volunteer_id, event_id, recognition_type, award_name, award_date, points_earned, tier_level, sponsor_name, notes, created_at, updated_at, total_hours, region, committee_approval, verification_status, gift_item, gift_value_usd, redemption_status, redemption_date, feedback_score) VALUES (102, 5002, 'Event', 'Silver Event Champion', '2023-09-15', 900, 'Silver', 'SportsGear', 'Excellent event support', '2023-09-15', '2023-09-15', 80, 'East', 'Approved', 'Pending', 'Cap', 30, 'Pending', NULL, 8);
INSERT INTO Fan_Volunteer_Recognition (volunteer_id, event_id, recognition_type, award_name, award_date, points_earned, tier_level, sponsor_name, notes, created_at, updated_at, total_hours, region, committee_approval, verification_status, gift_item, gift_value_usd, redemption_status, redemption_date, feedback_score) VALUES (103, 5003, 'Special', 'Community Hero', '2023-11-05', 2000, 'Platinum', 'FanTrust', 'Leadership in community outreach', '2023-11-05', '2023-11-05', 150, 'South', 'Approved', 'Verified', 'Jersey', 120, 'Redeemed', '2023-11-20', 10);

-- Stadium artwork collection details
CREATE TABLE Stadium_Artwork_Collection (
    artwork_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    artist_name TEXT,
    title TEXT,
    year_created INTEGER,
    medium TEXT,
    dimensions TEXT,
    location_within_stadium TEXT,
    acquisition_method TEXT,
    acquisition_cost_usd INTEGER,
    sponsor_name TEXT,
    donor_name TEXT,
    installation_date TEXT,
    maintenance_cycle_months INTEGER,
    condition_rating INTEGER,
    insurance_policy_number TEXT,
    insurance_provider TEXT,
    insured_value_usd INTEGER,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Stadium_Artwork_Collection (stadium_id, artist_name, title, year_created, medium, dimensions, location_within_stadium, acquisition_method, acquisition_cost_usd, sponsor_name, donor_name, installation_date, maintenance_cycle_months, condition_rating, insurance_policy_number, insurance_provider, insured_value_usd, created_at, updated_at) VALUES (1, 'Lena Ortiz', 'Flight of the Eagle', 2018, 'Bronze', '200x150cm', 'North Stand', 'Purchase', 85000, 'AirlineCo', 'John Doe', '2019-03-10', 12, 9, 'POL12345', 'SecureInsure', 100000, '2019-03-01', '2019-03-01');
INSERT INTO Stadium_Artwork_Collection (stadium_id, artist_name, title, year_created, medium, dimensions, location_within_stadium, acquisition_method, acquisition_cost_usd, sponsor_name, donor_name, installation_date, maintenance_cycle_months, condition_rating, insurance_policy_number, insurance_provider, insured_value_usd, created_at, updated_at) VALUES (2, 'Mika Tanaka', 'Wave Motion', 2020, 'LED Installation', '500x300cm', 'East Atrium', 'Commission', 120000, 'TechWave', 'City Council', '2021-05-22', 6, 10, 'POL67890', 'CoverAll', 150000, '2021-05-01', '2021-05-01');
INSERT INTO Stadium_Artwork_Collection (stadium_id, artist_name, title, year_created, medium, dimensions, location_within_stadium, acquisition_method, acquisition_cost_usd, sponsor_name, donor_name, installation_date, maintenance_cycle_months, condition_rating, insurance_policy_number, insurance_provider, insured_value_usd, created_at, updated_at) VALUES (3, 'Samir Patel', 'Unity Mosaic', 2015, 'Tile Mosaic', '400x400cm', 'South Wall', 'Donation', 60000, 'CommunityFund', 'Local Artists Guild', '2016-09-15', 24, 8, 'POL54321', 'SafeGuard', 75000, '2016-09-01', '2016-09-01');

-- Club governance election records
CREATE TABLE Club_GOV_Elections (
    election_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    election_year INTEGER,
    position TEXT,
    candidate_name TEXT,
    votes_received INTEGER,
    total_votes INTEGER,
    election_result TEXT,
    term_start_date TEXT,
    term_end_date TEXT,
    campaign_budget_usd INTEGER,
    campaign_spend_usd INTEGER,
    sponsor_name TEXT,
    endorsement_list TEXT,
    controversy_flag TEXT,
    audit_status TEXT,
    created_at TEXT,
    updated_at TEXT,
    external_observer TEXT,
    observation_report_id TEXT,
    seat_number INTEGER
);

INSERT INTO Club_GOV_Elections (club_id, election_year, position, candidate_name, votes_received, total_votes, election_result, term_start_date, term_end_date, campaign_budget_usd, campaign_spend_usd, sponsor_name, endorsement_list, controversy_flag, audit_status, created_at, updated_at, external_observer, observation_report_id, seat_number) VALUES (10, 2023, 'President', 'Carlos Mendes', 5200, 8000, 'Won', '2023-07-01', '2027-06-30', 300000, 275000, 'FinancePlus', 'LocalBiz, FansUnion', 'No', 'Clean', '2023-06-15', '2023-06-15', 'GovWatch', 'REP001', 1);
INSERT INTO Club_GOV_Elections (club_id, election_year, position, candidate_name, votes_received, total_votes, election_result, term_start_date, term_end_date, campaign_budget_usd, campaign_spend_usd, sponsor_name, endorsement_list, controversy_flag, audit_status, created_at, updated_at, external_observer, observation_report_id, seat_number) VALUES (12, 2022, 'VicePresident', 'Ana Lopez', 3400, 7500, 'Lost', '2022-08-01', '2026-07-31', 180000, 160000, 'EnergyCo', 'SportsAlliance', 'Yes', 'Investigated', '2022-07-20', '2022-07-20', 'ElectAudit', 'REP002', 2);
INSERT INTO Club_GOV_Elections (club_id, election_year, position, candidate_name, votes_received, total_votes, election_result, term_start_date, term_end_date, campaign_budget_usd, campaign_spend_usd, sponsor_name, endorsement_list, controversy_flag, audit_status, created_at, updated_at, external_observer, observation_report_id, seat_number) VALUES (15, 2024, 'Treasurer', 'Liam O\'Brien', 2100, 6000, 'Won', '2024-01-15', '2028-01-14', 95000, 90000, 'BankDirect', 'MemberBoard', 'No', 'Clean', '2023-12-30', '2023-12-30', 'FinanceCheck', 'REP003', 3);

-- International TV shipment deals for leagues
CREATE TABLE International_TV_Shipment_Deals (
    deal_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    broadcaster_name TEXT,
    region TEXT,
    contract_value_usd INTEGER,
    currency TEXT,
    start_date TEXT,
    end_date TEXT,
    package_type TEXT,
    channels_included TEXT,
    hd_flag TEXT,
    vr_flag TEXT,
    language_options TEXT,
    subtitle_languages TEXT,
    exclusivity_flag TEXT,
    renewal_option TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    compliance_status TEXT
);

INSERT INTO International_TV_Shipment_Deals (league_id, season, broadcaster_name, region, contract_value_usd, currency, start_date, end_date, package_type, channels_included, hd_flag, vr_flag, language_options, subtitle_languages, exclusivity_flag, renewal_option, notes, created_at, updated_at, compliance_status) VALUES (1, '2023', 'GlobalSports', 'Europe', 8000000, 'EUR', '2023-01-01', '2023-12-31', 'Premium', 'Channel1,Channel2', 'Yes', 'No', 'EN,DE,FR', 'EN,DE', 'Yes', 'Yes', 'First year deal', '2022-12-01', '2022-12-01', 'Compliant');
INSERT INTO International_TV_Shipment_Deals (league_id, season, broadcaster_name, region, contract_value_usd, currency, start_date, end_date, package_type, channels_included, hd_flag, vr_flag, language_options, subtitle_languages, exclusivity_flag, renewal_option, notes, created_at, updated_at, compliance_status) VALUES (2, '2024', 'AsiaBroadcast', 'Asia', 4500000, 'USD', '2024-03-15', '2025-03-14', 'Standard', 'ChannelA,ChannelB', 'Yes', 'Yes', 'EN,ZH', 'EN,ZH', 'No', 'No', 'Includes VR feeds', '2024-02-20', '2024-02-20', 'Pending');
INSERT INTO International_TV_Shipment_Deals (league_id, season, broadcaster_name, region, contract_value_usd, currency, start_date, end_date, package_type, channels_included, hd_flag, vr_flag, language_options, subtitle_languages, exclusivity_flag, renewal_option, notes, created_at, updated_at, compliance_status) VALUES (3, '2025', 'AmeriVision', 'NorthAmerica', 9500000, 'USD', '2025-01-10', '2025-12-31', 'PremiumPlus', 'ChannelX,ChannelY,ChannelZ', 'Yes', 'No', 'EN,ES', 'EN,ES', 'Yes', 'Yes', 'Bundled with digital rights', '2024-12-01', '2024-12-01', 'Compliant');

-- Fan digital collectibles registry
CREATE TABLE Fan_Digital_Collectibles (
    collectible_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    collection_name TEXT,
    item_type TEXT,
    rarity_level TEXT,
    acquisition_date TEXT,
    purchase_price_usd INTEGER,
    marketplace TEXT,
    blockchain TEXT,
    token_id TEXT,
    smart_contract_address TEXT,
    status TEXT,
    last_transfer_date TEXT,
    last_holder TEXT,
    verification_status TEXT,
    metadata_url TEXT,
    created_at TEXT,
    updated_at TEXT,
    total_views INTEGER,
    total_likes INTEGER
);

INSERT INTO Fan_Digital_Collectibles (fan_id, collection_name, item_type, rarity_level, acquisition_date, purchase_price_usd, marketplace, blockchain, token_id, smart_contract_address, status, last_transfer_date, last_holder, verification_status, metadata_url, created_at, updated_at, total_views, total_likes) VALUES (2001, 'Champions2023', 'NFT Card', 'Legendary', '2023-09-05', 250, 'OpenMarket', 'Ethereum', 'TOK12345', '0xABCDEF123456', 'Owned', '2023-09-05', 'fan2001', 'Verified', 'http://example.com/meta1', '2023-09-05', '2023-09-05', 1500, 340);
INSERT INTO Fan_Digital_Collectibles (fan_id, collection_name, item_type, rarity_level, acquisition_date, purchase_price_usd, marketplace, blockchain, token_id, smart_contract_address, status, last_transfer_date, last_holder, verification_status, metadata_url, created_at, updated_at, total_views, total_likes) VALUES (2002, 'SeasonPass2024', 'Digital Ticket', 'Rare', '2024-02-12', 120, 'TicketHub', 'Polygon', 'TOK67890', '0x123456ABCDEF', 'Owned', '2024-02-12', 'fan2002', 'Verified', 'http://example.com/meta2', '2024-02-12', '2024-02-12', 980, 210);
INSERT INTO Fan_Digital_Collectibles (fan_id, collection_name, item_type, rarity_level, acquisition_date, purchase_price_usd, marketplace, blockchain, token_id, smart_contract_address, status, last_transfer_date, last_holder, verification_status, metadata_url, created_at, updated_at, total_views, total_likes) VALUES (2003, 'GoalMoments', 'Video Clip', 'Epic', '2023-12-01', 75, 'ClipStore', 'Solana', 'TOK54321', '0xFEDCBA654321', 'Owned', '2023-12-01', 'fan2003', 'Verified', 'http://example.com/meta3', '2023-12-01', '2023-12-01', 1250, 290);

-- Club eco initiatives tracking
CREATE TABLE Club_Eco_Initiatives (
    initiative_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    initiative_name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_metric TEXT,
    baseline_value REAL,
    target_value REAL,
    measurement_unit TEXT,
    current_value REAL,
    status TEXT,
    responsible_department TEXT,
    budget_usd INTEGER,
    external_partner TEXT,
    certification_status TEXT,
    report_url TEXT,
    created_at TEXT,
    updated_at TEXT,
    greenhouse_gas_reduction_percent REAL,
    water_savings_liters INTEGER
);

INSERT INTO Club_Eco_Initiatives (club_id, initiative_name, start_date, end_date, target_metric, baseline_value, target_value, measurement_unit, current_value, status, responsible_department, budget_usd, external_partner, certification_status, report_url, created_at, updated_at, greenhouse_gas_reduction_percent, water_savings_liters) VALUES (5, 'Solar Panel Installation', '2022-01-01', '2025-12-31', 'Energy Production', 0, 5000, 'MWh', 1200, 'InProgress', 'Facilities', 2000000, 'GreenEnergyCo', 'Pending', 'http://example.com/report1', '2022-01-01', '2023-06-01', 12.5, 350000);
INSERT INTO Club_Eco_Initiatives (club_id, initiative_name, start_date, end_date, target_metric, baseline_value, target_value, measurement_unit, current_value, status, responsible_department, budget_usd, external_partner, certification_status, report_url, created_at, updated_at, greenhouse_gas_reduction_percent, water_savings_liters) VALUES (7, 'Zero Waste Stadium', '2023-04-15', '2026-04-14', 'Waste Diverted', 3000, 0, 'Kg', 2200, 'Planning', 'Operations', 850000, 'RecycleNow', 'Approved', 'http://example.com/report2', '2023-04-15', '2023-09-20', 8.2, 0);
INSERT INTO Club_Eco_Initiatives (club_id, initiative_name, start_date, end_date, target_metric, baseline_value, target_value, measurement_unit, current_value, status, responsible_department, budget_usd, external_partner, certification_status, report_url, created_at, updated_at, greenhouse_gas_reduction_percent, water_savings_liters) VALUES (9, 'Rainwater Harvesting', '2021-06-01', '2024-05-31', 'Water Collected', 0, 2000000, 'Liters', 750000, 'Completed', 'Infrastructure', 600000, 'AquaTech', 'Certified', 'http://example.com/report3', '2021-06-01', '2024-05-31', 15.0, 2000000);

-- Training team performance metrics per session
CREATE TABLE Training_Team_Performance_Metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    session_date TEXT,
    metric_name TEXT,
    value REAL,
    unit TEXT,
    player_involved INTEGER,
    coach_observer TEXT,
    video_reference_id TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    reliability_score INTEGER,
    sampling_rate_hz INTEGER,
    equipment_used TEXT,
    calibration_date TEXT,
    data_source TEXT,
    anomaly_flag TEXT,
    trend_direction TEXT,
    confidence_interval TEXT,
    rank_among_sessions INTEGER
);

INSERT INTO Training_Team_Performance_Metrics (team_id, session_date, metric_name, value, unit, player_involved, coach_observer, video_reference_id, notes, created_at, updated_at, reliability_score, sampling_rate_hz, equipment_used, calibration_date, data_source, anomaly_flag, trend_direction, confidence_interval, rank_among_sessions) VALUES (3, '2023-08-10', 'Sprint Speed', 34.5, 'km/h', 112, 'Coach A', 'VID001', 'Good acceleration', '2023-08-10', '2023-08-10', 92, 100, 'SpeedGate', '2023-08-01', 'Sensor', 'No', 'Upward', '0.5-0.6', 2);
INSERT INTO Training_Team_Performance_Metrics (team_id, session_date, metric_name, value, unit, player_involved, coach_observer, video_reference_id, notes, created_at, updated_at, reliability_score, sampling_rate_hz, equipment_used, calibration_date, data_source, anomaly_flag, trend_direction, confidence_interval, rank_among_sessions) VALUES (4, '2023-09-05', 'Vertical Jump', 78, 'cm', 145, 'Coach B', 'VID002', 'Improved explosiveness', '2023-09-05', '2023-09-05', 88, 200, 'ForcePlate', '2023-08-20', 'Lab', 'No', 'Stable', '1.2-1.3', 1);
INSERT INTO Training_Team_Performance_Metrics (team_id, session_date, metric_name, value, unit, player_involved, coach_observer, video_reference_id, notes, created_at, updated_at, reliability_score, sampling_rate_hz, equipment_used, calibration_date, data_source, anomaly_flag, trend_direction, confidence_interval, rank_among_sessions) VALUES (5, '2023-07-22', 'Endurance Run', 7200, 'seconds', 167, 'Coach C', 'VID003', 'Consistent pacing', '2023-07-22', '2023-07-22', 85, 50, 'HeartRateMonitor', '2023-07-01', 'Wearable', 'No', 'Downward', '0.9-1.0', 3);

-- Match streaming analytics per platform
CREATE TABLE Match_Streaming_Analytics (
    stream_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    platform_name TEXT,
    concurrent_viewers INTEGER,
    peak_viewers INTEGER,
    avg_view_duration_min REAL,
    total_watch_time_min REAL,
    bitrate_kbps INTEGER,
    latency_seconds INTEGER,
    ad_impressions INTEGER,
    ad_revenue_usd INTEGER,
    subscription_revenue_usd INTEGER,
    geographic_region TEXT,
    device_type TEXT,
    stream_quality TEXT,
    buffer_events INTEGER,
    startup_time_seconds INTEGER,
    created_at TEXT,
    updated_at TEXT,
    stream_status TEXT,
    content_rating TEXT
);

INSERT INTO Match_Streaming_Analytics (match_id, platform_name, concurrent_viewers, peak_viewers, avg_view_duration_min, total_watch_time_min, bitrate_kbps, latency_seconds, ad_impressions, ad_revenue_usd, subscription_revenue_usd, geographic_region, device_type, stream_quality, buffer_events, startup_time_seconds, created_at, updated_at, stream_status, content_rating) VALUES (101, 'StreamLive', 45000, 72000, 28.5, 1280000, 3500, 3, 150000, 120000, 850000, 'Europe', 'Desktop', 'HD', 200, 2, '2023-11-01', '2023-11-01', 'Active', 'PG13');
INSERT INTO Match_Streaming_Analytics (match_id, platform_name, concurrent_viewers, peak_viewers, avg_view_duration_min, total_watch_time_min, bitrate_kbps, latency_seconds, ad_impressions, ad_revenue_usd, subscription_revenue_usd, geographic_region, device_type, stream_quality, buffer_events, startup_time_seconds, created_at, updated_at, stream_status, content_rating) VALUES (102, 'GlobalSport', 62000, 95000, 30.2, 2100000, 4000, 2, 200000, 160000, 1100000, 'Asia', 'Mobile', 'FullHD', 150, 1, '2024-03-15', '2024-03-15', 'Active', 'G');
INSERT INTO Match_Streaming_Analytics (match_id, platform_name, concurrent_viewers, peak_viewers, avg_view_duration_min, total_watch_time_min, bitrate_kbps, latency_seconds, ad_impressions, ad_revenue_usd, subscription_revenue_usd, geographic_region, device_type, stream_quality, buffer_events, startup_time_seconds, created_at, updated_at, stream_status, content_rating) VALUES (103, 'FanStream', 38000, 54000, 26.7, 950000, 3000, 4, 120000, 90000, 600000, 'NorthAmerica', 'SmartTV', 'HD', 220, 3, '2024-06-20', '2024-06-20', 'Active', 'PG');