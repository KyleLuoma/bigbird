-- Global fan analytics across regions and platforms
CREATE TABLE global_fan_analytics (
    id                     INTEGER PRIMARY KEY,
    report_date            TEXT,
    total_fans             INTEGER,
    active_fans            INTEGER,
    new_fans               INTEGER,
    region_north_america   INTEGER,
    region_europe          INTEGER,
    region_asia            INTEGER,
    region_south_america   INTEGER,
    region_africa          INTEGER,
    avg_sessions_per_fan  REAL,
    avg_time_per_session   REAL,
    engagement_score       REAL,
    churn_rate             REAL,
    net_promoter_score     REAL,
    social_mentions        INTEGER,
    website_visits         INTEGER,
    app_downloads          INTEGER,
    email_subscriptions    INTEGER,
    premium_subscribers    INTEGER,
    ad_impressions         INTEGER,
    ad_clicks              INTEGER
);

INSERT INTO global_fan_analytics VALUES (1, '2024-12-31', 5000000, 3200000, 150000, 1200000, 800000, 1100000, 600000, 400000, 3.4, 45.2, 78.5, 4.2, 62.1, 250000, 1800000, 750000, 300000, 850000, 4500000, 190000);
INSERT INTO global_fan_analytics VALUES (2, '2025-12-31', 5600000, 3400000, 180000, 1300000, 850000, 1150000, 650000, 420000, 3.6, 46.1, 80.2, 3.9, 64.3, 270000, 1900000, 800000, 320000, 900000, 4700000, 200000);
INSERT INTO global_fan_analytics VALUES (3, '2026-12-31', 6100000, 3600000, 200000, 1400000, 900000, 1200000, 700000, 440000, 3.7, 47.0, 81.7, 3.7, 66.0, 290000, 2000000, 850000, 340000, 950000, 4900000, 210000);

-- Fitness and health profile for each hero
CREATE TABLE hero_fitness_profile (
    hero_id                INTEGER,
    assessment_date        TEXT,
    height_cm              INTEGER,
    weight_kg              INTEGER,
    bmi                    REAL,
    body_fat_percent       REAL,
    cardio_capacity_ml     INTEGER,
    max_lift_deadlift_kg   INTEGER,
    max_lift_benchpress_kg INTEGER,
    flexibility_score      INTEGER,
    agility_score          INTEGER,
    endurance_score        INTEGER,
    injury_history         TEXT,
    current_injury_status  TEXT,
    training_hours_per_week INTEGER,
    diet_type              TEXT,
    supplement_plan        TEXT,
    sleep_hours_avg        REAL,
    stress_level           INTEGER,
    recovery_score         INTEGER,
    overall_fitness_rating REAL,
    FOREIGN KEY (hero_id) REFERENCES superhero(id)
);

INSERT INTO hero_fitness_profile VALUES (1, '2025-06-01', 188, 95, 26.9, 12.5, 5200, 200, 150, 88, 92, 95, 'none', 'none', 20, 'highprotein', 'multivitamin', 7.5, 3, 85, 88.2);
INSERT INTO hero_fitness_profile VALUES (2, '2025-07-15', 175, 68, 22.2, 9.8, 4800, 150, 100, 85, 88, 90, 'sprainedankle', 'rehab', 18, 'balanced', 'omega3', 6.8, 4, 80, 84.5);
INSERT INTO hero_fitness_profile VALUES (3, '2025-08-20', 182, 80, 24.2, 11.0, 5000, 180, 130, 90, 94, 93, 'none', 'none', 22, 'keto', 'proteinshake', 7.2, 2, 88, 90.1);

-- Log of events that occur across the multiverse
CREATE TABLE multiverse_event_log (
    event_id                INTEGER PRIMARY KEY,
    event_name              TEXT,
    multiverse_branch       TEXT,
    occurrence_date         TEXT,
    involved_hero_ids       TEXT,
    involved_villain_ids    TEXT,
    location                TEXT,
    impact_level            INTEGER,
    narrative_importance    INTEGER,
    causality_description   TEXT,
    resolution_status       TEXT,
    timeline_impact         TEXT,
    alternate_outcome_possible INTEGER,
    fan_reaction_score      REAL,
    media_coverage_score    REAL,
    official_canonical      INTEGER,
    created_by              TEXT,
    last_updated            TEXT,
    notes                   TEXT,
    source_document         TEXT
);

