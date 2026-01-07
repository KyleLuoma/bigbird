-- Table for fan feedback at hero events
CREATE TABLE hero_fan_event_feedback
(
    feedback_id                INTEGER PRIMARY KEY,
    event_id                   INTEGER,
    hero_id                    INTEGER,
    fan_id                     INTEGER,
    rating                     INTEGER,
    comments                   TEXT,
    submitted_at               DATE,
    platform                   TEXT,
    device_type                TEXT,
    os_version                 TEXT,
    app_version                TEXT,
    location_city              TEXT,
    location_country           TEXT,
    ip_address                 TEXT,
    survey_version             TEXT,
    consent_given              BOOLEAN,
    language                   TEXT,
    timezone                   TEXT,
    feedback_type              TEXT,
    response_time_sec          INTEGER
);

INSERT INTO hero_fan_event_feedback VALUES (1, 101, 10, 5001, 5, Great event, 2025-03-15, Web, Desktop, Windows10, 1.4, NewYork, USA, 192168001, V1, TRUE, English, EST, Survey, 45);
INSERT INTO hero_fan_event_feedback VALUES (2, 102, 12, 5002, 4, Very exciting, 2025-04-10, Mobile, Phone, Android11, 2.0, London, UK, 192168002, V1, TRUE, English, GMT, Survey, 30);
INSERT INTO hero_fan_event_feedback VALUES (3, 103, 15, 5003, 3, Average, 2025-05-05, Web, Tablet, iOS14, 1.2, Tokyo, Japan, 192168003, V2, FALSE, Japanese, JST, Poll, 60);

-- Table for villain network relationships
CREATE TABLE villain_network
(
    relation_id                INTEGER PRIMARY KEY,
    villain_id                 INTEGER,
    related_villain_id         INTEGER,
    relation_type              TEXT,
    first_met_year             INTEGER,
    last_contact_year          INTEGER,
    notes                      TEXT,
    trust_level                INTEGER,
    threat_level               INTEGER,
    alliance_name              TEXT,
    secrecy_score              INTEGER,
    communication_method       TEXT,
    location_city              TEXT,
    location_country           TEXT,
    contact_frequency          TEXT,
    is_active                  BOOLEAN,
    created_at                 DATE,
    updated_at                 DATE,
    source_document            TEXT,
    confidentiality_level      TEXT
);

INSERT INTO villain_network VALUES (1, 200, 201, Mentor, 1995, 2024, Long term planning, 8, 9, DarkCouncil, 95, Encrypted, Gotham, USA, Monthly, TRUE, 2020-01-01, 2024-12-01, DossierA, High);
INSERT INTO villain_network VALUES (2, 202, 203, Rival, 2000, 2023, Competition for resources, 4, 7, ShadowLeague, 70, Radio, Metropolis, USA, Weekly, FALSE, 2019-06-15, 2023-11-20, ReportB, Medium);
INSERT INTO villain_network VALUES (3, 204, 205, Ally, 2010, 2025, Joint operations, 9, 8, EvilSyndicate, 90, SecureChat, CentralCity, USA, Daily, TRUE, 2021-03-10, 2025-05-05, LogC, High);

-- Table for secret lair inventory
CREATE TABLE secret_lair_inventory
(
    item_id                    INTEGER PRIMARY KEY,
    lair_id                    INTEGER,
    item_name                  TEXT,
    item_category              TEXT,
    quantity                   INTEGER,
    storage_condition          TEXT,
    acquisition_date           DATE,
    last_audit_date            DATE,
    value_usd                  INTEGER,
    weight_kg                  INTEGER,
    dimensions_cm              TEXT,
    security_level             INTEGER,
    owner_hero_id              INTEGER,
    is_classified              BOOLEAN,
    visibility_rating          INTEGER,
    hazard_level               INTEGER,
    maintenance_schedule       TEXT,
    depreciation_rate          INTEGER,
    notes                      TEXT,
    supplier_name              TEXT
);

