-- Branch environment monitoring sensors
CREATE TABLE branch_environment_monitor
(
    monitor_id        INTEGER PRIMARY KEY,
    branch_id         INTEGER NOT NULL,
    sensor_type       TEXT NOT NULL,
    install_date      DATE NOT NULL,
    last_calibration  DATE NOT NULL,
    status            TEXT NOT NULL,
    temperature       REAL NOT NULL,
    humidity          REAL NOT NULL,
    co2_level         REAL NOT NULL,
    noise_level       REAL NOT NULL,
    vibration         REAL NOT NULL,
    battery_level    INTEGER NOT NULL,
    firmware_version  TEXT NOT NULL,
    ip_address        TEXT NOT NULL,
    mac_address       TEXT NOT NULL,
    alert_threshold   REAL NOT NULL,
    alert_triggered  TEXT,
    maintenance_due   DATE,
    technician_id     INTEGER,
    notes             TEXT,
    latitude          REAL,
    longitude         REAL
);
INSERT INTO branch_environment_monitor VALUES (1,101,'temp_humidity','2022-03-15','2023-03-01','active',22.5,45.0,400.0,55.2,0.02,95,'v1.2','192.168.1.10','AA:BB:CC:DD:EE:01',750.0,'none','2024-03-01',12,'Initial install',40.7128,-74.0060);
INSERT INTO branch_environment_monitor VALUES (2,102,'co2_noise','2021-11-20','2023-11-10','maintenance',21.0,50.0,800.0,70.5,0.03,80,'v2.0','192.168.2.20','AA:BB:CC:DD:EE:02',950.0,'co2_high','2024-11-20',15,'Calibration needed',34.0522,-118.2437);
INSERT INTO branch_environment_monitor VALUES (3,103,'vibration','2023-01-05','2023-12-01','active',23.1,48.5,420.0,60.0,0.01,88,'v1.5','192.168.3.30','AA:BB:CC:DD:EE:03',800.0,'none','2024-12-05',20,'All good',41.8781,-87.6298);

-- Extended employee training records
CREATE TABLE employee_training_record_extended
(
    record_id                INTEGER PRIMARY KEY,
    employee_id              INTEGER NOT NULL,
    training_module          TEXT NOT NULL,
    start_date               DATE NOT NULL,
    end_date                 DATE,
    completion_status        TEXT NOT NULL,
    score_percent            REAL,
    trainer_name             TEXT,
    training_location        TEXT,
    training_type            TEXT,
    certification_obtained   TEXT,
    hours_spent              INTEGER,
    materials_provided       TEXT,
    feedback_score           REAL,
    re_evaluation_needed     TEXT,
    next_due_date            DATE,
    department_id            INTEGER,
    manager_id               INTEGER,
    notes                    TEXT,
    version_number           INTEGER,
    approval_timestamp       DATE,
    approved_by              TEXT
);
INSERT INTO employee_training_record_extended VALUES (1,2001,'risk_management','2023-02-01','2023-02-05','completed',92.5,'AliceSmith','HeadOffice','online','RM-Cert',8,'pdf_manual','4.5','no','2024-02-01',10,300,'Excellent performance',3,'2023-02-06','BobJones');
INSERT INTO employee_training_record_extended VALUES (2,2002,'customer_service','2023-03-10','2023-03-12','completed',87.0,'JohnDoe','Branch101','inperson','CS-Cert',6,'handout','4.0','no','2024-03-10',12,301,'Good interaction',2,'2023-03-13','SaraLee');
INSERT INTO employee_training_record_extended VALUES (3,2003,'cybersecurity','2023-04-15',NULL,'in_progress',NULL,'KimTan','HeadOffice','online',NULL,5,'eLearning','',NULL,'yes','2024-04-15',10,302,'Pending final exam',1,NULL,NULL);

