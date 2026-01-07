-- Table storing detailed medical records for each hero
CREATE TABLE hero_medical_record
(
    record_id                 INTEGER PRIMARY KEY,
    hero_id                   INTEGER,
    visit_date                DATE,
    diagnosis                 TEXT,
    treatment_plan            TEXT,
    doctor_name               TEXT,
    hospital_name             TEXT,
    blood_type                TEXT,
    height_cm                 INTEGER,
    weight_kg                 INTEGER,
    vision_left               TEXT,
    vision_right              TEXT,
    allergies                 TEXT,
    immunizations             TEXT,
    notes                     TEXT,
    follow_up_date            DATE,
    cholesterol_mgdl          INTEGER,
    blood_pressure_systolic   INTEGER,
    blood_pressure_diastolic  INTEGER,
    heart_rate_bpm            INTEGER
);

INSERT INTO hero_medical_record (record_id, hero_id, visit_date, diagnosis, treatment_plan, doctor_name, hospital_name, blood_type, height_cm, weight_kg, vision_left, vision_right, allergies, immunizations, notes, follow_up_date, cholesterol_mgdl, blood_pressure_systolic, blood_pressure_diastolic, heart_rate_bpm)
VALUES (1, 101, '2024-03-01', 'Concussion', 'Rest and observation', 'Dr Smith', 'Metro General', 'O+', 180, 80, '20/20', '20/20', 'None', 'MMR,Tdap', 'Patient stable', '2024-04-01', 190, 120, 80, 72);
INSERT INTO hero_medical_record (record_id, hero_id, visit_date, diagnosis, treatment_plan, doctor_name, hospital_name, blood_type, height_cm, weight_kg, vision_left, vision_right, allergies, immunizations, notes, follow_up_date, cholesterol_mgdl, blood_pressure_systolic, blood_pressure_diastolic, heart_rate_bpm)
VALUES (2, 102, '2024-02-15', 'Fractured arm', 'Cast for 6 weeks', 'Dr Lee', 'City Hospital', 'A-', 175, 78, '20/25', '20/20', 'Penicillin', 'HepB,Varicella', 'Cast applied', '2024-03-15', 180, 115, 75, 68);
INSERT INTO hero_medical_record (record_id, hero_id, visit_date, diagnosis, treatment_plan, doctor_name, hospital_name, blood_type, height_cm, weight_kg, vision_left, vision_right, allergies, immunizations, notes, follow_up_date, cholesterol_mgdl, blood_pressure_systolic, blood_pressure_diastolic, heart_rate_bpm)
VALUES (3, 103, '2024-01-20', 'Radiation exposure', 'Chelation therapy', 'Dr Patel', 'Northside Clinic', 'B+', 190, 85, '20/20', '20/20', 'None', 'MMR,Polio', 'Monitoring ongoing', '2024-02-20', 200, 130, 85, 80);

-- Table tracking financial accounts belonging to heroes
CREATE TABLE hero_financial_account
(
    account_id               INTEGER PRIMARY KEY,
    hero_id                  INTEGER,
    account_number           TEXT,
    bank_name                TEXT,
    account_type             TEXT,
    currency                 TEXT,
    balance                  DECIMAL(15,2),
    opening_date             DATE,
    last_transaction_date    DATE,
    transaction_count        INTEGER,
    credit_limit             DECIMAL(15,2),
    overdraft_protection_flag BOOLEAN,
    interest_rate_percent    DECIMAL(5,2),
    account_status           TEXT,
    branch_code              TEXT,
    swift_code               TEXT,
    iban                     TEXT,
    tax_id                   TEXT,
    reporting_year           INTEGER,
    audit_flag               BOOLEAN
);

