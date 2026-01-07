-- Venue locations where events are held
CREATE TABLE venue_location
(
    venue_id               INTEGER NOT NULL PRIMARY KEY,
    venue_name             TEXT,
    street_address         TEXT,
    city                   TEXT,
    state_province         TEXT,
    postal_code            TEXT,
    country                TEXT,
    capacity_seats         INTEGER,
    indoor_outdoor_flag    TEXT,               -- INDOOR or OUTDOOR
    parking_spaces         INTEGER,
    wheelchair_accessible BOOLEAN,
    year_built             INTEGER,
    venue_type             TEXT,               -- CONCERT_HALL, CONVENTION_CENTER, etc.
    latitude               REAL,
    longitude              REAL,
    contact_name           TEXT,
    contact_phone          TEXT,
    contact_email           TEXT,
    security_level         TEXT,
    fire_safety_certified  BOOLEAN,
    acoustic_rating        INTEGER,            -- 1-10
    average_rent_usd       INTEGER,
    maintenance_status    TEXT
);

INSERT INTO venue_location VALUES (1,'Grand Convention Center','123 Main St','Metropolis','NY','10001','USA',5000,'INDOOR',1200,TRUE,1995,'CONVENTION_CENTER',40.7128,-74.0060,'Jane Doe','5551234567','jane.doe@example.com','HIGH',TRUE,8,25000,'GOOD');
INSERT INTO venue_location VALUES (2,'Sunny Outdoor Arena','456 Sunset Blvd','Sun City','CA','90001','USA',8000,'OUTDOOR',2000,TRUE,2005,'STADIUM',34.0522,-118.2437,'Bob Smith','5559876543','bob.smith@example.com','MEDIUM',TRUE,6,18000,'EXCELLENT');
INSERT INTO venue_location VALUES (3,'Riverfront Expo Hall','789 River Rd','River Town','TX','73301','USA',3000,'INDOOR',800,FALSE,2010,'EXPO_HALL',31.9686,-99.9018,'Alice Green','5555551234','alice.green@example.com','LOW',FALSE,5,12000,'FAIR');

-- Sponsorship packages offered to partners
CREATE TABLE sponsorship_package
(
    package_id               INTEGER NOT NULL PRIMARY KEY,
    package_name             TEXT,
    tier_level               TEXT,               -- GOLD, SILVER, BRONZE
    max_exposure_minutes    INTEGER,
    logo_placement_slots    INTEGER,
    social_media_mentions   INTEGER,
    press_release_count     INTEGER,
    complimentary_tickets   INTEGER,
    exclusive_meeting       BOOLEAN,
    hospitality_suite_access BOOLEAN,
    cost_usd                INTEGER,
    currency                TEXT,
    contract_start_date     DATE,
    contract_end_date       DATE,
    renewal_option          BOOLEAN,
    cancellation_notice_days INTEGER,
    attached_benefits        TEXT,
    financial_audit_required BOOLEAN,
    compliance_monitoring   BOOLEAN,
    sponsor_contact_name    TEXT,
    sponsor_contact_phone   TEXT,
    sponsor_contact_email   TEXT,
    notes                    TEXT
);

INSERT INTO sponsorship_package VALUES (1,'Alpha Exposure','GOLD',30,5,20,3,10,TRUE,TRUE,50000,'USD','2024-01-01','2024-12-31',TRUE,60,'VIP lounge, backstage pass',TRUE,TRUE,'MegaCorp','5551112222','contact@megacorp.com','Top tier package with maximum visibility');
INSERT INTO sponsorship_package VALUES (2,'Beta Boost','SILVER',15,3,10,2,5,FALSE,TRUE,25000,'USD','2024-03-15','2025-03-14',TRUE,45,'Reserved seating, branded swag',TRUE,FALSE,'Beta Inc','5553334444','info@betainc.com','Mid level offering with good value');
INSERT INTO sponsorship_package VALUES (3,'Gamma Gate','BRONZE',5,1,5,1,2,FALSE,FALSE,10000,'USD','2024-06-01','2025-05-31',FALSE,30,'Logo on flyers',FALSE,FALSE,'Gamma LLC','5557778888','sales@gammallc.com','Entry level sponsorship for small firms');

