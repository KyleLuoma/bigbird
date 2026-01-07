-- Fan art submissions by community members
CREATE TABLE fan_art_submissions
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    artist_name            TEXT,
    submission_title       TEXT,
    description            TEXT,
    submission_date        DATE,
    visibility             TEXT,
    likes                  INTEGER,
    downloads              INTEGER,
    format                 TEXT,
    resolution             TEXT,
    color_palette          TEXT,
    file_size_mb           REAL,
    license_type           TEXT,
    approval_status        TEXT,
    reviewer_id            INTEGER,
    tags                   TEXT,
    rating                 REAL,
    comments_count         INTEGER,
    parent_submission_id   INTEGER,
    source_platform        TEXT,
    submission_uuid        TEXT UNIQUE
);

INSERT INTO fan_art_submissions (artist_name,submission_title,description,submission_date,visibility,likes,downloads,format,resolution,color_palette,file_size_mb,license_type,approval_status,reviewer_id,tags,rating,comments_count,parent_submission_id,source_platform,submission_uuid) VALUES ('AliceArt','Dragon Flame','A vivid dragon breathing fire',2025-03-12,'public',124,58,'png','1920x1080','warm',2.5,'cc0','approved',101,'dragon,fire',4.8,12,NULL,'deviantart','fas-001');
INSERT INTO fan_art_submissions (artist_name,submission_title,description,submission_date,visibility,likes,downloads,format,resolution,color_palette,file_size_mb,license_type,approval_status,reviewer_id,tags,rating,comments_count,parent_submission_id,source_platform,submission_uuid) VALUES ('BobBrush','Mystic Forest','Enchanted forest with glowing trees',2025-04-05,'public',87,42,'jpg','2560x1440','cool',3.1,'ccby','pending',102,'forest,mystic',4.2,9,NULL,'artstation','fas-002');
INSERT INTO fan_art_submissions (artist_name,submission_title,description,submission_date,visibility,likes,downloads,format,resolution,color_palette,file_size_mb,license_type,approval_status,reviewer_id,tags,rating,comments_count,parent_submission_id,source_platform,submission_uuid) VALUES ('CleoCanvas','Arcane Sigil','Symmetrical sigil representing mana',2025-04-20,'private',45,20,'png','1080x1080','monochrome',1.8,'custom','rejected',103,'sigil,arcane',3.7,4,NULL,'instagram','fas-003');

-- Environmental impact reports for tournament venues
CREATE TABLE eco_impact_reports
(
    id                       INTEGER PRIMARY KEY AUTOINCREMENT,
    report_date              DATE,
    region                   TEXT,
    carbon_emissions_tons    REAL,
    water_usage_liters       REAL,
    energy_consumption_kwh   REAL,
    waste_generated_kg       REAL,
    renewable_percentage    REAL,
    report_author            TEXT,
    verification_status      TEXT,
    notes                    TEXT,
    report_uuid              TEXT UNIQUE,
    created_at               DATE,
    updated_at               DATE,
    auditor_name             TEXT,
    compliance_score         INTEGER,
    mitigation_actions       TEXT,
    projected_reduction_tons REAL,
    data_source              TEXT,
    review_cycle_months      INTEGER
);

INSERT INTO eco_impact_reports (report_date,region,carbon_emissions_tons,water_usage_liters,energy_consumption_kwh,waste_generated_kg,renewable_percentage,report_author,verification_status,notes,report_uuid,created_at,updated_at,auditor_name,compliance_score,mitigation_actions,projected_reduction_tons,data_source,review_cycle_months) VALUES (2025-01-15,'NorthAmerica',1250.5,300000,50000,8000,35,'EcoTeam','verified','Initial baseline', 'eir-001',2025-01-16,2025-01-20,'John Doe',78,'Solar panels upgrade',150.0,'metered',12);
INSERT INTO eco_impact_reports (report_date,region,carbon_emissions_tons,water_usage_liters,energy_consumption_kwh,waste_generated_kg,renewable_percentage,report_author,verification_status,notes,report_uuid,created_at,updated_at,auditor_name,compliance_score,mitigation_actions,projected_reduction_tons,data_source,review_cycle_months) VALUES (2025-04-10,'Europe',980.3,250000,42000,6200,42,'GreenDept','pending','Post‑renovation', 'eir-002',2025-04-11,2025-04-12,'Maria Smith',85,'LED lighting conversion',120.0,'sensor',6);
INSERT INTO eco_impact_reports (report_date,region,carbon_emissions_tons,water_usage_liters,energy_consumption_kwh,waste_generated_kg,renewable_percentage,report_author,verification_status,notes,report_uuid,created_at,updated_at,auditor_name,compliance_score,mitigation_actions,projected_reduction_tons,data_source,review_cycle_months) VALUES (2025-07-22,'AsiaPacific',1430.0,410000,62000,10200,28,'SustainOrg','verified','Seasonal peak', 'eir-003',2025-07-23,2025-07-25,'Li Wei',70,'Rainwater harvesting',180.0,'manual',9);

