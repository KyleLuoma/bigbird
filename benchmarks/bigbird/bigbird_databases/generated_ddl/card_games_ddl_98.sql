-- Arcane Energy Nodes – monitoring of magical power generation points
CREATE TABLE arcane_energy_nodes
(
    id                      INTEGER PRIMARY KEY AUTOINCREMENT,
    node_name               TEXT,
    sector                  TEXT,
    latitude                REAL,
    longitude               REAL,
    activation_date         DATE,
    energy_capacity         REAL,
    current_output          REAL,
    node_status             TEXT,
    maintenance_cycle       INTEGER,
    last_maintenance        DATE,
    firmware_version        TEXT,
    controller_id           INTEGER,
    temperature_c           REAL,
    humidity_percent        REAL,
    power_source            TEXT,
    radiation_level         REAL,
    overload_flag           INTEGER,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE
);

INSERT INTO arcane_energy_nodes (id,node_name,sector,latitude,longitude,activation_date,energy_capacity,current_output,node_status,maintenance_cycle,last_maintenance,firmware_version,controller_id,temperature_c,humidity_percent,power_source,radiation_level,overload_flag,notes,created_at,updated_at) VALUES
(1,'NodeAlpha','NorthSector',45.12,-122.34,'2020-05-01',1500.0,750.5,'active',30,'2022-12-01','v1.2',101,23.5,45.0,'geodesic',0.02,0,'Initial deployment','2020-05-01','2023-01-15'),
(2,'NodeBeta','EastSector',46.78,-121.56,'2021-03-15',2000.0,1200.0,'maintenance',45,'2023-03-01','v1.3',102,25.0,40.0,'crystal',0.05,0,'Routine check','2021-03-15','2023-03-10'),
(3,'NodeGamma','WestSector',44.55,-123.78,'2022-01-20',1800.0,900.3,'active',30,'2023-01-20','v1.4',103,22.0,42.5,'etheric',0.01,1,'Overload incident','2022-01-20','2023-02-05');

-- Planar Shift Schedule – planned inter‑planar travel events
CREATE TABLE planar_shift_schedule
(
    id                      INTEGER PRIMARY KEY AUTOINCREMENT,
    shift_name              TEXT,
    start_date              DATE,
    end_date                DATE,
    origin_plane            TEXT,
    destination_plane       TEXT,
    catalyst                TEXT,
    required_artifacts      TEXT,
    risk_level              TEXT,
    participant_limit       INTEGER,
    registered_participants INTEGER,
    coordinator_name        TEXT,
    briefing_location       TEXT,
    shift_status            TEXT,
    estimated_duration_hours REAL,
    actual_duration_hours   REAL,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE,
    external_ref            TEXT,
    budget_usd              REAL
);

INSERT INTO planar_shift_schedule (id,shift_name,start_date,end_date,origin_plane,destination_plane,catalyst,required_artifacts,risk_level,participant_limit,registered_participants,coordinator_name,briefing_location,shift_status,estimated_duration_hours,actual_duration_hours,notes,created_at,updated_at,external_ref,budget_usd) VALUES
(1,'ShiftOmega','2023-06-01','2023-06-03','PlaneA','PlaneB','AetherStone','ArtifactX,ArtifactY','high',50,48,'EldrinMira','HallOfEchoes','completed',48.0,47.5,'All systems nominal','2023-04-15','2023-06-04','REF001',250000.0),
(2,'ShiftSigma','2023-09-10','2023-09-12','PlaneC','PlaneD','ChronoFlux','ArtifactZ','medium',30,28,'LiraThane','ArcaneSanctum','completed',36.0,35.8,'Minor temporal distortion','2023-07-20','2023-09-13','REF002',180000.0),
(3,'ShiftTheta','2024-01-20','2024-01-22','PlaneE','PlaneF','VoidCore','ArtifactM,ArtifactN','low',20,15,'VorenKell','EldritchTower','scheduled',24.0,NULL,'Preparation phase','2023-12-01','2023-12-15','REF003',120000.0);

