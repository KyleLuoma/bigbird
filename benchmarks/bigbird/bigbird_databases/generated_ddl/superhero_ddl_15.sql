-- Research laboratory information
CREATE TABLE research_lab (
    id INTEGER NOT NULL PRIMARY KEY,
    lab_name TEXT,
    location_city TEXT,
    location_state TEXT,
    country TEXT,
    established_year INTEGER,
    director_name TEXT,
    num_scientists INTEGER,
    funding_source TEXT,
    annual_budget DECIMAL,
    focus_area TEXT,
    accreditation_status TEXT,
    safety_rating INTEGER,
    iso_certified BOOLEAN,
    contact_email TEXT,
    phone_number TEXT,
    website_url TEXT,
    capacity_sqft INTEGER,
    equipment_count INTEGER,
    active_projects INTEGER,
    collaborations INTEGER,
    notes TEXT
);

INSERT INTO research_lab (id, lab_name, location_city, location_state, country, established_year, director_name, num_scientists, funding_source, annual_budget, focus_area, accreditation_status, safety_rating, iso_certified, contact_email, phone_number, website_url, capacity_sqft, equipment_count, active_projects, collaborations, notes) VALUES
(1, 'Quantum Dynamics Lab', 'Metropolis', 'NY', 'USA', 1998, 'Dr Alice Newton', 45, 'Government Grant', 2500000.00, 'Quantum Materials', 'Accredited', 9, TRUE, 'contact@qdlab.com', '5551234567', 'www.qdlab.com', 20000, 350, 12, 4, 'Leading edge research facility'),
(2, 'BioSynth Research Center', 'Emerald City', 'WA', 'USA', 2005, 'Dr Brian Helix', 30, 'Private Investors', 1800000.00, 'Synthetic Biology', 'Pending', 7, FALSE, 'info@biosynth.org', '5559876543', 'www.biosynth.org', 15000, 210, 8, 2, 'Focus on gene editing technologies'),
(3, 'AeroSpace Innovations', 'Skyport', 'CA', 'USA', 2012, 'Dr Carla Vega', 60, 'Corporate Sponsorship', 3200000.00, 'Propulsion Systems', 'Accredited', 8, TRUE, 'admin@aerospaceinc.com', '5555551234', 'www.aerospaceinnov.com', 25000, 420, 15, 6, 'Developing next‑gen engines');

-- Holocron archival records
CREATE TABLE holocron_archive (
    id INTEGER NOT NULL PRIMARY KEY,
    holocron_id TEXT,
    origin_planet TEXT,
    discovered_date DATE,
    discovered_by TEXT,
    artifact_type TEXT,
    energy_signature TEXT,
    containment_level INTEGER,
    preservation_method TEXT,
    last_inspection DATE,
    curator_name TEXT,
    storage_location TEXT,
    climate_control BOOLEAN,
    humidity_percent DECIMAL,
    temperature_celsius DECIMAL,
    security_clearance_level INTEGER,
    associated_hero_id INTEGER,
    description TEXT,
    status TEXT,
    accession_number TEXT,
    notes TEXT,
    loaned_to TEXT
);

INSERT INTO holocron_archive (id, holocron_id, origin_planet, discovered_date, discovered_by, artifact_type, energy_signature, containment_level, preservation_method, last_inspection, curator_name, storage_location, climate_control, humidity_percent, temperature_celsius, security_clearance_level, associated_hero_id, description, status, accession_number, notes, loaned_to) VALUES
(1, 'HLC001', 'Korriban', '2015-06-12', 'Archeologist Zane', 'Cyrillic Cube', 'AlphaWave', 5, 'Cryogenic Vault', '2023-01-15', 'Lara Keene', 'Vault A3', TRUE, 45.2, 4.5, 9, 12, 'Ancient energy storage', 'Secure', 'ACC1001', 'Handled with care', 'None'),
(2, 'HLC002', 'Mandalore', '2018-09-03', 'Scout Mara', 'Obsidian Sphere', 'BetaPulse', 4, 'Magnetic Field', '2023-02-20', 'Dorian Pax', 'Vault B1', TRUE, 50.0, 5.0, 8, 23, 'Contains battle strategies', 'Under Study', 'ACC1002', 'Requires further translation', 'Museum of History'),
(3, 'HLC003', 'Coruscant', '2020-11-21', 'Researcher Finn', 'Luminous Prism', 'GammaFlux', 3, 'Vacuum Chamber', '2023-03-10', 'Mia Torres', 'Vault C2', FALSE, 60.5, 22.0, 7, 7, 'Data core of ancient archives', 'Active', 'ACC1003', 'Digitization in progress', 'University Lab');

