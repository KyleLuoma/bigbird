-- Market price indices for global trade routes
CREATE TABLE market_price_indices (
    route_id                INTEGER PRIMARY KEY,
    origin_port             TEXT,
    destination_port        TEXT,
    distance_km             REAL,
    average_transit_days    REAL,
    carrier_name            TEXT,
    transport_mode          TEXT,
    cost_per_km             REAL,
    last_inspection_date    DATE,
    status                  TEXT,
    capacity_tons           REAL,
    usage_percent           REAL,
    regulatory_compliance   TEXT,
    insurance_provider      TEXT,
    risk_level              TEXT,
    created_at              DATETIME,
    updated_at              DATETIME,
    notes                   TEXT,
    priority_level          INTEGER,
    max_speed_kmh           REAL,
    fuel_type               TEXT
);

INSERT INTO market_price_indices VALUES
(1,'PortA','PortB',1200.5,5.2,'CarrierX','Sea',0.75,'2023-02-15','Active',25000,62.5,'ISO9001','InsureCo','Medium','2023-01-01 08:00:00','2023-06-01 12:00:00','Initial route','1',850,'Diesel');

INSERT INTO market_price_indices VALUES
(2,'PortC','PortD',800.0,3.8,'CarrierY','Air',1.20,'2023-03-10','Active',15000,48.0,'ISO14001','SafeShip','Low','2023-02-01 09:30:00','2023-06-15 14:45:00','Seasonal demand','2',950,'JetFuel');

INSERT INTO market_price_indices VALUES
(3,'PortE','PortF',1500.3,7.0,'CarrierZ','Rail',0.55,'2023-01-20','Inactive',30000,30.0,'ISO45001','RailGuard','High','2023-01-15 07:15:00','2023-05-20 11:20:00','Route under maintenance','3',700,'Electric');

-- Vendor performance metrics
CREATE TABLE vendor_performance_metrics (
    vendor_id               INTEGER PRIMARY KEY,
    vendor_name             TEXT,
    contract_start          DATE,
    contract_end            DATE,
    on_time_delivery_rate   REAL,
    defect_rate             REAL,
    avg_response_time_hours REAL,
    total_orders            INTEGER,
    total_value_usd         REAL,
    compliance_score        REAL,
    audit_passed            INTEGER,
    last_audit_date         DATE,
    contact_email           TEXT,
    phone_number            TEXT,
    region                  TEXT,
    account_manager         TEXT,
    payment_terms           TEXT,
    discount_rate_percent   REAL,
    satisfaction_score      REAL,
    sustainability_rating   TEXT,
    notes                   TEXT
);

INSERT INTO vendor_performance_metrics VALUES
(101,'SupplyCo','2022-01-01','2024-12-31',98.5,0.2,4.5,1200,450000.00,92.3,1,'2023-04-10','contact@supplyco.com','5551234567','NorthAmerica','JohnDoe','Net30',5.0,88.5,'A','Preferred vendor');

INSERT INTO vendor_performance_metrics VALUES
(102,'LogiTrans','2021-06-15','2023-06-14',95.0,0.5,6.2,800,300000.00,85.0,0,'2022-12-05','support@logitrans.com','5559876543','Europe','JaneSmith','Net45',3.0,78.0,'B','Needs improvement');

