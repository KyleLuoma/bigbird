-- Vehicle fuel tax records associated with vehicles but not overlapping core transaction data
CREATE TABLE vehicle_fuel_tax_records
(
    record_id                INTEGER PRIMARY KEY,
    vehicle_id               INTEGER,
    tax_year                 INTEGER,
    tax_amount               REAL,
    fuel_type_code           INTEGER,
    region_code              INTEGER,
    mileage                  INTEGER,
    emission_class_code      INTEGER,
    tax_rate                 REAL,
    tax_paid_flag            INTEGER,
    filing_year              INTEGER,
    audit_flag               INTEGER,
    created_ts               INTEGER,
    updated_ts               INTEGER,
    source_system_code       INTEGER,
    depreciation_factor      REAL,
    surcharge_amount         REAL,
    exemption_flag           INTEGER,
    tax_category_code        INTEGER,
    reserve_flag             INTEGER
);
INSERT INTO vehicle_fuel_tax_records VALUES (1,101,2023,125.50,1,10,15000,2,0.08,1,2023,0,1700000000,1700003600,3,0.95,5.00,0,4,0);
INSERT INTO vehicle_fuel_tax_records VALUES (2,102,2022,98.75,2,12,20000,1,0.07,1,2022,1,1695000000,1695007200,2,0.90,3.50,1,3,0);
INSERT INTO vehicle_fuel_tax_records VALUES (3,103,2023,140.00,1,11,18000,3,0.09,0,2023,0,1701000000,1701005400,1,0.92,4.25,0,5,1);

-- Contracts governing energy supply to fuel stations
CREATE TABLE station_energy_supply_contracts
(
    contract_id              INTEGER PRIMARY KEY,
    station_id               INTEGER,
    supplier_id              INTEGER,
    contract_start_year      INTEGER,
    contract_end_year        INTEGER,
    energy_type_code         INTEGER,
    capacity_mw              REAL,
    price_per_mwh            REAL,
    escalation_rate          REAL,
    fixed_fee                REAL,
    renewable_share_percent  REAL,
    contract_status_code     INTEGER,
    payment_term_days        INTEGER,
    penalty_rate             REAL,
    created_ts               INTEGER,
    updated_ts               INTEGER,
    broker_id                INTEGER,
    renewal_option_flag      INTEGER,
    discount_percent         REAL,
    audit_compliance_flag    INTEGER,
    reserve_flag             INTEGER
);
INSERT INTO station_energy_supply_contracts VALUES (1,201,301,2021,2025,1,5.5,45.20,0.02,1000.0,30.0,1,30,0.01,1600000000,1600007200,401,1,5.0,0,0);
INSERT INTO station_energy_supply_contracts VALUES (2,202,302,2020,2024,2,3.2,50.75,0.015,800.0,20.0,2,45,0.015,1595000000,1595003600,402,0,3.5,1,0);
INSERT INTO station_energy_supply_contracts VALUES (3,203,303,2022,2026,1,4.0,48.00,0.018,950.0,25.0,1,60,0.012,1605000000,1605005400,403,1,4.0,0,0);

-- Channels through which customers interact with the company (excluding transaction data)
CREATE TABLE customer_interaction_channels
(
    channel_id               INTEGER PRIMARY KEY,
    channel_type_code        INTEGER,
    platform_code            INTEGER,
    launch_year              INTEGER,
    active_flag              INTEGER,
    average_response_sec     REAL,
    peak_concurrent_users    INTEGER,
    support_tier_code        INTEGER,
    sla_minutes              INTEGER,
    escalation_level_code    INTEGER,
    language_supported_code  INTEGER,
    integration_status_code  INTEGER,
    created_ts               INTEGER,
    updated_ts               INTEGER,
    budget_usd               REAL,
    usage_fee_per_interaction REAL,
    retention_rate_percent   REAL,
    satisfaction_score       REAL,
    data_retention_years     INTEGER,
    audit_compliance_flag    INTEGER,
    reserve_flag             INTEGER
);
INSERT INTO customer_interaction_channels VALUES (1,1,10,2018,1,45.5,1200,2,30,3,1,1,1610000000,1610003600,250000.0,0.05,85.0,4.7,3,0,0);
INSERT INTO customer_interaction_channels VALUES (2,2,12,2020,1,30.2,800,1,20,2,2,1,1620000000,1620007200,150000.0,0.04,78.0,4.3,2,1,0);
INSERT INTO customer_interaction_channels VALUES (3,3,15,2019,0,60.0,500,3,45,4,1,0,1630000000,1630005400,100000.0,0.06,70.0,3.9,5,0,0);

