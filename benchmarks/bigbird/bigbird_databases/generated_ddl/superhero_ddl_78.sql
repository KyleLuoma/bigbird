-- Research Grant Funding details
CREATE TABLE research_grant_fund
(
    grant_id               INTEGER NOT NULL PRIMARY KEY,
    grant_name             TEXT,
    funding_agency         TEXT,
    program_category       TEXT,
    fiscal_year            INTEGER,
    total_amount_usd       REAL,
    awarded_date           TEXT,
    start_date             TEXT,
    end_date               TEXT,
    principal_investigator TEXT,
    institution_name       TEXT,
    department             TEXT,
    project_summary        TEXT,
    eligibility_criteria   TEXT,
    reporting_requirements TEXT,
    award_status           TEXT,
    review_score           INTEGER,
    currency_code          TEXT,
    exchange_rate_to_usd   REAL,
    matching_funds_usd     REAL,
    indirect_cost_rate_pct INTEGER,
    grant_type             TEXT,
    collaboration_flag     TEXT
);

INSERT INTO research_grant_fund VALUES
(1,'Quantum Computing Initiative','National Science Fund','Technology',2023,2500000.00,'2023-02-15','2023-04-01','2028-03-31','Dr Alice Smith','Nova University','Physics','Develop quantum algorithms for optimization','Open to fulltime faculty','Annual report','Active',92,'USD',1.0,500000,15,'Federal','Yes');

INSERT INTO research_grant_fund VALUES
(2,'Renewable Energy Pilot','Green Energy Agency','Environment',2022,1500000.00,'2022-06-20','2022-07-01','2025-06-30','Dr Bob Lee','EcoTech Institute','Engineering','Pilot solar microgrids in rural areas','Nonprofit only','Semiannual report','Completed',88,'USD',1.0,300000,12,'State','No');

INSERT INTO research_grant_fund VALUES
(3,'Astrobiology Survey','Space Exploration Board','Science',2024,3200000.00,'2024-01-10','2024-03-01','2029-02-28','Dr Carol Nguyen','Stellar University','Biology','Survey microbial life on exoplanets','University researchers','Quarterly report','Pending',0,'USD',1.0,0,10,'International','Yes');

-- Interstellar Navigation Aid data
CREATE TABLE interstellar_navigation_aid
(
    aid_id                INTEGER NOT NULL PRIMARY KEY,
    aid_name              TEXT,
    manufacturer          TEXT,
    model_number          TEXT,
    launch_date           TEXT,
    operational_status    TEXT,
    max_range_ly          REAL,
    accuracy_meters       REAL,
    power_source          TEXT,
    fuel_capacity_liters  REAL,
    current_fuel_liters   REAL,
    software_version      TEXT,
    calibration_date      TEXT,
    last_maintenance_date TEXT,
    crew_required         INTEGER,
    weight_kg             REAL,
    dimensions_cm         TEXT,
    warranty_years        INTEGER,
    certification_body    TEXT,
    cost_usd              REAL,
    compliance_flag       TEXT,
    decommission_date     TEXT,
    notes                 TEXT,
    orbital_slot          TEXT,
    redundancy_level      TEXT,
    signal_bandwidth_mhz  REAL
);

INSERT INTO interstellar_navigation_aid VALUES
(101,'StarMap Pro','Celestial Devices','SM-P200','2021-09-12','Operational',1500.0,5.0,'Fusion','5000','4200','v3.4','2023-05-01','2024-01-15',2,1200.5,'200x120x80',5,'Interstellar Authority',2500000.00,'Yes',NULL,'High precision unit','A12','Triple',12.5);

INSERT INTO interstellar_navigation_aid VALUES
(102,'Nebula Guide','Orbitrix','NG-X100','2020-03-05','Maintenance',800.0,10.0,'Antimatter','3000','1500','v2.9','2022-11-20','2023-12-01',1,950.0,'150x100x70',3,'Space Standards Org',1800000.00,'No','2028-07-30','Requires firmware update','B07','Dual',8.0);

