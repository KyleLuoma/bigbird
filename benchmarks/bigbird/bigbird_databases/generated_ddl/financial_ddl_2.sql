-- Compliance audit records
CREATE TABLE compliance_audit
(
    audit_id            INTEGER PRIMARY KEY,
    audit_date          DATE NOT NULL,
    auditor_name        TEXT NOT NULL,
    department          TEXT NOT NULL,
    scope               TEXT NOT NULL,
    findings            TEXT NOT NULL,
    severity_level      TEXT NOT NULL,
    corrective_action   TEXT NOT NULL,
    deadline            DATE NOT NULL,
    status              TEXT NOT NULL,
    notes               TEXT,
    risk_score          REAL,
    audit_type          TEXT,
    location            TEXT,
    compliance_area     TEXT,
    regulation_id       TEXT,
    evidence_count      INTEGER,
    follow_up_needed    TEXT,
    reviewed_by         TEXT,
    review_date         DATE
);
INSERT INTO compliance_audit VALUES (1,'2024-11-01','AliceSmith','Finance','Transactions','Multiple policy breaches','High','Revise policy','2025-01-15','Open','Initial review','8.7','Internal','HQ','AntiMoneyLaundering','AML2023',5,'Yes','BobJones','2024-11-03');
INSERT INTO compliance_audit VALUES (2,'2024-10-20','JohnDoe','Operations','Disbursements','Late payouts detected','Medium','Adjust schedule','2025-02-01','InProgress','Pending manager signoff','5.2','External','Branch01','PaymentsRegulation','PAY2022',3,'No','CarolLee','2024-10-22');
INSERT INTO compliance_audit VALUES (3,'2024-09-15','MariaGarcia','IT','System Access','Unauthorized access logs','Critical','Lock accounts','2024-12-01','Resolved','All issues fixed','9.4','Internal','DataCenter','DataProtection','DP2021',8,'No','DanMiller','2024-09-18');

-- Digital asset transaction log
CREATE TABLE digital_asset_log
(
    asset_tx_id          INTEGER PRIMARY KEY,
    asset_id             TEXT NOT NULL,
    tx_timestamp         DATE NOT NULL,
    tx_type              TEXT NOT NULL,
    source_system        TEXT NOT NULL,
    destination_system   TEXT NOT NULL,
    transferred_bytes    INTEGER,
    transfer_status      TEXT,
    checksum             TEXT,
    operator_id          INTEGER,
    approval_code        TEXT,
    latency_ms           REAL,
    protocol_version     TEXT,
    encryption_used      TEXT,
    file_format          TEXT,
    retention_policy     TEXT,
    audit_trail_id       INTEGER,
    error_code           TEXT,
    error_description    TEXT,
    notes                TEXT
);
INSERT INTO digital_asset_log VALUES (101,'ASSET001','2024-12-05','Export','MainDB','Archive','2048000','Success','ABCDEF12345',201,'APRV100','12.5','v2','AES256','CSV','Standard','5001','NULL','None','First backup');
INSERT INTO digital_asset_log VALUES (102,'ASSET002','2024-12-06','Import','Archive','Analytics','1024000','Success','XYZ7890',202,'APRV101','9.8','v2','AES256','JSON','Extended','5002','NULL','None','Data sync');
INSERT INTO digital_asset_log VALUES (103,'ASSET003','2024-12-07','Transfer','Analytics','Reporting','512000','Failed','LMN4567',203,'APRV102','15.2','v3','RSA','XML','Standard','5003','ERR45','Timeout during transfer','Retry scheduled');

