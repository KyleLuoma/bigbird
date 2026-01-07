-- Supply chain logistics details for shipments unrelated to superhero entities
CREATE TABLE supply_chain_logistics
(
    id                       INTEGER PRIMARY KEY,
    shipment_id              TEXT,
    origin_warehouse_id      INTEGER,
    destination_warehouse_id INTEGER,
    carrier_name             TEXT,
    departure_date           DATE,
    arrival_date             DATE,
    transport_mode           TEXT,
    container_number         TEXT,
    gross_weight_kg          DECIMAL(10,2),
    volume_m3                DECIMAL(10,2),
    temperature_control      BOOLEAN,
    hazardous_material       BOOLEAN,
    tracking_url             TEXT,
    cost_usd                 DECIMAL(12,2),
    insurance_policy         TEXT,
    customs_cleared          BOOLEAN,
    delay_reason             TEXT,
    notes                    TEXT,
    created_at               DATE
);

INSERT INTO supply_chain_logistics VALUES (1,'SHIP1001',10,20,'FastFreight','2025-03-01','2025-03-05','Air','CONT12345',2500.00,12.30,1,0,'http://track.example.com/SHIP1001',1500.00,'POL123',1,'Weather','Delivered on time','2025-03-01');
INSERT INTO supply_chain_logistics VALUES (2,'SHIP1002',11,21,'OceanicLine','2025-04-10','2025-04-25','Sea','CONT67890',12000.00,45.00,0,1,'http://track.example.com/SHIP1002',8000.00,'POL456',0,'Customs hold','Awaiting clearance','2025-04-10');
INSERT INTO supply_chain_logistics VALUES (3,'SHIP1003',12,22,'GroundExpress','2025-05-15','2025-05-17','Road','CONT54321',800.00,4.80,1,0,'http://track.example.com/SHIP1003',400.00,'POL789',1,'None','No issues','2025-05-15');

-- Animation asset library storing reusable components for media production
CREATE TABLE animation_asset_library
(
    asset_id               INTEGER PRIMARY KEY,
    asset_name             TEXT,
    asset_type             TEXT,
    file_format            TEXT,
    resolution_width       INTEGER,
    resolution_height      INTEGER,
    duration_seconds       INTEGER,
    creator_team_id        INTEGER,
    creation_date          DATE,
    last_modified_date     DATE,
    usage_rights           TEXT,
    license_expiration     DATE,
    storage_location       TEXT,
    file_size_mb           DECIMAL(8,2),
    version_number         TEXT,
    is_public              BOOLEAN,
    tags                   TEXT,
    related_project_id     INTEGER,
    render_engine          TEXT,
    poly_count             INTEGER,
    texture_count          INTEGER,
    animation_fps          INTEGER,
    notes                  TEXT,
    archived               BOOLEAN
);

INSERT INTO animation_asset_library VALUES (1,'HeroRunCycle','Animation','FBX',1920,1080,3,101,'2024-01-20','2024-06-10','StudioLicense','2026-01-20','/assets/hero/run','45.75','v1.0',1,'run,hero,cycle',2001,'Unreal','1500','200','30','Standard run cycle','0');
INSERT INTO animation_asset_library VALUES (2,'ExplosionVFX','Effect','EXR',3840,2160,5,102,'2023-11-05','2024-02-12','VFXLicense','2025-11-05','/assets/effects/explosion','120.40','v2.2',0,'explosion,fire,smoke',2002,'Maya','0','0','60','High‑res explosion','0');
INSERT INTO animation_asset_library VALUES (3,'CityBackground','Background','PNG',4096,2304,0,103,'2022-07-15','2023-09-01','BackgroundLicense','2027-07-15','/assets/backgrounds/city','85.10','v3.1',1,'city,night,skyline',2003,'Photoshop','0','0','0','Panoramic cityscape','0');

