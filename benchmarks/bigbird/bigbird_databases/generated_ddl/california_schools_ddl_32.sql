-- City Parks Information
CREATE TABLE city_parks
(
    park_id                     INTEGER NOT NULL PRIMARY KEY,
    park_name                   TEXT    NULL,
    acquisition_date            DATE    NULL,
    area_acres                  REAL    NULL,
    park_type                   TEXT    NULL,
    neighborhood                TEXT    NULL,
    built_year                  INTEGER NULL,
    has_playground              INTEGER NULL,
    has_trail                   INTEGER NULL,
    trail_miles                 REAL    NULL,
    num_trees                   INTEGER NULL,
    avg_tree_age                REAL    NULL,
    water_feature               TEXT    NULL,
    sports_fields               INTEGER NULL,
    picnic_sites                INTEGER NULL,
    annual_visitors             INTEGER NULL,
    maintenance_budget_usd      REAL    NULL,
    operating_hours             TEXT    NULL,
    dog_friendly                INTEGER NULL,
    wheelchair_accessible       INTEGER NULL,
    next_renovation_date        DATE    NULL,
    notes                       TEXT    NULL
);

INSERT INTO city_parks VALUES (1,'Riverfront Park','2005-04-12',45.3,'Regional','River District',1998,1,1,2.5,800,12.4,'Fountain',2,5,120000,50000,'06:00-22:00',1,1,'2025-04-01','Primary community park');
INSERT INTO city_parks VALUES (2,'Maple Grove','2010-09-20',12.7,'Neighborhood','Maple Heights',2005,1,0,NULL,350,8.1,'Pond',1,3,45000,15000,'07:00-20:00',0,1,'2024-09-01','Pet friendly area');
INSERT INTO city_parks VALUES (3,'Sunset Ridge','2018-06-05',78.9,'Regional','Sunset Valley',2017,1,1,5.2,1200,15.6,'Lake',3,8,250000,120000,'05:00-23:00',1,0,'2026-06-05','Scenic overlook');

-- Public Art Installations
CREATE TABLE public_art_installations
(
    art_id                     INTEGER NOT NULL PRIMARY KEY,
    title                      TEXT    NULL,
    artist                     TEXT    NULL,
    installation_date          DATE    NULL,
    material                   TEXT    NULL,
    height_ft                  REAL    NULL,
    width_ft                   REAL    NULL,
    depth_ft                   REAL    NULL,
    location_description       TEXT    NULL,
    latitude                   REAL    NULL,
    longitude                  REAL    NULL,
    city_section               TEXT    NULL,
    funding_source             TEXT    NULL,
    cost_usd                   REAL    NULL,
    maintenance_cycle_months   INTEGER NULL,
    last_maintenance_date      DATE    NULL,
    condition_rating           INTEGER NULL,
    is_interactive             INTEGER NULL,
    warranty_end_date          DATE    NULL,
    contact_person             TEXT    NULL,
    contact_phone              TEXT    NULL,
    website_url                TEXT    NULL
);

INSERT INTO public_art_installations VALUES (101,'Harmony','Lena Rivera','2015-08-15','Bronze',12.5,4.0,3.2,'Central Plaza',40.7128,-74.0060,'Downtown','City Arts Fund',85000,24,'2023-07-01',9,0,'2028-08-15','John Doe','5551234567','http://cityart.gov/harmony');
INSERT INTO public_art_installations VALUES (102,'Waves','Milan Cho','2019-05-22','Stainless Steel',8.0,6.5,2.0,'Riverside Walk',34.0522,-118.2437,'Westside','Private Sponsor',120000,12,'2024-05-10',8,1,'2024-05-22','Emily Smith','5559876543','http://artcity.org/waves');
INSERT INTO public_art_installations VALUES (103,'Beacon','Aisha Khan','2021-11-03','LED Composite',6.5,2.5,2.5,'Eastside Library',41.8781,-87.6298,'Eastside','Grant XYZ',45000,6,'2022-10-30',10,1,'2025-11-03','Michael Lee','5552468101','http://libraryarts.net/beacon');

