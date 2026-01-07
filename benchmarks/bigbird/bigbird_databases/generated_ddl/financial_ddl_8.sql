-- Library catalog containing books and media items
CREATE TABLE library_catalog
(
    item_id               INTEGER      NOT NULL PRIMARY KEY,
    title                 TEXT         NOT NULL,
    subtitle              TEXT,
    creator_first_name    TEXT,
    creator_last_name     TEXT,
    publication_year      INTEGER,
    isbn_13               TEXT,
    issn                  TEXT,
    format_type           TEXT,
    language_code         TEXT,
    page_count            INTEGER,
    duration_minutes      INTEGER,
    genre_main            TEXT,
    genre_sub              TEXT,
    collection_name       TEXT,
    location_shelf        TEXT,
    location_aisle        TEXT,
    acquisition_date      DATE,
    publisher_name        TEXT,
    purchase_price        REAL,
    donor_name            TEXT,
    condition_rating      INTEGER,
    availability_status  TEXT,
    last_checkout_date    DATE,
    total_checkouts       INTEGER
);

INSERT INTO library_catalog VALUES (1,'Data Science Handbook','', 'Jake','Vogel','2019','9781491901410','', 'Book','EN',350,0,'Technology','Data Science','Main','S12','A3','2020-03-15', 'TechPress',45.99,'',5,'Available',NULL,12);
INSERT INTO library_catalog VALUES (2,'World Atlas','', 'Emily','Stone','2015','9780306406157','', 'Book','EN',500,0,'Reference','Geography','Reference','S5','A1','2018-07-22','GeoPub',60.00,'City Library',4,'CheckedOut','2023-12-01',45);
INSERT INTO library_catalog VALUES (3,'Ambient Sounds','', 'Various','', '2021','', '','Audio','EN',0,120,'Music','Ambient','Audio','R2','B4','2021-11-05','SoundWave',15.00,'',5,'Available','2022-05-20',0);


-- Museum artifact inventory
CREATE TABLE museum_artifact
(
    artifact_id                INTEGER      NOT NULL PRIMARY KEY,
    accession_number           TEXT         NOT NULL,
    title                      TEXT,
    artist_first_name          TEXT,
    artist_last_name           TEXT,
    creation_year              INTEGER,
    material_primary           TEXT,
    material_secondary         TEXT,
    dimensions_height_cm       REAL,
    dimensions_width_cm        REAL,
    dimensions_depth_cm        REAL,
    weight_kg                  REAL,
    provenance                 TEXT,
    acquisition_date           DATE,
    acquisition_method         TEXT,
    current_location_room      TEXT,
    display_status             TEXT,
    conservation_status        TEXT,
    insurance_value_usd        REAL,
    cataloged_by_staff_id      INTEGER,
    last_restoration_date      DATE,
    restoration_notes          TEXT,
    exhibition_history         TEXT,
    condition_rating           INTEGER,
    digital_record_url         TEXT,
    related_artifact_id        INTEGER,
    is_on_loan                 TEXT,
    loan_institution_name      TEXT,
    loan_end_date              DATE,
    notes                      TEXT
);

INSERT INTO museum_artifact VALUES (1,'A-2020-045','Bronze Statue','Leon','Gonzalez',1890,'Bronze','',120.5,45.0,30.0,85.0,'Donated by private collector','2020-04-10','Donation','Room1','OnDisplay','Stable',250000.00,12,'2021-09-15','Polished surface','Exhibit2021;Exhibit2022',5,'http://museum.org/records/1',NULL,'No','','','Initial condition good');
INSERT INTO museum_artifact VALUES (2,'A-2018-112','Ancient Vase','', '',450,'Clay','',40.0,40.0,55.0,12.5,'Excavated from site X','2018-06-22','Excavation','Room3','InStorage','Fragile',120000.00,15,'2020-02-01','Repaired crack','Exhibit2019',3,'http://museum.org/records/2',1,'Yes','National Museum','2023-12-31','Requires climate control');
INSERT INTO museum_artifact VALUES (3,'A-2022-078','Modern Painting','Ava','Lee',2021,'Canvas','Acrylic',80.0,60.0,0.0,5.0,'Purchased from gallery','2022-01-15','Purchase','Room2','OnDisplay','Excellent',85000.00,9,'2022-08-10','Varnish applied','Exhibit2022',5,'http://museum.org/records/3',NULL,'No','','','Featured in opening night');


