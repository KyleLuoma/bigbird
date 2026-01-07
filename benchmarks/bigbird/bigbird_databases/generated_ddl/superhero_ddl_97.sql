-- Table describing a hero's career milestones and statistics
CREATE TABLE hero_career_progression
(
    record_id               INTEGER PRIMARY KEY,
    hero_id                 INTEGER,
    season_number           INTEGER,
    episode_number          INTEGER,
    mission_name            TEXT,
    start_date              DATE,
    end_date                DATE,
    appearance_count        INTEGER,
    battle_victories        INTEGER,
    battle_losses           INTEGER,
    allies_added            INTEGER,
    enemies_defeated        INTEGER,
    power_usage_hours       DECIMAL,
    stamina_rating          DECIMAL,
    reputation_score        INTEGER,
    public_approval_percent INTEGER,
    media_mentions          INTEGER,
    award_nominations       INTEGER,
    award_wins              INTEGER,
    training_hours          INTEGER,
    injury_days             INTEGER,
    retirement_flag         INTEGER,
    notes                   TEXT
);

INSERT INTO hero_career_progression (record_id, hero_id, season_number, episode_number, mission_name, start_date, end_date, appearance_count, battle_victories, battle_losses, allies_added, enemies_defeated, power_usage_hours, stamina_rating, reputation_score, public_approval_percent, media_mentions, award_nominations, award_wins, training_hours, injury_days, retirement_flag, notes) VALUES
(1, 101, 1, 5, FirstEncounter, 2023-01-10, 2023-01-10, 1, 1, 0, 2, 1, 3.5, 85.2, 78, 92, 5, 0, 0, 40, 0, 0, InitialMission);
INSERT INTO hero_career_progression (record_id, hero_id, season_number, episode_number, mission_name, start_date, end_date, appearance_count, battle_victories, battle_losses, allies_added, enemies_defeated, power_usage_hours, stamina_rating, reputation_score, public_approval_percent, media_mentions, award_nominations, award_wins, training_hours, injury_days, retirement_flag, notes) VALUES
(2, 101, 2, 12, CityShield, 2023-05-02, 2023-05-02, 1, 3, 0, 1, 3, 7.0, 88.5, 85, 96, 12, 1, 1, 60, 2, 0, MajorCityDefense);
INSERT INTO hero_career_progression (record_id, hero_id, season_number, episode_number, mission_name, start_date, end_date, appearance_count, battle_victories, battle_losses, allies_added, enemies_defeated, power_usage_hours, stamina_rating, reputation_score, public_approval_percent, media_mentions, award_nominations, award_wins, training_hours, injury_days, retirement_flag, notes) VALUES
(3, 101, 3, 20, FinalShowdown, 2024-02-15, 2024-02-15, 1, 5, 1, 0, 5, 12.3, 91.0, 92, 98, 20, 2, 2, 80, 5, 0, EndOfSeasonClimax);

-- Table capturing effectiveness metrics for each superpower
CREATE TABLE power_effectiveness_metrics
(
    metric_id           INTEGER PRIMARY KEY,
    power_id            INTEGER,
    hero_id             INTEGER,
    avg_damage          DECIMAL,
    max_damage          INTEGER,
    min_damage          INTEGER,
    success_rate_percent INTEGER,
    cooldown_seconds    INTEGER,
    energy_cost         DECIMAL,
    usage_per_mission   INTEGER,
    critical_hit_rate   DECIMAL,
    avg_range_meters    DECIMAL,
    duration_seconds    INTEGER,
    area_of_effect_sq_m INTEGER,
    resistance_penetration_percent INTEGER,
    required_training_hours INTEGER,
    last_used_date      DATE,
    notes               TEXT
);

