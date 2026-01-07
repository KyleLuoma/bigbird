-- Arena match reports
CREATE TABLE arena_match_reports (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_uuid TEXT,
    player_one_id INTEGER,
    player_two_id INTEGER,
    player_one_score INTEGER,
    player_two_score INTEGER,
    arena_id TEXT,
    start_time DATETIME,
    end_time DATETIME,
    format TEXT,
    deck_one_uuid TEXT,
    deck_two_uuid TEXT,
    result TEXT,
    notes TEXT,
    is_ranked INTEGER,
    season INTEGER,
    region TEXT,
    server_id TEXT,
    replay_url TEXT,
    spectators INTEGER
);

INSERT INTO arena_match_reports (match_uuid,player_one_id,player_two_id,player_one_score,player_two_score,arena_id,start_time,end_time,format,deck_one_uuid,deck_two_uuid,result,notes,is_ranked,season,region,server_id,replay_url,spectators) VALUES
('match-001',101,202,2,0,'ARENA01','2025-03-10 14:00:00','2025-03-10 14:05:30','Standard','deck-abc','deck-def','PlayerOneWin','Quick win',1,5,'NA','srv01','http://replay.example.com/001',150),
('match-002',103,204,1,1,'ARENA02','2025-04-12 16:20:00','2025-04-12 16:35:45','Modern','deck-ghi','deck-jkl','Draw','Close draw',0,6,'EU','srv02','http://replay.example.com/002',200),
('match-003',105,206,0,2,'ARENA03','2025-05-08 19:10:00','2025-05-08 19:22:10','Legacy','deck-mno','deck-pqr','PlayerTwoWin','Late comeback',1,7,'ASIA','srv03','http://replay.example.com/003',120);

-- Card pricing models
CREATE TABLE card_pricing_models (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    model_name TEXT,
    version TEXT,
    algorithm TEXT,
    input_features TEXT,
    training_data_range TEXT,
    accuracy REAL,
    last_trained DATE,
    created_by TEXT,
    description TEXT,
    is_active INTEGER,
    min_price REAL,
    max_price REAL,
    base_currency TEXT,
    update_frequency_days INTEGER,
    notes TEXT,
    parameters_blob TEXT,
    source_dataset TEXT,
    validation_score REAL,
    deployment_env TEXT
);

INSERT INTO card_pricing_models (model_name,version,algorithm,input_features,training_data_range,accuracy,last_trained,created_by,description,is_active,min_price,max_price,base_currency,update_frequency_days,notes,parameters_blob,source_dataset,validation_score,deployment_env) VALUES
('SimpleLinear','1.0','LinearRegression','manaCost,cmc,power','2020-01-01:2022-12-31',0.78,'2023-06-15','DataTeam','Baseline linear model',1,0.10,500.00,'USD',30,'No regularization','{}','historical_prices','0.75','production'),
('GradientBoost','2.1','XGBoost','manaCost,rarity,colors','2021-01-01:2023-12-31',0.86,'2024-01-20','MLGroup','Boosted trees with feature engineering',1,0.05,800.00,'USD',7,'Includes rarity weighting','{}','combined_dataset','0.84','staging'),
('NeuralNetV2','3.0','DeepNN','manaCost,types,keywords','2022-01-01:2024-12-31',0.92,'2025-01-05','AIDept','Deep neural network with embeddings',0,0.02,1200.00,'USD',1,'Experimental version','{}','augmented_data','0.90','development');

-- Set release analytics
CREATE TABLE set_release_analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    release_month TEXT,
    total_cards INTEGER,
    avg_mana_cost REAL,
    median_power REAL,
    median_toughness REAL,
    rarity_distribution TEXT,
    average_price_usd REAL,
    price_volatility REAL,
    market_cap_usd REAL,
    primary_color TEXT,
    secondary_color TEXT,
    avg_power_to_cost REAL,
    avg_toughness_to_cost REAL,
    unique_artists INTEGER,
    total_art_variations INTEGER,
    avg_power REAL,
    avg_toughness REAL,
    notes TEXT
);

