-- City parks and facilities information
CREATE TABLE city_parks_facilities
(
    park_id                     TEXT    NOT NULL PRIMARY KEY,
    park_name                   TEXT    NOT NULL,
    city                        TEXT    NOT NULL,
    state                       TEXT    NOT NULL,
    acreage                     REAL    NULL,
    open_year                   INTEGER NULL,
    playground_present          INTEGER NULL,
    basketball_courts           INTEGER NULL,
    soccer_fields               INTEGER NULL,
    walking_trails_miles        REAL    NULL,
    bike_path_miles             REAL    NULL,
    dog_off_leash_area          INTEGER NULL,
    picnic_tables               INTEGER NULL,
    restroom_count              INTEGER NULL,
    lighting_type               TEXT    NULL,
    irrigation_system           TEXT    NULL,
    maintenance_vendor          TEXT    NULL,
    last_renovation_date        DATE    NULL,
    annual_visitors_estimate    INTEGER NULL,
    water_fountain_count        INTEGER NULL,
    native_tree_species_count   INTEGER NULL,
    wheelchair_accessible       INTEGER NULL,
    dedicated_event_area        TEXT    NULL,
    funding_source              TEXT    NULL,
    park_manager_contact_name   TEXT    NULL,
    park_manager_contact_phone  TEXT    NULL,
    park_manager_contact_email  TEXT    NULL,
    created_timestamp           DATE    NOT NULL
);

INSERT INTO city_parks_facilities VALUES
('PK001','Green Meadows Park','Springfield','IL',45.6,1998,1,2,1,3.2,1.5,0,20,4,'LED','Sprinkler','CleanCo','2021-04-12',15000,3,12,1,'Lake Area','Municipal','John Doe','555-1234','jdoe@example.com','2023-01-01');

INSERT INTO city_parks_facilities VALUES
('PK002','Riverfront Plaza','Greenville','TX',12.3,2005,0,1,0,0.8,0.5,1,10,2,'Solar','Drip','Park Services','2019-09-30',8000,2,8,1,'Concert Stage','State Grant','Jane Smith','555-5678','jsmith@example.com','2023-01-01');

INSERT INTO city_parks_facilities VALUES
('PK003','Hilltop Recreation Area','Oakland','CA',78.9,2012,1,3,2,5.0,2.2,0,30,6,'Solar','Sprinkler','GreenWorks','2022-06-15',25000,5,20,1,'Picnic Pavilion','Private','Mike Lee','555-9012','mlee@example.com','2023-01-01');

-- Public art installations details
CREATE TABLE public_art_installations
(
    installation_id          TEXT    NOT NULL PRIMARY KEY,
    title                    TEXT    NOT NULL,
    artist_name              TEXT    NULL,
    city                     TEXT    NOT NULL,
    state                    TEXT    NOT NULL,
    installation_type        TEXT    NULL,
    material                 TEXT    NULL,
    year_installed           INTEGER NULL,
    dimensions_height_cm     REAL    NULL,
    dimensions_width_cm      REAL    NULL,
    dimensions_depth_cm      REAL    NULL,
    location_description     TEXT    NULL,
    gps_latitude             REAL    NULL,
    gps_longitude            REAL    NULL,
    lighting_required       INTEGER NULL,
    maintenance_plan         TEXT    NULL,
    funding_source           TEXT    NULL,
    acquisition_cost_usd     REAL    NULL,
    insured_amount_usd       REAL    NULL,
    public_accessibility    INTEGER NULL,
    nearby_transport_stop    TEXT    NULL,
    wikipedia_link           TEXT    NULL,
    created_by_department    TEXT    NULL,
    condition_status         TEXT    NULL,
    last_inspection_date    DATE    NULL,
    next_inspection_due     DATE    NULL,
    created_timestamp       DATE    NOT NULL
);

INSERT INTO public_art_installations VALUES
('AI001','Harmony Sculpture','Lena Rivera','Madison','WI','Statue','Bronze',2010,250,120,80,'Central Plaza','43.0731','-89.4012',1,'Annual cleaning','City Arts Fund',50000,75000,1,'Central Station','http://example.com/harmony','Public Art Dept','Good','2022-11-20','2023-11-20','2023-01-01');

INSERT INTO public_art_installations VALUES
('AI002','Light Wave','Carlos Mendes','Portland','OR','Installation','LED',2018,0,0,0,'Riverwalk','45.5231','-122.6765',1,'Quarterly checks','Corporate Sponsor',200000,250000,1,'River Bridge','http://example.com/lightwave','Public Art Dept','Excellent','2023-02-10','2024-02-10','2023-01-01');