INSERT INTO hero_financial_account (account_id, hero_id, account_number, bank_name, account_type, currency, balance, opening_date, last_transaction_date, transaction_count, credit_limit, overdraft_protection_flag, interest_rate_percent, account_status, branch_code, swift_code, iban, tax_id, reporting_year, audit_flag)
VALUES (1, 101, 'ACC1001', 'Global Bank', 'Checking', 'USD', 250000.00, '2020-05-01', '2024-03-10', 1240, 50000.00, true, 0.75, 'Active', 'GB001', 'GBLUS33', 'US00GBL000001001001', 'TAX12345', 2024, false);
INSERT INTO hero_financial_account (account_id, hero_id, account_number, bank_name, account_type, currency, balance, opening_date, last_transaction_date, transaction_count, credit_limit, overdraft_protection_flag, interest_rate_percent, account_status, branch_code, swift_code, iban, tax_id, reporting_year, audit_flag)
VALUES (2, 102, 'ACC2002', 'Metro Credit', 'Savings', 'USD', 150000.00, '2021-01-15', '2024-02-28', 860, 0.00, false, 1.20, 'Active', 'MC002', 'MCTUS44', 'US00MCT000002002002', 'TAX67890', 2024, true);
INSERT INTO hero_financial_account (account_id, hero_id, account_number, bank_name, account_type, currency, balance, opening_date, last_transaction_date, transaction_count, credit_limit, overdraft_protection_flag, interest_rate_percent, account_status, branch_code, swift_code, iban, tax_id, reporting_year, audit_flag)
VALUES (3, 103, 'ACC3003', 'Capital Trust', 'Investment', 'USD', 500000.00, '2019-09-20', '2024-03-05', 3420, 200000.00, true, 0.50, 'Active', 'CT003', 'CTUS55', 'US00CTT000003003003', 'TAX54321', 2024, false);

-- Table cataloguing equipment assigned to heroes
CREATE TABLE hero_equipment_inventory
(
    equipment_id                INTEGER PRIMARY KEY,
    hero_id                     INTEGER,
    equipment_name              TEXT,
    serial_number               TEXT,
    acquisition_date            DATE,
    condition_status            TEXT,
    durability_rating           INTEGER,
    weight_kg                   DECIMAL(6,2),
    dimensions_cm               TEXT,
    manufacturer                TEXT,
    warranty_expiration         DATE,
    assigned_mission            TEXT,
    usage_count                 INTEGER,
    last_maintenance_date       DATE,
    maintenance_interval_days  INTEGER,
    power_source                TEXT,
    ammo_capacity               INTEGER,
    special_features            TEXT,
    location_storage            TEXT,
    is_active_flag              BOOLEAN
);

INSERT INTO hero_equipment_inventory (equipment_id, hero_id, equipment_name, serial_number, acquisition_date, condition_status, durability_rating, weight_kg, dimensions_cm, manufacturer, warranty_expiration, assigned_mission, usage_count, last_maintenance_date, maintenance_interval_days, power_source, ammo_capacity, special_features, location_storage, is_active_flag)
VALUES (1, 101, 'Photon Blaster', 'PBX-001', '2022-06-10', 'Excellent', 95, 12.5, '30x15x10', 'Stark Industries', '2025-06-10', 'Operation Skyfall', 45, '2024-02-20', 180, 'Energy Cell', 0, 'Heat Signature Dampening', 'Hero Base', true);
INSERT INTO hero_equipment_inventory (equipment_id, hero_id, equipment_name, serial_number, acquisition_date, condition_status, durability_rating, weight_kg, dimensions_cm, manufacturer, warranty_expiration, assigned_mission, usage_count, last_maintenance_date, maintenance_interval_days, power_source, ammo_capacity, special_features, location_storage, is_active_flag)
VALUES (2, 102, 'Vibranium Shield', 'VSH-047', '2021-03-22', 'Good', 88, 8.0, '40x40x5', 'Wakanda Tech', '2024-03-22', 'Defensive Line', 120, '2024-01-15', 365, 'None', 0, 'Energy Absorption', 'Armory', true);
INSERT INTO hero_equipment_inventory (equipment_id, hero_id, equipment_name, serial_number, acquisition_date, condition_status, durability_rating, weight_kg, dimensions_cm, manufacturer, warranty_expiration, assigned_mission, usage_count, last_maintenance_date, maintenance_interval_days, power_source, ammo_capacity, special_features, location_storage, is_active_flag)
VALUES (3, 103, 'Stealth Suit', 'SS-789', '2023-01-05', 'Excellent', 92, 5.3, '50x30x2', 'Wayne Enterprises', '2026-01-05', 'Covert Ops', 30, '2024-02-28', 90, 'Battery', 0, 'Adaptive Camouflage', 'Hidden Vault', true);

