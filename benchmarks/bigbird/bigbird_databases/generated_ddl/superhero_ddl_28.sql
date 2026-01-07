-- Galactic Alliance Membership information
CREATE TABLE galactic_alliance_membership
(
    id                 INTEGER NOT NULL PRIMARY KEY,
    member_name        TEXT,
    alliance_name      TEXT,
    join_date          DATE,
    member_rank        TEXT,
    sector_id          INTEGER,
    home_planet        TEXT,
    species            TEXT,
    diplomatic_status  TEXT,
    contribution_score INTEGER,
    voting_power       INTEGER,
    treaty_version     TEXT,
    expiration_date    DATE,
    approved_by        INTEGER,
    notes              TEXT,
    contact_email      TEXT,
    phone_number       TEXT,
    address_line1      TEXT,
    address_line2      TEXT,
    city               TEXT,
    postal_code        TEXT,
    country            TEXT
);
INSERT INTO galactic_alliance_membership VALUES (1, 'Zorak', 'United Sectors', '2023-05-12', 'Ambassador', 7, 'Xenon', 'Xelari', 'Active', 850, 5, 'V2', '2028-05-12', 3, 'First contact successful', 'zorak@galactic.org', '5550011', 'Orbital Way', '', 'Nova City', '00123', 'Zeta');
INSERT INTO galactic_alliance_membership VALUES (2, 'Lira', 'Stellar Council', '2022-11-03', 'Envoy', 12, 'Lunara', 'Lunarian', 'Observer', 420, 2, 'V1', '2027-11-03', 5, 'Monitoring trade routes', 'lira@stellar.net', '5550222', 'Moonrise Blvd', 'Apt 4', 'Lunar Base', '00456', 'Luna');
INSERT INTO galactic_alliance_membership VALUES (3, 'Karn', 'Galactic Federation', '2021-02-20', 'Delegate', 3, 'Kara', 'Karite', 'Active', 970, 7, 'V3', '2029-02-20', 2, 'Lead on security', 'karn@federation.com', '5550333', 'Star Lane', 'Suite 10', 'Kara City', '00987', 'Kara');

-- Arcane Artifact Loan Agreement
CREATE TABLE arcane_artifact_loan_agreement
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    artifact_name          TEXT,
    loan_start_date        DATE,
    loan_end_date          DATE,
    lending_institution    TEXT,
    borrowing_institution  TEXT,
    custodial_location     TEXT,
    condition_report       TEXT,
    insurance_policy_no    TEXT,
    insured_amount         DECIMAL,
    loan_purpose           TEXT,
    authorized_by          INTEGER,
    signature_date         DATE,
    renewal_allowed        BOOLEAN,
    renewal_terms          TEXT,
    special_handling_notes TEXT,
    transport_method       TEXT,
    transport_company      TEXT,
    tracking_number        TEXT,
    security_clearance_lvl INTEGER,
    compliance_status      TEXT,
    archival_reference     TEXT
);
INSERT INTO arcane_artifact_loan_agreement VALUES (1, 'Orb of Eternity', '2024-01-15', '2026-01-15', 'Mystic Museum', 'Galactic Archive', 'Vault 7', 'Excellent', 'POL12345', 2500000.00, 'Exhibit', 10, '2024-01-10', 1, 'One-year renewable', 'Handle with magnetic gloves', 'Quantum Shield', 'SecureTransit', 'TRK987654', 5, 'Compliant', 'ARC-001');
INSERT INTO arcane_artifact_loan_agreement VALUES (2, 'Scepter of Dawn', '2023-06-01', '2025-06-01', 'Solar Temple', 'Interstellar Academy', 'Gallery B', 'Good', 'POL67890', 1500000.00, 'Research', 12, '2023-05-20', 0, NULL, 'Cryogenic Pod', 'StarFreight', 'TRK123456', 4, 'Pending Review', 'ARC-002');
INSERT INTO arcane_artifact_loan_agreement VALUES (3, 'Crystal Eye', '2025-03-20', '2028-03-20', 'Celestial Observatory', 'Quantum Institute', 'Lab 3', 'Fair', 'POL54321', 900000.00, 'Calibration', 8, '2025-03-10', 1, 'Can be renewed twice', 'Maintain temperature at 5K', 'Magnetic Levitation', 'SpaceLogistics', 'TRK654321', 3, 'Compliant', 'ARC-003');