INSERT INTO vendor_performance_metrics VALUES
(103,'EcoMaterials','2023-03-01','2025-02-28',99.2,0.1,3.0,500,150000.00,96.5,1,'2023-05-20','info@ecomaterials.com','5551122334','Asia','MikeLee','Net60',7.5,92.0','A','Excellent sustainability record');

-- Venue security incidents
CREATE TABLE venue_security_incidents (
    incident_id             INTEGER PRIMARY KEY,
    venue_id                INTEGER,
    incident_date           DATE,
    incident_type           TEXT,
    severity_level          TEXT,
    description             TEXT,
    reported_by             TEXT,
    resolved_by             TEXT,
    resolution_date         DATE,
    status                  TEXT,
    cost_estimate_usd       REAL,
    law_enforcement_involved INTEGER,
    cameras_triggered       INTEGER,
    badge_id                TEXT,
    staff_on_duty           INTEGER,
    weather_conditions      TEXT,
    temperature_c           REAL,
    humidity_percent        REAL,
    wind_speed_kmh          REAL,
    notes                   TEXT,
    follow_up_actions       TEXT
);

INSERT INTO venue_security_incidents VALUES
(1001,10,'2023-07-12','UnauthorizedAccess','High','Attempted entry without badge','SecurityGuardA','OfficerB','2023-07-13','Closed',1200.00,1,1,'B123',2,'Clear',22.5,45.0,5.0,'Investigated','Update badge system');

INSERT INTO venue_security_incidents VALUES
(1002,12,'2023-08-05','FireAlarm','Medium','False alarm triggered by equipment','TechC','FacilityMgr','2023-08-05','Closed',0.00,0,1,'N/A',3,'Rain',18.0,80.0,10.0,'Checked sensors','Routine maintenance');

INSERT INTO venue_security_incidents VALUES
(1003,15,'2023-09-20','Theft','Low','Small item missing from storage','JanitorD','SecurityGuardE','2023-09-21','Closed',300.00,0,0,'S456',4,'Clear',25.0,50.0,2.5,'Inventory audit','Increase surveillance');

-- Streaming bandwidth allocation
CREATE TABLE streaming_bandwidth_allocation (
    allocation_id           INTEGER PRIMARY KEY,
    stream_id               TEXT,
    region_code             TEXT,
    start_time              DATETIME,
    end_time                DATETIME,
    allocated_bandwidth_mbps REAL,
    actual_usage_mbps       REAL,
    peak_usage_mbps         REAL,
    latency_ms              REAL,
    packet_loss_percent     REAL,
    jitter_ms               REAL,
    cdn_provider            TEXT,
    tier_level              TEXT,
    cost_usd                REAL,
    billing_cycle           TEXT,
    created_at              DATETIME,
    updated_at              DATETIME,
    notes                   TEXT,
    monitoring_tool         TEXT,
    alert_triggered         INTEGER,
    compliance_status       TEXT
);

INSERT INTO streaming_bandwidth_allocation VALUES
(2001,'STRM001','NA','2023-06-01 10:00:00','2023-06-01 12:00:00',5000,4800,5300,30,0.2,5,'FastCDN','Premium',1500.00,'Monthly','2023-05-20 09:00:00','2023-06-01 13:00:00','No issues','NetMon','0','Compliant');

INSERT INTO streaming_bandwidth_allocation VALUES
(2002,'STRM002','EU','2023-06-02 14:00:00','2023-06-02 16:30:00',3000,2900,3200,45,0.5,8,'EdgeCDN','Standard',900.00,'Monthly','2023-05-22 11:30:00','2023-06-02 17:00:00','Minor latency spikes','StreamWatch','1','Reviewed');

INSERT INTO streaming_bandwidth_allocation VALUES
(2003,'STRM003','APAC','2023-06-03 08:00:00','2023-06-03 10:00:00',4000,3800,4100,25,0.1,3,'GlobalCDN','Premium',1200.00,'Monthly','2023-05-25 08:15:00','2023-06-03 11:00:00','All good','BandwidthPro','0','Compliant');

-- Customer loyalty programs
CREATE TABLE customer_loyalty_programs (
    program_id              INTEGER PRIMARY KEY,
    program_name            TEXT,
    launch_date             DATE,
    tier_one_name           TEXT,
    tier_two_name           TEXT,
    tier_three_name         TEXT,
    points_per_usd          REAL,
    rollover_allowed        INTEGER,
    expiry_months           INTEGER,
    reward_catalog_url      TEXT,
    enrollment_fee_usd      REAL,
    minimum_spend_usd       REAL,
    active_status           INTEGER,
    max_points_cap          INTEGER,
    communication_channel   TEXT,
    terms_url               TEXT,
    created_by              TEXT,
    created_at              DATETIME,
    updated_at              DATETIME,
    notes                   TEXT
);

INSERT INTO customer_loyalty_programs VALUES
(1,'MagicFans','2022-01-15','Bronze','Silver','Gold',1.0,1,24,'http://rewards.example.com','0',0,1,50000,'Email','http://terms.example.com','Admin','2022-01-01 09:00:00','2023-05-01 10:00:00','Core program');

INSERT INTO customer_loyalty_programs VALUES
(2,'ArenaElite','2023-03-01','Starter','Pro','Champion',1.5,0,12,'http://arena.rewards.com','10',100,1,100000,'Push','http://arena.terms.com','Ops','2023-02-20 08:30:00','2023-06-10 12:45:00','Focused on competitive players');

INSERT INTO customer_loyalty_programs VALUES
(3,'CollectorClub','2021-06-20','Member','Veteran','Legend',2.0,1,36,'http://collector.rewards.com','5',50,1,200000,'SMS','http://collector.terms.com','Marketing','2021-05-15 07:45:00','2023-04-22 09:30:00','Targeted at high spenders');

-- Environmental sensor deployments
CREATE TABLE environmental_sensor_deployments (
    deployment_id           INTEGER PRIMARY KEY,
    sensor_type             TEXT,
    serial_number           TEXT,
    latitude                REAL,
    longitude               REAL,
    installation_date       DATE,
    last_calibration_date   DATE,
    firmware_version        TEXT,
    battery_level_percent   REAL,
    signal_strength_dbm     REAL,
    data_interval_seconds   INTEGER,
    status                  TEXT,
    maintenance_contact     TEXT,
    warranty_expiry         DATE,
    operating_temperature_c REAL,
    humidity_percent        REAL,
    location_description    TEXT,
    region_code             TEXT,
    created_at              DATETIME,
    updated_at              DATETIME,
    notes                   TEXT
);

INSERT INTO environmental_sensor_deployments VALUES
(301,'Temperature','SN-T001',40.7128,-74.0060,'2023-01-10','2023-06-01','v1.2',95.0,-70,300,'Active','TechA','2025-01-10',22.0,45.0,'Warehouse 1','NA','2023-01-10 08:00:00','2023-06-01 09:00:00','Running smoothly');

INSERT INTO environmental_sensor_deployments VALUES
(302,'Humidity','SN-H001',34.0522,-118.2437,'2023-02-15','2023-07-20','v2.0',88.0,-68,600,'Active','TechB','2026-02-15',18.0,55.0,'Data Center A','NA','2023-02-15 09:30:00','2023-07-20 10:45:00','Calibrated recently');

INSERT INTO environmental_sensor_deployments VALUES
(303,'AirQuality','SN-A001',51.5074,-0.1278,'2023-03-05','2023-08-10','v1.5',80.0,-72,900,'Inactive','TechC','2025-03-05',20.0,60.0,'Office Lobby','EU','2023-03-05 07:45:00','2023-08-10 08:15:00','Awaiting service');

-- Esports team roster history
CREATE TABLE esports_team_roster_history (
    roster_id               INTEGER PRIMARY KEY,
    team_id                 INTEGER,
    player_id               INTEGER,
    player_name             TEXT,
    role                    TEXT,
    join_date               DATE,
    leave_date              DATE,
    contract_type           TEXT,
    salary_usd              REAL,
    nationality             TEXT,
    jersey_number           INTEGER,
    social_media_handle     TEXT,
    sponsor                 TEXT,
    games_played            INTEGER,
    win_rate_percent        REAL,
    avg_kda                 REAL,
    streaming_hours_per_week REAL,
    last_performance_review DATE,
    created_at              DATETIME,
    updated_at              DATETIME,
    notes                   TEXT
);

INSERT INTO esports_team_roster_history VALUES
(4001,10,501,'PlayerOne','ADC','2022-01-01','2023-06-30','FullTime',150000,'USA',7,'PlayerOne_IG','BrandX',120,58.3,3.5,20.0,'2023-06-15','2022-01-01 08:00:00','2023-06-30 17:00:00','Left after contract expiration');

INSERT INTO esports_team_roster_history VALUES
(4002,10,502,'PlayerTwo','Support','2021-05-15','2024-05-14','FullTime',130000,'Korea',12,'PlayerTwo_TW','BrandY',180,62.0,4.2,25.0,'2023-07-10','2021-05-15 09:30:00','2023-07-10 12:45:00','Renewal pending');

INSERT INTO esports_team_roster_history VALUES
(4003,12,603,'PlayerThree','Mid','2020-09-01','2022-12-31','Contractor',90000,'Germany',5,'PlayerThree_FB','BrandZ',95,54.5,3.0,15.0,'2022-12-20','2020-09-01 07:45:00','2022-12-31 16:30:00','Moved to different org');

-- In-game currency exchange rates
CREATE TABLE in_game_currency_exchange_rates (
    rate_id                 INTEGER PRIMARY KEY,
    currency_code           TEXT,
    base_currency           TEXT,
    exchange_rate           REAL,
    effective_date          DATE,
    source                  TEXT,
    validity_period_days    INTEGER,
    volatility_index        REAL,
    last_updated            DATETIME,
    created_at              DATETIME,
    updated_at              DATETIME,
    notes                   TEXT,
    region                  TEXT,
    is_locked               INTEGER,
    spread_percent          REAL,
    min_transaction_usd     REAL,
    max_transaction_usd     REAL,
    regulatory_body         TEXT,
    audit_status            TEXT,
    compliance_notes        TEXT,
    created_by              TEXT
);

INSERT INTO in_game_currency_exchange_rates VALUES
(501,'GEM','USD',0.025,'2023-06-01','System','30',0.12,'2023-06-15 10:00:00','2023-05-01 09:00:00','2023-06-15 11:00:00','Standard rate','NA',0,0.5,10,1000,'GamingAuthority','Approved','All checks passed','Admin');

INSERT INTO in_game_currency_exchange_rates VALUES
(502,'COIN','USD',0.001,'2023-05-20','System','30',0.08,'2023-06-10 14:30:00','2023-04-20 08:45:00','2023-06-10 15:00:00','Low volatility','EU',0,0.2,5,5000,'EUCommission','Approved','Verified','Ops');

INSERT INTO in_game_currency_exchange_rates VALUES
(503,'TOKEN','USD',0.10,'2023-04-15','ExternalFeed','60',0.20,'2023-06-12 09:15:00','2023-04-01 07:30:00','2023-06-12 09:45:00','External source','APAC',1,1.0,20,20000,'APACRegulator','Pending','Awaiting audit','FinanceTeam');

-- Artifact forge operations log
CREATE TABLE artifact_forge_operations_log (
    operation_id            INTEGER PRIMARY KEY,
    artifact_id             TEXT,
    operation_type          TEXT,
    start_timestamp         DATETIME,
    end_timestamp           DATETIME,
    operator_id             INTEGER,
    workstation_id          TEXT,
    material_used           TEXT,
    material_quantity       REAL,
    energy_consumed_kwh     REAL,
    temperature_c           REAL,
    pressure_bar            REAL,
    quality_score           REAL,
    defects_found           INTEGER,
    notes                   TEXT,
    approved_by             TEXT,
    approval_timestamp      DATETIME,
    status                  TEXT,
    created_at              DATETIME,
    updated_at              DATETIME,
    cost_usd                REAL
);

INSERT INTO artifact_forge_operations_log VALUES
(6001,'ART-001','Enchantment','2023-05-01 08:00:00','2023-05-01 12:00:00',201,'WS-01','ArcaneDust',15.0,250.0,180.0,5.0,92.5,0,'No issues','SupervisorA','2023-05-01 13:00:00','Completed','2023-05-01 08:00:00','2023-05-01 13:30:00',1200.00);

INSERT INTO artifact_forge_operations_log VALUES
(6002,'ART-002','Transmutation','2023-06-10 09:30:00','2023-06-10 14:45:00',202,'WS-02','MysticOre',10.5,300.0,200.0,6.5,88.0,2,'Minor cracks observed','SupervisorB','2023-06-10 15:30:00','Reviewed','2023-06-10 09:30:00','2023-06-10 16:00:00',1500.00);

INSERT INTO artifact_forge_operations_log VALUES
(6003,'ART-003','Imbuement','2023-07-20 07:15:00','2023-07-20 11:45:00',203,'WS-03','EtherealEssence',8.0,220.0,170.0,4.8,95.0,0,'Perfect outcome','SupervisorC','2023-07-20 12:30:00','Completed','2023-07-20 07:15:00','2023-07-20 13:00:00',1300.00);

-- Marketing campaign budget allocations
CREATE TABLE marketing_campaign_budget_allocations (
    allocation_id           INTEGER PRIMARY KEY,
    campaign_id             TEXT,
    fiscal_year             INTEGER,
    quarter                 TEXT,
    channel                 TEXT,
    allocated_budget_usd    REAL,
    spent_budget_usd        REAL,
    remaining_budget_usd    REAL,
    cpc_usd                 REAL,
    cpm_usd                 REAL,
    roi_percent             REAL,
    target_audience         TEXT,
    geo_target              TEXT,
    start_date              DATE,
    end_date                DATE,
    approval_status         TEXT,
    approved_by             TEXT,
    created_at              DATETIME,
    updated_at              DATETIME,
    notes                   TEXT,
    variance_percent        REAL
);

INSERT INTO marketing_campaign_budget_allocations VALUES
(7001,'CMP-2023-01',2023,'Q1','SocialMedia',50000,35000,15000,0.45,12.0,140.0,'YoungAdults','NA','2023-01-15','2023-03-31','Approved','MarketingLead','2023-01-01 08:00:00','2023-04-01 09:00:00','Successful','30.0');

INSERT INTO marketing_campaign_budget_allocations VALUES
(7002,'CMP-2023-02',2023,'Q2','Streaming',75000,60000,15000,0.60,15.0,165.0,'Gamers','EU','2023-04-10','2023-06-30','Approved','CampaignMgr','2023-03-20 07:30:00','2023-07-01 10:15:00','On track','20.0');

INSERT INTO marketing_campaign_budget_allocations VALUES
(7003,'CMP-2023-03',2023,'Q3','Email',30000,25000,5000,0.30,8.0,120.0,'Collectors','APAC','2023-07-05','2023-09-30','Pending','FinanceHead','2023-06-25 09:45:00','2023-10-01 11:00:00','Awaiting final sign‑off','16.7');

-- End of script