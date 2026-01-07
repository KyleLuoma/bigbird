-- Hero origin stories
CREATE TABLE hero_origin_story (
    id INTEGER NOT NULL PRIMARY KEY,
    origin_title TEXT,
    planet TEXT,
    continent TEXT,
    city TEXT,
    era TEXT,
    discovery_year INTEGER,
    mythic_elements TEXT,
    cosmic_event TEXT,
    first_appearance_issue INTEGER,
    writer TEXT,
    artist TEXT,
    editor TEXT,
    notes TEXT,
    public_release_date TEXT,
    canonical BOOLEAN,
    storyline_phase TEXT,
    associated_faction TEXT,
    technology_used TEXT,
    magical_artifact TEXT,
    hidden_base_location TEXT,
    secret_society TEXT
);
INSERT INTO hero_origin_story VALUES (1,'Starlight Genesis','NovaPrime','Zara','Lumina','Age of Dawn',3025,'Celestial Dragons','Supernova Burst',12,'Alia Verne','Kiro Tan','Mara Luz','Origins of power','3026-04-15',TRUE,'Phase One','Solar Order','Photon Amplifier','Star Shard','Cave of Echoes','Lumina Guild');
INSERT INTO hero_origin_story VALUES (2,'Deep Sea Dawn','AquaTerra','Maris','Coral Bay','Era of Tides',2980,'Kraken Relics','Tidal Rift',8,'Rolan Mey','Eve Kline','Jonas Reed','Found beneath the waves','2981-09-03',TRUE,'Phase Two','Aqua Syndicate','Hydro Jetpack','Pearl of Tides','Submerged Lab','Oceanic Council');
INSERT INTO hero_origin_story VALUES (3,'Skyward Ascent','Aerion','Nimbus','Altair City','Chronicles of Air',3100,'Wind Spirits','Storm Convergence',20,'Lena Ghosh','Tara Sun','Vik Rao','Raised among clouds','3101-01-22',FALSE,'Phase Three','Windward Pact','Aero Suit','Sky Feather','Floating Fortress','Cloud Guild');

-- Villain profiles
CREATE TABLE villain_profile (
    id INTEGER NOT NULL PRIMARY KEY,
    villain_name TEXT,
    real_name TEXT,
    organization TEXT,
    motive TEXT,
    threat_level INTEGER,
    preferred_weapon TEXT,
    lair_location TEXT,
    mastermind BOOLEAN,
    first_appearance_issue INTEGER,
    arch_nemesis TEXT,
    power_source TEXT,
    weakness TEXT,
    backstory TEXT,
    capture_status TEXT,
    bounty INTEGER,
    last_seen_date TEXT,
    known_allies TEXT,
    criminal_record TEXT,
    escape_history TEXT,
    wanted_by TEXT,
    rehabilitation_program BOOLEAN
);
INSERT INTO villain_profile VALUES (1,'Nightbane','Victor Kline','Obsidian Circle','World Domination',9,'Shadow Blade','Eclipse Tower',TRUE,25,'Solar Flare','Dark Matter','Bright Light','Born in a lab','At Large',500000,'3050-07-12','Shade Syndicate','Level 5','Multiple','Interstellar Police',FALSE);
INSERT INTO villain_profile VALUES (2,'Tempest Fury','Mira Sol','Cyclone Guild','Revenge',7,'Storm Whip','Tempest Spire',FALSE,17,'Turbo Titan','Electrostatic Field','Grounding Rod','Survived a storm','In Custody',250000,'3045-03-08','Wind Riders','Level 3','Escaped 2 times','Galactic Security',FALSE);
INSERT INTO villain_profile VALUES (3,'Iron Basilisk','Graham Dray','Metal Maw','Profit',6,'Plasma Cannon','Fort Ironclad',TRUE,42,'Quantum Knight','Fusion Core','Magnetic Field','Industrial accident', 'Released on parole',150000,'3062-11-20','Steel Brotherhood','Level 2','Escaped once','Planetary Watch',TRUE);

