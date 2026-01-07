-- Weather station observations adjacent to base schema
CREATE TABLE weather_station_observation
(
    observation_id      INTEGER PRIMARY KEY,
    station_id          INTEGER NOT NULL,
    obs_date            DATE NOT NULL,
    temperature         REAL NOT NULL,
    humidity            REAL NOT NULL,
    wind_speed          REAL NOT NULL,
    wind_dir            TEXT NOT NULL,
    precipitation       REAL NOT NULL,
    visibility          REAL NOT NULL,
    pressure            REAL NOT NULL,
    solar_radiation     REAL NOT NULL,
    dew_point           REAL NOT NULL,
    cloud_cover         INTEGER NOT NULL,
    uv_index            INTEGER NOT NULL,
    weather_code        TEXT NOT NULL,
    latitude            REAL NOT NULL,
    longitude           REAL NOT NULL,
    elevation           INTEGER NOT NULL,
    sensor_status       TEXT NOT NULL,
    data_quality        INTEGER NOT NULL
);
INSERT INTO weather_station_observation VALUES (1,101,'2024-01-15',5.2,78.0,12.3,'N',0.0,10.0,1013.5,200.0,2.1,2,5,'A01',46.95,7.44,545,'OK',1);
INSERT INTO weather_station_observation VALUES (2,102,'2024-01-15',-1.4,85.0,8.7,'NE',0.5,5.0,1020.0,150.0,1.5,4,3,'B03',47.10,8.20,600,'MAINT',2);
INSERT INTO weather_station_observation VALUES (3,103,'2024-01-15',12.0,60.0,5.0,'S',0.0,12.0,1008.0,250.0,3.0,1,9,'C07',46.70,7.80,480,'OK',3);

-- Public transport schedule adjacent to base schema
CREATE TABLE public_transport_schedule
(
    schedule_id            INTEGER PRIMARY KEY,
    route_id               INTEGER NOT NULL,
    service_day            TEXT NOT NULL,
    departure_time         TEXT NOT NULL,
    arrival_time           TEXT NOT NULL,
    vehicle_type           TEXT NOT NULL,
    operator_name          TEXT NOT NULL,
    stop_sequence          INTEGER NOT NULL,
    stop_id                INTEGER NOT NULL,
    stop_name              TEXT NOT NULL,
    platform_number        INTEGER NOT NULL,
    wheelchair_accessible TEXT NOT NULL,
    fare_zone              INTEGER NOT NULL,
    expected_travel_time   INTEGER NOT NULL,
    actual_travel_time     INTEGER NOT NULL,
    delay_reason           TEXT NOT NULL,
    created_date           DATE NOT NULL,
    last_updated           DATE NOT NULL,
    schedule_status        TEXT NOT NULL,
    notes                  TEXT NOT NULL
);
INSERT INTO public_transport_schedule VALUES (1001,200,'Weekday','08:00','08:45','Bus','CityTransit',1,3001,'CentralStation',2,'Yes',1,45,44,'', '2024-01-01','2024-01-10','Active','');
INSERT INTO public_transport_schedule VALUES (1002,201,'Weekend','09:30','10:20','Tram','MetroLine',1,3002,'OldTown',1,'No',2,50,52,'Mechanical', '2024-01-05','2024-01-12','Active','');
INSERT INTO public_transport_schedule VALUES (1003,202,'Holiday','14:15','15:00','Bus','RapidBus',1,3003,'University',3,'Yes',3,45,45,'', '2024-01-03','2024-01-11','Cancelled','Maintenance');

-- Urban green space inventory adjacent to base schema
CREATE TABLE urban_green_space_inventory
(
    space_id               INTEGER PRIMARY KEY,
    city_id                INTEGER NOT NULL,
    name                   TEXT NOT NULL,
    area_sq_m              INTEGER NOT NULL,
    tree_count             INTEGER NOT NULL,
    bench_count            INTEGER NOT NULL,
    playground_present     TEXT NOT NULL,
    water_feature_present  TEXT NOT NULL,
    lighting_type          TEXT NOT NULL,
    maintenance_company    TEXT NOT NULL,
    last_maintenance       DATE NOT NULL,
    soil_type              TEXT NOT NULL,
    irrigation_type        TEXT NOT NULL,
    funding_source         TEXT NOT NULL,
    created_year           INTEGER NOT NULL,
    latitude               REAL NOT NULL,
    longitude              REAL NOT NULL,
    zoning_category        TEXT NOT NULL,
    accessibility_rating   INTEGER NOT NULL,
    visitor_count_year    INTEGER NOT NULL
);
INSERT INTO urban_green_space_inventory VALUES (5001,10,'RiverPark',25000,320,45,'Yes','No','LED','GreenCare','2024-01-08','Loam','Drip','Municipal',2015,46.95,7.45,'Recreation',4,150000);
INSERT INTO urban_green_space_inventory VALUES (5002,11,'HillGarden',18000,200,30,'No','Yes','Solar','NatureFix','2024-01-06','Sandy','Sprinkler','Private',2018,47.10,8.22,'Preserve',5,90000);
INSERT INTO urban_green_space_inventory VALUES (5003,12,'LakeSide',30000,500,60,'Yes','Yes','LED','EcoMaintain','2024-01-09','Clay','Drip','Public',2020,46.70,7.80,'Recreation',5,200000);

