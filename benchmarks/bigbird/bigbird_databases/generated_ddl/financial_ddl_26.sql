-- Satellite observation metadata for remote sensing assets
CREATE TABLE satellite_observation_meta
(
    obs_id                INTEGER PRIMARY KEY,
    sat_id                INTEGER NOT NULL,
    sensor_type           TEXT,
    orbit_number          INTEGER,
    acquisition_day       INTEGER,   -- YYYYMMDD as integer
    acquisition_time      INTEGER,   -- HHMMSS as integer
    cloud_coverage_pct    REAL,
    sun_elevation_deg     REAL,
    sun_azimuth_deg       REAL,
    satellite_latitude    REAL,
    satellite_longitude   REAL,
    target_latitude       REAL,
    target_longitude      REAL,
    ground_res_m          REAL,
    radiometric_calibrated TEXT,
    processing_level      TEXT,
    data_volume_mb        REAL,
    product_format        TEXT,
    checksum_md5          TEXT,
    quality_flag          INTEGER,
    processing_center     TEXT,
    source_agency         TEXT,
    remarks               TEXT
);

INSERT INTO satellite_observation_meta VALUES (1,1001,NULL,1234,20230115,101530,12.5,45.0,120.0,10.5,20.5,35.0,45.0,0.5,NULL,NULL,250.0,NULL,1,NULL,NULL,NULL);
INSERT INTO satellite_observation_meta VALUES (2,1002,NULL,1240,20230220,093045,5.0,50.0,130.0,11.0,21.0,36.0,46.0,0.3,NULL,NULL,300.0,NULL,0,NULL,NULL,NULL);
INSERT INTO satellite_observation_meta VALUES (3,1003,NULL,1250,20230310,150210,0.0,55.0,140.0,12.0,22.0,37.0,47.0,0.2,NULL,NULL,500.0,NULL,1,NULL,NULL,NULL);


-- Public art installation inventory
CREATE TABLE public_art_inventory
(
    art_id                INTEGER PRIMARY KEY,
    title                 TEXT,
    artist_name           TEXT,
    installation_year    INTEGER,
    material_type         TEXT,
    height_cm             REAL,
    width_cm              REAL,
    depth_cm              REAL,
    weight_kg             REAL,
    gps_latitude          REAL,
    gps_longitude         REAL,
    city_district         TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance_date INTEGER,
    condition_rating      INTEGER,
    insured BOOLEAN,
    insurance_policy_no   TEXT,
    estimated_value_usd   REAL,
    funding_source        TEXT,
    public_access          BOOLEAN,
    lighting_needed       BOOLEAN,
    audio_enabled         BOOLEAN,
    interactive_features  TEXT,
    notes                 TEXT
);

INSERT INTO public_art_inventory VALUES (101,NULL,NULL,2010,NULL,250.0,120.0,80.0,500.0,40.7128,-74.0060,NULL,180,20221201,8,1,NULL,150000.0,NULL,1,1,0,NULL,NULL);
INSERT INTO public_art_inventory VALUES (102,NULL,NULL,2015,NULL,180.0,200.0,60.0,300.0,34.0522,-118.2437,NULL,365,20230115,9,0,NULL,200000.0,NULL,1,0,1,NULL,NULL);
INSERT INTO public_art_inventory VALUES (103,NULL,NULL,2020,NULL,300.0,150.0,100.0,800.0,51.5074,-0.1278,NULL,90,20230210,7,1,NULL,250000.0,NULL,1,1,1,NULL,NULL);


-- Agricultural field trial records
CREATE TABLE agri_field_trial
(
    trial_id               INTEGER PRIMARY KEY,
    farm_id                INTEGER,
    crop_type              TEXT,
    sowing_date            INTEGER,
    harvest_date           INTEGER,
    seed_variety           TEXT,
    fertilizer_type        TEXT,
    irrigation_method      TEXT,
    plot_area_ha           REAL,
    planting_density       REAL,
    expected_yield_t_per_ha REAL,
    actual_yield_t_per_ha  REAL,
    pest_incidence_pct     REAL,
    disease_incidence_pct  REAL,
    soil_ph                REAL,
    soil_nitrogen_ppm      REAL,
    soil_phosphorus_ppm    REAL,
    soil_potassium_ppm     REAL,
    weather_station_id    INTEGER,
    avg_temperature_c      REAL,
    total_rainfall_mm      REAL,
    notes                  TEXT,
    analyst_id             INTEGER,
    approval_status        TEXT
);

