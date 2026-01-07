-- Hero fan loyalty program tracking
CREATE TABLE hero_fan_loyalty_program
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    program_name           TEXT,
    tier_level             TEXT,
    enrollment_date        DATE,
    points_required        INTEGER,
    benefit_description    TEXT,
    expiration_month       INTEGER,
    renewal_required       TEXT,
    partner_company        TEXT,
    max_members            INTEGER,
    region                 TEXT,
    eligibility_criteria   TEXT,
    reward_type            TEXT,
    points_balance         INTEGER,
    last_update            DATE,
    status                 TEXT,
    marketing_channel      TEXT,
    contact_email          TEXT,
    contact_phone          TEXT,
    notes                  TEXT
);

INSERT INTO hero_fan_loyalty_program VALUES (1, 'UltimateAlliance', 'Gold', '2023-01-15', 5000, 'ExclusiveMerch', 12, 'Yes', 'MegaCorp', 2500, 'NorthAmerica', 'Age18Plus', 'PhysicalItem', 1500, '2024-02-01', 'Active', 'Email', 'contact@mega.com', '5551234', 'LaunchPhase');
INSERT INTO hero_fan_loyalty_program VALUES (2, 'SidekickClub', 'Silver', '2022-06-20', 2500, 'DigitalBadge', 24, 'No', 'SideCo', 4000, 'Europe', 'SubscriberOnly', 'DigitalItem', 800, '2024-01-15', 'Active', 'SocialMedia', 'info@sideco.com', '5555678', 'SeasonalPromo');
INSERT INTO hero_fan_loyalty_program VALUES (3, 'LegendaryFans', 'Platinum', '2021-11-05', 10000, 'VIPEventAccess', 36, 'Yes', 'LegendInc', 1200, 'Asia', 'InvitationOnly', 'EventPass', 3000, '2024-03-10', 'Inactive', 'DirectMail', 'support@legendinc.com', '5559012', 'ExpiredProgram');

-- Global distribution center details
CREATE TABLE global_distribution_center
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    center_name            TEXT,
    country_code           TEXT,
    city                   TEXT,
    zip_code               TEXT,
    facility_size_sqft     INTEGER,
    dock_count             INTEGER,
    refrigeration_units    INTEGER,
    automated_sorting      TEXT,
    security_level         TEXT,
    operational_since      DATE,
    manager_name           TEXT,
    contact_number         TEXT,
    email_address          TEXT,
    latitude               REAL,
    longitude              REAL,
    timezone               TEXT,
    daily_capacity_units   INTEGER,
    weekly_operating_days  INTEGER,
    notes                  TEXT,
    sustainability_cert   TEXT,
    last_audit_date        DATE
);

INSERT INTO global_distribution_center VALUES (1, 'NorthHub', 'US', 'Chicago', '60601', 120000, 12, 4, 'Yes', 'Level3', '2015-04-01', 'Alice Monroe', '5551111', 'northhub@logi.com', 41.8781, -87.6298, 'CST', 20000, 6, 'Primary Midwest hub', 'ISO14001', '2023-12-15');
INSERT INTO global_distribution_center VALUES (2, 'EuroLink', 'DE', 'Berlin', '10115', 95000, 9, 2, 'No', 'Level2', '2017-09-15', 'Klaus Schmidt', '5552222', 'eurolink@logi.com', 52.5200, 13.4050, 'CET', 15000, 7, 'European gateway', 'ISO50001', '2023-11-20');
INSERT INTO global_distribution_center VALUES (3, 'AsiaNode', 'JP', 'Tokyo', '100-0001', 130000, 15, 5, 'Yes', 'Level4', '2019-01-10', 'Yuki Tanaka', '5553333', 'asianode@logi.com', 35.6895, 139.6917, 'JST', 25000, 5, 'Pacific hub', 'LEEDGold', '2024-01-05');

