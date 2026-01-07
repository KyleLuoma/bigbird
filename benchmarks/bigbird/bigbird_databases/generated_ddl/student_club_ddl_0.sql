-- Venue information
CREATE TABLE venue
(
    venue_id               TEXT PRIMARY KEY,
    name                   TEXT,
    address                TEXT,
    city                   TEXT,
    state                  TEXT,
    zip_code               INTEGER,
    capacity               INTEGER,
    indoor_outdoor         TEXT,
    parking_spaces         INTEGER,
    wheelchair_access      TEXT,
    contact_name           TEXT,
    contact_phone          TEXT,
    contact_email          TEXT,
    opening_hours          TEXT,
    closing_hours          TEXT,
    rental_cost            REAL,
    security_level         TEXT,
    acoustic_rating        REAL,
    lighting_type          TEXT,
    webcast_available      TEXT,
    notes                  TEXT
);

INSERT INTO venue VALUES ('V001','Grand Hall','123 Main St','Springfield','IL',62701,500,'Indoor',150,'Yes','Alice Johnson','555-1234','alice@venue.com','08:00','22:00',1200.00,'High',8.5,'LED','Yes','Main conference venue');
INSERT INTO venue VALUES ('V002','Riverside Pavilion','456 River Rd','Riverdale','CA',90210,300,'Outdoor',80,'Yes','Bob Smith','555-5678','bob@venue.com','09:00','20:00',800.00,'Medium',7.0,'Spotlight','No','Open air pavilion');
INSERT INTO venue VALUES ('V003','Tech Lab','789 Innovation Dr','Tech City','NY',10001,150,'Indoor',50,'No','Carol Lee','555-2468','carol@venue.com','07:00','19:00',500.00,'Low',9.0','Fluorescent','Yes','Lab for workshops');

-- Sponsor details
CREATE TABLE sponsor
(
    sponsor_id            TEXT PRIMARY KEY,
    sponsor_name          TEXT,
    industry              TEXT,
    contact_person        TEXT,
    contact_phone         TEXT,
    contact_email         TEXT,
    contract_start        TEXT,
    contract_end          TEXT,
    amount_committed      REAL,
    branding_level        TEXT,
    logo_url              TEXT,
    website               TEXT,
    address               TEXT,
    city                  TEXT,
    state                 TEXT,
    zip_code              INTEGER,
    tax_id                TEXT,
    sponsorship_type      TEXT,
    notes                 TEXT,
    active_flag           TEXT
);

INSERT INTO sponsor VALUES ('S001','Acme Corp','Manufacturing','Dana White','555-1111','dana@acme.com','2023-01-01','2024-12-31',25000.00,'Gold','http://acme.com/logo.png','http://acme.com','100 Industrial Way','Metropolis','TX',75001,'TX123456','Cash','Key sponsor for 2024','Yes');
INSERT INTO sponsor VALUES ('S002','Beta Solutions','IT Services','Evan Green','555-2222','evan@beta.com','2022-06-15','2023-06-14',15000.00,'Silver','http://beta.com/logo.png','http://beta.com','200 Tech Blvd','Silicon Valley','CA',94016,'CA987654','InKind','Provided software support','Yes');
INSERT INTO sponsor VALUES ('S003','Gamma Foods','Food & Beverage','Fiona Black','555-3333','fiona@gamma.com','2023-03-01','2025-02-28',30000.00,'Platinum','http://gamma.com/logo.png','http://gamma.com','300 Market St','Gourmet City','NY',10002,'NY112233','Cash','Catering sponsor','Yes');

-- Equipment inventory
CREATE TABLE equipment_inventory
(
    equip_id                TEXT PRIMARY KEY,
    equip_name              TEXT,
    category                TEXT,
    manufacturer            TEXT,
    model_number            TEXT,
    serial_number           TEXT,
    purchase_date           TEXT,
    purchase_price          REAL,
    warranty_expiry         TEXT,
    condition_status        TEXT,
    location_id             TEXT,
    last_maintenance        TEXT,
    maintenance_interval_days INTEGER,
    calibration_date        TEXT,
    calibrated_by           TEXT,
    is_portable             TEXT,
    power_requirements      TEXT,
    weight_kg               REAL,
    dimensions_cm           TEXT,
    assigned_to_event       TEXT,
    notes                   TEXT
);

INSERT INTO equipment_inventory VALUES ('E001','Projector X200','AV','OptiTech','X200','SN12345','2020-05-10',1200.00','2023-05-10','Good','V001','2023-01-15',180,'2023-01-15','Tech Dept','Yes','AC','5.5','120x80x20','EV001','Main hall projector');
INSERT INTO equipment_inventory VALUES ('E002','Wireless Mic Set','Audio','SoundPro','WM-5','SN67890','2021-08-22',800.00','2024-08-22','Excellent','V001','2023-02-20',365,'2023-02-20','Audio Team','Yes','Battery','2.0','25x15x5','EV001','Microphones for speaker panel');
INSERT INTO equipment_inventory VALUES ('E003','LED Lighting rig','Lighting','BrightLights','LED-300','SN24680','2019-11-05',1500.00','2022-11-05','Fair','V002','2022-12-01',730,'2022-12-01','Facilities','No','220V','30.0','200x150x100','EV002','Stage lighting rig');

-- Transport log
CREATE TABLE transport_log
(
    transport_id        TEXT PRIMARY KEY,
    vehicle_id          TEXT,
    vehicle_type        TEXT,
    license_plate       TEXT,
    driver_name         TEXT,
    driver_phone        TEXT,
    capacity_passengers INTEGER,
    capacity_cargo_kg   INTEGER,
    assigned_event      TEXT,
    departure_time      TEXT,
    arrival_time        TEXT,
    origin_address      TEXT,
    destination_address TEXT,
    fuel_type           TEXT,
    mileage_km          REAL,
    maintenance_due     TEXT,
    insurance_policy    TEXT,
    insurance_expiry    TEXT,
    notes               TEXT,
    active_flag         TEXT
);

INSERT INTO transport_log VALUES ('T001','VAN01','Van','ABC123','Gary Driver','555-4444',12,1500,'EV001','2024-04-10 08:00','2024-04-10 09:30','123 Depot St','123 Main St','Diesel',250.5,'2024-10-01','POL001','2025-04-01','Transported equipment','Yes');
INSERT INTO transport_log VALUES ('T002','BUS02','Bus','DEF456','Helen Operator','555-5555',40,2000,'EV001','2024-04-11 07:00','2024-04-11 08:15','456 Garage Ave','123 Main St','Petrol',180.0,'2024-09-15','POL002','2025-03-15','Shuttle service for attendees','Yes');
INSERT INTO transport_log VALUES ('T003','TRK03','Truck','GHI789','Ian Loader','555-6666',2,5000,'EV002','2024-04-12 06:30','2024-04-12 07:20','789 Yard Rd','456 River Rd','Diesel',320.0','2024-11-20','POL003','2025-05-20','Delivered staging materials','Yes');

-- Media coverage
CREATE TABLE media_coverage
(
    media_id            TEXT PRIMARY KEY,
    outlet_name         TEXT,
    outlet_type         TEXT,
    contact_name        TEXT,
    contact_phone       TEXT,
    contact_email       TEXT,
    publication_date    TEXT,
    article_title       TEXT,
    url                 TEXT,
    event_covered       TEXT,
    coverage_type       TEXT,
    audience_estimate   INTEGER,
    region              TEXT,
    language            TEXT,
    sentiment           TEXT,
    notes               TEXT,
    follow_up_required  TEXT,
    article_summary     TEXT,
    editor_name         TEXT,
    editor_email        TEXT
);

INSERT INTO media_coverage VALUES ('M001','Daily News','Newspaper','Jack Reporter','555-7777','jack@dailynews.com','2024-04-15','Annual Tech Conference Kicks Off','http://dailynews.com/tech2024','EV001','Article',50000,'Midwest','English','Positive','Great turnout','No','Summary of conference opening','Laura Chief','laura@dailynews.com');
INSERT INTO media_coverage VALUES ('M002','TechPod','Podcast','Mia Host','555-8888','mia@techpod.com','2024-04-16','Interview with Keynote Speaker','http://techpod.com/episode123','EV001','Interview',20000,'National','English','Neutral','Insightful interview','Yes','Discussion of upcoming trends','Sam Producer','sam@techpod.com');
INSERT INTO media_coverage VALUES ('M003','City TV','Television','Nina Anchor','555-9999','nina@citytv.com','2024-04-17','Live Coverage of Workshops','http://citytv.com/live/tech2024','EV001','Live','80000','Local','English','Positive','Live stream of sessions','No','Live broadcast details','Tom Director','tom@citytv.com');

-- Volunteer roster
CREATE TABLE volunteer
(
    volunteer_id            TEXT PRIMARY KEY,
    first_name              TEXT,
    last_name               TEXT,
    email                   TEXT,
    phone                   TEXT,
    emergency_contact_name  TEXT,
    emergency_contact_phone TEXT,
    availability_start      TEXT,
    availability_end        TEXT,
    preferred_role          TEXT,
    training_completed      TEXT,
    background_check        TEXT,
    hours_committed         INTEGER,
    assigned_event          TEXT,
    shift_start             TEXT,
    shift_end               TEXT,
    t_shirt_size            TEXT,
    notes                   TEXT,
    active_status           TEXT,
    last_active_date        TEXT
);

INSERT INTO volunteer VALUES ('VOL001','Olivia','Brown','olivia.brown@example.com','555-1010','Mark Brown','555-1111','2024-04-10','2024-04-20','Registration Desk','Yes','Clear','15','EV001','08:00','12:00','M','Great attitude','Active','2024-04-09');
INSERT INTO volunteer VALUES ('VOL002','Peter','Smith','peter.smith@example.com','555-2020','Anna Smith','555-2121','2024-04-11','2024-04-22','Usher','No','Pending','10','EV001','13:00','17:00','L','Needs training','Active','2024-04-08');
INSERT INTO volunteer VALUES ('VOL003','Quinn','Lee','quinn.lee@example.com','555-3030','Sam Lee','555-3131','2024-04-12','2024-04-25','Tech Support','Yes','Clear','20','EV002','09:00','13:00','S','Experienced with AV gear','Active','2024-04-07');

-- Training programs
CREATE TABLE training_program
(
    training_id          TEXT PRIMARY KEY,
    program_name         TEXT,
    description          TEXT,
    trainer_name         TEXT,
    trainer_contact      TEXT,
    start_date           TEXT,
    end_date             TEXT,
    location             TEXT,
    max_participants     INTEGER,
    duration_hours       INTEGER,
    certification_available TEXT,
    certification_type   TEXT,
    cost_per_participant REAL,
    materials_provided   TEXT,
    prerequisites        TEXT,
    evaluation_score     REAL,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    is_mandatory        TEXT
);

INSERT INTO training_program VALUES ('TR001','AV Setup Basics','Intro to audio visual equipment','Mike Tech','555-4242','2024-04-05','2024-04-05','Room 101',30,4,'Yes','AV Certified','50.00','Handouts, Laptop','None',4.5,'Popular among volunteers','2024-01-15','2024-02-20','No');
INSERT INTO training_program VALUES ('TR002','Event Safety','Safety protocols for large events','Sara Safe','555-5353','2024-04-10','2024-04-11','Room 202',25,8,'Yes','Safety Badge','75.00','Safety manual','Basic first aid',4.8,'Mandatory for staff','2024-01-20','2024-03-01','Yes');
INSERT INTO training_program VALUES ('TR003','Data Privacy','Handling attendee data responsibly','Liam Legal','555-6464','2024-04-12','2024-04-12','Room 303',20,3,'No','',0.00','Slides only','None',4.2,'Recommended for data handlers','2024-01-25','2024-03-05','No');

-- Permission records
CREATE TABLE permission
(
    permission_id          TEXT PRIMARY KEY,
    permission_type        TEXT,
    description            TEXT,
    issuing_authority      TEXT,
    issue_date             TEXT,
    expiry_date            TEXT,
    related_event          TEXT,
    required_document      TEXT,
    status                 TEXT,
    notes                  TEXT,
    reviewer_name          TEXT,
    reviewer_contact       TEXT,
    approval_timestamp     TEXT,
    revocation_timestamp   TEXT,
    is_revoked             TEXT,
    renewal_required       TEXT,
    renewal_deadline       TEXT,
    attached_file_path     TEXT,
    priority_level         TEXT,
    confidentiality_flag  TEXT
);

INSERT INTO permission VALUES ('P001','Venue Access','Access to Grand Hall for setup','Facilities Dept','2024-03-01','2024-04-20','EV001','AccessForm.pdf','Approved','All clear','Laura Manager','555-7777','2024-03-02','NULL','No','No','NULL','/files/access_v001.pdf','High','No');
INSERT INTO permission VALUES ('P002','Media Pass','Permission for media coverage','PR Office','2024-03-15','2024-04-30','EV001','MediaPassForm.pdf','Pending','Awaiting review','Tom Coordinator','555-8888','NULL','NULL','No','Yes','2024-04-01','/files/media_pass.pdf','Medium','Yes');
INSERT INTO permission VALUES ('P003','Vendor Permit','Permission for catering vendor','Legal Dept','2024-02-20','2024-04-25','EV001','VendorPermit.pdf','Approved','Vendor cleared','Emily Legal','555-9999','2024-02-22','NULL','No','No','NULL','/files/vendor_permit.pdf','High','No');

-- Vendor directory
CREATE TABLE vendor
(
    vendor_id           TEXT PRIMARY KEY,
    vendor_name         TEXT,
    service_type        TEXT,
    contact_person      TEXT,
    contact_phone       TEXT,
    contact_email       TEXT,
    address             TEXT,
    city                TEXT,
    state               TEXT,
    zip_code            INTEGER,
    tax_id              TEXT,
    contract_start      TEXT,
    contract_end        TEXT,
    rate_type           TEXT,
    rate_amount         REAL,
    payment_terms       TEXT,
    insurance_status    TEXT,
    license_number      TEXT,
    rating              REAL,
    notes               TEXT,
    active_flag         TEXT
);

INSERT INTO vendor VALUES ('VD001','Catering Co','Catering','Amy Chef','555-1112','amy@cateringco.com','500 Food Ln','Gourmet City','NY',10003,'NY555666','2023-06-01','2024-06-01','Fixed','2500.00','Net30','Valid','LIC12345',4.7,'Provides vegan options','Yes');
INSERT INTO vendor VALUES ('VD002','AudioWorks','Audio Rental','Brian Sound','555-2223','brian@audioworks.com','200 Sound St','Tech City','CA',94020,'CA777888','2023-09-15','2024-09-14','Hourly','150.00','Upon delivery','Valid','LIC67890',4.5,'Specializes in live events','Yes');
INSERT INTO vendor VALUES ('VD003','StageCraft','Stage Construction','Catherine Build','555-3334','catherine@stagecraft.com','300 Build Rd','Riverdale','TX',75002,'TX333444','2023-01-10','2024-01-09','Fixed','4000.00','Net45','Expired','LIC11223',4.2,'Experienced with large venues','No');

-- Analytics snapshots
CREATE TABLE analytics_snapshot
(
    snapshot_id         TEXT PRIMARY KEY,
    event_id            TEXT,
    snapshot_date       TEXT,
    total_attendance    INTEGER,
    total_budget        REAL,
    total_spent         REAL,
    remaining_budget    REAL,
    average_rating      REAL,
    net_profit          REAL,
    sponsor_contributions REAL,
    equipment_used      INTEGER,
    transport_used      INTEGER,
    media_mentions      INTEGER,
    volunteer_hours     INTEGER,
    notes               TEXT,
    created_by          TEXT,
    created_at          TEXT,
    updated_by          TEXT,
    updated_at          TEXT,
    is_finalized        TEXT
);

INSERT INTO analytics_snapshot VALUES ('SN001','EV001','2024-04-20',480,20000.00,15500.00,4500.00,4.3,3000.00,25000.00,12,3,5,120,'Preliminary snapshot','AnalystA','2024-04-21','AnalystB','2024-04-22','No');
INSERT INTO analytics_snapshot VALUES ('SN002','EV001','2024-04-25',500,20000.00,16000.00,4000.00,4.4,3500.00,26000.00,13,4,6,130,'Updated after final reports','AnalystA','2024-04-26','AnalystA','2024-04-27','Yes');
INSERT INTO analytics_snapshot VALUES ('SN003','EV002','2024-04-22',300,15000.00,12000.00,3000.00,4.0,2000.00,18000.00,8,2,3,80,'Snapshot for second event','AnalystC','2024-04-23','AnalystC','2024-04-24','No');