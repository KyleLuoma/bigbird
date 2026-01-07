-- Sponsor event scheduling details
CREATE TABLE Sponsor_Event_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_name TEXT,
    event_date TEXT,
    location_city TEXT,
    location_country TEXT,
    expected_attendance INTEGER,
    revenue_generated REAL,
    cost REAL,
    sponsor_rep_name TEXT,
    sponsor_rep_contact TEXT,
    main_sponsor_flag TEXT,
    marketing_budget REAL,
    social_media_reach INTEGER,
    media_partners TEXT,
    ticket_price REAL,
    discount_code TEXT,
    vip_packages TEXT,
    notes TEXT,
    created_at TEXT
);

INSERT INTO Sponsor_Event_Schedule (sponsor_id, event_name, event_date, location_city, location_country, expected_attendance, revenue_generated, cost, sponsor_rep_name, sponsor_rep_contact, main_sponsor_flag, marketing_budget, social_media_reach, media_partners, ticket_price, discount_code, vip_packages, notes, created_at)
VALUES (101, 'Summer Fan Fest', '2023-07-15', 'Lisbon', 'Portugal', 15000, 250000.00, 120000.00, 'Ana Silva', '5551234', 'Y', 50000.00, 200000, 'ChannelOne,RadioX', 30.00, 'SUMMER20', 'Gold,Silver', 'First annual event', '2023-01-01');

INSERT INTO Sponsor_Event_Schedule (sponsor_id, event_name, event_date, location_city, location_country, expected_attendance, revenue_generated, cost, sponsor_rep_name, sponsor_rep_contact, main_sponsor_flag, marketing_budget, social_media_reach, media_partners, ticket_price, discount_code, vip_packages, notes, created_at)
VALUES (202, 'Winter Championship Gala', '2023-12-03', 'Berlin', 'Germany', 8000, 185000.00, 95000.00, 'Markus Klein', '5559876', 'N', 40000.00, 120000, 'TVOne,OnlineStream', 45.00, 'WINTER10', 'Platinum', 'Invite‑only gala', '2023-02-10');

INSERT INTO Sponsor_Event_Schedule (sponsor_id, event_name, event_date, location_city, location_country, expected_attendance, revenue_generated, cost, sponsor_rep_name, sponsor_rep_contact, main_sponsor_flag, marketing_budget, social_media_reach, media_partners, ticket_price, discount_code, vip_packages, notes, created_at)
VALUES (303, 'Spring Community Day', '2024-04-22', 'Madrid', 'Spain', 12000, 210000.00, 110000.00, 'Lucia Gomez', '5554321', 'Y', 45000.00, 150000, 'RadioY,SocialNet', 25.00, 'SPRING15', 'Silver', 'Family friendly activities', '2023-03-05');


-- Audio engineering details for stadiums
CREATE TABLE Stadium_Audio_Engineering_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    system_vendor TEXT,
    installation_date TEXT,
    speaker_count INTEGER,
    amplifier_power_kw REAL,
    sound_coverage_area_sqm INTEGER,
    decibel_level_limit INTEGER,
    maintenance_cycle_months INTEGER,
    last_maintenance_date TEXT,
    technician_name TEXT,
    technician_contact TEXT,
    firmware_version TEXT,
    calibration_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    warranty_expiry TEXT,
    cost REAL,
    is_active TEXT
);

INSERT INTO Stadium_Audio_Engineering_Details (stadium_id, system_vendor, installation_date, speaker_count, amplifier_power_kw, sound_coverage_area_sqm, decibel_level_limit, maintenance_cycle_months, last_maintenance_date, technician_name, technician_contact, firmware_version, calibration_date, notes, created_at, updated_at, warranty_expiry, cost, is_active)
VALUES (1, 'AcousticPro', '2022-06-01', 200, 45.5, 15000, 105, 12, '2023-06-01', 'Pedro Alvarez', '5551111', 'v2.3', '2023-05-20', 'Initial system setup', '2022-06-01', '2023-06-01', '2025-06-01', 750000.00, 'Y');

INSERT INTO Stadium_Audio_Engineering_Details (stadium_id, system_vendor, installation_date, speaker_count, amplifier_power_kw, sound_coverage_area_sqm, decibel_level_limit, maintenance_cycle_months, last_maintenance_date, technician_name, technician_contact, firmware_version, calibration_date, notes, created_at, updated_at, warranty_expiry, cost, is_active)
VALUES (2, 'SoundWave', '2021-09-15', 150, 38.0, 12000, 100, 10, '2023-03-10', 'Elena Rossi', '5552222', 'v1.9', '2023-02-28', 'Added sub‑woofer array', '2021-09-15', '2023-03-10', '2024-09-15', 620000.00, 'Y');

