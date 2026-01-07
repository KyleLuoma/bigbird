-- Cinematic release details for superheroes
CREATE TABLE cinematic_release
(
    id                     INTEGER PRIMARY KEY,
    hero_id                INTEGER,
    movie_title            TEXT,
    release_date           DATE,
    box_office_usd         DECIMAL(12,2),
    budget_usd             DECIMAL(12,2),
    director_name          TEXT,
    rating                 TEXT,
    runtime_minutes        INTEGER,
    distributor            TEXT,
    language               TEXT,
    subtitle_languages     TEXT,
    filming_locations      TEXT,
    production_company     TEXT,
    sequel_flag            INTEGER,               -- 0 = no, 1 = yes
    franchise_name         TEXT,
    critic_score           INTEGER,
    audience_score         INTEGER,
    marketing_spend_usd    DECIMAL(12,2),
    streaming_release_date DATE
);

INSERT INTO cinematic_release VALUES (1, 101, 'Shadow Strike', '2023-07-15', 850000000.00, 200000000.00, 'Jane Doe', 'PG-13', 130, 'Mega Studios', 'English', 'Spanish,French', 'Gotham City', 'Alpha Productions', 0, 'Shadow Series', 88, 92, 50000000.00, '2023-12-01');
INSERT INTO cinematic_release VALUES (2, 102, 'Solar Flare', '2024-05-22', 1200000000.00, 300000000.00, 'John Smith', 'PG', 145, 'Star Films', 'English', 'German,Japanese', 'Metropolis', 'Beta Pictures', 1, 'Solar Saga', 91, 95, 75000000.00, '2024-11-10');
INSERT INTO cinematic_release VALUES (3, 103, 'Aqua Force', '2025-03-30', 600000000.00, 150000000.00, 'Lisa Ray', 'PG-13', 115, 'Oceanic Studios', 'English', 'Italian,Portuguese', 'Atlantis', 'Gamma Entertainment', 0, 'Aqua Trilogy', 85, 89, 40000000.00, '2025-09-15');

-- Fan community forum information
CREATE TABLE fan_community_forum
(
    forum_id               INTEGER PRIMARY KEY,
    name                   TEXT,
    created_date           DATE,
    total_members          INTEGER,
    active_threads         INTEGER,
    moderators_count       INTEGER,
    description            TEXT,
    platform               TEXT,
    url                    TEXT,
    primary_language       TEXT,
    timezone               TEXT,
    average_posts_per_day INTEGER,
    most_active_user_id    INTEGER,
    growth_rate_percent    REAL,
    rules_summary          TEXT,
    verified_status        INTEGER,               -- 0 = no, 1 = yes
    theme                  TEXT,
    image_url              TEXT,
    support_email          TEXT,
    sponsor_name           TEXT
);

INSERT INTO fan_community_forum VALUES (1, 'Heroic Hub', '2018-01-10', 45200, 1280, 15, 'Discussion for all hero fans', 'Discourse', 'https://heroichub.com', 'English', 'UTC', 340, 1001, 12.5, 'Be respectful; no spoilers', 1, 'Dark', 'https://heroichub.com/logo.png', 'support@heroichub.com', 'MegaCorp');
INSERT INTO fan_community_forum VALUES (2, 'Villain Vault', '2019-06-05', 17300, 540, 8, 'Dedicated to villain lore', 'phpBB', 'https://villainvault.org', 'English', 'UTC+1', 120, 2002, 8.3, 'No hate speech; stay on topic', 0, 'Red', 'https://villainvault.org/banner.jpg', 'contact@villainvault.org', 'DarkLord Inc');
INSERT INTO fan_community_forum VALUES (3, 'Cosmic Conclave', '2020-11-20', 29800, 860, 12, 'Space and multiverse discussions', 'NodeBB', 'https://cosmicconclave.net', 'English', 'UTC-5', 210, 3003, 10.1, 'No real‑world political debates', 1, 'Blue', 'https://cosmicconclave.net/cover.png', 'info@cosmicconclave.net', 'Stellar Studios');