-- Weather station observations
CREATE TABLE weather_station
(
    station_id          INTEGER PRIMARY KEY,
    station_name        TEXT NOT NULL,
    latitude            REAL NOT NULL,
    longitude           REAL NOT NULL,
    elevation_m         INTEGER,
    observation_date    DATE NOT NULL,
    temperature_c       REAL,
    humidity_percent    REAL,
    wind_speed_kph      REAL,
    wind_direction_deg  INTEGER,
    precipitation_mm    REAL,
    pressure_hpa        REAL,
    visibility_km       REAL,
    cloud_coverage_pct  REAL,
    uv_index            REAL,
    dew_point_c         REAL,
    heat_index_c        REAL,
    sunshine_duration_hr REAL,
    sensor_status       TEXT,
    maintenance_note    TEXT
);
INSERT INTO weather_station VALUES (1,'NorthHill',45.1234,-71.5678,250,'2024-12-01',2.5,78,12.3,180,0.0,1015,10,20,1,1.2,3.0,5,'Operational','Last calibrated 2024-09');
INSERT INTO weather_station VALUES (2,'LakeSide',46.2345,-72.6789,180,'2024-12-01',-1.0,85,8.1,90,2.5,1012,8,30,3,2.0,1.5,4,'Operational','Battery replaced 2024-10');
INSERT INTO weather_station VALUES (3,'ValleyBase',44.9876,-70.5432,120,'2024-12-01',5.0,70,5.0,270,0.0,1018,12,10,0,0.5,1.0,6,'Maintenance','Sensor firmware update pending');

