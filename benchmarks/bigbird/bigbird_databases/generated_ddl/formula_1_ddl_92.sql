-- Fan Loyalty NFT Collections
CREATE TABLE fan_loyalty_nft_collections
(
    collection_id          INTEGER PRIMARY KEY AUTOINCREMENT,
    collection_name        TEXT NOT NULL,
    launch_date            DATE,
    total_nfts             INTEGER,
    blockchain_platform    TEXT,
    smart_contract_address TEXT,
    creator_team           TEXT,
    rarity_tier_count      INTEGER,
    average_market_price   REAL,
    max_supply             INTEGER,
    artwork_theme          TEXT,
    metadata_uri           TEXT,
    promotional_video_url  TEXT,
    official_website       TEXT,
    partnership_sponsor    TEXT,
    limited_edition_flag   INTEGER,
    minting_status         TEXT,
    total_sales_volume     REAL,
    primary_color_hex      TEXT,
    secondary_color_hex    TEXT,
    description            TEXT,
    status                 TEXT
);

INSERT INTO fan_loyalty_nft_collections (collection_name, launch_date, total_nfts, blockchain_platform, smart_contract_address, creator_team, rarity_tier_count, average_market_price, max_supply, artwork_theme, metadata_uri, promotional_video_url, official_website, partnership_sponsor, limited_edition_flag, minting_status, total_sales_volume, primary_color_hex, secondary_color_hex, description, status)
VALUES ('GrandPrix Legends', '2023-09-15', 5000, 'Ethereum', '0xabc123def456', 'PixelForge', 5, 0.75, 5000, 'Historic Cars', 'ipfs://QmExampleMeta', 'https://example.com/video.mp4', 'https://grandprixlegends.com', 'TechCorp', 1, 'Active', 3725.50, '#FF5733', '#333FFF', 'Series of NFTs celebrating iconic race cars', 'Live');

INSERT INTO fan_loyalty_nft_collections (collection_name, launch_date, total_nfts, blockchain_platform, smart_contract_address, creator_team, rarity_tier_count, average_market_price, max_supply, artwork_theme, metadata_uri, promotional_video_url, official_website, partnership_sponsor, limited_edition_flag, minting_status, total_sales_volume, primary_color_hex, secondary_color_hex, description, status)
VALUES ('Circuit Horizons', '2024-02-01', 3000, 'Solana', '0xdef789abc012', 'LumenArts', 4, 1.20, 3000, 'Future Tracks', 'ipfs://QmAnotherMeta', 'https://example.com/circuit.mp4', 'https://circuithorizons.com', 'GreenEnergy', 0, 'Upcoming', 0.00, '#00FFAA', '#AA00FF', 'NFT collection depicting futuristic race circuits', 'Planned');

INSERT INTO fan_loyalty_nft_collections (collection_name, launch_date, total_nfts, blockchain_platform, smart_contract_address, creator_team, rarity_tier_count, average_market_price, max_supply, artwork_theme, metadata_uri, promotional_video_url, official_website, partnership_sponsor, limited_edition_flag, minting_status, total_sales_volume, primary_color_hex, secondary_color_hex, description, status)
VALUES ('Driver Icons', '2022-07-20', 4000, 'Polygon', '0x1234567890ab', 'Arcane Studios', 6, 0.55, 4000, 'Driver Portraits', 'ipfs://QmDriverMeta', 'https://example.com/driver.mp4', 'https://drivericons.com', 'AutoFuel', 0, 'Completed', 2210.75, '#FFD700', '#8B0000', 'Portrait NFTs of celebrated drivers', 'Archived');

-- Esports Participant Profiles
CREATE TABLE esports_participant_profiles
(
    participant_id        INTEGER PRIMARY KEY AUTOINCREMENT,
    gamer_tag             TEXT NOT NULL,
    real_name             TEXT,
    country               TEXT,
    date_of_birth         DATE,
    primary_game          TEXT,
    team_affiliation      TEXT,
    years_active          INTEGER,
    world_ranking         INTEGER,
    total_prize_money_usd REAL,
    twitch_followers      INTEGER,
    youtube_subscribers   INTEGER,
    instagram_followers   INTEGER,
    twitter_followers     INTEGER,
    preferred_stream_platform TEXT,
    primary_role          TEXT,
    favorite_race_track   TEXT,
    hardware_setup       TEXT,
    sponsor_one           TEXT,
    sponsor_two           TEXT,
    training_hours_per_week INTEGER,
    last_competition_date DATE,
    profile_picture_url   TEXT,
    bio_summary           TEXT,
    status                TEXT
);