-- Energy market trade adjacent to base schema
CREATE TABLE energy_market_trade
(
    trade_id            INTEGER PRIMARY KEY,
    market_id           INTEGER NOT NULL,
    trade_date          DATE NOT NULL,
    instrument_type     TEXT NOT NULL,
    volume              REAL NOT NULL,
    price               REAL NOT NULL,
    buyer_id            INTEGER NOT NULL,
    seller_id           INTEGER NOT NULL,
    settlement_date     DATE NOT NULL,
    contract_status     TEXT NOT NULL,
    trade_currency      TEXT NOT NULL,
    exchange_rate       REAL NOT NULL,
    fee                 REAL NOT NULL,
    net_amount          REAL NOT NULL,
    trade_type          TEXT NOT NULL,
    execution_venue     TEXT NOT NULL,
    broker_id           INTEGER NOT NULL,
    regulator_id        INTEGER NOT NULL,
    clearance_status    TEXT NOT NULL,
    notes               TEXT NOT NULL
);
INSERT INTO energy_market_trade VALUES (9001,1,'2024-01-12','Futures',1500.0,45.3,2001,3001,'2024-01-20','Confirmed','USD',1.0,15.0,68000.0,'Buy','ExchangeA',4001,5001,'Cleared','');
INSERT INTO energy_market_trade VALUES (9002,2,'2024-01-13','Options',800.0,30.5,2002,3002,'2024-01-22','Pending','EUR',1.1,10.0,24400.0,'Sell','ExchangeB',4002,5002,'Pending','CheckMargin');
INSERT INTO energy_market_trade VALUES (9003,3,'2024-01-14','Spot',2000.0,50.0,2003,3003,'2024-01-14','Settled','GBP',1.3,20.0,130000.0,'Buy','ExchangeC',4003,5003,'Settled','');

-- Clinical trial enrollment adjacent to base schema
CREATE TABLE clinical_trial_enrollment
(
    enrollment_id          INTEGER PRIMARY KEY,
    trial_id               INTEGER NOT NULL,
    participant_id         INTEGER NOT NULL,
    enrollment_date        DATE NOT NULL,
    consent_status         TEXT NOT NULL,
    randomization_group    TEXT NOT NULL,
    site_id                INTEGER NOT NULL,
    investigator_id        INTEGER NOT NULL,
    baseline_score         REAL NOT NULL,
    followup_date          DATE NOT NULL,
    outcome_measure        TEXT NOT NULL,
    adverse_event_reported TEXT NOT NULL,
    dosage_mg              REAL NOT NULL,
    administration_route   TEXT NOT NULL,
    compliance_rate        REAL NOT NULL,
    visit_number           INTEGER NOT NULL,
    protocol_version       TEXT NOT NULL,
    created_by             TEXT NOT NULL,
    created_at             DATE NOT NULL,
    status                 TEXT NOT NULL
);
INSERT INTO clinical_trial_enrollment VALUES (7001,101,50001,'Consented','Placebo',10,1001,'2024-01-01',85.0,'2024-03-01','BloodPressure','No',0.0,'Oral',0.98,1,'v1.0','CoordinatorA','2024-01-01','Active');
INSERT INTO clinical_trial_enrollment VALUES (7002,102,50002,'Consented','TreatmentA',11,1002,'2024-01-05',78.5,'2024-03-05','Cholesterol','Yes',50.0,'IV',0.95,1,'v2.1','CoordinatorB','2024-01-05','Active');
INSERT INTO clinical_trial_enrollment VALUES (7003,103,50003,'Pending','TreatmentB',12,1003,'2024-02-01',90.0,'2024-04-01','Glucose','No',100.0,'Oral',0.99,1,'v1.3','CoordinatorC','2024-02-01','Pending');

