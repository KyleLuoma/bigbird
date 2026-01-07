-- Research study metadata
CREATE TABLE research_study_meta
(
    study_id                INTEGER PRIMARY KEY,
    study_title             TEXT,
    principal_investigator  TEXT,
    sponsoring_agency       TEXT,
    start_date              DATE,
    end_date                DATE,
    study_type              TEXT,
    funding_amount_usd      REAL,
    number_of_participants  INTEGER,
    methodology_description TEXT,
    data_collection_method  TEXT,
    ethical_approval_id     INTEGER,
    geographic_scope        TEXT,
    subject_area            TEXT,
    status                  TEXT,
    publication_reference   TEXT,
    data_repository_url     TEXT,
    primary_outcome_metric  TEXT,
    secondary_outcome_metric TEXT,
    notes                   TEXT
);

INSERT INTO research_study_meta VALUES (1,'Quantum Entanglement in Metahumans','Dr Jane Doe','National Science Fund','2023-01-15','2025-12-31','Clinical','2500000','150','Double blind study','Brain imaging','101','Global','Neuroscience','Active','Doe2026Journal','https://repo.example.com/qe_meta','EntanglementScore','CognitiveFlexibility','Initial phase');
INSERT INTO research_study_meta VALUES (2,'Renewable Energy Grid Optimization','Prof John Smith','Global Energy Alliance','2022-05-01','2024-04-30','Observational','1200000','80','Field survey','Sensor network','202','Regional','Energy Systems','Completed','Smith2025Conference','https://repo.example.com/regen_grid','EfficiencyGain','CarbonReduction','Final report submitted');
INSERT INTO research_study_meta VALUES (3,'Alien Species Habitat Survey','Dr Emily Lee','Interstellar Exploration Office','2024-03-20','2026-09-15','Exploratory','1800000','200','Remote sensing','Satellite imaging','303','Extragalactic','Astrobiology','Pending','Lee2027TechReport','https://repo.example.com/alien_habitat','HabitatDiversity','PopulationDensity','Data collection ongoing');

-- Interstellar trade agreement details
CREATE TABLE interstellar_trade_agreement_detail
(
    agreement_id               INTEGER PRIMARY KEY,
    agreement_name             TEXT,
    signing_date               DATE,
    expiration_date            DATE,
    parties_involved           TEXT,
    governing_body             TEXT,
    trade_volume_estimate_usd  REAL,
    commodities_included       TEXT,
    tariff_rate_percent        REAL,
    dispute_resolution_mechanism TEXT,
    confidentiality_clause    TEXT,
    amendment_number           INTEGER,
    status                     TEXT,
    last_review_date           DATE,
    renewal_option             TEXT,
    regulatory_compliance      TEXT,
    trade_route_identifier     TEXT,
    oversight_agency           TEXT,
    signature_ceremony_location TEXT,
    notes                      TEXT
);

INSERT INTO interstellar_trade_agreement_detail VALUES (101,'Galactic Core Trade Pact','2023-07-01','2033-07-01','CoreSystemA;CoreSystemB','Galactic Council',5000000000,'Precious metals;Energy crystals','2.5','Arbitration panel','Restricted','0','Active','2028-07-01','Renewable','Compliant','GCTP-01','Trade Oversight Bureau','Core Station Alpha','Initial signing');
INSERT INTO interstellar_trade_agreement_detail VALUES (102,'Outer Rim Resource Exchange','2024-02-15','2029-02-15','OuterRimX;OuterRimY','Outer Rim Assembly',1200000000,'Rare gases;Exotic alloys','5.0','Mediation council','Confidential','1','Pending','2025-02-15','Optional','Pending approval','ORRE-07','Resource Regulation Office','Rim Outpost Zeta','Amendment pending');
INSERT INTO interstellar_trade_agreement_detail VALUES (103,'Intergalactic Agricultural Trade Accord','2025-11-20','2035-11-20','AgriWorld1;AgriWorld2','Intergalactic Agriculture Board',300000000,'Organic produce;Bioengineered seeds','1.2','Joint tribunal','Public','0','Draft','2026-11-20','Renewable','Draft compliance','IGATA-03','Agriculture Oversight Committee','AgriCenter Gamma','Draft for review');

