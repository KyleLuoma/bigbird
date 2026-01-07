-- Interstellar Trade Agreement
CREATE TABLE interstellar_trade_agreement
(
    agreement_id               INTEGER PRIMARY KEY,
    agreement_name             TEXT,
    signing_date               TEXT,
    expiration_date            TEXT,
    parties_involved           TEXT,
    trade_route_id             INTEGER,
    commodity_type             TEXT,
    volume_tb                  INTEGER,
    price_per_tb               INTEGER,
    currency                   TEXT,
    governing_body             TEXT,
    confidentiality_level      TEXT,
    dispute_resolution_mechanism TEXT,
    amendment_number           INTEGER,
    status                     TEXT,
    created_by_user            TEXT,
    created_at                 TEXT,
    updated_at                 TEXT,
    notes                      TEXT,
    compliance_score           INTEGER
);
INSERT INTO interstellar_trade_agreement VALUES (1,'Solar Belt Minerals Pact','2125-03-15','2130-03-15','Solar Federation;Alpha Union',101,'Minerals',500000,25,'Galactic Credit','Interstellar Trade Council','High','Arbitration',2,'Active','admin','2125-03-15','2126-01-01','Initial agreement',85);
INSERT INTO interstellar_trade_agreement VALUES (2,'Nebula Gas Exchange','2127-07-01','2132-07-01','Nebula Consortium;Beta Alliance',102,'Gas',300000,40,'Nebulon','Space Commerce Board','Medium','Mediation',1,'Pending','trade_officer','2127-07-01','2127-07-10','Awaiting signatures',70);
INSERT INTO interstellar_trade_agreement VALUES (3,'Quantum Tech Transfer','2129-11-20','2134-11-20','Quantum Guild;Gamma Syndicate',103,'Technology',15000,200,'Quantum Unit','Tech Regulatory Authority','Low','Litigation',0,'Active','tech_admin','2129-11-20','2130-02-15','Confidential clauses',92);

-- Cosmic Anomaly Observation
CREATE TABLE cosmic_anomaly_observation
(
    anomaly_id                INTEGER PRIMARY KEY,
    anomaly_name              TEXT,
    discovery_date            TEXT,
    observed_by               TEXT,
    location_coords           TEXT,
    magnitude                 REAL,
    duration_hours            REAL,
    energy_release_joules    BIGINT,
    affected_systems          TEXT,
    classification            TEXT,
    confidence_level          TEXT,
    observation_instrument    TEXT,
    data_file_path            TEXT,
    notes                     TEXT,
    status                    TEXT,
    reported_to_agency        TEXT,
    follow_up_required        TEXT,
    follow_up_deadline        TEXT,
    mitigation_plan           TEXT,
    public_release_flag       TEXT
);
INSERT INTO cosmic_anomaly_observation VALUES (1,'Gamma Ray Burst 7','2130-02-11','Observatory Alpha','RA12.5DEC-45.3',8.5,12.0,4500000000,'Sector 7','Burst','High','GammaRayDetector','/data/obs1.bin','No immediate threat','Monitored','Galactic Science Agency','Yes','2130-03-01','Alert nearby stations','No');
INSERT INTO cosmic_anomaly_observation VALUES (2,'Dark Matter Fluctuation','2131-06-23','Probe Beta','RA08.1DEC-22.9',5.2,48.0,12000000000,'Sector 12','Fluctuation','Medium','MassSpectrometer','/data/obs2.bin','Potential lensing effect','Investigating','Interstellar Research Council','Yes','2131-07-15','Schedule further scans','Yes');
INSERT INTO cosmic_anomaly_observation VALUES (3,'Temporal Rift','2132-01-05','Temporal Sensor Array','RA15.0DEC-30.0',9.9,2.5,8000000000,'Sector 9','Rift','Low','ChronoScanner','/data/obs3.bin','Anomaly stable','Closed','Chronology Oversight Committee','No','NULL','N/A','No');

