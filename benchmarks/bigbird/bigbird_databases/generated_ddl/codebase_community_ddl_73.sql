-- Wildlife sightings recorded by conservation volunteers
CREATE TABLE wildlife_sightings
(
    sighting_id            INTEGER PRIMARY KEY,
    observer_name          TEXT,
    observer_contact       TEXT,
    species_common_name    TEXT,
    species_scientific_name TEXT,
    count_observed         INTEGER,
    age_category           TEXT,
    gender_observed        TEXT,
    behavior_notes         TEXT,
    location_latitude      REAL,
    location_longitude     REAL,
    location_description   TEXT,
    sighting_date          DATE,
    sighting_time          TIME,
    weather_condition      TEXT,
    temperature_celsius    REAL,
    humidity_percent       REAL,
    is_endangered          INTEGER,
    photo_url              TEXT,
    audio_recording_url    TEXT,
    verified_by            TEXT,
    verification_date      DATE,
    notes                  TEXT
);
INSERT INTO wildlife_sightings VALUES (1,'Alice Smith','alice@example.com','Bald Eagle','Haliaeetus leucocephalus',2,'Adult','Female','Soaring over lake','45.12345','-122.67890','Lakeview Reserve','2023-06-15','08:30','Clear',22.5,55,1,'http://example.com/photos/eagle1.jpg','http://example.com/audio/eagle1.wav','John Ranger','2023-06-16','No issues');
INSERT INTO wildlife_sightings VALUES (2,'Bob Jones','bob@example.com','Gray Wolf','Canis lupus',5,'Subadult','Male','Pack hunting near forest edge','46.54321','-123.09876','Pinewood Forest','2023-07-02','19:45','Cloudy',18.2,70,0,'http://example.com/photos/wolf1.jpg','http://example.com/audio/wolf1.wav','Emily Scout','2023-07-03','Observed healthy pack');
INSERT INTO wildlife_sightings VALUES (3,'Carol Lee','carol@example.com','Monarch Butterfly','Danaus plexippus',12,'N/A','Female','Migrating north','44.98765','-121.54321','Meadow Springs','2023-08-20','12:15','Sunny',25.0,40,0,'http://example.com/photos/butterfly1.jpg','',,'2023-08-21','Large numbers observed');

-- Art exhibition catalog for city museums
CREATE TABLE art_exhibitions
(
    exhibition_id          INTEGER PRIMARY KEY,
    title                  TEXT,
    curatorial_director   TEXT,
    start_date             DATE,
    end_date               DATE,
    venue_name             TEXT,
    venue_address          TEXT,
    city                   TEXT,
    state                  TEXT,
    country                TEXT,
    total_artworks         INTEGER,
    featured_artist        TEXT,
    medium_focus           TEXT,
    opening_night_attendance INTEGER,
    ticket_price_usd       REAL,
    sponsor_name           TEXT,
    sponsorship_level      TEXT,
    catalog_url            TEXT,
    press_release_url      TEXT,
    education_programs     TEXT,
    accessibility_notes    TEXT,
    insurance_provider     TEXT,
    insurance_policy_number TEXT,
    notes                  TEXT
);
INSERT INTO art_exhibitions VALUES (101,'Colors of the Dawn','Maria Gomez','2023-09-01','2023-12-15','Metropolitan Gallery','123 Art St','Seattle','WA','USA',120,'Liam Chen','Oil Paintings',350,15.00,'Pacific Bank','Gold','http://example.com/catalog/101.pdf','http://example.com/press/101.html','Guided tours and workshops','Wheelchair accessible','Secure Insure Co','POL123456','First annual showcase');
INSERT INTO art_exhibitions VALUES (102,'Sculpting Time','James Patel','2024-02-10','2024-05-20','Riverbank Museum','45 River Rd','Portland','OR','USA',85,'Aisha Rahman','Bronze Sculptures',220,12.50,'City Arts Fund','Silver','http://example.com/catalog/102.pdf','http://example.com/press/102.html','Artist talks weekly','Audio guides available','ArtGuard Ltd','POL654321','Featured local artisans');
INSERT INTO art_exhibitions VALUES (103,'Digital Horizons','Nina Kwon','2024-07-05','2024-10-30','Tech Arts Center','78 Innovation Blvd','San Francisco','CA','USA',200,'Ethan Liu','Digital Installations',480,20.00,'TechFuture Corp','Platinum','http://example.com/catalog/103.pdf','http://example.com/press/103.html','Virtual reality experiences','All areas wheelchair friendly','Digital Safe','POL789012','Highlights emerging tech artists');

