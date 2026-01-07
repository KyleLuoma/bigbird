-- Table: hero_fitness_profile
CREATE TABLE hero_fitness_profile
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    hero_id                INTEGER,
    assessment_date        TEXT,
    height_cm              INTEGER,
    weight_kg              INTEGER,
    body_fat_percent       REAL,
    muscle_mass_kg         REAL,
    cardio_v02max          INTEGER,
    strength_score         INTEGER,
    flexibility_score      INTEGER,
    endurance_score        INTEGER,
    max_lift_kg            INTEGER,
    bench_press_kg         INTEGER,
    squat_kg               INTEGER,
    deadlift_kg            INTEGER,
    resting_heart_rate     INTEGER,
    max_heart_rate         INTEGER,
    vo2max_liters_per_min  REAL,
    training_hours_per_week INTEGER,
    nutrition_plan_id      INTEGER,
    supplement_regimen     TEXT,
    coach_id               INTEGER
);

INSERT INTO hero_fitness_profile VALUES (1, 101, 2023-01-15, 188, 95, 12.5, 45.2, 55, 88, 76, 80, 120, 80, 130, 150, 60, 190, 3.8, 10, 5, "protein+multivitamin", 12);
INSERT INTO hero_fitness_profile VALUES (2, 102, 2023-02-20, 175, 78, 14.2, 38.0, 48, 79, 70, 75, 110, 70, 120, 140, 58, 185, 3.5, 9, 6, "keto+creatine", 15);
INSERT INTO hero_fitness_profile VALUES (3, 103, 2023-03-05, 182, 85, 13.0, 42.5, 52, 85, 73, 78, 115, 75, 125, 145, 59, 188, 3.7, 11, 7, "balanced+beta", 14);

-- Table: villain_network_activity
CREATE TABLE villain_network_activity
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    villain_id               INTEGER,
    activity_date            TEXT,
    location                 TEXT,
    operation_type           TEXT,
    target_hero_id           INTEGER,
    resources_allocated      INTEGER,
    number_of_operatives     INTEGER,
    success_flag             INTEGER,
    intel_score              INTEGER,
    cyber_attack_flag        INTEGER,
    sabotage_flag            INTEGER,
    ransom_amount            INTEGER,
    public_statement         TEXT,
    detection_level          INTEGER,
    response_team_id         INTEGER,
    concealment_method       TEXT,
    coordination_center_id   INTEGER,
    notes                    TEXT,
    external_allies          INTEGER,
    funding_source           TEXT,
    escalation_level         INTEGER
);

INSERT INTO villain_network_activity VALUES (1, 201, 2023-04-10, "Gotham", "Heist", 101, 500000, 25, 0, 78, 1, 0, 2000000, "None", 3, 301, "underground", 401, "Awaiting backup", 2, "BlackHat", 4);
INSERT INTO villain_network_activity VALUES (2, 202, 2023-05-12, "Metropolis", "Assassination", 102, 750000, 30, 1, 85, 0, 1, 1500000, "Mission completed", 2, 302, "disguise", 402, "No casualties", 3, "CryptoFunds", 5);
INSERT INTO villain_network_activity VALUES (3, 203, 2023-06-20, "Star City", "Cyber Attack", 103, 300000, 15, 1, 65, 1, 1, 500000, "Systems down", 4, 303, "VPN", 403, "Mitigated by heroes", 1, "DarkWeb", 3);

-- Table: publisher_media_outlet
CREATE TABLE publisher_media_outlet
(
    id                         INTEGER NOT NULL PRIMARY KEY,
    publisher_id               INTEGER,
    outlet_name                TEXT,
    outlet_type                TEXT,
    launch_date                TEXT,
    website_url                TEXT,
    circulation                INTEGER,
    region                     TEXT,
    language                   TEXT,
    editor_in_chief            TEXT,
    contact_email              TEXT,
    phone_number               TEXT,
    address_line1              TEXT,
    address_line2              TEXT,
    city                       TEXT,
    state                      TEXT,
    zip_code                   TEXT,
    audience_age_range         TEXT,
    monthly_visits             INTEGER,
    advertising_rate_cpm       REAL,
    digital_presence_score     INTEGER,
    social_media_followers     INTEGER,
    revenue_million            REAL,
    content_focus              TEXT
);