INSERT INTO interstellar_navigation_aid VALUES
(103,'Galaxy Compass','Quantum Nav','GC-Alpha','2022-07-19','Operational',2500.0,2.5,'Solar','6000','5900','v4.1','2024-02-10','2024-08-05',3,1350.0,'210x130x90',7,'Universal Nav Council',3200000.00,'Yes',NULL,'Experimental sensor','C03','Quad',15.2);

-- Bioengineered Crop Catalog
CREATE TABLE bioengineered_crop_catalog
(
    crop_id                INTEGER NOT NULL PRIMARY KEY,
    crop_name              TEXT,
    scientific_name        TEXT,
    genetic_modification   TEXT,
    yield_tons_per_ha      REAL,
    drought_tolerance_score INTEGER,
    pest_resistance_level  TEXT,
    growth_cycle_days      INTEGER,
    planting_season        TEXT,
    harvest_season         TEXT,
    average_market_price_usd_per_ton REAL,
    region_adapted         TEXT,
    farmer_support_program TEXT,
    approval_status        TEXT,
    registration_date      TEXT,
    seed_company           TEXT,
    seed_cost_usd_per_kg   REAL,
    soil_type_preference   TEXT,
    irrigation_requirement TEXT,
    nitrogen_requirement_kg_per_ha REAL,
    carbon_footprint_kg_per_ton REAL,
    biotech_company        TEXT,
    patent_number          TEXT,
    export_restriction     TEXT,
    GMO_label_required     TEXT,
    sustainability_rating  INTEGER,
    storage_lifespan_months INTEGER,
    processing_method      TEXT,
    regulatory_agency      TEXT,
    notes                  TEXT
);

INSERT INTO bioengineered_crop_catalog VALUES
(1001,'Solar Wheat','Triticum aestivum','CRISPR drought gene','8.5',9,'High',120,'Spring','Fall',350.0,'Midwest','FarmAid','Approved','2021-04-15','AgriSeed Co',2.5,'Loam','Medium',80,1.2,'GeneTech Inc','US123456','None','Yes',85,24,'Milling','USDA','High yield variety');

INSERT INTO bioengineered_crop_catalog VALUES
(1002,'Blue Corn','Zea mays','Bt toxin insertion','6.0',7,'Medium',95,'Summer','Winter',280.0,'Southwest','CropGuard','Approved','2020-09-10','CornGen Labs',3.0,'Sandy','Low',60,0.9,'BioCrop Ltd','US654321','Limited','Yes',78,18,'Processing','EPA','Resistant to beetles');

INSERT INTO bioengineered_crop_catalog VALUES
(1003,'Golden Rice','Oryza sativa','Beta-carotene pathway','5.2',8,'Low',130,'Monsoon','Dry',150.0,'Southeast Asia','HealthHarvest','Pending','2023-01-20','RiceBio Corp',1.8,'Clay','High',70,0.7,'NutriGen','US789012','Restricted','No',70,30,'Polishing','FAO','Vitamin A enriched');

-- Quantum Device Inventory
CREATE TABLE quantum_device_inventory
(
    device_id               INTEGER NOT NULL PRIMARY KEY,
    device_name             TEXT,
    manufacturer            TEXT,
    model_number            TEXT,
    qubit_count             INTEGER,
    coherence_time_us       REAL,
    operating_temperature_mk REAL,
    control_electronics     TEXT,
    firmware_version        TEXT,
    purchase_date           TEXT,
    warranty_end_date       TEXT,
    location_building       TEXT,
    location_floor          INTEGER,
    location_room           TEXT,
    calibration_status      TEXT,
    last_calibration_date   TEXT,
    maintenance_contract    TEXT,
    maintenance_contact     TEXT,
    operating_status        TEXT,
    power_consumption_w     REAL,
    weight_kg               REAL,
    dimensions_cm           TEXT,
    cost_usd                REAL,
    depreciation_years      INTEGER,
    assigned_researcher_id  INTEGER,
    notes                   TEXT,
    shielding_type          TEXT,
    cryogenic_system_type   TEXT,
    uptime_percentage       REAL,
    regulatory_compliance   TEXT
);

