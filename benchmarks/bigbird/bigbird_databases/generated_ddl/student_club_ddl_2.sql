-- Advertising Channel Table
CREATE TABLE advertising_channel
(
    channel_id               TEXT primary key,
    channel_name             TEXT,
    medium_type              TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    budget_allocated         REAL,
    impressions              INTEGER,
    clicks                   INTEGER,
    ctr                      REAL,
    cpc                      REAL,
    cpm                      REAL,
    target_audience          TEXT,
    geo_target               TEXT,
    platform                 TEXT,
    ad_format                TEXT,
    creative_id              TEXT,
    spend_actual             REAL,
    conversion_rate          REAL,
    lead_count               INTEGER,
    remarks                  TEXT,
    status                   TEXT
);
INSERT INTO advertising_channel VALUES ('CH001','FacebookAds','Social','2024-01-01','2024-12-31',50000,1000000,5000,0.005,10,20,'Students','NorthAmerica','Facebook','Image','CR001',45000,0.04,1800,'Initial launch','Active');
INSERT INTO advertising_channel VALUES ('CH002','GoogleSearch','Search','2024-02-15','2024-11-30',30000,800000,4000,0.005,7.5,18,'Professionals','Europe','Google','Text','CR002',28000,0.035,1400,'Seasonal boost','Active');
INSERT INTO advertising_channel VALUES ('CH003','LocalBillboard','Outdoor','2024-03-01','2024-09-30',20000,0,0,0,0,0,'GeneralPublic','Midwest','BillboardCo','Static','CR003',19000,0,0,'Quarterly campaign','Planned');

-- Catering Menu Table
CREATE TABLE catering_menu
(
    menu_id                 TEXT primary key,
    menu_name               TEXT,
    event_id                TEXT,
    dish_type               TEXT,
    main_course             TEXT,
    side_dish               TEXT,
    dessert                 TEXT,
    beverage                TEXT,
    calories_per_serving    INTEGER,
    vegetarian              TEXT,
    vegan                   TEXT,
    gluten_free             TEXT,
    nut_allergy_friendly    TEXT,
    spice_level             TEXT,
    portion_size            TEXT,
    price_per_plate         REAL,
    supplier_id             TEXT,
    preparation_time_min    INTEGER,
    serving_time_min        INTEGER,
    special_requests        TEXT,
    notes                   TEXT
);
INSERT INTO catering_menu VALUES ('M001','StandardLunch','EV001','Buffet','GrilledChicken','SteamedVeggies','FruitSalad','IcedTea',650,'Yes','No','Yes','No','Mild','Medium','15.00','SUP001',30,45,'None','Standard menu');
INSERT INTO catering_menu VALUES ('M002','VeganDelight','EV002','Plated','TofuStirFry','QuinoaSalad','VeganBrownie','LemonWater',550,'Yes','Yes','Yes','Yes','Medium','Small','18.50','SUP002',45,60,'Gluten free option','Special diet menu');
INSERT INTO catering_menu VALUES ('M003','ExecutiveDinner','EV003','Plated','FiletMignon','RoastedPotatoes','Cheesecake','RedWine',900,'No','No','No','Yes','Low','Large','45.00','SUP003',60,90,'Add extra wine','Premium menu');

-- Parking Capacity Table
CREATE TABLE parking_capacity
(
    parking_id              TEXT primary key,
    location                TEXT,
    total_spots             INTEGER,
    covered_spots           INTEGER,
    handicap_spots          INTEGER,
    electric_charging_spots INTEGER,
    reserved_spots          INTEGER,
    event_id                TEXT,
    available_spots         INTEGER,
    occupied_spots          INTEGER,
    date                    TEXT,
    time_slot               TEXT,
    surveillance_level      TEXT,
    access_control          TEXT,
    fee_per_hour            REAL,
    max_duration_hours      INTEGER,
    security_staff_on_duty  INTEGER,
    lighting_quality        TEXT,
    weather_protection      TEXT,
    notes                   TEXT,
    status                  TEXT
);
INSERT INTO parking_capacity VALUES ('PK001','LotA',200,50,10,5,20,'EV001',150,50,'2024-05-10','Morning','High','Gated',2.5,4,3,'Good','Covered','None','Open');
INSERT INTO parking_capacity VALUES ('PK002','LotB',150,30,5,2,10,'EV002',120,30,'2024-06-15','Afternoon','Medium','Open',1.5,6,2,'Adequate','Open','Reserved for staff','Open');
INSERT INTO parking_capacity VALUES ('PK003','GarageC',300,300,20,10,0,'EV003',250,50,'2024-07-20','Evening','High','Ticketed',3.0,8,5,'Excellent','Underground','VIP section','Open');