INSERT INTO power_effectiveness_metrics (metric_id, power_id, hero_id, avg_damage, max_damage, min_damage, success_rate_percent, cooldown_seconds, energy_cost, usage_per_mission, critical_hit_rate, avg_range_meters, duration_seconds, area_of_effect_sq_m, resistance_penetration_percent, required_training_hours, last_used_date, notes) VALUES
(1, 201, 101, 150.5, 300, 50, 85, 30, 12.0, 4, 15.2, 25.0, 5, 0, 10, 120, 2024-01-01, BasicFireball);
INSERT INTO power_effectiveness_metrics (metric_id, power_id, hero_id, avg_damage, max_damage, min_damage, success_rate_percent, cooldown_seconds, energy_cost, usage_per_mission, critical_hit_rate, avg_range_meters, duration_seconds, area_of_effect_sq_m, resistance_penetration_percent, required_training_hours, last_used_date, notes) VALUES
(2, 202, 101, 250.0, 500, 150, 78, 45, 20.5, 2, 10.0, 0.0, 10, 30, 20, 200, 2024-02-10, ThunderClap);
INSERT INTO power_effectiveness_metrics (metric_id, power_id, hero_id, avg_damage, max_damage, min_damage, success_rate_percent, cooldown_seconds, energy_cost, usage_per_mission, critical_hit_rate, avg_range_meters, duration_seconds, area_of_effect_sq_m, resistance_penetration_percent, required_training_hours, last_used_date, notes) VALUES
(3, 203, 101, 120.0, 250, 80, 90, 20, 8.0, 5, 12.5, 15.0, 3, 0, 5, 80, 2024-03-05, HealingAura);

-- Table describing the operational details of a villain's secret base
CREATE TABLE villain_operations_center
(
    center_id               INTEGER PRIMARY KEY,
    villain_id              INTEGER,
    location_name           TEXT,
    continent               TEXT,
    latitude                DECIMAL,
    longitude               DECIMAL,
    security_level          INTEGER,
    guard_count             INTEGER,
    surveillance_cameras    INTEGER,
    hidden_entrances        INTEGER,
    underground_levels      INTEGER,
    power_supply_mw         DECIMAL,
    backup_generator_hours  INTEGER,
    research_lab_count      INTEGER,
    weapon_stockpile_tons   DECIMAL,
    biohazard_containment   INTEGER,
    encryption_grade        TEXT,
    access_code_hash        TEXT,
    activation_date         DATE,
    last_inspection_date    DATE,
    operational_status      TEXT,
    notes                   TEXT
);

INSERT INTO villain_operations_center (center_id, villain_id, location_name, continent, latitude, longitude, security_level, guard_count, surveillance_cameras, hidden_entrances, underground_levels, power_supply_mw, backup_generator_hours, research_lab_count, weapon_stockpile_tons, biohazard_containment, encryption_grade, access_code_hash, activation_date, last_inspection_date, operational_status, notes) VALUES
(1, 301, DarkCavern, Asia, 35.6895, 139.6917, 9, 150, 200, 3, 5, 250.0, 48, 2, 1200.5, 1, AES256, abcdef123456, 2022-06-15, 2023-12-01, Active, PrimaryBase);
INSERT INTO villain_operations_center (center_id, villain_id, location_name, continent, latitude, longitude, security_level, guard_count, surveillance_cameras, hidden_entrances, underground_levels, power_supply_mw, backup_generator_hours, research_lab_count, weapon_stockpile_tons, biohazard_containment, encryption_grade, access_code_hash, activation_date, last_inspection_date, operational_status, notes) VALUES
(2, 302, SeaFortress, Europe, 48.8566, 2.3522, 8, 80, 120, 1, 2, 180.5, 24, 1, 600.0, 0, RSA4096, fedcba654321, 2021-09-30, 2023-11-20, Inactive, Abandoned);
INSERT INTO villain_operations_center (center_id, villain_id, location_name, continent, latitude, longitude, security_level, guard_count, surveillance_cameras, hidden_entrances, underground_levels, power_supply_mw, backup_generator_hours, research_lab_count, weapon_stockpile_tons, biohazard_containment, encryption_grade, access_code_hash, activation_date, last_inspection_date, operational_status, notes) VALUES
(3, 303, ArcticBunker, NorthAmerica, 64.2008, -149.4937, 10, 200, 250, 4, 6, 300.0, 72, 3, 2000.0, 1, SHA512, 123abc456def, 2023-01-05, 2024-01-02, Active, SeasonalOperations);