-- Animated series season metadata
CREATE TABLE animated_series_season
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    series_title           TEXT,
    season_number          INTEGER,
    episode_count          INTEGER,
    production_start_date  DATE,
    production_end_date    DATE,
    broadcast_start_date   DATE,
    broadcast_end_date     DATE,
    network                TEXT,
    rating                 TEXT,
    budget_million_usd     REAL,
    lead_director          TEXT,
    animation_studio       TEXT,
    voice_cast_lead        TEXT,
    genre                  TEXT,
    target_audience        TEXT,
    streaming_platform     TEXT,
    hd_available           TEXT,
    subtitles_available    TEXT,
    dubbing_languages      TEXT,
    merchandise_line       TEXT,
    marketing_campaign     TEXT,
    notes                  TEXT,
    status                 TEXT
);

INSERT INTO animated_series_season VALUES (1, 'Chronicle of Heroes', 1, 12, '2022-01-05', '2022-06-15', '2022-07-01', '2022-09-30', 'KidsNetwork', 'TV-Y7', 8.5, 'Laura Smith', 'DreamAnim', 'John Doe', 'ActionAdventure', 'Kids', 'Streamify', 'Yes', 'Yes', 'English,Spanish', 'HeroFigures', 'LaunchBlast', 'First season debut', 'Aired');
INSERT INTO animated_series_season VALUES (2, 'Chronicle of Heroes', 2, 10, '2023-02-10', '2023-07-20', '2023-08-05', '2023-10-15', 'KidsNetwork', 'TV-Y7', 7.0, 'Mark Lee', 'DreamAnim', 'Jane Roe', 'ActionAdventure', 'Kids', 'Streamify', 'Yes', 'Yes', 'English,French', 'HeroApparel', 'SummerPromo', 'Mid-series', 'Aired');
INSERT INTO animated_series_season VALUES (3, 'Galaxy Guardians', 1, 13, '2021-03-01', '2021-09-01', '2021-10-10', '2022-01-20', 'SpaceChannel', 'TV-PG', 12.0, 'Emily Zhang', 'StarWorks', 'Mike K', 'SciFi', 'Teens', 'StarStream', 'Yes', 'Yes', 'English,German', 'GuardianToys', 'GalacticLaunch', 'Premiere season', 'Aired');

-- Virtual collectible market transactions
CREATE TABLE virtual_collectible_market
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    transaction_id         TEXT,
    collector_id           TEXT,
    collectible_name       TEXT,
    series_name            TEXT,
    rarity_tier            TEXT,
    edition_number         INTEGER,
    purchase_price_usd     REAL,
    sale_price_usd         REAL,
    transaction_date       DATE,
    platform_name          TEXT,
    wallet_address         TEXT,
    blockchain_type        TEXT,
    gas_fee_usd            REAL,
    listing_status         TEXT,
    auction_start_date     DATE,
    auction_end_date       DATE,
    buyer_rating           INTEGER,
    seller_rating          INTEGER,
    verification_status    TEXT,
    transfer_timestamp     TIMESTAMP,
    notes                  TEXT,
    ipfs_hash              TEXT,
    escrow_used            TEXT
);

INSERT INTO virtual_collectible_market VALUES (1, 'TXN001', 'COLL1001', 'Omega Shield', 'HeroicArtifacts', 'Legendary', 1, 1500.00, 1800.00, '2024-02-10', 'MetaMarket', '0xABC123', 'Ethereum', 12.50, 'Sold', '2024-02-01', '2024-02-09', 5, 5, 'Verified', '2024-02-10 14:23:00', 'First sale', 'QmXyzHash1', 'Yes');
INSERT INTO virtual_collectible_market VALUES (2, 'TXN002', 'COLL1002', 'Nebula Blade', 'CosmicWeapons', 'Epic', 7, 750.00, 900.00, '2024-01-22', 'MetaMarket', '0xDEF456', 'Ethereum', 8.30, 'Sold', '2024-01-15', '2024-01-21', 4, 5, 'Verified', '2024-01-22 09:45:00', 'Quick flip', 'QmXyzHash2', 'No');
INSERT INTO virtual_collectible_market VALUES (3, 'TXN003', 'COLL1003', 'Starlight Cape', 'HeroicApparel', 'Rare', 3, 300.00, NULL, '2024-03-05', 'MetaMarket', '0xGHI789', 'Ethereum', 5.00, 'Listed', '2024-03-05', NULL, NULL, NULL, 'Pending', '2024-03-05 12:00:00', 'Listing awaiting bid', 'QmXyzHash3', 'Yes');