-- Supplier Contract Table
CREATE TABLE supplier_contract
(
    contract_id             TEXT primary key,
    supplier_id             TEXT,
    contract_name           TEXT,
    start_date              TEXT,
    end_date                TEXT,
    total_value             REAL,
    currency                TEXT,
    payment_terms           TEXT,
    renewal_option          TEXT,
    termination_clause      TEXT,
    primary_contact         TEXT,
    contact_phone           TEXT,
    contact_email           TEXT,
    service_type            TEXT,
    coverage_area           TEXT,
    performance_rating      REAL,
    compliance_requirements TEXT,
    insurance_required      TEXT,
    audit_frequency_months  INTEGER,
    notes                   TEXT,
    status                  TEXT
);
INSERT INTO supplier_contract VALUES ('SC001','SUP001','Catering Services','2024-01-01','2025-12-31',120000,'USD','Net30','Yes','30days','JohnDoe','5551234','johndoe@example.com','Catering','Nationwide',4.5,'ISO9001','Yes',12,'Annual review','Active');
INSERT INTO supplier_contract VALUES ('SC002','SUP002','Audio Equipment Rental','2024-03-15','2026-03-14',80000,'USD','Net45','No','60days','JaneSmith','5555678','janesmith@example.com','Audio','Regional',4.0,'None','No',6,'Quarterly checks','Active');
INSERT INTO supplier_contract VALUES ('SC003','SUP003','Security Services','2024-02-01','2024-11-30',50000,'USD','Net15','Yes','15days','MikeBrown','5559012','mikebrown@example.com','Security','Local',4.8','BackgroundCheck','Yes',3,'Monthly audit','Active');

-- Ticket Sales Table
CREATE TABLE ticket_sales
(
    ticket_id               TEXT primary key,
    event_id                TEXT,
    sale_date               TEXT,
    buyer_id                TEXT,
    ticket_type             TEXT,
    price                   REAL,
    quantity                INTEGER,
    total_amount            REAL,
    purchase_method         TEXT,
    channel                 TEXT,
    promo_code              TEXT,
    discount_amount         REAL,
    tax_amount              REAL,
    net_amount              REAL,
    seat_section            TEXT,
    seat_row                TEXT,
    seat_number             TEXT,
    gate                    TEXT,
    scanning_status         TEXT,
    entry_time              TEXT,
    exit_time               TEXT,
    notes                   TEXT
);
INSERT INTO ticket_sales VALUES ('TS001','EV001','2024-04-10','BUY001','General','20.00',2,40.00,'Online','Website','SPRING20',8.00,3.20,34.40,'A','12','24','Gate1','Scanned','2024-05-01 18:05','2024-05-01 20:30','First batch');
INSERT INTO ticket_sales VALUES ('TS002','EV002','2024-05-05','BUY002','VIP','50.00',1,50.00,'BoxOffice','Counter','VIP2024',0.00,4.00,46.00,'VIP','1','1','Gate2','Pending','2024-06-15 19:00','2024-06-15 22:00','VIP ticket');
INSERT INTO ticket_sales VALUES ('TS003','EV003','2024-06-01','BUY003','Student','15.00',3,45.00,'Online','MobileApp','STU10',4.50,2.25,38.25,'B','5','12','Gate3','Scanned','2024-07-20 17:45','2024-07-20 19:15','Group of students');

-- Weather Forecast Table
CREATE TABLE weather_forecast
(
    forecast_id            TEXT primary key,
    event_id               TEXT,
    forecast_date          TEXT,
    temperature_high       REAL,
    temperature_low        REAL,
    precipitation_chance   REAL,
    wind_speed             REAL,
    wind_direction         TEXT,
    humidity               REAL,
    condition_description  TEXT,
    uv_index               INTEGER,
    visibility_km          REAL,
    sunrise_time           TEXT,
    sunset_time            TEXT,
    advisory               TEXT,
    alerts                 TEXT,
    updated_at             TEXT,
    source                 TEXT,
    confidence_level       REAL,
    notes                  TEXT,
    status                 TEXT
);
INSERT INTO weather_forecast VALUES ('WF001','EV001','2024-05-01',78,60,20,8,'NE',55,'PartlyCloudy',5,10,'06:12','20:15','CarryUmbrella','None','2024-04-28','NationalWeatherService',0.9,'Clear conditions expected','Confirmed');
INSERT INTO weather_forecast VALUES ('WF002','EV002','2024-06-15',85,68,10,5,'NW',45,'Sunny',7,12,'05:58','20:30','StayHydrated','None','2024-06-10','NationalWeatherService',0.95,'Very hot day','Confirmed');
INSERT INTO weather_forecast VALUES ('WF003','EV003','2024-07-20',70,55,70,12,'S',80,'Thunderstorms',3,8,'06:15','20:10','SeekShelter','StormWarning','2024-07-18','NationalWeatherService',0.85,'Severe weather expected','Alert');

-- Audit Trail Table
CREATE TABLE audit_trail
(
    audit_id               TEXT primary key,
    entity_type            TEXT,
    entity_id              TEXT,
    action_type            TEXT,
    performed_by           TEXT,
    performed_at           TEXT,
    ip_address             TEXT,
    device                 TEXT,
    previous_value         TEXT,
    new_value              TEXT,
    change_reason          TEXT,
    approval_status        TEXT,
    reviewer_id            TEXT,
    review_timestamp       TEXT,
    comments               TEXT,
    jurisdiction           TEXT,
    compliance_rule        TEXT,
    risk_level             TEXT,
    escalation_required    TEXT,
    resolution_status      TEXT,
    notes                  TEXT
);
INSERT INTO audit_trail VALUES ('AU001','budget','BUD001','Update','admin','2024-04-01 10:00','192.168.1.10','Web','5000','4800','Adjusted for actual spend','Approved','rev001','2024-04-01 12:00','All good','US','FIN001','Medium','No','Resolved','Budget adjustment');
INSERT INTO audit_trail VALUES ('AU002','member','MEM005','Delete','admin','2024-05-12 14:30','192.168.1.12','Web','Active','Deleted','Member left organization','Approved','rev002','2024-05-12 15:00','Deleted per request','US','HR001','Low','No','Resolved','Member deletion');
INSERT INTO audit_trail VALUES ('AU003','event','EV003','Create','event_manager','2024-06-20 09:15','192.168.1.20','Mobile','NULL','Created','New event added','Pending','rev003','2024-06-20 10:00','Awaiting approval','US','EVT001','High','Yes','Open','Event creation pending');

-- Resource Allocation Table
CREATE TABLE resource_allocation
(
    allocation_id           TEXT primary key,
    resource_type           TEXT,
    resource_id             TEXT,
    event_id                TEXT,
    start_datetime          TEXT,
    end_datetime            TEXT,
    quantity_allocated      INTEGER,
    unit                    TEXT,
    priority_level          TEXT,
    allocated_by            TEXT,
    allocation_status       TEXT,
    cost_center             TEXT,
    budget_code             TEXT,
    notes                   TEXT,
    external_vendor         TEXT,
    contract_ref            TEXT,
    renewal_date            TEXT,
    usage_rate              REAL,
    depreciation_years      INTEGER,
    maintenance_schedule    TEXT,
    deallocation_date       TEXT
);
INSERT INTO resource_allocation VALUES ('RA001','Audio','AUD001','EV001','2024-05-01 08:00','2024-05-01 22:00',5,'Units','High','event_manager','Active','CC100','BC200','Main stage audio','AudioCo','CON123','2025-05-01',0.8,3,'Quarterly','');
INSERT INTO resource_allocation VALUES ('RA002','Lighting','LGT001','EV002','2024-06-10 09:00','2024-06-10 23:00',12,'Units','Medium','event_manager','Active','CC101','BC201','Outdoor lighting','LightWorks','CON124','2025-06-10',0.6,5,'Biannual','');
INSERT INTO resource_allocation VALUES ('RA003','CateringStaff','CST001','EV003','2024-07-15 06:00','2024-07-15 18:00',20,'People','Low','event_manager','Pending','CC102','BC202','Food service team','StaffAgency','CON125','2025-07-15',1.0,2,'Monthly','');

-- Sponsorship Benefit Table
CREATE TABLE sponsorship_benefit
(
    benefit_id              TEXT primary key,
    sponsor_id              TEXT,
    benefit_type            TEXT,
    description             TEXT,
    activation_date         TEXT,
    expiration_date         TEXT,
    deliverable_status      TEXT,
    assigned_to             TEXT,
    contact_person          TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    value_estimate          REAL,
    metric_target           INTEGER,
    metric_actual           INTEGER,
    reporting_frequency     TEXT,
    notes                   TEXT,
    approval_status         TEXT,
    reviewer_id             TEXT,
    review_date             TEXT,
    compliance_flag        TEXT,
    notes_extra             TEXT
);
INSERT INTO sponsorship_benefit VALUES ('SB001','SP001','LogoPlacement','Logo on event program','2024-04-01','2024-12-31','Delivered','marketing_team','AliceGreen','alice@example.com','5551111',15000,5000,4800','Monthly','All good','Approved','rev010','2024-04-05','Yes','');
INSERT INTO sponsorship_benefit VALUES ('SB002','SP002','BoothSpace','Premium exhibition booth','2024-05-15','2024-09-15','Pending','event_staff','BobWhite','bob@example.com','5552222',25000,200,150','Quarterly','Awaiting setup','Pending','rev011','2024-05-20','No','');
INSERT INTO sponsorship_benefit VALUES ('SB003','SP003','SpeakingSlot','Keynote speaking slot','2024-06-20','2024-06-20','Delivered','program_committee','CarolBlack','carol@example.com','5553333',30000,1,1','OneTime','Speaker confirmed','Approved','rev012','2024-06-01','Yes','');

-- Publicity Release Table
CREATE TABLE publicity_release
(
    release_id              TEXT primary key,
    title                   TEXT,
    release_date            TEXT,
    medium                  TEXT,
    target_audience         TEXT,
    region                  TEXT,
    language                TEXT,
    author                  TEXT,
    editor                  TEXT,
    distribution_list       TEXT,
    reach_estimate          INTEGER,
    actual_reach            INTEGER,
    engagement_rate         REAL,
    clicks                  INTEGER,
    shares                  INTEGER,
    comments                INTEGER,
    sentiment_score         REAL,
    notes                   TEXT,
    status                  TEXT,
    approval_date           TEXT,
    approver_id             TEXT
);
INSERT INTO publicity_release VALUES ('PR001','Spring Festival Announcement','2024-04-01','PressRelease','GeneralPublic','Nationwide','English','JohnDoe','JaneSmith','ListA',50000,47000,0.12,5800,1200,300,0.75,'Initial release','Published','2024-03-28','AP001');
INSERT INTO publicity_release VALUES ('PR002','Volunteer Appreciation','2024-05-10','Newsletter','Volunteers','Regional','English','EmilyWhite','MarkBrown','ListB',10000,9500,0.18,1700,400,80,0.82','Second issue','Published','2024-05-05','AP002');
INSERT INTO publicity_release VALUES ('PR003','Annual Report Summary','2024-06-20','PDF','Stakeholders','International','English','LauraGreen','SamBlue','ListC',20000,19000,0.15,3000,600,150,0.78','Final release','Scheduled','2024-06-15','AP003');