-- Broadcast channel information adjacent to streaming data
CREATE TABLE broadcast_channels
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    name                   TEXT,
    platform               TEXT,
    url                    TEXT,
    language               TEXT,
    region                 TEXT,
    subscriber_count       INTEGER,
    average_view_duration  REAL,
    live_stream_capacity   INTEGER,
    content_rating         TEXT,
    category               TEXT,
    launch_date            DATE,
    is_partner             INTEGER,
    partnership_level      TEXT,
    daily_peak_viewers     INTEGER,
    weekly_active_hours    REAL,
    account_manager        TEXT,
    contract_start         DATE,
    contract_end           DATE,
    streaming_quality      TEXT,
    ad_insert_rate         REAL,
    compliance_status      TEXT,
    notes                  TEXT
);

INSERT INTO broadcast_channels (name,platform,url,language,region,subscriber_count,average_view_duration,live_stream_capacity,content_rating,category,launch_date,is_partner,partnership_level,daily_peak_viewers,weekly_active_hours,account_manager,contract_start,contract_end,streaming_quality,ad_insert_rate,compliance_status,notes) VALUES
('ChannelOne','YouTube','https://youtube.com/channelone','English','NA',1200000,45.6,5000,'PG','Gaming','2022-03-15',1,'Gold',85000,320.5,'Jane Doe','2022-01-01','2025-01-01','1080p',0.05,'Compliant','Initial launch');

INSERT INTO broadcast_channels (name,platform,url,language,region,subscriber_count,average_view_duration,live_stream_capacity,content_rating,category,launch_date,is_partner,partnership_level,daily_peak_viewers,weekly_active_hours,account_manager,contract_start,contract_end,streaming_quality,ad_insert_rate,compliance_status,notes) VALUES
('StreamVista','Twitch','https://twitch.tv/streamvista','Spanish','EU',750000,38.2,3000,'G','Esports','2021-06-20',0,'',42000,210.0,'Carlos Ruiz','2021-05-01','2024-05-01','720p',0.04,'Pending','Seasonal promotion');

INSERT INTO broadcast_channels (name,platform,url,language,region,subscriber_count,average_view_duration,live_stream_capacity,content_rating,category,launch_date,is_partner,partnership_level,daily_peak_viewers,weekly_active_hours,account_manager,contract_start,contract_end,streaming_quality,ad_insert_rate,compliance_status,notes) VALUES
('ArcaneLive','Mixer','https://mixer.com/arcanelive','German','APAC',300000,50.1,2000,'PG-13','Fantasy','2020-11-05',1,'Silver',15000,98.7,'Lena Schmidt','2020-10-01','2023-10-01','1080p',0.03,'Compliant','Focus on indie games');

-- Coach to player assignment details
CREATE TABLE coach_assignments
(
    id                    INTEGER PRIMARY KEY AUTOINCREMENT,
    coach_id              INTEGER,
    coach_name            TEXT,
    player_id             INTEGER,
    player_name           TEXT,
    start_date            DATE,
    end_date              DATE,
    coaching_focus        TEXT,
    session_count         INTEGER,
    total_hours           REAL,
    certification_level   TEXT,
    location              TEXT,
    hourly_rate           REAL,
    is_active             INTEGER,
    notes                 TEXT,
    contact_email         TEXT,
    phone_number          TEXT,
    feedback_score        REAL,
    last_evaluation       DATE,
    next_review           DATE,
    assigned_by           TEXT,
    contract_type         TEXT
);

INSERT INTO coach_assignments (coach_id,coach_name,player_id,player_name,start_date,end_date,coaching_focus,session_count,total_hours,certification_level,location,hourly_rate,is_active,notes,contact_email,phone_number,feedback_score,last_evaluation,next_review,assigned_by,contract_type) VALUES
(101,'Alex Mercer',201,'PlayerAlpha','2023-01-15','2023-12-15','Deckbuilding',30,45.0,'Level3','Los Angeles',75.0,1,'Initial contract','alex.mercer@example.com','5551234567',4.5,'2023-06-01','2023-11-30','HeadCoach','FullTime');

