-- Research laboratory details and equipment inventory
CREATE TABLE research_lab
(
    lab_id                INTEGER PRIMARY KEY,
    region_code           INTEGER NOT NULL,
    establishment_year    INTEGER NOT NULL,
    num_scientists        INTEGER NOT NULL,
    num_technicians       INTEGER NOT NULL,
    total_funding_mil     REAL NOT NULL,
    active_projects       INTEGER NOT NULL,
    patents_filed         INTEGER NOT NULL,
    equipment_count       INTEGER NOT NULL,
    high_perf_computers   INTEGER NOT NULL,
    microscopes           INTEGER NOT NULL,
    spectrometers          INTEGER NOT NULL,
    centrifuges            INTEGER NOT NULL,
    freezers              INTEGER NOT NULL,
    cleanrooms            INTEGER NOT NULL,
    biosafety_level       INTEGER NOT NULL,
    annual_publications  INTEGER NOT NULL,
    collaboration_partners INTEGER NOT NULL,
    safety_incidents      INTEGER NOT NULL,
    waste_tons_per_year   REAL NOT NULL,
    energy_consumption_mwh REAL NOT NULL,
    floor_space_sqm       INTEGER NOT NULL,
    iso_certification     INTEGER NOT NULL,
    accreditation_score   REAL NOT NULL,
    avg_project_duration_months INTEGER NOT NULL,
    staff_turnover_rate   REAL NOT NULL
);

INSERT INTO research_lab VALUES (1, 12, 1998, 45, 10, 15.2, 7, 5, 120, 12, 8, 6, 4, 3, 2, 3, 20, 12, 0, 1.8, 2500, 1, 92.5, 24, 5.3);
INSERT INTO research_lab VALUES (2, 7, 2005, 30, 8, 9.5, 4, 2, 85, 9, 5, 4, 3, 2, 1, 2, 14, 9, 1, 1.2, 1800, 0, 88.3, 30, 4.1);
INSERT INTO research_lab VALUES (3, 5, 2012, 60, 15, 22.7, 10, 8, 200, 18, 12, 9, 5, 4, 3, 4, 35, 20, 2, 2.5, 3200, 1, 95.0, 18, 6.7);


-- Wildlife monitoring station metrics
CREATE TABLE wildlife_monitoring_station
(
    station_id                INTEGER PRIMARY KEY,
    park_code                 INTEGER NOT NULL,
    installation_year         INTEGER NOT NULL,
    camera_traps              INTEGER NOT NULL,
    acoustic_sensors          INTEGER NOT NULL,
    temperature_sensors       INTEGER NOT NULL,
    humidity_sensors          INTEGER NOT NULL,
    gps_units                 INTEGER NOT NULL,
    solar_panels              INTEGER NOT NULL,
    data_storage_tb           REAL NOT NULL,
    yearly_observations       INTEGER NOT NULL,
    species_detected          INTEGER NOT NULL,
    endangered_species       INTEGER NOT NULL,
    avg_daily_visits          REAL NOT NULL,
    maintenance_visits        INTEGER NOT NULL,
    power_outages             INTEGER NOT NULL,
    network_uptime_percent    REAL NOT NULL,
    data_loss_events          INTEGER NOT NULL,
    animal_activity_index     REAL NOT NULL,
    avg_temperature_c         REAL NOT NULL,
    avg_humidity_percent      REAL NOT NULL,
    latitude                  REAL NOT NULL,
    longitude                 REAL NOT NULL,
    elevation_m               INTEGER NOT NULL,
    funding_mil               REAL NOT NULL,
    compliance_score          REAL NOT NULL
);

INSERT INTO wildlife_monitoring_station VALUES (101, 34, 2015, 20, 15, 8, 8, 5, 3, 12.5, 25000, 180, 12, 3.2, 6, 2, 98.7, 1, 0.85, 22.5, 65.3, -1.2345, 36.7890, 850, 4.2, 89.1);
INSERT INTO wildlife_monitoring_station VALUES (102, 27, 2018, 25, 20, 10, 10, 6, 4, 15.0, 30000, 210, 15, 4.0, 5, 1, 99.2, 0, 0.92, 21.0, 70.1, -0.9876, 35.1234, 920, 5.1, 92.3);
INSERT INTO wildlife_monitoring_station VALUES (103, 41, 2020, 30, 25, 12, 12, 7, 5, 18.3, 35000, 240, 18, 4.5, 4, 0, 99.8, 0, 0.95, 20.2, 71.0, -1.5678, 37.4567, 780, 6.5, 95.6);


