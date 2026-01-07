-- Cosmic anomaly observations log
CREATE TABLE cosmic_anomaly_log
(
    anomaly_id                INTEGER PRIMARY KEY,
    anomaly_name              TEXT,
    discovery_date            DATE,
    observed_by_agency        TEXT,
    anomaly_type              TEXT,
    magnitude_index           REAL,
    location_ra               REAL,
    location_dec              REAL,
    duration_seconds          INTEGER,
    impact_assessment         TEXT,
    mitigation_status        TEXT,
    containment_level         TEXT,
    reported_by_station       TEXT,
    sensor_array_used         TEXT,
    data_volume_gb            REAL,
    follow_up_required        TEXT,
    priority_level            TEXT,
    notes                     TEXT,
    created_timestamp         TIMESTAMP,
    last_updated_timestamp    TIMESTAMP
);

INSERT INTO cosmic_anomaly_log VALUES (1,'PulseBurst','2024-03-12','SpaceWatch','EnergyPulse',7.5,123.45,-45.67,3600,'Low','Monitored','Level1','StationAlpha','ArrayX','12.4','Yes','High','Initial detection','2024-03-12 08:00:00','2024-03-12 08:00:00');
INSERT INTO cosmic_anomaly_log VALUES (2,'VoidEcho','2024-06-05','GalacticSurvey','GravitationalWave',9.1,210.22,10.55,5400,'Medium','Investigating','Level2','StationBeta','ArrayY','22.1','Yes','Critical','Requires immediate analysis','2024-06-05 14:30:00','2024-06-05 14:30:00');
INSERT INTO cosmic_anomaly_log VALUES (3,'NebulaFlash','2024-09-20','DeepSpace','RadiationFlash',6.3,75.88,33.44,1800,'Low','Closed','Level0','StationGamma','ArrayZ','5.6','No','Low','No further action','2024-09-20 22:15:00','2024-09-20 22:15:00');

-- Interstellar trade route registry
CREATE TABLE interstellar_trade_route
(
    route_id                 INTEGER PRIMARY KEY,
    route_name               TEXT,
    origin_system            TEXT,
    destination_system       TEXT,
    distance_lightyears      REAL,
    established_year         INTEGER,
    governing_body           TEXT,
    primary_cargo_type       TEXT,
    frequency_per_month      INTEGER,
    security_level           TEXT,
    customs_protocol         TEXT,
    transport_mode           TEXT,
    max_ship_capacity_tons   REAL,
    average_transit_time_days REAL,
    insurance_required       TEXT,
    trade_agreement_id       INTEGER,
    last_inspection_date     DATE,
    route_status             TEXT,
    notes                    TEXT,
    created_timestamp        TIMESTAMP,
    last_updated_timestamp   TIMESTAMP
);

INSERT INTO interstellar_trade_route VALUES (101,'Silicon Corridor','AlphaCentauri','ProximaB',12.4,2120,'GalacticCouncil','Minerals',45,'High','Standard','Warp',1500.5,7.2,'Yes',5001,'2125-04-01','Active','High traffic route','2125-04-01 09:00:00','2125-04-01 09:00:00');
INSERT INTO interstellar_trade_route VALUES (102,'Aurora Passage','VegaPrime','SiriusIV',23.8,2145,'TradeUnion','BioGoods',30,'Medium','Enhanced','Hyperdrive',800.0,12.5,'No',5002,'2150-11-15','Active','Seasonal demand','2150-11-15 11:30:00','2150-11-15 11:30:00');
INSERT INTO interstellar_trade_route VALUES (103,'Obsidian Loop','OrionX','AndromedaY',45.0,2105,'InterstellarAgency','Technology',20,'Low','Minimal','Quantum',500.0,20.0,'Yes',5003,'2110-06-20','Dormant','Awaiting security upgrades','2110-06-20 08:45:00','2110-06-20 08:45:00');