INSERT INTO agri_field_trial VALUES (10001,5001,NULL,20230401,20231015,NULL,NULL,NULL,2.5,150.0,5.0,5.2,10.0,2.0,6.5,30.0,20.0,15.0,301,22.3,120.0,NULL,2001,NULL);
INSERT INTO agri_field_trial VALUES (10002,5002,NULL,20230510,20231120,NULL,NULL,NULL,3.0,130.0,4.8,4.9,8.0,1.5,6.8,28.0,18.0,14.0,302,21.5,140.0,NULL,2002,NULL);
INSERT INTO agri_field_trial VALUES (10003,5003,NULL,20230605,20231210,NULL,NULL,NULL,1.8,160.0,5.2,5.1,12.0,3.0,7.0,32.0,22.0,16.0,303,23.0,130.0,NULL,2003,NULL);


-- City infrastructure project tracking
CREATE TABLE city_infra_project
(
    project_id            INTEGER PRIMARY KEY,
    project_name          TEXT,
    start_date            INTEGER,
    projected_end_date    INTEGER,
    actual_end_date       INTEGER,
    budget_usd            REAL,
    spent_usd             REAL,
    contractor_name       TEXT,
    contract_type         TEXT,
    project_phase         TEXT,
    status_code           INTEGER,
    responsible_dept      TEXT,
    permits_required      TEXT,
    permits_obtained      TEXT,
    environmental_impact  TEXT,
    stakeholder_engagement TEXT,
    risk_level            INTEGER,
    critical_path_days    INTEGER,
    milestones_completed  INTEGER,
    total_milestones      INTEGER,
    location_latitude     REAL,
    location_longitude    REAL,
    notes                 TEXT,
    last_updated          INTEGER,
    approved_by           INTEGER
);

INSERT INTO city_infra_project VALUES (9001,NULL,20230101,20231231,NULL,15000000.0,7500000.0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,3,180,5,10,40.7128,-74.0060,NULL,20230315,501);
INSERT INTO city_infra_project VALUES (9002,NULL,20230215,20240430,NULL,20000000.0,5000000.0,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,2,210,3,8,34.0522,-118.2437,NULL,20230410,502);
INSERT INTO city_infra_project VALUES (9003,NULL,20230310,20240915,NULL,12000000.0,3000000.0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,150,4,9,51.5074,-0.1278,NULL,20230501,503);


-- Clinical trial participant enrollment
CREATE TABLE clinical_trial_enrollment
(
    enrollment_id        INTEGER PRIMARY KEY,
    trial_id             INTEGER,
    participant_id       INTEGER,
    enrollment_date      INTEGER,
    gender               TEXT,
    age_years            INTEGER,
    weight_kg            REAL,
    height_cm            REAL,
    bmi                  REAL,
    ethnicity            TEXT,
    consent_signed       BOOLEAN,
    baseline_visit_done  BOOLEAN,
    randomization_group  TEXT,
    dosage_mg            REAL,
    adverse_event_flag   INTEGER,
    followup_months      INTEGER,
    completed            BOOLEAN,
    data_locked          BOOLEAN,
    investigator_id      INTEGER,
    site_id              INTEGER,
    notes                TEXT,
    last_update          INTEGER,
    source_document_id   INTEGER,
    withdrawal_reason    TEXT,
    compliance_score     REAL
);

INSERT INTO clinical_trial_enrollment VALUES (1,2001,30001,20230115,NULL,45,80.0,175.0,26.1,NULL,1,1,NULL,NULL,0,12,0,0,4001,501,NULL,20230301,6001,NULL,0.95);
INSERT INTO clinical_trial_enrollment VALUES (2,2001,30002,20230120,NULL,52,70.0,168.0,24.8,NULL,1,1,NULL,NULL,1,12,0,0,4002,501,NULL,20230305,6002,NULL,0.90);
INSERT INTO clinical_trial_enrollment VALUES (3,2002,30003,20230210,NULL,37,68.0,162.0,25.9,NULL,1,0,NULL,NULL,0,6,0,0,4003,502,NULL,20230401,6003,NULL,0.85);