INSERT INTO quantum_device_inventory VALUES
(5001,'QubitX 128','Quantum Labs','QX-128',128,150.0,15.0,'RF Control','v1.2','2022-05-01','2025-05-01','Science Center',2,'LabA','Calibrated','2024-03-10','Full Service','TechSupport','Operational',1200.0,85.0,'150x80x60',750000.00,5,21,'No anomalies','Mu-metal','Dilution Refrigerator',99.5,'ISO9001');

INSERT INTO quantum_device_inventory VALUES
(5002,'EntanglePro 64','EntangleTech','EP-64',64,200.0,10.0,'Optical Control','v2.0','2021-11-15','2024-11-15','Physics Dept',3,'Room5','Pending','2023-12-01','Extended','LabManager','Operational',950.0,60.0,'130x70x55',500000.00,4,34,'Requires occasional tuning','Superconducting','Closed Cycle Cryocooler',97.8,'ISO27001');

INSERT INTO quantum_device_inventory VALUES
(5003,'Quantum Cube 32','QuantaSystems','QC-32',32,120.0,20.0,'Microwave Control','v1.5','2023-02-20','2026-02-20','Engineering Lab',1,'Bench2','Calibrated','2024-06-05','Standard','Facilities','Standby',800.0,45.0,'110x60x50',300000.00,3,12,'In testing phase','Aluminum','Pulse Tube',95.0,'ISO14001');

-- Alien Artifact Exhibit Records
CREATE TABLE alien_artifact_exhibit
(
    exhibit_id                INTEGER NOT NULL PRIMARY KEY,
    artifact_name             TEXT,
    origin_planet             TEXT,
    discovery_date            TEXT,
    curator_name              TEXT,
    exhibit_start_date        TEXT,
    exhibit_end_date          TEXT,
    display_location          TEXT,
    preservation_method       TEXT,
    material_composition      TEXT,
    estimated_age_years       INTEGER,
    cultural_significance     TEXT,
    security_level            TEXT,
    insurance_value_usd       REAL,
    loan_status               TEXT,
    donor_institution         TEXT,
    accession_number          TEXT,
    dimensions_cm             TEXT,
    weight_kg                 REAL,
    condition_report          TEXT,
    restoration_notes         TEXT,
    audio_guide_available     TEXT,
    interactive_display       TEXT,
    lighting_requirements     TEXT,
    humidity_control_percent REAL,
    temperature_control_c    REAL,
    visitor_capacity_daily    INTEGER,
    ticket_price_usd          REAL,
    sponsor_name              TEXT,
    exhibition_theme          TEXT,
    notes                     TEXT
);

INSERT INTO alien_artifact_exhibit VALUES
(2001,'Obsidian Sphere','Zyra Prime','2019-08-12','Dr Helena Ortiz','2024-03-01','2024-09-30','Hall A','Encapsulation','Silicate Composite',5000,'Ritualistic', 'High',2500000.00,'On Loan','Galactic Museum','GA-ZX-001','30x30x30',15.0,'Excellent','No restoration needed','Yes','Touchscreen','Low UV','45.0',22.0,500,12.5,'Universal Corp','Mysteries of the Cosmos','Featured centerpiece');

INSERT INTO alien_artifact_exhibit VALUES
(2002,'Lumina Tablet','Epsilon Eridani','2021-05-23','Dr Marco Liu','2024-04-15','2024-10-15','Hall B','Climate Controlled','Crystaline Matrix',1200,'Communication Device','Medium',1200000.00,'Owned','Interstellar Archives','IA-EE-042','20x10x5',2.5,'Good','Minor surface etching','Yes','Audio guide','Soft LED','40.0',20.0,300,10.0,'StarTech','Ancient Signals','Interactive display installed');