-- Records for compliance checks of payment processors
CREATE TABLE payment_processor_compliance
(
    check_id                 INTEGER PRIMARY KEY,
    processor_id             INTEGER,
    compliance_year          INTEGER,
    pci_dss_level_code       INTEGER,
    audit_score              REAL,
    remedial_action_flag     INTEGER,
    fine_amount_usd          REAL,
    total_transactions       INTEGER,
    average_transaction_usd  REAL,
    high_risk_flag           INTEGER,
    third_party_code         INTEGER,
    status_code              INTEGER,
    created_ts               INTEGER,
    updated_ts               INTEGER,
    review_cycle_months      INTEGER,
    risk_exposure_score      REAL,
    compliance_officer_id    INTEGER,
    exception_granted_flag    INTEGER,
    escalation_days          INTEGER,
    reserve_flag             INTEGER,
    audit_compliance_flag    INTEGER
);
INSERT INTO payment_processor_compliance VALUES (1,501,2023,2,98.5,0,0.0,250000,45.30,0,10,1,1640000000,1640007200,12,5.2,3001,0,30,0,1);
INSERT INTO payment_processor_compliance VALUES (2,502,2022,3,85.0,1,15000.0,300000,50.10,1,11,2,1635000000,1635003600,12,7.8,3002,1,45,0,1);
INSERT INTO payment_processor_compliance VALUES (3,503,2023,1,92.3,0,0.0,200000,48.75,0,12,1,1645000000,1645005400,12,4.6,3003,0,20,0,1);

-- Study data for roadway noise levels by region
CREATE TABLE regional_roadway_noise_studies
(
    study_id                 INTEGER PRIMARY KEY,
    region_code              INTEGER,
    year                     INTEGER,
    average_noise_db         REAL,
    peak_noise_db            REAL,
    measurement_points       INTEGER,
    vehicle_count_estimate   INTEGER,
    highway_type_code        INTEGER,
    weather_condition_code   INTEGER,
    time_of_day_code         INTEGER,
    compliance_threshold_db  REAL,
    exceedance_percent       REAL,
    data_source_code         INTEGER,
    created_ts               INTEGER,
    updated_ts               INTEGER,
    analyst_id               INTEGER,
    confidence_interval_low  REAL,
    confidence_interval_high REAL,
    audit_flag               INTEGER,
    reserve_flag             INTEGER,
    review_status_code       INTEGER
);
INSERT INTO regional_roadway_noise_studies VALUES (1,20,2022,68.5,85.0,150,12000,1,2,3,70.0,12.5,5,1615000000,1615007200,4001,66.0,71.0,0,0,1);
INSERT INTO regional_roadway_noise_studies VALUES (2,21,2023,70.2,88.5,160,13000,2,1,2,72.0,15.0,6,1625000000,1625003600,4002,68.5,71.9,1,0,2);
INSERT INTO regional_roadway_noise_studies VALUES (3,22,2021,66.8,82.0,140,11000,1,3,1,68.0,10.0,4,1605000000,1605005400,4003,65.0,68.6,0,0,1);