-- Multiverse branches
CREATE TABLE multiverse_branch (
    branch_id INTEGER NOT NULL PRIMARY KEY,
    branch_name TEXT,
    dimension_code TEXT,
    dominant_physics TEXT,
    core_energy_type TEXT,
    average_lifespan INTEGER,
    primary_species TEXT,
    governing_body TEXT,
    terraforming_status TEXT,
    portal_stability_score INTEGER,
    known_explorers TEXT,
    discovery_date TEXT,
    interdimensional_trade BOOLEAN,
    resource_richness TEXT,
    climate_zone TEXT,
    major_city TEXT,
    capital_city TEXT,
    defense_grid_level INTEGER,
    cultural_influence TEXT,
    archival_records TEXT,
    communication_protocol TEXT,
    quantum_fluctuation_rate INTEGER
);
INSERT INTO multiverse_branch VALUES (101,'Epsilon Realm','E-7','Quantum Flux','Neutrino','120','Lumarians','Council of Light','Complete',88,'Dr. Arin Vale','3020-06-01',TRUE,'Abundant','Temperate','Radiant','Lumara',5,'High','Epsilon Archives','Q-Comm','3');
INSERT INTO multiverse_branch VALUES (102,'Omega Nexus','O-3','Gravitonic','Graviton','250','Terrans','Sovereign League','Partial',72,'Captain Selene','3035-09-14',FALSE,'Scarce','Arid','Dusthaven','Basalt',2,'Medium','Omega Logs','G-Comm','7');
INSERT INTO multiverse_branch VALUES (103,'Sigma Void','S-9','Dark Energy','Tachyon','80','Voidlings','Void Council','None',45,'Explorer Kora','3015-12-22',TRUE,'Minimal','Frigid','Voidspire','Nexus Core',8,'Low','Sigma Records','V-Comm','5');

-- Artifact inventory
CREATE TABLE artifact_inventory (
    artifact_id INTEGER NOT NULL PRIMARY KEY,
    artifact_name TEXT,
    origin_civilization TEXT,
    epoch INTEGER,
    material TEXT,
    weight_kg INTEGER,
    dimensions_cm TEXT,
    magical_properties TEXT,
    current_location TEXT,
    custodian TEXT,
    acquisition_date TEXT,
    appraised_value INTEGER,
    rarity_level TEXT,
    preservation_status TEXT,
    display_status BOOLEAN,
    loaned_to TEXT,
    loan_start_date TEXT,
    loan_end_date TEXT,
    insurance_policy TEXT,
    restoration_history TEXT,
    exhibit_name TEXT,
    catalog_number TEXT
);
INSERT INTO artifact_inventory VALUES (2001,'Chrono Crystal','Arcanum','1500','Quartz',12,'15x15x15','Temporal Stasis','Hall of Relics','Dr. Lira Morn','3028-05-10',750000,'Legendary','Excellent',TRUE,'','', '', 'Policy-CR2001','Restored 3029 by Tech Guild','Time Exhibit','CR-2001');
INSERT INTO artifact_inventory VALUES (2002,'Solar Sigil','Solaris','2100','Gold Alloy',8,'10x10x2','Solar Boost','Solar Archive','Elder Kael','3030-03-22',420000,'Rare','Good',FALSE,'Planetary Museum','3035-01-01','3035-12-31','Policy-CR2002','Minor polishing 3031','Sunlight Gallery','CR-2002');
INSERT INTO artifact_inventory VALUES (2003,'Abyssal Pearl','Maridia','1800','Pearl','5','7x7x7','Water Breathing','Deep Sea Vault','Aqua Curator','3032-08-15',300000,'Uncommon','Fair',TRUE,'','', '', 'Policy-CR2003','Cleaned 3033','Oceanic Wonders','CR-2003');

