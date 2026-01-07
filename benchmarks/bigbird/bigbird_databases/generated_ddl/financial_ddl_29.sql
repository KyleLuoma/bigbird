-- Utilities usage metrics per branch
CREATE TABLE branch_utilities
(
    branch_id            INTEGER NOT NULL,
    report_date          DATE NOT NULL,
    electricity_kwh      REAL NOT NULL,
    water_m3             REAL NOT NULL,
    gas_therms           REAL NOT NULL,
    heating_fuel_liters  REAL NOT NULL,
    cooling_fan_hours    INTEGER NOT NULL,
    solar_generation_kwh REAL NOT NULL,
    waste_tonnage        REAL NOT NULL,
    recycling_tonnage    REAL NOT NULL,
    hvac_maintenance_cnt INTEGER NOT NULL,
    generator_runtime_h INTEGER NOT NULL,
    backup_power_status  TEXT NOT NULL,
    avg_daily_occupancy  REAL NOT NULL,
    peak_load_kw         REAL NOT NULL,
    energy_efficiency_pct REAL NOT NULL,
    water_efficiency_pct REAL NOT NULL,
    carbon_footprint_tons REAL NOT NULL,
    sustainability_score INTEGER NOT NULL,
    notes                TEXT
);
INSERT INTO branch_utilities VALUES (1,'2024-12-01',12456.7,352.4,215.3,1800.5,120,5000.2,12.4,8.9,2,48,'Operational',0.75,250.0,92.5,88.1,15.3,85);
INSERT INTO branch_utilities VALUES (2,'2024-12-01',9870.2,310.0,190.1,1500.0,95,4200.0,10.2,7.1,1,36,'Operational',0.78,230.5,93.2,90.0,13.7,88);
INSERT INTO branch_utilities VALUES (3,'2024-12-01',14320.5,410.8,240.6,2100.3,140,5600.9,14.6,9.5,3,52,'Operational',0.73,270.8,91.0,85.4,16.2,80);

-- Media engagement metrics per customer
CREATE TABLE customer_media_engagement
(
    customer_id        INTEGER NOT NULL,
    engagement_date    DATE NOT NULL,
    channel_email      INTEGER NOT NULL,
    channel_sms        INTEGER NOT NULL,
    channel_push       INTEGER NOT NULL,
    channel_social     INTEGER NOT NULL,
    channel_web        INTEGER NOT NULL,
    total_clicks       INTEGER NOT NULL,
    total_impressions  INTEGER NOT NULL,
    video_views        INTEGER NOT NULL,
    ad_spend_usd       REAL NOT NULL,
    avg_session_time_s REAL NOT NULL,
    bounce_rate_pct    REAL NOT NULL,
    pages_per_session  REAL NOT NULL,
    conversions        INTEGER NOT NULL,
    conversion_rate_pct REAL NOT NULL,
    last_campaign      TEXT NOT NULL,
    sentiment_score    REAL NOT NULL,
    device_type        TEXT NOT NULL,
    geo_region         TEXT NOT NULL,
    notes              TEXT
);
INSERT INTO customer_media_engagement VALUES (101,'2024-11-30',5,2,3,4,10,120,3400,45,150.75,180.5,45.2,2.8,8,2.3,'SummerSale',0.85,'Mobile','NorthEast','');
INSERT INTO customer_media_engagement VALUES (102,'2024-11-30',3,1,2,5,8,85,2600,30,120.00,150.0,40.0,2.5,5,1.9,'WinterPromo',0.78,'Desktop','Midwest','');
INSERT INTO customer_media_engagement VALUES (103,'2024-11-30',7,3,4,6,12,150,4100,60,200.50,210.2,42.5,3.1,10,2.5,'HolidayCampaign',0.90,'Tablet','SouthWest','');