INSERT INTO secret_lair_inventory VALUES (1, 301, NanoSuit, Armor, 2, ClimateControlled, 2022-02-01, 2024-01-15, 500000, 15, 100x50x30, 10, 10, TRUE, 2, 1, Quarterly, 5, Experimental prototype, FutureTech);
INSERT INTO secret_lair_inventory VALUES (2, 302, EnergyCore, Power, 5, SecureVault, 2021-07-20, 2024-02-20, 200000, 10, 20x20x20, 9, 12, TRUE, 1, 2, Monthly, 3, High output core, PowerInc);
INSERT INTO secret_lair_inventory VALUES (3, 303, StealthDrone, Gadget, 10, LockedCabinet, 2023-05-10, 2024-03-05, 75000, 2, 30x30x10, 8, 15, FALSE, 3, 1, Biannual, 2, Recon drone fleet, AeroDynamics);

-- Table for multiverse event log
CREATE TABLE multiverse_event_log
(
    log_id                     INTEGER PRIMARY KEY,
    branch_name                TEXT,
    event_name                 TEXT,
    event_type                 TEXT,
    occurrence_date            DATE,
    involved_hero_id           INTEGER,
    involved_villain_id        INTEGER,
    severity_score             INTEGER,
    resolution_status         TEXT,
    timeline_impact            TEXT,
    dimension_shift            TEXT,
    cosmic_energy_used        INTEGER,
    witness_count             INTEGER,
    reported_by                TEXT,
    report_timestamp          DATETIME,
    notes                      TEXT,
    archival_status            TEXT,
    related_story_arc_id       INTEGER,
    external_reference         TEXT,
    confidentiality_level     TEXT
);

INSERT INTO multiverse_event_log VALUES (1, Alpha, RiftCollapse, Catastrophe, 2025-01-01, 10, 200, 9, Resolved, Major, ShiftA, 1500, 0, Council, 2025-01-02 08:00:00, Immediate action taken, Archived, 501, DocA, TopSecret);
INSERT INTO multiverse_event_log VALUES (2, Beta, TemporalAnomaly, Disturbance, 2025-02-15, 12, 202, 6, Ongoing, Moderate, ShiftB, 800, 5, Analyst, 2025-02-16 12:30:00, Monitoring required, Active, 502, DocB, Confidential);
INSERT INTO multiverse_event_log VALUES (3, Gamma, EnergySurge, Event, 2025-03-20, 15, 204, 4, Resolved, Minor, None, 300, 20, Observer, 2025-03-21 15:45:00, No further impact, Archived, 503, DocC, Restricted);

-- Table for hero medical records
CREATE TABLE hero_medical_record
(
    record_id                  INTEGER PRIMARY KEY,
    hero_id                    INTEGER,
    visit_date                 DATE,
    clinic_name                TEXT,
    physician_name             TEXT,
    diagnosis_code             TEXT,
    diagnosis_description      TEXT,
    treatment_plan             TEXT,
    medication_prescribed      TEXT,
    dosage                     TEXT,
    follow_up_date             DATE,
    lab_results                TEXT,
    imaging_results            TEXT,
    vital_signs_summary        TEXT,
    allergies                  TEXT,
    immunizations              TEXT,
    notes                      TEXT,
    confidentiality_flag      BOOLEAN,
    created_at                 DATE,
    updated_at                 DATE
);

INSERT INTO hero_medical_record VALUES (1, 10, 2024-11-01, MetroClinic, DrSmith, D001, FracturedArm, CastAndPhysio, PainRelief, 50mg, 2024-12-01, BloodWorkNormal, XRayClear, Stable, None, Tetanus, Routine check after injury, FALSE, 2024-11-01, 2024-11-10);
INSERT INTO hero_medical_record VALUES (2, 12, 2024-12-15, CityHospital, DrLee, D045, RadiationExposure, Decontamination, Antioxidant, 100mg, 2025-01-15, ElevatedMarkers, MRINormal, Stable, None, FluShot, Monitoring radiation levels, TRUE, 2024-12-15, 2024-12-20);
INSERT INTO hero_medical_record VALUES (3, 15, 2025-01-20, HeroHealthCenter, DrKhan, D078, MetabolismBoost, NutrientTherapy, SupplementX, 200mg, 2025-02-20, Normal, CTScanClear, Stable, None, None, Annual performance review, FALSE, 2025-01-20, 2025-01-25);