INSERT INTO coach_assignments (coach_id,coach_name,player_id,player_name,start_date,end_date,coaching_focus,session_count,total_hours,certification_level,location,hourly_rate,is_active,notes,contact_email,phone_number,feedback_score,last_evaluation,next_review,assigned_by,contract_type) VALUES
(102,'Maria Gonzalez',202,'PlayerBeta','2023-03-01','2024-02-28','MetaAnalysis',20,30.0,'Level2','Madrid',60.0,1,'Renewed after trial','maria.gonzalez@example.com','5559876543',4.2,'2023-08-15','2024-02-28','SeniorCoach','PartTime');

INSERT INTO coach_assignments (coach_id,coach_name,player_id,player_name,start_date,end_date,coaching_focus,session_count,total_hours,certification_level,location,hourly_rate,is_active,notes,contact_email,phone_number,feedback_score,last_evaluation,next_review,assigned_by,contract_type) VALUES
(103,'Liu Wei',203,'PlayerGamma','2022-09-10','2023-09-09','Aggro Strategies',25,38.0,'Level4','Beijing',80.0,0,'Contract ended','liu.wei@example.com','5552223333',3.9,'2023-07-20','2023-09-09','Director','FullTime');

-- Definitions of in‑game events not tied to cards
CREATE TABLE in_game_event_definitions
(
    id                    INTEGER PRIMARY KEY AUTOINCREMENT,
    event_code            TEXT,
    event_name            TEXT,
    description           TEXT,
    start_date            DATE,
    end_date              DATE,
    trigger_condition    TEXT,
    reward_type           TEXT,
    reward_quantity       INTEGER,
    max_participants      INTEGER,
    eligibility_criteria TEXT,
    cooldown_hours        REAL,
    visibility            TEXT,
    banner_image_url      TEXT,
    theme_color           TEXT,
    event_manager         TEXT,
    communication_channel TEXT,
    has_leaderboard       INTEGER,
    leaderboard_type      TEXT,
    points_per_action     REAL,
    activation_cost       REAL,
    deactivation_reason  TEXT,
    notes                 TEXT
);

INSERT INTO in_game_event_definitions (event_code,event_name,description,start_date,end_date,trigger_condition,reward_type,reward_quantity,max_participants,eligibility_criteria,cooldown_hours,visibility,banner_image_url,theme_color,event_manager,communication_channel,has_leaderboard,leaderboard_type,points_per_action,activation_cost,deactivation_reason,notes) VALUES
('EVT001','Spring Festival','Seasonal tournament with themed decks','2023-04-01','2023-04-15','DateRange','Gold','500',2000,'All ranks',24,'Public','https://example.com/banner1.png','#FFAA00','Sofia Lee','InGame','1','Points','10.0','0','ScheduledEnd','First spring event');

INSERT INTO in_game_event_definitions (event_code,event_name,description,start_date,end_date,trigger_condition,reward_type,reward_quantity,max_participants,eligibility_criteria,cooldown_hours,visibility,banner_image_url,theme_color,event_manager,communication_channel,has_leaderboard,leaderboard_type,points_per_action,activation_cost,deactivation_reason,notes) VALUES
('EVT002','Arena Blitz','Fast‑paced arena battles','2023-07-10','2023-07-12','DailyReset','XP','200',5000,'Rank 10+',12,'Public','https://example.com/banner2.png','#00AAFF','Marco Tan','Email','1','Speed','5.0','0','Completed','High engagement');

INSERT INTO in_game_event_definitions (event_code,event_name,description,start_date,end_date,trigger_condition,reward_type,reward_quantity,max_participants,eligibility_criteria,cooldown_hours,visibility,banner_image_url,theme_color,event_manager,communication_channel,has_leaderboard,leaderboard_type,points_per_action,activation_cost,deactivation_reason,notes) VALUES
('EVT003','Mystic Hunt','Scavenger hunt across realms','2023-10-05','2023-10-20','QuestCompletion','Card','1',1000,'All players',48,'Private','https://example.com/banner3.png','#AA00FF','Nina Patel','PushNotification','0','None','0','50','PlayerInterest','Beta test of new quest system');

