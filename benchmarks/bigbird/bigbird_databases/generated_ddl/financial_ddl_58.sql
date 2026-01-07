-- Information about municipal roads, their characteristics and maintenance details
CREATE TABLE municipal_road_inventory
(
    road_id                 INTEGER PRIMARY KEY,
    road_name               TEXT NOT NULL,
    road_type               TEXT NOT NULL,
    surface_material        TEXT NOT NULL,
    length_meters           REAL NOT NULL,
    lane_count              INTEGER NOT NULL,
    speed_limit_kph         INTEGER NOT NULL,
    built_year              INTEGER NOT NULL,
    maintenance_status     TEXT NOT NULL,
    last_inspection_date    DATE NOT NULL,
    annual_budget_usd       REAL NOT NULL,
    traffic_volume_daily    INTEGER NOT NULL,
    has_cycle_lane          TEXT NOT NULL,
    has_pedestrian_crossing TEXT NOT NULL,
    drainage_type           TEXT NOT NULL,
    lighting_present        TEXT NOT NULL,
    pavement_condition      TEXT NOT NULL,
    snow_removal_contract   TEXT NOT NULL,
    gps_latitude            REAL NOT NULL,
    gps_longitude           REAL NOT NULL,
    jurisdiction_code      TEXT NOT NULL,
    notes                   TEXT
);
INSERT INTO municipal_road_inventory VALUES (1,'MainSt','Arterial','Asphalt',2500.5,4,60,1998,'Good','2023-06-15',120000.00,15000,'Yes','Yes','Open','Yes','Excellent','ContractA',40.7128,-74.0060,'J001','');
INSERT INTO municipal_road_inventory VALUES (2,'OakAve','Collector','Concrete',1800.0,2,50,2005,'Fair','2023-04-20',85000.00,8000,'No','Yes','Closed','No','Good','ContractB',34.0522,-118.2437,'J002','');
INSERT INTO municipal_road_inventory VALUES (3,'PineRd','Local','Gravel',950.3,1,30,2012,'Poor','2023-01-10',45000.00,3000,'No','No','Open','No','Fair','ContractC',41.8781,-87.6298,'J003','Needs repaving');

-- Records of city waste collection schedules and statistics
CREATE TABLE city_waste_collection
(
    collection_id            INTEGER PRIMARY KEY,
    district_id              INTEGER NOT NULL,
    collection_type          TEXT NOT NULL,
    vehicle_id               INTEGER NOT NULL,
    driver_employee_id       INTEGER NOT NULL,
    scheduled_date           DATE NOT NULL,
    actual_start_time        TEXT NOT NULL,
    actual_end_time          TEXT NOT NULL,
    waste_volume_cubic_meters REAL NOT NULL,
    waste_weight_tons        REAL NOT NULL,
    recyclable_percentage    REAL NOT NULL,
    hazardous_waste_flag     TEXT NOT NULL,
    route_distance_km        REAL NOT NULL,
    fuel_consumed_liters     REAL NOT NULL,
    emissions_co2_kg         REAL NOT NULL,
    notes                    TEXT,
    inspector_id             INTEGER NOT NULL,
    compliance_status        TEXT NOT NULL,
    penalty_imposed_usd      REAL,
    weather_condition        TEXT NOT NULL,
    temperature_celsius      REAL NOT NULL,
    humidity_percent         REAL NOT NULL,
    traffic_delay_minutes    INTEGER NOT NULL
);
INSERT INTO city_waste_collection VALUES (101,10,'General',2001,301,'2023-07-01','06:00','07:30',12.5,2.3,15.0,'No',15.2,8.1,5.4,'',401,'Compliant',0.00,'Clear',22.5,55.0,5);
INSERT INTO city_waste_collection VALUES (102,12,'Recyclable',2002,302,'2023-07-01','06:15','07:45',9.8,1.9,85.0,'No',13.0,6.5,4.1,'',402,'Compliant',0.00,'Cloudy',18.0,60.0,8);
INSERT INTO city_waste_collection VALUES (103,15,'Hazardous',2003,303,'2023-07-01','06:30','08:10',5.2,1.2,5.0,'Yes',10.5,5.0,3.2,'Special handling required',403,'NonCompliant',250.00,'Rain',16.0,70.0,12);

