-- Editorial staff involved in publishing comics and related media
CREATE TABLE editorial_staff
(
    staff_id            INTEGER    NOT NULL PRIMARY KEY,
    first_name          TEXT       DEFAULT NULL,
    last_name           TEXT       DEFAULT NULL,
    role                TEXT       DEFAULT NULL,
    hire_date           TEXT       DEFAULT NULL,
    termination_date    TEXT       DEFAULT NULL,
    email               TEXT       DEFAULT NULL,
    phone               TEXT       DEFAULT NULL,
    office_location     TEXT       DEFAULT NULL,
    salary              INTEGER    DEFAULT NULL,
    manager_id          INTEGER    DEFAULT NULL,
    department          TEXT       DEFAULT NULL,
    years_experience    INTEGER    DEFAULT NULL,
    education_level     TEXT       DEFAULT NULL,
    previous_employer   TEXT       DEFAULT NULL,
    linkedin_profile    TEXT       DEFAULT NULL,
    performance_score   INTEGER    DEFAULT NULL,
    notes               TEXT       DEFAULT NULL,
    is_active           INTEGER    DEFAULT NULL,
    contract_type       TEXT       DEFAULT NULL
);

INSERT INTO editorial_staff VALUES (1, 'Anna', 'Smith', 'EditorInChief', '2010-06-01', NULL, 'anna.smith@example.com', '5551234001', 'HQ-12A', 120000, NULL, 'Editorial', 12, 'Masters', 'MagazineCo', 'linkedin.com/in/annasmith', 95, 'Lead of flagship titles', 1, 'FullTime');
INSERT INTO editorial_staff VALUES (2, 'Brian', 'Lee', 'AssociateEditor', '2015-03-15', NULL, 'brian.lee@example.com', '5551234002', 'HQ-12B', 85000, 1, 'Editorial', 7, 'Bachelors', 'NewsDaily', 'linkedin.com/in/brianlee', 88, 'Handles secondary series', 1, 'FullTime');
INSERT INTO editorial_staff VALUES (3, 'Carla', 'Diaz', 'CopyEditor', '2018-09-10', NULL, 'carla.diaz@example.com', '5551234003', 'HQ-12C', 65000, 2, 'Editorial', 4, 'Bachelors', 'PrintWorks', 'linkedin.com/in/carladiaz', 81, 'Proofreads scripts', 1, 'Contract');

-- Creative team members responsible for story and art creation
CREATE TABLE creative_team
(
    creator_id            INTEGER    NOT NULL PRIMARY KEY,
    first_name            TEXT       DEFAULT NULL,
    last_name             TEXT       DEFAULT NULL,
    specialty             TEXT       DEFAULT NULL,
    hired_year            INTEGER    DEFAULT NULL,
    agency                TEXT       DEFAULT NULL,
    email                 TEXT       DEFAULT NULL,
    phone                 TEXT       DEFAULT NULL,
    portfolio_url         TEXT       DEFAULT NULL,
    hourly_rate_usd       INTEGER    DEFAULT NULL,
    availability_status   TEXT       DEFAULT NULL,
    primary_language      TEXT       DEFAULT NULL,
    secondary_language    TEXT       DEFAULT NULL,
    awards_won            INTEGER    DEFAULT NULL,
    last_project_title    TEXT       DEFAULT NULL,
    last_project_year     INTEGER    DEFAULT NULL,
    contract_start_date   TEXT       DEFAULT NULL,
    contract_end_date     TEXT       DEFAULT NULL,
    is_freelance          INTEGER    DEFAULT NULL,
    notes                 TEXT       DEFAULT NULL,
    tax_id                TEXT       DEFAULT NULL,
    bank_account_number   TEXT       DEFAULT NULL
);

INSERT INTO creative_team VALUES (101, 'David', 'Morris', 'Writer', 2012, 'StoryHub', 'david.morris@example.com', '5551235001', 'davidmorris.com', 120, 'Active', 'English', 'Spanish', 3, 'Infinity Quest', 2023, '2022-01-01', NULL, 0, 'Preferred for sci fi arcs', 'TX123456', 'US001234567');
INSERT INTO creative_team VALUES (102, 'Elena', 'Kwon', 'Illustrator', 2016, 'ArtForge', 'elena.kwon@example.com', '5551235002', 'elenakwonart.com', 150, 'Active', 'English', 'Korean', 5, 'Night Shadows', 2022, '2021-06-15', NULL, 0, 'Strong line work', 'TX654321', 'US009876543');
INSERT INTO creative_team VALUES (103, 'Felix', 'Ng', 'Colorist', 2019, 'HueStudio', 'felix.ng@example.com', '5551235003', 'felixngcolors.com', 100, 'OnHold', 'English', 'Mandarin', 1, 'Solar Flare', 2021, '2021-11-01', '2023-10-31', 1, 'Seasonal contract', 'TX112233', 'US005555555');