INSERT INTO Stadium_Audio_Engineering_Details (stadium_id, system_vendor, installation_date, speaker_count, amplifier_power_kw, sound_coverage_area_sqm, decibel_level_limit, maintenance_cycle_months, last_maintenance_date, technician_name, technician_contact, firmware_version, calibration_date, notes, created_at, updated_at, warranty_expiry, cost, is_active)
VALUES (3, 'MegaSound', '2020-03-20', 250, 60.0, 18000, 110, 14, '2022-12-05', 'Johan Muller', '5553333', 'v3.1', '2022-11-20', 'System upgrade 2022', '2020-03-20', '2022-12-05', '2026-03-20', 950000.00, 'Y');


-- Fan‑generated digital content records
CREATE TABLE Fan_Digital_Content_Creation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    content_type TEXT,
    platform TEXT,
    creation_date TEXT,
    title TEXT,
    description TEXT,
    view_count INTEGER,
    like_count INTEGER,
    share_count INTEGER,
    comment_count INTEGER,
    content_url TEXT,
    thumbnail_url TEXT,
    duration_seconds INTEGER,
    tags TEXT,
    language TEXT,
    maturity_rating TEXT,
    monetization_status TEXT,
    revenue_generated REAL,
    is_featured TEXT,
    created_at TEXT
);

INSERT INTO Fan_Digital_Content_Creation (fan_id, content_type, platform, creation_date, title, description, view_count, like_count, share_count, comment_count, content_url, thumbnail_url, duration_seconds, tags, language, maturity_rating, monetization_status, revenue_generated, is_featured, created_at)
VALUES (501, 'Video', 'YouTube', '2023-08-10', 'Best Goals Compilation', 'Highlights from the season', 150000, 8200, 3400, 210, 'http://vid.example/goalcomp', 'http://img.example/goalthumb', 300, 'goals,highlights', 'EN', 'PG', 'Y', 1200.50, 'Y', '2023-08-11');

INSERT INTO Fan_Digital_Content_Creation (fan_id, content_type, platform, creation_date, title, description, view_count, like_count, share_count, comment_count, content_url, thumbnail_url, duration_seconds, tags, language, maturity_rating, monetization_status, revenue_generated, is_featured, created_at)
VALUES (502, 'Article', 'BlogSite', '2023-07-22', 'Tactics Analysis of Team X', 'In‑depth tactical breakdown', 82000, 4500, 1200, 95, 'http://blog.example/tactics', 'http://img.example/tactthumb', 0, 'tactics,analysis', 'EN', 'G', 'N', 0.00, 'N', '2023-07-23');

INSERT INTO Fan_Digital_Content_Creation (fan_id, content_type, platform, creation_date, title, description, view_count, like_count, share_count, comment_count, content_url, thumbnail_url, duration_seconds, tags, language, maturity_rating, monetization_status, revenue_generated, is_featured, created_at)
VALUES (503, 'Podcast', 'Spotify', '2023-09-01', 'Season Review Podcast', 'Weekly discussion of last week matches', 45000, 3000, 800, 60, 'http://pod.example/seasonreview', 'http://img.example/podthumb', 1800, 'podcast,review', 'EN', 'PG', 'Y', 350.75, 'N', '2023-09-02');


-- Environmental monitoring sensors in training centers
CREATE TABLE Training_Center_Environmental_Monitoring (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    sensor_type TEXT,
    install_date TEXT,
    last_calibration_date TEXT,
    reading_value REAL,
    unit TEXT,
    threshold_min REAL,
    threshold_max REAL,
    alert_triggered TEXT,
    maintenance_required TEXT,
    technician_name TEXT,
    technician_contact TEXT,
    notes TEXT,
    recorded_at TEXT,
    created_at TEXT,
    updated_at TEXT,
    sensor_serial TEXT,
    battery_level INTEGER,
    firmware_version TEXT,
    location_section TEXT
);

