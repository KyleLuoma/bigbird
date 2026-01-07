-- Table storing distribution agency information
CREATE TABLE media_distribution_agency
(
    id                       INTEGER PRIMARY KEY,
    agency_name              TEXT,
    contact_name             TEXT,
    contact_email            TEXT,
    phone_number             TEXT,
    address_line1            TEXT,
    address_line2            TEXT,
    city                     TEXT,
    state                    TEXT,
    postal_code              TEXT,
    country                  TEXT,
    contract_start_date      DATE,
    contract_end_date        DATE,
    exclusive                BOOLEAN,
    distribution_region      TEXT,
    digital_platform_support BOOLEAN,
    physical_media_support   BOOLEAN,
    average_lead_time_days   INTEGER,
    monthly_volume_units     INTEGER,
    rating_score             DECIMAL(3,2),
    notes                    TEXT
);

INSERT INTO media_distribution_agency VALUES (1,'AgencyOne','JohnDoe','john.doe@example.com','5551234','123MainSt','','Metropolis','NY','10001','USA','2023-01-01','2025-12-31',TRUE,'NorthAmerica',TRUE,TRUE,14,5000,4.75,'Top tier agency');
INSERT INTO media_distribution_agency VALUES (2,'AgencyTwo','JaneSmith','jane.smith@example.com','5555678','456SideAve','Suite200','Gotham','IL','60601','USA','2022-06-15','2024-06-14',FALSE,'Europe',TRUE,FALSE,21,3200,4.20,'Mid tier, digital focus');
INSERT INTO media_distribution_agency VALUES (3,'AgencyThree','BobLee','bob.lee@example.com','5559012','789Broadway','Floor3','StarCity','CA','90001','USA','2021-09-01','2023-08-31',TRUE,'AsiaPacific',FALSE,TRUE,30,2100,3.90,'Physical media specialist');

-- Table tracking pre‑order information for fan merchandise
CREATE TABLE fan_merchandise_preorder
(
    preorder_id          INTEGER PRIMARY KEY,
    fan_id               INTEGER,
    merchandise_item_id  INTEGER,
    preorder_date        DATE,
    expected_ship_date   DATE,
    quantity             INTEGER,
    unit_price_cents     INTEGER,
    total_price_cents    INTEGER,
    payment_method       TEXT,
    shipping_address_line1 TEXT,
    shipping_address_line2 TEXT,
    shipping_city        TEXT,
    shipping_state       TEXT,
    shipping_postal_code TEXT,
    shipping_country     TEXT,
    status               TEXT,
    priority_flag        BOOLEAN,
    promo_code           TEXT,
    discount_cents       INTEGER,
    notes                TEXT,
    created_timestamp    DATETIME,
    updated_timestamp    DATETIME
);

INSERT INTO fan_merchandise_preorder VALUES (101,1001,2001,'2024-02-01','2024-03-01',2,2500,5000,'CreditCard','12FanSt','Apt5','Metroville','TX','75001','USA','Processing',FALSE,'SPRING2024',500,'First batch preorder','2024-02-01 10:15:00','2024-02-01 10:15:00');
INSERT INTO fan_merchandise_preorder VALUES (102,1002,2002,'2024-02-05','2024-03-05',1,4500,4500,'PayPal','34HeroLn','Suite10','Gotham','NY','10002','USA','Shipped',TRUE,'',0,'Express shipping requested','2024-02-05 14:30:00','2024-02-07 09:00:00');
INSERT INTO fan_merchandise_preorder VALUES (103,1003,2003,'2024-02-10','2024-03-12',3,1500,4500,'DebitCard','56VillainRd','UnitB','StarCity','CA','90002','USA','Cancelled',FALSE,'SAVE10',450,'Customer cancelled','2024-02-10 08:45:00','2024-02-12 11:20:00');