-- Detailed ATM security device log
CREATE TABLE atm_security_device_log_detail
(
    log_id               INTEGER PRIMARY KEY,
    atm_id               INTEGER NOT NULL,
    device_type          TEXT NOT NULL,
    event_timestamp      DATE NOT NULL,
    event_type           TEXT NOT NULL,
    severity_level       INTEGER NOT NULL,
    operator_id          INTEGER,
    firmware_version     TEXT,
    serial_number        TEXT,
    ip_address           TEXT,
    mac_address          TEXT,
    battery_status       TEXT,
    tamper_status        TEXT,
    camera_snapshot_path TEXT,
    door_status          TEXT,
    alarm_triggered      TEXT,
    resolution_action    TEXT,
    notes                TEXT,
    maintenance_due      DATE,
    last_maintenance_by  INTEGER,
    software_patch_level TEXT,
    geo_latitude         REAL,
    geo_longitude        REAL
);
INSERT INTO atm_security_device_log_detail VALUES (1,5001,'camera','2023-07-01','motion_detected',3,101,'v3.1','SN12345','10.0.0.5','AA:BB:CC:DD:EE:FF','full','ok','snapshot_20230701_001.jpg','closed','yes','alert_sent','Checked footage',NULL,NULL,'patch_202306','40.7128','-74.0060');
INSERT INTO atm_security_device_log_detail VALUES (2,5002,'tamper_switch','2023-06-15','tamper_opened',5,102,'v2.9','SN67890','10.0.0.6','AA:BB:CC:DD:EE:11','full','ok',NULL,'open','yes','lockdown_initiated','Device locked',NULL,NULL,'patch_202305','34.0522','-118.2437');
INSERT INTO atm_security_device_log_detail VALUES (3,5003,'camera','2023-05-20','offline',4,103,'v3.0','SN54321','10.0.0.7','AA:BB:CC:DD:EE:22','low','fault','snapshot_20230520_001.jpg','closed','no','rebooted','Reboot successful',NULL,NULL,'patch_202304','41.8781','-87.6298');

-- Customer loyalty activity tracking
CREATE TABLE customer_loyalty_activity
(
    activity_id          INTEGER PRIMARY KEY,
    customer_id          INTEGER NOT NULL,
    loyalty_program_id   INTEGER NOT NULL,
    activity_date        DATE NOT NULL,
    activity_type        TEXT NOT NULL,
    points_earned        INTEGER,
    points_redeemed      INTEGER,
    transaction_id       INTEGER,
    store_id             INTEGER,
    channel              TEXT,
    device_id            TEXT,
    campaign_code        TEXT,
    segment              TEXT,
    tier_before          TEXT,
    tier_after           TEXT,
    bonus_multiplier     REAL,
    notes                TEXT,
    expiry_date          DATE,
    notified_via         TEXT,
    notification_status  TEXT,
    created_timestamp    DATE,
    updated_timestamp    DATE,
    audit_user           TEXT
);
INSERT INTO customer_loyalty_activity VALUES (1,30001,1,'2023-08-01','purchase',120,0,9001,101,'online','DEV123','SUMMER23','gold','gold','1.0','', '2024-08-01','email','sent','2023-08-01','2023-08-01','system');
INSERT INTO customer_loyalty_activity VALUES (2,30002,2,'2023-08-05','redeem',0,200,9002,102,'inperson','DEV124','SPRING22','silver','silver','0.5','Redeemed for gift card','2024-08-05','sms','delivered','2023-08-05','2023-08-05','admin');
INSERT INTO customer_loyalty_activity VALUES (3,30003,1,'2023-08-10','bonus',300,0,9003,103,'mobile','DEV125','BONUS','platinum','platinum','2.0','Double points weekend','2025-08-10','push','queued','2023-08-10','2023-08-10','system');

-- Supplier performance evaluation
CREATE TABLE supplier_performance_evaluation
(
    evaluation_id        INTEGER PRIMARY KEY,
    supplier_id          INTEGER NOT NULL,
    eval_period_start    DATE NOT NULL,
    eval_period_end      DATE NOT NULL,
    on_time_delivery_pct REAL,
    quality_score        REAL,
    cost_variance_pct    REAL,
    compliance_score     REAL,
    risk_rating          TEXT,
    contract_status      TEXT,
    auditor_id           INTEGER,
    comments             TEXT,
    created_date         DATE,
    last_updated_date    DATE,
    approved_by          TEXT,
    approval_timestamp   DATE,
    follow_up_actions    TEXT,
    follow_up_due_date   DATE,
    overall_rating       TEXT,
    score_total          REAL,
    weighting_on_time    REAL,
    weighting_quality    REAL,
    weighting_cost       REAL,
    weighting_compliance REAL
);
INSERT INTO supplier_performance_evaluation VALUES (1,4001,'2023-01-01','2023-12-31',96.5,88.0,2.5,92.0,'low','active',501,'Good overall performance','2024-01-15','2024-01-15','ChiefAuditor','2024-01-16','Review pricing structure','2024-03-01','A',87.0,0.25,0.25,0.25,0.25);
INSERT INTO supplier_performance_evaluation VALUES (2,4002,'2023-01-01','2023-12-31',82.0,75.0,5.0,68.0,'medium','warning',502,'Delivery delays noticed','2024-01-20','2024-01-20','SeniorAuditor','2024-01-21','Improve logistics','2024-04-01','B',72.5,0.25,0.25,0.25,0.25);
INSERT INTO supplier_performance_evaluation VALUES (3,4003,'2023-01-01','2023-12-31',99.0,95.0,1.0,98.0,'low','active',503,'Excellent supplier','2024-01-25','2024-01-25','DirectorAuditor','2024-01-26','Maintain current terms','2024-06-01','A+',93.0,0.25,0.25,0.25,0.25);