-- Table describing training programs completed by heroes
CREATE TABLE hero_training_program
(
    program_id                INTEGER PRIMARY KEY,
    hero_id                   INTEGER,
    program_name              TEXT,
    start_date                DATE,
    end_date                  DATE,
    trainer_name              TEXT,
    training_type             TEXT,
    difficulty_level          TEXT,
    hours_completed           INTEGER,
    total_hours               INTEGER,
    certification_awarded     TEXT,
    performance_score         DECIMAL(4,2),
    physical_fitness_score    DECIMAL(4,2),
    mental_resilience_score   DECIMAL(4,2),
    combat_skill_score        DECIMAL(4,2),
    tech_skill_score          DECIMAL(4,2),
    notes                     TEXT,
    graduation_date           DATE,
    program_status            TEXT,
    funding_source            TEXT
);

INSERT INTO hero_training_program (program_id, hero_id, program_name, start_date, end_date, trainer_name, training_type, difficulty_level, hours_completed, total_hours, certification_awarded, performance_score, physical_fitness_score, mental_resilience_score, combat_skill_score, tech_skill_score, notes, graduation_date, program_status, funding_source)
VALUES (1, 101, 'Advanced Aerial Maneuvers', '2023-05-01', '2023-08-15', 'Captain Aero', 'Physical', 'Hard', 180, 200, 'Aerial Mastery', 92.5, 95.0, 88.0, 94.0, 80.0, 'Excellent progress', '2023-08-20', 'Completed', 'Government Grant');
INSERT INTO hero_training_program (program_id, hero_id, program_name, start_date, end_date, trainer_name, training_type, difficulty_level, hours_completed, total_hours, certification_awarded, performance_score, physical_fitness_score, mental_resilience_score, combat_skill_score, tech_skill_score, notes, graduation_date, program_status, funding_source)
VALUES (2, 102, 'Strategic Leadership', '2022-09-10', '2023-02-28', 'General Tactics', 'Leadership', 'Medium', 150, 160, 'Leadership Certificate', 88.0, 85.0, 90.5, 80.0, 75.0, 'Strong strategic mind', '2023-03-05', 'Completed', 'Corporate Sponsorship');
INSERT INTO hero_training_program (program_id, hero_id, program_name, start_date, end_date, trainer_name, training_type, difficulty_level, hours_completed, total_hours, certification_awarded, performance_score, physical_fitness_score, mental_resilience_score, combat_skill_score, tech_skill_score, notes, graduation_date, program_status, funding_source)
VALUES (3, 103, 'Quantum Tech Integration', '2024-01-15', '2024-04-30', 'Dr Quantum', 'Technical', 'Hard', 120, 130, 'Quantum Specialist', 90.2, 78.0, 92.0, 70.0, 95.0, 'High aptitude for quantum devices', '2024-05-05', 'Ongoing', 'Research Grant');

-- Table logging publicity events featuring heroes
CREATE TABLE hero_publicity_event
(
    event_id           INTEGER PRIMARY KEY,
    hero_id            INTEGER,
    event_name         TEXT,
    event_date         DATE,
    venue_name         TEXT,
    city               TEXT,
    country            TEXT,
    media_outlet       TEXT,
    audience_size      INTEGER,
    live_stream_flag   BOOLEAN,
    tickets_sold       INTEGER,
    revenue_usd        DECIMAL(12,2),
    sponsor_name       TEXT,
    press_release_url  TEXT,
    photo_gallery_url  TEXT,
    video_url          TEXT,
    event_theme        TEXT,
    organizer_name     TEXT,
    cost_usd           DECIMAL(12,2),
    net_profit_usd     DECIMAL(12,2)
);