INSERT INTO publisher_media_outlet VALUES (1, 1, "HeroChronicle Daily", "Newspaper", 2005-09-01, "www.herochronicle.com", 250000, "NorthAmerica", "English", "Linda Green", "info@herochronicle.com", "5551234567", "123 Hero St", "", "Metropolis", "NY", "10001", "18-45", 1500000, 12.5, 85, 200000, 15.2, "Superhero News");
INSERT INTO publisher_media_outlet VALUES (2, 2, "VillainVoice Online", "Website", 2010-03-15, "www.villainvoice.net", 0, "Europe", "English", "Mark Black", "contact@villainvoice.net", "5559876543", "45 Dark Ave", "Suite 2", "Gotham", "CA", "90001", "25-60", 800000, 9.8, 70, 120000, 8.4, "Crime Reports");
INSERT INTO publisher_media_outlet VALUES (3, 3, "Universe Illustrated", "Magazine", 2018-07-20, "www.universeillustrated.com", 75000, "Asia", "Japanese", "Aiko Tanaka", "editor@universeillustrated.com", "5555551212", "78 Manga Rd", "", "Tokyo", "", "100-0001", "12-35", 300000, 15.0, 90, 50000, 5.7, "Comics and Art");

-- Table: superhero_merchandise_sales
CREATE TABLE superhero_merchandise_sales
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    hero_id                INTEGER,
    merchandise_type       TEXT,
    sku                    TEXT,
    release_date           TEXT,
    units_sold             INTEGER,
    revenue_usd            REAL,
    region                 TEXT,
    retailer               TEXT,
    distributor_id         INTEGER,
    online_sales           INTEGER,
    wholesale_price_usd    REAL,
    retail_price_usd       REAL,
    discount_percent       REAL,
    stock_level            INTEGER,
    restock_date           TEXT,
    marketing_campaign_id  INTEGER,
    season                 TEXT,
    product_line           TEXT,
    rating_average         REAL,
    review_count           INTEGER,
    return_rate_percent    REAL,
    warranty_years         INTEGER
);

INSERT INTO superhero_merchandise_sales VALUES (1, 101, "ActionFigure", "AF101A", 2023-01-10, 5000, 250000.00, "NorthAmerica", "ToyStoreX", 501, 1, 30.00, 60.00, 5.0, 200, 2023-06-01, 601, "Winter", "Collectibles", 4.5, 1200, 2.0, 2);
INSERT INTO superhero_merchandise_sales VALUES (2, 102, "TShirt", "TS102B", 2023-02-15, 12000, 180000.00, "Europe", "ApparelHub", 502, 1, 8.00, 15.00, 10.0, 500, 2023-07-15, 602, "Spring", "Apparel", 4.2, 850, 1.5, 1);
INSERT INTO superhero_merchandise_sales VALUES (3, 103, "Poster", "PR103C", 2023-03-05, 8000, 96000.00, "Asia", "PrintWorld", 503, 1, 5.00, 12.00, 0.0, 300, 2023-08-20, 603, "Summer", "Prints", 4.0, 600, 0.8, 1);