-- Digital asset audit log
CREATE TABLE digital_asset_audit
(
    audit_id               INTEGER PRIMARY KEY,
    asset_id               INTEGER NOT NULL,
    asset_type             TEXT NOT NULL,
    audit_timestamp        DATE NOT NULL,
    auditor_id             INTEGER NOT NULL,
    status_before          TEXT,
    status_after           TEXT,
    integrity_check_passed TEXT,
    checksum_before        TEXT,
    checksum_after         TEXT,
    storage_location       TEXT,
    encryption_status      TEXT,
    retention_policy       TEXT,
    access_level_before    TEXT,
    access_level_after     TEXT,
    notes                  TEXT,
    remediation_action     TEXT,
    remediation_due_date   DATE,
    escalated_to           TEXT,
    escalation_timestamp   DATE,
    compliance_flag        TEXT,
    risk_score             REAL,
    recommended_action     TEXT,
    created_by             TEXT,
    created_timestamp      DATE
);
INSERT INTO digital_asset_audit VALUES (1,6001,'document','2023-09-01',701,'archived','active','yes','abc123','def456','s3://bucket/docs','encrypted','7years','restricted','public','Metadata updated','reclassify','2023-10-01','ComplianceTeam','2023-09-02','Y',45.0,'update encryption','system','2023-09-01');
INSERT INTO digital_asset_audit VALUES (2,6002,'image','2023-09-05',702,'active','deleted','yes','ghi789','ghi789','s3://bucket/images','none','5years','public','restricted','Removed obsolete image','delete permanently','2023-09-10','ITSecurity','2023-09-06','N',20.0,'archive','admin','2023-09-05');
INSERT INTO digital_asset_audit VALUES (3,6003,'video','2023-09-10',703,'active','active','no','jkl012','jkl012','s3://bucket/videos','encrypted','10years','public','public','No issues','none','2024-01-01','DataGovernance','2023-09-11','N',10.0,'monitor','system','2023-09-10');

-- Fleet vehicle telemetry extended data
CREATE TABLE fleet_vehicle_telemetry_extended
(
    telemetry_id            INTEGER PRIMARY KEY,
    vehicle_id              INTEGER NOT NULL,
    record_timestamp        DATE NOT NULL,
    latitude                REAL,
    longitude               REAL,
    speed_kph               REAL,
    engine_rpm              INTEGER,
    fuel_level_percent      REAL,
    oil_temperature_c       REAL,
    tire_pressure_front_left  REAL,
    tire_pressure_front_right REAL,
    tire_pressure_rear_left   REAL,
    tire_pressure_rear_right  REAL,
    battery_voltage         REAL,
    coolant_temp_c          REAL,
    brake_status            TEXT,
    gear_position           TEXT,
    odometer_km             REAL,
    acceleration_g          REAL,
    deceleration_g          REAL,
    gps_signal_strength     INTEGER,
    eco_mode_enabled        TEXT,
    driver_id               INTEGER,
    route_id                INTEGER,
    maintenance_flag        TEXT,
    notes                   TEXT
);
INSERT INTO fleet_vehicle_telemetry_extended VALUES (1,8001,'2023-08-15',40.7128,-74.0060,65.0,2500,78.5,90.0,32.0,32.5,31.8,32.1,12.6,85.0,'brake_ok','D',150000.0,0.3,0.1,5,'yes',301,401,'no','');
INSERT INTO fleet_vehicle_telemetry_extended VALUES (2,8002,'2023-08-16',34.0522,-118.2437,80.0,3000,55.0,95.0,30.0,30.2,29.9,30.1,12.4,88.0,'brake_warn','N',150050.0,0.5,0.2,4,'no',302,402,'yes','Check brakes');
INSERT INTO fleet_vehicle_telemetry_extended VALUES (3,8003,'2023-08-17',41.8781,-87.6298,45.0,2000,92.0,85.0,33.0,33.1,32.9,33.2,12.8,80.0,'brake_ok','R',150100.0,0.1,0.05,6,'yes',303,403,'no','');