-- Virtual store items not directly tied to physical cards
CREATE TABLE virtual_store_inventory
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    item_sku               TEXT,
    item_name              TEXT,
    category               TEXT,
    subcategory            TEXT,
    description            TEXT,
    price                  REAL,
    currency               TEXT,
    stock_quantity         INTEGER,
    restock_threshold      INTEGER,
    supplier_id            INTEGER,
    supplier_name          TEXT,
    is_digital             INTEGER,
    download_url           TEXT,
    file_size_mb           REAL,
    release_date           DATE,
    expiration_date        DATE,
    is_limited_edition     INTEGER,
    edition_number         INTEGER,
    promotional_tag        TEXT,
    is_active              INTEGER,
    created_at             DATE,
    updated_at             DATE,
    notes                  TEXT
);

INSERT INTO virtual_store_inventory (item_sku,item_name,category,subcategory,description,price,currency,stock_quantity,restock_threshold,supplier_id,supplier_name,is_digital,download_url,file_size_mb,release_date,expiration_date,is_limited_edition,edition_number,promotional_tag,is_active,created_at,updated_at,notes) VALUES
('VSI1001','Dragon Avatar','Avatars','Mythic','High‑resolution dragon avatar','5.99','USD',1000,100,501,'DigitalArts',1,'https://store.example.com/downloads/dragon','150.0','2023-01-01',NULL,0,0,'NewYear2023',1,'2023-01-01','2023-01-05','Featured in Jan sale');

INSERT INTO virtual_store_inventory (item_sku,item_name,category,subcategory,description,price,currency,stock_quantity,restock_threshold,supplier_id,supplier_name,is_digital,download_url,file_size_mb,release_date,expiration_date,is_limited_edition,edition_number,promotional_tag,is_active,created_at,updated_at,notes) VALUES
('VSI1002','Starter Pack Booster','Boosters','Starter','Contains 10 random cards for new players','2.49','USD',5000,500,502,'PackMakers',1,'https://store.example.com/downloads/starterpack','0','2023-02-15',NULL,1,1,'Limited',1,'2023-02-15','2023-02-18','Limited edition for early adopters');

INSERT INTO virtual_store_inventory (item_sku,item_name,category,subcategory,description,price,currency,stock_quantity,restock_threshold,supplier_id,supplier_name,is_digital,download_url,file_size_mb,release_date,expiration_date,is_limited_edition,edition_number,promotional_tag,is_active,created_at,updated_at,notes) VALUES
('VSI1003','Seasonal Emote Pack','Emotes','Seasonal','Set of emotes for the autumn season','1.99','USD',2000,200,503,'EmoteStudio',1,'https://store.example.com/downloads/autumnemotes','25.0','2023-09-01','2023-11-30',0,0,'Fall2023',1,'2023-09-01','2023-09-02','Available until end of November');

-- Community forum thread metadata
CREATE TABLE community_forum_threads
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    thread_uuid            TEXT,
    forum_id               INTEGER,
    title                  TEXT,
    creator_user_id        INTEGER,
    creator_username       TEXT,
    created_at             DATE,
    last_post_at           DATE,
    view_count             INTEGER,
    reply_count            INTEGER,
    is_sticky              INTEGER,
    is_locked              INTEGER,
    tags                   TEXT,
    category               TEXT,
    subcategory            TEXT,
    language               TEXT,
    sentiment_score        REAL,
    moderation_status      TEXT,
    assigned_moderator_id  INTEGER,
    assigned_moderator_name TEXT,
    priority_level         TEXT,
    attachment_count       INTEGER,
    poll_question          TEXT,
    poll_options           TEXT,
    notes                  TEXT
);