INSERT INTO public_art_installations VALUES
('AI003','Glacial Mirror','Nina Patel','Anchorage','AK','Mural','Paint',2005,0,0,0,'Community Center Wall','61.2181','-149.9003',0,'Biannual touchup','State Grant',30000,40000,1,'Bus Stop 12','http://example.com/glacial','Public Art Dept','Fair','2022-08-15','2023-08-15','2023-01-01');

-- Air quality monitoring stations
CREATE TABLE air_quality_monitoring_stations
(
    station_id                TEXT    NOT NULL PRIMARY KEY,
    station_name              TEXT    NOT NULL,
    city                      TEXT    NOT NULL,
    state                     TEXT    NOT NULL,
    latitude                  REAL    NULL,
    longitude                 REAL    NULL,
    installation_date         DATE    NULL,
    sensor_type_pm25          TEXT    NULL,
    sensor_type_pm10          TEXT    NULL,
    sensor_type_o3            TEXT    NULL,
    sensor_type_no2           TEXT    NULL,
    sensor_type_so2           TEXT    NULL,
    data_logging_interval_min INTEGER NULL,
    maintenance_contract     TEXT    NULL,
    operating_status          TEXT    NULL,
    last_calibration_date     DATE    NULL,
    next_calibration_due      DATE    NULL,
    average_annual_pm25       REAL    NULL,
    average_annual_pm10       REAL    NULL,
    average_annual_o3         REAL    NULL,
    average_annual_no2        REAL    NULL,
    average_annual_so2        REAL    NULL,
    data_source               TEXT    NULL,
    creator_department        TEXT    NULL,
    created_timestamp         DATE    NOT NULL
);

INSERT INTO air_quality_monitoring_stations VALUES
('AQ001','Downtown West','Seattle','WA',47.6062,-122.3321,'2019-05-10','Model A','Model B','Model C','Model D','Model E',15,'EnviroTech','Active','2022-12-01','2023-12-01',12.5,20.3,30.1,15.2,4.8,'EPA','Environmental Dept','2023-01-01');