-- Regulatory compliance summary per district
CREATE TABLE regulatory_compliance_summary
(
    summary_id            INTEGER PRIMARY KEY,
    district_id           INTEGER NOT NULL,
    reporting_period_start DATE NOT NULL,
    reporting_period_end   DATE NOT NULL,
    total_issues_reported  INTEGER,
    issues_resolved        INTEGER,
    pending_issues         INTEGER,
    compliance_score       REAL,
    audit_frequency_months INTEGER,
    last_audit_date        DATE,
    next_audit_due_date    DATE,
    regulatory_body        TEXT,
    compliance_status      TEXT,
    risk_level             TEXT,
    corrective_action_plan TEXT,
    budget_allocated       REAL,
    expenditures_to_date   REAL,
    notes                  TEXT,
    created_by             TEXT,
    created_timestamp      DATE,
    updated_by             TEXT,
    updated_timestamp      DATE,
    approval_status        TEXT,
    approved_by            TEXT,
    approval_timestamp     DATE
);
INSERT INTO regulatory_compliance_summary VALUES (1,10,'2023-01-01','2023-12-31',120,100,20,87.5,12,'2023-06-15','2024-06-15','FinanceReg','compliant','low','Standard corrective actions',50000.0,30000.0,'All good','system','2024-01-01','system','2024-01-01','approved','ChiefRegulator','2024-01-02');
INSERT INTO regulatory_compliance_summary VALUES (2,11,'2023-01-01','2023-12-31',200,150,50,75.0,12,'2023-07-20','2024-07-20','FinanceReg','non_compliant','medium','Enhanced monitoring required',75000.0,50000.0,'Requires follow up','system','2024-01-02','system','2024-01-02','pending','RegionalManager','2024-01-03');
INSERT INTO regulatory_compliance_summary VALUES (3,12,'2023-01-01','2023-12-31',80,80,0,100.0,12,'2023-05-10','2024-05-10','FinanceReg','compliant','low','No action needed',40000.0,35000.0,'Excellent record','system','2024-01-03','system','2024-01-03','approved','ChiefRegulator','2024-01-04');

-- Marketing channel analysis data
CREATE TABLE marketing_channel_analysis
(
    analysis_id          INTEGER PRIMARY KEY,
    channel_name         TEXT NOT NULL,
    start_date           DATE NOT NULL,
    end_date             DATE NOT NULL,
    impressions          INTEGER,
    clicks               INTEGER,
    conversions          INTEGER,
    spend_usd            REAL,
    cost_per_click_usd   REAL,
    cost_per_acquisition REAL,
    ctr_percent          REAL,
    conversion_rate_percent REAL,
    revenue_usd          REAL,
    roi_percent          REAL,
    segment_targeted     TEXT,
    creative_type        TEXT,
    device_type          TEXT,
    geographic_region    TEXT,
    audience_age_group   TEXT,
    audience_gender      TEXT,
    notes                TEXT,
    created_by           TEXT,
    created_timestamp    DATE,
    approved_by          TEXT,
    approval_timestamp   DATE
);
INSERT INTO marketing_channel_analysis VALUES (1,'email','2023-04-01','2023-04-30',50000,2000,150,12000.0,6.0,80.0,4.0,3.0,18000.0,50.0,'retail','newsletter','desktop','north_america','25_34','female','Spring promotion','analyst','2023-05-01','manager','2023-05-02');
INSERT INTO marketing_channel_analysis VALUES (2,'social_media','2023-04-01','2023-04-30',200000,5000,400,25000.0,5.0,62.5,2.5,2.0,35000.0,40.0,'tech','video_ad','mobile','europe','18_24','male','New product launch','analyst','2023-05-01','manager','2023-05-02');
INSERT INTO marketing_channel_analysis VALUES (3,'search','2023-04-01','2023-04-30',150000,3000,250,18000.0,6.0,72.0,2.0,1.7,27000.0,50.0,'services','text_ad','desktop','asia','35_44','all','SEO campaign','analyst','2023-05-01','manager','2023-05-02');