-- Animation studios that produce animated adaptations
CREATE TABLE animation_studio
(
    studio_id            INTEGER    NOT NULL PRIMARY KEY,
    studio_name          TEXT       DEFAULT NULL,
    headquarters_city    TEXT       DEFAULT NULL,
    founded_year         INTEGER    DEFAULT NULL,
    ceo_name             TEXT       DEFAULT NULL,
    employee_count       INTEGER    DEFAULT NULL,
    annual_budget_usd    INTEGER    DEFAULT NULL,
    primary_technology   TEXT       DEFAULT NULL,
    secondary_technology TEXT       DEFAULT NULL,
    domestic_market_share_percent INTEGER DEFAULT NULL,
    international_market_share_percent INTEGER DEFAULT NULL,
    main_genre           TEXT       DEFAULT NULL,
    most_successful_title TEXT      DEFAULT NULL,
    latest_release_title TEXT      DEFAULT NULL,
    latest_release_year  INTEGER    DEFAULT NULL,
    contact_email        TEXT       DEFAULT NULL,
    contact_phone        TEXT       DEFAULT NULL,
    website_url          TEXT       DEFAULT NULL,
    active_projects      INTEGER    DEFAULT NULL,
    completed_projects   INTEGER    DEFAULT NULL,
    awards_won           INTEGER    DEFAULT NULL,
    certification_iso9001 INTEGER   DEFAULT NULL,
    notes                TEXT       DEFAULT NULL,
    tax_id               TEXT       DEFAULT NULL,
    bank_account_number  TEXT       DEFAULT NULL,
    is_partner           INTEGER    DEFAULT NULL,
    partnership_level    TEXT       DEFAULT NULL
);

INSERT INTO animation_studio VALUES (201, 'PixelWave Studios', 'LosAngeles', 2005, 'Greg Howard', 250, 30000000, 'Maya', 'Blender', 12, 8, 'Action', 'Galaxy Guardians', 'Eternal Dawn', 2024, 'contact@pixelwave.com', '5551240001', 'pixelwave.com', 5, 38, 7, 1, 'Key partner for animated series', 'TX998877', 'US002222222', 1, 'Gold');
INSERT INTO animation_study VALUES (202, 'DreamForge Animation', 'Vancouver', 2010, 'Laura Chen', 180, 20000000, 'Cinema4D', 'Houdini', 9, 6, 'Fantasy', 'Mystic Realm', 'Shadow Rift', 2023, 'info@dreamforge.ca', '5551240002', 'dreamforge.ca', 3, 27, 4, 1, 'Focus on streaming platforms', 'TX887766', 'US003333333', 1, 'Silver');
INSERT INTO animation_studio VALUES (203, 'RetroMotion Labs', 'Tokyo', 1998, 'Kenji Yamamoto', 320, 45000000, '3ds Max', 'Unity', 15, 10, 'Superhero', 'Chrono Knights', 'Solar Surge', 2022, 'support@retromotion.jp', '5551240003', 'retromotion.jp', 2, 45, 10, 1, 'Specializes in 2D/3D hybrid', 'TX776655', 'US004444444', 1, 'Platinum');

-- Toy manufacturers producing merchandise based on heroes
CREATE TABLE toy_manufacturer
(
    manufacturer_id        INTEGER    NOT NULL PRIMARY KEY,
    company_name           TEXT       DEFAULT NULL,
    headquarters_state     TEXT       DEFAULT NULL,
    founded_year           INTEGER    DEFAULT NULL,
    ceo_name               TEXT       DEFAULT NULL,
    employee_count         INTEGER    DEFAULT NULL,
    annual_revenue_usd     INTEGER    DEFAULT NULL,
    primary_product_line   TEXT       DEFAULT NULL,
    safety_certification   TEXT       DEFAULT NULL,
    main_distribution_region TEXT     DEFAULT NULL,
    flagship_toy_series    TEXT       DEFAULT NULL,
    latest_release_name    TEXT       DEFAULT NULL,
    latest_release_year    INTEGER    DEFAULT NULL,
    contact_email          TEXT       DEFAULT NULL,
    contact_phone          TEXT       DEFAULT NULL,
    website_url            TEXT       DEFAULT NULL,
    compliance_audit_score INTEGER    DEFAULT NULL,
    has_r_and_d_center     INTEGER    DEFAULT NULL,
    r_and_d_budget_usd      INTEGER    DEFAULT NULL,
    export_percentage      INTEGER    DEFAULT NULL,
    sustainability_rating  INTEGER    DEFAULT NULL,
    notes                  TEXT       DEFAULT NULL,
    tax_id                 TEXT       DEFAULT NULL,
    bank_account_number    TEXT       DEFAULT NULL,
    is_licensed_partner    INTEGER    DEFAULT NULL,
    licensing_agreement_id INTEGER    DEFAULT NULL,
    partnership_tier       TEXT       DEFAULT NULL,
    last_audit_date        TEXT       DEFAULT NULL,
    is_active              INTEGER    DEFAULT NULL
);

