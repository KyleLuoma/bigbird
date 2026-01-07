-- Planetary Geology Survey
CREATE TABLE planetary_geology_survey (
    id INTEGER PRIMARY KEY,
    planet_name TEXT,
    region_name TEXT,
    survey_date TEXT,
    lead_scientist TEXT,
    rock_type TEXT,
    mineral_composition TEXT,
    age_million_years REAL,
    gravity_m_s2 REAL,
    atmosphere_pressure_kpa REAL,
    temperature_c REAL,
    radiation_level_sieverts REAL,
    seismic_activity_level TEXT,
    sample_count INTEGER,
    drone_used TEXT,
    satellite_imagery_reference TEXT,
    latitude REAL,
    longitude REAL,
    elevation_m REAL,
    water_presence TEXT,
    sediment_thickness_m REAL,
    tectonic_plate TEXT,
    core_magnetic_field_strength REAL,
    survey_version TEXT
);

INSERT INTO planetary_geology_survey VALUES (1,'Mars','Olympus Mons','2024-03-15','Dr Alice Smith','Basalt','Iron Oxide',1800.5,3.71,0.6,-55,0.02,'Low',120,'AeroDroneX','IMG001','18.65','226.2',21000,'None',5.2,'Tharsis','0.001','v1');
INSERT INTO planetary_geology_survey VALUES (2,'Titan','Shoreline','2025-07-22','Dr Bob Lee','Sedimentary','Organic Compounds',4000,1.35,1.5,-179,0.005,'Medium',85,'HydroDroneZ','IMG045','73.12','-18.5',1500,'Trace',12.0,'Titania','0.0005','v2');
INSERT INTO planetary_geology_survey VALUES (3,'Europa','Concordia','2023-11-05','Dr Carol Nguyen','Ice','Water Ice',2000,1.31,0.1,-160,0.03,'High',200,'IceDrillPro','IMG078','3.45','-24.6',-15000,'Yes',3.0,'Eurydice','0.005','v1');

-- Quantum Particle Catalog
CREATE TABLE quantum_particle_catalog (
    id INTEGER PRIMARY KEY,
    particle_name TEXT,
    spin REAL,
    charge_e REAL,
    mass_kg REAL,
    discovery_year INTEGER,
    discovery_lab TEXT,
    decay_modes TEXT,
    half_life_seconds REAL,
    generation TEXT,
    color_charge TEXT,
    is_fermion INTEGER,
    is_boson INTEGER,
    associated_field TEXT,
    theoretical_prediction_year INTEGER,
    noble_prize_year INTEGER,
    experimental_confirmation_year INTEGER,
    detection_method TEXT,
    parity TEXT,
    notes TEXT
);

INSERT INTO quantum_particle_catalog VALUES (1,'CharmQuark',0.5,2/3,2.55e-27,1974,'SLAC','Weak Decay',1e-12,'Second','None',1,0,'Strong',1964,1976,1975,'Collider','Even','Observed in meson decays');
INSERT INTO quantum_particle_catalog VALUES (2,'HiggsBoson',0,0,2.2e-25,2012,'CERN','None',1.6e-22,'Third','None',0,1,'Electroweak',1964,2013,2012,'HadronCollider','Even','Scalar particle giving mass');
INSERT INTO quantum_particle_catalog VALUES (3,'Neutrino',0.5,0,1.8e-36,1956,'Brookhaven','Beta Decay',2.2e+21,'First','None',1,0,'Weak',1930,0,0,'UndergroundDetector','Odd','Extremely low mass');

-- Mythic Festival Calendar
CREATE TABLE mythic_festival_calendar (
    id INTEGER PRIMARY KEY,
    festival_name TEXT,
    culture TEXT,
    deity TEXT,
    start_date TEXT,
    end_date TEXT,
    location TEXT,
    frequency_years INTEGER,
    major_rituals TEXT,
    participants_estimate INTEGER,
    traditional_foods TEXT,
    music_style TEXT,
    costume_description TEXT,
    patron_sponsor TEXT,
    historical_origin_year INTEGER,
    legend_summary TEXT,
    symbols_used TEXT,
    main_procession_route TEXT,
    fire_usage INTEGER,
    water_usage INTEGER,
    notes TEXT
);