-- Renewable energy farm performance metrics
CREATE TABLE renewable_farm_performance
(
    farm_id               INTEGER PRIMARY KEY,
    farm_name             TEXT,
    technology_type       TEXT,
    capacity_mw           REAL,
    commissioning_date    INTEGER,
    annual_generation_mwh REAL,
    capacity_factor_pct   REAL,
    average_irradiance_w_m2 REAL,
    average_wind_speed_ms REAL,
    availability_pct      REAL,
    downtime_hours        REAL,
    maintenance_cost_usd  REAL,
    energy_sold_usd       REAL,
    carbon_avoided_tons   REAL,
    grid_connection_point TEXT,
    operator_company      TEXT,
    region_code           TEXT,
    latitude              REAL,
    longitude             REAL,
    last_audit_date       INTEGER,
    notes                 TEXT,
    compliance_status     TEXT,
    incentive_received_usd REAL,
    tax_credit_usd        REAL,
    performance_rating    INTEGER
);

INSERT INTO renewable_farm_performance VALUES (1,NULL,NULL,50.0,20220101,180000.0,41.0,1000.0,8.5,98.0,5.0,200000.0,150000.0,2000.0,NULL,NULL,NULL,35.6895,139.6917,20230301,NULL,NULL,50000.0,30000.0,9);
INSERT INTO renewable_farm_performance VALUES (2,NULL,NULL,30.0,20200315,120000.0,45.5,950.0,7.2,97.5,8.0,150000.0,110000.0,1500.0,NULL,NULL,NULL,51.5074,-0.1278,20230415,NULL,NULL,40000.0,25000.0,8);
INSERT INTO renewable_farm_performance VALUES (3,NULL,NULL,80.0,20210520,300000.0,38.0,1020.0,9.1,99.0,3.0,300000.0,250000.0,3000.0,NULL,NULL,NULL,40.7128,-74.0060,20230520,NULL,NULL,60000.0,35000.0,9);


-- Maritime port activity logs
CREATE TABLE maritime_port_activity
(
    activity_id           INTEGER PRIMARY KEY,
    port_code             TEXT,
    vessel_imo            TEXT,
    arrival_date          INTEGER,
    departure_date        INTEGER,
    cargo_type            TEXT,
    cargo_quantity_tons   REAL,
    berth_number          INTEGER,
    pilot_assigned        TEXT,
    customs_cleared       BOOLEAN,
    inspection_passed     BOOLEAN,
    freight_charges_usd   REAL,
    demurrage_hours       REAL,
    agent_company         TEXT,
    destination_country   TEXT,
    origin_country        TEXT,
    vessel_flag           TEXT,
    draft_meters          REAL,
    length_overall_m      REAL,
    beam_m                REAL,
    status_code           INTEGER,
    notes                 TEXT,
    recorded_by           INTEGER,
    record_timestamp      INTEGER,
    compliance_flag       INTEGER
);

INSERT INTO maritime_port_activity VALUES (10001,NULL,NULL,20230301,20230307,NULL,5000.0,12,NULL,1,1,20000.0,12.0,NULL,NULL,NULL,NULL,10.5,300.0,50.0,1,NULL,4001,20230308,0);
INSERT INTO maritime_port_activity VALUES (10002,NULL,NULL,20230415,20230420,NULL,3000.0,8,NULL,1,0,15000.0,8.0,NULL,NULL,NULL,NULL,9.0,200.0,32.0,2,NULL,4002,20230421,1);
INSERT INTO maritime_port_activity VALUES (10003,NULL,NULL,20230510,20230515,NULL,7500.0,15,NULL,1,1,25000.0,5.0,NULL,NULL,NULL,NULL,11.0,350.0,55.0,1,NULL,4003,20230516,0);


-- Library digital collection metadata
CREATE TABLE digital_collection_metadata
(
    item_id                INTEGER PRIMARY KEY,
    collection_name        TEXT,
    title                  TEXT,
    creator_name           TEXT,
    creation_year          INTEGER,
    format_type            TEXT,
    file_size_mb           REAL,
    checksum_sha256        TEXT,
    access_rights          TEXT,
    language               TEXT,
    subject_category       TEXT,
    description            TEXT,
    digital_location_url   TEXT,
    preservation_status    TEXT,
    rights_holder          TEXT,
    licensing_terms        TEXT,
    usage_statistics_views INTEGER,
    usage_statistics_downloads INTEGER,
    last_accessed_date    INTEGER,
    cataloged_by           INTEGER,
    catalog_date           INTEGER,
    metadata_version       TEXT,
    quality_score          REAL,
    notes                  TEXT,
    related_item_id        INTEGER,
    digital_signature     TEXT
);