-- Metahuman clinic medical records
CREATE TABLE metahuman_clinic_record
(
    record_id               INTEGER PRIMARY KEY,
    patient_id              INTEGER,
    metahuman_name          TEXT,
    alias_name              TEXT,
    date_of_birth           DATE,
    gender_id               INTEGER,
    primary_ability_id      INTEGER,
    secondary_ability_id    INTEGER,
    registration_date       DATE,
    clinic_location_id      INTEGER,
    admitting_physician_id  INTEGER,
    diagnosis_code          TEXT,
    treatment_plan          TEXT,
    medication_list         TEXT,
    dosage_mg               REAL,
    therapy_sessions        INTEGER,
    follow_up_date          DATE,
    insurance_provider      TEXT,
    policy_number           TEXT,
    notes                   TEXT,
    created_timestamp       TIMESTAMP,
    last_updated_timestamp  TIMESTAMP
);

INSERT INTO metahuman_clinic_record VALUES (2001,501,'Alex Nova','Starflare','1995-08-21',1,301,402,'2024-01-15',10,75,'DX100','Regeneration Therapy','Healix','250.0',5,'2024-03-01','HealthGuard','HG123456','Patient responded well','2024-01-15 10:00:00','2024-01-15 10:00:00');
INSERT INTO metahuman_clinic_record VALUES (2002,502,'Lara Zenith','QuantumMist','1988-04-10',2,305,0,'2024-02-20',12,82,'DX210','Neural Stabilization','NeuroBoost','180.5',8,'2024-04-15','MediSecure','MS987654','Requires monitoring','2024-02-20 14:30:00','2024-02-20 14:30:00');
INSERT INTO metahuman_clinic_record VALUES (2003,503,'Jorin Vale','EchoShade','2001-12-05',1,309,410,'2024-03-05',11,79,'DX330','Energy Regulation','EnergiX','300.0',3,'2024-05-10','LifeShield','LS555333','Stable condition','2024-03-05 09:45:00','2024-03-05 09:45:00');

-- Artifact loan agreement details
CREATE TABLE artifact_loan_agreement
(
    loan_id                 INTEGER PRIMARY KEY,
    artifact_id             INTEGER,
    borrowing_institution   TEXT,
    lending_institution     TEXT,
    loan_start_date         DATE,
    loan_end_date           DATE,
    insurance_provider      TEXT,
    insurance_policy_number TEXT,
    transport_method        TEXT,
    security_clearance_level TEXT,
    condition_report        TEXT,
    special_handling_notes  TEXT,
    renewal_option_allowed  TEXT,
    renewal_deadline_date   DATE,
    late_fee_per_day        REAL,
    approved_by_officer_id  INTEGER,
    approval_timestamp      TIMESTAMP,
    created_timestamp       TIMESTAMP,
    last_updated_timestamp  TIMESTAMP,
    notes                   TEXT
);

INSERT INTO artifact_loan_agreement VALUES (3001,801,'MuseumOfHistory','GalacticArchive','2024-05-01','2025-05-01','SecureGuard','SG112233','CryoPod','Level3','Excellent','Handle with anti-static gloves','Yes','2025-04-15','50.0',4001,'2024-04-20 08:00:00','2024-04-20 08:00:00','First-time loan');
INSERT INTO artifact_loan_agreement VALUES (3002,802,'InterstellarInstitute','PlanetaryVault','2024-07-15','2024-12-15','SpaceShield','SS445566','QuantumCarrier','Level2','Good','Maintain temperature at -20C','No','2024-12-01','75.0',4002,'2024-07-01 09:30:00','2024-07-01 09:30:00','Short term exhibition');
INSERT INTO artifact_loan_agreement VALUES (3003,803,'UniversalGallery','AncientRepository','2024-09-01','2026-09-01','CosmicCover','CC778899','GravityLift','Level4','Pristine','Use magnetic suspension','Yes','2026-08-15','100.0',4003,'2024-08-20 11:15:00','2024-08-20 11:15:00','Long term display');