-- Renewable energy project status
CREATE TABLE renewable_energy_project_status
(
    project_id               INTEGER PRIMARY KEY,
    project_name             TEXT,
    location                 TEXT,
    start_date               DATE,
    projected_completion_date DATE,
    current_phase            TEXT,
    capacity_mw              REAL,
    investment_usd           REAL,
    funding_source           TEXT,
    operating_company        TEXT,
    environmental_impact_score REAL,
    grid_connection_status   TEXT,
    permits_obtained         TEXT,
    permits_pending          TEXT,
    average_capacity_factor_percent REAL,
    total_energy_generated_mwh REAL,
    maintenance_schedule    TEXT,
    staff_count              INTEGER,
    safety_incidents_reported INTEGER,
    comments                 TEXT
);

INSERT INTO renewable_energy_project_status VALUES (201,'Solar Array Orion','Planet Orion','2022-06-01','2024-12-31','Construction','1500',850000000,'Green Fund Consortium','Orion Energy','85.4','Connected','Environmental;Construction','None',28.5,0,'Quarterly inspection','120','0','On track');
INSERT INTO renewable_energy_project_status VALUES (202,'Wind Farm Nebula','Moon Nebula','2021-03-15','2025-09-30','Planning','800',600000000,'SolarWind Alliance','Nebula Wind Corp','78.2','Pending','Environmental','Aviation','22.1',0,'Biannual maintenance','85','1','Awaiting final permit');
INSERT INTO renewable_energy_project_status VALUES (303,'Hydro Plant Aurora','Lake Aurora','2020-01-10','2023-08-20','Operational','500',400000000,'HydroFuture Fund','Aurora Hydro Ltd','92.0','Connected','Environmental;Construction;Water Use','None',35.0,1200000,'Monthly servicing','200','2','Performance exceeds expectations');

-- Cosmic artifact exhibit log
CREATE TABLE cosmic_artifact_exhibit_log
(
    exhibit_id                INTEGER PRIMARY KEY,
    artifact_name            TEXT,
    artifact_type            TEXT,
    discovery_date           DATE,
    acquisition_method       TEXT,
    provenance               TEXT,
    current_location         TEXT,
    exhibit_start_date       DATE,
    exhibit_end_date         DATE,
    curator_name             TEXT,
    display_case_id          INTEGER,
    security_level           TEXT,
    temperature_control_c    REAL,
    humidity_control_percent REAL,
    lighting_type            TEXT,
    visitor_capacity_per_day INTEGER,
    tickets_sold             INTEGER,
    insurance_value_usd      REAL,
    condition_rating         INTEGER,
    notes                    TEXT
);

INSERT INTO cosmic_artifact_exhibit_log VALUES (401,'Starlight Shard','Crystalline','2120-04-12','Excavation','Ancient Nebula Site','Museum of Celestial Wonders','2125-05-01','2125-10-31','Dr Selene Arcos',12,'High',-5.0,45.0,'Low UV',5000,3500,12000000,9,'Displayed in sealed case');
INSERT INTO cosmic_artifact_exhibit_log VALUES (402,'Eclipse Relic','Metallic','2098-11-23','Purchase','Derelict Spacecraft','Galactic History Hall','2100-01-15','2100-07-15','Prof Orion Pax',7,'Medium',2.0,50.0,'LED',3000,2500,8000000,8,'Minor surface corrosion');
INSERT INTO cosmic_artifact_exhibit_log VALUES (403,'Nebula Tapestry','Organic','2135-06-05','Donation','Exiled Astral Monks','Interstellar Art Gallery','2136-03-10','2136-09-10','Curator Lira Vale',5,'Low',20.0,30.0,'Fiber Optic',1500,1200,5000000,7,'Requires periodic humidity adjustment');