INSERT INTO hero_publicity_event (event_id, hero_id, event_name, event_date, venue_name, city, country, media_outlet, audience_size, live_stream_flag, tickets_sold, revenue_usd, sponsor_name, press_release_url, photo_gallery_url, video_url, event_theme, organizer_name, cost_usd, net_profit_usd)
VALUES (1, 101, 'City Shield Parade', '2024-03-20', 'Central Plaza', 'Metropolis', 'USA', 'Daily News', 50000, true, 20000, 1500000.00, 'TechCorp', 'http://example.com/pr1', 'http://example.com/gallery1', 'http://example.com/video1', 'Unity', 'City Council', 300000.00, 1200000.00);
INSERT INTO hero_publicity_event (event_id, hero_id, event_name, event_date, venue_name, city, country, media_outlet, audience_size, live_stream_flag, tickets_sold, revenue_usd, sponsor_name, press_release_url, photo_gallery_url, video_url, event_theme, organizer_name, cost_usd, net_profit_usd)
VALUES (2, 102, 'Shield Expo', '2024-02-10', 'Convention Center', 'Gotham', 'USA', 'Metro Times', 25000, false, 15000, 800000.00, 'ShieldCo', 'http://example.com/pr2', 'http://example.com/gallery2', 'http://example.com/video2', 'Defense', 'Expo Org', 200000.00, 600000.00);
INSERT INTO hero_publicity_event (event_id, hero_id, event_name, event_date, venue_name, city, country, media_outlet, audience_size, live_stream_flag, tickets_sold, revenue_usd, sponsor_name, press_release_url, photo_gallery_url, video_url, event_theme, organizer_name, cost_usd, net_profit_usd)
VALUES (3, 103, 'Tech Hero Summit', '2023-11-05', 'Tech Hall', 'Star City', 'USA', 'Tech Daily', 12000, true, 8000, 450000.00, 'Future Labs', 'http://example.com/pr3', 'http://example.com/gallery3', 'http://example.com/video3', 'Innovation', 'Summit Group', 120000.00, 330000.00);

-- Table tracking legal cases involving heroes
CREATE TABLE hero_legal_case
(
    case_id                INTEGER PRIMARY KEY,
    hero_id                INTEGER,
    case_number            TEXT,
    filing_date            DATE,
    case_type              TEXT,
    jurisdiction           TEXT,
    plaintiff_name         TEXT,
    defendant_name         TEXT,
    judge_name             TEXT,
    status                 TEXT,
    outcome                TEXT,
    settlement_amount_usd  DECIMAL(12,2),
    legal_fees_usd         DECIMAL(12,2),
    case_summary           TEXT,
    hearing_dates          TEXT,
    verdict_date           DATE,
    appeal_status          TEXT,
    attorney_name          TEXT,
    law_firm               TEXT,
    confidentiality_flag   BOOLEAN
);

INSERT INTO hero_legal_case (case_id, hero_id, case_number, filing_date, case_type, jurisdiction, plaintiff_name, defendant_name, judge_name, status, outcome, settlement_amount_usd, legal_fees_usd, case_summary, hearing_dates, verdict_date, appeal_status, attorney_name, law_firm, confidentiality_flag)
VALUES (1, 101, 'HC-2024-001', '2024-01-15', 'Civil', 'New York', 'City of Metropolis', 'Hero', 'Judge Mason', 'Closed', 'Settled', 250000.00, 50000.00, 'Property damage claim', '2024-02-10,2024-03-05', '2024-04-01', 'None', 'Laura Greene', 'Justice Law', false);
INSERT INTO hero_legal_case (case_id, hero_id, case_number, filing_date, case_type, jurisdiction, plaintiff_name, defendant_name, judge_name, status, outcome, settlement_amount_usd, legal_fees_usd, case_summary, hearing_dates, verdict_date, appeal_status, attorney_name, law_firm, confidentiality_flag)
VALUES (2, 102, 'HC-2023-045', '2023-06-20', 'Criminal', 'Gotham', 'State', 'Hero', 'Judge Reed', 'Open', NULL, NULL, NULL, 'Alleged trespassing', '2023-07-15,2023-09-01', NULL, 'Pending', 'Mark Silva', 'Metro Legal', true);
INSERT INTO hero_legal_case (case_id, hero_id, case_number, filing_date, case_type, jurisdiction, plaintiff_name, defendant_name, judge_name, status, outcome, settlement_amount_usd, legal_fees_usd, case_summary, hearing_dates, verdict_date, appeal_status, attorney_name, law_firm, confidentiality_flag)
VALUES (3, 103, 'HC-2022-112', '2022-11-05', 'Civil', 'Star City', 'Tech Corp', 'Hero', 'Judge Liu', 'Closed', 'Dismissed', 0.00, 30000.00, 'Patent infringement allegations', '2022-12-10,2023-01-20', '2023-02-15', 'None', 'Samantha Ray', 'Innovation Law', false);