-- Table tracking fan engagement across different communication channels
CREATE TABLE fan_engagement_channel
(
    engagement_id          INTEGER PRIMARY KEY,
    fan_id                 INTEGER,
    channel_type           TEXT,
    platform_name          TEXT,
    registration_date      DATE,
    last_active_date       DATE,
    posts_made             INTEGER,
    comments_made          INTEGER,
    likes_given            INTEGER,
    shares_made            INTEGER,
    reactions_received     INTEGER,
    average_session_minutes DECIMAL,
    devices_used           INTEGER,
    subscription_status    TEXT,
    newsletter_opt_in      INTEGER,
    push_notifications_on  INTEGER,
    demographic_age_group  TEXT,
    demographic_region     TEXT,
    loyalty_score          INTEGER,
    feedback_score         DECIMAL,
    notes                  TEXT
);

INSERT INTO fan_engagement_channel (engagement_id, fan_id, channel_type, platform_name, registration_date, last_active_date, posts_made, comments_made, likes_given, shares_made, reactions_received, average_session_minutes, devices_used, subscription_status, newsletter_opt_in, push_notifications_on, demographic_age_group, demographic_region, loyalty_score, feedback_score, notes) VALUES
(1, 1001, SocialMedia, HeroChat, 2022-03-01, 2024-01-15, 45, 120, 300, 20, 500, 15.2, 2, Active, 1, 1, Adult, NorthAmerica, 85, 4.5, PrimaryChannel);
INSERT INTO fan_engagement_channel (engagement_id, fan_id, channel_type, platform_name, registration_date, last_active_date, posts_made, comments_made, likes_given, shares_made, reactions_received, average_session_minutes, devices_used, subscription_status, newsletter_opt_in, push_notifications_on, demographic_age_group, demographic_region, loyalty_score, feedback_score, notes) VALUES
(2, 1002, Forum, VillainVault, 2021-07-12, 2023-12-20, 30, 80, 150, 10, 300, 12.0, 1, Inactive, 0, 0, Teen, Europe, 60, 3.8, OccasionalUser);
INSERT INTO fan_engagement_channel (engagement_id, fan_id, channel_type, platform_name, registration_date, last_active_date, posts_made, comments_made, likes_given, shares_made, reactions_received, average_session_minutes, devices_used, subscription_status, newsletter_opt_in, push_notifications_on, demographic_age_group, demographic_region, loyalty_score, feedback_score, notes) VALUES
(3, 1003, Email, FanDigest, 2020-11-05, 2024-01-10, 0, 0, 0, 0, 0, 5.5, 1, Active, 1, 0, Adult, Asia, 70, 4.0, MonthlyNewsletter);

-- Table summarizing sales figures per licensing region
CREATE TABLE licensing_region_sales
(
    sales_id                INTEGER PRIMARY KEY,
    region_code             TEXT,
    region_name             TEXT,
    fiscal_year             INTEGER,
    total_units_sold        INTEGER,
    gross_revenue_usd       DECIMAL,
    net_profit_usd          DECIMAL,
    royalty_rate_percent    DECIMAL,
    average_price_usd       DECIMAL,
    top_selling_item_id    INTEGER,
    distribution_channels   TEXT,
    online_sales_percent    INTEGER,
    retail_sales_percent    INTEGER,
    wholesale_sales_percent INTEGER,
    inventory_turnover_rate DECIMAL,
    marketing_spend_usd     DECIMAL,
    promotional_events      INTEGER,
    compliance_issues       INTEGER,
    last_audit_date         DATE,
    notes                   TEXT
);

