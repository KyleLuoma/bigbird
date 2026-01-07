-- Hero origin storyline details
CREATE TABLE hero_origin_storyline
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    hero_id                INTEGER,
    origin_title           TEXT,
    origin_summary         TEXT,
    birth_place            TEXT,
    birth_date             DATE,
    parentage              TEXT,
    trigger_event          TEXT,
    mentor_name            TEXT,
    training_location      TEXT,
    early_affiliation      TEXT,
    first_villain          TEXT,
    first_success          TEXT,
    key_artifact           TEXT,
    power_awakening_age   INTEGER,
    origin_version         TEXT,
    canonical              BOOLEAN,
    media_adaptation       BOOLEAN,
    creation_year          INTEGER,
    writer_name            TEXT,
    artist_name            TEXT,
    notes                  TEXT
);

INSERT INTO hero_origin_storyline (id, hero_id, origin_title, origin_summary, birth_place, birth_date, parentage, trigger_event, mentor_name, training_location, early_affiliation, first_villain, first_success, key_artifact, power_awakening_age, origin_version, canonical, media_adaptation, creation_year, writer_name, artist_name, notes)
VALUES (1, 1, 'Origin of Light', 'Born under a comet and gained powers', 'Metropolis', '1990-05-12', 'Alien', 'Meteor strike', 'Professor X', 'Arcane Academy', 'Justice League', 'Dr Doom', 'Saved city', 'Solar Core', 15, 'Original', 1, 1, 2000, 'John Doe', 'Jane Smith', 'First appearance in issue 1');

INSERT INTO hero_origin_storyline (id, hero_id, origin_title, origin_summary, birth_place, birth_date, parentage, trigger_event, mentor_name, training_location, early_affiliation, first_villain, first_success, key_artifact, power_awakening_age, origin_version, canonical, media_adaptation, creation_year, writer_name, artist_name, notes)
VALUES (2, 2, 'Shadow Genesis', 'A tragic accident in a lab gave rise to darkness', 'Gotham', '1985-11-03', 'Human', 'Chemical spill', 'Dr Strange', 'Nightshade Institute', 'Shadow League', 'Lord Night', 'Disrupted robbery', 'Obsidian Stone', 22, 'Reboot', 0, 1, 1995, 'Alice Green', 'Bob Brown', 'Reimagined in 2020 reboot');

INSERT INTO hero_origin_storyline (id, hero_id, origin_title, origin_summary, birth_place, birth_date, parentage, trigger_event, mentor_name, training_location, early_affiliation, first_villain, first_success, key_artifact, power_awakening_age, origin_version, canonical, media_adaptation, creation_year, writer_name, artist_name, notes)
VALUES (3, 3, 'Stormborn', 'Caught in a thunderstorm, powers manifested', 'Central City', '2001-07-19', 'Mystic', 'Lightning strike', 'Captain Storm', 'Tempest Academy', 'Storm Guard', 'Tempest Witch', 'Stopped flood', 'Storm Crown', 18, 'Modern', 1, 0, 2010, 'Carlos Vega', 'Dana Lee', 'Featured in animated series');

-- Villain network analysis data
CREATE TABLE villain_network_analysis
(
    id                         INTEGER NOT NULL PRIMARY KEY,
    villain_id                 INTEGER,
    network_name               TEXT,
    centrality_score           DECIMAL(5,2),
    betweenness                DECIMAL(5,2),
    clustering_coeff           DECIMAL(5,2),
    ally_count                 INTEGER,
    enemy_count                INTEGER,
    region                     TEXT,
    operation_type             TEXT,
    last_activity              DATE,
    threat_level               INTEGER,
    resource_budget            DECIMAL(10,2),
    influence_rank             INTEGER,
    active                     BOOLEAN,
    sponsoring_org             TEXT,
    public_perception_score    INTEGER,
    contact_point              TEXT,
    secure_channel             TEXT,
    notes                      TEXT,
    created_at                 DATE
);