INSERT INTO multiverse_event_log VALUES (101, 'Quantum Rift Collapse', 'BranchA', '2025-09-10', '1,4,7', '12,15', 'NeoCity', 9, 10, 'energyoverload', 'resolved', 'timelineshift', 1, 85.7, 78.4, 1, 'drx', '2025-09-12', 'minorspatialtear', 'eventlog1');
INSERT INTO multiverse_event_log VALUES (102, 'Eclipse of Hope', 'BranchB', '2025-11-03', '2,5', '19', 'SolarStation', 7, 8, 'darkenergy', 'inprogress', 'partialreset', 0, 72.3, 65.2, 0, 'sylvia', '2025-11-05', 'awaitingresolution', 'eventlog2');
INSERT INTO multiverse_event_log VALUES (103, 'Chrono Surge', 'BranchC', '2026-01-15', '3,8,9', '21,22', 'TimeVault', 8, 9, 'timeparadox', 'resolved', 'timelinestabilized', 1, 90.1, 82.9, 1, 'morgan', '2026-01-16', 'stabilizedtimeline', 'eventlog3');

-- Licensed product lines for superhero merchandise
CREATE TABLE licensed_product_line (
    product_line_id          INTEGER PRIMARY KEY,
    product_name             TEXT,
    licensee_company         TEXT,
    license_start_date       TEXT,
    license_end_date         TEXT,
    region                   TEXT,
    product_category         TEXT,
    retail_price_usd         REAL,
    wholesale_price_usd      REAL,
    units_produced           INTEGER,
    units_sold               INTEGER,
    inventory_level          INTEGER,
    marketing_budget_usd     REAL,
    sales_channel            TEXT,
    distribution_center_id   INTEGER,
    flagship_store_id        INTEGER,
    online_store_url         TEXT,
    sustainability_rating    INTEGER,
    target_audience          TEXT,
    compliance_certifications TEXT,
    royalty_rate_percent     REAL,
    contract_id              INTEGER
);

INSERT INTO licensed_product_line VALUES (201, 'AlphaShield', 'GearWorks', '2024-01-01', '2026-12-31', 'NorthAmerica', 'Apparel', 49.99, 30.00, 100000, 85000, 15000, 500000, 'Online', 3, 12, 'www.gearworks.com/alphashield', 8, 'Teens', 'ISO9001', 7.5, 301);
INSERT INTO licensed_product_line VALUES (202, 'NovaBlaster', 'TechForge', '2025-03-15', '2028-03-14', 'Europe', 'Toy', 129.99, 80.00, 50000, 47000, 3000, 300000, 'Retail', 5, 22, 'shop.techforge.eu/novablaster', 9, 'Kids', 'CEMark', 9.0, 302);
INSERT INTO licensed_product_line VALUES (203, 'QuantumChronicles', 'StoryPress', '2024-07-01', '2027-06-30', 'Asia', 'Comic', 9.99, 5.00, 200000, 190000, 10000, 200000, 'Digital', 2, 7, 'digital.storypress.com/quantumchronicles', 7, 'Adults', 'ISBN', 6.0, 303);

-- Schedule for releasing digital content across platforms
CREATE TABLE digital_content_release_schedule (
    schedule_id              INTEGER PRIMARY KEY,
    content_title            TEXT,
    platform                 TEXT,
    release_date             TEXT,
    version_number           TEXT,
    content_type             TEXT,
    estimated_duration_minutes INTEGER,
    rating                   TEXT,
    language                 TEXT,
    subtitles_available      INTEGER,
    audio_language           TEXT,
    region_restriction       TEXT,
    parental_advisory        INTEGER,
    content_status           TEXT,
    creator_team             TEXT,
    lead_editor              TEXT,
    qos_score                REAL,
    concurrent_streams_limit INTEGER,
    promotional_budget_usd   REAL,
    expected_viewership      INTEGER,
    actual_viewership        INTEGER,
    post_release_review_score REAL,
    notes                    TEXT
);