INSERT INTO licensing_region_sales (sales_id, region_code, region_name, fiscal_year, total_units_sold, gross_revenue_usd, net_profit_usd, royalty_rate_percent, average_price_usd, top_selling_item_id, distribution_channels, online_sales_percent, retail_sales_percent, wholesale_sales_percent, inventory_turnover_rate, marketing_spend_usd, promotional_events, compliance_issues, last_audit_date, notes) VALUES
(1, NA, NorthAmerica, 2023, 125000, 7500000.00, 1200000.00, 12.5, 60.00, 501, Online, 70, 20, 10, 3.2, 500000.00, 12, 0, 2023-11-30, StrongMarket);
INSERT INTO licensing_region_sales (sales_id, region_code, region_name, fiscal_year, total_units_sold, gross_revenue_usd, net_profit_usd, royalty_rate_percent, average_price_usd, top_selling_item_id, distribution_channels, online_sales_percent, retail_sales_percent, wholesale_sales_percent, inventory_turnover_rate, marketing_spend_usd, promotional_events, compliance_issues, last_audit_date, notes) VALUES
(2, EU, Europe, 2023, 95000, 5700000.00, 950000.00, 13.0, 60.00, 502, Retail, 45, 45, 10, 2.8, 400000.00, 10, 1, 2023-12-15, ModerateGrowth);
INSERT INTO licensing_region_sales (sales_id, region_code, region_name, fiscal_year, total_units_sold, gross_revenue_usd, net_profit_usd, royalty_rate_percent, average_price_usd, top_selling_item_id, distribution_channels, online_sales_percent, retail_sales_percent, wholesale_sales_percent, inventory_turnover_rate, marketing_spend_usd, promotional_events, compliance_issues, last_audit_date, notes) VALUES
(3, AP, AsiaPacific, 2023, 110000, 6600000.00, 1100000.00, 11.0, 60.00, 503, Mixed, 60, 30, 10, 3.0, 450000.00, 11, 0, 2023-12-20, ExpandingRegion);

-- Table outlining the schedule of multimedia releases across platforms
CREATE TABLE multimedia_release_schedule
(
    release_id               INTEGER PRIMARY KEY,
    title                    TEXT,
    media_type               TEXT,
    platform_name            TEXT,
    release_date             DATE,
    runtime_minutes          INTEGER,
    episode_number           INTEGER,
    season_number            INTEGER,
    director_name            TEXT,
    producer_name            TEXT,
    rating_mpaa              TEXT,
    language                 TEXT,
    subtitle_languages       TEXT,
    audio_format             TEXT,
    content_rating           TEXT,
    distribution_region      TEXT,
    budget_usd               DECIMAL,
    box_office_usd           DECIMAL,
    streaming_views_millions DECIMAL,
    critical_score_percent   INTEGER,
    notes                    TEXT
);

INSERT INTO multimedia_release_schedule (release_id, title, media_type, platform_name, release_date, runtime_minutes, episode_number, season_number, director_name, producer_name, rating_mpaa, language, subtitle_languages, audio_format, content_rating, distribution_region, budget_usd, box_office_usd, streaming_views_millions, critical_score_percent, notes) VALUES
(1, HeroOrigin, Film, GlobalCinema, 2023-07-14, 120, 0, 0, Jane Doe, John Smith, PG13, English, English, Dolby, PG13, Worldwide, 80000000.00, 350000000.00, 45.0, 88, BlockbusterRelease);
INSERT INTO multimedia_release_schedule (release_id, title, media_type, platform_name, release_date, runtime_minutes, episode_number, season_number, director_name, producer_name, rating_mpaa, language, subtitle_languages, audio_format, content_rating, distribution_region, budget_usd, box_office_usd, streaming_views_millions, critical_score_percent, notes) VALUES
(2, VillainChronicles, Series, StreamHub, 2024-03-01, 45, 1, 1, Alice Ray, Bob Lee, TVMA, English, English, Stereo, TVMA, NorthAmerica, 20000000.00, 0.00, 12.5, 75, NewSeasonLaunch);
INSERT INTO multimedia_release_schedule (release_id, title, media_type, platform_name, release_date, runtime_minutes, episode_number, season_number, director_name, producer_name, rating_mpaa, language, subtitle_languages, audio_format, content_rating, distribution_region, budget_usd, box_office_usd, streaming_views_millions, critical_score_percent, notes) VALUES
(3, HeroVsVillain, Film, GlobalCinema, 2025-11-20, 140, 0, 0, Mark Lee, Susan Green, R, English, English, Dolby, R, Worldwide, 120000000.00, 0.00, 30.0, 92, UpcomingSequel);