-- Metahuman clinic appointment schedule
CREATE TABLE metahuman_clinic_appointment_schedule
(
    appointment_id          INTEGER PRIMARY KEY,
    patient_id              INTEGER,
    patient_name            TEXT,
    clinic_branch           TEXT,
    appointment_date        DATE,
    appointment_time        TIME,
    practitioner_name       TEXT,
    specialty               TEXT,
    appointment_type        TEXT,
    status                  TEXT,
    check_in_timestamp      TIMESTAMP,
    check_out_timestamp     TIMESTAMP,
    notes_preliminary       TEXT,
    notes_followup          TEXT,
    prescribed_medication   TEXT,
    dosage                  TEXT,
    follow_up_required      TEXT,
    follow_up_date          DATE,
    billing_code            TEXT,
    insurance_provider      TEXT
);

INSERT INTO metahuman_clinic_appointment_schedule VALUES (501,1001,'Alex Mercer','Metahuman Center East','2025-04-15','09:30','Dr Nova','Genetic Therapy','Consultation','Scheduled','2025-04-15 09:00','NULL','Bloodwork pending','NULL','GeneModX','5mg','Yes','2025-05-15','GT-001','Metahuman Health Corp');
INSERT INTO metahuman_clinic_appointment_schedule VALUES (502,1002,'Dana Frost','Metahuman Center West','2025-04-16','11:00','Dr Zenith','Psychic Regulation','Therapy','CheckedIn','2025-04-16 10:45','2025-04-16 12:00','Pre-session questionnaire completed','Session notes: progress noted','CalmAura','2 drops','No','NULL','PR-045','PsychicCare Inc');
INSERT INTO metahuman_clinic_appointment_schedule VALUES (503,1003,'Liam Voss','Metahuman Center North','2025-04-17','14:15','Dr Quark','Energy Harnessing','Procedure','Cancelled','NULL','NULL','Patient requested reschedule','NULL','EnergyFlux','10ml','Yes','2025-05-20','EH-210','EnergyHealth Ltd');

-- Fan engagement survey results
CREATE TABLE fan_engagement_survey_results
(
    survey_id               INTEGER PRIMARY KEY,
    fan_id                  INTEGER,
    fan_name                TEXT,
    age_group               TEXT,
    region                  TEXT,
    favorite_hero_id        INTEGER,
    favorite_power_id       INTEGER,
    average_spending_usd    REAL,
    event_attended_last_year INTEGER,
    prefers_digital_media   TEXT,
    subscription_status     TEXT,
    likelihood_to_recommend INTEGER,
    satisfaction_score       INTEGER,
    feedback_comments       TEXT,
    date_submitted          DATE,
    survey_version          TEXT,
    device_used             TEXT,
    time_spent_minutes      INTEGER,
    referral_source         TEXT,
    promotional_code_used   TEXT
);

INSERT INTO fan_engagement_survey_results VALUES (601,2001,'Sam Carter','18-24','North America',45,12,150.75,2,'Yes','Premium','9','8','Great storyline and visuals','2025-03-10','v2','Mobile','35','Social Media','FAN20');
INSERT INTO fan_engagement_survey_results VALUES (602,2002,'Mia Liu','25-34','East Asia',38,7,85.00,0,'No','Free','7','6','More merchandise needed','2025-03-12','v2','Desktop','22','Friend Referral','NULL');
INSERT INTO fan_engagement_survey_results VALUES (603,2003,'Ravi Patel','35-44','South Asia',52,15,230.40,5,'Yes','Premium','10','9','Loved the recent event!','2025-03-15','v2','Tablet','45','Email Campaign','EVENT5');

