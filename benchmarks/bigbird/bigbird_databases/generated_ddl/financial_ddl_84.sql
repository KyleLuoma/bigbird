-- District public transport usage statistics
CREATE TABLE district_public_transport_usage
(
    district_id                INTEGER NOT NULL,
    year                       INTEGER NOT NULL,
    month                      INTEGER NOT NULL,
    bus_routes                 INTEGER NOT NULL,
    tram_routes                INTEGER NOT NULL,
    avg_daily_riders           INTEGER NOT NULL,
    peak_rider_count           INTEGER NOT NULL,
    total_rides                INTEGER NOT NULL,
    zero_fare_rides            INTEGER NOT NULL,
    electric_bus_percent       REAL    NOT NULL,
    total_distance_km          REAL    NOT NULL,
    fuel_consumption_liters    REAL    NOT NULL,
    emissions_kg               REAL    NOT NULL,
    maintenance_events         INTEGER NOT NULL,
    avg_wait_time_min          REAL    NOT NULL,
    service_hours              INTEGER NOT NULL,
    incidents_reported         INTEGER NOT NULL,
    customer_satisfaction_score REAL   NOT NULL,
    budget_allocated           REAL    NOT NULL,
    subsidy_received           REAL    NOT NULL,
    notes                      TEXT
);

INSERT INTO district_public_transport_usage VALUES (1,2023,5,12,3,4500,7200,138000,2000,15.2,3200.5,15000.0,1250.0,8,4.5,1500,2,8.7,2500000.0,500000.0,'no notes');
INSERT INTO district_public_transport_usage VALUES (2,2023,5,9,2,3800,6100,115000,1800,12.5,2700.0,12000.0,1100.0,5,5.0,1400,1,9.1,2100000.0,400000.0,'standard operations');
INSERT INTO district_public_transport_usage VALUES (3,2023,5,15,4,5200,8600,162000,2500,18.0,3500.8,17000.0,1400.0,10,3.8,1600,3,8.2,3000000.0,600000.0,'expanded service');

-- Regional economic indicator details
CREATE TABLE regional_economic_indicator_detail
(
    region_id                INTEGER NOT NULL,
    year                     INTEGER NOT NULL,
    quarter                  INTEGER NOT NULL,
    gdp_nominal              REAL    NOT NULL,
    gdp_per_capita           REAL    NOT NULL,
    unemployment_rate        REAL    NOT NULL,
    inflation_rate           REAL    NOT NULL,
    consumer_confidence_index REAL   NOT NULL,
    business_investment_total REAL   NOT NULL,
    foreign_direct_investment REAL   NOT NULL,
    trade_balance            REAL    NOT NULL,
    export_total             REAL    NOT NULL,
    import_total             REAL    NOT NULL,
    fiscal_surplus           REAL    NOT NULL,
    deficit_to_gdp           REAL    NOT NULL,
    debt_to_gdp              REAL    NOT NULL,
    poverty_rate             REAL    NOT NULL,
    median_income            REAL    NOT NULL,
    average_house_price      REAL    NOT NULL,
    construction_permits    INTEGER NOT NULL,
    renewable_energy_capacity REAL   NOT NULL,
    energy_consumption       REAL    NOT NULL,
    total_tax_revenue        REAL    NOT NULL
);

INSERT INTO regional_economic_indicator_detail VALUES (101,2023,2,4500000000.0,38000.0,6.2,2.8,95.0,120000000.0,20000000.0,-5000000.0,300000000.0,295000000.0,15000000.0,0.6,45.0,13.5,55000.0,320000.0,1250,5000.0,2500000.0,800000000.0);
INSERT INTO regional_economic_indicator_detail VALUES (102,2023,2,3800000000.0,34000.0,7.1,3.1,88.0,95000000.0,15000000.0,-3000000.0,250000000.0,253000000.0,12000000.0,0.5,42.0,12.0,48000.0,280000.0,980,4200.0,2100000.0,700000000.0);
INSERT INTO regional_economic_indicator_detail VALUES (103,2023,2,5200000000.0,41000.0,5.5,2.5,102.0,135000000.0,25000000.0,-7000000.0,350000000.0,357000000.0,18000000.0,0.7,48.0,14.2,60000.0,380000.0,1400,6200.0,2800000.0,950000000.0);