-- Table: comic_story_translation
CREATE TABLE comic_story_translation
(
    id                         INTEGER NOT NULL PRIMARY KEY,
    comic_issue_id             INTEGER,
    language_code              TEXT,
    translator_name            TEXT,
    translation_start_date     TEXT,
    translation_end_date       TEXT,
    word_count                 INTEGER,
    pages_translated           INTEGER,
    quality_score              INTEGER,
    proofreading_complete_flag INTEGER,
    editor_name                TEXT,
    notes                      TEXT,
    publication_date           TEXT,
    isbn                       TEXT,
    publisher_id               INTEGER,
    digital_version_flag       INTEGER,
    audio_narration_flag       INTEGER,
    subtitle_available_flag    INTEGER,
    cost_usd                   REAL,
    revenue_share_percent      REAL,
    distribution_region        TEXT,
    source_language_code       TEXT,
    version_number             INTEGER
);

INSERT INTO comic_story_translation VALUES (1, 1001, "FR", "Jean Dupont", 2023-01-05, 2023-02-10, 25000, 30, 92, 1, "Marie Leclerc", "Standard translation", 2023-03-01, "9781234567890", 1, 1, 0, 1, 5000.00, 12.5, "Europe", "EN", 1);
INSERT INTO comic_story_translation VALUES (2, 1002, "ES", "Carlos Ramirez", 2023-04-01, 2023-05-15, 27000, 32, 88, 1, "Luis Gomez", "Adjusted cultural references", 2023-06-01, "9780987654321", 2, 1, 0, 0, 5200.00, 13.0, "LatinAmerica", "EN", 1);
INSERT INTO comic_story_translation VALUES (3, 1003, "DE", "Anna Schmidt", 2023-07-20, 2023-09-05, 26000, 31, 90, 1, "Hans Meyer", "Checked for technical terms", 2023-10-01, "9781122334455", 3, 1, 1, 1, 5300.00, 12.8, "Europe", "EN", 1);

-- Table: multiverse_event_metrics
CREATE TABLE multiverse_event_metrics
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    event_id                 INTEGER,
    event_name               TEXT,
    start_timestamp          TEXT,
    end_timestamp            TEXT,
    involved_universes       INTEGER,
    total_power_used         REAL,
    casualties               INTEGER,
    heroes_involved          INTEGER,
    villains_involved        INTEGER,
    dimension_shift_count    INTEGER,
    temporal_anomaly_flag    INTEGER,
    cosmic_energy_consumed   REAL,
    resolution_method        TEXT,
    success_indicator        INTEGER,
    aftereffects_score       INTEGER,
    media_coverage_score     INTEGER,
    public_opinion_index     INTEGER,
    official_report_url      TEXT,
    budget_usd               REAL,
    security_level           INTEGER,
    oversight_body           TEXT,
    followup_actions         TEXT
);

INSERT INTO multiverse_event_metrics VALUES (1, 901, "Crisis of Infinite Earths", 2023-01-01T00:00:00, 2023-01-05T23:59:59, 52, 1200.5, 3000, 150, 120, 45, 1, 9800.0, "Sacrifice", 1, 85, 90, 75, "http://reports.universe.org/crisis2023", 5000000.00, 5, "Interdimensional Council", "Rebuild damaged universes");
INSERT INTO multiverse_event_metrics VALUES (2, 902, "Multiversal War", 2023-06-10T08:30:00, 2023-06-20T22:15:00, 38, 950.0, 1800, 110, 95, 30, 0, 7200.0, "Negotiate", 1, 78, 70, 68, "http://reports.universe.org/war2023", 3500000.00, 4, "Galactic Senate", "Treaty enforcement");
INSERT INTO multiverse_event_metrics VALUES (3, 903, "Temporal Collapse", 2023-09-15T14:00:00, 2023-09-18T09:45:00, 12, 300.0, 500, 40, 20, 10, 1, 2100.0, "Time Reversal", 0, 60, 55, 50, "http://reports.universe.org/temporal2023", 1200000.00, 3, "Chronology Commission", "Stabilize timelines");