INSERT INTO toy_manufacturer VALUES (301, 'ActionPlay Toys', 'California', 1995, 'Mark Daniels', 500, 75000000, 'ActionFigures', 'ASTM', 'NorthAmerica', 'HeroForce', 'UltraBlade', 2024, 'sales@actionplay.com', '5551250001', 'actionplay.com', 92, 1, 8000000, 40, 85, 'Top seller in Q3', 'TX665544', 'US005555555', 1, 401, 'Platinum', '2023-12-01', 1);
INSERT INTO toy_manufacturer VALUES (302, 'MiniMighty Inc', 'Ontario', 2002, 'Susan Patel', 250, 32000000, 'Collectibles', 'ISO9001', 'Europe', 'MiniMighty', 'MicroShield', 2023, 'info@minimighty.ca', '5551250002', 'minimighty.ca', 88, 1, 3000000, 30, 78, 'Expanding to Asia market', 'TX554433', 'US006666666', 1, 402, 'Gold', '2023-06-15', 1);
INSERT INTO toy_manufacturer VALUES (303, 'PlaySphere Ltd', 'Yorkshire', 2010, 'David Fletcher', 120, 18000000, 'BoardGames', 'CE', 'Global', 'PlaySphere', 'GalaxyQuest', 2022, 'contact@playsphere.uk', '5551250003', 'playsphere.uk', 81, 0, 0, 15, 70, 'Focus on educational toys', 'TX443322', 'US007777777', 0, NULL, NULL, '2022-11-20', 1);

-- Soundtrack releases tied to comic media
CREATE TABLE soundtrack_release
(
    soundtrack_id          INTEGER    NOT NULL PRIMARY KEY,
    title                  TEXT       DEFAULT NULL,
    composer               TEXT       DEFAULT NULL,
    release_year           INTEGER    DEFAULT NULL,
    label                  TEXT       DEFAULT NULL,
    genre                  TEXT       DEFAULT NULL,
    duration_seconds       INTEGER    DEFAULT NULL,
    format_cd              INTEGER    DEFAULT NULL,
    format_digital         INTEGER    DEFAULT NULL,
    upc_code               TEXT       DEFAULT NULL,
    is_explicit            INTEGER    DEFAULT NULL,
    producer               TEXT       DEFAULT NULL,
    recording_studio       TEXT       DEFAULT NULL,
    mastering_engineer     TEXT       DEFAULT NULL,
    artwork_designer       TEXT       DEFAULT NULL,
    sales_units_usd        INTEGER    DEFAULT NULL,
    streaming_plays_millions INTEGER   DEFAULT NULL,
    chart_peak_position    INTEGER    DEFAULT NULL,
    awards_won             INTEGER    DEFAULT NULL,
    notes                  TEXT       DEFAULT NULL,
    copyright_year         INTEGER    DEFAULT NULL,
    licensing_agreement_id INTEGER   DEFAULT NULL,
    is_verified            INTEGER    DEFAULT NULL,
    last_updated           TEXT       DEFAULT NULL,
    tax_id                 TEXT       DEFAULT NULL,
    bank_account_number    TEXT       DEFAULT NULL,
    is_active              INTEGER    DEFAULT NULL,
    distribution_region    TEXT       DEFAULT NULL,
    barcode_ean            TEXT       DEFAULT NULL
);

