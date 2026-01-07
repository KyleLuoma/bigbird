-- Weather alerts issued by meteorological agencies
CREATE TABLE weather_alert
(
    alert_id               INTEGER PRIMARY KEY,
    region_code            TEXT NOT NULL,
    alert_type             TEXT NOT NULL,
    severity               INTEGER NOT NULL,
    start_date             INTEGER NOT NULL,          -- YYYYMMDD
    end_date               INTEGER NOT NULL,
    description            TEXT,
    issued_by              TEXT,
    issued_at              INTEGER NOT NULL,          -- YYYYMMDDHHMM
    update_count           INTEGER DEFAULT 0,
    is_active              INTEGER NOT NULL,          -- 0 = false, 1 = true
    alert_code             TEXT,
    latitude               REAL,
    longitude              REAL,
    altitude               REAL,
    population_affected    INTEGER,
    expected_duration_hr   INTEGER,
    mitigation_advice     TEXT,
    source_url             TEXT,
    confidence             REAL,
    created_at             INTEGER NOT NULL,
    updated_at             INTEGER NOT NULL
);

INSERT INTO weather_alert VALUES
(1,'NW','Storm',4,20230115,20230116,'Severe thunderstorm','NWS','202301150830',2,1,'ST2023NW01',45.12,-122.34,15.0,12000,24,'Seek shelter','http://nws.gov/alert1',0.92,202301150700,202301151000);

INSERT INTO weather_alert VALUES
(2,'SE','Flood',3,20230202,20230205,'River overflow expected','USGS','202302020900',1,1,'FL2023SE02',36.78,-119.41,5.0,34000,72,'Move to higher ground','http://usgs.gov/flood2',0.85,202302020600,202302021200);

INSERT INTO weather_alert VALUES
(3,'NE','Heatwave',2,20230310,20230320,'Extended high temperature','NOAA','202303100600',0,1,'HW2023NE03',42.22,-71.12,30.0,5000,240,'Stay hydrated','http://noaa.gov/heat3',0.78,202303100500,202303101200);


-- Public transport stop information
CREATE TABLE public_transport_stop
(
    stop_id                INTEGER PRIMARY KEY,
    stop_name              TEXT NOT NULL,
    stop_code              TEXT NOT NULL,
    latitude               REAL NOT NULL,
    longitude              REAL NOT NULL,
    zone_id                INTEGER,
    wheelchair_accessible INTEGER DEFAULT 0,
    shelter_present        INTEGER DEFAULT 0,
    bench_count            INTEGER DEFAULT 0,
    ticket_machine         INTEGER DEFAULT 0,
    bus_routes             TEXT,
    tram_routes            TEXT,
    metro_lines            TEXT,
    average_daily_boardings INTEGER,
    last_maintenance_date  INTEGER,          -- YYYYMMDD
    maintenance_status    TEXT,
    construction_year      INTEGER,
    operator_company       TEXT,
    opening_date           INTEGER,          -- YYYYMMDD
    closing_date           INTEGER,          -- YYYYMMDD nullable
    ridership_trend        TEXT,
    gps_signal_strength    REAL,
    created_at             INTEGER NOT NULL,
    updated_at             INTEGER NOT NULL
);

INSERT INTO public_transport_stop VALUES
(101,'MainStNorth','MSN001',40.7128,-74.0060,1,1,1,2,1,'B12;B15','T3','M2',4500,20221215,'Good',1995,'CityTransit',19960101,NULL,'Stable',-70.5,202301010800,202301020900);

INSERT INTO public_transport_stop VALUES
(102,'LakeSide','LKS045',41.8781,-87.6298,2,0,0,0,0,'B22;B30','T1','M5',2100,20221130,'Needs repair',2002,'MetroCorp',20040410,NULL,'Declining',-65.3,202301050700,202301060800);

INSERT INTO public_transport_stop VALUES
(103,'HillTop','HTP078',34.0522,-118.2437,3,1,1,4,1,'B5;B9','T2','M1',7800,20230110,'Excellent',1988,'TransitPlus',19880121,NULL,'Increasing',-68.9,202301080600,202301090700);


