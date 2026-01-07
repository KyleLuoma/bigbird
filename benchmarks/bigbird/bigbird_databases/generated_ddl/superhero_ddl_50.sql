-- Interstellar portal operation log
CREATE TABLE interstellar_portal_log
(
    portal_id                 INTEGER PRIMARY KEY,
    origin_system             INTEGER,
    destination_system        INTEGER,
    activation_timestamp      INTEGER,
    deactivation_timestamp    INTEGER,
    energy_consumption        INTEGER,
    flux_stability            INTEGER,
    portal_type               INTEGER,
    crew_onboard              INTEGER,
    security_level            INTEGER,
    maintenance_cycle         INTEGER,
    anomaly_flag              INTEGER,
    operator_id               INTEGER,
    navigation_coords_x       INTEGER,
    navigation_coords_y       INTEGER,
    navigation_coords_z       INTEGER,
    coolant_level             INTEGER,
    shield_integrity          INTEGER,
    warp_field_intensity      INTEGER,
    diagnostic_code           INTEGER,
    comments_code             INTEGER
);

INSERT INTO interstellar_portal_log VALUES (1, 101, 202, 1622548800, 1622552400, 5000, 98, 1, 5, 3, 12, 0, 42, 1000, 2000, 3000, 80, 95, 150, 200, 0);
INSERT INTO interstellar_portal_log VALUES (2, 103, 204, 1622635200, 1622638800, 5200, 97, 2, 4, 2, 13, 1, 43, 1100, 2100, 3100, 78, 93, 152, 210, 1);
INSERT INTO interstellar_portal_log VALUES (3, 105, 206, 1622721600, 1622725200, 5300, 99, 1, 6, 4, 14, 0, 44, 1200, 2200, 3200, 79, 94, 155, 220, 0);

-- Alien biome survey data
CREATE TABLE alien_biome_survey
(
    survey_id               INTEGER PRIMARY KEY,
    planet_id               INTEGER,
    biome_type              INTEGER,
    temperature_celsius     INTEGER,
    humidity_percent        INTEGER,
    radiation_level         INTEGER,
    flora_diversity_index   INTEGER,
    fauna_diversity_index   INTEGER,
    soil_composition_code   INTEGER,
    water_presence          INTEGER,
    atmospheric_pressure    INTEGER,
    surveyor_id             INTEGER,
    sample_count            INTEGER,
    dominant_species_id     INTEGER,
    altitude_meters         INTEGER,
    magnetic_field_strength INTEGER,
    seismic_activity_level INTEGER,
    ozone_layer_thickness   INTEGER,
    carbon_dioxide_ppm      INTEGER,
    nitrogen_ppm            INTEGER,
    oxygen_ppm               INTEGER,
    methane_ppm              INTEGER,
    survey_timestamp        INTEGER
);

INSERT INTO alien_biome_survey VALUES (1, 301, 2, 22, 55, 3, 85, 70, 12, 1, 1013, 7, 250, 44, 500, 15, 2, 300, 400000, 780000, 210000, 5000, 1622808000);
INSERT INTO alien_biome_survey VALUES (2, 302, 3, -5, 30, 5, 60, 40, 15, 0, 950, 8, 180, 52, 1200, 20, 3, 280, 380000, 800000, 190000, 4500, 1622894400);
INSERT INTO alien_biome_survey VALUES (3, 303, 1, 35, 70, 2, 90, 80, 10, 1, 1020, 9, 300, 37, 800, 10, 1, 310, 420000, 770000, 200000, 5200, 1622980800);

-- Quantum energy market statistics
CREATE TABLE quantum_energy_market_stats
(
    record_id                 INTEGER PRIMARY KEY,
    market_id                 INTEGER,
    energy_type               INTEGER,
    price_per_mwh             INTEGER,
    volume_traded_mwh         INTEGER,
    volatility_index          INTEGER,
    time_interval_minutes    INTEGER,
    supplier_id               INTEGER,
    buyer_id                  INTEGER,
    transaction_count         INTEGER,
    average_latency_ms        INTEGER,
    regulation_factor         INTEGER,
    carbon_offset_credits     INTEGER,
    renewable_share_percent   INTEGER,
    peak_demand_mwh           INTEGER,
    offpeak_demand_mwh        INTEGER,
    grid_stability_score      INTEGER,
    forecast_error_percent    INTEGER,
    market_sentiment_score    INTEGER,
    clearing_price_mwh        INTEGER,
    settlement_delay_seconds  INTEGER,
    compliance_flag           INTEGER,
    audit_trail_id            INTEGER
);