-- Metahuman registry details
CREATE TABLE metahuman_registry (
    id INTEGER NOT NULL PRIMARY KEY,
    alias TEXT,
    real_name TEXT,
    classification TEXT,
    power_category TEXT,
    threat_level INTEGER,
    registration_date DATE,
    jurisdiction TEXT,
    status TEXT,
    last_evaluation DATE,
    evaluator_name TEXT,
    assigned_handler_id INTEGER,
    residence_city TEXT,
    residence_state TEXT,
    contact_number TEXT,
    email_address TEXT,
    bio_summary TEXT,
    risk_factor DECIMAL,
    monitoring_device_id TEXT,
    approved_operations TEXT,
    notes TEXT,
    record_version INTEGER
);

INSERT INTO metahuman_registry (id, alias, real_name, classification, power_category, threat_level, registration_date, jurisdiction, status, last_evaluation, evaluator_name, assigned_handler_id, residence_city, residence_state, contact_number, email_address, bio_summary, risk_factor, monitoring_device_id, approved_operations, notes, record_version) VALUES
(1, 'NightShroud', 'Evelyn Storm', 'Class A', 'Shadow Manipulation', 8, '2019-04-15', 'North America', 'Active', '2023-04-01', 'Agent Kline', 101, 'Gotham', 'NY', '5551112222', 'nightshroud@registry.org', 'Operates nocturnally', 0.85, 'MD-001', 'Covert Ops', 'Under continuous surveillance', 3),
(2, 'SolarFlare', 'Marcus Sun', 'Class B', 'Fire Generation', 5, '2020-07-22', 'Europe', 'Active', '2023-04-05', 'Agent Dorian', 102, 'London', 'UK', '5553334444', 'solarflare@registry.org', 'Expert in heat control', 0.45, 'MD-002', 'Disaster Relief', 'Low risk profile', 2),
(3, 'AquaVeil', 'Lina Waters', 'Class C', 'Hydro Kinesis', 4, '2021-02-10', 'Asia', 'Pending Review', '2023-04-10', 'Agent Sato', 103, 'Tokyo', 'Tokyo', '5555556666', 'aquaveil@registry.org', 'Specializes in water shaping', 0.30, 'MD-003', 'Environmental Cleanup', 'Awaiting final clearance', 1);

-- Interstellar travel log entries
CREATE TABLE interstellar_travel_log (
    id INTEGER NOT NULL PRIMARY KEY,
    ship_name TEXT,
    captain_name TEXT,
    departure_planet TEXT,
    arrival_planet TEXT,
    departure_date DATE,
    arrival_date DATE,
    travel_duration_hours INTEGER,
    warp_factor DECIMAL,
    fuel_consumed_tons DECIMAL,
    crew_size INTEGER,
    passenger_count INTEGER,
    cargo_mass_tons DECIMAL,
    mission_objective TEXT,
    status TEXT,
    anomalies_reported TEXT,
    log_timestamp TIMESTAMP,
    recorded_by TEXT,
    navigation_route TEXT,
    security_level INTEGER,
    notes TEXT,
    compliance_certified BOOLEAN
);

