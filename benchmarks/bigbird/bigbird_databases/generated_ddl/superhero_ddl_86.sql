-- Table storing details of quantum entanglement relays used for interstellar communication
CREATE TABLE quantum_entanglement_relay
(
    id INTEGER PRIMARY KEY,
    relay_name TEXT,
    activation_date DATE,
    current_status TEXT,
    host_facility TEXT,
    operating_agency TEXT,
    frequency_hz INTEGER,
    transmission_power_watts INTEGER,
    bandwidth_mhz INTEGER,
    orbit_type TEXT,
    inclination_deg INTEGER,
    eccentricity REAL,
    mission_duration_days INTEGER,
    last_calibration DATE,
    software_version TEXT,
    hardware_revision TEXT,
    storage_capacity_gb INTEGER,
    latitude_deg REAL,
    longitude_deg REAL,
    operational_notes TEXT
);

INSERT INTO quantum_entanglement_relay VALUES (1,'QERelayAlpha','2025-01-15','active','LunaBase','SpaceComm','4500000000','1200','250','geostationary',0,0.0,3650,'2026-12-01','v2.3','revB',500,'0.0','0.0','initial deployment');
INSERT INTO quantum_entanglement_relay VALUES (2,'QERelayBeta','2026-03-20','maintenance','MarsStation','OrbitalNet','4600000000','1300','260','polar',90,0.01,2000,'2027-06-15','v2.4','revC',750,'-4.5','137.8','scheduled antenna upgrade');
INSERT INTO quantum_entanglement_relay VALUES (3,'QERelayGamma','2027-07-10','active','EuropaOutpost','DeepSpaceLink','4700000000','1400','270','sun-synchronous',98,0.005,1800,'2028-01-30','v2.5','revA',600,'-22.3','45.9','stable performance');

-- Table storing records of bioverse genetic repositories
CREATE TABLE bioverse_genetic_repository
(
    id INTEGER PRIMARY KEY,
    repository_name TEXT,
    establishment_date DATE,
    managing_authority TEXT,
    location_city TEXT,
    location_country TEXT,
    storage_capacity_tb INTEGER,
    specimen_count INTEGER,
    sequencing_technology TEXT,
    data_access_level TEXT,
    compliance_cert TEXT,
    last_audit DATE,
    curator_name TEXT,
    contact_email TEXT,
    backup_frequency_days INTEGER,
    redundancy_factor INTEGER,
    climate_control_type TEXT,
    power_supply_type TEXT,
    average_temperature_c REAL,
    humidity_percent REAL,
    notes TEXT
);

INSERT INTO bioverse_genetic_repository VALUES (1,'GenBankPrime','2020-05-01','BioverseInstitute','GeneCity','Utopia','2000','350000','nanopore','restricted','ISO27001','2025-03-12','DrSmith','drsmith@bioverse.org',30,3,'cryogenic','solar','-80.5','25.0','primary facility');
INSERT INTO bioverse_genetic_repository VALUES (2,'EcoGenomeHub','2022-11-15','EcoGenLab','EcoVille','Arcadia','1500','210000','illumina','public','ISO9001','2026-07-08','DrLee','drlee@ecogen.org',15,2,'temperature-controlled','grid','4.0','45.5','expanded storage in 2024');
INSERT INTO bioverse_genetic_repository VALUES (3,'MarineDNAArchive','2024-02-20','MarineResearchCenter','OceanSide','Atlantis','1800','275000','pacbio','restricted','ISO27001','2025-12-20','DrKhan','drkhan@marinedna.org',45,4,'liquid nitrogen','hydro','-196.0','30.0','new cold storage wing');

-- Table storing cosmic radiation shield specifications for spacecraft
CREATE TABLE cosmic_radiation_shield
(
    id INTEGER PRIMARY KEY,
    shield_model TEXT,
    manufacturer TEXT,
    deployment_date DATE,
    material_type TEXT,
    thickness_mm REAL,
    mass_kg REAL,
    effectiveness_percent REAL,
    compatible_vessel_type TEXT,
    max_operational_temp_c REAL,
    min_operational_temp_c REAL,
    radiation_type_supported TEXT,
    testing_phase TEXT,
    certification_code TEXT,
    warranty_years INTEGER,
    maintenance_interval_days INTEGER,
    coating_type TEXT,
    installation_location TEXT,
    notes TEXT,
    last_inspection DATE,
    inspected_by TEXT
);

