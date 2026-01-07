-- Research funding source table
CREATE TABLE research_funding_source
(
    source_id               TEXT PRIMARY KEY,
    source_name             TEXT,
    source_type             TEXT,
    contact_name            TEXT,
    contact_email           TEXT,
    phone                   TEXT,
    address_line1           TEXT,
    address_line2           TEXT,
    city                    TEXT,
    state                   TEXT,
    zip_code                INTEGER,
    website                 TEXT,
    funding_category        TEXT,
    eligibility_criteria   TEXT,
    application_deadline    TEXT,
    grant_amount_min        REAL,
    grant_amount_max        REAL,
    matching_requirements   TEXT,
    award_cycle             TEXT,
    reporting_requirements TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT
);
INSERT INTO research_funding_source VALUES ('RF001','National Science Foundation','Government','Alice Johnson','alice.j@nsf.gov','5551234567','2415 Eisenhower Ave','Suite 400','Arlington','VA',22203,'https://nsf.gov','STEM','Open to US institutions','2025-03-01',500000,2000000,'50% match required','Annual','Annual report','Top tier funding','2024-01-15','2024-06-01');
INSERT INTO research_funding_source VALUES ('RF002','Tech Innovators Fund','Private','Bob Smith','bob.s@tif.org','5559876543','500 Innovation Way','','San Jose','CA',95112,'https://tif.org','Technology','Startups and SMEs','2025-06-15',100000,500000,'No match','Biannual','Quarterly reporting','Focused on AI','2024-02-20','2024-07-10');
INSERT INTO research_funding_source VALUES ('RF003','Community Arts Council','Nonprofit','Catherine Lee','catherine.l@cac.org','5555551212','1200 Arts Blvd','Floor 2','Portland','OR',97201,'https://cac.org','Arts','Local non-profits','2025-09-30',20000,80000,'Match up to 30%','Annual','Impact summary','Supports visual arts','2024-03-05','2024-08-12');

-- Campus event theme table
CREATE TABLE campus_event_theme
(
    theme_id                TEXT PRIMARY KEY,
    event_id                TEXT,
    theme_name              TEXT,
    description             TEXT,
    primary_color           TEXT,
    secondary_color         TEXT,
    logo_path               TEXT,
    sponsor_highlight       TEXT,
    merchandise_flag        TEXT,
    start_date              TEXT,
    end_date                TEXT,
    budget_estimate         REAL,
    expected_attendance     INTEGER,
    marketing_channels      TEXT,
    social_media_hashtag    TEXT,
    sustainability_rating   INTEGER,
    accessibility_rating    INTEGER,
    notes                   TEXT,
    created_by              TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);
INSERT INTO campus_event_theme VALUES ('TH001','EV001','Spring Innovation','Theme focusing on emerging technologies','#0066CC','#33CCFF','/logos/spring_innov.png','Tech Corp','Y','2025-04-01','2025-04-03',75000,350,'Email,Social,Posters','#SpringInnov2025',9,8,'Use recyclable materials','admin','2024-04-01','2024-04-10');
INSERT INTO campus_event_theme VALUES ('TH002','EV002','Cultural Heritage','Celebrating campus cultural diversity','#CC6600','#FFCC99','/logos/culture.png','Global Arts','N','2025-05-15','2025-05-17',50000,200,'Flyers,Radio,#CultureFest','#Culture2025',7,9,'Provide sign language interpreters','events_coordinator','2024-05-02','2024-05-12');
INSERT INTO campus_event_theme VALUES ('TH003','EV003','Green Futures','Focus on sustainability and climate action','#228B22','#AADD88','/logos/green_futures.png','Eco Solutions','Y','2025-06-10','2025-06-12',60000,300,'Social,Webinars','#GreenFutures','10','10','Zero-waste policy','sustainability_lead','2024-06-05','2024-06-15');