-- Crossover event timeline
CREATE TABLE crossover_event_timeline
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    event_name             TEXT,
    primary_universe       TEXT,
    secondary_universe     TEXT,
    start_date             DATE,
    end_date               DATE,
    coordinating_team      TEXT,
    venue_name             TEXT,
    city                   TEXT,
    country                TEXT,
    expected_audience      INTEGER,
    broadcast_partner      TEXT,
    live_stream_url        TEXT,
    ticket_price_usd       REAL,
    sponsorship_level      TEXT,
    marketing_budget_usd   REAL,
    security_status        TEXT,
    logistical_notes       TEXT,
    post_event_report_id   TEXT,
    archival_location      TEXT,
    media_coverage_links   TEXT,
    fan_engagement_score   INTEGER,
    summary                TEXT,
    status                 TEXT
);

INSERT INTO crossover_event_timeline VALUES (1, 'Heroes United', 'Earth-Prime', 'Galaxy-7', '2024-06-01', '2024-06-03', 'TeamAlpha', 'Grand Hall', 'NewYork', 'USA', 20000, 'GlobalNews', 'http://stream.com/heroesunited', 99.99, 'Platinum', 500000, 'Secured', 'All systems go', 'RPT001', 'ArchiveRoom5', 'http://media.com/hub1', 85, 'Successful convergence', 'Completed');
INSERT INTO crossover_event_timeline VALUES (2, 'Villains Clash', 'DarkRealm', 'Earth-Prime', '2024-09-10', '2024-09-12', 'TeamBeta', 'Arena Center', 'London', 'UK', 15000, 'WorldVision', 'http://stream.com/villainsclash', 79.99, 'Gold', 350000, 'Partial', 'Delay due to weather', 'RPT002', 'ArchiveRoom2', 'http://media.com/hub2', 70, 'Mixed reception', 'Completed');
INSERT INTO crossover_event_timeline VALUES (3, 'Multiverse Mixer', 'UniverseX', 'UniverseY', '2025-01-20', '2025-01-22', 'TeamGamma', 'Convention Center', 'Tokyo', 'Japan', 25000, 'AsiaBroadcast', 'http://stream.com/multiversemixer', 119.99, 'Silver', 600000, 'Pending', 'Finalizing contracts', 'RPT003', 'ArchiveRoom9', 'http://media.com/hub3', 90, 'Highly anticipated', 'Planned');

-- Heroic achievement award registry
CREATE TABLE heroic_achievement_award
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    award_name             TEXT,
    award_category         TEXT,
    recipient_hero_id      INTEGER,
    award_year             INTEGER,
    citation_text          TEXT,
    award_level            TEXT,
    presenting_organization TEXT,
    ceremony_date          DATE,
    ceremony_location      TEXT,
    trophy_material        TEXT,
    monetary_prize_usd     REAL,
    media_release_url      TEXT,
    nomination_deadline    DATE,
    eligibility_criteria   TEXT,
    voting_method          TEXT,
    total_nominations      INTEGER,
    winner_announced_date  DATE,
    press_kit_url          TEXT,
    archival_record_id     TEXT,
    notes                  TEXT,
    status                 TEXT,
    sponsor_name           TEXT,
    sponsor_contribution   REAL
);