-- Table logging licensing audit events
CREATE TABLE licensing_audit_log
(
    audit_id                 INTEGER PRIMARY KEY,
    license_id               INTEGER,
    auditor_name             TEXT,
    audit_date               DATE,
    audit_time               TIME,
    compliance_status       TEXT,
    violations_found         INTEGER,
    severity_level           TEXT,
    corrective_action_taken  TEXT,
    notes                    TEXT,
    reviewed_by              TEXT,
    review_date              DATE,
    review_time              TIME,
    overall_score            DECIMAL(4,2),
    region_covered           TEXT,
    product_category         TEXT,
    contract_version         TEXT,
    expiration_date          DATE,
    renewal_option           BOOLEAN,
    financial_penalty_cents  INTEGER,
    legal_fee_cents          INTEGER,
    backup_location          TEXT,
    archive_timestamp        DATETIME
);

INSERT INTO licensing_audit_log VALUES (1,5001,'AuditorA','2024-01-15','09:30:00','Compliant',0,'Low','None','All checks passed','ManagerX','2024-01-16','10:00:00',98.75,'NorthAmerica','Comics','v2.3','2025-12-31',TRUE,0,0,'/backups/audit1','2024-01-16 10:00:00');
INSERT INTO licensing_audit_log VALUES (2,5002,'AuditorB','2024-02-20','14:45:00','NonCompliant',3,'High','Revoked license','Missing royalty reports','ManagerY','2024-02-21','09:15:00',45.20,'Europe','Films','v1.9','2023-11-30',FALSE,150000,25000,'/backups/audit2','2024-02-21 09:15:00');
INSERT INTO licensing_audit_log VALUES (3,5003,'AuditorC','2024-03-05','11:20:00','Compliant',1,'Medium','Partial correction','Late submission of sales data','ManagerZ','2024-03-06','13:40:00',85.10,'AsiaPacific','Games','v3.0','2026-06-30',TRUE,20000,5000,'/backups/audit3','2024-03-06 13:40:00');

-- Table describing global fan outreach programs
CREATE TABLE global_fan_outreach
(
    outreach_id            INTEGER PRIMARY KEY,
    program_name           TEXT,
    launch_date            DATE,
    end_date               DATE,
    target_region          TEXT,
    primary_language      TEXT,
    secondary_language    TEXT,
    budget_cents           INTEGER,
    expected_participants  INTEGER,
    actual_participants    INTEGER,
    channels_used          TEXT,
    social_media_platforms TEXT,
    email_campaigns        INTEGER,
    webinar_sessions       INTEGER,
    live_events            INTEGER,
    merchandise_included   BOOLEAN,
    exclusive_content      BOOLEAN,
    partnership_sponsor    TEXT,
    feedback_score_avg     DECIMAL(3,2),
    net_promoter_score     INTEGER,
    notes                  TEXT,
    created_by             TEXT,
    created_timestamp      DATETIME,
    updated_timestamp      DATETIME
);

INSERT INTO global_fan_outreach VALUES (100,'WorldWideWatch','2023-09-01','2024-02-28','Europe','English','French',2500000,20000,18500,'Web,Email,Social','Twitter,Instagram',5,3,2,TRUE,FALSE,'SponsorAlpha',4.35,68,'Successful regional push','CoordinatorA','2023-09-01 08:00:00','2024-01-15 12:45:00');
INSERT INTO global_fan_outreach VALUES (101,'AsiaPulse','2023-11-15','2024-05-15','AsiaPacific','Mandarin','Japanese',3000000,25000,24000,'Web,LiveStream','Weibo,Line',6,4,3,TRUE,TRUE,'SponsorBeta',4.60,72,'High engagement in APAC','CoordinatorB','2023-11-15 09:30:00','2024-04-01 14:20:00');
INSERT INTO global_fan_outreach VALUES (102,'LatinAmericaLaunch','2024-01-10','2024-07-10','LatinAmerica','Spanish','Portuguese',1800000,15000,14700,'Email,Social','Facebook,WhatsApp',4,2,1,FALSE,TRUE,'SponsorGamma',4.10,60,'Steady growth','CoordinatorC','2024-01-10 10:15:00','2024-06-20 16:05:00');

