-- Air quality measurements collected at bank branches
CREATE TABLE branch_air_quality (
    record_id INTEGER PRIMARY KEY,
    branch_id INTEGER,
    measurement_date DATE,
    pm2_5 REAL,
    pm10 REAL,
    no2 REAL,
    o3 REAL,
    co REAL,
    so2 REAL,
    temperature_c REAL,
    humidity_percent REAL,
    wind_speed_mps REAL,
    wind_direction_deg INTEGER,
    sensor_status TEXT,
    technician_id INTEGER,
    calibration_date DATE,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    aqi_index INTEGER
);

INSERT INTO branch_air_quality VALUES (1,101,'2024-01-01',12.5,25.0,15.2,30.1,0.4,3.2,22.5,45.0,3.5,180,'OK',5001,'2023-12-01','Routine check',40.7128,-74.0060,42);
INSERT INTO branch_air_quality VALUES (2,102,'2024-01-02',18.0,40.0,20.5,35.0,0.5,4.0,21.0,50.0,4.0,200,'OK',5002,'2023-12-05','After rain',34.0522,-118.2437,55);
INSERT INTO branch_air_quality VALUES (3,103,'2024-01-03',25.0,55.0,30.0,40.0,0.6,5.0,19.0,55.0,2.5,90,'ALERT',5003,'2023-12-10','High traffic',41.8781,-87.6298,80);

-- Firmware information for mobile devices
CREATE TABLE mobile_device_firmware (
    firmware_id INTEGER PRIMARY KEY,
    device_model TEXT,
    version_code TEXT,
    release_date DATE,
    checksum TEXT,
    size_mb REAL,
    supported_os TEXT,
    security_patch_level DATE,
    encryption_enabled TEXT,
    bootloader_locked TEXT,
    vendor TEXT,
    min_android_version TEXT,
    max_android_version TEXT,
    release_notes TEXT,
    deprecated TEXT,
    download_url TEXT,
    file_format TEXT,
    signed_by TEXT,
    test_build TEXT,
    architecture TEXT
);

INSERT INTO mobile_device_firmware VALUES (1,'Pixel6','12A','2023-11-01','abc123def',120.5,'Android12','2023-10-01','Yes','Yes','Google','12','13','Initial release','No','https://example.com/firmware1','bin','Google','No','arm64');
INSERT INTO mobile_device_firmware VALUES (2,'GalaxyS22','23B','2023-12-15','def456ghi',115.0,'Android13','2023-11-20','Yes','No','Samsung','13','14','Feature update','No','https://example.com/firmware2','bin','Samsung','Yes','arm64');
INSERT INTO mobile_device_firmware VALUES (3,'iPhone13','17C','2024-01-05','ghi789jkl',130.0,'iOS16','2023-12-30','Yes','Yes','Apple','16','16','Security patch','No','https://example.com/firmware3','bin','Apple','No','arm64');

-- Adaptive learning session data
CREATE TABLE digital_adaptive_learning (
    session_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    course_id INTEGER,
    start_timestamp DATE,
    end_timestamp DATE,
    modules_completed INTEGER,
    total_modules INTEGER,
    score_percent REAL,
    time_spent_minutes INTEGER,
    device_type TEXT,
    browser TEXT,
    ip_address TEXT,
    video_played INTEGER,
    quizzes_attempted INTEGER,
    assignments_submitted INTEGER,
    feedback_rating INTEGER,
    cert_earned TEXT,
    instructor_id INTEGER,
    language TEXT,
    proficiency_level TEXT
);

INSERT INTO digital_adaptive_learning VALUES (1,2001,301,'2024-01-02','2024-01-02',5,10,78.5,120,'Desktop','Chrome','192.168.1.10',3,2,1,4,'No',450,'English','Intermediate');
INSERT INTO digital_adaptive_learning VALUES (2,2002,302,'2024-01-03','2024-01-03',8,12,85.0,200,'Mobile','Safari','192.168.1.11',5,4,2,5,'Yes',451,'Spanish','Advanced');
INSERT INTO digital_adaptive_learning VALUES (3,2003,303,'2024-01-04','2024-01-04',10,10,92.0,250,'Tablet','Firefox','192.168.1.12',7,6,3,5,'Yes',452,'French','Expert');

-- Log of shipments received from suppliers
CREATE TABLE supplier_shipment_log (
    shipment_id INTEGER PRIMARY KEY,
    supplier_id INTEGER,
    warehouse_id INTEGER,
    product_sku TEXT,
    quantity INTEGER,
    unit_weight_kg REAL,
    total_weight_kg REAL,
    departure_date DATE,
    arrival_date DATE,
    carrier TEXT,
    tracking_number TEXT,
    shipping_mode TEXT,
    freight_cost REAL,
    insurance_cost REAL,
    customs_duty REAL,
    status TEXT,
    received_by INTEGER,
    quality_check_passed TEXT,
    temperature_controlled TEXT,
    notes TEXT
);