INSERT INTO digital_collection_metadata VALUES (50001,NULL,NULL,NULL,2020,NULL,250.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1200,300,20230501,7001,20230502,NULL,0.98,NULL,NULL,NULL);
INSERT INTO digital_collection_metadata VALUES (50002,NULL,NULL,NULL,2018,NULL,120.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,800,150,20230415,7002,20230416,NULL,0.95,NULL,NULL,NULL);
INSERT INTO digital_collection_metadata VALUES (50003,NULL,NULL,NULL,2022,NULL,500.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000,500,20230510,7003,20230511,NULL,0.99,NULL,NULL,NULL);


-- Urban tree inventory data
CREATE TABLE urban_tree_inventory
(
    tree_id               INTEGER PRIMARY KEY,
    park_name             TEXT,
    species_common_name   TEXT,
    species_scientific    TEXT,
    planting_year         INTEGER,
    dbh_cm                REAL,
    height_m              REAL,
    canopy_radius_m       REAL,
    health_status         TEXT,
    last_pruned_date      INTEGER,
    location_latitude     REAL,
    location_longitude    REAL,
    soil_type             TEXT,
    irrigation_method    TEXT,
    pesticide_applied     BOOLEAN,
    maintenance_cycle_days INTEGER,
    notes                 TEXT,
    recorded_by           INTEGER,
    record_timestamp      INTEGER,
    gps_accuracy_m        REAL,
    carbon_sequestration_kg REAL,
    shade_provision_pct   REAL,
    urban_heat_island_mitigated BOOLEAN,
    tree_owner            TEXT,
    warranty_years        INTEGER,
    replacement_cost_usd  REAL
);

INSERT INTO urban_tree_inventory VALUES (8001,NULL,NULL,NULL,2005,30.0,12.0,5.0,NULL,NULL,40.730610,-73.935242,NULL,NULL,0,180,NULL,9001,20230301,5.0,250.0,85.0,1,NULL,10,1500.0);
INSERT INTO urban_tree_inventory VALUES (8002,NULL,NULL,NULL,2010,25.0,10.0,4.5,NULL,NULL,34.052235,-118.243683,NULL,NULL,0,365,NULL,9002,20230415,4.0,200.0,78.0,0,NULL,8,1200.0);
INSERT INTO urban_tree_inventory VALUES (8003,NULL,NULL,NULL,2018,20.0,8.0,3.5,NULL,NULL,51.507351,-0.127758,NULL,NULL,0,90,NULL,9003,20230520,3.5,150.0,70.0,1,NULL,5,900.0);


-- Cyber threat intelligence feed
CREATE TABLE cyber_threat_intel
(
    intel_id               INTEGER PRIMARY KEY,
    indicator_type         TEXT,
    indicator_value        TEXT,
    threat_actor           TEXT,
    campaign_name          TEXT,
    first_seen_date        INTEGER,
    last_seen_date         INTEGER,
    confidence_score       REAL,
    severity_level         INTEGER,
    source_feed            TEXT,
    description            TEXT,
    mitigation_recommendation TEXT,
    related_vulnerability_id INTEGER,
    exploit_status         TEXT,
    patch_available        BOOLEAN,
    patch_release_date     INTEGER,
    affected_systems_count INTEGER,
    region_affected        TEXT,
    is_active              BOOLEAN,
    reported_by            INTEGER,
    report_timestamp       INTEGER,
    analyst_notes          TEXT,
    verification_status    TEXT,
    false_positive_flag    BOOLEAN,
    remediation_status    TEXT,
    ticket_id              INTEGER,
    escalation_level       INTEGER
);

INSERT INTO cyber_threat_intel VALUES (30001,NULL,NULL,NULL,NULL,20230101,20230315,0.85,3,NULL,NULL,NULL,NULL,NULL,0,NULL,150,NULL,1,6001,20230316,NULL,NULL,0,NULL,40001,2);
INSERT INTO cyber_threat_intel VALUES (30002,NULL,NULL,NULL,NULL,20230210,20230420,0.92,4,NULL,NULL,NULL,NULL,NULL,0,NULL,200,NULL,1,6002,20230421,NULL,NULL,0,NULL,40002,3);
INSERT INTO cyber_threat_intel VALUES (30003,NULL,NULL,NULL,NULL,20230305,20230530,0.78,2,NULL,NULL,NULL,NULL,NULL,0,NULL,100,NULL,0,6003,20230531,NULL,NULL,1,NULL,40003,1);