-- Dimensional Shift Record
CREATE TABLE dimensional_shift_record
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    shift_id               TEXT,
    source_dimension       TEXT,
    target_dimension       TEXT,
    initiator_entity       TEXT,
    shift_timestamp        TIMESTAMP,
    duration_seconds       INTEGER,
    energy_consumed_mj     DECIMAL,
    success_flag           BOOLEAN,
    failure_reason         TEXT,
    oversight_officer_id   INTEGER,
    safety_protocols_used  TEXT,
    anomaly_detected       BOOLEAN,
    anomaly_description    TEXT,
    post_shift_stability   TEXT,
    backup_system_id       INTEGER,
    control_center         TEXT,
    notes                  TEXT,
    verification_checksum  TEXT,
    regulator_approval_id  INTEGER,
    compliance_status      TEXT,
    audit_log_reference    TEXT
);
INSERT INTO dimensional_shift_record VALUES (1, 'DSR-001', 'Dim-Alpha', 'Dim-Beta', 'Karn', '2025-07-14 09:23:00', 120, 3500.75, 1, NULL, 4, 'Protocol-X', 0, NULL, 'Stable', 7, 'Central Ops', 'First test of new drive', 'CHK123ABC', 5, 'Approved', 'AUD-1001');
INSERT INTO dimensional_shift_record VALUES (2, 'DSR-002', 'Dim-Gamma', 'Dim-Delta', 'Zorak', '2024-11-02 14:45:30', 95, 2800.00, 0, 'Phase misalignment', 6, 'Protocol-Y', 1, 'Unexpected energy surge', 'Unstable', 8, 'Auxiliary Hub', 'Emergency shutdown', 'CHK456DEF', 9, 'Rejected', 'AUD-1002');
INSERT INTO dimensional_shift_record VALUES (3, 'DSR-003', 'Dim-Epsilon', 'Dim-Zeta', 'Lira', '2026-03-21 22:10:15', 180, 4200.50, 1, NULL, 3, 'Protocol-Z', 0, NULL, 'Stable', 5, 'Remote Station', 'Routine maintenance shift', 'CHK789GHI', 2, 'Approved', 'AUD-1003');

-- Psychic Ability Registry
CREATE TABLE psychic_ability_registry
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    ability_name           TEXT,
    description            TEXT,
    classification         TEXT,
    power_level            INTEGER,
    manifestation_method  TEXT,
    known_user_id          INTEGER,
    discovery_date         DATE,
    verified               BOOLEAN,
    verification_body      TEXT,
    limitation_notes       TEXT,
    energy_cost_per_use    DECIMAL,
    cooldown_seconds       INTEGER,
    training_required      BOOLEAN,
    training_institution   TEXT,
    risk_factor            INTEGER,
    ethical_approval_id    INTEGER,
    legal_status           TEXT,
    public_awareness_level INTEGER,
    media_coverage         TEXT,
    containment_protocol   TEXT,
    archive_reference      TEXT
);
INSERT INTO psychic_ability_registry VALUES (1, 'Telepathy', 'Mind to mind communication', 'Cognitive', 85, 'Neural wave', 12, '2021-04-12', 1, 'Psionic Council', 'Limited to close range', 12.5, 30, 1, 'Mind Academy', 3, 7, 'Legal', 4, 'Documentary', 'Secure chamber', 'PR-001');
INSERT INTO psychic_ability_registry VALUES (2, 'Chronokinesis', 'Manipulation of time flow', 'Temporal', 95, 'Temporal field', 23, '2023-09-05', 0, 'Temporal Authority', 'High strain on user', 45.0, 300, 0, NULL, 9, 12, 'Restricted', 2, 'News report', 'Chrono lock', 'PR-002');
INSERT INTO psychic_ability_registry VALUES (3, 'Pyrokinesis', 'Generation of fire', 'Elemental', 70, 'Thermal emission', 8, '2020-11-20', 1, 'Elemental Board', 'Risk of collateral damage', 8.0, 20, 1, 'Flame Institute', 5, 4, 'Approved', 5, 'Magazine feature', 'Fire suppression', 'PR-003');

