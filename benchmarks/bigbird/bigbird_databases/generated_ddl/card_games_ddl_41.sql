-- Gameplay heatmap showing player activity per region and time slot
CREATE TABLE gameplay_heatmap (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    region_code TEXT,
    time_slot TEXT,
    player_count INTEGER,
    average_session_length REAL,
    peak_concurrency INTEGER,
    game_mode TEXT,
    platform TEXT,
    device_type TEXT,
    network_type TEXT,
    latency_ms INTEGER,
    packet_loss_percent REAL,
    cpu_usage_percent REAL,
    gpu_usage_percent REAL,
    memory_usage_mb INTEGER,
    temperature_celsius REAL,
    error_rate_percent REAL,
    crash_count INTEGER,
    maintenance_flag INTEGER,
    version_major INTEGER,
    version_minor INTEGER,
    build_number INTEGER,
    report_date DATE
);
INSERT INTO gameplay_heatmap (region_code,time_slot,player_count,average_session_length,peak_concurrency,game_mode,platform,device_type,network_type,latency_ms,packet_loss_percent,cpu_usage_percent,gpu_usage_percent,memory_usage_mb,temperature_celsius,error_rate_percent,crash_count,maintenance_flag,version_major,version_minor,build_number,report_date) VALUES ('NA','08-10',1200,45.6,300,'Ranked','PC','Desktop','Fiber',35,0.02,70.5,65.3,2048,55.2,0.1,2,0,1,0,1023,'2025-12-01');
INSERT INTO gameplay_heatmap VALUES (2,'EU','18-20',950,38.2,250,'Casual','Console','Console','WiFi',45,0.05,68.1,60.0,1800,52.3,0.15,1,0,1,1,1015,'2025-12-01');
INSERT INTO gameplay_heatmap VALUES (3,'ASIA','20-22',800,30.0,200,'Arcade','Mobile','Cellular',80,0.10,55.0,40.0,1500,45.0,0.25,3,1,1,2,1018,'2025-12-01');

-- Virtual currency wallets for players
CREATE TABLE virtual_currency_wallets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_uuid TEXT,
    wallet_id TEXT,
    currency_type TEXT,
    balance REAL,
    last_transaction_id TEXT,
    last_transaction_date DATE,
    created_at DATE,
    updated_at DATE,
    is_active INTEGER,
    tier_level INTEGER,
    bonus_multiplier REAL,
    total_earned REAL,
    total_spent REAL,
    transaction_count INTEGER,
    average_transaction_value REAL,
    max_transaction_value REAL,
    min_transaction_value REAL,
    reward_points INTEGER,
    fraud_flag INTEGER,
    external_provider TEXT,
    notes TEXT
);
INSERT INTO virtual_currency_wallets (player_uuid,wallet_id,currency_type,balance,last_transaction_id,last_transaction_date,created_at,updated_at,is_active,tier_level,bonus_multiplier,total_earned,total_spent,transaction_count,average_transaction_value,max_transaction_value,min_transaction_value,reward_points,fraud_flag,external_provider,notes) VALUES ('uuid123','walletA','Gold',1500.75,'tx1001','2025-11-30','2025-01-01','2025-11-30',1,3,1.2,5000.00,3500.25,45,77.78,200.00,5,1200,0,'ProviderX','First wallet');
INSERT INTO virtual_currency_wallets VALUES (2,'uuid456','walletB','Silver',750.50,'tx1002','2025-11-29','2025-02-15','2025-11-29',1,2,1.1,3000.00,2100.40,30,70.01,150.00,10,800,0,'ProviderY','Second wallet');
INSERT INTO virtual_currency_wallets VALUES (3,'uuid789','walletC','Bronze',300.00,'tx1003','2025-11-28','2025-03-20','2025-11-28',0,1,1.0,1200.00,900.00,15,80.00,100.00,20,400,1,'ProviderZ','Inactive wallet');

