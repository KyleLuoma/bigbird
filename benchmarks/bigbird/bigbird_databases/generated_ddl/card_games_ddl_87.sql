-- Player health records
CREATE TABLE player_health_records (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    check_date DATE,
    height_cm REAL,
    weight_kg REAL,
    blood_pressure TEXT,
    heart_rate INTEGER,
    cholesterol_mgdl INTEGER,
    glucose_mgdl INTEGER,
    vision_left REAL,
    vision_right REAL,
    hearing_left INTEGER,
    hearing_right INTEGER,
    stress_level INTEGER,
    sleep_hours REAL,
    injury_status TEXT,
    last_physical_date DATE,
    vaccination_status TEXT,
    allergies TEXT,
    medications TEXT,
    notes TEXT,
    record_uuid TEXT UNIQUE
);

INSERT INTO player_health_records VALUES (1,101,'2023-06-15',180.5,75.2,'120/80',68,190,95,0.9,0.8,5,5,3,7.5,'None','2023-06-01','Complete','Peanuts','Aspirin','All good','uuid-101-a');
INSERT INTO player_health_records VALUES (2,102,'2023-07-20',175.0,68.0,'110/70',72,180,100,1.0,1.0,4,4,2,8.0,'Knee sprain','2023-07-05','Pending','None','Ibuprofen','Follow up needed','uuid-102-b');
INSERT INTO player_health_records VALUES (3,103,'2023-08-10',165.2,60.5,'115/75',65,200,90,0.8,0.8,6,6,1,6.5,'None','2023-08-01','Complete','Dust','None','All clear','uuid-103-c');

-- Esports match outcomes
CREATE TABLE esports_match_outcomes (
    match_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    game_title TEXT,
    team_a_id INTEGER,
    team_b_id INTEGER,
    team_a_score INTEGER,
    team_b_score INTEGER,
    winner_team_id INTEGER,
    match_date DATE,
    duration_minutes REAL,
    map_played TEXT,
    audience_viewers INTEGER,
    peak_concurrency INTEGER,
    stream_url TEXT,
    vod_url TEXT,
    mvp_player_id INTEGER,
    total_kills INTEGER,
    total_assists INTEGER,
    total_deaths INTEGER,
    highlight_clips TEXT,
    outcome_uuid TEXT UNIQUE,
    notes TEXT,
    is_official INTEGER
);

INSERT INTO esports_match_outcomes VALUES (1,10,'Valorant',201,202,13,9,201,'2023-09-01',42.3,'Ascent',15000,20000,'http://stream1.com','http://vod1.com',305,120,85,55,'clip1,clip2','outcome-uuid-1','Great performance',1);
INSERT INTO esports_match_outcomes VALUES (2,11,'League of Legends',301,302,2,0,301,'2023-09-05',35.0,'Summoner Rift',22000,25000,'http://stream2.com','http://vod2.com',412,80,40,20,'clip3','outcome-uuid-2','Clean sweep',1);
INSERT INTO esports_match_outcomes VALUES (3,12,'CSGO',401,402,16,14,401,'2023-09-10',48.5,'Dust II',18000,21000,'http://stream3.com','http://vod3.com',527,140,75,65,'clip4,clip5','outcome-uuid-3','Close match',1);

-- Virtual event feedback
CREATE TABLE virtual_event_feedback (
    feedback_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    participant_id INTEGER,
    rating_overall INTEGER,
    rating_content INTEGER,
    rating_organization INTEGER,
    comments TEXT,
    submission_date DATE,
    device_type TEXT,
    ip_address TEXT,
    session_duration_minutes REAL,
    net_promoter_score INTEGER,
    suggested_improvements TEXT,
    attended_sessions INTEGER,
    total_sessions INTEGER,
    feedback_uuid TEXT UNIQUE,
    is_anonymous INTEGER,
    language TEXT,
    feedback_source TEXT,
    follow_up_required INTEGER,
    contact_email TEXT,
    response_time_hours REAL,
    notes TEXT
);