INSERT INTO alien_artifact_exhibit VALUES
(2003,'Bronze Coin','Vulcan IV','2020-11-02','Dr Aisha Khan','2024-05-10','2024-11-10','Hall C','Vacuum Sealing','Alloy Bronze',300,'Trade Currency','Low',800000.00,'Returned','Planetary Heritage','PH-V4-777','5x5x0.2',0.03,'Fair','Cleaning and polishing completed','No','No','Spotlight','35.0',18.0,200,8.0,'Heritage Trust','Economic Relics','Limited handling');

-- Renewable Energy Project Log
CREATE TABLE renewable_energy_project
(
    project_id                INTEGER NOT NULL PRIMARY KEY,
    project_name              TEXT,
    project_type              TEXT,
    developer_company         TEXT,
    start_date                TEXT,
    completion_date           TEXT,
    status                    TEXT,
    location_city             TEXT,
    location_state            TEXT,
    capacity_mw               REAL,
    technology_used           TEXT,
    total_investment_usd      REAL,
    financing_source          TEXT,
    expected_annual_output_mwh REAL,
    carbon_savings_tons_per_year INTEGER,
    land_area_hectares        REAL,
    grid_connection_point     TEXT,
    permits_obtained          TEXT,
    environmental_impact_score INTEGER,
    community_benefits        TEXT,
    power_purchase_agreement  TEXT,
    operation_and_maintenance_contract TEXT,
    contractor_name           TEXT,
    risk_assessment_level     TEXT,
    monitoring_system_vendor  TEXT,
    performance_ratio_percent REAL,
    decommission_date         TEXT,
    lessons_learned           TEXT,
    stakeholder_engagement    TEXT,
    regulatory_body           TEXT,
    notes                     TEXT
);

INSERT INTO renewable_energy_project VALUES
(3001,'Sunrise Solar Farm','Solar','SunPower Ltd','2022-01-15','2024-07-30','Operational','Arlington','TX',150.0,'Photovoltaic','75000000','Equity','180000','25000',1200.0,'TX Grid Node A','All','85','Local job creation','PPA with TX Utility','5-year O&M with GreenOps','SolarBuild Inc','Medium','EcoMonitor','95','2030-12-31','Scale up panel efficiency','Public meetings held','ERCOT','First large-scale solar project in region');

INSERT INTO renewable_energy_project VALUES
(3002,'Wind Ridge Turbines','Wind','WindWorks Corp','2021-03-01','2023-11-15','Operational','Boulder','CO',80.0,'Horizontal Axis','62000000','Debt','140000','18000',900.0,'CO Grid Hub B','All','90','Community fund for schools','PPA with CO Energy','10-year O&M with WindServe','WindConstruct Ltd','Low','WindWatch','92','2035-06-30','Improved blade design reduced noise','Stakeholder workshops conducted','CISO','Second wind farm in state');

INSERT INTO renewable_energy_project VALUES
(3003,'RiverFlow Hydro','Hydro','AquaPower','2023-06-10','2026-02-20','Construction','Madison','WI',45.0,'Run-of-river','98000000','Public Grant','90000','12000',350.0,'WI Transmission Node C','Pending','70','Recreation area upgrades','PPA with WI Power','7-year O&M with HydroMaintain','RiverTech','High','HydroSense','88','2040-08-15','Awaiting final environmental clearance','Engaged local iwi groups','DNR','First hydro project on river X');

-- Metahuman Psych Assessment Records
CREATE TABLE metahuman_psych_assessment
(
    assessment_id               INTEGER NOT NULL PRIMARY KEY,
    metahuman_id                INTEGER,
    assessment_date             TEXT,
    assessor_name               TEXT,
    cognitive_score             INTEGER,
    emotional_resilience_score  INTEGER,
    stress_tolerance_score      INTEGER,
    empathy_index               INTEGER,
    aggression_level            TEXT,
    impulse_control_score       INTEGER,
    risk_factors                TEXT,
    coping_mechanisms           TEXT,
    personality_type            TEXT,
    trauma_history              TEXT,
    medication_status           TEXT,
    recent_incident_flag        TEXT,
    recommended_interventions   TEXT,
    follow_up_date              TEXT,
    notes                       TEXT,
    confidentiality_level       TEXT,
    approval_status             TEXT,
    supervisor_id               INTEGER,
    assessment_version          TEXT,
    duration_minutes            INTEGER,
    location_facility           TEXT,
    equipment_used              TEXT,
    scoring_methodology         TEXT,
    overall_rating              TEXT,
    next_assessment_due         TEXT,
    external_reviewer           TEXT,
    audit_trail                 TEXT
);