INSERT INTO heroic_achievement_award VALUES (1, 'Valor Medal', 'Bravery', 101, 2023, 'For extraordinary courage in battle', 'Gold', 'Global Hero Council', '2023-12-10', 'Hall of Heroes', 'GoldPlated', 5000, 'http://press.com/valor2023', '2023-11-01', 'Active duty hero', 'CommitteeVote', 150, '2023-12-01', 'http://press.com/kitvalor', 'REC001', 'First award of year', 'Awarded', 'MegaCorp', 2000);
INSERT INTO heroic_achievement_award VALUES (2, 'Shield of Honor', 'Defense', 102, 2022, 'For exceptional defense of civilian population', 'Silver', 'International Guard', '2022-08-15', 'Grand Auditorium', 'Silver', 3000, 'http://press.com/shield2022', '2022-07-01', 'Minimum 5 missions', 'PublicVote', 200, '2022-08-05', 'http://press.com/kitshield', 'REC002', 'Second annual award', 'Awarded', 'ShieldCo', 1500);
INSERT INTO heroic_achievement_award VALUES (3, 'Innovator Trophy', 'Science', 103, 2024, 'For breakthrough in metahuman research', 'Bronze', 'Science Alliance', '2024-03-20', 'Research Center', 'Bronze', 4000, 'http://press.com/innovator2024', '2024-02-10', 'Research contribution', 'ExpertPanel', 120, '2024-03-10', 'http://press.com/kitinnov', 'REC003', 'New category introduced', 'Pending', 'TechFund', 2500);

-- Metahuman research lab inventory
CREATE TABLE metahuman_research_lab
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    lab_name               TEXT,
    location_city          TEXT,
    location_country       TEXT,
    established_year       INTEGER,
    director_name          TEXT,
    staff_count            INTEGER,
    active_projects        INTEGER,
    biosafety_level        TEXT,
    equipment_budget_usd   REAL,
    dna_sequencer_model    TEXT,
    cryogenic_units        INTEGER,
    cell_culture_rooms     INTEGER,
    microscopy_type        TEXT,
    data_storage_tb        REAL,
    compliance_certified   TEXT,
    grant_funding_usd      REAL,
    collaboration_partners TEXT,
    recent_publication_id  TEXT,
    safety_incident_log    TEXT,
    waste_disposal_method  TEXT,
    training_program       TEXT,
    note                   TEXT,
    status                 TEXT,
    accreditation_body     TEXT,
    last_inspection_date   DATE
);

INSERT INTO metahuman_research_lab VALUES (1, 'Alpha Genetics', 'SanFrancisco', 'USA', 2010, 'DrAlice Monroe', 45, 8, 'Level3', 2500000, 'SeqX200', 5, 3, 'Electron', 120.5, 'Yes', 5000000, 'BioLabs,GenTech', 'PUB001', 'None', 'Incineration', 'BioSafety101', 'Leading lab', 'Active', 'USABio', '2023-11-30');
INSERT INTO metahuman_research_lab VALUES (2, 'Beta BioDynamics', 'Berlin', 'Germany', 2015, 'DrKlaus Weber', 30, 5, 'Level2', 1800000, 'SeqPro500', 3, 2, 'Confocal', 80.0, 'Yes', 3000000, 'EuroScience,HealthInstitute', 'PUB002', 'Minor spill 2022', 'Chemical', 'SafetyFirst', 'Renovated wing', 'Active', 'EUHealth', '2023-10-15');
INSERT INTO metahuman_research_lab VALUES (3, 'Gamma Helix', 'Tokyo', 'Japan', 2018, 'DrYuki Tanaka', 25, 4, 'Level3', 2100000, 'HelixMax', 4, 2, 'Fluorescence', 95.3, 'No', 2500000, 'AsiaBio,TechVentures', 'PUB003', 'None', 'Autoclave', 'AdvancedProtocol', 'New facilities', 'Active', 'JapanScience', '2023-12-01');