INSERT INTO cosmic_radiation_shield VALUES (1,'ShieldX1','StarShieldCorp','2023-09-05','graphene','10.5','250.0','98.5','interstellar cruiser','500','-150','galactic','flight','SR-2023','5','180','ceramic','hull','initial rollout','2025-01-10','EngTechA');
INSERT INTO cosmic_radiation_shield VALUES (2,'ShieldZ9','QuantumDefenses','2025-04-12','titanium-alloy','12.0','300.0','96.0','deep- space probe','600','-200','cosmic','prototype','QD-2025','3','365','polymer','payload bay','testing phase','2025-12-01','EngTechB');
INSERT INTO cosmic_radiation_shield VALUES (3,'ShieldM3','NebulaShield','2026-01-20','boron-carbon','9.8','220.0','97.2','cargo freighter','550','-180','solar','production','NS-2026','4','250','nanocoating','inner hull','standard issue','2026-06-15','EngTechC');

-- Table storing details of multiversal regulation bodies
CREATE TABLE multiversal_regulation_body
(
    id INTEGER PRIMARY KEY,
    body_name TEXT,
    jurisdiction_scope TEXT,
    founding_date DATE,
    headquarters_city TEXT,
    headquarters_planet TEXT,
    member_count INTEGER,
    voting_mechanism TEXT,
    primary_legislation TEXT,
    budget_million_usd INTEGER,
    chairperson_name TEXT,
    contact_email TEXT,
    website_url TEXT,
    treaty_signing_date DATE,
    enforcement_power TEXT,
    meeting_frequency TEXT,
    language_of_record TEXT,
    secretariat_head TEXT,
    archive_location TEXT,
    notes TEXT,
    last_amendment DATE,
    amendment_number INTEGER
);

INSERT INTO multiversal_regulation_body VALUES (1,'CouncilOfContinuums','multiversal','2100-01-01','NovaPrime','Xenon','125','supermajority','Continuum Charter','5000','Aria Velor','aria.velor@coc.org','www.coc.org','2100-02-15','binding','annual','Universal','Liam Korr','VaultAlpha','established after Treaty of Unity','2105-03-10','2');
INSERT INTO multiversal_regulation_body VALUES (2,'Interdimensional Accord Committee','interdimensional','2150-06-10','EchoBase','Zeta','80','simple majority','Dimensional Accord','3200','Mara Vex','mara.vex@iac.org','www.iac.org','2150-07-01','conditional','semiannual','Multiversal','Ethan Yoon','VaultBeta','focus on portal standards','2155-08-20','1');
INSERT INTO multiversal_regulation_body VALUES (3,'Galactic Trade Federation Council','galactic','2200-09-30','Helios','Orion','200','two‑thirds','Galactic Trade Code','7200','Dax Ryl','dax.ryl@gftc.org','www.gftc.org','2200-10-15','economic sanctions','quarterly','Galactic Common','Sofia Lark','VaultGamma','oversees trade routes','2205-11-05','3');

-- Table storing schedules for nanotech deployment missions
CREATE TABLE nanotech_deployment_schedule
(
    id INTEGER PRIMARY KEY,
    mission_name TEXT,
    launch_window_start DATE,
    launch_window_end DATE,
    target_body TEXT,
    deployment_site TEXT,
    nanomaterial_type TEXT,
    payload_mass_kg INTEGER,
    propulsion_method TEXT,
    expected_operational_lifespan_years INTEGER,
    primary_scientist TEXT,
    collaboration_partner TEXT,
    budget_million_usd INTEGER,
    risk_assessment_level TEXT,
    regulatory_approval_status TEXT,
    communication_band TEXT,
    telemetry_frequency_hz INTEGER,
    ground_station TEXT,
    status TEXT,
    notes TEXT,
    last_update DATE,
    updated_by TEXT
);