INSERT INTO villain_network_analysis (id, villain_id, network_name, centrality_score, betweenness, clustering_coeff, ally_count, enemy_count, region, operation_type, last_activity, threat_level, resource_budget, influence_rank, active, sponsoring_org, public_perception_score, contact_point, secure_channel, notes, created_at)
VALUES (1, 101, 'Night Syndicate', 85.30, 70.12, 0.45, 12, 5, 'Europe', 'Illicit Trade', '2024-12-01', 9, 2500000.00, 3, 1, 'Dark Holdings', 40, 'agent_night', 'encrypted_email', 'Expanding in Eastern markets', '2024-01-15');

INSERT INTO villain_network_analysis (id, villain_id, network_name, centrality_score, betweenness, clustering_coeff, ally_count, enemy_count, region, operation_type, last_activity, threat_level, resource_budget, influence_rank, active, sponsoring_org, public_perception_score, contact_point, secure_channel, notes, created_at)
VALUES (2, 102, 'Aqua Cartel', 72.55, 65.80, 0.38, 8, 9, 'Asia-Pacific', 'Smuggling', '2024-11-20', 7, 1800000.00, 5, 1, 'Oceanic Ventures', 30, 'wave_master', 'satellite_link', 'Recently hijacked a research vessel', '2024-02-10');

INSERT INTO villain_network_analysis (id, villain_id, network_name, centrality_score, betweenness, clustering_coeff, ally_count, enemy_count, region, operation_type, last_activity, threat_level, resource_budget, influence_rank, active, sponsoring_org, public_perception_score, contact_point, secure_channel, notes, created_at)
VALUES (3, 103, 'Solar Dominion', 90.10, 78.45, 0.52, 15, 3, 'North America', 'Territorial Expansion', '2024-12-05', 10, 3200000.00, 1, 1, 'Solar Corp', 20, 'sun_pariah', 'quantum_channel', 'Leader is planning a citywide blackout', '2024-03-08');

-- Publishing contract terms
CREATE TABLE publishing_contract_terms
(
    contract_id               INTEGER NOT NULL PRIMARY KEY,
    publisher_id              INTEGER,
    series_name               TEXT,
    start_date                DATE,
    end_date                  DATE,
    royalty_rate_percent      DECIMAL(4,2),
    advance_payment_usd       DECIMAL(12,2),
    max_issues                INTEGER,
    print_run_per_issue       INTEGER,
    digital_rights_included   BOOLEAN,
    merchandise_rights        BOOLEAN,
    adaptation_rights         BOOLEAN,
    exclusivity_region        TEXT,
    renewal_option_years      INTEGER,
    termination_clause_days   INTEGER,
    audit_rights              BOOLEAN,
    confidentiality_level     TEXT,
    dispute_resolution_method TEXT,
    governing_law             TEXT,
    signing_authority_name    TEXT,
    notes                     TEXT,
    created_timestamp         DATE,
    last_modified_timestamp   DATE
);

INSERT INTO publishing_contract_terms (contract_id, publisher_id, series_name, start_date, end_date, royalty_rate_percent, advance_payment_usd, max_issues, print_run_per_issue, digital_rights_included, merchandise_rights, adaptation_rights, exclusivity_region, renewal_option_years, termination_clause_days, audit_rights, confidentiality_level, dispute_resolution_method, governing_law, signing_authority_name, notes, created_timestamp, last_modified_timestamp)
VALUES (1, 10, 'Chronicles of Dawn', '2022-01-01', '2027-12-31', 12.50, 500000.00, 60, 100000, 1, 1, 1, 'Global', 2, 90, 1, 'High', 'Arbitration', 'Delaware', 'Emily Clarke', 'First major joint venture', '2022-01-01', '2024-06-15');

INSERT INTO publishing_contract_terms (contract_id, publisher_id, series_name, start_date, end_date, royalty_rate_percent, advance_payment_usd, max_issues, print_run_per_issue, digital_rights_included, merchandise_rights, adaptation_rights, exclusivity_region, renewal_option_years, termination_clause_days, audit_rights, confidentiality_level, dispute_resolution_method, governing_law, signing_authority_name, notes, created_timestamp, last_modified_timestamp)
VALUES (2, 12, 'Shadow Realm', '2023-03-15', '2028-03-14', 10.00, 300000.00, 48, 80000, 1, 0, 1, 'NorthAmerica', 1, 60, 1, 'Medium', 'Mediation', 'California', 'Liam Patel', 'Includes TV adaptation', '2023-03-15', '2024-06-20');