-- Technology repository
CREATE TABLE technology_repository (
    tech_id INTEGER NOT NULL PRIMARY KEY,
    tech_name TEXT,
    developer TEXT,
    release_year INTEGER,
    tech_type TEXT,
    power_requirement_watts INTEGER,
    interface_protocol TEXT,
    compatible_systems TEXT,
    security_level INTEGER,
    version TEXT,
    status TEXT,
    deprecation_date TEXT,
    supported_languages TEXT,
    firmware_version TEXT,
    hardware_specifications TEXT,
    usage_statistics INTEGER,
    licensing_agreement TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance_date TEXT,
    known_bugs TEXT,
    documentation_url TEXT,
    backup_location TEXT
);
INSERT INTO technology_repository VALUES (3001,'Quantum Communicator','NovaTech',3015,'Communication',2500,'Q-Protocol','NuNet, StarLink',9,'v2.4','Active','', 'EN,ZW','fw-3.1','Silicon Quantum Chip','15000','License-QC-3015',30,'3025-06-01','Phase drift issue','http://docs.novatech/qc','Backup-Node-A');
INSERT INTO technology_repository VALUES (3002,'Gravity Manipulator','Gravitas Labs',3020,'Utility',5000,'G-Interface','TerraCore, Levitas',8,'v1.9','Active','', 'EN','fw-1.0','Titanium Coil','8200','License-GM-3020',45,'3028-11-12','Calibration error','http://docs.gravitas/gm','Backup-Node-B');
INSERT INTO technology_repository VALUES (3003,'Plasma Forge','ForgeWorks',3008,'Manufacturing',7500,'P-Stream','ForgeNet',7,'v3.2','Obsolete','3018-12-31','EN,FR','fw-2.5','Ceramic Reactor','23000','License-PF-3008',60,'3015-04-20','Overheating','http://docs.forgeworks/pf','Backup-Node-C');

-- Secret identity registry
CREATE TABLE secret_identity_registry (
    registry_id INTEGER NOT NULL PRIMARY KEY,
    person_name TEXT,
    alias TEXT,
    known_until TEXT,
    exposure_risk_score INTEGER,
    concealment_method TEXT,
    encrypted_key TEXT,
    verification_status BOOLEAN,
    registration_date TEXT,
    last_update TEXT,
    affiliated_group TEXT,
    clearance_level INTEGER,
    biometric_hash TEXT,
    background_check_status TEXT,
    legal_status TEXT,
    media_coverage_level TEXT,
    threat_assessment TEXT,
    rescue_plan TEXT,
    contingency_plan TEXT,
    emergency_contact TEXT,
    notes TEXT,
    archive_location TEXT
);
INSERT INTO secret_identity_registry VALUES (4001,'Kira Selene','Night Whisper','3099-12-31',85,'Neural Mask','KeyA9Z','TRUE','3010-01-15','3025-05-10','Shadow League',5,'HashX23','Cleared','Citizen','Low','Moderate','Plan Alpha','Plan Beta','Lora Selene','No anomalies','Sector-7');
INSERT INTO secret_identity_registry VALUES (4002,'Darius Voss','Silent Edge','3088-06-30',70,'Optic Camouflage','KeyB3L','FALSE','3005-09-20','3018-02-25','Iron Hand',4,'HashY78','Pending','Resident','Medium','High','Plan Gamma','Plan Delta','Mara Voss','Under review','Sector-12');
INSERT INTO secret_identity_registry VALUES (4003,'Elena Mar','Solar Flare','3105-03-14',60,'Thermal Shield','KeyC5M','TRUE','3020-07-05','3030-11-19','Solar Guard',3,'HashZ45','Cleared','Citizen','Low','Low','Plan Epsilon','Plan Zeta','Tara Mar','All clear','Sector-3');

