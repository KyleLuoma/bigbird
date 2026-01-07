-- Users table
CREATE TABLE "users"
(
    id                      INTEGER           NOT NULL PRIMARY KEY AUTOINCREMENT,
    username                TEXT,
    email                   TEXT,
    hashed_password         TEXT,
    first_name              TEXT,
    last_name               TEXT,
    birthdate               DATE,
    country_code            TEXT,
    registration_date       DATE,
    last_login              DATE,
    status                  TEXT,
    role                    TEXT,
    failed_login_attempts  INTEGER,
    password_last_changed   DATE,
    timezone                TEXT,
    language_pref           TEXT,
    marketing_opt_in        INTEGER,
    two_factor_enabled      INTEGER,
    avatar_url              TEXT,
    bio                     TEXT
);

INSERT INTO "users" VALUES (1,'alice','alice@example.com','hash1','Alice','Smith','1990-01-01','US','2023-01-01','2023-10-01','active','admin',0,'2023-09-01','UTC','en',1,1,'http://example.com/avatar1.png','Enthusiast');
INSERT INTO "users" VALUES (2,'bob','bob@example.com','hash2','Bob','Jones','1985-05-12','CA','2023-02-15','2023-10-02','active','user',1,'2023-09-20','America/Toronto','fr',0,0,'http://example.com/avatar2.png','Collector');
INSERT INTO "users" VALUES (3,'carol','carol@example.com','hash3','Carol','Lee','1992-07-23','GB','2023-03-20','2023-10-03','inactive','guest',0,'2023-08-30','Europe/London','en',0,0,'http://example.com/avatar3.png','Newbie');

-- API Keys table
CREATE TABLE "api_keys"
(
    id                 INTEGER           NOT NULL PRIMARY KEY AUTOINCREMENT,
    api_key            TEXT,
    user_id            INTEGER,
    created_at         DATE,
    expires_at         DATE,
    last_used_at       DATE,
    usage_count        INTEGER,
    scope              TEXT,
    revoked            INTEGER,
    description        TEXT,
    ip_restriction     TEXT,
    rate_limit         INTEGER,
    notes              TEXT,
    version            TEXT,
    algorithm          TEXT,
    public_key         TEXT,
    private_key        TEXT,
    client_name        TEXT,
    client_version     TEXT,
    environment        TEXT
);

INSERT INTO "api_keys" VALUES (1,'key123','1','2023-01-01','2024-01-01','2023-10-01',150,'read',0,'Main key','0.0.0.0/0',1000,'','v1','HS256','pubkey1','privkey1','MobileApp','1.0','production');
INSERT INTO "api_keys" VALUES (2,'key456','2','2023-02-01','2024-02-01','2023-10-02',75,'write',0,'Secondary key','192.168.1.0/24',500,'','v1','RS256','pubkey2','privkey2','WebPortal','2.1','staging');
INSERT INTO "api_keys" VALUES (3,'key789','3','2023-03-01','2024-03-01','2023-10-03',20,'admin',1,'Revoked key','10.0.0.0/8',200,'','v2','HS512','pubkey3','privkey3','InternalTool','3.0','development');

-- Audit Log table
CREATE TABLE "audit_log"
(
    id                  INTEGER           NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_type          TEXT,
    event_timestamp     DATE,
    user_id             INTEGER,
    session_id          TEXT,
    ip_address          TEXT,
    user_agent          TEXT,
    resource            TEXT,
    action              TEXT,
    outcome             TEXT,
    details             TEXT,
    correlation_id      TEXT,
    source_module       TEXT,
    severity            TEXT,
    channel             TEXT,
    process_id          INTEGER,
    thread_id           INTEGER,
    request_id          TEXT,
    response_time_ms    INTEGER,
    error_code          TEXT
);

INSERT INTO "audit_log" VALUES (1,'LOGIN','2023-10-01',1,'sess1','192.168.0.1','Mozilla/5.0','/login','attempt','success','User logged in','corr1','auth','low','web',101,12,'req1',120,'');
INSERT INTO "audit_log" VALUES (2,'DATA_EXPORT','2023-10-02',2,'sess2','10.0.0.5','curl/7.68.0','/export','download','success','Export completed','corr2','export','medium','api',102,14,'req2',350,'');
INSERT INTO "audit_log" VALUES (3,'PASSWORD_CHANGE','2023-10-03',3,'sess3','172.16.0.3','Chrome/92.0','/user/password','update','failure','Invalid current password','corr3','user','high','web',103,16,'req3',200,'ERR_INVALID_PASSWORD');

-- System Metrics table
CREATE TABLE "system_metrics"
(
    id                     INTEGER           NOT NULL PRIMARY KEY AUTOINCREMENT,
    metric_name            TEXT,
    metric_value           REAL,
    recorded_at            DATE,
    host_name              TEXT,
    cpu_usage              REAL,
    memory_usage           REAL,
    disk_io_read           REAL,
    disk_io_write          REAL,
    network_in             REAL,
    network_out            REAL,
    temperature_c          REAL,
    fan_speed_rpm          INTEGER,
    uptime_seconds         INTEGER,
    process_count          INTEGER,
    thread_count           INTEGER,
    handle_count           INTEGER,
    load_average_1m        REAL,
    load_average_5m        REAL,
    load_average_15m       REAL
);