-- Traffic Signal Maintenance Records
CREATE TABLE traffic_signal_maintenance
(
    signal_id                     INTEGER NOT NULL PRIMARY KEY,
    intersection_id               INTEGER NULL,
    location_description          TEXT    NULL,
    install_date                  DATE    NULL,
    last_inspection_date          DATE    NULL,
    signal_type                   TEXT    NULL,
    manufacturer                  TEXT    NULL,
    model_number                  TEXT    NULL,
    firmware_version              TEXT    NULL,
    lamp_type                     TEXT    NULL,
    lamp_wattage                  REAL    NULL,
    green_time_sec                REAL    NULL,
    yellow_time_sec               REAL    NULL,
    red_time_sec                  REAL    NULL,
    pedestrian_phase              INTEGER NULL,
    adaptive_control              INTEGER NULL,
    maintenance_vendor            TEXT    NULL,
    last_repair_date              DATE    NULL,
    next_service_due              DATE    NULL,
    total_outages_this_year      INTEGER NULL,
    avg_outage_duration_sec      REAL    NULL,
    notes                         TEXT    NULL
);

INSERT INTO traffic_signal_maintenance VALUES (5001,120,'5th Ave & Main St','2010-03-01','2023-02-15','Vehicle','SignalTech','ST-200','v3.4','LED',150,30,5,45,1,1,'City Services','2023-01-20','2023-10-01',3,12.5,'Replaced LED modules');
INSERT INTO traffic_signal_maintenance VALUES (5002,305,'Oak St & 12th Rd','2015-07-12','2022-11-30','Pedestrian','LightPro','LP-450','v2.1','Halogen',125,25,4,40,1,0,'Metro Maintenance','2022-10-05','2023-04-01',1,8.0,'Firmware update applied');
INSERT INTO traffic_signal_maintenance VALUES (5003,78,'Maple Blvd & 3rd Ave','2018-01-20','2023-03-05','Vehicle','SignalCo','SC-300','v4.0','LED',170,35,5,50,0,1,'Urban Infra','2023-02-10','2023-09-15',0,NULL,'Routine inspection completed');

-- Stormwater Management Projects
CREATE TABLE stormwater_management_projects
(
    project_id                     INTEGER NOT NULL PRIMARY KEY,
    project_name                   TEXT    NULL,
    start_date                     DATE    NULL,
    projected_end_date             DATE    NULL,
    actual_end_date                DATE    NULL,
    total_cost_usd                 REAL    NULL,
    funding_agency                 TEXT    NULL,
    basin_name                     TEXT    NULL,
    acres_impacted                 REAL    NULL,
    retention_volume_cuft          REAL    NULL,
    infiltration_rate_cfh          REAL    NULL,
    design_type                    TEXT    NULL,
    contractor                     TEXT    NULL,
    permits_obtained               INTEGER NULL,
    compliance_status              TEXT    NULL,
    last_inspection_date           DATE    NULL,
    engineers_in_charge            TEXT    NULL,
    community_outreach_hours       INTEGER NULL,
    expected_benefit_years         INTEGER NULL,
    water_quality_improvement_pct REAL    NULL,
    notes                          TEXT    NULL
);

INSERT INTO stormwater_management_projects VALUES (20001,'Riverbank Retention','2021-05-01','2023-10-15','2023-10-12',2500000,'EPA','North River',150.5,800000,12.4,'Detention Basin','BuildRight Co',1,'Compliant','2023-09-20','Eng. Laura Chen',120,10,35.0,'Project completed ahead of schedule');
INSERT INTO stormwater_management_projects VALUES (20002,'Westside Greenway','2022-03-10','2024-12-01',NULL,1800000,'State Water Dept','West Creek',95.2,500000,9.8,'Bioretention', 'EcoConstruct',1,'Pending','2023-08-05','Eng. Mark Davis',80,8,28.5,'Awaiting final inspection');
INSERT INTO stormwater_management_projects VALUES (20003,'Downtown Permeable Pavement','2020-09-15','2022-06-30','2022-06-28',950000,'City Grants','Urban Basin',45.0,0,0,'Pavement', 'PaveIt LLC',1,'Compliant','2022-06-20','Eng. Sara Patel',60,5,15.0,'Reduced runoff by 40%');