-- Water quality measurements from monitoring stations
CREATE TABLE water_quality_measurements
(
    measurement_id          INTEGER PRIMARY KEY,
    station_id              TEXT,
    station_name            TEXT,
    latitude                REAL,
    longitude               REAL,
    measurement_date        DATE,
    measurement_time        TIME,
    temperature_celsius     REAL,
    pH_level                REAL,
    dissolved_oxygen_mg_l   REAL,
    turbidity_ntu           REAL,
    conductivity_us_cm      REAL,
    nitrate_mg_l            REAL,
    phosphate_mg_l          REAL,
    bacteria_cfu_100ml      INTEGER,
    sample_depth_meters     REAL,
    weather_condition       TEXT,
    analyst_name            TEXT,
    analysis_method         TEXT,
    quality_status          TEXT,
    notes                   TEXT,
    uploaded_by             TEXT,
    upload_timestamp        DATETIME,
    verification_status     TEXT
);
INSERT INTO water_quality_measurements VALUES (5001,'ST001','Riverbank North','45.67890','-122.12345','2023-06-10','08:00',15.2,7.4,8.1,3.5,120.0,0.45,0.03,150,1.5,'Clear','Dr Allen','Standard Lab','Good','Routine check','system','2023-06-10 09:00','Verified');
INSERT INTO water_quality_measurements VALUES (5002,'ST002','Lakeview East','46.12345','-123.54321','2023-07-22','14:30',22.8,6.9,6.5,5.2,95.0,1.20,0.10,300,3.0,'Overcast','Dr Patel','EPA Method','Moderate','After heavy rain','field_user','2023-07-22 15:00','Pending');
INSERT INTO water_quality_measurements VALUES (5003,'ST003','Mountain Creek','44.98765','-121.67890','2023-08-05','06:45',12.0,8.1,9.4,1.2,140.0,0.20,0.01,45,0.8,'Foggy','Dr Liu','Portable Kit','Excellent','Seasonal low flow','mobile_app','2023-08-05 07:30','Verified');

-- Schedule of upcoming sports events
CREATE TABLE sports_event_schedule
(
    event_id                INTEGER PRIMARY KEY,
    sport_type              TEXT,
    league_name             TEXT,
    home_team               TEXT,
    away_team               TEXT,
    venue_name              TEXT,
    venue_city              TEXT,
    venue_state             TEXT,
    start_datetime          DATETIME,
    end_datetime            DATETIME,
    ticket_price_usd        REAL,
    tickets_available       INTEGER,
    broadcast_network       TEXT,
    referee_name            TEXT,
    attendance_estimate     INTEGER,
    weather_forecast        TEXT,
    security_level          TEXT,
    merchandise_stalls      INTEGER,
    vip_passes_available    INTEGER,
    sponsor_name            TEXT,
    ticket_category         TEXT,
    concessions_available   TEXT,
    parking_spaces          INTEGER,
    notes                   TEXT,
    created_by              TEXT,
    created_timestamp       DATETIME,
    last_modified_timestamp DATETIME
);
INSERT INTO sports_event_schedule VALUES (9001,'Baseball','Pacific League','Seattle Mariners','San Diego Padres','Mariners Stadium','Seattle','WA','2023-09-15 19:00','2023-09-15 22:30',30.00,15000,'SportsNet','Mike Johnson',18000,'Clear','High',12,200,'BlueWave Corp','Standard','Food,Beverage','2500','Opening night game','admin','2023-07-01 10:00','2023-07-15 08:30');
INSERT INTO sports_event_schedule VALUES (9002,'Soccer','National Soccer Association','Portland FC','Los Angeles United','Portland Stadium','Portland','OR','2023-10-02 18:00','2023-10-02 20:00',25.00,20000,'Global Sports','Laura Smith',19500,'Cloudy','Medium',8,150,'EcoSports Ltd','Premium','Food,Merch','3000','Season opener','admin','2023-07-05 11:15','2023-07-20 09:45');
INSERT INTO sports_event_schedule VALUES (9003,'Basketball','Western Conference','San Francisco Sharks','Seattle Thunder','Pacific Arena','San Francisco','CA','2023-11-12 20:00','2023-11-12 22:30',45.00,12000,'NBA Network','James Lee',14000,'Rain','High',10,250,'TechGear Inc','Courtside','Food,Beverage,Merch','1800','Playoff qualifier','admin','2023-07-10 14:20','2023-07-25 12:00');