-- Ancient Ruins Explorations – field investigations of lost structures
CREATE TABLE ancient_ruins_explorations
(
    id                      INTEGER PRIMARY KEY AUTOINCREMENT,
    ruin_name               TEXT,
    location                TEXT,
    discovered_by           TEXT,
    discovery_date          DATE,
    exploration_start       DATE,
    exploration_end         DATE,
    lead_archaeologist      TEXT,
    team_size               INTEGER,
    findings_summary        TEXT,
    artifacts_count         INTEGER,
    threats_encountered     TEXT,
    terrain_type            TEXT,
    climate                 TEXT,
    accessibility_score     INTEGER,
    funding_usd             REAL,
    preservation_status     TEXT,
    gps_latitude            REAL,
    gps_longitude           REAL,
    notes                   TEXT,
    created_at              DATE
);

INSERT INTO ancient_ruins_explorations (id,ruin_name,location,discovered_by,discovery_date,exploration_start,exploration_end,lead_archaeologist,team_size,findings_summary,artifacts_count,threats_encountered,terrain_type,climate,accessibility_score,funding_usd,preservation_status,gps_latitude,gps_longitude,notes,created_at) VALUES
(1,'ObsidianTemple','Stormreach','DrArius','2019-04-12','2020-02-01','2020-04-15','ProfLuna','12','Stone carvings and crystal lenses','5','None','Mountainous','Cold',78,500000.0,'stable',34.5678,-117.8901,'First comprehensive survey','2019-04-12'),
(2,'VeiledCitadel','Silvershade','ExplorersGuild','2021-08-23','2022-05-10','2022-06-20','DrMerek','8','Ancient weaponry fragments','12','Cave‑in risk','Forest','Temperate',65,300000.0,'fragile',45.1234,-122.3456,'Partial excavation pending','2021-08-23'),
(3,'SapphireVault','Eldermist','MageCouncil','2023-01-05','2023-09-01','2023-11-30','ArchMageYara','15','Enchanted runes and gem deposits','20','Hostile fauna','Swamp','Humid',55,750000.0,'under restoration',39.8765,-120.6543,'Extended study scheduled','2023-01-05');

-- Mythic Beast Lineage – genealogical records of legendary creatures
CREATE TABLE mythic_beast_lineage
(
    id                      INTEGER PRIMARY KEY AUTOINCREMENT,
    beast_name              TEXT,
    species                 TEXT,
    generation              INTEGER,
    ancestor_id             INTEGER,
    habitat                 TEXT,
    magical_affinity        TEXT,
    lifespan_years          INTEGER,
    typical_size_cm         INTEGER,
    diet                    TEXT,
    temperament            TEXT,
    first_sighted           DATE,
    last_observed           DATE,
    notable_abilities       TEXT,
    clan                    TEXT,
    rank_in_hierarchy       TEXT,
    rarity                  TEXT,
    related_beast_ids       TEXT,
    description             TEXT,
    image_ref               TEXT,
    created_at              DATE
);

INSERT INTO mythic_beast_lineage (id,beast_name,species,generation,ancestor_id,habitat,magical_affinity,lifespan_years,typical_size_cm,diet,temperament,first_sighted,last_observed,notable_abilities,clan,rank_in_hierarchy,rarity,related_beast_ids,description,image_ref,created_at) VALUES
(1,'AetherDrake','Drake',5,0,'SkyCrests','Aether',300,2500,'Spirit','Majestic','2010-03-12','2022-11-05','StormSummon','TempestClan','Alpha','rare','2,3','Large winged beast with control over winds','aetherdrake.png','2010-03-12'),
(2,'GloomWyrm','Wyrm',3,1,'UmbralCaverns','Shadow',500,3400,'Minerals','Apathetic','2005-07-21','2021-06-18','NightVeil','ShadeClan','Beta','uncommon','1,4','Serpentine creature that blends into darkness','gloomwyrm.png','2005-07-21'),
(3,'LuminaPhoenix','Phoenix',2,2,'BlazingPlains','Light',150,1200,'Fire','Fiery','2018-09-10','2023-02-14','RebirthFlare','RadiantWing','Gamma','legendary','5','Mythic bird reborn from its own flames','lumina_phoenix.png','2018-09-10');