-- Details of facilities and amenities available in public parks
CREATE TABLE public_park_facilities
(
    park_id                 INTEGER PRIMARY KEY,
    park_name               TEXT NOT NULL,
    area_sq_meters          REAL NOT NULL,
    has_playground          TEXT NOT NULL,
    playground_equipment    TEXT,
    has_sports_field        TEXT NOT NULL,
    sports_field_type       TEXT,
    has_picnic_area         TEXT NOT NULL,
    picnic_capacity         INTEGER,
    has_trail               TEXT NOT NULL,
    trail_length_km         REAL,
    trail_surface           TEXT,
    has_ dog_park           TEXT NOT NULL,
    dog_park_area_sq_meters REAL,
    has_restrooms           TEXT NOT NULL,
    restroom_count          INTEGER,
    has_wheelchair_access  TEXT NOT NULL,
    lighting_hours_per_day  INTEGER,
    annual_maintenance_usd  REAL,
    opening_time            TEXT NOT NULL,
    closing_time            TEXT NOT NULL,
    latitude                REAL NOT NULL,
    longitude               REAL NOT NULL,
    notes                   TEXT
);
INSERT INTO public_park_facilities VALUES (1,'CentralPark',54000.0,'Yes','SwingSet,Slide','Yes','Soccer','Yes',120,'Yes',3.2,'Paved','No',0,'Yes',4,'Yes',12,250000.00,'06:00','22:00',40.785091,-73.968285,'');
INSERT INTO public_park_facilities VALUES (2,'RiversidePark',32000.0,'No',NULL,'Yes','Baseball','Yes',80,'Yes',2.5,'Gravel','Yes',500,'Yes',2,'Yes',10,150000.00,'07:00','21:00',34.011286,-118.492949,'Upcoming playground planned');
INSERT INTO public_park_facilities VALUES (3,'HillviewPark',18000.0,'Yes','ClimbingWall','No',NULL,'No',0,'Yes',1.8,'Dirt','No',0,'No',0,'Yes',8,90000.00,'05:30','20:30',41.878113,-87.629799,'');

-- Air quality monitoring stations and their recorded metrics
CREATE TABLE air_quality_monitor
(
    station_id                INTEGER PRIMARY KEY,
    station_name              TEXT NOT NULL,
    latitude                  REAL NOT NULL,
    longitude                 REAL NOT NULL,
    installation_date         DATE NOT NULL,
    sensor_type               TEXT NOT NULL,
    pm2_5_ug_m3               REAL NOT NULL,
    pm10_ug_m3                REAL NOT NULL,
    no2_ppb                   REAL NOT NULL,
    o3_ppb                    REAL NOT NULL,
    co_ppm                    REAL NOT NULL,
    so2_ppb                   REAL NOT NULL,
    temperature_celsius       REAL NOT NULL,
    humidity_percent          REAL NOT NULL,
    wind_speed_m_s            REAL NOT NULL,
    wind_direction_deg        REAL NOT NULL,
    calibration_date          DATE NOT NULL,
    maintenance_status       TEXT NOT NULL,
    data_quality_flag         TEXT NOT NULL,
    notes                     TEXT,
    city_code                 TEXT NOT NULL,
    region_code               TEXT NOT NULL,
    last_update_timestamp    TEXT NOT NULL,
    operational_status        TEXT NOT NULL
);
INSERT INTO air_quality_monitor VALUES (1001,'AQ_Station_North',40.730610,-73.935242,'2020-03-15','Electrochemical',12.5,25.0,18.0,30.5,0.7,4.2,22.1,55.0,3.2,180,'2023-06-01','Active','Good','', 'NYC','NE','2023-07-01T08:00:00Z','Online');
INSERT INTO air_quality_monitor VALUES (1002,'AQ_Station_South',34.052235,-118.243683,'2021-05-20','Optical',20.1,40.3,22.5,35.0,0.8,5.0,24.3,48.0,2.8,90,'2023-05-15','Active','Moderate','', 'LA','SW','2023-07-01T08:05:00Z','Online');
INSERT INTO air_quality_monitor VALUES (1003,'AQ_Station_East',41.878113,-87.629799,'2019-11-10','Electrochemical',35.0,55.0,30.0,45.0,1.0,6.5,19.8,65.0,4.5,270,'2023-04-20','Maintenance','Poor','', 'CHI','MW','2023-07-01T08:10:00Z','Offline');