INSERT INTO soundtrack_release VALUES (401, 'Epic Origins', 'Liam Harper', 2023, 'HeroicSounds', 'Orchestral', 5400, 1, 1, '123456789012', 0, 'Mia Torres', 'Sunrise Studios', 'Evan Kline', 'Olivia Reed', 250000, 15, 2, 3, 'Main theme for Galaxy Guardians', 2023, 401, 1, '2024-01-05', 'TX332211', 'US008888888', 1, 'Global', '4001234567890');
INSERT INTO soundtrack_release VALUES (402, 'Shadow Realm Suite', 'Nina Patel', 2022, 'DarkWave Records', 'Ambient', 3600, 0, 1, '987654321098', 0, 'Samir Khan', 'Nightfall Labs', 'Rita Gomez', 'Victor Lei', 180000, 9, 5, 1, 'Tie‑in with Mystic Realm series', 2022, 402, 1, '2023-11-20', 'TX221100', 'US009999999', 1, 'NorthAmerica', '4010987654321');
INSERT INTO soundtrack_release VALUES (403, 'Retro Heroics', 'Carlos Mendes', 2021, 'PixelBeat', 'Synthwave', 4200, 1, 0, '555666777888', 1, 'Ava Liu', 'RetroMotion Labs', 'Leon Ortiz', 'Mark Dorian', 95000, 4, 12, 0, 'Limited edition vinyl', 2021, 403, 1, '2022-07-15', 'TX110099', 'US001111111', 1, 'Europe', '4025556667778');

-- Inventory of physical props used in promotional events
CREATE TABLE prop_inventory
(
    prop_id               INTEGER    NOT NULL PRIMARY KEY,
    prop_name             TEXT       DEFAULT NULL,
    description           TEXT       DEFAULT NULL,
    material              TEXT       DEFAULT NULL,
    weight_kg             REAL       DEFAULT NULL,
    dimensions_cm         TEXT       DEFAULT NULL,
    acquisition_date      TEXT       DEFAULT NULL,
    acquired_from         TEXT       DEFAULT NULL,
    cost_usd              INTEGER    DEFAULT NULL,
    current_location      TEXT       DEFAULT NULL,
    condition_rating      INTEGER    DEFAULT NULL,
    last_maintenance_date TEXT       DEFAULT NULL,
    maintenance_notes     TEXT       DEFAULT NULL,
    last_used_event_id    INTEGER    DEFAULT NULL,
    is_reserved           INTEGER    DEFAULT NULL,
    reserved_by           TEXT       DEFAULT NULL,
    reservation_start     TEXT       DEFAULT NULL,
    reservation_end       TEXT       DEFAULT NULL,
    insurance_policy_no   TEXT       DEFAULT NULL,
    insurance_expiry      TEXT       DEFAULT NULL,
    responsible_staff_id  INTEGER    DEFAULT NULL,
    notes                 TEXT       DEFAULT NULL,
    tax_id                TEXT       DEFAULT NULL,
    bank_account_number   TEXT       DEFAULT NULL,
    is_active             INTEGER    DEFAULT NULL,
    depreciation_percent  INTEGER    DEFAULT NULL,
    disposal_date         TEXT       DEFAULT NULL,
    disposal_reason       TEXT       DEFAULT NULL,
    last_audit_date       TEXT       DEFAULT NULL,
    compliance_status    TEXT       DEFAULT NULL,
    barcode               TEXT       DEFAULT NULL,
    asset_tag             TEXT       DEFAULT NULL
);

INSERT INTO prop_inventory VALUES (501, 'HeroForce Helmet', 'Full size replica helmet used at conventions', 'Fiberglass', 2.5, '30x25x20', '2022-02-18', 'PropWorks', 1500, 'HQ Storage', 9, '2023-09-01', 'Polished surface', 301, 0, NULL, NULL, NULL, 'INS12345', '2025-12-31', 2, 'Displayed at major fan events', 'TX990099', 'US010101010', 1, 15, NULL, NULL, '2023-11-20', 'Compliant', 'B001234567', 'PT-001');
INSERT INTO prop_inventory VALUES (502, 'Mystic Realm Staff', 'Wooden staff with glowing crystal', 'Wood, Acrylic', 3.2, '10x10x180', '2021-07-10', 'ArtisanGuild', 900, 'Event Cart 3', 8, '2023-03-15', 'Crystal replaced', 302, 1, 'Emily Clark', '2024-05-01', '2024-05-03', 'INS54321', '2024-11-30', 3, 'Reserved for upcoming convention', 'TX880088', 'US020202020', 1, 12, NULL, NULL, '2023-08-05', 'Compliant', 'B001234568', 'PT-002');
INSERT INTO prop_inventory VALUES (503, 'Retro Motion Drone', 'Miniature drone prop for photo shoots', 'Plastic, Metal', 0.7, '15x15x5', '2020-11-05', 'GadgetSupply', 250, 'Media Lab', 7, '2022-12-20', 'Battery replaced', 303, 0, NULL, NULL, NULL, 'INS67890', '2023-10-31', 4, 'Needs replacement soon', 'TX770077', 'US030303030', 1, 20, '2023-10-31', 'End of life', '2023-10-31', 'Expired', 'B001234569', 'PT-003');

