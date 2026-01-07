-- Environmental sensor station metadata
CREATE TABLE environmental_sensor_station
(
    station_id               INTEGER PRIMARY KEY,
    station_name             TEXT NOT NULL,
    region_code              TEXT NOT NULL,
    latitude                 REAL NOT NULL,
    longitude                REAL NOT NULL,
    install_date             DATE NOT NULL,
    sensor_package           TEXT NOT NULL,
    measurement_interval     INTEGER NOT NULL,
    last_maintenance         DATE,
    status                   TEXT NOT NULL,
    temperature_offset       REAL,
    humidity_offset          REAL,
    pm25_threshold           REAL,
    no2_threshold            REAL,
    o3_threshold             REAL,
    data_retention_days      INTEGER,
    owner_department         TEXT,
    contact_email            TEXT,
    firmware_version         TEXT,
    battery_level            REAL
);

INSERT INTO environmental_sensor_station
(station_id,station_name,region_code,latitude,longitude,install_date,sensor_package,measurement_interval,last_maintenance,status,temperature_offset,humidity_offset,pm25_threshold,no2_threshold,o3_threshold,data_retention_days,owner_department,contact_email,firmware_version,battery_level)
VALUES
(1,'NorthHill','RC01',45.12,-71.34,'2022-03-10','PackageA',15,'2023-01-05','ACTIVE',0.1,0.2,35.0,0.04,0.03,365,'ENV_DEPT','northhill@example.com','v1.2.3',78.5),
(2,'RiverSide','RC02',44.88,-70.99,'2021-11-22','PackageB',10,'2023-02-12','MAINTENANCE',0.0,0.0,30.0,0.03,0.025,730,'ENV_DEPT','riverside@example.com','v1.3.0',65.0),
(3,'UrbanCenter','RC03',45.00,-71.00,'2020-06-15','PackageC',5,'2022-12-20','ACTIVE',-0.05,0.1,40.0,0.05,0.04,180,'ENV_DEPT','urbancenter@example.com','v2.0.1',90.2);

-- Supplier contract information
CREATE TABLE supplier_contract
(
    contract_id               INTEGER PRIMARY KEY,
    supplier_id               INTEGER NOT NULL,
    start_date                DATE NOT NULL,
    end_date                  DATE NOT NULL,
    contract_value            REAL NOT NULL,
    currency                  TEXT NOT NULL,
    product_category          TEXT NOT NULL,
    delivery_terms            TEXT NOT NULL,
    payment_terms             TEXT NOT NULL,
    renewal_option            TEXT,
    contract_status           TEXT NOT NULL,
    governing_law             TEXT,
    dispute_resolution        TEXT,
    confidentiality_clause    TEXT,
    liability_limit           REAL,
    performance_bonus         REAL,
    performance_penalty       REAL,
    created_by                TEXT,
    created_at                DATE,
    remarks                   TEXT
);

INSERT INTO supplier_contract
(contract_id,supplier_id,start_date,end_date,contract_value,currency,product_category,delivery_terms,payment_terms,renewal_option,contract_status,governing_law,dispute_resolution,confidentiality_clause,liability_limit,performance_bonus,performance_penalty,created_by,created_at,remarks)
VALUES
(101,2001,'2023-01-01','2025-12-31',1500000,'USD','Electronics','FOB','Net30','AUTO','ACTIVE','US_Law','Arbitration','StandardConfidentiality',500000,20000,5000,'procurement_user','2022-12-01','First contract with supplier2001'),
(102,2002,'2022-06-15','2024-06-14',850000,'EUR','RawMaterials','CIF','Net45','MANUAL','ACTIVE','EU_Law','Mediation','StandardConfidentiality',300000,15000,3000,'procurement_user','2022-05-20','Extended term after renegotiation'),
(103,2003,'2021-09-01','2026-08-31',2500000,'USD','Software','EXW','Net60','AUTO','PENDING','US_Law','Arbitration','StrictConfidentiality',1000000,50000,10000,'procurement_user','2021-08-15','Awaiting final approval');

