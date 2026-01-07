-- Regional partners table
CREATE TABLE regional_partners (
    partner_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    contact_name TEXT,
    contact_email TEXT,
    phone TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    country TEXT,
    partnership_start DATE,
    partnership_end DATE,
    revenue_share_percent REAL,
    tier TEXT,
    active INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    external_system_id TEXT
);

INSERT INTO regional_partners VALUES (1,'GlobalGames','Alice Smith','alice@example.com','1234567890','123 Main St','Suite 100','Metropolis','NY','12345','USA','2022-01-15','2025-12-31',15.0,'Gold',1,'Key strategic partner','2023-01-01','2023-01-02','GP001');
INSERT INTO regional_partners VALUES (2,'ArcadeWorks','Bob Jones','bob@example.com','2345678901','456 Oak Ave','Floor 2','Gotham','CA','54321','USA','2021-06-01','2024-05-31',12.5,'Silver',1,'Regional reseller','2023-02-10','2023-02-11','AW002');
INSERT INTO regional_partners VALUES (3,'PixelForge','Carol Lee','carol@example.com','3456789012','789 Pine Rd','','Star City','TX','67890','USA','2020-09-20','2023-09-19',10.0,'Bronze',0,'Contract expired','2023-03-15','2023-03-16','PF003');

-- Content moderation rules table
CREATE TABLE content_moderation_rules (
    rule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    rule_name TEXT,
    description TEXT,
    severity_level INTEGER,
    category TEXT,
    applies_to TEXT,
    action TEXT,
    automatic INTEGER,
    created_by TEXT,
    created_at DATE,
    updated_by TEXT,
    updated_at DATE,
    is_active INTEGER,
    escalation_path TEXT,
    max_violations INTEGER,
    penalty_points INTEGER,
    reviewer_role TEXT,
    audit_log_id INTEGER,
    tags TEXT,
    version INTEGER
);

INSERT INTO content_moderation_rules VALUES (1,'Profanity Filter','Blocks offensive language',3,'Language','Chat','Delete',1,'system','2023-01-01','admin','2023-01-02',1,'EscalateToMod',5,10,'Moderator',1001,'offensive,language',1);
INSERT INTO content_moderation_rules VALUES (2,'Spam Detection','Identifies repeated identical messages',2,'Spam','Forum','Warn',1,'system','2023-02-01','moderator','2023-02-02',1,'EscalateToAdmin',3,5,'Moderator',1002,'spam,repeat',1);
INSERT INTO content_moderation_rules VALUES (3,'NSFW Content','Detects adult imagery',5,'Media','Upload','Remove',0,'system','2023-03-01','admin','2023-03-02',1,'EscalateToLegal',1,20,'LegalTeam',1003,'nsfw,adult',1);

