-- Hero physiological profile
CREATE TABLE hero_physiology (
    hero_id INTEGER NOT NULL,
    heart_rate_avg INTEGER,
    blood_type TEXT,
    metabolism_rate REAL,
    stamina_level INTEGER,
    muscle_mass_kg REAL,
    bone_density_gcm3 REAL,
    lung_capacity_liters REAL,
    vision_acuity TEXT,
    hearing_range_hz INTEGER,
    reflex_speed_ms REAL,
    dna_seq_version TEXT,
    immune_strength INTEGER,
    stress_resilience INTEGER,
    sleep_hours_per_day REAL,
    caloric_intake_daily INTEGER,
    hydration_level_percent REAL,
    injury_history TEXT,
    last_physical_exam DATE,
    fitness_test_score INTEGER,
    PRIMARY KEY (hero_id)
);
INSERT INTO hero_physiology VALUES (1,72,'O','1.05',85,78.5,1.85,5.8,'20/20',20000,0.12,'v1','High',90,7.5,2500,60,'None','2024-12-01',88);
INSERT INTO hero_physiology VALUES (2,68,'A','0.98',78,70.2,1.78,5.5,'20/20',21000,0.10,'v2','Medium',85,8.0,2600,58,'Fracture2023','2024-11-15',82);
INSERT INTO hero_physiology VALUES (3,80,'B','1.10',90,82.0,1.90,6.0,'20/15',19000,0.14,'v3','High',95,92,6.8,2400,63,'None','2024-10-20',91);

-- Villain economic activity
CREATE TABLE villain_economics (
    villain_id INTEGER NOT NULL,
    annual_revenue_musd REAL,
    net_worth_musd REAL,
    primary_income_source TEXT,
    illicit_trade_volume_musd REAL,
    corruption_index INTEGER,
    legal_assets_musd REAL,
    offshore_accounts INTEGER,
    crypto_wallets INTEGER,
    bribery_cases INTEGER,
    sanctions_violations INTEGER,
    tax_evasion_cases INTEGER,
    money_laundering_risk INTEGER,
    lobbying_expenditure_musd REAL,
    market_influence_score INTEGER,
    secure_facilities INTEGER,
    armed_personnel INTEGER,
    black_market_access TEXT,
    last_audit_date DATE,
    risk_assessment_level TEXT,
    PRIMARY KEY (villain_id)
);
INSERT INTO villain_economics VALUES (101,120.5,450.0,'Smuggling',85.0,78,200.0,12,5,3,2,4,88,15.0,92,7,150,'High',2024-09-30,'Critical');
INSERT INTO villain_economics VALUES (102,95.3,320.5,'DrugTrade',60.0,70,150.0,8,3,5,1,2,75,10.5,85,5,120,'Medium',2024-08-12,'High');
INSERT INTO villain_economics VALUES (103,45.0,150.0,'CyberCrime',30.0,55,80.0,4,7,2,0,1,60,8.0,70,3,80,'Low',2024-07-05,'Moderate');

-- Multiverse portal usage log
CREATE TABLE multiverse_portal_log (
    log_id INTEGER NOT NULL,
    portal_id INTEGER,
    origin_universe TEXT,
    destination_universe TEXT,
    traversal_timestamp DATETIME,
    traveler_id INTEGER,
    travel_method TEXT,
    energy_consumed_mj REAL,
    stability_rating INTEGER,
    security_clearance_level INTEGER,
    calibration_status TEXT,
    anomaly_detected TEXT,
    operator_id INTEGER,
    maintenance_window TEXT,
    notes TEXT,
    PRIMARY KEY (log_id)
);
INSERT INTO multiverse_portal_log VALUES (1001,11,'Earth-1','Earth-3','2024-12-15 14:30:00',1,'QuantumSlip',250.5,92,5,'Calibrated','None',201,'Night','Routine transfer');
INSERT INTO multiverse_portal_log VALUES (1002,12,'Earth-2','Mars-Prime','2024-12-16 09:15:00',2,'Wormhole',340.0,88,4,'Pending','TemporalFlux',202,'Day','Minor delay');
INSERT INTO multiverse_portal_log VALUES (1003,13,'Earth-1','Nebula-X','2024-12-17 22:45:00',3,'DimShift',410.2,95,6,'Calibrated','None',203,'Night','Successful');