-- Urban noise sensor measurements
CREATE TABLE urban_noise_sensor
(
    sensor_id              INTEGER PRIMARY KEY,
    location_name          TEXT NOT NULL,
    latitude               REAL NOT NULL,
    longitude              REAL NOT NULL,
    installation_date      INTEGER NOT NULL,    -- YYYYMMDD
    last_calibration_date  INTEGER,
    sensor_type            TEXT,
    measurement_unit       TEXT,
    min_decibel            REAL,
    max_decibel            REAL,
    avg_decibel            REAL,
    peak_hour_start        INTEGER,             -- HHMM
    peak_hour_end          INTEGER,
    noise_category         TEXT,
    battery_level_percent  INTEGER,
    signal_strength_db     REAL,
    firmware_version       TEXT,
    maintenance_interval_days INTEGER,
    last_maintenance_date  INTEGER,
    data_upload_status     TEXT,
    owner_department       TEXT,
    latitude_offset        REAL,
    longitude_offset       REAL,
    created_at             INTEGER NOT NULL,
    updated_at             INTEGER NOT NULL
);

INSERT INTO urban_noise_sensor VALUES
(2001,'CentralParkNorth',40.7851,-73.9683,20200115,20221201,'Acoustic','dB',30.2,95.6,68.4,1800,2000,'Urban',85, -70.2,'v1.2',180,20221215,'Uploaded','ParksDept',0.001,-0.002,202301010600,202301020700);

INSERT INTO urban_noise_sensor VALUES
(2002,'IndustrialZoneSouth',41.8781,-87.6298,20190520,20221120,'Vibration','dB',45.0,110.3,78.9,2000,2300,'Industrial',73, -68.5,'v1.1',365,20221125,'Pending','Infrastructure',0.000,-0.001,202301050800,202301060900);

INSERT INTO urban_noise_sensor VALUES
(2003,'ResidentialEast',34.0522,-118.2437,20210305,20230210,'Acoustic','dB',35.5,85.0,60.2,2100,2300,'Residential',92, -71.0,'v1.3',90,20230215,'Uploaded','CommunityServices',0.002,0.001,202301080700,202301090800);


-- Renewable energy certificates registry
CREATE TABLE renewable_energy_certificate
(
    certificate_id         INTEGER PRIMARY KEY,
    certificate_code       TEXT NOT NULL,
    issuer_organization    TEXT NOT NULL,
    issue_date             INTEGER NOT NULL,   -- YYYYMMDD
    expiry_date            INTEGER,
    energy_type            TEXT,
    capacity_mwh           REAL,
    generation_site_id     INTEGER,
    generation_site_name   TEXT,
    country_code           TEXT,
    region_code            TEXT,
    verification_status    TEXT,
    verification_date      INTEGER,
    owner_entity           TEXT,
    acquisition_price_usd  REAL,
    current_market_value_usd REAL,
    carbon_offset_tons     REAL,
    renewable_attribute    TEXT,
    compliance_status      TEXT,
    compliance_check_date  INTEGER,
    notes                  TEXT,
    created_at             INTEGER NOT NULL,
    updated_at             INTEGER NOT NULL
);

INSERT INTO renewable_energy_certificate VALUES
(5001,'REC2023A001','GreenPowerInc',20230101,20240301,'Solar',500.0,101,'SunnyValley','US','CA','Verified',20230105,'EcoInvest',1200000.00,1250000.00,2500.0,'SolarPV','Compliant',20230110,'Initial issuance',202301010800,202301020900);

INSERT INTO renewable_energy_certificate VALUES
(5002,'REC2023B023','WindGenCo',20230215,NULL,'Wind',1200.0,202,'WindyPlains','US','TX','Pending',NULL,'RenewCap',2600000.00,2700000.00,5400.0,'OnshoreWind','Pending',NULL,'Awaiting verification',202302150900,202302151000);

INSERT INTO renewable_energy_certificate VALUES
(5003,'REC2023C045','HydroFlowLtd',20230320,20240320,'Hydro',800.0,303,'RiverSide','CA','BC','Verified',20230325,'HydroInvest',1800000.00,1850000.00,3600.0,'RunOfRiver','Compliant',20230330,'Verified by third party',202303200700,202303210800);