-- Worldbuilding Concept Library
CREATE TABLE worldbuilding_concept_library
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    concept_name           TEXT,
    category               TEXT,
    brief_description      TEXT,
    detailed_documentation TEXT,
    creator_id             INTEGER,
    creation_timestamp     TIMESTAMP,
    last_modified_timestamp TIMESTAMP,
    status                 TEXT,
    version_number         INTEGER,
    associated_universe_id INTEGER,
    related_story_arc_id   INTEGER,
    tags                   TEXT,
    popularity_score       INTEGER,
    review_count           INTEGER,
    average_rating         DECIMAL,
    approved_by            INTEGER,
    approval_date          DATE,
    confidentiality_level  TEXT,
    access_restriction     BOOLEAN,
    linked_media_id        INTEGER,
    external_reference_url TEXT
);
INSERT INTO worldbuilding_concept_library VALUES (1, 'Quantum Nexus', 'Technology', 'Device enabling interdimensional travel', 'Full spec sheet and operational guidelines', 5, '2022-03-15 10:20:00', '2024-01-10 08:45:00', 'Published', 3, 2, 7, 'quantum,travel', 87, 12, 4.5, 3, '2022-04-01', 'Public', 0, 14, 'http://example.com/qnexus');
INSERT INTO worldbuilding_concept_library VALUES (2, 'Arcane Council', 'Society', 'Governing body of mystics', 'Historical records and charter', 9, '2021-07-22 14:00:00', '2023-11-05 16:30:00', 'Draft', 1, 4, 12, 'mystic,council', 65, 8, 4.0, 8, '2021-08-01', 'Restricted', 1, 19, 'http://example.com/arcane_council');
INSERT INTO worldbuilding_concept_library VALUES (3, 'Stellar Forge', 'Location', 'Planetary forge that creates starships', 'Geological surveys and operation manual', 11, '2020-05-10 09:15:00', '2022-12-18 11:25:00', 'Published', 2, 1, 5, 'forge,starship', 92, 20, 4.8, 2, '2020-06-01', 'Public', 0, 22, 'http://example.com/stellar_forge');

-- Timeline Branch Metadata
CREATE TABLE timeline_branch_metadata
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    branch_name            TEXT,
    origin_event_id        INTEGER,
    description            TEXT,
    start_date             DATE,
    end_date               DATE,
    status                 TEXT,
    alternate_universe_id  INTEGER,
    causality_rating       INTEGER,
    complexity_score       INTEGER,
    primary_author_id      INTEGER,
    creation_timestamp     TIMESTAMP,
    last_update_timestamp  TIMESTAMP,
    verification_status    TEXT,
    verified_by            INTEGER,
    verification_date      DATE,
    impact_factor          DECIMAL,
    related_branch_ids     TEXT,
    public_access_level    TEXT,
    notes                  TEXT,
    archival_location      TEXT,
    reference_document_id  INTEGER
);
INSERT INTO timeline_branch_metadata VALUES (1, 'Branch-A', 101, 'Early Expansion Era', '2020-01-01', '2025-12-31', 'Active', 3, 78, 55, 4, '2020-02-10 08:00:00', '2024-03-15 12:30:00', 'Verified', 7, '2020-03-01', 1.25, '2,3', 'Open', 'No anomalies', 'Archive Room 1', 55);
INSERT INTO timeline_branch_metadata VALUES (2, 'Branch-B', 102, 'Technological Leap', '2026-01-01', NULL, 'Planned', 5, 85, 70, 9, '2025-11-20 09:45:00', '2025-11-20 09:45:00', 'Pending', NULL, NULL, 0.95, '1,4', 'Restricted', 'Awaiting funding', 'Archive Room 2', 60);
INSERT INTO timeline_branch_metadata VALUES (3, 'Branch-C', 103, 'Crisis of Unity', '2030-06-15', '2035-09-30', 'Completed', 2, 92, 80, 12, '2029-12-01 10:30:00', '2035-10-01 14:00:00', 'Verified', 3, '2030-01-05', 1.75, '1,2', 'Open', 'Stabilized after conflict', 'Archive Room 3', 70);

