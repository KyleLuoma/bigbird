-- Mana crystal registry storing details about magical energy crystals
CREATE TABLE mana_crystal_registry
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    crystal_id             TEXT    UNIQUE,
    source                 TEXT,
    purity                 REAL,
    capacity               INTEGER,
    location               TEXT,
    discovered_date        DATE,
    owner                  TEXT,
    status                 TEXT,
    energy_output          REAL,
    temperature            REAL,
    last_maintenance       DATE,
    next_inspection        DATE,
    batch_number           TEXT,
    color                  TEXT,
    magical_resonance      INTEGER,
    charge_level           INTEGER,
    last_used              DATE,
    depletion_rate         REAL,
    remarks                TEXT,
    created_at             DATE,
    updated_at             DATE
);

INSERT INTO mana_crystal_registry (crystal_id, source, purity, capacity, location, discovered_date, owner, status, energy_output, temperature, last_maintenance, next_inspection, batch_number, color, magical_resonance, charge_level, last_used, depletion_rate, remarks, created_at, updated_at)
VALUES ('CRY001','cavern',99.5,1000,'northvale','2023-01-15','archmage_lyra','active',5000.0,23.5,'2023-06-01','2023-12-01','BATCHA','blue',8,95,'2023-08-10',0.05,'none','2023-01-15','2023-08-15');

INSERT INTO mana_crystal_registry (crystal_id, source, purity, capacity, location, discovered_date, owner, status, energy_output, temperature, last_maintenance, next_inspection, batch_number, color, magical_resonance, charge_level, last_used, depletion_rate, remarks, created_at, updated_at)
VALUES ('CRY002','riverbed',97.2,750,'eastbrook','2022-11-03','sorcerer_grek','inactive',3200.0,19.0,'2023-02-20','2023-08-20','BATCHB','green',5,40,'2023-07-01',0.12,'needs recharge','2022-11-03','2023-07-02');

INSERT INTO mana_crystal_registry (crystal_id, source, purity, capacity, location, discovered_date, owner, status, energy_output, temperature, last_maintenance, next_inspection, batch_number, color, magical_resonance, charge_level, last_used, depletion_rate, remarks, created_at, updated_at)
VALUES ('CRY003','mountain','95.0',1200,'highpeak','2023-03-22','mage_hara','active',6100.0,21.8,'2023-05-15','2023-11-15','BATCHC','red',9,88,'2023-09-05',0.03,'stable','2023-03-22','2023-09-06');

-- Log of individual spellcasting sessions
CREATE TABLE spellcasting_sessions
(
    id               INTEGER PRIMARY KEY AUTOINCREMENT,
    session_id       TEXT    UNIQUE,
    caster           TEXT,
    spell_name       TEXT,
    spell_level      INTEGER,
    casting_time     TEXT,
    mana_cost        REAL,
    success          INTEGER,
    target           TEXT,
    location         TEXT,
    session_date     DATE,
    duration_seconds INTEGER,
    notes            TEXT,
    outcome          TEXT,
    critical_hit     INTEGER,
    failure_reason   TEXT,
    equipment_used   TEXT,
    weather          TEXT,
    audience_size    INTEGER,
    recorded_by      TEXT,
    created_at       DATE,
    updated_at       DATE
);

INSERT INTO spellcasting_sessions (session_id, caster, spell_name, spell_level, casting_time, mana_cost, success, target, location, session_date, duration_seconds, notes, outcome, critical_hit, failure_reason, equipment_used, weather, audience_size, recorded_by, created_at, updated_at)
VALUES ('SS001','mage_ara','fireball',3,'1 action',45.0,1,'goblin_camp','shadow_forest','2023-08-01',5,'bright blaze','damage',0,'', 'staff_of_embers','rainy',12,'scribe_tom','2023-08-01','2023-08-01');

