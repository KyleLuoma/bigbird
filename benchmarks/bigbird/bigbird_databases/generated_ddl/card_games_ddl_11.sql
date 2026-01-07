-- Table: card_artwork_stats
CREATE TABLE card_artwork_stats
(
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    artwork_id        TEXT,
    card_uuid         TEXT,
    artist_name       TEXT,
    resolution_width  INTEGER,
    resolution_height INTEGER,
    color_mode        TEXT,
    file_format       TEXT,
    file_size_kb      REAL,
    usage_count       INTEGER,
    last_used_date    DATE,
    is_licensed       INTEGER,
    license_type      TEXT,
    royalty_rate      REAL,
    created_at        DATE,
    updated_at        DATE,
    source_url        TEXT,
    checksum          TEXT,
    aspect_ratio      REAL,
    tags              TEXT,
    notes             TEXT
);

INSERT INTO card_artwork_stats (id,artwork_id,card_uuid,artist_name,resolution_width,resolution_height,color_mode,file_format,file_size_kb,usage_count,last_used_date,is_licensed,license_type,royalty_rate,created_at,updated_at,source_url,checksum,aspect_ratio,tags,notes) VALUES (1,'A001','UUID1','John Doe',3000,4000,'RGB','PNG',1024.5,10,'2024-01-10',1,'Standard',0.05,'2024-01-01','2024-01-15','http://example.com/art1','CHK123',0.75,'promo,rare','First art entry');
INSERT INTO card_artwork_stats (id,artwork_id,card_uuid,artist_name,resolution_width,resolution_height,color_mode,file_format,file_size_kb,usage_count,last_used_date,is_licensed,license_type,royalty_rate,created_at,updated_at,source_url,checksum,aspect_ratio,tags,notes) VALUES (2,'A002','UUID2','Jane Smith',2500,3500,'CMYK','JPG',850.2,5,'2024-02-05',0,'',0.00,'2024-02-01','2024-02-07','http://example.com/art2','CHK124',0.71,'common','Second art entry');
INSERT INTO card_artwork_stats (id,artwork_id,card_uuid,artist_name,resolution_width,resolution_height,color_mode,file_format,file_size_kb,usage_count,last_used_date,is_licensed,license_type,royalty_rate,created_at,updated_at,source_url,checksum,aspect_ratio,tags,notes) VALUES (3,'A003','UUID3','Alex Lee',4000,5000,'RGB','TIFF',2048.0,20,'2024-03-12',1,'Exclusive',0.10,'2024-03-01','2024-03-20','http://example.com/art3','CHK125',0.80,'mythic,limited','Third art entry');

-- Table: set_print_schedule
CREATE TABLE set_print_schedule
(
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code          TEXT,
    print_batch_id    TEXT,
    plant_location    TEXT,
    printer_name      TEXT,
    print_start_date  DATE,
    print_end_date    DATE,
    units_planned     INTEGER,
    units_completed   INTEGER,
    paper_type        TEXT,
    ink_type          TEXT,
    quality_check_passed INTEGER,
    quality_issue_desc TEXT,
    estimated_cost    REAL,
    actual_cost       REAL,
    supervisor_name   TEXT,
    shift_id          TEXT,
    environment_temp  REAL,
    humidity_percent  REAL,
    notes             TEXT,
    created_at        DATE
);