-- Table recording detailed medical encounters for heroes
CREATE TABLE hero_medical_encounter
(
    encounter_id            INTEGER PRIMARY KEY,
    hero_id                 INTEGER,
    encounter_date          DATE,
    facility_name           TEXT,
    diagnosis_code          TEXT,
    diagnosis_description   TEXT,
    treatment_procedure     TEXT,
    medication_prescribed   TEXT,
    dosage_mg               DECIMAL,
    duration_days           INTEGER,
    attending_physician     TEXT,
    follow_up_required      INTEGER,
    follow_up_date          DATE,
    recovery_status_percent INTEGER,
    notes                   TEXT,
    insurance_provider      TEXT,
    claim_number            TEXT,
    billing_amount_usd      DECIMAL,
    emergency_flag          INTEGER,
    discharge_summary      TEXT
);

INSERT INTO hero_medical_encounter (encounter_id, hero_id, encounter_date, facility_name, diagnosis_code, diagnosis_description, treatment_procedure, medication_prescribed, dosage_mg, duration_days, attending_physician, follow_up_required, follow_up_date, recovery_status_percent, notes, insurance_provider, claim_number, billing_amount_usd, emergency_flag, discharge_summary) VALUES
(1, 101, 2023-04-22, MetroMedical, H52, VisionImpairment, LaserCorrection, EyeDrop, 0.5, 1, Dr Allen, 0, NULL, 100, PostSurgery, HealthGuard, CLM001, 15000.00, 0, FullRecovery);
INSERT INTO hero_medical_encounter (encounter_id, hero_id, encounter_date, facility_name, diagnosis_code, diagnosis_description, treatment_procedure, medication_prescribed, dosage_mg, duration_days, attending_physician, follow_up_required, follow_up_date, recovery_status_percent, notes, insurance_provider, claim_number, billing_amount_usd, emergency_flag, discharge_summary) VALUES
(2, 101, 2023-09-10, CityTraumaCenter, S70, BackInjury, PhysicalTherapy, PainRelief, 25.0, 30, Dr Baker, 1, 2023-10-01, 80, GradualRecovery, MediCare, CLM002, 25000.00, 1, OngoingTherapy);
INSERT INTO hero_medical_encounter (encounter_id, hero_id, encounter_date, facility_name, diagnosis_code, diagnosis_description, treatment_procedure, medication_prescribed, dosage_mg, duration_days, attending_physician, follow_up_required, follow_up_date, recovery_status_percent, notes, insurance_provider, claim_number, billing_amount_usd, emergency_flag, discharge_summary) VALUES
(3, 101, 2024-01-15, HeroClinic, T78, AllergicReaction, AntihistamineInfusion, Antihistamine, 10.0, 2, Dr Chen, 0, NULL, 100, AcuteEpisode, HeroHealth, CLM003, 8000.00, 0, Resolved);

-- Table describing individual artifact exhibits and their logistics
CREATE TABLE artifact_exhibit_detail
(
    exhibit_id               INTEGER PRIMARY KEY,
    artifact_name            TEXT,
    exhibit_title            TEXT,
    museum_name              TEXT,
    city                     TEXT,
    country                  TEXT,
    start_date               DATE,
    end_date                 DATE,
    curator_name             TEXT,
    loan_partner             TEXT,
    insurance_value_usd       DECIMAL,
    climate_control_temp_c    DECIMAL,
    humidity_percent         DECIMAL,
    security_level           INTEGER,
    display_case_material    TEXT,
    lighting_type            TEXT,
    visitor_capacity_daily   INTEGER,
    tickets_sold             INTEGER,
    educational_programs     INTEGER,
    press_release_issued     INTEGER,
    notes                    TEXT
);

