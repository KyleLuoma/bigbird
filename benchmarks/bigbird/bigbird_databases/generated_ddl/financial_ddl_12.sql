-- Financial market index data for a given date
CREATE TABLE financial_market_index
(
    index_id            INTEGER PRIMARY KEY,
    index_name          TEXT NOT NULL,
    record_date         DATE NOT NULL,
    open_price          REAL NOT NULL,
    close_price         REAL NOT NULL,
    high_price          REAL NOT NULL,
    low_price           REAL NOT NULL,
    volume_traded       INTEGER NOT NULL,
    market_capitalization REAL NOT NULL,
    divisor             REAL NOT NULL,
    currency_code       TEXT NOT NULL,
    sector_code         TEXT NOT NULL,
    country_code        TEXT NOT NULL,
    calculation_method  TEXT NOT NULL,
    revision_number     INTEGER NOT NULL,
    source_agency       TEXT NOT NULL,
    data_quality_flag   TEXT NOT NULL,
    created_timestamp   DATE NOT NULL,
    updated_timestamp   DATE NOT NULL,
    notes               TEXT,
    analyst_id          INTEGER,
    review_status       TEXT NOT NULL
);

INSERT INTO financial_market_index (index_id,index_name,record_date,open_price,close_price,high_price,low_price,volume_traded,market_capitalization,divisor,currency_code,sector_code,country_code,calculation_method,revision_number,source_agency,data_quality_flag,created_timestamp,updated_timestamp,notes,analyst_id,review_status) VALUES (1,'GlobalEquity',2025-12-01,3120.5,3150.2,3175.0,3100.1,3850000,2450000000,1000,'USD','EQ','US','price_weighted',2,'FinanceDept','A',2025-12-01,2025-12-02,'Initial load',101,'approved');
INSERT INTO financial_market_index VALUES (2,'GlobalEquity',2025-12-02,3150.2,3170.3,3180.5,3140.0,4020000,2475000000,1000,'USD','EQ','US','price_weighted',2,'FinanceDept','A',2025-12-02,2025-12-03,'',102,'approved');
INSERT INTO financial_market_index VALUES (3,'GlobalEquity',2025-12-03,3170.3,3165.0,3190.0,3155.5,4105000,2490000000,1000,'USD','EQ','US','price_weighted',2,'FinanceDept','A',2025-12-03,2025-12-04,'',103,'approved');

-- Regional demographic statistics
CREATE TABLE regional_demographics
(
    demo_id               INTEGER PRIMARY KEY,
    region_code           TEXT NOT NULL,
    census_year           INTEGER NOT NULL,
    total_population      INTEGER NOT NULL,
    median_age            REAL NOT NULL,
    male_percentage       REAL NOT NULL,
    female_percentage     REAL NOT NULL,
    foreign_born_percent  REAL NOT NULL,
    average_household_size REAL NOT NULL,
    urban_population_pct  REAL NOT NULL,
    rural_population_pct  REAL NOT NULL,
    employment_rate       REAL NOT NULL,
    unemployment_rate     REAL NOT NULL,
    average_income        REAL NOT NULL,
    poverty_rate          REAL NOT NULL,
    education_index       REAL NOT NULL,
    health_index          REAL NOT NULL,
    housing_units         INTEGER NOT NULL,
    dwelling_type_apartments INTEGER NOT NULL,
    dwelling_type_houses INTEGER NOT NULL,
    census_source         TEXT NOT NULL,
    data_quality_flag     TEXT NOT NULL,
    remarks               TEXT
);

INSERT INTO regional_demographics (demo_id,region_code,census_year,total_population,median_age,male_percentage,female_percentage,foreign_born_percent,average_household_size,urban_population_pct,rural_population_pct,employment_rate,unemployment_rate,average_income,poverty_rate,education_index,health_index,housing_units,dwelling_type_apartments,dwelling_type_houses,census_source,data_quality_flag,remarks) VALUES (1,'R01',2024,1250000,38.4,49.2,50.8,12.5,2.7,68.0,32.0,61.5,5.2,54000,8.1,0.78,0.85,500000,150000,350000,'NationalCensus','A','');
INSERT INTO regional_demographics VALUES (2,'R02',2024,980000,36.9,48.7,51.3,9.8,2.6,72.5,27.5,64.0,4.5,61000,6.9,0.81,0.88,420000,130000,160000,'NationalCensus','A','');
INSERT INTO regional_demographics VALUES (3,'R03',2024,750000,40.1,50.0,50.0,15.2,2.9,55.0,45.0,58.3,6.7,47000,10.4,0.74,0.80,310000,120000,190000,'NationalCensus','B','Data pending verification');