-- API error summaries table
CREATE TABLE api_error_summaries (
    summary_id INTEGER PRIMARY KEY AUTOINCREMENT,
    endpoint TEXT,
    http_method TEXT,
    error_code INTEGER,
    error_message TEXT,
    occurrence_count INTEGER,
    first_seen DATE,
    last_seen DATE,
    avg_response_time REAL,
    max_response_time REAL,
    min_response_time REAL,
    affected_user_ids TEXT,
    stack_trace_snippet TEXT,
    resolved INTEGER,
    resolution_date DATE,
    assigned_to TEXT,
    priority INTEGER,
    status TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO api_error_summaries VALUES (1,'/v1/cards','GET',500,'Internal Server Error',120,'2023-01-10','2023-02-15',350.5,800.0,120.0,'101,102,103','NullPointer at ServiceLayer',0,NULL,'engineer_a',2,'Open','2023-01-10','2023-02-16');
INSERT INTO api_error_summaries VALUES (2,'/v1/sets','POST',400,'Bad Request',45,'2023-02-01','2023-02-20',210.0,400.0,150.0,'201,202','ValidationError in Payload',1,'2023-02-21','engineer_b',1,'Closed','2023-02-01','2023-02-22');
INSERT INTO api_error_summaries VALUES (3,'/v1/users','PUT',401,'Unauthorized',30,'2023-03-05','2023-03-25',180.0,300.0,100.0,'301,302','AuthToken missing',1,'2023-03-26','engineer_c',3,'Closed','2023-03-05','2023-03-27');

-- Hardware inventory audit table
CREATE TABLE hardware_inventory_audit (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    hardware_id INTEGER,
    serial_number TEXT,
    location TEXT,
    audit_date DATE,
    auditor TEXT,
    condition TEXT,
    firmware_version TEXT,
    last_maintenance DATE,
    next_maintenance DATE,
    warranty_expiry DATE,
    notes TEXT,
    discrepancy_flag INTEGER,
    corrected_by TEXT,
    correction_date DATE,
    status TEXT,
    asset_tag TEXT,
    department TEXT,
    cost REAL,
    depreciation_years INTEGER
);

INSERT INTO hardware_inventory_audit VALUES (1,1001,'SN1001','DataCenterA','2023-01-15','john_doe','Good','v1.2.3','2022-12-01','2023-12-01','2025-01-01','No issues',0,NULL,NULL,'Active','AT1001','IT',2500.00,5);
INSERT INTO hardware_inventory_audit VALUES (2,1002,'SN1002','DataCenterB','2023-02-20','jane_smith','Fair','v1.3.0','2022-11-15','2023-11-15','2024-06-30','Minor wear',0,NULL,NULL,'Active','AT1002','IT',1800.00,4);
INSERT INTO hardware_inventory_audit VALUES (3,1003,'SN1003','OfficeC','2023-03-10','alice_johnson','Bad','v1.1.8','2022-10-05','2023-10-05','2023-09-30','Failed stress test',1,'bob_miller','2023-03-12','Repair','AT1003','Engineering',2200.00,5);

-- Virtual currency transactions table
CREATE TABLE virtual_currency_transactions (
    txn_id INTEGER PRIMARY KEY AUTOINCREMENT,
    wallet_id INTEGER,
    currency_code TEXT,
    amount REAL,
    txn_type TEXT,
    status TEXT,
    initiated_at DATE,
    completed_at DATE,
    source TEXT,
    destination TEXT,
    exchange_rate REAL,
    fee REAL,
    reference_id TEXT,
    notes TEXT,
    approved_by TEXT,
    approval_date DATE,
    is_fraudulent INTEGER,
    fraud_check_score REAL,
    related_order_id INTEGER,
    metadata TEXT
);

INSERT INTO virtual_currency_transactions VALUES (1,5001,'GEM',150.00,'Deposit','Completed','2023-01-05','2023-01-05','BankTransfer','Wallet5001',1.0,0.0,'REF001','Initial top up','admin_a','2023-01-06',0,0.0,3001,'{}');
INSERT INTO virtual_currency_transactions VALUES (2,5002,'GEM',-45.50,'Purchase','Completed','2023-02-12','2023-02-12','Wallet5002','ShopA',1.0,0.5,'REF002','Bought booster pack','admin_b','2023-02-13',0,0.0,3002,'{}');
INSERT INTO virtual_currency_transactions VALUES (3,5003,'GEM',200.00,'Transfer','Pending','2023-03-20','', 'Wallet5003','Wallet5004',1.0,1.0,'REF003','Peer to peer transfer','admin_c','2023-03-21',0,0.0,3003,'{}');

-- Fantasy world events log table
CREATE TABLE fantasy_world_events_log (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_name TEXT,
    event_type TEXT,
    start_date DATE,
    end_date DATE,
    location TEXT,
    npc_involved TEXT,
    player_impact TEXT,
    reward TEXT,
    difficulty_level INTEGER,
    duration_minutes INTEGER,
    storyline_branch TEXT,
    triggered_by TEXT,
    is_dynamic INTEGER,
    event_status TEXT,
    created_by TEXT,
    created_at DATE,
    updated_by TEXT,
    updated_at DATE,
    tags TEXT
);

INSERT INTO fantasy_world_events_log VALUES (1,'Dragon Siege','Combat','2023-01-10','2023-01-10','North Valley','Lord Drakos','All players lose 10 HP','Dragon Scale','Hard',45,'BranchA','QuestTrigger',1,'Completed','dev_team','2023-01-01','dev_team','2023-01-11','dragon,combat');
INSERT INTO fantasy_world_events_log VALUES (2,'Mystic Market','Trade','2023-02-15','2023-02-20','Silver City','Merchant Zara','Players can buy rare items','Rare Artifact','Medium',120,'BranchB','EventScheduler',0,'Active','event_admin','2023-02-01','event_admin','2023-02-16','market,trade');
INSERT INTO fantasy_world_events_log VALUES (3,'Forgotten Ruins Exploration','Exploration','2023-03-05','2023-03-07','Ancient Ruins','Archaeologist Finn','Unlocks new storyline','Ancient Tome','Easy',180,'BranchC','PlayerDiscovery',1,'Completed','story_team','2023-02-20','story_team','2023-03-08','ruins,exploration');

-- Player biometric data table
CREATE TABLE player_biometric_data (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    measurement_date DATE,
    heart_rate INTEGER,
    blood_pressure_systolic INTEGER,
    blood_pressure_diastolic INTEGER,
    oxygen_saturation REAL,
    stress_level INTEGER,
    sleep_hours REAL,
    steps INTEGER,
    calories_burned REAL,
    hydration_ml INTEGER,
    body_temperature REAL,
    mood_score INTEGER,
    notes TEXT,
    data_source TEXT,
    is_verified INTEGER,
    created_at DATE,
    updated_at DATE,
    version INTEGER
);

INSERT INTO player_biometric_data VALUES (1,2001,'2023-01-12',72,120,80,98.5,3,7.5,8000,2500.0,2000,36.6,8,'Morning measurement','wearable',1,'2023-01-12','2023-01-13',1);
INSERT INTO player_biometric_data VALUES (2,2002,'2023-02-20',68,115,75,99.0,2,8.0,9500,2800.0,2100,36.7,9,'Post-game', 'app',1,'2023-02-20','2023-02-21',1);
INSERT INTO player_biometric_data VALUES (3,2003,'2023-03-03',80,130,85,97.0,5,6.0,6000,2000.0,1800,36.8,6,'Evening after tournament','manual',0,'2023-03-03','2023-03-04',1);

-- Streaming third party ads table
CREATE TABLE streaming_third_party_ads (
    ad_id INTEGER PRIMARY KEY AUTOINCREMENT,
    platform TEXT,
    provider_name TEXT,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    impression_limit INTEGER,
    cost_per_mille REAL,
    total_spent REAL,
    targeting_criteria TEXT,
    ad_format TEXT,
    duration_seconds INTEGER,
    click_through_rate REAL,
    conversion_rate REAL,
    status TEXT,
    created_by TEXT,
    created_at DATE,
    updated_by TEXT,
    updated_at DATE,
    notes TEXT
);

INSERT INTO streaming_third_party_ads VALUES (1,'Twitch','AdCo','Spring Blast','2023-03-01','2023-03-31',500000,7.5,3750.0,'Age18-35','Video',30,0.02,0.005,'Active','ad_manager','2023-02-20','ad_manager','2023-03-02','Seasonal promo');
INSERT INTO streaming_third_party_ads VALUES (2,'YouTube','MediaHub','Game Launch','2023-04-10','2023-04-20',800000,10.0,8000.0,'Gamers','Banner',15,0.015,0.003,'Pending','ad_manager','2023-04-01','ad_manager','2023-04-11','New game teaser');
INSERT INTO streaming_third_party_ads VALUES (3,'Facebook','BrandX','Holiday Sale','2023-12-01','2023-12-31',1000000,5.0,5000.0,'All','Carousel',20,0.025,0.007,'Scheduled','ad_manager','2023-11-15','ad_manager','2023-12-02','Year end discount');

-- Supplier shipment schedule table
CREATE TABLE supplier_shipment_schedule (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_id INTEGER,
    shipment_id TEXT,
    expected_departure DATE,
    expected_arrival DATE,
    actual_departure DATE,
    actual_arrival DATE,
    transportation_mode TEXT,
    container_number TEXT,
    cargo_weight REAL,
    cargo_volume REAL,
    origin_port TEXT,
    destination_port TEXT,
    customs_status TEXT,
    handling_instructions TEXT,
    priority_level INTEGER,
    status TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    risk_assessment TEXT
);

INSERT INTO supplier_shipment_schedule VALUES (1,3001,'SHIP1001','2023-02-01','2023-02-10','2023-02-02','2023-02-11','Sea','CONT123','15000.0','60.0','Port A','Port B','Cleared','Handle with care',2,'In Transit','2023-01-25','2023-02-12','On schedule','Low');
INSERT INTO supplier_shipment_schedule VALUES (2,3002,'SHIP1002','2023-03-05','2023-03-12',NULL,NULL,'Air','CONT124','5000.0','15.0','Airport X','Airport Y','Pending','Fragile',1,'Pending','2023-02-28','2023-03-01','Awaiting departure','Medium');
INSERT INTO supplier_shipment_schedule VALUES (3,3003,'SHIP1003','2023-04-15','2023-04-25','2023-04-16','2023-04-24','Land','CONT125','20000.0','80.0','Warehouse 1','Warehouse 2','Cleared','Temperature controlled',3,'Delivered','2023-04-01','2023-04-26','Delivered on time','Low');

-- Game theory experiments table
CREATE TABLE game_theory_experiments (
    experiment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    hypothesis TEXT,
    methodology TEXT,
    start_date DATE,
    end_date DATE,
    participants INTEGER,
    results_summary TEXT,
    statistical_significance REAL,
    p_value REAL,
    confidence_interval TEXT,
    lead_researcher TEXT,
    funding_source TEXT,
    budget REAL,
    status TEXT,
    created_at DATE,
    updated_at DATE,
    data_repository TEXT,
    notes TEXT,
    version INTEGER
);

INSERT INTO game_theory_experiments VALUES (1,'Strategic Bluff','Bluffing increases win rate','Controlled matches','2023-01-01','2023-02-01',120,'Bluffing improved win by 8%','0.95',0.04,'0.02-0.14','Dr Smith','Grant A',50000.0,'Completed','2022-12-15','2023-02-05','repo1','No anomalies',1);
INSERT INTO game_theory_experiments VALUES (2,'Resource Allocation','Early resource investment yields higher scores','Simulation','2023-03-10','2023-04-10',80,'Early investment increased average score by 5','0.90',0.06,'0.01-0.09','Dr Lee','Corporate Sponsor',30000.0,'Ongoing','2023-03-01','2023-04-12','repo2','Data collection ongoing',1);
INSERT INTO game_theory_experiments VALUES (3,'Risk Aversion','Risk-averse players perform better in long games','Longitudinal study','2023-05-01','2023-06-30',150,'Risk-averse players had 3% higher win rate','0.85',0.07,'-0.01-0.07','Dr Patel','University Fund',40000.0,'Planned','2023-04-20','2023-07-01','repo3','Awaiting participant recruitment',1);