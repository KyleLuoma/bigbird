-- Cosmic Anomaly table
CREATE TABLE cosmic_anomaly
(
    id INTEGER NOT NULL PRIMARY KEY,
    anomaly_name TEXT,
    detection_date DATE,
    anomaly_type TEXT,
    severity INTEGER,
    spatial_coordinate_x REAL,
    spatial_coordinate_y REAL,
    spatial_coordinate_z REAL,
    discovered_by TEXT,
    related_universe TEXT,
    description TEXT,
    energy_signature REAL,
    gravitational_effect REAL,
    temporal_distortion BOOLEAN,
    electromagnetic_interference BOOLEAN,
    observation_duration INTEGER,
    status TEXT,
    mitigation_plan TEXT,
    last_update TIMESTAMP,
    notes TEXT
);

INSERT INTO cosmic_anomaly VALUES (1,'Gamma Rift','2123-05-12','Spatial','5',102.4,78.3,210.5,'DrZara','UniverseA','A rift emitting high energy','450.7','0.32',1,0,48,'Active','Containment field','2123-06-01 14:30:00','Initial detection');
INSERT INTO cosmic_anomaly VALUES (2,'Void Pulse','2124-01-03','Temporal','8',-12.7,45.3,0.0,'ObservatoryX','UniverseB','Pulse causing time dilation','1200.0','0.00',1,1,120,'Critical','Temporal stabilizer','2124-01-10 09:15:00','Requires further study');
INSERT INTO cosmic_anomaly VALUES (3,'Dark Nebula','2122-11-22','Gravitational','3',300.0,400.0,500.0,'SurveyTeam7','UniverseC','Massive gravitic anomaly','0.0','9.81',0,0,240,'Monitored','No action needed','2122-12-01 08:00:00','Stable');

-- Intergalactic Trade Route table
CREATE TABLE intergalactic_trade_route
(
    id INTEGER NOT NULL PRIMARY KEY,
    route_name TEXT,
    origin_planet TEXT,
    destination_planet TEXT,
    distance_lightyears REAL,
    max_cargo_weight INTEGER,
    primary_commodity TEXT,
    trade_volume_annual INTEGER,
    established_year INTEGER,
    governing_body TEXT,
    security_level INTEGER,
    customs_fee_percent REAL,
    insurance_required BOOLEAN,
    average_transit_time_days INTEGER,
    route_status TEXT,
    last_inspection_date DATE,
    contact_officer TEXT,
    communication_frequency TEXT,
    navigation_protocol TEXT,
    remarks TEXT
);

INSERT INTO intergalactic_trade_route VALUES (1,'Silk Road Alpha','TerraNova','Xenon','12.5',500000,'Minerals',2500000,2095,'GalacticTradeCouncil',4,2.5,1,30,'Operational','2123-04-15','OfficerKira','Subspace-7','StandardNav','High throughput route');
INSERT INTO intergalactic_trade_route VALUES (2,'Crystal Loop','Aurelia','Vortis','8.3',300000,'Crystal','1800000',2100,'UnifiedCommerce',3,1.8,0,22,'Operational','2123-05-20','OfficerMilo','Quantum-5','EcoNav','Low risk');
INSERT INTO intergalactic_trade_route VALUES (3,'Nebula Express','Orion','Zyphos','20.0',800000,'BioSamples',3200000,2080,'InterstellarUnion',5,3.0,1,45,'Under Review','2123-03-10','OfficerLena','Warp-12','SecureNav','Pending security upgrade');

-- Metahuman Genealogy table
CREATE TABLE metahuman_genealogy
(
    id INTEGER NOT NULL PRIMARY KEY,
    metahuman_id INTEGER,
    codename TEXT,
    lineage_name TEXT,
    parent1_id INTEGER,
    parent2_id INTEGER,
    generation_number INTEGER,
    mutation_type TEXT,
    power_inheritance_probability REAL,
    dna_sequence_hash TEXT,
    birth_date DATE,
    nationality TEXT,
    affiliation TEXT,
    known_ancestors_count INTEGER,
    genetic_marker TEXT,
    genome_stability_score REAL,
    research_status TEXT,
    last_genetic_test_date DATE,
    notes TEXT,
    confidentiality_level INTEGER
);