-- Canonical timeline entries for major storyline events
CREATE TABLE canon_timeline
(
    timeline_id            INTEGER    NOT NULL PRIMARY KEY,
    event_name             TEXT       DEFAULT NULL,
    description            TEXT       DEFAULT NULL,
    start_year             INTEGER    DEFAULT NULL,
    end_year               INTEGER    DEFAULT NULL,
    involved_heroes        TEXT       DEFAULT NULL,
    involved_villains      TEXT       DEFAULT NULL,
    location               TEXT       DEFAULT NULL,
    impact_score           INTEGER    DEFAULT NULL,
    continuity_notes       TEXT       DEFAULT NULL,
    first_appearance_issue TEXT      DEFAULT NULL,
    first_appearance_date  TEXT       DEFAULT NULL,
    writer                 TEXT       DEFAULT NULL,
    artist                 TEXT       DEFAULT NULL,
    editor                 TEXT       DEFAULT NULL,
    is_canonical           INTEGER    DEFAULT NULL,
    fan_reception_score    INTEGER    DEFAULT NULL,
    major_twist            TEXT       DEFAULT NULL,
    follow_up_event_id     INTEGER    DEFAULT NULL,
    related_media          TEXT       DEFAULT NULL,
    merchandising_impact   INTEGER    DEFAULT NULL,
    tv_adaptation          TEXT       DEFAULT NULL,
    movie_adaptation       TEXT       DEFAULT NULL,
    graphic_novel          TEXT       DEFAULT NULL,
    gaming_crossover       TEXT       DEFAULT NULL,
    notes                  TEXT       DEFAULT NULL,
    created_at             TEXT       DEFAULT NULL,
    updated_at             TEXT       DEFAULT NULL,
    is_active              INTEGER    DEFAULT NULL,
    source_material        TEXT       DEFAULT NULL,
    verification_status    TEXT       DEFAULT NULL,
    external_reference_id  TEXT       DEFAULT NULL,
    audit_trail            TEXT       DEFAULT NULL,
    archival_location      TEXT       DEFAULT NULL
);

INSERT INTO canon_timeline VALUES (601, 'Origin of Galaxy Guardians', 'First formation of the core team', 2015, 2015, 'StarLord, Nova', 'VoidLord', 'Cosmos City', 95, 'Set the tone for the series', 'GI-001', '2015-03-10', 'Alan Reed', 'Mia Torres', 'Laura Chen', 1, 90, 'Secret identity reveal', 602, 'AnimatedSeriesS1', 80, 'TV Series Season 1', 'Movie Part I', 'GraphicNovel Vol1', 'GameX', 'High fan engagement', '2024-01-01', '2024-01-02', 1, 'ComicIssue', 'Verified', 'REF601', 'Created by editorial staff', 'Archive/2015');
INSERT INTO canon_timeline VALUES (602, 'Shadow Rift Invasion', 'Villains breach the dimensional barrier', 2016, 2016, 'Nova, Eclipse', 'ShadeMaster', 'Shadow Rift', 88, 'Introduced multiverse concept', 'GI-045', '2016-07-22', 'Sofia Liu', 'Kenji Yamamoto', 'Mark Daniels', 1, 85, 'Hero sacrifices power', 603, 'Novelization', 70, 'TV Series Season 2', 'Movie Part II', 'GraphicNovel Vol2', 'GameY', 'Mixed fan reception', '2024-02-01', '2024-02-05', 1, 'ComicIssue', 'Verified', 'REF602', 'Reviewed by continuity team', 'Archive/2016');
INSERT INTO canon_timeline VALUES (603, 'Eternal Dawn', 'Resolution of the Rift conflict', 2017, 2017, 'StarLord, Nova, Eclipse', 'VoidLord', 'Cosmos City', 92, 'Wraps major arc', 'GI-089', '2017-12-15', 'Liam Harper', 'Elena Kwon', 'Laura Chen', 1, 93, 'New hero introduced', NULL, 'Film Adaptation', 85, 'TV Series Finale', 'Movie Part III', 'GraphicNovel Vol3', 'GameZ', 'Critical acclaim', '2024-03-01', '2024-03-03', 1, 'ComicIssue', 'Verified', 'REF603', 'Final sign‑off by editors', 'Archive/2017');