-- Research project tracking
CREATE TABLE research_project
(
    project_id                INTEGER      NOT NULL PRIMARY KEY,
    project_code              TEXT         NOT NULL,
    title                     TEXT,
    principal_investigator    TEXT,
    department                TEXT,
    start_date                DATE,
    end_date                  DATE,
    funding_agency            TEXT,
    grant_number              TEXT,
    total_budget_usd          REAL,
    currency_code             TEXT,
    awarded_amount_usd        REAL,
    status                    TEXT,
    field_of_study            TEXT,
    methodology               TEXT,
    data_sharing_plan         TEXT,
    ethical_approval_id       TEXT,
    publication_status        TEXT,
    number_of_publications    INTEGER,
    patents_filed             INTEGER,
    collaborators_count       INTEGER,
    project_manager_id        INTEGER,
    last_report_date          DATE,
    milestone_1_date          DATE,
    milestone_2_date          DATE,
    milestone_3_date          DATE,
    risk_assessment_level     TEXT,
    sustainability_plan       TEXT,
    notes                     TEXT,
    archive_location          TEXT,
    data_retention_years      INTEGER,
    compliance_requirements  TEXT
);

INSERT INTO research_project VALUES (1,'RP-2021-001','AI for Healthcare','Dr Kim','Computer Science','2021-05-01','2024-04-30','National Science Fund','NSF-2021-778',800000,'USD',800000,'Active','Artificial Intelligence','Machine Learning','Open','IRB-2021-09','InProgress',2,0,4,12,'2023-11-15','2022-06-01','2023-01-15','2023-12-01','Medium','Green IT','Initial phase','/archives/rp1',5,'DataPrivacy');
INSERT INTO research_project VALUES (2,'RP-2020-014','Renewable Energy Storage','Dr Alvarez','Electrical Engineering','2020-01-15','2023-12-31','Energy Dept','ED-2020-332',1200000,'USD',1200000,'Completed','Energy','Battery Tech','Restricted','IRB-2020-03','Published',5,1,6,20,'2023-11-30','2020-07-01','2021-07-01','2022-07-01','Low','Recycle Materials','Final report submitted','/archives/rp14',7,'SafetyStandards');
INSERT INTO research_project VALUES (3,'RP-2022-089','Urban Mobility Study','Prof Lee','Urban Planning','2022-03-01','2025-02-28','City Council','CC-2022-101',500000,'USD',500000,'Active','Transportation','Surveys & Sensors','Closed','IRB-2022-12','Pending',0,0,2,8,'2023-11-20','2022-09-01','2023-03-01','2024-03-01','High','Public Transit Integration','Data collection ongoing','/archives/rp89',3,'PrivacyPolicy');


-- Satellite image metadata repository
CREATE TABLE satellite_image_metadata
(
    image_id                     INTEGER      NOT NULL PRIMARY KEY,
    satellite_name               TEXT,
    sensor_type                  TEXT,
    capture_date                 DATE,
    capture_time_utc             TEXT,
    orbit_number                 INTEGER,
    pass_direction               TEXT,
    latitude_center              REAL,
    longitude_center             REAL,
    pixel_resolution_m           REAL,
    swath_width_km               REAL,
    cloud_coverage_percent       REAL,
    sun_elevation_deg            REAL,
    sun_azimuth_deg              REAL,
    off_nadir_angle_deg          REAL,
    processing_level             TEXT,
    file_format                  TEXT,
    file_size_mb                 REAL,
    storage_path                 TEXT,
    geographic_coverage          TEXT,
    acquisition_mode             TEXT,
    radiometric_calibration      TEXT,
    geometric_correction_applied TEXT,
    bands_available              TEXT,
    spectral_resolution_nm       REAL,
    reference_ground_control_pts TEXT,
    quality_flag                 TEXT,
    notes                        TEXT,
    phase                        TEXT,
    product_type                 TEXT,
    vendor                       TEXT
);