-- Cosmic energy transaction ledger
CREATE TABLE cosmic_energy_transaction
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    transaction_code       TEXT,
    source_entity          TEXT,
    destination_entity     TEXT,
    energy_amount_megajoules REAL,
    transaction_date       DATE,
    verification_status    TEXT,
    blockchain_reference   TEXT,
    contract_id            TEXT,
    fee_megajoules         REAL,
    settlement_currency    TEXT,
    exchange_rate_to_usd   REAL,
    regulator_approval     TEXT,
    compliance_notes       TEXT,
    audit_log_id           TEXT,
    notes                  TEXT,
    status                 TEXT,
    initiated_by           TEXT,
    processed_by           TEXT,
    approval_timestamp     TIMESTAMP,
    settlement_timestamp   TIMESTAMP,
    external_reference     TEXT,
    risk_assessment_score  INTEGER,
    jurisdiction           TEXT
);

INSERT INTO cosmic_energy_transaction VALUES (1, 'CE001', 'SolarArrayX', 'StarStationA', 1500.75, '2024-01-05', 'Verified', '0xAAA111', 'CNTR001', 12.5, 'CEU', 0.85, 'Approved', 'Meets standards', 'AUD001', 'First large transfer', 'Completed', 'OpsTeam1', 'FinanceDept', '2024-01-05 08:00:00', '2024-01-05 09:30:00', 'REF123', 20, 'MarsTerritory');
INSERT INTO cosmic_energy_transaction VALUES (2, 'CE002', 'NebulaCore', 'PlanetBaseB', 800.30, '2024-02-12', 'Pending', '0xBBB222', 'CNTR002', 8.0, 'CEU', 0.90, 'Pending', 'Awaiting compliance', 'AUD002', 'Medium transfer', 'InProcess', 'OpsTeam2', 'FinanceDept', '2024-02-12 10:15:00', NULL, 'REF456', 35, 'LunarColony');
INSERT INTO cosmic_energy_transaction VALUES (3, 'CE003', 'QuantumReactor', 'DeepSpaceStation', 2500.00, '2024-03-20', 'Verified', '0xCCC333', 'CNTR003', 15.0, 'CEU', 0.80, 'Approved', 'All clear', 'AUD003', 'High priority transfer', 'Completed', 'OpsTeam3', 'FinanceDept', '2024-03-20 14:45:00', '2024-03-20 16:00:00', 'REF789', 15, 'OuterRim');

-- Interstellar supply route schedule
CREATE TABLE interstellar_supply_route
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    route_name             TEXT,
    origin_station         TEXT,
    destination_station    TEXT,
    departure_date         DATE,
    arrival_date           DATE,
    cargo_type             TEXT,
    cargo_volume_cubic_m   REAL,
    transport_ship_name    TEXT,
    captain_name           TEXT,
    crew_size              INTEGER,
    fuel_consumption_mt    REAL,
    navigation_waypoints   TEXT,
    security_level         TEXT,
    insurance_provider     TEXT,
    insurance_policy_id    TEXT,
    customs_clearance_status TEXT,
    estimated_cost_usd     REAL,
    actual_cost_usd        REAL,
    delay_reason           TEXT,
    notes                  TEXT,
    status                 TEXT,
    last_update            DATE,
    regulatory_body        TEXT,
    risk_assessment        TEXT
);

INSERT INTO interstellar_supply_route VALUES (1, 'RouteAlpha', 'EarthDock', 'MarsBase', '2024-04-01', '2024-04-15', 'FoodSupplies', 1200.5, 'StarFreighter1', 'CaptainRex', 25, 500.0, 'WP1,WP2,WP3', 'High', 'GalacticInsure', 'POL001', 'Cleared', 2000000, 2100000, 'Mild solar storm', 'Smooth operation', 'Completed', '2024-04-16', 'InterstellarAgency', 'Low');
INSERT INTO interstellar_supply_route VALUES (2, 'RouteBeta', 'LunaPort', 'JupiterStation', '2024-05-10', '2024-05-28', 'MiningEquipment', 2500.0, 'MinerShuttleX', 'CaptainLyra', 30, 800.0, 'WP4,WP5,WP6', 'Medium', 'SpaceCover', 'POL002', 'Pending', 3500000, NULL, 'Engine maintenance', 'Delayed due to technical check', 'InTransit', '2024-05-20', 'InterstellarAgency', 'Medium');
INSERT INTO interstellar_supply_route VALUES (3, 'RouteGamma', 'SaturnOutpost', 'NeptuneColony', '2024-06-05', '2024-06-25', 'MedicalSupplies', 800.0, 'HealthCarrier9', 'CaptainMira', 20, 450.0, 'WP7,WP8,WP9', 'High', 'HealthGuard', 'POL003', 'Cleared', 1800000, 1850000, 'None', 'All systems nominal', 'Completed', '2024-06-26', 'InterstellarAgency', 'Low');