-- Renewable Energy Assets
CREATE TABLE renewable_energy_assets
(
    asset_id                     INTEGER NOT NULL PRIMARY KEY,
    asset_type                   TEXT    NULL,
    capacity_mw                 REAL    NULL,
    installation_date            DATE    NULL,
    location_description         TEXT    NULL,
    latitude                     REAL    NULL,
    longitude                    REAL    NULL,
    owner_entity                 TEXT    NULL,
    financing_type               TEXT    NULL,
    cost_usd                     REAL    NULL,
    operational_status           TEXT    NULL,
    expected_lifetime_years      INTEGER NULL,
    annual_generation_mwh       REAL    NULL,
    maintenance_contract_vendor TEXT    NULL,
    last_maintenance_date        DATE    NULL,
    next_maintenance_due        DATE    NULL,
    grid_interconnection_point   TEXT    NULL,
    incentives_received_usd      REAL    NULL,
    environmental_impact_score   REAL    NULL,
    notes                        TEXT    NULL
);

INSERT INTO renewable_energy_assets VALUES (9001,'Solar',15.2,'2019-04-22','Sunnyfield Solar Farm',35.6895,-120.2345,'GreenPower LLC','PPAs',22000000,'Online',25,23600,'SolarMaint Inc','2023-03-01','2024-03-01','NodeA','2500000',8.5,'First utility-scale solar in the region');
INSERT INTO renewable_energy_assets VALUES (9002,'Wind',8.5,'2020-11-10','Hilltop Wind Park',40.7128,-74.0060,'WindCo Partners','Equity',18000000,'Online',20,28000,'WindCare Ltd','2023-02-15','2023-11-15','NodeB','1800000',9.1,'High elevation site');
INSERT INTO renewable_energy_assets VALUES (9003,'Solar',2.3,'2022-07-05','Rooftop Solar School','34.0522','-118.2437','SunnySchool District','Lease',750000,'Online',30,2500,'SchoolTech Services','2023-06-20','2024-06-20','NodeC','500000',7.4,'Installed on district elementary schools');

-- Historic Building Registry
CREATE TABLE historic_building_registry
(
    building_id                     INTEGER NOT NULL PRIMARY KEY,
    building_name                   TEXT    NULL,
    address                         TEXT    NULL,
    year_built                      INTEGER NULL,
    architectural_style             TEXT    NULL,
    historic_designation            TEXT    NULL,
    designation_date                DATE    NULL,
    preservation_status             TEXT    NULL,
    owner_name                      TEXT    NULL,
    owner_contact                   TEXT    NULL,
    floor_area_sqft                 INTEGER NULL,
    number_of_floors                INTEGER NULL,
    materials_used                  TEXT    NULL,
    last_restoration_date           DATE    NULL,
    next_inspection_due             DATE    NULL,
    heritage_tax_credit_usd         REAL    NULL,
    visitor_accessible              INTEGER NULL,
    public_hours                    TEXT    NULL,
    website_url                     TEXT    NULL,
    notes                           TEXT    NULL
);

INSERT INTO historic_building_registry VALUES (3001,'Old Town Hall','123 Main St','1902','Beaux Arts','National','1975-06-01','Preserved','City Heritage Dept','5551112222',12000,3,'Stone, Brick', '2018-09-10','2024-06-01',500000,1,'09:00-17:00','http://cityheritage.org/oldtownhall','Iconic civic building');
INSERT INTO historic_building_registry VALUES (3002,'Maple Library','456 Oak Ave','1925','Colonial Revival','State','1990-04-15','Good Condition','Maple County Library','5553334444',8000,2,'Wood, Brick', '2020-03-22','2025-04-15',200000,1,'08:00-20:00','http://maplelibrary.org','Renovated 2020');
INSERT INTO historic_building_registry VALUES (3003,'Riverfront Factory','789 River Rd','1910','Industrial','Local','2005-09-30','Needs Repair','Riverline Holdings','5555556666',25000,5,'Steel, Concrete', '2015-11-05','2023-12-31',0,0,NULL,'http://riverfrontfactory.com','Awaiting redevelopment plan');