-- Mobile device registry for customers
CREATE TABLE mobile_device_registry
(
    device_id          INTEGER PRIMARY KEY,
    client_id          INTEGER NOT NULL,
    device_type        TEXT NOT NULL,
    imei_number        TEXT NOT NULL,
    manufacturer       TEXT NOT NULL,
    model_name         TEXT NOT NULL,
    os_version         TEXT NOT NULL,
    app_version        TEXT NOT NULL,
    registration_date  DATE NOT NULL,
    last_sync_date     DATE NOT NULL,
    push_token         TEXT NOT NULL,
    is_active          TEXT NOT NULL,
    risk_score         REAL NOT NULL,
    geo_location       TEXT NOT NULL,
    carrier            TEXT NOT NULL,
    sim_count          INTEGER NOT NULL,
    root_status        TEXT NOT NULL,
    encryption_enabled TEXT NOT NULL,
    battery_health_pct REAL NOT NULL,
    storage_used_gb    REAL NOT NULL,
    storage_total_gb   REAL NOT NULL,
    notes              TEXT
);

INSERT INTO mobile_device_registry (device_id,client_id,device_type,imei_number,manufacturer,model_name,os_version,app_version,registration_date,last_sync_date,push_token,is_active,risk_score,geo_location,carrier,sim_count,root_status,encryption_enabled,battery_health_pct,storage_used_gb,storage_total_gb,notes) VALUES (1,1001,'smartphone','356789123456789','Apple','iPhone13','iOS15','1.2.3',2025-01-15,2025-01-20,'token123','Y',0.12,'LAT45LNG90','Verizon',1,'No','Yes',95.5,64,128,'');
INSERT INTO mobile_device_registry VALUES (2,1002,'tablet','860123456789012','Samsung','GalaxyTabS7','Android12','1.2.4',2025-02-01,2025-02-05,'token456','Y',0.08,'LAT46LNG91','AT&T',1,'No','Yes',88.0,128,256,'');
INSERT INTO mobile_device_registry VALUES (3,1003,'smartphone','352678912345678','Google','Pixel6','Android13','1.3.0',2025-03-10,2025-03-12,'token789','N',0.25,'LAT44LNG89','TMobile',2,'Yes','No',70.2,32,128,'Device deactivated');

-- Data center inventory for IT assets
CREATE TABLE data_center_inventory
(
    asset_id            INTEGER PRIMARY KEY,
    data_center_id      INTEGER NOT NULL,
    asset_type          TEXT NOT NULL,
    manufacturer        TEXT NOT NULL,
    model_number        TEXT NOT NULL,
    serial_number       TEXT NOT NULL,
    purchase_date       DATE NOT NULL,
    warranty_expiry     DATE NOT NULL,
    power_capacity_kw   REAL NOT NULL,
    rack_unit_position  INTEGER NOT NULL,
    network_bandwidth_gbps REAL NOT NULL,
    firmware_version    TEXT NOT NULL,
    maintenance_contract TEXT NOT NULL,
    operational_status  TEXT NOT NULL,
    temperature_celsius REAL NOT NULL,
    humidity_percent    REAL NOT NULL,
    last_inspection_date DATE NOT NULL,
    assigned_owner      TEXT NOT NULL,
    depreciation_years  INTEGER NOT NULL,
    cost_usd            REAL NOT NULL,
    resale_value_usd    REAL,
    notes               TEXT
);

