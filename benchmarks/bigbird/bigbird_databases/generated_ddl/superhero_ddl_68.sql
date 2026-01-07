-- Interstellar Transport Log
CREATE TABLE interstellar_transport_log (
    log_id INTEGER PRIMARY KEY,
    ship_name TEXT,
    registration_code TEXT,
    departure_planet TEXT,
    arrival_planet TEXT,
    departure_timestamp TEXT,
    arrival_timestamp TEXT,
    cargo_type TEXT,
    cargo_weight_tons INTEGER,
    crew_count INTEGER,
    captain_name TEXT,
    navigation_route TEXT,
    fuel_used_megajoules INTEGER,
    travel_distance_mkm INTEGER,
    warp_factor INTEGER,
    status TEXT,
    incident_report TEXT,
    maintenance_required BOOLEAN,
    last_inspection_date TEXT,
    insurance_policy_number TEXT,
    compliance_certifier TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO interstellar_transport_log VALUES (1,'StarRunner','SR-001','Terra','Mars','2025-01-10T08:00:00','2025-01-12T14:30:00','Minerals',120,8,'Ariane Vega','TR-Alpha',45000,15,5,'Completed','','false','2024-12-01','POL12345','Galactic Authority','2025-01-13T09:00:00','2025-01-13T09:05:00');
INSERT INTO interstellar_transport_log VALUES (2,'NebulaDrift','ND-77','Venus','Jupiter','2025-03-22T22:15:00','2025-04-01T06:45:00','BiologicalSamples',45,5,'Liam Ko','TR-Beta',21000,28,4,'Completed','Minor turbulence detected',false,'2025-01-20','POL67890','Space Federation','2025-04-02T07:00:00','2025-04-02T07:10:00');
INSERT INTO interstellar_transport_log VALUES (3,'QuantumPulse','QP-12','Saturn','Neptune','2025-05-05T13:30:00','2025-05-20T20:00:00','ResearchEquipment',80,6,'Mira D','TR-Gamma',37000,48,6,'InTransit','','true','2025-04-15','POL54321','Interstellar Council','2025-05-06T14:00:00','2025-05-06T14:10:00');

-- Mythic Artifact Conservation
CREATE TABLE mythic_artifact_conservation (
    artifact_id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    discovery_site TEXT,
    discoverer TEXT,
    discovery_date TEXT,
    material TEXT,
    estimated_age_years INTEGER,
    current_location TEXT,
    preservation_method TEXT,
    temperature_celsius INTEGER,
    humidity_percent INTEGER,
    light_exposure_lux INTEGER,
    handling_instructions TEXT,
    conservation_status TEXT,
    last_restoration_date TEXT,
    responsible_curator TEXT,
    insurance_value_credits INTEGER,
    risk_assessment TEXT,
    security_level INTEGER,
    display_case_id TEXT,
    metadata_schema_version TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO mythic_artifact_conservation VALUES (101,'Orb of Eternity','Atlantis Ruins','Dr Selene','3021-07-14','Crystal',12000,'Vault A3','Cryogenic','-120','15','0','Gloves and anti-static','Stable','3022-01-20','Curator Hale',2500000,'Low','5','CC-001','v1.3','3022-01-21T10:00:00','3022-01-21T10:05:00');
INSERT INTO mythic_artifact_conservation VALUES (102,'Blade of Dawn','Hill of Whispers','Aria Kline','2985-03-02','Alloy','8500','Exhibit Hall 2','Atmospheric','22','45','200','Handle with titanium tongs','Fragile','2986-09-15','Curator Nox',1800000,'Medium','4','CC-045','v1.3','2986-09-16T11:30:00','2986-09-16T11:35:00');
INSERT INTO mythic_artifact_conservation VALUES (103,'Chrono Sphere','Desert of Echoes','Prof Quill','3100-11-23','Obsidian','15000','Research Lab B','Vacuum','-80','10','0','No direct contact','Stable','3101-04-12','Curator Vira',3200000,'Low','5','CC-078','v1.3','3101-04-13T09:00:00','3101-04-13T09:10:00');

-- Quantum Energy Allocation
CREATE TABLE quantum_energy_allocation (
    allocation_id INTEGER PRIMARY KEY,
    sector_name TEXT,
    allocation_date TEXT,
    allocated_megajoules INTEGER,
    remaining_megajoules INTEGER,
    priority_level INTEGER,
    project_code TEXT,
    approving_officer TEXT,
    funding_source TEXT,
    compliance_status TEXT,
    notes TEXT,
    audit_trail TEXT,
    created_at TEXT,
    updated_at TEXT,
    fiscal_year INTEGER,
    energy_type TEXT,
    distribution_method TEXT,
    expected_completion_date TEXT,
    actual_usage_megajoules INTEGER,
    variance_megajoules INTEGER,
    external_audit_flag BOOLEAN,
    regional_manager TEXT,
    allocation_status TEXT
);
INSERT INTO quantum_energy_allocation VALUES (2001,'Sector Alpha','2025-02-01',500000,350000,1,'PRJ-AX1','Officer Lyn','Galactic Treasury','Compliant','Initial allocation','Audit001','2025-02-02','2025-02-03',2025,'Quantum','Grid','2025-12-31',148000,2000,false,'Mgr Kade','Active');
INSERT INTO quantum_energy_allocation VALUES (2002,'Sector Beta','2025-03-15',300000,210000,2,'PRJ-BZ2','Officer Kai','Interstellar Fund','Pending','Awaiting final approval','Audit002','2025-03-16','2025-03-17',2025,'Quantum','Reservoir','2026-06-30',90000,10000,true,'Mgr Soren','Pending');
INSERT INTO quantum_energy_allocation VALUES (2003,'Sector Gamma','2025-04-20',750000,750000,1,'PRJ-GC3','Officer Nia','Universal Bank','Compliant','Full allocation for new colony','Audit003','2025-04-21','2025-04-22',2025,'Quantum','Direct Transfer','2027-01-15',0,750000,false,'Mgr Aria','Allocated');

-- Alien Language Learning Module
CREATE TABLE alien_language_learning_module (
    module_id INTEGER PRIMARY KEY,
    language_name TEXT,
    script_type TEXT,
    difficulty_rating INTEGER,
    lesson_count INTEGER,
    average_completion_time_minutes INTEGER,
    creator_name TEXT,
    version TEXT,
    release_date TEXT,
    last_update TEXT,
    certification_required BOOLEAN,
    prerequisite_module_id INTEGER,
    class_capacity INTEGER,
    enrollment_count INTEGER,
    average_score_percent INTEGER,
    feedback_score INTEGER,
    language_family TEXT,
    audio_support BOOLEAN,
    visual_aids BOOLEAN,
    interactive_exercises BOOLEAN,
    assessment_method TEXT,
    credits_awarded INTEGER,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO alien_language_learning_module VALUES (301,'Krell','Glyphic',4,12,45,'Dr Voss','1.0','2024-09-01','2025-01-10',false,0,30,28,87,9,'Krellic',true,true,true,'Project',3,'2025-01-11','2025-01-12');
INSERT INTO alien_language_learning_module VALUES (302,'Zyra','Phonemic',3,8,30,'Prof Lira','2.1','2023-05-15','2024-12-20',true,301,25,22,92,10,'Zyrian',true,true,true,'Examination',2,'2024-12-21','2024-12-22');
INSERT INTO alien_language_learning_module VALUES (303,'Thalax','Runic',5,15,60,'Dr Mern','0.9','2025-02-20','2025-02-25',true,0,20,15,78,7,'Thalaxian',false,true,true,'Thesis',4,'2025-02-26','2025-02-27');

-- Hero Fan Analytics Snapshot
CREATE TABLE hero_fan_analytics_snapshot (
    snapshot_id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    snapshot_date TEXT,
    total_fans INTEGER,
    active_fans INTEGER,
    average_engagement_score REAL,
    top_region TEXT,
    merchandise_sales_usd INTEGER,
    streaming_views INTEGER,
    social_media_mentions INTEGER,
    fan_sentiment_score REAL,
    new_fan_growth_percent REAL,
    event_attendance INTEGER,
    average_watch_time_minutes REAL,
    favorite_power TEXT,
    favorite_story_arc TEXT,
    hashtag_trending TEXT,
    premium_subscriptions INTEGER,
    average_subscription_value_usd INTEGER,
    referral_rate_percent REAL,
    created_at TEXT,
    updated_at TEXT,
    data_source TEXT,
    notes TEXT
);
INSERT INTO hero_fan_analytics_snapshot VALUES (4001,1,'2025-01-31',1500000,850000,78.5,'North America',2500000,4800000,32000,0.82,5.2,12000,45.3,'Flight','Arc of Dawn','#HeroRise',50000,12,1.4,'Internal','Quarterly snapshot');
INSERT INTO hero_fan_analytics_snapshot VALUES (4002,2,'2025-01-31',950000,600000,71.2,'Europe',1800000,3100000,21000,0.75,4.8,8000,38.6,'Invisibility','Shadow Wars','#StealthForce',30000,10,1.1,'Internal','Quarterly snapshot');
INSERT INTO hero_fan_analytics_snapshot VALUES (4003,3,'2025-01-31',720000,460000,65.9,'Asia',1350000,2500000,18000,0.68,3.9,6000,34.1,'Telepathy','Mindscape','#PsychicPulse',25000,9,0.9,'Internal','Quarterly snapshot');

-- Multiverse Policy Vote
CREATE TABLE multiverse_policy_vote (
    vote_id INTEGER PRIMARY KEY,
    policy_name TEXT,
    proposal_date TEXT,
    voting_body TEXT,
    total_members INTEGER,
    votes_for INTEGER,
    votes_against INTEGER,
    abstentions INTEGER,
    result TEXT,
    enactment_date TEXT,
    policy_category TEXT,
    description TEXT,
    amendment_number INTEGER,
    related_policy_id INTEGER,
    quorum_met BOOLEAN,
    voting_method TEXT,
    document_hash TEXT,
    created_at TEXT,
    updated_at TEXT,
    sponsor_officer TEXT,
    notes TEXT
);
INSERT INTO multiverse_policy_vote VALUES (5001,'Regulation of Interdimensional Travel','2024-11-05','Multiversal Council',120,85,30,5,'Approved','2025-01-01','Travel','Sets limits on portal usage','2',NULL,true,'Electronic','hashABC123','2024-11-06','2024-11-07','Officer Lumen','First vote');
INSERT INTO multiverse_policy_vote VALUES (5002,'Standardized Energy Conversion Rates','2025-02-12','Energy Committee',80,45,30,5,'Rejected','NULL','Energy','Proposes unified conversion metrics','1',5001,false,'Electronic','hashDEF456','2025-02-13','2025-02-14','Officer Nova','Second attempt');
INSERT INTO multiverse_policy_vote VALUES (5003,'Universal Copyright Extension','2025-03-20','Legal Assembly',150,120,20,10,'Approved','2025-06-01','Legal','Extends IP duration across realms','3',NULL,true,'Electronic','hashGHI789','2025-03-21','2025-03-22','Officer Lex','Third proposal');

-- Corporate Venture Capital Fund
CREATE TABLE corporate_venture_capital_fund (
    fund_id INTEGER PRIMARY KEY,
    fund_name TEXT,
    managing_corporation TEXT,
    inception_date TEXT,
    total_commitment_credits INTEGER,
    invested_capital_credits INTEGER,
    number_of_portfolios INTEGER,
    average_return_percent REAL,
    fund_status TEXT,
    primary_focus_area TEXT,
    geographic_focus TEXT,
    lead_investor TEXT,
    co_investors TEXT,
    investment_stage TEXT,
    typical_check_size_credits INTEGER,
    limited_partner_count INTEGER,
    next_fundraising_round TEXT,
    ESG_compliance BOOLEAN,
    risk_profile TEXT,
    reporting_frequency TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    regulator_id INTEGER
);
INSERT INTO corporate_venture_capital_fund VALUES (6001,'Quantum Ventures','Nebula Corp','2022-06-15',50000000,22000000,15,12.5,'Active','Quantum Technologies','Sector Alpha','Jenna K','Orion Capital;Astra Fund','Series A',5000000,8,'2025-09-01',true,'Moderate','Quarterly','2022-06-16','2022-06-17','Focus on breakthrough quantum devices',101);
INSERT INTO corporate_venture_capital_fund VALUES (6002,'Stellar Growth Fund','Solaris Industries','2020-03-01',80000000,56000000,30,18.9,'Active','Space Infrastructure','Interstellar','Marek T','Helios Ventures;Luna Partners','Series B',7000000,12,'2025-11-15',true,'High','Semi-Annual','2020-03-02','2020-03-03','Invests in orbital stations and habitats',102);
INSERT INTO corporate_venture_capital_fund VALUES (6003,'Arcane Innovation Fund','Arcane Labs','2023-01-20',30000000,12000000,7,9.3,'Active','Dimensional Research','Multiverse','Sofia L','Void Capital;Eclipse Group','Seed',2000000,5,'2025-12-10',false,'Low','Annual','2023-01-21','2023-01-22','Early-stage portal tech',103);

-- Renewable Energy Infrastructure
CREATE TABLE renewable_energy_infrastructure (
    infra_id INTEGER PRIMARY KEY,
    infra_name TEXT,
    type TEXT,
    location TEXT,
    capacity_megawatts INTEGER,
    operational_status TEXT,
    commissioning_date TEXT,
    owner_entity TEXT,
    maintenance_contract TEXT,
    average_output_percent REAL,
    grid_connection_point TEXT,
    environmental_impact_score INTEGER,
    carbon_offset_tons INTEGER,
    tech_vendor TEXT,
    warranty_years INTEGER,
    last_inspection_date TEXT,
    next_maintenance_due TEXT,
    regulatory_compliance TEXT,
    funding_source TEXT,
    construction_cost_credits INTEGER,
    lifecycle_years INTEGER,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);
INSERT INTO renewable_energy_infrastructure VALUES (7001,'Solar Array Alpha','Solar','Desert Plains',1500,'Operational','2024-05-10','Solaris Industries','SolarTech Services',92.3,'Node-12',78,12000,'HelioWorks',10,'2025-01-15','2025-07-15','Compliant','Corporate','45000000',25,'2024-05-12','2024-05-13','High solar irradiance location');
INSERT INTO renewable_energy_infrastructure VALUES (7002,'Wind Farm Beta','Wind','Coastal Ridge',800,'Operational','2023-09-22','AeroWind Corp','WindMight Ltd',88.7,'Node-34',85,8000,'GaleForce',12,'2024-11-05','2025-05-05','Compliant','Government Grant','26000000',30,'2023-09-24','2023-09-25','Beneficial for local fisheries');
INSERT INTO renewable_energy_infrastructure VALUES (7003,'Hydro Plant Gamma','Hydro','River Delta',1200,'Under Construction','2025-12-01','AquaPower','AquaServ',0,'Node-56',90,15000,'FlowDynamics',15,'2025-06-01','2025-12-01','Pending','Public-Private','60000000',40,'2025-12-02','2025-12-03','Includes fish ladder system');

-- Metahuman Genome Sequence
CREATE TABLE metahuman_genome_sequence (
    genome_id INTEGER PRIMARY KEY,
    metahuman_id INTEGER,
    sequence_hash TEXT,
    discovery_date TEXT,
    sequencing_lab TEXT,
    coverage_depth INTEGER,
    variant_count INTEGER,
    notable_mutations TEXT,
    associated_abilities TEXT,
    ethical_approval BOOLEAN,
    data_access_level TEXT,
    storage_location TEXT,
    last_update TEXT,
    reference_genome_version TEXT,
    quality_score REAL,
    publication_doi TEXT,
    funding_agency TEXT,
    investigator_name TEXT,
    consent_form_id TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO metahuman_genome_sequence VALUES (8001,12,'hashSEQ001','3025-03-12','GenomeLab X',45,120,'GeneX-Alpha;GeneY-Beta','Regeneration;EnhancedStrength',true,'Restricted','Vault G7','3025-04-01','hg38','98.6','10.1234/gh.2025.01','Metahuman Research Council','Dr Kira V','CF-2025-001','Initial sequencing', '3025-04-02','3025-04-03');
INSERT INTO metahuman_genome_sequence VALUES (8002,27,'hashSEQ002','3030-07-08','QuantumGenomics',38,95,'GeneZ-Gamma','Invisibility;PhaseShift',true,'Confidential','Vault H2','3030-07-20','hg38','97.2','10.1234/gh.3030.05','Interdimensional Science Fund','Prof Lumen','CF-3030-045','Follow-up sequencing', '3030-07-21','3030-07-22');
INSERT INTO metahuman_genome_sequence VALUES (8003,45,'hashSEQ003','3042-11-25','BioSynth Labs',50,150,'GeneA-Delta;GeneB-Epsilon','Telepathy;EnergyManipulation',false,'Public','Cloud Archive','3042-12-10','hg38','99.1','10.1234/gh.3042.09','Universal Knowledge Initiative','Dr Aria Q','CF-3042-099','Preliminary dataset', '3042-12-11','3042-12-12');

-- Cosmic Event Forecast
CREATE TABLE cosmic_event_forecast (
    forecast_id INTEGER PRIMARY KEY,
    event_type TEXT,
    predicted_date TEXT,
    confidence_level_percent REAL,
    impact_region TEXT,
    expected_magnitude REAL,
    detection_method TEXT,
    observing_agency TEXT,
    alert_level TEXT,
    mitigation_plan TEXT,
    related_anomaly_id INTEGER,
    last_updated TEXT,
    notes TEXT,
    data_source TEXT,
    model_version TEXT,
    created_at TEXT,
    updated_at TEXT,
    follow_up_action TEXT,
    responsible_officer TEXT,
    public_communication_status TEXT,
    archival_reference TEXT
);
INSERT INTO cosmic_event_forecast VALUES (9001,'Solar Flare','2025-08-14',93.5,'Solar System',8.7,'Space Telescope','Solar Observation Agency','High','Shield spacecraft','1001','2025-07-30','Peak activity expected','Satellite Data','v2.1','2025-07-31','2025-08-01','Issue warnings','Officer Dawn','Released','REF-2025-08A');
INSERT INTO cosmic_event_forecast VALUES (9002,'Gamma Ray Burst','2026-02-02',78.2,'Local Cluster',9.3,'Gamma Detector Array','Deep Space Research','Medium','Monitor radiation levels','1005','2025-12-20','Rare event','Observatory Logs','v3.0','2025-12-21','2025-12-22','Coordinate with colonies','Officer Nova','Pending','REF-2026-02B');
INSERT INTO cosmic_event_forecast VALUES (9003,'Dark Matter Surge','2027-11-19',65.0,'Milky Way Edge',7.5,'Gravitational Wave Interferometer','Cosmic Research Institute','Low','Collect data for analysis','1010','2027-10-10','Long-term phenomenon','Wave Data','v1.4','2027-10-11','2027-10-12','Schedule follow‑up study','Officer Vega','Not Released','REF-2027-11C');