-- Distribution of in‑game loot boxes
CREATE TABLE lootbox_distribution
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    lootbox_id             TEXT,
    release_date           DATE,
    rarity_tier            TEXT,
    total_boxes            INTEGER,
    boxes_sold             INTEGER,
    average_value          REAL,
    exclusive_item_flag    INTEGER,
    region                 TEXT,
    currency               TEXT,
    price_per_box          REAL,
    promotional_event      TEXT,
    distributor_id         INTEGER,
    inventory_location     TEXT,
    safety_lock_flag       INTEGER,
    max_per_user           INTEGER,
    min_level_required     INTEGER,
    visual_theme           TEXT,
    sound_theme            TEXT,
    distribution_uuid      TEXT UNIQUE
);

INSERT INTO lootbox_distribution (lootbox_id,release_date,rarity_tier,total_boxes,boxes_sold,average_value,exclusive_item_flag,region,currency,price_per_box,promotional_event,distributor_id,inventory_location,safety_lock_flag,max_per_user,min_level_required,visual_theme,sound_theme,distribution_uuid) VALUES ('LBX1001','2025-02-01','Legendary',5000,3275,45.7,1,'NA','USD',9.99,'SpringFest',201,'WarehouseA',0,3,10,'Celestial','Chime','ldb-001');
INSERT INTO lootbox_distribution (lootbox_id,release_date,rarity_tier,total_boxes,boxes_sold,average_value,exclusive_item_flag,region,currency,price_per_box,promotional_event,distributor_id,inventory_location,safety_lock_flag,max_per_user,min_level_required,visual_theme,sound_theme,distribution_uuid) VALUES ('LBX1002','2025-03-15','Epic',8000,5400,30.2,0,'EU','EUR',7.49,'SummerSplash',202,'WarehouseB',1,5,5,'Nebula','Synth','ldb-002');
INSERT INTO lootbox_distribution (lootbox_id,release_date,rarity_tier,total_boxes,boxes_sold,average_value,exclusive_item_flag,region,currency,price_per_box,promotional_event,distributor_id,inventory_location,safety_lock_flag,max_per_user,min_level_required,visual_theme,sound_theme,distribution_uuid) VALUES ('LBX1003','2025-05-10','Rare',12000,7600,22.5,0,'APAC','JPY',650,'AutumnHarvest',203,'WarehouseC',0,2,1,'Harvest','Wind','ldb-003');

-- Global player ranking snapshots
CREATE TABLE global_rankings
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    ranking_date           DATE,
    player_uuid            TEXT,
    rank_position          INTEGER,
    points                 REAL,
    win_rate               REAL,
    matches_played         INTEGER,
    region                 TEXT,
    tier                   TEXT,
    legend_status          INTEGER,
    previous_rank          INTEGER,
    rank_change            INTEGER,
    ranking_source         TEXT,
    season                 TEXT,
    elo_rating             INTEGER,
    mastery_level          INTEGER,
    favorite_class         TEXT,
    total_earnings         REAL,
    sponsor_affiliation    TEXT,
    ranking_uuid           TEXT UNIQUE
);