-- Environmental sensor station metadata
CREATE TABLE environmental_sensor_station_meta
(
    station_id               INTEGER NOT NULL,
    installation_date        DATE    NOT NULL,
    latitude                 REAL    NOT NULL,
    longitude                REAL    NOT NULL,
    elevation_m              REAL    NOT NULL,
    station_type             TEXT    NOT NULL,
    manufacturer             TEXT    NOT NULL,
    firmware_version         TEXT    NOT NULL,
    last_calibration_date    DATE    NOT NULL,
    sensor_count             INTEGER NOT NULL,
    data_retention_days     INTEGER NOT NULL,
    power_source             TEXT    NOT NULL,
    communication_protocol   TEXT    NOT NULL,
    network_id               INTEGER NOT NULL,
    maintenance_interval_days INTEGER NOT NULL,
    responsible_department   TEXT    NOT NULL,
    contact_email            TEXT    NOT NULL,
    warranty_expiry          DATE    NOT NULL,
    operational_status       TEXT    NOT NULL,
    notes                    TEXT
);

INSERT INTO environmental_sensor_station_meta VALUES (1001,'2021-06-15',45.12,-93.45,250.0,'air_quality','EnviroTech','v1.3','2023-01-10',8,365,'solar','MQTT',12,180,'Environmental','enviro@example.com','2025-06-15','active','installed near park');
INSERT INTO environmental_sensor_station_meta VALUES (1002,'2020-03-22',38.90,-77.03,150.0,'water_quality','HydroSensors','v2.0','2022-11-05',5,730,'grid','HTTP',8,365,'WaterDept','water@example.com','2024-03-22','maintenance','river basin station');
INSERT INTO environmental_sensor_station_meta VALUES (1003,'2022-11-05',51.50,-0.12,35.0,'soil_moisture','AgriSense','v1.0','2023-08-20',3,180,,'LoRa',5,90,'Agriculture','soil@example.com','2026-11-05','active','field trial site');

-- Fleet vehicle telemetry extended
CREATE TABLE fleet_vehicle_telemetry_extended
(
    vehicle_id               INTEGER NOT NULL,
    timestamp                DATETIME NOT NULL,
    speed_kmh                REAL    NOT NULL,
    engine_rpm               INTEGER NOT NULL,
    fuel_level_percent       REAL    NOT NULL,
    latitude                 REAL    NOT NULL,
    longitude                REAL    NOT NULL,
    altitude_m               REAL    NOT NULL,
    odometer_km              REAL    NOT NULL,
    tire_pressure_front_left REAL    NOT NULL,
    tire_pressure_front_right REAL   NOT NULL,
    tire_pressure_rear_left  REAL   NOT NULL,
    tire_pressure_rear_right REAL   NOT NULL,
    battery_voltage          REAL    NOT NULL,
    coolant_temp_c           REAL    NOT NULL,
    oil_pressure_kpa         REAL    NOT NULL,
    brake_status             TEXT    NOT NULL,
    gear_position            TEXT    NOT NULL,
    cruise_control_active    INTEGER NOT NULL,
    acceleration_g           REAL    NOT NULL,
    emission_co2_gkm         REAL    NOT NULL,
    driver_id                INTEGER NOT NULL,
    route_id                 INTEGER NOT NULL,
    trip_id                  INTEGER NOT NULL
);

INSERT INTO fleet_vehicle_telemetry_extended VALUES (2001,'2023-07-15 08:30:00',65.2,2500,78.5,40.7128,-74.0060,10.0,15230.5,32.5,32.4,30.1,30.0,12.6,85.0,250.0,'released','D',1,0.15,210.0,301,12,4501);
INSERT INTO fleet_vehicle_telemetry_extended VALUES (2002,'2023-07-15 08:45:00',48.7,1800,55.2,34.0522,-118.2437,15.0,8450.3,31.8,31.9,29.7,29.8,12.4,78.0,230.0,'applied','N',0,0.08,180.0,302,15,4502);
INSERT INTO fleet_vehicle_telemetry_extended VALUES (2003,'2023-07-15 09:00:00',82.5,3000,92.1,41.8781,-87.6298,12.0,23000.0,33.0,33.0,31.5,31.4,12.8,90.0,260.0,'released','D',1,0.22,230.0,303,18,4503);