-- Public relations log
CREATE TABLE public_relations_log (
    log_id INTEGER NOT NULL PRIMARY KEY,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_audience TEXT,
    budget_usd INTEGER,
    primary_channel TEXT,
    spokesperson TEXT,
    key_message TEXT,
    media_outlet TEXT,
    impressions INTEGER,
    engagement_rate REAL,
    sentiment_score REAL,
    crisis_flag BOOLEAN,
    response_time_hours INTEGER,
    follow_up_actions TEXT,
    approved_by TEXT,
    notes TEXT,
    region TEXT,
    language TEXT,
    compliance_status TEXT,
    audit_trail TEXT
);
INSERT INTO public_relations_log VALUES (5001,'Starlight Outreach','3025-01-01','3025-03-31','Young Adults',1200000,'Social Media','Lara Quill','Hope in the Stars','Galaxy Gazette',4500000,0.07,0.65,FALSE,12,'Post‑campaign survey','Director Nova','Successful launch','Sector Alpha','EN','Compliant','Audit-5001');
INSERT INTO public_relations_log VALUES (5002,'Deep Sea Awareness','3026-05-10','3026-08-20','Aquatic Researchers',800000,'Documentary','Marin Voss','Protect the Abyss','Oceanic Times',2300000,0.05,0.72,FALSE,8,'Community workshops','Chief Officer','Positive feedback','Sector Beta','EN','Compliant','Audit-5002');
INSERT INTO public_relations_log VALUES (5003,'Skyward Initiative','3027-09-15','3027-12-01','Aeronautic Engineers',950000,'Conference','Aero Kai','Elevate Humanity','Skyline Review',3100000,0.06,0.68,TRUE,4,'Crisis mitigation plan','Senior Manager','Handled incident swiftly','Sector Gamma','EN','Compliant','Audit-5003');

-- Crossover event
CREATE TABLE crossover_event (
    event_id INTEGER NOT NULL PRIMARY KEY,
    event_name TEXT,
    event_date TEXT,
    main_universe TEXT,
    secondary_universe TEXT,
    catalyst TEXT,
    participating_heroes TEXT,
    participating_villains TEXT,
    outcome TEXT,
    continuity_impact TEXT,
    fan_reaction_score INTEGER,
    merchandise_release TEXT,
    official_lineup TEXT,
    director TEXT,
    writer TEXT,
    runtime_minutes INTEGER,
    rating TEXT,
    streaming_platform TEXT,
    ticket_sales INTEGER,
    venue TEXT,
    sponsor TEXT,
    post_event_analysis TEXT
);
INSERT INTO crossover_event VALUES (6001,'Chrono Convergence','3029-04-22','Epsilon Realm','Omega Nexus','Temporal Rift','Lumarian Guardians','Void Marauders','Merged Timeline','Significant','92','Chrono Figure Set','Lumarian-Void Team','Rex Talon','Mia Vale',135,'PG-13','StarStream',480000,'Grand Arena','Nova Corp','Positive uplift in viewership');
INSERT INTO crossover_event VALUES (6002,'Aqua Assault','3030-07-10','Omega Nexus','Sigma Void','Water Core Failure','Hydro Squad','Void Sirens','Water restored','Moderate','78','Aqua Helm','Hydro‑Void Alliance','Lara Zen','Kian Drax',110,'PG','WavePlay',320000,'Oceanic Dome','Marine Gear','Mixed reviews on pacing');
INSERT INTO crossover_event VALUES (6003,'Skyfall Summit','3031-11-05','Sigma Void','Epsilon Realm','Solar Flare','Skyward Vanguard','Solar Wraiths','Sky cleared','Minor','85','Skywing Pack','Vanguard‑Solar Team','Tara Wind','Eli Frost',145,'PG-13','CloudNet',560000,'Skyline Stadium','AeroTech','Strong fan engagement');