INSERT INTO global_rankings (ranking_date,player_uuid,rank_position,points,win_rate,matches_played,region,tier,legend_status,previous_rank,rank_change,ranking_source,season,elo_rating,mastery_level,favorite_class,total_earnings,sponsor_affiliation,ranking_uuid) VALUES ('2025-04-30','plr-1001',1,9876.4,0.85,250,'NA','Diamond',1,2,1,'Official', 'S4',2600,5,'Wizard',12500.75,'AlphaGames','grk-001');
INSERT INTO global_rankings (ranking_date,player_uuid,rank_position,points,win_rate,matches_played,region,tier,legend_status,previous_rank,rank_change,ranking_source,season,elo_rating,mastery_level,favorite_class,total_earnings,sponsor_affiliation,ranking_uuid) VALUES ('2025-04-30','plr-1002',2,9453.1,0.82,240,'EU','Platinum',0,5,3,'Official','S4',2500,4,'Rogue',11200.30,'BetaStudios','grk-002');
INSERT INTO global_rankings (ranking_date,player_uuid,rank_position,points,win_rate,matches_played,region,tier,legend_status,previous_rank,rank_change,ranking_source,season,elo_rating,mastery_level,favorite_class,total_earnings,sponsor_affiliation,ranking_uuid) VALUES ('2025-04-30','plr-1003',3,9320.5,0.78,230,'APAC','Gold',0,8,5,'Official','S4',2450,3,'Cleric',10850.00,'GammaEnterprises','grk-003');

-- Bids placed in the card auction house
CREATE TABLE auction_house_bids
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    auction_id             TEXT,
    bidder_uuid            TEXT,
    bid_amount             REAL,
    bid_time               TEXT,
    max_auto_bid           REAL,
    proxy_bid_flag         INTEGER,
    currency               TEXT,
    item_description       TEXT,
    item_category          TEXT,
    item_condition         TEXT,
    bidder_rating          INTEGER,
    bid_status             TEXT,
    auction_status         TEXT,
    reserve_met_flag       INTEGER,
    bid_increment          REAL,
    auction_end_time       TEXT,
    payment_method         TEXT,
    shipping_address_id    INTEGER,
    bid_uuid               TEXT UNIQUE
);

INSERT INTO auction_house_bids (auction_id,bidder_uuid,bid_amount,bid_time,max_auto_bid,proxy_bid_flag,currency,item_description,item_category,item_condition,bidder_rating,bid_status,auction_status,reserve_met_flag,bid_increment,auction_end_time,payment_method,shipping_address_id,bid_uuid) VALUES ('AUC2001','plr-2001',1500.0,'2025-04-15 13:45:00',2000.0,1,'USD','First Edition Black Lotus','Artifact','Mint',95,'active','open',1,50.0,'2025-04-20 23:59:59','CreditCard',301,'ahb-001');
INSERT INTO auction_house_bids (auction_id,bidder_uuid,bid_amount,bid_time,max_auto_bid,proxy_bid_flag,currency,item_description,item_category,item_condition,bidder_rating,bid_status,auction_status,reserve_met_flag,bid_increment,auction_end_time,payment_method,shipping_address_id,bid_uuid) VALUES ('AUC2002','plr-2002',750.5,'2025-04-16 09:20:00',800.0,0,'EUR','Shiny Charizard Card','Pokemon','Near Mint',88,'active','open',1,25.0,'2025-04-22 23:59:59','PayPal',302,'ahb-002');
INSERT INTO auction_house_bids (auction_id,bidder_uuid,bid_amount,bid_time,max_auto_bid,proxy_bid_flag,currency,item_description,item_category,item_condition,bidder_rating,bid_status,auction_status,reserve_met_flag,bid_increment,auction_end_time,payment_method,shipping_address_id,bid_uuid) VALUES ('AUC2003','plr-2003',420.0,'2025-04-17 17:05:00',500.0,1,'JPY','Limited Edition Booster Pack','Collectible','Sealed',76,'pending','closed',0,10.0,'2025-04-25 23:59:59','BankTransfer',303,'ahb-003');