-- Waste management details for gas stations (excluding recycling data)
CREATE TABLE gas_station_waste_management
(
    record_id                INTEGER PRIMARY KEY,
    station_id               INTEGER,
    waste_type_code          INTEGER,
    annual_volume_tons       REAL,
    disposal_method_code     INTEGER,
    contractor_id            INTEGER,
    compliance_status_code   INTEGER,
    audit_year               INTEGER,
    fine_amount_usd          REAL,
    mitigation_plan_flag     INTEGER,
    created_ts               INTEGER,
    updated_ts               INTEGER,
    last_inspection_year     INTEGER,
    average_processing_cost  REAL,
    hazardous_flag           INTEGER,
    transport_distance_km    REAL,
    regulatory_body_code     INTEGER,
    reserve_flag             INTEGER,
    audit_compliance_flag    INTEGER,
    data_source_code         INTEGER,
    review_status_code       INTEGER
);
INSERT INTO gas_station_waste_management VALUES (1,301,1,12.5,2,601,1,2022,0.0,0,1650000000,1650003600,2022,250.0,0,15.0,30,0,1,5,1);
INSERT INTO gas_station_waste_management VALUES (2,302,2,8.3,3,602,2,2021,5000.0,1,1645000000,1645007200,2021,300.0,1,20.0,31,0,1,6,2);
INSERT INTO gas_station_waste_management VALUES (3,303,1,10.0,2,603,1,2023,0.0,0,1660000000,1660005400,2023,260.0,0,18.0,30,0,1,5,1);

-- Load balancing data for electric grid operations
CREATE TABLE electric_grid_load_balancing
(
    balancing_id             INTEGER PRIMARY KEY,
    region_code              INTEGER,
    year                     INTEGER,
    peak_load_mw             REAL,
    avg_load_mw              REAL,
    renewable_share_percent  REAL,
    storage_capacity_mwh     REAL,
    balancing_market_code    INTEGER,
    price_per_mwh            REAL,
    imbalance_volume_mwh     REAL,
    corrective_action_code   INTEGER,
    created_ts               INTEGER,
    updated_ts               INTEGER,
    operator_id              INTEGER,
    forecast_error_percent   REAL,
    reserve_flag             INTEGER,
    audit_flag               INTEGER,
    compliance_status_code   INTEGER,
    data_source_code         INTEGER,
    review_cycle_months      INTEGER,
    audit_compliance_flag    INTEGER
);
INSERT INTO electric_grid_load_balancing VALUES (1,10,2023,8500.5,4200.3,35.0,1500.0,1,55.2,200.0,2,1670000000,1670007200,7001,1.5,0,0,1,4,12,1);
INSERT INTO electric_grid_load_balancing VALUES (2,11,2022,8200.0,4100.0,32.5,1400.0,2,53.0,250.0,3,1665000000,1665003600,7002,1.8,0,1,2,5,12,1);
INSERT INTO electric_grid_load_balancing VALUES (3,12,2023,8700.7,4250.6,38.0,1600.0,1,56.5,180.0,1,1675000000,1675005400,7003,1.3,0,0,1,4,12,1);

-- Inventory of chemicals used in water treatment plants
CREATE TABLE water_treatment_chemical_inventory
(
    inventory_id             INTEGER PRIMARY KEY,
    plant_id                 INTEGER,
    chemical_code            INTEGER,
    quantity_kg              REAL,
    unit_cost_usd            REAL,
    supplier_id              INTEGER,
    received_date_year       INTEGER,
    expiration_year          INTEGER,
    safety_stock_kg          REAL,
    reorder_level_kg         REAL,
    storage_location_code    INTEGER,
    handling_requirement_code INTEGER,
    created_ts               INTEGER,
    updated_ts               INTEGER,
    quality_check_flag       INTEGER,
    audit_flag               INTEGER,
    reserve_flag             INTEGER,
    audit_compliance_flag    INTEGER,
    regulatory_body_code     INTEGER,
    data_source_code         INTEGER,
    review_status_code       INTEGER
);
INSERT INTO water_treatment_chemical_inventory VALUES (1,401,101,5000.0,12.5,801,2022,2025,1000.0,1500.0,10,2,1680000000,1680007200,1,0,0,1,30,5,1);
INSERT INTO water_treatment_chemical_inventory VALUES (2,402,102,3000.0,15.0,802,2021,2024,800.0,1200.0,11,3,1675000000,1675003600,1,1,0,1,31,6,2);
INSERT INTO water_treatment_chemical_inventory VALUES (3,403,103,4500.0,13.2,803,2023,2026,900.0,1300.0,12,2,1685000000,1685005400,1,0,0,1,32,5,1);