-- Event vendor performance metrics
CREATE TABLE event_vendor_performance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id TEXT,
    vendor_id TEXT,
    service_type TEXT,
    contract_value REAL,
    rating_score REAL,
    feedback_comments TEXT,
    compliance_passed INTEGER,
    incidents_reported INTEGER,
    total_hours INTEGER,
    staff_count INTEGER,
    equipment_provided TEXT,
    setup_time_minutes INTEGER,
    teardown_time_minutes INTEGER,
    last_inspection_date DATE,
    contact_email TEXT,
    contact_phone TEXT,
    payment_status TEXT,
    invoice_number TEXT,
    warranty_expiration DATE,
    insurance_policy TEXT,
    notes TEXT
);
INSERT INTO event_vendor_performance (event_id,vendor_id,service_type,contract_value,rating_score,feedback_comments,compliance_passed,incidents_reported,total_hours,staff_count,equipment_provided,setup_time_minutes,teardown_time_minutes,last_inspection_date,contact_email,contact_phone,payment_status,invoice_number,warranty_expiration,insurance_policy,notes) VALUES ('EVT001','VEND01','Catering',5000.00,4.5,'Excellent service',1,0,48,10,'Tables,Chairs,Meals',120,90,'2025-10-15','catering@example.com','5551234','Paid','INV001','2026-10-15','PolicyA','No issues');
INSERT INTO event_vendor_performance VALUES (2,'EVT002','VEND02','Security',3000.00,4.0,'Good response time',1,1,36,8,'Monitors,WalkieTalkies',90,60,'2025-09-20','security@example.com','5555678','Pending','INV002','2026-09-20','PolicyB','One minor incident');
INSERT INTO event_vendor_performance VALUES (3,'EVT003','VEND03','AudioVisual',7200.00,4.8,'Great quality',1,0,60,12,'Speakers,Projectors,Stages',150,100,'2025-11-05','av@example.com','5559012','Paid','INV003','2027-11-05','PolicyC','All equipment functional');

-- Community badge definitions
CREATE TABLE community_badge_definitions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    badge_code TEXT,
    name TEXT,
    description TEXT,
    criteria TEXT,
    icon_path TEXT,
    tier INTEGER,
    points INTEGER,
    issued_by TEXT,
    valid_from DATE,
    valid_to DATE,
    max_awards INTEGER,
    rarity TEXT,
    category TEXT,
    display_order INTEGER,
    requires_approval INTEGER,
    auto_grant INTEGER,
    version TEXT,
    created_at DATE,
    updated_at DATE,
    deprecated_flag INTEGER,
    notes TEXT
);
INSERT INTO community_badge_definitions (badge_code,name,description,criteria,icon_path,tier,points,issued_by,valid_from,valid_to,max_awards,rarity,category,display_order,requires_approval,auto_grant,version,created_at,updated_at,deprecated_flag,notes) VALUES ('BDG001','First Win','Awarded for first match win','WinOneMatch','/icons/firstwin.png',1,10,'CommunityTeam','2025-01-01','2025-12-31',1000,'Common','Performance',1,0,1,'v1','2025-01-01','2025-01-01',0,'Initial badge');
INSERT INTO community_badge_definitions VALUES (2,'BDG002','Marathon Player','Played 100 matches','Play100','/icons/marathon.png',2,20,'CommunityTeam','2025-01-01','2026-01-01',500,'Uncommon','Engagement',2,0,1,'v1','2025-01-01','2025-01-01',0,'');
INSERT INTO community_badge_definitions VALUES (3,'BDG003','Elite Strategist','Achieved 5 top-8 finishes','Top8x5','/icons/elite.png',3,50,'CommunityTeam','2025-06-01','2027-06-01',200,'Rare','Performance',3,1,0,'v2','2025-06-01','2025-06-01',0,'Requires admin approval');