INSERT INTO spellcasting_sessions (session_id, caster, spell_name, spell_level, casting_time, mana_cost, success, target, location, session_date, duration_seconds, notes, outcome, critical_hit, failure_reason, equipment_used, weather, audience_size, recorded_by, created_at, updated_at)
VALUES ('SS002','wizard_ken','heal',1,'1 action',12.0,1,'ally_knight','temple_hall','2023-07-20',3,'soft glow','restored health',0,'', 'healing_robe','clear',5,'scribe_lynn','2023-07-20','2023-07-20');

INSERT INTO spellcasting_sessions (session_id, caster, spell_name, spell_level, casting_time, mana_cost, success, target, location, session_date, duration_seconds, notes, outcome, critical_hit, failure_reason, equipment_used, weather, audience_size, recorded_by, created_at, updated_at)
VALUES ('SS003','sorcerer_mal','arcane_shield',2,'1 action',30.0,0,'self','mountain_peak','2023-09-10',2,'shield fizzles','blocked',0,'insufficient mana','arcane_amulet','stormy',0,'scribe_oz','2023-09-10','2023-09-10');

-- Results of wizard duels
CREATE TABLE wizard_duel_results
(
    id                 INTEGER PRIMARY KEY AUTOINCREMENT,
    duel_id            TEXT    UNIQUE,
    wizard_one         TEXT,
    wizard_two         TEXT,
    arena              TEXT,
    duel_date          DATE,
    winner             TEXT,
    duration_seconds   INTEGER,
    spell_count_one    INTEGER,
    spell_count_two    INTEGER,
    damage_one         REAL,
    damage_two         REAL,
    audience_rating    REAL,
    magical_stability  INTEGER,
    notes              TEXT,
    created_at         DATE,
    updated_at         DATE,
    referee            TEXT,
    prize_pool         INTEGER,
    comment            TEXT,
    location_x         REAL,
    location_y         REAL
);

INSERT INTO wizard_duel_results (duel_id, wizard_one, wizard_two, arena, duel_date, winner, duration_seconds, spell_count_one, spell_count_two, damage_one, damage_two, audience_rating, magical_stability, notes, created_at, updated_at, referee, prize_pool, comment, location_x, location_y)
VALUES ('DUEL001','mage_ara','sorcerer_mal','crystal_court','2023-09-01','mage_ara',180,12,11,250.0,240.0,9.2,8,'intense clash','2023-09-01','2023-09-01','ref_john',5000,'spectacular','34.56','-117.89');

INSERT INTO wizard_duel_results (duel_id, wizard_one, wizard_two, arena, duel_date, winner, duration_seconds, spell_count_one, spell_count_two, damage_one, damage_two, audience_rating, magical_stability, notes, created_at, updated_at, referee, prize_pool, comment, location_x, location_y)
VALUES ('DUEL002','wizard_ken','archmage_lyra','ancient_ruins','2023-08-15','archmage_lyra',240,15,14,310.0,295.0,8.7,9,'use of unconventional spells','2023-08-15','2023-08-15','ref_mia',7500,'well fought','40.12','-122.34');

INSERT INTO wizard_duel_results (duel_id, wizard_one, wizard_two, arena, duel_date, winner, duration_seconds, spell_count_one, spell_count_two, damage_one, damage_two, audience_rating, magical_stability, notes, created_at, updated_at, referee, prize_pool, comment, location_x, location_y)
VALUES ('DUEL003','sorcerer_grek','wizard_ken','floating_island','2023-09-20','sorcerer_grek',300,18,18,420.0,415.0,9.5,7,'very close finish','2023-09-20','2023-09-20','ref_anna',10000,'edge of the world','45.00','-110.00');

-- Definitions of enchantments and their effects
CREATE TABLE enchantment_effects
(
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    enchantment_id    TEXT    UNIQUE,
    name              TEXT,
    tier              INTEGER,
    duration_seconds  INTEGER,
    mana_cost         REAL,
    required_level    INTEGER,
    effect_type       TEXT,
    magnitude         REAL,
    element           TEXT,
    is_permanent      INTEGER,
    cooldown_seconds  INTEGER,
    description       TEXT,
    visual_tag        TEXT,
    sound_tag         TEXT,
    caster_class      TEXT,
    rarity            TEXT,
    acquisition_method TEXT,
    created_at        DATE,
    updated_at        DATE,
    source_book       TEXT,
    lore_reference    TEXT,
    version_introduced TEXT
);