INSERT INTO publishing_contract_terms (contract_id, publisher_id, series_name, start_date, end_date, royalty_rate_percent, advance_payment_usd, max_issues, print_run_per_issue, digital_rights_included, merchandise_rights, adaptation_rights, exclusivity_region, renewal_option_years, termination_clause_days, audit_rights, confidentiality_level, dispute_resolution_method, governing_law, signing_authority_name, notes, created_timestamp, last_modified_timestamp)
VALUES (3, 14, 'Infinite Legends', '2021-07-01', '2026-06-30', 15.00, 750000.00, 72, 120000, 1, 1, 0, 'Europe', 3, 120, 1, 'VeryHigh', 'Litigation', 'NewYork', 'Sofia Ramos', 'High print volume', '2021-07-01', '2024-06-18');

-- Superhero media appearance log
CREATE TABLE superhero_media_appearance_log
(
    appearance_id            INTEGER NOT NULL PRIMARY KEY,
    hero_id                  INTEGER,
    media_type               TEXT,
    title                    TEXT,
    release_date             DATE,
    director_name            TEXT,
    producer_name            TEXT,
    box_office_millions_usd  DECIMAL(10,2),
    streaming_platform       TEXT,
    view_count_millions      DECIMAL(8,2),
    rating_imdb              DECIMAL(3,1),
    rating_rotten_tomatoes   INTEGER,
    budget_millions_usd      DECIMAL(10,2),
    screenplay_writer        TEXT,
    composer_name            TEXT,
    cinematographer_name     TEXT,
    editor_name              TEXT,
    franchise_name           TEXT,
    canonical_appearance     BOOLEAN,
    awards_won               INTEGER,
    nomination_count         INTEGER,
    notes                    TEXT,
    created_at               DATE
);

INSERT INTO superhero_media_appearance_log (appearance_id, hero_id, media_type, title, release_date, director_name, producer_name, box_office_millions_usd, streaming_platform, view_count_millions, rating_imdb, rating_rotten_tomatoes, budget_millions_usd, screenplay_writer, composer_name, cinematographer_name, editor_name, franchise_name, canonical_appearance, awards_won, nomination_count, notes, created_at)
VALUES (1, 1, 'Film', 'Light Rising', '2023-05-04', 'Anna Bright', 'Solar Films', 850.00, 'StreamX', 45.20, 7.8, 92, 120.00, 'Mark Tale', 'Luna Score', 'Evan Lens', 'Mia Cut', 'Light Saga', 1, 5, 12, 'First solo film', '2023-05-04');

INSERT INTO superhero_media_appearance_log (appearance_id, hero_id, media_type, title, release_date, director_name, producer_name, box_office_millions_usd, streaming_platform, view_count_millions, rating_imdb, rating_rotten_tomatoes, budget_millions_usd, screenplay_writer, composer_name, cinematographer_name, editor_name, franchise_name, canonical_appearance, awards_won, nomination_count, notes, created_at)
VALUES (2, 2, 'AnimatedSeries', 'Shadows Unleashed', '2022-09-12', 'Victor Dark', 'Night Studios', 0.00, 'AnimStream', 30.55, 8.2, 96, 25.00, 'Lara Script', 'Gale Music', 'Nina Light', 'Tom Slice', 'Shadow Series', 1, 2, 8, 'Season 1', '2022-09-12');

INSERT INTO superhero_media_appearance_log (appearance_id, hero_id, media_type, title, release_date, director_name, producer_name, box_office_millions_usd, streaming_platform, view_count_millions, rating_imdb, rating_rotten_tomatoes, budget_millions_usd, screenplay_writer, composer_name, cinematographer_name, editor_name, franchise_name, canonical_appearance, awards_won, nomination_count, notes, created_at)
VALUES (3, 3, 'VideoGame', 'Stormborn: Tempest', '2024-02-20', 'GameDev Studios', 'Storm Interactive', 0.00, 'GameHub', 12.70, 9.0, 98, 60.00, 'Simon Play', 'Thunder Beats', 'Rex Vision', 'Lara Trim', 'Storm Games', 0, 0, 0, 'Multiplayer release', '2024-02-20');