INSERT INTO Training_Center_Environmental_Monitoring (center_id, sensor_type, install_date, last_calibration_date, reading_value, unit, threshold_min, threshold_max, alert_triggered, maintenance_required, technician_name, technician_contact, notes, recorded_at, created_at, updated_at, sensor_serial, battery_level, firmware_version, location_section)
VALUES (10, 'CO2', '2022-01-15', '2023-06-01', 420.5, 'ppm', 350.0, 1000.0, 'N', 'N', 'Sofia Novak', '5554444', 'Normal operation', '2023-09-01', '2022-01-15', '2023-09-01', 'CO2-001', 85, 'v1.2', 'NorthWing');

INSERT INTO Training_Center_Environmental_Monitoring (center_id, sensor_type, install_date, last_calibration_date, reading_value, unit, threshold_min, threshold_max, alert_triggered, maintenance_required, technician_name, technician_contact, notes, recorded_at, created_at, updated_at, sensor_serial, battery_level, firmware_version, location_section)
VALUES (11, 'Temperature', '2021-11-20', '2023-05-20', 22.3, 'C', 18.0, 26.0, 'N', 'Y', 'Liam Chen', '5555555', 'Battery low, schedule replacement', '2023-09-01', '2021-11-20', '2023-09-01', 'TMP-045', 15, 'v3.0', 'EastHall');

INSERT INTO Training_Center_Environmental_Monitoring (center_id, sensor_type, install_date, last_calibration_date, reading_value, unit, threshold_min, threshold_max, alert_triggered, maintenance_required, technician_name, technician_contact, notes, recorded_at, created_at, updated_at, sensor_serial, battery_level, firmware_version, location_section)
VALUES (12, 'Humidity', '2022-05-10', '2023-04-15', 55.0, '%', 30.0, 60.0, 'N', 'N', 'Maya Patel', '5556666', 'All good', '2023-09-01', '2022-05-10', '2023-09-01', 'HUM-302', 70, 'v2.5', 'SouthWing');


-- Club media and branding strategy information
CREATE TABLE Club_Media_Brand_Strategy (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    strategy_name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_audience TEXT,
    primary_channels TEXT,
    budget REAL,
    expected_roi REAL,
    key_metrics TEXT,
    approval_status TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_by TEXT,
    updated_at TEXT,
    notes TEXT,
    brand_guidelines_version TEXT,
    campaign_count INTEGER,
    digital_spend REAL,
    tv_spend REAL,
    radio_spend REAL
);

INSERT INTO Club_Media_Brand_Strategy (club_id, strategy_name, start_date, end_date, target_audience, primary_channels, budget, expected_roi, key_metrics, approval_status, created_by, created_at, updated_by, updated_at, notes, brand_guidelines_version, campaign_count, digital_spend, tv_spend, radio_spend)
VALUES (301, 'Global Expansion 2023', '2023-01-01', '2023-12-31', 'InternationalFans', 'SocialMedia,TV,Outdoors', 2000000.00, 1.8, 'reach,engagement,conversion', 'Approved', 'Laura Martin', '2022-12-15', 'Laura Martin', '2023-01-05', 'Focus on Asia market', 'v5', 12, 1200000.00, 600000.00, 200000.00);

INSERT INTO Club_Media_Brand_Strategy (club_id, strategy_name, start_date, end_date, target_audience, primary_channels, budget, expected_roi, key_metrics, approval_status, created_by, created_at, updated_by, updated_at, notes, brand_guidelines_version, campaign_count, digital_spend, tv_spend, radio_spend)
VALUES (302, 'Youth Engagement Campaign', '2023-03-01', '2023-09-30', 'LocalYouth', 'Schools,SocialMedia,Events', 500000.00, 2.2, 'participation,brandRecall', 'Pending', 'Marko Ivanov', '2023-02-20', 'Marko Ivanov', '2023-03-02', 'Partner with local schools', 'v3', 6, 300000.00, 150000.00, 50000.00);

INSERT INTO Club_Media_Brand_Strategy (club_id, strategy_name, start_date, end_date, target_audience, primary_channels, budget, expected_roi, key_metrics, approval_status, created_by, created_at, updated_by, updated_at, notes, brand_guidelines_version, campaign_count, digital_spend, tv_spend, radio_spend)
VALUES (303, 'Heritage Celebration', '2023-05-01', '2023-07-31', 'ClubAlumni', 'Print,Radio,SocialMedia', 350000.00, 1.5, 'awareness,sentiment', 'Approved', 'Sofia Delgado', '2023-04-10', 'Sofia Delgado', '2023-05-02', 'Celebrating 100 years', 'v2', 4, 200000.00, 100000.00, 50000.00);