INSERT INTO interstellar_travel_log (id, ship_name, captain_name, departure_planet, arrival_planet, departure_date, arrival_date, travel_duration_hours, warp_factor, fuel_consumed_tons, crew_size, passenger_count, cargo_mass_tons, mission_objective, status, anomalies_reported, log_timestamp, recorded_by, navigation_route, security_level, notes, compliance_certified) VALUES
(1, 'SS Voyager', 'Captain Hale', 'Earth', 'ProximaCentauri', '2023-01-01', '2023-01-15', 336, 9.5, 1200.75, 45, 120, 80.5, 'Exploration', 'Completed', 'None', '2023-01-15 08:00:00', 'Nav Officer Lin', 'Route Alpha', 5, 'Smooth voyage', TRUE),
(2, 'ISS Pioneer', 'Commander Rhee', 'Mars', 'Kepler-442b', '2023-02-10', '2023-03-05', 720, 8.2, 1500.30, 60, 200, 110.0, 'Colonization Survey', 'In Transit', 'Minor sensor glitch', '2023-03-05 14:30:00', 'Nav Officer Jax', 'Route Beta', 4, 'Minor delay due to gravity assist', TRUE),
(3, 'Star Runner', 'Lieutenant Zara', 'Venus', 'TauCeti', '2023-04-20', '2023-05-10', 480, 7.8, 1300.00, 30, 80, 65.2, 'Resource Extraction', 'Delayed', 'Radiation spike', '2023-05-10 22:15:00', 'Nav Officer Miro', 'Route Gamma', 3, 'Required emergency shielding', FALSE);

-- Augmented reality campaign data
CREATE TABLE augmented_reality_campaign (
    id INTEGER NOT NULL PRIMARY KEY,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    target_audience TEXT,
    platform TEXT,
    ar_technology TEXT,
    budget_usd DECIMAL,
    impressions INTEGER,
    click_through_rate DECIMAL,
    conversion_rate DECIMAL,
    creative_asset_id INTEGER,
    sponsor_id INTEGER,
    geo_targeting TEXT,
    device_targeting TEXT,
    ad_frequency INTEGER,
    average_session_time DECIMAL,
    user_engagement_score DECIMAL,
    compliance_status TEXT,
    notes TEXT,
    created_by TEXT,
    last_modified TIMESTAMP
);

INSERT INTO augmented_reality_campaign (id, campaign_name, start_date, end_date, target_audience, platform, ar_technology, budget_usd, impressions, click_through_rate, conversion_rate, creative_asset_id, sponsor_id, geo_targeting, device_targeting, ad_frequency, average_session_time, user_engagement_score, compliance_status, notes, created_by, last_modified) VALUES
(1, 'HeroicLens 2023', '2023-03-01', '2023-06-30', 'Teens', 'MobileApp', 'SLAM', 500000.00, 2500000, 0.045, 0.012, 301, 45, 'NorthAmerica', 'iOSAndroid', 5, 3.2, 78.5, 'Approved', 'High engagement in urban areas', 'MarketingTeamA', '2023-06-30 12:00:00'),
(2, 'VillainVision', '2023-07-01', '2023-09-30', 'Adults', 'WebAR', 'MarkerBased', 320000.00, 1800000, 0.038, 0.009, 302, 46, 'Europe', 'DesktopMobile', 4, 2.8, 65.4, 'Pending', 'Testing new interactive filters', 'MarketingTeamB', '2023-09-30 15:30:00'),
(3, 'LegacyMemories', '2023-10-15', '2024-01-15', 'All Ages', 'SocialMedia', 'DepthSensor', 750000.00, 3400000, 0.052, 0.015, 303, 47, 'AsiaPacific', 'MobileOnly', 6, 4.1, 82.1, 'Approved', 'Seasonal launch aligned with holidays', 'MarketingTeamC', '2024-01-15 09:45:00');

-- Paranormal investigation case records
CREATE TABLE paranormal_investigation (
    id INTEGER NOT NULL PRIMARY KEY,
    case_name TEXT,
    location TEXT,
    reported_date DATE,
    investigator_lead TEXT,
    team_size INTEGER,
    equipment_used TEXT,
    phenomena_type TEXT,
    duration_minutes INTEGER,
    evidence_collected TEXT,
    conclusion TEXT,
    status TEXT,
    followup_required BOOLEAN,
    next_step_date DATE,
    report_file_path TEXT,
    funding_source TEXT,
    budget_usd DECIMAL,
    public_release BOOLEAN,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    rating INTEGER
);