-- Streaming quality reports
CREATE TABLE streaming_quality_reports (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stream_id TEXT,
    platform TEXT,
    resolution TEXT,
    bitrate_kbps INTEGER,
    framerate_fps INTEGER,
    buffer_events INTEGER,
    avg_buffer_seconds REAL,
    dropped_frames INTEGER,
    start_time DATE,
    end_time DATE,
    viewer_count INTEGER,
    region TEXT,
    codec TEXT,
    audio_channels INTEGER,
    audio_bitrate_kbps INTEGER,
    latency_ms INTEGER,
    error_codes TEXT,
    quality_score REAL,
    moderator_flag INTEGER,
    report_generated_at DATE,
    notes TEXT
);
INSERT INTO streaming_quality_reports (stream_id,platform,resolution,bitrate_kbps,framerate_fps,buffer_events,avg_buffer_seconds,dropped_frames,start_time,end_time,viewer_count,region,codec,audio_channels,audio_bitrate_kbps,latency_ms,error_codes,quality_score,moderator_flag,report_generated_at,notes) VALUES ('STRM001','Twitch','1080p',4500,60,5,2.3,120,'2025-11-20','2025-11-20',2500,'NA','H264',2,160,80,'ERR001',8.5,0,'2025-11-20','Stable stream');
INSERT INTO streaming_quality_reports VALUES (2,'STRM002','YouTube','720p',2500,30,8,3.1,200,'2025-11-21','2025-11-21',1800,'EU','VP9',2,128,120,'ERR002,ERR003',7.2,1,'2025-11-21','Minor buffering');
INSERT INTO streaming_quality_reports VALUES (3,'STRM003','Facebook','480p',1500,24,12,4.0,350,'2025-11-22','2025-11-22',900,'ASIA','H264',2,96,200,'ERR004',6.0,0,'2025-11-22','High latency observed');

-- Environmental compliance documents
CREATE TABLE environmental_compliance_documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    document_type TEXT,
    version TEXT,
    effective_date DATE,
    expiration_date DATE,
    regulator TEXT,
    compliance_status TEXT,
    audit_score REAL,
    findings_summary TEXT,
    corrective_action_due DATE,
    responsible_party TEXT,
    location TEXT,
    file_path TEXT,
    file_hash TEXT,
    uploaded_by TEXT,
    upload_date DATE,
    review_date DATE,
    approval_status TEXT,
    notes TEXT,
    revision_number INTEGER,
    related_set_code TEXT,
    external_reference TEXT
);
INSERT INTO environmental_compliance_documents (document_type,version,effective_date,expiration_date,regulator,compliance_status,audit_score,findings_summary,corrective_action_due,responsible_party,location,file_path,file_hash,uploaded_by,upload_date,review_date,approval_status,notes,revision_number,related_set_code,external_reference) VALUES ('CarbonReport','v1','2025-01-01','2026-01-01','EPA','Compliant',95.2,'All thresholds met','2025-12-31','EnvTeam','HQ','/docs/carbon_v1.pdf','abcd1234','EnvAdmin','2025-01-02','2025-01-15','Approved','',1,'SET001','REF001');
INSERT INTO environmental_compliance_documents VALUES (2,'WasteManagement','v2','2025-03-01','2027-03-01','EPA','Pending',78.5,'Excess landfill usage','2025-09-30','WasteTeam','Plant1','/docs/waste_v2.pdf','efgh5678','EnvAdmin','2025-03-02','2025-03-20','Pending','Review required',2,'SET002','REF002');
INSERT INTO environmental_compliance_documents VALUES (3,'EnergyAudit','v1','2025-05-01','2026-05-01','DOE','Non-Compliant',62.0,'High electricity consumption','2025-11-30','EnergyTeam','FacilityA','/docs/energy_v1.pdf','ijkl9012','EnvAdmin','2025-05-02','2025-05-18','Rejected','Needs remediation',1,'SET003','REF003');