-- Table for extended fan demographic profiles
CREATE TABLE fan_demographic_profile_extended
(
    profile_id                 INTEGER PRIMARY KEY,
    fan_id                     INTEGER,
    age                        INTEGER,
    gender_id                  INTEGER,
    country                    TEXT,
    city                       TEXT,
    zip_code                   TEXT,
    education_level            TEXT,
    employment_status          TEXT,
    income_bracket             TEXT,
    marital_status             TEXT,
    number_of_children         INTEGER,
    favorite_hero_id           INTEGER,
    favorite_villain_id        INTEGER,
    membership_level           TEXT,
    subscription_start_date    DATE,
    last_activity_date         DATE,
    total_spent_usd            INTEGER,
    platform_preference        TEXT,
    device_type                TEXT,
    preferred_language         TEXT,
    time_zone                  TEXT
);

INSERT INTO fan_demographic_profile_extended VALUES (1, 5001, 28, 1, USA, NewYork, 10001, Bachelor, Employed, 60000-80000, Single, 0, 10, 200, Gold, 2022-05-01, 2025-03-01, 1200, Web, Desktop, English, EST);
INSERT INTO fan_demographic_profile_extended VALUES (2, 5002, 35, 2, UK, London, SW1A, Master, SelfEmployed, 80000-100000, Married, 2, 12, 202, Platinum, 2021-09-15, 2025-02-20, 3400, Mobile, Phone, English, GMT);
INSERT INTO fan_demographic_profile_extended VALUES (3, 5003, 22, 1, Japan, Tokyo, 100-0001, HighSchool, Student, 0-20000, Single, 0, 15, 210, Silver, 2023-01-20, 2025-01-15, 450, Web, Tablet, Japanese, JST);

-- Table for licensing royalty distribution
CREATE TABLE licensing_royalty_distribution
(
    distribution_id            INTEGER PRIMARY KEY,
    license_id                 INTEGER,
    product_id                 INTEGER,
    region_id                  INTEGER,
    royalty_rate               REAL,
    gross_sales_usd            INTEGER,
    net_sales_usd              INTEGER,
    royalty_amount_usd         INTEGER,
    payment_date               DATE,
    payer_name                 TEXT,
    payee_name                 TEXT,
    contract_id                INTEGER,
    accounting_code            TEXT,
    tax_withholding_percentage REAL,
    currency                   TEXT,
    exchange_rate              REAL,
    invoice_number             TEXT,
    notes                      TEXT,
    created_at                 DATE,
    updated_at                 DATE
);

INSERT INTO licensing_royalty_distribution VALUES (1, 1001, 2001, 3001, 0.12, 500000, 480000, 57600, 2025-04-01, GlobalLicensor, HeroCorp, 4001, AC100, 15.0, USD, 1.0, INV001, Quarterly payout, 2025-04-01, 2025-04-02);
INSERT INTO licensing_royalty_distribution VALUES (2, 1002, 2002, 3002, 0.08, 300000, 290000, 23200, 2025-04-15, WorldLicenses, HeroInc, 4002, AC101, 10.0, EUR, 1.1, INV002, Semiannual, 2025-04-15, 2025-04-16);
INSERT INTO licensing_royalty_distribution VALUES (3, 1003, 2003, 3003, 0.10, 800000, 790000, 79000, 2025-05-01, UniversalRights, HeroLtd, 4003, AC102, 12.5, GBP, 1.3, INV003, Annual, 2025-05-01, 2025-05-02);

-- Table for storyline development tracker
CREATE TABLE storyline_development_tracker
(
    tracker_id                 INTEGER PRIMARY KEY,
    story_arc_id               INTEGER,
    episode_number             INTEGER,
    title                      TEXT,
    writer_id                  INTEGER,
    director_id                INTEGER,
    production_status          TEXT,
    start_date                 DATE,
    end_date_estimate          DATE,
    actual_end_date            DATE,
    budget_usd                 INTEGER,
    spent_usd                  INTEGER,
    rating_score               REAL,
    audience_reception         TEXT,
    critical_reception         TEXT,
    notes                      TEXT,
    created_at                 DATE,
    updated_at                 DATE,
    last_reviewed_by           TEXT,
    revision_number            INTEGER
);