INSERT INTO metahuman_genealogy VALUES (1,101,'Specter','ShadowLine',100,102,2,'Quantum','0.85','A1B2C3D4','2120-07-14','Lunaria','NightGuard',5,'MarkerX','92.5','Open','2123-02-01','No anomalies','1');
INSERT INTO metahuman_genealogy VALUES (2,103,'Tempest','StormClan',101,104,3,'Elemental','0.78','E5F6G7H8','2118-03-22','Terranova','StormForce',8,'MarkerY','88.0','Restricted','2122-12-15','Rare mutation observed','2');
INSERT INTO metahuman_genealogy VALUES (3,105,'Glacier','FrostBlood',103,106,4,'Cryogenic','0.65','I9J0K1L2','2115-11-05','Arctica','IceGuard',12,'MarkerZ','80.3','Classified','2121-08-30','High stability','3');

-- Dimensional Portal table
CREATE TABLE dimensional_portal
(
    id INTEGER NOT NULL PRIMARY KEY,
    portal_name TEXT,
    entry_location TEXT,
    exit_location TEXT,
    dimension_target TEXT,
    creation_date DATE,
    creator_entity TEXT,
    stability_rating INTEGER,
    energy_consumption_mw REAL,
    activation_requirement TEXT,
    max_passenger_capacity INTEGER,
    security_clearance_required BOOLEAN,
    operational_status TEXT,
    maintenance_interval_days INTEGER,
    last_maintenance_date DATE,
    deactivation_date DATE,
    associated_anomalies TEXT,
    control_panel_version TEXT,
    firmware_version TEXT,
    comments TEXT
);

INSERT INTO dimensional_portal VALUES (1,'Aegis Gate','Sector-7G','Sector-9K','DreamRealm','2122-06-10','DrQuark',8,150.5,'BiometricScan',200,1,'Active',90,'2123-03-01',NULL,'Gamma Rift','v2.3','fw1.4','Primary gateway');
INSERT INTO dimensional_portal VALUES (2,'Echo Loop','MarsBase','EuropaOutpost','MirrorVerse','2121-12-01','AI-Unit42',6,95.2,'Passcode',120,0,'Standby',180,'2122-11-15',NULL,'Void Pulse','v1.9','fw2.0','Secondary loop');
INSERT INTO dimensional_portal VALUES (3,'Nimbus Bridge','Orbital-12','Lunar-5','SkyPlane','2120-09-20','AncientTech',9,210.0,'QuantumKey',300,1,'Decommissioned','365','2119-09-15','2123-01-01','None','v3.0','fw3.2','Retired after incident');

-- Energy Reactor table
CREATE TABLE energy_reactor
(
    id INTEGER NOT NULL PRIMARY KEY,
    reactor_name TEXT,
    reactor_type TEXT,
    location_site TEXT,
    capacity_mw REAL,
    operational_status TEXT,
    start_date DATE,
    decommission_date DATE,
    fuel_type TEXT,
    fuel_consumption_rate REAL,
    coolant_type TEXT,
    efficiency_percent REAL,
    safety_rating INTEGER,
    staff_on_duty INTEGER,
    regulatory_body TEXT,
    last_inspection_date DATE,
    incident_history TEXT,
    emissions_tons_per_year REAL,
    maintenance_schedule_days INTEGER,
    notes TEXT
);

INSERT INTO energy_reactor VALUES (1,'Helios Core','Fusion','Solaris Complex',5000.0,'Operational','2100-01-01',NULL,'Deuterium','0.8','LiquidMetal','92.3',9,125,'Fusion Authority','2123-04-10','None',0.0,30,'Peak performance');
INSERT INTO energy_reactor VALUES (2,'Titanium Plant','Fission','Luna Base',2500.0,'Standby','2115-05-15','2140-05-15','Uranium','1.2','Helium','85.0',7,80,'Nuclear Oversight','2122-12-20','Minor coolant leak in 2121',15.4,60,'Scheduled for upgrade');
INSERT INTO energy_reactor VALUES (3,'Aqua Turbine','Hydro','Maris Station',1200.0,'Decommissioned','2090-03-10','2125-03-10','Water','N/A','Water','78.5',5,40,'Hydro Regulation','2120-07-05','Corrosion issues 2118',5.0,90,'Dismantled safely');

-- Artifact Loan table
CREATE TABLE artifact_loan
(
    id INTEGER NOT NULL PRIMARY KEY,
    artifact_name TEXT,
    artifact_origin TEXT,
    loaning_institution TEXT,
    borrowing_institution TEXT,
    loan_start_date DATE,
    loan_end_date DATE,
    insurance_value REAL,
    condition_report TEXT,
    transport_method TEXT,
    customs_clearance_number TEXT,
    handling_instructions TEXT,
    conservation_requirements TEXT,
    security_level INTEGER,
    display_location TEXT,
    curator_contact TEXT,
    renewal_allowed BOOLEAN,
    renewal_count INTEGER,
    loan_status TEXT,
    remarks TEXT
);