-- Hero fitness assessment log
CREATE TABLE hero_fitness_assessment_log
(
    assessment_id          INTEGER NOT NULL PRIMARY KEY,
    hero_id                INTEGER,
    assessment_date        DATE,
    body_fat_percent       DECIMAL(4,2),
    muscle_mass_kg         DECIMAL(5,2),
    resting_heart_rate_bpm INTEGER,
    vo2_max_ml_per_kg_min  DECIMAL(5,2),
    max_pushups            INTEGER,
    max_pullups            INTEGER,
    bench_press_kg         DECIMAL(5,2),
    squat_kg               DECIMAL(5,2),
    deadlift_kg            DECIMAL(5,2),
    agility_score          INTEGER,
    flexibility_score      INTEGER,
    stamina_score          INTEGER,
    injury_status          TEXT,
    nutrition_plan_id      INTEGER,
    supplement_used        TEXT,
    training_cycle_week    INTEGER,
    notes                  TEXT,
    trainer_name           TEXT,
    created_timestamp      DATE,
    modified_timestamp     DATE
);

INSERT INTO hero_fitness_assessment_log (assessment_id, hero_id, assessment_date, body_fat_percent, muscle_mass_kg, resting_heart_rate_bpm, vo2_max_ml_per_kg_min, max_pushups, max_pullups, bench_press_kg, squat_kg, deadlift_kg, agility_score, flexibility_score, stamina_score, injury_status, nutrition_plan_id, supplement_used, training_cycle_week, notes, trainer_name, created_timestamp, modified_timestamp)
VALUES (1, 1, '2024-06-01', 12.50, 85.00,  fifty, 55.00, 100, 30, 120.00, 150.00, 180.00, 90, 85, 95, 'None', 3, 'ProteinShake', 4, 'Peak condition', 'Coach Aaron', '2024-06-01', '2024-06-01');

INSERT INTO hero_fitness_assessment_log (assessment_id, hero_id, assessment_date, body_fat_percent, muscle_mass_kg, resting_heart_rate_bpm, vo2_max_ml_per_kg_min, max_pushups, max_pullups, bench_press_kg, squat_kg, deadlift_kg, agility_score, flexibility_score, stamina_score, injury_status, nutrition_plan_id, supplement_used, training_cycle_week, notes, trainer_name, created_timestamp, modified_timestamp)
VALUES (2, 2, '2024-05-20', 18.00, 70.00, 60, 48.00, 80, 20, 95.00, 130.00, 160.00, 78, 72, 80, 'Knee strain', 5, 'Creatine', 2, 'Recovering from injury', 'Coach Bianca', '2024-05-20', '2024-05-20');

INSERT INTO hero_fitness_assessment_log (assessment_id, hero_id, assessment_date, body_fat_percent, muscle_mass_kg, resting_heart_rate_bpm, vo2_max_ml_per_kg_min, max_pushups, max_pullups, bench_press_kg, squat_kg, deadlift_kg, agility_score, flexibility_score, stamina_score, injury_status, nutrition_plan_id, supplement_used, training_cycle_week, notes, trainer_name, created_timestamp, modified_timestamp)
VALUES (3, 3, '2024-04-15', 15.00, 78.00, 55, 60.00, 90, 25, 110.00, 140.00, 170.00, 85, 88, 92, 'None', 2, 'Omega3', 5, 'Steady improvement', 'Coach Diego', '2024-04-15', '2024-04-15');

-- Fan engagement metrics
CREATE TABLE fan_engagement_metrics
(
    metric_id               INTEGER NOT NULL PRIMARY KEY,
    fan_id                  INTEGER,
    engagement_date         DATE,
    page_views              INTEGER,
    likes                   INTEGER,
    comments                INTEGER,
    shares                  INTEGER,
    watch_time_minutes      INTEGER,
    event_attendance        INTEGER,
    merchandise_purchases   INTEGER,
    average_spend_usd       DECIMAL(8,2),
    sentiment_score         DECIMAL(4,2),
    platform_name           TEXT,
    device_type             TEXT,
    geographic_region       TEXT,
    referral_source         TEXT,
    campaign_id             INTEGER,
    loyalty_tier            TEXT,
    subscription_status     TEXT,
    feedback_score          INTEGER,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE,
    survey_completed        BOOLEAN,
    net_promoter_score      INTEGER
);

