-- Weather station monitoring data
CREATE TABLE weather_station (
    station_id            INTEGER   NOT NULL PRIMARY KEY,
    station_name          TEXT      NOT NULL,
    latitude              REAL      NOT NULL,
    longitude             REAL      NOT NULL,
    elevation_m           INTEGER   NOT NULL,
    install_date          DATE      NOT NULL,
    sensor_type_1         TEXT      NOT NULL,
    sensor_type_2         TEXT      NOT NULL,
    sensor_type_3         TEXT      NOT NULL,
    measurement_interval_min INTEGER NOT NULL,
    data_retention_days   INTEGER   NOT NULL,
    firmware_version      TEXT      NOT NULL,
    maintenance_cycle_months INTEGER NOT NULL,
    last_maintenance_date DATE      NOT NULL,
    power_source          TEXT      NOT NULL,
    connection_type       TEXT      NOT NULL,
    owner_organization    TEXT      NOT NULL,
    contact_phone         TEXT      NOT NULL,
    is_active             INTEGER   NOT NULL,
    latitude_hemisphere   TEXT      NOT NULL,
    longitude_hemisphere  TEXT      NOT NULL,
    timezone_offset       INTEGER   NOT NULL,
    notes                 TEXT
);

INSERT INTO weather_station VALUES (1,'StationAlpha',45.12,12.34,120,'2021-03-15','Thermometer','Barometer','Hygrometer',15,365,'v1.2',12,'2023-02-20','Solar','Wireless','MeteoCorp','5551234',1,'N','E',2,'Initial deployment');
INSERT INTO weather_station VALUES (2,'StationBeta',46.78,13.56,85,'2020-07-22','Thermometer','Anemometer','RainGauge',10,730,'v1.4',6,'2022-11-05','Mains','Fiber','WeatherInc','5555678',1,'N','E',1,'Upgraded firmware');
INSERT INTO weather_station VALUES (3,'StationGamma',44.55,11.99,200,'2019-11-01','Thermometer','Barometer','UVSensor',30,180,'v1.1',24,'2023-01-10','Solar','Satellite','ClimateLabs','5559012',0,'N','E',3,'Decommissioned');

-- Satellite observation records
CREATE TABLE satellite_observation (
    observation_id          INTEGER   NOT NULL PRIMARY KEY,
    satellite_name          TEXT      NOT NULL,
    sensor_name             TEXT      NOT NULL,
    observation_datetime    DATE      NOT NULL,
    orbit_type              TEXT      NOT NULL,
    resolution_m            REAL      NOT NULL,
    swath_width_km          REAL      NOT NULL,
    cloud_cover_percent    REAL      NOT NULL,
    target_latitude         REAL      NOT NULL,
    target_longitude        REAL      NOT NULL,
    processing_level        TEXT      NOT NULL,
    data_format             TEXT      NOT NULL,
    file_size_mb            REAL      NOT NULL,
    download_url            TEXT      NOT NULL,
    quality_flag            INTEGER   NOT NULL,
    acquisition_mode        TEXT      NOT NULL,
    mission_phase           TEXT      NOT NULL,
    instrument_temperature_c REAL     NOT NULL,
    calibration_timestamp   DATE      NOT NULL,
    operator_contact        TEXT      NOT NULL,
    is_valid                INTEGER   NOT NULL,
    notes                   TEXT
);

INSERT INTO satellite_observation VALUES (101,'SatA','Optical','2022-05-10','LEO',0.5,150,12.3,34.5,-117.8,'L1','GeoTIFF',250.5,'http://data.example.com/101',1,'Nadir','Phase1',-10.2,'2022-05-09','OpsTeamA',1,'Clear observation');
INSERT INTO satellite_observation VALUES (102,'SatB','Radar','2022-06-15','GEO',5.0,300,0.0,12.3,45.6,'L2','HDF5',1020.0,'http://data.example.com/102',0,'SideLook','Phase2',5.5,'2022-06-14','OpsTeamB',0,'Interference detected');
INSERT INTO satellite_observation VALUES (103,'SatC','Thermal','2022-07-20','MEO',1.2,200,8.7,-23.5,132.4,'L1B','NETCDF',560.0,'http://data.example.com/103',1,'Nadir','Phase3',-5.0,'2022-07-19','OpsTeamC',1,'Normal operation');