INSERT INTO data_center_inventory (asset_id,data_center_id,asset_type,manufacturer,model_number,serial_number,purchase_date,warranty_expiry,power_capacity_kw,rack_unit_position,network_bandwidth_gbps,firmware_version,maintenance_contract,operational_status,temperature_celsius,humidity_percent,last_inspection_date,assigned_owner,depreciation_years,cost_usd,resale_value_usd,notes) VALUES (1,10,'server','Dell','PowerEdgeR740','SN123456','2022-06-01','2025-06-01',1.2,12,10,'v2.1','Gold','Active',22.5,45,2025-01-10,'ITOps',5,25000,12000,'');
INSERT INTO data_center_inventory VALUES (2,10,'storage','NetApp','FAS2750','SN789012','2021-09-15','2024-09-15',0.8,20,20,'v3.0','Silver','Active',21.0,40,2024-12-20,'StorageTeam',4,18000,8000,'');
INSERT INTO data_center_inventory VALUES (3,11,'network_switch','Cisco','Nexus9000','SN345678','2023-03-20','2026-03-20',0.5,5,40,'v1.5','Platinum','Active',20.0,38,2025-02-05,'NetworkTeam',3,12000,6000,'');

-- Payment gateway status logs
CREATE TABLE payment_gateway_status
(
    log_id               INTEGER PRIMARY KEY,
    gateway_name         TEXT NOT NULL,
    status_timestamp     DATE NOT NULL,
    availability_percent REAL NOT NULL,
    avg_response_ms      REAL NOT NULL,
    error_rate_percent   REAL NOT NULL,
    transaction_volume   INTEGER NOT NULL,
    fraud_detection_score REAL NOT NULL,
    maintenance_window   TEXT,
    last_update_version  TEXT NOT NULL,
    regional_outage      TEXT,
    api_latency_ms       REAL NOT NULL,
    ssl_certificate_valid TEXT NOT NULL,
    cpu_utilization_pct  REAL NOT NULL,
    memory_utilization_pct REAL NOT NULL,
    disk_io_mb_s         REAL NOT NULL,
    network_io_mb_s      REAL NOT NULL,
    active_connections   INTEGER NOT NULL,
    pending_transactions INTEGER NOT NULL,
    notes                TEXT
);

INSERT INTO payment_gateway_status (log_id,gateway_name,status_timestamp,availability_percent,avg_response_ms,error_rate_percent,transaction_volume,fraud_detection_score,maintenance_window,last_update_version,regional_outage,api_latency_ms,ssl_certificate_valid,cpu_utilization_pct,memory_utilization_pct,disk_io_mb_s,network_io_mb_s,active_connections,pending_transactions,notes) VALUES (1,'GatewayA',2025-04-01,99.8,120,0.02,150000,0.1,'02:00-04:00','v5.2','None',115,'Yes',65.0,70.5,250,180,3500,45,'');
INSERT INTO payment_gateway_status VALUES (2,'GatewayB',2025-04-01,98.5,210,0.05,200000,0.15,'03:00-05:00','v3.9','EU','205','Yes',72.0,68.0,300,210,4200,60,'');
INSERT INTO payment_gateway_status VALUES (3,'GatewayC',2025-04-01,97.0,340,0.12,180000,0.20,NULL,'v4.1','APAC','330','No',80.5,75.2,400,250,5000,80,'SSL certificate expired');

-- Loan default history (adjacent but not overlapping with loan table)
CREATE TABLE loan_default_history
(
    default_id           INTEGER PRIMARY KEY,
    loan_id              INTEGER NOT NULL,
    default_date         DATE NOT NULL,
    default_reason       TEXT NOT NULL,
    outstanding_balance  INTEGER NOT NULL,
    days_past_due        INTEGER NOT NULL,
    recovery_rate        REAL NOT NULL,
    collateral_value     INTEGER,
    guarantor_id         INTEGER,
    legal_action_taken   TEXT,
    write_off_amount     INTEGER,
    settlement_amount    INTEGER,
    notes                TEXT,
    created_timestamp    DATE NOT NULL,
    updated_timestamp    DATE NOT NULL,
    processed_by         TEXT NOT NULL,
    risk_category        TEXT NOT NULL,
    credit_score_at_default INTEGER NOT NULL,
    employment_status_at_default TEXT NOT NULL,
    residence_type_at_default TEXT NOT NULL,
    income_bracket_at_default TEXT NOT NULL,
    debt_to_income_ratio REAL NOT NULL
);