-- Fan demographic profile capturing audience characteristics
CREATE TABLE fan_demographic_profile
(
    profile_id               INTEGER PRIMARY KEY,
    region_code              TEXT,
    country                  TEXT,
    city                     TEXT,
    age_group                TEXT,
    gender_id                INTEGER,
    income_bracket           TEXT,
    education_level          TEXT,
    marital_status           TEXT,
    household_size           INTEGER,
    primary_language         TEXT,
    secondary_language       TEXT,
    preferred_platform       TEXT,
    membership_status        TEXT,
    subscription_tier        TEXT,
    average_monthly_spend    DECIMAL(7,2),
    engagement_score         INTEGER,
    social_media_followers   INTEGER,
    event_attendance_last_year INTEGER,
    newsletter_opt_in        BOOLEAN,
    survey_response_rate     DECIMAL(5,2),
    favorite_genre           TEXT,
    active_hours_per_week    INTEGER,
    device_type_primary      TEXT,
    device_type_secondary    TEXT,
    created_at               DATE
);

INSERT INTO fan_demographic_profile VALUES (1,'NA','UnitedStates','NewYork','25-34',1,'50k-75k','College','Single',1,'English','Spanish','Streaming','Active','Gold',29.99,85,12000,5,75.5,'Action',20,'Mobile','Tablet','2025-01-01');
INSERT INTO fan_demographic_profile VALUES (2,'EU','Germany','Berlin','35-44',2,'75k-100k','Master','Married',3,'German','English','Gaming','Premium','Platinum',45.50,92,25000,12,88.0,'SciFi',15,'PC','Console','2025-01-02');
INSERT INTO fan_demographic_profile VALUES (3,'AS','Japan','Tokyo','18-24',1,'30k-50k','HighSchool','Single',2,'Japanese','Korean','SocialMedia','Inactive','Silver',15.00,60,8000,3,65.2,'Fantasy',25,'Mobile','Console','2025-01-03');

-- Corporate event schedule for non‑hero related activities
CREATE TABLE corporate_event_schedule
(
    event_id               INTEGER PRIMARY KEY,
    event_name             TEXT,
    event_type             TEXT,
    start_date             DATE,
    end_date               DATE,
    start_time             TEXT,
    end_time               TEXT,
    venue_id               INTEGER,
    city                   TEXT,
    country                TEXT,
    expected_attendance    INTEGER,
    sponsor_name           TEXT,
    budget_usd             DECIMAL(12,2),
    organizer_department   TEXT,
    contact_email          TEXT,
    catering_included      BOOLEAN,
    audio_visual_required  BOOLEAN,
    live_stream_enabled    BOOLEAN,
    security_level         TEXT,
    registration_required  BOOLEAN,
    registration_url       TEXT,
    speaker_count          INTEGER,
    breakout_sessions      INTEGER,
    notes                  TEXT,
    created_at             DATE
);

INSERT INTO corporate_event_schedule VALUES (1,'Q1 Strategy Meeting','Conference','2025-02-10','2025-02-12','09:00','17:00',301,'Chicago','USA',250,'TechCorp','120000.00','Strategy','strategy@company.com',1,1,0,'High',1,'http://register.company.com/q1','3','5','Annual planning session','2025-01-10');
INSERT INTO corporate_event_schedule VALUES (2,'Summer Innovation Expo','Expo','2025-07-01','2025-07-03','10:00','18:00',302,'Berlin','Germany',800,'InnovateLtd','300000.00','R&D','innovation@company.com',1,1,1,'Medium',1,'http://register.company.com/summerexpo','12','8','Showcase of new technologies','2025-03-15');
INSERT INTO corporate_event_schedule VALUES (3,'Year‑End Gala','Celebration','2025-12-20','2025-12-20','19:00','23:00',303,'Tokyo','Japan',500,'FinanceGroup','200000.00','HR','celebration@company.com',0,1,0,'Low',0,NULL,'1','0','Formal dinner and awards','2025-06-30');

-- Merchandise production batch tracking
CREATE TABLE merchandise_production_batch
(
    batch_id                 INTEGER PRIMARY KEY,
    product_sku              TEXT,
    product_name             TEXT,
    category                 TEXT,
    material_type            TEXT,
    color_variant            TEXT,
    size_specification       TEXT,
    quantity_planned         INTEGER,
    quantity_produced        INTEGER,
    production_start_date    DATE,
    production_end_date      DATE,
    factory_id               INTEGER,
    factory_location         TEXT,
    quality_check_passed     BOOLEAN,
    defect_rate_percent      DECIMAL(5,2),
    packaging_type           TEXT,
    shipping_method          TEXT,
    estimated_delivery_days  INTEGER,
    actual_delivery_days     INTEGER,
    cost_per_unit_usd        DECIMAL(8,2),
    total_cost_usd           DECIMAL(12,2),
    batch_notes              TEXT,
    approved_by_manager_id   INTEGER,
    created_at               DATE,
    updated_at               DATE
);