-- Cosmic energy trade agreements
CREATE TABLE cosmic_energy_trade (
    agreement_id INTEGER NOT NULL,
    supplier_faction TEXT,
    consumer_faction TEXT,
    energy_type TEXT,
    annual_volume_petajoules REAL,
    price_per_petajoule REAL,
    contract_start DATE,
    contract_end DATE,
    renewable_percentage INTEGER,
    regulatory_approval TEXT,
    dispute_resolution_mechanism TEXT,
    escrow_account TEXT,
    penalty_clause TEXT,
    amendment_count INTEGER,
    last_amendment_date DATE,
    governing_body TEXT,
    certified_by TEXT,
    PRIMARY KEY (agreement_id)
);
INSERT INTO cosmic_energy_trade VALUES (5001,'SolarGuild','StarEmpire','Solar',1500.0,12.5,'2023-01-01','2028-12-31',80,'Approved','Arbitration','EscrowA','LateDelivery','2','2024-06-10','IntergalacticCouncil','AuditorX');
INSERT INTO cosmic_energy_trade VALUES (5002,'NebulaCo','VoidConsortium','DarkMatter',800.0,20.0,'2024-03-15','2029-03-14',5,'Pending','Mediation','EscrowB','ForceMajeure','1','2024-07-01','CouncilOfStars','AuditorY');
INSERT INTO cosmic_energy_trade VALUES (5003,'QuantumLabs','GalacticFederation','Quantum',1200.0,18.0,'2022-07-01','2027-06-30',60,'Approved','Litigation','EscrowC','Breach','3','2024-05-20','UniversalCouncil','AuditorZ');

-- Metahuman experimental records
CREATE TABLE metahuman_experiment (
    experiment_id INTEGER NOT NULL,
    subject_hero_id INTEGER,
    researcher_id INTEGER,
    experiment_type TEXT,
    start_date DATE,
    end_date DATE,
    dosage_mg REAL,
    exposure_hours REAL,
    observed_effects TEXT,
    success_metric REAL,
    side_effects TEXT,
    safety_level INTEGER,
    ethical_review_status TEXT,
    funding_source TEXT,
    lab_location TEXT,
    equipment_used TEXT,
    data_repository TEXT,
    peer_reviewed TEXT,
    notes TEXT,
    PRIMARY KEY (experiment_id)
);
INSERT INTO metahuman_experiment VALUES (9001,1,301,'GeneEnhancement','2024-01-10','2024-02-20',250.0,48.5,'IncreasedStrength',0.92,'None',5,'Approved','GovGrant','LabAlpha','CRISPRv3','RepoA','Yes','Baseline success');
INSERT INTO metahuman_experiment VALUES (9002,2,302,'RadiationResistance','2024-03-05','2024-04-15',0.0,72.0,'RadiationTolerance',0.85,'MildFatigue',4,'Pending','Private','LabBeta','RadiShield','RepoB','No','Further analysis needed');
INSERT INTO metahuman_experiment VALUES (9003,3,303,'NeuralSync','2024-05-12','2024-06-25',120.0,36.0,'FasterReflexes',0.78,'Headaches',3,'Approved','Corporate','LabGamma','NeuroLink','RepoC','Yes','Promising results');

-- Interstellar transport schedule
CREATE TABLE interstellar_transport_schedule (
    schedule_id INTEGER NOT NULL,
    vessel_name TEXT,
    departure_port TEXT,
    arrival_port TEXT,
    departure_datetime DATETIME,
    arrival_datetime DATETIME,
    cargo_type TEXT,
    cargo_weight_tons REAL,
    crew_count INTEGER,
    captain_id INTEGER,
    fuel_type TEXT,
    fuel_consumption_per_hour REAL,
    navigation_route TEXT,
    security_level INTEGER,
    expected_delay_minutes INTEGER,
    status TEXT,
    PRIMARY KEY (schedule_id)
);
INSERT INTO interstellar_transport_schedule VALUES (2001,'SS Voyager','EarthOrbit','MarsBase','2025-01-10 08:00:00','2025-01-12 14:30:00','Supplies',45.0,12,501,'Antimatter',250.0,'RouteA',4,15,'OnTime');
INSERT INTO interstellar_transport_schedule VALUES (2002,'SS Orion','LunaDock','JupiterStation','2025-02-05 22:15:00','2025-02-09 03:45:00','Minerals',120.0,20,502,'Fusion',300.0,'RouteB',5,30,'Delayed');
INSERT INTO interstellar_transport_schedule VALUES (2003,'SS Nova','MarsBase','SaturnRing','2025-03-20 11:00:00','2025-03-24 18:20:00','ResearchEquipment',30.0,15,503,'Antimatter',260.0,'RouteC',3,0,'Scheduled');

-- Artifact preservation log
CREATE TABLE artifact_preservation (
    record_id INTEGER NOT NULL,
    artifact_id INTEGER,
    preservation_method TEXT,
    storage_temperature_c REAL,
    humidity_percent REAL,
    last_inspection_date DATE,
    condition_status TEXT,
    restoration_needed BOOLEAN,
    conservator_id INTEGER,
    imaging_technique TEXT,
    notes TEXT,
    PRIMARY KEY (record_id)
);
INSERT INTO artifact_preservation VALUES (4001,101,'Cryogenic','-150.0',30.0,'2024-06-01','Excellent',0,601,'CTScan','No action required');
INSERT INTO artifact_preservation VALUES (4002,102,'VacuumSeal','20.0',10.0,'2024-07-15','Good',1,602,'XRay','Minor surface cleaning needed');
INSERT INTO artifact_preservation VALUES (4003,103,'ControlledAtmosphere','5.0',45.0,'2024-08-20','Fair',1,603,'Infrared','Potential corrosion, schedule restoration');