INSERT INTO paranormal_investigation (id, case_name, location, reported_date, investigator_lead, team_size, equipment_used, phenomena_type, duration_minutes, evidence_collected, conclusion, status, followup_required, next_step_date, report_file_path, funding_source, budget_usd, public_release, notes, created_at, updated_at, rating) VALUES
(1, 'Midnight Whispers', 'Old Mill Town', '2022-10-12', 'Dr. Evelyn Hart', 5, 'EMF Meter, Audio Recorder', 'Auditory', 180, 'Audio files', 'Inconclusive', 'Closed', FALSE, NULL, '/reports/midnight_whispers.pdf', 'University Grant', 15000.00, FALSE, 'No repeat incidents', '2022-10-15 08:00:00', '2022-10-20 10:30:00', 3),
(2, 'Spectral Lights', 'Riverbend Cemetery', '2023-02-05', 'Agent Marco Silva', 4, 'Thermal Camera, Lidar', 'Visual', 90, 'Thermal images', 'Confirmed anomalous lights', 'Open', TRUE, '2023-03-01', '/reports/spectral_lights.pdf', 'Private Donor', 22000.00, TRUE, 'Awaiting further analysis', '2023-02-07 09:15:00', '2023-02-28 14:45:00', 4),
(3, 'Phantom Footsteps', 'Grand Hotel Plaza', '2023-07-19', 'Detective Lina Zhou', 6, 'Seismic Sensors, Infrared', 'Auditory', 240, 'Sensor logs', 'Pattern matches known acoustic illusion', 'Closed', FALSE, NULL, '/reports/phantom_footsteps.pdf', 'Corporate Sponsorship', 30000.00, FALSE, 'Case used for training', '2023-07-20 11:00:00', '2023-08-01 16:20:00', 5);

-- Heroic legacy award registry
CREATE TABLE heroic_legacy_award (
    id INTEGER NOT NULL PRIMARY KEY,
    award_name TEXT,
    year_introduced INTEGER,
    recipient_hero_id INTEGER,
    category TEXT,
    citation TEXT,
    award_date DATE,
    presented_by TEXT,
    ceremony_location TEXT,
    sponsor TEXT,
    prize_amount_usd DECIMAL,
    medal_material TEXT,
    engraving_text TEXT,
    photo_url TEXT,
    video_url TEXT,
    eligibility_criteria TEXT,
    nomination_process TEXT,
    status TEXT,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    archived BOOLEAN
);

INSERT INTO heroic_legacy_award (id, award_name, year_introduced, recipient_hero_id, category, citation, award_date, presented_by, ceremony_location, sponsor, prize_amount_usd, medal_material, engraving_text, photo_url, video_url, eligibility_criteria, nomination_process, status, notes, created_at, updated_at, archived) VALUES
(1, 'Valor Shield', 2010, 12, 'Bravery', 'Outstanding courage in battle', '2023-05-20', 'Council Chair', 'Grand Hall', 'Global Aid', 50000.00, 'Gold', 'Valor 2023', 'http://images/valor_shield.jpg', 'http://videos/valor_shield.mp4', 'Must have served 5 years', 'Peer nomination', 'Awarded', 'First recipient from northern sector', '2023-04-01 09:00:00', '2023-05-21 10:30:00', FALSE),
(2, 'Guardian Star', 2015, 27, 'Service', 'Exemplary service to the community', '2023-06-15', 'Mayor', 'Civic Center', 'Community Trust', 30000.00, 'Silver', 'Guardian 2023', 'http://images/guardian_star.jpg', 'http://videos/guardian_star.mp4', 'Minimum 10 missions', 'Public voting', 'Awarded', 'Recognized for humanitarian aid', '2023-05-01 11:15:00', '2023-06-16 12:45:00', FALSE),
(3, 'Infinity Medal', 2020, 35, 'Innovation', 'Pioneering new techniques', '2023-07-10', 'Science Director', 'Tech Expo', 'Innovation Labs', 75000.00, 'Platinum', 'Infinity 2023', 'http://images/infinity_medal.jpg', 'http://videos/infinity_medal.mp4', 'Must have filed at least 3 patents', 'Committee selection', 'Pending', 'Nomination under review', '2023-06-01 14:20:00', '2023-07-11 09:55:00', FALSE);