INSERT INTO nanotech_deployment_schedule VALUES (1,'NanoSeedingMars','2030-03-01','2030-03-10','Mars','OlympusMare','self‑assembling','1500','chemical','10','DrRhea','MarsTech','250','medium','approved','X‑band','2250000','DeepSpaceStation','scheduled','first mission to seed nanostructures','2030-02-20','MissionCtrlA');
INSERT INTO nanotech_deployment_schedule VALUES (2,'QuantumDustVenus','2032-07-15','2032-07-25','Venus','AphroditeHighlands','quantum‑dot','1200','electric','8','DrKade','VenusLabs','180','high','pending','Ka‑band','2400000','OrbitalRelay','delayed','awaiting final safety review','2032-06-30','MissionCtrlB');
INSERT INTO nanotech_deployment_schedule VALUES (3,'NanoGridEuropa','2035-11-05','2035-11-15','Europa','IceCanyon','graphene‑foam','1700','fusion','12','DrLyra','EuropaScience','300','low','approved','S‑band','2100000','IceStation','planned','aim to create conductive lattice','2035-10-20','MissionCtrlC');

-- Table storing logs of artifact provenance
CREATE TABLE artifact_provenance_log
(
    id INTEGER PRIMARY KEY,
    artifact_id TEXT,
    artifact_name TEXT,
    discovered_by TEXT,
    discovery_date DATE,
    origin_civilization TEXT,
    material_composition TEXT,
    initial_location TEXT,
    current_holder TEXT,
    acquisition_method TEXT,
    valuation_usd INTEGER,
    legal_status TEXT,
    export_permit_number TEXT,
    import_permit_number TEXT,
    conservation_status TEXT,
    last_restoration_date DATE,
    curator_responsible TEXT,
    exhibit_history TEXT,
    loan_status TEXT,
    insurance_policy_number TEXT,
    notes TEXT,
    record_created DATE,
    created_by TEXT
);

INSERT INTO artifact_provenance_log VALUES (1,'AR-0001','Celestial Scepter','DrMira','2245-04-12','Eldar','unknown alloy','Starlight Ruins','Intergalactic Museum','excavation','5000000','protected','EXP-8742','IMP-1290','stable','2250-06-01','CuratorA','ExhibitA; ExhibitB','not on loan','INS-456789','displayed in hall of antiquities','2245-05-01','ArchivistX');
INSERT INTO artifact_provenance_log VALUES (2,'AR-0002','Void Mirror','ArcheoBot-7','2260-09-30','Voidkin','crystalline','Void Rift','Celestial Archive','recovery','3200000','restricted','EXP-9034','IMP-1402','fragile','2265-02-15','CuratorB','ExhibitC','on loan','INS-987654','currently on loan to Lunar Gallery','2260-10-10','ArchivistY');
INSERT INTO artifact_provenance_log VALUES (3,'AR-0003','Chrono Dial','ProfTane','2275-01-20','Chronomancers','temporal alloy','Temporal Nexus','Chrono Institute','donation','7500000','public domain','EXP-1023','IMP-1520','excellent','2280-03-22','CuratorC','ExhibitD; ExhibitE','not on loan','INS-112233','used in time‑study research','2275-02-02','ArchivistZ');

-- Table storing records of galactic diplomacy events
CREATE TABLE galactic_diplomacy_event
(
    id INTEGER PRIMARY KEY,
    event_name TEXT,
    event_date DATE,
    host_planet TEXT,
    host_faction TEXT,
    participating_factions TEXT,
    agenda_summary TEXT,
    outcome TEXT,
    treaty_signed BOOLEAN,
    treaty_name TEXT,
    meeting_duration_hours INTEGER,
    location_coordinates TEXT,
    security_level TEXT,
    media_coverage TEXT,
    official_report_link TEXT,
    budget_million_usd INTEGER,
    sponsor_organization TEXT,
    attendance_count INTEGER,
    notable_speakers TEXT,
    follow_up_actions TEXT,
    notes TEXT,
    record_created DATE,
    created_by TEXT
);

INSERT INTO galactic_diplomacy_event VALUES (1,'Summit of the Spheres','2300-05-14','Zyra','Zyrian Council','Zyrian Council; Helion Union; Titan Confederacy','trade routes and mutual defense','joint patrol agreement',TRUE,'Spherical Accord',48,'X:123 Y:456 Z:789','high','global broadcast','www.galacticnews.org/summit2020',1200,'Unified Trade Guild',350,'Ambassador Kira; Envoy Lumen','establish quarterly meetings','recorded in interstellar archives','2300-05-20','DiplomatA');
INSERT INTO galactic_diplomacy_event VALUES (2,'Treaty of Nebulae','2310-11-02','Nebulon','Nebulon Council','Nebulon Council; Aurora Pact','resource sharing','resource allocation schedule established',TRUE,'Nebula Resource Treaty',36,'X:321 Y:654 Z:987','medium','regional channels','www.nebulae.org/treaty',800,'Resource Alliance',200,'Chief Minister Vara; Ambassador Sel','implement shared mining protocols','documented in planetary council minutes','2310-11-10','DiplomatB');
INSERT INTO galactic_diplomacy_event VALUES (3,'Council of Dawn','2325-03-22','Aurora Prime','Aurora Directorate','Aurora Directorate; Solar Collective; Lunar Federation','energy exchange','agreement to exchange solar and lunar energy',FALSE,'',24,'X:111 Y:222 Z:333','low','limited webcast','www.dawncouncil.org/report',450,'Energy Consortium',150,'Director Helios; Senator Luna','schedule follow‑up webinars','brief summary released publicly','2325-03-28','DiplomatC');