INSERT INTO set_print_schedule (id,set_code,print_batch_id,plant_location,printer_name,print_start_date,print_end_date,units_planned,units_completed,paper_type,ink_type,quality_check_passed,quality_issue_desc,estimated_cost,actual_cost,supervisor_name,shift_id,environment_temp,humidity_percent,notes,created_at) VALUES (1,'SET01','B001','PlantA','PrinterX','2023-12-01','2023-12-10',100000,95000,'Glossy','UV',1,'',50000.00,52000.00,'Mike Johnson','S1',22.5,45.0,'Initial run','2023-11-20');
INSERT INTO set_print_schedule (id,set_code,print_batch_id,plant_location,printer_name,print_start_date,print_end_date,units_planned,units_completed,paper_type,ink_type,quality_check_passed,quality_issue_desc,estimated_cost,actual_cost,supervisor_name,shift_id,environment_temp,humidity_percent,notes,created_at) VALUES (2,'SET02','B002','PlantB','PrinterY','2024-01-15','2024-01-22',150000,150000,'Matte','Soy',1,'',75000.00,75000.00,'Sara Lee','S2',21.0,40.0,'Full capacity run','2024-01-05');
INSERT INTO set_print_schedule (id,set_code,print_batch_id,plant_location,printer_name,print_start_date,print_end_date,units_planned,units_completed,paper_type,ink_type,quality_check_passed,quality_issue_desc,estimated_cost,actual_cost,supervisor_name,shift_id,environment_temp,humidity_percent,notes,created_at) VALUES (3,'SET03','B003','PlantC','PrinterZ','2024-03-01','2024-03-08',200000,190000,'Cardstock','UV',0,'Color shift detected',100000.00,105000.00,'Tom Reed','S3',23.0,50.0,'Reprint scheduled','2024-02-20');

-- Table: player_subscription_plans
CREATE TABLE player_subscription_plans
(
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id         INTEGER,
    plan_name         TEXT,
    tier_level        INTEGER,
    monthly_fee       REAL,
    annual_fee        REAL,
    start_date        DATE,
    end_date          DATE,
    auto_renew        INTEGER,
    payment_method    TEXT,
    billing_cycle     TEXT,
    benefit_1         TEXT,
    benefit_2         TEXT,
    benefit_3         TEXT,
    max_decks         INTEGER,
    max_friends       INTEGER,
    priority_support  INTEGER,
    exclusive_content INTEGER,
    last_payment_date DATE,
    status            TEXT,
    created_at        DATE
);

INSERT INTO player_subscription_plans (id,player_id,plan_name,tier_level,monthly_fee,annual_fee,start_date,end_date,auto_renew,payment_method,billing_cycle,benefit_1,benefit_2,benefit_3,max_decks,max_friends,priority_support,exclusive_content,last_payment_date,status,created_at) VALUES (1,101,'Gold','3',15.99,159.99,'2023-06-01','2024-05-31',1,'CreditCard','Monthly','UnlimitedDecks','PriorityQueue','EarlyAccess',999,500,1,1,'2024-04-15','Active','2023-05-20');
INSERT INTO player_subscription_plans (id,player_id,plan_name,tier_level,monthly_fee,annual_fee,start_date,end_date,auto_renew,payment_method,billing_cycle,benefit_1,benefit_2,benefit_3,max_decks,max_friends,priority_support,exclusive_content,last_payment_date,status,created_at) VALUES (2,102,'Silver','2',9.99,99.99,'2023-09-10','2024-09-09',1,'PayPal','Monthly','StandardDecks','StandardQueue','',200,150,0,0,'2024-03-10','Active','2023-08-30');
INSERT INTO player_subscription_plans (id,player_id,plan_name,tier_level,monthly_fee,annual_fee,start_date,end_date,auto_renew,payment_method,billing_cycle,benefit_1,benefit_2,benefit_3,max_decks,max_friends,priority_support,exclusive_content,last_payment_date,status,created_at) VALUES (3,103,'Bronze','1',0.00,0.00,'2022-01-01','2025-12-31',0,'None','None','BasicDecks','BasicQueue','',50,30,0,0,'2024-01-01','Inactive','2021-12-15');