INSERT INTO satellite_image_metadata VALUES (1,'Landsat8','OLI','2023-04-12','13:45:20',3221,'Ascending',34.056,-118.245,30.0,185,12.5,45.2,180.0,0.0,'Level1','GeoTIFF',250.5,'/data/landsat8/20230412_134520.tif','USA_CA','Standard','Calibrated','Applied','B1,B2,B3,B4,B5','30.0','GCP001;GCP002','Good','Clear summer scene','Operational','SurfaceReflectance','USGS');
INSERT INTO satellite_image_metadata VALUES (2,'Sentinel2','MSI','2022-11-08','02:15:05',1045,'Descending',48.856,2.352,10.0,290,5.0,62.5,150.0,0.0,'Level2A','JPEG2000',150.2,'/data/sentinel2/20221108_021505.jp2','FRA_PAR','Standard','Calibrated','Applied','B2,B3,B4,B8','20.0','GCP010;GCP011','Excellent','Urban area','Operational','SurfaceReflectance','ESA');
INSERT INTO satellite_image_metadata VALUES (3,'WorldView3','PAN','2021-07-22','19:30:45',5678,'Ascending',-33.8688,151.2093,0.31,15,0.2,58.0,220.0,0.0,'Level1B','GeoTIFF',75.3,'/data/worldview3/20210722_193045.tif','AUS_SYD','HighRes','Calibrated','Applied','PAN','0.31','GCP200;GCP201','VeryGood','Coastal mapping','Operational','Panchromatic','Maxar');


-- Biodiversity survey records
CREATE TABLE biodiversity_survey
(
    survey_id                     INTEGER      NOT NULL PRIMARY KEY,
    survey_code                   TEXT,
    region_name                   TEXT,
    site_id                       TEXT,
    survey_date_start             DATE,
    survey_date_end               DATE,
    habitat_type                  TEXT,
    primary_taxa                  TEXT,
    observer_name                 TEXT,
    observer_affiliation          TEXT,
    method_used                   TEXT,
    total_species_observed        INTEGER,
    endemic_species_count        INTEGER,
    invasive_species_count       INTEGER,
    new_species_discovered        INTEGER,
    sampling_effort_hours         REAL,
    area_surveyed_hectares        REAL,
    weather_conditions            TEXT,
    temperature_celsius           REAL,
    precipitation_mm              REAL,
    wind_speed_kph                REAL,
    data_quality_score            INTEGER,
    gps_accuracy_m                REAL,
    notes                         TEXT,
    uploaded_by_user_id           INTEGER,
    upload_timestamp              DATE,
    validation_status             TEXT,
    reviewer_name                 TEXT,
    review_date                   DATE,
    dataset_version               TEXT,
    license_type                  TEXT,
    contact_email                 TEXT,
    funding_source                TEXT,
    project_acronym               TEXT,
    related_publication_doi       TEXT
);

INSERT INTO biodiversity_survey VALUES (1,'BS-2023-NA','North America','S001','2023-05-01','2023-05-15','Temperate Forest','Birds','Alice Green','NatGeo','PointCount',120,30,5,2,45.0,12.5,'Sunny',22.5,5.0,12.0,85,3,'No major issues',101,'2023-05-20','Validated','Dr Smith','2023-05-22','v1.0','CC-BY','alice@example.com','GovGrant','BIRD2023','10.1234/abcd.efgh');
INSERT INTO biodiversity_survey VALUES (2,'BS-2022-AS','Southeast Asia','S045','2022-09-10','2022-09-25','Mangrove','Fish','Budi Santoso','UNEP','Netting',85,10,2,0,60.0,8.0,'Rainy',28.0,200.0,8.5,78,5,'Heavy rain impacted',102,'2022-10-01','Pending','Dr Lee','2022-10-05','v0.9','CC0','budi@example.org','WorldBank','MANG2022','10.5678/wxyz.ijkl');
INSERT INTO biodiversity_survey VALUES (3,'BS-2021-EU','Europe','S078','2021-04-05','2021-04-12','Alpine Meadow','Plants','Claudia Novak','EUResearch','Quadrat',200,40,1,5,30.0,5.5,'Cloudy',15.0,0.0,5.0,92,2,'Excellent sampling',103,'2021-04-20','Validated','Dr Muller','2021-04-22','v1.1','CC-BY-SA','claudia@example.eu','EUProgram','ALP2021','10.9012/mnop.qrst');