-- Energy market trade transactions
CREATE TABLE energy_market_trade
(
    trade_id               INTEGER PRIMARY KEY,
    market_region          INTEGER NOT NULL,
    trade_year             INTEGER NOT NULL,
    trade_month            INTEGER NOT NULL,
    trade_day              INTEGER NOT NULL,
    buyer_entity_id        INTEGER NOT NULL,
    seller_entity_id       INTEGER NOT NULL,
    energy_type_code       INTEGER NOT NULL,
    volume_mwh             REAL NOT NULL,
    price_per_mwh          REAL NOT NULL,
    total_value_mil        REAL NOT NULL,
    contract_type_code     INTEGER NOT NULL,
    settlement_date        INTEGER NOT NULL,
    delivery_start_date    INTEGER NOT NULL,
    delivery_end_date      INTEGER NOT NULL,
    renewable_share_percent REAL NOT NULL,
    carbon_offset_tons     REAL NOT NULL,
    grid_loss_percent      REAL NOT NULL,
    transaction_fee_mil    REAL NOT NULL,
    benchmark_price        REAL NOT NULL,
    volatility_index       REAL NOT NULL,
    market_sentiment_score INTEGER NOT NULL,
    regulatory_approval    INTEGER NOT NULL,
    trade_status_code      INTEGER NOT NULL,
    notes_code             INTEGER NOT NULL,
    audit_flag             INTEGER NOT NULL,
    data_quality_score     REAL NOT NULL
);

INSERT INTO energy_market_trade VALUES (5001, 3, 2023, 5, 12, 2001, 3002, 1, 1500.5, 45.2, 67.8, 2, 20230501, 20230601, 20230630, 60.0, 120.5, 2.5, 0.8, 44.0, 1.2, 78, 1, 1, 0, 0, 96.4);
INSERT INTO energy_market_trade VALUES (5002, 5, 2023, 6, 15, 2010, 3015, 2, 2000.0, 48.0, 96.0, 1, 20230615, 20230701, 20230731, 70.0, 150.0, 2.0, 1.0, 47.5, 0.9, 85, 1, 2, 0, 1, 94.1);
INSERT INTO energy_market_trade VALUES (5003, 2, 2023, 7, 20, 2025, 3020, 1, 1750.3, 46.5, 81.4, 2, 20230720, 20230801, 20230831, 65.0, 130.2, 2.2, 0.9, 46.0, 1.1, 80, 0, 1, 1, 0, 92.7);


-- Art gallery inventory and condition tracking
CREATE TABLE art_gallery_inventory
(
    inventory_id            INTEGER PRIMARY KEY,
    gallery_code            INTEGER NOT NULL,
    acquisition_year        INTEGER NOT NULL,
    artist_id               INTEGER NOT NULL,
    artwork_type_code       INTEGER NOT NULL,
    medium_code             INTEGER NOT NULL,
    dimensions_cm_sq        REAL NOT NULL,
    estimated_value_mil     REAL NOT NULL,
    insurance_policy_id     INTEGER NOT NULL,
    condition_score         REAL NOT NULL,
    restoration_needed      INTEGER NOT NULL,
    num_exhibitions         INTEGER NOT NULL,
    current_location_code   INTEGER NOT NULL,
    loan_status_code        INTEGER NOT NULL,
    display_status_code     INTEGER NOT NULL,
    lighting_requirement_lux REAL NOT NULL,
    humidity_requirement_percent REAL NOT NULL,
    temperature_requirement_c REAL NOT NULL,
    security_level_code     INTEGER NOT NULL,
    provenance_document_id  INTEGER NOT NULL,
    catalog_number          INTEGER NOT NULL,
    acquisition_method_code INTEGER NOT NULL,
    donor_id                INTEGER NOT NULL,
    appraised_year          INTEGER NOT NULL,
    curator_id              INTEGER NOT NULL,
    storage_zone_code       INTEGER NOT NULL,
    audit_flag              INTEGER NOT NULL,
    data_quality_score      REAL NOT NULL,
    last_inspection_date   INTEGER NOT NULL
);