-- Environmental sensor station metadata
CREATE TABLE environmental_sensor_station (
    sensor_station_id       INTEGER   NOT NULL PRIMARY KEY,
    station_code            TEXT      NOT NULL,
    deployment_date         DATE      NOT NULL,
    latitude                REAL      NOT NULL,
    longitude               REAL      NOT NULL,
    elevation_m             INTEGER   NOT NULL,
    sensor_category         TEXT      NOT NULL,
    model_number            TEXT      NOT NULL,
    firmware_rev            TEXT      NOT NULL,
    battery_capacity_mah    INTEGER   NOT NULL,
    transmission_interval_min INTEGER NOT NULL,
    data_endpoint_url       TEXT      NOT NULL,
    last_data_timestamp     DATE      NOT NULL,
    status                  TEXT      NOT NULL,
    maintenance_status      TEXT      NOT NULL,
    owner_department        TEXT      NOT NULL,
    contact_email           TEXT      NOT NULL,
    is_calibrated           INTEGER   NOT NULL,
    calibration_date        DATE      NOT NULL,
    environmental_factor    TEXT      NOT NULL,
    measurement_units       TEXT      NOT NULL,
    notes                   TEXT
);

INSERT INTO environmental_sensor_station VALUES (5001,'ENV001','2021-01-10',40.7128,-74.0060,10,'AirQuality','AQ-100','revA',2000,30,'http://env.example.com/5001','2023-01-01','Active','Scheduled','EnvDept','env1@example.com',1,'2022-12-15','PM2.5','µg/m3','Urban monitoring');
INSERT INTO environmental_sensor_station VALUES (5002,'ENV002','2020-06-22',34.0522,-118.2437,15,'WaterQuality','WQ-200','revB',2500,60,'http://env.example.com/5002','2023-01-02','Active','Completed','EnvDept','env2@example.com',1,'2022-11-30','pH','units','Coastal monitoring');
INSERT INTO environmental_sensor_station VALUES (5003,'ENV003','2019-11-05',51.5074,-0.1278,8,'SoilMoisture','SM-300','revC',1800,45,'http://env.example.com/5003','2023-01-03','Inactive','Pending','EnvDept','env3@example.com',0,'0000-00-00','Volumetric','%','Rural testing');

-- Fleet vehicle maintenance records
CREATE TABLE fleet_vehicle_maintenance (
    maintenance_id          INTEGER   NOT NULL PRIMARY KEY,
    vehicle_id              INTEGER   NOT NULL,
    maintenance_date        DATE      NOT NULL,
    mileage_km              INTEGER   NOT NULL,
    service_type            TEXT      NOT NULL,
    service_center_name     TEXT      NOT NULL,
    technician_name         TEXT      NOT NULL,
    parts_replaced          TEXT      NOT NULL,
    labor_hours             REAL      NOT NULL,
    labor_cost_usd          REAL      NOT NULL,
    parts_cost_usd          REAL      NOT NULL,
    total_cost_usd          REAL      NOT NULL,
    next_service_due_km     INTEGER   NOT NULL,
    warranty_applied        INTEGER   NOT NULL,
    odometer_at_service     INTEGER   NOT NULL,
    fuel_type               TEXT      NOT NULL,
    emission_rating         TEXT      NOT NULL,
    notes                   TEXT
);

INSERT INTO fleet_vehicle_maintenance VALUES (9001,101,'2022-03-15',50000,'OilChange','AutoCenterA','JohnDoe','OilFilter,EngineOil',1.5,75.00,45.00,120.00,55000,1,50000,'Diesel','Euro5','Routine oil change');
INSERT INTO fleet_vehicle_maintenance VALUES (9002,102,'2022-06-20',75000,'BrakeInspection','AutoCenterB','JaneSmith','BrakePads,BrakeFluid',2.0,100.00,80.00,180.00,80000,0,75000,'Petrol','Euro6','Brake pads worn');
INSERT INTO fleet_vehicle_maintenance VALUES (9003,103,'2022-09-10',30000,'TransmissionCheck','AutoCenterC','MikeLee','TransmissionFluid',1.8,90.00,60.00,150.00,35000,1,30000,'Hybrid','Euro6d','Transmission fluid flush');