INSERT INTO enchantment_effects (enchantment_id, name, tier, duration_seconds, mana_cost, required_level, effect_type, magnitude, element, is_permanent, cooldown_seconds, description, visual_tag, sound_tag, caster_class, rarity, acquisition_method, created_at, updated_at, source_book, lore_reference, version_introduced)
VALUES ('ENCH001','flame_shield',2,120,35.0,5,'damage_reduction',15.0,'fire',0,60,'protects caster with a fiery aura','flame_aura','whoosh','mage','rare','quest_reward','2023-01-01','2023-01-01','grimoires_of_fire','chapter_3','v1.2');

INSERT INTO enchantment_effects (enchantment_id, name, tier, duration_seconds, mana_cost, required_level, effect_type, magnitude, element, is_permanent, cooldown_seconds, description, visual_tag, sound_tag, caster_class, rarity, acquisition_method, created_at, updated_at, source_book, lore_reference, version_introduced)
VALUES ('ENCH002','mist_veil',1,300,20.0,3,'stealth',0.0,'water',0,45,'creates a veil of mist for concealment','mist_cloud','soft_hum','sorcerer','uncommon','shop_purchase','2023-02-10','2023-02-10','shadows_of_mist','section_2','v1.3');

INSERT INTO enchantment_effects (enchantment_id, name, tier, duration_seconds, mana_cost, required_level, effect_type, magnitude, element, is_permanent, cooldown_seconds, description, visual_tag, sound_tag, caster_class, rarity, acquisition_method, created_at, updated_at, source_book, lore_reference, version_introduced)
VALUES ('ENCH003','earth_grasp',3,60,50.0,7,'control',25.0,'earth',0,90,'summons earth tendrils to bind enemies','earth_tendrils','crackle','druid','epic','event_drop','2023-03-05','2023-03-05','roots_of_the_world','glyph_7','v1.4');

-- Catalog of runic inscriptions found on artifacts
CREATE TABLE runic_inscriptions
(
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    inscription_id    TEXT    UNIQUE,
    artifact_id       TEXT,
    rune_sequence     TEXT,
    language          TEXT,
    discovered_by     TEXT,
    discovery_date    DATE,
    location_found    TEXT,
    meaning           TEXT,
    complexity_level  INTEGER,
    is_translatable   INTEGER,
    related_legend    TEXT,
    preservation_state TEXT,
    notes             TEXT,
    image_reference   TEXT,
    catalog_number    TEXT,
    estimated_age_years INTEGER,
    source_document   TEXT,
    created_at        DATE,
    updated_at        DATE,
    curator           TEXT,
    authenticity_score REAL,
    version_introduced TEXT
);

INSERT INTO runic_inscriptions (inscription_id, artifact_id, rune_sequence, language, discovered_by, discovery_date, location_found, meaning, complexity_level, is_translatable, related_legend, preservation_state, notes, image_reference, catalog_number, estimated_age_years, source_document, created_at, updated_at, curator, authenticity_score, version_introduced)
VALUES ('RUNE001','ART001','ᚠᚢᚦ','ancient','archaeologist_lee','2022-06-10','sunken_temple','binding of fire',4,1,'legend_of_the_blaze','good','well preserved','img001.jpg','CAT1001',1500,'dig_site_report','2022-06-11','2022-06-12','curator_ann',98.5,'v1.0');

INSERT INTO runic_inscriptions (inscription_id, artifact_id, rune_sequence, language, discovered_by, discovery_date, location_found, meaning, complexity_level, is_translatable, related_legend, preservation_state, notes, image_reference, catalog_number, estimated_age_years, source_document, created_at, updated_at, curator, authenticity_score, version_introduced)
VALUES ('RUNE002','ART045','☀︎☾','ancient','archaeologist_may','2021-09-22','ice_cavern','dual of light and dark',5,0,'twin_moon_myth','fair','faded edges','img045.png','CAT1045',2100,'cavern_expedition','2021-09-23','2021-09-24','curator_bob',92.3,'v1.0');