-- Fan experience feedback
CREATE TABLE fan_experience_feedback
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    fan_id                 TEXT,
    event_id               TEXT,
    feedback_date          DATE,
    overall_rating         INTEGER,
    venue_rating           INTEGER,
    content_rating         INTEGER,
    staff_interaction_rating INTEGER,
    merchandise_rating     INTEGER,
    waiting_time_minutes   INTEGER,
    likelihood_to_recommend INTEGER,
    comments               TEXT,
    suggested_improvements TEXT,
    favorite_moment        TEXT,
    least_favorite_aspect  TEXT,
    photo_consent          TEXT,
    email_opt_in           TEXT,
    survey_method          TEXT,
    device_used            TEXT,
    location_city          TEXT,
    location_country       TEXT,
    follow_up_needed       TEXT,
    follow_up_status       TEXT,
    follow_up_timestamp    TIMESTAMP,
    notes                  TEXT,
    status                 TEXT
);

INSERT INTO fan_experience_feedback VALUES (1, 'FAN1001', 'EVT001', '2024-02-12', 9, 8, 9, 10, 7, 15, 10, 'Great atmosphere and panels', 'More seating', 'Opening ceremony', 'Long lines at merch', 'Yes', 'Yes', 'Online', 'Mobile', 'Chicago', 'USA', 'No', 'N/A', NULL, 'Recorded', 'Completed');
INSERT INTO fan_experience_feedback VALUES (2, 'FAN1002', 'EVT002', '2024-03-05', 7, 6, 8, 7, 5, 30, 8, 'Enjoyable but crowded', 'Better crowd control', 'Cosplay contest', 'Food shortage', 'No', 'Yes', 'InPerson', 'Tablet', 'London', 'UK', 'Yes', 'Pending', NULL, 'PendingReview', 'Open');
INSERT INTO fan_experience_feedback VALUES (3, 'FAN1003', 'EVT003', '2024-04-18', 10, 9, 10, 10, 9, 10, 10, 'Outstanding event, loved everything', 'None', 'Closing fireworks', 'None', 'Yes', 'No', 'Online', 'Desktop', 'Tokyo', 'Japan', 'No', 'N/A', NULL, 'Recorded', 'Completed');

-- Heroic legacy award record
CREATE TABLE heroic_legacy_award
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    legacy_award_name      TEXT,
    inception_year          INTEGER,
    governing_body          TEXT,
    award_category          TEXT,
    criteria_description    TEXT,
    nomination_process      TEXT,
    selection_committee     TEXT,
    prize_description       TEXT,
    monetary_prize_usd      REAL,
    trophy_material         TEXT,
    inaugural_recipient_id  INTEGER,
    most_recent_recipient_id INTEGER,
    total_awards_given      INTEGER,
    annual_ceremony_date    DATE,
    ceremony_location       TEXT,
    media_partner           TEXT,
    official_website        TEXT,
    archival_record_id      TEXT,
    publicity_budget_usd    REAL,
    notes                   TEXT,
    status                  TEXT,
    sponsor_name            TEXT,
    sponsor_contribution    REAL,
    next_award_year         INTEGER,
    eligibility_requirements TEXT,
    historical_significance TEXT
);

