-- Supplier quality audits
CREATE TABLE supplier_quality_audits (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    supplier_id INTEGER,
    audit_date DATE,
    auditor_name TEXT,
    overall_score REAL,
    score_material_quality REAL,
    score_delivery_timeliness REAL,
    score_compliance REAL,
    notes TEXT,
    corrective_action_required INTEGER,
    corrective_action_due DATE,
    followup_date DATE,
    audit_type TEXT,
    region TEXT,
    audit_version TEXT,
    document_ref TEXT,
    rating_category TEXT,
    risk_level TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO supplier_quality_audits (supplier_id,audit_date,auditor_name,overall_score,score_material_quality,score_delivery_timeliness,score_compliance,notes,corrective_action_required,corrective_action_due,followup_date,audit_type,region,audit_version,document_ref,rating_category,risk_level,created_at,updated_at) VALUES (101,'2023-05-10','John Doe',85.5,90.0,80.0,85.0,'All good',0,'2023-06-01','2023-06-15','Routine','Europe','v1','DOC001','A','Low','2023-05-10 08:00:00','2023-05-10 08:00:00');
INSERT INTO supplier_quality_audits (supplier_id,audit_date,auditor_name,overall_score,score_material_quality,score_delivery_timeliness,score_compliance,notes,corrective_action_required,corrective_action_due,followup_date,audit_type,region,audit_version,document_ref,rating_category,risk_level,created_at,updated_at) VALUES (202,'2023-07-22','Jane Smith',73.2,70.0,75.0,78.0,'Minor issues',1,'2023-08-15','2023-08-30','Compliance','Asia','v2','DOC045','B','Medium','2023-07-22 09:30:00','2023-07-22 09:30:00');
INSERT INTO supplier_quality_audits (supplier_id,audit_date,auditor_name,overall_score,score_material_quality,score_delivery_timeliness,score_compliance,notes,corrective_action_required,corrective_action_due,followup_date,audit_type,region,audit_version,document_ref,rating_category,risk_level,created_at,updated_at) VALUES (303,'2023-09-05','Mike Lee',92.0,95.0,90.0,93.0,'Excellent performance',0,'2023-09-20','2023-09-25','Annual','NorthAmerica','v1','DOC099','A','Low','2023-09-05 11:15:00','2023-09-05 11:15:00');

-- Environmental impact reports
CREATE TABLE environmental_impact_reports (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    report_year INTEGER,
    region TEXT,
    co2_emissions_tonnes REAL,
    water_usage_cubic_meters REAL,
    waste_generated_tonnes REAL,
    recycling_rate_percent REAL,
    renewable_energy_percent REAL,
    report_url TEXT,
    verified_by TEXT,
    verification_date DATE,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    report_status TEXT,
    auditor_company TEXT,
    methodology TEXT,
    scope TEXT,
    baseline_year INTEGER,
    improvement_plan_url TEXT
);

INSERT INTO environmental_impact_reports (report_year,region,co2_emissions_tonnes,water_usage_cubic_meters,waste_generated_tonnes,recycling_rate_percent,renewable_energy_percent,report_url,verified_by,verification_date,notes,created_at,updated_at,report_status,auditor_company,methodology,scope,baseline_year,improvement_plan_url) VALUES (2022,'Europe',1245.6,53200.0,78.3,45.0,30.5,'http://example.com/report2022','EcoAudit','2022-12-15','Annual report','2022-12-01 08:00:00','2022-12-01 08:00:00','Approved','GreenChecks','ISO14001','Corporate',2020,'http://example.com/improvement2022');
INSERT INTO environmental_impact_reports (report_year,region,co2_emissions_tonnes,water_usage_cubic_meters,waste_generated_tonnes,recycling_rate_percent,renewable_energy_percent,report_url,verified_by,verification_date,notes,created_at,updated_at,report_status,auditor_company,methodology,scope,baseline_year,improvement_plan_url) VALUES (2023,'Asia',2150.0,76400.0,102.5,38.0,25.0,'http://example.com/report2023','SustainCheck','2023-11-20','Preliminary data','2023-11-01 09:30:00','2023-11-01 09:30:00','Pending','EcoInspect','ISO14064','Plant',2021,'http://example.com/improvement2023');
INSERT INTO environmental_impact_reports (report_year,region,co2_emissions_tonnes,water_usage_cubic_meters,waste_generated_tonnes,recycling_rate_percent,renewable_energy_percent,report_url,verified_by,verification_date,notes,created_at,updated_at,report_status,auditor_company,methodology,scope,baseline_year,improvement_plan_url) VALUES (2021,'NorthAmerica',890.2,31000.0,55.0,52.0,40.0,'http://example.com/report2021','EnviroAudit','2021-12-10','Finalized','2021-12-01 07:45:00','2021-12-01 07:45:00','Approved','GreenMetrics','ISO14001','Corporate',2019,'http://example.com/improvement2021');

-- Player coaching sessions
CREATE TABLE player_coaching_sessions (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    coach_id INTEGER,
    session_date DATE,
    session_type TEXT,
    duration_minutes INTEGER,
    focus_area TEXT,
    feedback_score INTEGER,
    comments TEXT,
    video_url TEXT,
    next_session_plan TEXT,
    session_outcome TEXT,
    rating INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    session_location TEXT,
    is_virtual INTEGER,
    virtual_platform TEXT,
    followup_actions TEXT,
    coach_notes TEXT
);

INSERT INTO player_coaching_sessions (player_id,coach_id,session_date,session_type,duration_minutes,focus_area,feedback_score,comments,video_url,next_session_plan,session_outcome,rating,created_at,updated_at,session_location,is_virtual,virtual_platform,followup_actions,coach_notes) VALUES (1001,501,'2023-08-01','Strategy','60','Deckbuilding',8,'Good progress','http://example.com/video1','Focus on mana curve','Improved','9','2023-08-01 10:00:00','2023-08-01 10:00:00','Online',1,'Zoom','Review decklist','Player shows strong analytical skills');
INSERT INTO player_coaching_sessions (player_id,coach_id,session_date,session_type,duration_minutes,focus_area,feedback_score,comments,video_url,next_session_plan,session_outcome,rating,created_at,updated_at,session_location,is_virtual,virtual_platform,followup_actions,coach_notes) VALUES (1002,502,'2023-08-05','Mechanical','45','Combat tactics',7,'Needs more practice','http://example.com/video2','Drill combat scenarios','Neutral','7','2023-08-05 14:30:00','2023-08-05 14:30:00','GamingRoomA',0,NULL,'Schedule follow-up','Encourage studying opponent patterns');
INSERT INTO player_coaching_sessions (player_id,coach_id,session_date,session_type,duration_minutes,focus_area,feedback_score,comments,video_url,next_session_plan,session_outcome,rating,created_at,updated_at,session_location,is_virtual,virtual_platform,followup_actions,coach_notes) VALUES (1003,503,'2023-08-10','Mindset','30','Focus and stress',9,'Excellent attitude','http://example.com/video3','Maintain routine','Positive','10','2023-08-10 09:15:00','2023-08-10 09:15:00','Online',1,'Teams','Monitor performance','Player is highly motivated');

-- Virtual event feedback
CREATE TABLE virtual_event_feedback (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    participant_id INTEGER,
    feedback_date DATE,
    overall_rating INTEGER,
    content_quality INTEGER,
    speaker_quality INTEGER,
    platform_usability INTEGER,
    networking_score INTEGER,
    comments TEXT,
    suggested_improvements TEXT,
    submitted_via TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    feedback_source TEXT,
    session_id INTEGER,
    rating_scale TEXT
);

INSERT INTO virtual_event_feedback (event_id,participant_id,feedback_date,overall_rating,content_quality,speaker_quality,platform_usability,networking_score,comments,suggested_improvements,submitted_via,created_at,updated_at,feedback_source,session_id,rating_scale) VALUES (2001,3001,'2023-07-20',8,9,8,7,6,'Very engaging','Add more breakout rooms','Web','2023-07-20 12:00:00','2023-07-20 12:00:00','PostEventSurvey',101,'1-10');
INSERT INTO virtual_event_feedback (event_id,participant_id,feedback_date,overall_rating,content_quality,speaker_quality,platform_usability,networking_score,comments,suggested_improvements,submitted_via,created_at,updated_at,feedback_source,session_id,rating_scale) VALUES (2002,3002,'2023-07-22',7,8,7,6,5,'Good content','Improve audio quality','App','2023-07-22 15:30:00','2023-07-22 15:30:00','LivePoll',102,'1-10');
INSERT INTO virtual_event_feedback (event_id,participant_id,feedback_date,overall_rating,content_quality,speaker_quality,platform_usability,networking_score,comments,suggested_improvements,submitted_via,created_at,updated_at,feedback_source,session_id,rating_scale) VALUES (2003,3003,'2023-07-25',9,9,9,8,8,'Excellent overall','None needed','Email','2023-07-25 09:45:00','2023-07-25 09:45:00','FollowUpSurvey',103,'1-10');

-- Artwork distribution channels
CREATE TABLE artwork_distribution_channels (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    artwork_id INTEGER,
    channel_name TEXT,
    distribution_start DATE,
    distribution_end DATE,
    royalty_rate_percent REAL,
    contract_id INTEGER,
    region TEXT,
    platform_url TEXT,
    audience_size_estimate INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    active INTEGER,
    channel_type TEXT,
    exclusivity_flag INTEGER,
    cost_per_view REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversion_rate_percent REAL,
    last_audit_date DATE
);

INSERT INTO artwork_distribution_channels (artwork_id,channel_name,distribution_start,distribution_end,royalty_rate_percent,contract_id,region,platform_url,audience_size_estimate,notes,created_at,updated_at,active,channel_type,exclusivity_flag,cost_per_view,impressions,clicks,conversion_rate_percent,last_audit_date) VALUES (4001,'OfficialStore','2023-01-01','2023-12-31',12.5,9001,'Global','http://store.example.com','150000','Primary sales channel','2023-01-01 08:00:00','2023-01-01 08:00:00',1,'Retail',0,0.02,200000,5000,2.5,'2023-06-30');
INSERT INTO artwork_distribution_channels (artwork_id,channel_name,distribution_start,distribution_end,royalty_rate_percent,contract_id,region,platform_url,audience_size_estimate,notes,created_at,updated_at,active,channel_type,exclusivity_flag,cost_per_view,impressions,clicks,conversion_rate_percent,last_audit_date) VALUES (4002,'ThirdPartyMarket','2023-03-15','2023-11-15',8.0,9002,'Europe','http://market.example.eu','80000','Limited region','2023-03-15 09:30:00','2023-03-15 09:30:00',1,'Marketplace',1,0.015,120000,3000,2.5,'2023-08-01');
INSERT INTO artwork_distribution_channels (artwork_id,channel_name,distribution_start,distribution_end,royalty_rate_percent,contract_id,region,platform_url,audience_size_estimate,notes,created_at,updated_at,active,channel_type,exclusivity_flag,cost_per_view,impressions,clicks,conversion_rate_percent,last_audit_date) VALUES (4003,'SocialMediaBoost','2023-05-01','2023-09-30',5.0,9003,'Asia','http://social.example.com','500000','Promotional campaign','2023-05-01 10:15:00','2023-05-01 10:15:00',1,'Social',0,0.01,500000,10000,2.0,'2023-07-15');

-- Digital content access logs
CREATE TABLE digital_content_access_logs (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    content_id INTEGER,
    access_timestamp DATETIME,
    device_type TEXT,
    ip_address TEXT,
    location_country TEXT,
    session_id TEXT,
    playback_duration_seconds INTEGER,
    total_duration_seconds INTEGER,
    bitrate_kbps INTEGER,
    resolution TEXT,
    is_successful INTEGER,
    error_code TEXT,
    referrer_url TEXT,
    subscription_level TEXT,
    content_type TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    access_method TEXT
);

INSERT INTO digital_content_access_logs (user_id,content_id,access_timestamp,device_type,ip_address,location_country,session_id,playback_duration_seconds,total_duration_seconds,bitrate_kbps,resolution,is_successful,error_code,referrer_url,subscription_level,content_type,created_at,updated_at,access_method) VALUES (5010,7001,'2023-08-12 14:20:00','Desktop','192.168.1.10','US','sessA1',300,600,2500,'1080p',1,NULL,'http://ref.example.com','Premium','Video','2023-08-12 14:20:00','2023-08-12 14:20:00','Streaming');
INSERT INTO digital_content_access_logs (user_id,content_id,access_timestamp,device_type,ip_address,location_country,session_id,playback_duration_seconds,total_duration_seconds,bitrate_kbps,resolution,is_successful,error_code,referrer_url,subscription_level,content_type,created_at,updated_at,access_method) VALUES (5020,7002,'2023-08-13 09:45:00','Mobile','10.0.0.5','CA','sessB2',120,300,1500,'720p',1,NULL,'http://ref.example.org','Free','Audio','2023-08-13 09:45:00','2023-08-13 09:45:00','Streaming');
INSERT INTO digital_content_access_logs (user_id,content_id,access_timestamp,device_type,ip_address,location_country,session_id,playback_duration_seconds,total_duration_seconds,bitrate_kbps,resolution,is_successful,error_code,referrer_url,subscription_level,content_type,created_at,updated_at,access_method) VALUES (5030,7003,'2023-08-14 20:05:00','Tablet','172.16.0.2','GB','sessC3',0,0,0,'0p',0,'ERR_TIMEOUT','http://ref.example.net','Free','Video','2023-08-14 20:05:00','2023-08-14 20:05:00','Streaming');

-- Tournament seating arrangements
CREATE TABLE tournament_seating_arrangements (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    venue_id INTEGER,
    section_name TEXT,
    row_number INTEGER,
    seat_start INTEGER,
    seat_end INTEGER,
    seat_type TEXT,
    accessibility_flag INTEGER,
    reserved_for TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    arrangement_version INTEGER,
    notes TEXT,
    capacity INTEGER,
    floor_plan_url TEXT,
    last_updated_by TEXT,
    is_active INTEGER,
    special_requirements TEXT
);

INSERT INTO tournament_seating_arrangements (tournament_id,venue_id,section_name,row_number,seat_start,seat_end,seat_type,accessibility_flag,reserved_for,created_at,updated_at,arrangement_version,notes,capacity,floor_plan_url,last_updated_by,is_active,special_requirements) VALUES (9001,110,'Alpha',5,1,20,'Standard',0,'VIP Guests','2023-07-01 09:00:00','2023-07-01 09:00:00',1,'First row near stage',20,'http://plan.example.com/alpha','admin',1,'None');
INSERT INTO tournament_seating_arrangements (tournament_id,venue_id,section_name,row_number,seat_start,seat_end,seat_type,accessibility_flag,reserved_for,created_at,updated_at,arrangement_version,notes,capacity,floor_plan_url,last_updated_by,is_active,special_requirements) VALUES (9002,111,'Beta',12,21,40,'Premium',1,'Media','2023-07-05 10:30:00','2023-07-05 10:30:00',1,'Reserved for press','20','http://plan.example.com/beta','scheduler',1,'Wheelchair access');
INSERT INTO tournament_seating_arrangements (tournament_id,venue_id,section_name,row_number,seat_start,seat_end,seat_type,accessibility_flag,reserved_for,created_at,updated_at,arrangement_version,notes,capacity,floor_plan_url,last_updated_by,is_active,special_requirements) VALUES (9003,112,'Gamma',20,41,60,'Standard',0,NULL,'2023-07-10 11:15:00','2023-07-10 11:15:00',1,'General admission','20','http://plan.example.com/gamma','ops',1,'None');

-- Merchandise pricing tiers
CREATE TABLE merchandise_pricing_tiers (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    merchandise_id INTEGER,
    tier_name TEXT,
    min_quantity INTEGER,
    max_quantity INTEGER,
    price_per_unit REAL,
    discount_percent REAL,
    currency TEXT,
    valid_from DATE,
    valid_to DATE,
    created_at DATETIME,
    updated_at DATETIME,
    price_source TEXT,
    region TEXT,
    is_active INTEGER,
    notes TEXT,
    tier_rank INTEGER,
    bulk_price REAL,
    promotional_flag INTEGER,
    last_modified_by TEXT,
    price_adjustment_reason TEXT
);

INSERT INTO merchandise_pricing_tiers (merchandise_id,tier_name,min_quantity,max_quantity,price_per_unit,discount_percent,currency,valid_from,valid_to,created_at,updated_at,price_source,region,is_active,notes,tier_rank,bulk_price,promotional_flag,last_modified_by,price_adjustment_reason) VALUES (1501,'Standard',1,9,19.99,0,'USD','2023-01-01','2023-12-31','2023-01-01 08:00:00','2023-01-01 08:00:00','Manual','Global',1,'Base price',1,0,0,'system','Initial launch');
INSERT INTO merchandise_pricing_tiers (merchandise_id,tier_name,min_quantity,max_quantity,price_per_unit,discount_percent,currency,valid_from,valid_to,created_at,updated_at,price_source,region,is_active,notes,tier_rank,bulk_price,promotional_flag,last_modified_by,price_adjustment_reason) VALUES (1501,'Bulk',10,49,17.99,10,'USD','2023-01-01','2023-12-31','2023-01-01 08:00:00','2023-01-01 08:00:00','Manual','Global',1,'10% discount for bulk',2,15.99,0,'system','Bulk discount');
INSERT INTO merchandise_pricing_tiers (merchandise_id,tier_name,min_quantity,max_quantity,price_per_unit,discount_percent,currency,valid_from,valid_to,created_at,updated_at,price_source,region,is_active,notes,tier_rank,bulk_price,promotional_flag,last_modified_by,price_adjustment_reason) VALUES (1501,'Promo',1,5,14.99,25,'USD','2023-11-01','2023-11-30','2023-11-01 09:00:00','2023-11-01 09:00:00','Automatic','Global',1,'Holiday promo',3,0,1,'marketing','Seasonal promotion');

-- Streaming ad target audiences
CREATE TABLE streaming_ad_target_audiences (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    ad_campaign_id INTEGER,
    demographic_group TEXT,
    age_range TEXT,
    gender TEXT,
    region TEXT,
    interests TEXT,
    average_cpm REAL,
    budget_allocated REAL,
    start_date DATE,
    end_date DATE,
    created_at DATETIME,
    updated_at DATETIME,
    audience_size_estimate INTEGER,
    targeting_method TEXT,
    frequency_cap INTEGER,
    viewability_rate_percent REAL,
    click_through_rate_percent REAL,
    conversion_rate_percent REAL,
    is_active INTEGER
);

INSERT INTO streaming_ad_target_audiences (ad_campaign_id,demographic_group,age_range,gender,region,interests,average_cpm,budget_allocated,start_date,end_date,created_at,updated_at,audience_size_estimate,targeting_method,frequency_cap,viewability_rate_percent,click_through_rate_percent,conversion_rate_percent,is_active) VALUES (3001,'Collectors','25-34','Any','NorthAmerica','Trading Card Games',12.5,50000,'2023-09-01','2023-09-30','2023-08-15 10:00:00','2023-08-15 10:00:00',200000,'Behavioral',3,85.0,2.5,0.8,1);
INSERT INTO streaming_ad_target_audiences (ad_campaign_id,demographic_group,age_range,gender,region,interests,average_cpm,budget_allocated,start_date,end_date,created_at,updated_at,audience_size_estimate,targeting_method,frequency_cap,viewability_rate_percent,click_through_rate_percent,conversion_rate_percent,is_active) VALUES (3002,'CasualPlayers','18-24','Female','Europe','Online Gaming',9.8,30000,'2023-10-05','2023-10-20','2023-09-20 11:30:00','2023-09-20 11:30:00',150000,'Contextual',2,78.0,1.8,0.5,1);
INSERT INTO streaming_ad_target_audiences (ad_campaign_id,demographic_group,age_range,gender,region,interests,average_cpm,budget_allocated,start_date,end_date,created_at,updated_at,audience_size_estimate,targeting_method,frequency_cap,viewability_rate_percent,click_through_rate_percent,conversion_rate_percent,is_active) VALUES (3003,'Hardcore','35-44','Male','Asia','Competitive Tournaments',15.0,75000,'2023-11-01','2023-11-15','2023-10-10 09:45:00','2023-10-10 09:45:00',250000,'InterestBased',4,90.0,3.2,1.2,1);

-- Card print logistics
CREATE TABLE card_print_logistics (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT,
    print_batch_id INTEGER,
    printer_id INTEGER,
    print_date DATE,
    quantity_printed INTEGER,
    ink_type TEXT,
    paper_stock TEXT,
    print_quality_score REAL,
    defect_rate_percent REAL,
    packaging_type TEXT,
    pallet_id INTEGER,
    shipping_method TEXT,
    estimated_ship_date DATE,
    actual_ship_date DATE,
    created_at DATETIME,
    updated_at DATETIME,
    logistics_provider TEXT,
    warehouse_location TEXT,
    customs_status TEXT,
    notes TEXT
);

INSERT INTO card_print_logistics (card_uuid,print_batch_id,printer_id,print_date,quantity_printed,ink_type,paper_stock,print_quality_score,defect_rate_percent,packaging_type,pallet_id,shipping_method,estimated_ship_date,actual_ship_date,created_at,updated_at,logistics_provider,warehouse_location,customs_status,notes) VALUES ('uuid-abc-123',70001,10,'2023-06-15',5000,'UV','Glossy',98.5,0.2,'Box',3001,'Air','2023-06-20','2023-06-19','2023-06-15 07:00:00','2023-06-15 07:00:00','FastShip','WH-A1','Cleared','First batch of summer set');
INSERT INTO card_print_logistics (card_uuid,print_batch_id,printer_id,print_date,quantity_printed,ink_type,paper_stock,print_quality_score,defect_rate_percent,packaging_type,pallet_id,shipping_method,estimated_ship_date,actual_ship_date,created_at,updated_at,logistics_provider,warehouse_location,customs_status,notes) VALUES ('uuid-def-456',70002,12,'2023-07-01',3000,'WaterBased','Matte',96.0,0.5,'Envelope',3002,'Sea','2023-07-05','2023-07-06','2023-07-01 08:30:00','2023-07-01 08:30:00','SeaLogistics','WH-B2','Pending','Special edition print run');
INSERT INTO card_print_logistics (card_uuid,print_batch_id,printer_id,print_date,quantity_printed,ink_type,paper_stock,print_quality_score,defect_rate_percent,packaging_type,pallet_id,shipping_method,estimated_ship_date,actual_ship_date,created_at,updated_at,logistics_provider,warehouse_location,customs_status,notes) VALUES ('uuid-ghi-789',70003,11,'2023-08-10',4500,'UV','Glossy',97.8,0.3,'Box',3003,'Air','2023-08-15','2023-08-14','2023-08-10 06:45:00','2023-08-10 06:45:00','FastShip','WH-A1','Cleared','Mid‑season reprint batch');