-- Member privacy consent table
CREATE TABLE member_privacy_consent
(
    consent_id              TEXT PRIMARY KEY,
    member_id               TEXT,
    consent_type            TEXT,
    consent_given           TEXT,
    consent_date            TEXT,
    expiration_date         TEXT,
    consent_method          TEXT,
    source_of_consent       TEXT,
    notes                   TEXT,
    recorded_by             TEXT,
    recorded_at             TEXT,
    updated_at              TEXT,
    data_retention_period   TEXT,
    third_party_sharing     TEXT,
    opt_out_allowed         TEXT,
    email_opt_in            TEXT,
    sms_opt_in              TEXT,
    mail_opt_in             TEXT,
    phone_opt_in            TEXT,
    marketing_opt_in        TEXT,
    research_opt_in         TEXT,
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);
INSERT INTO member_privacy_consent VALUES ('PC001','MB001','General','Y','2024-01-01','2026-01-01','Online','Website','Consent given via portal','admin','2024-01-02','2024-02-01','2 years','No','Y','Y','N','Y','N','Y','N','2024-01-02');
INSERT INTO member_privacy_consent VALUES ('PC002','MB002','Email Marketing','Y','2024-02-15','2025-02-15','InPerson','Event Booth','Signed paper consent','staff1','2024-02-16','2024-03-01','1 year','Yes','Y','Y','N','N','Y','Y','Y','2024-02-16');
INSERT INTO member_privacy_consent VALUES ('PC003','MB003','Research Data','N','2024-03-10','2024-09-10','Online','Email','Declined research sharing','admin','2024-03-11','2024-04-01','6 months','No','Y','N','N','N','N','N','N','2024-03-11');

-- Audit log entry table
CREATE TABLE audit_log_entry
(
    log_id                  TEXT PRIMARY KEY,
    table_name              TEXT,
    operation_type          TEXT,
    primary_key_value       TEXT,
    changed_by              TEXT,
    change_timestamp        TEXT,
    ip_address              TEXT,
    user_agent              TEXT,
    before_state            TEXT,
    after_state             TEXT,
    comment                 TEXT,
    severity_level          INTEGER,
    application_module      TEXT,
    transaction_id          TEXT,
    batch_id                TEXT,
    host_name               TEXT,
    process_id              INTEGER,
    thread_id               INTEGER,
    duration_ms             INTEGER,
    status                  TEXT
);
INSERT INTO audit_log_entry VALUES ('LG001','member','UPDATE','MB001','admin','2024-04-01 10:15:23','192.168.1.10','Chrome','{"email":"old@example.com"}','{"email":"new@example.com"}','Email updated','2','MemberService','TX123','B001','app01',1010,2001,35,'SUCCESS');
INSERT INTO audit_log_entry VALUES ('LG002','event','INSERT','EV004','events_coordinator','2024-04-02 14:05:10','192.168.1.20','Firefox','NULL','{"event_name":"Tech Expo"}','New event created','1','EventScheduler','TX124','B002','app02',1011,2002,50,'SUCCESS');
INSERT INTO audit_log_entry VALUES ('LG003','budget','DELETE','BDG005','admin','2024-04-03 09:45:00','192.168.1.30','Edge','{"amount":5000}','NULL','Budget entry removed','3','BudgetManager','TX125','B003','app03',1012,2003,20,'SUCCESS');

-- Resource reservation table
CREATE TABLE resource_reservation
(
    reservation_id          TEXT PRIMARY KEY,
    resource_type           TEXT,
    resource_id             TEXT,
    member_id               TEXT,
    event_id                TEXT,
    start_time              TEXT,
    end_time                TEXT,
    purpose                 TEXT,
    status                  TEXT,
    approved_by             TEXT,
    approval_date           TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    recurring_flag          TEXT,
    recurrence_pattern      TEXT,
    cancellation_reason     TEXT,
    cancellation_date       TEXT,
    priority_level          INTEGER,
    cost_center             TEXT,
    FOREIGN KEY (member_id) REFERENCES member(member_id),
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);
INSERT INTO resource_reservation VALUES ('RS001','Room','RM101','MB001','EV001','2025-04-01 09:00','2025-04-01 12:00','Keynote session','APPROVED','admin','2024-04-10','Near main entrance','2024-04-11','2024-06-01','N','NULL','NULL','NULL',1,'CC100');
INSERT INTO resource_reservation VALUES ('RS002','AudioEquipment','AE202','MB002','EV002','2025-05-15 14:00','2025-05-15 18:00','Panel discussion','PENDING','manager1','2024-05-01','Checked availability','2024-05-02','2024-05-05','Y','Weekly','NULL','NULL',2,'CC200');
INSERT INTO resource_reservation VALUES ('RS003','Vehicle','VH303','MB003','EV003','2025-06-10 08:00','2025-06-10 18:00','Shuttle service','CANCELLED','admin','2024-06-15','Vehicle under maintenance','2024-06-16','2024-06-20','N','NULL','Mechanical issue','2024-06-18',3,'CC300');