INSERT INTO art_gallery_inventory VALUES (9001, 12, 2010, 345, 1, 3, 2500.0, 3.2, 1101, 4.5, 0, 5, 2, 1, 2, 300.0, 55.0, 22.0, 3, 2101, 56001, 2, 4500, 2015, 78, 4, 0, 97.3, 20231201);
INSERT INTO art_gallery_inventory VALUES (9002, 14, 2015, 378, 2, 4, 1800.0, 2.1, 1102, 4.2, 1, 3, 1, 2, 2, 250.0, 50.0, 20.0, 2, 2102, 56002, 1, 4600, 2018, 80, 5, 1, 95.0, 20231115);
INSERT INTO art_gallery_inventory VALUES (9003, 11, 2005, 322, 1, 2, 3200.0, 4.5, 1103, 4.8, 0, 7, 3, 1, 3, 350.0, 60.0, 23.0, 4, 2103, 56003, 3, 4700, 2010, 82, 3, 0, 98.6, 20231220);


-- Marine conservation area statistics
CREATE TABLE marine_conservation_area
(
    area_id                 INTEGER PRIMARY KEY,
    country_code            INTEGER NOT NULL,
    designation_year        INTEGER NOT NULL,
    total_area_sqkm         REAL NOT NULL,
    protected_zones         INTEGER NOT NULL,
    reef_coverage_percent   REAL NOT NULL,
    mangrove_coverage_percent REAL NOT NULL,
    avg_depth_m             REAL NOT NULL,
    species_richness        INTEGER NOT NULL,
    threatened_species      INTEGER NOT NULL,
    monitoring_stations     INTEGER NOT NULL,
    patrol_vessels          INTEGER NOT NULL,
    annual_budget_mil       REAL NOT NULL,
    tourism_visits          INTEGER NOT NULL,
    research_projects       INTEGER NOT NULL,
    enforcement_incidents   INTEGER NOT NULL,
    illegal_fishing_events  INTEGER NOT NULL,
    water_quality_index     REAL NOT NULL,
    coral_bleaching_percent REAL NOT NULL,
    plankton_biomass_mt     REAL NOT NULL,
    carbon_sequestration_mt REAL NOT NULL,
    latitude_center         REAL NOT NULL,
    longitude_center        REAL NOT NULL,
    average_salinity_psu    REAL NOT NULL,
    avg_sea_surface_temp_c  REAL NOT NULL,
    climate_resilience_score REAL NOT NULL,
    data_collection_year    INTEGER NOT NULL,
    audit_flag              INTEGER NOT NULL,
    data_quality_score      REAL NOT NULL
);

INSERT INTO marine_conservation_area VALUES (21001, 84, 1999, 4500.0, 12, 35.0, 15.0, 30.5, 1200, 45, 8, 5, 6.5, 25000, 22, 3, 1, 85.2, 2.5, 0.9, 1.2, -12.3456, 97.6543, 35.0, 26.5, 78.0, 2022, 0, 96.8);
INSERT INTO marine_conservation_area VALUES (21002, 56, 2005, 3200.0, 9, 28.0, 10.0, 25.0, 950, 30, 6, 3, 4.2, 18000, 15, 2, 2, 88.5, 1.8, 0.7, 0.9, -13.1234, 98.3456, 34.5, 27.0, 80.5, 2023, 1, 97.2);
INSERT INTO marine_conservation_area VALUES (21003, 23, 2012, 2100.0, 5, 22.0, 8.0, 20.0, 600, 20, 4, 2, 3.1, 12000, 9, 1, 0, 90.0, 1.2, 0.5, 0.6, -14.5678, 99.1234, 33.8, 28.1, 82.3, 2024, 0, 98.0);