-- Table: hero_legal_document_archive
CREATE TABLE hero_legal_document_archive
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    hero_id                INTEGER,
    document_type          TEXT,
    document_number        TEXT,
    filing_date            TEXT,
    jurisdiction           TEXT,
    case_status            TEXT,
    opposing_party         TEXT,
    attorney_name          TEXT,
    summary                TEXT,
    outcome                TEXT,
    settlement_amount_usd  REAL,
    court_name             TEXT,
    docket_number          TEXT,
    confidentiality_flag   INTEGER,
    related_case_id        INTEGER,
    file_path              TEXT,
    version                INTEGER,
    last_modified_date     TEXT,
    approval_status        TEXT,
    notes                  TEXT,
    archived_by            TEXT,
    archive_location       TEXT
);

INSERT INTO hero_legal_document_archive VALUES (1, 101, "Contract", "CT-2023-001", 2023-01-20, "Gotham", "Active", "LexCorp", "Harvey Dent", "Employment agreement for hero services", "Pending", 0.00, "Gotham Court", "D-1001", 0, NULL, "/archive/hero101/contract1.pdf", 1, 2023-01-20, "Approved", "Initial contract", "John Clerk", "ArchiveRoomA");
INSERT INTO hero_legal_document_archive VALUES (2, 102, "Lawsuit", "LS-2023-045", 2023-04-15, "Metropolis", "Closed", "Daily Planet", "Lois Lane", "Defamation case", "Dismissed", 0.00, "Metropolis Court", "D-2045", 1, NULL, "/archive/hero102/lawsuit45.pdf", 2, 2023-04-20, "Closed", "Case dismissed", "Sarah Legal", "ArchiveRoomB");
INSERT INTO hero_legal_document_archive VALUES (3, 103, "Settlement", "ST-2023-078", 2023-07-05, "Star City", "Closed", "League of Assassins", "Oliver Queen", "Property damage settlement", "Settled", 250000.00, "Star City Court", "D-3078", 0, NULL, "/archive/hero103/settlement78.pdf", 1, 2023-07-06, "Approved", "Paid in full", "Mike Recorder", "ArchiveRoomC");

-- Table: superpower_effectiveness
CREATE TABLE superpower_effectiveness
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    power_id               INTEGER,
    hero_id                INTEGER,
    scenario               TEXT,
    effectiveness_score    INTEGER,
    duration_seconds       INTEGER,
    energy_cost            REAL,
    cooldown_seconds       INTEGER,
    side_effects           TEXT,
    success_rate_percent   REAL,
    countered_by           TEXT,
    amplified_by           TEXT,
    usage_frequency        INTEGER,
    last_used_timestamp    TEXT,
    training_level_required INTEGER,
    rank                   TEXT,
    notes                  TEXT,
    test_environment       TEXT,
    observed_by            TEXT,
    rating                 REAL,
    approval_status        TEXT,
    revision_number        INTEGER
);

INSERT INTO superpower_effectiveness VALUES (1, 301, 101, "Urban Rescue", 88, 120, 45.5, 300, "None", 95.0, "Ice Blast", "Solar Flare", 25, 2023-03-01T10:15:00, 3, "A", "Effective in crowded areas", "Simulation Lab", "Dr. Allen", 4.7, "Approved", 2);
INSERT INTO superpower_effectiveness VALUES (2, 302, 102, "Space Combat", 75, 180, 60.0, 600, "Fatigue", 80.0, "Gravity Well", "Quantum Field", 15, 2023-05-12T14:30:00, 4, "B", "Reduced effectiveness in vacuum", "Orbital Test Range", "Lt. Kara", 4.2, "Pending", 1);
INSERT INTO superpower_effectiveness VALUES (3, 303, 103, "Underwater Missions", 92, 240, 30.0, 200, "None", 98.0, "Electric Surge", "Hydro Pulse", 30, 2023-07-20T09:45:00, 2, "S", "Highly efficient underwater", "Deep Sea Facility", "Cmdr. Lee", 4.9, "Approved", 3);