INSERT INTO quantum_energy_market_stats VALUES (1, 1, 1, 150, 20000, 12, 60, 101, 201, 350, 25, 3, 500, 40, 18000, 2000, 85, 5, 70, 155, 2, 0, 901);
INSERT INTO quantum_energy_market_stats VALUES (2, 1, 2, 140, 18000, 10, 60, 102, 202, 330, 22, 2, 480, 45, 17000, 1900, 88, 4, 68, 148, 3, 0, 902);
INSERT INTO quantum_energy_market_stats VALUES (3, 2, 1, 160, 21000, 15, 60, 103, 203, 370, 27, 4, 520, 38, 19000, 2100, 80, 6, 72, 162, 1, 1, 903);

-- Mythic artifact registry
CREATE TABLE mythic_artifact_registry
(
    artifact_id               INTEGER PRIMARY KEY,
    artifact_name_code        INTEGER,
    discovery_site_id         INTEGER,
    discovery_year            INTEGER,
    material_composition_code INTEGER,
    power_level               INTEGER,
    enigma_factor             INTEGER,
    custodial_institution_id  INTEGER,
    current_location_id       INTEGER,
    preservation_status       INTEGER,
    security_clearance_level  INTEGER,
    last_examined_timestamp   INTEGER,
    mythic_origin_id          INTEGER,
    cultural_significance    INTEGER,
    estimated_age_years       INTEGER,
    activation_count          INTEGER,
    last_activation_timestamp INTEGER,
    containment_protocol_id   INTEGER,
    researcher_assigned_id    INTEGER,
    funding_grant_id          INTEGER,
    insurance_policy_number   INTEGER,
    loan_status               INTEGER,
    export_control_flag       INTEGER,
    catalog_reference_number  INTEGER,
    display_status            INTEGER
);

INSERT INTO mythic_artifact_registry VALUES (1, 5001, 601, 1923, 12, 95, 8, 301, 401, 2, 5, 1623057200, 101, 7, 1500, 3, 1623100000, 201, 401, 801, 123456, 0, 1, 1001, 1);
INSERT INTO mythic_artifact_registry VALUES (2, 5002, 602, 1850, 14, 88, 9, 302, 402, 3, 6, 1623060800, 102, 6, 1700, 2, 1623110000, 202, 402, 802, 123457, 1, 0, 1002, 0);
INSERT INTO mythic_artifact_registry VALUES (3, 5003, 603, 2001, 13, 92, 7, 303, 403, 1, 4, 1623064400, 103, 8, 1600, 4, 1623120000, 203, 403, 803, 123458, 0, 0, 1003, 1);

-- Metahuman clinic record
CREATE TABLE metahuman_clinic_record
(
    record_id                 INTEGER PRIMARY KEY,
    patient_id                INTEGER,
    clinic_id                 INTEGER,
    visit_timestamp           INTEGER,
    diagnosis_code            INTEGER,
    treatment_plan_code       INTEGER,
    attending_physician_id    INTEGER,
    prescribed_medication_id  INTEGER,
    dosage_mg                 INTEGER,
    therapy_sessions_count    INTEGER,
    followup_required_flag    INTEGER,
    insurance_provider_id     INTEGER,
    claim_number              INTEGER,
    recovery_progress_percent INTEGER,
    side_effects_severity     INTEGER,
    vital_signs_stability     INTEGER,
    mental_health_score       INTEGER,
    genetic_marker_id         INTEGER,
    consent_form_signed      INTEGER,
    emergency_contact_id      INTEGER,
    billing_amount_cents      INTEGER,
    payment_status_code       INTEGER,
    notes_reference_id        INTEGER,
    discharge_status_code     INTEGER,
    next_appointment_timestamp INTEGER
);