INSERT INTO air_quality_monitoring_stations VALUES
('AQ002','Riverbank East','Austin','TX',30.2672,-97.7431','2020-03-22','Model X','Model Y','Model Z','Model W','Model V',10,'AirSense','Active','2023-01-15','2024-01-15',10.2,18.7,28.4,12.6,3.9,'State Agency','Environmental Dept','2023-01-01');

INSERT INTO air_quality_monitoring_stations VALUES
('AQ003','Hilltop North','Denver','CO',39.7392,-104.9903','2018-09-05','Model L','Model M','Model N','Model O','Model P',20,'ClearAir','Inactive','2021-07-20','2022-07-20',14.0,22.5,35.0,16.0,5.5,'EPA','Environmental Dept','2023-01-01');

-- Smart city sensor deployments
CREATE TABLE smart_city_sensor_deployments
(
    deployment_id            TEXT    NOT NULL PRIMARY KEY,
    sensor_id                TEXT    NOT NULL,
    sensor_type              TEXT    NOT NULL,
    city                     TEXT    NOT NULL,
    state                    TEXT    NOT NULL,
    latitude                 REAL    NULL,
    longitude                REAL    NULL,
    installation_date        DATE    NULL,
    firmware_version         TEXT    NULL,
    power_source             TEXT    NULL,
    connectivity_method      TEXT    NULL,
    data_endpoint_url        TEXT    NULL,
    maintenance_schedule     TEXT    NULL,
    last_maintenance_date    DATE    NULL,
    operational_status       TEXT    NULL,
    manufacturer             TEXT    NULL,
    warranty_expiration_date DATE    NULL,
    data_retention_days      INTEGER NULL,
    encryption_enabled       INTEGER NULL,
    calibration_required     INTEGER NULL,
    last_calibration_date    DATE    NULL,
    next_calibration_due    DATE    NULL,
    assigned_department      TEXT    NULL,
    notes                    TEXT    NULL,
    created_timestamp        DATE    NOT NULL
);

INSERT INTO smart_city_sensor_deployments VALUES
('SD001','SN1001','Traffic Counter','Chicago','IL',41.8781,-87.6298,'2021-02-14','v1.2.3','Solar','5G','https://data.city.gov/traffic','Quarterly','2022-11-01','Active','CityTech','2024-02-14',365,1,1,'2022-10-01','2023-10-01','Transport Dept','Installed near main boulevard','2023-01-01');

INSERT INTO smart_city_sensor_deployments VALUES
('SD002','SN2002','Air Quality','Phoenix','AZ',33.4484,-112.0740,'2020-07-30','v3.4.1','Battery','LoRaWAN','https://data.city.gov/air','Monthly','2022-07-30','Active','EnviroSensors','2023-07-30',730,1,1,'2022-06-15','2023-06-15','Environmental Dept','Part of downtown network','2023-01-01');

INSERT INTO smart_city_sensor_deployments VALUES
('SD003','SN3003','Noise Level','Boston','MA',42.3601,-71.0589,'2019-11-05','v2.0.0','Mains','WiFi','https://data.city.gov/noise','Biannual','2022-11-05','Inactive','SoundTech','2022-11-05',180,0,0,NULL,NULL,'Public Works','Decommissioned due to upgrades','2023-01-01');

-- Traffic signal maintenance log
CREATE TABLE traffic_signal_maintenance_log
(
    log_id                     TEXT    NOT NULL PRIMARY KEY,
    signal_id                  TEXT    NOT NULL,
    intersection_name          TEXT    NOT NULL,
    city                       TEXT    NOT NULL,
    state                      TEXT    NOT NULL,
    latitude                   REAL    NULL,
    longitude                  REAL    NULL,
    maintenance_date           DATE    NOT NULL,
    technician_name            TEXT    NULL,
    contractor_company         TEXT    NULL,
    work_description           TEXT    NULL,
    parts_replaced             TEXT    NULL,
    labor_hours                REAL    NULL,
    total_cost_usd             REAL    NULL,
    downtime_minutes           INTEGER NULL,
    post_maintenance_status    TEXT    NULL,
    next_scheduled_maintenance DATE    NULL,
    created_timestamp          DATE    NOT NULL
);

INSERT INTO traffic_signal_maintenance_log VALUES
('ML001','TS100','Main St & 1st Ave','Los Angeles','CA',34.0522,-118.2437','2023-02-10','Alan Reed','SignalWorks','Replaced LED module','LED Module',2.5,450.00,15,'Operational','2024-02-10','2023-01-01');

INSERT INTO traffic_signal_maintenance_log VALUES
('ML002','TS200','Broadway & 5th','New York','NY',40.7128,-74.0060','2023-03-05','Maria Gomez','CityLights','Adjusted timing controller','Timing Controller',3.0,620.00,10,'Operational','2024-03-05','2023-01-01');

INSERT INTO traffic_signal_maintenance_log VALUES
('ML003','TS300','Elm St & 9th','Chicago','IL',41.8781,-87.6298','2023-01-22','Jamal Khan','TrafficTech','Full system inspection','None',1.5,300.00,5,'Operational','2024-01-22','2023-01-01');

-- Stormwater management projects
CREATE TABLE stormwater_management_projects
(
    project_id                TEXT    NOT NULL PRIMARY KEY,
    project_name              TEXT    NOT NULL,
    city                      TEXT    NOT NULL,
    state                     TEXT    NOT NULL,
    start_date                DATE    NULL,
    completion_date           DATE    NULL,
    total_budget_usd          REAL    NULL,
    funding_source            TEXT    NULL,
    contractor                TEXT    NULL,
    design_engineer           TEXT    NULL,
    project_type              TEXT    NULL,
    drainage_area_acres       REAL    NULL,
    retention_basins_count    INTEGER NULL,
    green_infrastructure_type TEXT    NULL,
    permits_obtained          TEXT    NULL,
    environmental_impact_score REAL   NULL,
    status                    TEXT    NULL,
    last_report_date          DATE    NULL,
    next_milestone_date       DATE    NULL,
    project_manager           TEXT    NULL,
    stakeholder_contact       TEXT    NULL,
    created_timestamp         DATE    NOT NULL
);

INSERT INTO stormwater_management_projects VALUES
('SM001','Riverbank Retention Basin','Portland','OR','2022-06-01','2024-12-15',2500000,'State Grant','AquaBuild','EcoDesign','Retention Basin',120.5,4,'Bioswale','Permit A, Permit B',85.5,'In Progress','2023-06-30','2023-12-15','Laura Peters','cityworks@example.com','2023-01-01');

INSERT INTO stormwater_management_projects VALUES
('SM002','Downtown Green Roof Initiative','Seattle','WA','2021-03-15','2023-11-30',1800000,'Municipal Funds','RoofTopCo','GreenStructures','Green Roof',15.2,0,'Green Roof','Permit C',92.0,'Completed','2023-11-30','2024-03-01','Mark Liu','infrastructure@example.com','2023-01-01');

INSERT INTO stormwater_management_projects VALUES
('SM003','Suburban Permeable Pavement','Austin','TX','2023-01-10',NULL,900000,'Federal Grant','PaveSolutions','UrbanPlan','Permeable Pavement',45.0,0,'Permeable Pavement','Pending',78.3,'Planning','2023-04-20','2023-09-10','Emily Rivera','publicworks@example.com','2023-01-01');

-- Renewable energy assets
CREATE TABLE renewable_energy_assets
(
    asset_id                 TEXT    NOT NULL PRIMARY KEY,
    asset_name               TEXT    NOT NULL,
    asset_type               TEXT    NOT NULL,
    city                     TEXT    NOT NULL,
    state                    TEXT    NOT NULL,
    installation_date        DATE    NULL,
    capacity_mw              REAL    NULL,
    manufacturer             TEXT    NULL,
    financing_mechanism      TEXT    NULL,
    operational_status       TEXT    NULL,
    annual_generation_mwh    REAL    NULL,
    decommission_date        DATE    NULL,
    maintenance_provider     TEXT    NULL,
    warranty_expiration_date DATE    NULL,
    grid_connection_point    TEXT    NULL,
    coordinates_latitude     REAL    NULL,
    coordinates_longitude    REAL    NULL,
    environmental_benefit_tco2 REAL NULL,
    owner_entity             TEXT    NULL,
    regulatory_agency        TEXT    NULL,
    last_inspection_date    DATE    NULL,
    next_inspection_due     DATE    NULL,
    created_timestamp        DATE    NOT NULL
);

INSERT INTO renewable_energy_assets VALUES
('RE001','Sunrise Solar Farm','Solar','Fresno','CA','2020-09-15',50.2,'SunPower','Power Purchase Agreement','Operational',200000,NULL,'GreenMaintain','2027-09-15','Substation 12',36.7378,-119.7871,150000,'City of Fresno','CA Energy Commission','2022-10-01','2023-10-01','2023-01-01');

INSERT INTO renewable_energy_assets VALUES
('RE002','Wind Ridge Turbines','Wind','Duluth','MN','2018-04-22',30.5,'Vestas','Tax Equity','Operational',120000,NULL,'WindServ','2025-04-22','Substation 8',46.7865,-92.1005,90000,'County of St. Louis','MN Public Utilities','2022-08-15','2023-08-15','2023-01-01');

INSERT INTO renewable_energy_assets VALUES
('RE003','River Hydro Plant','Hydro','Bend','OR','2015-06-10',15.0,'GE Renewable','Municipal Bonds','Operational',65000,NULL,'HydroCare','2022-06-10','Substation 3',44.0582,-121.3153,50000,'Bend Water Authority','OR Dept of Energy','2021-12-01','2022-12-01','2023-01-01');

-- Historic building registry
CREATE TABLE historic_building_registry
(
    building_id              TEXT    NOT NULL PRIMARY KEY,
    building_name            TEXT    NOT NULL,
    address_line1            TEXT    NOT NULL,
    city                     TEXT    NOT NULL,
    state                    TEXT    NOT NULL,
    zip_code                 TEXT    NOT NULL,
    year_constructed         INTEGER NULL,
    architectural_style      TEXT    NULL,
    historic_designation     TEXT    NULL,
    designation_date         DATE    NULL,
    owner_name               TEXT    NULL,
    owner_contact_phone      TEXT    NULL,
    owner_contact_email      TEXT    NULL,
    preservation_status      TEXT    NULL,
    last_restoration_date    DATE    NULL,
    restoration_funds_usd    REAL    NULL,
    public_access            INTEGER NULL,
    guided_tour_available    INTEGER NULL,
    wheelchair_accessible    INTEGER NULL,
    photo_archive_url        TEXT    NULL,
    latitude                 REAL    NULL,
    longitude                REAL    NULL,
    notes                    TEXT    NULL,
    created_timestamp        DATE    NOT NULL
);

INSERT INTO historic_building_registry VALUES
('HB001','Old Town Hall','123 Main St','Springfield','IL','62701',1895,'Romanesque','National Register','1978-05-12','City of Springfield','555-1111','contact@springfield.gov','Preserved','2020-09-30',250000,1,1,1','http://example.com/photos/hb001.jpg',39.7817,-89.6501,'Flagship civic building','2023-01-01');

INSERT INTO historic_building_registry VALUES
('HB002','Heritage Mill','456 River Rd','Roanoke','VA','24012',1910,'Industrial','State Landmark','1992-11-03','Roanoke Heritage Trust','555-2222','info@roanoketrust.org','Restored','2018-04-15',150000,0,0,0','http://example.com/photos/hb002.jpg',37.2712,-79.9414','Converted to museum space','2023-01-01');

INSERT INTO historic_building_registry VALUES
('HB003','Grand Opera House','789 Broadway','San Diego','CA','92101',1925,'Art Deco','Local Designation','2005-07-20','Opera Foundation','555-3333','admin@opera.org','Operational','2021-06-01',300000,1,1,1','http://example.com/photos/hb003.jpg',32.7157,-117.1611','Active performance venue','2023-01-01');

-- Public WiFi hotspots
CREATE TABLE public_wifi_hotspots
(
    hotspot_id               TEXT    NOT NULL PRIMARY KEY,
    ssid_name                TEXT    NOT NULL,
    provider_name            TEXT    NULL,
    city                     TEXT    NOT NULL,
    state                    TEXT    NOT NULL,
    latitude                 REAL    NULL,
    longitude                REAL    NULL,
    installation_date        DATE    NULL,
    bandwidth_mbps           REAL    NULL,
    max_concurrent_users     INTEGER NULL,
    security_protocol        TEXT    NULL,
    public_access_type       TEXT    NULL,
    maintenance_contact_name TEXT    NULL,
    maintenance_contact_phone TEXT   NULL,
    maintenance_contact_email TEXT   NULL,
    usage_monitoring_enabled INTEGER NULL,
    average_daily_users      INTEGER NULL,
    total_data_gb_per_month  REAL    NULL,
    coverage_area_sqft       REAL    NULL,
    notes                    TEXT    NULL,
    created_timestamp        DATE    NOT NULL
);

INSERT INTO public_wifi_hotspots VALUES
('WH001','CityCenterFree','NetGov','Portland','OR',45.5231,-122.6765','2022-03-01',100.0,200,'WPA2','Open','John Davis','555-4444','j.davis@netgov.org',1,150,500.0,2500.0','Main library lobby','2023-01-01');

INSERT INTO public_wifi_hotspots VALUES
('WH002','ParkConnect','WiLink','Austin','TX',30.2672,-97.7431','2021-06-15',50.0,100,'WPA2','Open','Sarah Lee','555-5555','s.lee@wilink.com',1,80,250.0,1500.0','Zilker Park pavilion','2023-01-01');

INSERT INTO public_wifi_hotspots VALUES
('WH003','DowntownBiz','BizNet','Chicago','IL',41.8781,-87.6298','2023-01-20',200.0,500,'WPA3','Secure','Mike Patel','555-6666','m.patel@biznet.com',0,0,0.0,0.0','Business district high-rise','2023-01-01');

-- Community fitness facilities
CREATE TABLE community_fitness_facilities
(
    facility_id               TEXT    NOT NULL PRIMARY KEY,
    facility_name             TEXT    NOT NULL,
    city                      TEXT    NOT NULL,
    state                     TEXT    NOT NULL,
    address_line1             TEXT    NOT NULL,
    zip_code                  TEXT    NOT NULL,
    open_date                 DATE    NULL,
    facility_type             TEXT    NULL,
    square_feet               REAL    NULL,
    total_equipment_items     INTEGER NULL,
    cardio_equipment_count    INTEGER NULL,
    strength_equipment_count  INTEGER NULL,
    group_class_rooms         INTEGER NULL,
    pool_available            INTEGER NULL,
    sauna_available           INTEGER NULL,
    operating_hours_weekdays  TEXT    NULL,
    operating_hours_weekends  TEXT    NULL,
    membership_fee_monthly    REAL    NULL,
    staff_count               INTEGER NULL,
    manager_name              TEXT    NULL,
    contact_phone             TEXT    NULL,
    contact_email             TEXT    NULL,
    accessibility_features    TEXT    NULL,
    created_timestamp         DATE    NOT NULL
);

INSERT INTO community_fitness_facilities VALUES
('CF001','Health Hub','Madison','WI','321 Wellness Ave','53703','2019-05-01','Gym',15000,250,120,80,5,1,1','6am-10pm','8am-8pm',45.00,15,'Laura Green','555-7777','l.green@healthhub.org','Wheelchair Ramp,Elevator','2023-01-01');

INSERT INTO community_fitness_facilities VALUES
('CF002','Active Life Center','Phoenix','AZ','789 Energy Blvd','85004','2020-11-15','Community Center',20000,300,150,130,8,0,0','5am-11pm','7am-9pm',35.00,20,'Carlos Mendoza','555-8888','c.mendoza@activelife.com','Automatic Doors,Assistive Devices','2023-01-01');

INSERT INTO community_fitness_facilities VALUES
('CF003','FitZone','Denver','CO','456 Mountain Rd','80202','2022-02-20','Fitness Studio',12000,180,90,80,4,0,0','7am-9pm','8am-6pm',40.00,12,'Samantha Lee','555-9999','s.lee@fitzone.co','Braille Signage,Accessible Restrooms','2023-01-01');

-- Environmental sensor network
CREATE TABLE environmental_sensor_network
(
    sensor_id                 TEXT    NOT NULL PRIMARY KEY,
    sensor_type               TEXT    NOT NULL,
    deployment_location       TEXT    NOT NULL,
    city                      TEXT    NOT NULL,
    state                     TEXT    NOT NULL,
    latitude                  REAL    NULL,
    longitude                 REAL    NULL,
    installation_date         DATE    NULL,
    firmware_version          TEXT    NULL,
    battery_level_percent     INTEGER NULL,
    signal_strength_dbm       REAL    NULL,
    data_transmission_interval_min INTEGER NULL,
    calibration_date          DATE    NULL,
    next_calibration_due     DATE    NULL,
    maintenance_contractor    TEXT    NULL,
    operational_status        TEXT    NULL,
    last_data_timestamp       DATE    NULL,
    avg_temperature_c         REAL    NULL,
    avg_humidity_percent      REAL    NULL,
    avg_pm25_ug_m3            REAL    NULL,
    avg_noise_db              REAL    NULL,
    notes                     TEXT    NULL,
    created_timestamp         DATE    NOT NULL
);

INSERT INTO environmental_sensor_network VALUES
('ES001','Temperature','Riverfront Park','Seattle','WA',47.6062,-122.3321','2021-04-12','v1.0',85,-70,10,'2022-04-12','2023-04-12','EcoTech','Active','2023-03-10',12.5,68.0,0.0,45.0,'Installed near water monitoring station','2023-01-01');

INSERT INTO environmental_sensor_network VALUES
('ES002','AirQuality','Downtown Plaza','Austin','TX',30.2672,-97.7431','2020-09-05','v2.1',70,-65,15,'2022-09-05','2023-09-05','AirSense','Active','2023-02-20',22.0,55.0,12.3,60.0','Part of citywide air quality network','2023-01-01');

INSERT INTO environmental_sensor_network VALUES
('ES003','Noise','University Campus','Boston','MA',42.3601,-71.0589','2019-01-20','v3.3',90,-60  ,5,'2021-01-20','2022-01-20','SoundTech','Inactive','2022-12-15',0.0,0.0,0.0,72.5','Decommissioned pending upgrade','2023-01-01');

-- District demographic indicators
CREATE TABLE district_demographic_indicators
(
    district_id               TEXT    NOT NULL PRIMARY KEY,
    district_name             TEXT    NOT NULL,
    state                     TEXT    NOT NULL,
    total_population          INTEGER NULL,
    median_household_income   REAL    NULL,
    poverty_rate_percent      REAL    NULL,
    unemployment_rate_percent REAL    NULL,
    percent_bachelors_degree  REAL    NULL,
    percent_hispanic          REAL    NULL,
    percent_asian             REAL    NULL,
    percent_african_american REAL    NULL,
    percent_native_american   REAL    NULL,
    median_age                REAL    NULL,
    average_household_size    REAL    NULL,
    population_density_sqmi   REAL    NULL,
    urbanization_rate_percent REAL    NULL,
    language_diversity_index  REAL    NULL,
    housing_units             INTEGER NULL,
    owner_occupied_units      INTEGER NULL,
    renter_occupied_units     INTEGER NULL,
    average_commute_time_min  REAL    NULL,
    public_transport_usage_percent REAL NULL,
    health_insurance_coverage_percent REAL NULL,
    education_expenditure_per_student REAL NULL,
    created_timestamp         DATE    NOT NULL
);

INSERT INTO district_demographic_indicators VALUES
('D001','Greenfield District','CA',150000,85000,12.5,5.3,35.0,18.0,7.5,10.2,0.5,34.2,2.6,1200.0,80.0,0.85,45000,29000,16000,28.0,12.5,92.0,1400.0,'2023-01-01');

INSERT INTO district_demographic_indicators VALUES
('D002','River Valley District','TX',250000,72000,18.0,6.8,28.0,22.0,5.0,12.0,1.0,32.5,2.9,1500.0,70.0,0.78,60000,38000,22000,30.5,15.0,88.0,1200.0,'2023-01-01');

INSERT INTO district_demographic_indicators VALUES
('D003','Mountain Ridge District','CO',90000,95000,9.0,4.1,40.0,10.0,8.0,4.0,0.3,36.0,2.4,800.0,85.0,0.90,30000,21000,9000,25.0,10.0,95.0,1500.0,'2023-01-01');

-- School technology deployment log
CREATE TABLE school_technology_deployment_log
(
    deployment_id            TEXT    NOT NULL PRIMARY KEY,
    school_cds_code          TEXT    NOT NULL,
    device_type              TEXT    NOT NULL,
    device_model             TEXT    NULL,
    serial_number            TEXT    NULL,
    purchase_date            DATE    NULL,
    warranty_expiration_date DATE    NULL,
    deployment_location      TEXT    NULL,
    installed_by_contractor   TEXT   NULL,
    installation_status      TEXT    NULL,
    configuration_version    TEXT    NULL,
    ip_address               TEXT    NULL,
    mac_address              TEXT    NULL,
    network_segment          TEXT    NULL,
    assigned_user_group      TEXT    NULL,
    last_maintenance_date    DATE    NULL,
    next_maintenance_due     DATE    NULL,
    maintenance_provider     TEXT    NULL,
    notes                    TEXT    NULL,
    created_timestamp        DATE    NOT NULL
);

INSERT INTO school_technology_deployment_log VALUES
('TD001','CDS001','Laptop','Dell Latitude 5410','DL5410-12345','2022-08-15','2025-08-15','Room 101','TechInstallCo','Deployed','v3.2','192.168.10.15','00:1A:2B:3C:4D:5E','Segment A','Teachers','2023-03-01','2023-09-01','SchoolTech','Initial rollout for staff','2023-01-01');

INSERT INTO school_technology_deployment_log VALUES
('TD002','CDS002','Interactive Whiteboard','Promethean ActivBoard','PA-9876','2021-02-10','2024-02-10','Science Lab','EduBuild','Active','v2.5','192.168.20.20','00:1B:2C:3D:4E:5F','Segment B','Students','2023-01-15','2023-07-15','ClassroomTech','Installed for STEM curriculum','2023-01-01');

INSERT INTO school_technology_deployment_log VALUES
('TD003','CDS003','Tablet','Apple iPad','IPAD-55555','2023-01-05','2026-01-05','Library','iTech Solutions','Pending','v1.0',NULL,NULL,'Segment C','Library Staff',NULL,NULL,'iTech Support','Ordered pending budget approval','2023-01-01');

-- District legal case tracking
CREATE TABLE district_legal_cases
(
    case_id                  TEXT    NOT NULL PRIMARY KEY,
    district_id              TEXT    NOT NULL,
    case_number              TEXT    NOT NULL,
    filing_date              DATE    NOT NULL,
    case_type                TEXT    NULL,
    status                   TEXT    NULL,
    plaintiff_name           TEXT    NULL,
    defendant_name           TEXT    NULL,
    jurisdiction             TEXT    NULL,
    presiding_judge          TEXT    NULL,
    summary                  TEXT    NULL,
    relief_requested         TEXT    NULL,
    settlement_amount_usd    REAL    NULL,
    court_fee_usd            REAL    NULL,
    attorney_fees_usd        REAL    NULL,
    next_hearing_date        DATE    NULL,
    resolution_date          DATE    NULL,
    outcome                  TEXT    NULL,
    notes                    TEXT    NULL,
    created_timestamp        DATE    NOT NULL
);

INSERT INTO district_legal_cases VALUES
('LC001','D001','2023-CA-0456','2023-04-10','Employment','Open','John Doe','Greenfield District','State Court','Judge Mary Allen','Alleged wrongful termination of a teacher','Reinstatement and back pay',0.0,500.0,1500.0,'2023-08-15',NULL,NULL,'Pending','Case under mediation','2023-01-01');

INSERT INTO district_legal_cases VALUES
('LC002','D002','2022-TX-1122','2022-11-22','Contract','Closed','ABC Construction','River Valley District','Federal Court','Judge Robert Smith','Dispute over construction contract payment','Damages and interest',250000.0,1200.0,30000.0,'2023-01-10','2023-02-28','Settled','Settlement reached out of court','2023-01-01');

INSERT INTO district_legal_cases VALUES
('LC003','D003','2021-CO-0789','2021-06-05','Civil Rights','Closed','Jane Roe','Mountain Ridge District','State Court','Judge Linda Green','Allegations of discrimination in student discipline','Policy revision and training','0.0',800.0,2000.0,'2021-12-01','2022-01-15','Dismissed','Case dismissed after investigation','2023-01-01');

-- Public art installation maintenance
CREATE TABLE public_art_installation_maintenance
(
    maintenance_id           TEXT    NOT NULL PRIMARY KEY,
    installation_id          TEXT    NOT NULL,
    maintenance_date         DATE    NOT NULL,
    contractor_name          TEXT    NULL,
    work_performed           TEXT    NULL,
    parts_used               TEXT    NULL,
    labor_hours              REAL    NULL,
    cost_usd                 REAL    NULL,
    next_scheduled_maintenance DATE NULL,
    inspector_name           TEXT    NULL,
    inspection_passed        INTEGER NULL,
    notes                    TEXT    NULL,
    created_timestamp        DATE    NOT NULL
);

INSERT INTO public_art_installation_maintenance VALUES
('MA001','AI001','2023-03-12','ArtGuard Services','Cleaned surface and recompressed joints','Cleaning Solution;Sealant',2.5,350.00,'2024-03-12','Laura Benton',1,'No issues observed','2023-01-01');

INSERT INTO public_art_installation_maintenance VALUES
('MA002','AI002','2023-04-20','Bright Lights Co','Replaced failed LED modules','LED Modules',3.0,620.00','2024-04-20','Mark Stevens',1,'Improved illumination','2023-01-01');

INSERT INTO public_art_installation_maintenance VALUES
('MA003','AI003','2023-02-05','MuralCare Ltd','Touch up paint on lower section','Paint',1.5,200.00,'2023-08-05','Susan Miller',1,'Color match verified','2023-01-01');

-- Energy consumption daily per facility
CREATE TABLE facility_energy_consumption_daily
(
    record_id                TEXT    NOT NULL PRIMARY KEY,
    facility_id              TEXT    NOT NULL,
    date_recorded            DATE    NOT NULL,
    electricity_kwh          REAL    NULL,
    natural_gas_therms       REAL    NULL,
    water_gallons_used       REAL    NULL,
    hvac_run_hours           REAL    NULL,
    lighting_hours           REAL    NULL,
    equipment_power_kw        REAL    NULL,
    peak_demand_kw           REAL    NULL,
    demand_response_event    INTEGER NULL,
    notes                    TEXT    NULL,
    created_timestamp        DATE    NOT NULL
);

INSERT INTO facility_energy_consumption_daily VALUES
('ED001','FC001','2023-07-01',1250.5,300.0,50000.0,12.0,10.0,5.0,200.0,0,'Normal weekday','2023-01-01');

INSERT INTO facility_energy_consumption_daily VALUES
('ED002','FC002','2023-07-01',800.0,150.0,30000.0,8.0,6.0,3.5,150.0,1,'Demand response triggered','2023-01-01');

INSERT INTO facility_energy_consumption_daily VALUES
('ED003','FC003','2023-07-01',950.0,200.0,40000.0,10.0,8.0,4.2,180.0,0,'Weekend operation','2023-01-01');

-- Academic program funding sources
CREATE TABLE school_academic_program_funding
(
    program_id               TEXT    NOT NULL PRIMARY KEY,
    school_cds_code          TEXT    NOT NULL,
    program_name             TEXT    NOT NULL,
    fiscal_year              TEXT    NOT NULL,
    funding_source           TEXT    NULL,
    grant_amount_usd         REAL    NULL,
    state_allocation_usd     REAL    NULL,
    federal_allocation_usd   REAL    NULL,
    private_donation_usd     REAL    NULL,
    total_budget_usd         REAL    NULL,
    expenditure_to_date_usd  REAL    NULL,
    remaining_balance_usd    REAL    NULL,
    fund_manager_name        TEXT    NULL,
    fund_manager_contact     TEXT    NULL,
    approval_status          TEXT    NULL,
    notes                    TEXT    NULL,
    created_timestamp        DATE    NOT NULL
);

INSERT INTO school_academic_program_funding VALUES
('AP001','CDS001','STEM Innovation','2023','State STEM Grant',150000.0,200000.0,50000.0,25000.0,425000.0,210000.0,215000.0,'Dr Emily White','555-1234','Approved','Focused on robotics and coding','2023-01-01');

INSERT INTO school_academic_program_funding VALUES
('AP002','CDS002','Arts Enrichment','2023','Private Donor',80000.0,0.0,0.0,120000.0,200000.0,120000.0,80000.0,'Mr Daniel Green','555-5678','Approved','Supports music and visual arts','2023-01-01');

INSERT INTO school_academic_program_funding VALUES
('AP003','CDS003','Advanced Language','2023','Federal ESEA',50000.0,50000.0,100000.0,0.0,200000.0,150000.0,50000.0,'Ms Karen Liu','555-9012','Pending','Expands bilingual program','2023-01-01');