-- Cosmic event calendar entries
CREATE TABLE cosmic_event_calendar (
    id INTEGER NOT NULL PRIMARY KEY,
    event_name TEXT,
    event_type TEXT,
    start_datetime TIMESTAMP,
    end_datetime TIMESTAMP,
    affected_regions TEXT,
    expected_impact TEXT,
    mitigation_plan TEXT,
    responsible_agency TEXT,
    notification_sent BOOLEAN,
    notes TEXT,
    created_by TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    severity_level INTEGER,
    recurrence_pattern TEXT,
    source_observatory TEXT,
    observation_band TEXT,
    coordinates TEXT,
    data_link TEXT,
    status TEXT,
    follow_up_actions TEXT
);

INSERT INTO cosmic_event_calendar (id, event_name, event_type, start_datetime, end_datetime, affected_regions, expected_impact, mitigation_plan, responsible_agency, notification_sent, notes, created_by, created_at, updated_at, severity_level, recurrence_pattern, source_observatory, observation_band, coordinates, data_link, status, follow_up_actions) VALUES
(1, 'Solar Flare X9', 'Solar Storm', '2023-09-01 08:00:00', '2023-09-01 20:00:00', 'Global', 'Communication disruptions', 'Satellite shielding', 'Space Weather Center', TRUE, 'High radiation levels', 'Analyst Kim', '2023-08-25 10:00:00', '2023-09-01 21:00:00', 9, 'One‑off', 'Helios Observatory', 'X‑Ray', 'RA12h34m Dec+45°', 'http://data/solarflare_x9', 'Completed', 'Post‑event analysis'),
(2, 'Gamma Ray Burst 2023B', 'Gamma Burst', '2023-10-15 02:30:00', '2023-10-15 02:45:00', 'Northern Hemisphere', 'Potential satellite damage', 'Orbit adjustment', 'Astro Agency', FALSE, 'Awaiting confirmation', 'Analyst Lee', '2023-10-01 09:15:00', '2023-10-15 03:00:00', 8, 'Rare', 'Deep Space Array', 'Gamma', 'RA03h21m Dec-12°', 'http://data/grb2023b', 'Pending', 'Schedule satellite maneuver'),
(3, 'Meteor Shower Perseids', 'Meteor Shower', '2023-08-12 00:00:00', '2023-08-14 23:59:59', 'Global', 'Spectacular visibility', 'Public outreach', 'Astronomy Society', TRUE, 'Peak expected Aug 13', 'Analyst Patel', '2023-07-20 14:30:00', '2023-08-15 08:00:00', 4, 'Annual', 'Global Network', 'Visible', 'N/A', 'http://data/perseids2023', 'Ongoing', 'Organize viewing events');

-- Spectral analysis records
CREATE TABLE spectral_analysis (
    id INTEGER NOT NULL PRIMARY KEY,
    sample_id TEXT,
    collected_date DATE,
    collector_name TEXT,
    instrument_used TEXT,
    wavelength_start_nm DECIMAL,
    wavelength_end_nm DECIMAL,
    resolution_nm DECIMAL,
    peak_intensity DECIMAL,
    peak_position_nm DECIMAL,
    background_noise DECIMAL,
    signal_to_noise_ratio DECIMAL,
    analysis_method TEXT,
    technician_name TEXT,
    lab_id INTEGER,
    report_file TEXT,
    approved_by TEXT,
    approval_date DATE,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    quality_grade TEXT
);