-- Metahuman Clinic Visit
CREATE TABLE metahuman_clinic_visit
(
    visit_id                  INTEGER PRIMARY KEY,
    patient_id                INTEGER,
    visit_date                TEXT,
    clinic_location_id        INTEGER,
    physician_id              INTEGER,
    diagnosis_code            TEXT,
    treatment_code            TEXT,
    prescription_id           INTEGER,
    vital_signs_summary       TEXT,
    lab_results_summary       TEXT,
    imaging_summary           TEXT,
    follow_up_date            TEXT,
    notes                     TEXT,
    billing_code              TEXT,
    insurance_provider_id     INTEGER,
    copay_amount              INTEGER,
    referral_source           TEXT,
    visit_type                TEXT,
    discharge_status          TEXT,
    next_appointment_id       INTEGER
);
INSERT INTO metahuman_clinic_visit VALUES (1,1001,'2130-05-12',201,301,'DX001','TR101',501,'BP120/80 HR72','CBCNormal','MRIUnremarkable','2130-06-12','Routine checkup','BILL100',401,20,'Self','Checkup','Discharged','601');
INSERT INTO metahuman_clinic_visit VALUES (2,1002,'2130-07-20',202,302,'DX045','TR210',502,'BP130/85 HR78','ElevatedGlucose','CTScanFindings','2130-08-20','Follow-up for diabetes','BILL200',402,30,'Referral','FollowUp','Discharged','602');
INSERT INTO metahuman_clinic_visit VALUES (3,1003,'2130-09-05',203,303,'DX078','TR330',503,'BP110/70 HR68','AnemiaDetected','XRayClear','2130-10-05','Treatment for anemia','BILL300',403,25,'Emergency','Emergency','Admitted','603');

-- Galactic Trade Route Statistics
CREATE TABLE galactic_trade_route_statistics
(
    route_id                  INTEGER PRIMARY KEY,
    route_name                TEXT,
    total_volume_tb           BIGINT,
    average_price_per_tb      INTEGER,
    dominant_commodity        TEXT,
    number_of_active_ships    INTEGER,
    average_transit_time_days INTEGER,
    total_incidents           INTEGER,
    incident_rate             REAL,
    security_level            TEXT,
    governing_agency          TEXT,
    last_audit_date           TEXT,
    next_audit_due            TEXT,
    throughput_growth_rate    REAL,
    trade_balance             BIGINT,
    tariff_rate_percent       REAL,
    export_volume_tb          BIGINT,
    import_volume_tb          BIGINT,
    route_status              TEXT,
    comments                  TEXT
);
INSERT INTO galactic_trade_route_statistics VALUES (1,'Spiral Arm Corridor',2500000,45,'Minerals',58,12,4,0.0016,'High','Intergalactic Trade Authority','2130-04-01','2131-04-01',5.2,1500000,3.5,1800000,700000,'Active','Stable traffic');
INSERT INTO galactic_trade_route_statistics VALUES (2,'Nebula Passage',1200000,60,'Gas',34,18,7,0.0058,'Medium','Nebula Trade Council','2130-06-15','2131-06-15',3.9,-300000,4.0,900000,300000,'Active','Occasional delays');
INSERT INTO galactic_trade_route_statistics VALUES (3,'Quantum Slipstream',800000,120,'Technology',22,5,1,0.0012,'Low','Quantum Commerce Board','2130-09-20','2131-09-20',7.1,2000000,2.5,500000,300000,'Restricted','Limited access');

-- Alien Species Habitat Profile
CREATE TABLE alien_species_habitat_profile
(
    habitat_id                INTEGER PRIMARY KEY,
    species_id                INTEGER,
    planet_name               TEXT,
    region_name               TEXT,
    climate_type              TEXT,
    typical_terrain           TEXT,
    dominant_flora            TEXT,
    dominant_fauna            TEXT,
    average_lifespan_years   INTEGER,
    population_estimate      BIGINT,
    conservation_status      TEXT,
    discovered_date           TEXT,
    discoverer                TEXT,
    primary_threats          TEXT,
    research_station_id      INTEGER,
    habitat_area_sqkm         REAL,
    average_temperature_c    REAL,
    radiation_level_sieverts REAL,
    atmospheric_composition  TEXT,
    notes                     TEXT
);
INSERT INTO alien_species_habitat_profile VALUES (1,5001,'Xenon Prime','Northern Highlands','Temperate','Rocky','Xenon Ferns','Sky Raptors',120,2500000,'Endangered','2125-03-10','DrLyra','Habitat loss',301,450.5,22.3,0.03,'Nitrogen,Oxygen','Requires protection');
INSERT INTO alien_species_habitat_profile VALUES (2,5002,'Zyra','Equatorial Basin','Tropical','Swamp','Glow Moss','River Serpents',80,800000,'Vulnerable','2128-11-22','ProfKeen','Pollution',302,1200.0,28.5,0.04,'Carbon Dioxide,Methane','Monitoring ongoing');
INSERT INTO alien_species_habitat_profile VALUES (3,5003,'Quor','Desert Expanse','Arid','Sand Dunes','Cactus Tree','Sand Scavengers',60,150000,'Stable','2130-02-05','DrZane','Predation',303,300.0,35.0,0.02,'Helium,Argon','Stable ecosystem');