INSERT INTO metahuman_psych_assessment VALUES
(4001,12,'2024-02-14','Dr Elena Vega',88,92,85,90,'Low',94,'None','Mindfulness','ENFJ','None','None','No','Cognitive training','2024-08-14','Stable','High','Approved',5,'v1.0',60,'Metahuman Clinic','NeuroScanner','Standardized','Excellent','2025-02-14','Dr Ryan Holt','Created on 2024-02-14');

INSERT INTO metahuman_psych_assessment VALUES
(4002,27,'2024-03-01','Dr Marcus Lee',75,68,70,65,'Medium',72,'Prior combat exposure','Physical exercise','ISTP','Combat injury','Yes','Yes','Therapy sessions','2024-09-01','Improving','Medium','Pending',8,'v1.1',45,'Psych Lab','EEG','Custom','Good','2025-03-01','Dr Susan Park','Created on 2024-03-01');

INSERT INTO metahuman_psych_assessment VALUES
(4003,33,'2024-01-20','Dr Priya Nair',95,98,93,96,'Low',97,'None','Meditation','INFJ','None','None','No','Advanced resilience program','2024-07-20','Exceptional','High','Approved',3,'v1.0',70,'Holistic Center','fMRI','Standardized','Outstanding','2025-01-20','Dr Alan Chen','Created on 2024-01-20');

-- Cosmic Weather Alert Log
CREATE TABLE cosmic_weather_alert
(
    alert_id                  INTEGER NOT NULL PRIMARY KEY,
    alert_type                TEXT,
    observed_region           TEXT,
    start_time_utc            TEXT,
    end_time_utc              TEXT,
    severity_level            TEXT,
    description               TEXT,
    recommended_action        TEXT,
    issuing_agency            TEXT,
    notification_channels     TEXT,
    affected_systems          TEXT,
    solar_flare_intensity     REAL,
    radiation_level_sieverts  REAL,
    magnetic_storm_index      INTEGER,
    particle_flux_rate        REAL,
    alert_status              TEXT,
    verification_timestamp    TEXT,
    follow_up_instructions    TEXT,
    archive_reference         TEXT,
    created_by_user           TEXT,
    last_modified_timestamp   TEXT,
    related_event_id          INTEGER,
    data_source               TEXT,
    confidence_score_percent  REAL,
    escalation_procedure      TEXT,
    public_advisory_url       TEXT,
    internal_notes            TEXT,
    distribution_list         TEXT,
    geo_fencing_coordinates   TEXT,
    response_team_assigned    TEXT,
    additional_resources_url  TEXT
);

INSERT INTO cosmic_weather_alert VALUES
(6001,'Solar Flare','Sector 7G','2024-04-10T08:00:00Z','2024-04-10T12:00:00Z','High','Class X solar flare detected','Suspend satellite operations','Space Weather Agency','Email;SMS','SatCom;GPS','9.5',0.03,75,1200.0,'Active','2024-04-10T08:05:00Z','Implement backup protocols','SW-2024-0401','jdoe','2024-04-10T09:00:00Z',45,'Solar Observatory','92','Notify regional centers','https://swa.gov/alert/6001','Monitor radiation levels','ops@swa.gov','Polygon(10,20;15,25;20,20)','Team Alpha','https://swa.gov/resources/solarflare');

INSERT INTO cosmic_weather_alert VALUES
(6002,'Radiation Storm','Alpha Quadrant','2024-03-22T14:30:00Z','2024-03-22T20:45:00Z','Medium','Elevated cosmic radiation detected','Limit extravehicular activities','Interstellar Safety Board','Radio;Web','Spacecraft','0.0',0.15,45,850.0,'Resolved','2024-03-22T14:35:00Z','Resume normal operations after clearance','ISB-2024-0322','asmith','2024-03-22T21:00:00Z',78,'Radiation Sensors','84','Escalate to mission control','https://isb.org/alert/6002','Crew advised to wear shielding','comm@isb.org','Circle(30,40;35,45)','Team Beta','https://isb.org/resources/radiation');