-- Minutes from league official meetings
CREATE TABLE League_Official_Meeting_Minutes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    meeting_date TEXT,
    meeting_type TEXT,
    chairperson TEXT,
    location TEXT,
    attendees_count INTEGER,
    agenda_summary TEXT,
    decisions_made TEXT,
    action_items TEXT,
    next_meeting_date TEXT,
    quorum_met TEXT,
    minutes_author TEXT,
    approved_by TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    document_url TEXT,
    confidential_flag TEXT,
    meeting_duration_minutes INTEGER
);

INSERT INTO League_Official_Meeting_Minutes (league_id, meeting_date, meeting_type, chairperson, location, attendees_count, agenda_summary, decisions_made, action_items, next_meeting_date, quorum_met, minutes_author, approved_by, created_at, updated_at, notes, document_url, confidential_flag, meeting_duration_minutes)
VALUES (1, '2023-02-10', 'Quarterly', 'Javier Ortega', 'Madrid', 25, 'Financial review, competition format', 'Approved new salary cap', 'Update club contracts', '2023-05-10', 'Y', 'Elena Ruiz', 'Javier Ortega', '2023-02-11', '2023-02-11', 'All items passed', 'http://docs.example/meeting20230210.pdf', 'N', 180);

INSERT INTO League_Official_Meeting_Minutes (league_id, meeting_date, meeting_type, chairperson, location, attendees_count, agenda_summary, decisions_made, action_items, next_meeting_date, quorum_met, minutes_author, approved_by, created_at, updated_at, notes, document_url, confidential_flag, meeting_duration_minutes)
VALUES (2, '2023-06-18', 'Emergency', 'Maria Lopez', 'Barcelona', 18, 'COVID protocols, schedule changes', 'Postponed matches in July', 'Notify clubs, update calendar', '2023-07-01', 'Y', 'Carlos Mendez', 'Maria Lopez', '2023-06-19', '2023-06-19', 'Rapid decision needed', 'http://docs.example/meeting20230618.pdf', 'Y', 90);

INSERT INTO League_Official_Meeting_Minutes (league_id, meeting_date, meeting_type, chairperson, location, attendees_count, agenda_summary, decisions_made, action_items, next_meeting_date, quorum_met, minutes_author, approved_by, created_at, updated_at, notes, document_url, confidential_flag, meeting_duration_minutes)
VALUES (3, '2023-09-05', 'Annual General', 'Thomas Becker', 'Vienna', 30, 'Strategic plan 2024‑2028', 'Adopted long‑term growth strategy', 'Form working groups', '2024-02-15', 'Y', 'Anna Schmidt', 'Thomas Becker', '2023-09-06', '2023-09-06', 'Positive outlook', 'http://docs.example/meeting20230905.pdf', 'N', 240);


-- Virtual training sessions for players
CREATE TABLE Player_Virtual_Training_Sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    session_date TEXT,
    virtual_platform TEXT,
    training_module TEXT,
    duration_minutes INTEGER,
    calories_burned INTEGER,
    avg_heart_rate INTEGER,
    performance_score INTEGER,
    feedback_text TEXT,
    coach_id INTEGER,
    coach_feedback TEXT,
    video_url TEXT,
    replay_available TEXT,
    session_type TEXT,
    difficulty_level TEXT,
    equipment_used TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    session_status TEXT
);

INSERT INTO Player_Virtual_Training_Sessions (player_id, session_date, virtual_platform, training_module, duration_minutes, calories_burned, avg_heart_rate, performance_score, feedback_text, coach_id, coach_feedback, video_url, replay_available, session_type, difficulty_level, equipment_used, notes, created_at, updated_at, session_status)
VALUES (601, '2023-08-20', 'VRFit', 'DribblingMaster', 45, 350, 138, 88, 'Good control under pressure', 71, 'Focus on left foot', 'http://vid.example/dribble601', 'Y', 'Individual', 'Hard', 'VRGloves', 'First virtual session', '2023-08-21', '2023-08-21', 'Completed');

INSERT INTO Player_Virtual_Training_Sessions (player_id, session_date, virtual_platform, training_module, duration_minutes, calories_burned, avg_heart_rate, performance_score, feedback_text, coach_id, coach_feedback, video_url, replay_available, session_type, difficulty_level, equipment_used, notes, created_at, updated_at, session_status)
VALUES (602, '2023-08-22', 'FitSphere', 'ShootingAccuracy', 30, 250, 132, 91, 'Excellent shot placement', 71, 'Maintain consistency', 'http://vid.example/shoot602', 'Y', 'Group', 'Medium', 'VRHelmet', 'Team drill', '2023-08-23', '2023-08-23', 'Completed');