-- Virtual Collectible Marketplace User
CREATE TABLE virtual_collectible_marketplace_user
(
    user_id                  INTEGER PRIMARY KEY,
    username                 TEXT,
    email                    TEXT,
    registration_date        TEXT,
    country_code             TEXT,
    verified_status          TEXT,
    total_purchases          INTEGER,
    total_sales              INTEGER,
    average_rating           REAL,
    last_login               TEXT,
    preferred_category       TEXT,
    wallet_balance           INTEGER,
    loyalty_tier             TEXT,
    referral_code            TEXT,
    two_factor_enabled      TEXT,
    account_status           TEXT,
    bio                      TEXT,
    preferred_currency       TEXT,
    marketing_opt_in         TEXT,
    last_purchase_date       TEXT
);
INSERT INTO virtual_collectible_marketplace_user VALUES (1,'heroFan01','hero01@example.com','2129-01-15','US','Yes',15,3,4.7,'2130-01-20','Action Figures',250,'Gold','REF123','Yes','Active','Longtime collector','USD','Yes','2129-12-30');
INSERT INTO virtual_collectible_marketplace_user VALUES (2,'collectorX','colx@example.org','2130-03-05','GB','No',5,12,4.3,'2130-04-01','Comics',80,'Silver','REF456','No','Active','New to marketplace','GBP','No','2130-03-25');
INSERT INTO virtual_collectible_marketplace_user VALUES (3,'mintMaster','mintm@example.net','2128-07-22','CA','Yes',30,0,5.0,'2130-02-28','Minted Coins',500,'Platinum','REF789','Yes','Suspended','Account under review','CAD','Yes','2129-11-15');

-- Quantum Energy Market Stats
CREATE TABLE quantum_energy_market_stats
(
    record_id                INTEGER PRIMARY KEY,
    market_date              TEXT,
    total_generated_mwh      BIGINT,
    average_price_per_mwh    INTEGER,
    peak_demand_mwh          BIGINT,
    lowest_price_mwh         INTEGER,
    volatility_index         REAL,
    number_of_transactions   INTEGER,
    regulatory_body          TEXT,
    market_phase             TEXT,
    settlement_time          TEXT,
    average_latency_ms       INTEGER,
    grid_stability_score     REAL,
    renewable_share_percent  REAL,
    nonrenewable_share_percent REAL,
    carbon_intensity_grams_per_mwh INTEGER,
    forecasted_demand_mwh    BIGINT,
    actual_demand_mwh        BIGINT,
    notes                    TEXT,
    data_source              TEXT
);
INSERT INTO quantum_energy_market_stats VALUES (1,'2130-04-01',1500000,45,2000000,30,0.12,250,'Quantum Energy Authority','Day','T+2',150,0.95,60.5,39.5,250,'1600000','1550000','Stable market','SensorArrayA');
INSERT INTO quantum_energy_market_stats VALUES (2,'2130-04-02',1525000,46,2025000,31,0.15,260,'Quantum Energy Authority','Day','T+2',148,0.94,61.0,39.0,245,'1620000','1580000','Slight demand increase','SensorArrayB');
INSERT INTO quantum_energy_market_stats VALUES (3,'2130-04-03',1480000,44,1990000,29,0.10,240,'Quantum Energy Authority','Day','T+2',152,0.96,59.8,40.2,255,'1595000','1548000','Demand dip','SensorArrayC');

-- Dimensional Portal Log
CREATE TABLE dimensional_portal_log
(
    portal_id                INTEGER PRIMARY KEY,
    portal_name              TEXT,
    activation_timestamp     TEXT,
    deactivation_timestamp   TEXT,
    linked_dimension         TEXT,
    stability_rating         REAL,
    energy_consumption_mj    BIGINT,
    operator_id              INTEGER,
    security_clearance_required TEXT,
    containment_status       TEXT,
    breach_incidents         INTEGER,
    maintenance_schedule     TEXT,
    last_maintenance_date    TEXT,
    responsible_department   TEXT,
    access_log_url           TEXT,
    notes                    TEXT,
    current_status           TEXT,
    projected_shutdown_date  TEXT,
    anomaly_detected         TEXT,
    mitigation_actions       TEXT
);
INSERT INTO dimensional_portal_log VALUES (1,'Portal Alpha','2130-01-10 08:00:00','NULL','Dimension X-1',8.5,5000000,401,'Level 4','Secure',0,'Quarterly','2130-03-01','Portal Ops','/logs/portal_alpha.log','All systems nominal','Active','2135-01-01','No','N/A');
INSERT INTO dimensional_portal_log VALUES (2,'Portal Beta','2129-11-05 14:30:00','2130-02-20 09:15:00','Dimension Y-3',6.2,7500000,402,'Level 5','Quarantine',2,'Biannual','2130-01-15','Security Dept','/logs/portal_beta.log','Minor fluctuations observed','Deactivated','2130-02-22','Yes','Seal breach and recalibration');
INSERT INTO dimensional_portal_log VALUES (3,'Portal Gamma','2130-04-01 12:00:00','NULL','Dimension Z-7',9.1,3000000,403,'Level 3','Secure',0,'Monthly','2130-04-01','Research Division','/logs/portal_gamma.log','High stability','Active','2136-04-01','No','N/A');

