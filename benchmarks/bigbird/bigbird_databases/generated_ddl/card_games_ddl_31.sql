-- Streaming ad campaign details
CREATE TABLE streaming_ad_campaigns_detail
(
    campaign_id INTEGER PRIMARY KEY,
    name TEXT,
    start_date DATE,
    end_date DATE,
    platform TEXT,
    target_audience TEXT,
    budget_usd REAL,
    impressions_goal INTEGER,
    clicks_goal INTEGER,
    cpm REAL,
    cpc REAL,
    creative_type TEXT,
    language TEXT,
    region TEXT,
    device_type TEXT,
    frequency_cap INTEGER,
    ad_format TEXT,
    status TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO streaming_ad_campaigns_detail VALUES (1,'Winter Promo','2024-01-10','2024-02-15','YouTube','Gamers','25000.00',500000,20000,5.0,0.4,'Video','en','NA','Mobile',3,'Skippable', 'Active','2024-01-01','2024-01-05');
INSERT INTO streaming_ad_campaigns_detail VALUES (2,'Spring Launch','2024-03-01','2024-04-01','Twitch','Streamers','18000.00',300000,15000,6.0,0.5,'Banner','en','EU','Desktop',2,'Static','Planned','2024-02-20','2024-02-22');
INSERT INTO streaming_ad_campaigns_detail VALUES (3,'Summer Blitz','2024-06-10','2024-07-20','TikTok','YoungAdults','32000.00',800000,25000,4.0,0.35,'Video','es','LATAM','Mobile',4,'Story','Active','2024-05-15','2024-05-18');

-- Player health metrics log
CREATE TABLE player_health_metrics_log
(
    metric_id INTEGER PRIMARY KEY,
    player_id INTEGER,
    log_date DATE,
    heart_rate INTEGER,
    blood_pressure_systolic INTEGER,
    blood_pressure_diastolic INTEGER,
    respiration_rate INTEGER,
    body_temp_c REAL,
    sleep_hours REAL,
    stress_level INTEGER,
    hydration_ml INTEGER,
    calories_burned INTEGER,
    steps INTEGER,
    mood_score INTEGER,
    injury_report TEXT,
    recovery_status TEXT,
    notes TEXT,
    recorded_at DATE,
    sync_source TEXT,
    device_id TEXT
);
INSERT INTO player_health_metrics_log VALUES (101,1001,'2024-01-15',72,118,76,16,36.6,7.5,3,2100,2200,9500,8,'None','Good','Morning check','2024-01-15','MobileApp','FitTracker01');
INSERT INTO player_health_metrics_log VALUES (102,1002,'2024-01-15',85,130,85,18,37.0,6.0,5,1800,2500,10500,5,'SprainedAnkle','Recovering','Post match','2024-01-15','Wearable','HealthBand07');
INSERT INTO player_health_metrics_log VALUES (103,1003,'2024-01-15',65,110,70,14,36.4,8.0,2,2500,1900,8000,9,'None','Excellent','Pre tournament','2024-01-15','SmartWatch','WatchX2');

-- Environmental sensor data
CREATE TABLE environmental_sensor_data
(
    sensor_id INTEGER PRIMARY KEY,
    location_id INTEGER,
    reading_timestamp DATE,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    light_lux INTEGER,
    vibration_g REAL,
    battery_percent INTEGER,
    firmware_version TEXT,
    signal_strength INTEGER,
    sensor_status TEXT,
    maintenance_due DATE,
    calibration_date DATE,
    latitude REAL,
    longitude REAL,
    altitude_m REAL,
    data_quality TEXT,
    notes TEXT
);
INSERT INTO environmental_sensor_data VALUES (201,10,'2024-01-10',22.5,45.2,420,55.3,300,0.02,88,'v1.2',-70,'OK','2024-06-01','2023-12-01',40.7128,-74.0060,10.5,'High','Main hall sensor');
INSERT INTO environmental_sensor_data VALUES (202,12,'2024-01-10',19.8,50.1,400,48.7,250,0.01,92,'v1.3',-68,'OK','2024-07-15','2024-01-05',34.0522,-118.2437,15.0,'Medium','Lobby sensor');
INSERT INTO environmental_sensor_data VALUES (203,15,'2024-01-10',24.0,38.0,380,60.0,400,0.03,75,'v1.1',-72,'MAINTENANCE','2024-05-20','2023-11-20',51.5074,-0.1278,5.2,'Low','Outdoor sensor');

-- Digital asset license terms
CREATE TABLE digital_asset_license_terms
(
    term_id INTEGER PRIMARY KEY,
    asset_id INTEGER,
    license_type TEXT,
    granted_by TEXT,
    granted_to TEXT,
    start_date DATE,
    end_date DATE,
    usage_limit INTEGER,
    geographic_scope TEXT,
    exclusivity TEXT,
    royalty_percent REAL,
    fee_usd REAL,
    royalty_frequency TEXT,
    amendment_allowed TEXT,
    termination_clause TEXT,
    confidentiality_required TEXT,
    compliance_standards TEXT,
    version_number INTEGER,
    created_at DATE,
    updated_at DATE,
    notes TEXT
);
INSERT INTO digital_asset_license_terms VALUES (301,5001,'Exclusive','ArtistCo','GameStudio','2024-01-01','2025-12-31',1000,'Global','Yes',7.5,15000.00,'Quarterly','Yes','30daysNotice','Yes','ISO9001',1,'2024-01-01','2024-01-02','First version');
INSERT INTO digital_asset_license_terms VALUES (302,5002,'NonExclusive','DevHouse','StreamerInc','2023-06-01','2024-06-01',500,'NA','No',5.0,8000.00,'Annual','No','15daysNotice','No','GDPR',2,'2023-06-01','2023-06-05','Renewal pending');
INSERT INTO digital_asset_license_terms VALUES (303,5003,'RoyaltyFree','PublisherX','IndieDev','2024-03-15','2026-03-15',0,'EU','No',0.0,0.00,'None','Yes','45daysNotice','Yes','CC0',1,'2024-03-15','2024-03-16','Open source release');

-- Venue environmental logs
CREATE TABLE venue_environmental_logs
(
    log_id INTEGER PRIMARY KEY,
    venue_id INTEGER,
    log_date DATE,
    temperature_c REAL,
    humidity_percent REAL,
    air_quality_index INTEGER,
    noise_db REAL,
    energy_consumption_kwh REAL,
    water_usage_liters REAL,
    waste_generated_kg REAL,
    recycling_rate_percent REAL,
    occupancy_percent REAL,
    hvac_status TEXT,
    lighting_status TEXT,
    maintenance_flag TEXT,
    inspector_id INTEGER,
    comments TEXT,
    created_at DATE,
    updated_at DATE,
    record_source TEXT
);
INSERT INTO venue_environmental_logs VALUES (401,101,'2024-01-12',21.0,42.5,35,50.2,1200.5,800.0,45.0,70.0,85,'Operational','On','No',12,'All good','2024-01-12','2024-01-12','Sensor');
INSERT INTO venue_environmental_logs VALUES (402,102,'2024-01-12',23.5,55.0,40,55.8,1500.0,950.0,60.0,65.0,90,'Operational','Off','Yes',15,'Filter replacement needed','2024-01-12','2024-01-13','Manual');
INSERT INTO venue_environmental_logs VALUES (403,103,'2024-01-12',19.8,38.0,30,45.0,1100.0,700.0,30.0,80.0,78,'Maintenance','On','No',9,'Routine check completed','2024-01-12','2024-01-12','Sensor');

-- Sponsor engagement events
CREATE TABLE sponsor_engagement_events
(
    event_id INTEGER PRIMARY KEY,
    sponsor_id INTEGER,
    event_name TEXT,
    event_type TEXT,
    start_datetime DATE,
    end_datetime DATE,
    location TEXT,
    audience_estimate INTEGER,
    activation_type TEXT,
    branding_level TEXT,
    budget_usd REAL,
    lead_count INTEGER,
    conversion_rate REAL,
    social_impressions INTEGER,
    media_mentions INTEGER,
    feedback_score REAL,
    organizer_contact TEXT,
    contract_id INTEGER,
    status TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO sponsor_engagement_events VALUES (501,2001,'Championship Finals','Tournament','2024-05-01','2024-05-03','Arena A',15000,'Booth','High',50000.00,300,2.5,120000,45,8.7,'JohnDoe',9001,'Confirmed','2024-02-01','2024-02-15');
INSERT INTO sponsor_engagement_events VALUES (502,2002,'Community Meetup','Meetup','2024-06-10','2024-06-10','Hall B',2000,'Workshop','Medium',12000.00,80,1.8,30000,10,7.5,'JaneSmith',9002,'Planned','2024-03-05','2024-03-20');
INSERT INTO sponsor_engagement_events VALUES (503,2003,'Online Streamathon','LiveStream','2024-07-20','2024-07-20','Virtual',5000,'DigitalOverlay','Low',25000.00,150,3.0,80000,20,9.0,'MikeLee',9003,'Scheduled','2024-04-10','2024-04-25');

-- Game mechanics test cases
CREATE TABLE game_mechanics_test_cases
(
    test_id INTEGER PRIMARY KEY,
    mechanic_name TEXT,
    version_introduced TEXT,
    test_description TEXT,
    precondition TEXT,
    steps TEXT,
    expected_result TEXT,
    actual_result TEXT,
    pass_fail TEXT,
    tester_id INTEGER,
    test_date DATE,
    duration_seconds INTEGER,
    severity TEXT,
    priority TEXT,
    related_bug_id INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    test_suite TEXT,
    automation_flag TEXT
);
INSERT INTO game_mechanics_test_cases VALUES (601,'Mana Surge','v2.3','Validate mana acceleration','Empty board','Play card -> Check mana','Mana increased by 2','Mana increased by 2','Pass',45,'2024-01-20',45,'Low','Medium',0,'All good','2024-01-18','2024-01-20','CoreMechanics','Yes');
INSERT INTO game_mechanics_test_cases VALUES (602,'Lifesteal','v1.9','Check life gain on damage','Opponent at 5 hp','Attack with lifesteal creature','Opponent loses 3 hp, player gains 3 hp','Opponent loses 3 hp, player gains 3 hp','Pass',46,'2024-01-22',30,'Medium','High',12,'Observed edge case','2024-01-21','2024-01-22','CombatTests','No');
INSERT INTO game_mechanics_test_cases VALUES (603,'Deck Shuffle','v3.0','Ensure randomization','Full deck','Shuffle deck 1000 times','Distribution uniform','Distribution within margin','Pass',47,'2024-01-25',120,'High','Critical',0,'Statistical validation','2024-01-24','2024-01-25','RandomnessSuite','Yes');

-- Collector trade offers
CREATE TABLE collector_trade_offers
(
    offer_id INTEGER PRIMARY KEY,
    collector_id INTEGER,
    offered_card_uuid TEXT,
    requested_card_uuid TEXT,
    offer_status TEXT,
    offer_date DATE,
    expiration_date DATE,
    notes TEXT,
    counter_offer_flag TEXT,
    trade_value_estimate_usd REAL,
    negotiator_id INTEGER,
    approval_status TEXT,
    escrow_account TEXT,
    delivery_method TEXT,
    shipping_cost_usd REAL,
    insurance_flag TEXT,
    rating INTEGER,
    created_at DATE,
    updated_at DATE,
    platform TEXT
);
INSERT INTO collector_trade_offers VALUES (701,3001,'uuidA1','uuidB1','Pending','2024-02-01','2024-02-15','First offer','No',250.00,55,'Awaiting','Escrow123','Mail',15.00,'Yes',0,'2024-02-01','2024-02-02','MarketplaceX');
INSERT INTO collector_trade_offers VALUES (702,3002,'uuidA2','uuidB2','Accepted','2024-02-05','2024-02-20','Countered offer','Yes',300.00,56,'Approved','Escrow124','Courier',20.00,'Yes',5,'2024-02-05','2024-02-06','MarketplaceY');
INSERT INTO collector_trade_offers VALUES (703,3003,'uuidA3','uuidB3','Rejected','2024-02-10','2024-02-25','Offer declined','No',0.00,57,'Rejected','Escrow125','Pickup',0.00,'No',0,'2024-02-10','2024-02-11','MarketplaceZ');

-- Fantasy world NPC profiles
CREATE TABLE fantasy_world_npc_profiles
(
    npc_id INTEGER PRIMARY KEY,
    name TEXT,
    race TEXT,
    class TEXT,
    alignment TEXT,
    level INTEGER,
    health_points INTEGER,
    mana_points INTEGER,
    strength INTEGER,
    agility INTEGER,
    intelligence INTEGER,
    charisma INTEGER,
    location TEXT,
    affiliation TEXT,
    quest_giver_flag TEXT,
    dialogue_script_id INTEGER,
    loot_table_id INTEGER,
    spawn_rate_per_hour REAL,
    rarity_tier TEXT,
    active_status TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO fantasy_world_npc_profiles VALUES (801,'Eldra','Elf','Ranger','NeutralGood',12,85,60,14,18,13,16,'Forest Edge','Guild of Arrows','Yes',2001,3001,0.5,'Rare','Active','2024-01-01','2024-01-10');
INSERT INTO fantasy_world_npc_profiles VALUES (802,'Borgoth','Orc','Warrior','ChaoticNeutral',15,120,30,20,12,9,11,'Mountain Pass','Clan Ironfist','No',2002,3002,0.2,'Uncommon','Active','2024-01-05','2024-01-12');
INSERT INTO fantasy_world_npc_profiles VALUES (803,'Lira','Human','Mage','LawfulNeutral',10,70,100,8,10,18,14,'Mage Tower','Arcane Order','Yes',2003,3003,0.3,'Common','Inactive','2024-01-08','2024-01-15');

-- Marketing campaign channels
CREATE TABLE marketing_campaign_channels
(
    channel_id INTEGER PRIMARY KEY,
    campaign_id INTEGER,
    channel_name TEXT,
    channel_type TEXT,
    budget_usd REAL,
    impressions_goal INTEGER,
    clicks_goal INTEGER,
    conversion_goal INTEGER,
    cpm REAL,
    cpc REAL,
    cpa REAL,
    start_date DATE,
    end_date DATE,
    target_audience TEXT,
    geo_target TEXT,
    device_target TEXT,
    creative_id INTEGER,
    landing_page_url TEXT,
    status TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO marketing_campaign_channels VALUES (901,10001,'Facebook','Social','15000.00',800000,25000,5000,18.75,0.60,3.00,'2024-03-01','2024-04-01','Adults 18-35','NA','Mobile',4001,'https://example.com/landing','Active','2024-02-15','2024-02-20');
INSERT INTO marketing_campaign_channels VALUES (902,10002,'GoogleAds','Search','12000.00',600000,30000,4000,20.00,0.40,2.50,'2024-04-15','2024-05-15','Professionals','EU','Desktop',4002,'https://example.com/search','Planned','2024-03-10','2024-03-12');
INSERT INTO marketing_campaign_channels VALUES (903,10003,'Newsletter','Email','8000.00',200000,15000,2500,40.00,0.53,3.20,'2024-05-01','2024-06-01','Subscribers','Global','All',4003,'https://example.com/email','Scheduled','2024-04-01','2024-04-05');