-- Agricultural yield reports
CREATE TABLE agricultural_yield_report
(
    report_id                     INTEGER      NOT NULL PRIMARY KEY,
    report_year                   INTEGER,
    region_code                   TEXT,
    crop_type                     TEXT,
    variety_name                  TEXT,
    planting_date                 DATE,
    harvest_date                  DATE,
    area_hectares                 REAL,
    total_produced_metric_tons    REAL,
    average_yield_per_hectare     REAL,
    irrigation_method             TEXT,
    fertilizer_type               TEXT,
    pesticide_used                TEXT,
    seed_rate_kg_per_hectare      REAL,
    labor_hours_per_hectare       REAL,
    mechanization_level           TEXT,
    harvest_method                TEXT,
    market_price_per_ton_usd      REAL,
    total_revenue_usd             REAL,
    carbon_footprint_kg_co2       REAL,
    water_usage_cubic_meters      REAL,
    soil_ph                       REAL,
    organic_matter_percent        REAL,
    weather_conditions            TEXT,
    avg_temperature_celsius       REAL,
    total_rainfall_mm             REAL,
    notes                         TEXT,
    reported_by_user_id           INTEGER,
    report_timestamp              DATE,
    verification_status           TEXT,
    verifier_name                 TEXT,
    verification_date             DATE,
    data_source                   TEXT,
    funding_agency                TEXT,
    program_acronym               TEXT
);

INSERT INTO agricultural_yield_report VALUES (1,2023,'R01','Wheat','SpringGold','2023-03-15','2023-09-10',150.0,450.0,3.0,'Sprinkler','NPK','None',120.0,25.0,'High','Combine','210.0',94500.0,1500.0,1800.0,6.5,2.1,'Sunny','22.5',300.0,'Good harvest',201,'2023-09-15','Verified','John Doe','2023-09-20','Satellite','AgriDept','AGRI2023');
INSERT INTO agricultural_yield_report VALUES (2,2022,'R05','Corn','SweetPeak','2022-04-20','2022-10-05',200.0,600.0,3.0,'Drip','Urea','HerbicideX',130.0,30.0,'Medium','Harvester','180.0',108000.0,1300.0,2100.0,6.2,1.9,'Rainy','20.0',400.0,'Yield below target due to pests',202,'2022-10-10','Pending','Jane Smith','2022-10-15','Field Survey','AgriDept','AGRI2022');
INSERT INTO agricultural_yield_report VALUES (3,2021,'R12','Rice','AquaBlue','2021-05-01','2021-11-20',120.0,540.0,4.5,'Flooded','Ammonium','InsecticideY',115.0,28.0,'Low','Manual','250.0',135000.0,1600.0,2500.0,5.8,2.5,'Humid','24.0',350.0,'Excellent quality rice',203,'2021-11-25','Verified','Ahmed Khan','2021-12-01','Remote Sensing','AgriDept','AGRI2021');


-- Traffic incident log
CREATE TABLE traffic_incident_log
(
    incident_id                INTEGER      NOT NULL PRIMARY KEY,
    incident_code              TEXT,
    report_date                DATE,
    report_time                TEXT,
    location_latitude           REAL,
    location_longitude          REAL,
    city_name                  TEXT,
    road_type                  TEXT,
    severity_level             TEXT,
    incident_type              TEXT,
    vehicles_involved          INTEGER,
    casualties                 INTEGER,
    injuries                   INTEGER,
    weather_condition          TEXT,
    road_surface_condition     TEXT,
    visibility_meters          REAL,
    traffic_flow_rate          INTEGER,
    speed_limit_kph            INTEGER,
    average_speed_kph          REAL,
    police_report_number       TEXT,
    responding_officer_id      INTEGER,
    response_time_minutes      REAL,
    clearance_time_minutes     REAL,
    description                TEXT,
    photo_evidence_path        TEXT,
    created_by_user_id         INTEGER,
    creation_timestamp         DATE,
    status                     TEXT,
    closed_by_user_id          INTEGER,
    closed_timestamp           DATE,
    follow_up_actions          TEXT,
    insurance_claim_filed      TEXT,
    claim_number               TEXT,
    legal_proceedings          TEXT,
    notes                      TEXT
);

