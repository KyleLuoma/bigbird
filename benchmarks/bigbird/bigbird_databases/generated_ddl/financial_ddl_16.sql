-- Wildlife observation records
CREATE TABLE wildlife_observation
(
    observation_id      INTEGER PRIMARY KEY,
    observer_id         INTEGER NOT NULL,
    species_code        TEXT NOT NULL,
    count_observed      INTEGER NOT NULL,
    location_lat        REAL NOT NULL,
    location_long       REAL NOT NULL,
    observation_date    DATE NOT NULL,
    time_of_day         TEXT NOT NULL,
    weather_condition   TEXT NOT NULL,
    habitat_type        TEXT NOT NULL,
    behavior_notes      TEXT,
    equipment_used      TEXT,
    observation_method  TEXT,
    accuracy_score      REAL,
    verification_status TEXT,
    region_code         TEXT,
    altitude_meters     INTEGER,
    temperature_c       REAL,
    humidity_percent    REAL,
    wind_speed_kph      REAL,
    moon_phase          TEXT,
    conservation_status TEXT,
    observer_experience TEXT,
    data_source         TEXT,
    notes               TEXT
);

INSERT INTO wildlife_observation VALUES (1,101,'SP001',5,45.1234,-122.5678,'2024-03-15','Morning','Clear','Forest','Grazing','Binoculars','Visual',0.95,'Verified','RG01',250,15.2,68.0,5.0,'WaxingCrescent','LeastConcern','Expert','Field','Initial entry');
INSERT INTO wildlife_observation VALUES (2,102,'SP042',2,46.2345,-123.6789,'2024-03-16','Evening','Rain','Wetland','Breeding','CameraTrap','Infrared',0.88,'Pending','RG02',120,12.5,80.0,3.2,'FullMoon','Endangered','Intermediate','Remote','Second entry');
INSERT INTO wildlife_observation VALUES (3,103,'SP017',12,44.9876,-121.4567,'2024-03-17','Afternoon','Cloudy','Grassland','Flocking','Drone','Aerial',0.92,'Verified','RG03',90,20.0,55.0,7.1,'NewMoon','NearThreatened','Novice','Field','Third entry');

-- Renewable energy farm metrics
CREATE TABLE renewable_energy_farm_metrics
(
    farm_id                 INTEGER PRIMARY KEY,
    farm_name               TEXT NOT NULL,
    farm_type               TEXT NOT NULL,
    location_lat            REAL NOT NULL,
    location_long           REAL NOT NULL,
    commissioning_date     DATE NOT NULL,
    capacity_mw             REAL NOT NULL,
    current_output_mw       REAL NOT NULL,
    availability_percent    REAL NOT NULL,
    mean_time_between_failures REAL,
    total_energy_generated_mwh REAL,
    average_wind_speed_ms   REAL,
    average_solar_irradiance_wm2 REAL,
    operational_status      TEXT,
    primary_maintenance_vendor TEXT,
    last_maintenance_date   DATE,
    number_of_turbines      INTEGER,
    number_of_panels        INTEGER,
    grid_connection_point   TEXT,
    emissions_reduced_tons  REAL,
    water_usage_liters_per_day REAL,
    land_area_hectares      REAL,
    project_stage           TEXT,
    financing_source        TEXT,
    contact_email           TEXT,
    notes                   TEXT
);

INSERT INTO renewable_energy_farm_metrics VALUES (1,'SunRiseWind','Hybrid',35.6789,-120.1234,'2020-06-01',150.0,138.5,92.3,2500.0,1200000.0,7.5,800.0,'Operational','GreenTech','2025-02-10',45,180,'NodeA','3500.0','5000.0',2500.0,'Mature','Equity','ops@sunrisewind.com','Initial data');
INSERT INTO renewable_energy_farm_metrics VALUES (2,'SolarPeak','Solar',36.1234,-121.5678,'2022-09-15',80.0,75.2,94.0,3000.0,500000.0,NULL,950.0,'Operational','SunPower','2025-01-20',0,300,'NodeB','1800.0','2000.0',1200.0,'Expansion','Debt','contact@solarpeak.com','Second entry');
INSERT INTO renewable_energy_farm_metrics VALUES (3,'WindHarbor','Wind',34.9876,-119.8765,'2018-03-10',200.0,190.0,95.0,2100.0,2000000.0,8.2,NULL,'Operational','WindSolutions','2025-03-05',60,0,'NodeC','4200.0','4500.0',3000.0,'Mature','Grant','info@windharbor.com','Third entry');