-- Heroic Legacy Documentation
CREATE TABLE heroic_legacy_documentation
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    hero_id                INTEGER,
    legacy_title           TEXT,
    summary                TEXT,
    full_text              TEXT,
    author_id              INTEGER,
    creation_date          DATE,
    last_modified_date     DATE,
    publication_status     TEXT,
    version_number         INTEGER,
    citations_count        INTEGER,
    award_received         TEXT,
    public_release_date    DATE,
    restricted_access      BOOLEAN,
    access_level           TEXT,
    related_heroic_event_id INTEGER,
    archival_reference     TEXT,
    preservation_format    TEXT,
    digital_signature      TEXT,
    metadata_checksum      TEXT,
    supervisor_approval_id INTEGER,
    approval_timestamp     TIMESTAMP,
    notes                  TEXT
);
INSERT INTO heroic_legacy_documentation VALUES (1, 12, 'The Dawn of Justice', 'Chronicles the first mission', 'Full narrative text here', 4, '2023-01-15', '2023-06-20', 'Published', 1, 15, 'Valor Medal', '2023-07-01', 0, 'Open', 21, 'LEG-001', 'PDF', 'SIG12345', 'CHK001', 5, '2023-06-25 09:00:00', 'Initial release');
INSERT INTO heroic_legacy_documentation VALUES (2, 23, 'Shadows of the Past', 'Investigation into secret operations', 'Full report content', 7, '2024-03-10', '2024-08-05', 'Draft', 1, 8, NULL, NULL, 1, 'Restricted', 34, 'LEG-002', 'DOCX', 'SIG67890', 'CHK002', 9, '2024-07-30 14:20:00', 'Pending review');
INSERT INTO heroic_legacy_documentation VALUES (3, 8, 'Legacy of Light', 'Summary of heroic deeds', 'Comprehensive text', 10, '2022-11-01', '2023-02-20', 'Published', 2, 22, 'Hall of Fame', '2023-03-01', 0, 'Open', 45, 'LEG-003', 'EPUB', 'SIG11223', 'CHK003', 2, '2023-02-25 11:15:00', 'Second edition');

-- Satellite Commission Log
CREATE TABLE satellite_commission_log
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    satellite_name         TEXT,
    mission_id             INTEGER,
    launch_date            DATE,
    commissioning_date     DATE,
    operator_agency        TEXT,
    orbit_type             TEXT,
    payload_description    TEXT,
    power_output_watts     INTEGER,
    communication_band     TEXT,
    status                 TEXT,
    expected_lifetime_years INTEGER,
    actual_lifetime_years  INTEGER,
    decommission_reason    TEXT,
    disposal_method        TEXT,
    funding_source         TEXT,
    budget_million_usd      DECIMAL,
    risk_assessment_level  TEXT,
    compliance_certified   BOOLEAN,
    last_maintenance_date  DATE,
    next_maintenance_due   DATE,
    notes                  TEXT
);
INSERT INTO satellite_commission_log VALUES (1, 'Astra-1', 301, '2021-05-20', '2021-06-15', 'Orbital Agency', 'LEO', 'Imaging sensors', 2000, 'X-band', 'Active', 10, NULL, NULL, NULL, 'Government', 150.00, 'Medium', 1, '2023-05-10', '2024-05-10', 'Performing nominally');
INSERT INTO satellite_commission_log VALUES (2, 'Beacon-9', 402, '2019-12-05', '2020-01-12', 'Space Corp', 'GEO', 'Communications relay', 3500, 'Ka-band', 'Decommissioned', 12, 11, 'Fuel depletion', 'Controlled re‑entry', 'Private', 230.50, 'Low', 1, '2021-11-30', '2022-11-30', 'Decommissioned safely');
INSERT INTO satellite_commission_log VALUES (3, 'Voyager-X', 507, '2023-03-18', '2023-04-02', 'Interstellar Agency', 'HEO', 'Deep space probe', 500, 'S-band', 'Active', 15, NULL, NULL, NULL, 'International', 320.75, 'High', 0, '2023-09-15', '2024-09-15', 'Mission extended to 2028');

