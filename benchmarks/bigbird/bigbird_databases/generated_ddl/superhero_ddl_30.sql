-- Interstellar portal registry storing details about dimensional gateways
CREATE TABLE interstellar_portal_registry
(
    portal_id                 INTEGER PRIMARY KEY,
    portal_name               TEXT,
    origin_star_system        TEXT,
    destination_star_system   TEXT,
    activation_date           DATE,
    deactivation_date         DATE,
    stability_score           INTEGER,
    energy_requirement_mw    INTEGER,
    portal_type               TEXT,
    dimension                 TEXT,
    control_center_id         INTEGER,
    security_level            INTEGER,
    created_by                TEXT,
    last_maintenance_date    DATE,
    max_passenger_capacity    INTEGER,
    current_usage             INTEGER,
    is_active                 BOOLEAN,
    notes                     TEXT,
    coordinates_x             REAL,
    coordinates_y             REAL,
    coordinates_z             REAL
);

INSERT INTO interstellar_portal_registry VALUES (1,'AuroraGate','AlphaCentauri','Betelgeuse','2125-03-12','2150-01-01',85,1200,'Stable','4D',101,5,'DrZara','2130-07-15',5000,1200,TRUE,'Primary gateway for trade',12.34,45.67,89.10);
INSERT INTO interstellar_portal_registry VALUES (2,'NebulaPass','Sirius','Vega','2130-06-01','NULL',78,950,'Experimental','5D',102,4,'DrKane','2135-02-20',3000,800,FALSE,'Testing new stabilization algorithm',22.22,33.33,44.44);
INSERT INTO interstellar_portal_registry VALUES (3,'QuasarLink','Proxima','Rigel','2140-11-23','NULL',92,1500,'Stable','4D',103,5,'DrMira','2145-12-05',8000,2500,TRUE,'High traffic corridor',55.55,66.66,77.77);

-- Habitat information for mythic beasts across exoplanets
CREATE TABLE mythic_beast_habitat
(
    habitat_id                INTEGER PRIMARY KEY,
    planet_name               TEXT,
    biome_type                TEXT,
    average_temperature_c    INTEGER,
    dominant_flora            TEXT,
    dominant_fauna            TEXT,
    protected_status          TEXT,
    discovery_year            INTEGER,
    lead_scientist            TEXT,
    research_station_id       INTEGER,
    area_sq_km                REAL,
    altitude_m                INTEGER,
    humidity_percent          INTEGER,
    radiation_level           REAL,
    terrain_complexity        TEXT,
    water_source_presence     BOOLEAN,
    population_estimate       BIGINT,
    last_survey_date          DATE,
    notes                     TEXT,
    gps_latitude              REAL,
    gps_longitude             REAL
);

INSERT INTO mythic_beast_habitat VALUES (1,'XenonPrime','Crystal Forest', -15,'GlowVines','ShardBeasts','Protected',2245,'DrLuna',201,1250.5,3400,45,0.12,'Rugged',TRUE,2500,'2260-04-12','Habitat supports flight',12.3456,98.7654);
INSERT INTO mythic_beast_habitat VALUES (2,'Arkaeus','Lava Plains', 350,'FireMoss','FlameRocs','Endangered',2210,'DrOrion',202,800.0,1200,70,5.4,'Volcanic',FALSE,780,'2255-09-30','High heat tolerance required',23.4567,87.6543);
INSERT INTO mythic_beast_habitat VALUES (3,'Nebulon','Floating Islands', 5,'Aeroflora','WindSerpents','Unprotected',2190,'DrEris',203,450.2,500,30,0.05,'Aerial',TRUE,1200,'2250-01-20','Frequent storms',34.5678,76.5432);

-- Exhibit catalog for arcane artifacts displayed in museums
CREATE TABLE arcane_artifact_exhibit
(
    exhibit_id                INTEGER PRIMARY KEY,
    artifact_name             TEXT,
    exhibit_title             TEXT,
    museum_name               TEXT,
    city                      TEXT,
    country                   TEXT,
    start_date                DATE,
    end_date                  DATE,
    curator_name              TEXT,
    exhibit_theme             TEXT,
    artifact_origin_period    TEXT,
    material_composition      TEXT,
    security_rating           INTEGER,
    insurance_value_usd       BIGINT,
    visitor_capacity_per_day  INTEGER,
    average_daily_visitors    INTEGER,
    interactive_elements     BOOLEAN,
    lighting_conditions       TEXT,
    temperature_control_c     INTEGER,
    humidity_control_percent INTEGER,
    audio_guide_available    BOOLEAN,
    website_url               TEXT
);