-- Smart city IoT device inventory
CREATE TABLE smart_city_iot_device
(
    device_id               INTEGER PRIMARY KEY,
    city_code               INTEGER NOT NULL,
    deployment_year         INTEGER NOT NULL,
    device_type_code        INTEGER NOT NULL,
    manufacturer_id         INTEGER NOT NULL,
    firmware_version        INTEGER NOT NULL,
    battery_capacity_mah    INTEGER NOT NULL,
    connectivity_type_code  INTEGER NOT NULL,
    avg_daily_data_mb       REAL NOT NULL,
    uptime_percent          REAL NOT NULL,
    signal_strength_dbm     REAL NOT NULL,
    location_latitude       REAL NOT NULL,
    location_longitude      REAL NOT NULL,
    installation_zone_code  INTEGER NOT NULL,
    maintenance_cycle_days  INTEGER NOT NULL,
    last_maintenance_date  INTEGER NOT NULL,
    power_source_code       INTEGER NOT NULL,
    security_patch_level    INTEGER NOT NULL,
    encryption_enabled      INTEGER NOT NULL,
    data_retention_days    INTEGER NOT NULL,
    operational_status_code INTEGER NOT NULL,
    failure_events          INTEGER NOT NULL,
    replacement_needed      INTEGER NOT NULL,
    compliance_certified    INTEGER NOT NULL,
    audit_flag              INTEGER NOT NULL,
    data_quality_score      REAL NOT NULL,
    decommissioned_flag     INTEGER NOT NULL,
    warranty_years          INTEGER NOT NULL,
    installation_cost_usd   REAL NOT NULL,
    annual_operating_cost_usd REAL NOT NULL
);

INSERT INTO smart_city_iot_device VALUES (40001, 9, 2020, 1, 300, 5, 2000, 2, 15.5, 98.2, -70.0, 40.7128, -74.0060, 3, 180, 20231201, 1, 3, 1, 365, 1, 0, 0, 1, 0, 94.5, 0, 5, 250.0, 120.0);
INSERT INTO smart_city_iot_device VALUES (40002, 9, 2021, 2, 301, 6, 2500, 3, 12.0, 97.5, -68.5, 40.7306, -73.9352, 4, 200, 20231115, 2, 2, 1, 730, 1, 1, 0, 1, 1, 96.0, 0, 4, 300.0, 150.0);
INSERT INTO smart_city_iot_device VALUES (40003, 9, 2022, 3, 302, 7, 3000, 1, 18.2, 99.0, -65.0, 40.7580, -73.9855, 5, 150, 20231220, 1, 1, 1, 180, 1, 0, 0, 1, 0, 97.8, 0, 3, 200.0, 110.0);


-- Renewable energy certificate issuance
CREATE TABLE renewable_energy_certificate
(
    cert_id                 INTEGER PRIMARY KEY,
    issuing_authority_code  INTEGER NOT NULL,
    issue_year              INTEGER NOT NULL,
    issue_month             INTEGER NOT NULL,
    issue_day               INTEGER NOT NULL,
    renewable_type_code     INTEGER NOT NULL,
    quantity_mwh            REAL NOT NULL,
    price_per_mwh_usd       REAL NOT NULL,
    total_value_usd         REAL NOT NULL,
    holder_entity_id        INTEGER NOT NULL,
    validity_years          INTEGER NOT NULL,
    expiry_date             INTEGER NOT NULL,
    compliance_status_code  INTEGER NOT NULL,
    audit_flag              INTEGER NOT NULL,
    transaction_id          INTEGER NOT NULL,
    generation_source_id    INTEGER NOT NULL,
    certification_level_code INTEGER NOT NULL,
    regional_impact_score   REAL NOT NULL,
    carbon_offset_tons      REAL NOT NULL,
    renewable_share_percent REAL NOT NULL,
    data_quality_score      REAL NOT NULL
);