-- Hospital staff scheduling
CREATE TABLE hospital_staff_schedule
(
    schedule_id            INTEGER PRIMARY KEY,
    staff_id               INTEGER NOT NULL,
    staff_name             TEXT NOT NULL,
    department             TEXT NOT NULL,
    role                   TEXT,
    shift_date             INTEGER NOT NULL,   -- YYYYMMDD
    shift_start_time       INTEGER NOT NULL,   -- HHMM
    shift_end_time         INTEGER NOT NULL,   -- HHMM
    assigned_ward          TEXT,
    on_call                INTEGER DEFAULT 0,  -- 0 = no, 1 = yes
    hours_scheduled        REAL,
    overtime_hours         REAL,
    break_minutes          INTEGER,
    notes                  TEXT,
    last_updated_by        TEXT,
    last_update_timestamp  INTEGER,
    created_at             INTEGER NOT NULL,
    updated_at             INTEGER NOT NULL,
    schedule_status        TEXT,
    coverage_percentage    REAL,
    certification_level    TEXT,
    shift_type             TEXT,
    employee_status        TEXT,
    manager_approval       INTEGER DEFAULT 0
);

INSERT INTO hospital_staff_schedule VALUES
(30001,1123,'AliceSmith','Emergency','Nurse',20230110,700,1500,'ER1',1,8.0,0.5,30,'Routine shift','SchedulerA',202301110800,202301100600,202301100600,202301110900,'Full',95.0,'RN','Day','Active',1);

INSERT INTO hospital_staff_schedule VALUES
(30002,1456,'BobJones','Radiology','Technician',20230110,800,1600,'Rad2',0,8.0,0.0,45,'MRI scan support','SchedulerB',202301110900,202301100700,202301100700,202301111000,'Full',98.0,'CRT','Evening','Active',1);

INSERT INTO hospital_staff_schedule VALUES
(30003,1789,'CarolLee','ICU','Physician',20230110,900,2100,'ICU3',1,12.0,2.0,60,'Overnight emergency','SchedulerC',202301111200,202301100800,202301100800,202301111300,'Full',100.0,'MD','Night','OnLeave',0);


-- Digital marketing audience segments
CREATE TABLE digital_marketing_audience
(
    segment_id             INTEGER PRIMARY KEY,
    segment_name           TEXT NOT NULL,
    description            TEXT,
    creation_date          INTEGER NOT NULL,   -- YYYYMMDD
    last_modified_date     INTEGER,
    total_users            INTEGER,
    avg_age                REAL,
    gender_distribution_male_percent REAL,
    gender_distribution_female_percent REAL,
    top_countries          TEXT,
    device_type_mobile_percent REAL,
    device_type_desktop_percent REAL,
    avg_income_usd         REAL,
    interests              TEXT,
    purchase_intent_score  REAL,
    click_through_rate     REAL,
    conversion_rate        REAL,
    facebook_reach         INTEGER,
    google_ads_spend_usd   REAL,
    instagram_followers    INTEGER,
    linkedin_connections   INTEGER,
    email_open_rate        REAL,
    sms_opt_in_percent     REAL,
    created_at             INTEGER NOT NULL,
    updated_at             INTEGER NOT NULL,
    data_source            TEXT,
    confidence_level       REAL,
    segment_status         TEXT
);

INSERT INTO digital_marketing_audience VALUES
(9001,'TechEnthusiasts','Early adopters of technology',20230101,20230115,150000,28.5,55.0,45.0,'US;CA;UK',80.0,20.0,85000.0,'Gadgets;AI;VR',0.78,0.12,0.05,500000,120000.00,200000,35000,0.22,0.15,202301010600,202301150800,'AnalyticsPlatform',0.93,'Active');

INSERT INTO digital_marketing_audience VALUES
(9002,'HealthConscious','Individuals focused on wellness',20230205,20230220,200000,35.2,48.0,52.0,'AU;NZ;US',60.0,40.0,65000.0,'Fitness;Nutrition;Yoga',0.65,0.10,0.04,300000,90000.00,150000,25000,0.30,0.12,202302050700,202302200900,'SurveyData',0.88,'Active');

INSERT INTO digital_marketing_audience VALUES
(9003,'TravelSeekers','Frequent travelers and explorers',20230310,NULL,120000,32.1,50.0,50.0,'FR;ES;IT',70.0,30.0,72000.0,'Adventure;Culture;Food',0.70,0.14,0.06,250000,110000.00,180000,30000,0.25,0.18,202303100800,202303110900,'SocialListening',0.90,'Pending');


