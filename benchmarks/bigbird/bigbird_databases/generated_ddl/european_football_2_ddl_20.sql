-- Sponsor brand assets used in marketing campaigns
CREATE TABLE Sponsor_Brand_Assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    asset_type TEXT,
    file_name TEXT,
    file_format TEXT,
    resolution_width INTEGER,
    resolution_height INTEGER,
    file_size_kb INTEGER,
    upload_date TEXT,
    usage_rights TEXT,
    region_allowed TEXT,
    expiration_date TEXT,
    created_by TEXT,
    approved_by TEXT,
    version_number INTEGER,
    checksum TEXT,
    color_profile TEXT,
    bitrate INTEGER,
    duration_seconds INTEGER,
    aspect_ratio TEXT,
    tags TEXT,
    description TEXT
);
INSERT INTO Sponsor_Brand_Assets VALUES (1,10,'logo','nike_logo','png',2000,2000,350,'2023-01-15','full','global','2025-01-15','designer_a','manager_b',1,'abc123','srgb',0,0,'1:1','sports,branding','Main logo for Nike sponsorship');
INSERT INTO Sponsor_Brand_Assets VALUES (2,12,'video','ad_spot','mp4',1920,1080,50000,'2023-02-10','limited','europe','2024-02-10','videographer_c','marketing_d',2,'def456','rec709',4500,30,'16:9','advert,summer','Quarter final ad spot');
INSERT INTO Sponsor_Brand_Assets VALUES (3,15,'banner','sponsor_banner','jpeg',1200,600,1200,'2023-03-05','full','amerika','2026-03-05','designer_e','manager_f',1,'ghi789','srgb',0,0,'2:1','banner,season','Seasonal banner for sponsor');