INSERT INTO set_release_analytics (set_code,release_month,total_cards,avg_mana_cost,median_power,median_toughness,rarity_distribution,average_price_usd,price_volatility,market_cap_usd,primary_color,secondary_color,avg_power_to_cost,avg_toughness_to_cost,unique_artists,total_art_variations,avg_power,avg_toughness,notes) VALUES
('SET01','2024-03',254,3.2,2,2,'Common:70,Uncommon:20,Rare:9,Mythic:1',4.5,0.15,1150000.00,'Blue','White',0.62,0.64,45,120,2.5,3.0,'First release of the series'),
('SET02','2024-07',312,2.9,1,3,'Common:68,Uncommon:22,Rare:9,Mythic:1',5.2,0.12,1600000.00,'Red','Black',0.55,0.70,52,135,2.0,3.5,'Introduced new mechanics'),
('SET03','2025-01',280,3.5,3,4,'Common:65,Uncommon:25,Rare:9,Mythic:1',6.0,0.18,2000000.00,'Green','Red',0.85,0.90,60,150,3.2,4.1','Focused on creature power');

-- Deck archetype definitions
CREATE TABLE deck_archetype_definitions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    archetype_name TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    average_cmc REAL,
    typical_card_count INTEGER,
    win_rate_percent REAL,
    meta_rank INTEGER,
    common_cards TEXT,
    iconic_cards TEXT,
    strategy_summary TEXT,
    is_legal_standard INTEGER,
    is_legal_legacy INTEGER,
    is_legal_commander INTEGER,
    average_mana_curve TEXT,
    typical_subtypes TEXT,
    usage_trend TEXT,
    creator_name TEXT,
    created_date DATE,
    notes TEXT
);

INSERT INTO deck_archetype_definitions (archetype_name,primary_color,secondary_color,average_cmc,typical_card_count,win_rate_percent,meta_rank,common_cards,iconic_cards,strategy_summary,is_legal_standard,is_legal_legacy,is_legal_commander,average_mana_curve,typical_subtypes,usage_trend,creator_name,created_date,notes) VALUES
('BlueControl','Blue','White',2.8,60,57.2,1,'Counterspell,Absorb','Jace,TheMind Sculptor','Control the board with counters and card draw',1,1,1,'1-2,3-4,5+', 'Wizard,Human','Rising', 'MetaLab','2024-02-01','Popular in Standard'),
('RedAggro','Red','Black',3.1,55,51.4,3,'LightningBolt,Fireball','Chandra,Firebrand','Fast damage with cheap creatures',1,1,0,'1-2,3,4+', 'Goblin,Human','Stable','ArenaTeam','2024-05-12','Effective at low mana costs'),
('GreenStompy','Green','Red',4.0,58,48.9,5,'LlanowarElves,RampantGrowth','Radha,Heir to Keld','Large creatures and ramp',1,1,0,'2-3,4-5,6+', 'Beast,Elemental','Declining','EcoDecks','2024-09-20','Focused on size over speed');

-- Tournament logistics summary
CREATE TABLE tournament_logistics_summary (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    venue_code TEXT,
    start_date DATE,
    end_date DATE,
    total_players INTEGER,
    total_matches INTEGER,
    avg_match_duration_minutes REAL,
    peak_concurrent_players INTEGER,
    staffing_count INTEGER,
    security_staff INTEGER,
    catering_units INTEGER,
    equipment_count INTEGER,
    wifi_bandwidth_mbps REAL,
    broadcast_channels TEXT,
    sponsor_count INTEGER,
    prize_pool_usd REAL,
    ticket_sales_usd REAL,
    volunteer_hours INTEGER,
    notes TEXT,
    compliance_score REAL
);

INSERT INTO tournament_logistics_summary (tournament_id,venue_code,start_date,end_date,total_players,total_matches,avg_match_duration_minutes,peak_concurrent_players,staffing_count,security_staff,catering_units,equipment_count,wifi_bandwidth_mbps,broadcast_channels,sponsor_count,prize_pool_usd,ticket_sales_usd,volunteer_hours,notes,compliance_score) VALUES
(101,'VEN001','2025-06-01','2025-06-04',256,640,27.5,200,45,20,10,150,500.0,'Twitch,YouTube',12,500000.00,120000.00,800,'First major regional event',92.5),
(102,'VEN002','2025-08-15','2025-08-18',512,1280,25.0,350,70,30,15,250,800.0,'Twitch,Discord',20,1200000.00,250000.00,1500,'International championship',95.0),
(103,'VEN003','2025-11-10','2025-11-13',128,320,30.2,100,25,12,8,90,300.0,'YouTube,Facebook',8,200000.00,60000.00,400,'Community sponsored event',88.0);