-- Wizard Duel Arena Logs – records of competitive magical duels
CREATE TABLE wizard_duel_arena_logs
(
    id                      INTEGER PRIMARY KEY AUTOINCREMENT,
    duel_id                 TEXT,
    arena_name              TEXT,
    duel_date               DATE,
    wizard_one              TEXT,
    wizard_two              TEXT,
    winner                  TEXT,
    duration_seconds        INTEGER,
    spell_count_wizard_one  INTEGER,
    spell_count_wizard_two  INTEGER,
    magical_energy_used_wizard_one REAL,
    magical_energy_used_wizard_two REAL,
    audience_size           INTEGER,
    officiator              TEXT,
    weather_condition       TEXT,
    arena_status            TEXT,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE,
    video_ref               TEXT,
    rating                  INTEGER
);

INSERT INTO wizard_duel_arena_logs (id,duel_id,arena_name,duel_date,wizard_one,wizard_two,winner,duration_seconds,spell_count_wizard_one,spell_count_wizard_two,magical_energy_used_wizard_one,magical_energy_used_wizard_two,audience_size,officiator,weather_condition,arena_status,notes,created_at,updated_at,video_ref,rating) VALUES
(1,'DUEL001','ArcaneColiseum','2022-11-20','Eldric','Morrigan','Eldric',420,25,22,3400.5,3100.0,1500,'GrandmasterVox','Clear','operational','Close match, final spell decisive','2022-11-20','2022-11-21','vid001.mp4',9),
(2,'DUEL002','MysticArena','2023-03-15','Seraphine','Thorin','Thorin',375,20,23,2980.0,3220.3,1800,'ArbiterLune','Rain','operational','Thorin used unexpected rune','2023-03-15','2023-03-16','vid002.mp4',8),
(3,'DUEL003','ElderSanctum','2023-07-05','Astra','Borin','Draw',600,30,30,5000.0,5000.0,2500,'SageOrion','Fog','maintenance','Both wizards exhausted, declared draw','2023-07-05','2023-07-06','vid003.mp4',7);

-- Magical Portal Traffic – usage metrics for inter‑dimensional gateways
CREATE TABLE magical_portal_traffic
(
    id                      INTEGER PRIMARY KEY AUTOINCREMENT,
    portal_id               TEXT,
    source_location         TEXT,
    destination_location    TEXT,
    activation_timestamp    DATE,
    deactivation_timestamp  DATE,
    travelers_count         INTEGER,
    average_travel_time_seconds INTEGER,
    energy_consumed         REAL,
    portal_status           TEXT,
    maintenance_required    INTEGER,
    last_inspection         DATE,
    operator_name           TEXT,
    security_level          TEXT,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE,
    anomaly_detected        INTEGER,
    anomaly_type            TEXT,
    bandwidth_gbps          REAL
);

INSERT INTO magical_portal_traffic (id,portal_id,source_location,destination_location,activation_timestamp,deactivation_timestamp,travelers_count,average_travel_time_seconds,energy_consumed,portal_status,maintenance_required,last_inspection,operator_name,security_level,notes,created_at,updated_at,anomaly_detected,anomaly_type,bandwidth_gbps) VALUES
(1,'PORTA001','ElderSpire','CrystalVale','2023-01-01','2023-12-31',12000,180,25000.5,'active',0,'2023-11-15','MagisTech','high','Stable operation throughout year','2023-01-01','2023-12-31',0,'none',15.2),
(2,'PORTB002','ShadowGrove','Sunreach','2022-06-10','2022-12-10',8000,210,18000.0,'decommissioned',1,'2022-11-30','ArcaneOps','medium','Decommission due to structural fatigue','2022-06-10','2022-12-10',1,'energy_spike',12.5),
(3,'PORTC003','MistHollow','AzureCanyon','2023-05-20','2024-05-20',15000,150,30000.0,'active',0,'2023-09-01','StormWard','high','Peak traffic during solstice','2023-05-20','2024-05-20',0,'none',18.0);