-- Corporate training module catalog
CREATE TABLE corporate_training_module
(
    module_id               INTEGER PRIMARY KEY,
    title                   TEXT NOT NULL,
    description             TEXT,
    department              TEXT NOT NULL,
    delivery_method         TEXT NOT NULL,
    duration_hours          INTEGER,
    level                   TEXT,
    required                BOOLEAN,
    certification_obtained  BOOLEAN,
    created_date            DATE,
    last_updated            DATE,
    owner_user_id           INTEGER,
    language                TEXT,
    cost                    REAL,
    max_participants        INTEGER,
    enrollment_deadline     DATE,
    evaluation_score        REAL,
    prerequisite_module_id  INTEGER,
    version                 TEXT,
    status                  TEXT
);

INSERT INTO corporate_training_module
(module_id,title,description,department,delivery_method,duration_hours,level,required,certification_obtained,created_date,last_updated,owner_user_id,language,cost,max_participants,enrollment_deadline,evaluation_score,prerequisite_module_id,version,status)
VALUES
(1001,'DataSecurityBasics','Fundamentals of data protection','IT','Online',4,'Beginner',TRUE,FALSE,'2023-02-01','2023-02-10',501,'EN',0,200,'2023-02-15',NULL,NULL,'v1.0','ACTIVE'),
(1002,'AdvancedProjectMgmt','Techniques for large scale projects','PMO','Classroom',16,'Advanced',TRUE,TRUE,'2022-11-05','2023-01-20',502,'EN',500,30,'2022-12-20',4.5,1001,'v2.1','ACTIVE'),
(1003,'LeadershipCoaching','Developing leadership skills','HR','Hybrid',8,'Intermediate',FALSE,FALSE,'2023-01-12','2023-01-18',503,'EN',250,50,'2023-01-30',NULL,NULL,'v1.3','DRAFT');

-- Fleet vehicle maintenance records
CREATE TABLE fleet_vehicle_maintenance
(
    maintenance_id          INTEGER PRIMARY KEY,
    vehicle_id              INTEGER NOT NULL,
    service_date            DATE NOT NULL,
    mileage                 INTEGER NOT NULL,
    service_type            TEXT NOT NULL,
    provider_name           TEXT,
    cost                    REAL,
    parts_used              TEXT,
    next_service_due        DATE,
    odometer_next_due       INTEGER,
    warranty_claim          BOOLEAN,
    notes                   TEXT,
    created_by              TEXT,
    created_at              DATE,
    approved_by             TEXT,
    approved_at             DATE,
    maintenance_status      TEXT,
    fuel_type               TEXT,
    engine_hours            INTEGER,
    emission_test_result   TEXT
);

INSERT INTO fleet_vehicle_maintenance
(maintenance_id,vehicle_id,service_date,mileage,service_type,provider_name,cost,parts_used,next_service_due,odometer_next_due,warranty_claim,notes,created_by,created_at,approved_by,approved_at,maintenance_status,fuel_type,engine_hours,emission_test_result)
VALUES
(5001,3001,'2023-03-10',45200,'OilChange','AutoCareInc',250,'OilFilter;EngineOil','2023-09-10',50200,FALSE,'Routine oil change','fleet_manager','2023-03-11','fleet_manager','2023-03-12','COMPLETED','Diesel',1200,'PASS'),
(5002,3002,'2023-02-20',120000,'BrakeReplacement','BrakeMasters',800,'BrakePads;BrakeFluid','2023-08-20',126000,FALSE,'Replaced front brake pads','fleet_manager','2023-02-21','fleet_manager','2023-02-22','COMPLETED','Petrol',2500,'PASS'),
(5003,3003,'2023-01-15',80000,'TransmissionCheck','TransTech',500,'TransmissionFluid','2023-07-15',86000,TRUE,'Checked for warranty coverage','fleet_manager','2023-01-16','fleet_manager','2023-01-17','PENDING','Hybrid',1800,'FAIL');

