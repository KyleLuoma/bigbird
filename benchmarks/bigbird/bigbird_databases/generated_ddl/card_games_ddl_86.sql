-- Table storing design documents associated with card prototypes
CREATE TABLE card_design_documents (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    uuid TEXT,
    designer TEXT,
    version TEXT,
    doc_type TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    remarks TEXT,
    file_path TEXT,
    checksum TEXT,
    approval_date TEXT,
    approver TEXT,
    review_notes TEXT,
    confidentiality_level TEXT,
    document_format TEXT,
    page_count INTEGER,
    revision_number INTEGER,
    related_set_code TEXT,
    tags TEXT
);
INSERT INTO card_design_documents VALUES (1,'uuid-1111','Alice Smith','v1.0','spec','2023-01-10','2023-01-12','draft','Initial draft','/docs/spec1.pdf','abc123','2023-01-15','Bob Jones','Reviewed ok','internal','pdf',12,1,'SET001','prototype,core');
INSERT INTO card_design_documents VALUES (2,'uuid-2222','Carlos Ruiz','v2.1','artwork','2023-02-05','2023-02-07','approved','Final artwork','/artwork/img2.png','def456','2023-02-10','Dana Lee','All good','public','png',1,2,'SET002','art,legendary');
INSERT INTO card_design_documents VALUES (3,'uuid-3333','Evelyn Ng','v3.5','balance','2023-03-20','2023-03-22','archived','Balanced after playtest','/balance/bal3.xls','ghi789','2023-03-25','Frank Wu','Minor tweak','confidential','xls',3,3,'SET003','balance,playtest');

-- Table recording rule changes for the game
CREATE TABLE mtg_rule_change_log (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    rule_id TEXT,
    change_type TEXT,
    description TEXT,
    effective_date TEXT,
    previous_text TEXT,
    new_text TEXT,
    responsible_department TEXT,
    change_reason TEXT,
    revision_id TEXT,
    impacted_formats TEXT,
    comments TEXT,
    created_by TEXT,
    created_at TEXT,
    approved_by TEXT,
    approved_at TEXT,
    status TEXT,
    impact_score INTEGER,
    reference_url TEXT,
    notes TEXT
);
INSERT INTO mtg_rule_change_log VALUES (1,'R001','add','Allow blocks to be broken','2023-04-01','Old rule text','New rule text','Rules Committee','Gameplay improvement','rev-100','standard,commander','No comments','Grace','2023-03-20','Helen','2023-03-25','pending',5,'http://rules.example.com/r001','Initial entry');
INSERT INTO mtg_rule_change_log VALUES (2,'R045','modify','Adjust token creation timing','2023-05-15','Tokens created at end step','Tokens created immediately','Rules Committee','Clarify interaction','rev-101','standard','Reviewed by team','Ian','2023-04-30','Jack','2023-05-02','approved',8,'http://rules.example.com/r045','Approved after review');
INSERT INTO mtg_rule_change_log VALUES (3,'R078','remove','Delete outdated rule about life total','2023-06-10','Life total cannot exceed 20','(removed)','Rules Committee','Obsolete','rev-102','commander','Rule removed','Karen','2023-05-25','Leo','2023-06-01','archived',3,'http://rules.example.com/r078','Archived entry');

-- Overview of tournament series
CREATE TABLE tournament_series_overview (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    series_name TEXT,
    season TEXT,
    start_date TEXT,
    end_date TEXT,
    total_prize_pool INTEGER,
    main_venue TEXT,
    sponsor TEXT,
    broadcast_partner TEXT,
    region TEXT,
    format TEXT,
    max_players INTEGER,
    qualification_method TEXT,
    entry_fee INTEGER,
    prize_distribution TEXT,
    champion_player_id INTEGER,
    runner_up_player_id INTEGER,
    matches_played INTEGER,
    total_attendance INTEGER,
    social_media_hashtag TEXT
);
INSERT INTO tournament_series_overview VALUES (1,'World Championship','2023','2023-08-01','2023-08-07',250000,'Tokyo Convention Center','GlobalPlay','StreamPlus','Asia','standard',256,'Qualifiers','200','70% champion,30% runner-up',1001,1002,32,45000,'#WCT2023');
INSERT INTO tournament_series_overview VALUES (2,'Continental Cup','2023','2023-09-15','2023-09-20',80000,'Berlin Expo Hall','EuroGames','LiveCastEU','Europe','modern',128,'Open','100','50% champion, 25% runner-up,25% others',2001,2002,16,18000,'#EuroCup23');
INSERT INTO tournament_series_overview VALUES (3,'Summer Sprint','2023','2023-07-10','2023-07-12',20000,'Online','TechStream','Online','Global','limited',64,'Online Ranking','0','Winner takes all',3001,3002,8,5000,'#SummerSprint23');