INSERT INTO community_forum_threads (thread_uuid,forum_id,title,creator_user_id,creator_username,created_at,last_post_at,view_count,reply_count,is_sticky,is_locked,tags,category,subcategory,language,sentiment_score,moderation_status,assigned_moderator_id,assigned_moderator_name,priority_level,attachment_count,poll_question,poll_options,notes) VALUES
('UUID-THR-001',10,'Deck Build Strategies','1001','GamerX','2023-05-01','2023-05-10',3500,120,0,0,'deck,strategy','Gameplay','Deckbuilding','English',0.78,'Approved',2002,'ModAnna','Normal',2,'Which archetype is strongest?','Aggro|Control|Midrange','High engagement thread');

INSERT INTO community_forum_threads (thread_uuid,forum_id,title,creator_user_id,creator_username,created_at,last_post_at,view_count,reply_count,is_sticky,is_locked,tags,category,subcategory,language,sentiment_score,moderation_status,assigned_moderator_id,assigned_moderator_name,priority_level,attachment_count,poll_question,poll_options,notes) VALUES
('UUID-THR-002',12,'Upcoming Set Speculation','1002','CardCollector','2023-06-15','2023-06-20',2100,85,1,0,'set,rumor','Meta','Sets','English',0.65,'Pending',2003,'ModLee','High',0,'What new mechanic will appear?','TimeTravel|Elemental|Hybrid','Pinned for visibility');

INSERT INTO community_forum_threads (thread_uuid,forum_id,title,creator_user_id,creator_username,created_at,last_post_at,view_count,reply_count,is_sticky,is_locked,tags,category,subcategory,language,sentiment_score,moderation_status,assigned_moderator_id,assigned_moderator_name,priority_level,attachment_count,poll_question,poll_options,notes) VALUES
('UUID-THR-003',15,'Bug Reports - March','1003','TechGuru','2023-03-01','2023-03-07',1800,45,0,0,'bug,report','Support','Bugs','English',0.42,'Under Review',2004,'ModSam','Urgent',5,'Is the crash reproducible?','Yes|No|Sometimes','Multiple screenshots attached');

-- Security checks performed at event venues
CREATE TABLE event_venue_security_checks
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id               INTEGER,
    venue_name             TEXT,
    check_date             DATE,
    security_officer_id    INTEGER,
    officer_name           TEXT,
    entry_points_checked   INTEGER,
    cameras_operational    INTEGER,
    alarm_system_status    TEXT,
    badge_scans            INTEGER,
    suspicious_incidents   INTEGER,
    incident_details       TEXT,
    corrective_actions     TEXT,
    follow_up_date         DATE,
    overall_rating         REAL,
    notes                  TEXT,
    compliance_certified   INTEGER,
    certification_body     TEXT,
    certification_expiry   DATE,
    random_audit_flag      INTEGER,
    audit_score            REAL,
    remarks                TEXT
);