-- Alternate universe mapping
CREATE TABLE alternate_universe_mapping (
    mapping_id INTEGER NOT NULL PRIMARY KEY,
    universe_name TEXT,
    map_version TEXT,
    scale TEXT,
    major_landmarks TEXT,
    dominant_government TEXT,
    economic_system TEXT,
    key_resources TEXT,
    population_estimate INTEGER,
    average_lifespan INTEGER,
    prevalent_technology TEXT,
    magic_prevalence TEXT,
    climate_zones TEXT,
    significant_conflicts TEXT,
    peace_treaties TEXT,
    trade_partners TEXT,
    cultural_hallmarks TEXT,
    language_family TEXT,
    timezone_offset INTEGER,
    exploration_status TEXT,
    map_author TEXT,
    publishing_date TEXT
);
INSERT INTO alternate_universe_mapping VALUES (7001,'Celestial Dominion','v1.2','1:5000','Celestia Spire; Starforge','Celestial Council','Resource‑Based','Star Crystals',4500000,210,'Quantum Harness','High','Temperate; Arid','Solar Wars','Treaty of Dawn','Nebula Trade Union','Starlit Architecture','Celestian','+2','Explored','Ari Nova','3024-08-15');
INSERT INTO alternate_universe_mapping VALUES (7002,'Obsidian Rift','v3.0','1:8000','Rift Canyon; Dark Obelisk','Obsidian Syndicate','Barter','Dark Minerals',3200000,180,'Gravitic Engines','Low','Frigid; Desert','Rift Rebellion','Accord of Shadows','Void Exchange','Obsidian Artifacts','Obsidianic','-1','Partial','Mara Dusk','3026-11-03');
INSERT INTO alternate_universe_mapping VALUES (7003,'Aqua Horizon','v2.5','1:6000','Coral Reef Capital; Sapphire Lake','Oceanic Assembly','Trade‑Centric','Water Essence',3800000,200,'Hydro‑Pulse','Medium','Wet; Tropical','Tide Wars','Treaty of Tides','Maritime Federation','Waterborne Music','Aquatic','+0','Fully Mapped','Lio Mare','3025-05-27');

-- Fan theory archive
CREATE TABLE fan_theory_archive (
    theory_id INTEGER NOT NULL PRIMARY KEY,
    title TEXT,
    proposer_name TEXT,
    submission_date TEXT,
    related_character TEXT,
    hypothesis TEXT,
    supporting_evidence TEXT,
    confidence_level INTEGER,
    community_votes INTEGER,
    status TEXT,
    last_review_date TEXT,
    reviewer TEXT,
    resolution TEXT,
    impact_score INTEGER,
    associated_media TEXT,
    discussion_thread_id INTEGER,
    tags TEXT,
    relevance_score INTEGER,
    citation_count INTEGER,
    editorial_note TEXT,
    publication_outlet TEXT,
    archive_section TEXT
);
INSERT INTO fan_theory_archive VALUES (8001,'Echoes of the First Light','Jax Orion','3027-02-14','Lumarian Guardian','First Light is a dormant AI','Ancient glyphs; power surges','85','120','Pending','3028-01-10','Ellen Voss','Under Review','70','Chrono Comic #12',3456,'AI;Origin','78','15','Needs further data','Fan Gazette','Theories');
INSERT INTO fan_theory_archive VALUES (8002,'The Abyssal Cycle','Mira Tide','3028-06-21','Hydro Squad','Water cycle drives power spikes','Hydro readings; battle logs','78','95','Approved','3029-03-05','Kiran Vale','Confirmed','55','Aqua Episode 4',4123,'Water;Cycle','82','8','Strong correlation','Theory Times','Analyses');
INSERT INTO fan_theory_archive VALUES (8003,'Skyward Paradox','Rex Altair','3029-09-30','Skyward Vanguard','Vanguard exists in two timelines','Timeline charts; dialogue hints','90','150','Resolved','3030-02-12','Lara Zen','Merged','88','Skyfall Summit Film',5278,'Time;Paradox','90','22','Accepted widely','Fan Chronicle','Resolutions');