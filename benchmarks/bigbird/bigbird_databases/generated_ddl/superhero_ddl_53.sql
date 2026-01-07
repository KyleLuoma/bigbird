-- Table storing logs of planetary exploration missions
CREATE TABLE planetary_exploration_log
(
    log_id                     INTEGER NOT NULL PRIMARY KEY,
    mission_name               TEXT,
    planet_name                TEXT,
    launch_date                DATE,
    return_date                DATE,
    commander_id               INTEGER,
    crew_size                  INTEGER,
    objectives                 TEXT,
    findings_summary           TEXT,
    sample_count               INTEGER,
    equipment_used             TEXT,
    budget_million             INTEGER,
    status                     TEXT,
    orbital_insertion_success INTEGER,
    surface_landing_success   INTEGER,
    duration_days              INTEGER,
    radiation_level            REAL,
    gravity_measure            REAL,
    temperature_avg            REAL,
    notes                      TEXT
);

INSERT INTO planetary_exploration_log VALUES (1,'AlphaQuest','Xenon','2025-03-01','2025-09-15',101,12,'Geology Survey','Found rare minerals',45,'Drill, Spectrometer',80,'Completed',1,1,198,'0.15','1.2','-55','All objectives met');
INSERT INTO planetary_exploration_log VALUES (2,'BetaVoyage','Eridani','2026-07-10','2027-01-20',102,8,'Atmospheric Study','Detected unexpected gases',30,'Atmospheric Probe',60,'Completed',1,0,195,'0.08','0.9','-20','Landing aborted due to storm');
INSERT INTO planetary_exploration_log VALUES (3,'GammaReach','Orion','2027-11-05','2028-04-12',103,15,'Biological Survey','Discovered unknown flora',60,'Bio Lab Kit',90,'InProgress',0,0,159,'0.12','1.0','-10','Mission ongoing');

-- Table allocating cosmic energy resources
CREATE TABLE cosmic_energy_allocation
(
    allocation_id          INTEGER NOT NULL PRIMARY KEY,
    fiscal_year            INTEGER,
    region                 TEXT,
    energy_type            TEXT,
    allocated_gwh          REAL,
    used_gwh               REAL,
    surplus_gwh            REAL,
    allocation_date        DATE,
    approved_by            TEXT,
    status                 TEXT,
    priority_level         INTEGER,
    renewable_percent      REAL,
    carbon_offset_tons     REAL,
    project_name           TEXT,
    project_manager        TEXT,
    budget_million         INTEGER,
    source_type            TEXT,
    distribution_method    TEXT,
    last_updated           DATE,
    comments               TEXT
);

INSERT INTO cosmic_energy_allocation VALUES (1,2024,'SectorA','Solar',5000.0,4200.5,799.5,'2024-01-15','ChiefEngineer','Approved',1,85.0,1200.0,'SolarGridExpansion','MiraKhan',150,'SolarFarm','DirectFeed','2024-06-01','OnTrack');
INSERT INTO cosmic_energy_allocation VALUES (2,2024,'SectorB','Fusion',3000.0,2500.0,500.0,'2024-02-10','EnergyDirector','Pending',2,70.0,800.0,'FusionCoreUpgrade','LuisPerez',200,'FusionReactor','GridStorage','2024-07-10','Awaiting approval');
INSERT INTO cosmic_energy_allocation VALUES (3,2025,'SectorC','DarkMatter',8000.0,7200.0,800.0,'2025-03-20','SeniorPlanner','Approved',1,90.0,2000.0,'DarkMatterHarvest','AishaLee',300,'DarkMatterExtractor','QuantumTransfer','2025-08-05','Phase2 complete');

-- Table recording agreements with alien races
CREATE TABLE alien_trade_agreement
(
    agreement_id          INTEGER NOT NULL PRIMARY KEY,
    alien_race            TEXT,
    galaxy                TEXT,
    start_date            DATE,
    end_date              DATE,
    trade_goods           TEXT,
    trade_volume          INTEGER,
    currency_type         TEXT,
    exchange_rate         REAL,
    security_level        INTEGER,
    compliance_status    TEXT,
    notes                 TEXT,
    signed_by_human       TEXT,
    signed_by_alien       TEXT,
    arbitration_clause   TEXT,
    renewal_option        INTEGER,
    governing_law         TEXT,
    confidentiality_level INTEGER,
    signature_date        DATE,
    amendment_count       INTEGER
);