INSERT INTO supplier_shipment_log VALUES (1,500,'W01','SKU12345',100,0.5,50.0,'2024-01-01','2024-01-03','DHL','TRK001','Air',200.0,25.0,15.0,'Delivered',9001,'Yes','No','On time');
INSERT INTO supplier_shipment_log VALUES (2,501,'W02','SKU67890',200,0.3,60.0,'2024-01-02','2024-01-05','FedEx','TRK002','Sea',150.0,20.0,10.0,'Delivered',9002,'Yes','Yes','Delayed due to weather');
INSERT INTO supplier_shipment_log VALUES (3,502,'W03','SKU54321',150,0.4,60.0,'2024-01-03','2024-01-04','UPS','TRK003','Road',180.0,22.0,12.0,'In Transit',9003,'No','No','Awaiting inspection');

-- Trades executed in the energy market
CREATE TABLE energy_market_trade (
    trade_id INTEGER PRIMARY KEY,
    market_id INTEGER,
    trade_date DATE,
    instrument TEXT,
    volume_mwh REAL,
    price_per_mwh REAL,
    total_value REAL,
    buyer_id INTEGER,
    seller_id INTEGER,
    contract_type TEXT,
    settlement_date DATE,
    delivery_point TEXT,
    status TEXT,
    broker_id INTEGER,
    fee REAL,
    currency TEXT,
    exchange_rate REAL,
    trade_type TEXT,
    source_system TEXT,
    remarks TEXT
);

INSERT INTO energy_market_trade VALUES (1,10,'2024-01-01','Solar','500.0','45.0','22500.0',1001,2001,'Physical','2024-01-10','NYC Hub','Settled',3001,100.0,'USD',1.0,'Buy','Internal','First trade of the day');
INSERT INTO energy_market_trade VALUES (2,11,'2024-01-02','Wind','300.0','50.0','15000.0',1002,2002,'Physical','2024-01-12','LA Hub','Pending',3002,80.0,'USD',1.0,'Sell','External','Awaiting confirmation');
INSERT INTO energy_market_trade VALUES (3,12,'2024-01-03','Hydro','400.0','48.0','19200.0',1003,2003,'Physical','2024-01-15','Chicago Hub','Cancelled',3003,90.0,'USD',1.0,'Buy','Internal','Cancelled by buyer');

-- Attendance records for corporate events
CREATE TABLE corporate_event_attendance (
    event_id INTEGER PRIMARY KEY,
    event_name TEXT,
    event_date DATE,
    location TEXT,
    organizer_id INTEGER,
    participant_id INTEGER,
    department TEXT,
    role TEXT,
    registration_status TEXT,
    checkin_time DATE,
    checkout_time DATE,
    feedback_score INTEGER,
    comments TEXT,
    sponsor TEXT,
    budget_usd REAL,
    attendance_type TEXT,
    meals_provided TEXT,
    parking_required TEXT,
    travel_expense REAL,
    accommodation_expense REAL
);

INSERT INTO corporate_event_attendance VALUES (1,'Annual Summit','2024-02-10','New York','4001','6001','Finance','Analyst','Registered','2024-02-10','2024-02-10',4,'Great event','BankCorp',50000.0,'InPerson','Lunch','Yes',300.0,0.0);
INSERT INTO corporate_event_attendance VALUES (2,'Tech Expo','2024-03-15','San Francisco','4002','6002','IT','Developer','CheckedIn','2024-03-15','2024-03-15',5,'Very useful','TechPartners',30000.0,'Virtual','None','No',0.0,0.0);
INSERT INTO corporate_event_attendance VALUES (3,'Leadership Workshop','2024-04-20','Chicago','4003','6003','HR','Manager','Cancelled','2024-04-20','2024-04-20',0,'','HRAlliance',20000.0,'InPerson','Dinner','Yes',150.0,200.0);

-- Versions of AI models used in production
CREATE TABLE ai_model_version (
    model_id INTEGER PRIMARY KEY,
    model_name TEXT,
    version_number TEXT,
    training_dataset TEXT,
    training_start DATE,
    training_end DATE,
    accuracy REAL,
    precision REAL,
    recall REAL,
    f1_score REAL,
    parameters_count INTEGER,
    framework TEXT,
    hyperparameters TEXT,
    compute_resources TEXT,
    owner_team TEXT,
    deployment_status TEXT,
    endpoint_url TEXT,
    last_updated DATE,
    validation_metrics TEXT,
    notes TEXT
);

INSERT INTO ai_model_version VALUES (1,'ChurnPredictor','v1.0','ChurnData2023','2023-06-01','2023-06-30',0.89,0.85,0.87,0.86,1500000,'TensorFlow','lr=0.01,bs=256','GPU Cluster A','DataScience','Deployed','https://api.bank.com/churn','2024-01-01','AUC=0.92','Initial production version');
INSERT INTO ai_model_version VALUES (2,'FraudDetector','v2.1','FraudSet2023','2023-09-01','2023-09-25',0.94,0.93,0.92,0.925,2500000,'PyTorch','lr=0.001,bs=128','GPU Cluster B','RiskAnalytics','Staging','https://api.bank.com/fraud','2024-01-15','AUC=0.96','Improved false positive rate');
INSERT INTO ai_model_version VALUES (3,'CreditScorer','v3.0','CreditData2022','2023-01-10','2023-02-05',0.88,0.86,0.84,0.85,1800000,'Scikit-learn','max_depth=10','CPU Cluster C','CreditTeam','Deployed','https://api.bank.com/credit','2024-02-01','F1=0.85','Added new features');