-- Energy grid node status monitoring
CREATE TABLE energy_grid_node_status
(
    node_status_id      INTEGER PRIMARY KEY,
    node_id             INTEGER NOT NULL,
    status_timestamp    DATE NOT NULL,
    voltage_mv          REAL,
    current_ma          REAL,
    temperature_c       REAL,
    frequency_hz        REAL,
    load_percent        REAL,
    power_factor        REAL,
    outage_flag         TEXT,
    maintenance_scheduled TEXT,
    maintenance_start   DATE,
    maintenance_end     DATE,
    operator_id         INTEGER,
    geo_latitude        REAL,
    geo_longitude       REAL,
    region_code         TEXT,
    substation_id       INTEGER,
    alerts_triggered    INTEGER,
    last_alert_timestamp DATE,
    notes               TEXT,
    created_by          TEXT,
    created_timestamp   DATE,
    updated_by          TEXT,
    updated_timestamp   DATE
);
INSERT INTO energy_grid_node_status VALUES (1,9001,'2023-08-20',12000.0,500.0,45.0,60.0,75.0,0.98,'no','yes','2023-09-01','2023-09-02',801,40.7128,-74.0060,'NE','101',2,'2023-08-19','Routine check','system','2023-08-20','system','2023-08-20');
INSERT INTO energy_grid_node_status VALUES (2,9002,'2023-08-20',11500.0,480.0,48.0,60.0,80.0,0.95,'no','no',NULL,NULL,802,34.0522,-118.2437,'SW','102',0,NULL,'All normal','system','2023-08-20','system','2023-08-20');
INSERT INTO energy_grid_node_status VALUES (3,9003,'2023-08-20',13000.0,550.0,50.0,60.0,90.0,0.92,'yes','no',NULL,NULL,803,41.8781,-87.6298,'MW','103',5,'2023-08-18','Outage due to storm','system','2023-08-20','system','2023-08-20');

-- Investment fund performance metrics
CREATE TABLE investment_fund_performance
(
    fund_perf_id        INTEGER PRIMARY KEY,
    fund_id             INTEGER NOT NULL,
    reporting_date      DATE NOT NULL,
    nav_per_share       REAL,
    total_assets_usd    REAL,
    expense_ratio_percent REAL,
    turnover_rate_percent REAL,
    beta                REAL,
    alpha               REAL,
    sharpe_ratio        REAL,
    std_dev_percent     REAL,
    three_year_return_percent REAL,
    five_year_return_percent REAL,
    dividend_yield_percent REAL,
    category            TEXT,
    manager_name        TEXT,
    inception_date      DATE,
    currency            TEXT,
    domicile_country    TEXT,
    benchmark_index     TEXT,
    assets_under_management_usd REAL,
    risk_classification TEXT,
    liquidity_score     REAL,
    notes               TEXT,
    created_by          TEXT,
    created_timestamp   DATE,
    approved_by         TEXT,
    approval_timestamp  DATE
);
INSERT INTO investment_fund_performance VALUES (1,1001,'2023-12-31',15.23,250000000.0,0.75,10.0,1.02,0.5,1.2,12.0,8.5,14.0,2.5,'Equity','JohnDoe','2010-05-15','USD','USA','S&P500',200000000.0,'moderate',85.0,'Strong performance','analyst','2024-01-01','manager','2024-01-02');
INSERT INTO investment_fund_performance VALUES (2,1002,'2023-12-31',8.55,120000000.0,0.60,8.5,0.95,0.3,0.9,10.0,6.0,10.0,1.8,'Bond','JaneSmith','2012-09-30','USD','USA','US10Y',100000000.0,'low',92.0,'Stable returns','analyst','2024-01-01','manager','2024-01-02');
INSERT INTO investment_fund_performance VALUES (3,1003,'2023-12-31',23.40,500000000.0,1.10,12.0,1.15,0.7,1.5,15.0,12.0,18.0,3.2,'Mixed','AliceBrown','2005-03-20','EUR','Germany','EuroStoxx50',400000000.0,'high',70.0,'Aggressive growth','analyst','2024-01-01','manager','2024-01-02');