-- Registry of renewable energy assets owned by the organization
CREATE TABLE renewable_energy_asset
(
    asset_id                 INTEGER PRIMARY KEY,
    asset_name               TEXT NOT NULL,
    asset_type               TEXT NOT NULL,
    location_latitude        REAL NOT NULL,
    location_longitude       REAL NOT NULL,
    commissioning_date       DATE NOT NULL,
    capacity_mw              REAL NOT NULL,
    current_output_mw        REAL NOT NULL,
    operator_company         TEXT NOT NULL,
    maintenance_contract_id INTEGER NOT NULL,
    expected_lifetime_years  INTEGER NOT NULL,
    decommission_date        DATE,
    status                   TEXT NOT NULL,
    annual_production_gwh    REAL NOT NULL,
    carbon_savings_tons      REAL NOT NULL,
    grid_connection_point   TEXT NOT NULL,
    maintenance_last_date    DATE NOT NULL,
    maintenance_next_due     DATE NOT NULL,
    financing_source         TEXT NOT NULL,
    ownership_percentage    REAL NOT NULL,
    subsidy_amount_usd       REAL,
    insurance_provider       TEXT,
    insurance_policy_number  TEXT,
    notes                    TEXT
);
INSERT INTO renewable_energy_asset VALUES (5001,'SolarFarm_A1','Solar',35.6895,139.6917,'2018-09-01',150.0,140.5,'GreenPowerCo',3001,25,NULL,'Operational',600.0,350000.0,'NodeX','2023-03-15','2024-03-15','Equity',100.0,500000.0,'InsureCo','IPN12345','');
INSERT INTO renewable_energy_asset VALUES (5002,'WindPark_B2','Wind',51.5074,-0.1278,'2020-04-15',80.0,78.2,'WindEnergyLtd',3002,30,NULL,'Operational',250.0,150000.0,'NodeY','2023-02-10','2024-02-10','Debt',100.0,350000.0,'SecureIns','IPN67890','');
INSERT INTO renewable_energy_asset VALUES (5003,'HydroPlant_C3','Hydro',48.8566,2.3522,'2015-06-20',200.0,195.0,'HydroCorp',3003,40,'2045-06-20','Operational',900.0,600000.0,'NodeZ','2023-01-05','2024-01-05','Grant',100.0,NULL,'AquaIns','IPN11122','');

