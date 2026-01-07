```sql
-- Venue accommodation rooms
CREATE TABLE venue_accommodation_rooms (
    room_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id              INTEGER,
    room_number           TEXT NOT NULL,
    floor                 INTEGER,
    capacity              INTEGER,
    room_type             TEXT,
    amenities             TEXT,
    view_type             TEXT,
    price_per_night       REAL,
    is_accessible         INTEGER,
    housekeeping_status  TEXT,
    last_cleaned_date     TEXT,
    maintenance_requested INTEGER,
    wifi_speed_mbps       INTEGER,
    minibar_stock         TEXT,
    air_conditioning     INTEGER,
    smoking_allowed       INTEGER,
    pet_friendly          INTEGER,
    reservation_status   TEXT,
    last_occupied_date    TEXT,
    created_at            TEXT,
    updated_at            TEXT
);

INSERT INTO venue_accommodation_rooms (
    venue_id, room_number, floor, capacity, room_type, amenities,
    view_type, price_per_night, is_accessible, housekeeping_status,
    last_cleaned_date, maintenance_requested, wifi_speed_mbps,
    minibar_stock, air_conditioning, smoking_allowed, pet_friendly,
    reservation_status, last_occupied_date, created_at, updated_at
) VALUES (
    1, 'R101', 1, 2, 'Deluxe', 'TV,MiniBar,Safe',
    'Sea', 250.00, 1, 'Completed',
    '2025-12-01', 0, 150,
    'Full', 1, 0, 0,
    'Booked', '2025-12-03', '2025-11-20', '2025-11-20'
);
INSERT INTO venue_accommodation_rooms (
    venue_id, room_number, floor, capacity, room_type, amenities,
    view_type, price_per_night, is_accessible, housekeeping_status,
    last_cleaned_date, maintenance_requested, wifi_speed_mbps,
    minibar_stock, air_conditioning, smoking_allowed, pet_friendly,
    reservation_status, last_occupied_date, created_at, updated_at
) VALUES (
    2, 'R202', 2, 4, 'Family', 'TV,PlayArea,Safe',
    'Garden', 180.00, 0, 'Pending',
    '2025-11-28', 1, 100,
    'Partial', 1, 0, 1,
    'Available', NULL, '2025-11-15', '2025-11-15'
);
INSERT INTO venue_accommodation_rooms (
    venue_id, room_number, floor, capacity, room_type, amenities,
    view_type, price_per_night, is_accessible, housekeeping_status,
    last_cleaned_date, maintenance_requested, wifi_speed_mbps,
    minibar_stock, air_conditioning, smoking_allowed, pet_friendly,
    reservation_status, last_occupied_date, created_at, updated_at
) VALUES (
    3, 'R303', 3, 1, 'Single', 'TV,Safe',
    'City', 120.00, 1, 'Completed',
    '2025-12-02', 0, 200,
    'Empty', 1, 0, 0,
    'CheckedIn', '2025-12-02', '2025-11-30', '2025-11-30'
);

-- Sponsor engagement metrics
CREATE TABLE sponsor_engagement_metrics (
    sponsor_id            INTEGER,
    campaign_id           INTEGER,
    impressions           INTEGER,
    clicks                INTEGER,
    engagements           INTEGER,
    spend_usd             REAL,
    cpm                   REAL,
    ctr_percent           REAL,
    conversion_rate       REAL,
    lead_count            INTEGER,
    event_attendance      INTEGER,
    social_shares         INTEGER,
    brand_awareness_score REAL,
    sentiment_score       REAL,
    activation_date       TEXT,
    end_date              TEXT,
    region                TEXT,
    channel               TEXT,
    target_audience       TEXT,
    creative_type         TEXT,
    budget_usd            REAL,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    PRIMARY KEY (sponsor_id, campaign_id)
);

INSERT INTO sponsor_engagement_metrics (
    sponsor_id, campaign_id, impressions, clicks, engagements, spend_usd,
    cpm, ctr_percent, conversion_rate, lead_count, event_attendance,
    social_shares, brand_awareness_score, sentiment_score, activation_date,
    end_date, region, channel, target_audience, creative_type, budget_usd,
    notes, created_at, updated_at
) VALUES (
    10, 1001, 500000, 2500, 3000, 15000.00,
    30.00, 0.5, 0.8, 120, 800,
    450, 85.5, 0.92, '2025-10-01',
    '2025-12-31', 'EMEA', 'Social', 'Adults', 'Video', 20000.00,
    'Launch of new model', '2025-09-20', '2025-09-20'
);
INSERT INTO sponsor_engagement_metrics (
    sponsor_id, campaign_id, impressions, clicks, engagements, spend_usd,
    cpm, ctr_percent, conversion_rate, lead_count, event_attendance,
    social_shares, brand_awareness_score, sentiment_score, activation_date,
    end_date, region, channel, target_audience, creative_type, budget_usd,
    notes, created_at, updated_at
) VALUES (
    12, 1002, 750000, 3800, 4200, 22000.00,
    29.33, 0.51, 0.85, 190, 1200,
    620, 90.2, 0.95, '2025-11-15',
    '2026-01-15', 'APAC', 'TV', 'Teens', 'Banner', 25000.00,
    'Holiday special', '2025-11-01', '2025-11-01'
);
INSERT INTO sponsor_engagement_metrics (
    sponsor_id, campaign_id, impressions, clicks, engagements, spend_usd,
    cpm, ctr_percent, conversion_rate, lead_count, event_attendance,
    social_shares, brand_awareness_score, sentiment_score, activation_date,
    end_date, region, channel, target_audience, creative_type, budget_usd,
    notes, created_at, updated_at
) VALUES (
    15, 1003, 300000, 1500, 1700, 8000.00,
    26.67, 0.5, 0.78, 80, 400,
    210, 78.0, 0.88, '2025-09-01',
    '2025-10-31', 'NAM', 'Digital', 'Families', 'Email', 12000.00,
    'Midseason push', '2025-08-20', '2025-08-20'
);

-- Telemetry events
CREATE TABLE telemetry_events (
    event_id              INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id               INTEGER,
    event_timestamp       TEXT,
    driver_reference      TEXT,
    event_type            TEXT,
    lap_number            INTEGER,
    sector                INTEGER,
    speed_kph             REAL,
    rpm                   INTEGER,
    gear                  INTEGER,
    throttle_percent      REAL,
    brake_percent         REAL,
    steering_angle_deg    REAL,
    lateral_g             REAL,
    longitudinal_g        REAL,
    tyre_temp_fl_c        REAL,
    tyre_temp_fr_c        REAL,
    tyre_temp_rl_c        REAL,
    tyre_temp_rr_c        REAL,
    event_description     TEXT,
    severity_level        INTEGER,
    sensor_id             TEXT,
    batch_number          TEXT,
    created_at            TEXT,
    updated_at            TEXT
);

INSERT INTO telemetry_events (
    race_id, event_timestamp, driver_reference, event_type, lap_number,
    sector, speed_kph, rpm, gear, throttle_percent, brake_percent,
    steering_angle_deg, lateral_g, longitudinal_g, tyre_temp_fl_c,
    tyre_temp_fr_c, tyre_temp_rl_c, tyre_temp_rr_c, event_description,
    severity_level, sensor_id, batch_number, created_at, updated_at
) VALUES (
    101, '2025-12-03T14:23:12Z', 'DR001', 'Overtake', 12,
    2, 310.5, 15500, 8, 92.0, 0.0,
    3.2, 0.15, 1.02, 95.0,
    96.5, 87.0, 86.8, 'Aggressive overtaking move', 2,
    'SEN001', 'BCH001', '2025-12-01', '2025-12-01'
);
INSERT INTO telemetry_events (
    race_id, event_timestamp, driver_reference, event_type, lap_number,
    sector, speed_kph, rpm, gear, throttle_percent, brake_percent,
    steering_angle_deg, lateral_g, longitudinal_g, tyre_temp_fl_c,
    tyre_temp_fr_c, tyre_temp_rl_c, tyre_temp_rr_c, event_description,
    severity_level, sensor_id, batch_number, created_at, updated_at
) VALUES (
    102, '2025-12-04T15:05:07Z', 'DR045', 'Spin', 5,
    1, 120.3, 7200, 4, 30.0, 75.0,
    -12.5, -0.45, -0.80, 78.2,
    79.1, 77.9, 78.0, 'Spin after lock-up', 3,
    'SEN012', 'BCH005', '2025-12-02', '2025-12-02'
);
INSERT INTO telemetry_events (
    race_id, event_timestamp, driver_reference, event_type, lap_number,
    sector, speed_kph, rpm, gear, throttle_percent, brake_percent,
    steering_angle_deg, lateral_g, longitudinal_g, tyre_temp_fl_c,
    tyre_temp_fr_c, tyre_temp_rl_c, tyre_temp_rr_c, event_description,
    severity_level, sensor_id, batch_number, created_at, updated_at
) VALUES (
    103, '2025-12-05T16:12:45Z', 'DR078', 'PitStop', 18,
    3, 80.0, 4000, 2, 0.0, 100.0,
    0.0, 0.00, 0.00, 65.0,
    66.2, 63.5, 64.0, 'Scheduled pit stop', 1,
    'SEN020', 'BCH010', '2025-12-03', '2025-12-03'
);

-- Environmental noise readings
CREATE TABLE environmental_noise_readings (
    reading_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id            INTEGER,
    measurement_timestamp TEXT,
    decibel_level         REAL,
    frequency_hz          REAL,
    sensor_location       TEXT,
    weather_condition     TEXT,
    wind_speed_kph        REAL,
    humidity_percent      REAL,
    temperature_c         REAL,
    gps_latitude          REAL,
    gps_longitude         REAL,
    noise_source_type     TEXT,
    compliance_status     TEXT,
    threshold_exceeded    INTEGER,
    notes                 TEXT,
    recorded_by           TEXT,
    verification_status   TEXT,
    audit_id              INTEGER,
    batch_number          TEXT,
    created_at            TEXT,
    updated_at            TEXT
);

INSERT INTO environmental_noise_readings (
    circuit_id, measurement_timestamp, decibel_level, frequency_hz,
    sensor_location, weather_condition, wind_speed_kph, humidity_percent,
    temperature_c, gps_latitude, gps_longitude, noise_source_type,
    compliance_status, threshold_exceeded, notes, recorded_by,
    verification_status, audit_id, batch_number, created_at, updated_at
) VALUES (
    1, '2025-12-03T10:00:00Z', 78.5, 500.0,
    'GrandstandNorth', 'Clear', 12.5, 45.0,
    22.0, 37.7749, -122.4194, 'Engine',
    'Compliant', 0, 'Normal operation', 'TechA',
    'Verified', 101, 'BN001', '2025-12-01', '2025-12-01'
);
INSERT INTO environmental_noise_readings (
    circuit_id, measurement_timestamp, decibel_level, frequency_hz,
    sensor_location, weather_condition, wind_speed_kph, humidity_percent,
    temperature_c, gps_latitude, gps_longitude, noise_source_type,
    compliance_status, threshold_exceeded, notes, recorded_by,
    verification_status, audit_id, batch_number, created_at, updated_at
) VALUES (
    2, '2025-12-04T11:30:00Z', 85.2, 750.0,
    'PitLaneEast', 'Cloudy', 8.0, 55.0,
    19.5, 34.0522, -118.2437, 'Crowd',
    'NonCompliant', 1, 'Peak crowd noise', 'TechB',
    'Pending', 102, 'BN002', '2025-12-02', '2025-12-02'
);
INSERT INTO environmental_noise_readings (
    circuit_id, measurement_timestamp, decibel_level, frequency_hz,
    sensor_location, weather_condition, wind_speed_kph, humidity_percent,
    temperature_c, gps_latitude, gps_longitude, noise_source_type,
    compliance_status, threshold_exceeded, notes, recorded_by,
    verification_status, audit_id, batch_number, created_at, updated_at
) VALUES (
    3, '2025-12-05T09:15:00Z', 70.0, 400.0,
    'GarageWest', 'Rain', 5.5, 80.0,
    16.0, 51.5074, -0.1278, 'Machinery',
    'Compliant', 0, 'Maintenance work', 'TechC',
    'Verified', 103, 'BN003', '2025-12-03', '2025-12-03'
);

-- Fan engagement activity
CREATE TABLE fan_engagement_activity (
    activity_id           INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id                INTEGER,
    event_id              INTEGER,
    activity_type         TEXT,
    activity_timestamp    TEXT,
    platform              TEXT,
    duration_seconds      INTEGER,
    points_earned         INTEGER,
    badge_awarded         TEXT,
    location_city         TEXT,
    location_country      TEXT,
    device_type           TEXT,
    app_version           TEXT,
    ip_address            TEXT,
    referral_source       TEXT,
    feedback_score        REAL,
    comments              TEXT,
    campaign_id           INTEGER,
    segment               TEXT,
    loyalty_tier          TEXT,
    reward_status         TEXT,
    created_at            TEXT,
    updated_at            TEXT
);

INSERT INTO fan_engagement_activity (
    fan_id, event_id, activity_type, activity_timestamp, platform,
    duration_seconds, points_earned, badge_awarded, location_city,
    location_country, device_type, app_version, ip_address,
    referral_source, feedback_score, comments, campaign_id,
    segment, loyalty_tier, reward_status, created_at, updated_at
) VALUES (
    2001, 5001, 'LiveChat', '2025-12-03T13:45:00Z', 'MobileApp',
    300, 150, 'ChatChampion', 'London',
    'UK', 'iOS', '3.2.1', '192.168.1.10',
    'Email', 4.5, 'Great experience', 301,
    'Premium', 'Gold', 'Redeemed', '2025-12-01', '2025-12-01'
);
INSERT INTO fan_engagement_activity (
    fan_id, event_id, activity_type, activity_timestamp, platform,
    duration_seconds, points_earned, badge_awarded, location_city,
    location_country, device_type, app_version, ip_address,
    referral_source, feedback_score, comments, campaign_id,
    segment, loyalty_tier, reward_status, created_at, updated_at
) VALUES (
    2002, 5002, 'SocialShare', '2025-12-04T10:20:00Z', 'Web',
    60, 50, 'SocialStar', 'NewYork',
    'USA', 'Desktop', '5.0.0', '10.0.0.2',
    'SocialMedia', 4.0, 'Liked the post', 302,
    'Standard', 'Silver', 'Pending', '2025-12-02', '2025-12-02'
);
INSERT INTO fan_engagement_activity (
    fan_id, event_id, activity_type, activity_timestamp, platform,
    duration_seconds, points_earned, badge_awarded, location_city,
    location_country, device_type, app_version, ip_address,
    referral_source, feedback_score, comments, campaign_id,
    segment, loyalty_tier, reward_status, created_at, updated_at
) VALUES (
    2003, 5003, 'QuizParticipation', '2025-12-05T16:05:00Z', 'MobileApp',
    180, 200, 'QuizMaster', 'Tokyo',
    'Japan', 'Android', '2.9.4', '172.16.5.3',
    'AppPush', 5.0, 'Challenging but fun', 303,
    'VIP', 'Platinum', 'Redeemed', '2025-12-03', '2025-12-03'
);

-- Logistics vehicle registry
CREATE TABLE logistics_vehicle_registry (
    vehicle_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    registration_number   TEXT NOT NULL,
    vehicle_type          TEXT,
    manufacturer          TEXT,
    model                 TEXT,
    year_of_manufacture   INTEGER,
    capacity_tons         REAL,
    fuel_type             TEXT,
    mileage_km            INTEGER,
    last_service_date    TEXT,
    service_interval_km   INTEGER,
    insurance_provider    TEXT,
    insurance_policy_no   TEXT,
    driver_assigned_id    INTEGER,
    gps_tracker_id        TEXT,
    operational_status    TEXT,
    depot_location        TEXT,
    next_maintenance_date TEXT,
    emissions_rating      TEXT,
    purchase_price_usd    REAL,
    lease_term_months     INTEGER,
    current_driver_name   TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT
);

INSERT INTO logistics_vehicle_registry (
    registration_number, vehicle_type, manufacturer, model,
    year_of_manufacture, capacity_tons, fuel_type, mileage_km,
    last_service_date, service_interval_km, insurance_provider,
    insurance_policy_no, driver_assigned_id, gps_tracker_id,
    operational_status, depot_location, next_maintenance_date,
    emissions_rating, purchase_price_usd, lease_term_months,
    current_driver_name, notes, created_at, updated_at
) VALUES (
    'ABC1234', 'Truck', 'Volvo', 'FH16',
    2020, 25.0, 'Diesel', 150000,
    '2025-11-15', 20000, 'AlliedInsure',
    'POL123456', 401, 'GT001',
    'Active', 'DepotNorth', '2025-12-20',
    'Euro6', 120000.00, 60,
    'JohnDoe', 'Used for equipment transport', '2025-09-01', '2025-09-01'
);
INSERT INTO logistics_vehicle_registry (
    registration_number, vehicle_type, manufacturer, model,
    year_of_manufacture, capacity_tons, fuel_type, mileage_km,
    last_service_date, service_interval_km, insurance_provider,
    insurance_policy_no, driver_assigned_id, gps_tracker_id,
    operational_status, depot_location, next_maintenance_date,
    emissions_rating, purchase_price_usd, lease_term_months,
    current_driver_name, notes, created_at, updated_at
) VALUES (
    'XYZ5678', 'Van', 'Mercedes', 'Sprinter',
    2022, 3.5, 'Electric', 50000,
    '2025-10-01', 15000, 'SecureCover',
    'POL789012', 402, 'GT002',
    'Active', 'DepotSouth', '2025-12-05',
    'ZeroEmissions', 45000.00, 36,
    'JaneSmith', 'Dedicated to parts delivery', '2025-09-15', '2025-09-15'
);
INSERT INTO logistics_vehicle_registry (
    registration_number, vehicle_type, manufacturer, model,
    year_of_manufacture, capacity_tons, fuel_type, mileage_km,
    last_service_date, service_interval_km, insurance_provider,
    insurance_policy_no, driver_assigned_id, gps_tracker_id,
    operational_status, depot_location, next_maintenance_date,
    emissions_rating, purchase_price_usd, lease_term_months,
    current_driver_name, notes, created_at, updated_at
) VALUES (
    'LMN9012', 'Trailer', 'Schneider', 'D Series',
    2019, 30.0, 'Diesel', 200000,
    '2025-09-20', 25000, 'GuardiansInsurance',
    'POL345678', 403, 'GT003',
    'Maintenance', 'DepotEast', '2025-12-15',
    'Euro5', 90000.00, 48,
    'MikeBrown', 'Awaiting repairs', '2025-08-20', '2025-08-20'
);

-- Broadcast schedule
CREATE TABLE broadcast_schedule (
    schedule_id           INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id               INTEGER,
    broadcast_date        TEXT,
    start_time_utc        TEXT,
    end_time_utc          TEXT,
    channel_name          TEXT,
    region                TEXT,
    language              TEXT,
    feed_type             TEXT,
    hd_available          INTEGER,
    commentary_team       TEXT,
    producer_name         TEXT,
    director_name         TEXT,
    technical_lead        TEXT,
    satellite_uplink       TEXT,
    bitrate_mbps          REAL,
    latency_ms            INTEGER,
    ad_breaks_count       INTEGER,
    sponsor_spotlights    INTEGER,
    streaming_platform    TEXT,
    affiliate_partner     TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT
);

INSERT INTO broadcast_schedule (
    race_id, broadcast_date, start_time_utc, end_time_utc,
    channel_name, region, language, feed_type, hd_available,
    commentary_team, producer_name, director_name, technical_lead,
    satellite_uplink, bitrate_mbps, latency_ms, ad_breaks_count,
    sponsor_spotlights, streaming_platform, affiliate_partner,
    notes, created_at, updated_at
) VALUES (
    101, '2025-12-03', '13:00:00', '15:30:00',
    'ChannelOne', 'EMEA', 'English', 'Live', 1,
    'TeamA', 'AliceMartin', 'BobLee', 'CharlieKim',
    'SAT01', 15.5, 200, 3,
    2, 'StreamOne', 'PartnerX',
    'Primary broadcast', '2025-11-20', '2025-11-20'
);
INSERT INTO broadcast_schedule (
    race_id, broadcast_date, start_time_utc, end_time_utc,
    channel_name, region, language, feed_type, hd_available,
    commentary_team, producer_name, director_name, technical_lead,
    satellite_uplink, bitrate_mbps, latency_ms, ad_breaks_count,
    sponsor_spotlights, streaming_platform, affiliate_partner,
    notes, created_at, updated_at
) VALUES (
    102, '2025-12-04', '14:00:00', '16:45:00',
    'ChannelTwo', 'APAC', 'Mandarin', 'Live', 1,
    'TeamB', 'DanaWhite', 'EveZhang', 'FrankLin',
    'SAT02', 12.0, 180, 4,
    3, 'StreamTwo', 'PartnerY',
    'Secondary feed', '2025-11-22', '2025-11-22'
);
INSERT INTO broadcast_schedule (
    race_id, broadcast_date, start_time_utc, end_time_utc,
    channel_name, region, language, feed_type, hd_available,
    commentary_team, producer_name, director_name, technical_lead,
    satellite_uplink, bitrate_mbps, latency_ms, ad_breaks_count,
    sponsor_spotlights, streaming_platform, affiliate_partner,
    notes, created_at, updated_at
) VALUES (
    103, '2025-12-05', '12:30:00', '15:00:00',
    'ChannelThree', 'NAM', 'Spanish', 'Live', 0,
    'TeamC', 'GraceHill', 'HankMiller', 'IvyRoss',
    'SAT03', 10.5, 210, 2,
    1, 'StreamThree', 'PartnerZ',
    'Local language broadcast', '2025-11-25', '2025-11-25'
);

-- Waste management logs
CREATE TABLE waste_management_logs (
    log_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id            INTEGER,
    log_date              TEXT,
    waste_type            TEXT,
    quantity_kg           REAL,
    collection_method     TEXT,
    contractor_name       TEXT,
    container_id          TEXT,
    disposal_site         TEXT,
    transport_vehicle_id  INTEGER,
    driver_id             INTEGER,
    temperature_c         REAL,
    hazardous_flag        INTEGER,
    compliance_status     TEXT,
    notes                 TEXT,
    recorded_by           TEXT,
    verification_status   TEXT,
    audit_id              INTEGER,
    batch_number          TEXT,
    created_at            TEXT,
    updated_at            TEXT
);

INSERT INTO waste_management_logs (
    circuit_id, log_date, waste_type, quantity_kg, collection_method,
    contractor_name, container_id, disposal_site, transport_vehicle_id,
    driver_id, temperature_c, hazardous_flag, compliance_status,
    notes, recorded_by, verification_status, audit_id, batch_number,
    created_at, updated_at
) VALUES (
    1, '2025-12-03', 'Organic', 1200.5, 'Compactor',
    'GreenClean', 'CNT001', 'SiteA', 501,
    801, 22.5, 0, 'Compliant',
    'Regular collection', 'TechA', 'Verified', 201, 'BN100',
    '2025-12-01', '2025-12-01'
);
INSERT INTO waste_management_logs (
    circuit_id, log_date, waste_type, quantity_kg, collection_method,
    contractor_name, container_id, disposal_site, transport_vehicle_id,
    driver_id, temperature_c, hazardous_flag, compliance_status,
    notes, recorded_by, verification_status, audit_id, batch_number,
    created_at, updated_at
) VALUES (
    2, '2025-12-04', 'Plastic', 850.0, 'Bag',
    'EcoWaste', 'CNT002', 'SiteB', 502,
    802, 18.0, 0, 'Compliant',
    'Bagged plastic waste', 'TechB', 'Pending', 202, 'BN101',
    '2025-12-02', '2025-12-02'
);
INSERT INTO waste_management_logs (
    circuit_id, log_date, waste_type, quantity_kg, collection_method,
    contractor_name, container_id, disposal_site, transport_vehicle_id,
    driver_id, temperature_c, hazardous_flag, compliance_status,
    notes, recorded_by, verification_status, audit_id, batch_number,
    created_at, updated_at
) VALUES (
    3, '2025-12-05', 'Hazardous', 45.3, 'Drum',
    'SafeDispose', 'CNT003', 'SiteC', 503,
    803, 15.0, 1, 'NonCompliant',
    'Battery chemicals', 'TechC', 'Investigation', 203, 'BN102',
    '2025-12-03', '2025-12-03'
);

-- Track surface analysis
CREATE TABLE track_surface_analysis (
    analysis_id           INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id            INTEGER,
    analysis_date         TEXT,
    sector                INTEGER,
    surface_type          TEXT,
    grip_level            REAL,
    roughness_mm          REAL,
    temperature_c         REAL,
    humidity_percent      REAL,
    oil_residue_ppm       REAL,
    dust_level_ppm        REAL,
    abrasion_rating       INTEGER,
    water_retention_ml    REAL,
    temperature_variance  REAL,
    tire_wear_factor      REAL,
    maintenance_status    TEXT,
    notes                 TEXT,
    analyst_name          TEXT,
    verification_status   TEXT,
    audit_id              INTEGER,
    batch_number          TEXT,
    created_at            TEXT,
    updated_at            TEXT
);

INSERT INTO track_surface_analysis (
    circuit_id, analysis_date, sector, surface_type, grip_level,
    roughness_mm, temperature_c, humidity_percent, oil_residue_ppm,
    dust_level_ppm, abrasion_rating, water_retention_ml,
    temperature_variance, tire_wear_factor, maintenance_status,
    notes, analyst_name, verification_status, audit_id,
    batch_number, created_at, updated_at
) VALUES (
    1, '2025-12-02', 1, 'Asphalt', 0.85,
    0.45, 28.0, 60.0, 12.5,
    250.0, 3, 15.0,
    1.2, 1.05, 'Good',
    'Surface within specs', 'AnalystA', 'Verified', 301,
    'BN201', '2025-12-01', '2025-12-01'
);
INSERT INTO track_surface_analysis (
    circuit_id, analysis_date, sector, surface_type, grip_level,
    roughness_mm, temperature_c, humidity_percent, oil_residue_ppm,
    dust_level_ppm, abrasion_rating, water_retention_ml,
    temperature_variance, tire_wear_factor, maintenance_status,
    notes, analyst_name, verification_status, audit_id,
    batch_number, created_at, updated_at
) VALUES (
    2, '2025-12-03', 2, 'Concrete', 0.70,
    0.60, 30.0, 55.0, 20.0,
    300.0, 4, 10.0,
    1.5, 0.95, 'Moderate',
    'Slightly oily patches', 'AnalystB', 'Pending', 302,
    'BN202', '2025-12-02', '2025-12-02'
);
INSERT INTO track_surface_analysis (
    circuit_id, analysis_date, sector, surface_type, grip_level,
    roughness_mm, temperature_c, humidity_percent, oil_residue_ppm,
    dust_level_ppm, abrasion_rating, water_retention_ml,
    temperature_variance, tire_wear_factor, maintenance_status,
    notes, analyst_name, verification_status, audit_id,
    batch_number, created_at, updated_at
) VALUES (
    3, '2025-12-04', 3, 'Asphalt', 0.60,
    0.70, 32.0, 50.0, 35.0,
    400.0, 5, 8.0,
    2.0, 0.80, 'Poor',
    'High dust, low grip', 'AnalystC', 'Investigation', 303,
    'BN203', '2025-12-03', '2025-12-03'
);

-- Official certification records
CREATE TABLE official_certification_records (
    cert_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    official_id           INTEGER,
    certification_type    TEXT,
    issuing_body          TEXT,
    issue_date            TEXT,
    expiry_date           TEXT,
    certification_number  TEXT,
    status                TEXT,
    renewal_required      INTEGER,
    last_renewal_date     TEXT,
    next_renewal_due      TEXT,
    training_hours        INTEGER,
    exam_score_percent    REAL,
    location_city         TEXT,
    location_country      TEXT,
    notes                 TEXT,
    verified_by           TEXT,
    verification_date     TEXT,
    audit_id              INTEGER,
    batch_number          TEXT,
    created_at            TEXT,
    updated_at            TEXT
);

INSERT INTO official_certification_records (
    official_id, certification_type, issuing_body, issue_date,
    expiry_date, certification_number, status, renewal_required,
    last_renewal_date, next_renewal_due, training_hours, exam_score_percent,
    location_city, location_country, notes, verified_by,
    verification_date, audit_id, batch_number, created_at, updated_at
) VALUES (
    701, 'SafetyOfficer', 'FIA', '2022-01-15',
    '2025-01-15', 'CERT001', 'Active', 1,
    '2023-12-01', '2025-12-01', 40, 96.5,
    'Monaco', 'Monaco', 'All clear', 'SupervisorA',
    '2025-11-30', 401, 'BN301', '2025-11-20', '2025-11-20'
);
INSERT INTO official_certification_records (
    official_id, certification_type, issuing_body, issue_date,
    expiry_date, certification_number, status, renewal_required,
    last_renewal_date, next_renewal_due, training_hours, exam_score_percent,
    location_city, location_country, notes, verified_by,
    verification_date, audit_id, batch_number, created_at, updated_at
) VALUES (
    702, 'MedicalOfficer', 'FIA', '2021-06-10',
    '2024-06-10', 'CERT002', 'Expired', 1,
    '2023-05-20', '2024-05-20', 60, 88.0,
    'Silverstone', 'UK', 'Requires renewal', 'SupervisorB',
    '2023-05-25', 402, 'BN302', '2023-05-10', '2023-05-10'
);
INSERT INTO official_certification_records (
    official_id, certification_type, issuing_body, issue_date,
    expiry_date, certification_number, status, renewal_required,
    last_renewal_date, next_renewal_due, training_hours, exam_score_percent,
    location_city, location_country, notes, verified_by,
    verification_date, audit_id, batch_number, created_at, updated_at
) VALUES (
    703, 'TrackInspector', 'FIA', '2020-09-01',
    '2023-09-01', 'CERT003', 'Active', 0,
    '2022-08-15', NULL, 80, 92.3,
    'Spa', 'Belgium', 'No issues', 'SupervisorC',
    '2022-08-20', 403, 'BN303', '2022-08-01', '2022-08-01'
);
```