-- Vendor contract management
CREATE TABLE vendor_contracts (
    contract_id             INTEGER   NOT NULL PRIMARY KEY,
    vendor_name             TEXT      NOT NULL,
    contract_start_date     DATE      NOT NULL,
    contract_end_date       DATE      NOT NULL,
    service_scope           TEXT      NOT NULL,
    contract_value_usd      REAL      NOT NULL,
    payment_terms_days      INTEGER   NOT NULL,
    renewal_option          TEXT      NOT NULL,
    penalty_clause          TEXT      NOT NULL,
    governing_law           TEXT      NOT NULL,
    primary_contact_name    TEXT      NOT NULL,
    primary_contact_email   TEXT      NOT NULL,
    status                  TEXT      NOT NULL,
    last_amendment_date     DATE      NOT NULL,
    amendment_count         INTEGER   NOT NULL,
    confidentiality_level   TEXT      NOT NULL,
    dispute_resolution      TEXT      NOT NULL,
    performance_metric      TEXT      NOT NULL,
    compliance_requirements TEXT      NOT NULL,
    notes                   TEXT
);

INSERT INTO vendor_contracts VALUES (2001,'SupplyCo','2021-01-01','2023-12-31','OfficeSupplies',150000.00,30,'Auto','LateDeliveryPenalty','NYLaw','AliceBrown','alice@supplyco.com','Active','2022-06-01',2,'High','Arbitration','OnTimeDelivery','ISO9001','Preferred vendor');
INSERT INTO vendor_contracts VALUES (2002,'ITSolutions','2020-05-15','2024-05-14','ITSupport',300000.00,45,'Manual','ServiceLevelPenalty','CALaw','BobWhite','bob@itsolutions.com','Active','2022-01-20',1,'Medium','Mediation','ResponseTime','SOC2','Strategic partner');
INSERT INTO vendor_contracts VALUES (2003,'CleanSweep','2022-02-01','2025-01-31','FacilityCleaning',90000.00,60,'Auto','CleanlinessPenalty','TXLaw','CarolGreen','carol@cleansweep.com','Pending','2022-02-01',0,'Low','Negotiation','CleanlinessScore','EPAStandard','New contract');

-- Research grant tracking
CREATE TABLE research_grant (
    grant_id                INTEGER   NOT NULL PRIMARY KEY,
    grant_title             TEXT      NOT NULL,
    funding_agency          TEXT      NOT NULL,
    award_amount_usd        REAL      NOT NULL,
    start_date              DATE      NOT NULL,
    end_date                DATE      NOT NULL,
    principal_investigator  TEXT      NOT NULL,
    department              TEXT      NOT NULL,
    project_status          TEXT      NOT NULL,
    reporting_frequency_months INTEGER NOT NULL,
    total_spent_usd         REAL      NOT NULL,
    remaining_balance_usd   REAL      NOT NULL,
    last_report_date        DATE      NOT NULL,
    next_report_due_date    DATE      NOT NULL,
    compliance_requirements TEXT     NOT NULL,
    data_sharing_plan       TEXT      NOT NULL,
    intellectual_property   TEXT      NOT NULL,
    publications_expected   INTEGER   NOT NULL,
    conferences_expected    INTEGER   NOT NULL,
    notes                   TEXT
);

INSERT INTO research_grant VALUES (3001,'AI for Healthcare','NationalHealthAgency',500000.00,'2022-01-01','2025-12-31','DrSmith','Biomedical','Active',6,120000.00,380000.00,'2022-12-01','2023-06-01','HIPAA','OpenAccess','Joint','5','2','Phase1 completed');
INSERT INTO research_grant VALUES (3002,'Renewable Energy Storage','EnergyDept',750000.00,'2021-06-15','2024-06-14','DrLee','Electrical','Active',12,400000.00,350000.00,'2022-11-15','2023-11-15','DOERegulations','Restricted','University','3','1','Midterm review');
INSERT INTO research_grant VALUES (3003,'Urban Mobility Analytics','CityPlanningOffice',300000.00,'2023-03-01','2026-02-28','DrPatel','UrbanStudies','Pending',3,0.00,300000.00,'2023-03-01','2023-06-01','CityPolicy','Closed','City','0','0','Proposal under review');