-- League sponsorship packages definition
CREATE TABLE League_Sponsorship_Packages (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    package_name TEXT,
    tier_level INTEGER,
    cost_usd INTEGER,
    duration_months INTEGER,
    benefits_summary TEXT,
    exclusive_rights TEXT,
    activation_date TEXT,
    termination_date TEXT,
    renewal_option TEXT,
    max_exposure_minutes INTEGER,
    logo_position TEXT,
    broadcast_mentions_per_season INTEGER,
    digital_impressions_per_month INTEGER,
    on_site_signage_count INTEGER,
    hospitality_vip_passes INTEGER,
    branding_events INTEGER,
    social_media_spots INTEGER,
    custom_activation_notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO League_Sponsorship_Packages VALUES (1,2,'Platinum','1',2000000,24,'Full season exposure','yes','2023-07-01','2025-06-30','auto','100000','center_field','50','2000000','20','10','5','15','Custom fan zones','2023-06-01','2023-06-15');
INSERT INTO League_Sponsorship_Packages VALUES (2,3,'Gold','2',1200000,18,'Major match branding','no','2023-08-01','2025-01-31','manual','50000','corner_flag','30','1200000','12','6','3','8','Social media contests','2023-07-01','2023-07-10');
INSERT INTO League_Sponsorship_Packages VALUES (3,4,'Silver','3',800000,12,'Minor match branding','no','2023-09-01','2024-08-31','manual','20000','side_banner','20','800000','8','4','2','5','Community event sponsor','2023-08-01','2023-08-05');

-- Club staff role definitions
CREATE TABLE Club_Staff_Roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    staff_name TEXT,
    role_title TEXT,
    department TEXT,
    start_date TEXT,
    end_date TEXT,
    salary_usd INTEGER,
    contract_type TEXT,
    reporting_to TEXT,
    certifications TEXT,
    years_experience INTEGER,
    phone_extension INTEGER,
    email_address TEXT,
    office_location TEXT,
    is_full_time INTEGER,
    shift_pattern TEXT,
    performance_score INTEGER,
    last_review_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Club_Staff_Roles VALUES (1,5,'John Doe','Head Coach','Coaching','2020-07-01',NULL,950000,'full_time','Club President','UEFA Pro License',12,101,'john.doe@club.com','Office 1',1,'day','85','2023-06-01','Promoted from assistant coach','2023-01-01','2023-06-01');
INSERT INTO Club_Staff_Roles VALUES (2,5,'Emily Smith','Chief Medical Officer','Medical','2018-01-15',NULL,300000,'full_time','Club President','Sports Medicine PhD',10,102,'emily.smith@club.com','Office 2',1,'day','90','2023-05-15','Oversaw injury reduction program','2023-02-01','2023-05-15');
INSERT INTO Club_Staff_Roles VALUES (3,6,'Carlos Ruiz','Finance Director','Finance','2019-03-01',NULL,420000,'full_time','Club Owner','CFA',8,103,'carlos.ruiz@club.com','Office 3',1,'day','88','2023-04-20','Implemented new budgeting system','2023-03-01','2023-04-20');

-- Stadium seating sections definition
CREATE TABLE Stadium_Seating_Sections (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    section_code TEXT,
    section_name TEXT,
    capacity INTEGER,
    tier_level INTEGER,
    is_vip INTEGER,
    price_category TEXT,
    view_quality_rating INTEGER,
    distance_from_field_meters INTEGER,
    access_route TEXT,
    wheelchair_accessible INTEGER,
    concession_nearby TEXT,
    average_occupancy_rate REAL,
    last_renovation_year INTEGER,
    acoustic_rating INTEGER,
    lighting_rating INTEGER,
    security_level INTEGER,
    maintenance_schedule TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Stadium_Seating_Sections VALUES (1,1,'A1','North Stand Lower','12000',1,0,'standard',8,15,'north_gate',1,'Concession A',0.92,2018,9,9,8,'annual','2023-01-01','2023-06-01');
INSERT INTO Stadium_Seating_Sections VALUES (2,1,'B2','South Stand Upper','8000',2,1,'premium',9,30,'south_gate',1,'Concession B',0.88,2020,9,8,9,'biennial','2023-02-01','2023-07-01');
INSERT INTO Stadium_Seating_Sections VALUES (3,2,'C3','East Stand Mid','5000',3,0,'economy',6,20,'east_gate',0,'Concession C',0.85,2015,7,7,7,'annual','2023-03-01','2023-08-01');

-- Match streaming platforms information
CREATE TABLE Match_Streaming_Platforms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    platform_name TEXT,
    streaming_url TEXT,
    quality_hd TEXT,
    quality_sd TEXT,
    latency_ms INTEGER,
    concurrent_viewers INTEGER,
    average_watch_time_minutes REAL,
    peak_viewers INTEGER,
    region_available TEXT,
    subscription_required INTEGER,
    ad_supported INTEGER,
    drm_enabled INTEGER,
    stream_start_time TEXT,
    stream_end_time TEXT,
    bitrate_kbps INTEGER,
    content_rating TEXT,
    support_contact TEXT,
    last_update TEXT,
    created_at TEXT
);
INSERT INTO Match_Streaming_Platforms VALUES (1,100,'StreamNow','1080p','480p',250,350000,45.2,500000,'global',0,1,1,'2023-09-10 18:00','2023-09-10 20:30',4500,'PG','support@streamnow.com','2023-09-01','2023-09-05');
INSERT INTO Match_Streaming_Platforms VALUES (2,101,'LivePlay','720p','360p',300,200000,38.7,250000,'europe',1,0,1,'2023-09-11 19:00','2023-09-11 21:45',3000,'PG-13','help@liveplay.com','2023-09-02','2023-09-06');
INSERT INTO Match_Streaming_Platforms VALUES (3,102,'FanCast','1080p','720p',200,150000,42.0,180000,'americas',0,1,0,'2023-09-12 17:30','2023-09-12 20:00',4000,'G','contact@fancast.com','2023-09-03','2023-09-07');

-- Ticket scan devices deployed in venues
CREATE TABLE Ticket_Scan_Devices (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    device_serial TEXT,
    model_name TEXT,
    firmware_version TEXT,
    installation_date TEXT,
    last_maintenance_date TEXT,
    scan_rate_per_sec INTEGER,
    battery_capacity_mah INTEGER,
    connectivity_type TEXT,
    ip_address TEXT,
    mac_address TEXT,
    operator_name TEXT,
    status TEXT,
    error_log TEXT,
    scan_success_count INTEGER,
    scan_failure_count INTEGER,
    software_version TEXT,
    warranty_expiry TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Ticket_Scan_Devices VALUES (1,1,'SN10001','ScanProX','v1.2','2022-01-10','2023-05-15',45,3000,'wifi','192.168.1.10','AA:BB:CC:DD:EE:01','tech_jane','active','',350000,100,'v1.2.5','2024-01-10','2023-01-01','2023-06-01');
INSERT INTO Ticket_Scan_Devices VALUES (2,2,'SN10002','ScanProX','v1.2','2022-02-20','2023-04-20',47,3200,'ethernet','192.168.2.20','AA:BB:CC:DD:EE:02','tech_mark','active','',280000,80,'v1.2.5','2024-02-20','2023-02-01','2023-07-01');
INSERT INTO Ticket_Scan_Devices VALUES (3,3,'SN20001','QuickRead','v2.0','2023-03-05','2023-08-01',55,2500,'wifi','192.168.3.30','AA:BB:CC:DD:EE:03','tech_lisa','maintenance','Battery low warning',15000,30,'v2.0.1','2025-03-05','2023-03-01','2023-08-05');

-- Training scientist records for clubs
CREATE TABLE Training_Scientist_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    scientist_name TEXT,
    degree TEXT,
    specialization TEXT,
    certification_number TEXT,
    hire_date TEXT,
    salary_usd INTEGER,
    lab_assigned TEXT,
    projects_active INTEGER,
    publications_count INTEGER,
    h_index INTEGER,
    email TEXT,
    phone TEXT,
    office_location TEXT,
    is_contractor INTEGER,
    contract_end_date TEXT,
    performance_rating INTEGER,
    last_review_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Training_Scientist_Records VALUES (1,5,'DrAnna Lee','PhD','Sports Physiology','CERT12345','2021-06-01',150000,'LabA',3,12,15,'anna.lee@club.com','5551234','Room 101',0,NULL,88,'2023-05-01','Lead on sprint analysis','2023-01-15','2023-06-15');
INSERT INTO Training_Scientist_Records VALUES (2,6,'ProfMark Tan','PhD','Biomechanics','CERT67890','2020-04-15',160000,'LabB',2,8,10,'mark.tan@club.com','5555678','Room 202',0,NULL,90,'2023-04-20','Developed new agility protocol','2023-02-01','2023-07-01');
INSERT INTO Training_Scientist_Records VALUES (3,7,'DrSara Gomez','MSc','Nutrition Science','CERT54321','2022-01-20',130000,'LabC',1,5,7,'sara.gomez@club.com','5559101','Room 303',1,'2024-01-20',85,'2023-03-10','Consulted on player diet plans','2023-03-01','2023-08-01');

-- Legal dispute cases involving clubs
CREATE TABLE Legal_Dispute_Cases (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    case_number TEXT,
    case_type TEXT,
    filing_date TEXT,
    jurisdiction TEXT,
    opposing_party TEXT,
    claim_amount_usd INTEGER,
    status TEXT,
    resolution_date TEXT,
    outcome_summary TEXT,
    legal_firm TEXT,
    lead_attorney TEXT,
    attorney_contact TEXT,
    court_fee_usd INTEGER,
    settlement_amount_usd INTEGER,
    appeal_filed INTEGER,
    appeal_outcome TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Legal_Dispute_Cases VALUES (1,5,'CASE2023001','contract','2023-02-15','UK','Player X','500000','settled','2023-08-20','Mutual termination with compensation','LawFirm A','Alice Brown','5552222',20000,480000,0,'','Resolved amicably','2023-01-10','2023-09-01');
INSERT INTO Legal_Dispute_Cases VALUES (2,6,'CASE2023002','tort','2023-03-05','Germany','Sponsor Y','1200000','pending',NULL,'','LawFirm B','Bob Miller','5553333',50000,0,0,'','Pending trial','2023-02-12','2023-09-05');
INSERT INTO Legal_Dispute_Cases VALUES (3,7,'CASE2023003','intellectual_property','2023-01-20','France','Tech Co','800000','dismissed','2023-07-10','Claim dismissed due to lack of evidence','LawFirm C','Clara Zhou','5554444',15000,0,0,'','Case dismissed','2023-01-01','2023-08-01');

-- Digital merchandise tokenization records
CREATE TABLE Digital_Merch_Tokenization (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    merchandise_id INTEGER,
    token_id TEXT,
    blockchain TEXT,
    token_type TEXT,
    issued_date TEXT,
    expiry_date TEXT,
    rarity_level TEXT,
    edition_number INTEGER,
    max_supply INTEGER,
    current_supply INTEGER,
    holder_address TEXT,
    transfer_count INTEGER,
    last_transfer_date TEXT,
    valuation_usd INTEGER,
    metadata_uri TEXT,
    creator TEXT,
    authorized_marketplace TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Digital_Merch_Tokenization VALUES (1,101,'TOK001','Ethereum','ERC721','2023-04-01','2025-04-01','legendary',1,100,25,'0xABC123','10','2023-08-15',2500,'https://meta.example.com/1','DesignTeamA','OpenSea','active','Limited edition jersey token','2023-04-01','2023-08-01');
INSERT INTO Digital_Merch_Tokenization VALUES (2,102,'TOK002','Polygon','ERC1155','2023-05-10','2026-05-10','rare',5,500,120,'0xDEF456','30','2023-08-20',1500,'https://meta.example.com/2','DesignTeamB','Rarible','active','Scarf collection token','2023-05-10','2023-08-10');
INSERT INTO Digital_Merch_Tokenization VALUES (3,103,'TOK003','Solana','SPL','2023-06-15','2024-06-15','common',10,1000,600,'0xGHI789','5','2023-08-25',500,'https://meta.example.com/3','DesignTeamC','MagicEden','inactive','Season ticket token','2023-06-15','2023-08-15');

-- International tournament statistics
CREATE TABLE International_Tournament_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_name TEXT,
    year INTEGER,
    host_country TEXT,
    total_teams INTEGER,
    matches_played INTEGER,
    goals_scored INTEGER,
    average_attendance REAL,
    total_revenue_usd INTEGER,
    sponsor_main TEXT,
    official_ball TEXT,
    mascot_name TEXT,
    opening_ceremony_theme TEXT,
    broadcast_partners TEXT,
    viewership_global INTEGER,
    social_mentions_millions REAL,
    ticket_average_price_usd REAL,
    most_valuable_player TEXT,
    golden_boot_winner TEXT,
    fair_play_award TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO International_Tournament_Stats VALUES (1,'World Cup',2022,'CountryA',32,64,172,54000,2100000000,'SponsorX','BallX','Lion','Unity and Hope','NetworkA,NetworkB',1200000000,150.5,180.75,'PlayerA','PlayerB','TeamC','2022-01-01','2022-12-31');
INSERT INTO International_Tournament_Stats VALUES (2,'Euro Championship',2024,'CountryB',24,51,140,45000,1500000000,'SponsorY','BallY','Eagle','Strength and Pride','NetworkC,NetworkD',950000000,120.3,150.20,'PlayerC','PlayerD','TeamD','2024-01-01','2024-12-31');
INSERT INTO International_Tournament_Stats VALUES (3,'Asian Cup',2023,'CountryC',24,45,110,38000,900000000,'SponsorZ','BallZ','Tiger','Harmony','NetworkE,NetworkF',800000000,95.8,130.40,'PlayerE','PlayerF','TeamE','2023-01-01','2023-12-31');