-- Inventory of player‑crafted items
CREATE TABLE player_crafting_inventory (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    item_type TEXT,
    item_name TEXT,
    rarity TEXT,
    quantity INTEGER,
    acquisition_date TEXT,
    source TEXT,
    durability INTEGER,
    enhancement_level INTEGER,
    last_used TEXT,
    cooldown_remaining INTEGER,
    market_value INTEGER,
    tradeable_flag INTEGER,
    description TEXT,
    image_url TEXT,
    last_updated TEXT,
    crafted_by TEXT,
    recipe_id TEXT,
    expiration_date TEXT
);
INSERT INTO player_crafting_inventory VALUES (1,101,'artifact','Phoenix Feather','mythic',1,'2023-04-12','quest','100','5','2023-04-20',0,1500,1,'Grants fire immunity','/images/phoenix.png','2023-04-21','Alice','rec-001','2025-04-12');
INSERT INTO player_crafting_inventory VALUES (2,102,'weapon','Arcane Blade','rare',2,'2023-05-05','shop','80','3','2023-05-06',10,800,1,'Deals extra arcane damage','/images/blade.png','2023-05-07','Bob','rec-023','2024-05-05');
INSERT INTO player_crafting_inventory VALUES (3,103,'potion','Elixir of Insight','uncommon',5,'2023-03-22','event','-','0','2023-03-23',0,120,0,'Temporary knowledge boost','/images/elixir.png','2023-03-24','Carlos','rec-045','2023-09-22');

-- Version history for digital artifact assets
CREATE TABLE digital_artifact_version_history (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    artifact_uuid TEXT,
    version_number TEXT,
    change_summary TEXT,
    changed_by TEXT,
    change_date TEXT,
    file_hash TEXT,
    size_bytes INTEGER,
    format TEXT,
    storage_location TEXT,
    encrypted_flag INTEGER,
    encryption_method TEXT,
    checksum TEXT,
    previous_version_uuid TEXT,
    next_version_uuid TEXT,
    approval_status TEXT,
    reviewer TEXT,
    review_date TEXT,
    deployment_environment TEXT,
    notes TEXT,
    tags TEXT
);
INSERT INTO digital_artifact_version_history VALUES (1,'art-001','1.0','Initial upload','Dave','2023-01-01','hash001',204800,'png','/assets/art1_v1.png',0,'','chk001',NULL,'art-001-1.1','pending','Eve','2023-01-02','dev','First version','concept,early');
INSERT INTO digital_artifact_version_history VALUES (2,'art-001','1.1','Color correction','Fiona','2023-01-15','hash002',209715,'png','/assets/art1_v1.1.png',0,'','chk002','art-001-1.0','art-001-1.2','approved','George','2023-01-16','staging','Updated colors','concept,refined');
INSERT INTO digital_artifact_version_history VALUES (3,'art-001','1.2','Final release','Helen','2023-02-01','hash003',215040,'png','/assets/art1_final.png',1,'AES-256','chk003','art-001-1.1',NULL,'approved','Ian','2023-02-02','production','Ready for use','final,public');

-- Production schedule for each set
CREATE TABLE set_production_schedule (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    phase_name TEXT,
    start_date TEXT,
    end_date TEXT,
    lead_time_days INTEGER,
    resources_allocated TEXT,
    budget_usd INTEGER,
    manager TEXT,
    status TEXT,
    notes TEXT,
    milestone_flag INTEGER,
    dependencies TEXT,
    risk_level TEXT,
    mitigation_plan TEXT,
    actual_start_date TEXT,
    actual_end_date TEXT,
    variance_days INTEGER,
    compliance_check_passed INTEGER,
    external_vendor TEXT
);
INSERT INTO set_production_schedule VALUES (1,'SET001','Design','2023-01-01','2023-02-15',45,'design-team','50000','Alice','completed','All designs finalized',1,'artwork','low','regular reviews','2023-01-02','2023-02-14',-1,1,'DesignCo');
INSERT INTO set_production_schedule VALUES (2,'SET001','Printing','2023-02-20','2023-04-01',40,'print-facility','120000','Bob','in_progress','Printing underway',0,'design','medium','extra QA steps','2023-02-21',NULL,NULL,0,'PrintWorks');
INSERT INTO set_production_schedule VALUES (3,'SET001','Distribution','2023-04-05','2023-05-10',35,'logistics','80000','Carol','planned','Ready for shipping',0,'printing','low','standard shipping contracts',NULL,NULL,NULL,0,'ShipFast');

-- Environmental sensor readings captured at venues
CREATE TABLE venue_environmental_readings (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    sensor_type TEXT,
    reading_value REAL,
    unit TEXT,
    timestamp TEXT,
    recorded_by TEXT,
    accuracy REAL,
    calibration_date TEXT,
    maintenance_flag INTEGER,
    notes TEXT,
    anomaly_detected INTEGER,
    alert_level TEXT,
    location_detail TEXT,
    battery_level INTEGER,
    firmware_version TEXT,
    data_quality TEXT,
    aggregation_period TEXT,
    report_generated TEXT,
    reviewed_by TEXT
);
INSERT INTO venue_environmental_readings VALUES (1,10,'temperature',22.5,'C','2023-07-01T10:00:00','sensorA',0.1,'2023-06-01',0,'Normal operation',0,'low','hall A',95,'v1.2','high','hourly','2023-07-01','Dave');
INSERT INTO venue_environmental_readings VALUES (2,10,'humidity',45.2,'%','2023-07-01T10:00:00','sensorB',0.5,'2023-06-01',0,'Normal operation',0,'low','hall A',90,'v1.2','high','hourly','2023-07-01','Eve');
INSERT INTO venue_environmental_readings VALUES (3,10,'noise','55.0','dB','2023-07-01T10:00:00','sensorC',1.0,'2023-06-01',0,'Within limits',0,'low','hall A',80,'v1.2','medium','hourly','2023-07-01','Frank');