INSERT INTO runic_inscriptions (inscription_id, artifact_id, rune_sequence, language, discovered_by, discovery_date, location_found, meaning, complexity_level, is_translatable, related_legend, preservation_state, notes, image_reference, catalog_number, estimated_age_years, source_document, created_at, updated_at, curator, authenticity_score, version_introduced)
VALUES ('RUNE003','ART078','⚡⚔','ancient','archaeologist_sue','2023-01-15','storm_peak','power of storm',3,1,'storm_god_fable','excellent','clear markings','img078.tif','CAT1078',1800,'storm_peak_log','2023-01-16','2023-01-17','curator_kim',99.0,'v1.1');

-- Definitions of magical wards used in protection
CREATE TABLE magical_ward_definitions
(
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    ward_id           TEXT    UNIQUE,
    name              TEXT,
    tier              INTEGER,
    activation_method TEXT,
    mana_cost         REAL,
    duration_seconds  INTEGER,
    element           TEXT,
    radius_meters     REAL,
    is_permanent      INTEGER,
    cooldown_seconds  INTEGER,
    required_level    INTEGER,
    effect_description TEXT,
    visual_effect_tag TEXT,
    sound_effect_tag  TEXT,
    creator_class     TEXT,
    rarity            TEXT,
    discovery_source  TEXT,
    created_at        DATE,
    updated_at        DATE,
    lore_reference    TEXT,
    version_introduced TEXT,
    notes             TEXT,
    maintenance_interval_days INTEGER
);

INSERT INTO magical_ward_definitions (ward_id, name, tier, activation_method, mana_cost, duration_seconds, element, radius_meters, is_permanent, cooldown_seconds, required_level, effect_description, visual_effect_tag, sound_effect_tag, creator_class, rarity, discovery_source, created_at, updated_at, lore_reference, version_introduced, notes, maintenance_interval_days)
VALUES ('WARD001','glimmer_barrier',2,'chant',40.0,180,'light',12.5,0,90,4,'creates a shimmering shield','glimmer_aura','chime','mage','uncommon','old_grimoire','2023-04-01','2023-04-01','chapter_7','v1.2','requires periodic recalibration',30);

INSERT INTO magical_ward_definitions (ward_id, name, tier, activation_method, mana_cost, duration_seconds, element, radius_meters, is_permanent, cooldown_seconds, required_level, effect_description, visual_effect_tag, sound_effect_tag, creator_class, rarity, discovery_source, created_at, updated_at, lore_reference, version_introduced, notes, maintenance_interval_days)
VALUES ('WARD002','shadow_shroud',3,'ritual',60.0,300,'shadow',20.0,0,120,6,'obscures area in darkness','shadow_mist','low_whisper','sorcerer','rare','ancient_temple','2023-05-12','2023-05-12','legend_of_shadows','v1.3','cannot be used near fire',45);

INSERT INTO magical_ward_definitions (ward_id, name, tier, activation_method, mana_cost, duration_seconds, element, radius_meters, is_permanent, cooldown_seconds, required_level, effect_description, visual_effect_tag, sound_effect_tag, creator_class, rarity, discovery_source, created_at, updated_at, lore_reference, version_introduced, notes, maintenance_interval_days)
VALUES ('WARD003','earth_fortress',4,'stone_inscription',80.0,600,'earth',30.0,0,180,8,'forms a solid earthen barrier','earth_rise','rumble','druid','epic','mountain_monastery','2023-06-20','2023-06-20','stone_giants','v1.4','requires solid ground',60);

-- Records of spectral beast encounters
CREATE TABLE spectral_beast_encounters
(
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    encounter_id      TEXT    UNIQUE,
    beast_name        TEXT,
    classification    TEXT,
    appearance_date   DATE,
    location          TEXT,
    observed_by       TEXT,
    threat_level      INTEGER,
    is_hostile        INTEGER,
    duration_seconds  INTEGER,
    damage_inflicted  REAL,
    casualties        INTEGER,
    witnesses         INTEGER,
    notes             TEXT,
    evidence_link     TEXT,
    mystic_residue    TEXT,
    ambient_temperature REAL,
    weather_condition TEXT,
    moon_phase        TEXT,
    created_at        DATE,
    updated_at        DATE,
    research_team     TEXT,
    status_report     TEXT,
    follow_up_action  TEXT
);