-- Training facility data
CREATE TABLE training_facility
(
    facility_id            INTEGER PRIMARY KEY,
    name                   TEXT,
    location_city          TEXT,
    location_state         TEXT,
    capacity               INTEGER,
    opened_date            DATE,
    manager_name           TEXT,
    contact_phone          TEXT,
    contact_email          TEXT,
    facility_type          TEXT,
    safety_certification_level TEXT,
    max_sessions_per_day   INTEGER,
    equipment_count        INTEGER,
    specializations        TEXT,
    maintenance_schedule   TEXT,
    accreditation_body     TEXT,
    operating_hours        TEXT,
    annual_budget_usd      DECIMAL(12,2),
    environmental_rating   INTEGER,
    notes                  TEXT
);

INSERT INTO training_facility VALUES (1, 'Arcadia Academy', 'Metropolis', 'NY', 250, '2015-04-12', 'Alan Pierce', '555-0123', 'alan@arcadia.edu', 'Physical', 'Level 3', 8, 150, 'Combat,Stealth', 'Monthly', 'National Sports Authority', '06:00-22:00', 1200000.00, 4, 'State‑of‑the‑art gym');
INSERT INTO training_facility VALUES (2, 'Nimbus Dojo', 'Gotham', 'IL', 180, '2018-09-01', 'Mira Chen', '555-0456', 'mira@nimbusdojo.com', 'Martial Arts', 'Level 2', 6, 95, 'Hand‑to‑hand,Weaponry', 'Quarterly', 'International Martial Association', '07:00-21:00', 800000.00, 3, 'Focus on agility');
INSERT INTO training_facility VALUES (3, 'Helix Lab', 'Star City', 'CA', 320, '2020-02-20', 'Raj Patel', '555-0789', 'raj@helixlab.org', 'Science', 'Level 4', 10, 200, 'Meta‑gene,Energy control', 'Bi‑annual', 'Science Research Council', '08:00-20:00', 1500000.00, 5, 'Advanced research equipment');

-- Merchandise price history tracking
CREATE TABLE merchandise_price_history
(
    price_id               INTEGER PRIMARY KEY,
    item_id                INTEGER,
    effective_date         DATE,
    price_usd              DECIMAL(10,2),
    currency               TEXT,
    discount_percent       REAL,
    wholesale_price_usd    DECIMAL(10,2),
    retailer_name          TEXT,
    region                 TEXT,
    stock_level            INTEGER,
    supplier_id            INTEGER,
    cost_of_goods_usd      DECIMAL(10,2),
    price_change_reason    TEXT,
    promotion_name         TEXT,
    price_tier             TEXT,
    ecommerce_platform     TEXT,
    price_verified_flag    INTEGER,               -- 0 = no, 1 = yes
    last_updated           DATE,
    notes                  TEXT,
    price_source           TEXT
);

INSERT INTO merchandise_price_history VALUES (1, 501, '2023-01-01', 49.99, 'USD', 0.0, 30.00, 'HeroMart', 'NorthAmerica', 1500, 2001, 28.00, 'Initial launch', 'New Year Promo', 'Standard', 'WebStore', 1, '2023-01-01', 'First price entry', 'Internal');
INSERT INTO merchandise_price_history VALUES (2, 502, '2023-03-15', 39.99, 'USD', 10.0, 25.00, 'HeroMart', 'Europe', 1200, 2002, 23.00, 'Spring discount', 'Spring Sale', 'Discount', 'MobileApp', 1, '2023-03-15', 'Applied seasonal discount', 'Internal');
INSERT INTO merchandise_price_history VALUES (3, 503, '2023-06-10', 59.99, 'USD', 5.0, 35.00, 'HeroGear', 'Asia', 800, 2003, 33.00, 'Mid‑year adjustment', 'Midyear Boost', 'Premium', 'Marketplace', 1, '2023-06-10', 'Adjusted for demand', 'Supplier');

-- Digital advertising campaign data
CREATE TABLE digital_ad_campaign
(
    campaign_id            INTEGER PRIMARY KEY,
    name                   TEXT,
    start_date             DATE,
    end_date               DATE,
    platform               TEXT,
    total_impressions      BIGINT,
    total_clicks           BIGINT,
    ctr_percent            REAL,
    cpc_usd                DECIMAL(8,2),
    cpm_usd                DECIMAL(8,2),
    budget_usd             DECIMAL(12,2),
    spent_usd              DECIMAL(12,2),
    target_audience        TEXT,
    geo_target             TEXT,
    creative_type          TEXT,
    ad_format              TEXT,
    landing_page_url       TEXT,
    conversion_rate_percent REAL,
    lead_count             INTEGER,
    remark                 TEXT
);