-- Table recording fan engagement interactions with heroes
CREATE TABLE hero_fan_engagement
(
    engagement_id         INTEGER PRIMARY KEY,
    hero_id               INTEGER,
    fan_id                INTEGER,
    engagement_type       TEXT,
    engagement_date       DATE,
    platform              TEXT,
    content_title         TEXT,
    likes_count           INTEGER,
    comments_count        INTEGER,
    shares_count          INTEGER,
    sentiment_score       DECIMAL(3,2),
    response_flag         BOOLEAN,
    response_text         TEXT,
    duration_seconds      INTEGER,
    geographic_region     TEXT,
    device_type           TEXT,
    campaign_id           INTEGER,
    referral_source       TEXT,
    conversion_flag       BOOLEAN,
    revenue_generated_usd DECIMAL(12,2)
);

INSERT INTO hero_fan_engagement (engagement_id, hero_id, fan_id, engagement_type, engagement_date, platform, content_title, likes_count, comments_count, shares_count, sentiment_score, response_flag, response_text, duration_seconds, geographic_region, device_type, campaign_id, referral_source, conversion_flag, revenue_generated_usd)
VALUES (1, 101, 5001, 'Post', '2024-03-02', 'Twitter', 'Hero Saves City', 1200, 45, 300, 0.92, true, 'Thanks for your support', 0, 'North America', 'Mobile', 101, 'Organic', true, 1500.00);
INSERT INTO hero_fan_engagement (engagement_id, hero_id, fan_id, engagement_type, engagement_date, platform, content_title, likes_count, comments_count, shares_count, sentiment_score, response_flag, response_text, duration_seconds, geographic_region, device_type, campaign_id, referral_source, conversion_flag, revenue_generated_usd)
VALUES (2, 102, 5002, 'Video', '2024-02-18', 'YouTube', 'Training Montage', 2500, 120, 600, 0.88, false, NULL, 180, 'Europe', 'Desktop', 102, 'Paid Ads', false, 0.00);
INSERT INTO hero_fan_engagement (engagement_id, hero_id, fan_id, engagement_type, engagement_date, platform, content_title, likes_count, comments_count, shares_count, sentiment_score, response_flag, response_text, duration_seconds, geographic_region, device_type, campaign_id, referral_source, conversion_flag, revenue_generated_usd)
VALUES (3, 103, 5003, 'LiveStream', '2024-01-25', 'Twitch', 'Q&A Session', 800, 60, 200, 0.95, true, 'Great questions!', 3600, 'Asia', 'Mobile', 103, 'Referral', true, 3000.00);

-- Table detailing licensing agreements for hero-related products
CREATE TABLE hero_licensing_agreement
(
    license_id               INTEGER PRIMARY KEY,
    hero_id                  INTEGER,
    product_name             TEXT,
    license_type             TEXT,
    region                   TEXT,
    start_date               DATE,
    end_date                 DATE,
    royalty_percent          DECIMAL(5,2),
    advance_payment_usd      DECIMAL(12,2),
    total_royalty_usd        DECIMAL(12,2),
    sublicensing_allowed_flag BOOLEAN,
    exclusive_flag           BOOLEAN,
    contract_status          TEXT,
    legal_contact            TEXT,
    notes                    TEXT,
    renewal_option           TEXT,
    termination_notice_days  INTEGER,
    amendment_count          INTEGER,
    compliance_audit_date    DATE,
    audit_result             TEXT
);