INSERT INTO heroic_legacy_award VALUES (1, 'Eternal Guardian', 2000, 'Global Hero Council', 'Lifetime Service', 'At least 30 years of active hero work', 'Open nominations', 'CouncilBoard', 'Golden Shield Trophy', 10000, 'Gold', 101, 110, 20, '2024-12-01', 'Hall of Legends', 'WorldMedia', 'http://legacyaward.org', 'ARCH001', 50000, 'Prestigious accolade', 'Active', 'MegaCorp', 2000, 2025, 'Must be living hero', 'Recognized worldwide');
INSERT INTO heroic_legacy_award VALUES (2, 'Valor Star', 2010, 'International Valor Association', 'Bravery in Combat', 'Demonstrated extraordinary bravery in at least 5 missions', 'Peer nominations', 'ValorCommittee', 'Silver Star Medal', 7000, 'Silver', 102, 115, 12, '2024-08-15', 'Valor Hall', 'GlobalNews', 'http://valorstar.org', 'ARCH002', 30000, 'Award for combat heroes', 'Active', 'ValorCorp', 1500, 2025, 'Combat mission verification required', 'Highlights heroism');
INSERT INTO heroic_legacy_award VALUES (3, 'Innovation Beacon', 2015, 'Science & Heroic Innovation Board', 'Scientific Advancement', 'Development of groundbreaking metahuman technology', 'Expert nominations', 'InnovationPanel', 'Crystal Plaque', 12000, 'Crystal', 103, 120, 9, '2024-05-20', 'Innovation Center', 'TechNews', 'http://innovationbeacon.org', 'ARCH003', 40000, 'Encourages scientific progress', 'Active', 'TechPartners', 2500, 2025, 'Patents required', 'Promotes research');

-- Virtual collectible marketplace analytics
CREATE TABLE virtual_collectible_marketplace_analytics
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    metric_date            DATE,
    total_active_listings   INTEGER,
    total_volume_usd        REAL,
    average_price_usd       REAL,
    median_price_usd        REAL,
    unique_collectors       INTEGER,
    new_collectors_month   INTEGER,
    sales_conversion_rate  REAL,
    average_listing_duration_days REAL,
    top_category            TEXT,
    top_rarity_tier         TEXT,
    platform_uptime_percent REAL,
    total_gas_fees_usd      REAL,
    average_gas_fee_usd     REAL,
    peak_traffic_hour       INTEGER,
    concurrent_users        INTEGER,
    bounce_rate_percent     REAL,
    referral_source         TEXT,
    mobile_vs_desktop_ratio REAL,
    average_session_time_minutes REAL,
    customer_satisfaction_score INTEGER,
    support_tickets_open    INTEGER,
    support_response_time_minutes REAL,
    notes                   TEXT,
    status                  TEXT,
    data_refresh_timestamp TIMESTAMP
);

INSERT INTO virtual_collectible_marketplace_analytics VALUES (1, '2024-02-28', 4520, 1280000.00, 285.75, 250.00, 3150, 120, 0.12, 5.3, 'HeroicArtifacts', 'Legendary', 99.5, 25000.00, 0.55, 21, 8600, 45.2, 'SocialMedia', 1.3, 12.5, 92, 45, 30.2, 'Steady growth Q1', 'Active', '2024-02-28 23:59:00');
INSERT INTO virtual_collectible_marketplace_analytics VALUES (2, '2024-03-31', 4705, 1355000.00, 292.10, 260.00, 3280, 145, 0.13, 5.0, 'CosmicWeapons', 'Epic', 99.7, 26000.00, 0.55, 22, 9100, 44.8, 'ReferralProgram', 1.4, 13.0, 94, 50, 28.5, 'Peak after March event', 'Active', '2024-03-31 23:59:00');
INSERT INTO virtual_collectible_marketplace_analytics VALUES (3, '2024-04-30', 4880, 1423000.00, 298.50, 270.00, 3405, 160, 0.14, 4.8, 'HeroicApparel', 'Rare', 99.8, 27000.00, 0.57, 20, 9400, 44.0, 'EmailCampaign', 1.5, 13.5, 95, 55, 27.0, 'Consistent increase', 'Active', '2024-04-30 23:59:00');