INSERT INTO digital_ad_campaign VALUES (1, 'HeroLaunch Q1', '2023-01-05', '2023-02-05', 'Social Media', 5000000, 120000, 2.4, 0.75, 5.00, 90000.00, 85000.00, 'Young Adults', 'NorthAmerica', 'Video', 'In‑Feed', 'https://heroic.com/launch', 3.5, 4200, 'Strong early performance');
INSERT INTO digital_ad_campaign VALUES (2, 'Villain Reveal', '2023-04-10', '2023-04-30', 'Streaming', 3000000, 75000, 2.5, 0.80, 4.50, 60000.00, 58000.00, 'Teens', 'Europe', 'Banner', 'Sidebar', 'https://villain.com/reveal', 2.8, 2100, 'Geography limited reach');
INSERT INTO digital_ad_campaign VALUES (3, 'Multiverse Tour', '2023-07-01', '2023-07-31', 'Search Engine', 8000000, 200000, 2.5, 0.70, 4.80, 120000.00, 115000.00, 'All Ages', 'Global', 'Text', 'Search', 'https://multiverse.com/tour', 4.1, 4700, 'High conversion on mobile');

-- World event timeline entries
CREATE TABLE world_event_timeline
(
    event_id               INTEGER PRIMARY KEY,
    event_name             TEXT,
    start_date             DATE,
    end_date               DATE,
    description            TEXT,
    affected_regions       TEXT,
    significance_level    INTEGER,
    associated_characters  TEXT,
    source_document        TEXT,
    timeline_branch        TEXT,
    impact_score           INTEGER,
    related_media          TEXT,
    public_response        TEXT,
    policy_changes         TEXT,
    economic_effect_usd    DECIMAL(12,2),
    environmental_effect   TEXT,
    notes                  TEXT,
    created_by             TEXT,
    created_at             DATE,
    status                 TEXT
);

INSERT INTO world_event_timeline VALUES (1, 'Solar Eclipse Catastrophe', '2023-08-12', '2023-08-12', 'A sudden solar flare caused global power outages', 'Global', 9, 'Solar Flare,Shadow Strike', 'MissionReport2023', 'Primary', 95, 'NewsChannel', 'Panic and solidarity', 'Emergency Power Act', 2500000000.00, 'Minor atmospheric disturbances', 'Preparedness drills increased', 'Admin', '2023-08-13', 'Closed');
INSERT INTO world_event_timeline VALUES (2, 'Atlantis Flood', '2024-02-03', '2024-02-10', 'Rising sea levels submerged coastal cities', 'Coastal', 8, 'Aqua Force,Marine Guard', 'HydroStudy2024', 'Secondary', 88, 'Documentary', 'Calls for climate action', 'Coastal Protection Law', 1800000000.00, 'Severe marine ecosystem damage', 'Funding for sea walls approved', 'ResearchTeam', '2024-02-11', 'Closed');
INSERT INTO world_event_timeline VALUES (3, 'Quantum Rift Incident', '2025-05-20', '2025-06-01', 'Experiment created temporary rift between dimensions', 'Metropolis,Star City', 10, 'Quantum Team,Heroic Council', 'QuantumReport2025', 'Alternate', 99, 'SciFiChannel', 'Mass curiosity and fear', 'Dimensional Safety Protocol', 3200000000.00, 'Unstable energy fields detected', 'Rift sealed with new technology', 'LeadScientist', '2025-06-02', 'Closed');