INSERT INTO loan_default_history (default_id,loan_id,default_date,default_reason,outstanding_balance,days_past_due,recovery_rate,collateral_value,guarantor_id,legal_action_taken,write_off_amount,settlement_amount,notes,created_timestamp,updated_timestamp,processed_by,risk_category,credit_score_at_default,employment_status_at_default,residence_type_at_default,income_bracket_at_default,debt_to_income_ratio) VALUES (1,5001,2024-11-15,'MissedPayments',25000,120,0.3,50000,3001,'Foreclosure',17500,10000,'',2024-11-16,2024-11-17,'AnalystA','High',620,'Employed','Owned','Mid','0.45');
INSERT INTO loan_default_history VALUES (2,5002,2024-12-02,'Bankruptcy',32000,200,0.25,0,3002,'BankruptcyFiling',24000,8000,'',2024-12-03,2024-12-04,'AnalystB','Critical',580,'SelfEmployed','Rented','Low','0.60');
INSERT INTO loan_default_history VALUES (3,5003,2025-01-10,'JobLoss',15000,90,0.4,20000,3003,'Repossession',9000,6000,'',2025-01-11,2025-01-12,'AnalystC','Medium',680,'Unemployed','Owned','High','0.30');

-- Taxation records per district
CREATE TABLE taxation_record
(
    tax_record_id        INTEGER PRIMARY KEY,
    district_id          INTEGER NOT NULL,
    fiscal_year          INTEGER NOT NULL,
    total_taxable_income INTEGER NOT NULL,
    corporate_tax_amount REAL NOT NULL,
    personal_income_tax  REAL NOT NULL,
    vat_collected        REAL NOT NULL,
    tax_credits_claimed  REAL NOT NULL,
    audit_flag           TEXT NOT NULL,
    compliance_status    TEXT NOT NULL,
    filing_deadline      DATE NOT NULL,
    submission_date      DATE NOT NULL,
    late_filing_penalty  REAL,
    interest_rate        REAL NOT NULL,
    tax_officer_assigned TEXT NOT NULL,
    notes                TEXT,
    created_timestamp    DATE NOT NULL,
    updated_timestamp    DATE NOT NULL,
    region_code          TEXT NOT NULL,
    tax_policy_version   TEXT NOT NULL,
    data_quality_flag    TEXT NOT NULL,
    remarks              TEXT
);

INSERT INTO taxation_record (tax_record_id,district_id,fiscal_year,total_taxable_income,corporate_tax_amount,personal_income_tax,vat_collected,tax_credits_claimed,audit_flag,compliance_status,filing_deadline,submission_date,late_filing_penalty,interest_rate,tax_officer_assigned,notes,created_timestamp,updated_timestamp,region_code,tax_policy_version,data_quality_flag,remarks) VALUES (1,101,2024,8500000,950000,720000,410000,120000,'N','Compliant','2025-03-31','2025-03-28',0,0.04,'OfficerA','',2025-04-01,2025-04-02,'RC01','v2023','A','');
INSERT INTO taxation_record VALUES (2,102,2024,7200000,820000,610000,350000,95000,'Y','UnderReview','2025-03-31','2025-04-05',5000,0.05,'OfficerB','Late submission',2025-04-06,2025-04-07,'RC02','v2023','B','');
INSERT INTO taxation_record VALUES (3,103,2024,9600000,1080000,800000,470000,130000,'N','Compliant','2025-03-31','2025-03-30',0,0.04,'OfficerC','',2025-04-01,2025-04-02,'RC03','v2023','A','');

-- Insurance risk factor matrix per product
CREATE TABLE insurance_risk_factor
(
    factor_id            INTEGER PRIMARY KEY,
    product_code         TEXT NOT NULL,
    risk_type            TEXT NOT NULL,
    weighting_percent    REAL NOT NULL,
    base_score           INTEGER NOT NULL,
    adjustment_factor    REAL NOT NULL,
    max_score            INTEGER NOT NULL,
    min_score            INTEGER NOT NULL,
    applicable_region    TEXT NOT NULL,
    effective_date       DATE NOT NULL,
    expiration_date      DATE,
    data_source          TEXT NOT NULL,
    verification_status  TEXT NOT NULL,
    created_by           TEXT NOT NULL,
    created_timestamp    DATE NOT NULL,
    updated_timestamp    DATE NOT NULL,
    notes                TEXT,
    regulatory_reference TEXT,
    version_number       INTEGER NOT NULL,
    confidence_level     REAL NOT NULL,
    last_audit_date      DATE,
    audit_result         TEXT
);