INSERT INTO merchandise_production_batch VALUES (1,'TSHIRT001','Hero TShirt','Apparel','Cotton','Red','M',5000,4920,'2025-01-05','2025-01-20',401,'Guangzhou','1',1.20,'Box','Sea',30,32,12.50,61600.00,'Minor stitching issues','10','2025-01-05','2025-01-21');
INSERT INTO merchandise_production_batch VALUES (2,'FIG002','Action Figure','Collectibles','Plastic','Blue','Standard',2000,2000,'2025-02-10','2025-02-25',402,'Nuremberg','1',0.50,'Blister','Air',10,9,25.00,50000.00,'All units passed QA','12','2025-02-10','2025-02-26');
INSERT INTO merchandise_production_batch VALUES (3,'MUG003','Hero Mug','HomeGoods','Ceramic','White','350ml',3000,2985,'2025-03-01','2025-03-12',403,'SaoPaulo','1',0.80,'Carton','Land',14,15,8.00,24000.00,'Slight glaze variation','15','2025-03-01','2025-03-13');

-- Digital content license agreements
CREATE TABLE digital_content_license
(
    license_id               INTEGER PRIMARY KEY,
    content_title            TEXT,
    content_type              TEXT,
    licensee_name            TEXT,
    licensor_name            TEXT,
    license_start_date       DATE,
    license_end_date         DATE,
    exclusive                BOOLEAN,
    territory_codes          TEXT,
    platform_allowed         TEXT,
    max_views_per_month      INTEGER,
    royalty_rate_percent     DECIMAL(5,2),
    upfront_fee_usd          DECIMAL(10,2),
    payment_terms            TEXT,
    audit_rights             BOOLEAN,
    termination_notice_days INTEGER,
    renewal_option           BOOLEAN,
    notes                    TEXT,
    created_at               DATE,
    updated_at               DATE,
    active                   BOOLEAN,
    contract_file_path       TEXT,
    compliance_status        TEXT,
    last_audit_date          DATE,
    next_audit_due_date      DATE,
    signed_by_licensor_id    INTEGER,
    signed_by_licensee_id    INTEGER
);