-- Sponsor invoicing table
CREATE TABLE sponsor_invoicing
(
    invoice_id              TEXT PRIMARY KEY,
    sponsor_id              TEXT,
    event_id                TEXT,
    invoice_date            TEXT,
    due_date                TEXT,
    amount_due              REAL,
    amount_paid             REAL,
    payment_date            TEXT,
    invoice_status          TEXT,
    payment_method          TEXT,
    tax_id                  TEXT,
    contact_name            TEXT,
    contact_email           TEXT,
    billing_address_line1   TEXT,
    billing_address_line2   TEXT,
    billing_city            TEXT,
    billing_state           TEXT,
    billing_zip             INTEGER,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    FOREIGN KEY (sponsor_id) REFERENCES sponsor(sponsor_id),
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);
INSERT INTO sponsor_invoicing VALUES ('INV001','SP001','EV001','2024-04-01','2024-04-30',15000,15000,'2024-04-28','PAID','Bank Transfer','12-3456789','John Doe','john.doe@sponsor.com','123 Sponsor Way','Suite 200','Metropolis','NY',10001,'Paid in full','2024-04-01','2024-04-30');
INSERT INTO sponsor_invoicing VALUES ('INV002','SP002','EV002','2024-04-05','2024-05-05',8000,0,NULL,'PENDING','Check','98-7654321','Jane Smith','jane.smith@partner.org','456 Partner Rd','Floor 3','Springfield','IL',62704,'Awaiting payment','2024-04-05','2024-05-05');
INSERT INTO sponsor_invoicing VALUES ('INV003','SP003','EV003','2024-04-10','2024-05-10',12000,6000,'2024-04-25','PARTIAL','Credit Card','34-5678901','Mike Lee','mike.lee@assoc.net','789 Associate Blvd','','River City','CA',90210,'Second installment due','2024-04-10','2024-04-25');

-- Event photography table
CREATE TABLE event_photography
(
    photo_id                TEXT PRIMARY KEY,
    event_id                TEXT,
    photographer_id         TEXT,
    capture_date            TEXT,
    file_path               TEXT,
    file_name               TEXT,
    resolution              TEXT,
    file_size_bytes         INTEGER,
    camera_model            TEXT,
    lens_model              TEXT,
    aperture                TEXT,
    shutter_speed           TEXT,
    iso                     INTEGER,
    orientation             TEXT,
    copyright_holder        TEXT,
    usage_rights            TEXT,
    tags                    TEXT,
    description             TEXT,
    approved_flag           TEXT,
    approved_by             TEXT,
    approved_date           TEXT,
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);
INSERT INTO event_photography VALUES ('PH001','EV001','PHOT01','2025-04-01','/photos/ev001/','keynote1.jpg','4000x3000',2500000,'Canon EOS R5','24-70mm','f/2.8','1/200','ISO100','Landscape','University','Editorial','keynote,stage','Keynote speaker on stage','Y','admin','2025-04-02');
INSERT INTO event_photography VALUES ('PH002','EV002','PHOT02','2025-05-15','/photos/ev002/','panel1.jpg','6000x4000',3500000,'Nikon Z7','70-200mm','f/4','1/125','ISO200','Portrait','University','Promotional','panel,discussion','Panel discussion with experts','Y','admin','2025-05-16');
INSERT INTO event_photography VALUES ('PH003','EV003','PHOT03','2025-06-10','/photos/ev003/','expo1.jpg','5000x3500',3000000,'Sony A7III','16-35mm','f/2.0','1/250','ISO400','Square','University','Social','expo,booth','Expo booth with interactive demo','N','NULL','NULL');