-- Streaming quality events
CREATE TABLE streaming_quality_events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stream_id TEXT,
    event_timestamp DATETIME,
    quality_metric TEXT,
    value REAL,
    region TEXT,
    cdn_provider TEXT,
    buffer_seconds REAL,
    bitrate_kbps INTEGER,
    dropped_frames INTEGER,
    viewer_count INTEGER,
    is_live INTEGER,
    incident_type TEXT,
    resolution TEXT,
    framerate INTEGER,
    audio_quality TEXT,
    latency_ms INTEGER,
    notes TEXT,
    reported_by TEXT,
    severity INTEGER,
    mitigation_action TEXT
);

INSERT INTO streaming_quality_events (stream_id,event_timestamp,quality_metric,value,region,cdn_provider,buffer_seconds,bitrate_kbps,dropped_frames,viewer_count,is_live,incident_type,resolution,framerate,audio_quality,latency_ms,notes,reported_by,severity,mitigation_action) VALUES
('stream-001','2025-04-01 10:15:00','buffer','0.8','NA','Akamai',0.5,4500,12,8000,1,'Stutter','Increase bitrate','30','High','120','Minor buffering spikes','AutoMonitor',2,'Adjust encoder settings'),
('stream-002','2025-05-12 14:45:00','bitrate','3800','EU','Cloudflare',0.2,3800,0,15000,1,'Drop','Maintain current','60','Medium','80','Stable stream','OpsTeam',1,'No action needed'),
('stream-003','2025-07-20 19:30:00','latency','250','ASIA','Fastly',0.0,5000,5,10000,1,'Lag','Switch CDN','30','High','250','High latency observed','NetworkOps',3,'Route optimization');

-- Merchandise production schedule
CREATE TABLE merchandise_production_schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    merchandise_id INTEGER,
    sku TEXT,
    product_name TEXT,
    production_start DATE,
    production_end DATE,
    quantity_planned INTEGER,
    quantity_produced INTEGER,
    factory_location TEXT,
    lead_time_days INTEGER,
    material_type TEXT,
    color_variant TEXT,
    size_variant TEXT,
    cost_per_unit REAL,
    sales_price_usd REAL,
    inventory_status TEXT,
    shipping_method TEXT,
    expected_ship_date DATE,
    actual_ship_date DATE,
    notes TEXT,
    compliance_certified INTEGER
);

INSERT INTO merchandise_production_schedule (merchandise_id,sku,product_name,production_start,production_end,quantity_planned,quantity_produced,factory_location,lead_time_days,material_type,color_variant,size_variant,cost_per_unit,sales_price_usd,inventory_status,shipping_method,expected_ship_date,actual_ship_date,notes,compliance_certified) VALUES
(201,'MERCH001','Tournament T-Shirt','2025-02-01','2025-03-15',5000,4900,'FactoryA',45,'Cotton','Blue','M',8.50,20.00,'InStock','Air','2025-04-01','2025-04-02','Small overrun',1),
(202,'MERCH002','Collector Mug','2025-01-20','2025-02-28',2000,2000,'FactoryB',30,'Ceramic','Red','OneSize',4.00,12.00,'InStock','Sea','2025-03-15','2025-03-14','On schedule',1),
(203,'MERCH003','Limited Poster','2025-03-10','2025-04-25',1500,1450,'FactoryC',50,'Paper','Black','A3',2.00,8.00,'LowStock','Ground','2025-05-10','2025-05-12','Late due to printer maintenance',0);

-- Digital collectible valuation
CREATE TABLE digital_collectible_valuation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    collectible_id TEXT,
    name TEXT,
    category TEXT,
    rarity TEXT,
    base_value_usd REAL,
    market_multiplier REAL,
    last_valuation_date DATE,
    valuation_source TEXT,
    owner_id INTEGER,
    last_transfer_date DATE,
    transfer_count INTEGER,
    estimated_future_value_usd REAL,
    appraisal_notes TEXT,
    is_insured INTEGER,
    insurance_provider TEXT,
    policy_number TEXT,
    valuation_confidence REAL,
    audit_timestamp DATETIME,
    auditor_name TEXT
);

