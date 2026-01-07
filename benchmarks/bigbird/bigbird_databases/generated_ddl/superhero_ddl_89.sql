-- Interstellar mission logs
CREATE TABLE interstellar_mission_log
(
    mission_id                INTEGER NOT NULL PRIMARY KEY,
    mission_name              TEXT,
    launch_date               DATE,
    destination_planet        TEXT,
    spacecraft_name           TEXT,
    commander_name            TEXT,
    crew_size                 INTEGER,
    mission_duration_days     INTEGER,
    objective_summary         TEXT,
    status                    TEXT,
    budget_million            INTEGER,
    fuel_type                 TEXT,
    propulsion_system         TEXT,
    launch_site               TEXT,
    orbit_type                TEXT,
    scientific_payload        TEXT,
    communication_band        TEXT,
    risk_level                TEXT,
    notes                     TEXT,
    data_archive_link         TEXT
);

INSERT INTO interstellar_mission_log VALUES (1,'AlphaVoyager','2125-04-12','Xenon','StarRunner','DrKane',12,180,'Explore mineral deposits','Success',450,'Hydrogen','IonDrive','LunaBase','Elliptical','GeoSpectrometer','XBand','Medium','None','http://archive/alpha');
INSERT INTO interstellar_mission_log VALUES (2,'BetaQuest','2130-09-05','Eldara','NovaSerpent','CmdLiu',8,95,'Survey atmospheric composition','PartialSuccess',300,'Antimatter','WarpCore','MarsPort','Hyperbolic','AtmosAnalyser','KaBand','High','Minor radiation spikes','http://archive/beta');
INSERT INTO interstellar_mission_log VALUES (3,'GammaReach','2140-01-20','OrionPrime','CosmicHarbor','CaptRosa',20,400,'Establish trading outpost','InProgress',720,'Deuterium','FusionDrive','EarthStation','Circular','HabitatModule','SBand','Low','Logistics pending','http://archive/gamma');

-- Galactic trade agreement details
CREATE TABLE galactic_trade_agreement_detail
(
    agreement_id                     INTEGER NOT NULL PRIMARY KEY,
    agreement_name                   TEXT,
    signing_date                     DATE,
    effective_date                   DATE,
    expiry_date                      DATE,
    parties_involved                 TEXT,
    trade_goods                      TEXT,
    tariff_rate_percent              INTEGER,
    volume_million                   INTEGER,
    currency                         TEXT,
    dispute_resolution_mechanism     TEXT,
    confidentiality_clause           TEXT,
    amendment_count                  INTEGER,
    governing_law                    TEXT,
    signature_authority              TEXT,
    compliance_status                TEXT,
    audit_frequency_months           INTEGER,
    remarks                          TEXT,
    document_link                    TEXT,
    digital_signature_hash           TEXT
);

INSERT INTO galactic_trade_agreement_detail VALUES (101,'Solaris Accord','2120-03-10','2120-04-01','2220-04-01','TerranUnion|LunarConsortium','Titanium|QuantumCircuits',5,2500,'Galactocred','ArbitrationPanel','Yes',2,'TerranLaw','PresidentNova','Compliant',12,'Renewable clauses added','http://docs/solaris','abc123def456');
INSERT INTO galactic_trade_agreement_detail VALUES (102,'Nebula Pact','2135-07-22','2135-08-01','2235-08-01','AstraCoalition|ZenithAlliance','Plasma|BioFuel',3,1800,'Nebulacoin','MediationCouncil','No',1,'NebulaStatute','ChancellorZara','Pending',6,'Review upcoming','http://docs/nebula','def789ghi012');
INSERT INTO galactic_trade_agreement_detail VALUES (103,'Orion Treaty','2145-11-15','2145-12-01','2245-12-01','OrionFederation|CygniLeague','Alloys|Nanomaterials',4,3200,'OrionCredit','JointCommittee','Yes',0,'OrionCode','EmpressLuna','Compliant',9,'All terms active','http://docs/orion','ghi345jkl678');

-- Cosmic event observations
CREATE TABLE cosmic_event_observation
(
    event_id                INTEGER NOT NULL PRIMARY KEY,
    event_name              TEXT,
    observation_date        DATE,
    observed_by             TEXT,
    telescope_id            INTEGER,
    wavelength_range        TEXT,
    magnitude               REAL,
    duration_seconds        INTEGER,
    coordinates_ra          TEXT,
    coordinates_dec         TEXT,
    instrument_settings     TEXT,
    data_quality            TEXT,
    processing_software     TEXT,
    archive_location        TEXT,
    notes                   TEXT,
    associated_publication  TEXT,
    funding_source          TEXT,
    exposure_time_seconds   INTEGER,
    filter_used             TEXT,
    observer_contact        TEXT
);