INSERT INTO spectral_beast_encounters (encounter_id, beast_name, classification, appearance_date, location, observed_by, threat_level, is_hostile, duration_seconds, damage_inflicted, casualties, witnesses, notes, evidence_link, mystic_residue, ambient_temperature, weather_condition, moon_phase, created_at, updated_at, research_team, status_report, follow_up_action)
VALUES ('ENCB001','wraith_howler','undead','2023-07-02','graveyard_plateau','archaeologist_jin',7,1,360,250.0,3,5,'wailing echo across valley','evidence1.jpg','ethereal_ash',5.2,'foggy','waning_gibbous','2023-07-02','2023-07-02','team_nightwatch','contained','monitor for recurrence');

INSERT INTO spectral_beast_encounters (encounter_id, beast_name, classification, appearance_date, location, observed_by, threat_level, is_hostile, duration_seconds, damage_inflicted, casualties, witnesses, notes, evidence_link, mystic_residue, ambient_temperature, weather_condition, moon_phase, created_at, updated_at, research_team, status_report, follow_up_action)
VALUES ('ENCB002','luminous_phantom','spirit','2023-08-15','crystal_caves','mage_lara',3,0,180,0.0,0,2,'bright hovering form','evidence2.png','glimmer_dust',12.0,'clear','full_moon','2023-08-15','2023-08-15','team_dawn','observed','record for archive');

INSERT INTO spectral_beast_encounters (encounter_id, beast_name, classification, appearance_date, location, observed_by, threat_level, is_hostile, duration_seconds, damage_inflicted, casualties, witnesses, notes, evidence_link, mystic_residue, ambient_temperature, weather_condition, moon_phase, created_at, updated_at, research_team, status_report, follow_up_action)
VALUES ('ENCB003','ember_gargoyle','construct','2023-09-10','volcanic_ridge','sorcerer_mal',9,1,480,500.0,5,4,'lava spews from maw','evidence3.tif','charcoal_residue',85.0,'dry','new_moon','2023-09-10','2023-09-10','team_firebrand','critical','deploy anti‑fire wards');

-- Reports of dimensional anomalies
CREATE TABLE dimensional_anomaly_reports
(
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    report_id         TEXT    UNIQUE,
    anomaly_type      TEXT,
    detection_date    DATE,
    coordinates_x     REAL,
    coordinates_y     REAL,
    coordinates_z     REAL,
    observed_by       TEXT,
    intensity_level   INTEGER,
    duration_seconds  INTEGER,
    affected_area_m2  REAL,
    side_effects      TEXT,
    containment_status TEXT,
    mitigation_plan   TEXT,
    notes             TEXT,
    sensor_data_link  TEXT,
    alert_level       INTEGER,
    risk_assessment   TEXT,
    energy_signature  TEXT,
    created_at        DATE,
    updated_at        DATE,
    response_team     TEXT,
    status_summary    TEXT,
    follow_up_actions TEXT,
    documentation_ref TEXT
);

INSERT INTO dimensional_anomaly_reports (report_id, anomaly_type, detection_date, coordinates_x, coordinates_y, coordinates_z, observed_by, intensity_level, duration_seconds, affected_area_m2, side_effects, containment_status, mitigation_plan, notes, sensor_data_link, alert_level, risk_assessment, energy_signature, created_at, updated_at, response_team, status_summary, follow_up_actions, documentation_ref)
VALUES ('ANOM001','temporal_shift','2023-07-25',102.5,58.3,12.0,'researcher_lee',8,240,350.0,'time dilation','unstable','engage temporal dampeners','fluctuating clocks','sensor_a01.csv',9,'high','chronoton','2023-07-25','2023-07-25','team_epoch','ongoing','schedule recalibration','doc_temporal_001');