-- Elemental Conflux Records – documentation of high‑energy elemental events
CREATE TABLE elemental_conflux_records
(
    id                      INTEGER PRIMARY KEY AUTOINCREMENT,
    conflux_name            TEXT,
    element_type            TEXT,
    location                TEXT,
    peak_intensity          REAL,
    start_time              DATE,
    end_time                DATE,
    affected_area_sqkm      REAL,
    observed_by             TEXT,
    instrument_used         TEXT,
    data_file_ref           TEXT,
    safety_level            TEXT,
    evacuation_order        INTEGER,
    casualties              INTEGER,
    environmental_impact    TEXT,
    recovery_estimate_days  INTEGER,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE,
    external_report_id      TEXT,
    funding_usd             REAL
);

INSERT INTO elemental_conflux_records (id,conflux_name,element_type,location,peak_intensity,start_time,end_time,affected_area_sqkm,observed_by,instrument_used,data_file_ref,safety_level,evacuation_order,casualties,environmental_impact,recovery_estimate_days,notes,created_at,updated_at,external_report_id,funding_usd) VALUES
(1,'IgnisRift','Fire','VolcanicRidge',950.7,'2022-08-12','2022-08-14',120.5,'DrFlare','ThermalSpectrometer','ignis_rift_2022.dat','critical',1,12,'Severe scorch, vegetation loss','180','Rapid response required','2022-08-12','2022-09-01','ER001',500000.0),
(2,'AquaSurge','Water','Tidehaven',720.3,'2023-03-05','2023-03-06',85.0,'ProfNereid','HydroMapper','aqua_surge_2023.log','high',0,0,'Minor flooding of lowlands','30','Contained within 48 hrs','2023-03-05','2023-03-20','ER002',250000.0),
(3,'TerranPulse','Earth','Stonevale',680.0,'2024-01-22','2024-01-24',200.0,'GeoSurveyTeam','SeismicArray','terran_pulse_2024.bin','moderate',0,2,'Landslide in peripheral zones','90','Ongoing stabilization','2024-01-22','2024-02-15','ER003',350000.0);

-- Runic Translation Matrix – mapping of ancient runes to modern languages
CREATE TABLE runic_translation_matrix
(
    id                      INTEGER PRIMARY KEY AUTOINCREMENT,
    rune_symbol             TEXT,
    language                TEXT,
    meaning                 TEXT,
    phonetic                TEXT,
    unicode_point           TEXT,
    historical_period       TEXT,
    origin_region           TEXT,
    frequency_per_million   INTEGER,
    related_runes           TEXT,
    usage_context           TEXT,
    sample_inscription      TEXT,
    discovered_by           TEXT,
    discovery_year          INTEGER,
    preservation_state      TEXT,
    image_ref               TEXT,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE,
    scholar_contact         TEXT,
    confidence_score        REAL
);

INSERT INTO runic_translation_matrix (id,rune_symbol,language,meaning,phonetic,unicode_point,historical_period,origin_region,frequency_per_million,related_runes,usage_context,sample_inscription,discovered_by,discovery_year,preservation_state,image_ref,notes,created_at,updated_at,scholar_contact,confidence_score) VALUES
(1,'ᚠ','OldNor','wealth','fe','U+16A0','VikingAge','Scandinavia',15,'ᚢ,ᚦ','merchant','ᚠᚢᚦ','ArchaeologyDept',1998,'good','rune_f.png','Commonly used in trade marks','2020-01-10','2020-02-15','drEldric',0.98),
(2,'𐍈','Gothic','storm','storm','U+10348','MigrationPeriod','CentralEurope',8,'𐍉,𐍊','ritual','𐍈𐍉𐍊','DrLena',2005,'fair','rune_storm.png','Appears on battle standards','2021-05-22','2021-06-01','profMira',0.92),
(3,'☥','AncientEgypt','life','ankh','U+2625','LateDynasty','NileDelta',20,'☧,⚜','burial','☥𓂀','InstituteOfHistory',2012,'excellent','ankh.png','Found in royal tombs','2022-09-12','2022-09-20','drKhan',0.99);