-- Digital asset logging
CREATE TABLE digital_asset_log (
    asset_log_id            INTEGER   NOT NULL PRIMARY KEY,
    asset_id                INTEGER   NOT NULL,
    asset_type              TEXT      NOT NULL,
    creation_timestamp      DATE      NOT NULL,
    created_by_user         TEXT      NOT NULL,
    file_name               TEXT      NOT NULL,
    file_path               TEXT      NOT NULL,
    file_size_bytes         INTEGER   NOT NULL,
    checksum_sha256         TEXT      NOT NULL,
    storage_location        TEXT      NOT NULL,
    access_level            TEXT      NOT NULL,
    last_access_timestamp   DATE      NOT NULL,
    last_modified_timestamp DATE      NOT NULL,
    version_number          INTEGER   NOT NULL,
    is_archived             INTEGER   NOT NULL,
    retention_policy_days   INTEGER   NOT NULL,
    encryption_enabled      INTEGER   NOT NULL,
    metadata_json           TEXT,
    notes                   TEXT
);

INSERT INTO digital_asset_log VALUES (4001,90001,'Document','2022-02-10','admin','policy_v1.pdf','/docs/policy_v1.pdf',254000,'abc123def456ghi789jkl012mno345pqr678stu901vwx','S3BucketA','Confidential','2023-01-15','2022-12-20',1,0,365,1,'{"author":"admin"}','Initial policy document');
INSERT INTO digital_asset_log VALUES (4002,90002,'Image','2021-11-05','userA','sat_image_2021.tif','/images/sat_image_2021.tif',10485760,'def456ghi789jkl012mno345pqr678stu901vwxabc123','AzureBlobB','Public','2023-01-10','2022-11-05',3,0,730,0,'{"sensor":"Optical"}','High‑resolution satellite image');
INSERT INTO digital_asset_log VALUES (4003,90003,'Video','2023-01-20','userB','drone_footage.mp4','/videos/drone_footage.mp4',524288000,'ghi789jkl012mno345pqr678stu901vwxabc123def456','GCPBucketC','Restricted','2023-01-25','2023-01-20',1,0,180,1,'{"duration_sec":120}','Drone surveillance footage');

-- City infrastructure project details
CREATE TABLE city_infrastructure_project (
    project_id               INTEGER   NOT NULL PRIMARY KEY,
    project_name             TEXT      NOT NULL,
    project_type             TEXT      NOT NULL,
    start_date               DATE      NOT NULL,
    planned_end_date         DATE      NOT NULL,
    actual_end_date          DATE,
    budget_usd               REAL      NOT NULL,
    spent_usd                REAL      NOT NULL,
    funding_source           TEXT      NOT NULL,
    lead_department          TEXT      NOT NULL,
    project_manager          TEXT      NOT NULL,
    status                   TEXT      NOT NULL,
    risk_level               TEXT      NOT NULL,
    permits_required         TEXT      NOT NULL,
    stakeholder_engagement   TEXT      NOT NULL,
    sustainability_score     INTEGER   NOT NULL,
    geographic_area          TEXT      NOT NULL,
    total_lanes_added        INTEGER   NOT NULL,
    traffic_impact_estimate  TEXT      NOT NULL,
    notes                    TEXT
);

INSERT INTO city_infrastructure_project VALUES (6001,'RiverBridgeUpgrade','Bridge','2021-04-01','2023-09-30','2023-08-15',25000000.00,24000000.00,'FederalGrant','Transportation','LauraMiller','Completed','Medium','Environmental,Construction','PublicMeetings','85','RiverDistrict','2','Reduced congestion','Successful project');
INSERT INTO city_infrastructure_project VALUES (6002,'DowntownBikeLane','BikeLane','2022-01-15','2024-06-30',NULL,'1200000.00',300000.00,'CityBudget','UrbanPlanning','MarkRossi','InProgress','Low','CityPermit','CommunitySurvey','92','DowntownCore','5','Encourages cycling','Phase 1 of 3');
INSERT INTO city_infrastructure_project VALUES (6003,'EastSideWaterPipeline','WaterSupply','2023-03-01','2025-12-31',NULL,'8000000.00',1500000.00,'StateFunding','Utilities','SusanLee','Planned','High','Environmental,Health','StakeholderWorkshop','78','EastSideRegion','0','Will increase water reliability','Environmental impact pending');