-- Digital asset registry
CREATE TABLE digital_asset_registry
(
    asset_id               INTEGER NOT NULL,
    asset_type             TEXT    NOT NULL,
    creation_date          DATE    NOT NULL,
    owner_id               INTEGER NOT NULL,
    storage_location       TEXT    NOT NULL,
    file_hash              TEXT    NOT NULL,
    file_size_bytes        INTEGER NOT NULL,
    encryption_algorithm   TEXT    NOT NULL,
    access_level           TEXT    NOT NULL,
    checksum_md5           TEXT    NOT NULL,
    checksum_sha256        TEXT    NOT NULL,
    retained_until         DATE    NOT NULL,
    compliance_status      TEXT    NOT NULL,
    last_accessed          DATE    NOT NULL,
    download_count         INTEGER NOT NULL,
    version_number         INTEGER NOT NULL,
    related_asset_id       INTEGER,
    tags                   TEXT,
    description            TEXT,
    retention_policy       TEXT,
    audit_trail_id         INTEGER,
    is_active              INTEGER NOT NULL
);

INSERT INTO digital_asset_registry VALUES (5001,'document','2022-01-10',100,'/srv/docs','a1b2c3d4e5',25400,'AES256','public','md5a1b2c3','sha256a1b2c3','2025-01-10','compliant','2023-07-01',12,3,NULL,'finance,report','Annual financial report','standard','9001',1);
INSERT INTO digital_asset_registry VALUES (5002,'image','2023-03-22',101,'/srv/images','f6g7h8i9j0',1024000,'RSA2048','restricted','md5f6g7h','sha256f6g7h','2026-03-22','compliant','2023-07-02',4,1,NULL,'marketing,campaign','Q3 marketing banner','standard','9002',1);
INSERT INTO digital_asset_registry VALUES (5003,'video','2021-11-05',102,'/srv/media','k1l2m3n4o5',50200000,'AES256','confidential','md5k1l2m','sha256k1l2m','2024-11-05','non_compliant','2023-06-30',7,2,NULL,'training,internal','Employee onboarding video','restricted','9003',0);

-- Supplier performance dashboard
CREATE TABLE supplier_performance_dashboard
(
    supplier_id               INTEGER NOT NULL,
    evaluation_period_start   DATE NOT NULL,
    evaluation_period_end     DATE NOT NULL,
    on_time_delivery_percent REAL NOT NULL,
    quality_score             REAL NOT NULL,
    compliance_violations     INTEGER NOT NULL,
    avg_response_time_days    REAL NOT NULL,
    contract_value_usd        REAL NOT NULL,
    number_of_incidents       INTEGER NOT NULL,
    sustainability_score      REAL NOT NULL,
    innovation_score          REAL NOT NULL,
    risk_rating               TEXT NOT NULL,
    audit_passed              INTEGER NOT NULL,
    penalties_incurred_usd     REAL NOT NULL,
    corrective_actions_taken  INTEGER NOT NULL,
    relationship_manager_id   INTEGER NOT NULL,
    communication_score       REAL NOT NULL,
    partnership_level         TEXT NOT NULL,
    warranty_claims           INTEGER NOT NULL,
    cost_savings_usd          REAL NOT NULL,
    lead_time_days            REAL NOT NULL,
    notes                     TEXT
);

INSERT INTO supplier_performance_dashboard VALUES (3001,'2023-01-01','2023-06-30',96.5,89.2,0,1.2,1500000.0,2,78.0,85.0,'low',1,0.0,1,45,92.0,'gold',0,120000.0,15.0,'on track');
INSERT INTO supplier_performance_dashboard VALUES (3002,'2023-01-01','2023-06-30',88.0,73.5,3,2.8,800000.0,5,65.0,70.0,'medium',0,25000.0,3,46,78.0,'silver',2,45000.0,22.0,'needs improvement');
INSERT INTO supplier_performance_dashboard VALUES (3003,'2023-01-01','2023-06-30',99.1,94.8,0,0.9,2200000.0,1,92.0,95.0,'low',1,0.0,0,47,96.5,'platinum',0,200000.0,12.0,'excellent performance');