INSERT INTO traffic_incident_log VALUES (1,'TI-2023-045','2023-07-12','14:30:00',40.7128,-74.0060','NewYork','Urban','High','Collision',2,1,2,'Rain','Wet',200.0,1800,50,45.0,'PR-5678',301,3.5,45.0,'Two-car rear-end collision at intersection','/photos/ti045.jpg',401,'2023-07-12','Closed',402,'2023-07-15','Vehicle repaired','Yes','CLAIM-2023-001','Pending','Follow-up completed');
INSERT INTO traffic_incident_log VALUES (2,'TI-2022-113','2022-11-03','08:15:00',34.0522,-118.2437','LosAngeles','Highway','Medium','LaneChange',3,0,0,'Clear','Dry',500.0,2500,65,60.0,'PR-7834',302,2.0,30.0,'Three-vehicle side-swipe on highway','/photos/ti113.jpg',402,'2022-11-03','Open',NULL,NULL,'Awaiting investigation','No','',NULL,'','Initial report filed');
INSERT INTO traffic_incident_log VALUES (3,'TI-2021-089','2021-03-22','22:45:00',51.5074,-0.1278','London','Urban','Low','Pedestrian',1,0,1,'Fog','Wet',50.0,1200,30,25.0,'PR-9901',303,5.0,60.0,'Pedestrian slipped on wet pavement','/photos/ti089.jpg',403,'2021-03-22','Closed',404,'2021-04-01','Safety signage installed','No','',NULL,'','Issue resolved');


-- Public transport pass records
CREATE TABLE public_transport_pass
(
    pass_id                     INTEGER      NOT NULL PRIMARY KEY,
    pass_number                 TEXT,
    holder_name                 TEXT,
    holder_gender               TEXT,
    holder_birth_date           DATE,
    issue_date                  DATE,
    expiry_date                 DATE,
    pass_type                   TEXT,
    fare_class                  TEXT,
    balance_amount_usd          REAL,
    last_topup_date             DATE,
    last_topup_amount_usd       REAL,
    zones_allowed               TEXT,
    restrictions                TEXT,
    is_active                   TEXT,
    issued_by_station_id        INTEGER,
    registered_email            TEXT,
    mobile_number               TEXT,
    emergency_contact_name      TEXT,
    emergency_contact_phone     TEXT,
    photo_id_path               TEXT,
    notes                       TEXT,
    created_by_user_id          INTEGER,
    creation_timestamp          DATE,
    last_modified_user_id       INTEGER,
    last_modified_timestamp     DATE,
    deactivation_reason         TEXT,
    deactivation_date           DATE,
    renewal_count               INTEGER,
    loyalty_points              INTEGER,
    last_used_date              DATE,
    last_used_station_id        INTEGER,
    total_rides_taken           INTEGER,
    max_consecutive_rides       INTEGER,
    discount_eligibility        TEXT,
    special_offer_applied       TEXT,
    verification_status         TEXT,
    verifier_name               TEXT,
    verification_date           DATE
);

INSERT INTO public_transport_pass VALUES (1,'PTP-20230001','Emma Brown','F','1990-04-12','2023-01-01','2024-12-31','Monthly','Standard',25.00,'2023-06-15',25.00,'1-3','None','Yes',101,'emma.brown@example.com','5551234567','John Brown','5559876543','/photos/ptp1.jpg','',201,'2023-01-01',202,'2023-06-20','',NULL,1,150,'2023-07-10',45,120,3,'Yes','Yes','Verified','Alice','2023-07-12');
INSERT INTO public_transport_pass VALUES (2,'PTP-20221123','Liam Smith','M','1985-09-30','2022-11-23','2023-11-22','Annual','Student',0.00,'2022-11-23',0.00,'All','Student Discount','Yes',102,'liam.smith@example.com','5552345678','Anna Smith','5558765432','/photos/ptp2.jpg','',202,'2022-11-23',203,'2023-04-01','Expired','2023-11-22',1,200,'2023-03-15',78,250,5,'Yes','No','Verified','Bob','2023-04-02');
INSERT INTO public_transport_pass VALUES (3,'PTP-20230045','Olivia Garcia','F','1995-02-18','2023-03-05','2025-03-04','Weekly','Senior',5.00,'2023-05-01',5.00,'2-4','Senior Discount','Yes',103,'olivia.garcia@example.com','5553456789','Carlos Garcia','5557654321','/photos/ptp3.jpg','',203,'2023-03-05',204,'2023-05-02','',NULL,3,80,'2023-06-20',12,90,2,'Yes','Yes','Verified','Clara','2023-06-22');


-- Construction permit database
CREATE TABLE construction_permit
(
    permit_id                  INTEGER      NOT NULL PRIMARY KEY,
    permit_number              TEXT,
    project_name               TEXT,
    applicant_name             TEXT,
    applicant_type             TEXT,
    project_address            TEXT,
    city                       TEXT,
    zip_code                   TEXT,
    permit_issue_date          DATE,
    permit_expiry_date         DATE,
    permit_type                TEXT,
    construction_type          TEXT,
    total_floor_area_sqm       REAL,
    estimated_cost_usd         REAL,
    zoning_district            TEXT,
    land_use_category           TEXT,
    environmental_review_status TEXT,
    fire_safety_approval       TEXT,
    structural_engineering_report TEXT,
    electrical_plan_approval   TEXT,
    plumbing_plan_approval     TEXT,
    accessibility_compliance   TEXT,
    public_hearing_date        DATE,
    hearing_outcome            TEXT,
    contractor_company_name    TEXT,
    contractor_license_number  TEXT,
    insurance_provider         TEXT,
    insurance_policy_number    TEXT,
    issued_by_officer_id       INTEGER,
    inspection_schedule_date   DATE,
    last_inspection_date       DATE,
    inspection_status          TEXT,
    violations_reported        INTEGER,
    compliance_deadline        DATE,
    fees_paid_usd              REAL,
    fee_due_date               DATE,
    notes                      TEXT,
    created_by_user_id         INTEGER,
    creation_timestamp         DATE,
    last_modified_user_id      INTEGER,
    last_modified_timestamp    DATE,
    status                     TEXT,
    closure_date               DATE,
    closure_reason             TEXT,
    final_report_path          TEXT
);

INSERT INTO construction_permit VALUES (1,'CP-2023-001','Riverfront Tower','Metro Developers','Corporation','123 River St','Metropolis','12345','2023-02-10','2025-02-09','Building','HighRise',35000.0,15000000.0,'R2','Commercial','Approved','Approved','/docs/struct_riverfront.pdf','/docs/electrical_riverfront.pdf','/docs/plumbing_riverfront.pdf','Compliant','2023-04-15','Approved','Metro Constructions','LIC-987654','SafeGuard Insurance','POL-2023-555',301,'2023-06-01','2023-05-20','Passed',0,'2023-12-31',25000.0,'2023-07-01','All inspections passed','201','2023-02-10','202','2023-06-01','Closed','2025-01-31','Project Completed','/reports/riverfront_final.pdf');
INSERT INTO construction_permit VALUES (2,'CP-2022-045','Eastside Mall','Urban Retail Group','Corporation','789 East Ave','Gotham','67890','2022-05-20','2026-05-19','Expansion','Retail',15000.0,8000000.0,'E1','Retail','Pending','Pending','/docs/struct_eastmall.pdf','/docs/electrical_eastmall.pdf','/docs/plumbing_eastmall.pdf','NonCompliant','2022-09-10','Pending','Gotham Builders','LIC-123456','CityRisk Insurance','POL-2022-777',302,'2022-11-15','2022-11-01','Pending',2,'2023-11-30',15000.0,'2022-12-01','Pending environmental review','202','2022-05-20','203','2022-11-01','Open',NULL,NULL,'');
INSERT INTO construction_permit VALUES (3,'CP-2021-078','Sunnyvale School Renovation','Sunnyvale Education Board','Government','45 School Rd','Sunnyvale','54321','2021-03-01','2024-02-28','Renovation','Educational',5000.0,2500000.0,'S3','Public','Approved','Approved','/docs/struct_sunnyvale.pdf','/docs/electrical_sunnyvale.pdf','/docs/plumbing_sunnyvale.pdf','Compliant','2021-06-10','Approved','Sunnyvale Contractors','LIC-555555','EduProtect Insurance','POL-2021-333',303,'2021-08-15','2021-08-01','Passed',0,'2023-08-31',12000.0,'2021-09-01','All permits in order','301','2021-03-01','302','2021-08-01','Closed','2024-02-20','Project Completed','/reports/sunnyvale_final.pdf');


-- Cultural event schedule
CREATE TABLE cultural_event_schedule
(
    event_id                    INTEGER      NOT NULL PRIMARY KEY,
    event_code                  TEXT,
    event_name                  TEXT,
    event_type                  TEXT,
    organizer_name              TEXT,
    start_date                  DATE,
    end_date                    DATE,
    start_time                  TEXT,
    end_time                    TEXT,
    venue_name                  TEXT,
    venue_address               TEXT,
    city                        TEXT,
    zip_code                    TEXT,
    expected_attendance         INTEGER,
    ticket_price_usd            REAL,
    ticket_currency             TEXT,
    age_restriction             TEXT,
    language_of_performance     TEXT,
    subtitle                    TEXT,
    description                 TEXT,
    sponsor_list                TEXT,
    media_partner               TEXT,
    live_stream_url             TEXT,
    ticket_sales_start_date     DATE,
    ticket_sales_end_date       DATE,
    registration_required       TEXT,
    registration_deadline       DATE,
    registration_form_url       TEXT,
    accessibility_features      TEXT,
    parking_available           TEXT,
    nearby_public_transport     TEXT,
    food_and_beverage_options  TEXT,
    merchandise_available       TEXT,
    health_and_safety_plan      TEXT,
    insurance_provider          TEXT,
    insurance_policy_number     TEXT,
    created_by_user_id          INTEGER,
    creation_timestamp          DATE,
    last_modified_user_id       INTEGER,
    last_modified_timestamp     DATE,
    status                      TEXT,
    cancellation_date           DATE,
    cancellation_reason         TEXT,
    final_report_path           TEXT,
    notes                       TEXT
);

INSERT INTO cultural_event_schedule VALUES (1,'CE-2023-001','Spring Music Festival','Concert','Harmony Events','2023-05-20','2023-05-22','12:00','22:00','Riverfront Park','100 River Rd','Metropolis','12345',5000,45.00,'USD','All Ages','English','Opening Day','A three‑day celebration of local bands', 'Acme Corp;Beta Ltd','MusicTV','http://streaming.example.com/ce001','2023-03-01','2023-05-15','Yes','2023-05-19','http://register.example.com/ce001','Wheelchair Access;Sign Language Interpreters','Yes','Metro Station Line A','Food Trucks;Beer Garden','T‑shirts;Posters','COVID‑19 Protocol','SecureCover','POL-2023-009',401,'2023-01-15',402,'2023-04-20','Scheduled',NULL,NULL,NULL,'');
INSERT INTO cultural_event_schedule VALUES (2,'CE-2022-045','International Film Showcase','Film Festival','CineWorld','2022-09-10','2022-09-14','09:00','23:00','Grand Cinema Hall','200 Cinema St','Gotham','67890',2000,12.00,'USD','18+','Multiple','Opening Night','Premiere of award‑winning international films','Global Studios;FilmBank','CinemaNow','http://streaming.example.com/ce045','2022-06-01','2022-09-09','Yes','2022-09-13','http://register.example.com/ce045','Subtitles;Audio Descriptions','No','City Bus 12;Metro Line B','Concessions;Bar','Posters;DVDs','Fire Safety Plan','EventInsure','POL-2022-018',403,'2022-02-01',404,'2022-07-20','Completed','2022-09-15','Low Attendance','/reports/ce045_final.pdf','');
INSERT INTO cultural_event_schedule VALUES (3,'CE-2021-078','Heritage Art Exhibition','Exhibition','ArtLegacy','2021-04-05','2021-04-15','10:00','18:00','City Art Museum','350 Museum Way','Sunnyvale','54321',1200,20.00,'USD','All Ages','English','Spring Collection','Display of historic artworks from regional museums','Heritage Fund;CultureTrust','ArtChannel','http://streaming.example.com/ce078','2020-12-01','2021-04-01','No',NULL,NULL,'','Wheelchair Ramp;Audio Guides','Yes','Metro Station Line C','Café;Gift Shop','Catalogues','Security Plan','MuseumInsure','POL-2021-055',405,'2020-11-01',406,'2021-03-20','Completed','2021-04-20','Weather Delay','/reports/ce078_final.pdf','' );