-- Table: digital_asset_access_logs
CREATE TABLE digital_asset_access_logs
(
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id            TEXT,
    user_id             INTEGER,
    access_timestamp    DATE,
    access_type         TEXT,
    ip_address          TEXT,
    device_type         TEXT,
    app_version         TEXT,
    session_id          TEXT,
    download_speed      REAL,
    bytes_transferred   INTEGER,
    was_successful      INTEGER,
    error_code          TEXT,
    region              TEXT,
    subscription_level  TEXT,
    referrer_url        TEXT,
    user_agent          TEXT,
    duration_seconds    REAL,
    notes               TEXT,
    created_at          DATE
);

INSERT INTO digital_asset_access_logs (id,asset_id,user_id,access_timestamp,access_type,ip_address,device_type,app_version,session_id,download_speed,bytes_transferred,was_successful,error_code,region,subscription_level,referrer_url,user_agent,duration_seconds,notes,created_at) VALUES (1,'DA001',101,'2024-04-01','Download','192.168.1.10','Desktop','1.3.0','S001',5.2,2048000,1,'', 'NA','Premium','http://example.com','Mozilla/5.0',12.5,'First download','2024-04-01');
INSERT INTO digital_asset_access_logs (id,asset_id,user_id,access_timestamp,access_type,ip_address,device_type,app_version,session_id,download_speed,bytes_transferred,was_successful,error_code,region,subscription_level,referrer_url,user_agent,duration_seconds,notes,created_at) VALUES (2,'DA002',102,'2024-04-02','View','10.0.0.5','Mobile','2.0.1','S002',3.8,512000,1,'', 'EU','Free','http://example.org','Mozilla/5.0',4.2,'Viewed thumbnail','2024-04-02');
INSERT INTO digital_asset_access_logs (id,asset_id,user_id,access_timestamp,access_type,ip_address,device_type,app_version,session_id,download_speed,bytes_transferred,was_successful,error_code,region,subscription_level,referrer_url,user_agent,duration_seconds,notes,created_at) VALUES (3,'DA003',103,'2024-04-03','Download','172.16.0.3','Tablet','1.5.4','S003',0.0,0,0,'TIMEOUT','AS','Free','http://example.net','Mozilla/5.0',0.0,'Download timeout','2024-04-03');

-- Table: tournament_match_results
CREATE TABLE tournament_match_results
(
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id       INTEGER,
    round_number        INTEGER,
    match_number        INTEGER,
    player1_id          INTEGER,
    player2_id          INTEGER,
    player1_score       INTEGER,
    player2_score       INTEGER,
    winner_id           INTEGER,
    match_start_time    DATE,
    match_end_time      DATE,
    game_type           TEXT,
    deck1_id            INTEGER,
    deck2_id            INTEGER,
    play_time_seconds   REAL,
    venue_id            INTEGER,
    spectator_count     INTEGER,
    judge_id            INTEGER,
    notes               TEXT,
    created_at          DATE
);

INSERT INTO tournament_match_results (id,tournament_id,round_number,match_number,player1_id,player2_id,player1_score,player2_score,winner_id,match_start_time,match_end_time,game_type,deck1_id,deck2_id,play_time_seconds,venue_id,spectator_count,judge_id,notes,created_at) VALUES (1,201,1,1,101,102,2,0,101,'2024-03-10','2024-03-10','Standard',301,302,420.5,10,35,501,'Clean win','2024-03-08');
INSERT INTO tournament_match_results (id,tournament_id,round_number,match_number,player1_id,player2_id,player1_score,player2_score,winner_id,match_start_time,match_end_time,game_type,deck1_id,deck2_id,play_time_seconds,venue_id,spectator_count,judge_id,notes,created_at) VALUES (2,201,1,2,103,104,1,2,104,'2024-03-10','2024-03-10','Standard',303,304,550.0,10,40,502,'Come‑from‑behind','2024-03-08');
INSERT INTO tournament_match_results (id,tournament_id,round_number,match_number,player1_id,player2_id,player1_score,player2_score,winner_id,match_start_time,match_end_time,game_type,deck1_id,deck2_id,play_time_seconds,venue_id,spectator_count,judge_id,notes,created_at) VALUES (3,201,2,1,101,104,0,2,104,'2024-03-11','2024-03-11','Standard',301,304,600.0,10,55,503,'Dominant performance','2024-03-08');