-- Astronomical events tracking table
CREATE TABLE astronomical_events
(
    event_id                INTEGER PRIMARY KEY,
    event_name              TEXT,
    event_type              TEXT,
    peak_date               DATE,
    peak_time_utc           TIME,
    visibility_region       TEXT,
    magnitude               REAL,
    duration_hours          REAL,
    right_ascension        TEXT,
    declination             TEXT,
    description             TEXT,
    observer_notes          TEXT,
    source_agency           TEXT,
    data_url                TEXT,
    image_url               TEXT,
    discovery_year          INTEGER,
    next_occurrence_date    DATE,
    next_occurrence_time_utc TIME,
    alert_level             TEXT,
    confirmation_status     TEXT,
    related_events          TEXT,
    public_outreach_start   DATE,
    public_outreach_end     DATE,
    notes                   TEXT,
    created_by              TEXT,
    created_timestamp       DATETIME,
    last_updated_timestamp  DATETIME
);
INSERT INTO astronomical_events VALUES (20001,'Perseid Meteor Shower','Meteor Shower','2023-08-12','02:30','Northern Hemisphere',2.5,6.0,'03h12m','+45°','Annual meteor shower peaks in August','Clear skies expected','NASA','http://example.com/data/perseid2023.csv','http://example.com/images/perseid2023.jpg',1609,'2024-08-12','02:45','High','Confirmed','None','2023-08-10','2023-08-14','Popular viewing event','astronomer_bot','2023-06-01 09:00','2023-07-01 10:15');
INSERT INTO astronomical_events VALUES (20002,'Total Solar Eclipse','Eclipse','2024-04-08','18:45','South America','-','2.5','07h44m','-23°','Path of totality crosses Chile and Argentina','Cloud cover risk','ESA','http://example.com/data/solar2024.csv','http://example.com/images/solar2024.jpg',2020,'2026-08-12','06:30','Critical','Predicted','Partial Lunar Eclipse','2024-04-01','2024-04-10','Safety briefing required','eclipse_tracker','2023-07-15 12:00','2023-08-01 14:30');
INSERT INTO astronomical_events VALUES (20003,'Lunar Supermoon','Lunar Event','2023-10-28','04:15','Global','-11.0','24.0','12h30m','+15°','Supermoon appears larger and brighter','Excellent visibility','JAXA','http://example.com/data/supermoon2023.csv','http://example.com/images/supermoon2023.jpg',2023,'2024-09-17','04:45','Medium','Confirmed','None','2023-10-25','2023-10-30','Photography contest','moon_watch','2023-08-20 08:45','2023-09-05 09:30');

-- Manufacturing shift logs for factory floor
CREATE TABLE manufacturing_shift_logs
(
    shift_id                INTEGER PRIMARY KEY,
    factory_id              TEXT,
    factory_name            TEXT,
    shift_date              DATE,
    shift_start_time        TIME,
    shift_end_time          TIME,
    supervisor_name         TEXT,
    line_number             INTEGER,
    product_code            TEXT,
    units_produced          INTEGER,
    units_defective         INTEGER,
    downtime_minutes        INTEGER,
    downtime_reason         TEXT,
    equipment_id            TEXT,
    equipment_status        TEXT,
    safety_incidents        INTEGER,
    safety_comments         TEXT,
    temperature_celsius     REAL,
    humidity_percent        REAL,
    shift_notes             TEXT,
    quality_audit_passed    INTEGER,
    audit_score             REAL,
    maintenance_required    INTEGER,
    maintenance_details     TEXT,
    created_by              TEXT,
    created_timestamp       DATETIME,
    last_modified_timestamp DATETIME
);
INSERT INTO manufacturing_shift_logs VALUES (301,'F001','North Plant','2023-09-01','06:00','14:00','Laura Greene',2,'PRD-AX100',5000,25,30,'Mechanical failure','EQ-2201','Operational',0,'',22.5,45.0,'Smooth shift, on target','1',96.5,0,'','system','2023-09-01 05:00','2023-09-01 15:00');
INSERT INTO manufacturing_shift_logs VALUES (302,'F001','North Plant','2023-09-01','14:00','22:00','Mark Turner',2,'PRD-AX100',4800,40,45,'Power outage','EQ-2201','Operational',1,'Minor cut on hand','22.8',46.5,'Handled incident quickly','1',93.2,1,'Schedule maintenance for EQ-2201','system','2023-09-01 13:30','2023-09-01 22:30');
INSERT INTO manufacturing_shift_logs VALUES (303,'F002','South Plant','2023-09-02','22:00','06:00','Sofia Martinez',4,'PRD-BZ200',5200,15,20,'Material shortage','EQ-4103','Operational',0,'','21.0',50.0,'Late start due to material delivery','1',98.0,0,'','system','2023-09-02 21:00','2023-09-03 07:00');

