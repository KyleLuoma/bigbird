-- Table describing calibration curves for analytical instruments
CREATE TABLE analytical_calibration_curve (
    curve_id TEXT NOT NULL,
    instrument_id TEXT,
    analyst_name TEXT,
    calibration_date DATE,
    temperature_c REAL,
    pressure_kpa REAL,
    solvent TEXT,
    concentration_low REAL,
    concentration_high REAL,
    regression_type TEXT,
    slope REAL,
    intercept REAL,
    r_squared REAL,
    units TEXT,
    detection_limit REAL,
    quant_limit REAL,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT,
    PRIMARY KEY (curve_id)
);
INSERT INTO analytical_calibration_curve VALUES ('C001','INST01','Alice','2024-01-15',25.0,101.3,'Water',0.1,10.0,'Linear',0.998,0.015,0.999,'mg/L',0.01,0.05,'Initial calibration','2024-01-16 09:00:00','2024-01-16 09:00:00','Active');
INSERT INTO analytical_calibration_curve VALUES ('C002','INST02','Bob','2024-02-20',22.5,100.8,'Acetonitrile',0.05,5.0,'Quadratic',1.102,0.002,0.995,'µg/mL',0.005,0.02,'Quarterly check','2024-02-21 10:15:00','2024-02-21 10:15:00','Active');
INSERT INTO analytical_calibration_curve VALUES ('C003','INST03','Carol','2024-03-05',24.0,101.0,'Methanol',0.2,8.0,'Linear',0.987,0.020,0.997,'ppm',0.015,0.07,'Post‑maintenance','2024-03-06 08:45:00','2024-03-06 08:45:00','Pending');

-- Log of routine maintenance activities for laboratory instruments
CREATE TABLE instrument_maintenance_log (
    maintenance_id TEXT NOT NULL,
    instrument_id TEXT,
    technician_name TEXT,
    maintenance_date DATE,
    start_time TIME,
    end_time TIME,
    maintenance_type TEXT,
    parts_replaced TEXT,
    service_vendor TEXT,
    cost_usd REAL,
    downtime_minutes INTEGER,
    status TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    approval_code TEXT,
    next_scheduled DATE,
    location TEXT,
    serial_number TEXT,
    warranty_expiry DATE,
    PRIMARY KEY (maintenance_id)
);
INSERT INTO instrument_maintenance_log VALUES ('M001','INST01','Dave','2024-01-10','08:00:00','10:30:00','Preventive','Seal,Filter','VendorA',250.00,150,'Completed','Routine filter change','2024-01-10 11:00:00','2024-01-10 11:00:00','AP001','2024-07-10','LabA','SN1001','2026-01-01');
INSERT INTO instrument_maintenance_log VALUES ('M002','INST02','Eve','2024-02-12','13:00:00','15:45:00','Corrective','Pump','VendorB',480.00,165,'Completed','Pump failure replacement','2024-02-12 16:00:00','2024-02-12 16:00:00','AP002','2024-08-12','LabB','SN2002','2027-02-15');
INSERT INTO instrument_maintenance_log VALUES ('M003','INST03','Frank','2024-03-18','09:30:00','12:00:00','Inspection','None','InHouse',0.00,150,'Completed','Annual inspection','2024-03-18 12:30:00','2024-03-18 12:30:00','AP003','2025-03-18','LabC','SN3003','2025-12-31');