INSERT INTO spectral_analysis (id, sample_id, collected_date, collector_name, instrument_used, wavelength_start_nm, wavelength_end_nm, resolution_nm, peak_intensity, peak_position_nm, background_noise, signal_to_noise_ratio, analysis_method, technician_name, lab_id, report_file, approved_by, approval_date, notes, created_at, updated_at, quality_grade) VALUES
(1, 'SMP001', '2023-03-10', 'Dr. Rao', 'FTIR Spectrometer', 400.0, 2500.0, 0.5, 1200.75, 1050.3, 15.2, 78.9, 'Fourier Transform', 'Technician Kim', 12, '/reports/smp001.pdf', 'Dr. Nguyen', '2023-03-15', 'High purity sample', '2023-03-10 08:00:00', '2023-03-16 09:30:00', 'A'),
(2, 'SMP002', '2023-04-22', 'Dr. Lin', 'Raman Spectroscope', 350.0, 2000.0, 1.0, 980.40, 820.5, 12.0, 81.5, 'Raman Scattering', 'Technician Patel', 13, '/reports/smp002.pdf', 'Dr. Chen', '2023-04-27', 'Minor contamination detected', '2023-04-22 09:15:00', '2023-04-28 10:45:00', 'B'),
(3, 'SMP003', '2023-05-05', 'Dr. Silva', 'UV-Vis Spectrophotometer', 200.0, 800.0, 0.2, 1500.00, 450.0, 8.5, 176.5, 'Absorbance', 'Technician Jones', 14, '/reports/smp003.pdf', 'Dr. Alvarez', '2023-05-10', 'Sample fatigued', '2023-05-05 07:45:00', '2023-05-11 08:20:00', 'A');

-- Metaverse server farm infrastructure
CREATE TABLE metaverse_server_farm (
    id INTEGER NOT NULL PRIMARY KEY,
    farm_name TEXT,
    location_city TEXT,
    location_country TEXT,
    total_rack_units INTEGER,
    power_capacity_kw DECIMAL,
    cooling_capacity_kw DECIMAL,
    network_bandwidth_gbps DECIMAL,
    uptime_percentage DECIMAL,
    maintenance_window TEXT,
    provider_name TEXT,
    contract_start DATE,
    contract_end DATE,
    sla_level TEXT,
    security_certification TEXT,
    monitored_by TEXT,
    incident_response_plan TEXT,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    operational_status TEXT,
    budget_usd DECIMAL
);

INSERT INTO metaverse_server_farm (id, farm_name, location_city, location_country, total_rack_units, power_capacity_kw, cooling_capacity_kw, network_bandwidth_gbps, uptime_percentage, maintenance_window, provider_name, contract_start, contract_end, sla_level, security_certification, monitored_by, incident_response_plan, notes, created_at, updated_at, operational_status, budget_usd) VALUES
(1, 'Omega Grid', 'Zurich', 'Switzerland', 1200, 3500.00, 4000.00, 200.0, 99.97, 'Sunset 02:00-04:00 UTC', 'DataCore Ltd', '2022-01-01', '2027-12-31', '99.9% SLA', 'ISO27001', 'Ops Team Alpha', 'Standard IRP v2', 'Primary hub for AR/VR services', '2022-01-15 08:00:00', '2023-12-01 09:30:00', 'Active', 8500000.00),
(2, 'Nebula Node', 'Tokyo', 'Japan', 800, 2200.00, 2500.00, 150.0, 99.95, 'Midnight 00:00-02:00 UTC', 'CloudSphere Inc', '2023-06-01', '2028-05-31', '99.95% SLA', 'SOC2', 'Ops Team Beta', 'Advanced IRP v3', 'Supports streaming platform', '2023-06-10 10:20:00', '2024-06-05 11:45:00', 'Active', 6200000.00),
(3, 'Titanium Cluster', 'Toronto', 'Canada', 1500, 4200.00, 4800.00, 250.0, 99.99, 'Weekend 04:00-06:00 UTC', 'NorthData Solutions', '2021-03-15', '2026-03-14', '99.99% SLA', 'PCI-DSS', 'Ops Team Gamma', 'Critical IRP v5', 'Handles financial simulations', '2021-04-01 07:30:00', '2023-11-20 08:55:00', 'Active', 9500000.00);