-- Healthcare provider network information
CREATE TABLE healthcare_provider_network (
    provider_id              INTEGER   NOT NULL PRIMARY KEY,
    provider_name            TEXT      NOT NULL,
    provider_type            TEXT      NOT NULL,
    address_line1            TEXT      NOT NULL,
    address_line2            TEXT,
    city                     TEXT      NOT NULL,
    state                    TEXT      NOT NULL,
    zip_code                 TEXT      NOT NULL,
    phone_number             TEXT      NOT NULL,
    email_contact            TEXT      NOT NULL,
    tax_id                   TEXT      NOT NULL,
    network_affiliation      TEXT      NOT NULL,
    accreditation_body       TEXT      NOT NULL,
    accreditation_status     TEXT      NOT NULL,
    number_of_beds           INTEGER   NOT NULL,
    number_of_physicians     INTEGER   NOT NULL,
    number_of_nurses         INTEGER   NOT NULL,
    emergency_services      INTEGER   NOT NULL,
    outpatient_services      INTEGER   NOT NULL,
    telemedicine_capability  INTEGER   NOT NULL,
    notes                    TEXT
);

INSERT INTO healthcare_provider_network VALUES (7001,'CityGeneralHospital','Hospital','123 Main St','Suite 100','Metropolis','NY','10001','5551234567','info@citygen.org','12-3456789','HealthNetA','JointCommission','Accredited',350,120,200,1,1,1,'Provides full range of services');
INSERT INTO healthcare_provider_network VALUES (7002,'WestsideClinic','Clinic','456 Oak Ave',NULL,'Smalltown','CA','90210','5559876543','contact@westclinic.com','98-7654321','HealthNetB','StateHealthDept','Accredited',50,15,30,0,1,1,'Focus on primary care');
INSERT INTO healthcare_provider_network VALUES (7003,'RuralHealthCenter','HealthCenter','789 Pine Rd',NULL,'Ruralville','TX','75001','5555551212','admin@ruralhealth.org','23-4567890','HealthNetC','RegionalBoard','Pending',25,5,10,0,1,0,'Seeking accreditation');

-- Renewable energy farm status monitoring
CREATE TABLE renewable_energy_farm_status (
    farm_id                  INTEGER   NOT NULL PRIMARY KEY,
    farm_name                TEXT      NOT NULL,
    farm_type                TEXT      NOT NULL,
    location_latitude        REAL      NOT NULL,
    location_longitude       REAL      NOT NULL,
    commissioning_date       DATE      NOT NULL,
    capacity_mw              REAL      NOT NULL,
    current_output_mw        REAL      NOT NULL,
    capacity_factor_percent REAL      NOT NULL,
    average_annual_production_mwh REAL NOT NULL,
    operating_status         TEXT      NOT NULL,
    maintenance_schedule     TEXT      NOT NULL,
    last_inspection_date    DATE      NOT NULL,
    next_inspection_due_date DATE     NOT NULL,
    grid_connection_point   TEXT      NOT NULL,
    owner_company           TEXT      NOT NULL,
    power_purchase_agreement TEXT     NOT NULL,
    environmental_impact_score INTEGER NOT NULL,
    latitude_hemisphere      TEXT      NOT NULL,
    longitude_hemisphere     TEXT      NOT NULL,
    notes                   TEXT
);

INSERT INTO renewable_energy_farm_status VALUES (8001,'SunnyValleySolar','Solar',34.05,-117.75,'2019-06-01',150.0,140.5,93.7,1200000.0,'Operational','Quarterly','2022-12-15','2023-06-15','SubstationX','SunEnergyCorp','PPA-2025','85','N','W','High output, low downtime');
INSERT INTO renewable_energy_farm_status VALUES (8002,'WindHarbor','Wind',42.36,-71.05,'2020-09-15',80.0,65.0,81.2,540000.0,'Operational','Biannual','2023-01-10','2023-07-10','SubstationY','WindPowerInc','PPA-2026','78','N','W','Turbine performance stable');
INSERT INTO renewable_energy_farm_status VALUES (8003,'RiverHydroPlant','Hydro',48.85,2.35,'2018-03-20',200.0,190.0,95.0,1665000.0,'Operational','Annual','2022-08-05','2023-08-05','SubstationZ','HydroFlowLtd','PPA-2024','90','N','E','Consistent generation, recent turbine upgrade');