-- Mana Flow Network Stats – performance metrics of the mana distribution system
CREATE TABLE mana_flow_network_stats
(
    id                      INTEGER PRIMARY KEY AUTOINCREMENT,
    network_name            TEXT,
    total_nodes             INTEGER,
    active_nodes            INTEGER,
    average_latency_ms      REAL,
    total_mana_flux         REAL,
    peak_mana_flux          REAL,
    daily_average_flux      REAL,
    maintenance_window      DATE,
    last_outage             DATE,
    outage_duration_minutes INTEGER,
    affected_regions        TEXT,
    operator_team           TEXT,
    compliance_status       TEXT,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE,
    audit_log_ref           TEXT,
    risk_rating             TEXT,
    projected_growth_percent REAL,
    budget_usd              REAL
);

INSERT INTO mana_flow_network_stats (id,network_name,total_nodes,active_nodes,average_latency_ms,total_mana_flux,peak_mana_flux,daily_average_flux,maintenance_window,last_outage,outage_duration_minutes,affected_regions,operator_team,compliance_status,notes,created_at,updated_at,audit_log_ref,risk_rating,projected_growth_percent,budget_usd) VALUES
(1,'ArcaneGridAlpha',150,145,12.5,500000.0,75000.0,48000.0,'2023-07-01','2023-04-15',45,'NorthValley,EastRidge','ManaOpsTeam','compliant','Stable with minor latency spikes','2023-01-10','2023-07-02','audit001','low',5.2,2000000.0),
(2,'MysticNetBeta',200,190,15.3,800000.0,120000.0,75000.0,'2023-08-15','2023-06-20',30,'SouthPlains,WestWoods','MysticDept','approved','Recent upgrade improved throughput','2023-02-05','2023-08-16','audit002','medium',7.8,3500000.0),
(3,'ElderFlowGamma',120,115,10.8,400000.0,60000.0,38000.0,'2023-09-10','2023-05-10',60,'CentralHighlands','ElderCouncil','pending','Planning phase for expansion','2023-03-12','2023-09-11','audit003','high',4.5,1500000.0);

-- Stellar Conjunction Log – observations of notable celestial alignments
CREATE TABLE stellar_conjunction_log
(
    id                      INTEGER PRIMARY KEY AUTOINCREMENT,
    conjunction_name        TEXT,
    primary_star            TEXT,
    secondary_star          TEXT,
    conjunction_date        DATE,
    visibility_region       TEXT,
    magnitude               REAL,
    duration_hours          REAL,
    observation_site        TEXT,
    observer_name           TEXT,
    equipment_used          TEXT,
    notes                   TEXT,
    data_file_ref           TEXT,
    atmospheric_conditions  TEXT,
    moon_phase              TEXT,
    solar_activity_index    REAL,
    impact_on_mana          REAL,
    ritual_associated       TEXT,
    created_at              DATE,
    updated_at              DATE,
    external_reference      TEXT,
    funding_usd             REAL
);

INSERT INTO stellar_conjunction_log (id,conjunction_name,primary_star,secondary_star,conjunction_date,visibility_region,magnitude,duration_hours,observation_site,observer_name,equipment_used,notes,data_file_ref,atmospheric_conditions,moon_phase,solar_activity_index,impact_on_mana,ritual_associated,created_at,updated_at,external_reference,funding_usd) VALUES
(1,'CelestiaMerge','Sirius','Procyon','2022-12-05','NorthernHemisphere',-1.2,5.0,'HighPeakObservatory','AstridVale','SpectroScope','Clear night, strong aurora','celestia_merge_2022.dat','Clear','Full','2.5','high','ManaAmplificationRitual','2022-12-05','2022-12-06','REFC001',120000.0),
(2,'TwinGlow','Betelgeuse','Rigel','2023-04-18','SouthernHemisphere',0.4,3.5,'DesertOutpost','KiranMoth','PhotonArray','Slight haze reduced visibility','twin_glow_2023.log','Hazy','FirstQuarter','1.8','moderate','StabilityRitual','2023-04-18','2023-04-19','REFC002',90000.0),
(3,'EclipseAlign','Sun','Moon','2024-08-21','Global','-0.9',2.0,'LunarBase','MiraZen','SolarCoronagraph','Partial eclipse, observable worldwide','eclipse_align_2024.bin','PartlyCloudy','New','3.0','very_high','GrandConvergenceRitual','2024-08-21','2024-08-22','REFC003',150000.0);