-- Digital asset inventory
CREATE TABLE digital_asset_inventory
(
    asset_id                INTEGER PRIMARY KEY,
    asset_type              TEXT NOT NULL,
    asset_name              TEXT NOT NULL,
    file_path               TEXT NOT NULL,
    file_size_bytes         INTEGER,
    created_date            DATE,
    modified_date           DATE,
    owner_user_id           INTEGER,
    access_level            TEXT,
    encryption_status       TEXT,
    checksum                TEXT,
    tags                    TEXT,
    description             TEXT,
    usage_count             INTEGER,
    last_accessed           DATE,
    retention_policy        TEXT,
    compliance_status       TEXT,
    storage_location        TEXT,
    archive_date            DATE,
    is_active               BOOLEAN
);

INSERT INTO digital_asset_inventory
(asset_id,asset_type,asset_name,file_path,file_size_bytes,created_date,modified_date,owner_user_id,access_level,encryption_status,checksum,tags,description,usage_count,last_accessed,retention_policy,compliance_status,storage_location,archive_date,is_active)
VALUES
(9001,'Image','Logo_2023','/assets/images/logo2023.png',204800,'2023-01-05','2023-01-20',101,'Public','Encrypted','abc123def456','branding;logo','Company logo for 2023',150,'2023-03-01','5years','COMPLIANT','NAS01',NULL,TRUE),
(9002,'Document','Q1_Financial_Report','/assets/docs/q1_report.pdf',1048576,'2023-04-10','2023-04-12',102,'Confidential','Encrypted','def789ghi012','finance;report','Quarter 1 financial statements',45,'2023-04-15','7years','COMPLIANT','NAS02','2029-04-10',TRUE),
(9003,'Video','Product_Intro','/assets/videos/intro.mp4',52428800,'2022-11-01','2023-02-01',103,'Internal','Unencrypted','ghi345jkl678','marketing;intro','Introductory video for new product line',300,'2023-03-25','10years','NONCOMPLIANT','NAS03',NULL,FALSE);

-- Regulatory fine details
CREATE TABLE regulatory_fine_detail
(
    fine_id                 INTEGER PRIMARY KEY,
    regulator_name          TEXT NOT NULL,
    entity_id               INTEGER NOT NULL,
    entity_type             TEXT NOT NULL,
    fine_date               DATE NOT NULL,
    amount                  REAL NOT NULL,
    currency                TEXT NOT NULL,
    reason                  TEXT,
    statute                 TEXT,
    due_date                DATE,
    paid                    BOOLEAN,
    payment_date            DATE,
    penalty_points          INTEGER,
    notes                   TEXT,
    assessed_by             TEXT,
    assessment_date         DATE,
    appeal_status           TEXT,
    appeal_deadline         DATE,
    resolved                BOOLEAN,
    resolution_date         DATE
);

INSERT INTO regulatory_fine_detail
(fine_id,regulator_name,entity_id,entity_type,fine_date,amount,currency,reason,statute,due_date,paid,payment_date,penalty_points,notes,assessed_by,assessment_date,appeal_status,appeal_deadline,resolved,resolution_date)
VALUES
(20001,'FINANCIAL_AUTH','5001','Bank','2023-02-28',25000,'USD','Late reporting','Reg123','2023-03-31',TRUE,'2023-03-20',3,'Paid in full','auditor_jane','2023-02-22','NONE',NULL,TRUE,'2023-03-20'),
(20002,'SECURITY_GOV','5002','Broker','2023-01-15',120000,'USD','Insider trading','Sec45','2023-04-15',FALSE,NULL,10,'Under review','auditor_mark','2023-01-20','FILED','2023-03-01',FALSE,NULL),
(20003,'ENVIRONMENT_AGENCY','5003','Manufacturing','2022-12-05',50000,'EUR','Excess emissions','Env89','2023-02-05',TRUE,'2023-01-30',2,'Corrective action taken','auditor_lisa','2022-12-10','NONE',NULL,TRUE,'2023-01-30');