-- Quantum energy transaction ledger
CREATE TABLE quantum_energy_transaction
(
    transaction_id          INTEGER PRIMARY KEY,
    source_station_id       INTEGER,
    destination_station_id  INTEGER,
    energy_amount_petajoules REAL,
    transaction_date        DATE,
    transaction_time        TIME,
    transfer_medium         TEXT,
    authorization_code      TEXT,
    compliance_status       TEXT,
    fee_percentage          REAL,
    net_energy_delivered    REAL,
    operator_id             INTEGER,
    notes                   TEXT,
    created_timestamp       TIMESTAMP,
    last_updated_timestamp  TIMESTAMP,
    audit_trail_id          INTEGER,
    blockchain_hash         TEXT,
    settlement_status       TEXT,
    confirmed_by_id         INTEGER,
    confirmation_timestamp  TIMESTAMP
);

INSERT INTO quantum_energy_transaction VALUES (4001,1101,1202,250.75,'2024-04-10','13:45:00','QuantumFlux','AUTH001','Compliant',2.5,244.0,5001,'Routine transfer','2024-04-10 13:45:00','2024-04-10 13:45:00',9001,'HASHABC123','Settled',6001,'2024-04-10 14:00:00');
INSERT INTO quantum_energy_transaction VALUES (4002,1102,1203,500.00,'2024-05-22','09:20:00','Entanglement','AUTH002','Pending',3.0,485.0,5002,'High priority','2024-05-22 09:20:00','2024-05-22 09:20:00',9002,'HASHDEF456','Pending',6002,'2024-05-22 09:45:00');
INSERT INTO quantum_energy_transaction VALUES (4003,1103,1204,120.30,'2024-06-15','18:55:00','PhotonStream','AUTH003','Compliant',1.8,118.5,5003,'Standard operation','2024-06-15 18:55:00','2024-06-15 18:55:00',9003,'HASHGHI789','Settled',6003,'2024-06-15 19:10:00');

-- Extended fan demographic profile
CREATE TABLE fan_demographic_profile_extended
(
    profile_id               INTEGER PRIMARY KEY,
    fan_id                   INTEGER,
    age_range                TEXT,
    primary_geography        TEXT,
    secondary_geography      TEXT,
    income_bracket           TEXT,
    education_level          TEXT,
    occupation_category      TEXT,
    preferred_media_channel  TEXT,
    average_monthly_spend    REAL,
    loyalty_score            INTEGER,
    engagement_frequency     INTEGER,
    social_platform_main     TEXT,
    platform_followers_count INTEGER,
    device_preference        TEXT,
    subscription_status      TEXT,
    newsletter_opt_in        TEXT,
    event_participation_rate INTEGER,
    merchandise_collected    TEXT,
    favorite_character_id    INTEGER,
    created_timestamp        TIMESTAMP,
    last_updated_timestamp   TIMESTAMP,
    notes                    TEXT
);

INSERT INTO fan_demographic_profile_extended VALUES (5001,9001,'18-24','NorthAmerica','Europe','30k-50k','College','Tech','Streaming',45.5,78,12,'PlatformX',1500,'Mobile','Active','Yes',5,'FigurineSetA',42,'2024-01-05 10:00:00','2024-01-05 10:00:00','High engagement');
INSERT INTO fan_demographic_profile_extended VALUES (5002,9002,'25-34','Asia','Australia','50k-70k','Graduate','Creative','SocialMedia',60.0,85,15,'PlatformY',2300,'Console','Subscribed','Yes',8,'PosterSeriesB',57,'2024-02-10 11:30:00','2024-02-10 11:30:00','Frequent buyer');
INSERT INTO fan_demographic_profile_extended VALUES (5003,9003,'35-44','SouthAmerica','Africa','70k-90k','HighSchool','Healthcare','Print',30.0,65,8,'PlatformZ',800,'PC','Inactive','No',2,'ComicBookC',31,'2024-03-20 09:45:00','2024-03-20 09:45:00','Occasional participant');