-- Advertising inventory for various media channels
CREATE TABLE advertising_inventory
(
    inventory_id               INTEGER NOT NULL PRIMARY KEY,
    channel_name               TEXT,
    ad_format                  TEXT,               -- BANNER, VIDEO, SPRITE, etc.
    placement_position         TEXT,
    size_pixels_width          INTEGER,
    size_pixels_height         INTEGER,
    cost_per_impression_usd    REAL,
    cost_per_click_usd         REAL,
    daily_cap_impressions      INTEGER,
    monthly_cap_impressions    INTEGER,
    target_audience_demo       TEXT,
    geo_target_countries       TEXT,
    start_date                 DATE,
    end_date                   DATE,
    active_flag                BOOLEAN,
    viewability_rate_percent   REAL,
    click_through_rate_percent REAL,
    conversion_rate_percent    REAL,
    inventory_owner            TEXT,
    inventory_manager_contact  TEXT,
    inventory_manager_phone    TEXT,
    inventory_manager_email    TEXT,
    notes                      TEXT
);

INSERT INTO advertising_inventory VALUES (1,'WebBannerNetwork','BANNER','TopHeader',728,90,0.005,0.20,500000,15000000,'18-35_Male','US,CA,GB','2024-01-01','2024-12-31',TRUE,75.5,1.2,0.4,'AdCo Ltd','John Doe','5552223333','john.doe@adco.com','Premium banner spot on high traffic sites');
INSERT INTO advertising_inventory VALUES (2,'MobileAppAds','VIDEO','MidScreen',320,480,0.010,0.35,300000,9000000,'25-45_Female','AU,NZ','2024-02-15','2025-02-14',TRUE,68.2,1.5,0.6,'MobileMedia','Jane Smith','5554445555','jane.smith@mobilemedia.com','Video ads in popular gaming apps');
INSERT INTO advertising_inventory VALUES (3,'DigitalBillboard','SPRITE','Sidewalk',1920,1080,0.015,0.00,200000,6000000,'All_Ages','US','2024-05-01','2024-11-30',TRUE,80.0,0.0,0.2,'OutOfHome Inc','Mike Lee','5556667777','mike.lee@ooho.com','High visibility urban digital billboards');

-- Licensing royalty tracking per region
CREATE TABLE licensing_royalty
(
    royalty_id               INTEGER NOT NULL PRIMARY KEY,
    licensee_name            TEXT,
    territory                TEXT,
    product_category         TEXT,
    royalty_rate_percent     REAL,
    gross_sales_usd          INTEGER,
    net_royalty_paid_usd     INTEGER,
    payment_due_date         DATE,
    payment_status           TEXT,               -- PAID, DUE, OVERDUE
    contract_start_date      DATE,
    contract_end_date        DATE,
    renewal_option           BOOLEAN,
    audit_required           BOOLEAN,
    last_audit_date          DATE,
    notes                    TEXT,
    reporting_frequency      TEXT,               -- MONTHLY, QUARTERLY
    currency                 TEXT,
    exchange_rate_to_usd     REAL,
    tax_withheld_percent     REAL,
    accounting_contact_name  TEXT,
    accounting_contact_phone TEXT,
    accounting_contact_email TEXT,
    created_timestamp        TIMESTAMP,
    updated_timestamp        TIMESTAMP
);

INSERT INTO licensing_royalty VALUES (1,'ToyMakers Inc','NorthAmerica','ActionFigures',12.5,500000,62500,'2024-04-15','PAID','2022-01-01','2025-12-31',TRUE,FALSE,NULL,'Annual royalty for action figures','QUARTERLY','USD',1.0,5.0,'Laura Brown','5551112222','laura.brown@toymakers.com','2024-01-01 08:00:00','2024-06-01 09:30:00');
INSERT INTO licensing_royalty VALUES (2,'ApparelCo','Europe','Apparel',8.0,300000,24000,'2024-05-01','DUE','2023-06-01','2026-05-31',TRUE,TRUE,'2024-03-01','Quarterly apparel royalty','MONTHLY','EUR',1.1,3.0,'Peter White','5553334444','peter.white@apparelco.eu','2024-02-15 10:15:00','2024-06-01 11:45:00');
INSERT INTO licensing_royalty VALUES (3,'GameStudio','Asia','VideoGames',15.0,800000,120000,'2024-06-30','OVERDUE','2021-09-01','2024-08-31',FALSE,FALSE,NULL,'Royalty for mobile game distribution','MONTHLY','JPY',0.0091,10.0,'Sara Kim','5555556666','sara.kim@gamestudio.jp','2024-01-20 07:45:00','2024-05-20 08:20:00');