INSERT INTO metahuman_clinic_record VALUES (1, 1001, 501, 1623072000, 11, 21, 301, 401, 250, 5, 1, 601, 7001, 80, 2, 95, 88, 12, 1, 801, 15000, 2, 9001, 1, 1623158400);
INSERT INTO metahuman_clinic_record VALUES (2, 1002, 502, 1623158400, 12, 22, 302, 402, 300, 4, 0, 602, 7002, 85, 1, 96, 90, 13, 1, 802, 20000, 1, 9002, 2, 1623244800);
INSERT INTO metahuman_clinic_record VALUES (3, 1003, 503, 1623244800, 13, 23, 303, 403, 200, 6, 1, 603, 7003, 78, 3, 94, 85, 14, 0, 803, 18000, 3, 9003, 3, 1623331200);

-- Galactic trade route agreement
CREATE TABLE galactic_trade_route_agreement
(
    agreement_id                INTEGER PRIMARY KEY,
    route_id                    INTEGER,
    originating_system_id       INTEGER,
    destination_system_id       INTEGER,
    signing_date_timestamp      INTEGER,
    expiration_date_timestamp   INTEGER,
    trade_volume_limit_mwh      INTEGER,
    tariff_rate_percent         INTEGER,
    security_provision_code     INTEGER,
    arbitration_body_id         INTEGER,
    compliance_audit_frequency_days INTEGER,
    permitted_cargo_type_code   INTEGER,
    prohibited_cargo_type_code  INTEGER,
    insurance_requirement_code  INTEGER,
    environmental_impact_score  INTEGER,
    customs_duty_rate_percent   INTEGER,
    navigation_rights_granted    INTEGER,
    dispute_resolution_time_days INTEGER,
    renewal_option_flag         INTEGER,
    governing_law_code          INTEGER,
    oversight_agency_id         INTEGER,
    amendment_count             INTEGER,
    last_amendment_timestamp    INTEGER,
    status_code                 INTEGER,
    comment_reference_id        INTEGER
);

INSERT INTO galactic_trade_route_agreement VALUES (1, 10001, 701, 702, 1623300000, 1654836000, 50000, 5, 2, 801, 180, 3, 4, 1, 78, 7, 1, 30, 1, 12, 901, 2, 1623400000, 1, 1001);
INSERT INTO galactic_trade_route_agreement VALUES (2, 10002, 703, 704, 1623386400, 1654922400, 60000, 6, 3, 802, 180, 5, 6, 2, 80, 8, 1, 45, 0, 13, 902, 1, 1623486400, 2, 1002);
INSERT INTO galactic_trade_route_agreement VALUES (3, 10003, 705, 706, 1623472800, 1655008800, 55000, 4, 1, 803, 180, 2, 5, 3, 75, 6, 0, 60, 1, 14, 903, 3, 1623572800, 1, 1003);

-- Cosmic anomaly observation log
CREATE TABLE cosmic_anomaly_observation
(
    observation_id            INTEGER PRIMARY KEY,
    anomaly_type_code         INTEGER,
    detection_timestamp       INTEGER,
    instrument_id             INTEGER,
    signal_strength           INTEGER,
    frequency_hz              INTEGER,
    location_x                INTEGER,
    location_y                INTEGER,
    location_z                INTEGER,
    duration_seconds          INTEGER,
    energy_release_megatons   INTEGER,
    associated_event_code     INTEGER,
    data_quality_score        INTEGER,
    verification_status_code  INTEGER,
    analyst_id                INTEGER,
    followup_required_flag    INTEGER,
    mitigation_strategy_code  INTEGER,
    impact_assessment_level   INTEGER,
    publicity_level_code      INTEGER,
    archived_flag             INTEGER,
    external_report_id        INTEGER,
    observation_notes_ref_id  INTEGER,
    confidentiality_level_code INTEGER,
    review_cycle_days         INTEGER,
    status_code               INTEGER
);

