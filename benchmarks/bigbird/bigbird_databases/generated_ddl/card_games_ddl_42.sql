-- Card quality inspection records
CREATE TABLE card_quality_inspections (
    inspection_id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT,
    inspector_name TEXT,
    inspection_date DATE,
    surface_defects TEXT,
    color_shift INTEGER,
    thickness_variation REAL,
    weight REAL,
    barcode_scanned INTEGER,
    packaging_integrity TEXT,
    humidity_level REAL,
    temperature REAL,
    notes TEXT,
    passed INTEGER,
    corrective_action TEXT,
    batch_number TEXT,
    location_code TEXT,
    equipment_id TEXT,
    image_url TEXT,
    severity_level TEXT,
    resolution_time INTEGER
);
INSERT INTO card_quality_inspections VALUES (1,'uuid-abc123','JohnDoe','2024-12-01','None',0,0.02,1.5,1,'Intact',45.0,22.0,'All good',1,'None','BATCH001','LOC01','EQP01','http://example.com/img1','Low',0);
INSERT INTO card_quality_inspections VALUES (2,'uuid-def456','JaneSmith','2024-12-03','MinorScratch',1,0.03,1.48,1,'Intact',48.5,21.5,'Scratch on corner',0,'PolishEdge','BATCH002','LOC02','EQP02','http://example.com/img2','Medium',48);
INSERT INTO card_quality_inspections VALUES (3,'uuid-ghi789','MikeLee','2024-12-05','ColorBleed',2,0.05,1.52,0,'Damaged',50.0,23.0,'Color issue observed',0,'Reprint','BATCH003','LOC03','EQP03','http://example.com/img3','High',72);

-- Set distribution channels
CREATE TABLE set_distribution_channels (
    channel_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    channel_name TEXT,
    region TEXT,
    start_date DATE,
    end_date DATE,
    distribution_type TEXT,
    contact_person TEXT,
    contact_email TEXT,
    weekly_capacity INTEGER,
    cost_per_unit REAL,
    shipping_method TEXT,
    carrier TEXT,
    tracking_prefix TEXT,
    active INTEGER,
    notes TEXT,
    last_audit_date DATE,
    audit_status TEXT,
    compliance_certified INTEGER,
    service_level TEXT,
    latency_days INTEGER
);
INSERT INTO set_distribution_channels VALUES (1,'KHM','GlobalWarehouse','NorthAmerica','2024-01-01','2024-12-31','Direct','AliceBrown','alice@example.com',5000,3.75,'Air','FastShip','GWNA',1,'Primary channel','2024-10-15','Passed',1,'Premium',2);
INSERT INTO set_distribution_channels VALUES (2,'KHM','EuroDepot','Europe','2024-02-01','2024-12-31','Regional','BobWhite','bob@example.eu',3000,4.20,'Sea','EuroLog','EUDEP',1,'Secondary channel','2024-09-20','Passed',1,'Standard',5);
INSERT INTO set_distribution_channels VALUES (3,'KHM','AsiaHub','Asia','2024-03-01','2024-12-31','Regional','CarolLee','carol@asiahub.asia',4000,3.90,'Air','AsiaExpress','ASIAH',1,'Tertiary channel','2024-11-05','Pending',0,'Standard',4);

-- Digital asset archive metadata
CREATE TABLE digital_asset_archive_metadata (
    archive_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_uuid TEXT,
    asset_type TEXT,
    original_location TEXT,
    archive_location TEXT,
    archived_date DATE,
    archived_by TEXT,
    file_format TEXT,
    file_size_bytes INTEGER,
    checksum TEXT,
    encryption_status TEXT,
    retention_policy TEXT,
    access_level TEXT,
    last_accessed DATE,
    access_count INTEGER,
    preservation_notes TEXT,
    provenance TEXT,
    legal_hold INTEGER,
    external_reference TEXT,
    storage_tier TEXT,
    duplicate_flag INTEGER
);
INSERT INTO digital_asset_archive_metadata VALUES (1,'asset-001','Image','ServerA','Archive001','2024-08-01','Archivist1','PNG',2048000,'abc123def','Encrypted','7Years','Restricted','2024-10-10',12,'No degradation','OriginalUpload','0','REF001','Cold',0);
INSERT INTO digital_asset_archive_metadata VALUES (2,'asset-002','Audio','ServerB','Archive002','2024-08-05','Archivist2','MP3',5120000,'def456ghi','Unencrypted','5Years','Public','2024-09-20',5,'Clear audio','VendorSupply','0','REF002','Warm',0);
INSERT INTO digital_asset_archive_metadata VALUES (3,'asset-003','Document','ServerC','Archive003','2024-08-10','Archivist3','PDF',1024000,'ghi789jkl','Encrypted','10Years','Confidential','2024-10-01',3,'Scanned copy','LegalDept','1','REF003','Cold',1);