INSERT INTO digital_content_release_schedule VALUES (301, 'ShadowStrike Trailer', 'YouTube', '2025-05-01', 'v1.0', 'Video', 2, 'PG13', 'English', 1, 'English', 'Global', 0, 'Published', 'VideoTeamA', 'Lena', 95.2, 1000000, 150000, 5000000, 5200000, 8.7, 'HighEngagement');
INSERT INTO digital_content_release_schedule VALUES (302, 'ArcaneSaga Episode5', 'StreamFlix', '2025-06-15', 'S2E5', 'Series', 45, 'TVMA', 'English', 1, 'English', 'US', 1, 'Scheduled', 'SeriesTeamB', 'Marco', 89.4, 500000, 300000, 2000000, 0, 0, 0.0, 'PendingRelease');
INSERT INTO digital_content_release_schedule VALUES (303, 'HeroicOrigins Comic', 'ComiX', '2025-07-20', 'Issue12', 'Comic', 0, 'E', 'English', 0, 'N/A', 'EU', 0, 'Published', 'ComicTeamC', 'Aisha', 92.0, 0, 80000, 120000, 130000, 9.1, 'PositiveFeedback');

-- Archive of character origin stories
CREATE TABLE character_origin_archive (
    origin_id                INTEGER PRIMARY KEY,
    character_name           TEXT,
    origin_story             TEXT,
    birthplace               TEXT,
    birth_year               INTEGER,
    upbringing               TEXT,
    first_appearance_issue_id INTEGER,
    creator_name             TEXT,
    inspiration_source       TEXT,
    mythological_reference   TEXT,
    alignment_id             INTEGER,
    race_id                  INTEGER,
    power_origin             TEXT,
    training_background      TEXT,
    mentor_name              TEXT,
    pivotal_event            TEXT,
    psychological_profile    TEXT,
    moral_code               TEXT,
    transformation_event     TEXT,
    legacy_impact            TEXT,
    archival_source          TEXT,
    last_updated             TEXT,
    FOREIGN KEY (alignment_id) REFERENCES alignment(id),
    FOREIGN KEY (race_id) REFERENCES race(id)
);

INSERT INTO character_origin_archive VALUES (401, 'SolarFlare', 'Found in a solar storm', 'Sunvale', 1985, 'Orphaned', 45, 'L. Kent', 'Myth of Helios', 'Helios', 1, 2, 'SolarRadiation', 'MilitaryAcademy', 'GeneralStone', 'SolarEclipse', 'Stoic', 'ProtectLife', 'FusionEvent', 'InspiredGenerations', 'ArchiveVault', '2025-04-10');
INSERT INTO character_origin_archive VALUES (402, 'NightShade', 'Raised by shadow cult', 'Gotham', 1990, 'Secretive', 78, 'S. Noir', 'Nightmare folklore', 'Nyx', 2, 3, 'DarkEnergy', 'UnderworldDojo', 'MasterUmbra', 'MoonRitual', 'Brooding', 'BalanceLightDark', 'CrisisNight', 'CultivationOfMystery', 'SecretRepository', '2025-04-12');
INSERT INTO character_origin_archive VALUES (403, 'AquaPulse', 'Born in deep sea lab', 'Atlantis', 1995, 'Scientific', 102, 'M. Rivera', 'Poseidon myths', 'Poseidon', 1, 4, 'HydroKinetic', 'MarineInstitute', 'DrMarine', 'Tsunami', 'Calm', 'PreserveOceans', 'OceanicShift', 'WaveOfHope', 'MarineArchives', '2025-04-15');