-- Agricultural crop yield records
CREATE TABLE agricultural_crop_yield
(
    record_id              INTEGER PRIMARY KEY,
    farm_id                INTEGER NOT NULL,
    farm_name              TEXT NOT NULL,
    crop_type              TEXT NOT NULL,
    planting_date          INTEGER NOT NULL,   -- YYYYMMDD
    harvest_date           INTEGER NOT NULL,
    area_hectares          REAL,
    yield_tons             REAL,
    average_yield_per_hectare REAL,
    irrigation_type        TEXT,
    fertilizer_used_kg     REAL,
    pest_control_method   TEXT,
    soil_ph                REAL,
    soil_type              TEXT,
    rainfall_mm            REAL,
    temperature_c_avg      REAL,
    harvest_quality_grade  TEXT,
    market_price_per_ton_usd REAL,
    total_revenue_usd      REAL,
    farmer_contact_name    TEXT,
    farmer_contact_phone   TEXT,
    notes                  TEXT,
    created_at             INTEGER NOT NULL,
    updated_at             INTEGER NOT NULL,
    data_quality_flag      TEXT,
    certification_status   TEXT
);

INSERT INTO agricultural_crop_yield VALUES
(4001,10,'GreenValleyFarm','Wheat',20221015,20230610,120.5,350.0,2.90,'Drip','1500','Integrated','6.5','Loam','500','18.2','A',210.00,73500.00,'John Doe','5551234','No issues','202301010900','202306110800','Verified','Organic');

INSERT INTO agricultural_crop_yield VALUES
(4002,22,'SunriseOrchard','Apple',20220401,20230820,80.0,480.0,6.00,'Sprinkler','2000','Biological','6.8','Sandy loam','600','16.5','B',300.00,144000.00,'Jane Smith','5555678','Late frost observed','202301020800','202308210700','Verified','Conventional');

INSERT INTO agricultural_crop_yield VALUES
(4003,35,'RiverbankFields','Corn',20220310,20230705,150.0,600.0,4.00,'Surface','1800','Chemical','5.9','Clay','550','20.0','A',180.00,108000.00,'Mike Brown','5559012','Yield lower than forecast','202301030700','202307060600','Pending','Conventional');


-- Marine fishing vessel log
CREATE TABLE marine_fishing_vessel_log
(
    log_id                 INTEGER PRIMARY KEY,
    vessel_id              INTEGER NOT NULL,
    vessel_name            TEXT NOT NULL,
    flag_country           TEXT NOT NULL,
    departure_port         TEXT NOT NULL,
    arrival_port           TEXT NOT NULL,
    departure_date         INTEGER NOT NULL,   -- YYYYMMDD
    arrival_date           INTEGER NOT NULL,
    catch_species          TEXT,
    catch_weight_kg        REAL,
    fuel_consumed_liters   REAL,
    distance_nautical_miles REAL,
    crew_size              INTEGER,
    captain_name           TEXT,
    average_sea_state      TEXT,
    weather_conditions     TEXT,
    gear_type              TEXT,
    quota_remaining_tons   REAL,
    inspection_status      TEXT,
    inspection_date        INTEGER,
    notes                  TEXT,
    created_at             INTEGER NOT NULL,
    updated_at             INTEGER NOT NULL,
    compliance_flag        TEXT,
    gps_track_file         TEXT
);

INSERT INTO marine_fishing_vessel_log VALUES
(7001,501,'AtlanticTrader','NOR','Oslo','Reykjavik',20230105,20230115,'Cod',1200.5,3500.0,950.0,22,'Erik Hansen','Moderate','Clear','Trawl',1800.0,'Passed',20230120,'No violations','202301050600','202301151200','Compliant','track7001.gpx');

INSERT INTO marine_fishing_vessel_log VALUES
(7002,502,'PacificHarbor','JPN','Tokyo','Hawaii',20230210,20230225,'Tuna',2000.0,5000.0,1200.0,30,'Hiro Tanaka','Rough','Stormy','Longline',2500.0,'Pending',20230301,'Awaiting inspection','202302100700','202302251100','Pending','track7002.gpx');

INSERT INTO marine_fishing_vessel_log VALUES
(7003,503,'SouthernSeas','AUS','Sydney','Melbourne',20230312,20230318,'Shrimp',800.0,2200.0,400.0,18,'Laura Mitchell','Calm','Cloudy','Gillnet',900.0,'Failed',20230320,'Undersized catch','202303120800','202303181500','NonCompliant','track7003.gpx');