INSERT INTO mythic_festival_calendar VALUES (1,'Solaris','Solarian','Helios','2024-06-01','2024-06-07','Sunspire','4','SunrisePrayer;FireDance','5000','Sunbread','Chant','Golden robes','SolarCorp','1020','Legend of the first sunrise','Sun disc','Main Plaza','1','0','Celebrated at equinox');
INSERT INTO mythic_festival_calendar VALUES (2,'Lunara','Lunarian','Selene','2024-09-15','2024-09-20','Moonhaven','2','MoonlitSong;NightWalk','3000','MoonCake','Lyrical','Silver cloaks','LunaTech','1150','Story of the moon goddess','Crescent','Riverbank Path','0','1','Associated with harvest');
INSERT INTO mythic_festival_calendar VALUES (3,'Stormcall','Tempestians','Zephyrus','2025-03-10','2025-03-12','Windward','5','WindRite;StormSummon','2000','StormStew','Percussive','Flowing capes','TempestCo','998','Myth of the first wind','Spiral','Cliffside Circle','1','1','Held during storm season');

-- Interstellar Trade Registry
CREATE TABLE interstellar_trade_registry (
    id INTEGER PRIMARY KEY,
    trade_route_name TEXT,
    origin_star_system TEXT,
    destination_star_system TEXT,
    commodity TEXT,
    cargo_volume_m3 REAL,
    cargo_mass_tonnes REAL,
    shipment_date TEXT,
    arrival_date TEXT,
    carrier_name TEXT,
    captain_name TEXT,
    trade_license_id TEXT,
    customs_clearance_status TEXT,
    insurance_provider TEXT,
    insurance_policy_number TEXT,
    freight_cost_credits REAL,
    transport_mode TEXT,
    hazard_level TEXT,
    regulatory_body TEXT,
    notes TEXT
);

INSERT INTO interstellar_trade_registry VALUES (1,'AlphaCorridor','Sol','ProximaCentauri','Dilithium Crystals',1200.5,450.2,'2024-04-10','2024-08-22','StarRunner','Kira Vale','TL-1023','Cleared','GalacticInsure','GP-5501',78000,'Warp','Medium','InterstellarTradeAuthority','Routine high‑value cargo');
INSERT INTO interstellar_trade_registry VALUES (2,'BetaLoop','Sirius','Vega','Medical Supplies',300.0,75.0,'2025-01-05','2025-01-20','MediTrans','Liam Zhou','TL-2045','Pending','HealthGuard','HG-3120',15000,'Sublight','Low','HealthLogisticsBoard','Urgent delivery for outbreak');
INSERT INTO interstellar_trade_registry VALUES (3,'GammaPassage','AlphaCentauri','Barnard','Rare Metals',500.0,200.0,'2024-11-15','2025-02-10','MetalHauler','Aria Nox','TL-3310','Cleared','SecureCover','SC-7825',42000,'Warp','High','MetalsRegulationCommission','Includes security escort');

-- Nanotech Research Project
CREATE TABLE nanotech_research_project (
    id INTEGER PRIMARY KEY,
    project_title TEXT,
    lead_investigator TEXT,
    institution TEXT,
    start_date TEXT,
    end_date TEXT,
    funding_agency TEXT,
    grant_number TEXT,
    budget_usd REAL,
    nanomaterial_type TEXT,
    application_field TEXT,
    target_size_nm REAL,
    synthesis_method TEXT,
    characterization_technique TEXT,
    safety_level TEXT,
    publication_count INTEGER,
    patents_filed INTEGER,
    collaborators_count INTEGER,
    status TEXT,
    notes TEXT,
    phase TEXT,
    expected_outcome TEXT
);

INSERT INTO nanotech_research_project VALUES (1,'Graphene Membrane Development','Dr Eva Patel','NanoLab University','2023-01-01','2025-12-31','ScienceFoundation','GF-2023-07',2500000,'Graphene','Water Filtration',1.0,'CVD','RamanSpectroscopy','High',12,3,8,'Active','Aim to reduce contamination','Phase2','High‑efficiency membranes');
INSERT INTO nanotech_research_project VALUES (2,'Quantum Dot Sensors','Dr Marco Ruiz','TechInstitute','2022-06-15','2024-06-14','InnovationAgency','QD-2022-11',1800000,'Quantum Dots','Medical Diagnostics',5.0,'ColloidalSynthesis','TEM','Medium',9,2,5,'Completed','Sensor prototype built','Phase3','Commercializable sensor kits');
INSERT INTO nanotech_research_project VALUES (3,'Carbon Nanotube Reinforcement','Dr Lin Wei','AdvancedMaterials Center','2024-03-01','2026-02-28','IndustryPartners','CN-2024-03',3200000,'Carbon Nanotubes','Aerospace Structures',10.0,'ArcDischarge','SEM','High',5,1,4,'Planning','Phase to enhance composite strength','Phase1','Lightweight strong panels');