-- Marketing campaign budget allocations
CREATE TABLE marketing_campaign_budget
(
    campaign_id             INTEGER PRIMARY KEY,
    campaign_name           TEXT NOT NULL,
    start_date              DATE NOT NULL,
    end_date                DATE NOT NULL,
    total_budget            REAL NOT NULL,
    currency                TEXT NOT NULL,
    allocated_online        REAL,
    allocated_tv            REAL,
    allocated_print         REAL,
    allocated_radio         REAL,
    allocated_outdoor       REAL,
    allocated_social        REAL,
    budget_spent            REAL,
    spend_percentage        REAL,
    manager_id              INTEGER,
    approval_status         TEXT,
    approved_by             TEXT,
    approved_date           DATE,
    notes                   TEXT,
    status                  TEXT
);

INSERT INTO marketing_campaign_budget
(campaign_id,campaign_name,start_date,end_date,total_budget,currency,allocated_online,allocated_tv,allocated_print,allocated_radio,allocated_outdoor,allocated_social,budget_spent,spend_percentage,manager_id,approval_status,approved_by,approved_date,notes,status)
VALUES
(301,'SpringLaunch','2023-03-01','2023-06-30',750000,'USD',250000,200000,100000,50000,50000,100000,600000,80,401,'APPROVED','cfo_john','2023-02-20','Successful Q2 campaign','COMPLETED'),
(302,'SummerSale','2023-07-01','2023-09-30',500000,'USD',150000,150000,80000,40000,30000,50000,450000,90,402,'PENDING','cfo_jane','2023-06-15','Awaiting final sign‑off','PLANNED'),
(303,'FallRetention','2023-10-01','2024-01-31',600000,'USD',200000,120000,80000,40000,50000,110000,0,0,403,'APPROVED','cfo_mike','2023-09-20','New product focus','ACTIVE');

-- Health and safety inspection logs
CREATE TABLE health_safety_inspection
(
    inspection_id           INTEGER PRIMARY KEY,
    facility_id             INTEGER NOT NULL,
    inspection_date         DATE NOT NULL,
    inspector_name          TEXT NOT NULL,
    inspection_type         TEXT,
    overall_score           INTEGER,
    fire_safety_score      INTEGER,
    electrical_score        INTEGER,
    chemical_handling_score INTEGER,
    ergonomics_score        INTEGER,
    violations_found        INTEGER,
    corrective_actions      TEXT,
    follow_up_date          DATE,
    status                  TEXT,
    comments                TEXT,
    created_at              DATE,
    updated_at              DATE,
    severity_level          TEXT,
    risk_rating             REAL,
    compliance_status       TEXT
);

INSERT INTO health_safety_inspection
(inspection_id,facility_id,inspection_date,inspector_name,inspection_type,overall_score,fire_safety_score,electrical_score,chemical_handling_score,ergonomics_score,violations_found,corrective_actions,follow_up_date,status,comments,created_at,updated_at,severity_level,risk_rating,compliance_status)
VALUES
(4001,8001,'2023-02-10','inspector_alex','Routine',85,90,80,75,88,2,'Update fire extinguishers; retrain staff','2023-03-01','CLOSED','All issues addressed','2023-02-11','2023-03-02','MEDIUM',3.2,'COMPLIANT'),
(4002,8002,'2023-01-22','inspector_beth','FollowUp',78,70,75,80,70,4,'Replace damaged wiring; improve ventilation','2023-02-15','OPEN','Pending corrective work','2023-01-23','2023-02-01','HIGH',4.5,'NONCOMPLIANT'),
(4003,8003,'2023-03-05','inspector_carl','Annual',92,95,90,88,93,0,NULL,NULL,'CLOSED','No violations detected','2023-03-06','2023-03-06','LOW',1.1,'COMPLIANT');