-- Performance metrics for affiliate marketing partners
CREATE TABLE affiliate_performance
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    affiliate_id           TEXT,
    program_name           TEXT,
    start_date             DATE,
    end_date               DATE,
    total_clicks           INTEGER,
    total_conversions      INTEGER,
    conversion_rate        REAL,
    total_revenue          REAL,
    payout_amount          REAL,
    payout_currency        TEXT,
    approval_status        TEXT,
    tier_level             TEXT,
    average_order_value    REAL,
    commission_rate        REAL,
    last_payment_date      DATE,
    contact_email          TEXT,
    manager_id             INTEGER,
    notes                  TEXT,
    affiliate_uuid         TEXT UNIQUE,
    created_at             DATE
);

INSERT INTO affiliate_performance (affiliate_id,program_name,start_date,end_date,total_clicks,total_conversions,conversion_rate,total_revenue,payout_amount,payout_currency,approval_status,tier_level,average_order_value,commission_rate,last_payment_date,contact_email,manager_id,notes,affiliate_uuid,created_at) VALUES ('aff-001','GameBoost','2025-01-01','2025-06-30',45230,3890,8.6,124560.75,7500.50,'USD','approved','Gold',32.0,6.0,'2025-06-28','aff1@example.com',401,'Top performer Q1','affu-001','2025-01-02');
INSERT INTO affiliate_performance (affiliate_id,program_name,start_date,end_date,total_clicks,total_conversions,conversion_rate,total_revenue,payout_amount,payout_currency,approval_status,tier_level,average_order_value,commission_rate,last_payment_date,contact_email,manager_id,notes,affiliate_uuid,created_at) VALUES ('aff-002','DeckBuilder','2025-02-15','2025-07-14',31000,2150,6.9,84530.20,4200.00,'EUR','pending','Silver',39.3,5.5,'2025-07-10','aff2@example.com',402,'Steady growth','affu-002','2025-02-16');
INSERT INTO affiliate_performance (affiliate_id,program_name,start_date,end_date,total_clicks,total_conversions,conversion_rate,total_revenue,payout_amount,payout_currency,approval_status,tier_level,average_order_value,commission_rate,last_payment_date,contact_email,manager_id,notes,affiliate_uuid,created_at) VALUES ('aff-003','StreamerPartner','2025-03-01','2025-08-31',57890,4650,8.0,158900.00,9500.00,'USD','approved','Platinum',34.2,7.0,'2025-08-29','aff3@example.com',403,'High engagement from streams','affu-003','2025-03-02');

-- Virtual currency exchange transactions
CREATE TABLE virtual_currency_exchange
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    exchange_id            TEXT,
    user_uuid              TEXT,
    from_currency          TEXT,
    to_currency            TEXT,
    from_amount            REAL,
    to_amount              REAL,
    exchange_rate          REAL,
    fee_amount             REAL,
    transaction_date       DATE,
    transaction_time       TEXT,
    status                 TEXT,
    reference_id           TEXT,
    platform               TEXT,
    device_type            TEXT,
    geo_location           TEXT,
    approval_code          TEXT,
    notes                  TEXT,
    exchange_uuid          TEXT UNIQUE,
    created_at             DATE,
    updated_at             DATE
);

INSERT INTO virtual_currency_exchange (exchange_id,user_uuid,from_currency,to_currency,from_amount,to_amount,exchange_rate,fee_amount,transaction_date,transaction_time,status,reference_id,platform,device_type,geo_location,approval_code,notes,exchange_uuid,created_at,updated_at) VALUES ('EXG1001','plr-3001','Gold','Gems',5000,250,0.05,10,'2025-04-10','14:20:00','completed','ref-001','Web','Desktop','NA','AP-123','No issues','vce-001','2025-04-10','2025-04-11');
INSERT INTO virtual_currency_exchange (exchange_id,user_uuid,from_currency,to_currency,from_amount,to_amount,exchange_rate,fee_amount,transaction_date,transaction_time,status,reference_id,platform,device_type,geo_location,approval_code,notes,exchange_uuid,created_at,updated_at) VALUES ('EXG1002','plr-3002','Silver','Gold',12000,600,0.05,24,'2025-04-12','09:45:00','pending','ref-002','Mobile','Phone','EU','AP-124','Awaiting verification','vce-002','2025-04-12','2025-04-12');
INSERT INTO virtual_currency_exchange (exchange_id,user_uuid,from_currency,to_currency,from_amount,to_amount,exchange_rate,fee_amount,transaction_date,transaction_time,status,reference_id,platform,device_type,geo_location,approval_code,notes,exchange_uuid,created_at,updated_at) VALUES ('EXG1003','plr-3003','Gems','Platinum',300,15,0.05,1,'2025-04-14','18:30:00','failed','ref-003','Web','Tablet','APAC','AP-125','Insufficient balance','vce-003','2025-04-14','2025-04-15');