-- Metrics tracking sponsor engagement
CREATE TABLE sponsor_engagement_metrics (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_name TEXT,
    metric_name TEXT,
    metric_value INTEGER,
    period_start TEXT,
    period_end TEXT,
    target_value INTEGER,
    achieved_flag INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    data_source TEXT,
    confidence_score REAL,
    analyst TEXT,
    review_date TEXT,
    variance_percent REAL,
    channel TEXT,
    audience_segment TEXT,
    cost_usd INTEGER,
    roi_percent REAL
);
INSERT INTO sponsor_engagement_metrics VALUES (1,201,'Summer Blast','impressions',500000,'2023-06-01','2023-06-30',450000,1,'Exceeded expectations','2023-07-01','2023-07-02','analytics','0.95','Grace','2023-07-03',11.1,'digital','players 18-25',15000,12.3);
INSERT INTO sponsor_engagement_metrics VALUES (2,202,'Winter Wonderland','clicks',25000,'2023-12-01','2023-12-31',30000,0,'Below target','2024-01-05','2024-01-06','analytics','0.85','Helen','2024-01-07',-16.7,'social','players 30-40',8000,5.6);
INSERT INTO sponsor_engagement_metrics VALUES (3,203,'Spring Surge','conversions',1200,'2023-04-01','2023-04-30',1000,1,'Met goal','2023-05-05','2023-05-06','analytics','0.92','Ian','2023-05-07',20.0,'email','new players',5000,18.0);

-- Community translation projects for multilingual support
CREATE TABLE community_translation_project (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    project_name TEXT,
    language TEXT,
    source_locale TEXT,
    target_locale TEXT,
    total_strings INTEGER,
    translated_strings INTEGER,
    reviewers_assigned INTEGER,
    deadline TEXT,
    status TEXT,
    coordinator TEXT,
    translation_tool TEXT,
    quality_score REAL,
    last_sync_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    version TEXT,
    budget_usd INTEGER,
    external_partner TEXT
);
INSERT INTO community_translation_project VALUES (1,'Card Text FR','French','en_US','fr_FR',15000,7500,12,'2023-09-30','in_progress','Alice','Transifex',0.78,'2023-08-15','Halfway done','2023-08-01','2023-08-20','v0.5',20000,'LangPartner');
INSERT INTO community_translation_project VALUES (2,'Rulebook DE','German','en_US','de_DE',8000,8000,8,'2023-07-15','completed','Bob','Crowdin',0.94,'2023-07-14','All strings translated','2023-06-01','2023-07-16','v1.0',15000,'TransLingo');
INSERT INTO community_translation_project VALUES (3,'Set Descriptions ES','Spanish','en_US','es_ES',12000,3000,10,'2023-12-31','planned','Carol','Weblate',0.0,'2023-08-01','Not started yet','2023-08-10','2023-08-10','v0.0',25000,'GlobalLang');

-- Statistics for esports match performances
CREATE TABLE esports_match_statistics (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    tournament_id INTEGER,
    game_title TEXT,
    team_a_id INTEGER,
    team_b_id INTEGER,
    start_time TEXT,
    end_time TEXT,
    map_name TEXT,
    winner_team_id INTEGER,
    duration_seconds INTEGER,
    kills_team_a INTEGER,
    kills_team_b INTEGER,
    assists_team_a INTEGER,
    assists_team_b INTEGER,
    mvp_player_id INTEGER,
    viewership_peak INTEGER,
    chat_messages INTEGER,
    server_region TEXT,
    latency_average_ms INTEGER,
    notes TEXT
);
INSERT INTO esports_match_statistics VALUES (1,1001,501,'Arena of Valor',301,302,'2023-07-20 14:00:00','2023-07-20 14:45:00','Desert Oasis',301,2700,35,28,12,10,401,50000,1200,'NA',45,'Close match with comeback');
INSERT INTO esports_match_statistics VALUES (2,1002,501,'Arena of Valor',303,304,'2023-07-20 15:00:00','2023-07-20 15:30:00','Jungle Ruins',304,1800,22,30,8,14,402,42000,800,'EU',38,'High skill play by team B');
INSERT INTO esports_match_statistics VALUES (3,1003,502,'League of Legends',401,402,'2023-08-05 18:00:00','2023-08-05 18:40:00','Summoner\'s Rift',401,2400,45,40,20,18,503,85000,2000,'NA',52,'Record viewership for quarterfinal');