-- Table storing detailed parameters for magical spells used in gameplay simulations
CREATE TABLE arcane_spell_matrix (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    spell_name TEXT,
    school TEXT,
    level INTEGER,
    casting_time TEXT,
    range TEXT,
    components TEXT,
    duration TEXT,
    effect_description TEXT,
    base_power REAL,
    scaling_factor REAL,
    mana_cost INTEGER,
    mana_type TEXT,
    rarity TEXT,
    source_book TEXT,
    first_printed DATE,
    is_legendary INTEGER,
    requires_focus INTEGER,
    associated_artifact TEXT,
    designer TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO arcane_spell_matrix (spell_name,school,level,casting_time,range,components,duration,effect_description,base_power,scaling_factor,mana_cost,mana_type,rarity,source_book,first_printed,is_legendary,requires_focus,associated_artifact,designer,notes,created_at,updated_at) VALUES ('Fireball','Evocation',3,'1 action','150 ft','V,S','Instant','Deals fire damage in a radius',5.0,1.2,3,'Red','Common','Core Rulebook','2000-01-01',0,0,'Flame Orb','JaredK','Initial entry','2023-01-01','2023-01-01');
INSERT INTO arcane_spell_matrix (spell_name,school,level,casting_time,range,components,duration,effect_description,base_power,scaling_factor,mana_cost,mana_type,rarity,source_book,first_printed,is_legendary,requires_focus,associated_artifact,designer,notes,created_at,updated_at) VALUES ('Shield','Abjuration',1,'1 reaction','Self','V,S','1 round','Creates a magical barrier',2.0,0.8,1,'Blue','Uncommon','Advanced Spells','2005-06-15',0,1,'Aegis Crystal','MiraL','Revised version','2023-02-10','2023-02-10');
INSERT INTO arcane_spell_matrix (spell_name,school,level,casting_time,range,components,duration,effect_description,base_power,scaling_factor,mana_cost,mana_type,rarity,source_book,first_printed,is_legendary,requires_focus,associated_artifact,designer,notes,created_at,updated_at) VALUES ('Time Stop','Transmutation',9,'1 action','Self','V,S,M','1 round','Temporarily halts time for others',10.0,2.0,9,'White','Legendary','Chronicles','2010-11-30',1,1,'Chrono Sphere','Eldric','Limited use', '2023-03-05','2023-03-05');

-- Table tracking magical affinity profiles of players for personalization features
CREATE TABLE magical_affinity_profiles (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    primary_affinity TEXT,
    secondary_affinity TEXT,
    tertiary_affinity TEXT,
    affinity_score REAL,
    last_update DATE,
    bio TEXT,
    preferred_school TEXT,
    favored_spells TEXT,
    disliked_schools TEXT,
    avatar_url TEXT,
    achievement_badge TEXT,
    rank INTEGER,
    participation_level INTEGER,
    newsletter_opt_in INTEGER,
    theme_color TEXT,
    background_music TEXT,
    language_preference TEXT,
    timezone TEXT,
    custom_tagline TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO magical_affinity_profiles (player_id,primary_affinity,secondary_affinity,tertiary_affinity,affinity_score,last_update,bio,preferred_school,favored_spells,disliked_schools,avatar_url,achievement_badge,rank,participation_level,newsletter_opt_in,theme_color,background_music,language_preference,timezone,custom_tagline,created_at,updated_at) VALUES (101,'Fire','Air','Earth',87.5,'2023-04-01','Loves explosive combos','Evocation','Fireball,Lightning Bolt','Necromancy','http://example.com/avatars/101.png','Flame Master',12,5,1,'#FF4500','EpicBattle.mp3','en','UTC+2','Burn bright','2023-04-01','2023-04-01');
INSERT INTO magical_affinity_profiles (player_id,primary_affinity,secondary_affinity,tertiary_affinity,affinity_score,last_update,bio,preferred_school,favored_spells,disliked_schools,avatar_url,achievement_badge,rank,participation_level,newsletter_opt_in,theme_color,background_music,language_preference,timezone,custom_tagline,created_at,updated_at) VALUES (102,'Water','Earth','Air',92.3,'2023-04-02','Strategic and calm','Conjuration','Summon Water Elemental','Evocation','http://example.com/avatars/102.png','Tide Turner',8,7,1,'#1E90FF','OceanWaves.mp3','en','UTC-5','Flow with the tide','2023-04-02','2023-04-02');
INSERT INTO magical_affinity_profiles (player_id,primary_affinity,secondary_affinity,tertiary_affinity,affinity_score,last_update,bio,preferred_school,favored_spells,disliked_schools,avatar_url,achievement_badge,rank,participation_level,newsletter_opt_in,theme_color,background_music,language_preference,timezone,custom_tagline,created_at,updated_at) VALUES (103,'Necro','Dark','Shadow',78.9,'2023-04-03','Master of the unseen','Necromancy','Raise Dead','Healing','http://example.com/avatars/103.png','Grave Keeper',15,3,0,'#2F4F4F','DarkWhispers.mp3','en','UTC+1','From the shadows','2023-04-03','2023-04-03');

-- Table logging the operations of artifact forges across manufacturing facilities
CREATE TABLE artifact_forge_jobs (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    forge_id INTEGER,
    artifact_name TEXT,
    material_composition TEXT,
    required_skill_level INTEGER,
    estimated_hours REAL,
    actual_hours REAL,
    start_date DATE,
    completion_date DATE,
    quality_grade TEXT,
    inspector_name TEXT,
    notes TEXT,
    batch_number TEXT,
    temperature_celsius REAL,
    pressure_bar REAL,
    humidity_percent REAL,
    energy_consumption_kwh REAL,
    safety_incident_flag INTEGER,
    revision_number INTEGER,
    created_at DATE,
    updated_at DATE
);
INSERT INTO artifact_forge_jobs (forge_id,artifact_name,material_composition,required_skill_level,estimated_hours,actual_hours,start_date,completion_date,quality_grade,inspector_name,notes,batch_number,temperature_celsius,pressure_bar,humidity_percent,energy_consumption_kwh,safety_incident_flag,revision_number,created_at,updated_at) VALUES (201,'Arcane Crystal','Quartz+Mana Essence',5,12.5,13.2,'2023-03-01','2023-03-02','A','LaraV','Slight crack repaired','BCH-001',1500.0,2.5,30.0,250.0,0,1,'2023-03-01','2023-03-02');
INSERT INTO artifact_forge_jobs (forge_id,artifact_name,material_composition,required_skill_level,estimated_hours,actual_hours,start_date,completion_date,quality_grade,inspector_name,notes,batch_number,temperature_celsius,pressure_bar,humidity_percent,energy_consumption_kwh,safety_incident_flag,revision_number,created_at,updated_at) VALUES (202,'Eldritch Sigil','Obsidian+Void Dust',7,20.0,19.8,'2023-03-05','2023-03-07','S','MiroK','All specs met','BCH-002',2000.0,3.0,25.0,400.0,0,2,'2023-03-05','2023-03-07');
INSERT INTO artifact_forge_jobs (forge_id,artifact_name,material_composition,required_skill_level,estimated_hours,actual_hours,start_date,completion_date,quality_grade,inspector_name,notes,batch_number,temperature_celsius,pressure_bar,humidity_percent,energy_consumption_kwh,safety_incident_flag,revision_number,created_at,updated_at) VALUES (203,'Temporal Gear','Silver+Chrono Shard',9,30.0,32.5,'2023-03-10','2023-03-12','B','JunoR','Overtime due to calibration','BCH-003',1800.0,2.8,28.0,550.0,1,1,'2023-03-10','2023-03-12');

-- Table keeping inventory of spell components for alchemical shops
CREATE TABLE spell_component_inventory (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    shop_id INTEGER,
    component_name TEXT,
    category TEXT,
    rarity TEXT,
    quantity_on_hand INTEGER,
    unit_cost REAL,
    supplier_name TEXT,
    last_restock_date DATE,
    next_expected_delivery DATE,
    storage_location TEXT,
    hazardous_flag INTEGER,
    batch_code TEXT,
    expiry_date DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    min_threshold INTEGER,
    max_capacity INTEGER,
    temperature_requirement REAL,
    humidity_requirement REAL
);
INSERT INTO spell_component_inventory (shop_id,component_name,category,rarity,quantity_on_hand,unit_cost,supplier_name,last_restock_date,next_expected_delivery,storage_location,hazardous_flag,batch_code,expiry_date,notes,created_at,updated_at,min_threshold,max_capacity,temperature_requirement,humidity_requirement) VALUES (301,'Phoenix Feather','Organic','Rare',12,150.0,'MythicSupplies','2023-02-20','2023-04-01','Vault A1',0,'PF-202302','2025-12-31','Used in resurrection spells','2023-02-20','2023-02-20',5,30,22.0,40.0);
INSERT INTO spell_component_inventory (shop_id,component_name,category,rarity,quantity_on_hand,unit_cost,supplier_name,last_restock_date,next_expected_delivery,storage_location,hazardous_flag,batch_code,expiry_date,notes,created_at,updated_at,min_threshold,max_capacity,temperature_requirement,humidity_requirement) VALUES (302,'Void Ink','Material','Uncommon',85,5.5,'ArcaneInkCo','2023-03-10','2023-04-15','Shelf B3',0,'VI-202303','2024-06-30','For scrolls and sigils','2023-03-10','2023-03-10',20,200,18.0,45.0);
INSERT INTO spell_component_inventory (shop_id,component_name,category,rarity,quantity_on_hand,unit_cost,supplier_name,last_restock_date,next_expected_delivery,storage_location,hazardous_flag,batch_code,expiry_date,notes,created_at,updated_at,min_threshold,max_capacity,temperature_requirement,humidity_requirement) VALUES (303,'Dragon Scale','Organic','Legendary',2,2000.0,'DragonTrade','2023-01-15','2023-06-01','Vault C2',0,'DS-202301','2028-01-01','High defense crafting','2023-01-15','2023-01-15',1,5,15.0,30.0);

-- Table enumerating planar shift events recorded by the planar council
CREATE TABLE planar_shift_events (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    shift_id TEXT,
    origin_plane TEXT,
    destination_plane TEXT,
    shift_type TEXT,
    initiated_by TEXT,
    catalyst_item TEXT,
    mana_flow REAL,
    duration_minutes INTEGER,
    success_flag INTEGER,
    anomaly_detected INTEGER,
    notes TEXT,
    reported_date DATE,
    confirmed_date DATE,
    controller_name TEXT,
    security_level INTEGER,
    ambient_temperature REAL,
    ambient_pressure REAL,
    created_at DATE,
    updated_at DATE,
    event_category TEXT,
    risk_assessment TEXT
);
INSERT INTO planar_shift_events (shift_id,origin_plane,destination_plane,shift_type,initiated_by,catalyst_item,mana_flow,duration_minutes,success_flag,anomaly_detected,notes,reported_date,confirmed_date,controller_name,security_level,ambient_temperature,ambient_pressure,created_at,updated_at,event_category,risk_assessment) VALUES ('PS-001','Plane of Fire','Plane of Water','Cross','ArchmageZ','Flame Pearl',2500.0,15,1,0,'Smooth transition','2023-02-01','2023-02-02','GatekeeperA',5,30.0,1.0,'2023-02-01','2023-02-02','Standard','Low');
INSERT INTO planar_shift_events (shift_id,origin_plane,destination_plane,shift_type,initiated_by,catalyst_item,mana_flow,duration_minutes,success_flag,anomaly_detected,notes,reported_date,confirmed_date,controller_name,security_level,ambient_temperature,ambient_pressure,created_at,updated_at,event_category,risk_assessment) VALUES ('PS-002','Plane of Shadow','Plane of Light','Fusion','SorcererM','Umbral Lens',3400.0,22,0,1,'Unexpected feedback loop','2023-03-10','2023-03-12','GatekeeperB',9,45.0,0.9,'2023-03-10','2023-03-12','Experimental','High');
INSERT INTO planar_shift_events (shift_id,origin_plane,destination_plane,shift_type,initiated_by,catalyst_item,mana_flow,duration_minutes,success_flag,anomaly_detected,notes,reported_date,confirmed_date,controller_name,security_level,ambient_temperature,ambient_pressure,created_at,updated_at,event_category,risk_assessment) VALUES ('PS-003','Plane of Earth','Plane of Air','Tether','HistorianL','Earth Stone',1800.0,10,1,0,'Stable tether created','2023-04-05','2023-04-05','GatekeeperC',3,22.0,1.2,'2023-04-05','2023-04-05','Routine','Medium');

-- Table maintaining records of wizard academy student performance and curriculum
CREATE TABLE wizard_academy_records (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER,
    enrollment_year INTEGER,
    major TEXT,
    gpa REAL,
    credits_completed INTEGER,
    advisor_name TEXT,
    standing TEXT,
    honors_flag INTEGER,
    extracurriculars TEXT,
    disciplinary_actions INTEGER,
    last_semester_grade TEXT,
    scholarship_amount REAL,
    tuition_paid REAL,
    financial_aid_flag INTEGER,
    residence_hall TEXT,
    roommate_id INTEGER,
    advisor_meeting_count INTEGER,
    graduation_expected DATE,
    thesis_title TEXT,
    created_at DATE,
    updated_at DATE,
    email TEXT,
    phone_number TEXT,
    address TEXT,
    emergency_contact TEXT
);
INSERT INTO wizard_academy_records (student_id,enrollment_year,major,gpa,credits_completed,advisor_name,standing,honors_flag,extracurriculars,disciplinary_actions,last_semester_grade,scholarship_amount,tuition_paid,financial_aid_flag,residence_hall,roommate_id,advisor_meeting_count,graduation_expected,thesis_title,created_at,updated_at,email,phone_number,address,emergency_contact) VALUES (1001,2020,'Elemental Studies',3.85, ninety, 'ProfAldric','Good',1,'Debate Club',0,'A','1500.00','2000.00',1,'Hall of Flames',1002,5,'2024-06-01','Confluence of Elements','2023-01-15','2023-01-15','student1001@example.com','5551234567','123 Magic St','Parent:5559876543');
INSERT INTO wizard_academy_records (student_id,enrollment_year,major,gpa,credits_completed,advisor_name,standing,honors_flag,extracurriculars,disciplinary_actions,last_semester_grade,scholarship_amount,tuition_paid,financial_aid_flag,residence_hall,roommate_id,advisor_meeting_count,graduation_expected,thesis_title,created_at,updated_at,email,phone_number,address,emergency_contact) VALUES (1002,2019,'Arcane Theory',3.65,120,'ProfLyra','Excellent',0,'Chess Club',1,'B','1200.00','2200.00',0,'Hall of Stars',1001,3,'2023-06-01','Boundaries of Mana','2023-01-16','2023-01-16','student1002@example.com','5552345678','456 Enchant Rd','Guardian:5558765432');
INSERT INTO wizard_academy_records (student_id,enrollment_year,major,gpa,credits_completed,advisor_name,standing,honors_flag,extracurriculars,disciplinary_actions,last_semester_grade,scholarship_amount,tuition_paid,financial_aid_flag,residence_hall,roommate_id,advisor_meeting_count,graduation_expected,thesis_title,created_at,updated_at,email,phone_number,address,emergency_contact) VALUES (1003,2021,'Runic Arts',3.92,60,'ProfMorden','Good',1,'Music Ensemble',0,'A+','2000.00','1800.00',1,'Hall of Runes',NULL,2,'2025-06-01','Runic Symphonies','2023-01-17','2023-01-17','student1003@example.com','5553456789','789 Glyph Ave','Sibling:5557654321');

-- Table recording metrics for dimensional gate operations at various outposts
CREATE TABLE dimensional_gate_status (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    outpost_id INTEGER,
    gate_id TEXT,
    status TEXT,
    last_maintenance DATE,
    uptime_hours REAL,
    power_draw_kW REAL,
    active_shifts INTEGER,
    failed_shifts INTEGER,
    average_shift_duration REAL,
    coolant_level_percent REAL,
    shielding_integrity_percent REAL,
    operator_name TEXT,
    climate_zone TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    firmware_version TEXT,
    diagnostic_code INTEGER,
    emergency_shutdown_flag INTEGER,
    scheduled_downtime DATE
);
INSERT INTO dimensional_gate_status (outpost_id,gate_id,status,last_maintenance,uptime_hours,power_draw_kW,active_shifts,failed_shifts,average_shift_duration,coolant_level_percent,shielding_integrity_percent,operator_name,climate_zone,notes,created_at,updated_at,firmware_version,diagnostic_code,emergency_shutdown_flag,scheduled_downtime) VALUES (401,'DG-Alpha','Online','2023-02-20',1500.5,250.0,45,2,12.5,85.0,98.0,'GateKeeperX','Temperate','All systems green','2023-03-01','2023-03-01','v1.4.2',0,0,'2023-07-01');
INSERT INTO dimensional_gate_status (outpost_id,gate_id,status,last_maintenance,uptime_hours,power_draw_kW,active_shifts,failed_shifts,average_shift_duration,coolant_level_percent,shielding_integrity_percent,operator_name,climate_zone,notes,created_at,updated_at,firmware_version,diagnostic_code,emergency_shutdown_flag,scheduled_downtime) VALUES (402,'DG-Beta','Degraded','2023-01-15',900.0,300.0,30,5,15.0,70.0,92.0,'GateKeeperY','Arid','Minor coolant leak','2023-03-02','2023-03-02','v1.3.9',12,0,'2023-08-15');
INSERT INTO dimensional_gate_status (outpost_id,gate_id,status,last_maintenance,uptime_hours,power_draw_kW,active_shifts,failed_shifts,average_shift_duration,coolant_level_percent,shielding_integrity_percent,operator_name,climate_zone,notes,created_at,updated_at,firmware_version,diagnostic_code,emergency_shutdown_flag,scheduled_downtime) VALUES (403,'DG-Gamma','Offline','2022-12-01',0.0,0.0,0,0,0.0,0.0,0.0,'GateKeeperZ','Polar','Awaiting parts','2023-03-03','2023-03-03','v1.2.5',99,1,'2023-09-10');

-- Table tracking the research projects of the eldritch studies department
CREATE TABLE eldritch_research_projects (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    project_code TEXT,
    title TEXT,
    lead_scientist TEXT,
    start_date DATE,
    expected_end_date DATE,
    budget_usd REAL,
    status TEXT,
    phase INTEGER,
    published_papers INTEGER,
    citations INTEGER,
    key_findings TEXT,
    collaborators TEXT,
    funding_source TEXT,
    risk_level TEXT,
    ethical_approval INTEGER,
    data_repository TEXT,
    confidentiality_level TEXT,
    created_at DATE,
    updated_at DATE,
    abstract TEXT,
    related_projects TEXT
);
INSERT INTO eldritch_research_projects (project_code,title,lead_scientist,start_date,expected_end_date,budget_usd,status,phase,published_papers,citations,key_findings,collaborators,funding_source,risk_level,ethical_approval,data_repository,confidentiality_level,created_at,updated_at,abstract,related_projects) VALUES ('ER-001','Void Resonance Mapping','DrAether','2022-01-15','2024-12-31',750000.0,'Active',2,3,45,'Identified resonance patterns','InstLab,ChronoDept','Arcane Grants','High',1,'repo://void_resonance','Confidential','2023-03-01','2023-03-01','Study of the vibrational frequencies of the void','ER-002,ER-005');
INSERT INTO eldritch_research_projects (project_code,title,lead_scientist,start_date,expected_end_date,budget_usd,status,phase,published_papers,citations,key_findings,collaborators,funding_source,risk_level,ethical_approval,data_repository,confidentiality_level,created_at,updated_at,abstract,related_projects) VALUES ('ER-002','Eldritch Biomancy','ProfNexus','2021-06-01','2023-05-30',500000.0,'Completed',4,5,120,'Discovered new regenerative processes','BioDept,LifeSciences','Private Patron','Medium',1,'repo://biomancy','Restricted','2023-03-02','2023-03-02','Integration of eldritch energies with biological tissue','ER-001');
INSERT INTO eldritch_research_projects (project_code,title,lead_scientist,start_date,expected_end_date,budget_usd,status,phase,published_papers,citations,key_findings,collaborators,funding_source,risk_level,ethical_approval,data_repository,confidentiality_level,created_at,updated_at,abstract,related_projects) VALUES ('ER-003','Chronomantic Flux Stabilization','DrTempus','2023-02-01','2025-11-15',620000.0,'Planning',1,0,0,'Preliminary models suggest viable stabilizers','ChronoDept,QuantumLab','University Fund','High',0,'repo://chronoflux','Top Secret','2023-03-03','2023-03-03','Project aims to control temporal fluxes for safe application','ER-004');

-- Table describing the logistics of magical merchandise shipments
CREATE TABLE magical_merchandise_shipments (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    shipment_id TEXT,
    origin_warehouse TEXT,
    destination_venue TEXT,
    carrier TEXT,
    departure_date DATE,
    arrival_estimated DATE,
    arrival_actual DATE,
    items_shipped INTEGER,
    total_weight_kg REAL,
    manifest_url TEXT,
    customs_cleared INTEGER,
    insurance_value_usd REAL,
    handling_instructions TEXT,
    temperature_control INTEGER,
    humidity_control INTEGER,
    security_level TEXT,
    tracking_number TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    delay_reason TEXT,
    priority_flag INTEGER
);
INSERT INTO magical_merchandise_shipments (shipment_id,origin_warehouse,destination_venue,carrier,departure_date,arrival_estimated,arrival_actual,items_shipped,total_weight_kg,manifest_url,customs_cleared,insurance_value_usd,handling_instructions,temperature_control,humidity_control,security_level,tracking_number,notes,created_at,updated_at,delay_reason,priority_flag) VALUES ('MS-1001','WarehouseA','ConventionCenterX','ArcaneExpress','2023-04-01','2023-04-05','2023-04-05',250,1200.5,'http://manifest.com/MS-1001','1','50000.0','Handle with care','1','1','High','TRK-78901','Delivered on time','2023-04-01','2023-04-05','',1);
INSERT INTO magical_merchandise_shipments (shipment_id,origin_warehouse,destination_venue,carrier,departure_date,arrival_estimated,arrival_actual,items_shipped,total_weight_kg,manifest_url,customs_cleared,insurance_value_usd,handling_instructions,temperature_control,humidity_control,security_level,tracking_number,notes,created_at,updated_at,delay_reason,priority_flag) VALUES ('MS-1002','WarehouseB','ArenaY','MysticFreight','2023-04-02','2023-04-07',NULL,180,950.0,'http://manifest.com/MS-1002','0','30000.0','Do not tilt','0','0','Medium','TRK-78902','Delayed due to weather','2023-04-02','2023-04-08','Storm','0);
INSERT INTO magical_merchandise_shipments (shipment_id,origin_warehouse,destination_venue,carrier,departure_date,arrival_estimated,arrival_actual,items_shipped,total_weight_kg,manifest_url,customs_cleared,insurance_value_usd,handling_instructions,temperature_control,humidity_control,security_level,tracking_number,notes,created_at,updated_at,delay_reason,priority_flag) VALUES ('MS-1003','WarehouseC','HallZ','PortalLink','2023-04-03','2023-04-04','2023-04-04',75,300.0,'http://manifest.com/MS-1003','1','15000.0','Fragile','1','1','Low','TRK-78903','Smooth transport','2023-04-03','2023-04-04','',0);

-- Table capturing detailed analysis of mana pool fluctuations during tournaments
CREATE TABLE mana_pool_history (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    player_id INTEGER,
    turn_number INTEGER,
    mana_type TEXT,
    mana_available INTEGER,
    mana_spent INTEGER,
    net_change INTEGER,
    source TEXT,
    timestamp DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    game_phase TEXT,
    pool_efficiency REAL,
    max_mana_reached INTEGER,
    min_mana_reached INTEGER,
    average_mana_per_turn REAL,
    mana_source_distribution TEXT,
    flashback_used INTEGER
);
INSERT INTO mana_pool_history (match_id,player_id,turn_number,mana_type,mana_available,mana_spent,net_change,source,timestamp,notes,created_at,updated_at,game_phase,pool_efficiency,max_mana_reached,min_mana_reached,average_mana_per_turn,mana_source_distribution,flashback_used) VALUES (5001,2001,1,Red,3,2,1,'Land','2023-04-10','Early game','2023-04-10','2023-04-10','Main','0.80',3,0,2.0,'Land:70%,Spell:30%',0);
INSERT INTO mana_pool_history (match_id,player_id,turn_number,mana_type,mana_available,mana_spent,net_change,source,timestamp,notes,created_at,updated_at,game_phase,pool_efficiency,max_mana_reached,min_mana_reached,average_mana_per_turn,mana_source_distribution,flashback_used) VALUES (5001,2001,5,Blue,7,5,2,'Spell','2023-04-10','Mid game swing','2023-04-10','2023-04-10','Main','0.85',8,3,4.5,'Land:60%,Spell:40%',1);
INSERT INTO mana_pool_history (match_id,player_id,turn_number,mana_type,mana_available,mana_spent,net_change,source,timestamp,notes,created_at,updated_at,game_phase,pool_efficiency,max_mana_reached,min_mana_reached,average_mana_per_turn,mana_source_distribution,flashback_used) VALUES (5001,2001,10,Green,10,8,2,'Artifact','2023-04-10','Late game push','2023-04-10','2023-04-10','End','0.90',12,5,7.0,'Land:50%,Artifact:30%,Spell:20%',0);

-- Table for logging security incidents at magical venues
CREATE TABLE venue_security_logs (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    incident_id TEXT,
    incident_type TEXT,
    reported_by TEXT,
    incident_date DATE,
    detection_method TEXT,
    severity_level INTEGER,
    description TEXT,
    actions_taken TEXT,
    resolved_flag INTEGER,
    resolution_date DATE,
    investigator_name TEXT,
    evidence_count INTEGER,
    related_incident_id TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    lockdown_triggered INTEGER,
    public_announcement_flag INTEGER,
    follow_up_required INTEGER
);
INSERT INTO venue_security_logs (venue_id,incident_id,incident_type,reported_by,incident_date,detection_method,severity_level,description,actions_taken,resolved_flag,resolution_date,investigator_name,evidence_count,related_incident_id,notes,created_at,updated_at,lockdown_triggered,public_announcement_flag,follow_up_required) VALUES (601,'VI-001','Unauthorized Portal','GuardA','2023-03-15','Sensor','3','Portal opened in backstage','Sealed portal, detained individual',1,'2023-03-16','InspectorZ',2,NULL,'No further issues','2023-03-15','2023-03-16',1,1,0);
INSERT INTO venue_security_logs (venue_id,incident_id,incident_type,reported_by,incident_date,detection_method,severity_level,description,actions_taken,resolved_flag,resolution_date,investigator_name,evidence_count,related_incident_id,notes,created_at,updated_at,lockdown_triggered,public_announcement_flag,follow_up_required) VALUES (602,'VI-002','Mana Leak','StaffB','2023-04-01','Manual Report','2','Minor mana leak in lobby','Ventilation adjusted, leak patched',1,'2023-04-01','InspectorY',1,NULL,'Leak contained','2023-04-01','2023-04-01',0,0,0);
INSERT INTO venue_security_logs (venue_id,incident_id,incident_type,reported_by,incident_date,detection_method,severity_level,description,actions_taken,resolved_flag,resolution_date,investigator_name,evidence_count,related_incident_id,notes,created_at,updated_at,lockdown_triggered,public_announcement_flag,follow_up_required) VALUES (603,'VI-003','Artifact Theft','SecurityCam','2023-04-05','Camera','4','Rare artifact missing from display','Area locked, investigation ongoing',0,NULL,'InspectorX',0,'VI-001','Potential insider involvement','2023-04-05','2023-04-05',1,1,1);

-- Table tracking experimental arcane energy readings from field sensors
CREATE TABLE arcane_energy_readings (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT,
    location TEXT,
    reading_timestamp DATE,
    energy_type TEXT,
    magnitude REAL,
    frequency_hz REAL,
    phase_angle REAL,
    ambient_temperature REAL,
    ambient_pressure REAL,
    notes TEXT,
    calibrated_flag INTEGER,
    calibration_date DATE,
    data_quality_score INTEGER,
    anomaly_detected INTEGER,
    operator_name TEXT,
    created_at DATE,
    updated_at DATE,
    source_system TEXT,
    measurement_units TEXT,
    reliability_rating TEXT
);
INSERT INTO arcane_energy_readings (sensor_id,location,reading_timestamp,energy_type,magnitude,frequency_hz,phase_angle,ambient_temperature,ambient_pressure,notes,calibrated_flag,calibration_date,data_quality_score,anomaly_detected,operator_name,created_at,updated_at,source_system,measurement_units,reliability_rating) VALUES ('SE-001','NorthField','2023-04-10','Mana Flux',1250.5,60.0,30.0,22.5,1.01,'Stable readings',1,'2023-03-01',95,0,'TechA','2023-04-10','2023-04-10','SensorNet','Units','High');
INSERT INTO arcane_energy_readings (sensor_id,location,reading_timestamp,energy_type,magnitude,frequency_hz,phase_angle,ambient_temperature,ambient_pressure,notes,calibrated_flag,calibration_date,data_quality_score,anomaly_detected,operator_name,created_at,updated_at,source_system,measurement_units,reliability_rating) VALUES ('SE-002','EastRidge','2023-04-11','Essence Pulse',980.2,45.0,15.0,19.0,0.98,'Slight fluctuation',1,'2023-03-05',88,1,'TechB','2023-04-11','2023-04-11','SensorNet','Units','Medium');
INSERT INTO arcane_energy_readings (sensor_id,location,reading_timestamp,energy_type,magnitude,frequency_hz,phase_angle,ambient_temperature,ambient_pressure,notes,calibrated_flag,calibration_date,data_quality_score,anomaly_detected,operator_name,created_at,updated_at,source_system,measurement_units,reliability_rating) VALUES ('SE-003','SouthVale','2023-04-12','Arcane Resonance',1345.0,75.0,40.0,24.0,1.02,'Peak activity',1,'2023-03-10',92,0,'TechC','2023-04-12','2023-04-12','SensorNet','Units','High');

-- Table documenting the catalog of magical token definitions used in various games
CREATE TABLE token_definitions (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    token_code TEXT,
    name TEXT,
    description TEXT,
    color TEXT,
    shape TEXT,
    rarity TEXT,
    base_power INTEGER,
    base_toughness INTEGER,
    abilities TEXT,
    artwork_url TEXT,
    creator_name TEXT,
    creation_date DATE,
    last_modified DATE,
    is_collectible INTEGER,
    series_name TEXT,
    set_code TEXT,
    related_cards TEXT,
    uses_per_game INTEGER,
    official_rule_reference TEXT,
    created_at DATE,
    updated_at DATE,
    custom_tags TEXT,
    print_run INTEGER
);
INSERT INTO token_definitions (token_code,name,description,color,shape,rarity,base_power,base_toughness,abilities,artwork_url,creator_name,creation_date,last_modified,is_collectible,series_name,set_code,related_cards,uses_per_game,official_rule_reference,created_at,updated_at,custom_tags,print_run) VALUES ('TK-001','Mana Seed','Generates one mana of any color','Green','Circle','Common',0,0,'AddMana','http://art.example.com/TK-001.png','ArtistA','2022-01-10','2023-01-15',1,'Core Tokens','CORE','',3,'Rulebook p.45','2023-03-01','2023-03-01','seed,green',10000);
INSERT INTO token_definitions (token_code,name,description,color,shape,rarity,base_power,base_toughness,abilities,artwork_url,creator_name,creation_date,last_modified,is_collectible,series_name,set_code,related_cards,uses_per_game,official_rule_reference,created_at,updated_at,custom_tags,print_run) VALUES ('TK-002','Phantom Shade','Provides stealth advantage','Black','Hexagon','Uncommon',0,0,'Stealth','http://art.example.com/TK-002.png','ArtistB','2022-05-20','2023-02-20',1,'Shadow Series','SHDW','',2,'Rulebook p.78','2023-03-02','2023-03-02','stealth,shadow',5000);
INSERT INTO token_definitions (token_code,name,description,color,shape,rarity,base_power,base_toughness,abilities,artwork_url,creator_name,creation_date,last_modified,is_collectible,series_name,set_code,related_cards,uses_per_game,official_rule_reference,created_at,updated_at,custom_tags,print_run) VALUES ('TK-003','Arcane Beacon','Boosts spell effectiveness','Blue','Star','Rare',0,0,'SpellBoost','http://art.example.com/TK-003.png','ArtistC','2023-01-01','2023-04-01',1,'Beacon Series','BEAC','',1,'Rulebook p.102','2023-03-03','2023-03-03','boost,arcane',2000);