-- Table: hero_secret_identity_access
CREATE TABLE hero_secret_identity_access
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    hero_id                  INTEGER,
    secret_identity_id       INTEGER,
    access_granted_date      TEXT,
    granted_by               TEXT,
    access_level             INTEGER,
    reason                   TEXT,
    expiration_date          TEXT,
    revocation_date          TEXT,
    revocation_reason        TEXT,
    audit_log_path           TEXT,
    is_active                INTEGER,
    notes                    TEXT,
    compliance_check_passed  INTEGER,
    last_audit_date          TEXT,
    auditor_name             TEXT,
    access_scope             TEXT,
    related_incident_id      INTEGER,
    security_clearance_level INTEGER,
    backup_contact           TEXT,
    escalation_procedure     TEXT,
    notification_sent        INTEGER
);

INSERT INTO hero_secret_identity_access VALUES (1, 101, 1001, 2023-01-10, "AgencyX", 5, "Mission Critical", 2025-01-10, NULL, NULL, "/audit/hero101/secret001.log", 1, "Initial grant", 1, 2023-01-15, "AgentA", "Full", NULL, 4, "ContactA", "Immediate", 1);
INSERT INTO hero_secret_identity_access VALUES (2, 102, 1002, 2023-03-22, "AgencyY", 3, "Background Check", 2024-03-22, NULL, NULL, "/audit/hero102/secret002.log", 1, "Verified identity", 1, 2023-03-25, "AgentB", "Limited", NULL, 3, "ContactB", "Standard", 1);
INSERT INTO hero_secret_identity_access VALUES (3, 103, 1003, 2023-05-05, "AgencyZ", 4, "Joint Operations", 2025-05-05, NULL, NULL, "/audit/hero103/secret003.log", 1, "Joint mission clearance", 1, 2023-05-07, "AgentC", "Partial", NULL, 4, "ContactC", "Escalated", 1);

-- Table: villain_scheme_financials
CREATE TABLE villain_scheme_financials
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    villain_id               INTEGER,
    scheme_name              TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    estimated_budget_usd     REAL,
    actual_spent_usd         REAL,
    funding_source           TEXT,
    laundered_amount_usd     REAL,
    tax_evasion_flag         INTEGER,
    assets_acquired          INTEGER,
    assets_sold              INTEGER,
    profit_loss_usd          REAL,
    legal_fines_usd          REAL,
    insurance_claims_usd     REAL,
    shareholders_count       INTEGER,
    headquarters_location    TEXT,
    secret_account_number    TEXT,
    crypto_wallet_address    TEXT,
    audit_status             TEXT,
    last_audit_date          TEXT,
    notes                    TEXT,
    compliance_risk_score    INTEGER
);

INSERT INTO villain_scheme_financials VALUES (1, 201, "Omega Heist", 2023-02-01, 2023-04-30, 8000000.00, 8200000.00, "Underground Bank", 1500000.00, 1, 120, 30, 2000000.00, 500000.00, 250000.00, 5, "Gotham City", "ACC123456", "0xABCDEF123456", "Pending", 2023-05-10, "High risk due to crypto usage", 9);
INSERT INTO villain_scheme_financials VALUES (2, 202, "Dark Market Expansion", 2023-05-15, 2023-09-20, 5000000.00, 4800000.00, "Private Investors", 800000.00, 0, 80, 20, 1200000.00, 300000.00, 150000.00, 3, "Metropolis", "ACC789012", "0x123456ABCDEF", "Approved", 2023-10-01, "Stable funding", 4);
INSERT INTO villain_scheme_financials VALUES (3, 203, "Chrono Sabotage", 2023-08-01, 2023-11-30, 3000000.00, 3100000.00, "Corporate Sponsor", 500000.00, 1, 50, 10, 700000.00, 200000.00, 100000.00, 2, "Star City", "ACC345678", "0xFEDCBA654321", "Review", 2024-01-15, "Investigating laundering routes", 7);