-- Health and wellness metrics for players
CREATE TABLE player_health_metrics
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    player_uuid            TEXT,
    check_date             DATE,
    heart_rate             INTEGER,
    blood_pressure_systolic INTEGER,
    blood_pressure_diastolic INTEGER,
    sleep_hours            REAL,
    stress_level           INTEGER,
    hydration_liters       REAL,
    calories_consumed      INTEGER,
    steps_walked           INTEGER,
    mood                   TEXT,
    vision_score           INTEGER,
    hearing_score          INTEGER,
    reaction_time_ms       REAL,
    injury_report          TEXT,
    wellness_score         REAL,
    health_professional_id INTEGER,
    notes                  TEXT,
    health_metric_uuid     TEXT UNIQUE
);

INSERT INTO player_health_metrics (player_uuid,check_date,heart_rate,blood_pressure_systolic,blood_pressure_diastolic,sleep_hours,stress_level,hydration_liters,calories_consumed,steps_walked,mood,vision_score,hearing_score,reaction_time_ms,injury_report,wellness_score,health_professional_id,notes,health_metric_uuid) VALUES ('plr-4001','2025-04-01',72,118,76,7.5,2,2.1,2200,8200,'good',9,9,250.0,'none',8.5,501,'All metrics normal','phm-001');
INSERT INTO player_health_metrics (player_uuid,check_date,heart_rate,blood_pressure_systolic,blood_pressure_diastolic,sleep_hours,stress_level,hydration_liters,calories_consumed,steps_walked,mood,vision_score,hearing_score,reaction_time_ms,injury_report,wellness_score,health_professional_id,notes,health_metric_uuid) VALUES ('plr-4002','2025-04-02',88,130,85,6.0,5,1.8,2500,5000,'stressed',7,8,300.0,'wrist strain',6.2,502,'Recommend physiotherapy','phm-002');
INSERT INTO player_health_metrics (player_uuid,check_date,heart_rate,blood_pressure_systolic,blood_pressure_diastolic,sleep_hours,stress_level,hydration_liters,calories_consumed,steps_walked,mood,vision_score,hearing_score,reaction_time_ms,injury_report,wellness_score,health_professional_id,notes,health_metric_uuid) VALUES ('plr-4003','2025-04-03',65,110,70,8.0,1,2.5,2000,10000,'excellent',10,10,230.0,'none',9.2,503,'Maintain routine','phm-003');

-- Sponsor attendance and engagement at events
CREATE TABLE sponsor_event_attendance
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id             TEXT,
    event_id               TEXT,
    attendance_date        DATE,
    attendee_count         INTEGER,
    engagement_score       REAL,
    booth_location         TEXT,
    activation_type        TEXT,
    staff_count            INTEGER,
    material_stock         INTEGER,
    lead_generated         INTEGER,
    follow_up_rate         REAL,
    sponsorship_level      TEXT,
    feedback_score         REAL,
    sponsor_rep_name       TEXT,
    sponsor_rep_contact    TEXT,
    special_requests       TEXT,
    event_region           TEXT,
    event_type             TEXT,
    attendance_uuid        TEXT UNIQUE,
    created_at             DATE
);