-- Weather station observation records
CREATE TABLE weather_station_observation
(
    observation_id      INTEGER PRIMARY KEY,
    station_id          INTEGER NOT NULL,
    observation_time    DATE NOT NULL,
    temperature_c       REAL,
    humidity_percent    REAL,
    wind_speed_kph      REAL,
    wind_direction_deg  REAL,
    precipitation_mm    REAL,
    pressure_hpa        REAL,
    uv_index            REAL,
    visibility_km       REAL,
    cloud_cover_percent REAL,
    dew_point_c         REAL,
    solar_radiation_wm2 REAL,
    air_quality_index   INTEGER,
    pollutant_pm25      REAL,
    pollutant_pm10      REAL,
    ozone_ppb           REAL,
    nitrogen_dioxide_ppb REAL,
    notes               TEXT,
    data_quality_flag   TEXT,
    created_by          TEXT,
    created_timestamp   DATE,
    verified_by         TEXT,
    verification_timestamp DATE
);
INSERT INTO weather_station_observation VALUES (1,20001,'2023-08-20',28.5,65.0,12.0,180.0,0.0,1013.0,5.0,10.0,30.0,22.0,500.0,42,15.0,20.0,30.0,25.0,'Clear day','good','system','2023-08-20','system','2023-08-20');
INSERT INTO weather_station_observation VALUES (2,20002,'2023-08-20',22.3,78.0,8.0,90.0,2.5,1008.0,3.0,12.0,60.0,16.5,300.0,55,25.0,30.0,40.0,35.0,'Light rain','moderate','system','2023-08-20','system','2023-08-20');
INSERT INTO weather_station_observation VALUES (3,20003,'2023-08-20',15.0,85.0,5.0,270.0,0.0,1015.0,0.0,15.0,90.0,12.0,100.0,70,10.0,12.0,20.0,15.0,'Foggy','good','system','2023-08-20','system','2023-08-20');

-- Telecommunication fiber network inventory
CREATE TABLE telecom_fiber_network_inventory
(
    fiber_link_id        INTEGER PRIMARY KEY,
    link_name            TEXT NOT NULL,
    start_node_id        INTEGER NOT NULL,
    end_node_id          INTEGER NOT NULL,
    installation_date    DATE,
    fiber_type           TEXT,
    capacity_gbps        REAL,
    length_km            REAL,
    splice_count         INTEGER,
    attenuation_db_km    REAL,
    contractor           TEXT,
    maintenance_interval_months INTEGER,
    last_maintenance_date DATE,
    next_maintenance_due DATE,
    status               TEXT,
    redundancy_level     TEXT,
    geographic_region    TEXT,
    owned_by_company     TEXT,
    lease_expiration_date DATE,
    notes                TEXT,
    created_by           TEXT,
    created_timestamp    DATE,
    updated_by           TEXT,
    updated_timestamp    DATE,
    compliance_status    TEXT,
    external_reference   TEXT
);
INSERT INTO telecom_fiber_network_inventory VALUES (1,'FiberLink_A','1001','2001','2018-06-15','single_mode',100.0,12.5,4,0.2,'FiberCo','12','2023-06-01','2024-06-01','active','high','north_america','TelecomCorp','2028-12-31','Primary backbone link','system','2023-01-01','system','2023-06-01','compliant','REF12345');
INSERT INTO telecom_fiber_network_inventory VALUES (2,'FiberLink_B','1002','2002','2019-09-20','multi_mode',40.0,8.0,3,0.4,'BuildIt','12','2023-09-15','2024-09-15','active','medium','europe','TelecomCorp','2029-12-31','Secondary link','system','2023-02-01','system','2023-09-15','compliant','REF67890');
INSERT INTO telecom_fiber_network_inventory VALUES (3,'FiberLink_C','1003','2003','2020-01-10','single_mode',200.0,20.0,6,0.15,'ConnectNow','12','2023-12-01','2024-12-01','active','high','asia','TelecomCorp','2030-12-31','High capacity link','system','2023-03-01','system','2023-12-01','compliant','REF54321');