-- Regional infrastructure projects overview
CREATE TABLE regional_infrastructure
(
    project_id           INTEGER NOT NULL,
    project_name         TEXT NOT NULL,
    region_code          TEXT NOT NULL,
    start_date           DATE NOT NULL,
    end_date             DATE,
    budget_usd           REAL NOT NULL,
    funded_by_federal    REAL NOT NULL,
    funded_by_state      REAL NOT NULL,
    funded_by_private    REAL NOT NULL,
    contractor_company   TEXT NOT NULL,
    status               TEXT NOT NULL,
    major_milestone_cnt  INTEGER NOT NULL,
    permits_obtained_cnt INTEGER NOT NULL,
    environmental_impact TEXT NOT NULL,
    projected_jobs       INTEGER NOT NULL,
    actual_jobs          INTEGER,
    completion_percent   REAL NOT NULL,
    risk_level           TEXT NOT NULL,
    notes                TEXT,
    created_timestamp    DATE NOT NULL,
    updated_timestamp    DATE NOT NULL
);
INSERT INTO regional_infrastructure VALUES (1001,'River Bridge Revamp','RC01','2023-06-15','2025-09-30',25000000,10000000,8000000,7000000,'BridgeCo','InProgress',5,3,'Medium',150,0,45.0,'Medium','','2024-01-01','2024-11-30');
INSERT INTO regional_infrastructure VALUES (1002,'Metro Line Extension','RC02','2022-03-01','2026-12-15',50000000,20000000,15000000,15000000,'TransitBuild','Planned',2,1,'High',300,0,0.0,'High','Pending approvals','2024-01-01','2024-11-30');
INSERT INTO regional_infrastructure VALUES (1003,'Solar Farm Alpha','RC03','2024-01-10',NULL,18000000,12000000,3000000,3000000,'SunEnergy','Construction',3,2,'Low',80,0,25.0,'Low','Phase 1 complete','2024-01-01','2024-11-30');

-- Digital payment gateway status logs
CREATE TABLE digital_payment_gateway
(
    gateway_id            INTEGER NOT NULL,
    log_timestamp         DATE NOT NULL,
    status_code           INTEGER NOT NULL,
    response_time_ms      INTEGER NOT NULL,
    transaction_volume    INTEGER NOT NULL,
    failed_transactions   INTEGER NOT NULL,
    avg_amount_usd        REAL NOT NULL,
    max_amount_usd        REAL NOT NULL,
    min_amount_usd        REAL NOT NULL,
    currency_supported    TEXT NOT NULL,
    ssl_cert_valid        TEXT NOT NULL,
    api_version           TEXT NOT NULL,
    maintenance_window   TEXT,
    active_connections    INTEGER NOT NULL,
    cpu_usage_pct         REAL NOT NULL,
    memory_usage_mb       REAL NOT NULL,
    disk_io_mb_s          REAL NOT NULL,
    network_latency_ms    REAL NOT NULL,
    error_message         TEXT,
    notes                 TEXT,
    created_by            TEXT NOT NULL,
    updated_by            TEXT NOT NULL
);
INSERT INTO digital_payment_gateway VALUES (1,'2024-11-30',200,120,34000,15,45.67,1200.00,0.99,'USD,EUR,GBP','Valid','v2.3','02:00-03:00',150,65.3,2048.5,180.2,15.0,NULL,'Normal operation','system','system');
INSERT INTO digital_payment_gateway VALUES (2,'2024-11-30',503,250,12000,300,22.15,500.00,1.01,'USD,JPY','Valid','v2.2','03:00-04:00',80,78.9,1024.0,95.5,30.0,'Service unavailable','Investigation ongoing','monitor','admin');
INSERT INTO digital_payment_gateway VALUES (3,'2024-11-30',200,95,56000,5,78.90,2500.00,5.00,'USD,EUR,CHF','Valid','v2.4','01:00-02:00',200,55.0,3072.0,210.4,12.0,NULL,'All systems nominal','batch','batch');