-- Energy Core Maintenance Schedule
CREATE TABLE energy_core_maintenance_schedule
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    core_id                INTEGER,
    facility_name          TEXT,
    maintenance_type       TEXT,
    scheduled_start        DATE,
    scheduled_end          DATE,
    technician_team_id     INTEGER,
    safety_protocol_id     INTEGER,
    estimated_downtime_hrs INTEGER,
    shutdown_required      BOOLEAN,
    pre_maintenance_checklist TEXT,
    post_maintenance_report TEXT,
    approval_status        TEXT,
    approved_by            INTEGER,
    approval_date          DATE,
    compliance_review_id   INTEGER,
    notes                  TEXT,
    last_inspection_date   DATE,
    next_inspection_due    DATE,
    operational_status     TEXT,
    energy_output_mw       DECIMAL,
    maintenance_cost_usd   DECIMAL,
    risk_level             TEXT
);
INSERT INTO energy_core_maintenance_schedule VALUES (1, 11, 'Solaris Plant', 'Coolant Replacement', '2024-07-01', '2024-07-05', 3, 7, 48, 1, 'Check valves, pressure gauges', 'All systems nominal', 'Approved', 5, '2024-06-20', 12, 'Routine annual maintenance', '2023-07-10', '2025-07-10', 'Operational', 1200.00, 50000.00, 'Medium');
INSERT INTO energy_core_maintenance_schedule VALUES (2, 23, 'Luna Reactor', 'Turbine Overhaul', '2023-11-15', '2023-11-20', 8, 4, 72, 1, 'Inspect blades, lubricate bearings', 'Replaced worn components', 'Approved', 9, '2023-11-01', 15, 'Extended maintenance due to wear', '2022-11-12', '2024-11-12', 'Reduced Output', 850.00, 75000.00, 'High');
INSERT INTO energy_core_maintenance_schedule VALUES (3, 7, 'Terra Fusion', 'Diagnostic Scan', '2025-02-10', '2025-02-11', 2, 6, 12, 0, 'Run baseline tests', 'No issues detected', 'Pending', NULL, NULL, NULL, 'Pre‑emptive check before peak season', '2024-02-08', '2026-02-08', 'Operational', 1500.00, 20000.00, 'Low');

-- Public Affairs Press Release
CREATE TABLE public_affairs_press_release
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    release_title          TEXT,
    release_date           DATE,
    author_id              INTEGER,
    department             TEXT,
    audience_scope         TEXT,
    language               TEXT,
    content_summary        TEXT,
    full_content           TEXT,
    distribution_channel   TEXT,
    embargoed_until        DATE,
    approval_status        TEXT,
    approved_by            INTEGER,
    approval_timestamp     TIMESTAMP,
    version_number         INTEGER,
    related_event_id       INTEGER,
    media_contact_name     TEXT,
    media_contact_email    TEXT,
    media_contact_phone    TEXT,
    attached_assets        TEXT,
    citation_links         TEXT,
    internal_notes         TEXT,
    compliance_check_passed BOOLEAN,
    compliance_officer_id  INTEGER,
    compliance_check_date  DATE
);
INSERT INTO public_affairs_press_release VALUES (1, 'New Alliance Formed', '2024-04-01', 4, 'Communications', 'Global', 'English', 'Announcing the formation of a new interstellar alliance', 'Full text of the announcement detailing member planets, goals, and leadership structures', 'Web, Email', NULL, 'Approved', 2, '2024-03-28 15:00:00', 1, 45, 'Jane Doe', 'jane.doe@publicaffairs.org', '555-0199', 'logo.png,photo1.jpg', 'http://example.com/press', 'Initial release', 1, 3, '2024-03-25');
INSERT INTO public_affairs_press_release VALUES (2, 'Space Station Completion', '2023-09-15', 7, 'Outreach', 'Regional', 'Spanish', 'Completion of the Lunar Research Station', 'Detalle completo del comunicado sobre la finalización de la estación lunar y sus capacidades de investigación', 'Print, Radio', NULL, 'Pending', NULL, NULL, 1, 58, 'Carlos Ruiz', 'carlos.ruiz@publicaffairs.org', '555-0222', 'station_photo.pdf', 'http://example.com/lunar', 'Awaiting final approval', 0, NULL, NULL);
INSERT INTO public_affairs_press_release VALUES (3, 'Annual Energy Report', '2025-01-20', 9, 'Finance', 'Stakeholders', 'English', 'Summary of energy production and consumption for the previous year', 'Comprehensive report with figures, charts, and future projections', 'PDF, Email', NULL, 'Approved', 5, '2025-01-15 09:30:00', 2, 62, 'Linda Smith', 'linda.smith@publicaffairs.org', '555-0333', 'energy_chart.png', 'http://example.com/energy2024', 'Final version', 1, 6, '2025-01-10');