INSERT INTO event_venue_security_checks (venue_id,venue_name,check_date,security_officer_id,officer_name,entry_points_checked,cameras_operational,alarm_system_status,badge_scans,suspicious_incidents,incident_details,corrective_actions,follow_up_date,overall_rating,notes,compliance_certified,certification_body,certification_expiry,random_audit_flag,audit_score,remarks) VALUES
(301,'Convention Center Hall A','2023-04-10',401,'John Mills',8,1,'Armed','1500','0','None','N/A','2023-04-20',9.2,'All good','1','SecurityStandardOrg','2025-04-10','0',92.5','No remarks');

INSERT INTO event_venue_security_checks (venue_id,venue_name,check_date,security_officer_id,officer_name,entry_points_checked,cameras_operational,alarm_system_status,badge_scans,suspicious_incidents,incident_details,corrective_actions,follow_up_date,overall_rating,notes,compliance_certified,certification_body,certification_expiry,random_audit_flag,audit_score,remarks) VALUES
(302,'Grand Arena','2023-06-05',402,'Maria Lopez',12,1,'Disarmed','3000','1','Unauthorized access attempt','Increased patrol','2023-06-15',8.5','Minor issue','1','ArenaSecure','2026-06-05','1',85.0','Follow‑up scheduled');

INSERT INTO event_venue_security_checks (venue_id,venue_name,check_date,security_officer_id,officer_name,entry_points_checked,cameras_operational,alarm_system_status,badge_scans,suspicious_incidents,incident_details,corrective_actions,follow_up_date,overall_rating,notes,compliance_certified,certification_body,certification_expiry,random_audit_flag,audit_score,remarks) VALUES
(303,'Online Streaming Hub','2023-07-20',403,'Lee Chen',4,1,'Armed','5000','0','None','N/A','2023-07-30',9.8,'Excellent','1','DigitalSecure','2024-07-20','0',97.0','No issues');

-- Sponsor product offers linked to promotional campaigns
CREATE TABLE sponsor_product_offers
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id             INTEGER,
    sponsor_name           TEXT,
    product_sku            TEXT,
    product_name           TEXT,
    description            TEXT,
    offer_start            DATE,
    offer_end              DATE,
    discount_percentage    REAL,
    max_redemptions        INTEGER,
    current_redemptions    INTEGER,
    eligibility_criteria   TEXT,
    redemption_method      TEXT,
    is_exclusive           INTEGER,
    region                 TEXT,
    target_audience        TEXT,
    marketing_channel      TEXT,
    creative_asset_url     TEXT,
    tracking_code          TEXT,
    compliance_status      TEXT,
    legal_terms            TEXT,
    created_by             TEXT,
    created_at             DATE,
    notes                  TEXT
);

INSERT INTO sponsor_product_offers (sponsor_id,sponsor_name,product_sku,product_name,description,offer_start,offer_end,discount_percentage,max_redemptions,current_redemptions,eligibility_criteria,redemption_method,is_exclusive,region,target_audience,marketing_channel,creative_asset_url,tracking_code,compliance_status,legal_terms,created_by,created_at,notes) VALUES
(601,'MagicCo','SP001','Mystic Mug','Ceramic mug with magical artwork','2023-03-01','2023-03-31',15.0,1000,200,'All players','CodeRedeem',0,'NA','Collectors','Email','https://assets.example.com/mug.png','TRACK123','Compliant','StandardTerms','Alice','2023-02-25','Limited time offer');

INSERT INTO sponsor_product_offers (sponsor_id,sponsor_name,product_sku,product_name,description,offer_start,offer_end,discount_percentage,max_redemptions,current_redemptions,eligibility_criteria,redemption_method,is_exclusive,region,target_audience,marketing_channel,creative_asset_url,tracking_code,compliance_status,legal_terms,created_by,created_at,notes) VALUES
(602,'ArcaneGear','SP002','Deck Box Pro','Premium deck storage solution','2023-06-10','2023-07-10',20.0,500,150,'Rank 5+','QRScan',1,'EU','Competitive','Social','https://assets.example.com/deckbox.png','TRACK456','Pending','SpecialTerms','Bob','2023-06-01','Exclusive for EU competitors');

INSERT INTO sponsor_product_offers (sponsor_id,sponsor_name,product_sku,product_name,description,offer_start,offer_end,discount_percentage,max_redemptions,current_redemptions,eligibility_criteria,redemption_method,is_exclusive,region,target_audience,marketing_channel,creative_asset_url,tracking_code,compliance_status,legal_terms,created_by,created_at,notes) VALUES
(603,'PixelPulse','SP003','Gaming Headset','High‑fidelity headset with surround sound','2023-09-01','2023-09-30',10.0,800,300,'All regions','OnlineClaim',0,'APAC','Casual','Banner','https://assets.example.com/headset.png','TRACK789','Compliant','StandardTerms','Carol','2023-08-20','Featured in September campaign');

-- Analytics heatmap zone definitions
CREATE TABLE analytics_heatmap_zones
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    zone_id                TEXT,
    zone_name              TEXT,
    map_name               TEXT,
    x_coordinate           REAL,
    y_coordinate           REAL,
    width                  REAL,
    height                 REAL,
    activity_weight        REAL,
    peak_time              TEXT,
    average_duration       REAL,
    related_event_code     TEXT,
    segment_category       TEXT,
    is_active              INTEGER,
    created_by             TEXT,
    created_at             DATE,
    updated_by             TEXT,
    updated_at             DATE,
    notes                  TEXT,
    heatmap_version        INTEGER,
    source_dataset         TEXT,
    confidence_score       REAL
);