INSERT INTO cosmic_weather_alert VALUES
(6003,'Magnetic Disturbance','Nebula X','2024-02-15T05:00:00Z','2024-02-15T09:30:00Z','Low','Minor magnetic field fluctuation','No action required','Galactic Observatory','Email','Telescope Array','0.0',0.005,20,300.0,'Closed','2024-02-15T05:10:00Z','Continue monitoring','GO-2024-0215','bwayne','2024-02-15T10:00:00Z',102,'Magnetometers','98','Log in system','https://go.org/alert/6003','No further notes','admin@go.org','Ellipse(50,60;55,65)','Team Gamma','https://go.org/resources/magnetic');

-- Galactic Trade Tax Record
CREATE TABLE galactic_trade_tax_record
(
    tax_record_id            INTEGER NOT NULL PRIMARY KEY,
    fiscal_year              INTEGER,
    trade_route_id           INTEGER,
    exporting_planet         TEXT,
    importing_planet         TEXT,
    commodity_code           TEXT,
    commodity_description    TEXT,
    gross_value_usd          REAL,
    tax_rate_percent         REAL,
    tax_amount_usd           REAL,
    tariff_classification    TEXT,
    customs_office           TEXT,
    declared_by_agent        TEXT,
    declaration_date         TEXT,
    payment_due_date         TEXT,
    payment_status           TEXT,
    audit_flag               TEXT,
    auditor_name             TEXT,
    audit_date               TEXT,
    notes                    TEXT,
    exemption_status         TEXT,
    regulatory_body          TEXT,
    exchange_rate_to_usd     REAL,
    original_currency        TEXT,
    conversion_date          TEXT,
    dispute_flag             TEXT,
    dispute_resolution_date  TEXT,
    revised_tax_amount_usd   REAL,
    compliance_certificate   TEXT,
    filing_reference_number  TEXT,
    source_of_declaration    TEXT,
    last_updated_timestamp   TEXT,
    created_by_user          TEXT,
    verification_code        TEXT,
    tax_liability_category   TEXT,
    settlement_method        TEXT,
    settlement_date          TEXT,
    remarks                  TEXT
);

INSERT INTO galactic_trade_tax_record VALUES
(8001,2023,55,'Terra','Vulcan','C-101','Quantum Batteries',1250000.00,5.0,62500.00,'A','Terra Customs','Agent Liao','2023-11-10','2023-12-01','Paid','No','N/A','N/A','No issues','None','Interstellar Trade Authority',1.0,'USD','2023-11-10','No','N/A',0.0,'CERT-2023-8001','REF-8001','Export Declaration','2023-11-12T09:30:00Z','jdoe','VER-8001','Standard','Electronic','2024-01-05','All clear');

INSERT INTO galactic_trade_tax_record VALUES
(8002,2024,78,'Aqua','Xenon','M-202','Hydroponic Modules',750000.00,7.5,56250.00,'B','Aqua Customs','Agent Patel','2024-02-20','2024-03-15','Pending','Yes','Auditor Kim','2024-04-01','Discrepancy in declared weight','Partial','Interstellar Trade Authority',0.95,'EUR','2024-02-20','Yes','2024-04-10',60000.00,'CERT-2024-8002','REF-8002','Import Declaration','2024-02-22T14:00:00Z','asmith','VER-8002','Elevated','Bank Transfer','2024-05-01','Awaiting payment');

INSERT INTO galactic_trade_tax_record VALUES
(8003,2022,102,'Luna','Orion','S-303','Silicon Crystals',2000000.00,4.0,80000.00,'C','Luna Customs','Agent Zhou','2022-07-05','2022-07-30','Paid','No','N/A','N/A','All good','None','Interstellar Trade Authority',1.02,'USD','2022-07-05','No','N/A',0.0,'CERT-2022-8003','REF-8003','Export Declaration','2022-07-06T11:15:00Z','bwayne','VER-8003','Standard','Electronic','2022-09-01','Completed');