-- Aggregate sales metrics per fiscal period
CREATE TABLE aggregate_sales_metrics (
    metric_id                INTEGER PRIMARY KEY,
    fiscal_year              INTEGER,
    quarter                  INTEGER,
    total_revenue_usd        REAL,
    net_profit_usd           REAL,
    gross_margin_percent     REAL,
    operating_expense_usd    REAL,
    marketing_expense_usd    REAL,
    r_and_d_expense_usd      REAL,
    ecommerce_sales_usd      REAL,
    retail_sales_usd         REAL,
    licensing_sales_usd      REAL,
    merchandise_units_sold   INTEGER,
    digital_units_sold       INTEGER,
    average_order_value_usd  REAL,
    customer_acquisition_cost_usd REAL,
    churn_rate_percent       REAL,
    net_promoter_score       REAL,
    regional_sales_north_america_usd REAL,
    regional_sales_europe_usd REAL,
    regional_sales_asia_usd  REAL,
    created_timestamp        TEXT,
    updated_timestamp        TEXT
);

INSERT INTO aggregate_sales_metrics VALUES (501, 2024, 1, 120000000.0, 25000000.0, 20.8, 30000000.0, 15000000.0, 8000000.0, 40000000.0, 50000000.0, 20000000.0, 800000, 1200000, 150.0, 45.0, 5.2, 70.5, 50000000.0, 30000000.0, 20000000.0, '2024-04-01', '2024-04-30');
INSERT INTO aggregate_sales_metrics VALUES (502, 2024, 2, 130000000.0, 27000000.0, 21.5, 31000000.0, 16000000.0, 8500000.0, 42000000.0, 54000000.0, 21000000.0, 850000, 1250000, 152.0, 44.0, 5.0, 72.0, 54000000.0, 32000000.0, 21000000.0, '2024-07-01', '2024-07-31');
INSERT INTO aggregate_sales_metrics VALUES (503, 2024, 3, 140000000.0, 29000000.0, 22.1, 32000000.0, 17000000.0, 9000000.0, 44000000.0, 58000000.0, 22000000.0, 900000, 1300000, 154.0, 43.5, 4.8, 73.3, 58000000.0, 34000000.0, 22000000.0, '2024-10-01', '2024-10-31');

-- Allocation of studio resources
CREATE TABLE studio_resource_allocation (
    allocation_id            INTEGER PRIMARY KEY,
    studio_name              TEXT,
    resource_type            TEXT,
    total_units              INTEGER,
    allocated_units          INTEGER,
    available_units          INTEGER,
    allocation_start_date    TEXT,
    allocation_end_date      TEXT,
    cost_per_unit_usd        REAL,
    total_cost_usd           REAL,
    responsible_manager      TEXT,
    project_name             TEXT,
    priority_level           INTEGER,
    utilization_percent      REAL,
    maintenance_schedule     TEXT,
    depreciation_rate_percent REAL,
    notes                    TEXT,
    last_audit_date          TEXT,
    compliance_status        TEXT,
    external_vendor          TEXT,
    contract_number          TEXT,
    warranty_expiration      TEXT
);

INSERT INTO studio_resource_allocation VALUES (601, 'AlphaStudio', 'RenderFarm', 120, 95, 25, '2025-01-01', '2027-12-31', 1500.0, 142500.0, 'Jensen', 'SpaceOdyssey', 1, 85.5, 'Quarterly', 12.0, 'HighPerformance', '2026-01-15', 'Compliant', 'TechSupplyCo', 'C-1203', '2028-12-31');
INSERT INTO studio_resource_allocation VALUES (602, 'BetaStudio', 'SoundBooth', 30, 28, 2, '2025-03-01', '2026-02-28', 8000.0, 224000.0, 'Mira', 'Echoes', 2, 93.3, 'Annually', 8.0, 'AcousticTreatments', '2025-12-20', 'Compliant', 'AudioGearInc', 'C-1210', '2027-02-28');
INSERT INTO studio_resource_allocation VALUES (603, 'GammaStudio', 'MotionCapture', 15, 10, 5, '2025-06-15', '2028-06-14', 12000.0, 180000.0, 'Leo', 'CyborgRun', 1, 66.7, 'BiAnnual', 10.5, 'CalibrationNeeded', '2025-09-01', 'Pending', 'MocapSystems', 'C-1225', '2029-06-14');