-- Inventory of telecom fiber optic network segments
CREATE TABLE telecom_fiber_network
(
    segment_id               INTEGER PRIMARY KEY,
    segment_name             TEXT NOT NULL,
    start_node_id            INTEGER NOT NULL,
    end_node_id              INTEGER NOT NULL,
    length_km                REAL NOT NULL,
    fiber_type               TEXT NOT NULL,
    operational_status       TEXT NOT NULL,
    installation_year        INTEGER NOT NULL,
    last_inspection_date     DATE NOT NULL,
    bandwidth_gbps           REAL NOT NULL,
    latency_ms               REAL NOT NULL,
    redundancy_level         TEXT NOT NULL,
    maintenance_contract_id  INTEGER NOT NULL,
    owner_company            TEXT NOT NULL,
    region_code              TEXT NOT NULL,
    city_code                TEXT NOT NULL,
    is_underground           TEXT NOT NULL,
    is_shared                TEXT NOT NULL,
    splice_count             INTEGER NOT NULL,
    optical_amplifier_count  INTEGER NOT NULL,
    notes                    TEXT,
    certification_standard   TEXT NOT NULL,
    warranty_expiry_date     DATE NOT NULL,
    total_cost_usd           REAL NOT NULL
);
INSERT INTO telecom_fiber_network VALUES (8001,'FiberSeg_NorthEast',100,200,12.5,'SingleMode','Active',2012,'2023-05-01',40.0,2.1,'High','5001','TeleComInc','NE','NYC','Yes','No',20,2,'','ISO9001','2027-12-31',2500000.00);
INSERT INTO telecom_fiber_network VALUES (8002,'FiberSeg_SouthWest',201,300,8.3,'MultiMode','Active',2015,'2023-04-15',25.0,3.0,'Medium','5002','NetConnect','SW','LA','No','Yes',15,1,'','TIA-568','2028-06-30',1800000.00);
INSERT INTO telecom_fiber_network VALUES (8003,'FiberSeg_Central',301,400,15.0,'SingleMode','Planned',2022,'2023-03-20',50.0,1.8,'VeryHigh','5003','FiberLink','C','CHI','Yes','Yes',30,3,'Planned for 2024','ISO/IEC 11801','2030-01-01',3200000.00);

-- Service level agreements for digital services provided to internal customers
CREATE TABLE digital_service_sla
(
    sla_id                   INTEGER PRIMARY KEY,
    service_name             TEXT NOT NULL,
    internal_customer_id    INTEGER NOT NULL,
    response_time_minutes    INTEGER NOT NULL,
    resolution_time_hours    INTEGER NOT NULL,
    uptime_percentage        REAL NOT NULL,
    availability_window_start TEXT NOT NULL,
    availability_window_end   TEXT NOT NULL,
    escalation_level_1       TEXT NOT NULL,
    escalation_level_2       TEXT NOT NULL,
    penalty_rate_per_hour_usd REAL NOT NULL,
    monitoring_tool          TEXT NOT NULL,
    last_review_date         DATE NOT NULL,
    next_review_due_date     DATE NOT NULL,
    owner_department         TEXT NOT NULL,
    support_contact_email    TEXT NOT NULL,
    support_contact_phone    TEXT NOT NULL,
    documentation_url        TEXT NOT NULL,
    change_management_process TEXT NOT NULL,
    status                   TEXT NOT NULL,
    notes                    TEXT,
    created_by_user_id       INTEGER NOT NULL,
    created_timestamp        TEXT NOT NULL,
    updated_timestamp        TEXT NOT NULL
);
INSERT INTO digital_service_sla VALUES (4001,'EmailPlatform',101,15,4,99.9,'00:00','23:59','Level1Team','Level2Team',150.0,'Nagios','2023-01-10','2024-01-10','IT','it_support@example.com','5551234000','http://docs.example.com/email','StandardChange','Active','','2001','2023-01-01T09:00:00Z','2023-07-01T10:00:00Z');
INSERT INTO digital_service_sla VALUES (4002,'HRPortal',102,30,8,99.5,'06:00','22:00','HRTeam','OpsTeam',200.0,'Zabbix','2023-02-15','2024-02-15','HR','hr_support@example.com','5551234001','http://docs.example.com/hr','HRChange','Active','','2002','2023-02-01T09:30:00Z','2023-08-01T10:30:00Z');
INSERT INTO digital_service_sla VALUES (4003,'DataAnalytics',103,10,2,99.99,'00:00','23:59','DataTeam','AnalyticsTeam',300.0,'Prometheus','2023-03-20','2024-03-20','DataScience','data_support@example.com','5551234002','http://docs.example.com/analytics','DataChange','Active','','2003','2023-03-01T08:45:00Z','2023-09-01T09:45:00Z');