INSERT INTO hero_licensing_agreement (license_id, hero_id, product_name, license_type, region, start_date, end_date, royalty_percent, advance_payment_usd, total_royalty_usd, sublicensing_allowed_flag, exclusive_flag, contract_status, legal_contact, notes, renewal_option, termination_notice_days, amendment_count, compliance_audit_date, audit_result)
VALUES (1, 101, 'Action Figure', 'Merchandise', 'North America', '2023-01-01', '2025-12-31', 8.50, 50000.00, 200000.00, true, false, 'Active', 'Anna Blake', 'First run successful', 'Automatic', 60, 2, '2024-02-15', 'Pass');
INSERT INTO hero_licensing_agreement (license_id, hero_id, product_name, license_type, region, start_date, end_date, royalty_percent, advance_payment_usd, total_royalty_usd, sublicensing_allowed_flag, exclusive_flag, contract_status, legal_contact, notes, renewal_option, termination_notice_days, amendment_count, compliance_audit_date, audit_result)
VALUES (2, 102, 'Video Game', 'Digital', 'Europe', '2022-06-01', '2024-05-31', 12.00, 120000.00, 450000.00, false, true, 'Expired', 'Brian Cole', 'Renewal pending', 'Manual', 90, 1, '2023-11-20', 'Fail');
INSERT INTO hero_licensing_agreement (license_id, hero_id, product_name, license_type, region, start_date, end_date, royalty_percent, advance_payment_usd, total_royalty_usd, sublicensing_allowed_flag, exclusive_flag, contract_status, legal_contact, notes, renewal_option, termination_notice_days, amendment_count, compliance_audit_date, audit_result)
VALUES (3, 103, 'Animated Series', 'Broadcast', 'Asia', '2024-01-15', '2026-12-31', 10.00, 80000.00, 300000.00, true, false, 'Active', 'Catherine Wu', 'Season 2 greenlit', 'Automatic', 30, 0, '2024-03-01', 'Pass');

-- Table logging crossover appearances of heroes in other universes
CREATE TABLE hero_crossover_appearance
(
    crossover_id            INTEGER PRIMARY KEY,
    hero_id                 INTEGER,
    other_universe           TEXT,
    appearance_title         TEXT,
    issue_number            TEXT,
    release_date            DATE,
    role_type               TEXT,
    screen_time_minutes     INTEGER,
    writer_name             TEXT,
    artist_name             TEXT,
    editorial_notes         TEXT,
    continuity_flag         BOOLEAN,
    fan_reaction_score      DECIMAL(4,2),
    merchandise_link        TEXT,
    streaming_platform      TEXT,
    rating                  DECIMAL(3,1),
    awards_won              INTEGER,
    social_media_mentions   INTEGER,
    comments                TEXT,
    public_statement_flag   BOOLEAN
);