-- City Festival Events
CREATE TABLE city_festival_events
(
    event_id                     INTEGER NOT NULL PRIMARY KEY,
    event_name                   TEXT    NULL,
    start_date                   DATE    NULL,
    end_date                     DATE    NULL,
    venue_name                   TEXT    NULL,
    expected_attendance          INTEGER NULL,
    sponsor                      TEXT    NULL,
    budget_usd                   REAL    NULL,
    ticket_price_usd             REAL    NULL,
    organizer_contact            TEXT    NULL,
    city_district                TEXT    NULL,
    permit_number                TEXT    NULL,
    security_plan_submitted      INTEGER NULL,
    waste_management_plan        INTEGER NULL,
    accessibility_plan           INTEGER NULL,
    media_partner                TEXT    NULL,
    social_media_hashtag         TEXT    NULL,
    covid_protocols              INTEGER NULL,
    post_event_survey_link       TEXT    NULL,
    notes                        TEXT    NULL
);

INSERT INTO city_festival_events VALUES (4001,'Summer Music Fest','2023-07-10','2023-07-12','Central Park Amphitheater',35000,'ABC Corp',500000,25,'John Miller','Downtown','PERM-2023-001',1,1,1,'Metro News','#SummerSound2023',1,'http://surveys.city.gov/summermusic','Annual flagship concert');
INSERT INTO city_festival_events VALUES (4002,'Artisan Market','2024-09-05','2024-09-07','Riverwalk Plaza',15000,'Local Arts Council',120000,0,'Emily Davis','River District','PERM-2024-045',1,1,1,'ArtNow','#Artisan2024',0,'http://surveys.city.gov/artisan','Focus on local crafts');
INSERT INTO city_festival_events VALUES (4003,'Tech Innovation Expo','2025-03-20','2025-03-22','Convention Center Hall B',20000,'TechPartners',300000,150,'Michael Lee','Tech Hub','PERM-2025-012',1,1,1,'TechToday','#TechExpo2025',1,'http://surveys.city.gov/techexpo','Showcase emerging technologies');

-- Public WiFi Hotspots
CREATE TABLE public_wifi_hotspots
(
    hotspot_id                    INTEGER NOT NULL PRIMARY KEY,
    hotspot_name                  TEXT    NULL,
    provider                      TEXT    NULL,
    install_date                  DATE    NULL,
    latitude                      REAL    NULL,
    longitude                     REAL    NULL,
    coverage_radius_m             REAL    NULL,
    max_clients                   INTEGER NULL,
    bandwidth_mbps                REAL    NULL,
    frequency_band                TEXT    NULL,
    encryption_type               TEXT    NULL,
    location_type                 TEXT    NULL,
    street_address                TEXT    NULL,
    city_zone                     TEXT    NULL,
    maintenance_vendor            TEXT    NULL,
    last_maintenance_date         DATE    NULL,
    next_service_due              DATE    NULL,
    uptime_percent_year           REAL    NULL,
    complaints_this_month        INTEGER NULL,
    notes                         TEXT    NULL
);

INSERT INTO public_wifi_hotspots VALUES (6001,'Downtown Plaza WiFi','CityNet','2020-02-15',40.7128,-74.0060,150,200,150,'2.4GHz','WPA2','Public Plaza','123 Main St','Central','NetOps LLC','2023-06-10','2023-12-10',99.5,2,'High usage area');
INSERT INTO public_wifi_hotspots VALUES (6002,'Eastside Library WiFi','LibraryConnect','2019-08-01',34.0522,-118.2437,80,100,100,'5GHz','WPA2','Library','456 Oak Ave','Eastside','LibTech Services','2023-05-20','2023-11-20',98.2,0,'Free for patrons');
INSERT INTO public_wifi_hotspots VALUES (6003,'Riverside Park WiFi','ParkNet','2021-05-20',41.8781,-87.6298,120,150,120,'Dual Band','WPA3','Park','789 River Rd','North','ParkMaint Co','2023-07-01','2023-12-31',97.8,1,'Added during summer renovation');