INSERT INTO analytics_heatmap_zones (zone_id,zone_name,map_name,x_coordinate,y_coordinate,width,height,activity_weight,peak_time,average_duration,related_event_code,segment_category,is_active,created_by,created_at,updated_by,updated_at,notes,heatmap_version,source_dataset,confidence_score) VALUES
('HZ001','Main Lobby','HomeScreen',0.1,0.2,0.3,0.4,0.85,'18:00',12.5,'EVT001','Engagement',1,'DataTeam','2023-01-15','DataTeam','2023-01-20','High traffic area',1,'SessionLogs',0.92);

INSERT INTO analytics_heatmap_zones (zone_id,zone_name,map_name,x_coordinate,y_coordinate,width,height,activity_weight,peak_time,average_duration,related_event_code,segment_category,is_active,created_by,created_at,updated_by,updated_at,notes,heatmap_version,source_dataset,confidence_score) VALUES
('HZ002','Shop Button','MainMenu',0.5,0.6,0.1,0.1,0.65,'20:00',8.3,'EVT002','Conversion',1,'Analytics','2023-02-10','Analytics','2023-02-12','Boosted during promo',1,'ClickStream',0.88);

INSERT INTO analytics_heatmap_zones (zone_id,zone_name,map_name,x_coordinate,y_coordinate,width,height,activity_weight,peak_time,average_duration,related_event_code,segment_category,is_active,created_by,created_at,updated_by,updated_at,notes,heatmap_version,source_dataset,confidence_score) VALUES
('HZ003','Leaderboard Tab','ProfileScreen',0.8,0.2,0.15,0.15,0.70,'21:30',10.0,'EVT003','Retention',0,'DataOps','2023-03-05','DataOps','2023-03-07','Low usage, consider redesign',2,'UserFlows',0.81);

-- Change log for game mechanics
CREATE TABLE game_mechanics_change_log
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    change_id              TEXT,
    mechanic_name          TEXT,
    description            TEXT,
    change_type            TEXT,
    effective_date         DATE,
    deprecated_date        DATE,
    introduced_by          TEXT,
    version_introduced     TEXT,
    version_removed        TEXT,
    impact_score           REAL,
    community_feedback_score REAL,
    related_cards          TEXT,
    documentation_url      TEXT,
    is_critical            INTEGER,
    rollback_possible      INTEGER,
    rollback_version       TEXT,
    notes                  TEXT,
    reviewed_by            TEXT,
    review_date            DATE,
    approval_status        TEXT,
    change_category        TEXT,
    priority_level         TEXT
);

INSERT INTO game_mechanics_change_log (change_id,mechanic_name,description,change_type,effective_date,deprecated_date,introduced_by,version_introduced,version_removed,impact_score,community_feedback_score,related_cards,documentation_url,is_critical,rollback_possible,rollback_version,notes,reviewed_by,review_date,approval_status,change_category,priority_level) VALUES
('CHG001','Storm','Cards copy spells you cast','Add','2023-04-01',NULL,'DesignLead','8.2','',8.5,4.2,'CardA|CardB','https://docs.example.com/storm','1','1','8.1','Monitored for balance','LeadDesigner','2023-03-20','Approved','Core','High');