-- Fan analytics snapshot
CREATE TABLE fan_analytics_snapshot (
    snapshot_id INTEGER NOT NULL,
    capture_date DATE,
    active_users INTEGER,
    new_signups INTEGER,
    avg_session_minutes REAL,
    total_posts INTEGER,
    comments_made INTEGER,
    likes_given INTEGER,
    shares INTEGER,
    peak_concurrent_users INTEGER,
    geographic_region TEXT,
    platform TEXT,
    mobile_percentage INTEGER,
    desktop_percentage INTEGER,
    retention_rate_percent REAL,
    churn_rate_percent REAL,
    net_promoter_score INTEGER,
    average_sentiment_score REAL,
    featured_content_id INTEGER,
    PRIMARY KEY (snapshot_id)
);
INSERT INTO fan_analytics_snapshot VALUES (90001,'2024-12-01',45200,1200,34.5,7800,14500,23000,5600,8200,'NorthAmerica','Web',55,45,78.2,5,42,0.87,310);
INSERT INTO fan_analytics_snapshot VALUES (90002,'2024-12-08',46750,1300,33.8,7950,15000,24000,6000,8450,'Europe','Mobile',62,38,80.1,4,45,0.89,315);
INSERT INTO fan_analytics_snapshot VALUES (90003,'2024-12-15',48010,1400,35.0,8100,15500,25000,6300,8700,'Asia','Web',58,42,81.5,3,48,0.91,322);

-- Publisher advertising agreement
CREATE TABLE publisher_advertising_agreement (
    agreement_id INTEGER NOT NULL,
    publisher_id INTEGER,
    advertiser_id INTEGER,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    total_budget_usd REAL,
    impressions_target INTEGER,
    clicks_target INTEGER,
    cpm_price REAL,
    cpc_price REAL,
    creative_format TEXT,
    placement_type TEXT,
    geographic_target TEXT,
    audience_segment TEXT,
    performance_bonus_percent REAL,
    renewal_option TEXT,
    compliance_status TEXT,
    notes TEXT,
    PRIMARY KEY (agreement_id)
);
INSERT INTO publisher_advertising_agreement VALUES (7001,5,9001,'SpringBoost','2025-03-01','2025-05-31',250000.0,5000000,250000,5.0,0.8,'Video','Banner','Global','Adults18-35',10.0,'AutoRenew','Compliant','Initial launch');
INSERT INTO publisher_advertising_agreement VALUES (7002,5,9002,'SummerSplash','2025-06-01','2025-08-31',300000.0,6000000,300000,4.5,0.75,'Interactive','Sidebar','NorthAmerica','Teens13-19',12.5,'ManualRenew','Pending','Negotiation ongoing');
INSERT INTO publisher_advertising_agreement VALUES (7003,5,9003,'FallFocus','2025-09-01','2025-11-30',220000.0,4500000,200000,5.2,0.82,'Static','Footer','Europe','Professionals','8.0','AutoRenew','Compliant','Seasonal focus');

-- Digital content license agreement
CREATE TABLE digital_content_license_agreement (
    license_id INTEGER NOT NULL,
    content_id INTEGER,
    licensor_id INTEGER,
    licensee_id INTEGER,
    license_type TEXT,
    effective_date DATE,
    expiration_date DATE,
    territory TEXT,
    exclusive_flag BOOLEAN,
    royalty_rate_percent REAL,
    minimum_guarantee_usd REAL,
    audit_rights BOOLEAN,
    termination_clause TEXT,
    renewal_terms TEXT,
    sublicensing_allowed BOOLEAN,
    digital_format TEXT,
    distribution_platform TEXT,
    notes TEXT,
    PRIMARY KEY (license_id)
);
INSERT INTO digital_content_license_agreement VALUES (8001,1501,1001,2001,'Streaming','2024-01-01','2029-12-31','Global',1,7.5,50000.0,1,'30daysNotice','Renewable','1','MP4','PlatformX','Initial contract');
INSERT INTO digital_content_license_agreement VALUES (8002,1502,1002,2002,'Download','2024-06-15','2027-06-14','NorthAmerica',0,10.0,25000.0,0,'15daysNotice','NonRenewable','0','EPUB','PlatformY','Limited rights');
INSERT INTO digital_content_license_agreement VALUES (8003,1503,1003,2003,'Broadcast','2025-03-01','2030-02-28','Europe',1,5.0,40000.0,1,'45daysNotice','Renewable','1','MPEG','PlatformZ','Extended distribution');