-- Urban planning project phase
CREATE TABLE urban_planning_project_phase
(
    project_id            INTEGER PRIMARY KEY,
    project_name          TEXT NOT NULL,
    phase_number          INTEGER NOT NULL,
    phase_name            TEXT NOT NULL,
    start_date            DATE NOT NULL,
    projected_end_date    DATE NOT NULL,
    actual_end_date       DATE,
    budget_usd            REAL NOT NULL,
    spent_usd             REAL,
    percent_complete      REAL,
    lead_planner_id       INTEGER,
    stakeholder_agency    TEXT,
    zoning_changes        TEXT,
    infrastructure_type   TEXT,
    land_acquisition_acres REAL,
    permits_required      TEXT,
    environmental_impact TEXT,
    public_consultations  INTEGER,
    comments              TEXT,
    status                TEXT,
    risk_level            TEXT,
    funding_source        TEXT,
    community_benefits    TEXT,
    regulatory_approvals  TEXT,
    updated_by            TEXT,
    last_updated          DATE
);

INSERT INTO urban_planning_project_phase VALUES (1,'Riverfront Revitalization',1,'Conceptual Design','2023-01-15','2023-06-30',NULL,2000000.0,NULL,15.0,301,'CityPlanningDept','Z1','Parks','150.0','ZoningPermit','Low','3','Initial concept phase','Active','Low','MunicipalBond','Recreation','Pending','PlannerA','2023-01-20');
INSERT INTO urban_planning_project_phase VALUES (1,'Riverfront Revitalization',2,'Detailed Engineering','2023-07-01','2024-12-31',NULL,5000000.0,NULL,45.0,302,'CityPlanningDept','Z2','Transport','250.0','ConstructionPermit','Medium','5','Detailed plans underway','Active','Medium','FederalGrant','Transit','InProgress','PlannerB','2023-07-05');
INSERT INTO urban_planning_project_phase VALUES (1,'Riverfront Revitalization',3,'Construction','2025-01-01','2027-12-31',NULL,8000000.0,NULL,0.0,303,'CityPlanningDept','Z3','MixedUse','400.0','BuildingPermit','High','10','Construction to begin','Planned','High','PublicPrivate','Housing','NotStarted','PlannerC','2024-11-30');

-- Pharmaceutical batch quality
CREATE TABLE pharmaceutical_batch_quality
(
    batch_id                INTEGER PRIMARY KEY,
    product_code            TEXT NOT NULL,
    manufacture_date        DATE NOT NULL,
    expiry_date             DATE NOT NULL,
    lot_number              TEXT NOT NULL,
    quantity_units          INTEGER NOT NULL,
    potency_percent         REAL NOT NULL,
    impurity_ppm            REAL,
    dissolution_rate_percent REAL,
    tablet_weight_mg        REAL,
    coating_thickness_microns REAL,
    storage_temperature_c  REAL,
    humidity_percent        REAL,
    stability_test_passed   TEXT,
    microbiology_test_passed TEXT,
    packaging_integrity_passed TEXT,
    deviation_reported      TEXT,
    corrective_action_taken TEXT,
    quality_manager_id      INTEGER,
    approval_status         TEXT,
    notes                   TEXT,
    reviewed_by             TEXT,
    review_date             DATE,
    compliance_regime       TEXT,
    batch_type              TEXT,
    production_line_id      INTEGER,
    qc_lab_identifier       TEXT
);