INSERT INTO "system_metrics" VALUES (1,'cpu_usage',23.5,'2023-10-01','host1',23.5,45.2,1024,512,200,150,55.3,2500,86400,120,300,4500,0.75,0.80,0.85);
INSERT INTO "system_metrics" VALUES (2,'memory_usage',68.1,'2023-10-02','host2',45.2,68.1,2048,1024,300,250,60.1,2600,172800,140,350,4700,0.90,0.95,1.00);
INSERT INTO "system_metrics" VALUES (3,'disk_io',1500,'2023-10-03','host3',55.0,75.0,1500,750,400,350,58.7,2400,259200,160,400,4900,1.10,1.20,1.30);

-- Job Queue table
CREATE TABLE "job_queue"
(
    id                 INTEGER           NOT NULL PRIMARY KEY AUTOINCREMENT,
    job_name           TEXT,
    priority           INTEGER,
    status             TEXT,
    submitted_at       DATE,
    started_at         DATE,
    finished_at        DATE,
    retry_count        INTEGER,
    max_retries        INTEGER,
    handler_class      TEXT,
    payload            TEXT,
    result             TEXT,
    error_message      TEXT,
    last_error_at      DATE,
    schedule_time      DATE,
    queue_name         TEXT,
    worker_id          TEXT,
    execution_time_ms  INTEGER,
    timeout_seconds    INTEGER,
    tags               TEXT
);

INSERT INTO "job_queue" VALUES (1,'GenerateReport',5,'pending','2023-09-30',NULL,NULL,0,3,'ReportGenerator','{}','',NULL,NULL,'2023-10-01','reports','workerA',0,300,'');
INSERT INTO "job_queue" VALUES (2,'EmailDispatch',3,'running','2023-09-28','2023-09-28',NULL,1,5,'EmailSender','{}','',NULL,NULL,'2023-09-28','emails','workerB',120,180,'');
INSERT INTO "job_queue" VALUES (3,'DataCleanup',1,'completed','2023-09-20','2023-09-20','2023-09-20',0,2,'CleanupTask','{}','success',NULL,NULL,'2023-09-20','maintenance','workerC',45,60,'');

-- Config Settings table
CREATE TABLE "config_settings"
(
    id                INTEGER           NOT NULL PRIMARY KEY AUTOINCREMENT,
    setting_key       TEXT,
    setting_value     TEXT,
    description       TEXT,
    data_type         TEXT,
    is_active         INTEGER,
    created_at        DATE,
    updated_at        DATE,
    created_by        TEXT,
    updated_by        TEXT,
    environment       TEXT,
    version           TEXT,
    is_secret         INTEGER,
    secret_mask       TEXT,
    validation_regex  TEXT,
    min_value         REAL,
    max_value         REAL,
    allowed_values    TEXT,
    depends_on        TEXT,
    deprecated        INTEGER
);

INSERT INTO "config_settings" VALUES (1,'max_login_attempts','5','Maximum allowed login failures','integer',1,'2023-01-01','2023-09-01','system','admin','production','v1',0,'','^[0-9]+$',1,10,'','',0);
INSERT INTO "config_settings" VALUES (2,'feature_x_enabled','true','Toggle for Feature X','boolean',1,'2023-02-01','2023-09-15','system','admin','staging','v2',0,'','^(true|false)$',NULL,NULL,'true,false','',0);
INSERT INTO "config_settings" VALUES (3,'api_secret_key','s3cr3t','API secret used for signing','string',0,'2023-03-01','2023-09-20','system','admin','development','v1',1,'******','^.{8,}$',NULL,NULL,'','',1);

-- Country Codes table
CREATE TABLE "country_codes"
(
    id                 INTEGER           NOT NULL PRIMARY KEY AUTOINCREMENT,
    iso_alpha2         TEXT,
    iso_alpha3         TEXT,
    iso_numeric        INTEGER,
    country_name_en    TEXT,
    country_name_local TEXT,
    capital_city       TEXT,
    region             TEXT,
    subregion          TEXT,
    calling_code       TEXT,
    currency_code      TEXT,
    currency_name      TEXT,
    tld                TEXT,
    latitude           REAL,
    longitude          REAL,
    population         INTEGER,
    area_sq_km         REAL,
    gdp_usd            REAL,
    internet_users_percent REAL,
    literacy_rate_percent REAL
);

INSERT INTO "country_codes" VALUES (1,'US','USA',840,'United States','United States','Washington','Americas','Northern America','1','USD','Dollar','.us',38.0,-97.0,331002651,9833520,21433226000000,89.5,99.0);
INSERT INTO "country_codes" VALUES (2,'CA','CAN',124,'Canada','Canada','Ottawa','Americas','Northern America','1','CAD','Dollar','.ca',56.1,-106.3,37742154,9984670,1736426000000,91.0,99.0);
INSERT INTO "country_codes" VALUES (3,'GB','GBR',826,'United Kingdom','United Kingdom','London','Europe','Northern Europe','44','GBP','Pound','.uk',55.4,-3.4,67886011,242495,2825208000000,94.6,99.0);