-- Facility cleaning schedule table
CREATE TABLE facility_cleaning_schedule
(
    schedule_id             TEXT PRIMARY KEY,
    facility_id             TEXT,
    cleaning_type           TEXT,
    frequency               TEXT,
    last_cleaned_date       TEXT,
    next_scheduled_date     TEXT,
    assigned_staff_id       TEXT,
    supervisor_id           TEXT,
    checklist_version       TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    cleaning_status         TEXT,
    required_equipment      TEXT,
    safety_protocols        TEXT,
    time_estimate_minutes  INTEGER,
    area_sqft               INTEGER,
    cleaning_zone           TEXT,
    special_instructions    TEXT,
    compliance_score        INTEGER,
    FOREIGN KEY (facility_id) REFERENCES venue(venue_id)
);
INSERT INTO facility_cleaning_schedule VALUES ('CL001','VN001','Daily','Daily','2025-03-31','2025-04-01','STF001','SUP001','v1.0','All surfaces cleaned','2025-04-01','2025-04-01','COMPLETED','Mop,Vacuum','PPE mandatory',30,2000,'North Wing','No chemicals near electronics',95);
INSERT INTO facility_cleaning_schedule VALUES ('CL002','VN002','Weekly','Weekly','2025-03-25','2025-04-01','STF002','SUP002','v1.1','Deep carpet cleaning','2025-04-01','2025-04-01','PENDING','Steam Cleaner','Wet floor signage',90,5000','South Hall','Avoid high traffic areas',88);
INSERT INTO facility_cleaning_schedule VALUES ('CL003','VN003','Monthly','Monthly','2025-02-28','2025-04-01','STF003','SUP003','v2.0','Window washing','2025-04-01','2025-04-01','SCHEDULED','Extension Poles','Harness required',120,8000','East Wing','Only on dry days',92);

-- Digital asset usage table
CREATE TABLE digital_asset_usage
(
    usage_id                TEXT PRIMARY KEY,
    asset_id                TEXT,
    member_id               TEXT,
    event_id                TEXT,
    usage_type              TEXT,
    access_timestamp        TEXT,
    device_type             TEXT,
    ip_address              TEXT,
    location                TEXT,
    duration_seconds        INTEGER,
    purpose                 TEXT,
    consent_obtained        TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    download_flag           TEXT,
    print_flag              TEXT,
    share_flag              TEXT,
    modification_flag       TEXT,
    version_number          INTEGER,
    license_id              TEXT,
    FOREIGN KEY (member_id) REFERENCES member(member_id),
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);
INSERT INTO digital_asset_usage VALUES ('DU001','AS001','MB001','EV001','View','2025-04-01 10:00','Laptop','203.0.113.5','Campus','120','Review presentation','Y','Viewed on campus network','2025-04-01','2025-04-01','N','N','N','N',1,'LIC001');
INSERT INTO digital_asset_usage VALUES ('DU002','AS002','MB002','EV002','Download','2025-05-15 14:30','Tablet','198.51.100.22','Offsite','45','Prepare materials','Y','Downloaded for offline use','2025-05-15','2025-05-15','Y','N','Y','N',2,'LIC002');
INSERT INTO digital_asset_usage VALUES ('DU003','AS003','MB003','EV003','Edit','2025-06-10 09:15','Desktop','192.0.2.77','Campus','300','Update graphics','Y','Edited logo','2025-06-10','2025-06-10','N','Y','N','Y',3,'LIC003');

-- Community volunteer role table
CREATE TABLE community_volunteer_role
(
    role_id                 TEXT PRIMARY KEY,
    volunteer_id            TEXT,
    role_name               TEXT,
    description             TEXT,
    start_date              TEXT,
    end_date                TEXT,
    hours_per_week          INTEGER,
    supervisor_id           TEXT,
    training_completed      TEXT,
    training_date           TEXT,
    certification_id        TEXT,
    certification_expiry    TEXT,
    status                  TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    shift_pattern           TEXT,
    preferred_location      TEXT,
    background_check_date   TEXT,
    background_check_status TEXT,
    FOREIGN KEY (volunteer_id) REFERENCES volunteer(volunteer_id)
);
INSERT INTO community_volunteer_role VALUES ('VR001','VL001','Event Setup','Assist with setting up chairs and tables','2025-03-01','2025-05-31',10,'SV001','Y','2025-02-20','CERT001','2026-02-20','ACTIVE','Reliable and punctual','2025-02-01','2025-02-25','Morning','North Campus','2025-02-10','PASS');
INSERT INTO community_volunteer_role VALUES ('VR002','VL002','Food Service','Serve food at community meals','2025-04-15','2025-07-15',8,'SV002','Y','2025-04-01','CERT002','2026-04-01','ACTIVE','Good with people','2025-03-20','2025-04-05','Afternoon','South Campus','2025-03-25','PASS');
INSERT INTO community_volunteer_role VALUES ('VR003','VL003','Mentor','Provide mentorship to youth participants','2025-05-01','2025-12-31',5,'SV003','N','NULL','CERT003','2026-05-01','PENDING','Training scheduled','2025-04-15','2025-04-20','Evening','East Campus','2025-04-10','PENDING');

-- Digital asset metadata table
CREATE TABLE digital_asset_metadata
(
    asset_id                TEXT PRIMARY KEY,
    file_name               TEXT,
    file_type               TEXT,
    file_size_bytes         INTEGER,
    creator_id              TEXT,
    creation_date           TEXT,
    last_modified_date      TEXT,
    description             TEXT,
    tags                    TEXT,
    language                TEXT,
    rights_holder           TEXT,
    license_type            TEXT,
    usage_limitations       TEXT,
    format_version          TEXT,
    checksum                TEXT,
    category                TEXT,
    subcategory             TEXT,
    related_asset_id        TEXT,
    accessibility_features  TEXT,
    retention_policy        TEXT,
    FOREIGN KEY (creator_id) REFERENCES member(member_id)
);
INSERT INTO digital_asset_metadata VALUES ('AS001','keynote_slide.pdf','PDF',204800,'MB001','2024-12-01','2025-03-28','Keynote presentation slides','keynote,slide','English','University','CC BY','None','1.7','abcd1234ef','Presentation','Conference','NULL','Captioning','6 months');
INSERT INTO digital_asset_metadata VALUES ('AS002','promo_video.mp4','MP4',52428800,'MB002','2024-11-15','2025-04-10','Promotional video for event','promo,video','English','Marketing Dept','Standard','Geoblocked','2.0','efgh5678ij','Video','Advertising','AS001','Subtitles','1 year');
INSERT INTO digital_asset_metadata VALUES ('AS003','logo.png','PNG',102400,'MB003','2025-01-05','2025-01-05','Event logo','logo,branding','English','Design Team','MIT','None','1.0','ijkl9012mn','Image','Branding','NULL','High Contrast','Indefinite');

-- Facility asset depreciation table
CREATE TABLE facility_asset_depreciation
(
    depreciation_id          TEXT PRIMARY KEY,
    asset_id                 TEXT,
    asset_name               TEXT,
    acquisition_date         TEXT,
    purchase_price           REAL,
    depreciation_method      TEXT,
    useful_life_years        INTEGER,
    salvage_value            REAL,
    accumulated_depreciation REAL,
    net_book_value           REAL,
    last_depreciation_date  TEXT,
    depreciation_rate        REAL,
    department_responsible   TEXT,
    depreciation_status      TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    fiscal_year              TEXT,
    cost_center              TEXT,
    asset_category           TEXT,
    FOREIGN KEY (asset_id) REFERENCES equipment_inventory(equipment_id)
);
INSERT INTO facility_asset_depreciation VALUES ('DEP001','EQ001','Projector Model X','2022-08-15',1200,'StraightLine',5,200,400,600,'2024-12-31',0.2','AVDept','ACTIVE','Used in Lecture Halls','2024-01-01','2024-06-01','2024','CC500','AV Equipment');
INSERT INTO facility_asset_depreciation VALUES ('DEP002','EQ002','Audio Mixer Z','2021-05-20',2500,'DecliningBalance',7,300,800,1400,'2024-12-31',0.15','MusicDept','ACTIVE','Studio Use','2024-01-10','2024-06-05','2024','CC501','Audio Equipment');
INSERT INTO facility_asset_depreciation VALUES ('DEP003','EQ003','Office Furniture Set','2020-01-10',3500,'StraightLine',10,500,1200,1800,'2024-12-31',0.1','Facilities','ACTIVE','General Office','2024-01-20','2024-06-10','2024','CC502','Furniture');