INSERT INTO pharmaceutical_batch_quality VALUES (1001,'PRD001','2024-01-10','2026-01-10','LOTA123',100000,98.5,12.3,85.0,250.0,45.0,22.0,55.0,'Pass','Pass','Pass','None','None',401,'Approved','Initial release','DrSmith','2024-02-01','GMP','Standard',12,'LAB01');
INSERT INTO pharmaceutical_batch_quality VALUES (1002,'PRD002','2024-02-15','2026-02-15','LOTB456',200000,97.0,15.0,80.0,260.0,48.0,20.0,60.0,'Pass','Fail','Pass','Microbial contamination','Retest',402,'Pending','Investigate failure','DrJones','2024-03-05','GMP','Extended',15,'LAB02');
INSERT INTO pharmaceutical_batch_quality VALUES (1003,'PRD003','2024-03-20','2026-03-20','LOTC789',150000,99.2,5.0,90.0,245.0,42.0,24.0,50.0,'Pass','Pass','Pass','None','None',403,'Approved','All parameters within spec','DrLee','2024-04-10','GMP','Standard',14,'LAB03');

-- Space mission log
CREATE TABLE space_mission_log
(
    mission_id               INTEGER PRIMARY KEY,
    mission_name             TEXT NOT NULL,
    launch_date              DATE NOT NULL,
    launch_vehicle           TEXT NOT NULL,
    destination_body         TEXT NOT NULL,
    mission_duration_days    INTEGER NOT NULL,
    spacecraft_id            TEXT NOT NULL,
    crew_size                INTEGER,
    primary_objective        TEXT,
    secondary_objective       TEXT,
    status                   TEXT,
    last_contact_date        DATE,
    telemetry_packets_received INTEGER,
    anomaly_count            INTEGER,
    fuel_remaining_kg        REAL,
    power_generated_kw       REAL,
    communication_band       TEXT,
    ground_station_code      TEXT,
    mission_director_id      INTEGER,
    budget_usd               REAL,
    scientific_publications  INTEGER,
    payload_mass_kg          REAL,
    orbit_type               TEXT,
    radiation_exposure_msv   REAL,
    notes                    TEXT,
    approved_by              TEXT,
    approval_date            DATE
);