-- Table: venue_maintenance_tasks
CREATE TABLE venue_maintenance_tasks
(
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id            INTEGER,
    task_name           TEXT,
    task_category       TEXT,
    scheduled_date      DATE,
    completed_date      DATE,
    assigned_to         TEXT,
    priority_level      INTEGER,
    estimated_hours     REAL,
    actual_hours        REAL,
    cost_estimate       REAL,
    cost_actual         REAL,
    status              TEXT,
    required_tools      TEXT,
    safety_measures     TEXT,
    notes               TEXT,
    created_by          TEXT,
    created_at          DATE,
    updated_at          DATE,
    repeat_interval_days INTEGER
);

INSERT INTO venue_maintenance_tasks (id,venue_id,task_name,task_category,scheduled_date,completed_date,assigned_to,priority_level,estimated_hours,actual_hours,cost_estimate,cost_actual,status,required_tools,safety_measures,notes,created_by,created_at,updated_at,repeat_interval_days) VALUES (1,10,'HVAC Filter Replacement','Mechanical','2024-04-05','2024-04-05','John Tech',2,2.0,2.0,150.00,150.00,'Completed','Filter Kit','Wear Gloves','Replaced all filters','Facility Manager','2024-03-20','2024-04-05',180);
INSERT INTO venue_maintenance_tasks (id,venue_id,task_name,task_category,scheduled_date,completed_date,assigned_to,priority_level,estimated_hours,actual_hours,cost_estimate,cost_actual,status,required_tools,safety_measures,notes,created_by,created_at,updated_at,repeat_interval_days) VALUES (2,11,'Fire Extinguisher Inspection','Safety','2024-04-10','2024-04-10','Safety Officer',1,3.0,3.5,200.00,220.00,'Completed','Inspection Form','Safety Goggles','All units inspected','Safety Lead','2024-03-22','2024-04-10',365);
INSERT INTO venue_maintenance_tasks (id,venue_id,task_name,task_category,scheduled_date,completed_date,assigned_to,priority_level,estimated_hours,actual_hours,cost_estimate,cost_actual,status,required_tools,safety_measures,notes,created_by,created_at,updated_at,repeat_interval_days) VALUES (3,12,'Stage Light Calibration','Electrical','2024-04-15',NULL,'Lighting Crew',3,4.0,NULL,300.00,NULL,'Pending','Calibration Kit','No Ladder Needed','Calibration to be done before next event','Production Manager','2024-04-01','2024-04-01',30);

-- Table: marketing_campaign_channels
CREATE TABLE marketing_campaign_channels
(
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,
    campaign_id         INTEGER,
    channel_name        TEXT,
    budget_allocated    REAL,
    budget_spent        REAL,
    impressions         INTEGER,
    clicks              INTEGER,
    conversions         INTEGER,
    cpc                 REAL,
    cpm                 REAL,
    ctr                 REAL,
    conversion_rate     REAL,
    start_date          DATE,
    end_date            DATE,
    target_audience     TEXT,
    creative_id         TEXT,
    region              TEXT,
    status              TEXT,
    notes               TEXT,
    created_at          DATE
);