INSERT INTO esports_participant_profiles (gamer_tag, real_name, country, date_of_birth, primary_game, team_affiliation, years_active, world_ranking, total_prize_money_usd, twitch_followers, youtube_subscribers, instagram_followers, twitter_followers, preferred_stream_platform, primary_role, favorite_race_track, hardware_setup, sponsor_one, sponsor_two, training_hours_per_week, last_competition_date, profile_picture_url, bio_summary, status)
VALUES ('SpeedWizard', 'Alex Turner', 'USA', '1995-04-12', 'F1 2021', 'Velocity eSports', 4, 12, 250000.00, 15000, 8000, 12000, 20000, 'Twitch', 'Driver', 'Monaco', 'Custom PC RTX3080', 'TechGear', 'EnergyDrink', 30, '2023-11-02', 'https://example.com/avatars/speedwizard.png', 'Racing prodigy with a love for precision driving', 'Active');

INSERT INTO esports_participant_profiles (gamer_tag, real_name, country, date_of_birth, primary_game, team_affiliation, years_active, world_ranking, total_prize_money_usd, twitch_followers, youtube_subscribers, instagram_followers, twitter_followers, preferred_stream_platform, primary_role, favorite_race_track, hardware_setup, sponsor_one, sponsor_two, training_hours_per_week, last_competition_date, profile_picture_url, bio_summary, status)
VALUES ('TurboKid', 'Mia Liu', 'Canada', '2000-09-08', 'F1 2022', 'Rapid Racing', 2, 45, 75000.00, 8000, 3000, 5000, 12000, 'YouTube', 'Strategist', 'Silverstone', 'Laptop i7 16GB', 'GamingChair', 'HeadsetCo', 25, '2023-10-15', 'https://example.com/avatars/turbokid.png', 'Young talent known for aggressive overtakes', 'Active');

INSERT INTO esports_participant_profiles (gamer_tag, real_name, country, date_of_birth, primary_game, team_affiliation, years_active, world_ranking, total_prize_money_usd, twitch_followers, youtube_subscribers, instagram_followers, twitter_followers, preferred_stream_platform, primary_role, favorite_race_track, hardware_setup, sponsor_one, sponsor_two, training_hours_per_week, last_competition_date, profile_picture_url, bio_summary, status)
VALUES ('ApexRacer', 'Luis Fernandez', 'Spain', '1992-02-20', 'F1 2020', 'Apex Legends', 6, 5, 500000.00, 25000, 15000, 22000, 35000, 'Twitch', 'Analyst', 'Spa', 'Desktop i9 32GB', 'FuelCo', 'ApparelInc', 35, '2023-11-20', 'https://example.com/avatars/apexracer.png', 'Veteran driver with consistent podium finishes', 'Active');

-- Venue Green Certification Audits
CREATE TABLE venue_green_certification_audits
(
    audit_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id               INTEGER NOT NULL,
    audit_date             DATE,
    certification_body     TEXT,
    certification_level    TEXT,
    total_energy_consumption_kwh REAL,
    renewable_energy_percent REAL,
    water_usage_liters     REAL,
    waste_recycled_tons    REAL,
    carbon_emissions_tons  REAL,
    air_quality_index      INTEGER,
    noise_level_db         REAL,
    green_building_rating  INTEGER,
    waste_management_plan  TEXT,
    lighting_efficiency_score REAL,
    HVAC_efficiency_score  REAL,
    transportation_plan    TEXT,
    biodiversity_score     INTEGER,
    sustainability_score   REAL,
    auditor_name           TEXT,
    notes                  TEXT,
    follow_up_required     INTEGER,
    follow_up_date         DATE,
    status                 TEXT
);

INSERT INTO venue_green_certification_audits (venue_id, audit_date, certification_body, certification_level, total_energy_consumption_kwh, renewable_energy_percent, water_usage_liters, waste_recycled_tons, carbon_emissions_tons, air_quality_index, noise_level_db, green_building_rating, waste_management_plan, lighting_efficiency_score, HVAC_efficiency_score, transportation_plan, biodiversity_score, sustainability_score, auditor_name, notes, follow_up_required, follow_up_date, status)
VALUES (101, '2023-05-10', 'LEED', 'Gold', 1250000.0, 45.5, 850000.0, 120.0, 340.0, 42, 65.2, 85, 'Zero waste policy', 92.5, 88.0, 'Electric shuttle service', 78, 89.4, 'Emily Green', 'Excellent overall performance', 0, NULL, 'Completed');