-- Interaction logs for financial products used by customers
CREATE TABLE financial_product_interaction
(
    interaction_id           INTEGER PRIMARY KEY,
    product_id               INTEGER NOT NULL,
    client_id                INTEGER NOT NULL,
    interaction_type         TEXT NOT NULL,
    interaction_timestamp    TEXT NOT NULL,
    channel                  TEXT NOT NULL,
    device_type              TEXT NOT NULL,
    ip_address               TEXT NOT NULL,
    location_city            TEXT NOT NULL,
    location_country         TEXT NOT NULL,
    amount_usd               REAL,
    currency_code            TEXT,
    transaction_id           TEXT,
    success_flag             TEXT NOT NULL,
    error_code               TEXT,
    duration_seconds         INTEGER NOT NULL,
    browser_version          TEXT,
    os_version               TEXT,
    app_version              TEXT,
    feature_used             TEXT,
    notes                    TEXT,
    fraud_flag               TEXT NOT NULL,
    compliance_checked       TEXT NOT NULL,
    audit_log_id             INTEGER NOT NULL,
    created_by_user_id       INTEGER NOT NULL
);
INSERT INTO financial_product_interaction VALUES (9001,301,401,'Login','2023-07-01T08:15:00Z','MobileApp','Android','192.168.1.10','NewYork','US',NULL,'USD',NULL,'Yes',NULL,2,'89.0','Android12','1.2.3','Auth','', 'No','Yes',50001,2001);
INSERT INTO financial_product_interaction VALUES (9002,302,402,'Transfer','2023-07-01T09:20:00Z','Web','Desktop','192.168.1.11','LosAngeles','US',250.00,'USD','TXN12345','Yes',NULL,45,'92.0','Windows10','2.5.0','TransferFunds','', 'No','Yes',50002,2002);
INSERT INTO financial_product_interaction VALUES (9003,303,403,'StatementDownload','2023-07-01T10:05:00Z','MobileApp','iOS','192.168.1.12','Chicago','US',NULL,'USD',NULL,'Yes',NULL,5,'86.0','iOS15','1.3.0','DownloadStatement','', 'No','Yes',50003,2003);

-- Sentiment scores derived from customer feedback surveys
CREATE TABLE customer_sentiment_score
(
    feedback_id              INTEGER PRIMARY KEY,
    client_id                INTEGER NOT NULL,
    survey_date              DATE NOT NULL,
    overall_score            REAL NOT NULL,
    communication_score      REAL NOT NULL,
    service_quality_score    REAL NOT NULL,
    product_usability_score  REAL NOT NULL,
    likelihood_to_recommend  REAL NOT NULL,
    sentiment_category       TEXT NOT NULL,
    comments                 TEXT,
    response_time_seconds    INTEGER NOT NULL,
    channel_used             TEXT NOT NULL,
    language                 TEXT NOT NULL,
    device_type              TEXT NOT NULL,
    ip_address               TEXT NOT NULL,
    location_city            TEXT NOT NULL,
    location_country         TEXT NOT NULL,
    analyst_id               INTEGER NOT NULL,
    verification_status      TEXT NOT NULL,
    notes                    TEXT,
    created_timestamp        TEXT NOT NULL,
    updated_timestamp        TEXT NOT NULL,
    audit_trail_id           INTEGER NOT NULL,
    compliance_flag          TEXT NOT NULL
);
INSERT INTO customer_sentiment_score VALUES (7001,501,'2023-06-30',8.5,9.0,8.0,7.5,9.2,'Positive','Great service',30,'Web','EN','Desktop','10.0.0.1','Boston','US',101,'Verified','', '2023-06-30T12:00:00Z','2023-07-01T08:00:00Z',8001,'Yes');
INSERT INTO customer_sentiment_score VALUES (7002,502,'2023-06-30',5.2,4.8,5.0,5.5,4.0,'Neutral','Average experience',45,'MobileApp','EN','Mobile','10.0.0.2','Seattle','US',102,'Verified','', '2023-06-30T13:00:00Z','2023-07-01T09:00:00Z',8002,'Yes');
INSERT INTO customer_sentiment_score VALUES (7003,503,'2023-06-30',2.1,2.5,1.8,2.0,1.5,'Negative','Very dissatisfied',60,'Phone','EN','Phone','10.0.0.3','Miami','US',103,'Verified','', '2023-06-30T14:00:00Z','2023-07-01T10:00:00Z',8003,'Yes');