-- Streaming metrics for digital releases
CREATE TABLE streaming_metrics
(
    metric_id                INTEGER NOT NULL PRIMARY KEY,
    platform_name            TEXT,
    content_title            TEXT,
    release_date             DATE,
    total_views              INTEGER,
    unique_viewers           INTEGER,
    average_watch_time_sec   INTEGER,
    completion_rate_percent  REAL,
    peak_concurrent_viewers  INTEGER,
    geographic_region        TEXT,
    device_type_distribution TEXT,
    subscription_type        TEXT,
    ad_supported_flag        BOOLEAN,
    revenue_usd              INTEGER,
    cost_per_view_usd        REAL,
    buffer_rate_percent      REAL,
    error_rate_percent       REAL,
    last_updated_timestamp   TIMESTAMP,
    data_source              TEXT,
    notes                    TEXT,
    created_timestamp        TIMESTAMP,
    updated_timestamp        TIMESTAMP,
    data_quality_score       INTEGER,
    reporting_period_start   DATE,
    reporting_period_end     DATE
);

INSERT INTO streaming_metrics VALUES (1,'StreamFlix','The Heroic Saga','2024-03-01',2500000,1800000,1400,65.0,35000,'NorthAmerica','Mobile:55%,Desktop:35%,TV:10%','Premium',FALSE,750000,0.30,1.2,0.4,'2024-06-01 12:00:00','AnalyticsEngine','Monthly report','2024-01-01 00:00:00','2024-06-01 00:00:00',85,'2024-05-01','2024-05-31');
INSERT INTO streaming_metrics VALUES (2,'ViewNow','Epic Crossover','2024-04-15',1800000,1300000,1200,58.0,27000,'Europe','Desktop:60%,Mobile:30%,TV:10%','Standard',TRUE,420000,0.23,1.5,0.6,'2024-06-01 12:00:00','AnalyticsEngine','Quarterly report','2024-01-01 00:00:00','2024-06-01 00:00:00',78,'2024-03-01','2024-05-31');
INSERT INTO streaming_metrics VALUES (3,'PlayHub','Virtual Adventures','2024-05-20',900000,750000,900,45.0,15000,'Asia','Mobile:70%,Desktop:20%,TV:10%','Free',TRUE,180000,0.20,2.0,0.8,'2024-06-01 12:00:00','AnalyticsEngine','Weekly summary','2024-01-01 00:00:00','2024-06-01 00:00:00',70,'2024-05-14','2024-05-20');

-- Corporate partnership agreements
CREATE TABLE corporate_partnership
(
    partnership_id           INTEGER NOT NULL PRIMARY KEY,
    partner_company_name     TEXT,
    partnership_type         TEXT,               -- CO_BRANDING, SPONSORED_CONTENT, etc.
    start_date               DATE,
    end_date                 DATE,
    renewal_option           BOOLEAN,
    annual_fee_usd           INTEGER,
    revenue_share_percent    REAL,
    exclusive_flag           BOOLEAN,
    marketing_budget_usd     INTEGER,
    joint_product_line       TEXT,
    dedicated_account_manager TEXT,
    account_manager_phone    TEXT,
    account_manager_email    TEXT,
    compliance_requirements TEXT,
    termination_notice_days INTEGER,
    confidentiality_clause   TEXT,
    performance_metrics      TEXT,
    reporting_frequency      TEXT,
    legal_review_complete    BOOLEAN,
    notes                    TEXT,
    created_timestamp        TIMESTAMP,
    updated_timestamp        TIMESTAMP,
    contract_version         TEXT,
    approval_status          TEXT
);