INSERT INTO space_mission_log VALUES (1,'LunaExplorer','2024-05-01','Falcon9','Moon',14,'SC001',0,'Geology Survey','Radiation Mapping','Completed','2024-05-15',8400,2,120.0,150.0,'XBand','GS001',501,250000000,12,500.0,'LunarOrbit',45.0,'Successful landing','ChiefScientist','2024-03-20');
INSERT INTO space_mission_log VALUES (2,'MarsTransit','2025-07-20','Starship','Mars',210,'SC002',4,'Atmospheric Analysis','Sample Return','InProgress','2025-09-10',15000,5,300.0,200.0,'KaBand','GS002',502,1500000000,5,1200.0,'Heliocentric',120.0,'Cruise phase','ProgramManager','2025-01-15');
INSERT INTO space_mission_log VALUES (3,'AsteroidProbe','2026-02-10','AtlasV','2021AB','180','SC003',0,'Surface Mapping','Mineral Composition','Planned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Publishing house catalog
CREATE TABLE publishing_house_catalog
(
    isbn                TEXT PRIMARY KEY,
    title               TEXT NOT NULL,
    subtitle            TEXT,
    author_first_name   TEXT NOT NULL,
    author_last_name    TEXT NOT NULL,
    publication_date    DATE NOT NULL,
    edition_number      INTEGER,
    language            TEXT,
    genre               TEXT,
    pages               INTEGER,
    format              TEXT,
    price_usd           REAL,
    supplier_code       TEXT,
    inventory_count     INTEGER,
    warehouse_location  TEXT,
    print_run           INTEGER,
    royalty_percent     REAL,
    printing_cost_usd   REAL,
    marketing_budget_usd REAL,
    sales_channel       TEXT,
    digital_version_available TEXT,
    isbn_13             TEXT,
    series_name         TEXT,
    volume_number       INTEGER,
    recommended_age     TEXT,
    cover_type          TEXT,
    dimensions_cm       TEXT,
    weight_grams        INTEGER,
    keywords            TEXT,
    description         TEXT,
    notes               TEXT,
    last_updated        DATE,
    updated_by          TEXT
);

INSERT INTO publishing_house_catalog VALUES ('9781234567890','Quantum Mechanics','Fundamentals','Alice','Newton','2023-08-01',1,'English','Science',350,'Hardcover',49.99,'SUP001',1200,'WH01',5000,10.0,5.0,2000.0,'Online','Yes','9781234567890123','Physics Series',1,'12+','DustJacket','21x14','800','Physics,Quantum','A comprehensive guide to quantum mechanics','First edition','2024-01-10','EditorA');
INSERT INTO publishing_house_catalog VALUES ('9780987654321','Garden Recipes','Seasonal Cooking','Bob','Gardner','2022-04-15',2,'English','Cooking',220,'Paperback',29.99,'SUP002',800,'WH02',3000,12.0,3.5,1500.0','Retail','No','9780987654321098','Culinary Series',4,'8+','Paperback','15x23','400','Cooking,Garden','Delicious recipes using garden produce','Second edition','2023-12-05','EditorB');
INSERT INTO publishing_house_catalog VALUES ('9781111111111','Star Chronicles','The Awakening','Cara','Stellar','2024-11-20',1,'English','Fantasy',480,'Hardcover',59.99','SUP003',500,'WH03',2000,15.0,6.0,2500.0','Online','Yes','9781111111111111','Star Saga',3,'14+','Hardcover','23x16','1200','Fantasy,Space','An epic saga of interstellar adventure','First edition','2024-07-01','EditorC');

-- Food supply chain trace
CREATE TABLE food_supply_chain_trace
(
    batch_id                 INTEGER PRIMARY KEY,
    product_name             TEXT NOT NULL,
    product_category         TEXT NOT NULL,
    origin_farm_id           INTEGER NOT NULL,
    harvest_date             DATE NOT NULL,
    processing_plant_id      INTEGER NOT NULL,
    processing_date          DATE NOT NULL,
    packaging_type           TEXT,
    package_id               TEXT,
    distribution_center_id   INTEGER,
    departure_date           DATE,
    arrival_date             DATE,
    retailer_id              INTEGER,
    shelf_life_days          INTEGER,
    storage_temperature_c   REAL,
    quality_grade            TEXT,
    pesticide_residue_ppm    REAL,
    organic_certified        TEXT,
    traceability_status     TEXT,
    transport_mode           TEXT,
    carrier_name             TEXT,
    carbon_footprint_kg      REAL,
    inspection_passed       TEXT,
    notes                    TEXT,
    last_updated             DATE,
    updated_by               TEXT,
    compliance_standard      TEXT,
    third_party_audit_id     INTEGER,
    recall_flag              TEXT,
    batch_weight_kg          REAL
);

INSERT INTO food_supply_chain_trace VALUES (5001,'Golden Apples','Fruit',301,'2024-08-01',401,'2024-08-05','Box','PKG001',501,'2024-08-06','2024-08-08',601,30,4.0,'A',0.02,'Yes','Complete','Truck','FastTrans','120.5','Yes','No issues','2024-09-01','SupervisorA','ISO22000',7001,'No',200.0);
INSERT INTO food_supply_chain_trace VALUES (5002,'Organic Carrots','Vegetable',302,'2024-07-20',402,'2024-07-23','Bag','PKG002',502,'2024-07-24','2024-07-26',602,45,2.5,'B',0.0,'Yes','Complete','Rail','EcoRail','95.0','Yes','All certifications valid','2024-08-15','SupervisorB','ISO22000',7002,'No',150.0);
INSERT INTO food_supply_chain_trace VALUES (5003,'Premium Beef','Meat',303,'2024-06-15',403,'2024-06-18','Vacuum','PKG003',503,'2024-06-19','2024-06-22',603,20,-1.0,'A',0.01,'No','Partial','Air','SkyFreight','210.3','No','Temperature excursion detected','2024-07-10','SupervisorC','ISO22000',7003,'Yes',500.0);

-- Digital game achievement
CREATE TABLE digital_game_achievement
(
    achievement_id          INTEGER PRIMARY KEY,
    game_id                 INTEGER NOT NULL,
    game_title              TEXT NOT NULL,
    achievement_name        TEXT NOT NULL,
    description             TEXT,
    points                  INTEGER NOT NULL,
    rarity_percent          REAL,
    unlock_condition        TEXT,
    unlock_date             DATE,
    player_id               INTEGER,
    platform                TEXT,
    version_introduced      TEXT,
    is_secret               TEXT,
    visible_to_friends      TEXT,
    reward_item_id          INTEGER,
    icon_url                TEXT,
    sound_effect_url        TEXT,
    created_by_admin_id     INTEGER,
    last_modified_date      DATE,
    status                  TEXT,
    category                TEXT,
    difficulty_level        TEXT,
    total_unlocked_count    INTEGER,
    average_time_to_unlock_seconds INTEGER,
    notes                   TEXT,
    last_verified_date      DATE,
    verified_by_admin_id    INTEGER,
    external_reference_id   TEXT,
    is_global               TEXT,
    display_order           INTEGER
);

INSERT INTO digital_game_achievement VALUES (101,1001,'Quest of Ages','First Blood','Defeat your first enemy',10,5.0,'EnemyDefeat','2024-01-15',2001,'PC','1.0','No','Yes',301,'url_icon1','url_sound1',101,'2024-01-20','Active','Combat','Easy',50000,3600,'Common achievement','2024-02-01',150,'REF001','Yes',1);
INSERT INTO digital_game_achievement VALUES (102,1001,'Quest of Ages','Master Collector','Collect all hidden artifacts',50,0.5,'AllArtifactsCollected','2024-02-10',2002,'PC','1.2','Yes','No',302,'url_icon2','url_sound2',101,'2024-02-15','Active','Exploration','Hard',250,72000,'Rare achievement','2024-03-01',151,'REF002','No',2);
INSERT INTO digital_game_achievement VALUES (103,1002,'Space Frontier','First Launch','Launch your first ship',5,10.0,'ShipLaunch','2024-03-05',3001,'Console','2.0','No','Yes',401,'url_icon3','url_sound3',102,'2024-03-10','Active','Progression','Medium',100000,1800,'Common achievement','2024-04-01',152,'REF003','Yes',1);

-- Climate change indicator
CREATE TABLE climate_change_indicator
(
    indicator_id            INTEGER PRIMARY KEY,
    indicator_name          TEXT NOT NULL,
    measurement_unit        TEXT NOT NULL,
    observation_date        DATE NOT NULL,
    region_code             TEXT NOT NULL,
    value_numeric           REAL NOT NULL,
    source_agency           TEXT,
    confidence_level_percent REAL,
    data_quality_flag       TEXT,
    notes                   TEXT,
    trend_direction         TEXT,
    baseline_year           INTEGER,
    comparison_to_baseline  REAL,
    projection_year         INTEGER,
    projected_value         REAL,
    mitigation_action       TEXT,
    policy_recommendation   TEXT,
    reported_by_user_id     INTEGER,
    verification_status     TEXT,
    last_updated            DATE,
    updated_by              TEXT,
    related_study_id        INTEGER,
    external_reference_url  TEXT,
    is_public               TEXT,
    data_format_version     TEXT,
    collection_method       TEXT,
    measurement_instrument  TEXT,
    error_margin_percent    REAL,
    verification_date       DATE,
    verifier_id             INTEGER
);

INSERT INTO climate_change_indicator VALUES (1,'Average Surface Temperature','Celsius','2024-01-01','REG01',15.3,'NOAA',96.0,'Good','Slight upward trend','Increasing',1980,0.2,2030,16.0,'Afforestation','Increase renewable targets',401,'Verified','2024-02-01','AnalystA',9001,'http://example.com/study1','Yes','v1','Satellite','Thermometer',0.5,'2024-02-10',501);
INSERT INTO climate_change_indicator VALUES (2,'Sea Level Rise','mm','2024-01-01','REG02',83.5,'NASA',93.0,'Good','Consistent rise','Increasing',1990,12.5,2030,95.0,'Coastal defenses','Update zoning laws',402,'Verified','2024-02-02','AnalystB',9002,'http://example.com/study2','Yes','v1','TideGauge','Altimeter',0.8,'2024-02-11',502);
INSERT INTO climate_change_indicator VALUES (3,'Atmospheric CO2','ppm','2024-01-01','GLOBAL',419.2,'EPA',98.0,'Excellent','Record high','Increasing',1950,120.0,2030,460.0,'Carbon capture','Implement carbon tax',403,'Verified','2024-02-03','AnalystC',9003,'http://example.com/study3','Yes','v1','Satellite','Spectrometer',0.3,'2024-02-12',503);

-- Museum artifact provenance
CREATE TABLE museum_artifact_provenance
(
    artifact_id               INTEGER PRIMARY KEY,
    artifact_name             TEXT NOT NULL,
    accession_number          TEXT NOT NULL,
    collection_date           DATE,
    acquisition_method        TEXT,
    previous_owner            TEXT,
    period_origin             TEXT,
    culture_origin            TEXT,
    material                  TEXT,
    dimensions_cm              TEXT,
    weight_grams              REAL,
    condition_status          TEXT,
    restoration_history       TEXT,
    current_location          TEXT,
    display_status            TEXT,
    insurance_value_usd       REAL,
    legal_copyright_status    TEXT,
    provenance_document_url   TEXT,
    last_exhibition_date      DATE,
    exhibition_title          TEXT,
    donor_name                TEXT,
    donor_type                TEXT,
    catalog_number            TEXT,
    digital_image_url         TEXT,
    3d_scan_url               TEXT,
    appraisal_date            DATE,
    appraiser_id              INTEGER,
    notes                     TEXT,
    last_updated              DATE,
    updated_by                TEXT,
    public_access_restriction TEXT,
    conservation_plan_id      INTEGER,
    related_artifact_id       INTEGER,
    registration_officer_id   INTEGER,
    registration_date         DATE
);

INSERT INTO museum_artifact_provenance VALUES (10001,'Bronze Statue','ACC001','1905-06-12','Donation','Lord Hastings','Classical','Greek','Bronze','30x15x20','2500','Excellent','None','Hall A','OnDisplay','1500000','PublicDomain','http://museum.org/docs/acc001','2022-05-20','Ancient Worlds','John Smith','Individual','CAT001','http://museum.org/images/acc001.jpg','http://museum.org/scans/acc001.obj','2020-01-15',801,'No notable notes','2024-01-10','CuratorA','None',601,0,701,'1905-06-12');
INSERT INTO museum_artifact_provenance VALUES (10002,'Silk Tapestry','ACC002','1920-09-05','Purchase','Royal Auction House','Renaissance','Italian','Silk','200x150','5000','Good','Restored 1995','Gallery B','InStorage','800000','Copyrighted','http://museum.org/docs/acc002','2021-11-11','Textiles of the Renaissance','Emma Lee','Corporate','CAT002','http://museum.org/images/acc002.jpg','http://museum.org/scans/acc002.obj','2015-03-20',802,'Minor fraying repaired','2024-01-11','CuratorB','Restricted',602,0,702,'1920-09-05');
INSERT INTO museum_artifact_provenance VALUES (10003,'Ancient Coin','ACC003','1888-02-20','Archaeological Dig','Excavation Team Alpha','Hellenistic','Macedonian','Silver','2x2','10','Fair','Cleaned 2000','Vault','OnDisplay','200000','PublicDomain','http://museum.org/docs/acc003','2023-07-15','Coins of Antiquity','National Museum','Institutional','CAT003','http://museum.org/images/acc003.jpg','http://museum.org/scans/acc003.obj','2000-06-30',803,'No restoration needed','2024-01-12','CuratorC','None',603,0,703,'1888-02-20');