-- Cryptocurrency wallets linked to customer accounts
CREATE TABLE cryptocurrency_wallet (
    wallet_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    wallet_address TEXT,
    blockchain TEXT,
    creation_date DATE,
    balance_satoshi INTEGER,
    last_tx_hash TEXT,
    status TEXT,
    encryption_method TEXT,
    backup_location TEXT,
    two_factor_enabled TEXT,
    wallet_type TEXT,
    exchange_connected TEXT,
    fiat_equivalent_usd REAL,
    notes TEXT,
    last_backup_date DATE,
    daily_tx_limit INTEGER,
    monthly_tx_limit INTEGER,
    compliance_check TEXT,
    custodial TEXT
);

INSERT INTO cryptocurrency_wallet VALUES (1,7001,'1A2b3C4d5E6f','Bitcoin','2023-05-01',1250000,'hash001','Active','AES256','Cloud','Yes','Hot','Coinbase',45000.0,'Primary wallet','2024-01-01',5,100,'Passed','No');
INSERT INTO cryptocurrency_wallet VALUES (2,7002,'0xAbcDef123456','Ethereum','2023-06-15',300000,'hash002','Active','AES128','Local','No','Cold','Binance',12000.0,'Savings wallet','2024-01-10',2,50,'Passed','Yes');
INSERT INTO cryptocurrency_wallet VALUES (3,7003,'3Q4r5S6t7U8v','Litecoin','2023-07-20',800000,'hash003','Suspended','None','None','No','Hot','Kraken',8000.0,'Suspended for review','2024-01-20',1,20,'Failed','No');

-- Bicycle share stations in the city
CREATE TABLE urban_bicycle_share (
    station_id INTEGER PRIMARY KEY,
    station_name TEXT,
    latitude REAL,
    longitude REAL,
    capacity INTEGER,
    bikes_available INTEGER,
    docks_available INTEGER,
    last_maintenance DATE,
    status TEXT,
    operator_id INTEGER,
    installation_date DATE,
    region TEXT,
    address TEXT,
    average_daily_rides INTEGER,
    peak_hour_start INTEGER,
    peak_hour_end INTEGER,
    electric_bikes INTEGER,
    solar_powered TEXT,
    maintenance_notes TEXT,
    connectivity_status TEXT
);

INSERT INTO urban_bicycle_share VALUES (1,'Downtown Plaza',40.7128,-74.0060,30,12,18,'2024-01-01','Active',8001,'2022-05-10','Midtown','123 Main St',250,7,9,5,'Yes','Replaced dock 3','Online');
INSERT INTO urban_bicycle_share VALUES (2,'Riverfront Park',34.0522,-118.2437,25,8,17,'2024-01-05','Active',8002,'2022-06-15','Westside','456 River Rd',180,8,10,2,'No','Battery check','Online');
INSERT INTO urban_bicycle_share VALUES (3,'University Campus',41.8781,-87.6298,20,5,15,'2024-01-10','Maintenance',8003,'2022-07-20','Eastside','789 College Ave',120,9,11,0,'No','Dock misaligned','Offline');

-- Summary of healthcare insurance claims
CREATE TABLE healthcare_claims_summary (
    claim_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    provider_id INTEGER,
    claim_date DATE,
    service_code TEXT,
    diagnosis_code TEXT,
    procedure_code TEXT,
    billed_amount REAL,
    approved_amount REAL,
    patient_responsibility REAL,
    claim_status TEXT,
    adjudication_date DATE,
    payer TEXT,
    network_status TEXT,
    prior_authorization TEXT,
    notes TEXT,
    claim_type TEXT,
    specialty TEXT,
    facility_type TEXT,
    reimbursement_rate REAL
);

INSERT INTO healthcare_claims_summary VALUES (1,9001,3001,'2024-01-02','SVC001','DX001','PRC001',1500.0,1200.0,300.0,'Approved','2024-01-10','HealthInsCo','InNetwork','Yes','Routine checkup','Medical','GeneralMedicine','Hospital',0.80);
INSERT INTO healthcare_claims_summary VALUES (2,9002,3002,'2024-01-03','SVC002','DX002','PRC002',2500.0,2000.0,500.0,'Pending','2024-01-12','MediPlan','OutNetwork','No','Specialist visit','Dental','Orthodontics','Clinic',0.70);
INSERT INTO healthcare_claims_summary VALUES (3,9003,3003,'2024-01-04','SVC003','DX003','PRC003',3200.0,0.0,3200.0,'Denied','2024-01-15','SecureHealth','InNetwork','Yes','Surgery complications','Surgical','Cardiology','Hospital',0.60);