INSERT INTO virtual_event_feedback VALUES (1,1001,5001,9,8,9,'Very engaging and well organized','2023-10-01','Desktop','192.168.1.10',75.5,8,'More breakout rooms',4,5,'fb-uuid-1',0,'English','Email',0,'user1@example.com',2.5,'');
INSERT INTO virtual_event_feedback VALUES (2,1002,5002,7,6,7,'Content was good but pacing was fast','2023-10-03','Mobile','10.0.0.5',60.0,5,'Shorten sessions',3,4,'fb-uuid-2',1,'Spanish','Survey',1,'',1.0,'');
INSERT INTO virtual_event_feedback VALUES (3,1003,5003,8,9,8,'Loved the interactive polls','2023-10-05','Tablet','172.16.0.20',90.0,9,'Add more Q&A',5,5,'fb-uuid-3',0,'French','App',0,'user3@example.com',3.0,'');

-- Community moderation actions log
CREATE TABLE community_moderation_actions_log (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    moderator_id INTEGER,
    action_type TEXT,
    target_type TEXT,
    target_id INTEGER,
    reason TEXT,
    action_timestamp DATETIME,
    duration_days INTEGER,
    is_reversed INTEGER,
    reversal_reason TEXT,
    notes TEXT,
    source_platform TEXT,
    evidence_url TEXT,
    action_uuid TEXT UNIQUE,
    reviewed_by INTEGER,
    review_status TEXT,
    escalation_level INTEGER,
    penalty_points INTEGER,
    notification_sent INTEGER,
    case_number TEXT,
    related_ticket_id INTEGER,
    resolution_notes TEXT
);