INSERT INTO cosmic_event_observation VALUES (201,'SupernovaX','2128-06-14','DrVega',12,'400-700nm',-19.5,86400,'12h30m','-45d20m','HighGain','Excellent','SpecReduce','/archive/supernovax','Bright peak observed','AstroJournal','GalacticScienceFund',1200,'Broadband','vega@astro.org');
INSERT INTO cosmic_event_observation VALUES (202,'GammaRayBurstY','2132-02-03','ProfKhan',7,'10-100keV',-14.2,3600,'22h10m','+12d45m','FastTrigger','Good','BurstAnalyser','/archive/grby','Short duration high energy','SpacePhysics','StarGazerGrant',500,'GammaFilter','khan@space.edu');
INSERT INTO cosmic_event_observation VALUES (203,'QuasarZ','2141-12-21','DrLuna',3,'1000-3000nm',15.0,259200,'03h55m','-22d15m','DeepField','Fair','QuasarFit','/archive/quasarz','Steady flux over days','CosmicReviews','DeepSpaceNow',1800,'Infrared','luna@observatory.net');

-- Metahuman clinic records
CREATE TABLE metahuman_clinic_record
(
    record_id               INTEGER NOT NULL PRIMARY KEY,
    subject_id              INTEGER,
    full_name               TEXT,
    date_of_birth           DATE,
    gender                  TEXT,
    metahuman_class         TEXT,
    registration_date       DATE,
    primary_physician       TEXT,
    blood_type              TEXT,
    allergy_info            TEXT,
    chronic_conditions      TEXT,
    medication_list         TEXT,
    last_visit_date         DATE,
    visit_reason            TEXT,
    treatment_plan          TEXT,
    followup_date           DATE,
    notes                   TEXT,
    insurance_provider      TEXT,
    policy_number           TEXT,
    emergency_contact       TEXT
);

INSERT INTO metahuman_clinic_record VALUES (301,501,'Alex Mercer','1995-07-21','Male','Shifter', '2120-01-10','DrHelix','O+','None','Hypertension','BetaBlocker', '2125-03-05','Routine check','Diet and exercise','2125-09-05','Stable condition','HealthCorp','HC123456','JaneMercer 5551234');
INSERT INTO metahuman_clinic_record VALUES (302,502,'Lina Storm','2001-11-03','Female','Stormcaller', '2122-04-18','DrTempest','A-','Dust','Asthma','Inhaler', '2126-07-12','Pulmonary assessment','Medication adjustment','2126-10-12','Improved airflow','MediLife','ML987654','CarlosStorm 5555678');
INSERT INTO metahuman_clinic_record VALUES (303,503,'Ryo Kage','1988-02-14','Male','Shadow', '2119-09-25','DrShade','B+','None','Insomnia','Melatonin', '2124-11-20','Sleep study','Cognitive therapy','2125-02-20','Sleep pattern normalized','SecureHealth','SH555111','MikaKage 5559999');

-- Alien species habitat profiles
CREATE TABLE alien_species_habitat_profile
(
    habitat_id               INTEGER NOT NULL PRIMARY KEY,
    species_name             TEXT,
    planet_name              TEXT,
    region                   TEXT,
    climate_type             TEXT,
    dominant_vegetation      TEXT,
    average_temperature_c    INTEGER,
    atmospheric_composition  TEXT,
    gravity_m_s2             REAL,
    water_availability       TEXT,
    predator_presence        TEXT,
    symbiotic_species        TEXT,
    nesting_site             TEXT,
    population_estimate      INTEGER,
    conservation_status      TEXT,
    discovery_year           INTEGER,
    research_lead            TEXT,
    habitat_coordinates      TEXT,
    environmental_threats    TEXT,
    protection_measures      TEXT
);

INSERT INTO alien_species_habitat_profile VALUES (401,'Zylox','Xenora','Northern Basin','Arid','SilicaFerns',-15,'CO2 92% N2 5% Argon 3%',0.8,'Sparse','None','None','CaveSystems',12000,'Endangered',2080,'DrQuinn','-12.4,34.7','DustStorms','ProtectedReserve');
INSERT INTO alien_species_habitat_profile VALUES (402,'Melara','Aquaria','Coral Reef','Temperate','Algae','22','O2 78% N2 20% CO2 2%',1.05,'Abundant','Sharkoid','CleanerShrimp','ReefCavities',850000,'Stable',2095,'ProfLena','45.2,-23.1','Bleaching','MarineSanctuary');
INSERT INTO alien_species_habitat_profile VALUES (403,'Gorath','TerranPrime','Mountain Range','Cold','Moss','5','N2 78% O2 21% Argon 1%',1.2,'Seasonal','EagleBeast','Lichen','RockCrevices',3000,'Vulnerable',2075,'DrHolt','78.9,12.3','Landslides','ConservationArea');