INSERT INTO corporate_partnership VALUES (1,'TechNova','CO_BRANDING','2023-07-01','2025-06-30',TRUE,150000,10.0,TRUE,300000,'Superhero Smartwatch','Emily Clark','5558889999','emily.clark@technova.com','ISO27001','90','Standard NDA','KPIs: Sales, Reach','QUARTERLY',TRUE,'Long term co-branding with exclusive tech gear','2024-01-01 09:00:00','2024-06-01 10:30:00','v1.2','APPROVED');
INSERT INTO corporate_partnership VALUES (2,'FoodieCo','SPONSORED_CONTENT','2024-01-15','2024-12-31',FALSE,75000,5.0,FALSE,120000,'Superhero Snack Pack','Carlos Rivera','5557776666','carlos.rivera@foodieco.com','FDA Compliance','60','Confidentiality Level 2','KPIs: Engagement, Conversion','MONTHLY',FALSE,'One-year snack line partnership','2024-01-01 08:15:00','2024-06-15 09:45:00','v0.9','PENDING');
INSERT INTO corporate_partnership VALUES (3,'EcoGear','CO_BRANDING','2024-03-01','2027-02-28',TRUE,200000,12.5,TRUE,400000,'Eco Superhero Apparel','Anna Lee','5554443333','anna.lee@ecogear.com','EPA Standards','120','High confidentiality','KPIs: Units Sold, Environmental Impact','ANNUAL',TRUE,'Sustainable apparel line with exclusive designs','2024-02-01 07:30:00','2024-06-10 08:00:00','v2.0','APPROVED');

-- Archival catalog for physical and digital assets
CREATE TABLE archival_catalog
(
    catalog_id               INTEGER NOT NULL PRIMARY KEY,
    asset_type               TEXT,               -- PRINT, DIGITAL, AUDIO, VIDEO
    title                    TEXT,
    creator_name             TEXT,
    creation_date            DATE,
    acquisition_date         DATE,
    storage_location         TEXT,
    condition_status         TEXT,               -- GOOD, FAIR, POOR
    format_details           TEXT,
    size_mb                  REAL,
    page_count               INTEGER,
    duration_sec             INTEGER,
    language                 TEXT,
    region_of_origin         TEXT,
    rights_holder            TEXT,
    access_restriction_flag  BOOLEAN,
    digitization_status      TEXT,               -- NOT_STARTED, IN_PROGRESS, COMPLETE
    last_accessed_timestamp  TIMESTAMP,
    preservation_plan        TEXT,
    backup_location          TEXT,
    metadata_schema_version  TEXT,
    cataloged_by             TEXT,
    cataloged_timestamp      TIMESTAMP,
    notes                    TEXT,
    digital_identifier       TEXT,
    physical_identifier      TEXT,
    linked_asset_id          INTEGER,
    linked_asset_type        TEXT
);

INSERT INTO archival_catalog VALUES (1,'PRINT','Original Hero Comic Issue #1','Stan Lee','1963-03-01','2022-05-10','Vault A','GOOD','Comic Book','0',32,NULL,'EN','USA','Marvel','FALSE','COMPLETE','2024-05-20 14:30:00','Standard climate control','CloudBackup01','v1.0','Archivist A','2024-01-01 09:00:00','First issue of flagship hero','COMIC-001','PHYS-001',NULL,NULL);
INSERT INTO archival_catalog VALUES (2,'DIGITAL','Animated Series Episode 5','Animation Studio','2020-08-15','2021-01-20','Digital Library','FAIR','MP4','1500',NULL,1800,'EN','USA','Studio','TRUE','IN_PROGRESS','2024-05-18 10:15:00','Ongoing format migration','CloudBackup02','v1.2','Archivist B','2024-02-15 11:00:00','High demand episode','EP5-2020','DIGI-005',1,'PRINT');
INSERT INTO archival_catalog VALUES (3,'AUDIO','Superhero Theme Soundtrack','Composer X','2019-11-01','2020-03-05','Audio Vault','GOOD','FLAC','350','',2100,'EN','USA','Composer X','FALSE','COMPLETE','2024-04-30 16:45:00','Preserve original master','CloudBackup03','v2.0','Archivist C','2024-03-01 12:00:00','Master track for series','TRACK-001','AUDIO-001',NULL,NULL);

-- Fan engagement survey results
CREATE TABLE fan_engagement_survey
(
    survey_id                INTEGER NOT NULL PRIMARY KEY,
    survey_name              TEXT,
    launch_date              DATE,
    close_date               DATE,
    total_respondents        INTEGER,
    average_age              REAL,
    gender_distribution      TEXT,               -- MALE:45,FEMALE:55,OTHER:0
    favorite_character       TEXT,
    satisfaction_score       REAL,               -- 1-10
    likelihood_to_recommend  REAL,               -- NPS style 0-10
    preferred_media_channel  TEXT,
    subscription_status      TEXT,               -- SUBSCRIBER, NON_SUBSCRIBER
    feedback_comments        TEXT,
    net_promoter_score       INTEGER,
    response_rate_percent    REAL,
    incentive_offered        TEXT,
    incentive_redemption_rate REAL,
    survey_platform          TEXT,
    data_quality_flag        BOOLEAN,
    analysis_completed_date  DATE,
    analyst_name             TEXT,
    created_timestamp        TIMESTAMP,
    updated_timestamp        TIMESTAMP,
    notes                    TEXT
);