INSERT INTO Player_Virtual_Training_Sessions (player_id, session_date, virtual_platform, training_module, duration_minutes, calories_burned, avg_heart_rate, performance_score, feedback_text, coach_id, coach_feedback, video_url, replay_available, session_type, difficulty_level, equipment_used, notes, created_at, updated_at, session_status)
VALUES (603, '2023-08-25', 'MetaFit', 'DefensivePositioning', 40, 300, 140, 84, 'Needs quicker reaction', 71, 'Work on agility', 'http://vid.example/defend603', 'N', 'Individual', 'Hard', 'VRGloves', 'Follow‑up session required', '2023-08-26', '2023-08-26', 'Pending Review');


-- Team travel carbon footprint records
CREATE TABLE Team_Travel_Carbon_Footprint (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    travel_date TEXT,
    origin_city TEXT,
    destination_city TEXT,
    transport_mode TEXT,
    distance_km INTEGER,
    passengers INTEGER,
    fuel_type TEXT,
    emissions_kg_co2 REAL,
    offset_purchased TEXT,
    offset_provider TEXT,
    travel_purpose TEXT,
    cost_usd REAL,
    notes TEXT,
    recorded_at TEXT,
    created_at TEXT,
    updated_at TEXT,
    travel_agency TEXT,
    carbon_intensity_factor REAL
);

INSERT INTO Team_Travel_Carbon_Footprint (team_id, travel_date, origin_city, destination_city, transport_mode, distance_km, passengers, fuel_type, emissions_kg_co2, offset_purchased, offset_provider, travel_purpose, cost_usd, notes, recorded_at, created_at, updated_at, travel_agency, carbon_intensity_factor)
VALUES (41, '2023-09-10', 'Madrid', 'Paris', 'Air', 1050, 25, 'JetA', 8450.5, 'Y', 'GreenAir', 'AwayMatch', 25000.00, 'Direct flight', '2023-09-10', '2023-09-10', '2023-09-10', 'TravelCo', 0.0080);

INSERT INTO Team_Travel_Carbon_Footprint (team_id, travel_date, origin_city, destination_city, transport_mode, distance_km, passengers, fuel_type, emissions_kg_co2, offset_purchased, offset_provider, travel_purpose, cost_usd, notes, recorded_at, created_at, updated_at, travel_agency, carbon_intensity_factor)
VALUES (42, '2023-09-12', 'Berlin', 'Munich', 'Bus', 585, 30, 'Diesel', 3100.0, 'N', NULL, 'TrainingCamp', 8000.00, 'Chartered coach', '2023-09-12', '2023-09-12', '2023-09-12', 'RoadTravelLtd', 0.0055);

INSERT INTO Team_Travel_Carbon_Footprint (team_id, travel_date, origin_city, destination_city, transport_mode, distance_km, passengers, fuel_type, emissions_kg_co2, offset_purchased, offset_provider, travel_purpose, cost_usd, notes, recorded_at, created_at, updated_at, travel_agency, carbon_intensity_factor)
VALUES (43, '2023-09-15', 'Rome', 'Naples', 'Train', 225, 22, 'Electric', 450.0, 'Y', 'EcoRail', 'DomesticMatch', 4200.00, 'High‑speed rail', '2023-09-15', '2023-09-15', '2023-09-15', 'RailConnect', 0.0020);


-- Broadcast technology upgrade log
CREATE TABLE Broadcast_Technology_Upgrade_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_network_id INTEGER,
    upgrade_date TEXT,
    technology_name TEXT,
    version TEXT,
    vendor TEXT,
    cost_usd REAL,
    downtime_minutes INTEGER,
    impacted_regions TEXT,
    upgrade_reason TEXT,
    approved_by TEXT,
    implementation_lead TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    warranty_end_date TEXT,
    support_contact TEXT,
    firmware_version TEXT,
    hardware_serial TEXT
);

INSERT INTO Broadcast_Technology_Upgrade_Log (broadcast_network_id, upgrade_date, technology_name, version, vendor, cost_usd, downtime_minutes, impacted_regions, upgrade_reason, approved_by, implementation_lead, notes, created_at, updated_at, status, warranty_end_date, support_contact, firmware_version, hardware_serial)
VALUES (11, '2023-07-01', '4K UltraHD Encoder', 'v5.2', 'EncodeTech', 120000.00, 60, 'EU,NA', 'Increase picture quality', 'ChiefTechOfficer', 'Laura Kim', 'Successful rollout', '2023-07-02', '2023-07-02', 'Completed', '2026-07-01', 'support@encodetech.com', 'fw5.2.1', 'ENC12345');