INSERT INTO venue_green_certification_audits (venue_id, audit_date, certification_body, certification_level, total_energy_consumption_kwh, renewable_energy_percent, water_usage_liters, waste_recycled_tons, carbon_emissions_tons, air_quality_index, noise_level_db, green_building_rating, waste_management_plan, lighting_efficiency_score, HVAC_efficiency_score, transportation_plan, biodiversity_score, sustainability_score, auditor_name, notes, follow_up_required, follow_up_date, status)
VALUES (102, '2023-08-22', 'BREEAM', 'Silver', 980000.0, 30.0, 720000.0, 85.0, 270.0, 48, 70.1, 78, 'Recycling bins in all zones', 85.0, 80.5, 'Carpool incentives', 65, 78.2, 'Carlos Vega', 'Needs improvement in water reuse', 1, '2024-02-15', 'Pending Follow‑up');

INSERT INTO venue_green_certification_audits (venue_id, audit_date, certification_body, certification_level, total_energy_consumption_kwh, renewable_energy_percent, water_usage_liters, waste_recycled_tons, carbon_emissions_tons, air_quality_index, noise_level_db, green_building_rating, waste_management_plan, lighting_efficiency_score, HVAC_efficiency_score, transportation_plan, biodiversity_score, sustainability_score, auditor_name, notes, follow_up_required, follow_up_date, status)
VALUES (103, '2022-11-05', 'ISO 14001', 'Certified', 750000.0, 55.0, 600000.0, 150.0, 210.0, 35, 60.0, 90, 'Comprehensive waste audit', 95.0, 92.0, 'Bike lanes and EV charging', 82, 92.7, 'Sofia Patel', 'Outstanding sustainability measures', 0, NULL, 'Completed');

-- Team Virtual Reality Training Sessions
CREATE TABLE team_virtual_reality_training_sessions
(
    session_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id                  INTEGER NOT NULL,
    driver_id                INTEGER,
    session_date             DATE,
    vr_system_brand          TEXT,
    headset_model            TEXT,
    software_version         TEXT,
    track_simulated          TEXT,
    duration_minutes         INTEGER,
    laps_simulated           INTEGER,
    average_speed_kph        REAL,
    max_g_force              REAL,
    tire_wear_percent        REAL,
    fuel_consumption_liters  REAL,
    feedback_score           INTEGER,
    instructor_name          TEXT,
    notes                    TEXT,
    safety_incident_flag     INTEGER,
    incident_description     TEXT,
    post_session_analysis_url TEXT,
    performance_improvement_percent REAL,
    created_at               DATE,
    updated_at               DATE,
    status                   TEXT
);

INSERT INTO team_virtual_reality_training_sessions (team_id, driver_id, session_date, vr_system_brand, headset_model, software_version, track_simulated, duration_minutes, laps_simulated, average_speed_kph, max_g_force, tire_wear_percent, fuel_consumption_liters, feedback_score, instructor_name, notes, safety_incident_flag, incident_description, post_session_analysis_url, performance_improvement_percent, created_at, updated_at, status)
VALUES (10, 201, '2023-09-12', 'Oculus', 'Quest3', 'v2.4.1', 'Monaco', 90, 25, 210.5, 3.8, 12.5, 45.0, 88, 'Laura Smith', 'Good consistency, focus on braking zones', 0, NULL, 'https://example.com/analysis/vr101', 4.2, '2023-09-12', '2023-09-12', 'Completed');

INSERT INTO team_virtual_reality_training_sessions (team_id, driver_id, session_date, vr_system_brand, headset_model, software_version, track_simulated, duration_minutes, laps_simulated, average_speed_kph, max_g_force, tire_wear_percent, fuel_consumption_liters, feedback_score, instructor_name, notes, safety_incident_flag, incident_description, post_session_analysis_url, performance_improvement_percent, created_at, updated_at, status)
VALUES (12, 207, '2023-10-05', 'HTC Vive', 'ProEye', 'v3.0.0', 'Silverstone', 120, 30, 225.0, 4.1, 9.8, 48.5, 92, 'Marco Liu', 'Excellent lap times, work on corner entry', 0, NULL, 'https://example.com/analysis/vr102', 5.6, '2023-10-05', '2023-10-05', 'Completed');