-- Character costume design specifications
CREATE TABLE character_costume_design
(
    design_id              INTEGER PRIMARY KEY,
    character_id           INTEGER,
    designer_name          TEXT,
    design_name            TEXT,
    material_summary       TEXT,
    primary_color          TEXT,
    secondary_color        TEXT,
    accessories            TEXT,
    creation_date          DATE,
    version_number         INTEGER,
    approval_status        TEXT,
    budget_usd             DECIMAL(10,2),
    sketch_file_path       TEXT,
    cad_file_path          TEXT,
    production_status      TEXT,
    manufacturer           TEXT,
    lead_time_days         INTEGER,
    cost_per_unit_usd      DECIMAL(8,2),
    quantity_planned       INTEGER,
    notes                  TEXT,
    archival_flag          INTEGER               -- 0 = no, 1 = yes
);

INSERT INTO character_costume_design VALUES (1, 101, 'Lara Mills', 'Stealth Suit', 'Kevlar,Carbon Fiber', 'Black', 'Grey', 'Utility Belt,Helmet', '2023-03-10', 2, 'Approved', 150000.00, '/sketches/stealth.png', '/cad/stealth.cad', 'In Production', 'FabricWorks', 45, 250.00, 500, 'Adjusted wrist guards after testing', 1);
INSERT INTO character_costume_design VALUES (2, 102, 'Ethan Vale', 'Solar Armor', 'Titanium Alloy', 'Gold', 'Red', 'Energy Core,Visor', '2023-06-22', 1, 'Pending', 200000.00, '/sketches/solar.png', '/cad/solar.cad', 'Design Phase', 'MetalForge', 60, 300.00, 300, 'Awaiting material certification', 0);
INSERT INTO character_costume_design VALUES (3, 103, 'Mia Torres', 'Aqua Gear', 'Neoprene,Polymer', 'Blue', 'Aqua', 'Flippers,Mask', '2023-09-05', 3, 'Approved', 120000.00, '/sketches/aqua.png', '/cad/aqua.cad', 'Completed', 'OceanicManufacturing', 30, 180.00, 800, 'Final prototype passed dive tests', 1);

-- Villain network activity logs
CREATE TABLE villain_network_activity
(
    activity_id            INTEGER PRIMARY KEY,
    villain_id             INTEGER,
    network_name           TEXT,
    activity_type          TEXT,
    start_timestamp        DATETIME,
    end_timestamp          DATETIME,
    location               TEXT,
    resources_used         TEXT,
    target_entity          TEXT,
    outcome                TEXT,
    detection_method       TEXT,
    severity_level         INTEGER,
    response_action        TEXT,
    analyst_name           TEXT,
    report_generated       DATE,
    mitigation_status      TEXT,
    notes                  TEXT,
    related_incident_id    INTEGER,
    confidentiality_level  INTEGER,
    escalation_required    INTEGER,               -- 0 = no, 1 = yes
    followup_date          DATE
);

INSERT INTO villain_network_activity VALUES (1, 201, 'Shadow Syndicate', 'Data Breach', '2023-04-12 08:30:00', '2023-04-12 10:45:00', 'Gotham Server Farm', 'Malware,Zero‑day', 'Heroic Bank', 'Partial data exfiltrated', 'Intrusion Detection System', 7, 'Containment', 'Olivia Reed', '2023-04-13', 'Ongoing', 'Encrypted communications observed', 301, 2, 1, '2023-04-20');
INSERT INTO villain_network_activity VALUES (2, 202, 'Nightmare Cartel', 'Smuggling', '2023-07-01 14:00:00', '2023-07-01 18:30:00', 'Harbor Dock 9', 'Stealth Vessels,Encrypted Nav', 'Alien Tech', 'All goods seized', 'Port Surveillance', 8, 'Arrest', 'Derek Shaw', '2023-07-02', 'Resolved', 'Multiple vessels coordinated', 302, 1, 0, '2023-07-10');
INSERT INTO villain_network_activity VALUES (3, 203, 'Chaos Collective', 'Propaganda', '2023-10-15 09:00:00', '2023-10-15 12:15:00', 'Virtual Network', 'Botnet,Deepfakes', 'Public Opinion', 'Increased unrest', 'Social Media Monitoring', 6, 'Counter‑campaign', 'Nina Patel', '2023-10-16', 'Mitigated', 'Botnet size reduced', 303, 3, 0, '2023-10-23');