-- Galactic trade route metrics
CREATE TABLE galactic_trade_route_metrics
(
    route_id                INTEGER PRIMARY KEY,
    route_name              TEXT,
    origin_system           TEXT,
    destination_system      TEXT,
    distance_lightyears     REAL,
    average_transit_time_days REAL,
    yearly_volume_tb        REAL,
    primary_commodities     TEXT,
    tariff_average_percent  REAL,
    incidents_reported      INTEGER,
    security_level          TEXT,
    infrastructure_quality  TEXT,
    maintenance_cost_usd    REAL,
    environmental_impact_score REAL,
    regulatory_compliance   TEXT,
    last_inspection_date    DATE,
    projected_growth_percent REAL,
    active_ships            INTEGER,
    cargo_loss_rate_percent REAL,
    notes                   TEXT
);

INSERT INTO galactic_trade_route_metrics VALUES (701,'Core-Spiral Line','CoreSystemX','SpiralSector7',1250.5,45.2,3200.0,'Energy crystals;Rare minerals',3.5,2,'High','Excellent',1200000,12.4,'Compliant','2024-11-20',5.2,18,0.3,'Stable and profitable');
INSERT INTO galactic_trade_route_metrics VALUES (702,'Outer Belt Corridor','OuterBeltA','OuterBeltB',870.0,38.0,2100.5,'Exotic alloys;Organic goods',4.1,5,'Medium','Good',950000,15.0,'Pending Review','2024-09-15',3.8,12,0.5,'Undergoing security upgrade');
INSERT INTO galactic_trade_route_metrics VALUES (703,'Nebula Trade Loop','NebulaCore','NebulaEdge',650.3,30.5,1800.2,'Nebula gas;Micro processors',2.8,1,'Low','Fair',800000,9.7,'Compliant','2025-01-10',4.5,9,0.2,'Considering expansion');

-- Quantum computing job queue snapshot
CREATE TABLE quantum_computing_job_queue_snapshot
(
    snapshot_id            INTEGER PRIMARY KEY,
    capture_timestamp      TIMESTAMP,
    total_jobs_submitted   INTEGER,
    jobs_running           INTEGER,
    jobs_completed         INTEGER,
    avg_wait_time_seconds  REAL,
    avg_execution_time_seconds REAL,
    max_memory_gb          REAL,
    qubits_allocated       INTEGER,
    error_rate_percent     REAL,
    priority_high_jobs     INTEGER,
    priority_medium_jobs   INTEGER,
    priority_low_jobs      INTEGER,
    scheduler_version      TEXT,
    node_count_active      INTEGER,
    node_count_idle        INTEGER,
    cooling_system_status  TEXT,
    power_consumption_kw   REAL,
    maintenance_window_scheduled TEXT,
    notes                  TEXT
);

INSERT INTO quantum_computing_job_queue_snapshot VALUES (801,'2025-04-01 08:00:00',150,12,115,45.2,120.5,64.0,2500,0.03,30,80,40,'v3.2',12,5,'Optimal',350.0,'2025-04-05 00:00-04:00','Snapshot after system upgrade');
INSERT INTO quantum_computing_job_queue_snapshot VALUES (802,'2025-04-15 14:30:00',200,20,160,60.1,140.8,70.5,3000,0.04,45,90,65,'v3.3',15,3,'Optimal',420.0,'2025-04-20 02:00-06:00','Increased demand due to research grant');
INSERT INTO quantum_computing_job_queue_snapshot VALUES (803,'2025-04-28 22:15:00',180,8,162,30.5,98.3,58.2,2800,0.025,25,70,55,'v3.3',14,4,'Optimal',380.0,'2025-05-02 01:00-05:00','Routine performance snapshot');