-- City parking spot inventory
CREATE TABLE city_parking_spots
(
    spot_id                 INTEGER PRIMARY KEY,
    municipality            TEXT,
    district                TEXT,
    street_name             TEXT,
    spot_number             TEXT,
    latitude                REAL,
    longitude               REAL,
    spot_type               TEXT,
    parking_zone            TEXT,
    hourly_rate_usd         REAL,
    daily_rate_usd          REAL,
    monthly_rate_usd        REAL,
    max_height_meters       REAL,
    electric_charging       INTEGER,
    disabled_accessible    INTEGER,
    payment_method          TEXT,
    enforcement_agency      TEXT,
    installation_date       DATE,
    last_maintenance_date   DATE,
    status                  TEXT,
    occupancy_status        TEXT,
    sensors_installed       INTEGER,
    sensor_data_endpoint    TEXT,
    notes                   TEXT,
    created_by              TEXT,
    created_timestamp       DATETIME,
    last_modified_timestamp DATETIME
);
INSERT INTO city_parking_spots VALUES (4001,'Seattle','Downtown','Pike Street','A12',47.60801,-122.33645,'On-Street','Zone A',2.50,20.00,150.00,2.1,1,0,'Credit Card','City Police','2020-05-15','2023-06-01','Active','Available',1,'http://sensors.city.gov/spot/4001','Near coffee shop','admin','2023-01-10 08:00','2023-06-02 09:30');
INSERT INTO city_parking_spots VALUES (4002,'Seattle','Capitol Hill','Broadway','B07',47.61845,-122.32212,'Off-Street','Zone B',3.00,25.00,180.00,2.5,0,1,'Mobile App','City Police','2019-09-20','2023-05-20','Active','Occupied',1,'http://sensors.city.gov/spot/4002','Covered garage','admin','2023-01-12 09:15','2023-05-21 10:00');
INSERT INTO city_parking_spots VALUES (4003,'Seattle','University District','Union Bay','C03',47.65530,-122.30500,'On-Street','Zone C',1.80,15.00,120.00,2.0,0,0,'Cash','City Police','2021-03-10','2023-04-15','Inactive','Unavailable',0,'','Closed for construction','admin','2023-01-15 07:45','2023-04-16 08:20');

-- Laboratory experiment records
CREATE TABLE laboratory_experiments
(
    experiment_id           INTEGER PRIMARY KEY,
    lab_name                TEXT,
    project_code            TEXT,
    lead_scientist          TEXT,
    experiment_title        TEXT,
    start_date              DATE,
    end_date                DATE,
    protocol_version        TEXT,
    sample_type             TEXT,
    sample_quantity_ml      REAL,
    reagent_a_name          TEXT,
    reagent_a_conc_mg_ml    REAL,
    reagent_b_name          TEXT,
    reagent_b_conc_mg_ml    REAL,
    instrument_id           TEXT,
    instrument_model        TEXT,
    temperature_celsius     REAL,
    humidity_percent        REAL,
    duration_hours          REAL,
    data_file_path          TEXT,
    result_summary          TEXT,
    conclusion              TEXT,
    notes                   TEXT,
    safety_reviewed         INTEGER,
    reviewed_by             TEXT,
    review_date             DATE,
    created_by              TEXT,
    created_timestamp       DATETIME,
    last_modified_timestamp DATETIME
);
INSERT INTO laboratory_experiments VALUES (5101,'Chemistry Lab','PRJ-2023-07','Dr. Helen Kim','Synthesis of Nanoparticles','2023-06-01','2023-06-15','v2.1','Gold Salt Solution',50.0,'Gold Chloride',0.8,'Sodium Citrate',0.5,'INST-300','NanoSynth 3000',25.0,40.0,4.0,'/data/exp5101/results.csv','Uniform 20nm particles observed','Successful synthesis with high yield','All protocols followed','1','Dr. Kim','2023-06-16','lab_tech','2023-06-01 08:00','2023-06-16 17:30');
INSERT INTO laboratory_experiments VALUES (5102,'Biology Lab','PRJ-2023-08','Dr. Raul Ortega','CRISPR Gene Knockout','2023-07-10','2023-08-05','v1.0','Mouse Embryonic Stem Cells',200.0,'Cas9 Protein',2.0,'sgRNA',0.1,'INST-450','GeneEditor X',22.0,35.0,72.0,'/data/exp5102/seq_data.zip','Knockout efficiency 85%','Promising results for disease model','Minor off-target effects noted','1','Dr. Ortega','2023-08-06','lab_assist','2023-07-10 09:30','2023-08-06 11:45');
INSERT INTO laboratory_experiments VALUES (5103,'Physics Lab','PRJ-2023-09','Dr. Maya Patel','Superconductivity at High Pressure','2023-09-01','2023-09-30','v3.4','Barium Copper Oxide Powder',100.0,'Pressure Medium',0.0,'None',0.0,'INST-900','PressureCell 900',15.0,30.0,120.0,'/data/exp5103/measurements.xlsx','Critical temperature observed at 150K','Further cooling cycles required','Equipment calibrated before run','1','Dr. Patel','2023-10-01','lab_admin','2023-09-01 07:00','2023-10-01 14:20');