-- Fan club membership records
CREATE TABLE fan_club
(
    club_id               INTEGER    NOT NULL PRIMARY KEY,
    club_name             TEXT       DEFAULT NULL,
    founding_date         TEXT       DEFAULT NULL,
    founder_name          TEXT       DEFAULT NULL,
    headquarters_city     TEXT       DEFAULT NULL,
    membership_fee_usd    INTEGER    DEFAULT NULL,
    max_members           INTEGER    DEFAULT NULL,
    current_member_count INTEGER    DEFAULT NULL,
    season_pass_available INTEGER   DEFAULT NULL,
    official_website      TEXT       DEFAULT NULL,
    contact_email         TEXT       DEFAULT NULL,
    contact_phone         TEXT       DEFAULT NULL,
    social_media_facebook TEXT       DEFAULT NULL,
    social_media_twitter  TEXT       DEFAULT NULL,
    social_media_instagram TEXT      DEFAULT NULL,
    newsletter_frequency TEXT       DEFAULT NULL,
    average_event_attendance INTEGER DEFAULT NULL,
    total_events_hosted   INTEGER    DEFAULT NULL,
    flagship_event_name   TEXT       DEFAULT NULL,
    charity_partners      TEXT       DEFAULT NULL,
    sponsor_name          TEXT       DEFAULT NULL,
    sponsor_level         TEXT       DEFAULT NULL,
    is_registered_nonprofit INTEGER  DEFAULT NULL,
    tax_exempt_status     TEXT       DEFAULT NULL,
    last_audit_date      TEXT       DEFAULT NULL,
    audit_score          INTEGER    DEFAULT NULL,
    notes                TEXT       DEFAULT NULL,
    is_active            INTEGER    DEFAULT NULL,
    verification_code    TEXT       DEFAULT NULL,
    created_at           TEXT       DEFAULT NULL,
    updated_at           TEXT       DEFAULT NULL,
    compliance_document  TEXT       DEFAULT NULL,
    board_chairperson    TEXT       DEFAULT NULL,
    board_secretary      TEXT       DEFAULT NULL,
    board_treasurer      TEXT       DEFAULT NULL,
    mailing_list_size    INTEGER    DEFAULT NULL,
    preferred_contact_method TEXT   DEFAULT NULL,
    archival_reference   TEXT       DEFAULT NULL
);

INSERT INTO fan_club VALUES (701, 'Galaxy Guardians Fan Alliance', '2015-01-20', 'Emily Clarke', 'NewYork', 25, 5000, 3420, 1, 'ggfa.org', 'info@ggfa.org', '5551260001', 'ggfaFB', 'ggfaTW', 'ggfaIG', 'Monthly', 120, 45, 'Annual Gala', 'ChildrenHospital', 'MegaCorp', 'Platinum', 1, '501c3', '2023-12-01', 94, 'Strong community engagement', 1, 'VER701', '2024-01-01', '2024-01-01', 'Doc701', 'Laura Chen', 'Mark Daniels', 'Susan Patel', 3400, 'Email', 'Archive/FC701');
INSERT INTO fan_club VALUES (702, 'Mystic Realm Enthusiasts', '2017-05-15', 'Raj Patel', 'LosAngeles', 20, 3000, 2150, 0, 'mre.org', 'contact@mre.org', '5551260002', 'mreFB', 'mreTW', 'mreIG', 'Quarterly', 80, 30, 'Summer Con', 'ArtFoundation', 'CreativeInc', 'Gold', 1, '501c3', '2023-11-20', 89, 'Active online forums', 1, 'VER702', '2024-01-02', '2024-01-02', 'Doc702', 'David Morris', 'Elena Kwon', 'Felix Ng', 2100, 'Phone', 'Archive/FC702');
INSERT INTO fan_club VALUES (703, 'Retro Motion Collectors Club', '2012-09-10', 'Sophie Turner', 'Chicago', 15, 2000, 1800, 0, 'rmcc.org', 'hello@rmcc.org', '5551260003', 'rmccFB', 'rmccTW', 'rmccIG', 'BiMonthly', 60, 25, 'Retro Expo', 'LocalMuseum', 'RetroCo', 'Silver', 0, NULL, '2023-10-15', 84, 'Focus on vintage merchandise', 1, 'VER703', '2024-01-03', '2024-01-03', 'Doc703', 'Mark Daniels', 'Susan Patel', 'David Fletcher', 1500, 'Mail', 'Archive/FC703');