INSERT INTO artifact_exhibit_detail (exhibit_id, artifact_name, exhibit_title, museum_name, city, country, start_date, end_date, curator_name, loan_partner, insurance_value_usd, climate_control_temp_c, humidity_percent, security_level, display_case_material, lighting_type, visitor_capacity_daily, tickets_sold, educational_programs, press_release_issued, notes) VALUES
(1, StarShield, LegacyofPower, MetropolisMuseum, Metropolis, UnitedStates, 2023-05-01, 2023-10-31, Emily Stone, GlobalArtifacts, 2000000.00, 22.0, 45.0, 9, Glass, LED, 5000, 250000, 12, 1, FlagshipExhibit);
INSERT INTO artifact_exhibit_detail (exhibit_id, artifact_name, exhibit_title, museum_name, city, country, start_date, end_date, curator_name, loan_partner, insurance_value_usd, climate_control_temp_c, humidity_percent, security_level, display_case_material, lighting_type, visitor_capacity_daily, tickets_sold, educational_programs, press_release_issued, notes) VALUES
(2, MysticOrb, SecretsoftheArcane, OldTownGallery, OldTown, UnitedKingdom, 2023-09-15, 2024-03-15, Liam Turner, ArcaneCollective, 1200000.00, 20.0, 40.0, 8, Acrylic, UV, 3000, 90000, 8, 1, LimitedRun);
INSERT INTO artifact_exhibit_detail (exhibit_id, artifact_name, exhibit_title, museum_name, city, country, start_date, end_date, curator_name, loan_partner, insurance_value_usd, climate_control_temp_c, humidity_percent, security_level, display_case_material, lighting_type, visitor_capacity_daily, tickets_sold, educational_programs, press_release_issued, notes) VALUES
(3, ChronoCrystal, TimeThreads, FutureScienceCenter, Futuria, Canada, 2024-01-10, 2024-06-30, Maya Patel, TemporalInstitute, 3000000.00, 18.0, 35.0, 10, CarbonFiber, FiberOptic, 4000, 160000, 15, 1, HighTechDisplay);

-- Table logging interdimensional trade transactions
CREATE TABLE interdimensional_trade_log
(
    trade_id                 INTEGER PRIMARY KEY,
    portal_id                INTEGER,
    origin_dimension         TEXT,
    destination_dimension    TEXT,
    commodity_name           TEXT,
    quantity_units           INTEGER,
    unit_price_credits       DECIMAL,
    total_price_credits      DECIMAL,
    trade_date               DATE,
    customs_status           TEXT,
    inspection_passed        INTEGER,
    transporter_name         TEXT,
    escort_required          INTEGER,
    security_clearance_level INTEGER,
    transfer_time_minutes    INTEGER,
    notes                    TEXT,
    regulatory_body          TEXT,
    compliance_code          TEXT,
    audit_timestamp          TIMESTAMP,
    dispute_flag             INTEGER
);