-- Models used for smart city transportation planning
CREATE TABLE smart_city_transportation_models
(
    model_id                 INTEGER PRIMARY KEY,
    city_code                INTEGER,
    model_version            INTEGER,
    forecast_year            INTEGER,
    predicted_ridership_millions REAL,
    peak_hour_capacity_veh   INTEGER,
    average_speed_kmph       REAL,
    congestion_index         REAL,
    emission_reduction_tco2  REAL,
    public_transport_share_percent REAL,
    bike_share_share_percent REAL,
    autonomous_vehicle_share_percent REAL,
    created_ts               INTEGER,
    updated_ts               INTEGER,
    analyst_id               INTEGER,
    validation_score         REAL,
    scenario_code            INTEGER,
    data_source_code         INTEGER,
    audit_flag               INTEGER,
    reserve_flag             INTEGER,
    audit_compliance_flag    INTEGER,
    review_status_code       INTEGER
);
INSERT INTO smart_city_transportation_models VALUES (1,1001,1,2025,2.5,15000,35.0,0.45,1200.0,55.0,15.0,5.0,1690000000,1690007200,9001,0.92,2,7,0,0,1,1);
INSERT INTO smart_city_transportation_models VALUES (2,1002,1,2025,3.0,18000,33.5,0.40,1500.0,60.0,12.0,8.0,1695000000,1695005400,9002,0.95,3,8,0,0,1,2);
INSERT INTO smart_city_transportation_models VALUES (3,1003,2,2026,2.8,16000,34.0,0.42,1300.0,58.0,14.0,6.0,1700000000,1700003600,9003,0.94,1,9,0,0,1,1);

-- Records of airline fuel consumption per flight
CREATE TABLE airline_fuel_consumption
(
    record_id                INTEGER PRIMARY KEY,
    airline_id               INTEGER,
    flight_number            INTEGER,
    year                     INTEGER,
    month                    INTEGER,
    route_code               INTEGER,
    fuel_type_code           INTEGER,
    fuel_consumed_liters     REAL,
    distance_nm              REAL,
    average_fuel_flow_kgph   REAL,
    takeoff_fuel_kg          INTEGER,
    landing_fuel_kg          INTEGER,
    payload_tons             REAL,
    created_ts               INTEGER,
    updated_ts               INTEGER,
    co2_emissions_kg         REAL,
    fuel_cost_usd            REAL,
    audit_flag               INTEGER,
    reserve_flag             INTEGER,
    audit_compliance_flag    INTEGER,
    data_source_code         INTEGER
);
INSERT INTO airline_fuel_consumption VALUES (1,5010,1001,2023,7,2001,1,25000.0,3000.0,2500.0,15000,13000,80.0,1708000000,1708007200,65000.0,50000.0,0,0,1,4);
INSERT INTO airline_fuel_consumption VALUES (2,5011,1002,2023,8,2002,2,22000.0,2800.0,2400.0,14000,12000,75.0,1709000000,1709003600,57000.0,47000.0,0,0,1,5);
INSERT INTO airline_fuel_consumption VALUES (3,5012,1003,2022,12,2003,1,26000.0,3200.0,2600.0,15500,13500,85.0,1710000000,1710005400,68000.0,52000.0,0,0,1,4);