-- Sponsorship deals for events and media
CREATE TABLE sponsorship_deal
(
    deal_id               INTEGER    NOT NULL PRIMARY KEY,
    sponsor_name          TEXT       DEFAULT NULL,
    sponsor_industry      TEXT       DEFAULT NULL,
    contract_start_date   TEXT       DEFAULT NULL,
    contract_end_date     TEXT       DEFAULT NULL,
    total_value_usd       INTEGER    DEFAULT NULL,
    payment_terms         TEXT       DEFAULT NULL,
    exclusive_rights      TEXT       DEFAULT NULL,
    branding_locations    TEXT       DEFAULT NULL,
    activation_events     TEXT       DEFAULT NULL,
    media_mentions        INTEGER    DEFAULT NULL,
    on_site_promotions    INTEGER    DEFAULT NULL,
    digital_campaigns     INTEGER    DEFAULT NULL,
    product_samples_qty   INTEGER    DEFAULT NULL,
    custom_content_created INTEGER   DEFAULT NULL,
    compliance_audit_score INTEGER   DEFAULT NULL,
    legal_reviewed_by     TEXT       DEFAULT NULL,
    notes                 TEXT       DEFAULT NULL,
    is_active             INTEGER    DEFAULT NULL,
    renewal_option_months INTEGER    DEFAULT NULL,
    termination_clause    TEXT       DEFAULT NULL,
    governing_law         TEXT       DEFAULT NULL,
    audit_trail           TEXT       DEFAULT NULL,
    created_at            TEXT       DEFAULT NULL,
    updated_at            TEXT       DEFAULT NULL,
    verification_status   TEXT       DEFAULT NULL,
    approved_by           TEXT       DEFAULT NULL,
    financial_officer     TEXT       DEFAULT NULL,
    tax_id                TEXT       DEFAULT NULL,
    bank_account_number   TEXT       DEFAULT NULL,
    contract_document_uri TEXT       DEFAULT NULL,
    related_event_id      INTEGER    DEFAULT NULL,
    related_media_id      INTEGER    DEFAULT NULL,
    sponsor_contact_name  TEXT       DEFAULT NULL,
    sponsor_contact_email TEXT       DEFAULT NULL,
    sponsor_contact_phone TEXT       DEFAULT NULL,
    internal_owner        TEXT       DEFAULT NULL,
    remarks               TEXT       DEFAULT NULL,
    archiving_location    TEXT       DEFAULT NULL
);

INSERT INTO sponsorship_deal VALUES (801, 'MegaCorp', 'Technology', '2023-01-01', '2025-12-31', 500000, 'Net30', 'ExclusiveTechPartner', 'StageBackdrops,WebsiteBanner', 'LaunchEvent,AnnualCon', 12, 8, 5, 2000, 3, 95, 'LegalTeamA', 'High visibility across channels', 1, 12, '30dayNotice', 'CA', 'AuditLog801', '2024-01-01', '2024-01-02', 'Verified', 'Laura Chen', 'Mark Daniels', 'TX995566', 'US011111111', 'contracts/801.pdf', 701, NULL, 'John Doe', 'john.doe@megacorp.com', '5551270001', 'SponsorshipMgr', 'Renewal pending', 'Archive/SD801');
INSERT INTO sponsorship_deal VALUES (802, 'CreativeInc', 'Entertainment', '2022-06-15', '2024-06-14', 300000, 'Net45', 'CoBranding', 'MerchStalls,SocialMedia', 'SummerCon,OnlineSeries', 9, 6, 4, 1500, 2, 88, 'LegalTeamB', 'Cross‑promotional content created', 1, 6, 'EarlyTerminationFee', 'NY', 'AuditLog802', '2024-01-03', '2024-01-04', 'Verified', 'Emily Clark', 'Susan Patel', 'TX884455', 'US022222222', 'contracts/802.pdf', 702, NULL, 'Alice Smith', 'alice.smith@creativeinc.com', '5551270002', 'MarketingLead', 'Consider extension', 'Archive/SD802');
INSERT INTO sponsorship_deal VALUES (803, 'RetroCo', 'Collectibles', '2021-03-01', '2023-02-28', 150000, 'Net60', 'LimitedEdition', 'PopUpBooth,Newsletter', 'RetroExpo', 5, 3, 2, 800, 1, 80, 'LegalTeamC', 'Focused on niche audience', 0, 0, 'NoRenewal', 'TX', 'AuditLog803', '2024-01-05', '2024-01-06', 'Verified', 'David Morris', 'Felix Ng', 'TX773344', 'US033333333', 'contracts/803.pdf', 703, NULL, 'Bob Lee', 'bob.lee@retroco.com', '5551270003', 'EventCoordinator', 'Deal concluded', 'Archive/SD803');