-- Cosmic Radiation Monitor
CREATE TABLE cosmic_radiation_monitor (
    id INTEGER PRIMARY KEY,
    monitor_station_id TEXT,
    location TEXT,
    latitude REAL,
    longitude REAL,
    altitude_m REAL,
    detector_type TEXT,
    sensitivity_msv REAL,
    operational_since TEXT,
    last_calibration_date TEXT,
    maintenance_cycle_days INTEGER,
    data_collection_interval_sec INTEGER,
    avg_daily_dose_msv REAL,
    peak_dose_msv REAL,
    anomaly_flag INTEGER,
    notes TEXT,
    power_source TEXT,
    network_id TEXT,
    firmware_version TEXT,
    uptime_hours REAL
);

INSERT INTO cosmic_radiation_monitor VALUES (1,'CRS-001','Luna Base','0.674','23.473',1737,'Geiger','0.001','2022-01-10','2024-01-09',180,300,0.05,0.12,0,'No issues','Solar','NetA','v2.1',15000);
INSERT INTO cosmic_radiation_monitor VALUES (2,'CRS-002','Mars Station','-4.589','137.441',2100,'Scintillator','0.0008','2023-05-20','2024-05-19',200,600,0.03,0.09,0,'Calibration due','Nuclear','NetB','v1.9',8000);
INSERT INTO cosmic_radiation_monitor VALUES (3,'CRS-003','Deep Space Probe','-','-','-','Silicon','0.0012','2024-02-01','2024-07-31',365,900,0.07,0.15,1,'Radiation spike detected','RTG','NetC','v3.0',1200);

-- Alien Cultural Artifact
CREATE TABLE alien_cultural_artifact (
    id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    species_origin TEXT,
    discovery_site TEXT,
    discovery_date TEXT,
    dimensions_cm TEXT,
    material TEXT,
    cultural_significance TEXT,
    estimated_age_years INTEGER,
    current_location TEXT,
    curator_name TEXT,
    exhibit_status TEXT,
    preservation_method TEXT,
    iconography_description TEXT,
    translation_notes TEXT,
    acquisition_method TEXT,
    provenance TEXT,
    legal_status TEXT,
    insurance_value_usd REAL,
    exhibition_history TEXT,
    notes TEXT
);

INSERT INTO alien_cultural_artifact VALUES (1,'Vulcan Obelisk','Vulcan','Vulcan Prime Crater','2023-11-12','150x30x30','Alloy','Ritual of Light',12000,'Universal Museum','Dr Omar Khan','On Display','Climate Controlled','Engraved suns','No translation yet','Excavation','Vulcan Council','500000','2024-World Expo','Key piece of Vulcan heritage');
INSERT INTO alien_cultural_artifact VALUES (2,'Zyphorian Stela','Zyphor','Zyphor Archive Ruins','2022-07-05','80x20x5','Ceramic','Historical Record',8500,'Galactic Archives','Dr Maya Liu','In Storage','Nitrogen Atmosphere','Depicts star maps','Partial translation','Donation','Zyphor Embassy','300000','2023-Interstellar Expo','Fragile, limited handling');
INSERT INTO alien_cultural_artifact VALUES (3,'Krell Sigil','Krell','Krell Moon Base','2024-03-18','45x45x2','Polymer Composite','Warrior Emblem',4000,'Krell Cultural Center','Dr Sven Ortiz','On Loan','UV Light Suppression','Abstract geometric patterns','Fully translated','Purchase','Krell Trade Corp','200000','2024-Regional Exhibit','Highly sought after');

-- Cybernetic Implant Inventory
CREATE TABLE cybernetic_implant_inventory (
    id INTEGER PRIMARY KEY,
    implant_model TEXT,
    manufacturer TEXT,
    implant_type TEXT,
    generation INTEGER,
    neural_interface INTEGER,
    power_source TEXT,
    battery_life_hours REAL,
    weight_grams REAL,
    size_cm TEXT,
    biocompatibility_rating TEXT,
    regulatory_approval_status TEXT,
    market_release_date TEXT,
    warranty_years INTEGER,
    unit_price_usd REAL,
    stock_quantity INTEGER,
    distributor TEXT,
    compliance_standard TEXT,
    safety_incident_reported INTEGER,
    notes TEXT
);