INSERT INTO insurance_risk_factor (factor_id,product_code,risk_type,weighting_percent,base_score,adjustment_factor,max_score,min_score,applicable_region,effective_date,expiration_date,data_source,verification_status,created_by,created_timestamp,updated_timestamp,notes,regulatory_reference,version_number,confidence_level,last_audit_date,audit_result) VALUES (1,'PRD001','Age',15.0,500,1.05,800,300,'US','2025-01-01',NULL,'Internal','Verified','AnalystX','2025-01-02','2025-01-03','', 'Reg-12','1',0.95,'2025-02-01','Pass');
INSERT INTO insurance_risk_factor VALUES (2,'PRD002','DrivingRecord',20.0,600,1.10,900,400,'EU','2025-01-01',NULL,'External','Pending','AnalystY','2025-01-02','2025-01-04','Awaiting external validation','Reg-15','1',0.88,'2025-02-05','Fail');
INSERT INTO insurance_risk_factor VALUES (3,'PRD003','CreditScore',25.0,550,1.08,850,350,'APAC','2025-01-01',NULL,'Internal','Verified','AnalystZ','2025-01-02','2025-01-05','', 'Reg-18','2',0.92,'2025-03-01','Pass');

-- Employee shift schedule
CREATE TABLE employee_shift_schedule
(
    schedule_id          INTEGER PRIMARY KEY,
    employee_id          INTEGER NOT NULL,
    shift_date           DATE NOT NULL,
    start_time           TEXT NOT NULL,
    end_time             TEXT NOT NULL,
    shift_type           TEXT NOT NULL,
    location_code        TEXT NOT NULL,
    department_code      TEXT NOT NULL,
    scheduled_hours      REAL NOT NULL,
    overtime_hours       REAL,
    break_minutes        INTEGER,
    role_description     TEXT,
    manager_id           INTEGER,
    notes                TEXT,
    created_timestamp    DATE NOT NULL,
    updated_timestamp    DATE NOT NULL,
    approved_by          TEXT,
    approval_timestamp   DATE,
    shift_status         TEXT NOT NULL,
    payroll_code         TEXT NOT NULL,
    compliance_flag      TEXT NOT NULL,
    biometric_required   TEXT NOT NULL
);

INSERT INTO employee_shift_schedule (schedule_id,employee_id,shift_date,start_time,end_time,shift_type,location_code,department_code,scheduled_hours,overtime_hours,break_minutes,role_description,manager_id,notes,created_timestamp,updated_timestamp,approved_by,approval_timestamp,shift_status,payroll_code,compliance_flag,biometric_required) VALUES (1,2001,2025-05-01,'08:00','16:00','Day','LOC01','FIN','8',0,30,'Teller',1500,'',2025-04-20,2025-04-21,'MgrA','2025-04-22','Confirmed','PC01','Y','Y');
INSERT INTO employee_shift_schedule VALUES (2,2002,2025-05-01,'16:00','00:00','Swing','LOC01','FIN','8',1,30,'CustomerService',1500,'',2025-04-20,2025-04-21,'MgrA','2025-04-22','Confirmed','PC02','Y','Y');
INSERT INTO employee_shift_schedule VALUES (3,2003,2025-05-02,'00:00','08:00','Night','LOC02','IT','8',0,30,'SystemAdmin',1501,'',2025-04-21,2025-04-22,'MgrB','2025-04-23','Confirmed','PC03','Y','Y');

-- Audit schedule for regulatory compliance
CREATE TABLE audit_schedule
(
    audit_id             INTEGER PRIMARY KEY,
    audit_type           TEXT NOT NULL,
    scheduled_start      DATE NOT NULL,
    scheduled_end        DATE NOT NULL,
    audit_scope          TEXT NOT NULL,
    responsible_team     TEXT NOT NULL,
    frequency_months    INTEGER NOT NULL,
    last_completed       DATE,
    next_due             DATE,
    audit_status         TEXT NOT NULL,
    auditor_lead         TEXT NOT NULL,
    auditor_assistants   TEXT,
    documentation_link   TEXT,
    findings_summary     TEXT,
    corrective_action_due DATE,
    risk_rating          TEXT NOT NULL,
    compliance_score     REAL,
    notes                TEXT,
    created_timestamp    DATE NOT NULL,
    updated_timestamp    DATE NOT NULL,
    regulatory_reference TEXT,
    priority_level       TEXT NOT NULL,
    escalation_contact  TEXT
);