INSERT INTO Broadcast_Technology_Upgrade_Log (broadcast_network_id, upgrade_date, technology_name, version, vendor, cost_usd, downtime_minutes, impacted_regions, upgrade_reason, approved_by, implementation_lead, notes, created_at, updated_at, status, warranty_end_date, support_contact, firmware_version, hardware_serial)
VALUES (12, '2023-08-15', 'Adaptive Bitrate Streaming Server', 'v3.8', 'StreamFlow', 85000.00, 45, 'APAC', 'Reduce buffering', 'VPEngineering', 'Mark Lee', 'Minor issues resolved', '2023-08-16', '2023-08-16', 'Completed', '2025-08-15', 'help@streamflow.com', 'fw3.8.0', 'STB9876');

INSERT INTO Broadcast_Technology_Upgrade_Log (broadcast_network_id, upgrade_date, technology_name, version, vendor, cost_usd, downtime_minutes, impacted_regions, upgrade_reason, approved_by, implementation_lead, notes, created_at, updated_at, status, warranty_end_date, support_contact, firmware_version, hardware_serial)
VALUES (13, '2023-09-20', 'IP Audio Mixer', 'v2.1', 'AudioNet', 45000.00, 30, 'LATAM', 'Enhance audio mixing', 'DirectorAudio', 'Sofia Alvarez', 'All channels synchronized', '2023-09-21', '2023-09-21', 'Completed', '2024-09-20', 'audio@audionet.com', 'fw2.1.3', 'AUXM4567');


-- Inventory of accessibility features per venue
CREATE TABLE Venue_Accessibility_Feature_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    feature_type TEXT,
    description TEXT,
    location_detail TEXT,
    compliance_status TEXT,
    installation_date TEXT,
    last_inspection_date TEXT,
    inspector_name TEXT,
    inspector_contact TEXT,
    maintenance_cycle_months INTEGER,
    next_maintenance_date TEXT,
    cost_usd REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    manufacturer TEXT,
    warranty_years INTEGER,
    accessibility_rating INTEGER,
    is_active TEXT
);

INSERT INTO Venue_Accessibility_Feature_Inventory (venue_id, feature_type, description, location_detail, compliance_status, installation_date, last_inspection_date, inspector_name, inspector_contact, maintenance_cycle_months, next_maintenance_date, cost_usd, notes, created_at, updated_at, manufacturer, warranty_years, accessibility_rating, is_active)
VALUES (101, 'Ramp', 'Wheelchair ramp with handrails', 'North entrance', 'Compliant', '2021-04-10', '2023-04-09', 'Carlos Diaz', '5557777', 12, '2024-04-10', 12000.00, 'Routine check passed', '2021-04-10', '2023-04-09', 'RampBuildCo', 5, 9, 'Y');

INSERT INTO Venue_Accessibility_Feature_Inventory (venue_id, feature_type, description, location_detail, compliance_status, installation_date, last_inspection_date, inspector_name, inspector_contact, maintenance_cycle_months, next_maintenance_date, cost_usd, notes, created_at, updated_at, manufacturer, warranty_years, accessibility_rating, is_active)
VALUES (102, 'BrailleSignage', 'Braille signage for restrooms', 'East wing', 'Compliant', '2020-09-15', '2023-09-14', 'Linda Wu', '5558888', 24, '2024-09-15', 8000.00, 'No damage observed', '2020-09-15', '2023-09-14', 'SignagePro', 3, 8, 'Y');

INSERT INTO Venue_Accessibility_Feature_Inventory (venue_id, feature_type, description, location_detail, compliance_status, installation_date, last_inspection_date, inspector_name, inspector_contact, maintenance_cycle_months, next_maintenance_date, cost_usd, notes, created_at, updated_at, manufacturer, warranty_years, accessibility_rating, is_active)
VALUES (103, 'AudioAssist', 'Induction loop system for hearing aids', 'Main concourse', 'Compliant', '2019-02-20', '2023-02-19', 'Ahmed Khan', '5559999', 12, '2024-02-20', 15000.00, 'Signal strength optimal', '2019-02-20', '2023-02-19', 'AudioTech', 4, 9, 'Y');