-- Snapshot of insurance policies
CREATE TABLE insurance_policy_snapshot
(
    policy_id               INTEGER NOT NULL,
    effective_date          DATE NOT NULL,
    expiration_date         DATE NOT NULL,
    holder_id               INTEGER NOT NULL,
    product_type            TEXT NOT NULL,
    premium_amount_usd      REAL NOT NULL,
    deductible_amount_usd   REAL NOT NULL,
    coverage_limit_usd      REAL NOT NULL,
    underwriting_score      REAL NOT NULL,
    risk_factor_category    TEXT NOT NULL,
    payment_frequency       TEXT NOT NULL,
    payment_method          TEXT NOT NULL,
    broker_name             TEXT NOT NULL,
    agent_id                INTEGER NOT NULL,
    status                  TEXT NOT NULL,
    renewal_notice_sent    TEXT NOT NULL,
    claim_history_cnt       INTEGER NOT NULL,
    last_claim_date         DATE,
    endorsements_cnt        INTEGER NOT NULL,
    last_endorsement_date   DATE,
    notes                   TEXT
);
INSERT INTO insurance_policy_snapshot VALUES (5001,'2023-01-01','2024-01-01',3001,'Auto',1200.00,500.00,25000.00,78.5,'Medium','Annual','CreditCard','BrokerOne',101,'Active','Yes',2,'2023-09-15',1,'2023-06-20','');
INSERT INTO insurance_policy_snapshot VALUES (5002,'2022-06-15','2023-06-15',3002,'Home',950.00,1000.00,150000.00,85.0,'Low','SemiAnnual','BankTransfer','BrokerTwo',102,'Expired','Yes',0,NULL,0,NULL,'Policy lapsed due to non‑payment');
INSERT INTO insurance_policy_snapshot VALUES (5003,'2023-11-01','2024-11-01',3003,'Life',1800.00,0.00,500000.00,92.3,'Low','Monthly','DirectDebit','BrokerThree',103,'Active','No',1,'2024-03-10',2,'2024-05-05','');

-- Employee commute logs
CREATE TABLE employee_commute_log
(
    employee_id          INTEGER NOT NULL,
    commute_date         DATE NOT NULL,
    departure_time       TEXT NOT NULL,
    arrival_time         TEXT NOT NULL,
    commute_mode         TEXT NOT NULL,
    distance_km          REAL NOT NULL,
    duration_minutes     INTEGER NOT NULL,
    carbon_emission_kg   REAL NOT NULL,
    vehicle_type         TEXT,
    public_transport_line TEXT,
    parking_fee_usd      REAL,
    ride_share_service   TEXT,
    ride_share_cost_usd  REAL,
    notes                TEXT,
    created_at           DATE NOT NULL,
    updated_at           DATE NOT NULL,
    verified_by          TEXT,
    verification_status  TEXT,
    weather_condition    TEXT,
    traffic_level        TEXT,
    incident_reported    TEXT
);
INSERT INTO employee_commute_log VALUES (201,'2024-11-30','07:15','08:05','Car',12.5,50,3.2,'Sedan',NULL,2.5,NULL,NULL,'','2024-11-30','2024-11-30','system','Verified','Clear','Low',NULL);
INSERT INTO employee_commute_log VALUES (202,'2024-11-30','08:00','08:45','PublicTransit',8.0,45,1.5,NULL,'Bus12',0.0,NULL,NULL,'','2024-11-30','2024-11-30','system','Verified','Rain','Medium',NULL);
INSERT INTO employee_commute_log VALUES (203,'2024-11-30','06:55','07:40','RideShare',10.2,45,2.6,NULL,NULL,0.0,'Uber',7.8,'','2024-11-30','2024-11-30','system','Verified','Fog','High','Delay due to accident');