-- Metahuman ability testing records
CREATE TABLE metahuman_ability_test
(
    test_id                INTEGER PRIMARY KEY,
    metahuman_id           INTEGER,
    ability_name           TEXT,
    test_date              DATE,
    evaluator_name         TEXT,
    score                  INTEGER,
    difficulty_level       TEXT,
    duration_minutes       INTEGER,
    equipment_used         TEXT,
    safety_rating          TEXT,
    result_status          TEXT,
    notes                  TEXT,
    followup_required      INTEGER,               -- 0 = no, 1 = yes
    next_test_date         DATE,
    confidence_interval    TEXT,
    percentile_rank        INTEGER,
    training_recommendation TEXT,
    funding_source         TEXT,
    lab_location           TEXT,
    compliance_code        TEXT,
    documentation_link     TEXT
);

INSERT INTO metahuman_ability_test VALUES (1, 301, 'Telekinesis', '2023-02-20', 'Dr. Allen', 87, 'Hard', 45, 'ForceField Chamber', 'A', 'Pass', 'Stable control at medium range', 0, NULL, '95%-99%', 92, 'Advanced control drills', 'Government Grant', 'Arcadia Lab', 'MC-2023-01', '/docs/telekinesis_001.pdf');
INSERT INTO metahuman_ability_test VALUES (2, 302, 'Pyrokinesis', '2023-05-14', 'Dr. Silva', 73, 'Medium', 30, 'Heat Dampening Suit', 'B', 'Conditional Pass', 'Flame intensity requires regulation', 1, '2023-08-01', '80%-85%', 78, 'Thermal regulation training', 'Private Sponsor', 'Nimbus Facility', 'MC-2023-04', '/docs/pyrokinesis_002.pdf');
INSERT INTO metahuman_ability_test VALUES (3, 303, 'Chrono Shift', '2023-09-07', 'Dr. Nguyen', 60, 'Extreme', 60, 'Temporal Stabilizer', 'C', 'Fail', 'Temporal displacement observed', 1, '2024-01-15', '50%-55%', 55, 'Fundamental physics study', 'University Fund', 'Helix Lab', 'MC-2023-09', '/docs/chronoshift_003.pdf');

-- Hero contract financial details
CREATE TABLE hero_contract_financials
(
    contract_id            INTEGER PRIMARY KEY,
    hero_id                INTEGER,
    contract_type          TEXT,
    start_date             DATE,
    end_date               DATE,
    total_value_usd        DECIMAL(12,2),
    payment_schedule       TEXT,
    milestone1_amount_usd  DECIMAL(12,2),
    milestone2_amount_usd  DECIMAL(12,2),
    milestone3_amount_usd  DECIMAL(12,2),
    currency               TEXT,
    governing_law          TEXT,
    jurisdiction           TEXT,
    insurance_amount_usd   DECIMAL(12,2),
    tax_withheld_usd      DECIMAL(12,2),
    net_received_usd       DECIMAL(12,2),
    auditor_name           TEXT,
    audit_date             DATE,
    amendment_flag         INTEGER,               -- 0 = no, 1 = yes
    remarks                TEXT
);

INSERT INTO hero_contract_financials VALUES (1, 101, 'Endorsement', '2023-01-01', '2025-12-31', 5000000.00, 'Quarterly', 1500000.00, 1500000.00, 2000000.00, 'USD', 'Commercial Code', 'NewYork', 1000000.00, 500000.00, 3500000.00, 'AuditCo', '2023-03-15', 0, 'Standard renewal clause');
INSERT INTO hero_contract_financials VALUES (2, 102, 'Stunt Performance', '2023-06-01', '2024-05-31', 2000000.00, 'Monthly', 600000.00, 700000.00, 700000.00, 'USD', 'Labor Act', 'California', 400000.00, 200000.00, 1400000.00, 'ClearCheck', '2023-07-20', 1, 'Amended to include hazard allowance');
INSERT INTO hero_contract_financials VALUES (3, 103, 'Merchandise Licensing', '2022-09-15', '2027-09-14', 8000000.00, 'Annually', 2500000.00, 2500000.00, 3000000.00, 'USD', 'Intellectual Property Law', 'Florida', 1500000.00, 800000.00, 5700000.00, 'FinAudit LLC', '2022-11-05', 0, 'Royalty escalator included');