INSERT INTO community_moderation_actions_log VALUES (1,2001,'Delete','Post',3001,'Spam content','2023-11-01 10:15:00',0,0,'','Removed spam post','Forum','http://evidence1.com','modlog-uuid-1',2101,'Approved',1,5,1,'CASE-1001',4001,'User warned');
INSERT INTO community_moderation_actions_log VALUES (2,2002,'Suspend','User',4002,'Harassment','2023-11-02 14:30:00',7,0,'','User suspended for 7 days','Chat','http://evidence2.com','modlog-uuid-2',2102,'Pending',2,10,0,'CASE-1002',4002,'Awaiting appeal');
INSERT INTO community_moderation_actions_log VALUES (3,2003,'Edit','Comment',5003,'Inappropriate language','2023-11-03 09:45:00',0,1,'Mistaken edit','Edited comment for profanity','Comments','http://evidence3.com','modlog-uuid-3',2103,'Reversed',0,0,1,'CASE-1003',4003','Edit reverted');

-- Marketing campaign ROI
CREATE TABLE marketing_campaign_roi (
    campaign_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    spend_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    revenue_usd REAL,
    roi_percent REAL,
    channel TEXT,
    target_audience TEXT,
    creative_type TEXT,
    cpm REAL,
    cpc REAL,
    cpa REAL,
    click_through_rate REAL,
    conversion_rate REAL,
    average_position REAL,
    platform TEXT,
    notes TEXT,
    campaign_uuid TEXT UNIQUE
);

INSERT INTO marketing_campaign_roi VALUES (1,'Summer Blast','2023-06-01','2023-08-31',50000,47000,2000000,15000,3000,120000,255.3,'Social','Adults 18-35','Video',23.5,3.13,15.67,0.75,0.20,1.8,'Meta','Successful campaign','camp-uuid-1');
INSERT INTO marketing_campaign_roi VALUES (2,'Holiday Promo','2023-11-15','2024-01-15',80000,75000,3500000,25000,5000,250000,233.3,'Search','Families','Banner',21.4,2.99,15.0,0.71,0.20,2.1,'Google','High conversion','camp-uuid-2');
INSERT INTO marketing_campaign_roi VALUES (3,'New Release','2024-02-01','2024-04-30',60000,58000,2500000,18000,3500,180000,310.3,'Email','Gamers','HTML',23.2,3.22,16.57,0.72,0.19,1.9,'Mailchimp','Strong engagement','camp-uuid-3');

-- Venue environmental readings extended
CREATE TABLE venue_environmental_readings_ext (
    reading_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    sensor_id INTEGER,
    timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    light_lux INTEGER,
    vibration_g REAL,
    particulate_pm25 INTEGER,
    particulate_pm10 INTEGER,
    pressure_hpa REAL,
    battery_level_percent INTEGER,
    signal_strength INTEGER,
    firmware_version TEXT,
    reading_uuid TEXT UNIQUE,
    maintenance_required INTEGER,
    anomaly_flag INTEGER,
    operator_id INTEGER,
    notes TEXT,
    latitude REAL,
    longitude REAL
);

INSERT INTO venue_environmental_readings_ext VALUES (1,10,101,'2023-12-01 08:00:00',22.5,45.0,600,55.2,300,0.02,12,20,1013.2,85, -70,'v1.2','read-uuid-1',0,0,301,'All good',40.7128,-74.0060);
INSERT INTO venue_environmental_readings_ext VALUES (2,11,102,'2023-12-01 08:15:00',21.8,48.5,750,60.1,350,0.03,15,25,1012.8,80,-68,'v1.3','read-uuid-2',1,1,302,'CO2 high',34.0522,-118.2437);
INSERT INTO venue_environmental_readings_ext VALUES (3,12,103,'2023-12-01 08:30:00',23.0,50.0,500,50.0,280,0.015,10,18,1013.5,90,-65,'v1.2','read-uuid-3',0,0,303,'',51.5074,-0.1278);

-- Digital artifact inventory audit
CREATE TABLE digital_artifact_inventory_audit (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_id INTEGER,
    audit_date DATE,
    auditor_id INTEGER,
    location_code TEXT,
    condition_status TEXT,
    preservation_action TEXT,
    notes TEXT,
    verified_count INTEGER,
    discrepancy_count INTEGER,
    audit_uuid TEXT UNIQUE,
    next_audit_due DATE,
    storage_temperature_c REAL,
    humidity_percent REAL,
    security_status TEXT,
    access_log TEXT,
    audit_type TEXT,
    priority_level INTEGER,
    external_reference TEXT,
    compliance_status TEXT,
    remediation_steps TEXT,
    estimated_value_usd REAL
);

INSERT INTO digital_artifact_inventory_audit VALUES (1,5001,'2023-10-10',4001,'LOC-A','Excellent','None','No issues',150,0,'audit-uuid-1','2024-10-10',20.0,40.0,'Secure','log1','Routine',1,'ref-001','Compliant','',25000.0);
INSERT INTO digital_artifact_inventory_audit VALUES (2,5002,'2023-11-15',4002,'LOC-B','Good','Rehumidify','Minor dust',120,2,'audit-uuid-2','2024-11-15',22.0,45.0,'Secure','log2','Spot',2,'ref-002','Pending','Increase humidity',18000.0);
INSERT INTO digital_artifact_inventory_audit VALUES (3,5003,'2023-12-20',4003,'LOC-C','Fair','Repair frame','Crack repaired',90,1,'audit-uuid-3','2024-12-20',19.5,38.0,'Restricted','log3','Emergency',3,'ref-003','Non-Compliant','Replace backing',12000.0);

-- Tournament staff assignments
CREATE TABLE tournament_staff_assignments (
    assignment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    staff_id INTEGER,
    role TEXT,
    shift_start DATETIME,
    shift_end DATETIME,
    location TEXT,
    contact_phone TEXT,
    email TEXT,
    notes TEXT,
    assigned_by INTEGER,
    assignment_uuid TEXT UNIQUE,
    is_primary INTEGER,
    daily_hours REAL,
    week_number INTEGER,
    responsibilities TEXT,
    training_completed INTEGER,
    badge_id TEXT,
    emergency_contact TEXT,
    availability_status TEXT,
    last_updated DATETIME,
    department TEXT
);

INSERT INTO tournament_staff_assignments VALUES (1,2001,6001,'Referee','2023-09-01 08:00:00','2023-09-01 16:00:00','Main Hall','5551234','staff1@example.com','',7001,'assign-uuid-1',1,8.0,35,'Match oversight',1,'BADGE-001','5559999','Confirmed','2023-08-20 12:00:00','Operations');
INSERT INTO tournament_staff_assignments VALUES (2,2002,6002,'Streamer','2023-09-02 10:00:00','2023-09-02 18:00:00','Streaming Booth','5555678','staff2@example.com','',7002,'assign-uuid-2',0,8.0,35,'Live coverage',1,'BADGE-002','5558888','Pending','2023-08-22 14:30:00','Media');
INSERT INTO tournament_staff_assignments VALUES (3,2003,6003,'Logistics','2023-09-03 07:00:00','2023-09-03 15:00:00','Warehouse','5554321','staff3@example.com','',7003,'assign-uuid-3',1,8.0,35,'Equipment handling',0,'BADGE-003','5557777','Confirmed','2023-08-25 09:15:00','Support');

-- Player gear maintenance
CREATE TABLE player_gear_maintenance (
    maintenance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    gear_id INTEGER,
    gear_type TEXT,
    last_service_date DATE,
    next_service_due DATE,
    service_center TEXT,
    technician_id INTEGER,
    service_cost_usd REAL,
    service_notes TEXT,
    condition_before TEXT,
    condition_after TEXT,
    warranty_status TEXT,
    warranty_expiry DATE,
    parts_replaced TEXT,
    downtime_days INTEGER,
    maintenance_uuid TEXT UNIQUE,
    is_under_warranty INTEGER,
    service_rating INTEGER,
    follow_up_required INTEGER,
    contact_email TEXT,
    receipt_url TEXT
);

INSERT INTO player_gear_maintenance VALUES (1,1001,7001,'Mouse','2023-05-01','2024-05-01','TechHub','8001',45.0','Replaced sensor','Worn','Like new','Active','2025-12-31','Sensor,Pad',2,'gear-uuid-1',1,5,0,'player1@example.com','http://receipt1.com');
INSERT INTO player_gear_maintenance VALUES (2,1002,7002,'Keyboard','2023-06-15','2024-06-15','GadgetCare','8002',30.0','Cleaned and lubed','Good','Excellent','Expired','2023-12-31','Keycaps',1,'gear-uuid-2',0,4,1,'player2@example.com','http://receipt2.com');
INSERT INTO player_gear_maintenance VALUES (3,1003,7003,'Headset','2023-07-20','2024-07-20','AudioFix','8003',60.0','Replaced ear pads','Fair','Good','Active','2026-03-31','EarPads',3,'gear-uuid-3',1,5,0,'player3@example.com','http://receipt3.com');

-- Fantasy world lore entries extended
CREATE TABLE fantasy_world_lore_entries_ext (
    entry_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    chapter INTEGER,
    section INTEGER,
    page_number INTEGER,
    summary TEXT,
    full_text TEXT,
    author TEXT,
    created_date DATE,
    last_modified DATE,
    keywords TEXT,
    related_entries TEXT,
    world_region TEXT,
    timeline_year INTEGER,
    lore_type TEXT,
    importance_level INTEGER,
    is_canonical INTEGER,
    source_reference TEXT,
    verification_status TEXT,
    entry_uuid TEXT UNIQUE,
    notes TEXT,
    contributor_id INTEGER
);

INSERT INTO fantasy_world_lore_entries_ext VALUES (1,'The Dawn of Isles',1,1,5,'Origins of the island chain','Long ago the seas rose...','Eldara','2022-01-10','2023-03-12','isles,origin,sea','2,3','North Sea',1020,'Myth','5',1,'AncientScroll','Verified','lore-uuid-1','',401);
INSERT INTO fantasy_world_lore_entries_ext VALUES (2,'Rise of the Ember Guild',2,3,12,'Formation of the guild','The Ember Guild was formed...','Thalion','2022-05-22','2023-04-01','guild,ember,magic','1,4','Southern Plains',1150,'History','4',1,'GuildRecords','Pending','lore-uuid-2','',402);
INSERT INTO fantasy_world_lore_entries_ext VALUES (3,'The Veiled Prophecy',3,2,23,'A cryptic prophecy','In the hidden valley...','Lysandra','2022-09-15','2023-05-20','prophecy,veiled,secret','5','Eastern Mountains',1205,'Legend','3',0,'OralTradition','Unverified','lore-uuid-3','Needs review',403);