-- Museum artifact condition records
CREATE TABLE museum_artifact_condition
(
    record_id              INTEGER PRIMARY KEY,
    artifact_id            INTEGER NOT NULL,
    artifact_name          TEXT NOT NULL,
    collection_name        TEXT,
    acquisition_date       INTEGER,            -- YYYYMMDD
    condition_status       TEXT,
    last_inspection_date  INTEGER,
    inspector_name         TEXT,
    temperature_c          REAL,
    humidity_percent       REAL,
    light_exposure_lux    REAL,
    handling_instructions  TEXT,
    restoration_needed    INTEGER DEFAULT 0,
    restoration_estimate_usd REAL,
    storage_location       TEXT,
    display_location       TEXT,
    provenance             TEXT,
    material_type          TEXT,
    dimensions_cm          TEXT,
    weight_kg              REAL,
    notes                  TEXT,
    created_at             INTEGER NOT NULL,
    updated_at             INTEGER NOT NULL,
    condition_score        REAL,
    conservation_status   TEXT
);

INSERT INTO museum_artifact_condition VALUES
(8001,1001,'Ancient Vase','Classical Antiquities',19980512,'Good',20230105,'DrSmith',20.0,45.0,150.0,'Handle with gloves',0,NULL,'Vault A1','Exhibit Hall 2','Excavated 1900','Ceramic','30x30x45','2.5','No visible cracks','202301010600','202301050800',8.5,'Stable');

INSERT INTO museum_artifact_condition VALUES
(8002,1002,'Medieval Tapestry','Textile Arts',20031220,'Fair',20230210,'MsJones',22.0,50.0,200.0,'Avoid direct sunlight',1,15000.00,'Storage B3','Gallery 4','Donated by Smith family','Wool','200x150','4.0','Minor fraying at edges','202302050700','202302110900',6.0,'Requires Restoration');

INSERT INTO museum_artifact_condition VALUES
(8003,1003,'Renaissance Painting','European Paintings',20110715,'Excellent',20230301,'MrLee',19.5,48.0,100.0,'Use acid-free gloves',0,NULL,'Vault C2','Exhibit Hall 1','Acquired at auction','Oil on canvas','120x90','15.0','Varnish slightly yellowed','202303010800','202303020900',9.2','Stable');


-- Spacecraft telemetry data
CREATE TABLE spacecraft_telemetry
(
    telemetry_id           INTEGER PRIMARY KEY,
    spacecraft_id          INTEGER NOT NULL,
    mission_name           TEXT NOT NULL,
    timestamp_utc          INTEGER NOT NULL,   -- YYYYMMDDHHMMSS
    subsystem              TEXT,
    parameter_name         TEXT,
    value_numeric          REAL,
    value_text             TEXT,
    unit                   TEXT,
    status_flag            TEXT,
    error_code             TEXT,
    latitude_deg           REAL,
    longitude_deg          REAL,
    altitude_km            REAL,
    velocity_km_s          REAL,
    temperature_c          REAL,
    power_watts            REAL,
    fuel_level_percent     REAL,
    data_quality           TEXT,
    transmission_source    TEXT,
    received_by_station    TEXT,
    created_at             INTEGER NOT NULL,
    updated_at             INTEGER NOT NULL,
    checksum               TEXT,
    notes                  TEXT
);

INSERT INTO spacecraft_telemetry VALUES
(90001,301,'LunaProbe',20230101120000,'Propulsion','Thrust',450.0,NULL,'N','OK',NULL,0.0,0.0,120.5,7.8, -20.0,2000.0,85.0,'Good','AntennaX','GroundStationA','20230101120500','20230101121000','AB12CD34','Nominal');

INSERT INTO spacecraft_telemetry VALUES
(90002,301,'LunaProbe',20230101121000,'Power','BatteryVoltage',28.5,NULL,'V','OK',NULL,0.0,0.0,120.5,7.8, -20.0,2800.0,80.0,'Good','AntennaX','GroundStationA','20230101121500','20230101122000','EF56GH78','Battery stable');

INSERT INTO spacecraft_telemetry VALUES
(90003,301,'LunaProbe',20230101122000,'Communication','SignalStrength',-72.0,NULL,'dBm','WARN','SIG001',0.0,0.0,120.5,7.8, -20.0,2800.0,80.0,'Fair','AntennaX','GroundStationA','20230101122500','20230101123000','IJ90KL12','Weak signal, possible obstruction');