-- Healthcare provider network
CREATE TABLE healthcare_provider_network
(
    provider_id               INTEGER NOT NULL,
    network_id                INTEGER NOT NULL,
    provider_name             TEXT    NOT NULL,
    provider_type             TEXT    NOT NULL,
    address_line1             TEXT    NOT NULL,
    address_line2             TEXT,
    city                      TEXT    NOT NULL,
    state                     TEXT    NOT NULL,
    zip_code                  TEXT    NOT NULL,
    phone_number              TEXT    NOT NULL,
    email                     TEXT    NOT NULL,
    tax_id                    TEXT    NOT NULL,
    license_number            TEXT    NOT NULL,
    accreditation_status      TEXT    NOT NULL,
    bed_count                 INTEGER NOT NULL,
    specialty_count           INTEGER NOT NULL,
    avg_patient_satisfaction  REAL    NOT NULL,
    avg_wait_time_minutes    REAL    NOT NULL,
    contracts_active          INTEGER NOT NULL,
    insurance_partners        TEXT    NOT NULL,
    emergency_services_available INTEGER NOT NULL,
    telemedicine_capability   INTEGER NOT NULL,
    operating_hours           TEXT    NOT NULL,
    notes                     TEXT
);

INSERT INTO healthcare_provider_network VALUES (4001,10,'Central Hospital','hospital','123 Main St','','Metropolis','NY','10001','555-1234','info@centralhospital.com','12-3456789','LIC12345','accredited',350,12,8.9,15.0,1,'Aetna;BlueCross','1','1','24/7','major regional hospital');
INSERT INTO healthcare_provider_network VALUES (4002,10,'Downtown Clinic','clinic','456 Oak Ave','Suite 200','Metropolis','NY','10002','555-5678','contact@downtownclinic.com','98-7654321','LIC67890','accredited',45,5,9.2,10.0,1,'Cigna;UnitedHealth','1','1','08:00-20:00','walk-in clinic');
INSERT INTO healthcare_provider_network VALUES (4003,11,'Lakeside Health Center','clinic','789 Pine Rd','','Lake Town','CA','90210','555-9012','admin@lakesidehc.com','23-4567890','LIC54321','pending',30,3,7.8,20.0,0,'None','0','0','09:00-17:00','newly opened');

-- Renewable energy farm performance
CREATE TABLE renewable_energy_farm_performance
(
    farm_id                   INTEGER NOT NULL,
    farm_type                 TEXT    NOT NULL,
    location_latitude          REAL    NOT NULL,
    location_longitude         REAL    NOT NULL,
    installation_date          DATE    NOT NULL,
    capacity_mw               REAL    NOT NULL,
    average_output_mw         REAL    NOT NULL,
    capacity_factor_percent   REAL    NOT NULL,
    annual_generation_mwh     REAL    NOT NULL,
    operating_hours_year      REAL    NOT NULL,
    maintenance_events_year   INTEGER NOT NULL,
    downtime_hours            REAL    NOT NULL,
    emission_avoided_tons     REAL    NOT NULL,
    revenue_usd               REAL    NOT NULL,
    operational_cost_usd      REAL    NOT NULL,
    owner_company             TEXT    NOT NULL,
    grid_connection_status    TEXT    NOT NULL,
    power_purchase_agreement_id INTEGER NOT NULL,
    subsidies_received_usd    REAL    NOT NULL,
    net_profit_usd            REAL    NOT NULL,
    notes                     TEXT
);

INSERT INTO renewable_energy_farm_performance VALUES (6001,'solar',35.68,-120.45,'2018-03-12',50.0,42.5,24.0,372500.0,8760.0,12,48.0,15000.0,8000000.0,2000000.0,'SunPower Inc','connected',9001,500000.0,6300000.0,'optimal performance');
INSERT INTO renewable_energy_farm_performance VALUES (6002,'wind',42.12,-97.30,'2019-07-22',75.0,55.0,27.0,660000.0,8760.0,18,72.0,25000.0,12000000.0,3500000.0,'WindCorp','connected',9002,750000.0,7750000.0,'high wind consistency');
INSERT INTO renewable_energy_farm_performance VALUES (6003,'hydro',48.55,-122.68,'2015-11-05',100.0,85.0,30.0,900000.0,8760.0,20,60.0,40000.0,15000000.0,5000000.0,'HydroFlow','connected',9003,1000000.0,9500000.0,'stable water flow');