-- Supply chain certification records
CREATE TABLE supply_chain_certification
(
    certification_id      INTEGER NOT NULL,
    supplier_id           INTEGER NOT NULL,
    cert_type             TEXT NOT NULL,
    issue_date            DATE NOT NULL,
    expiry_date           DATE NOT NULL,
    cert_status           TEXT NOT NULL,
    auditor_name          TEXT NOT NULL,
    audit_score           REAL NOT NULL,
    compliance_level      TEXT NOT NULL,
    documents_url         TEXT NOT NULL,
    renewal_required      TEXT NOT NULL,
    remarks               TEXT,
    created_timestamp     DATE NOT NULL,
    updated_timestamp     DATE NOT NULL,
    verified_by           TEXT,
    verification_date     DATE,
    corrective_action_cnt INTEGER,
    pending_actions_cnt   INTEGER,
    last_action_date      DATE,
    next_audit_due        DATE,
    notes                 TEXT
);
INSERT INTO supply_chain_certification VALUES (9001,4001,'ISO9001','2023-04-01','2026-04-01','Active','AuditorA',92.5,'Level1','http://docs.example.com/9001','No',NULL,'2024-01-01','2024-11-30','compliance','2024-11-15',0,0,NULL,'2025-04-01','');
INSERT INTO supply_chain_certification VALUES (9002,4002,'FairTrade','2022-09-15','2025-09-15','Active','AuditorB',88.0,'Level2','http://docs.example.com/fairtrade','Yes','Requires annual review','2024-01-01','2024-11-30','compliance','2024-10-20',1,2,'2024-09-30','2025-09-15','');
INSERT INTO supply_chain_certification VALUES (9003,4003,'Organic','2021-06-20','2024-06-20','Expired','AuditorC',79.3,'Level3','http://docs.example.com/organic','Yes','Expired, renewal pending','2024-01-01','2024-11-30','compliance','2024-09-01',2,3,'2024-08-15','2025-06-20','');

-- Environmental noise monitoring stations
CREATE TABLE environmental_noise_monitor
(
    station_id          INTEGER NOT NULL,
    location_name       TEXT NOT NULL,
    latitude            REAL NOT NULL,
    longitude           REAL NOT NULL,
    installation_date   DATE NOT NULL,
    last_maintenance    DATE NOT NULL,
    status              TEXT NOT NULL,
    noise_level_db      REAL NOT NULL,
    peak_noise_db       REAL NOT NULL,
    average_day_db      REAL NOT NULL,
    average_night_db    REAL NOT NULL,
    measurement_interval_minutes INTEGER NOT NULL,
    battery_level_pct   REAL NOT NULL,
    firmware_version    TEXT NOT NULL,
    alerts_sent_cnt     INTEGER NOT NULL,
    last_alert_timestamp DATE,
    data_transmission_method TEXT NOT NULL,
    network_signal_strength REAL NOT NULL,
    notes               TEXT,
    created_at          DATE NOT NULL,
    updated_at          DATE NOT NULL,
    calibrated_by       TEXT
);
INSERT INTO environmental_noise_monitor VALUES (301,'Central Park','40.785091','-73.968285','2022-05-01','2024-10-15','Active',65.2,85.0,60.5,45.3,10,87.5,'v1.2',2,'2024-11-20','Cellular',-70.0,'','2024-01-01','2024-11-30','TechTeam');
INSERT INTO environmental_noise_monitor VALUES (302,'Industrial Zone','41.878113','-87.629799','2021-03-12','2024-09-30','Active',78.4,95.0,70.1,55.0,5,65.0,'v1.0',5,'2024-11-25','WiFi',-60.5,'','2024-01-01','2024-11-30','FieldEngineer');
INSERT INTO environmental_noise_monitor VALUES (303,'Residential Area','34.052235','-118.243683','2023-08-20','2024-11-01','Active',55.0,72.0,50.3,40.2,15,92.0,'v1.3',0,NULL,'Ethernet',-55.0,'','2024-01-01','2024-11-30','TechTeam');