INSERT INTO dimensional_anomaly_reports (report_id, anomaly_type, detection_date, coordinates_x, coordinates_y, coordinates_z, observed_by, intensity_level, duration_seconds, affected_area_m2, side_effects, containment_status, mitigation_plan, notes, sensor_data_link, alert_level, risk_assessment, energy_signature, created_at, updated_at, response_team, status_summary, follow_up_actions, documentation_ref)
VALUES ('ANOM002','spatial_rift','2023-08-12',210.7,33.9,5.5,'engineer_mara',7,180,500.0,'gravity variance','contained','stabilize field generators','visible distortion','sensor_b02.csv',8,'moderate','spatium_core','2023-08-12','2023-08-12','team_spatial','stable','monitor field','doc_spatial_002');

INSERT INTO dimensional_anomaly_reports (report_id, anomaly_type, detection_date, coordinates_x, coordinates_y, coordinates_z, observed_by, intensity_level, duration_seconds, affected_area_m2, side_effects, containment_status, mitigation_plan, notes, sensor_data_link, alert_level, risk_assessment, energy_signature, created_at, updated_at, response_team, status_summary, follow_up_actions, documentation_ref)
VALUES ('ANOM003','reality_fissure','2023-09-05',75.0,120.0,0.0,'mage_nora',9,300,800.0,'matter incoherence','critical','activate nullification array','objects flicker','sensor_c03.csv',10,'critical','realium_flux','2023-09-05','2023-09-05','team_reality','emergency','immediate evacuation','doc_reality_003');

-- Statistics on elemental confluxes
CREATE TABLE elemental_conflux_stats
(
    id                 INTEGER PRIMARY KEY AUTOINCREMENT,
    conflux_id         TEXT    UNIQUE,
    element_primary    TEXT,
    element_secondary  TEXT,
    occurrence_date    DATE,
    coordinates_x      REAL,
    coordinates_y      REAL,
    intensity_score    REAL,
    duration_seconds   INTEGER,
    energy_output_mj   REAL,
    affected_entities  INTEGER,
    environmental_impact TEXT,
    stability_rating   INTEGER,
    observation_notes  TEXT,
    recorded_by        TEXT,
    equipment_used     TEXT,
    ambient_pressure_kpa REAL,
    ambient_humidity   REAL,
    weather_conditions TEXT,
    created_at         DATE,
    updated_at         DATE,
    governing_body     TEXT,
    verification_status TEXT,
    data_quality_score REAL,
    analysis_report    TEXT
);

INSERT INTO elemental_conflux_stats (conflux_id, element_primary, element_secondary, occurrence_date, coordinates_x, coordinates_y, intensity_score, duration_seconds, energy_output_mj, affected_entities, environmental_impact, stability_rating, observation_notes, recorded_by, equipment_used, ambient_pressure_kpa, ambient_humidity, weather_conditions, created_at, updated_at, governing_body, verification_status, data_quality_score, analysis_report)
VALUES ('CONF001','fire','air','2023-06-18',45.2,78.9,92.5,180,1500.0,12,'wildfire spread','unstable','heatwaves observed','technician_jim','thermal_imager',101.3,45.0,'sunny','2023-06-18','2023-06-18','elemental_agency','verified',0.97,'report_fire_air_001');

INSERT INTO elemental_conflux_stats (conflux_id, element_primary, element_secondary, occurrence_date, coordinates_x, coordinates_y, intensity_score, duration_seconds, energy_output_mj, affected_entities, environmental_impact, stability_rating, observation_notes, recorded_by, equipment_used, ambient_pressure_kpa, ambient_humidity, weather_conditions, created_at, updated_at, governing_body, verification_status, data_quality_score, analysis_report)
VALUES ('CONF002','water','earth','2023-07-22',120.5,34.1,78.0,240,2000.0,8,'soil saturation','stable','mudslide risk','observer_lia','hydro_sensor',100.8,70.2,'overcast','2023-07-22','2023-07-22','elemental_agency','verified',0.95,'report_water_earth_002');