-- Alien species habitat profile
CREATE TABLE alien_species_habitat_profile
(
    habitat_id               INTEGER PRIMARY KEY,
    species_name             TEXT,
    planet_name              TEXT,
    biome_type               TEXT,
    average_temperature_c    REAL,
    atmospheric_composition  TEXT,
    gravity_m_s2             REAL,
    dominant_flora            TEXT,
    dominant_fauna            TEXT,
    population_estimate      BIGINT,
    conservation_status      TEXT,
    discovery_year           INTEGER,
    primary_researchers      TEXT,
    habitat_area_sq_km        REAL,
    water_availability_percent REAL,
    mineral_richness_index   REAL,
    threat_factors           TEXT,
    protection_measures      TEXT,
    notes                    TEXT,
    last_survey_date         DATE
);

INSERT INTO alien_species_habitat_profile VALUES (901,'Xel\'Nara','Xenon Prime','Temperate Forest',22.5,'78% Nitrogen;20% Oxygen;2% Argon',9.81,'Lumina Ferns','Glide Raptors',1200000,'Stable',2122,'Dr Aria Vex','35000.0',68.5,4.2,'Deforestation;Mining','Protected Reserve','Habitat thriving','2024-12-10');
INSERT INTO alien_species_habitat_profile VALUES (902,'Kryll','Krylon','Arid Desert',-15.0,'95% Carbon Dioxide;4% Methane;1% Neon',12.3,'Spine Cacti','Sand Skitters',800000,'Vulnerable',2140,'Prof Dax Orin','54000.0',15.0,6.8,'Climate Change','Ecological Corridor','Monitoring ongoing','2025-02-18');
INSERT INTO alien_species_habitat_profile VALUES (903,'Zyphorian','Zyphor','Subterranean Cavern',5.0,'70% Helium;25% Hydrogen;5% Methane',8.5,'Glow Moss','Cave Swarmers',2500000,'Endangered',2155,'Team Lumen','120000.0',92.0,8.5,'Poaching;Habitat Fragmentation','Underground Sanctuaries','Population stable','2025-01-05');

-- Hero legacy rights registry
CREATE TABLE hero_legacy_rights_registry
(
    registry_id                INTEGER PRIMARY KEY,
    hero_id                    INTEGER,
    hero_name                  TEXT,
    legacy_rights_type         TEXT,
    effective_date             DATE,
    expiration_date            DATE,
    governing_body             TEXT,
    jurisdiction               TEXT,
    transfer_allowed           TEXT,
    transfer_fee_usd           REAL,
    royalty_percentage         REAL,
    associated_properties      TEXT,
    original_acquisition_method TEXT,
    current_holder             TEXT,
    holder_contact_email       TEXT,
    status                     TEXT,
    last_review_date           DATE,
    notes                      TEXT,
    archival_document_path     TEXT,
    compliance_check_passed    TEXT
);

INSERT INTO hero_legacy_rights_registry VALUES (1001,1,'Supernova','Media Usage','2025-01-01','2035-01-01','Global Hero Council','International','Yes',250000,'5.0','Comic Books;Animated Series','Original Creator','Nova Enterprises','contact@novaent.com','Active','2025-03-15','Rights under review','/archive/legacy/1001.pdf','Yes');
INSERT INTO hero_legacy_rights_registry VALUES (1002,3,'Astra','Merchandising','2024-06-15','2034-06-15','Intergalactic Trade Authority','Intergalactic','No',0,NULL,'Action Figures;Apparel','Corporate Assignment','Astra Merch Ltd','info@astramerch.com','Active','2024-12-01','No pending transfers','/archive/legacy/1002.pdf','Yes');
INSERT INTO hero_legacy_rights_registry VALUES (1003,5,'Quantum Knight','Storyline Continuity','2023-09-10','2033-09-10','Chronology Oversight Committee','Universal','Yes',150000,'3.5','Video Game Series','Licensing Agreement','Quantum Studios','legal@quantumstudios.com','Pending','2025-02-20','Awaiting final approval','/archive/legacy/1003.pdf','No');