INSERT INTO arcane_artifact_exhibit VALUES (1,'Orb of Eternity','Timeless Relics','Grand Museum of History','NovaCity','Andromeda','2265-05-01','2265-12-31','DrVale','Chronology','Obsidian','9',2500000,5000,4200,TRUE,'Low',22,45,TRUE,'http://grandmuseum.example.com/eternity');
INSERT INTO arcane_artifact_exhibit VALUES (2,'Blade of Dawn','Weapons of Light','Celestial Gallery','StarPort','Orion','2270-03-15','2270-09-15','DrMara','Mythic Arms','Starlight Alloy','8',1800000,3000,2600,FALSE,'Medium',20,50,FALSE,'http://celestialgallery.example.com/dawnblade');
INSERT INTO arcane_artifact_exhibit VALUES (3,'Chrono Sphere','Artifacts of Time','Universal Archive','Chronopolis','Vega','2272-01-10','2272-07-10','DrZen','Temporal Devices','ChronoCrystal','10',3200000,6000,5800,TRUE,'Dim',19,40,TRUE,'http://universalarchive.example.com/chronosphere');

-- Agreements governing quantum energy trade between interstellar entities
CREATE TABLE quantum_energy_trade_agreement
(
    agreement_id                 INTEGER PRIMARY KEY,
    agreement_name               TEXT,
    signing_date                 DATE,
    expiration_date              DATE,
    parties_involved             TEXT,
    governing_body               TEXT,
    total_energy_gj              BIGINT,
    price_per_gj_usd             INTEGER,
    contract_status              TEXT,
    dispute_resolution_mechanism TEXT,
    confidentiality_level        TEXT,
    renewable_percentage         INTEGER,
    carbon_offset_required       BOOLEAN,
    compliance_audit_date        DATE,
    primary_contact              TEXT,
    secondary_contact            TEXT,
    amendment_number             INTEGER,
    renewable_energy_certificate_id TEXT,
    regulatory_filing_number    TEXT,
    notes                        TEXT
);

INSERT INTO quantum_energy_trade_agreement VALUES (1,'Quantum Nexus Pact','2260-06-01','2290-06-01','Alpha Consortium;Beta Syndicate','Galactic Energy Council',5000000,150,'Active','Mediation','High',80,TRUE,'2265-01-15','DrAlara','DrBorin',2,'CERT12345','FILING678','Long term strategic partnership');
INSERT INTO quantum_energy_trade_agreement VALUES (2,'Starlight Energy Accord','2265-09-12','2285-09-12','Gamma Alliance;Delta Union','Interstellar Trade Board',3000000,200,'Pending','Arbitration','Medium',60,FALSE,'NULL','DrCleo','DrDax',0,'NULL','FILING910','Negotiations ongoing');
INSERT INTO quantum_energy_trade_agreement VALUES (3,'Nebula Power Treaty','2270-11-20','2300-11-20','Epsilon Federation;Zeta Coalition','Universal Energy Authority',7500000,120,'Active','Litigation','90',TRUE,'2273-04-05','DrEve','DrFynn',1,'CERT54321','FILING321','Includes renewable bonus clauses');

-- Operational data for major galactic trade hubs
CREATE TABLE galactic_trade_hub_operations
(
    hub_id                       INTEGER PRIMARY KEY,
    hub_name                     TEXT,
    sector                       TEXT,
    orbital_position             TEXT,
    launch_capacity_per_day      INTEGER,
    docked_ships_count           INTEGER,
    cargo_volume_m3              BIGINT,
    staff_count                  INTEGER,
    security_protocol_version   TEXT,
    communication_frequency_mhz  REAL,
    power_supply_mw              REAL,
    backup_generator_capacity_mw REAL,
    environmental_control_level TEXT,
    waste_recycling_rate_percent INTEGER,
    emergency_drill_schedule    TEXT,
    last_inspection_date         DATE,
    budget_usd                   BIGINT,
    revenue_usd                  BIGINT,
    net_profit_usd               BIGINT,
    operational_status           TEXT,
    notes                        TEXT
);

INSERT INTO galactic_trade_hub_operations VALUES (1,'Orion Hub','Sector Alpha','Orbit 17B',1200,45,8500000,350,'v3.2',145.5,2500.0,800.0,'High',92,'Quarterly','2269-12-20',1200000000,1850000000,650000000,'Operational','Primary hub for core systems');
INSERT INTO galactic_trade_hub_operations VALUES (2,'Nova Dock','Sector Beta','Orbit 3A',800,30,5600000,210,'v2.9',132.0,1900.0,600.0,'Medium',78,'Biannual','2270-06-15',800000000,1300000000,500000000,'Operational','Secondary hub focusing on mineral transport');
INSERT INTO galactic_trade_hub_operations VALUES (3,'Zenith Terminal','Sector Gamma','Orbit 9C',500,20,3200000,150,'v1.8',120.3,1500.0,400.0,'Low',65,'Annual','2271-03-10',500000000,900000000,400000000,'Operational','Specializes in luxury goods');