INSERT INTO team_virtual_reality_training_sessions (team_id, driver_id, session_date, vr_system_brand, headset_model, software_version, track_simulated, duration_minutes, laps_simulated, average_speed_kph, max_g_force, tire_wear_percent, fuel_consumption_liters, feedback_score, instructor_name, notes, safety_incident_flag, incident_description, post_session_analysis_url, performance_improvement_percent, created_at, updated_at, status)
VALUES (15, 215, '2023-11-20', 'Valve Index', 'Index', 'v1.9.3', 'Spa', 105, 28, 230.2, 4.3, 11.2, 50.0, 85, 'Nina Patel', 'Minor oversteer on fast bends', 1, 'Loss of control on lap 12', 'https://example.com/analysis/vr103', 2.8, '2023-11-20', '2023-11-20', 'Review');

-- Circuit Hydrological Studies
CREATE TABLE circuit_hydrological_studies
(
    study_id                 INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id               INTEGER NOT NULL,
    study_date               DATE,
    water_source_type        TEXT,
    average_rainfall_mm      REAL,
    runoff_coefficient       REAL,
    groundwater_level_m      REAL,
    surface_water_flow_cms   REAL,
    flood_risk_category      TEXT,
    drainage_capacity_cms    REAL,
    permeable_surface_percent REAL,
    soil_type                TEXT,
    vegetation_cover_percent REAL,
    erosion_control_measures TEXT,
    sampling_point_count     INTEGER,
    water_quality_ph         REAL,
    water_quality_turbidity_ntu REAL,
    contaminant_level_ppm    REAL,
    researcher_name          TEXT,
    institution_affiliation  TEXT,
    report_url               TEXT,
    data_quality_score       INTEGER,
    created_at               DATE,
    updated_at               DATE,
    status                   TEXT
);

INSERT INTO circuit_hydrological_studies (circuit_id, study_date, water_source_type, average_rainfall_mm, runoff_coefficient, groundwater_level_m, surface_water_flow_cms, flood_risk_category, drainage_capacity_cms, permeable_surface_percent, soil_type, vegetation_cover_percent, erosion_control_measures, sampling_point_count, water_quality_ph, water_quality_turbidity_ntu, contaminant_level_ppm, researcher_name, institution_affiliation, report_url, data_quality_score, created_at, updated_at, status)
VALUES (1, '2023-04-18', 'Rainfall', 85.3, 0.45, 3.2, 12.5, 'Moderate', 15.0, 30.0, 'Clay', 25, 'Retaining walls', 10, 7.2, 3.1, 0.05, 'Dr. Alan Reed', 'GeoScience Institute', 'https://example.com/reports/hydro001.pdf', 92, '2023-04-18', '2023-04-18', 'Approved');

INSERT INTO circuit_hydrological_studies (circuit_id, study_date, water_source_type, average_rainfall_mm, runoff_coefficient, groundwater_level_m, surface_water_flow_cms, flood_risk_category, drainage_capacity_cms, permeable_surface_percent, soil_type, vegetation_cover_percent, erosion_control_measures, sampling_point_count, water_quality_ph, water_quality_turbidity_ntu, contaminant_level_ppm, researcher_name, institution_affiliation, report_url, data_quality_score, created_at, updated_at, status)
VALUES (2, '2023-07-09', 'Groundwater', 60.0, 0.38, 2.8, 9.0, 'Low', 12.0, 45.0, 'Sandy', 40, 'Grassed swales', 8, 7.5, 2.0, 0.02, 'Maria Lopez', 'HydroTech Labs', 'https://example.com/reports/hydro002.pdf', 87, '2023-07-09', '2023-07-09', 'Approved');

INSERT INTO circuit_hydrological_studies (circuit_id, study_date, water_source_type, average_rainfall_mm, runoff_coefficient, groundwater_level_m, surface_water_flow_cms, flood_risk_category, drainage_capacity_cms, permeable_surface_percent, soil_type, vegetation_cover_percent, erosion_control_measures, sampling_point_count, water_quality_ph, water_quality_turbidity_ntu, contaminant_level_ppm, researcher_name, institution_affiliation, report_url, data_quality_score, created_at, updated_at, status)
VALUES (3, '2022-11-22', 'Snowmelt', 30.5, 0.52, 4.0, 15.2, 'High', 14.0, 20.0, 'Rocky', 15, 'Rock barriers', 12, 6.9, 4.5, 0.08, 'Thomas Klein', 'Mountain Hydrology Center', 'https://example.com/reports/hydro003.pdf', 80, '2022-11-22', '2022-11-22', 'Reviewed');