-- Telecom network node inventory
CREATE TABLE telecom_node_inventory
(
    node_id               INTEGER PRIMARY KEY,
    node_name             TEXT NOT NULL,
    node_type             TEXT NOT NULL,
    ip_address            TEXT NOT NULL,
    mac_address           TEXT NOT NULL,
    installation_date     DATE,
    firmware_version      TEXT,
    hardware_vendor       TEXT,
    hardware_model        TEXT,
    serial_number         TEXT,
    location_city         TEXT,
    location_region       TEXT,
    latitude              REAL,
    longitude             REAL,
    status                TEXT,
    uptime_days           INTEGER,
    last_maintenance      DATE,
    maintenance_cycle_days INTEGER,
    support_contract_id   TEXT,
    notes                 TEXT
);
INSERT INTO telecom_node_inventory VALUES (1001,'NodeA','Router','192.168.1.1','AA:BB:CC:DD:EE:01','2023-05-10','v1.2.3','Cisco','ISR4431','SN001','Springfield','Midwest',39.7817,-89.6501,'Active',250,'2024-11-01',180,'SC100','No issues');
INSERT INTO telecom_node_inventory VALUES (1002,'NodeB','Switch','192.168.1.2','AA:BB:CC:DD:EE:02','2023-06-15','v2.0.0','Juniper','EX4300','SN002','Shelbyville','Midwest',39.8000,-89.6600,'Active',240,'2024-10-20',180,'SC101','Port 24 replaced');
INSERT INTO telecom_node_inventory VALUES (1003,'NodeC','BaseStation','10.0.0.5','AA:BB:CC:DD:EE:03','2024-01-20','v3.1.1','Ericsson','BTS9000','SN003','CapitalCity','Midwest',40.0000,-89.7000','Degraded',120,'2024-09-15',365,'SC102','Power fluctuations observed');

-- Insurance claim records
CREATE TABLE insurance_claim
(
    claim_id               INTEGER PRIMARY KEY,
    policy_number          TEXT NOT NULL,
    claim_date             DATE NOT NULL,
    claimant_name          TEXT NOT NULL,
    claimant_address       TEXT,
    claim_type             TEXT,
    incident_description   TEXT,
    incident_date          DATE,
    loss_amount            REAL,
    approved_amount        REAL,
    status                 TEXT,
    adjuster_id            INTEGER,
    adjuster_name          TEXT,
    payment_method         TEXT,
    payment_date           DATE,
    deductible             REAL,
    coverage_limit         REAL,
    notes                  TEXT,
    external_reference_id  TEXT,
    fraud_flag             TEXT
);
INSERT INTO insurance_claim VALUES (50001,'POL12345','2024-11-20','JohnDoe','123MainSt','Auto','Rear-end collision','2024-11-18',15000,12000,'Approved',301,'EmilyClark','BankTransfer','2024-12-01',500,20000,'All docs received','EXT987','No');
INSERT INTO insurance_claim VALUES (50002,'POL54321','2024-10-15','AliceSmith','456ElmSt','Home','Water damage from burst pipe','2024-10-10',25000,20000,'Pending',302,'MichaelBrown','Check','NULL',1000,50000,'Awaiting contractor estimate','EXT654','No');
INSERT INTO insurance_claim VALUES (50003,'POL67890','2024-09-05','BobJohnson','789OakSt','Health','Hospitalization for surgery','2024-08-30',30000,30000,'Closed',303,'SarahLee','DirectDeposit','2024-09-20',0,100000,'Closed with no issues','EXT321','No');

-- Property valuation assessments
CREATE TABLE property_valuation
(
    valuation_id           INTEGER PRIMARY KEY,
    property_id            TEXT NOT NULL,
    assessment_date        DATE NOT NULL,
    assessor_name          TEXT,
    property_type          TEXT,
    address                TEXT,
    city                   TEXT,
    state                  TEXT,
    zip_code               TEXT,
    land_area_sqft         INTEGER,
    building_area_sqft     INTEGER,
    year_built             INTEGER,
    market_value_usd       REAL,
    assessed_value_usd     REAL,
    depreciation_rate_pct  REAL,
    zoning_class           TEXT,
    flood_zone_indicator   TEXT,
    hoa_fee_usd            REAL,
    tax_assessment_usd     REAL,
    notes                  TEXT
);
INSERT INTO property_valuation VALUES (8001,'PROP001','2024-11-10','DavidMiller','Residential','1001 Pine St','Springfield','IL','62704',5000,2500,1995,350000,340000,1.2,'R-1','Low','150','2000','New kitchen added');
INSERT INTO property_valuation VALUES (8002,'PROP002','2024-10-22','LindaClark','Commercial','2002 Market Ave','Shelbyville','IL','62565',8000,6000,2005,850000,830000,0.8','C-2','Medium','500','5000','Tenant lease expiring 2025');
INSERT INTO property_valuation VALUES (8003,'PROP003','2024-09-30','StevenYoung','Industrial','3003 Factory Rd','CapitalCity','IL','62801',12000,10000,1980,1200000,1150000,1.5','I-1','High','1000','7500','Requires roof repairs');

-- Logistics route schedule
CREATE TABLE logistics_route
(
    route_id               INTEGER PRIMARY KEY,
    route_name             TEXT NOT NULL,
    origin_location        TEXT NOT NULL,
    destination_location   TEXT NOT NULL,
    distance_km            REAL,
    estimated_time_hr      REAL,
    vehicle_type           TEXT,
    driver_id              INTEGER,
    driver_name            TEXT,
    departure_time         TIME,
    arrival_time           TIME,
    cargo_type             TEXT,
    cargo_weight_kg        REAL,
    temperature_control    TEXT,
    max_load_kg            REAL,
    fuel_consumption_l_per_100km REAL,
    maintenance_due_km    INTEGER,
    next_inspection_date   DATE,
    compliance_status      TEXT,
    notes                  TEXT
);
INSERT INTO logistics_route VALUES (4001,'North Loop','Springfield Warehouse','Shelbyville Depot',150.5,3.2,'Truck',701,'MikeTaylor','08:00','11:12','Electronics',12000,'Yes',15000,30,5000,'2025-01-15','Compliant','On schedule');
INSERT INTO logistics_route VALUES (4002,'East Express','Shelbyville Depot','CapitalCity Hub',210.0,4.5,'Van',702,'SaraWilson','13:30','18:00','Perishables',8000,'Yes',10000,28,6000,'2024-12-30','Compliant','Refrigerated');
INSERT INTO logistics_route VALUES (4003,'South Connector','CapitalCity Hub','Springfield Warehouse',190.3,4.0,'Trailer',703,'TomHarris','22:00','02:00','Construction Materials',25000,'No',30000,35,7000,'2025-03-10','Pending','Night shift');

-- Pharmacy inventory ledger
CREATE TABLE pharmacy_inventory
(
    inventory_id           INTEGER PRIMARY KEY,
    pharmacy_id            INTEGER NOT NULL,
    drug_code              TEXT NOT NULL,
    drug_name              TEXT NOT NULL,
    dosage_form            TEXT,
    strength_mg            REAL,
    pack_size              INTEGER,
    quantity_on_hand       INTEGER,
    reorder_point          INTEGER,
    reorder_quantity       INTEGER,
    last_order_date        DATE,
    expiry_date            DATE,
    supplier_id            INTEGER,
    purchase_price_usd     REAL,
    selling_price_usd      REAL,
    discount_percent       REAL,
    storage_temperature_c  REAL,
    controlled_substance   TEXT,
    special_handling       TEXT,
    notes                  TEXT
);
INSERT INTO pharmacy_inventory VALUES (9001,10,'DRG001','Aspirin','Tablet',500,100,250,50,200,'2024-10-01','2025-10-01',55,0.05,0.10,0,'RoomTemp','No','None','Standard over‑the‑counter');
INSERT INTO pharmacy_inventory VALUES (9002,10,'DRG002','Insulin','Injection',10,1,75,20,100,'2024-11-15','2025-05-15',60,5.00,7.50,5,2,'Yes','Refrigerated','Requires cold chain');
INSERT INTO pharmacy_inventory VALUES (9003,11,'DRG003','Amoxicillin','Capsule',250,30,180,40,150,'2024-09-20','2025-09-20',61,0.12,0.18,0,'RoomTemp','No','None','Antibiotic stock');

-- Research study participant registry
CREATE TABLE research_participant
(
    participant_id         INTEGER PRIMARY KEY,
    study_id               TEXT NOT NULL,
    enrollment_date        DATE NOT NULL,
    gender                 TEXT,
    birth_year             INTEGER,
    ethnicity              TEXT,
    consent_given          TEXT,
    contact_phone          TEXT,
    email_address          TEXT,
    address_line1          TEXT,
    city                   TEXT,
    state                  TEXT,
    zip_code               TEXT,
    baseline_score         REAL,
    followup_score         REAL,
    adverse_events         TEXT,
    medication_use         TEXT,
    smoking_status         TEXT,
    alcohol_use_frequency  TEXT,
    notes                  TEXT
);
INSERT INTO research_participant VALUES (20001,'STDY001','2024-01-15','Female',1985,'Hispanic','Yes','5551234567','alice@example.com','123 Oak St','Springfield','IL','62704',2.5,3.1,'None','None','Never','Occasional','Participant completed all visits');
INSERT INTO research_participant VALUES (20002,'STDY001','2024-02-20','Male',1990,'Caucasian','Yes','5559876543','bob@example.com','456 Pine St','Shelbyville','IL','62565',3.0,2.8,'Mild headache','Aspirin','Former','Moderate','Lost to follow‑up at month 6');
INSERT INTO research_participant VALUES (20003,'STDY002','2024-03-05','Other',2000,'Asian','No','5555555555','carol@example.com','789 Maple St','CapitalCity','IL','62801',1.8,NULL,'N/A','None','Never','None','Screened but did not consent');

-- Media broadcast schedule
CREATE TABLE media_broadcast
(
    broadcast_id           INTEGER PRIMARY KEY,
    channel_name           TEXT NOT NULL,
    program_title          TEXT NOT NULL,
    episode_number         INTEGER,
    start_time             TIME NOT NULL,
    end_time               TIME NOT NULL,
    broadcast_date         DATE NOT NULL,
    genre                  TEXT,
    director               TEXT,
    producer               TEXT,
    rating                 TEXT,
    language               TEXT,
    subtitles_available    TEXT,
    parental_advisory      TEXT,
    ad_spots_count         INTEGER,
    ad_revenue_usd         REAL,
    viewership_estimate    INTEGER,
    market_share_percent   REAL,
    streaming_available    TEXT,
    notes                  TEXT
);
INSERT INTO media_broadcast VALUES (3001,'NewsChannel','Morning Headlines',1,'06:00','07:00','2024-12-01','News','JohnEditor','MaryProducer','PG','English','Yes','None',2,5000,150000,12.5,'Yes','Live broadcast');
INSERT INTO media_broadcast VALUES (3002,'SportsNet','Championship Recap',12,'20:30','22:00','2024-12-01','Sports','AlexCoach','LindaDirector','PG-13','English','Yes','Violence',5,12000,200000,18.0,'Yes','Highlights included');
INSERT INTO media_broadcast VALUES (3003,'MovieChannel','Classic Film Night',3,'22:00','00:00','2024-12-01','Drama','SamuelDirector','NinaProducer','R','English','No','Alcohol',0,0,80000,5.0,'No','Black‑and‑white restoration');