-- Artwork creation process
CREATE TABLE artwork_creation_process (
    process_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artwork_id TEXT,
    artist_id TEXT,
    concept_start DATE,
    sketch_complete DATE,
    colorization_complete DATE,
    final_review_date DATE,
    approval_status TEXT,
    revision_number INTEGER,
    time_spent_hours REAL,
    tools_used TEXT,
    layers_count INTEGER,
    resolution_px TEXT,
    color_profile TEXT,
    client_feedback TEXT,
    final_deliverable_url TEXT,
    version_tag TEXT,
    associated_card_uuid TEXT,
    budget_amount REAL,
    expense_details TEXT,
    notes TEXT
);
INSERT INTO artwork_creation_process VALUES (1,'art-100','artistA','2024-06-01','2024-06-05','2024-06-10','2024-06-12','Approved',2,45.5,'Photoshop','12','3000x4000','AdobeRGB','Positive','http://example.com/art100','v1','uuid-abc123',1500.00,'Materials,Software','Initial release');
INSERT INTO artwork_creation_process VALUES (2,'art-101','artistB','2024-07-01','2024-07-06','2024-07-12','2024-07-15','Pending',1,30.0,'Illustrator','9','2500x3500','sRGB','Needs adjustment','http://example.com/art101','v1','uuid-def456',1200.00,'Software','Second iteration');
INSERT INTO artwork_creation_process VALUES (3,'art-102','artistC','2024-05-15','2024-05-20','2024-05-25','2024-05-28','Approved',3,60.0,'ClipStudio','15','4000x5000','ProPhotoRGB','Excellent','http://example.com/art102','v2','uuid-ghi789',1800.00,'Materials,Software,StudioTime','Final version');

-- Legal document versions
CREATE TABLE legal_document_versions (
    doc_version_id INTEGER PRIMARY KEY AUTOINCREMENT,
    document_id TEXT,
    version_number INTEGER,
    effective_date DATE,
    expiration_date DATE,
    jurisdiction TEXT,
    document_type TEXT,
    status TEXT,
    signed_by TEXT,
    signer_role TEXT,
    signer_contact TEXT,
    hash_value TEXT,
    storage_path TEXT,
    archive_flag INTEGER,
    change_summary TEXT,
    related_contract_id TEXT,
    compliance_status TEXT,
    audit_trail TEXT,
    review_cycle_days INTEGER,
    next_review_date DATE,
    comments TEXT
);
INSERT INTO legal_document_versions VALUES (1,'doc-500','1','2024-01-01','2025-01-01','USA','License','Active','JohnLegal','Counsel','john.legal@example.com','hash001','/docs/v1','0','Initial version','contract-100','Compliant','Created','365','2025-01-01','No comments');
INSERT INTO legal_document_versions VALUES (2,'doc-500','2','2025-01-02','2026-01-01','USA','License','Active','JohnLegal','Counsel','john.legal@example.com','hash002','/docs/v2','0','Updated terms','contract-100','Compliant','Modified','365','2026-01-01','Reviewed by board');
INSERT INTO legal_document_versions VALUES (3,'doc-501','1','2024-03-15','2025-03-15','EU','Agreement','Pending','AnnaLaw','Director','anna.law@example.eu','hash003','/docs/agr1','0','Draft','contract-101','Pending','Created','180','2024-09-15','Awaiting signature');