-- Sponsor Charity Event Participation
CREATE TABLE sponsor_charity_event_participation
(
    participation_id          INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id                INTEGER NOT NULL,
    event_name                TEXT,
    event_date                DATE,
    charity_name              TEXT,
    cause_category            TEXT,
    funds_raised_usd          REAL,
    volunteer_hours           INTEGER,
    matching_donation_percent REAL,
    event_location_city       TEXT,
    event_location_country    TEXT,
    publicity_channels        TEXT,
    media_mentions_count      INTEGER,
    social_media_impressions  INTEGER,
    executive_contact_name    TEXT,
    executive_contact_email   TEXT,
    sponsorship_tier          TEXT,
    logo_displayed            INTEGER,
    merchandise_provided      TEXT,
    post_event_report_url     TEXT,
    notes                     TEXT,
    created_at                DATE,
    updated_at                DATE,
    status                    TEXT
);

INSERT INTO sponsor_charity_event_participation (sponsor_id, event_name, event_date, charity_name, cause_category, funds_raised_usd, volunteer_hours, matching_donation_percent, event_location_city, event_location_country, publicity_channels, media_mentions_count, social_media_impressions, executive_contact_name, executive_contact_email, sponsorship_tier, logo_displayed, merchandise_provided, post_event_report_url, notes, created_at, updated_at, status)
VALUES (45, 'Race Day for Hope', '2023-05-10', 'Global Health Initiative', 'Medical', 125000.00, 150, 100.0, 'Monaco', 'Monaco', 'TV,Online', 12, 500000, 'Sofia Green', 's.green@example.com', 'Gold', 1, 'T‑shirts, Caps', 'https://example.com/reports/charity01.pdf', 'Excellent community response', '2023-05-10', '2023-05-10', 'Completed');

INSERT INTO sponsor_charity_event_participation (sponsor_id, event_name, event_date, charity_name, cause_category, funds_raised_usd, volunteer_hours, matching_donation_percent, event_location_city, event_location_country, publicity_channels, media_mentions_count, social_media_impressions, executive_contact_name, executive_contact_email, sponsorship_tier, logo_displayed, merchandise_provided, post_event_report_url, notes, created_at, updated_at, status)
VALUES (52, 'Green Speed Gala', '2023-09-22', 'EcoFuture Foundation', 'Environment', 90000.00, 80, 50.0, 'Tokyo', 'Japan', 'Social Media,Print', 8, 300000, 'Kenji Tanaka', 'k.tanaka@example.com', 'Silver', 1, 'Reusable Water Bottles', 'https://example.com/reports/charity02.pdf', 'Positive media coverage', '2023-09-22', '2023-09-22', 'Completed');

INSERT INTO sponsor_charity_event_participation (sponsor_id, event_name, event_date, charity_name, cause_category, funds_raised_usd, volunteer_hours, matching_donation_percent, event_location_city, event_location_country, publicity_channels, media_mentions_count, social_media_impressions, executive_contact_name, executive_contact_email, sponsorship_tier, logo_displayed, merchandise_provided, post_event_report_url, notes, created_at, updated_at, status)
VALUES (61, 'Speed for Schools', '2024-02-15', 'Future Leaders Academy', 'Education', 75000.00, 200, 30.0, 'Berlin', 'Germany', 'Radio,Online', 10, 420000, 'Lara Schmidt', 'l.schmidt@example.com', 'Bronze', 0, 'Stationery Kits', 'https://example.com/reports/charity03.pdf', 'High volunteer participation', '2024-02-15', '2024-02-15', 'Planned');

-- Driver Legacy Career Highlights
CREATE TABLE driver_legacy_career_highlights
(
    highlight_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    driver_id               INTEGER NOT NULL,
    season_year             INTEGER,
    race_id                 INTEGER,
    achievement_type        TEXT,
    description             TEXT,
    position_finished       INTEGER,
    points_earned           REAL,
    lap_record_time_sec     REAL,
    pole_position_flag      INTEGER,
    fastest_lap_flag        INTEGER,
    team_at_time            TEXT,
    car_model               TEXT,
    track_name              TEXT,
    weather_conditions      TEXT,
    pit_stop_count          INTEGER,
    average_speed_kph       REAL,
    margin_of_victory_sec   REAL,
    record_verified_by      TEXT,
    video_highlight_url     TEXT,
    created_at              DATE,
    updated_at              DATE,
    status                  TEXT
);