-- Table storing hyperdrive test facility data
CREATE TABLE hyperdrive_test_facility
(
    id INTEGER PRIMARY KEY,
    facility_name TEXT,
    location_city TEXT,
    location_planet TEXT,
    operational_since DATE,
    test_chamber_count INTEGER,
    max_thrust_gn INTEGER,
    fuel_type TEXT,
    safety_certification TEXT,
    chief_engineer TEXT,
    contact_number TEXT,
    email_address TEXT,
    average_test_cycle_minutes INTEGER,
    total_tests_conducted INTEGER,
    downtime_hours_per_year REAL,
    maintenance_contract VARCHAR(100),
    environmental_control_system TEXT,
    power_grid_capacity_mw INTEGER,
    backup_generator_type TEXT,
    notes TEXT,
    last_inspection DATE,
    inspected_by TEXT
);

INSERT INTO hyperdrive_test_facility VALUES (1,'HyperLab Alpha','Nova City','Nova Prime','2290-01-01',4,5000,'antimatter','ISO9001','EngChief A','555-0101','contact@hyperlabalpha.org',90,1200,45.5,'TechGuard Ltd','cryogenic','1500','diesel','first facility of its kind','2295-02-10','InspectorX');
INSERT INTO hyperdrive_test_facility VALUES (2,'Quantum Thrust Facility','Quantum Port','Quantum','2305-06-15',3,6200,'fusion','ISO14001','EngChief B','555-0202','qtfacility@quantum.org',75,850,30.2','Quantum Services','magnetic','1800','hydrogen','upgraded in 2310','2308-07-20','InspectorY');
INSERT INTO hyperdrive_test_facility VALUES (3,'Stellar Propulsion Center','Stellar Haven','Stellar','2320-09-20',5,7200,'dark energy','ISO27001','EngChief C','555-0303','spc@stellar.org',60,950,25.0','Stellar Maintenance Inc','thermal','2000','solar','expanded capacity in 2322','2325-01-15','InspectorZ');

-- Table storing interdimensional energy grid information
CREATE TABLE interdimensional_energy_grid
(
    id INTEGER PRIMARY KEY,
    grid_name TEXT,
    inception_date DATE,
    primary_energy_source TEXT,
    total_output_gw REAL,
    number_of_nodes INTEGER,
    controlling_authority TEXT,
    jurisdiction TEXT,
    safety_protocol_version TEXT,
    avg_latency_ms REAL,
    redundancy_level INTEGER,
    maintenance_cycle_days INTEGER,
    regulatory_compliance TEXT,
    public_access_level TEXT,
    encryption_standard TEXT,
    backup_capacity_gw REAL,
    monitoring_center TEXT,
    operational_status TEXT,
    last_outage_date DATE,
    outage_duration_minutes INTEGER,
    notes TEXT,
    record_created DATE,
    created_by TEXT
);

INSERT INTO interdimensional_energy_grid VALUES (1,'Epsilon Grid','2295-04-01','zero‑point','8500.5',120,'Epsilon Authority','multiversal','v3.2',12.4,3,180,'ISO9001','restricted','AES‑256','1200.0','Epsilon Control Hub','operational','2299-11-12',45,'stable performance','2295-04-05','AdminA');
INSERT INTO interdimensional_energy_grid VALUES (2,'Omega Nexus','2308-07-15','dark matter','9700.0',150,'Omega Consortium','interdimensional','v4.0',10.8,4,200,'ISO14001','public','RSA‑4096','1500.0','Omega Monitoring Station','operational','2312-03-05',30,'expanded after recent upgrades','2308-07-20','AdminB');
INSERT INTO interdimensional_energy_grid VALUES (3,'Sigma Stream','2322-01-20','quantum flux','7800.3',100,'Sigma Council','galactic','v2.9',15.2,2,160,'ISO27001','restricted','ChaCha20','900.5','Sigma Command Center','maintenance','2325-06-18',60,'scheduled maintenance caused outage','2322-01-25','AdminC');

-- Table storing artifact provenance logs for interdimensional artifacts (distinct from previous)
CREATE TABLE artifact_provenance_interdim
(
    id INTEGER PRIMARY KEY,
    artifact_uuid TEXT,
    artifact_title TEXT,
    discovered_via TEXT,
    discovery_timestamp DATE,
    origin_dimension TEXT,
    composition TEXT,
    initial_repository TEXT,
    current_custodian TEXT,
    acquisition_mode TEXT,
    estimated_value_usd INTEGER,
    legal_status TEXT,
    export_license_id TEXT,
    import_license_id TEXT,
    preservation_state TEXT,
    last_conservation_date DATE,
    responsible_curator TEXT,
    display_history TEXT,
    loan_agreement_status TEXT,
    insurance_reference TEXT,
    additional_notes TEXT,
    entry_created DATE,
    created_by TEXT
);

INSERT INTO artifact_provenance_interdim VALUES (1,'UID-1001','Chrono Crystal','Dimensional Rift','2330-02-14','Dimension X-12','crystalline','Rift Lab','Interdimensional Museum','capture','8000000','protected','LIC-3301','IMP-4421','excellent','2330-06-01','CuratorX','ExhibitX; ExhibitY','not on loan','INS-778899','subject to temporal decay','2330-02-20','RegistrarA');
INSERT INTO artifact_provenance_interdim VALUES (2,'UID-1002','Void Engine','Astral Surveyor','2335-08-09','Void Realm','exotic metal','Void Observatory','Void Research Center','recovery','12000000','restricted','LIC-3310','IMP-4430','stable','2336-01-15','CuratorY','ExhibitZ','on loan','INS-889900','requires constant vacuum','2335-08-15','RegistrarB');
INSERT INTO artifact_provenance_interdim VALUES (3,'UID-1003','Echo Relic','Quantum Scanner','2340-11-22','Echo Plane','energy lattice','Echo Facility','Echo Archive','transfer','5000000','public domain','LIC-3320','IMP-4440','good','2341-03-05','CuratorZ','ExhibitW','not on loan','INS-990011','energy emissions monitored','2340-11-30','RegistrarC');

-- Table storing schedules for hyperdrive test runs
CREATE TABLE hyperdrive_test_run_schedule
(
    id INTEGER PRIMARY KEY,
    run_id TEXT,
    test_date DATE,
    facility_id INTEGER,
    hyperdrive_model TEXT,
    thrust_setting_gn INTEGER,
    fuel_load_kg INTEGER,
    test_duration_minutes INTEGER,
    expected_outcome TEXT,
    safety_officer TEXT,
    data_logger_version TEXT,
    telemetry_band TEXT,
    result_status TEXT,
    anomalies_reported TEXT,
    post_test_analysis_due DATE,
    lead_scientist TEXT,
    project_code TEXT,
    budget_usd INTEGER,
    notes TEXT,
    last_update DATE,
    updated_by TEXT,
    compliance_check_passed BOOLEAN
);

INSERT INTO hyperdrive_test_run_schedule VALUES (1,'RUN-001','2350-01-10',1,'HD-X1',4800,2000,90,'stable thrust','OfficerA','DL-5.0','X‑band','completed','none','2350-01-20','DrNova','PRJ-100','300000','initial test run','2350-01-11','SchedulerA',TRUE);
INSERT INTO hyperdrive_test_run_schedule VALUES (2,'RUN-002','2351-04-22',2,'HD-Y2',5600,2500,120,'high efficiency','OfficerB','DL-5.2','Ka‑band','completed','minor vibration','2351-05-05','DrQuark','PRJ-101','350000','adjusted fuel mixture','2351-04-23','SchedulerB',TRUE);
INSERT INTO hyperdrive_test_run_schedule VALUES (3,'RUN-003','2352-09-15',3,'HD-Z3',6200,3000,150,'peak performance','OfficerC','DL-5.4','S‑band','failed','overheat','2352-10-01','DrPhoton','PRJ-102','400000','overheat issue under investigation','2352-09-16','SchedulerC',FALSE);