-- Community event rewards
CREATE TABLE community_event_rewards (
    reward_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id TEXT,
    reward_name TEXT,
    reward_type TEXT,
    quantity INTEGER,
    eligibility_criteria TEXT,
    distribution_method TEXT,
    value_estimate REAL,
    sponsor_name TEXT,
    sponsor_contact TEXT,
    issued_date DATE,
    redeemed INTEGER,
    redemption_deadline DATE,
    reward_status TEXT,
    notes TEXT,
    tax_implication TEXT,
    logistics_provider TEXT,
    tracking_number TEXT,
    region TEXT,
    currency TEXT
);
INSERT INTO community_event_rewards VALUES (1,'event-300','GoldenToken','VirtualItem','100','Top10Players','Email','50.00','GameCorp','contact@gamecorp.com','2024-09-01',0,'2024-12-31','Pending','First batch','None','CourierX','TRK001','NA','USD');
INSERT INTO community_event_rewards VALUES (2,'event-301','CollectorPlate','PhysicalItem','50','AllParticipants','Mail','75.00','CardMakers','info@cardmakers.com','2024-09-15',0,'2025-01-15','Pending','Limited edition','Taxable','ShipFast','TRK002','EU','EUR');
INSERT INTO community_event_rewards VALUES (3,'event-302','ExclusiveBadge','DigitalBadge','200','EventAttendance','InApp','0.00','PromoInc','badge@promoinc.com','2024-10-01',0,'2025-03-01','Pending','Badge unlock','None','N/A','N/A','APAC','JPY');

-- In-game event templates
CREATE TABLE in_game_event_templates (
    template_id INTEGER PRIMARY KEY AUTOINCREMENT,
    template_name TEXT,
    description TEXT,
    trigger_condition TEXT,
    duration_minutes INTEGER,
    reward_pool TEXT,
    max_participants INTEGER,
    cooldown_hours INTEGER,
    is_global INTEGER,
    associated_set_code TEXT,
    priority_level INTEGER,
    visual_theme TEXT,
    soundtrack TEXT,
    activation_date DATE,
    deactivation_date DATE,
    created_by TEXT,
    creation_date DATE,
    last_modified_by TEXT,
    last_modified_date DATE,
    version_tag TEXT
);
INSERT INTO in_game_event_templates VALUES (1,'WinterFest','Seasonal winter celebration','DateRange','Snowflakes,XP','5000','1000','48','1','WIN2024','5','Frost','WinterTune','2024-12-01','2025-01-31','AdminUser','2024-07-01','AdminUser','2024-10-15','v1');
INSERT INTO in_game_event_templates VALUES (2,'ArenaShowdown','Competitive arena tournament','ScoreThreshold','Gold,Medals','200','500','72','0','ARENA01','8','ArenaGlow','ArenaAnthem','2024-09-01','2024-09-30','EventMgr','2024-06-15','EventMgr','2024-08-20','v2');
INSERT INTO in_game_event_templates VALUES (3,'TreasureHunt','Worldwide hidden treasure','LocationDiscovery','TreasureChests','300','2000','24','1','EXP2024','3','Jungle','JungleBeat','2024-11-10','2024-12-10','GMLead','2024-08-01','GMLead','2024-09-30','v1');