-- Sponsor engagement surveys
CREATE TABLE sponsor_engagement_surveys (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id TEXT,
    event_id TEXT,
    survey_date DATE,
    overall_satisfaction REAL,
    branding_visibility_score REAL,
    lead_quality_score REAL,
    attendee_interaction_score REAL,
    booth_traffic_count INTEGER,
    net_promoter_score INTEGER,
    comments TEXT,
    follow_up_required INTEGER,
    follow_up_date DATE,
    survey_version TEXT,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    approved_flag INTEGER,
    response_rate_percent REAL,
    incentive_offered TEXT,
    incentive_redeemed INTEGER,
    survey_type TEXT,
    notes TEXT
);
INSERT INTO sponsor_engagement_surveys (sponsor_id,event_id,survey_date,overall_satisfaction,branding_visibility_score,lead_quality_score,attendee_interaction_score,booth_traffic_count,net_promoter_score,comments,follow_up_required,follow_up_date,survey_version,created_by,created_at,updated_at,approved_flag,response_rate_percent,incentive_offered,incentive_redeemed,survey_type,notes) VALUES ('SP001','EVT001','2025-11-10',4.6,4.2,4.0,3.8,250,55,'Very positive feedback',0,NULL,'v1','AnalystA','2025-11-11','2025-11-11',1,85.0,'SwagBag',250,'PostEvent','');
INSERT INTO sponsor_engagement_surveys VALUES (2,'SP002','EVT002','2025-11-12',3.9,3.5,3.2,3.0,180,45,'Good exposure but room for improvement',1,'2025-12-01','v1','AnalystB','2025-11-13','2025-11-13',0,70.0,'DiscountVoucher',0,'PostEvent','Follow-up scheduled');
INSERT INTO sponsor_engagement_surveys VALUES (3,'SP003','EVT003','2025-11-14',4.8,4.7,4.5,4.6,320,70,'Excellent engagement',0,NULL,'v2','AnalystC','2025-11-15','2025-11-15',1,92.0,'PremiumPackage',320,'PostEvent','Top performer');

-- Digital artifact metadata extended
CREATE TABLE digital_artifact_metadata_ext (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_uuid TEXT,
    file_name TEXT,
    file_size_bytes INTEGER,
    checksum_md5 TEXT,
    checksum_sha256 TEXT,
    resolution_width INTEGER,
    resolution_height INTEGER,
    color_depth INTEGER,
    duration_seconds REAL,
    frame_rate REAL,
    codec TEXT,
    creator_id TEXT,
    creation_date DATE,
    last_modified_date DATE,
    usage_rights TEXT,
    license_type TEXT,
    expiry_date DATE,
    tags TEXT,
    related_artifact_uuid TEXT,
    version_number INTEGER,
    approved_flag INTEGER,
    notes TEXT
);
INSERT INTO digital_artifact_metadata_ext (artifact_uuid,file_name,file_size_bytes,checksum_md5,checksum_sha256,resolution_width,resolution_height,color_depth,duration_seconds,frame_rate,codec,creator_id,creation_date,last_modified_date,usage_rights,license_type,expiry_date,tags,related_artifact_uuid,version_number,approved_flag,notes) VALUES ('art001','dragon.png',2048000,'a1b2c3d4e5','f1e2d3c4b5a6',1920,1080,24,0,0,'PNG','CR001','2025-01-10','2025-02-01','Public','CC0','2099-12-31','fantasy,dragon','art010',1,1,'');
INSERT INTO digital_artifact_metadata_ext VALUES (2,'art002','theme.mp3',5120000,'b2c3d4e5f6','e2d3c4b5a6f7',0,0,16,180.0,44.1,'MP3','CR002','2025-03-15','2025-04-01','Commercial','RoyaltyFree','2027-12-31','music,theme','art020',1,1,'');
INSERT INTO digital_artifact_metadata_ext VALUES (3,'art003','cutscene.mov',104857600,'c3d4e5f6g7','d3c4b5a6f7e8',1280,720,24,120.0,30.0,'H264','CR003','2025-05-20','2025-06-01','Restricted','Licensed','2026-05-31','cutscene,gameplay','art030',2,0,'Pending approval');