-- Security incidents related to branch IT infrastructure
CREATE TABLE branch_it_security_incident
(
    incident_id              INTEGER PRIMARY KEY,
    branch_id                INTEGER NOT NULL,
    incident_date            DATE NOT NULL,
    detection_method         TEXT NOT NULL,
    incident_type            TEXT NOT NULL,
    severity_level           TEXT NOT NULL,
    affected_systems         TEXT NOT NULL,
    description              TEXT NOT NULL,
    mitigation_action        TEXT NOT NULL,
    status                   TEXT NOT NULL,
    reported_by_user_id      INTEGER NOT NULL,
    assigned_to_user_id      INTEGER NOT NULL,
    resolution_date          DATE,
    root_cause_analysis      TEXT,
    downtime_minutes         INTEGER,
    data_loss_indicator      TEXT NOT NULL,
    compliance_impact        TEXT NOT NULL,
    notification_sent        TEXT NOT NULL,
    follow_up_task_id        INTEGER,
    related_ticket_id        INTEGER,
    notes                    TEXT,
    created_timestamp        TEXT NOT NULL,
    updated_timestamp        TEXT NOT NULL,
    audit_log_id             INTEGER NOT NULL,
    risk_score               REAL NOT NULL
);
INSERT INTO branch_it_security_incident VALUES (3001,10,'2023-05-12','IDS','Malware','High','Server01','Detected ransomware','Isolated server and restored from backup','Resolved',2001,3001,'2023-05-13','Phishing email entry point',180,'Yes','High','Yes',4001,5001,'', '2023-05-12T09:00:00Z','2023-05-13T15:00:00Z',6001,9.5);
INSERT INTO branch_it_security_incident VALUES (3002,12,'2023-06-20','Firewall','UnauthorizedAccess','Medium','Database02','Suspicious login attempts','Blocked IP and forced password reset','Investigating',2002,3002,NULL,NULL,45,'No','Medium','No',4002,5002,'', '2023-06-20T11:30:00Z','2023-06-20T12:00:00Z',6002,6.3);
INSERT INTO branch_it_security_incident VALUES (3003,15,'2023-07-05','EndpointAV','Phishing','Low','Workstation15','User clicked malicious link','User education and email filter update','Closed',2003,3003,'2023-07-06','User error',5,'No','Low','Yes',4003,5003,'', '2023-07-05T08:45:00Z','2023-07-06T10:15:00Z',6003,2.1);