INSERT INTO elemental_conflux_stats (conflux_id, element_primary, element_secondary, occurrence_date, coordinates_x, coordinates_y, intensity_score, duration_seconds, energy_output_mj, affected_entities, environmental_impact, stability_rating, observation_notes, recorded_by, equipment_used, ambient_pressure_kpa, ambient_humidity, weather_conditions, created_at, updated_at, governing_body, verification_status, data_quality_score, analysis_report)
VALUES ('CONF003','air','earth','2023-08-30',210.0,55.0,85.3,300,1800.0,15,'dust storm','moderate','low visibility','field_agent_kar','aero_lidar',101.0,30.0,'windy','2023-08-30','2023-08-30','elemental_agency','pending',0.80,'report_air_earth_003');

-- Operations of rune forge facilities
CREATE TABLE rune_forge_operations
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    forge_id               TEXT    UNIQUE,
    location               TEXT,
    manager                TEXT,
    operational_since      DATE,
    capacity_per_day       INTEGER,
    average_runtime_hours  REAL,
    energy_consumption_mwh REAL,
    staff_count            INTEGER,
    active_runes           INTEGER,
    maintenance_cycle_days INTEGER,
    last_inspection_date   DATE,
    safety_rating          INTEGER,
    output_quality_score   REAL,
    waste_material_tons    REAL,
    coolant_type           TEXT,
    coolant_volume_liters  REAL,
    emission_level_ppm     REAL,
    certification_body     TEXT,
    certification_number   TEXT,
    created_at             DATE,
    updated_at             DATE,
    compliance_status      TEXT,
    audit_report_link      TEXT,
    notes                  TEXT,
    upgrade_plan           TEXT,
    next_expansion_date    DATE
);

INSERT INTO rune_forge_operations (forge_id, location, manager, operational_since, capacity_per_day, average_runtime_hours, energy_consumption_mwh, staff_count, active_runes, maintenance_cycle_days, last_inspection_date, safety_rating, output_quality_score, waste_material_tons, coolant_type, coolant_volume_liters, emission_level_ppm, certification_body, certification_number, created_at, updated_at, compliance_status, audit_report_link, notes, upgrade_plan, next_expansion_date)
VALUES ('FORGE001','iron_valley','master_forge_ara','2015-04-01',500,22.5,120.0,45,320,30,'2023-06-15',9,0.96,12.5,'water','8000',15.2,'forge_auth','C-1023','2015-04-01','2023-06-20','compliant','audit_forge001.pdf','steady output','install_auto_cooling','2025-01-01');

INSERT INTO rune_forge_operations (forge_id, location, manager, operational_since, capacity_per_day, average_runtime_hours, energy_consumption_mwh, staff_count, active_runes, maintenance_cycle_days, last_inspection_date, safety_rating, output_quality_score, waste_material_tons, coolant_type, coolant_volume_liters, emission_level_ppm, certification_body, certification_number, created_at, updated_at, compliance_status, audit_report_link, notes, upgrade_plan, next_expansion_date)
VALUES ('FORGE002','crystal_hills','master_forge_mal','2018-09-15',650,20.0,140.0,52,410,28,'2023-07-10',8,0.94,10.0,'glycol','9500',12.8,'forge_auth','C-1089','2018-09-15','2023-07-12','compliant','audit_forge002.pdf','minor delays','add_aux_power','2026-03-15');

INSERT INTO rune_forge_operations (forge_id, location, manager, operational_since, capacity_per_day, average_runtime_hours, energy_consumption_mwh, staff_count, active_runes, maintenance_cycle_days, last_inspection_date, safety_rating, output_quality_score, waste_material_tons, coolant_type, coolant_volume_liters, emission_level_ppm, certification_body, certification_number, created_at, updated_at, compliance_status, audit_report_link, notes, upgrade_plan, next_expansion_date)
VALUES ('FORGE003','ember_plains','master_forge_ken','2020-01-20',800,24.0,160.0,60,500,35,'2023-08-05',7,0.92,14.2,'oil','11000',18.5,'forge_auth','C-1150','2020-01-20','2023-08-07','compliant','audit_forge003.pdf','high demand','expand_cooling_system','2027-06-01');