-- Table capturing digital advertising metrics per campaign
CREATE TABLE digital_advertising_metrics
(
    metric_id           INTEGER PRIMARY KEY,
    campaign_id         INTEGER,
    platform            TEXT,
    start_date          DATE,
    end_date            DATE,
    impressions         INTEGER,
    clicks              INTEGER,
    click_through_rate  DECIMAL(5,2),
    cost_cents          INTEGER,
    cost_per_click_cents DECIMAL(6,2),
    conversions         INTEGER,
    conversion_rate     DECIMAL(5,2),
    revenue_cents       INTEGER,
    return_on_ad_spend  DECIMAL(5,2),
    audience_age_min    INTEGER,
    audience_age_max    INTEGER,
    gender_target       TEXT,
    geo_target          TEXT,
    device_type         TEXT,
    ad_format           TEXT,
    creative_version    TEXT,
    notes               TEXT,
    created_timestamp   DATETIME,
    updated_timestamp   DATETIME
);

INSERT INTO digital_advertising_metrics VALUES (1,9001,'Twitter','2024-01-01','2024-01-31',1200000,4800,0.40,250000,5.21,320,6.67,400000,1.60,18,35,'All','NorthAmerica','Mobile','Video','v1','Solid performance','2024-02-01 08:00:00','2024-02-01 08:00:00');
INSERT INTO digital_advertising_metrics VALUES (2,9002,'Instagram','2024-02-01','2024-02-28',950000,3700,0.39,210000,5.68,280,7.57,350000,1.67,21,40,'Female','Europe','Desktop','Carousel','v2','Higher engagement among 25-35','2024-03-01 09:15:00','2024-03-01 09:15:00');
INSERT INTO digital_advertising_metrics VALUES (3,9003,'YouTube','2024-03-01','2024-03-31',800000,2500,0.31,300000,12.00,200,8.00,500000,1.67,15,30,'Male','AsiaPacific','Mobile','PreRoll','v1','Strong ROI in APAC market','2024-04-01 10:30:00','2024-04-01 10:30:00');

-- Table mapping characters to voice actors
CREATE TABLE character_voice_actor
(
    mapping_id          INTEGER PRIMARY KEY,
    character_id        INTEGER,
    actor_name          TEXT,
    agency              TEXT,
    contract_start_date DATE,
    contract_end_date   DATE,
    languages_spoken    TEXT,
    primary_language    TEXT,
    secondary_language  TEXT,
    accent              TEXT,
    union_member        BOOLEAN,
    hourly_rate_cents   INTEGER,
    is_main_voice       BOOLEAN,
    notes               TEXT,
    created_by          TEXT,
    created_timestamp   DATETIME,
    updated_by          TEXT,
    updated_timestamp   DATETIME,
    status              TEXT,
    last_recorded_episode INTEGER,
    episode_count       INTEGER,
    award_nominations   INTEGER,
    award_wins          INTEGER,
    external_profile_url TEXT
);

INSERT INTO character_voice_actor VALUES (1,3001,'AliceBrown','TalentCo','2022-05-01','2025-04-30','English,Spanish','English','Spanish','US','TRUE',8000,TRUE,'Lead voice for hero','AdminA','2024-01-05 09:00:00','AdminB','2024-02-10 11:30:00','Active',12,45,2,1,'http://profile.com/abrown');
INSERT INTO character_voice_actor VALUES (2,3002,'CarlosDiaz','StarAgency','2021-03-15','2024-03-14','Spanish,Portuguese','Spanish','Portuguese','Latin','TRUE',7500,FALSE,'Supporting role','AdminA','2024-01-07 10:15:00','AdminB','2024-02-12 13:45:00','Active',8,30,1,0,'http://profile.com/cdiaz');
INSERT INTO character_voice_actor VALUES (3,3003,'EmmaLee','VoiceHub','2023-01-01','2026-12-31','English','English','None','British','FALSE',6500,TRUE,'Narration only','AdminA','2024-01-09 14:20:00','AdminB','2024-02-15 16:00:00','Active',15,20,0,0,'http://profile.com/elee');

-- Table storing storyboard asset metadata
CREATE TABLE storyboard_asset
(
    asset_id               INTEGER PRIMARY KEY,
    storyboard_id          INTEGER,
    scene_number           INTEGER,
    panel_number           INTEGER,
    description_text       TEXT,
    sketch_file_path       TEXT,
    finalized_file_path    TEXT,
    artist_name            TEXT,
    creation_date          DATE,
    revision_date          DATE,
    revision_number        INTEGER,
    status                 TEXT,
    estimated_duration_sec INTEGER,
    key_frame_flag         BOOLEAN,
    lighting_notes         TEXT,
    camera_angle           TEXT,
    character_presence     TEXT,
    prop_list              TEXT,
    background_detail      TEXT,
    color_palette          TEXT,
    notes                  TEXT,
    approved_by            TEXT,
    approval_timestamp     DATETIME,
    version_hash           TEXT
);