-- Virtual Reality Training Module Catalog
CREATE TABLE vr_training_module
(
    module_id                INTEGER NOT NULL PRIMARY KEY,
    module_name              TEXT,
    version_number           TEXT,
    developer_studio         TEXT,
    release_date             TEXT,
    supported_hardware       TEXT,
    max_players              INTEGER,
    average_session_length_min INTEGER,
    difficulty_rating        TEXT,
    training_focus_area      TEXT,
    scenario_description     TEXT,
    learning_objectives      TEXT,
    assessment_method        TEXT,
    certification_available  TEXT,
    prerequisite_module_id   INTEGER,
    language_supported       TEXT,
    localization_available   TEXT,
    bandwidth_requirement_mbps REAL,
    storage_requirement_gb   REAL,
    vr_label_compliance      TEXT,
    safety_guidelines_url    TEXT,
    feedback_collection_method TEXT,
    average_user_rating      REAL,
    total_downloads          INTEGER,
    last_update_timestamp    TEXT,
    maintenance_status       TEXT,
    support_contact_email    TEXT,
    licensing_model          TEXT,
    cost_per_license_usd     REAL,
    corporate_discount_percent INTEGER,
    enterprise_access        TEXT,
    analytics_enabled        TEXT,
    data_retention_days      INTEGER,
    compliance_audit_date    TEXT,
    auditor_name             TEXT,
    notes                    TEXT,
    subscription_required    TEXT,
    beta_test_phase          TEXT,
    end_of_life_date         TEXT,
    archive_location         TEXT
);

INSERT INTO vr_training_module VALUES
(9001,'Zero-G Navigation','1.2.0','OrbitSim Studios','2023-05-18','Oculus Rift;HTC Vive',4,45,'Intermediate','Spaceflight Maneuvering','Astronauts navigate a simulated zero‑gravity environment','Improve spatial awareness and thruster control','Performance metrics','Yes',NULL,'English','Yes',25.0,15.0,'VR‑A','https://orbitsim.com/safety','Post‑session survey',4.6,3200,'2024-03-01T10:00:00Z','Active','support@orbitsim.com','Subscription',199.99,15,'Yes','Enabled',90,'2024-02-15','Dr Elena Vega','Well received in training programs','Yes','Closed Beta','2026-12-31','Archive/ZeroGNav');

INSERT INTO vr_training_module VALUES
(9002,'Cybersecurity Breach Response','2.0','SecureTech Labs','2024-01-10','Valve Index',6,30,'Advanced','Incident Response','Simulated cyber‑attack scenarios for security teams','Identify breach vectors and containment steps','Scenario‑based quiz','No',9001,'English;Spanish','Yes',15.0,8.0,'VR‑B','https://securetech.com/safety','Embedded feedback','4.2',1500,'2024-06-15T14:30:00Z','Maintenance','help@securetech.com','Perpetual',0.00,0,'No','Enabled',120,'2024-05-20','Dr Marcus Lee','Updated with latest threat intel','No','Open','2025-12-31','Archive/CyberResponse');

INSERT INTO vr_training_module VALUES
(9003,'Medical Triage Simulation','3.1','HealthVR Corp','2022-11-05','PlayStation VR2',8,20,'Beginner','Emergency Medicine','Triage of multiple patients in disaster scenario','Prioritize care based on injury severity','Live scoring','Yes',NULL,'English;French','Yes',10.0,5.0,'VR‑C','https://healthvr.com/safety','Instant feedback form','4.8',5400,'2023-12-20T09:45:00Z','Active','support@healthvr.com','License per seat',149.99,10,'Yes','Enabled',180,'2023-10-10','Dr Priya Nair','Integrated into med school curricula','Yes','Beta Completed','2025-06-30','Archive/MedTriage');