INSERT INTO cosmic_anomaly_observation VALUES (1, 1, 1623559200, 901, 85, 1420, 1000, 2000, 3000, 3600, 5, 12, 90, 2, 1, 3, 4, 2, 1, 0, 2001, 3001, 1, 30, 1);
INSERT INTO cosmic_anomaly_observation VALUES (2, 2, 1623645600, 902, 78, 1500, 1100, 2100, 3100, 4200, 6, 15, 85, 3, 0, 2, 5, 3, 2, 1, 2002, 3002, 2, 45, 2);
INSERT INTO cosmic_anomaly_observation VALUES (3, 3, 1623732000, 903, 92, 1300, 1200, 2200, 3200, 3000, 4, 10, 95, 1, 1, 4, 6, 1, 3, 0, 2003, 3003, 1, 60, 1);

-- Nanotech component inventory
CREATE TABLE nanotech_component_inventory
(
    component_id               INTEGER PRIMARY KEY,
    component_name_code        INTEGER,
    batch_number               INTEGER,
    manufacture_date_timestamp INTEGER,
    supplier_id                INTEGER,
    quantity_units             INTEGER,
    purity_percent             INTEGER,
    nanometer_size_range_min   INTEGER,
    nanometer_size_range_max   INTEGER,
    storage_temperature_c      INTEGER,
    hazard_level_code          INTEGER,
    quality_inspection_score   INTEGER,
    certified_flag             INTEGER,
    location_warehouse_id      INTEGER,
    shelf_number               INTEGER,
    slot_number                INTEGER,
    last_audit_timestamp       INTEGER,
    expiration_date_timestamp  INTEGER,
    usage_rate_per_day         INTEGER,
    reorder_threshold_units    INTEGER,
    responsible_manager_id    INTEGER,
    safety_data_sheet_id       INTEGER,
    warranty_years             INTEGER,
    disposal_method_code       INTEGER,
    audit_log_reference_id     INTEGER
);

INSERT INTO nanotech_component_inventory VALUES (1, 1101, 50001, 1623800000, 601, 1000, 99, 5, 20, -20, 2, 95, 1, 701, 12, 3, 1623900000, 1655336000, 50, 200, 401, 801, 2, 5, 9001);
INSERT INTO nanotech_component_inventory VALUES (2, 1102, 50002, 1623886400, 602, 800, 97, 4, 18, -25, 3, 92, 1, 702, 15, 4, 1623986400, 1655422400, 40, 150, 402, 802, 3, 6, 9002);
INSERT INTO nanotech_component_inventory VALUES (3, 1103, 50003, 1623972800, 603, 1200, 98, 6, 22, -22, 1, 97, 1, 703, 10, 2, 1624072800, 1655508800, 60, 250, 403, 803, 2, 4, 9003);

-- Superhero fan app usage statistics
CREATE TABLE superhero_fan_app_usage
(
    usage_id                   INTEGER PRIMARY KEY,
    user_id                    INTEGER,
    session_start_timestamp    INTEGER,
    session_end_timestamp      INTEGER,
    device_type_code           INTEGER,
    os_version_code            INTEGER,
    app_version_code           INTEGER,
    pages_viewed_count         INTEGER,
    favorite_hero_id           INTEGER,
    interactions_count         INTEGER,
    push_notifications_enabled INTEGER,
    in_app_purchase_flag       INTEGER,
    purchase_amount_cents      INTEGER,
    ad_clicks_count            INTEGER,
    video_plays_count          INTEGER,
    share_actions_count        INTEGER,
    feedback_submitted_flag    INTEGER,
    crash_report_flag          INTEGER,
    latency_ms_average         INTEGER,
    data_usage_mb              INTEGER,
    location_region_code       INTEGER,
    network_type_code          INTEGER,
    subscription_status_code   INTEGER,
    loyalty_points_earned      INTEGER,
    last_update_timestamp      INTEGER
);

INSERT INTO superhero_fan_app_usage VALUES (1, 10001, 1624059200, 1624062800, 1, 10, 5, 12, 2001, 30, 1, 0, 0, 5, 2, 1, 0, 0, 120, 15, 3, 2, 1, 200, 1624063000);
INSERT INTO superhero_fan_app_usage VALUES (2, 10002, 1624145600, 1624149200, 2, 11, 6, 15, 2002, 45, 1, 1, 500, 8, 3, 2, 1, 0, 150, 20, 4, 3, 2, 350, 1624149400);
INSERT INTO superhero_fan_app_usage VALUES (3, 10003, 1624232000, 1624235600, 1, 12, 7, 10, 2003, 20, 0, 0, 0, 3, 1, 0, 0, 1, 100, 10, 2, 1, 0, 100, 1624235800);