INSERT INTO alien_trade_agreement VALUES (1,'Zorgon','Andromeda','2023-05-01','2033-05-01','QuantumCrystals',5000,'ZorgCredits',1.2,3,'Compliant','Initial agreement','HumanRep1','ZorgAmb1','MediationBoard',1,'IntergalacticTreaty',2,'2023-04-20',0);
INSERT INTO alien_trade_agreement VALUES (2,'Velari','MilkyWay','2024-01-15','2029-01-15','BioSerums',2000,'VelariUnits',0.8,2,'Pending','Awaiting inspection','HumanRep2','VelariAmb2','NeutralArbiter',0,'TerranLaw',3,'2023-12-30',1);
INSERT INTO alien_trade_agreement VALUES (3,'Xelox','Triangulum','2025-09-10','2035-09-10','DarkMatter',7500,'XeloxTokens',1.5,4,'Compliant','Renewal clause added','HumanRep3','XeloxAmb3','JointCommittee',1,'GalacticCode',1,'2025-08-20',0);

-- Table for quantum laboratory experiments
CREATE TABLE quantum_lab_experiment
(
    experiment_id      INTEGER NOT NULL PRIMARY KEY,
    lab_name           TEXT,
    lead_scientist     TEXT,
    start_date         DATE,
    end_date           DATE,
    experiment_type    TEXT,
    quantum_state      TEXT,
    particles_used    INTEGER,
    equipment_list    TEXT,
    result_summary    TEXT,
    hypothesis        TEXT,
    outcome           TEXT,
    doi_reference     TEXT,
    funding_source    TEXT,
    budget_kusd       INTEGER,
    peer_reviewed     INTEGER,
    publication_status TEXT,
    data_repository   TEXT,
    reproducibility_score INTEGER,
    notes             TEXT
);

INSERT INTO quantum_lab_experiment VALUES (1,'QLabAlpha','DrNova','2023-02-01','2023-06-30','Entanglement','BellState',1000,'PhotonSource,Interferometer','Successful entanglement observed','Entanglement improves communication','Success','10.1234/qa1','NSF',500,1,'Published','RepoA',9,'Groundbreaking');
INSERT INTO quantum_lab_experiment VALUES (2,'QLabBeta','DrQuark','2024-01-15','2024-12-20','Superposition','SchrodingerCat',500,'CryogenicChamber,Lasers','Cat remained in superposition','Superposition persists at macro scale','Inconclusive','10.5678/qb2','DOE',750,0,'Pending','RepoB',5,'Further trials needed');
INSERT INTO quantum_lab_experiment VALUES (3,'QLabGamma','DrPhoton','2025-03-10','2025-09-25','QuantumTeleportation','TeleportState',200,'QuantumChannel,Detectors','Teleportation of qubit achieved','Teleportation faster than light impossible','Success','10.9012/qc3','EU',600,1,'Submitted','RepoC',8,'Promising results');

-- Table describing metahuman training modules
CREATE TABLE metahuman_training_module
(
    module_id               INTEGER NOT NULL PRIMARY KEY,
    module_name             TEXT,
    description             TEXT,
    level_required          INTEGER,
    duration_hours          INTEGER,
    trainer_id              INTEGER,
    prerequisite_module_id  INTEGER,
    skill_type              TEXT,
    max_participants        INTEGER,
    location                TEXT,
    equipment_needed        TEXT,
    assessment_method       TEXT,
    pass_rate_percent       REAL,
    created_date            DATE,
    last_revision_date      DATE,
    active                  INTEGER,
    certification_awarded   TEXT,
    feedback_score          REAL,
    cost_credits            INTEGER,
    notes                   TEXT
);

INSERT INTO metahuman_training_module VALUES (1,'FlightControl','Advanced aerial maneuvering',3,48,201,NULL,'Aerokinesis',12,'SkyDome','WindTunnels,Gliders','FlightTest',85.0,'2022-01-10','2023-02-15',1,'FlightMaster',4.5,1500,'Core module');
INSERT INTO metahuman_training_module VALUES (2,'EnergyManipulation','Channeling internal energy',5,72,202,1,'Energetics',8,'EnergyCenter','ManaCrystals,Conductors','EnergyStabilityTest',78.0,'2023-03-05','2023-09-20',1,'EnergySage',4.2,2000,'Requires prior flight module');
INSERT INTO metahuman_training_module VALUES (3,'StealthOps','Invisibility and silent movement',4,36,203,1,'Infiltration',10,'ShadowFacility','CloakDevice,Silencers','StealthRun',82.0,'2024-05-12','2024-11-01',0,'StealthExpert',3.9,1200,'Currently paused for overhaul');