-- Social media metrics for promotional campaigns
CREATE TABLE social_media_metrics
(
    metric_id               INTEGER    NOT NULL PRIMARY KEY,
    platform_name           TEXT       DEFAULT NULL,
    campaign_name           TEXT       DEFAULT NULL,
    start_date              TEXT       DEFAULT NULL,
    end_date                TEXT       DEFAULT NULL,
    total_impressions       INTEGER    DEFAULT NULL,
    total_clicks            INTEGER    DEFAULT NULL,
    click_through_rate      REAL       DEFAULT NULL,
    total_engagements       INTEGER    DEFAULT NULL,
    engagement_rate         REAL       DEFAULT NULL,
    new_followers           INTEGER    DEFAULT NULL,
    video_views             INTEGER    DEFAULT NULL,
    average_watch_time_sec  INTEGER    DEFAULT NULL,
    shares                  INTEGER    DEFAULT NULL,
    comments                INTEGER    DEFAULT NULL,
    likes                   INTEGER    DEFAULT NULL,
    hashtags_used           TEXT       DEFAULT NULL,
    top_performing_post_id  TEXT       DEFAULT NULL,
    cost_per_engagement_usd REAL       DEFAULT NULL,
    total_spent_usd         INTEGER    DEFAULT NULL,
    organic_reach_percent   REAL       DEFAULT NULL,
    paid_reach_percent      REAL       DEFAULT NULL,
    audience_demographic    TEXT       DEFAULT NULL,
    peak_activity_hour      INTEGER    DEFAULT NULL,
    sentiment_score         REAL       DEFAULT NULL,
    conversion_rate_percent REAL       DEFAULT NULL,
    leads_generated         INTEGER    DEFAULT NULL,
    notes                   TEXT       DEFAULT NULL,
    is_active               INTEGER    DEFAULT NULL,
    created_at              TEXT       DEFAULT NULL,
    updated_at              TEXT       DEFAULT NULL,
    verification_status     TEXT       DEFAULT NULL,
    audit_log               TEXT       DEFAULT NULL,
    data_source             TEXT       DEFAULT NULL,
    related_campaign_id     INTEGER    DEFAULT NULL,
    related_power_id        INTEGER    DEFAULT NULL,
    analyst_responsible     TEXT       DEFAULT NULL,
    review_comments         TEXT       DEFAULT NULL,
    compliance_flag         INTEGER    DEFAULT NULL,
    archiving_location      TEXT       DEFAULT NULL,
    backup_file_uri         TEXT       DEFAULT NULL,
    retention_period_days   INTEGER    DEFAULT NULL
);

INSERT INTO social_media_metrics VALUES (901, 'Twitter', 'Galaxy Guardians Launch', '2024-01-01', '2024-01-15', 2500000, 120000, 4.8, 300000, 12.0, 5000, 80000, 45, 15000, 2500, 120000, '#GalaxyGuardians #Launch', 'TW001', 0.04, 4800, 70.0, 30.0, '18-34Male', 20, 0.75, 2.5, 120, 'Strong buzz around teaser', 1, '2024-01-16', '2024-01-16', 'Verified', 'AuditLog901', 'TwitterAPI', 901, NULL, 'Laura Chen', 'All metrics within expectations', 0, 'Archive/SM901', 'backups/901.json', 365);
INSERT INTO social_media_metrics VALUES (902, 'Instagram', 'Mystic Realm Summer', '2024-02-01', '2024-02-20', 1800000, 90000, 5.0, 210000, 11.7, 4000, 65000, 38, 12000, 1800, 95000, '#MysticRealm #Summer', 'IG001', 0.03, 3600, 68.0, 32.0, '25-44Female', 18, 0.70, 2.0, 95, 'Positive user‑generated content', 1, '2024-02-21', '2024-02-21', 'Verified', 'AuditLog902', 'InstagramAPI', 902, NULL, 'Emily Clark', 'Engagement slightly below target', 0, 'Archive/SM902', 'backups/902.json', 365);
INSERT INTO social_media_metrics VALUES (903, 'Facebook', 'Retro Motion Expo', '2024-03-05', '2024-03-12', 1300000, 60000, 4.6, 150000, 11.5, 2500, 40000, 30, 9000, 1200, 70000, '#RetroMotion #Expo', 'FB001', 0.02, 2600, 65.0, 35.0, '35-54Male', 21, 0.68, 1.8, 80, 'Steady growth in shares', 1, '2024-03-13', '2024-03-13', 'Verified', 'AuditLog903', 'FacebookAPI', 903, NULL, 'David Morris', 'Metrics meet KPI', 0, 'Archive/SM903', 'backups/903.json', 365);