-- Renewable energy project funds
CREATE TABLE renewable_energy_project_fund
(
    fund_id                  INTEGER NOT NULL PRIMARY KEY,
    project_name             TEXT,
    start_date               DATE,
    end_date                 DATE,
    total_budget_million     INTEGER,
    funding_source           TEXT,
    renewable_type           TEXT,
    capacity_mw              INTEGER,
    location                 TEXT,
    coordinator_name         TEXT,
    partner_organizations    TEXT,
    compliance_certifications TEXT,
    expected_generation_gwh  INTEGER,
    risk_assessment          TEXT,
    milestones               TEXT,
    performance_index        INTEGER,
    final_report_link        TEXT,
    audit_status             TEXT,
    last_audit_date          DATE,
    notes                    TEXT
);

INSERT INTO renewable_energy_project_fund VALUES (501,'Solaris Plains','2123-05-01','2128-04-30',250,'SolarUnion','Solar',500,'Helios Valley','MaraSun','SolarTech|EcoGrid','ISO14001',4000,'Low','Phase1Complete|Phase2InProgress',92,'http://reports/solaris','Passed','2128-05-15','On schedule');
INSERT INTO renewable_energy_project_fund VALUES (502,'Windward Ridge','2125-09-15','2130-09-14',180,'WindConsortium','Wind',300,'Zephyr Heights','LiamGale','WindWorks|AeroFlow','ISO9001',3500,'Medium','TurbineInstallation|GridLink',88,'http://reports/windward','Pending','2130-10-01','Awaiting final inspection');
INSERT INTO renewable_energy_project_fund VALUES (503,'HydroFlux Dam','2130-01-10','2135-12-31',320,'HydroAlliance','Hydro',400,'RiverDelta','AnaCurrent','AquaPower|FlowSystems','ISO50001',4600,'High','Excavation|TurbineSetup',85,'http://reports/hydroflux','Failed','2136-01-20','Cost overruns noted');

-- Quantum computing job queue
CREATE TABLE quantum_computing_job_queue
(
    job_id                   INTEGER NOT NULL PRIMARY KEY,
    job_name                 TEXT,
    submitter                TEXT,
    submit_date              DATE,
    target_qubits            INTEGER,
    algorithm_type           TEXT,
    estimated_runtime_seconds INTEGER,
    priority_level           TEXT,
    status                   TEXT,
    compute_node_id          INTEGER,
    allocated_time_seconds   INTEGER,
    memory_gb                INTEGER,
    result_url               TEXT,
    error_log                TEXT,
    checksum                 TEXT,
    supervisor               TEXT,
    approval_status          TEXT,
    sla_deadline             DATE,
    notes                    TEXT,
    cost_credits             INTEGER
);

INSERT INTO quantum_computing_job_queue VALUES (601,'FactoringLarge','DrEuler','2129-03-11',64,'Shor',7200,'High','Running',12,7200,128,'http://results/factoring64','None','a1b2c3','DrEuler','Approved','2129-03-12','Critical for cryptanalysis',500);
INSERT INTO quantum_computing_job_queue VALUES (602,'MoleculeSim','ProfFeyn','2131-07-22',32,'VQE',5400,'Medium','Queued',15,0,64,'','Pending','d4e5f6','ProfFeyn','Pending','2131-08-01','Awaiting node availability',300);
INSERT INTO quantum_computing_job_queue VALUES (603,'OptimizationX','DrKita','2133-11-05',48,'QAOA',3600,'Low','Completed',9,3600,96,'http://results/opt48','None','g7h8i9','DrKita','Approved','2133-11-06','Successful run',400);

-- Artifact provenance logs
CREATE TABLE artifact_provenance_log
(
    artifact_id              INTEGER NOT NULL PRIMARY KEY,
    artifact_name            TEXT,
    discovery_date           DATE,
    discoverer               TEXT,
    origin_civilization      TEXT,
    material                 TEXT,
    dimensions_cm            TEXT,
    weight_grams             INTEGER,
    current_location         TEXT,
    acquisition_method       TEXT,
    legal_status             TEXT,
    provenance_chain         TEXT,
    last_conservation_date   DATE,
    condition_grade          TEXT,
    insurance_value_usd      INTEGER,
    exhibition_history       TEXT,
    catalog_reference        TEXT,
    restricted_access        TEXT,
    notes                    TEXT,
    digital_record_link      TEXT
);