-- Registry of interdimensional artifacts
CREATE TABLE interdimensional_artifact_registry
(
    artifact_id            INTEGER NOT NULL PRIMARY KEY,
    artifact_name          TEXT,
    origin_dimension       TEXT,
    discovery_date         DATE,
    discovered_by          TEXT,
    artifact_type          TEXT,
    containment_level      INTEGER,
    hazard_rating          INTEGER,
    current_location       TEXT,
    last_moved_date        DATE,
    description            TEXT,
    power_source           TEXT,
    stability_score        REAL,
    access_restriction     TEXT,
    curator_id             INTEGER,
    preservation_method    TEXT,
    catalog_number         TEXT,
    associated_events      TEXT,
    notes                  TEXT,
    status                 TEXT
);

INSERT INTO interdimensional_artifact_registry VALUES (1,'ChronoShard','Dim-7','2022-11-03','DrArcane','Temporal','5','9','VaultA','2023-01-15','Fragment emitting time ripples','QuantumFlux','0.73','HighSecurity',301,'Cryogenic','CS-001','EventA','Handle with care','Active');
INSERT INTO interdimensional_artifact_registry VALUES (2,'VoidCrystal','Dim-12','2023-06-21','DrEclipse','Spatial','4','7','VaultB','2023-07-10','Crystal that distorts space','DarkMatter','0.65','MediumSecurity',302,'Encapsulation','VC-042','EventB','Requires periodic recalibration','Active');
INSERT INTO interdimensional_artifact_registry VALUES (3,'Aetherium','Dim-3','2024-02-14','DrNimbus','Energy','3','5','VaultC','2024-03-05','Luminescent energy core','Aether','0.88','LowSecurity',303,'MagneticContainment','AE-777','EventC','Stable under current conditions','UnderStudy');

-- Schedule for starship maintenance
CREATE TABLE starship_maintenance_schedule
(
    schedule_id         INTEGER NOT NULL PRIMARY KEY,
    starship_name       TEXT,
    maintenance_type    TEXT,
    scheduled_start     DATE,
    scheduled_end       DATE,
    responsible_engineer TEXT,
    dock_location       TEXT,
    parts_required      TEXT,
    estimated_hours     INTEGER,
    actual_hours        INTEGER,
    cost_credits        INTEGER,
    downtime_hours      INTEGER,
    safety_rating       INTEGER,
    approval_status     TEXT,
    notes               TEXT,
    completed           INTEGER,
    last_inspection_date DATE,
    next_inspection_due DATE,
    compliance_checklist TEXT,
    audit_trail         TEXT
);

INSERT INTO starship_maintenance_schedule VALUES (1,'SSVInfinity','EngineOverhaul','2025-01-10','2025-02-05','EngTech01','DockAlpha','TurboPump,HeatExchanger',200,195,5000,120,9,'Approved','Routine overhaul',1,'2024-12-01','2025-12-01','ChecklistV1','Audit001');
INSERT INTO starship_maintenance_schedule VALUES (2,'USSValor','HullRepair','2025-03-15','2025-04-01','EngTech02','DockBeta','NanofiberPanels',150,160,3000,80,8,'Pending','Minor hull breach',0,'2025-02-20','2026-02-20','ChecklistV2','Audit002');
INSERT INTO starship_maintenance_schedule VALUES (3,'GalaxyRunner','AvionicsUpgrade','2025-06-20','2025-07-10','EngTech03','DockGamma','NavComps,SignalArray',180,0,4000,100,7,'Approved','Upgrade navigation suite',0,'2025-05-30','2026-05-30','ChecklistV3','Audit003');

-- Council overseeing galaxy-wide diplomacy
CREATE TABLE galaxy_diplomacy_council
(
    council_id               INTEGER NOT NULL PRIMARY KEY,
    council_name             TEXT,
    formation_date           DATE,
    member_count             INTEGER,
    headquarters_location    TEXT,
    chairperson              TEXT,
    secretariat_head         TEXT,
    meeting_frequency        TEXT,
    current_term_years       INTEGER,
    budget_million           INTEGER,
    jurisdiction_scope       TEXT,
    diplomatic_mandate       TEXT,
    treaty_signed            INTEGER,
    resolutions_passed       INTEGER,
    active                   INTEGER,
    contact_email            TEXT,
    official_website         TEXT,
    last_meeting_date        DATE,
    next_meeting_date        DATE,
    public_statement         TEXT
);