INSERT INTO artifact_loan VALUES (1,'Celestial Orb','Nebula-5','Galactic Museum','Star Archive','2123-01-01','2123-12-31','250000.0','Excellent','StasisPod','CUST12345','Temperature 5C','None',5,'Exhibit Hall A','CuratorRex',1,0,'Active','First loan');
INSERT INTO artifact_loan VALUES (2,'Ancient Relic','Planet X','Historical Institute','Orbit Gallery','2122-06-15','2124-06-14','500000.0','Good','SecureCrate','CUST67890','Handle with gloves','Humidity 40%','4','Gallery B','CuratorLia',0,0,'Completed','Returned in good condition');
INSERT INTO artifact_loan VALUES (3,'Quantum Crystal','Dimension Z','Quantum Research Center','Interstellar Expo','2121-09-01','2122-03-01','750000.0','Fair','AntiMatterShield','CUST54321','Maintain vacuum','Vacuum sealed','5','Expo Pavilion','CuratorMek',1,1,'Extended','Renewed once');

-- Research Publication table
CREATE TABLE research_publication
(
    id INTEGER NOT NULL PRIMARY KEY,
    title TEXT,
    authors TEXT,
    journal TEXT,
    volume INTEGER,
    issue INTEGER,
    pages TEXT,
    publication_date DATE,
    doi TEXT,
    abstract TEXT,
    keywords TEXT,
    impact_factor REAL,
    citation_count INTEGER,
    funding_agency TEXT,
    grant_number TEXT,
    peer_reviewed BOOLEAN,
    open_access BOOLEAN,
    download_url TEXT,
    related_project_id INTEGER,
    notes TEXT
);

INSERT INTO research_publication VALUES (1,'Dynamics of Dark Matter','A.Khan;B.Liu','AstroPhysics Review',12,4,'101-115','2123-02-10','10.1234/apr.2023.0045','Study on dark matter behavior in spiral galaxies','dark matter;galaxy rotation',9.2,45,'Space Research Fund','SRF-2021-07',1,0,'http://researchhub.org/paper1',2001,'Cited in multiple conferences');
INSERT INTO research_publication VALUES (2,'Quantum Entanglement Applications','C.Smith;D.Zhou','Quantum Journal',8,2,'50-78','2122-11-05','10.5678/qj.2022.0012','Exploration of entanglement for communication','quantum;entanglement;communication',7.8,30,'National Science Board','NSB-2020-03',1,1,'http://quantumrepo.org/paper2',2005,'Open access after embargo');
INSERT INTO research_publication VALUES (3,'Metahuman Genetics Overview','E.Rodriguez','Genetics Today',15,1,'200-220','2121-07-22','10.9101/gt.2021.0099','Comprehensive review of metahuman DNA patterns','metahuman;genetics;mutation',6.5,20,'Health Innovation Agency','HIA-2019-11',0,0,'http://genetictoday.org/paper3',2010,'Pending peer review');

-- Security Incident Log table
CREATE TABLE security_incident_log
(
    id INTEGER NOT NULL PRIMARY KEY,
    incident_timestamp TIMESTAMP,
    location TEXT,
    incident_type TEXT,
    severity_level INTEGER,
    reported_by TEXT,
    description TEXT,
    affected_systems TEXT,
    containment_action TEXT,
    downtime_minutes INTEGER,
    financial_impact_usd REAL,
    regulatory_fine_usd REAL,
    followup_action TEXT,
    status TEXT,
    assigned_team TEXT,
    root_cause_analysis TEXT,
    mitigation_plan TEXT,
    closure_date DATE,
    audit_trail_id TEXT,
    comments TEXT
);

INSERT INTO security_incident_log VALUES (1,'2123-04-12 09:30:00','Data Center Alpha','Breach','9','AnalystMoe','Unauthorized access to servers','ServerCluster1','Isolated nodes','120','150000.0','25000.0','Full forensic audit','Closed','TeamOmega','Weak password policy','Enhanced MFA','2123-04-20','ATID1001','Incident resolved');
INSERT INTO security_incident_log VALUES (2,'2123-03-05 14:15:00','Portal Nexus','Malfunction','5','EngineerLia','Portal instability causing loop','PortalControlSystem','Rebooted system','30','0.0','0.0','System check','Resolved','TeamDelta','Software glitch in v2.3','Patch deployment','2123-03-07','ATID1002','No data loss');
INSERT INTO security_incident_log VALUES (3,'2122-12-20 22:45:00','Warehouse Zeta','Fire','7','SafetyOfficerJax','Fire in storage area','HVAC,PowerGrid','Activated fire suppression','45','50000.0','0.0','Repair damaged equipment','Closed','TeamSigma','Electrical short circuit','Upgrade wiring','2122-12-28','ATID1003','All safety protocols reviewed');