-- Fleet driver training records
CREATE TABLE fleet_driver_training
(
    driver_id               INTEGER NOT NULL,
    training_session_id     INTEGER NOT NULL,
    session_date            DATE NOT NULL,
    trainer_name            TEXT NOT NULL,
    course_code             TEXT NOT NULL,
    course_title            TEXT NOT NULL,
    duration_hours          REAL NOT NULL,
    assessment_score        REAL NOT NULL,
    certification_awarded   TEXT NOT NULL,
    vehicle_type_trained    TEXT NOT NULL,
    safety_module_completed TEXT NOT NULL,
    eco_driving_module      TEXT NOT NULL,
    compliance_required    TEXT NOT NULL,
    notes                   TEXT,
    created_timestamp       DATE NOT NULL,
    updated_timestamp       DATE NOT NULL,
    verified_by             TEXT,
    verification_date       DATE,
    retraining_due_date     DATE,
    training_location       TEXT,
    feedback_score          REAL
);
INSERT INTO fleet_driver_training VALUES (401,8001,'2024-09-15','TrainerA','DRV101','Defensive Driving',8,94.5,'Certified','Truck','Yes','Yes','Yes','','2024-09-15','2024-11-30','admin','2024-09-20','2025-09-15','Main Campus',4.8);
INSERT INTO fleet_driver_training VALUES (402,8002,'2024-10-10','TrainerB','ENV201','Eco Driving',6,88.0,'Certified','Van','Yes','Yes','Yes','','2024-10-10','2024-11-30','admin','2024-10-12','2025-10-10','East Facility',4.5);
INSERT INTO fleet_driver_training VALUES (403,8003,'2024-11-05','TrainerC','SEC301','Advanced Safety',10,91.2,'Certified','Sedan','Yes','No','Yes','Needs follow‑up on eco module','2024-11-05','2024-11-30','admin','2024-11-07','2025-11-05','West Depot',4.7);

-- Marketing attribution model parameters
CREATE TABLE marketing_attribution
(
    model_id               INTEGER NOT NULL,
    model_name             TEXT NOT NULL,
    version                TEXT NOT NULL,
    creation_date          DATE NOT NULL,
    last_update_date       DATE NOT NULL,
    attribution_type       TEXT NOT NULL,
    channel_weight_online  REAL NOT NULL,
    channel_weight_offline REAL NOT NULL,
    decay_factor           REAL NOT NULL,
    conversion_window_days INTEGER NOT NULL,
    confidence_interval    REAL NOT NULL,
    training_data_source   TEXT NOT NULL,
    validation_method      TEXT NOT NULL,
    performance_metric     TEXT NOT NULL,
    metric_value           REAL NOT NULL,
    notes                  TEXT,
    created_by             TEXT NOT NULL,
    updated_by             TEXT NOT NULL,
    status                 TEXT NOT NULL,
    description            TEXT,
    documentation_url      TEXT,
    audit_log_id           INTEGER
);
INSERT INTO marketing_attribution VALUES (1,'Linear Attribution','v1.0','2024-01-01','2024-11-30','Linear',0.5,0.5,0.0,30,95.0,'CRM','CrossValidation','Accuracy',0.87,'','data_scientist','data_scientist','Active','Standard linear model','http://docs.example.com/linattr','1001');
INSERT INTO marketing_attribution VALUES (2,'Time Decay','v2.1','2024-03-15','2024-11-30','Decay',0.6,0.4,0.2,45,93.5,'WebAnalytics','Holdout','Precision',0.81,'Optimized for recent clicks','analyst','analyst','Active','Applies exponential decay','http://docs.example.com/decayattr','1002');
INSERT INTO marketing_attribution VALUES (3,'Markov Chain','v3.0','2024-06-20','2024-11-30','Probabilistic',0.4,0.6,0.1,60,90.0,'DataLake','MonteCarlo','Recall',0.78,'Model includes transition probabilities','engineer','engineer','Active','Advanced probabilistic attribution','http://docs.example.com/markov','1003');