-- City infrastructure project phase
CREATE TABLE city_infrastructure_project_phase
(
    project_id               INTEGER NOT NULL,
    phase_id                 INTEGER NOT NULL,
    project_name             TEXT    NOT NULL,
    phase_name               TEXT    NOT NULL,
    start_date               DATE    NOT NULL,
    planned_end_date         DATE    NOT NULL,
    actual_end_date          DATE,
    budget_usd               REAL    NOT NULL,
    spent_usd                REAL    NOT NULL,
    percent_complete         REAL    NOT NULL,
    responsible_agency       TEXT    NOT NULL,
    primary_contractor       TEXT    NOT NULL,
    key_milestones           TEXT    NOT NULL,
    risk_status              TEXT    NOT NULL,
    environmental_impact_score REAL   NOT NULL,
    permits_obtained         INTEGER NOT NULL,
    public_comments_received INTEGER NOT NULL,
    traffic_disruption_level TEXT    NOT NULL,
    utility_interruptions    TEXT    NOT NULL,
    notes                    TEXT
);

INSERT INTO city_infrastructure_project_phase VALUES (7001,1,'Downtown Revitalization','Planning','2022-01-15','2022-12-31',NULL,12000000.0,3000000.0,25.0,'Urban Development Dept','BuildCo','Zoning approved;Design completed','low',45.0,5,120,'medium','partial','Initial phase');
INSERT INTO city_infrastructure_project_phase VALUES (7001,2,'Downtown Revitalization','Construction','2023-01-10','2024-06-30',NULL,50000000.0,15000000.0,30.0,'Urban Development Dept','BuildCo','Foundations laid;Structures erected','medium',60.0,8,300,'high','extensive','Construction in progress');
INSERT INTO city_infrastructure_project_phase VALUES (7001,3,'Downtown Revitalization','Finishing','2024-07-01','2025-12-31',NULL,20000000.0,5000000.0,20.0,'Urban Development Dept','BuildCo','Interior works; Landscaping','low',30.0,4,80,'low','minimal','Final phase nearing completion');

-- Digital payment gateway log
CREATE TABLE digital_payment_gateway_log
(
    log_id                INTEGER NOT NULL,
    transaction_id        TEXT    NOT NULL,
    gateway_id            INTEGER NOT NULL,
    timestamp             DATETIME NOT NULL,
    request_ip            TEXT    NOT NULL,
    response_status       TEXT    NOT NULL,
    processing_time_ms    INTEGER NOT NULL,
    amount_usd            REAL    NOT NULL,
    currency              TEXT    NOT NULL,
    merchant_id           INTEGER NOT NULL,
    terminal_id           INTEGER NOT NULL,
    card_scheme           TEXT    NOT NULL,
    fraud_check_passed    INTEGER NOT NULL,
    error_code            TEXT,
    error_message         TEXT,
    settlement_status     TEXT    NOT NULL,
    batch_id              INTEGER NOT NULL,
    retry_count           INTEGER NOT NULL,
    channel               TEXT    NOT NULL,
    notes                 TEXT
);

INSERT INTO digital_payment_gateway_log VALUES (8001,'TXN123456','1','2023-07-15 10:15:00','192.168.1.10','approved',250,125.00,'USD',9001,301,'visa',1,NULL,NULL,'settled',4001,0,'online','payment processed successfully');
INSERT INTO digital_payment_gateway_log VALUES (8002,'TXN123457','1','2023-07-15 10:16:30','192.168.1.11','declined',300,250.00,'EUR',9002,302,'mastercard',0,'E001','insufficient funds','failed',4001,0,'mobile','decline due to insufficient funds');
INSERT INTO digital_payment_gateway_log VALUES (8003,'TXN123458','2','2023-07-15 10:18:45','192.168.1.12','approved',180,75.50,'GBP',9003,303,'amex',1,NULL,NULL,'settled',4002,1,'POS','retries after network glitch');