-- Satellite image metadata adjacent to base schema
CREATE TABLE satellite_image_metadata
(
    image_id           INTEGER PRIMARY KEY,
    satellite_name     TEXT NOT NULL,
    capture_date       DATE NOT NULL,
    capture_time       TEXT NOT NULL,
    resolution_m       REAL NOT NULL,
    swath_width_km     REAL NOT NULL,
    cloud_coverage_percent REAL NOT NULL,
    sun_elevation      REAL NOT NULL,
    sun_azimuth        REAL NOT NULL,
    sensor_type        TEXT NOT NULL,
    orbit_number       INTEGER NOT NULL,
    processing_level   TEXT NOT NULL,
    file_format        TEXT NOT NULL,
    file_size_mb       REAL NOT NULL,
    geographic_area    TEXT NOT NULL,
    north_lat          REAL NOT NULL,
    south_lat          REAL NOT NULL,
    east_lon           REAL NOT NULL,
    west_lon           REAL NOT NULL,
    quality_flag       TEXT NOT NULL
);
INSERT INTO satellite_image_metadata VALUES (30001,'Sentinel2','2024-01-10','10:15:00',10.0,290.0,12.5,45.0,135.0,'Multispectral',3456,'Level2A','GeoTIFF',150.0,'RegionA',46.5,45.5,8.0,7.0,'Good');
INSERT INTO satellite_image_metadata VALUES (30002,'Landsat8','2024-01-11','11:30:00',30.0,185.0,5.0,50.0,140.0,'OLI_TIRS',1122,'Level1', 'GeoTIFF',250.0,'RegionB',47.0,46.0,9.5,8.5,'Excellent');
INSERT INTO satellite_image_metadata VALUES (30003,'WorldView3','2024-01-12','09:45:00',0.31,16.0,0.3,60.0,150.0,'PanSharp',5678,'Level3', 'JPEG2000',500.0,'RegionC',48.2,47.2,10.2,9.2,'Excellent');

-- Museum artifact condition adjacent to base schema
CREATE TABLE museum_artifact_condition
(
    condition_id          INTEGER PRIMARY KEY,
    artifact_id           INTEGER NOT NULL,
    inspection_date       DATE NOT NULL,
    condition_status      TEXT NOT NULL,
    damage_type           TEXT NOT NULL,
    severity_level        INTEGER NOT NULL,
    conservation_needed   TEXT NOT NULL,
    conservator_id        INTEGER NOT NULL,
    notes                 TEXT NOT NULL,
    temperature_c         REAL NOT NULL,
    humidity_percent      REAL NOT NULL,
    light_lux             REAL NOT NULL,
    location_hall         TEXT NOT NULL,
    display_status        TEXT NOT NULL,
    funding_source        TEXT NOT NULL,
    estimated_restoration_cost REAL NOT NULL,
    next_inspection_due   DATE NOT NULL,
    inspector_name        TEXT NOT NULL,
    catalog_number        TEXT NOT NULL,
    warranty_expiry       DATE NOT NULL
);
INSERT INTO museum_artifact_condition VALUES (4001,60001,'2024-01-07','Good','None',0,'No',8001,'No visible issues',21.5,45.0,150.0,'HallA','OnDisplay','GrantA',0.0,'2025-01-07','InspectorA','CAT001','2028-12-31');
INSERT INTO museum_artifact_condition VALUES (4002,60002,'2024-01-08','Fair','Crack',2,'Yes',8002,'Minor crack on base',19.0,50.0,180.0,'HallB','InStorage','GrantB',12000.0,'2024-07-08','InspectorB','CAT002','2029-06-30');
INSERT INTO museum_artifact_condition VALUES (4003,60003,'2024-01-09','Critical','Corrosion',5,'Yes',8003,'Severe corrosion on metal',18.5,55.0,200.0,'HallC','UnderRestoration','GrantC',50000.0,'2024-04-09','InspectorC','CAT003','2027-03-15');

-- Marine fishing vessel log adjacent to base schema
CREATE TABLE marine_fishing_vessel_log
(
    log_id               INTEGER PRIMARY KEY,
    vessel_id            INTEGER NOT NULL,
    voyage_date          DATE NOT NULL,
    departure_port       TEXT NOT NULL,
    arrival_port         TEXT NOT NULL,
    fish_species         TEXT NOT NULL,
    catch_weight_kg      REAL NOT NULL,
    fuel_consumed_liters REAL NOT NULL,
    distance_nm          REAL NOT NULL,
    average_speed_knots  REAL NOT NULL,
    crew_count           INTEGER NOT NULL,
    weather_conditions   TEXT NOT NULL,
    sea_state            TEXT NOT NULL,
    gear_type            TEXT NOT NULL,
    trip_duration_hours  REAL NOT NULL,
    port_fees            REAL NOT NULL,
    regulatory_area      TEXT NOT NULL,
    inspector_id         INTEGER NOT NULL,
    remarks              TEXT NOT NULL,
    entry_timestamp      DATE NOT NULL
);
INSERT INTO marine_fishing_vessel_log VALUES (8001,90001,'2024-01-03','PortA','PortB','Cod',150.5,800.0,120.0,10.5,12,'Clear','Calm','Trawl',11.4,250.0,'AreaX',7001,'No issues','2024-01-04');
INSERT INTO marine_fishing_vessel_log VALUES (8002,90002,'2024-01-04','PortC','PortD','Haddock',200.0,950.0,150.0,9.8,15,'Rain','Moderate','Longline',15.3,300.0,'AreaY',7002,'Gear check required','2024-01-05');
INSERT INTO marine_fishing_vessel_log VALUES (8003,90003,'2024-01-05','PortE','PortF','Mackerel',180.2,870.0,130.0,11.0,10,'Fog','Rough','PurseSeine',13.0,275.0,'AreaZ',7003,'Delayed arrival','2024-01-06');