-- Research Grant Funding
CREATE TABLE research_grant_funding
(
    grant_id                 INTEGER PRIMARY KEY,
    grant_name               TEXT,
    funding_agency           TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    total_amount_usd         BIGINT,
    principal_investigator_id INTEGER,
    co_investigator_ids      TEXT,
    research_area            TEXT,
    project_summary          TEXT,
    milestones               TEXT,
    reporting_frequency      TEXT,
    cost_center_code         TEXT,
    approval_status          TEXT,
    review_score             INTEGER,
    disbursement_schedule   TEXT,
    matching_funds_usd       BIGINT,
    indirect_cost_rate_percent REAL,
    compliance_requirements TEXT,
    notes                    TEXT
);
INSERT INTO research_grant_funding VALUES (1,'Quantum Field Dynamics','Galactic Science Council','2130-01-01','2132-12-31',5000000,601,'602,603','Quantum Physics','Study of quantum field interactions','Phase1:Setup;Phase2:Experiment;Phase3:Analysis','Quarterly','CC100','Approved',88,'50% upfront; 25% midterm; 25% final',1000000,15.0,'Open Data','High impact potential');
INSERT INTO research_grant_funding VALUES (2,'Metahuman Genetics','Interstellar Health Agency','2131-06-15','2134-06-14',3000000,604,'605,606','Genetics','Mapping metahuman DNA sequences','Milestone1:Sampling;Milestone2:Sequencing;Milestone3:Publishing','Biannual','CC200','Pending',0,'N/A',0,12.5,'Ethics Review','Awaiting final approval');
INSERT INTO research_grant_funding VALUES (3,'Cosmic Artifact Preservation','Cultural Heritage Authority','2130-09-01','2135-08-31',2000000,607,'608','Archaeology','Preserving newly discovered cosmic artifacts','Stage1:Catalog;Stage2:Conservation;Stage3:Exhibition','Annual','CC300','Approved',92,'30% start; 40% mid; 30% end',500000,10.0,'Secure Storage','Collaboration with museums');

-- Archaeological Site Record
CREATE TABLE archaeological_site_record
(
    site_id                  INTEGER PRIMARY KEY,
    site_name                TEXT,
    country                  TEXT,
    region                   TEXT,
    discovery_year           INTEGER,
    discoverer               TEXT,
    cultural_period          TEXT,
    primary_artifact_type    TEXT,
    excavation_status        TEXT,
    total_area_sqkm          REAL,
    depth_meters             REAL,
    preservation_rating      TEXT,
    last_excavation_date     TEXT,
    funding_source           TEXT,
    lead_archaeologist_id    INTEGER,
    number_of_artifacts_found INTEGER,
    notable_findings         TEXT,
    GIS_coordinates          TEXT,
    public_access_status     TEXT,
    notes                    TEXT
);
INSERT INTO archaeological_site_record VALUES (1,'Omega Ruins','Nova Terra','Southern Plains',2125,'DrHale','Ancient','Stone Tablets','Completed',2.5,12.3,'Excellent','2129-11-20','Heritage Fund',701,450,'First interstellar script','RA12.5DEC-45.3','Open','Site well-preserved');
INSERT INTO archaeological_site_record VALUES (2,'Lyra Dig Site','Ventara','Northern Ridge',2128,'ProfKeen','Bronze Age','Metal Tools','InProgress',1.2,8.0,'Good','2130-02-15','Science Grant',702,210,'Unique alloy composition','RA08.1DEC-22.9','Restricted','Ongoing analysis');
INSERT INTO archaeological_site_record VALUES (3,'Zeta Temple','Eldoria','Eastern Valley',2130,'DrZane','Medieval','Ceramic Vessels','Planned',0.8,5.5,'Fair','NULL','Cultural Ministry',703,0,'Potential hidden chambers','RA15.0DEC-30.0','Closed','Excavation pending approval');