-- Currency Rates table
CREATE TABLE "currency_rates"
(
    id                     INTEGER           NOT NULL PRIMARY KEY AUTOINCREMENT,
    base_currency          TEXT,
    target_currency        TEXT,
    rate                   REAL,
    rate_date              DATE,
    source                 TEXT,
    provider               TEXT,
    is_active              INTEGER,
    created_at             DATE,
    updated_at             DATE,
    confidence_score       REAL,
    historical_average     REAL,
    high_24h               REAL,
    low_24h                REAL,
    volume_24h             REAL,
    market_cap             REAL,
    provider_url           TEXT,
    notes                  TEXT,
    exchange_type          TEXT,
    last_checked_at        DATE,
    validity_period_seconds INTEGER
);

INSERT INTO "currency_rates" VALUES (1,'USD','EUR',0.85,'2023-10-01','central','OpenRates',1,'2023-09-30','2023-10-01',0.98,0.84,0.86,0.83,1500000,9000000000,'http://openrates.example.com','', 'spot','2023-10-01',3600);
INSERT INTO "currency_rates" VALUES (2,'USD','JPY',110.5,'2023-10-01','central','OpenRates',1,'2023-09-30','2023-10-01',0.96,110.0,111.0,110.0,2000000,11000000000,'http://openrates.example.com','', 'spot','2023-10-01',3600);
INSERT INTO "currency_rates" VALUES (3,'EUR','GBP',0.90,'2023-10-01','central','OpenRates',1,'2023-09-30','2023-10-01',0.97,0.89,0.91,0.88,1200000,8000000000,'http://openrates.example.com','', 'spot','2023-10-01',3600);

-- Notification Templates table
CREATE TABLE "notification_templates"
(
    id                 INTEGER           NOT NULL PRIMARY KEY AUTOINCREMENT,
    template_name      TEXT,
    subject_template   TEXT,
    body_template      TEXT,
    language           TEXT,
    channel            TEXT,
    is_active          INTEGER,
    created_at         DATE,
    updated_at         DATE,
    created_by         TEXT,
    updated_by         TEXT,
    version            TEXT,
    priority           INTEGER,
    requires_ack       INTEGER,
    attachment_required INTEGER,
    max_retries        INTEGER,
    retry_interval_seconds INTEGER,
    placeholder_keys   TEXT,
    description        TEXT,
    tags               TEXT,
    footnote           TEXT
);

INSERT INTO "notification_templates" VALUES (1,'WelcomeEmail','Welcome to Service','Hello {{first_name}}, welcome!','en','email',1,'2023-01-01','2023-09-01','system','admin','v1',1,0,0,3,60,'first_name,last_name','Standard welcome email','welcome,registration','');
INSERT INTO "notification_templates" VALUES (2,'PasswordReset','Reset your password','Click {{reset_link}} to reset','en','email',1,'2023-02-01','2023-09-02','system','admin','v1',1,1,0,5,120,'reset_link','Password reset instructions','security,password','');
INSERT INTO "notification_templates" VALUES (3,'WeeklyDigest','Your weekly summary','Here are your stats {{summary}}','en','push',1,'2023-03-01','2023-09-03','system','admin','v1',2,0,0,2,180,'summary','Weekly activity digest','engagement,weekly','*no-unsubscribe*');

-- Event Schedule table
CREATE TABLE "event_schedule"
(
    id                INTEGER           NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_name        TEXT,
    event_type        TEXT,
    start_datetime    DATE,
    end_datetime      DATE,
    location_name     TEXT,
    address_line1     TEXT,
    address_line2     TEXT,
    city              TEXT,
    state_province    TEXT,
    country_code      TEXT,
    postal_code       TEXT,
    organizer_id      INTEGER,
    contact_email     TEXT,
    contact_phone     TEXT,
    max_attendees     INTEGER,
    registration_open DATE,
    registration_close DATE,
    status            TEXT,
    notes             TEXT
);

INSERT INTO "event_schedule" VALUES (1,'Spring Meetup','conference','2023-04-15','2023-04-17','Convention Center','123 Main St','', 'Metropolis','NY','US','12345',1,'info@example.com','5551234',200,'2023-03-01','2023-04-10','scheduled','');
INSERT INTO "event_schedule" VALUES (2,'Summer Hackathon','hackathon','2023-07-10','2023-07-12','Tech Hub','456 Innovation Rd','Suite 300','Innovation City','CA','US','67890',2,'hackathon@example.com','5555678',150,'2023-06-01','2023-07-05','scheduled','');
INSERT INTO "event_schedule" VALUES (3,'Autumn Webinar','webinar','2023-10-20','2023-10-20','Online','', '', '','', '','',4,'webinar@example.com','5559012',500,'2023-09-15','2023-10-15','scheduled','');