INSERT INTO cybernetic_implant_inventory VALUES (1,'NeuroLinkX1','NeuroTech','Neural','3',1,'Lithium','48','35','5x2x1','A+','Approved','2023-09-01',2,15000,250,'BioDistrib','ISO9001',0,'Used for cognitive enhancement');
INSERT INTO cybernetic_implant_inventory VALUES (2,'OptiVis200','VisiCorp','Ocular','2',0,'Solar','72','20','3x1.5x0.8','A','Pending','2024-04-15',1,8000,400,'OptiSupply','ISO13485',1,'Early version with lens glare issues');
INSERT INTO cybernetic_implant_inventory VALUES (3,'StrengthArmX','PowerMeds','Musculoskeletal','4',1,'FuelCell','96','120','15x5x3','B+','Approved','2022-06-20',3,25000,150,'MediDistrib','ISO14001',0,'Enhanced strength for laborers');

-- Renewable Energy Policy
CREATE TABLE renewable_energy_policy (
    id INTEGER PRIMARY KEY,
    policy_name TEXT,
    jurisdiction TEXT,
    enactment_date TEXT,
    expiration_date TEXT,
    target_renewable_percentage REAL,
    baseline_year INTEGER,
    reporting_frequency TEXT,
    incentives_type TEXT,
    tax_credit_amount_usd REAL,
    grant_funding_usd REAL,
    compliance_agency TEXT,
    enforcement_mechanism TEXT,
    penalties_structure TEXT,
    public_consultation_date TEXT,
    revision_history TEXT,
    objectives_summary TEXT,
    sector_applicable TEXT,
    monitoring_body TEXT,
    notes TEXT
);

INSERT INTO renewable_energy_policy VALUES (1,'SolarBoost Initiative','Terra','2023-01-15','2033-01-15',45.0,2020,'Annual','Subsidy',5000,2000000,'EnergyCommission','Audits','Fines','2022-11-30','v1.0','Increase solar adoption','Residential','RenewableWatch','Focused on rooftop panels');
INSERT INTO renewable_energy_policy VALUES (2,'WindGrowth Act','Luna','2024-05-01','2034-05-01',60.0,2022,'Biannual','Tax Credit',7500,3500000,'WindAuthority','Inspections','Penalty Fees','2024-03-20','v0.9','Expand offshore wind farms','Industrial','WindMonitor','Includes marine habitat safeguards');
INSERT INTO renewable_energy_policy VALUES (3,'HydroFuture Plan','Mars Colony','2025-02-10','2035-02-10',55.0,2025,'Quarterly','Grant','10000',5000000,'WaterResourcesDept','Remote Sensing','Escalating Fines','2024-12-01','draft','Boost hydroelectric capacity','Utility','HydroAudit','Targets abandoned river dams');

-- Meta Universe Governance
CREATE TABLE meta_universe_governance (
    id INTEGER PRIMARY KEY,
    governing_body_name TEXT,
    establishment_date TEXT,
    jurisdiction_scope TEXT,
    charter_document TEXT,
    voting_mechanism TEXT,
    member_count INTEGER,
    quorum_requirement REAL,
    term_length_years INTEGER,
    decision_threshold_percent REAL,
    budget_usd REAL,
    audit_frequency_years INTEGER,
    dispute_resolution_process TEXT,
    transparency_index INTEGER,
    digital_identity_integration INTEGER,
    policy_enforcement_agency TEXT,
    annual_report_publication_date TEXT,
    amendment_procedure TEXT,
    strategic_goals_summary TEXT,
    notes TEXT
);

INSERT INTO meta_universe_gov
VALUES (1,'Meta Council','2120-01-01','All Parallel Worlds','Charter001','WeightedVote',125,0.6,5,66.7,50000000,2,'MediationPanel',85,1,'RegulationDept','2123-12-31','Two‑step vote','Maintain stability across universes','Initial governing body');
INSERT INTO meta_universe_gov
VALUES (2,'Interdimensional Senate','2140-06-15','Multiverse Domains','CharterX','SimpleMajority',200,0.5,4,75,80000000,1,'ArbitrationBoard',90,1,'EnforcementAgency','2143-06-30','Supermajority amendment','Promote cooperation and resource sharing','Expanded membership');
INSERT INTO meta_universe_gov
VALUES (3,'Quantum Assembly','2155-03-20','Quantum Realms','CharterQ','Consensus','90',0.7,6,80,30000000,3,'QuantumCourt',92,0,'QuantumWatch','2158-03-20','Consensus required','Safeguard quantum integrity','Focus on quantum experiment regulation');