-- Facility Maintenance Schedule table
CREATE TABLE facility_maintenance_schedule
(
    id INTEGER NOT NULL PRIMARY KEY,
    facility_name TEXT,
    facility_type TEXT,
    location TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance_date DATE,
    next_scheduled_date DATE,
    responsible_department TEXT,
    maintenance_vendor TEXT,
    service_level_agreement TEXT,
    work_order_number TEXT,
    tasks_description TEXT,
    parts_needed TEXT,
    estimated_cost_usd REAL,
    downtime_expected_minutes INTEGER,
    approval_status TEXT,
    supervisor_contact TEXT,
    compliance_checklist_version TEXT,
    notes TEXT,
    record_creation_timestamp TIMESTAMP
);

INSERT INTO facility_maintenance_schedule VALUES (1,'Helios Core Facility','Reactor','Solaris Complex',30,'2123-04-01','2123-05-01','Engineering','ReactorCo','SLA-Standard','WO-4578','Inspect coolant lines; calibrate sensors','CoolantFilters,SensorKit','25000.0','90','Approved','SupervisorKane','v1.2','Routine quarterly maintenance','2123-04-02 08:00:00');
INSERT INTO facility_maintenance_schedule VALUES (2,'Nebula Archive','Data Center','Orbit Station',90,'2122-12-15','2123-03-15','IT Services','DataTech','SLA-Premium','WO-8821','Replace RAID modules; update firmware','RAIDModules','12000.0','45','Pending','SupervisorRae','v2.0','Upgrade planned for Q1','2122-12-16 09:30:00');
INSERT INTO facility_maintenance_schedule VALUES (3,'Aqua Turbine Plant','Hydro Plant','Maris Station',180,'2122-06-01','2122-11-28','Operations','HydroMaintain','SLA-Basic','WO-3349','Inspect turbine blades; clean intake filters','BladeCleaningKit','8000.0','60','Approved','SupervisorLee','v1.0','Biannual deep clean','2122-06-02 07:45:00');

-- Universal Currency Exchange table
CREATE TABLE universal_currency_exchange
(
    id INTEGER NOT NULL PRIMARY KEY,
    exchange_name TEXT,
    base_currency TEXT,
    quote_currency TEXT,
    exchange_rate REAL,
    rate_timestamp TIMESTAMP,
    provider TEXT,
    transaction_fee_percent REAL,
    daily_volume_usd REAL,
    market_status TEXT,
    last_update DATE,
    regulatory_jurisdiction TEXT,
    compliance_rating INTEGER,
    sandbox_mode BOOLEAN,
    api_endpoint TEXT,
    max_transaction_limit_usd REAL,
    min_transaction_limit_usd REAL,
    supported_payment_methods TEXT,
    notes TEXT,
    audit_log_id TEXT
);

INSERT INTO universal_currency_exchange VALUES (1,'GalacticXchange','TerranDollar','XenonCredit','1.25','2123-04-15 12:00:00','GalaxyBank','0.5','7500000.0','Open','2123-04-15','Interstellar Council',9,0,'https://api.galacticxchange.univ','500000.0','100.0','CreditCard;Crypto','Primary exchange platform','AUD1001');
INSERT INTO universal_currency_exchange VALUES (2,'NebulaSwap','LunarCoin','SolarisToken','0.85','2123-04-14 09:30:00','NebulaFinance','0.3','3000000.0','Limited','2123-04-14','Nebula Authority',7,1,'https://api.nebulaswap.univ','200000.0','50.0','Crypto','Test environment','AUD1002');
INSERT INTO universal_currency_exchange VALUES (3,'QuantumForex','QuantumBit','PhotonCredit','2.10','2123-04-13 16:45:00','QuantumTrade','0.7','12000000.0','Open','2123-04-13','Quantum Regulation Board',8,0,'https://api.quantumforex.univ','1000000.0','500.0','BankTransfer;CreditCard','High liquidity exchange','AUD1003');