INSERT INTO artifact_provenance_log VALUES (701,'Star Blade','2085-04-12','ArcheoTeamA','Zylox Empire','Titanium Alloy','120x30x5','4500','Galactic Museum','Excavation','Clear','TeamA->CuratorB->Museum', '2100-06-01','Excellent',2500000,'Expo2020|Expo2025','SB-2085','No','Fully restored','http://digital/starblade');
INSERT INTO artifact_provenance_log VALUES (702,'Crystal Orb','2093-09-30','DrMira','Lunari Clan','Quartz','40x40x40','2000','Luna Observatory','Donation','Clear','DonorX->Observatory', '2110-12-15','Good',1200000','Expo2018','CO-2093','Yes','Requires climate control','http://digital/crystalorb');
INSERT INTO artifact_provenance_log VALUES (703,'Ancient Tablet','2101-02-20','ExcavTeamZ','Terran Ancients','Stone','30x20x5','3500','History Archive','Purchase','Clear','CollectorY->Archive', '2122-03-10','Fair',800000','Expo2019|Expo2022','AT-2101','No','Minor surface erosion','http://digital/ancienttablet');

-- Multiverse policy documents
CREATE TABLE multiverse_policy_document
(
    policy_id                INTEGER NOT NULL PRIMARY KEY,
    policy_title             TEXT,
    version                  INTEGER,
    effective_date           DATE,
    review_cycle_months      INTEGER,
    authoring_body           TEXT,
    summary                  TEXT,
    applicability_scope      TEXT,
    enforcement_mechanism    TEXT,
    amendment_history        TEXT,
    compliance_requirements  TEXT,
    penalties                TEXT,
    related_regulations      TEXT,
    stakeholder_feedback     TEXT,
    approval_date            DATE,
    approver_name            TEXT,
    status                   TEXT,
    distribution_channels    TEXT,
    document_url             TEXT,
    notes                    TEXT
);

INSERT INTO multiverse_policy_document VALUES (801,'Interdimensional Trade Regulation','1','2120-01-01','24','Multiverse Trade Council','Regulates trade across dimensions','All member realms','Sanctions','v1.0','Licensing required','Fines up to 1M credits','DimensionCodeA','Positive','2120-02-01','ChancellorVox','Active','SecurePortal|PublicRepo','http://policies/trade','Initial release');
INSERT INTO multiverse_policy_document VALUES (802,'Meta-Entity Conduct Guidelines','2','2130-06-15','12','Meta Governance Board','Sets conduct standards for meta-entities','Meta-entities only','Revocation','v1.1|v1.2','Audit annually','Suspension','MetaCodeB','Mixed','2130-07-01','SpeakerLuna','Active','InternalNetwork','http://policies/conduct','Updated after review');
INSERT INTO multiverse_policy_document VALUES (803,'Quantum Energy Allocation Policy','3','2140-03-20','36','Quantum Energy Authority','Allocates quantum energy resources','All quantum facilities','Quota system','v2.0','Reporting quarterly','Penalty credits','QuantumRegulationX','Positive','2140-04-05','DirectorQuark','Draft','RestrictedAccess','http://policies/quantum','Prepared for upcoming council');

-- Fan community forum activity
CREATE TABLE fan_community_forum_activity
(
    activity_id              INTEGER NOT NULL PRIMARY KEY,
    forum_id                 INTEGER,
    thread_id                INTEGER,
    user_id                  INTEGER,
    username                 TEXT,
    post_date                DATE,
    post_time                TEXT,
    content_type             TEXT,
    content_summary          TEXT,
    likes                    INTEGER,
    replies                  INTEGER,
    reported_flag            TEXT,
    moderation_status        TEXT,
    moderator_id             INTEGER,
    edit_count               INTEGER,
    ip_address               TEXT,
    device_type              TEXT,
    browser                  TEXT,
    location                 TEXT,
    thread_category          TEXT
);

INSERT INTO fan_community_forum_activity VALUES (901,10,2001,5001,'HeroFan99','2125-08-12','14:23:05','Text','Excited for new movie','150','30','No','Approved',301,'2','192.168.1.10','Desktop','Chrome','NewYork','Announcements');
INSERT INTO fan_community_forum_activity VALUES (902,10,2002,5002,'VillainLover','2125-08-13','09:11:47','Image','Fan art of dark knight','85','12','No','Approved',302,'0','192.168.1.11','Mobile','Firefox','LosAngeles','FanArt');
INSERT INTO fan_community_forum_activity VALUES (903,11,3001,5003,'CosmicCritic','2125-08-14','22:45:19','Link','Review of latest crossover','200','45','Yes','Pending',303,'1','192.168.1.12','Tablet','Safari','Chicago','Reviews');