INSERT INTO fan_engagement_survey VALUES (1,'Spring 2024 Fan Pulse','2024-04-01','2024-04-30',1200,28.5,'MALE:48,FEMALE:52,OTHER:0','Superhero X',8.7,9.2,'Social Media','SUBSCRIBER','Great storylines, love the art','74',65.0,'Free digital wallpaper',0.85,'SurveyMonkey',TRUE,'2024-05-05','Analyst Jane','2024-04-01 08:00:00','2024-05-01 09:30:00','High engagement observed');
INSERT INTO fan_engagement_survey VALUES (2,'Summer 2024 Comic Readiness','2024-07-01','2024-07-31',950,30.1,'MALE:55,FEMALE:44,OTHER:1','Heroine Y',7.9,8.0,'Email Newsletter','NON_SUBSCRIBER','Would like more behind‑the‑scenes content','62',50.0,'Discount coupon for next issue',0.70,'GoogleForms',FALSE,'2024-08-10','Analyst Mike','2024-07-01 09:15:00','2024-08-11 10:45:00','Mixed responses');
INSERT INTO fan_engagement_survey VALUES (3,'Fall 2024 Expansion Survey','2024-10-01','2024-10-31',800,27.3,'MALE:46,FEMALE:53,OTHER:1','Villain Z',8.2,8.8,'Mobile App','SUBSCRIBER','More interactive events needed','68',55.0,'Early access to new episodes',0.80,'Typeform',TRUE,'2024-11-05','Analyst Sara','2024-10-01 07:45:00','2024-11-06 08:20:00','Positive outlook');

-- Media review archive
CREATE TABLE media_review
(
    review_id                INTEGER NOT NULL PRIMARY KEY,
    publication_name         TEXT,
    review_date              DATE,
    reviewer_name            TEXT,
    media_type               TEXT,               -- COMIC, MOVIE, TV_SHOW, GAME
    title_reviewed           TEXT,
    rating_out_of_10         REAL,
    summary_text             TEXT,
    full_review_url          TEXT,
    sentiment                TEXT,               -- POSITIVE, NEGATIVE, NEUTRAL
    circulation_number       INTEGER,
    digital_access_flag      BOOLEAN,
    region_target            TEXT,
    editorial_notes          TEXT,
    embargo_until_date       DATE,
    created_timestamp        TIMESTAMP,
    updated_timestamp        TIMESTAMP,
    notes                    TEXT,
    language                 TEXT,
    publication_type         TEXT,               -- MAGAZINE, ONLINE, BLOG
    audience_demographic     TEXT,
    url_slug                 TEXT,
    source_page_number       INTEGER,
    is_featured_review       BOOLEAN,
    review_category          TEXT
);

INSERT INTO media_review VALUES (1,'Heroic Times','2024-03-15','Alice Monroe','COMIC','Superhero Origin #5',9.0,'A thrilling continuation of the hero''s journey','https://heroitictimes.com/review/sg5','POSITIVE',120000,TRUE,'NorthAmerica','Highlighting strong art direction','2024-04-01','2024-03-15 10:00:00','2024-03-20 11:00:00','Excellent critical reception','EN','MAGAZINE','18-34','heroic-times-sg5',45,TRUE,'Origin Series');
INSERT INTO media_review VALUES (2,'CinemaScope','2024-06-10','Bob Johnson','MOVIE','Superhero X: The Rise','8.5','Action-packed and emotionally resonant','https://cinemascope.com/reviews/superhero-x-rise','POSITIVE',85000,FALSE,'Europe','Strong performances lead to box office success','2024-07-01','2024-06-10 09:30:00','2024-06-12 12:15:00','Box office hit','EN','MAGAZINE','25-45','cinemascope-sxrise',12,FALSE,'Cinematic Universe');
INSERT INTO media_review VALUES (3,'Gaming Pulse','2024-09-05','Clara Lee','GAME','Superhero Quest','7.0','Solid gameplay but lacks innovation','https://gamingpulse.com/review/superhero-quest','NEUTRAL',45000,TRUE,'Asia','Potential for expansion with DLC','2024-10-01','2024-09-05 14:20:00','2024-09-07 15:45:00','Mixed feedback','EN','ONLINE','15-30','gaming-pulse-sq',78,TRUE,'Game Adaptation');