INSERT INTO audit_schedule (audit_id,audit_type,scheduled_start,scheduled_end,audit_scope,responsible_team,frequency_months,last_completed,next_due,audit_status,auditor_lead,auditor_assistants,documentation_link,findings_summary,corrective_action_due,risk_rating,compliance_score,notes,created_timestamp,updated_timestamp,regulatory_reference,priority_level,escalation_contact) VALUES (1,'Financial','2025-06-01','2025-06-15','LoanPortfolio','RiskTeam',12,'2024-06-10','2025-06-01','Planned','LeadAuditor','Assist1,Assist2','/docs/audit1.pdf','',2025-06-30,'Medium',0.85,'',2025-01-10,2025-01-11,'Reg-01','High','ChiefRisk');
INSERT INTO audit_schedule VALUES (2,'Operational','2025-07-01','2025-07-10','ATMNetwork','OpsTeam',6,'2024-12-20','2025-07-01','Planned','LeadOpsAuditor','Assist3','/docs/audit2.pdf','',2025-07-20,'Low',0.92,'',2025-02-15,2025-02-16,'Reg-02','Medium','OpsManager');
INSERT INTO audit_schedule VALUES (3,'Compliance','2025-08-01','2025-08-12','RegulatoryReporting','ComplianceTeam',12,'2024-08-05','2025-08-01','Planned','LeadCompAuditor','Assist4','/docs/audit3.pdf','',2025-08-25,'High',0.78,'',2025-03-05,2025-03-06,'Reg-03','High','ComplianceHead');

-- Environmental sensor readings for branch locations
CREATE TABLE environmental_sensor_readings
(
    reading_id           INTEGER PRIMARY KEY,
    branch_id            INTEGER NOT NULL,
    sensor_type          TEXT NOT NULL,
    reading_timestamp    DATE NOT NULL,
    value_numeric        REAL NOT NULL,
    unit_of_measure      TEXT NOT NULL,
    status_flag          TEXT NOT NULL,
    calibration_date     DATE,
    battery_level_percent REAL,
    signal_strength_db   REAL,
    maintenance_required TEXT,
    notes                TEXT,
    created_timestamp    DATE NOT NULL,
    updated_timestamp    DATE NOT NULL,
    firmware_version     TEXT,
    location_description TEXT,
    alert_threshold_high REAL,
    alert_threshold_low  REAL,
    response_action      TEXT,
    data_quality_flag    TEXT NOT NULL
);

INSERT INTO environmental_sensor_readings (reading_id,branch_id,sensor_type,reading_timestamp,value_numeric,unit_of_measure,status_flag,calibration_date,battery_level_percent,signal_strength_db,maintenance_required,notes,created_timestamp,updated_timestamp,firmware_version,location_description,alert_threshold_high,alert_threshold_low,response_action,data_quality_flag) VALUES (1,301,'Temperature','2025-04-20',22.5,'C','OK','2025-01-01',89.5,-70,'No','',2025-04-20,2025-04-21,'v1.3','Lobby',30.0,15.0,'NotifyFacilities','A');
INSERT INTO environmental_sensor_readings VALUES (2,301,'Humidity','2025-04-20',45.2,'%','OK','2025-01-01',88.0,-68,'No','',2025-04-20,2025-04-21,'v1.3','Lobby',60.0,30.0,'NotifyFacilities','A');
INSERT INTO environmental_sensor_readings VALUES (3,302,'AirQuality','2025-04-20',12.8,'AQI','WARN','2025-02-10',75.0,-65,'Yes','PM2.5 high',2025-04-20,2025-04-21,'v2.0','ServerRoom',50.0,0.0,'EscalateToOps','B');