INSERT INTO renewable_energy_certificate VALUES (70001, 15, 2022, 5, 10, 1, 5000.0, 12.5, 62500.0, 9001, 10, 20320710, 1, 0, 30001, 4001, 2, 85.0, 250.0, 100.0, 96.5);
INSERT INTO renewable_energy_certificate VALUES (70002, 15, 2023, 3, 20, 2, 3000.0, 13.0, 39000.0, 9002, 8, 20311120, 1, 0, 30002, 4002, 1, 88.5, 150.0, 80.0, 97.2);
INSERT INTO renewable_energy_certificate VALUES (70003, 15, 2021, 11, 5, 1, 4500.0, 11.8, 53100.0, 9003, 12, 20331105, 2, 1, 30003, 4003, 3, 82.0, 220.0, 90.0, 95.8);


-- Biotech clinical trial information
CREATE TABLE biotech_clinical_trial
(
    trial_id                INTEGER PRIMARY KEY,
    sponsor_id              INTEGER NOT NULL,
    trial_phase_code        INTEGER NOT NULL,
    therapeutic_area_code   INTEGER NOT NULL,
    start_year              INTEGER NOT NULL,
    start_month             INTEGER NOT NULL,
    start_day               INTEGER NOT NULL,
    end_year                INTEGER,
    end_month               INTEGER,
    end_day                 INTEGER,
    total_participants      INTEGER NOT NULL,
    enrollment_rate_percent REAL NOT NULL,
    adverse_event_count    INTEGER NOT NULL,
    serious_adverse_events INTEGER NOT NULL,
    primary_endpoint_success INTEGER NOT NULL,
    secondary_endpoint_success INTEGER NOT NULL,
    data_monitoring_committee_id INTEGER NOT NULL,
    regulatory_approval_code INTEGER NOT NULL,
    funding_mil            REAL NOT NULL,
    site_count             INTEGER NOT NULL,
    average_visit_days     REAL NOT NULL,
    blinding_type_code     INTEGER NOT NULL,
    randomization_ratio    REAL NOT NULL,
    protocol_version       INTEGER NOT NULL,
    audit_flag             INTEGER NOT NULL,
    data_quality_score     REAL NOT NULL,
    last_update_date       INTEGER NOT NULL,
    trial_status_code      INTEGER NOT NULL
);

INSERT INTO biotech_clinical_trial VALUES (150001, 5001, 2, 8, 2020, 4, 15, 2022, 10, 30, 120, 85.0, 5, 1, 1, 0, 30001, 1, 12.5, 15, 14.2, 2, 1.5, 3, 0, 96.0, 20221201, 2);
INSERT INTO biotech_clinical_trial VALUES (150002, 5002, 3, 9, 2021, 6, 1, NULL, NULL, NULL, 200, 90.0, 8, 2, 1, 1, 30002, 2, 18.0, 20, 13.5, 1, 1.8, 4, 0, 97.3, 20231115, 1);
INSERT INTO biotech_clinical_trial VALUES (150003, 5003, 1, 7, 2019, 1, 20, 2021, 12, 31, 80, 70.0, 2, 0, 0, 1, 30003, 1, 9.8, 10, 12.0, 3, 1.2, 5, 1, 94.5, 20221005, 3);


-- Urban noise monitoring station data
CREATE TABLE urban_noise_monitoring_station
(
    monitor_id                INTEGER PRIMARY KEY,
    city_code                 INTEGER NOT NULL,
    installation_year         INTEGER NOT NULL,
    sensor_count              INTEGER NOT NULL,
    avg_noise_level_db_a      REAL NOT NULL,
    max_noise_level_db_a      REAL NOT NULL,
    noise_events_per_day      INTEGER NOT NULL,
    calibration_date          INTEGER NOT NULL,
    maintenance_cycle_months  INTEGER NOT NULL,
    power_source_code        INTEGER NOT NULL,
    data_storage_gb           REAL NOT NULL,
    connectivity_type_code    INTEGER NOT NULL,
    latitude                  REAL NOT NULL,
    longitude                 REAL NOT NULL,
    elevation_m               INTEGER NOT NULL,
    compliance_status_code    INTEGER NOT NULL,
    funding_mil               REAL NOT NULL,
    audit_flag                INTEGER NOT NULL,
    data_quality_score        REAL NOT NULL,
    last_inspection_date     INTEGER NOT NULL,
    operational_status_code   INTEGER NOT NULL,
    temperature_celsius       REAL NOT NULL,
    humidity_percent          REAL NOT NULL,
    wind_speed_mps            REAL NOT NULL,
    noise_model_version       INTEGER NOT NULL,
    alert_threshold_db        REAL NOT NULL,
    average_daily_peak_db     REAL NOT NULL,
    city_noise_index          REAL NOT NULL,
    public_alerts_issued      INTEGER NOT NULL
);