-- Renewable energy farm metrics adjacent to base schema
CREATE TABLE renewable_energy_farm_metrics
(
    farm_id                INTEGER PRIMARY KEY,
    farm_name              TEXT NOT NULL,
    metric_date            DATE NOT NULL,
    energy_generated_mwh   REAL NOT NULL,
    capacity_factor        REAL NOT NULL,
    average_wind_speed    REAL NOT NULL,
    solar_irradiance      REAL NOT NULL,
    availability_percent  REAL NOT NULL,
    downtime_hours         REAL NOT NULL,
    maintenance_events    INTEGER NOT NULL,
    grid_connection_status TEXT NOT NULL,
    emissions_avoided_tons REAL NOT NULL,
    revenue_usd            REAL NOT NULL,
    operating_cost_usd     REAL NOT NULL,
    inverter_efficiency    REAL NOT NULL,
    panel_efficiency      REAL NOT NULL,
    land_use_hectares     INTEGER NOT NULL,
    water_usage_liters    REAL NOT NULL,
    subsidy_amount_usd    REAL NOT NULL,
    notes                 TEXT NOT NULL,
    last_updated           DATE NOT NULL
);
INSERT INTO renewable_energy_farm_metrics VALUES (10001,'WindFarmA','2024-01-15',350.0,0.35,7.2,0.0,98.5,12.0,3,'Connected',240.0,50000.0,20000.0,0.96,0.0,1200,0.0,15000.0,'', '2024-01-16');
INSERT INTO renewable_energy_farm_metrics VALUES (10002,'SolarFarmB','2024-01-15',480.0,0.45,0.0,5.5,99.0,5.0,1,'Connected',380.0,75000.0,25000.0,0.0,0.92,800,15000.0,20000.0,'', '2024-01-16');
INSERT INTO renewable_energy_farm_metrics VALUES (10003,'HybridFarmC','2024-01-15',610.0,0.40,6.5,4.2,97.0,8.0,2,'Connected',520.0,90000.0,30000.0,0.94,0.88,1500,20000.0,25000.0,'', '2024-01-16');

-- Digital content license adjacent to base schema
CREATE TABLE digital_content_license
(
    license_id          INTEGER PRIMARY KEY,
    content_id          INTEGER NOT NULL,
    license_type        TEXT NOT NULL,
    provider_name       TEXT NOT NULL,
    start_date          DATE NOT NULL,
    end_date            DATE NOT NULL,
    geographic_scope    TEXT NOT NULL,
    usage_rights        TEXT NOT NULL,
    exclusivity         TEXT NOT NULL,
    fee_amount          REAL NOT NULL,
    currency            TEXT NOT NULL,
    renewal_option      TEXT NOT NULL,
    termination_clause  TEXT NOT NULL,
    compliance_audit_date DATE NOT NULL,
    audit_status        TEXT NOT NULL,
    notes               TEXT NOT NULL,
    created_by          TEXT NOT NULL,
    created_at          DATE NOT NULL,
    last_modified       DATE NOT NULL,
    status              TEXT NOT NULL
);
INSERT INTO digital_content_license VALUES (90001,110001,'Streaming','ProviderA','2024-01-01','2025-01-01','Global','Unlimited','Exclusive',50000.0,'USD','Automatic','30DaysNotice','2024-06-01','Passed','', 'AdminA','2024-01-01','2024-06-01','Active');
INSERT INTO digital_content_license VALUES (90002,110002,'Download','ProviderB','2024-02-01','2026-02-01','Regional','Limited','NonExclusive',25000.0,'EUR','Manual','60DaysNotice','2024-07-01','Pending','', 'AdminB','2024-02-01','2024-07-01','Pending');
INSERT INTO digital_content_license VALUES (90003,110003,'Broadcast','ProviderC','2024-03-01','2027-03-01','National','Limited','Exclusive',75000.0,'GBP','Automatic','90DaysNotice','2024-08-01','Passed','', 'AdminC','2024-03-01','2024-08-01','Active');