INSERT INTO digital_content_license VALUES (1,'Hero Origins','Video','GlobalMedia','SuperPub','2025-01-01','2028-12-31',0,'US,CA,EU','Streaming',100000,7.50,50000.00,'Net30',1,60,1,'Initial 3‑year license','2025-01-01','2025-01-01',1,'/contracts/h0.pdf','Compliant','2025-06-01','2026-06-01',101,201);
INSERT INTO digital_content_license VALUES (2,'Comic Archive','PDF','EduLibrary','SuperPub','2024-06-15','2026-06-14',1,'US','Download',50000,5.00,25000.00,'Net45',0,30,0,'Exclusive educational use','2024-06-15','2024-06-15',1,'/contracts/h1.pdf','Compliant','2025-01-15','2025-12-15',102,202);
INSERT INTO digital_content_license VALUES (3,'Soundtrack Album','Audio','MusicNet','SuperPub','2025-03-01','2030-02-28',0,'WORLD','Streaming',200000,4.00,75000.00','Quarterly',1,90,1,'Worldwide non‑exclusive','2025-03-01','2025-03-01',1,'/contracts/h2.pdf','Pending','2025-09-01','2026-09-01',103,203);

-- International distribution agreement for media products
CREATE TABLE international_distribution_agreement
(
    agreement_id                INTEGER PRIMARY KEY,
    product_sku                 TEXT,
    product_name                TEXT,
    distributor_name            TEXT,
    territory_list              TEXT,
    distribution_mode           TEXT,
    contract_start_date         DATE,
    contract_end_date           DATE,
    minimum_guarantee_units     INTEGER,
    royalty_percentage          DECIMAL(5,2),
    currency                    TEXT,
    exchange_rate_to_usd        DECIMAL(8,4),
    payment_schedule            TEXT,
    marketing_commitment_usd    DECIMAL(10,2),
    exclusive_in_territory      BOOLEAN,
    language_localization       TEXT,
    print_runs                  INTEGER,
    digital_release_date        DATE,
    physical_release_date       DATE,
    penalty_clause_per_day_usd  DECIMAL(8,2),
    notes                       TEXT,
    created_at                  DATE,
    updated_at                  DATE,
    active                      BOOLEAN,
    compliance_audit_required   BOOLEAN,
    last_audit_date             DATE,
    next_audit_due_date         DATE,
    signed_by_distributor_id    INTEGER,
    signed_by_licensor_id       INTEGER
);

INSERT INTO international_distribution_agreement VALUES (1,'TOY100','Action Figure','ToyWorld','EU,AU','Wholesale','2025-04-01','2028-03-31',10000,12.00,'EUR',1.10,'Annually',200000.00,0,'Multiple','5000','2025-09-01','2025-08-01',500.00,'Standard distribution terms','2025-04-01','2025-04-01',1,1,'2025-12-01','2026-12-01',301,401);
INSERT INTO international_distribution_agreement VALUES (2,'BOOK200','Graphic Novel','BookDistrib','US,CA','Retail','2024-01-15','2026-12-31',15000,8.50,'USD',1.00,'Semi‑annual',150000.00,1,'English,Spanish','0','2024-07-01','2024-06-15',300.00,'Exclusive North America rights','2024-01-15','2024-01-15',1,0,NULL,NULL,302,402);
INSERT INTO international_distribution_agreement VALUES (3,'GAME300','Video Game','GameGlobal','WORLD','Digital','2025-05-20','2030-05-19',50000,5.00,'USD',1.00,'Quarterly',500000.00,0,'Multiple','0','2025-11-01','2025-10-15',250.00,'Global digital launch','2025-05-20','2025-05-20',1,1,'2026-05-20','2027-05-20',303,403);

-- Marketing analytics snapshot capturing campaign performance metrics
CREATE TABLE marketing_analytics_snapshot
(
    snapshot_id                INTEGER PRIMARY KEY,
    campaign_id                INTEGER,
    campaign_name              TEXT,
    snapshot_date              DATE,
    impressions                INTEGER,
    clicks                     INTEGER,
    click_through_rate_percent DECIMAL(5,2),
    conversions                INTEGER,
    conversion_rate_percent    DECIMAL(5,2),
    cost_per_click_usd         DECIMAL(6,2),
    total_spend_usd            DECIMAL(12,2),
    revenue_generated_usd      DECIMAL(12,2),
    return_on_ad_spend_percent DECIMAL(6,2),
    average_position           DECIMAL(4,2),
    quality_score              INTEGER,
    audience_age_range         TEXT,
    audience_gender            TEXT,
    device_type                TEXT,
    geographic_region          TEXT,
    ad_format                  TEXT,
    frequency_cap              INTEGER,
    viewability_rate_percent   DECIMAL(5,2),
    brand_safety_score         INTEGER,
    sentiment_score            DECIMAL(4,2),
    notes                      TEXT,
    created_at                 DATE,
    updated_at                 DATE
);

INSERT INTO marketing_analytics_snapshot VALUES (1,101,'Spring Launch','2025-03-15',1200000,45000,3.75,3500,7.78,0.80,36000.00,72000.00,200.00,1.23,8,'18-34','All','Mobile','NorthAmerica','Display',3,85.00,9,0.75,'Strong performance','2025-03-15','2025-03-15');
INSERT INTO marketing_analytics_snapshot VALUES (2,102,'Summer Promo','2025-07-01',2000000,80000,4.00,9000,11.25,0.65,52000.00,130000.00,250.00,1.10,9,'25-44','Female','Desktop','Europe','Video',2,90.00,10,0.80,'High engagement','2025-07-01','2025-07-01');
INSERT INTO marketing_analytics_snapshot VALUES (3,103,'Holiday Campaign','2025-12-10',2500000,95000,3.80,12000,12.63,0.70,66500.00,150000.00,225.00,1.15,7,'35-54','Male','Tablet','Asia','Social',4,80.00,8,0.70,'Seasonal lift','2025-12-10','2025-12-10');

-- Venue booking detail for events unrelated to hero storylines
CREATE TABLE venue_booking_detail
(
    booking_id               INTEGER PRIMARY KEY,
    venue_id                 INTEGER,
    venue_name               TEXT,
    address_line1            TEXT,
    address_line2            TEXT,
    city                     TEXT,
    state_province           TEXT,
    postal_code              TEXT,
    country                  TEXT,
    contact_name             TEXT,
    contact_phone            TEXT,
    contact_email            TEXT,
    booking_date             DATE,
    event_start_datetime     DATETIME,
    event_end_datetime       DATETIME,
    expected_attendance      INTEGER,
    setup_time_minutes       INTEGER,
    teardown_time_minutes    INTEGER,
    catering_available       BOOLEAN,
    audio_visual_equipment   BOOLEAN,
    parking_spaces           INTEGER,
    wheelchair_accessible    BOOLEAN,
    security_level_required  TEXT,
    insurance_required       BOOLEAN,
    notes                    TEXT,
    created_at               DATE,
    updated_at               DATE,
    is_confirmed             BOOLEAN,
    payment_status           TEXT,
    contract_signed          BOOLEAN
);

INSERT INTO venue_booking_detail VALUES (1,501,'Grand Hall','123 Main St','Suite 200','Chicago','IL','60601','USA','John Doe','3125550100','john.doe@example.com','2025-02-01','2025-02-10 09:00:00','2025-02-10 17:00:00',300,120,90,1,1,150,1,'High',1,'Annual corporate summit','2025-01-15','2025-01-15',1,'Paid',1);
INSERT INTO venue_booking_detail VALUES (2,502,'Oceanview Conference Center','45 Beach Rd','', 'Sydney','NSW','2000','Australia','Jane Smith','0298765432','jane.smith@example.com','2025-04-15','2025-05-05 10:00:00','2025-05-05 18:00:00',500,180,120,1,1,200,1,'Medium',1,'International tech expo','2025-03-01','2025-03-01',1,'Pending',0);
INSERT INTO venue_booking_detail VALUES (3,503,'Mountain Retreat Lodge','78 Alpine Way','', 'Innsbruck','Tyrol','6020','Austria','Markus Braun','0431123456','markus.braun@example.com','2025-09-20','2025-09-25 08:00:00','2025-09-25 20:00:00',150,240,150,0,1,80,1,'Low',0,'Team building weekend','2025-08-10','2025-08-10',0,'Unpaid',0);

-- Archival media record for historical media assets
CREATE TABLE archival_media_record
(
    record_id                     INTEGER PRIMARY KEY,
    media_title                   TEXT,
    media_type                    TEXT,
    original_format               TEXT,
    digitized_format              TEXT,
    original_acquisition_date    DATE,
    digitization_date            DATE,
    preservation_status          TEXT,
    storage_location              TEXT,
    physical_condition_rating    INTEGER,
    digital_checksum              TEXT,
    file_size_mb                  DECIMAL(10,2),
    access_restriction_level      TEXT,
    rights_holder                 TEXT,
    licensing_terms               TEXT,
    expiration_date               DATE,
    notes                         TEXT,
    created_at                    DATE,
    updated_at                    DATE,
    is_public_domain              BOOLEAN,
    catalog_reference             TEXT,
    related_project_id            INTEGER,
    curator_name                  TEXT,
    restoration_needed           BOOLEAN,
    restoration_estimate_usd      DECIMAL(10,2)
);

INSERT INTO archival_media_record VALUES (1,'Classic Comic Issue #1','Print','Paper','PDF','1975-06-01','2024-11-15','Preserved','ArchiveRoomA',8,'a1b2c3d4e5f6',150.75,'Restricted','OldPublisher','Standard','2029-12-31','First issue of series','2024-11-15','2024-11-15',0,'ARC001',1001,'Anna Lee',0,NULL);
INSERT INTO archival_media_record VALUES (2,'Original Animation Reel','Film','MP4','2025-01-20','2025-02-10','Digitized','DigitalVault1',9,'f7g8h9i0j1k2',1200.00,'Limited','StudioX','Custom','2032-06-30','Early prototype animation','2025-02-10','2025-02-10',0,'ARC002',2002,'Brian Kim',1,5000.00);
INSERT INTO archival_media_record VALUES (3,'Collector\'s Audio Interview','Audio','Cassette','WAV','1990-03-12','2025-03-05','Restored','AudioArchiveB',7,'l3m4n5o6p7q8',250.50,'Open','Interviewee','Open','2035-01-01','Interview with original creator','2025-03-05','2025-03-05',0,'ARC003',3003,'Clara Zhou',0,NULL);