-- Public transport routes directory
CREATE TABLE public_transport_routes
(
    route_id                INTEGER PRIMARY KEY,
    agency_name             TEXT,
    route_number            TEXT,
    route_name              TEXT,
    transport_mode          TEXT,
    start_point             TEXT,
    end_point               TEXT,
    total_distance_km       REAL,
    average_travel_time_min INTEGER,
    service_start_time      TIME,
    service_end_time        TIME,
    weekday_frequency_min   INTEGER,
    saturday_frequency_min  INTEGER,
    sunday_frequency_min    INTEGER,
    fare_type               TEXT,
    base_fare_usd           REAL,
    peak_hour_surcharge_pct REAL,
    wheelchair_accessible   INTEGER,
    bike_rack_available    INTEGER,
    real_time_tracking      INTEGER,
    tracking_url            TEXT,
    last_updated_date       DATE,
    notes                   TEXT,
    created_by              TEXT,
    created_timestamp       DATETIME,
    last_modified_timestamp DATETIME
);
INSERT INTO public_transport_routes VALUES (6001,'Metro Transit','5A','Green Line','Bus','Downtown Station','Northside Plaza',12.5,35,'05:00','23:30',10,15,20,'Flat','2.50',10.0,1,1,1,'http://tracker.metro.gov/route/5A','2023-08-01','Main corridor through downtown','admin','2023-07-01 08:00','2023-08-02 09:15');
INSERT INTO public_transport_routes VALUES (6002,'Metro Transit','12B','Blue Express','Tram','East Terminal','West Terminal',8.0,20,'06:00','22:00',8,12,25,'Distance','1.80',5.0,1,0,1,'http://tracker.metro.gov/route/12B','2023-08-10','Express service with limited stops','admin','2023-07-05 09:30','2023-08-11 10:45');
INSERT INTO public_transport_routes VALUES (6003,'Metro Transit','X1','Night Owl','Bus','Central Hub','Airport',25.0,60,'20:00','04:00',30,45,60,'Flat','3.00',15.0,0,1,0,'','2023-07-20','Late night service for airport travelers','admin','2023-07-10 07:45','2023-07-21 08:00');

-- Climate observations from environmental stations
CREATE TABLE climate_observations
(
    observation_id          INTEGER PRIMARY KEY,
    station_id              TEXT,
    station_name            TEXT,
    observation_date        DATE,
    observation_time        TIME,
    temperature_celsius     REAL,
    dew_point_celsius       REAL,
    relative_humidity_percent REAL,
    wind_speed_m_s          REAL,
    wind_direction_degrees  INTEGER,
    precipitation_mm        REAL,
    solar_radiation_w_m2    REAL,
    atmospheric_pressure_hpa REAL,
    visibility_km           REAL,
    cloud_cover_percent     INTEGER,
    weather_condition       TEXT,
    soil_moisture_percent   REAL,
    leaf_wetness_percent    INTEGER,
    uv_index                REAL,
    air_quality_index       INTEGER,
    pollen_count            INTEGER,
    notes                   TEXT,
    recorded_by             TEXT,
    recorded_timestamp      DATETIME,
    verification_status     TEXT
);
INSERT INTO climate_observations VALUES (7101,'CL001','Riverbank Station','2023-09-01','08:00',16.2,8.5,55,3.2,180,0.0,500,1015,12.0,20,'Clear',30.5,10,3.2,42,15,'No precipitation','sensor_auto','2023-09-01 08:05','Verified');
INSERT INTO climate_observations VALUES (7102,'CL002','Mountain Peak','2023-09-01','14:30',9.5,2.0,78,5.5,270,0.0,350,890,5.0,80,'Partly Cloudy',22.0,5,5.0,30,20,'Light wind','sensor_auto','2023-09-01 14:35','Verified');
INSERT INTO climate_observations VALUES (7103,'CL003','Coastal Bay','2023-09-01','19:45',22.0,14.0,65,2.8,90,0.2,650,1012,8.0,40,'Humid',45.0,20,6.0,55,10,'Sea breeze observed','sensor_auto','2023-09-01 19:50','Pending');