INSERT INTO fan_engagement_metrics (metric_id, fan_id, engagement_date, page_views, likes, comments, shares, watch_time_minutes, event_attendance, merchandise_purchases, average_spend_usd, sentiment_score, platform_name, device_type, geographic_region, referral_source, campaign_id, loyalty_tier, subscription_status, feedback_score, notes, created_at, updated_at, survey_completed, net_promoter_score)
VALUES (1, 1001, '2024-06-10', 45, 12, 3, 5, 120, 0, 2, 35.50, 0.85, 'StreamX', 'Mobile', 'NorthAmerica', 'SocialMedia', 7, 'Gold', 'Active', 9, 'High engagement during weekend', '2024-06-10', '2024-06-10', 1, 72);

INSERT INTO fan_engagement_metrics (metric_id, fan_id, engagement_date, page_views, likes, comments, shares, watch_time_minutes, event_attendance, merchandise_purchases, average_spend_usd, sentiment_score, platform_name, device_type, geographic_region, referral_source, campaign_id, loyalty_tier, subscription_status, feedback_score, notes, created_at, updated_at, survey_completed, net_promoter_score)
VALUES (2, 1002, '2024-06-09', 30, 8, 1, 2, 80, 1, 1, 20.00, 0.78, 'FanHub', 'Desktop', 'Europe', 'Email', 3, 'Silver', 'Inactive', 7, 'Attended virtual panel', '2024-06-09', '2024-06-09', 0, 65);

INSERT INTO fan_engagement_metrics (metric_id, fan_id, engagement_date, page_views, likes, comments, shares, watch_time_minutes, event_attendance, merchandise_purchases, average_spend_usd, sentiment_score, platform_name, device_type, geographic_region, referral_source, campaign_id, loyalty_tier, subscription_status, feedback_score, notes, created_at, updated_at, survey_completed, net_promoter_score)
VALUES (3, 1003, '2024-06-08', 60, 20, 5, 8, 200, 2, 3, 55.75, 0.92, 'SocialNet', 'Tablet', 'Asia', 'Referral', 9, 'Platinum', 'Active', 10, 'Purchased limited edition figure', '2024-06-08', '2024-06-08', 1, 85);

-- Interdimensional portal registry
CREATE TABLE interdimensional_portal_registry
(
    portal_id               INTEGER NOT NULL PRIMARY KEY,
    portal_name             TEXT,
    discovery_date          DATE,
    discovered_by           TEXT,
    source_dimension        TEXT,
    destination_dimension   TEXT,
    stability_rating        DECIMAL(3,1),
    activation_method       TEXT,
    max_throughput_per_min  INTEGER,
    energy_requirement_mw  DECIMAL(8,2),
    security_level          TEXT,
    containment_status      TEXT,
    last_maintenance_date   DATE,
    operational_status      TEXT,
    authorized_access_level INTEGER,
    hazard_class            TEXT,
    material_composition    TEXT,
    coordinates_x           DECIMAL(10,4),
    coordinates_y           DECIMAL(10,4),
    coordinates_z           DECIMAL(10,4),
    notes                   TEXT,
    created_timestamp       DATE,
    updated_timestamp       DATE,
    decommissioned          BOOLEAN,
    regulatory_body         TEXT
);

INSERT INTO interdimensional_portal_registry (portal_id, portal_name, discovery_date, discovered_by, source_dimension, destination_dimension, stability_rating, activation_method, max_throughput_per_min, energy_requirement_mw, security_level, containment_status, last_maintenance_date, operational_status, authorized_access_level, hazard_class, material_composition, coordinates_x, coordinates_y, coordinates_z, notes, created_timestamp, updated_timestamp, decommissioned, regulatory_body)
VALUES (1, 'Aether Gate', '2022-11-05', 'Dr Nova', 'Prime', 'Ethereal', 8.5, 'QuantumPulse', 500, 1250.00, 'High', 'Secured', '2024-05-01', 'Active', 5, 'ClassA', 'TritiumAlloy', 1024.5678, 2048.1234, 4096.8765, 'Primary gateway for research missions', '2022-11-05', '2024-06-01', 0, 'Interdim Agency');