-- Tracker for storyline development progress
CREATE TABLE storyline_development_tracker (
    tracker_id               INTEGER PRIMARY KEY,
    storyline_name           TEXT,
    lead_writer              TEXT,
    start_date               TEXT,
    projected_end_date       TEXT,
    current_phase            TEXT,
    chapters_completed       INTEGER,
    total_chapters           INTEGER,
    word_count_current       INTEGER,
    word_count_target        INTEGER,
    plot_complexity_score    INTEGER,
    character_count          INTEGER,
    major_twist_planned      INTEGER,
    fan_feedback_score       REAL,
    editorial_review_status  TEXT,
    budget_usd               REAL,
    resources_assigned       TEXT,
    risk_level               INTEGER,
    contingency_plan         TEXT,
    last_update              TEXT,
    notes                    TEXT,
    approval_status          TEXT
);

INSERT INTO storyline_development_tracker VALUES (701, 'Chronicles of Dawn', 'Ava', '2025-01-10', '2026-12-31', 'Writing', 5, 20, 35000, 140000, 8, 12, 1, 78.4, 'Pending', 250000.0, 'TeamAlpha', 2, 'BudgetReserve', '2025-04-01', 'OnTrack', 'AwaitingEdit');
INSERT INTO storyline_development_tracker VALUES (702, 'Shadow Realm', 'Rex', '2025-03-01', '2026-06-30', 'Illustration', 12, 15, 90000, 120000, 9, 15, 0, 82.1, 'InReview', 180000.0, 'TeamBeta', 3, 'ScopeAdjustment', '2025-05-15', 'HighPriority', 'Approved');
INSERT INTO storyline_development_tracker VALUES (703, 'Future Echoes', 'Lina', '2025-05-20', '2027-03-15', 'Storyboard', 3, 10, 25000, 80000, 7, 9, 1, 74.6, 'Draft', 210000.0, 'TeamGamma', 1, 'ExtraArtists', '2025-07-30', 'InitialPhase', 'Pending');

-- Fan community interactions
CREATE TABLE fan_community_interaction (
    interaction_id           INTEGER PRIMARY KEY,
    fan_id                   INTEGER,
    community_name           TEXT,
    interaction_type         TEXT,
    interaction_date         TEXT,
    content_shared           TEXT,
    likes_count              INTEGER,
    comments_count           INTEGER,
    shares_count             INTEGER,
    sentiment_score          REAL,
    moderation_flag          INTEGER,
    response_time_seconds    INTEGER,
    replied_by_staff         INTEGER,
    staff_responder_name     TEXT,
    thread_topic             TEXT,
    platform                 TEXT,
    device_type              TEXT,
    location                 TEXT,
    logged_in_status         INTEGER,
    reputation_score         INTEGER,
    badges_earned            TEXT,
    last_activity_date       TEXT
);

INSERT INTO fan_community_interaction VALUES (801, 1001, 'HeroFansUnited', 'Post', '2025-04-10', 'FanArtAlpha', 120, 15, 30, 0.85, 0, 180, 1, 'Mia', 'ArtworkShowcase', 'Forum', 'Desktop', 'USA', 1, 420, 'ArtistBadge', '2025-04-12');
INSERT INTO fan_community_interaction VALUES (802, 1002, 'VillainVault', 'Comment', '2025-04-12', 'InsightfulAnalysis', 45, 22, 5, 0.70, 0, 240, 0, '', 'PlotTheory', 'SocialMedia', 'Mobile', 'UK', 1, 315, 'DebateBadge', '2025-04-13');
INSERT INTO fan_community_interaction VALUES (803, 1003, 'MultiverseMinds', 'Reply', '2025-04-15', 'AgreementWithPost', 30, 5, 2, 0.92, 0, 90, 1, 'Sam', 'LoreDiscussion', 'ChatApp', 'Tablet', 'Canada', 0, 210, 'HelperBadge', '2025-04-16');