INSERT INTO marketing_campaign_channels (id,campaign_id,channel_name,budget_allocated,budget_spent,impressions,clicks,conversions,cpc,cpm,ctr,conversion_rate,start_date,end_date,target_audience,creative_id,region,status,notes,created_at) VALUES (1,301,'Social Media','5000.00','3500.00',200000,1500,120,2.33,17.5,0.75,8.00,'2024-03-01','2024-04-01','Players 18-35','CR001','NA','Active','Strong engagement','2024-02-20');
INSERT INTO marketing_campaign_channels (id,campaign_id,channel_name,budget_allocated,budget_spent,impressions,clicks,conversions,cpc,cpm,ctr,conversion_rate,start_date,end_date,target_audience,creative_id,region,status,notes,created_at) VALUES (2,301,'Email','2000.00','1800.00',50000,800,200,2.25,40.0,1.60,25.00,'2024-03-01','2024-04-01','All Registered Users','CR002','Global','Active','High open rate','2024-02-20');
INSERT INTO marketing_campaign_channels (id,campaign_id,channel_name,budget_allocated,budget_spent,impressions,clicks,conversions,cpc,cpm,ctr,conversion_rate,start_date,end_date,target_audience,creative_id,region,status,notes,created_at) VALUES (3,301,'Paid Search','3000.00','2900.00',120000,900,150,3.22,25.0,0.75,16.67,'2024-03-01','2024-04-01','Competitive Players','CR003','EU','Active','Cost per click decreasing','2024-02-20');

-- Table: community_event_participants
CREATE TABLE community_event_participants
(
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id            INTEGER,
    user_id             INTEGER,
    role                TEXT,
    registration_date   DATE,
    attendance_status   TEXT,
    badge_id            TEXT,
    team_name           TEXT,
    points_earned       INTEGER,
    feedback_score      REAL,
    avatar_url          TEXT,
    contact_email       TEXT,
    phone_number        TEXT,
    address             TEXT,
    city                TEXT,
    state               TEXT,
    zip_code            TEXT,
    country             TEXT,
    notes               TEXT,
    created_at          DATE
);

INSERT INTO community_event_participants (id,event_id,user_id,role,registration_date,attendance_status,badge_id,team_name,points_earned,feedback_score,avatar_url,contact_email,phone_number,address,city,state,zip_code,country,notes,created_at) VALUES (1,401,501,'Player','2024-02-15','Attended','B001','Alpha Squad',150,4.5,'http://example.com/avatar1','player1@example.com','5551234567','123 Main St','Metropolis','NY','10001','USA','First event','2024-02-01');
INSERT INTO community_event_participants (id,event_id,user_id,role,registration_date,attendance_status,badge_id,team_name,points_earned,feedback_score,avatar_url,contact_email,phone_number,address,city,state,zip_code,country,notes,created_at) VALUES (2,401,502,'Streamer','2024-02-16','No Show','B002','Beta Crew',0,0.0,'http://example.com/avatar2','streamer@example.com','5559876543','456 Oak Ave','Gotham','CA','90001','USA','Did not attend','2024-02-01');
INSERT INTO community_event_participants (id,event_id,user_id,role,registration_date,attendance_status,badge_id,team_name,points_earned,feedback_score,avatar_url,contact_email,phone_number,address,city,state,zip_code,country,notes,created_at) VALUES (3,401,503,'Judge','2024-02-10','Attended','B003','Judges Panel',200,5.0,'http://example.com/avatar3','judge@example.com','5557654321','789 Pine Rd','Star City','TX','75001','USA','Provided feedback','2024-02-01');

-- Table: game_mechanics_test_cases
CREATE TABLE game_mechanics_test_cases
(
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,
    mechanic_name       TEXT,
    test_case_id        TEXT,
    description         TEXT,
    precondition        TEXT,
    steps               TEXT,
    expected_result     TEXT,
    actual_result       TEXT,
    passed              INTEGER,
    tester_name         TEXT,
    test_date           DATE,
    severity            TEXT,
    priority            INTEGER,
    module              TEXT,
    version             TEXT,
    environment         TEXT,
    bug_id              TEXT,
    notes               TEXT,
    created_at          DATE,
    updated_at          DATE
);