INSERT INTO storyboard_asset VALUES (1010,20001,1,1,'Opening hero pose','/sketches/001.png','/final/001.png','JaneArtist','2024-01-02','2024-01-05',2,'Approved',12,TRUE,'Bright lighting','Low angle','Hero','Cape,Shield','City skyline','Vibrant','Ready for animation','LeadDirector','2024-01-06 09:30:00','a1b2c3d4');
INSERT INTO storyboard_asset VALUES (1011,20001,1,2,'Villain entrance','/sketches/002.png','/final/002.png','MikeArtist','2024-01-03','2024-01-06',1,'Pending',8,FALSE,'Dim lighting','Wide shot','Villain','Laser gun','Laboratory','Cool tones','Needs refinement','LeadDirector','2024-01-07 10:45:00','e5f6g7h8');
INSERT INTO storyboard_asset VALUES (1012,20002,2,1,'Hero chase','/sketches/003.png','/final/003.png','SaraArtist','2024-01-04','2024-01-08',3,'Approved',15,TRUE,'Dynamic lighting','Tracking','Hero,Sidekick','Motorcycle,Explosion','City streets','High contrast','Finalized','LeadDirector','2024-01-09 11:20:00','i9j0k1l2');

-- Table describing animation render farm nodes
CREATE TABLE animation_render_farm
(
    node_id               INTEGER PRIMARY KEY,
    farm_name             TEXT,
    hostname              TEXT,
    ip_address            TEXT,
    operating_system      TEXT,
    cpu_model             TEXT,
    cpu_cores             INTEGER,
    gpu_model             TEXT,
    gpu_memory_gb         INTEGER,
    ram_gb                INTEGER,
    storage_tb            INTEGER,
    network_bandwidth_gbps INTEGER,
    rack_location         TEXT,
    power_supply_watts    INTEGER,
    cooling_system_type   TEXT,
    maintenance_window    TEXT,
    last_maintenance_date DATE,
    status                TEXT,
    assigned_project_id   INTEGER,
    current_job_id        INTEGER,
    job_queue_length      INTEGER,
    avg_job_time_sec      INTEGER,
    notes                 TEXT,
    created_timestamp     DATETIME,
    updated_timestamp     DATETIME
);

INSERT INTO animation_render_farm VALUES (1,'RenderX','rf-node-01','10.0.0.1','Linux','XeonE5-2680',24,'RTX2080',8,128,4,10,'RackA1',750,'Liquid','02:00-04:00','2024-01-15','Online',1001,5001,2,3600,'Primary node','2024-01-01 08:00:00','2024-01-20 12:00:00');
INSERT INTO animation_render_farm VALUES (2,'RenderX','rf-node-02','10.0.0.2','Linux','XeonE5-2680',24,'RTX2080',8,128,4,10,'RackA1',750,'Liquid','02:00-04:00','2024-01-16','Online',1002,5002,1,3400,'Backup node','2024-01-01 08:10:00','2024-01-20 12:05:00');
INSERT INTO animation_render_farm VALUES (3,'RenderY','rf-node-03','10.1.0.1','Windows','XeonGold-6140',32,'RTX3090',24,256,8,20,'RackB3',1200,'Air','03:00-05:00','2024-01-10','Online',1003,5003,3,4200,'High‑end node','2024-01-02 09:00:00','2024-01-22 13:30:00');