-- International translation contracts
CREATE TABLE international_translation
(
    contract_id               INTEGER NOT NULL PRIMARY KEY,
    language                  TEXT,
    source_material_id        INTEGER,
    source_material_type      TEXT,               -- COMIC, MOVIE, GAME
    translator_agency_name    TEXT,
    start_date                DATE,
    end_date                  DATE,
    cost_usd                  INTEGER,
    royalty_rate_percent      REAL,
    quality_assurance_flag    BOOLEAN,
    revision_allowed          BOOLEAN,
    max_revision_cycles       INTEGER,
    delivery_format           TEXT,               -- EPUB, PDF, SUBTITLE_SRT
    delivery_method           TEXT,               -- EMAIL, FTP, CLOUD
    compliance_standards      TEXT,
    notes                     TEXT,
    created_timestamp         TIMESTAMP,
    updated_timestamp         TIMESTAMP,
    contract_status           TEXT,               -- ACTIVE, COMPLETED, CANCELLED
    payer_company_name        TEXT,
    payment_terms_days        INTEGER,
    archive_location          TEXT,
    audit_required            BOOLEAN,
    last_audit_date           DATE,
    contract_version          TEXT,
    approved_by               TEXT
);

INSERT INTO international_translation VALUES (1,'Spanish',101,'COMIC','Linguistica SA','2024-02-01','2024-07-31',30000,8.0,TRUE,TRUE,2,'PDF','FTP','ISO9001','Translation of flagship comic series','2024-02-01 08:00:00','2024-07-31 17:00:00','COMPLETED','Global Publishing','30','Archives/Spanish','TRUE','2024-08-01','v1.0','Maria Gomez');
INSERT INTO international_translation VALUES (2,'Japanese',202,'MOVIE','NihonTrans Ltd','2024-04-15','2024-12-31',80000,12.5,TRUE,FALSE,0,'SUBTITLE_SRT','CLOUD','JIS_X_0208','Japanese subtitles for blockbuster','2024-04-15 09:30:00','2024-12-31 18:00:00','ACTIVE','Film Studios Inc','45','Archives/Japanese','FALSE',NULL,'v2.1','Ken Tanaka');
INSERT INTO international_translation VALUES (3,'German',303,'GAME','DeutschGames GmbH','2024-05-01','2025-04-30',60000,10.0,TRUE,TRUE,3,'EPUB','EMAIL','DIN_66430','Localization of game UI and dialogue','2024-05-01 07:45:00','2025-04-30 16:30:00','ACTIVE','Game World Ltd','60','Archives/German','TRUE','2025-05-15','v1.2','Anna Schreiber');

-- Soundtrack release metadata
CREATE TABLE soundtrack_release
(
    release_id                INTEGER NOT NULL PRIMARY KEY,
    title                     TEXT,
    composer_name             TEXT,
    release_date              DATE,
    label_name                TEXT,
    format_type               TEXT,               -- CD, DIGITAL, VINYL
    total_tracks              INTEGER,
    total_duration_sec        INTEGER,
    genre                     TEXT,
    language                  TEXT,
    is_explicit               BOOLEAN,
    barcode                   TEXT,
    upc                       TEXT,
    catalog_number            TEXT,
    producer_name             TEXT,
    recording_studio          TEXT,
    mastering_engineer        TEXT,
    distribution_partner      TEXT,
    royalty_rate_percent      REAL,
    digital_sales_usd         INTEGER,
    physical_sales_units      INTEGER,
    streaming_equivalent_units INTEGER,
    created_timestamp         TIMESTAMP,
    updated_timestamp         TIMESTAMP,
    notes                     TEXT,
    is_limited_edition        BOOLEAN,
    edition_number            INTEGER,
    special_features          TEXT,
    artwork_credit            TEXT
);