INSERT INTO interdimensional_trade_log (trade_id, portal_id, origin_dimension, destination_dimension, commodity_name, quantity_units, unit_price_credits, total_price_credits, trade_date, customs_status, inspection_passed, transporter_name, escort_required, security_clearance_level, transfer_time_minutes, notes, regulatory_body, compliance_code, audit_timestamp, dispute_flag) VALUES
(1, 1001, Alpha, Beta, QuantumCore, 50, 2000.00, 100000.00, 2023-12-05, Cleared, 1, StarFreight, 1, 9, 120, HighValue, DimensionalAuthority, DC001, 2023-12-06 08:30:00, 0);
INSERT INTO interdimensional_trade_log (trade_id, portal_id, origin_dimension, destination_dimension, commodity_name, quantity_units, unit_price_credits, total_price_credits, trade_date, customs_status, inspection_passed, transporter_name, escort_required, security_clearance_level, transfer_time_minutes, notes, regulatory_body, compliance_code, audit_timestamp, dispute_flag) VALUES
(2, 1002, Gamma, Delta, PlasmaCanister, 200, 500.00, 100000.00, 2024-01-12, Pending, 0, VoidCarrier, 0, 7, 90, RoutineShipment, DimensionalAuthority, DC002, 2024-01-13 14:45:00, 0);
INSERT INTO interdimensional_trade_log (trade_id, portal_id, origin_dimension, destination_dimension, commodity_name, quantity_units, unit_price_credits, total_price_credits, trade_date, customs_status, inspection_passed, transporter_name, escort_required, security_clearance_level, transfer_time_minutes, notes, regulatory_body, compliance_code, audit_timestamp, dispute_flag) VALUES
(3, 1003, Epsilon, Zeta, DarkMatter, 10, 15000.00, 150000.00, 2024-02-20, Cleared, 1, RiftLogistics, 1, 10, 180, SensitiveMaterial, DimensionalAuthority, DC003, 2024-02-21 09:15:00, 1);

-- Table forecasting upcoming cosmic events with relevant parameters
CREATE TABLE cosmic_event_forecast
(
    forecast_id                INTEGER PRIMARY KEY,
    event_name                 TEXT,
    event_type                 TEXT,
    start_date                 DATE,
    end_date                   DATE,
    affected_regions           TEXT,
    magnitude_scale            DECIMAL,
    probability_percent        INTEGER,
    observation_method         TEXT,
    predicted_impact_kilotons  DECIMAL,
    alert_level                TEXT,
    mitigation_strategy        TEXT,
    responsible_agency         TEXT,
    data_source                TEXT,
    last_updated_timestamp     TIMESTAMP,
    notes                      TEXT,
    discovery_instrument       TEXT,
    observation_frequency_days INTEGER,
    confidence_score           DECIMAL,
    public_communication_status INTEGER
);

INSERT INTO cosmic_event_forecast (forecast_id, event_name, event_type, start_date, end_date, affected_regions, magnitude_scale, probability_percent, observation_method, predicted_impact_kilotons, alert_level, mitigation_strategy, responsible_agency, data_source, last_updated_timestamp, notes, discovery_instrument, observation_frequency_days, confidence_score, public_communication_status) VALUES
(1, SolarFlareX, SolarFlare, 2024-03-01, 2024-03-02, Global, 8.5, 70, Satellite, 0.0, High, ShieldSatellites, SpaceAgency, SolarObservatory, 2024-02-20 12:00:00, IntenseBurst, SolarMonitor, 1, 0.92, 1);
INSERT INTO cosmic_event_forecast (forecast_id, event_name, event_type, start_date, end_date, affected_regions, magnitude_scale, probability_percent, observation_method, predicted_impact_kilotons, alert_level, mitigation_strategy, responsible_agency, data_source, last_updated_timestamp, notes, discovery_instrument, observation_frequency_days, confidence_score, public_communication_status) VALUES
(2, NebulaBurst, GammaRayBurst, 2024-06-15, 2024-06-15, Sector7, 9.2, 40, SpaceTelescope, 150.0, Critical, EvacuationPlan, AstroInstitute, GammaRayArray, 2024-05-30 09:30:00, RareEvent, GammaScope, 30, 0.78, 0);
INSERT INTO cosmic_event_forecast (forecast_id, event_name, event_type, start_date, end_date, affected_regions, magnitude_scale, probability_percent, observation_method, predicted_impact_kilotons, alert_level, mitigation_strategy, responsible_agency, data_source, last_updated_timestamp, notes, discovery_instrument, observation_frequency_days, confidence_score, public_communication_status) VALUES
(3, AsteroidDelta, NearEarthObject, 2024-11-20, 2024-11-20, NorthAmerica, 6.8, 25, Radar, 5.0, Medium, DeflectionMission, PlanetaryDefense, RadarStation, 2024-10-15 16:45:00, SmallImpact, RadarArray, 7, 0.85, 1);