-- Advertising campaign metrics
CREATE TABLE advertising_campaign_metrics
(
    campaign_id               INTEGER PRIMARY KEY,
    campaign_name             TEXT,
    start_date                DATE,
    end_date                  DATE,
    total_impressions         INTEGER,
    total_clicks              INTEGER,
    click_through_rate        REAL,
    conversion_rate           REAL,
    cost_per_mille            REAL,
    cost_per_click            REAL,
    total_spend_usd           REAL,
    platform_used             TEXT,
    audience_target           TEXT,
    creative_type             TEXT,
    frequency_cap             INTEGER,
    geographic_scope          TEXT,
    device_targeting          TEXT,
    ad_copy_version           TEXT,
    A_B_test_group            TEXT,
    post_camp_analysis_notes  TEXT,
    created_timestamp         TIMESTAMP,
    last_updated_timestamp    TIMESTAMP,
    responsible_manager_id    INTEGER
);

INSERT INTO advertising_campaign_metrics VALUES (6001,'WinterLaunch','2024-01-01','2024-01-31',5000000,250000,5.0,2.0,12.5,0.50,125000,'PlatformX','YoungAdult','Video','3','Global','Mobile','CopyA','GroupA','Positive ROI','2024-02-01 08:00:00','2024-02-01 08:00:00',8001);
INSERT INTO advertising_campaign_metrics VALUES (6002,'SummerSplash','2024-06-01','2024-06-30',8000000,320000,4.0,1.5,10.0,0.30,240000,'PlatformY','Family','Banner','2','Regional','Desktop','CopyB','GroupB','High engagement','2024-07-05 09:30:00','2024-07-05 09:30:00',8002);
INSERT INTO advertising_campaign_metrics VALUES (6003,'FallFest','2024-09-15','2024-10-15',6000000,180000,3.0,1.0,11.0,0.40,180000,'PlatformZ','AllAges','Audio','1','National','All','CopyC','GroupC','Moderate conversion','2024-10-20 10:15:00','2024-10-20 10:15:00',8003);

-- Renewable energy project registry
CREATE TABLE renewable_energy_project
(
    project_id                INTEGER PRIMARY KEY,
    project_name              TEXT,
    start_date                DATE,
    projected_completion_date DATE,
    energy_type               TEXT,
    capacity_megawatt         REAL,
    location_city             TEXT,
    location_state            TEXT,
    funding_source            TEXT,
    total_investment_usd      REAL,
    contractor_company_id     INTEGER,
    environmental_impact_score INTEGER,
    grid_connection_status   TEXT,
    permitting_status         TEXT,
    operational_status        TEXT,
    expected_annual_output_gwh REAL,
    carbon_offset_tons        REAL,
    maintenance_contract_id   INTEGER,
    created_timestamp         TIMESTAMP,
    last_updated_timestamp    TIMESTAMP,
    notes                     TEXT
);

INSERT INTO renewable_energy_project VALUES (7001,'SolarPlains','2023-05-01','2025-12-31','Solar',250.0,'Sunville','CA','GovernmentGrant',150000000,9001,85,'Connected','Approved','Construction','500.0','1200.0',8001,'2023-05-01 07:00:00','2023-05-01 07:00:00','Phase 1 underway');
INSERT INTO renewable_energy_project VALUES (7002,'WindCrest','2022-09-15','2024-06-30','Wind',180.5,'Breezetown','TX','PrivateEquity',200000000,9002,78,'Pending','Pending','Planned','400.0','900.0',8002,'2022-09-15 08:30:00','2022-09-15 08:30:00','Awaiting permits');
INSERT INTO renewable_energy_project VALUES (7003,'HydroFlow','2021-01-10','2026-03-15','Hydro',320.0,'Riverdale','NY','PublicBond',250000000,9003,92,'Connected','Approved','Operational','800.0','1500.0',8003,'2021-01-10 09:45:00','2021-01-10 09:45:00','Full capacity reached 2026');