INSERT INTO interdimensional_portal_registry (portal_id, portal_name, discovery_date, discovered_by, source_dimension, destination_dimension, stability_rating, activation_method, max_throughput_per_min, energy_requirement_mw, security_level, containment_status, last_maintenance_date, operational_status, authorized_access_level, hazard_class, material_composition, coordinates_x, coordinates_y, coordinates_z, notes, created_timestamp, updated_timestamp, decommissioned, regulatory_body)
VALUES (2, 'Shadow Rift', '2023-02-14', 'Agent Night', 'DarkRealm', 'Prime', 6.2, 'ArcaneSigil', 300, 800.00, 'Medium', 'Monitored', '2024-04-20', 'Limited', 3, 'ClassB', 'ObsidianCrystal', 512.0000, 1024.0000, 2048.0000, 'Used for covert operations', '2023-02-14', '2024-06-02', 0, 'Secret Council');

INSERT INTO interdimensional_portal_registry (portal_id, portal_name, discovery_date, discovered_by, source_dimension, destination_dimension, stability_rating, activation_method, max_throughput_per_min, energy_requirement_mw, security_level, containment_status, last_maintenance_date, operational_status, authorized_access_level, hazard_class, material_composition, coordinates_x, coordinates_y, coordinates_z, notes, created_timestamp, updated_timestamp, decommissioned, regulatory_body)
VALUES (3, 'Chrono Vortex', '2024-01-01', 'Chronos Labs', 'TimeStream', 'Prime', 9.0, 'TemporalSync', 1000, 2000.00, 'Critical', 'Isolated', '2024-06-01', 'Active', 7, 'ClassS', 'Chronoton', 0.0000, 0.0000, 0.0000, 'Allows time-travel experiments', '2024-01-01', '2024-06-03', 0, 'Temporal Authority');

-- Cosmic artifact inventory
CREATE TABLE cosmic_artifact_inventory
(
    artifact_id            INTEGER NOT NULL PRIMARY KEY,
    artifact_name          TEXT,
    discovery_date         DATE,
    discovered_by          TEXT,
    origin_universe        TEXT,
    material_type          TEXT,
    weight_kg              DECIMAL(6,2),
    dimensions_cm          TEXT,
    energy_output_mw       DECIMAL(10,2),
    containment_level      TEXT,
    current_location_id    INTEGER,
    status                 TEXT,
    last_inspection_date   DATE,
    preservation_method    TEXT,
    hazard_rating          INTEGER,
    cultural_significance  TEXT,
    associated_power_id    INTEGER,
    loan_status            TEXT,
    loan_institution       TEXT,
    acquisition_cost_usd    DECIMAL(12,2),
    resale_value_usd       DECIMAL(12,2),
    notes                  TEXT,
    created_at             DATE,
    updated_at             DATE,
    decommissioned         BOOLEAN,
    regulatory_compliance  TEXT
);

INSERT INTO cosmic_artifact_inventory (artifact_id, artifact_name, discovery_date, discovered_by, origin_universe, material_type, weight_kg, dimensions_cm, energy_output_mw, containment_level, current_location_id, status, last_inspection_date, preservation_method, hazard_rating, cultural_significance, associated_power_id, loan_status, loan_institution, acquisition_cost_usd, resale_value_usd, notes, created_at, updated_at, decommissioned, regulatory_compliance)
VALUES (1, 'Solar Crown', '2020-03-15', 'Dr Helios', 'Solara', 'Solarite', 12.50, '10x10x2', 5000.00, 'High', 101, 'Secure', '2024-05-20', 'Cryogenic', 9, 'Royal Relic', 201, 'OnLoan', 'Galactic Museum', 2500000.00, 4000000.00, 'Displayed during solar eclipse event', '2020-03-15', '2024-06-01', 0, 'Intergalactic Treaty');

INSERT INTO cosmic_artifact_inventory (artifact_id, artifact_name, discovery_date, discovered_by, origin_universe, material_type, weight_kg, dimensions_cm, energy_output_mw, containment_level, current_location_id, status, last_inspection_date, preservation_method, hazard_rating, cultural_significance, associated_power_id, loan_status, loan_institution, acquisition_cost_usd, resale_value_usd, notes, created_at, updated_at, decommissioned, regulatory_compliance)
VALUES (2, 'Nebula Orb', '2021-07-22', 'Explorer Vega', 'Nebulon', 'Nebulite', 8.75, '8x8x8', 3200.00, 'Medium', 102, 'InStorage', '2024-04-15', 'MagneticField', 7, 'Ancient Navigational Aid', 202, 'Available', NULL, 1500000.00, 2500000.00, 'Used in deep-space navigation tests', '2021-07-22', '2024-06-02', 0, 'Space Authority');