-- Cosmic event schedule
CREATE TABLE cosmic_event_schedule
(
    event_id                   INTEGER PRIMARY KEY,
    event_name_code            INTEGER,
    start_timestamp            INTEGER,
    end_timestamp              INTEGER,
    visibility_region_code     INTEGER,
    magnitude_level            INTEGER,
    phenomenon_type_code       INTEGER,
    observer_agency_id         INTEGER,
    data_collection_method_code INTEGER,
    priority_score             INTEGER,
    alert_level_code           INTEGER,
    expected_duration_seconds  INTEGER,
    risk_assessment_level      INTEGER,
    mitigation_plan_id         INTEGER,
    public_announcement_flag   INTEGER,
    media_coverage_intensity   INTEGER,
    scientific_interest_score  INTEGER,
    backup_observer_id         INTEGER,
    funding_source_id          INTEGER,
    coordination_center_id     INTEGER,
    archival_status_code       INTEGER,
    last_update_timestamp      INTEGER,
    notes_reference_id         INTEGER,
    status_code                INTEGER,
    external_link_id           INTEGER
);

INSERT INTO cosmic_event_schedule VALUES (1, 2101, 1624320000, 1624406400, 5, 8, 2, 901, 3, 90, 2, 86400, 4, 101, 1, 7, 85, 201, 301, 401, 1, 1624406500, 501, 1, 601);
INSERT INTO cosmic_event_schedule VALUES (2, 2102, 1624406400, 1624492800, 6, 7, 3, 902, 4, 80, 1, 86400, 3, 102, 0, 5, 75, 202, 302, 402, 2, 1624492900, 502, 2, 602);
INSERT INTO cosmic_event_schedule VALUES (3, 2103, 1624492800, 1624579200, 7, 9, 1, 903, 2, 95, 3, 86400, 5, 103, 1, 8, 90, 203, 303, 403, 1, 1624579300, 503, 1, 603);

-- Dimensional portal log
CREATE TABLE dimensional_portal_log
(
    portal_log_id              INTEGER PRIMARY KEY,
    portal_identifier_code     INTEGER,
    source_dimension_id        INTEGER,
    target_dimension_id        INTEGER,
    activation_time            INTEGER,
    deactivation_time          INTEGER,
    energy_input_megajoules    INTEGER,
    stability_index            INTEGER,
    temporal_shift_seconds     INTEGER,
    spatial_offset_meters      INTEGER,
    quantum_flux_level         INTEGER,
    containment_field_strength INTEGER,
    operator_staff_id          INTEGER,
    safety_protocol_version    INTEGER,
    anomaly_detection_flag     INTEGER,
    maintenance_cycle_days     INTEGER,
    last_inspection_timestamp  INTEGER,
    usage_count                INTEGER,
    failover_portal_id         INTEGER,
    secure_access_level        INTEGER,
    audit_trail_id             INTEGER,
    status_code                INTEGER,
    comment_reference_id       INTEGER,
    backup_operator_id         INTEGER,
    expiration_timestamp       INTEGER,
    priority_level             INTEGER
);

INSERT INTO dimensional_portal_log VALUES (1, 3101, 801, 802, 1624560000, 1624563600, 1200, 98, 5, 200, 7, 95, 401, 3, 0, 180, 1624564000, 12, 0, 4, 501, 1, 601, 701, 1624660000, 2);
INSERT INTO dimensional_portal_log VALUES (2, 3102, 803, 804, 1624646400, 1624650000, 1250, 97, 6, 210, 8, 94, 402, 3, 1, 180, 1624644100, 15, 0, 5, 502, 2, 602, 702, 1624746400, 1);
INSERT INTO dimensional_portal_log VALUES (3, 3103, 805, 806, 1624732800, 1624736400, 1300, 99, 4, 190, 6, 96, 403, 4, 0, 180, 1624733100, 10, 0, 3, 503, 1, 603, 703, 1624832800, 3);