INSERT INTO digital_collectible_valuation (collectible_id,name,category,rarity,base_value_usd,market_multiplier,last_valuation_date,valuation_source,owner_id,last_transfer_date,transfer_count,estimated_future_value_usd,appraisal_notes,is_insured,insurance_provider,policy_number,valuation_confidence,audit_timestamp,auditor_name) VALUES
('DC001','Eternal Dragon','Creature','Mythic',1500.00,2.3,'2025-03-01','MarketplaceAPI',301,'2024-12-15',5,3450.00,'High demand, limited supply',1,'InsureCo','POL12345',0.92,'2025-03-02 09:30:00','ValuerTeam'),
('DC002','Arcane Artifact','Artifact','Rare',300.00,1.8,'2025-03-05','CollectorDB',452,'2025-01-20',2,540.00,'Stable market',0,NULL,NULL,0.78,'2025-03-05 11:00:00','ValuerTeam'),
('DC003','Mystic Token','Token','Uncommon',30.00,1.2,'2025-03-10','OpenSea',789,'2024-11-30',1,36.00,'Low volatility',1,'SecureInsure','POL67890',0.85,'2025-03-10 14:45:00','ValuerTeam');

-- Magical artifact registry
CREATE TABLE magical_artifact_registry (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_uuid TEXT,
    name TEXT,
    type TEXT,
    origin TEXT,
    discovered_date DATE,
    creator TEXT,
    power_level INTEGER,
    alignment TEXT,
    current_holder_id INTEGER,
    location TEXT,
    status TEXT,
    last_mage_interaction DATE,
    enchantments TEXT,
    durability INTEGER,
    is_cursed INTEGER,
    appraisal_value_usd REAL,
    historical_significance TEXT,
    notes TEXT,
    registration_timestamp DATETIME
);

INSERT INTO magical_artifact_registry (artifact_uuid,name,type,origin,discovered_date,creator,power_level,alignment,current_holder_id,location,status,last_mage_interaction,enchantments,durability,is_cursed,appraisal_value_usd,historical_significance,notes,registration_timestamp) VALUES
('ARTF001','Scepter of Aeons','Staff','Eldoria','2005-07-12','Archmage Valen',95,'Neutral',101,'Library of Arcanum','Active','2024-12-01','TimeShift,Shield',85,0,125000.00,'Key to ancient chronomancy','Stored in vault', '2025-01-01 08:00:00'),
('ARTF002','Blade of the Fallen','Sword','Obsidian Realm','2010-03-23','Blacksmith Kor',78,'Chaotic',202,'Hall of Blades','Cursed','2023-11-15','FlameAura,Poison',70,1,72000.00,'Used in the Rift War','Never leaves the armory','2025-01-02 09:15:00'),
('ARTF003','Orb of Verdant Growth','Orb','Sylvan Wilds','2018-09-05','Druid Lina',60,'Good',303,'Greenhouse Annex','Active','2024-06-30','Healing,Regeneration',90,0,54000.00,'Symbol of the Great Bloom','Currently displayed in exhibition','2025-01-03 10:30:00');

-- Player social network graph
CREATE TABLE player_social_network_graph (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    friend_player_id INTEGER,
    connection_type TEXT,
    since_date DATE,
    interaction_count INTEGER,
    last_interaction DATETIME,
    mutual_friends INTEGER,
    community_id INTEGER,
    reputation_score REAL,
    is_blocked INTEGER,
    notes TEXT,
    platform TEXT,
    verification_status TEXT,
    shared_interests TEXT,
    messages_exchanged INTEGER,
    common_games TEXT,
    favorite_tags TEXT,
    last_updated DATETIME,
    privacy_level INTEGER
);

INSERT INTO player_social_network_graph (player_id,friend_player_id,connection_type,since_date,interaction_count,last_interaction,mutual_friends,community_id,reputation_score,is_blocked,notes,platform,verification_status,shared_interests,messages_exchanged,common_games,favorite_tags,last_updated,privacy_level) VALUES
(1001,1002,'Friend','2022-01-15',342,'2025-01-04 12:20:00',5,12,4.7,0,'Regular teammate','MTGA','Verified','Deckbuilding,Trading',120,'MtG Arena,Live','Control,Combo', '2025-01-04 12:20:00',2),
(1003,1004,'Follow','2023-05-20',87,'2025-01-03 09:45:00',2,8,3.9,0,'Occasional chat','Discord','Unverified','Lore Discussion',45,'Online','Lore,Flavor', '2025-01-03 09:45:00',3),
(1005,1006,'Block','2021-11-02',0,'2025-01-01 00:00:00',0,0,0.0,1,'Abusive behavior','MTGA','Verified','None',0,'None','None', '2025-01-01 00:00:00',5);