-- Table recording soundtrack licensing details
CREATE TABLE soundtrack_license
(
    license_id           INTEGER PRIMARY KEY,
    soundtrack_id        INTEGER,
    licensor_name        TEXT,
    licensee_name        TEXT,
    territory            TEXT,
    exclusive            BOOLEAN,
    start_date           DATE,
    end_date             DATE,
    usage_type           TEXT,
    media_format         TEXT,
    duration_minutes     INTEGER,
    royalty_percent      DECIMAL(5,2),
    flat_fee_cents       INTEGER,
    advance_payment_cents INTEGER,
    sync_rights          BOOLEAN,
    performance_rights   BOOLEAN,
    mechanical_rights    BOOLEAN,
    notes                TEXT,
    created_by           TEXT,
    created_timestamp    DATETIME,
    updated_by           TEXT,
    updated_timestamp    DATETIME,
    status               TEXT,
    contract_document_path TEXT
);

INSERT INTO soundtrack_license VALUES (1,30001,'MusicHouse','StudioA','Global',TRUE,'2023-01-01','2026-12-31','Film','Stereo','120',12.50,800000,200000,TRUE,TRUE,TRUE,'Full rights for theatrical release','AdminA','2022-12-01 09:00:00','AdminB','2023-01-05 10:00:00','Active','/contracts/ss1.pdf');
INSERT INTO soundtrack_license VALUES (2,30002,'AudioWorks','StudioB','Europe',FALSE,'2024-03-01','2025-02-28','TV','Dolby','45',8.00,300000,50000,FALSE,TRUE,FALSE,'Limited TV broadcast rights','AdminA','2024-02-15 11:30:00','AdminB','2024-03-02 12:45:00','Pending','/contracts/ss2.pdf');
INSERT INTO soundtrack_license VALUES (3,30003,'SoundWave','StudioC','AsiaPacific',FALSE,'2024-05-15','2027-05-14','Game','5.1 Surround','90',10.00,600000,150000,TRUE,FALSE,TRUE,'Game soundtrack with sync rights','AdminA','2024-04-20 14:00:00','AdminB','2024-05-16 15:20:00','Active','/contracts/ss3.pdf');

-- Table tracking venue security schedules
CREATE TABLE venue_security_schedule
(
    schedule_id           INTEGER PRIMARY KEY,
    venue_id              INTEGER,
    event_id              INTEGER,
    security_company      TEXT,
    lead_officer_name     TEXT,
    officer_count         INTEGER,
    start_time            DATETIME,
    end_time              DATETIME,
    shift_pattern         TEXT,
    access_control_type   TEXT,
    metal_detector_used   BOOLEAN,
    crowd_control_level   TEXT,
    emergency_plan_id     INTEGER,
    incident_report_path  TEXT,
    notes                 TEXT,
    created_by            TEXT,
    created_timestamp     DATETIME,
    updated_by            TEXT,
    updated_timestamp     DATETIME,
    status                TEXT,
    compliance_check_passed BOOLEAN,
    last_inspection_date  DATE,
    inspection_score      DECIMAL(4,1),
    contract_cost_cents   INTEGER,
    additional_equipment  TEXT
);

INSERT INTO venue_security_schedule VALUES (1,4001,5001,'SecureCo','JohnGuard',25,'2024-06-01 08:00:00','2024-06-01 22:00:00','12h','RFID','TRUE','High',3001,'/incidents/ev1.pdf','Standard security for fan convention','AdminSec','2024-05-15 09:00:00','AdminSec','2024-05-20 10:30:00','Confirmed',TRUE,'2024-05-10',9.5,1500000,'Patrol bikes, CCTV');
INSERT INTO venue_security_schedule VALUES (2,4002,5002,'ProtectPlus','AliceShield',40,'2024-07-10 07:00:00','2024-07-10 23:00:00','8h','Biometric','TRUE','Medium',3002,'/incidents/ev2.pdf','Enhanced security for premiere','AdminSec','2024-06-20 11:15:00','AdminSec','2024-06-25 12:45:00','Confirmed',TRUE,'2024-06-15',9.0,2000000,'K9 units, Drone patrol');
INSERT INTO venue_security_schedule VALUES (3,4003,5003,'Guardians','MikeSecure',30,'2024-08-15 09:00:00','2024-08-15 21:00:00','10h','Badge','FALSE','Low',3003,'/incidents/ev3.pdf','Standard security for exhibition','AdminSec','2024-07-30 08:45:00','AdminSec','2024-08-01 09:30:00','Pending',FALSE,'2024-07-25',8.2,1200000,'Static barriers, Walkie‑talkies');