-- Renewable energy farm performance metrics
CREATE TABLE renewable_energy_farm_metrics
(
    farm_id                 INTEGER PRIMARY KEY,
    farm_name               TEXT NOT NULL,
    location                TEXT NOT NULL,
    capacity_mw             REAL NOT NULL,
    operational_since       DATE,
    avg_daily_output_mwh    REAL,
    capacity_factor         REAL,
    maintenance_downtime_hours INTEGER,
    last_maintenance        DATE,
    grid_connection_status  TEXT,
    inverter_efficiency     REAL,
    panel_degradation_rate REAL,
    weather_station_id      INTEGER,
    average_irradiance      REAL,
    average_temperature     REAL,
    annual_revenue          REAL,
    carbon_offset_tons      REAL,
    funding_source          TEXT,
    status                  TEXT,
    notes                   TEXT
);

INSERT INTO renewable_energy_farm_metrics
(farm_id,farm_name,location,capacity_mw,operational_since,avg_daily_output_mwh,capacity_factor,maintenance_downtime_hours,last_maintenance,grid_connection_status,inverter_efficiency,panel_degradation_rate,weather_station_id,average_irradiance,average_temperature,annual_revenue,carbon_offset_tons,funding_source,status,notes)
VALUES
(6001,'SunshinePV','North Valley',50.0,'2020-05-15',220.5,0.5,120,'2023-01-10','ACTIVE',0.97,0.5,101,5.6,15.2,12.5e6,35000,'GovernmentGrant','OPERATIONAL','Performing above expected output'),
(6002,'WindEdge','Coastal Ridge',80.0,'2018-09-01',300.0,0.43,200,'2022-12-05','ACTIVE',0.95,0.3,102,8.2,14.0,18.0e6,50000,'PrivateEquity','OPERATIONAL','Recent turbine upgrades completed'),
(6003,'HybridEco','River Plains',30.0,'2022-03-20',110.0,0.42,80,'2023-02-20','PENDING',0.96,0.4,103,6.1,13.5,7.0e6,25000,'MunicipalBond','COMMISSIONING','Awaiting grid connection approval');

-- Digital wallet transaction log
CREATE TABLE digital_wallet_transaction_log
(
    txn_id                  INTEGER PRIMARY KEY,
    wallet_id               INTEGER NOT NULL,
    user_id                 INTEGER NOT NULL,
    txn_date                DATE NOT NULL,
    txn_type                TEXT NOT NULL,
    amount                  REAL NOT NULL,
    currency                TEXT NOT NULL,
    merchant_category       TEXT,
    status                  TEXT,
    auth_code               TEXT,
    settlement_date         DATE,
    exchange_rate           REAL,
    fee                     REAL,
    description             TEXT,
    device_id               TEXT,
    ip_address              TEXT,
    geo_latitude            REAL,
    geo_longitude           REAL,
    channel                 TEXT,
    notes                   TEXT
);

INSERT INTO digital_wallet_transaction_log
(txn_id,wallet_id,user_id,txn_date,txn_type,amount,currency,merchant_category,status,auth_code,settlement_date,exchange_rate,fee,description,device_id,ip_address,geo_latitude,geo_longitude,channel,notes)
VALUES
(90001,4001,1001,'2023-03-12','Purchase',45.99,'USD','Retail','COMPLETED','A1B2C3','2023-03-13',1.0,0.30,'Grocery shopping','device123','192.168.1.10',40.7128,-74.0060','Mobile','No issues'),
(90002,4002,1002,'2023-03-15','Transfer',250.00,'USD','Transfer','PENDING','D4E5F6',NULL,NULL,0.00,'Transfer to friend','device456','10.0.0.5',34.0522,-118.2437','Web','Awaiting recipient acceptance'),
(90003,4003,1003,'2023-03-20','Refund',15.75,'USD','Service','COMPLETED','G7H8I9','2023-03-21',1.0,0.00,'Refund for cancelled order','device789','172.16.0.2',51.5074,-0.1278','Mobile','Processed automatically');