-- Third‑party service access logs (non‑overlapping with existing tables)
CREATE TABLE third_party_service_access
(
    access_id            INTEGER PRIMARY KEY,
    service_name         TEXT NOT NULL,
    client_id            INTEGER NOT NULL,
    access_timestamp     DATE NOT NULL,
    api_endpoint         TEXT NOT NULL,
    request_method       TEXT NOT NULL,
    response_code        INTEGER NOT NULL,
    latency_ms           REAL NOT NULL,
    data_volume_bytes    INTEGER NOT NULL,
    authentication_method TEXT NOT NULL,
    token_id             TEXT NOT NULL,
    ip_address           TEXT NOT NULL,
    geo_location         TEXT,
    user_agent           TEXT,
    request_payload_hash TEXT,
    response_payload_hash TEXT,
    status_flag          TEXT NOT NULL,
    error_message        TEXT,
    created_timestamp    DATE NOT NULL,
    updated_timestamp    DATE NOT NULL,
    notes                TEXT
);

INSERT INTO third_party_service_access (access_id,service_name,client_id,access_timestamp,api_endpoint,request_method,response_code,latency_ms,data_volume_bytes,authentication_method,token_id,ip_address,geo_location,user_agent,request_payload_hash,response_payload_hash,status_flag,error_message,created_timestamp,updated_timestamp,notes) VALUES (1,'CreditScoreAPI',1001,'2025-04-15','/v1/score','GET',200,120.5,1024,'OAuth','tok123','192.168.10.5','LAT45LNG90','Mozilla/5.0','hashreq1','hashresp1','Success','',2025-04-15,2025-04-15,'');
INSERT INTO third_party_service_access VALUES (2,'CurrencyRateAPI',1002,'2025-04-16','/v1/rate','POST',500,250.0,2048,'APIKey','tok456','192.168.10.6','LAT46LNG91','Mozilla/5.0','hashreq2','hashresp2','Error','InternalServerError',2025-04-16,2025-04-16,'');
INSERT INTO third_party_service_access VALUES (3,'IdentityVerify',1003,'2025-04-17','/v1/verify','GET',200,85.3,512,'OAuth','tok789','192.168.10.7','LAT44LNG89','Mozilla/5.0','hashreq3','hashresp3','Success','',2025-04-17,2025-04-17,'');

-- Vendor performance metrics per contract
CREATE TABLE vendor_performance_metrics
(
    metric_id            INTEGER PRIMARY KEY,
    vendor_id            INTEGER NOT NULL,
    contract_id          INTEGER NOT NULL,
    measurement_date     DATE NOT NULL,
    on_time_delivery_pct REAL NOT NULL,
    defect_rate_percent  REAL NOT NULL,
    compliance_score     REAL NOT NULL,
    service_level_agreement TEXT NOT NULL,
    issue_count          INTEGER NOT NULL,
    average_resolution_hours REAL NOT NULL,
    cost_variance_percent REAL NOT NULL,
    risk_rating          TEXT NOT NULL,
    notes                TEXT,
    created_timestamp    DATE NOT NULL,
    updated_timestamp    DATE NOT NULL,
    reviewer_id          INTEGER NOT NULL,
    approval_status      TEXT NOT NULL,
    escalation_contact   TEXT,
    audit_reference      TEXT,
    performance_tier     TEXT NOT NULL,
    data_quality_flag    TEXT NOT NULL,
    next_review_date     DATE NOT NULL
);

INSERT INTO vendor_performance_metrics (metric_id,vendor_id,contract_id,measurement_date,on_time_delivery_pct,defect_rate_percent,compliance_score,service_level_agreement,issue_count,average_resolution_hours,cost_variance_percent,risk_rating,notes,created_timestamp,updated_timestamp,reviewer_id,approval_status,escalation_contact,audit_reference,performance_tier,data_quality_flag,next_review_date) VALUES (1,4001,8001,'2025-03-31',96.5,1.2,0.94,'Gold','2',4.5,0.5,'Low','',2025-04-01,2025-04-02,6001,'Approved','VendorMgr','Aud001','Tier1','A','2025-09-30');
INSERT INTO vendor_performance_metrics VALUES (2,4002,8002,'2025-03-31',89.0,3.5,0.78,'Silver','5',12.0,2.3,'Medium','',2025-04-01,2025-04-02,6002,'Pending','VendorMgr','Aud002','Tier2','B','2025-09-30');
INSERT INTO vendor_performance_metrics VALUES (3,4003,8003,'2025-03-31',70.0,7.0,0.60,'Bronze','10',20.0,5.0,'High','Performance degraded',2025-04-01,2025-04-02,6003,'Review','VendorMgr','Aud003','Tier3','C','2025-09-30');