INSERT INTO soundtrack_release VALUES (1,'Heroic Themes Vol1','John Composer','2024-03-01','Epic Sounds','DIGITAL',12,3600,'Orchestral','EN',FALSE,'123456789012','987654321098','ESV1','Laura Producer','Sunset Studios','Mike Master','Global Distribute','12.0',50000,0,20000,'2024-03-01 09:00:00','2024-06-01 10:00:00','Initial digital release',FALSE,NULL,'Bonus track: Heroic Overture','Artwork by Alex Art');
INSERT INTO soundtrack_release VALUES (2,'Villainous Beats','Sarah Beats','2024-05-15','Dark Wave Records','VINYL',10,3200,'Electronic','EN',TRUE,'234567890123','876543210987','DWB2','Mark Engineer','Night Studio','Eve Master','Vinyl Distribute','15.5',15000,5000,8000,'2024-05-15 11:30:00','2024-09-01 12:15:00','Limited vinyl pressing',TRUE,500,'Includes hidden track','Cover art by Nina Design');
INSERT INTO soundtrack_release VALUES (3,'Adventure Mix','Liam Mixmaster','2024-08-20','Adventure Tunes','CD',15,4500,'World','EN',FALSE,'345678901234','765432109876','ADM3','Olivia Producer','Global Studio','Sam Master','Universal Music','10.0',25000,20000,12000,'2024-08-20 14:00:00','2024-12-01 15:30:00','Standard CD release with booklet',FALSE,NULL,'Interview with composers','Artwork by Carlos Visual');

-- Themed event schedule
CREATE TABLE themed_event
(
    event_id                  INTEGER NOT NULL PRIMARY KEY,
    event_name                TEXT,
    theme_description         TEXT,
    start_date                DATE,
    end_date                  DATE,
    venue_id                  INTEGER,
    expected_attendance       INTEGER,
    ticket_price_usd          INTEGER,
    vip_package_price_usd     INTEGER,
    sponsor_name              TEXT,
    sponsor_level             TEXT,
    live_stream_flag          BOOLEAN,
    streaming_platform        TEXT,
    catering_partner          TEXT,
    merchandise_partner       TEXT,
    security_agency           TEXT,
    health_protocols_flag     BOOLEAN,
    covid_vaccination_required BOOLEAN,
    event_status              TEXT,               -- PLANNED, CONFIRMED, CANCELLED
    event_manager_name        TEXT,
    event_manager_phone       TEXT,
    event_manager_email       TEXT,
    created_timestamp         TIMESTAMP,
    updated_timestamp         TIMESTAMP,
    notes                     TEXT,
    social_media_hashtag      TEXT,
    press_release_url         TEXT,
    last_update_note          TEXT
);

INSERT INTO themed_event VALUES (1,'Superhero Fan Fest','Celebration of all things superhero',2024-09-10,2024-09-12,2,15000,50,150,'MegaCorp','GOLD',TRUE,'StreamHub','TasteBuds Catering','HeroMerch Co','SecureNow','TRUE',TRUE,'CONFIRMED','Emily Clark','5552221111','emily.clark@eventco.com','2024-04-01 09:00:00','2024-07-15 10:30:00','First major fan event of the year','#SuperheroFest','https://press.example.com/sf2024','Updated schedule added');
INSERT INTO themed_event VALUES (2,'Villainous Gala','Evening gala for villain enthusiasts',2024-11-05,2024-11-05,3,3000,75,250,'DarkCo','SILVER',FALSE,NULL,'Gourmet Nights','VillainWear','GuardPro','TRUE',FALSE,'PLANNED','Carlos Perez','5553334444','carlos.perez@eventco.com','2024-05-10 08:45:00','2024-05-20 09:15:00','Venue under negotiation','VillainGala2024','https://press.example.com/vg2024','Awaiting final venue confirmation');
INSERT INTO themed_event VALUES (3,'Arcade Retro Night','Retro gaming and comic showcase',2024-12-20,2024-12-20,1,8000,30,100,'RetroTech','BRONZE',TRUE,'GameStream','PixelBites','RetroGear','SecureNow','TRUE',TRUE,'CONFIRMED','Sophie Liu','5554445555','sophie.liu@eventco.com','2024-06-01 11:20:00','2024-08-01 12:40:00','Include competitive gaming tournament','RetroArcade2024','https://press.example.com/ran2024','Added tournament prizes');