INSERT INTO hero_crossover_appearance (crossover_id, hero_id, other_universe, appearance_title, issue_number, release_date, role_type, screen_time_minutes, writer_name, artist_name, editorial_notes, continuity_flag, fan_reaction_score, merchandise_link, streaming_platform, rating, awards_won, social_media_mentions, comments, public_statement_flag)
VALUES (1, 101, 'Multiverse Alpha', 'Heroes United', 'MU-001', '2024-04-10', 'Lead', 45, 'John Doe', 'Jane Smith', 'First joint appearance', true, 9.2, 'http://example.com/merch1', 'StreamX', 4.8, 2, 15000, 'Highly praised', true);
INSERT INTO hero_crossover_appearance (crossover_id, hero_id, other_universe, appearance_title, issue_number, release_date, role_type, screen_time_minutes, writer_name, artist_name, editorial_notes, continuity_flag, fan_reaction_score, merchandise_link, streaming_platform, rating, awards_won, social_media_mentions, comments, public_statement_flag)
VALUES (2, 102, 'Universe Beta', 'Shadows Clash', 'UB-050', '2023-11-22', 'Supporting', 30, 'Alice Green', 'Bob Brown', 'Cameo cameo', false, 8.5, 'http://example.com/merch2', 'StreamY', 4.5, 1, 8000, 'Positive response', false);
INSERT INTO hero_crossover_appearance (crossover_id, hero_id, other_universe, appearance_title, issue_number, release_date, role_type, screen_time_minutes, writer_name, artist_name, editorial_notes, continuity_flag, fan_reaction_score, merchandise_link, streaming_platform, rating, awards_won, social_media_mentions, comments, public_statement_flag)
VALUES (3, 103, 'Galactic Nexus', 'Cosmic Encounter', 'GN-099', '2022-07-15', 'Guest', 20, 'Carlos Vega', 'Diana Lin', 'Special event', true, 9.0, 'http://example.com/merch3', 'StreamZ', 4.7, 3, 12000, 'Well received', true);

-- Table managing legacy rights and estate details for heroes
CREATE TABLE hero_legacy_rights
(
    legacy_id               INTEGER PRIMARY KEY,
    hero_id                 INTEGER,
    estate_name             TEXT,
    executor_name           TEXT,
    effective_date          DATE,
    expiration_date         DATE,
    rights_transferred      TEXT,
    royalty_share_percent   DECIMAL(5,2),
    beneficiaries           TEXT,
    trust_fund_amount_usd   DECIMAL(12,2),
    legal_status            TEXT,
    audit_date              DATE,
    notes                   TEXT,
    last_update             DATE,
    public_statement_flag   BOOLEAN,
    media_rights_flag       BOOLEAN,
    merchandising_rights_flag BOOLEAN,
    digital_rights_flag     BOOLEAN,
    charitable_donations_percent DECIMAL(5,2),
    tax_id                  TEXT
);

INSERT INTO hero_legacy_rights (legacy_id, hero_id, estate_name, executor_name, effective_date, expiration_date, rights_transferred, royalty_share_percent, beneficiaries, trust_fund_amount_usd, legal_status, audit_date, notes, last_update, public_statement_flag, media_rights_flag, merchandising_rights_flag, digital_rights_flag, charitable_donations_percent, tax_id)
VALUES (1, 101, 'Skyguard Estate', 'Laura Knight', '2025-01-01', '2045-12-31', 'All media', 15.00, 'Family Trust', 5000000.00, 'Pending', '2024-03-01', 'Estate being set up', '2024-03-01', true, true, true, true, 5.00, 'TX123456');
INSERT INTO hero_legacy_rights (legacy_id, hero_id, estate_name, executor_name, effective_date, expiration_date, rights_transferred, royalty_share_percent, beneficiaries, trust_fund_amount_usd, legal_status, audit_date, notes, last_update, public_statement_flag, media_rights_flag, merchandising_rights_flag, digital_rights_flag, charitable_donations_percent, tax_id)
VALUES (2, 102, 'Darkshield Foundation', 'Mark Riley', '2023-06-15', '2033-06-14', 'Merchandise only', 10.00, 'Charity Org', 2000000.00, 'Approved', '2024-02-20', 'Charitable focus', '2024-02-20', false, false, true, false, 12.00, 'TX654321');
INSERT INTO hero_legacy_rights (legacy_id, hero_id, estate_name, executor_name, effective_date, expiration_date, rights_transferred, royalty_share_percent, beneficiaries, trust_fund_amount_usd, legal_status, audit_date, notes, last_update, public_statement_flag, media_rights_flag, merchandising_rights_flag, digital_rights_flag, charitable_donations_percent, tax_id)
VALUES (3, 103, 'Quantum Legacy', 'Sophie Lee', '2024-04-01', '2050-03-31', 'Digital rights', 8.00, 'Heirs', 3000000.00, 'Pending', '2024-04-05', 'Digital focus', '2024-04-05', true, false, false, true, 7.50, 'TX987654');