INSERT INTO sponsor_event_attendance (sponsor_id,event_id,attendance_date,attendee_count,engagement_score,booth_location,activation_type,staff_count,material_stock,lead_generated,follow_up_rate,sponsorship_level,feedback_score,sponsor_rep_name,sponsor_rep_contact,special_requests,event_region,event_type,attendance_uuid,created_at) VALUES ('spn-1001','ev-001','2025-03-20',350,78.5,'Hall A','Demo',6,120,80,0.92,'Gold',4.7,'Alice Monroe','alice@spn.com','Extra chairs','NA','Conference','sea-001','2025-03-18');
INSERT INTO sponsor_event_attendance (sponsor_id,event_id,attendance_date,attendee_count,engagement_score,booth_location,activation_type,staff_count,material_stock,lead_generated,follow_up_rate,sponsorship_level,feedback_score,sponsor_rep_name,sponsor_rep_contact,special_requests,event_region,event_type,attendance_uuid,created_at) VALUES ('spn-1002','ev-002','2025-04-05',210,65.0,'Expo Center','VR Experience',4,80,45,0.85,'Silver',4.2,'Bob Patel','bob@spn.com','Power outlets','EU','Expo','sea-002','2025-04-03');
INSERT INTO sponsor_event_attendance (sponsor_id,event_id,attendance_date,attendee_count,engagement_score,booth_location,activation_type,staff_count,material_stock,lead_generated,follow_up_rate,sponsorship_level,feedback_score,sponsor_rep_name,sponsor_rep_contact,special_requests,event_region,event_type,attendance_uuid,created_at) VALUES ('spn-1003','ev-003','2025-05-12',480,82.0,'North Wing','Tournament Support',8,200,120,0.95,'Platinum',4.9,'Carol Lee','carol@spn.com','Custom signage','APAC','Tournament','sea-003','2025-05-10');

-- Seasonal challenge performance statistics
CREATE TABLE seasonal_challenge_stats
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    challenge_id           TEXT,
    season                 TEXT,
    start_date             DATE,
    end_date               DATE,
    total_participants     INTEGER,
    average_score          REAL,
    top_player_uuid        TEXT,
    reward_pool            REAL,
    entry_fee              REAL,
    difficulty_level       TEXT,
    completion_rate        REAL,
    average_completion_time TEXT,
    max_score              INTEGER,
    min_score              INTEGER,
    tier_distribution      TEXT,
    sponsor_id             TEXT,
    challenge_status       TEXT,
    notes                  TEXT,
    challenge_uuid         TEXT UNIQUE,
    created_at             DATE
);

INSERT INTO seasonal_challenge_stats (challenge_id,season,start_date,end_date,total_participants,average_score,top_player_uuid,reward_pool,entry_fee,difficulty_level,completion_rate,average_completion_time,max_score,min_score,tier_distribution,sponsor_id,challenge_status,notes,challenge_uuid,created_at) VALUES ('CHL-5001','Spring2025','2025-03-01','2025-04-30',1520,875.4,'plr-5001',25000.0,5.0,'Hard',0.68,'02:15:00',1200,300,'S:400|A:600|B:520', 'spn-2001','active','High participation','chs-001','2025-02-28');
INSERT INTO seasonal_challenge_stats (challenge_id,season,start_date,end_date,total_participants,average_score,top_player_uuid,reward_pool,entry_fee,difficulty_level,completion_rate,average_completion_time,max_score,min_score,tier_distribution,sponsor_id,challenge_status,notes,challenge_uuid,created_at) VALUES ('CHL-5002','Summer2025','2025-06-01','2025-07-31',980,790.2,'plr-5002',18000.0,4.0,'Medium',0.73,'01:45:00',1100,250,'S:300|A:450|B:230', 'spn-2002','upcoming','New mechanics introduced','chs-002','2025-05-15');
INSERT INTO seasonal_challenge_stats (challenge_id,season,start_date,end_date,total_participants,average_score,top_player_uuid,reward_pool,entry_fee,difficulty_level,completion_rate,average_completion_time,max_score,min_score,tier_distribution,sponsor_id,challenge_status,notes,challenge_uuid,created_at) VALUES ('CHL-5003','Autumn2025','2025-09-01','2025-10-31',1340,820.7,'plr-5003',22000.0,5.5,'Hard',0.65,'02:05:00',1150,280,'S:350|A:590|B:400', 'spn-2003','planned','Seasonal storyline','chs-003','2025-08-20');