-- Continuous environmental monitoring data from lab sensors
CREATE TABLE lab_environment_monitor (
    record_id TEXT NOT NULL,
    sensor_id TEXT,
    measurement_timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    pressure_kpa REAL,
    co2_ppm REAL,
    voc_ppb REAL,
    particulate_pm25 REAL,
    particulate_pm10 REAL,
    noise_db REAL,
    light_lux REAL,
    sensor_status TEXT,
    battery_voltage REAL,
    firmware_version TEXT,
    location TEXT,
    calibration_date DATE,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    PRIMARY KEY (record_id)
);
INSERT INTO lab_environment_monitor VALUES ('E001','SEN01','2024-04-01 08:00:00',22.4,45.2,101.5,420.0,150.0,12.5,20.1,55.0,300.0,'OK',3.7,'v1.2','LabA','2023-12-01','Normal operation','2024-04-01 08:05:00','2024-04-01 08:05:00');
INSERT INTO lab_environment_monitor VALUES ('E002','SEN02','2024-04-01 08:05:00',23.0,44.8,101.3,410.0,148.0,13.0,21.0,56.0,310.0','OK',3.6,'v1.2','LabB','2023-12-05','Normal operation','2024-04-01 08:10:00','2024-04-01 08:10:00');
INSERT INTO lab_environment_monitor VALUES ('E003','SEN03','2024-04-01 08:10:00',22.8,45.0,101.4,415.0,149.0,12.8,20.5,55.5,305.0','OK',3.7,'v1.2','LabC','2023-12-10','Normal operation','2024-04-01 08:15:00','2024-04-01 08:15:00');

-- Records of periodic chemical safety reviews
CREATE TABLE chemical_safety_review_record (
    review_id TEXT NOT NULL,
    chemical_id TEXT,
    reviewer_name TEXT,
    review_date DATE,
    hazard_class TEXT,
    storage_requirements TEXT,
    handling_instructions TEXT,
    personal_protective_equipment TEXT,
    spill_response TEXT,
    fire_fight_procedures TEXT,
    waste_disposal_method TEXT,
    exposure_limits_ppm REAL,
    odour_threshold TEXT,
    incompatibilities TEXT,
    regulatory_status TEXT,
    comments TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT,
    PRIMARY KEY (review_id)
);
INSERT INTO chemical_safety_review_record VALUES ('R001','CHEM001','Grace','2024-01-20','Flammable','CoolDry','UseVentilation','GlovesGoggles','AbsorbWithSand','CO2Extinguish','DiluteInWater',10.0,'Low','Acid','Approved','Reviewed for new storage','2024-01-21 09:00:00','2024-01-21 09:00:00','Complete');
INSERT INTO chemical_safety_review_record VALUES ('R002','CHEM002','Heidi','2024-02-15','Corrosive','Refrigerated','UseProtectiveClothing','GlovesFaceShield','NeutralizeWithBase','WaterMist','Neutralization','5.0','Medium','Base','Pending','Pending regulatory update','2024-02-16 10:30:00','2024-02-16 10:30:00','InProgress');
INSERT INTO chemical_safety_review_record VALUES ('R003','CHEM003','Ivan','2024-03-10','Toxic','SegregatedCabinet','NoOpenFlame','RespiratorGloves','ContainAndVent','CO2Extinguish','Incineration',0.5,'None','Oxidizer','Approved','Safety data confirmed','2024-03-11 11:45:00','2024-03-11 11:45:00','Complete');

-- Tracking of sample shipments between facilities
CREATE TABLE sample_shipment_tracking (
    shipment_id TEXT NOT NULL,
    sender_facility TEXT,
    receiver_facility TEXT,
    sample_type TEXT,
    container_type TEXT,
    quantity INTEGER,
    weight_kg REAL,
    ship_date DATE,
    expected_arrival DATE,
    carrier_name TEXT,
    tracking_number TEXT,
    temperature_control TEXT,
    humidity_control TEXT,
    special_handling TEXT,
    customs_declaration TEXT,
    comments TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT,
    inspector_name TEXT,
    PRIMARY KEY (shipment_id)
);
INSERT INTO sample_shipment_tracking VALUES ('S001','LabA','LabB','Blood','Cryovial',20,2.5,'2024-04-01','2024-04-03','FastShip','TRK12345','-80C','Low','IcePack','Yes','Handled with care','2024-04-01 07:00:00','2024-04-01 07:00:00','InTransit','Laura');
INSERT INTO sample_shipment_tracking VALUES ('S002','LabC','LabD','Tissue','Box',15,3.0,'2024-04-02','2024-04-04','BioLogistics','TRK67890','4C','Medium','ShockAbsorb','No','Standard shipment','2024-04-02 08:30:00','2024-04-02 08:30:00','InTransit','Mike');
INSERT INTO sample_shipment_tracking VALUES ('S003','LabE','LabF','Serum','Vial',30,4.2,'2024-04-03','2024-04-05','ColdChain','TRK54321','-20C','Low','DryIce','Yes','Urgent delivery','2024-04-03 09:15:00','2024-04-03 09:15:00','InTransit','Nina');

-- Detailed entries for computational job queue
CREATE TABLE computational_job_queue_detail (
    job_queue_id TEXT NOT NULL,
    job_name TEXT,
    submitter TEXT,
    submission_timestamp DATETIME,
    priority INTEGER,
    required_cpus INTEGER,
    required_memory_gb REAL,
    required_gpu INTEGER,
    estimated_runtime_minutes INTEGER,
    queue_name TEXT,
    node_allocation TEXT,
    status TEXT,
    start_timestamp DATETIME,
    end_timestamp DATETIME,
    exit_code INTEGER,
    log_path TEXT,
    cpu_time_seconds REAL,
    memory_used_gb REAL,
    gpu_time_seconds REAL,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    PRIMARY KEY (job_queue_id)
);
INSERT INTO computational_job_queue_detail VALUES ('Q001','MolecularSim','Olivia','2024-04-01 06:00:00',1,32,128.0,2,720,'highmem','node12','Running','2024-04-01 06:05:00',NULL,NULL,'/logs/Q001.log',NULL,NULL,NULL,'Simulation of protein folding','2024-04-01 06:00:10','2024-04-01 06:00:10');
INSERT INTO computational_job_queue_detail VALUES ('Q002','DataPrep','Peter','2024-04-01 07:15:00',2,8,32.0,0,120,'default','node5','Queued',NULL,NULL,NULL,'/logs/Q002.log',NULL,NULL,NULL,'Pre‑processing raw spectra','2024-04-01 07:15:05','2024-04-01 07:15:05');
INSERT INTO computational_job_queue_detail VALUES ('Q003','ImageRender','Quinn','2024-04-01 08:30:00',3,16,64.0,1,300,'gpu','node9','Running','2024-04-01 08:35:00',NULL,NULL,'/logs/Q003.log',NULL,NULL,NULL,'Rendering 3D molecular graphics','2024-04-01 08:30:10','2024-04-01 08:30:10');

-- Records of waste disposal events
CREATE TABLE waste_disposal_event (
    event_id TEXT NOT NULL,
    waste_type TEXT,
    container_id TEXT,
    quantity_liters REAL,
    disposal_method TEXT,
    disposal_date DATE,
    contractor_name TEXT,
    permit_number TEXT,
    environmental_impact TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT,
    inspected_by TEXT,
    inspection_date DATE,
    clearance_code TEXT,
    location TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    PRIMARY KEY (event_id)
);
INSERT INTO waste_disposal_event VALUES ('W001','Solvent','CONT001',15.2,'Incineration','2024-03-28','EcoDispose','PERM123','Low','Disposed according to SOP','2024-03-28 10:00:00','2024-03-28 10:00:00','Complete','Sam','2024-03-28','CLR001','LabA',22.0,45.0);
INSERT INTO waste_disposal_event VALUES ('W002','Biological','CONT002',8.5,'Autoclave','2024-04-02','BioSafe','PERM456','Medium','Biohazard waste processed','2024-04-02 11:30:00','2024-04-02 11:30:00','Complete','Tara','2024-04-02','CLR002','LabB',23.5,50.0);
INSERT INTO waste_disposal_event VALUES ('W003','HeavyMetal','CONT003',5.0,'SecureLandfill','2024-04-05','HazardClear','PERM789','High','Special handling required','2024-04-05 09:15:00','2024-04-05 09:15:00','Pending','Uma','2024-04-05','CLR003','LabC',21.0,48.0);

-- Log of equipment‑specific training sessions
CREATE TABLE equipment_training_record (
    training_id TEXT NOT NULL,
    equipment_id TEXT,
    trainer_name TEXT,
    trainee_name TEXT,
    training_date DATE,
    duration_minutes INTEGER,
    certification_code TEXT,
    training_mode TEXT,
    assessment_score REAL,
    passed BOOLEAN,
    comments TEXT,
    location TEXT,
    training_materials TEXT,
    equipment_status_before TEXT,
    equipment_status_after TEXT,
    safety_checklist TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT,
    reviewer_name TEXT,
    PRIMARY KEY (training_id)
);
INSERT INTO equipment_training_record VALUES ('T001','INST01','Victor','Wendy','2024-03-01',90,'CERT001','InPerson',95.0,1,'Excellent grasp','LabA','ManualV1','Operational','Operational','Yes','2024-03-01 14:00:00','2024-03-01 14:00:00','Complete','Xavier');
INSERT INTO equipment_training_record VALUES ('T002','INST02','Yara','Zack','2024-03-15',120,'CERT002','Online',88.5,1,'Good understanding','LabB','GuideV2','Operational','Operational','Yes','2024-03-15 09:30:00','2024-03-15 09:30:00','Complete','Yara');
INSERT INTO equipment_training_record VALUES ('T003','INST03','Aaron','Beth','2024-04-05',60,'CERT003','InPerson',72.0,0,'Needs retraining','LabC','QuickStart','Operational','Operational','No','2024-04-05 13:45:00','2024-04-05 13:45:00','Pending','Aaron');

-- Registry of raw data files generated by instruments
CREATE TABLE raw_data_file_registry (
    file_id TEXT NOT NULL,
    instrument_id TEXT,
    acquisition_datetime DATETIME,
    file_name TEXT,
    file_type TEXT,
    file_size_mb REAL,
    checksum TEXT,
    operator_name TEXT,
    storage_path TEXT,
    retention_policy_days INTEGER,
    access_level TEXT,
    data_quality_flag TEXT,
    processing_status TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT,
    project_code TEXT,
    experiment_id TEXT,
    PRIMARY KEY (file_id)
);
INSERT INTO raw_data_file_registry VALUES ('F001','INST01','2024-04-01 08:00:00','run001.raw','RAW',250.5,'ABC123DEF','Alice','/data/raw/run001.raw',365,'Research','Pass','Pending','Initial capture','2024-04-01 08:05:00','2024-04-01 08:05:00','Active','PRJ001','EXP001');
INSERT INTO raw_data_file_registry VALUES ('F002','INST02','2024-04-01 09:30:00','run002.raw','RAW',300.0,'DEF456GHI','Bob','/data/raw/run002.raw',365,'Research','Pass','Pending','Initial capture','2024-04-01 09:35:00','2024-04-01 09:35:00','Active','PRJ002','EXP002');
INSERT INTO raw_data_file_registry VALUES ('F003','INST03','2024-04-01 11:15:00','run003.raw','RAW',180.2,'GHI789JKL','Carol','/data/raw/run003.raw',365,'Research','Pass','Pending','Initial capture','2024-04-01 11:20:00','2024-04-01 11:20:00','Active','PRJ003','EXP003');

-- Metadata for research collaboration agreements
CREATE TABLE research_collaboration_agreement_meta (
    agreement_id TEXT NOT NULL,
    primary_institution TEXT,
    partner_institution TEXT,
    project_title TEXT,
    start_date DATE,
    end_date DATE,
    funding_amount_usd REAL,
    funding_agency TEXT,
    data_sharing_policy TEXT,
    intellectual_property_clause TEXT,
    confidentiality_level TEXT,
    responsible_pi TEXT,
    partner_pi TEXT,
    agreement_status TEXT,
    signed_date DATE,
    amendment_number INTEGER,
    key_milestones TEXT,
    reporting_frequency TEXT,
    contact_email TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    PRIMARY KEY (agreement_id)
);
INSERT INTO research_collaboration_agreement_meta VALUES ('A001','UniversityX','InstituteY','Nanomaterial Synthesis','2024-01-01','2026-12-31',500000,'AgencyZ','Open','Joint','High','DrSmith','DrJones','Active','2024-01-15',0,'Milestone1;Milestone2','Quarterly','smith@univx.edu','Initial agreement','2024-01-01 10:00:00','2024-01-01 10:00:00');
INSERT INTO research_collaboration_agreement_meta VALUES ('A002','UniversityA','CompanyB','Clinical Trial Phase II','2024-03-01','2027-02-28',2000000,'HealthFund','Restricted','Exclusive','Medium','DrLee','DrKim','Pending','2024-03-10',0,'PhaseIIStart;MidpointReview','Monthly','lee@univa.edu','Awaiting signatures','2024-03-01 09:30:00','2024-03-01 09:30:00');
INSERT INTO research_collaboration_agreement_meta VALUES ('A003','InstituteM','UniversityN','Environmental Impact Study','2024-02-15','2025-02-14',750000,'EnvAgency','Open','Joint','Low','DrPatel','DrGomez','Active','2024-02-20',1,'SiteSurvey;DataAnalysis','Biannual','patel@instm.org','Amended once','2024-02-15 11:00:00','2024-02-15 11:00:00');