-- Virtual collectible market analytics
CREATE TABLE virtual_collectible_market
(
    market_id                 INTEGER PRIMARY KEY,
    collection_name           TEXT,
    launch_date               DATE,
    total_items               INTEGER,
    average_price_usd         REAL,
    highest_price_usd         REAL,
    lowest_price_usd          REAL,
    transaction_volume        INTEGER,
    active_traders            INTEGER,
    platform_name             TEXT,
    blockchain_used           TEXT,
    smart_contract_version    TEXT,
    rarity_distribution       TEXT,
    daily_active_users        INTEGER,
    monthly_retention_rate    REAL,
    average_holding_time_days REAL,
    top_trader_id             INTEGER,
    market_sentiment          TEXT,
    promotional_event         TEXT,
    notes                     TEXT,
    created_timestamp         TIMESTAMP,
    last_updated_timestamp    TIMESTAMP
);

INSERT INTO virtual_collectible_market VALUES (8001,'MythicArtifacts','2024-02-01',5000,250.75,1200.00,15.00,80000,4500,'PlatformX','ChainA','v1.2','Common30%Rare40%Epic20%Legendary10%',1200,78.5,45.0,9001,'Bullish','LaunchPromo','Strong initial uptake','2024-02-01 10:00:00','2024-02-01 10:00:00');
INSERT INTO virtual_collectible_market VALUES (8002,'GalaxyTokens','2023-11-15',3000,180.20,950.00,20.00,50000,3200,'PlatformY','ChainB','v2.0','Common50%Rare30%Epic15%Legendary5%',950,65.0,30.0,9002,'Neutral','WinterEvent','Steady growth','2023-11-15 09:30:00','2023-11-15 09:30:00');
INSERT INTO virtual_collectible_market VALUES (8003,'ChronoStamps','2024-05-20',2000,300.00,1500.00,50.00,30000,2100,'PlatformZ','ChainC','v1.0','Common20%Rare35%Epic30%Legendary15%',800,70.0,60.0,9003,'Bearish','MidYearSale','Liquidity concerns','2024-05-20 11:15:00','2024-05-20 11:15:00');

-- Multiverse governance vote records
CREATE TABLE multiverse_governance_vote
(
    vote_id                     INTEGER PRIMARY KEY,
    proposal_id                 INTEGER,
    proposal_title              TEXT,
    voting_session_date         DATE,
    voting_start_time           TIME,
    voting_end_time             TIME,
    total_eligible_voters       INTEGER,
    votes_for                   INTEGER,
    votes_against               INTEGER,
    abstentions                 INTEGER,
    quorum_met                  TEXT,
    outcome                     TEXT,
    voting_mechanism            TEXT,
    encrypted_ballot_hash       TEXT,
    audit_trail_id              INTEGER,
    created_timestamp           TIMESTAMP,
    last_updated_timestamp      TIMESTAMP,
    notes                       TEXT,
    governing_body_id           INTEGER,
    verification_status         TEXT
);

INSERT INTO multiverse_governance_vote VALUES (9001,1001,'ExpandDimensionalGateways','2024-04-10','10:00:00','12:00:00',5000,3500,1200,300,'Yes','Approved','Digital','HASHVOTE123',9501,'2024-04-10 10:00:00','2024-04-10 10:00:00','High participation',3001,'Verified');
INSERT INTO multiverse_governance_vote VALUES (9002,1002,'RegulateMetaEnergyUsage','2024-06-15','14:00:00','16:30:00',6000,2800,2500,700,'Yes','Rejected','Hybrid','HASHVOTE456',9502,'2024-06-15 14:00:00','2024-06-15 14:00:00','Debate intense',3002,'Verified');
INSERT INTO multiverse_governance_vote VALUES (9003,1003,'EstablishUniversalTax','2024-09-01','09:00:00','11:00:00',8000,4000,3500,500,'Yes','Approved','Digital','HASHVOTE789',9503,'2024-09-01 09:00:00','2024-09-01 09:00:00','Controversial',3003,'Verified');