INSERT INTO cosmic_artifact_inventory (artifact_id, artifact_name, discovery_date, discovered_by, origin_universe, material_type, weight_kg, dimensions_cm, energy_output_mw, containment_level, current_location_id, status, last_inspection_date, preservation_method, hazard_rating, cultural_significance, associated_power_id, loan_status, loan_institution, acquisition_cost_usd, resale_value_usd, notes, created_at, updated_at, decommissioned, regulatory_compliance)
VALUES (3, 'Quantum Relic', '2023-11-05', 'Dr Quark', 'QuantumRealm', 'Quarkium', 5.20, '5x5x5', 7500.00, 'Critical', 103, 'Active', '2024-06-01', 'ZeroPointField', 10, 'Key to quantum stabilization', 203, 'NotForLoan', NULL, 5000000.00, 8000000.00, 'Integral to quantum research program', '2023-11-05', '2024-06-03', 0, 'Quantum Council');

-- Metahuman clinic visit log
CREATE TABLE metahuman_clinic_visit_log
(
    visit_id                INTEGER NOT NULL PRIMARY KEY,
    patient_id              INTEGER,
    visit_date              DATE,
    attending_physician_id   INTEGER,
    chief_complaint         TEXT,
    diagnosis_code          TEXT,
    prescribed_medication   TEXT,
    dosage_mg               DECIMAL(6,2),
    treatment_duration_days INTEGER,
    follow_up_required      BOOLEAN,
    follow_up_date          DATE,
    notes                   TEXT,
    clinic_location_id      INTEGER,
    insurance_provider      TEXT,
    claim_number            TEXT,
    billing_status          TEXT,
    vaccination_status      TEXT,
    mental_health_assessment_score INTEGER,
    genetic_test_conducted  BOOLEAN,
    genetic_marker_found    TEXT,
    created_at              DATE,
    updated_at              DATE,
    discharge_summary       TEXT,
    emergency_contact_name  TEXT,
    emergency_contact_phone TEXT
);

INSERT INTO metahuman_clinic_visit_log (visit_id, patient_id, visit_date, attending_physician_id, chief_complaint, diagnosis_code, prescribed_medication, dosage_mg, treatment_duration_days, follow_up_required, follow_up_date, notes, clinic_location_id, insurance_provider, claim_number, billing_status, vaccination_status, mental_health_assessment_score, genetic_test_conducted, genetic_marker_found, created_at, updated_at, discharge_summary, emergency_contact_name, emergency_contact_phone)
VALUES (1, 5001, '2024-05-10', 301, 'Uncontrolled energy spikes', 'E123', 'StabilizerX', 250.00, 30, 1, '2024-06-10', 'Patient responded well to medication', 12, 'MetaHealth', 'MH-20240510-001', 'Paid', 'Completed', 85, 1, 'GammaGene', '2024-05-10', '2024-05-10', 'Stabilized for 30 days', 'Linda Gray', '5551234567');

INSERT INTO metahuman_clinic_visit_log (visit_id, patient_id, visit_date, attending_physician_id, chief_complaint, diagnosis_code, prescribed_medication, dosage_mg, treatment_duration_days, follow_up_required, follow_up_date, notes, clinic_location_id, insurance_provider, claim_number, billing_status, vaccination_status, mental_health_assessment_score, genetic_test_conducted, genetic_marker_found, created_at, updated_at, discharge_summary, emergency_contact_name, emergency_contact_phone)
VALUES (2, 5002, '2024-04-22', 302, 'Regeneration delay', 'R456', 'RegenBoost', 150.00, 14, 0, NULL, 'No complications observed', 13, 'MetaHealth', 'MH-20240422-002', 'Pending', 'Pending', 78, 0, NULL, '2024-04-22', '2024-04-22', 'Discharged with home care instructions', 'Mark Lee', '5559876543');