-- Log of dimensional shifts executed by research teams
CREATE TABLE dimensional_shift_log
(
    shift_id                    INTEGER PRIMARY KEY,
    shift_name                  TEXT,
    origin_dimension            TEXT,
    target_dimension            TEXT,
    initiator_entity            TEXT,
    shift_timestamp             TIMESTAMP,
    energy_consumed_gj          BIGINT,
    success_flag                BOOLEAN,
    anomaly_detected            BOOLEAN,
    cause_code                  TEXT,
    recovery_time_minutes       INTEGER,
    impact_assessment           TEXT,
    mitigation_strategy         TEXT,
    responsible_team            TEXT,
    documentation_link          TEXT,
    notes                       TEXT,
    related_shift_id            INTEGER,
    shift_category              TEXT,
    priority_level              TEXT,
    duration_seconds            INTEGER
);

INSERT INTO dimensional_shift_log VALUES (1,'ShiftAlpha','4D','5D','DrZara','2268-04-12 14:30:00',2500,TRUE,FALSE,'NONE',0,'Minimal','Standard protocol','TeamA','http://shifts.example.com/alpha','First successful shift',NULL,'Experimental','High',3600);
INSERT INTO dimensional_shift_log VALUES (2,'ShiftBeta','5D','4D','DrKane','2269-07-23 09:15:00',3200,FALSE,TRUE,'ERR42',45,'Significant temporal drift','Rollback procedure','TeamB','http://shifts.example.com/beta','Shift aborted due to instability',1,'Repair','Critical',5400);
INSERT INTO dimensional_shift_log VALUES (3,'ShiftGamma','4D','4D','DrMira','2270-11-05 22:05:00',1800,TRUE,FALSE,'NONE',0,'No observable effects','Routine check','TeamC','http://shifts.example.com/gamma','Routine calibration shift',NULL,'Maintenance','Medium',1800);

-- Entries for alien language corpus used in linguistic studies
CREATE TABLE alien_language_corpus_entry
(
    entry_id                INTEGER PRIMARY KEY,
    language_name           TEXT,
    dialect                 TEXT,
    transcription_text      TEXT,
    audio_file_path         TEXT,
    translation_english     TEXT,
    lexical_category        TEXT,
    part_of_speech          TEXT,
    morphological_notes     TEXT,
    phonetic_notation       TEXT,
    source_document         TEXT,
    discovery_date          DATE,
    researcher_name         TEXT,
    verification_status     TEXT,
    confidence_score        INTEGER,
    usage_frequency         INTEGER,
    semantic_field          TEXT,
    related_entries         TEXT,
    cultural_context        TEXT,
    notes                   TEXT
);

INSERT INTO alien_language_corpus_entry VALUES (1,'Xelorian','Northern','krrth zuna','/audio/xel_north_001.wav','Beware the storm','Verb','Imperative','Agglutinative','kʀʀθ zuːna','Expedition Log 12','2255-02-14','DrLuna','Verified',95,12,'Weather','2,5','Used in ceremonial warnings','');
INSERT INTO alien_language_corpus_entry VALUES (2,'Zygan','Southern','malaq tor','/audio/zyg_south_004.wav','The sun rises','Noun','Subject','Isolating','malaq tor','Field Notebook 7','2256-06-30','DrOrion','Pending',80,8,'Astronomy','1,3','Reference to sunrise ritual','');
INSERT INTO alien_language_corpus_entry VALUES (3,'Quorath','Standard','grel im','/audio/quor_std_009.wav','We travel together','Phrase','Statement','Fusion','grel im','Diplomatic Record 3','2257-11-05','DrEris','Verified',90,20,'Travel','5,6','Common phrase among traders','');

-- Medical records for metahuman clinic patients
CREATE TABLE metahuman_clinic_record
(
    record_id                INTEGER PRIMARY KEY,
    patient_id               INTEGER,
    metahuman_name           TEXT,
    alias                    TEXT,
    date_of_birth            DATE,
    classification           TEXT,
    primary_power            TEXT,
    secondary_power          TEXT,
    blood_type               TEXT,
    genetic_marker           TEXT,
    last_checkup_date        DATE,
    treating_physician       TEXT,
    treatment_plan           TEXT,
    medication_list          TEXT,
    allergy_info             TEXT,
    risk_level               TEXT,
    insurance_provider       TEXT,
    policy_number            TEXT,
    emergency_contact        TEXT,
    notes                    TEXT,
    followup_date            DATE
);