-- Digital wallet transaction records
CREATE TABLE digital_wallet_transaction (
    txn_id                  INTEGER   NOT NULL PRIMARY KEY,
    wallet_id               INTEGER   NOT NULL,
    transaction_timestamp   DATE      NOT NULL,
    txn_type                TEXT      NOT NULL,
    amount_usd              REAL      NOT NULL,
    currency_code           TEXT      NOT NULL,
    exchange_rate_to_usd    REAL      NOT NULL,
    merchant_category       TEXT      NOT NULL,
    merchant_name           TEXT      NOT NULL,
    status                  TEXT      NOT NULL,
    auth_code               TEXT      NOT NULL,
    device_id               TEXT      NOT NULL,
    location_latitude       REAL,
    location_longitude      REAL,
    ip_address              TEXT,
    geo_country             TEXT,
    fraud_flag              INTEGER   NOT NULL,
    notes                   TEXT
);

INSERT INTO digital_wallet_transaction VALUES (10001,20001,'2023-01-12','Purchase',150.00,'USD',1.0,'Retail','ShopA','Completed','AUTH123','DEV001',40.7128,-74.0060,'192.168.1.10','US',0,'First purchase');
INSERT INTO digital_wallet_transaction VALUES (10002,20001,'2023-01-15','Transfer',500.00,'EUR',1.1,'Transfer','FriendB','Pending','AUTH456','DEV001',48.8566,2.3522,'192.168.1.11','FR',0,'Euro transfer to friend');
INSERT INTO digital_wallet_transaction VALUES (10003,20002,'2023-01-18','BillPayment',75.00,'USD',1.0,'Utilities','UtilityCo','Completed','AUTH789','DEV002',34.0522,-118.2437,'192.168.2.20','US',0,'Monthly electricity bill');

-- Investment fund performance metrics
CREATE TABLE investment_fund_performance (
    fund_id                INTEGER   NOT NULL PRIMARY KEY,
    fund_name              TEXT      NOT NULL,
    inception_date         DATE      NOT NULL,
    asset_class            TEXT      NOT NULL,
    total_assets_usd       REAL      NOT NULL,
    net_asset_value_usd    REAL      NOT NULL,
    annual_return_percent  REAL      NOT NULL,
    quarterly_return_percent REAL    NOT NULL,
    volatility_percent     REAL      NOT NULL,
    expense_ratio_percent  REAL      NOT NULL,
    benchmark_index        TEXT      NOT NULL,
    manager_name           TEXT      NOT NULL,
    domicile_country       TEXT      NOT NULL,
    regulatory_status      TEXT      NOT NULL,
    distribution_yield_percent REAL   NOT NULL,
    rating_morningstar      TEXT      NOT NULL,
    rating_lipper          TEXT      NOT NULL,
    last_aum_update_date   DATE      NOT NULL,
    notes                  TEXT
);

INSERT INTO investment_fund_performance VALUES (9001,'GlobalEquityFund','2010-05-01','Equity',5000000000.00,4800000000.00,8.2,2.1,15.0,0.75,'S&P500','JohnDoe','US','Active',2.5,'Gold','A','2023-01-01','Large cap global equity fund');
INSERT INTO investment_fund_performance VALUES (9002,'EmergingMarketsBond','2015-09-15','FixedIncome',2000000000.00,1950000000.00,5.5,1.3,10.0,0.60,'EMBI','JaneSmith','UK','Active',3.0,'Silver','B','2023-01-01','Focus on sovereign bonds');
INSERT INTO investment_fund_performance VALUES (9003,'TechGrowthETF','2018-02-20','ETF',800000000.00,780000000.00,12.0,3.5,20.0,0.30,'NASDAQ','MikeLee','Ireland','Active',1.8,'Gold','A','2023-01-01','High exposure to technology sector');