-- Air Quality Compliance Monitoring
CREATE TABLE air_quality_compliance
(
    monitor_id                     INTEGER NOT NULL PRIMARY KEY,
    site_name                      TEXT    NULL,
    latitude                       REAL    NULL,
    longitude                      REAL    NULL,
    pollutant_monitored            TEXT    NULL,
    measurement_unit               TEXT    NULL,
    daily_limit                    REAL    NULL,
    compliance_status              TEXT    NULL,
    last_violation_date            DATE    NULL,
    violation_severity             TEXT    NULL,
    corrective_action_taken        TEXT    NULL,
    compliance_officer             TEXT    NULL,
    report_submission_date         DATE    NULL,
    next_audit_date                DATE    NULL,
    avg_annual_concentration       REAL    NULL,
    peak_concentration             REAL    NULL,
    peak_date                      DATE    NULL,
    sensor_model                   TEXT    NULL,
    sensor_last_calibrated         DATE    NULL,
    notes                          TEXT    NULL
);

INSERT INTO air_quality_compliance VALUES (8001,'North Hill Monitoring','40.7306','-73.9352','PM2.5','µg/m3',35.0,'Compliant',NULL,NULL,NULL,'Laura Chen','2023-03-15','2024-03-15',12.5,48.0,'2022-08-12','AQM-200','2023-01-10','No violations recorded');
INSERT INTO air_quality_compliance VALUES (8002,'Riverbank Station','34.0522','-118.2437','Ozone','ppb',70.0,'Non‑Compliant','2023-01-22','High','Adjusted traffic flow','Mark Davis','2023-02-10','2023-08-10',85.3,120.5,'2023-01-22','OzoneSenseX','2023-01-05','Exceeded daily ozone limit');
INSERT INTO air_quality_compliance VALUES (8003,'Industrial Zone East','41.8781','-87.6298','NO2','ppb',100.0,'Compliant',NULL,NULL,NULL,'Sara Patel','2023-04-05','2024-04-05',45.0,78.0,'2023-03-30','NO2Tracker','2023-02-20','Routine monitoring');

-- Smart City Sensor Deployments
CREATE TABLE smart_city_sensor_deployments
(
    deployment_id                    INTEGER NOT NULL PRIMARY KEY,
    sensor_type                      TEXT    NULL,
    serial_number                    TEXT    NULL,
    install_date                     DATE    NULL,
    latitude                         REAL    NULL,
    longitude                        REAL    NULL,
    firmware_version                 TEXT    NULL,
    battery_life_years               REAL    NULL,
    connectivity_type                TEXT    NULL,
    data_endpoint_url                TEXT    NULL,
    data_retention_days              INTEGER NULL,
    calibration_date                 DATE    NULL,
    last_maintenance_date           DATE    NULL,
    next_calibration_due            DATE    NULL,
    field_technician                TEXT    NULL,
    site_owner                       TEXT    NULL,
    project_phase                    TEXT    NULL,
    budget_usd                       REAL    NULL,
    expected_lifespan_years          INTEGER NULL,
    notes                            TEXT    NULL
);

INSERT INTO smart_city_sensor_deployments VALUES (90001,'Noise','NS-1001','2022-01-15',40.7128,-74.0060,'v1.2',5.0,'LoRa','http://data.city.gov/noise/1001',365,'2022-12-01','2023-06-01','2024-12-01','TechMike','City Utilities','Deployment','150000',7,'Installed in downtown corridor');
INSERT INTO smart_city_sensor_deployments VALUES (90002,'AirQuality','AQ-2002','2021-06-20',34.0522,-118.2437,'v2.0',4.5,'Cellular','http://data.city.gov/aq/2002',730,'2022-05-15','2023-05-15','2024-05-15','TechAnna','Environmental Dept','Pilot','200000',6,'Monitors PM2.5 and Ozone');
INSERT INTO smart_city_sensor_deployments VALUES (90003,'TrafficFlow','TF-3003','2023-03-10',41.8781,-87.6298,'v1.8',6.0,'5G','http://data.city.gov/traffic/3003',180,'2023-09-01','2024-03-01','2025-09-01','TechSam','Transport Authority','Expansion','250000',8,'Counts vehicles and estimates speed');