INSERT INTO urban_noise_monitoring_station VALUES (80001, 11, 2018, 4, 62.5, 95.0, 12, 20221101, 12, 1, 500.0, 2, 40.7128, -74.0060, 10, 1, 2.5, 0, 95.2, 20231201, 1, 22.0, 55.0, 3.5, 3, 85.0, 70.5, 78.0, 5);
INSERT INTO urban_noise_monitoring_station VALUES (80002, 11, 2019, 5, 58.0, 90.0, 10, 20221215, 12, 1, 600.0, 2, 40.7306, -73.9352, 12, 1, 3.0, 0, 96.0, 20231115, 1, 21.5, 53.0, 4.0, 4, 88.0, 68.0, 80.5, 3);
INSERT INTO urban_noise_monitoring_station VALUES (80003, 11, 2020, 3, 65.0, 98.0, 15, 20230105, 12, 1, 450.0, 2, 40.7580, -73.9855, 8, 1, 2.8, 0, 94.5, 20231220, 1, 22.5, 57.0, 3.2, 5, 87.5, 72.0, 77.0, 7);


-- Satellite ground station specifications
CREATE TABLE satellite_ground_station
(
    station_id                INTEGER PRIMARY KEY,
    country_code              INTEGER NOT NULL,
    establishment_year        INTEGER NOT NULL,
    antenna_count             INTEGER NOT NULL,
    max_frequency_ghz         REAL NOT NULL,
    min_frequency_ghz         REAL NOT NULL,
    dish_diameter_m           REAL NOT NULL,
    tracking_accuracy_arcsec  REAL NOT NULL,
    data_downlink_rate_mbps   REAL NOT NULL,
    power_supply_kw           REAL NOT NULL,
    backup_generator_kw       REAL NOT NULL,
    cooling_system_type_code  INTEGER NOT NULL,
    control_center_id         INTEGER NOT NULL,
    operational_status_code   INTEGER NOT NULL,
    maintenance_interval_months INTEGER NOT NULL,
    last_maintenance_date    INTEGER NOT NULL,
    latitude                  REAL NOT NULL,
    longitude                 REAL NOT NULL,
    elevation_m               INTEGER NOT NULL,
    compliance_certified      INTEGER NOT NULL,
    funding_mil               REAL NOT NULL,
    audit_flag                INTEGER NOT NULL,
    data_quality_score        REAL NOT NULL,
    satellite_capacity        INTEGER NOT NULL,
    supported_mission_type_code INTEGER NOT NULL,
    bandwidth_allocation_mhz  REAL NOT NULL,
    security_level_code       INTEGER NOT NULL,
    redundancy_level          INTEGER NOT NULL,
    average_uptime_percent    REAL NOT NULL,
    incident_count            INTEGER NOT NULL
);

INSERT INTO satellite_ground_station VALUES (91001, 84, 2005, 3, 8.0, 2.0, 12.5, 0.5, 500.0, 2.5, 1.0, 2, 4001, 1, 6, 20231101, -12.3456, 97.6543, 150, 1, 15.0, 0, 96.8, 5, 1, 250.0, 3, 2, 99.5, 0);
INSERT INTO satellite_ground_station VALUES (91002, 84, 2010, 4, 10.0, 3.0, 15.0, 0.4, 750.0, 3.0, 1.2, 1, 4002, 1, 8, 20231215, -13.1234, 98.3456, 200, 1, 20.0, 0, 97.5, 7, 2, 300.0, 2, 3, 98.9, 1);
INSERT INTO satellite_ground_station VALUES (91003, 84, 2018, 2, 7.5, 1.5, 10.0, 0.6, 400.0, 2.0, 0.8, 3, 4003, 1, 5, 20231220, -14.5678, 99.1234, 120, 1, 12.0, 0, 95.2, 4, 1, 200.0, 4, 1, 99.0, 0);