-- Deck build constraints
CREATE TABLE deck_build_constraints (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    deck_id TEXT,
    constraint_type TEXT,
    description TEXT,
    max_cards INTEGER,
    min_cards INTEGER,
    allowed_colors TEXT,
    banned_cards TEXT,
    limited_cards TEXT,
    rarity_limit TEXT,
    total_mana_cost_limit REAL,
    average_cmc_limit REAL,
    max_copies_per_card INTEGER,
    allowed_formats TEXT,
    requires_expansion TEXT,
    expiration_date DATE,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    enabled_flag INTEGER,
    notes TEXT,
    version TEXT
);
INSERT INTO deck_build_constraints (deck_id,constraint_type,description,max_cards,min_cards,allowed_colors,banned_cards,limited_cards,rarity_limit,total_mana_cost_limit,average_cmc_limit,max_copies_per_card,allowed_formats,requires_expansion,expiration_date,created_by,created_at,updated_at,enabled_flag,notes,version) VALUES ('DECK001','Standard','Standard constructed rules',60,40,'WUBRG','CardX,CardY','CardZ','Mythic:1,Legendary:2',250.0,4.5,4,'Standard','Expansion2025','2025-12-31','Admin','2025-01-01','2025-01-01',1,'', 'v1');
INSERT INTO deck_build_constraints VALUES (2,'DECK002','Limited','Limited event constraints',40,30,'WU','CardA','CardB','Rare:2,Uncommon:4',180.0,3.8,3,'Limited','None','2025-11-30','Admin','2025-02-01','2025-02-01',1,'', 'v1');
INSERT INTO deck_build_constraints VALUES (3,'DECK003','Commander','Commander format constraints',100,100,'RWG','CardM','CardN','Legendary:1',0,0,1,'Commander','Expansion2025','2026-12-31','Admin','2025-03-01','2025-03-01',1,'', 'v2');

-- Set production resources extended
CREATE TABLE set_production_resources_ext (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    resource_type TEXT,
    resource_name TEXT,
    allocated_quantity INTEGER,
    used_quantity INTEGER,
    remaining_quantity INTEGER,
    unit_cost REAL,
    total_cost REAL,
    vendor_id TEXT,
    delivery_date DATE,
    quality_check_passed INTEGER,
    batch_number TEXT,
    production_stage TEXT,
    start_date DATE,
    end_date DATE,
    responsible_manager TEXT,
    notes TEXT,
    compliance_status TEXT,
    audit_timestamp DATE,
    external_reference TEXT,
    version TEXT,
    created_at DATE
);
INSERT INTO set_production_resources_ext (set_code,resource_type,resource_name,allocated_quantity,used_quantity,remaining_quantity,unit_cost,total_cost,vendor_id,delivery_date,quality_check_passed,batch_number,production_stage,start_date,end_date,responsible_manager,notes,compliance_status,audit_timestamp,external_reference,version,created_at) VALUES ('SET001','Paper','Cardstock',500000,250000,250000,0.02,10000.00,'VENDP01','2025-09-01',1,'BATCH100','Printing','2025-09-01','2025-09-15','MgrPaper','', 'Compliant','2025-09-16','REF001','v1','2025-08-01');
INSERT INTO set_production_resources_ext VALUES (2,'Ink','BlackInk',2000,1200,800,5.00,12000.00,'VENDI02','2025-09-05',1,'BATCH101','Printing','2025-09-02','2025-09-12','MgrInk','', 'Compliant','2025-09-13','REF002','v1','2025-08-02');
INSERT INTO set_production_resources_ext VALUES (3,'Foil','GoldFoil',50000,30000,20000,0.10,5000.00,'VENDF03','2025-09-10',0,'BATCH102','Foiling','2025-09-08','2025-09-14','MgrFoil','Issue with foil adhesion','Non-Compliant','2025-09-15','REF003','v1','2025-08-03');