INSERT INTO game_mechanics_test_cases (id,mechanic_name,test_case_id,description,precondition,steps,expected_result,actual_result,passed,tester_name,test_date,severity,priority,module,version,environment,bug_id,notes,created_at,updated_at) VALUES (1,'Flying','TC001','Validate flying interacts with blockers','Creature with flying on battlefield','Attack with flying creature','Unblocked','Unblocked',1,'Alice','2024-03-20','Low',1,'Combat','1.0','Prod','', 'All good','2024-03-01','2024-03-20');
INSERT INTO game_mechanics_test_cases (id,mechanic_name,test_case_id,description,precondition,steps,expected_result,actual_result,passed,tester_name,test_date,severity,priority,module,version,environment,bug_id,notes,created_at,updated_at) VALUES (2,'Trample','TC002','Check trample excess damage','Attacking creature with trample and sufficient power','Declare attack, assign damage','Excess damage to defending player','Excess damage to defending player',1,'Bob','2024-03-21','Medium',2,'Combat','1.0','Prod','', 'Works as intended','2024-03-01','2024-03-21');
INSERT INTO game_mechanics_test_cases (id,mechanic_name,test_case_id,description,precondition,steps,expected_result,actual_result,passed,tester_name,test_date,severity,priority,module,version,environment,bug_id,notes,created_at,updated_at) VALUES (3,'Hexproof','TC003','Ensure hexproof prevents targeting','Creature with hexproof on battlefield','Attempt to target with spell','Targeting fails','Targeting fails',1,'Carol','2024-03-22','High',1,'Targeting','1.0','Staging','BUG123','Bug fixed in later patch','2024-03-01','2024-03-22');

-- Table: sponsor_billing_records
CREATE TABLE sponsor_billing_records
(
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id          INTEGER,
    billing_cycle       TEXT,
    invoice_number      TEXT,
    invoice_date        DATE,
    due_date            DATE,
    amount_due          REAL,
    amount_paid         REAL,
    payment_date        DATE,
    payment_method      TEXT,
    status              TEXT,
    tax_amount          REAL,
    discount_amount     REAL,
    total_before_tax    REAL,
    total_after_discount REAL,
    notes               TEXT,
    created_by          TEXT,
    created_at          DATE,
    updated_at          DATE,
    reference_id        TEXT
);

INSERT INTO sponsor_billing_records (id,sponsor_id,billing_cycle,invoice_number,invoice_date,due_date,amount_due,amount_paid,payment_date,payment_method,status,tax_amount,discount_amount,total_before_tax,total_after_discount,notes,created_by,created_at,updated_at,reference_id) VALUES (1,601,'Monthly','INV001','2024-04-01','2024-04-15',1000.00,1000.00,'2024-04-10','BankTransfer','Paid',80.00,0.00,1080.00,1080.00,'On time payment','FinanceTeam','2024-03-25','2024-04-10','REF001');
INSERT INTO sponsor_billing_records (id,sponsor_id,billing_cycle,invoice_number,invoice_date,due_date,amount_due,amount_paid,payment_date,payment_method,status,tax_amount,discount_amount,total_before_tax,total_after_discount,notes,created_by,created_at,updated_at,reference_id) VALUES (2,602,'Quarterly','INV002','2024-01-15','2024-02-01',3000.00,0.00,NULL,'','Pending',240.00,150.00,3240.00,3090.00,'Awaiting payment','FinanceTeam','2024-01-10','2024-01-15','REF002');
INSERT INTO sponsor_billing_records (id,sponsor_id,billing_cycle,invoice_number,invoice_date,due_date,amount_due,amount_paid,payment_date,payment_method,status,tax_amount,discount_amount,total_before_tax,total_after_discount,notes,created_by,created_at,updated_at,reference_id) VALUES (3,603,'Annual','INV003','2023-12-01','2023-12-31',12000.00,12000.00,'2023-12-15','CreditCard','Paid',960.00,0.00,12960.00,12960.00,'Yearly sponsorship fee','FinanceTeam','2023-11-20','2023-12-15','REF003');