-- Metrics describing regional economic indicators
CREATE TABLE regional_economic_indicator
(
    indicator_id            INTEGER PRIMARY KEY,
    region_code             TEXT NOT NULL,
    year                    INTEGER NOT NULL,
    gdp_usd                 REAL NOT NULL,
    unemployment_rate       REAL NOT NULL,
    inflation_rate          REAL NOT NULL,
    average_income_usd      REAL NOT NULL,
    poverty_rate            REAL NOT NULL,
    consumer_confidence     REAL NOT NULL,
    manufacturing_index     REAL NOT NULL,
    services_index          REAL NOT NULL,
    trade_balance_usd       REAL NOT NULL,
    housing_price_index     REAL NOT NULL,
    population              INTEGER NOT NULL,
    labor_force_participation REAL NOT NULL,
    export_volume_usd       REAL NOT NULL,
    import_volume_usd       REAL NOT NULL,
    foreign_direct_investment_usd REAL NOT NULL,
    fiscal_deficit_percent REAL NOT NULL,
    budget_surplus_usd      REAL,
    notes                   TEXT,
    data_source             TEXT NOT NULL,
    last_updated            DATE NOT NULL,
    created_timestamp       TEXT NOT NULL,
    updated_timestamp       TEXT NOT NULL
);
INSERT INTO regional_economic_indicator VALUES (90001,'R001',2022,1500000000.0,5.2,2.1,48000.0,12.5,85.0,110.0,95.0,20000000.0,250.0,5000000,62.0,300000000.0,350000000.0,50000000.0,3.5,10000000,'','GovStat','2023-01-15','2023-01-01T08:00:00Z','2023-06-01T09:00:00Z');
INSERT INTO regional_economic_indicator VALUES (90002,'R002',2022,800000000.0,6.8,2.5,35000.0,15.0,78.0,90.0,80.0,-5000000.0,210.0,3000000,58.0,150000000.0,170000000.0,30000000.0,4.2,-5000000,'','GovStat','2023-01-16','2023-01-02T08:30:00Z','2023-06-02T09:30:00Z');
INSERT INTO regional_economic_indicator VALUES (90003,'R003',2022,2000000000.0,4.0,1.9,62000.0,10.0,92.0,130.0,115.0,40000000.0,275.0,8000000,65.0,500000000.0,450000000.0,80000000.0,2.8,15000000,'','GovStat','2023-01-17','2023-01-03T09:00:00Z','2023-06-03T10:00:00Z');

-- Log of digital wallet transactions for analysis
CREATE TABLE digital_wallet_transaction_log
(
    txn_id                  INTEGER PRIMARY KEY,
    wallet_id               INTEGER NOT NULL,
    client_id               INTEGER NOT NULL,
    txn_timestamp           TEXT NOT NULL,
    txn_type                TEXT NOT NULL,
    amount_usd              REAL NOT NULL,
    currency_code           TEXT NOT NULL,
    merchant_category_code  TEXT NOT NULL,
    merchant_name           TEXT NOT NULL,
    merchant_country        TEXT NOT NULL,
    status                  TEXT NOT NULL,
    approval_code           TEXT NOT NULL,
    acquisition_channel     TEXT NOT NULL,
    device_id               TEXT NOT NULL,
    ip_address              TEXT NOT NULL,
    geo_location_lat        REAL NOT NULL,
    geo_location_long       REAL NOT NULL,
    fraud_score             REAL NOT NULL,
    risk_level              TEXT NOT NULL,
    settlement_date         DATE,
    notes                   TEXT,
    compliance_checked      TEXT NOT NULL,
    audit_log_id            INTEGER NOT NULL,
    created_timestamp       TEXT NOT NULL,
    updated_timestamp       TEXT NOT NULL
);
INSERT INTO digital_wallet_transaction_log VALUES (20001,1001,401,'2023-07-01T08:10:00Z','Purchase',45.00,'USD','5411','CoffeeShop','US','Completed','APPR123','MobileApp','DEV001','10.0.0.5',40.7128,-74.0060,12.5,'Low','2023-07-02',NULL,'Yes',70001,'2023-07-01T08:15:00Z','2023-07-01T08:20:00Z');
INSERT INTO digital_wallet_transaction_log VALUES (20002,1002,402,'2023-07-01T09:25:00Z','Transfer',150.00,'USD','6022','PeerToPeer','US','Completed','APPR124','Web','DEV002','10.0.0.6',34.0522,-118.2437,8.0,'Low','2023-07-02',NULL,'Yes',70002,'2023-07-01T09:30:00Z','2023-07-01T09:35:00Z');
INSERT INTO digital_wallet_transaction_log VALUES (20003,1003,403,'2023-07-01T10:45:00Z','Withdrawal',200.00,'USD','6011','ATM','US','Pending','APPR125','ATM','DEV003','10.0.0.7',41.8781,-87.6298,20.0,'Medium',NULL,NULL,'Yes',70003,'2023-07-01T10:50:00Z','2023-07-01T10:55:00Z');