INSERT INTO driver_legacy_career_highlights (driver_id, season_year, race_id, achievement_type, description, position_finished, points_earned, lap_record_time_sec, pole_position_flag, fastest_lap_flag, team_at_time, car_model, track_name, weather_conditions, pit_stop_count, average_speed_kph, margin_of_victory_sec, record_verified_by, video_highlight_url, created_at, updated_at, status)
VALUES (201, 2021, 105, 'Race Win', 'First career victory at high‑altitude circuit', 1, 25.0, 78.432, 1, 1, 'Velocity eSports', 'V12 Turbo', 'Monaco', 'Clear', 2, 210.5, 1.35, 'FIA', 'https://example.com/highlights/driver201_race105.mp4', '2021-05-23', '2021-05-23', 'Confirmed');

INSERT INTO driver_legacy_career_highlights (driver_id, season_year, race_id, achievement_type, description, position_finished, points_earned, lap_record_time_sec, pole_position_flag, fastest_lap_flag, team_at_time, car_model, track_name, weather_conditions, pit_stop_count, average_speed_kph, margin_of_victory_sec, record_verified_by, video_highlight_url, created_at, updated_at, status)
VALUES (207, 2020, 87, 'Pole Position', 'Secured pole with record qualifying time', 1, 20.0, 80.115, 1, 0, 'Rapid Racing', 'Hybrid X', 'Silverstone', 'Rainy', 3, 215.0, NULL, 'FIA', 'https://example.com/highlights/driver207_race87.mp4', '2020-07-19', '2020-07-19', 'Confirmed');

INSERT INTO driver_legacy_career_highlights (driver_id, season_year, race_id, achievement_type, description, position_finished, points_earned, lap_record_time_sec, pole_position_flag, fastest_lap_flag, team_at_time, car_model, track_name, weather_conditions, pit_stop_count, average_speed_kph, margin_of_victory_sec, record_verified_by, video_highlight_url, created_at, updated_at, status)
VALUES (215, 2022, 132, 'Fastest Lap', 'Set fastest lap during race despite wet conditions', 3, 15.0, 79.658, 0, 1, 'Apex Legends', 'V8 Supercharged', 'Spa', 'Wet', 4, 220.3, 0.78, 'FIA', 'https://example.com/highlights/driver215_race132.mp4', '2022-09-05', '2022-09-05', 'Confirmed');

-- Broadcast Advertiser Performance Metrics
CREATE TABLE broadcast_advertiser_performance_metrics
(
    metric_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    advertiser_id            INTEGER NOT NULL,
    broadcast_id             INTEGER NOT NULL,
    ad_slot_start_time       TEXT,
    ad_slot_end_time         TEXT,
    duration_seconds         INTEGER,
    impressions              INTEGER,
    clicks                   INTEGER,
    ctr_percent              REAL,
    cpc_usd                  REAL,
    total_spent_usd          REAL,
    viewability_rate_percent REAL,
    brand_recall_score       INTEGER,
    audience_demographic     TEXT,
    day_of_week              TEXT,
    program_name             TEXT,
    channel_name             TEXT,
    platform_type            TEXT,
    ad_format                TEXT,
    creative_id              INTEGER,
    verification_vendor      TEXT,
    verification_status      TEXT,
    notes                    TEXT,
    created_at               DATE,
    updated_at               DATE,
    status                   TEXT
);

INSERT INTO broadcast_advertiser_performance_metrics (advertiser_id, broadcast_id, ad_slot_start_time, ad_slot_end_time, duration_seconds, impressions, clicks, ctr_percent, cpc_usd, total_spent_usd, viewability_rate_percent, brand_recall_score, audience_demographic, day_of_week, program_name, channel_name, platform_type, ad_format, creative_id, verification_vendor, verification_status, notes, created_at, updated_at, status)
VALUES (3001, 501, '00:15:30', '00:16:00', 30, 150000, 1200, 0.80, 0.05, 60.00, 92.5, 78, 'Male 25-34', 'Saturday', 'Grand Prix Live', 'Channel A', 'TV', 'Video', 112, 'Moat', 'Verified', 'Strong performance during peak viewership', '2023-04-01', '2023-04-01', 'Finalized');

INSERT INTO broadcast_advertiser_performance_metrics (advertiser_id, broadcast_id, ad_slot_start_time, ad_slot_end_time, duration_seconds, impressions, clicks, ctr_percent, cpc_usd, total_spent_usd, viewability_rate_percent, brand_recall_score, audience_demographic, day_of_week, program_name, channel_name, platform_type, ad_format, creative_id, verification_vendor, verification_status, notes, created_at, updated_at, status)
VALUES (3002, 502, '01:05:00', '01:05:30', 30, 200000, 1800, 0.90, 0.04, 72.00, 95.0, 82, 'Female 18-24', 'Sunday', 'Pre‑Race Show', 'Channel B', 'Online', 'Banner', 215, 'Integral', 'Verified', 'High click‑through on digital platform', '2023-04-02', '2023-04-02', 'Finalized');