INSERT INTO galaxy_diplomacy_council VALUES (1,'Intergalactic Council','2100-01-01',50,'CorePlanet','AstraPrime','LunaSilva','Quarterly',5,2000,'All Sectors','Peacekeeping',120,95,1,'contact@igc.org','www.igc.org','2102-06-15','2102-09-15','Commitment to harmony');
INSERT INTO galaxy_diplomacy_council VALUES (2,'Solar Union Council','2120-05-12',30,'Helios','Solaris','Virena','Biannual',4,1500,'Solar Systems','Trade Regulation',80,70,1,'info@solarunion.org','www.solarunion.org','2121-03-10','2121-09-10','Promote solar trade');
INSERT INTO galaxy_diplomacy_council VALUES (3,'Outer Rim Alliance','2150-09-20',20,'RimStation','Nebula','KaraZen','Annual',3,1000,'Outer Rim','Security Cooperation',45,30,0,'admin@outerrim.org','www.outerrim.org','2152-01-05','2153-01-05','Strengthening border defenses');

-- Inventory of bioverse species records
CREATE TABLE bioverse_species_inventory
(
    inventory_id          INTEGER NOT NULL PRIMARY KEY,
    species_name          TEXT,
    classification         TEXT,
    habitat               TEXT,
    average_lifespan_years INTEGER,
    population_estimate   INTEGER,
    conservation_status   TEXT,
    discovery_year        INTEGER,
    discovered_by         TEXT,
    genetic_sequence_id   TEXT,
    bio_signature         TEXT,
    diet_type             TEXT,
    reproductive_mode     TEXT,
    threat_level          INTEGER,
    protective_measures   TEXT,
    research_institution  TEXT,
    sample_collected      INTEGER,
    DNA_sample_id         TEXT,
    notes                 TEXT,
    last_updated          DATE
);

INSERT INTO bioverse_species_inventory VALUES (1,'Xenopod','Mollusk','Swamp',12,5000,'Endangered',2095,'DrKline','GS-001','SigX1','Herbivore','Oviparous',3,'ReserveZone','UniBioLab',1,'DNA-1001','Sensitive to temperature','2100-04-01');
INSERT INTO bioverse_species_inventory VALUES (2,'Lumifera','Avian','Canopy',8,12000,'Vulnerable',2102,'DrMira','GS-002','SigL2','Omnivore','LiveBirth',2,'ProtectedArea','EcoResearchCenter',0,NULL,'No current samples','2105-07-12');
INSERT INTO bioverse_species_inventory VALUES (3,'Aquarion','Fish','Coral Reef',5,25000,'LeastConcern',2080,'DrRex','GS-003','SigA3','Carnivore','EggLaying',1,'MarinePark','OceanicInstitute',1,'DNA-3003','Abundant in surveyed zones','2099-11-20');

-- Reports of temporal anomalies
CREATE TABLE temporal_anomaly_report
(
    report_id               INTEGER NOT NULL PRIMARY KEY,
    anomaly_name            TEXT,
    detection_date          DATE,
    detected_by             TEXT,
    anomaly_type            TEXT,
    severity_level          INTEGER,
    duration_seconds        INTEGER,
    affected_regions        TEXT,
    timeline_shift_years    INTEGER,
    causality_hypothesis    TEXT,
    mitigation_attempts     TEXT,
    outcome                 TEXT,
    follow_up_required      INTEGER,
    responsible_team        TEXT,
    budget_allocated        INTEGER,
    status                  TEXT,
    last_review_date        DATE,
    comments                TEXT,
    reference_documents     TEXT,
    archived                INTEGER
);

INSERT INTO temporal_anomaly_report VALUES (1,'ChronoRipple','2125-03-10','SensorArray01','TimeLoop',4,86400,'Sector7','2','QuantumFluctuation','PhaseShift','Contained',1,'AnomalyTeamA',5000,'Open','2125-04-01','Monitoring ongoing','DocA1','0');
INSERT INTO temporal_anomaly_report VALUES (2,'EpochShift','2126-07-22','ProbeDelta','TimeDilation',5,172800,'Sector12','5','DarkEnergySpike','TemporalShield','Escalated',1,'AnomalyTeamB',8000,'Investigating','2126-08-15','High impact','DocB2','0');
INSERT INTO temporal_anomaly_report VALUES (3,'ReverseFlow','2127-11-05','ObserverX','ReverseChronology',3,43200,'Sector3','-1','MirrorUniverse','ReversalField','Resolved',0,'AnomalyTeamC',3000,'Closed','2127-12-01','No recurrence','DocC3','1');