INSERT INTO storyline_development_tracker VALUES (1, 501, 1, OriginStory, 6001, 7001, InProduction, 2025-01-01, 2025-06-01, NULL, 2000000, 1200000, 8.5, Positive, Mixed, Initial script draft, 2025-01-02, 2025-01-10, ProducerA, 1);
INSERT INTO storyline_development_tracker VALUES (2, 502, 2, RiseOfVillain, 6002, 7002, Completed, 2024-03-01, 2024-08-01, 2024-07-28, 1500000, 1500000, 9.0, Excellent, Positive, Final cut approved, 2024-03-02, 2024-08-02, ProducerB, 3);
INSERT INTO storyline_development_tracker VALUES (3, 503, 3, FinalShowdown, 6003, 7003, PreProduction, 2025-07-01, 2025-12-01, NULL, 2500000, 0, 0.0, TBD, TBD, Outline completed, 2025-07-02, 2025-07-05, ProducerC, 1);

-- Table for merchandise production batches
CREATE TABLE merchandise_production_batch
(
    batch_id                   INTEGER PRIMARY KEY,
    item_id                    INTEGER,
    manufacturer_id            INTEGER,
    production_start_date      DATE,
    production_end_date        DATE,
    quantity_produced          INTEGER,
    defect_rate_percent        REAL,
    quality_inspector_id       INTEGER,
    material_type              TEXT,
    color_variant_id           INTEGER,
    size_variant               TEXT,
    packaging_type             TEXT,
    shipping_weight_kg         REAL,
    destination_warehouse_id   INTEGER,
    cost_per_unit_usd          REAL,
    total_cost_usd             REAL,
    compliance_certified       BOOLEAN,
    notes                      TEXT,
    created_at                 DATE,
    updated_at                 DATE
);

INSERT INTO merchandise_production_batch VALUES (1, 2001, 3001, 2025-02-01, 2025-02-20, 10000, 0.5, 4001, Plastic, 5001, M, Box, 1200.5, 6001, 3.5, 35000, TRUE, First batch of action figures, 2025-02-01, 2025-02-21);
INSERT INTO merchandise_production_batch VALUES (2, 2002, 3002, 2025-03-05, 2025-03-25, 5000, 1.2, 4002, Metal, 5002, L, ShrinkWrap, 800.0, 6002, 7.0, 35000, FALSE, Limited edition helmets, 2025-03-05, 2025-03-26);
INSERT INTO merchandise_production_batch VALUES (3, 2003, 3003, 2025-04-10, 2025-04-30, 20000, 0.3, 4003, Fabric, 5003, S, Bag, 1500.0, 6003, 2.0, 40000, TRUE, Bulk t‑shirts for convention, 2025-04-10, 2025-05-01);

-- Table for corporate partnership agreements
CREATE TABLE corporate_partnership_agreement
(
    agreement_id               INTEGER PRIMARY KEY,
    partner_company_id         INTEGER,
    partnership_type           TEXT,
    start_date                 DATE,
    end_date                   DATE,
    revenue_share_percentage   REAL,
    exclusivity_flag          BOOLEAN,
    primary_contact_name       TEXT,
    primary_contact_email      TEXT,
    liaison_officer_id         INTEGER,
    contract_document_path     TEXT,
    renewal_option             TEXT,
    termination_clause_summary TEXT,
    compliance_requirements    TEXT,
    marketing_commitment_usd   INTEGER,
    joint_events_planned       INTEGER,
    performance_metrics        TEXT,
    notes                      TEXT,
    created_at                 DATE,
    updated_at                 DATE
);

INSERT INTO corporate_partnership_agreement VALUES (1, 8001, Sponsorship, 2024-01-01, 2026-12-31, 15.0, TRUE, JaneDoe, jane.doe@example.com, 9001, /contracts/agree001.pdf, Auto, Notice30Days, GDPR, 500000, 4, KPI1, Initial agreement, 2024-01-01, 2024-01-02);
INSERT INTO corporate_partnership_agreement VALUES (2, 8002, CoBranding, 2023-06-15, 2025-06-14, 10.0, FALSE, JohnSmith, john.smith@example.com, 9002, /contracts/agree002.pdf, Manual, TerminationFee, ISO9001, 300000, 2, KPI2, Revised terms added, 2023-06-15, 2023-06-16);
INSERT INTO corporate_partnership_agreement VALUES (3, 8003, Licensing, 2025-03-01, 2028-02-28, 12.5, TRUE, AliceBrown, alice.brown@example.com, 9003, /contracts/agree003.pdf, Auto, MutualAgreement, None, 750000, 6, KPI3, Expanded scope, 2025-03-01, 2025-03-02);