INSERT INTO broadcast_advertiser_performance_metrics (advertiser_id, broadcast_id, ad_slot_start_time, ad_slot_end_time, duration_seconds, impressions, clicks, ctr_percent, cpc_usd, total_spent_usd, viewability_rate_percent, brand_recall_score, audience_demographic, day_of_week, program_name, channel_name, platform_type, ad_format, creative_id, verification_vendor, verification_status, notes, created_at, updated_at, status)
VALUES (3003, 503, '00:45:10', '00:45:40', 30, 120000, 900, 0.75, 0.06, 54.00, 88.0, 70, 'Male 35-44', 'Friday', 'Race Highlights', 'Channel C', 'Radio', 'Audio', 321, 'DoubleVerify', 'Pending', 'Awaiting final verification', '2023-04-03', '2023-04-03', 'Pending');

-- Logistics Aircraft Transport Log
CREATE TABLE logistics_aircraft_transport_log
(
    flight_log_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    shipment_id              INTEGER NOT NULL,
    aircraft_tail_number      TEXT,
    airline                  TEXT,
    departure_airport_code    TEXT,
    arrival_airport_code      TEXT,
    scheduled_departure_utc   TEXT,
    scheduled_arrival_utc     TEXT,
    actual_departure_utc      TEXT,
    actual_arrival_utc        TEXT,
    cargo_weight_kg          REAL,
    cargo_volume_cubic_meters REAL,
    temperature_control_flag INTEGER,
    hazardous_material_flag  INTEGER,
    customs_clearance_status TEXT,
    carrier_contact_name     TEXT,
    carrier_contact_phone    TEXT,
    handling_agent_name      TEXT,
    handling_fee_usd         REAL,
    insurance_coverage_usd   REAL,
    remarks                  TEXT,
    created_at                DATE,
    updated_at                DATE,
    status                   TEXT
);

INSERT INTO logistics_aircraft_transport_log (shipment_id, aircraft_tail_number, airline, departure_airport_code, arrival_airport_code, scheduled_departure_utc, scheduled_arrival_utc, actual_departure_utc, actual_arrival_utc, cargo_weight_kg, cargo_volume_cubic_meters, temperature_control_flag, hazardous_material_flag, customs_clearance_status, carrier_contact_name, carrier_contact_phone, handling_agent_name, handling_fee_usd, insurance_coverage_usd, remarks, created_at, updated_at, status)
VALUES (8001, 'N123AB', 'AirFreightCo', 'JFK', 'LHR', '2023-06-01 08:00', '2023-06-01 20:00', '2023-06-01 08:15', '2023-06-01 20:30', 2500.0, 15.2, 1, 0, 'Cleared', 'John Doe', '5551234567', 'Global Handling', 3500.00, 50000.00, 'On time delivery of tyre inventory', '2023-06-01', '2023-06-01', 'Completed');

INSERT INTO logistics_aircraft_transport_log (shipment_id, aircraft_tail_number, airline, departure_airport_code, arrival_airport_code, scheduled_departure_utc, scheduled_arrival_utc, actual_departure_utc, actual_arrival_utc, cargo_weight_kg, cargo_volume_cubic_meters, temperature_control_flag, hazardous_material_flag, customs_clearance_status, carrier_contact_name, carrier_contact_phone, handling_agent_name, handling_fee_usd, insurance_coverage_usd, remarks, created_at, updated_at, status)
VALUES (8002, 'N456CD', 'SkyLogistics', 'CDG', 'DXB', '2023-07-15 10:00', '2023-07-15 18:00', '2023-07-15 10:20', '2023-07-15 18:45', 1800.0, 12.0, 0, 1, 'Pending', 'Anna Smith', '5559876543', 'Euro Handling', 2800.00, 40000.00, 'Contains limited hazardous fuel samples', '2023-07-15', '2023-07-15', 'In Transit');