-- Tournament streaming schedule
CREATE TABLE tournament_streaming_schedule (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id TEXT,
    stream_platform TEXT,
    channel_name TEXT,
    stream_start DATETIME,
    stream_end DATETIME,
    language TEXT,
    commentary_team TEXT,
    broadcast_quality TEXT,
    bitrate_kbps INTEGER,
    viewer_target INTEGER,
    sponsor_overlay TEXT,
    ad_breaks_count INTEGER,
    ad_break_interval_minutes INTEGER,
    is_live INTEGER,
    archive_url TEXT,
    analytics_id TEXT,
    production_status TEXT,
    notes TEXT,
    created_at DATETIME
);
INSERT INTO tournament_streaming_schedule VALUES (1,'tour-900','Twitch','ProGamers','2024-11-05 14:00:00','2024-11-05 18:00:00','English','TeamAlpha','1080p',4500,20000,'SponsorA','2','30','1','http://twitch.tv/ProGamers/archive','ANL001','Scheduled','Main finals','2024-10-01 12:00:00');
INSERT INTO tournament_streaming_schedule VALUES (2,'tour-901','YouTube','GamingHub','2024-11-06 10:00:00','2024-11-06 14:00:00','Spanish','TeamBeta','720p',3000,15000,'SponsorB','3','20','1','http://youtube.com/GamingHub/archive','ANL002','Scheduled','Quarterfinals','2024-10-02 09:30:00');
INSERT INTO tournament_streaming_schedule VALUES (3,'tour-902','Mixer','LiveArena','2024-11-07 16:00:00','2024-11-07 20:00:00','German','TeamGamma','1080p',5000,25000,'SponsorC','1','45','1','http://mixer.com/LiveArena/archive','ANL003','Pending','Semifinals','2024-10-03 15:45:00');

-- Player psychology profiles
CREATE TABLE player_psychology_profiles (
    profile_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id TEXT,
    assessment_date DATE,
    stress_level INTEGER,
    focus_score INTEGER,
    confidence_score INTEGER,
    motivation_factor INTEGER,
    sleep_hours REAL,
    caffeine_intake_ml INTEGER,
    exercise_minutes INTEGER,
    diet_quality TEXT,
    mental_fatigue_score INTEGER,
    coping_strategies TEXT,
    therapist_assigned TEXT,
    next_assessment_date DATE,
    notes TEXT,
    risk_flag INTEGER,
    support_resources TEXT,
    morale_trend TEXT,
    performance_correlation REAL
);
INSERT INTO player_psychology_profiles VALUES (1,'player-1001','2024-09-01',3,78,85,90,7.5,150,30,'Balanced',20,'Meditation','TherapistA','2025-03-01','Good progress',0,'TeamCoach','Upward',0.85);
INSERT INTO player_psychology_profiles VALUES (2,'player-1002','2024-09-15',6,65,70,60,6.0,200,15,'HighCarb',35,'GameBreaks','TherapistB','2025-03-15','Needs monitoring',1,'SportsPsychology','Downward',0.45);
INSERT INTO player_psychology_profiles VALUES (3,'player-1003','2024-10-01',2,88,92,95,8.0,100,45,'HighProtein',15,'BreathingExercises','TherapistC','2025-04-01','Excellent',0,'Nutritionist','Stable',0.92);

-- External API integrations
CREATE TABLE external_api_integrations (
    integration_id INTEGER PRIMARY KEY AUTOINCREMENT,
    api_name TEXT,
    provider TEXT,
    endpoint_url TEXT,
    auth_method TEXT,
    api_key TEXT,
    usage_quota INTEGER,
    daily_calls INTEGER,
    success_rate_percent REAL,
    average_latency_ms REAL,
    last_error_code INTEGER,
    last_error_message TEXT,
    is_active INTEGER,
    integration_owner TEXT,
    contact_email TEXT,
    contract_start DATE,
    contract_end DATE,
    sla_response_time_ms INTEGER,
    data_privacy_level TEXT,
    notes TEXT
);
INSERT INTO external_api_integrations VALUES (1,'CardDataAPI','DataHub','https://api.datahub.com/cards','APIKey','KEY12345',1000000,5000,99.5,120.0,0,'None',1,'OpsTeam','ops@datateam.com','2024-01-01','2025-12-31',200,'High','Primary card data source');
INSERT INTO external_api_integrations VALUES (2,'AnalyticsService','MetricStream','https://metrics.stream.io/collect','OAuth','OAUTH987','500000',3000,98.0,250.0,401,'AuthFailed',1,'Analytics','analytics@stream.io','2024-06-01','2026-05-31',300,'Medium','Event analytics collection');
INSERT INTO external_api_integrations VALUES (3,'PaymentGateway','PayFast','https://payfast.com/api','Token','TOKEN555','200000',1500,97.2,350.0,500,'ServerError',0,'Finance','finance@payfast.com','2023-09-01','2024-09-01',500,'High','Deprecated payment integration');