INSERT INTO metahuman_clinic_visit_log (visit_id, patient_id, visit_date, attending_physician_id, chief_complaint, diagnosis_code, prescribed_medication, dosage_mg, treatment_duration_days, follow_up_required, follow_up_date, notes, clinic_location_id, insurance_provider, claim_number, billing_status, vaccination_status, mental_health_assessment_score, genetic_test_conducted, genetic_marker_found, created_at, updated_at, discharge_summary, emergency_contact_name, emergency_contact_phone)
VALUES (3, 5003, '2024-03-15', 303, 'Psychic overload', 'P789', 'CalmMind', 100.00, 21, 1, '2024-04-05', 'Patient requires ongoing monitoring', 14, 'MetaHealth', 'MH-20240315-003', 'Paid', 'Completed', 92, 1, 'PsiGene', '2024-03-15', '2024-03-15', 'Stabilized after therapy', 'Sara Kim', '5553210987');

-- Multiverse event participation
CREATE TABLE multiverse_event_participation
(
    participation_id        INTEGER NOT NULL PRIMARY KEY,
    event_id                INTEGER,
    hero_id                 INTEGER,
    role                    TEXT,
    entry_date              DATE,
    exit_date               DATE,
    outcome                 TEXT,
    universe_origin         TEXT,
    universe_destination    TEXT,
    power_utilization_level INTEGER,
    equipment_used          TEXT,
    casualties_reported     INTEGER,
    collaborators_count     INTEGER,
    strategic_importance    TEXT,
    debrief_notes           TEXT,
    commander_id            INTEGER,
    tactical_score          INTEGER,
    resource_consumption_mj DECIMAL(10,2),
    temporal_displacement   BOOLEAN,
    timeline_impact_score   INTEGER,
    created_timestamp       DATE,
    updated_timestamp       DATE,
    public_release_flag     BOOLEAN,
    award_granted           TEXT
);

INSERT INTO multiverse_event_participation (participation_id, event_id, hero_id, role, entry_date, exit_date, outcome, universe_origin, universe_destination, power_utilization_level, equipment_used, casualties_reported, collaborators_count, strategic_importance, debrief_notes, commander_id, tactical_score, resource_consumption_mj, temporal_displacement, timeline_impact_score, created_timestamp, updated_timestamp, public_release_flag, award_granted)
VALUES (1, 9001, 1, 'Lead', '2024-06-01', '2024-06-03', 'Success', 'Prime', 'Ethereal', 95, 'Photon Shield', 0, 5, 'Critical', 'Operation stabilized the rift', 400, 88, 1500.00, 1, 10, '2024-06-03', '2024-06-04', 1, 'Valor Medal');

INSERT INTO multiverse_event_participation (participation_id, event_id, hero_id, role, entry_date, exit_date, outcome, universe_origin, universe_destination, power_utilization_level, equipment_used, casualties_reported, collaborators_count, strategic_importance, debrief_notes, commander_id, tactical_score, resource_consumption_mj, temporal_displacement, timeline_impact_score, created_timestamp, updated_timestamp, public_release_flag, award_granted)
VALUES (2, 9002, 2, 'Support', '2024-05-20', '2024-05-22', 'Partial Success', 'DarkRealm', 'Prime', 70, 'Shadow Cloak', 2, 8, 'High', 'Secured intel but suffered losses', 401, 75, 1200.50, 0, 7, '2024-05-22', '2024-05-23', 0, NULL);

INSERT INTO multiverse_event_participation (participation_id, event_id, hero_id, role, entry_date, exit_date, outcome, universe_origin, universe_destination, power_utilization_level, equipment_used, casualties_reported, collaborators_count, strategic_importance, debrief_notes, commander_id, tactical_score, resource_consumption_mj, temporal_displacement, timeline_impact_score, created_timestamp, updated_timestamp, public_release_flag, award_granted)
VALUES (3, 9003, 3, 'Strategist', '2024-04-10', '2024-04-12', 'Failure', 'TimeStream', 'Prime', 85, 'Chrono Analyzer', 5, 3, 'Moderate', 'Mission aborted due to temporal instability', 402, 60, 1800.75, 1, 4, '2024-04-12', '2024-04-13', 0, NULL);