INSERT INTO metahuman_clinic_record VALUES (1,1001,'Astra','StarShade','2225-04-12','Celestial','Photon Manipulation','Gravity Control','AB+','GM-Alpha','2265-05-01','DrVex','Radiation therapy','MedA,MedB','None','Medium','StellarHealth','SH-001','Kara S.','Requires quarterly monitoring','2270-05-01');
INSERT INTO metahuman_clinic_record VALUES (2,1002,'Rex','IronFist','2218-09-30','Mutant','Super Strength','Regeneration','O-','GM-Beta','2267-08-15','DrLara','Physiotherapy','MedC','Penicillin','High','MetaCare','IF-023','Liam T.','Strength training program','2272-01-10');
INSERT INTO metahuman_clinic_record VALUES (3,1003,'Nyx','ShadeWalker','2230-12-05','Ethereal','Invisibility','Telepathy','B+','GM-Gamma','2269-02-20','DrMona','Neurological monitoring','MedD,MedE','Dust','Low','VoidHealth','NW-456','Eve R.','Psychological counseling','2273-03-15');

-- Log of observed cosmic events captured by various instruments
CREATE TABLE cosmic_event_observation_log
(
    observation_id           INTEGER PRIMARY KEY,
    event_name               TEXT,
    event_type               TEXT,
    detection_instrument     TEXT,
    detection_date           DATE,
    sky_location_ra          REAL,
    sky_location_dec         REAL,
    magnitude                REAL,
    duration_seconds         INTEGER,
    energy_release_joules    BIGINT,
    spectral_analysis_summary TEXT,
    associated_objects       TEXT,
    observation_team_lead    TEXT,
    data_archive_id          TEXT,
    processed_status         TEXT,
    publication_reference    TEXT,
    notes                    TEXT,
    confidence_level         INTEGER,
    followup_scheduled       BOOLEAN,
    public_release_date      DATE
);

INSERT INTO cosmic_event_observation_log VALUES (1,'Supernova XJ9','Supernova','DeepSpaceArray','2268-03-11',210.5,-45.2, -19.3,86400,1200000000000,'Peak in ultraviolet','Star XJ9','DrHelios','ARCH001','Processed','Journal of Astrophysics Vol5','Bright event observed in multiple spectra',95,TRUE,'2269-04-01');
INSERT INTO cosmic_event_observation_log VALUES (2,'Gamma Burst Zeta','GammaRayBurst','GammaScope','2269-07-22',130.0,22.5, -22.7,2,500000000000,'High-energy photons detected','Nebula Zeta','DrRay','ARCH002','Pending','Pending','Awaiting calibration data',85,FALSE,NULL);
INSERT INTO cosmic_event_observation_log VALUES (3,'Dark Matter Lens','GravitationalLens','LensTracker','2270-11-05',300.1,10.3, 0.0,604800,0,'Distortion of background galaxies','Cluster DML','DrNova','ARCH003','Processed','Astro Review 2025','First confirmed dark matter lens in sector',98,TRUE,'2271-01-15');

-- Status tracking for interstellar supply routes
CREATE TABLE interstellar_supply_route_status
(
    route_id                 INTEGER PRIMARY KEY,
    route_name               TEXT,
    origin_planet            TEXT,
    destination_planet       TEXT,
    distance_ly              REAL,
    travel_time_days         INTEGER,
    cargo_type_allowed       TEXT,
    average_load_factor      INTEGER,
    last_trip_date           DATE,
    status                   TEXT,
    incidents_reported       INTEGER,
    maintenance_cycle_days   INTEGER,
    governing_authority      TEXT,
    security_level           INTEGER,
    navigation_technology    TEXT,
    fuel_consumption_gj_per_ly REAL,
    environmental_impact_score INTEGER,
    insurance_coverage_usd   BIGINT,
    notes                    TEXT,
    last_updated_timestamp   TIMESTAMP
);

INSERT INTO interstellar_supply_route_status VALUES (1,'RouteAlpha','Terra','Vulcan','12.5',30,'Minerals',78,'2270-05-10','Operational',0,180,'Galactic Transport Authority',4,'QuantumNav','15.2',22,800000000,'High priority route','2270-05-12 08:00:00');
INSERT INTO interstellar_supply_route_status VALUES (2,'RouteBeta','Mars','Aqua','25.0',55,'Food Supplies',65,'2271-02-18','Delayed',2,365,'Interstellar Commerce Board',3,'WarpDrive','12.8',30,600000000,'Affected by storm in sector','2271-02-20 14:30:00');
INSERT INTO interstellar_supply_route_status VALUES (3,'RouteGamma','Luna','Eden','8.3',15,'Medical Goods',90,'2272-09-05','Operational',0,90,'Health Logistics Agency',5,'StellarGuide','9.5',15,400000000,'No recent issues','2272-09-06 09:15:00');