INSERT INTO logistics_aircraft_transport_log (shipment_id, aircraft_tail_number, airline, departure_airport_code, arrival_airport_code, scheduled_departure_utc, scheduled_arrival_utc, actual_departure_utc, actual_arrival_utc, cargo_weight_kg, cargo_volume_cubic_meters, temperature_control_flag, hazardous_material_flag, customs_clearance_status, carrier_contact_name, carrier_contact_phone, handling_agent_name, handling_fee_usd, insurance_coverage_usd, remarks, created_at, updated_at, status)
VALUES (8003, 'N789EF', 'TransGlobal', 'HKG', 'SFO', '2023-09-05 02:00', '2023-09-05 14:00', '2023-09-05 02:30', '2023-09-05 14:20', 3200.0, 20.5, 1, 0, 'Cleared', 'Michael Lee', '5553210987', 'Pacific Handling', 4200.00, 60000.00, 'Temperature‑controlled transport of tyres', '2023-09-05', '2023-09-05', 'Completed');

-- Environmental Carbon Offset Projects
CREATE TABLE environmental_carbon_offset_projects
(
    project_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    project_name             TEXT NOT NULL,
    start_date               DATE,
    end_date                 DATE,
    location_city            TEXT,
    location_country         TEXT,
    project_type             TEXT,
    total_carbon_offset_tons REAL,
    methodology              TEXT,
    verification_body        TEXT,
    verification_date        DATE,
    funding_source           TEXT,
    annual_budget_usd        REAL,
    co2e_reduction_percent   REAL,
    stakeholder_engagement   TEXT,
    renewable_energy_mw      REAL,
    reforestation_hectares   REAL,
    community_benefits       TEXT,
    project_status           TEXT,
    project_manager_name     TEXT,
    contact_email            TEXT,
    notes                    TEXT,
    created_at               DATE,
    updated_at               DATE,
    status                   TEXT
);

INSERT INTO environmental_carbon_offset_projects (project_name, start_date, end_date, location_city, location_country, project_type, total_carbon_offset_tons, methodology, verification_body, verification_date, funding_source, annual_budget_usd, co2e_reduction_percent, stakeholder_engagement, renewable_energy_mw, reforestation_hectares, community_benefits, project_status, project_manager_name, contact_email, notes, created_at, updated_at, status)
VALUES ('Sunnyvale Solar Farm', '2022-01-01', '2032-12-31', 'Sunnyvale', 'USA', 'Renewable Energy', 15000.0, 'IPCC Tier 2', 'Gold Standard', '2022-12-15', 'Corporate Sponsorship', 2000000.00, 85.0, 'Local councils, NGOs', 50.0, 0.0, 'Job creation, educational programs', 'Active', 'Laura Kim', 'l.kim@example.com', 'Phase 1 completed, expanding to 75MW', '2023-01-01', '2023-01-01', 'Ongoing');

INSERT INTO environmental_carbon_offset_projects (project_name, start_date, end_date, location_city, location_country, project_type, total_carbon_offset_tons, methodology, verification_body, verification_date, funding_source, annual_budget_usd, co2e_reduction_percent, stakeholder_engagement, renewable_energy_mw, reforestation_hectares, community_benefits, project_status, project_manager_name, contact_email, notes, created_at, updated_at, status)
VALUES ('Blue Ridge Reforestation', '2021-04-15', '2031-04-14', 'Asheville', 'USA', 'Reforestation', 12000.0, 'Verified Carbon Standard', 'Verra', '2021-10-20', 'Government Grant', 1500000.00, 78.0, 'Local schools, indigenous groups', 0.0, 800.0, 'Habitat restoration, eco‑tourism', 'Active', 'David Patel', 'd.patel@example.com', 'Planting season starts May annually', '2021-04-15', '2021-04-15', 'Ongoing');

INSERT INTO environmental_carbon_offset_projects (project_name, start_date, end_date, location_city, location_country, project_type, total_carbon_offset_tons, methodology, verification_body, verification_date, funding_source, annual_budget_usd, co2e_reduction_percent, stakeholder_engagement, renewable_energy_mw, reforestation_hectares, community_benefits, project_status, project_manager_name, contact_email, notes, created_at, updated_at, status)
VALUES ('Coastal Mangrove Restore', '2023-06-01', '2033-05-31', 'Gold Coast', 'Australia', 'Ecosystem Restoration', 9000.0, 'Gold Standard', 'Gold Standard', '2023-12-10', 'Private Philanthropy', 1000000.00, 82.0, 'Coastal communities, marine NGOs', 0.0, 300.0, 'Coastal protection, fisheries support', 'Planning', 'Emily Zhang', 'e.zhang@example.com', 'Initial feasibility study completed', '2023-06-01', '2023-06-01', 'Planned');