INSERT INTO game_mechanics_change_log (change_id,mechanic_name,description,change_type,effective_date,deprecated_date,introduced_by,version_introduced,version_removed,impact_score,community_feedback_score,related_cards,documentation_url,is_critical,rollback_possible,rollback_version,notes,reviewed_by,review_date,approval_status,change_category,priority_level) VALUES
('CHG002','Decay','Creatures lose toughness each turn','Modify','2023-07-15','2024-01-01','BalanceTeam','9.0','9.2',6.0,3.8,'CardC|CardD','https://docs.example.com/decay','0','1','8.9','Planned removal after season','SeniorPM','2023-07-01','Pending','Balance','Medium');

INSERT INTO game_mechanics_change_log (change_id,mechanic_name,description,change_type,effective_date,deprecated_date,introduced_by,version_introduced,version_removed,impact_score,community_feedback_score,related_cards,documentation_url,is_critical,rollback_possible,rollback_version,notes,reviewed_by,review_date,approval_status,change_category,priority_level) VALUES
('CHG003','Echo','Spells can be copied from graveyard','Add','2023-10-05',NULL,'R&D','9.3','',7.2,4.5,'CardE|CardF','https://docs.example.com/echo','0','0','', 'Initial rollout','ProductOwner','2023-09-20','Approved','Expansion','Low');

-- Player feedback survey records
CREATE TABLE player_feedback_surveys
(
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    survey_id              TEXT,
    player_id              INTEGER,
    player_username        TEXT,
    survey_date            DATE,
    overall_satisfaction   INTEGER,
    gameplay_rating        INTEGER,
    UI_rating              INTEGER,
    community_rating       INTEGER,
    client_stability_rating INTEGER,
    feature_requests       TEXT,
    bugs_reported          TEXT,
    net_promoter_score    INTEGER,
    recommend_to_friend    INTEGER,
    comments               TEXT,
    follow_up_required     INTEGER,
    follow_up_assignee     TEXT,
    follow_up_due          DATE,
    survey_version         TEXT,
    device_type            TEXT,
    os_version             TEXT,
    app_version            TEXT,
    region                 TEXT,
    notes                  TEXT
);

INSERT INTO player_feedback_surveys (survey_id,player_id,player_username,survey_date,overall_satisfaction,gameplay_rating,UI_rating,community_rating,client_stability_rating,feature_requests,bugs_reported,net_promoter_score,recommend_to_friend,comments,follow_up_required,follow_up_assignee,follow_up_due,survey_version,device_type,os_version,app_version,region,notes) VALUES
('SURV001',1001,'PlayerOne','2023-05-20',8,9,7,8,9,'Add new arena mode','Crash on login screen',9,1,'Great experience overall',0,'',NULL,'v1.2','Mobile','Android12','3.4.1','NA','');

INSERT INTO player_feedback_surveys (survey_id,player_id,player_username,survey_date,overall_satisfaction,gameplay_rating,UI_rating,community_rating,client_stability_rating,feature_requests,bugs_reported,net_promoter_score,recommend_to_friend,comments,follow_up_required,follow_up_assignee,follow_up_due,survey_version,device_type,os_version,app_version,region,notes) VALUES
('SURV002',1002,'PlayerTwo','2023-06-10',6,5,6,5,7,'Improve matchmaking','Lag during tournaments',5,0,'Needs better balance',1,'SupportTeam','2023-06-15','v1.3','PC','Windows10','3.5.0','EU','Escalated to dev');

INSERT INTO player_feedback_surveys (survey_id,player_id,player_username,survey_date,overall_satisfaction,gameplay_rating,UI_rating,community_rating,client_stability_rating,feature_requests,bugs_reported,net_promoter_score,recommend_to_friend,comments,follow_up_required,follow_up_assignee,follow_up_due,survey_version,device_type,os_version,app_version,region,notes) VALUES
('SURV003',1003,'PlayerThree','2023-07-01',9,9,9,9,9,'Add more cosmetic options','No major bugs',10,1,'Loving the new updates',0,'',NULL,'v1.4','Console','PS5','4.0.0','APAC','');