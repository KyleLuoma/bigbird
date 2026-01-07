-- Interstellar cargo shipment records
CREATE TABLE interstellar_cargo_shipment (
    shipment_id INTEGER PRIMARY KEY,
    vessel_name TEXT,
    departure_port TEXT,
    arrival_port TEXT,
    cargo_type TEXT,
    cargo_weight_tons INTEGER,
    departure_date DATE,
    arrival_date DATE,
    captain_name TEXT,
    crew_count INTEGER,
    fuel_type TEXT,
    fuel_quantity_liters INTEGER,
    cargo_value_usd INTEGER,
    customs_status TEXT,
    insurance_policy TEXT,
    tracking_number TEXT,
    temperature_control INTEGER,
    humidity_control INTEGER,
    security_level TEXT,
    manifest_version INTEGER,
    notes TEXT,
    priority_level TEXT,
    weight_capacity_tons INTEGER
);

INSERT INTO interstellar_cargo_shipment VALUES (1,'SS Solaris','Earth Port','Mars Station','Minerals',1200,'2025-01-10','2025-01-20','John Doe',45,'Hydrogen',500000,'Cleared','POL12345','TRK001',1,0,'High',1,'First test shipment','Urgent',1500);
INSERT INTO interstellar_cargo_shipment VALUES (2,'MV Aurora','Luna Dock','Jupiter Outpost','Food Supplies',800,'2025-02-05','2025-02-12','Alice Smith',30,'Antimatter',300000,'Pending','POL67890','TRK002',1,1,'Medium',1,'Routine supply run','Standard',1000);
INSERT INTO interstellar_cargo_shipment VALUES (3,'CS Orion','Mars Station','Saturn Relay','Scientific Equipment',500,'2025-03-01','2025-03-15','Bob Lee',38,'Helium3',250000,'Cleared','POL54321','TRK003',0,0,'Low',1,'Research payload','LowPriority',800);


-- Galaxy observation log entries
CREATE TABLE galaxy_observation_log (
    observation_id INTEGER PRIMARY KEY,
    galaxy_name TEXT,
    observation_date DATE,
    telescope_name TEXT,
    instrument TEXT,
    exposure_seconds INTEGER,
    wavelength_nm INTEGER,
    magnitude REAL,
    redshift REAL,
    observer_name TEXT,
    data_quality_flag TEXT,
    calibration_version TEXT,
    processing_software TEXT,
    file_path TEXT,
    notes TEXT,
    seeing_arcsec REAL,
    airmass REAL,
    sky_brightness_mag_arcsec2 REAL,
    filter_band TEXT,
    observer_affiliation TEXT,
    observation_type TEXT,
    archive_status TEXT
);

INSERT INTO galaxy_observation_log VALUES (1,'Andromeda','2024-11-12','DeepSpaceScope','Spectrograph',3600,500,3.4,0.001,'Dr Keen','Good','v2.1','SpecProc','/data/andromeda_20241112.fits','Clear night','0.8','1.2','21.5','R','SpaceInstitute','Imaging','Archived');
INSERT INTO galaxy_observation_log VALUES (2,'Sombrero','2024-12-05','UltraVision','Imager',1200,650,9.2,0.003,'Dr Vega','Excellent','v3.0','ImgProc','/data/sombrero_20241205.fits','Low background','0.6','1.1','20.8','V','GalacticLab','Photometry','Archived');
INSERT INTO galaxy_observation_log VALUES (3,'Whirlpool','2025-01-20','QuantumEye','Polariscope',2400,700,8.7,0.0025,'Dr Nova','Fair','v1.9','PolProc','/data/whirlpool_20250120.fits','Slight cloud','1.0','1.4','22.0','B','AstroCenter','Spectroscopy','Pending');


-- Renewable energy farm performance metrics
CREATE TABLE renewable_energy_farm_metrics (
    farm_id INTEGER PRIMARY KEY,
    farm_name TEXT,
    location TEXT,
    install_date DATE,
    capacity_mw REAL,
    current_output_mw REAL,
    uptime_percentage REAL,
    average_daily_output_mwh REAL,
    total_energy_generated_mwh REAL,
    maintenance_cycle_days INTEGER,
    last_maintenance_date DATE,
    panel_type TEXT,
    inverter_model TEXT,
    weather_station_id INTEGER,
    avg_solar_irradiance_wm2 REAL,
    avg_wind_speed_ms REAL,
    temperature_celsius REAL,
    precipitation_mm REAL,
    grid_connection_status TEXT,
    reporting_period_start DATE,
    reporting_period_end DATE,
    notes TEXT,
    operator_contact TEXT,
    compliance_status TEXT
);

INSERT INTO renewable_energy_farm_metrics VALUES (1,'Solaris Dawn','Desert Plains','2022-03-15',150.5,145.2,98.5,3500.0,1025000,180,'2024-12-01','Monocrystalline','InvX200','WS1001',850.0,5.2,35.0,0.0,'Connected','2024-01-01','2024-12-31','Stable operation','John Manager','Compliant');
INSERT INTO renewable_energy_farm_metrics VALUES (2,'Windward Crest','Coastal Ridge','2021-07-20',80.0,78.5,96.0,1800.0,648000,120,'2024-11-15','N/A','InvW150','WS1002',N/A,12.5,22.0,10.0,'Connected','2024-01-01','2024-12-31','Minor turbine wear','Emily Supervisor','Compliant');
INSERT INTO renewable_energy_farm_metrics VALUES (3,'Hybrid Horizon','Mountain Valley','2023-01-10',200.0,190.0,97.0,4200.0,1260000,200,'2024-10-20','ThinFilm','InvH300','WS1003',900.0,8.0,15.0,2.5,'Connected','2024-01-01','2024-12-31','Battery storage optimization needed','Liu Engineer','Pending Review');


-- Nanotech manufacturing batch records
CREATE TABLE nanotech_manufacturing_batch (
    batch_id INTEGER PRIMARY KEY,
    product_name TEXT,
    batch_number TEXT,
    fabrication_date DATE,
    material_type TEXT,
    particle_size_nm REAL,
    quantity_units INTEGER,
    yield_percentage REAL,
    purity_percentage REAL,
    equipment_id TEXT,
    operator_name TEXT,
    shift INTEGER,
    temperature_celsius REAL,
    pressure_atm REAL,
    humidity_percent REAL,
    contamination_level_ppm REAL,
    qc_passed INTEGER,
    qc_inspector TEXT,
    storage_location TEXT,
    expiration_date DATE,
    safety_class TEXT,
    disposal_method TEXT,
    notes TEXT,
    regulatory_compliance TEXT,
    batch_cost_usd INTEGER
);

INSERT INTO nanotech_manufacturing_batch VALUES (1,'Carbon NanoTube','CNT-2024-001','2024-06-15','Carbon','10.5',50000,92.0,99.2,'EQ-01','Ana Patel',2,25.0,1.0,45.0,0.5,1,'Mark Lee','Vault A1','2027-06-15','Class I','Recycle','Initial pilot batch', 'ISO9001',75000);
INSERT INTO nanotech_manufacturing_batch VALUES (2,'Silver Nanoparticle','AGNP-2024-045','2024-07-20','Silver','5.2',30000,88.5,98.5,'EQ-03','Carlos Ruiz',1,22.0,0.9,40.0,0.3,1,'Sofia Nguyen','Vault B3','2026-07-20','Class II','Encapsulate','Scale‑up production', 'ISO9001',62000);
INSERT INTO nanotech_manufacturing_batch VALUES (3,'Silicon Quantum Dot','SQD-2024-110','2024-08-05','Silicon','2.8',150000,90.0,97.8,'EQ-05','Mei Chen',3,20.0,1.1,35.0,0.2,0,'N/A','Quarantine','2028-08-05','Class III','Dispose as hazardous','Failed QC due to contamination', 'ISO9001',82000);


-- Cosmic artifact loan agreements
CREATE TABLE cosmic_artifact_loan (
    loan_id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    loaning_institution TEXT,
    borrowing_institution TEXT,
    loan_start_date DATE,
    loan_end_date DATE,
    insurance_value_usd INTEGER,
    transport_method TEXT,
    condition_at_loan TEXT,
    condition_at_return TEXT,
    custodial_contact TEXT,
    security_level TEXT,
    handling_instructions TEXT,
    display_location TEXT,
    loan_status TEXT,
    renewal_allowed INTEGER,
    extension_requests INTEGER,
    notes TEXT,
    artifact_category TEXT,
    provenance TEXT,
    catalog_number TEXT,
    conservation_status TEXT,
    loan_agreement_file TEXT,
    archival_reference TEXT
);

INSERT INTO cosmic_artifact_loan VALUES (1,'Stellar Core Relic','Intergalactic Museum','Nova University','2024-09-01','2025-09-01',2000000,'Quantum Shuttle','Excellent','Excellent','Dr Kepler','High','Maintain cryogenic temperature','Exhibit Hall 3','Active',1,0,'First loan of this artifact','Energy','Captured during Nova supernova','CR-2024-001','Stable','/docs/loan1.pdf','AR-1001');
INSERT INTO cosmic_artifact_loan VALUES (2,'Nebula Crystal','Space Heritage Center','Luna Research Lab','2024-11-15','2025-05-15',500000,'Graviton Carrier','Good','Good','Dr Vega','Medium','Handle with anti‑static gloves','Lab B2','Active',0,0,'Short‑term scientific study','Crystal','Formed in Orion Nebula','NC-2024-045','Preserved','/docs/loan2.pdf','AR-1002');
INSERT INTO cosmic_artifact_loan VALUES (3,'Ancient Star Map','Celestial Archive','Terra History Museum','2023-05-20','2024-05-20',750000,'Warped Cargo','Fair','Fair','Dr Nova','Low','No exposure to strong magnetic fields','Gallery 1','Returned',0,1,'Returned with minor wear','Document','Recorded by ancient civilization','SM-2023-010','Degraded','/docs/loan3.pdf','AR-1003');


-- Metahuman clinic appointment schedule
CREATE TABLE metahuman_clinic_appointment (
    appointment_id INTEGER PRIMARY KEY,
    patient_name TEXT,
    patient_id INTEGER,
    metahuman_type TEXT,
    appointment_date DATE,
    appointment_time TEXT,
    provider_name TEXT,
    provider_specialty TEXT,
    room_number TEXT,
    appointment_type TEXT,
    status TEXT,
    notes TEXT,
    follow_up_required INTEGER,
    follow_up_date DATE,
    prescription_issued INTEGER,
    lab_tests_ordered TEXT,
    insurance_approved INTEGER,
    co_pay_amount_usd INTEGER,
    emergency_flag INTEGER,
    confidentiality_level TEXT,
    referral_source TEXT,
    contact_phone TEXT,
    email_address TEXT,
    billing_code TEXT,
    appointment_duration_minutes INTEGER
);

INSERT INTO metahuman_clinic_appointment VALUES (1,'Elias Stark',1001,'Telepath','2024-10-12','09:30','Dr Morrow','Neurology','R12','Checkup','Scheduled','Routine monitoring',0,NULL,0,'None',1,150,0,'High','Referral','5551234567','elias.stark@example.com','M001',30);
INSERT INTO metahuman_clinic_appointment VALUES (2,'Luna Vega',1002,'Elemental','2024-10-15','14:00','Dr Hale','Dermatology','R07','Skin Evaluation','Confirmed','Assess rash',1,'2024-11-01',1,'Blood Panel',1,200,0,'Medium','Self','5559876543','luna.vega@example.com','D045',45);
INSERT INTO metahuman_clinic_appointment VALUES (3,'Rex Orion',1003,'Technopath','2024-10-20','11:15','Dr Quinn','Orthopedics','R03','Injury Follow‑up','Completed','Post‑surgery check',0,NULL,0,'X‑Ray',1,120,0,'Low','Emergency','5555551212','rex.orion@example.com','O078',20);


-- Interdimensional trade agreement details
CREATE TABLE interdimensional_trade_agreement (
    agreement_id INTEGER PRIMARY KEY,
    agreement_name TEXT,
    signing_date DATE,
    expiration_date DATE,
    signing_party TEXT,
    counterpart_party TEXT,
    trade_goods TEXT,
    tariff_rate_percent REAL,
    quota_limit_units INTEGER,
    enforcement_mechanism TEXT,
    dispute_resolution TEXT,
    governing_law TEXT,
    confidentiality_clause INTEGER,
    amendment_count INTEGER,
    last_amendment_date DATE,
    status TEXT,
    renewable_clause INTEGER,
    review_interval_years INTEGER,
    notes TEXT,
    trade_zone TEXT,
    regulatory_body TEXT,
    document_uri TEXT,
    archived INTEGER,
    responsible_officer TEXT
);

INSERT INTO interdimensional_trade_agreement VALUES (1,'Quantum Exchange Pact','2023-04-01','2033-04-01','Terran Trade Council','Zyphorian Consortium','Quantum Crystals',2.5,100000,'Joint Patrol','Arbiter Council','Terran Code','1','0',NULL,'Active','0',5,'Standard agreement','Zone Alpha','Interdimensional Trade Authority','/docs/qep.pdf','0','Officer Dalia');
INSERT INTO interdimensional_trade_agreement VALUES (2,'Nebula Resource Accord','2024-01-15','2029-01-15','Galactic Union','Nebulon Federation','Nebula Gas',1.8,50000,'Automated Sensors','Mediated Arbitration','Nebulon Statutes','1','1','2025-02-20','Active','1',3,'Includes renewable provision','Zone Beta','Nebulon Trade Board','/docs/nra.pdf','0','Officer Harlan');
INSERT INTO interdimensional_trade_agreement VALUES (3,'Stellar Materials Treaty','2022-07-30','2032-07-30','Stellar Coalition','Astral Collective','Stellar Alloy',3.0,75000,'Secure Convoys','Direct Negotiation','Stellar Charter','0','2','2026-08-10','Suspended','0',4,'Temporarily halted due to conflict','Zone Gamma','Stellar Oversight Committee','/docs/smt.pdf','1','Officer Selene');


-- Starship maintenance schedule
CREATE TABLE starship_maintenance_schedule (
    maintenance_id INTEGER PRIMARY KEY,
    starship_name TEXT,
    ship_registry TEXT,
    scheduled_date DATE,
    maintenance_type TEXT,
    subsystem TEXT,
    technician_lead TEXT,
    work_order_number TEXT,
    estimated_hours INTEGER,
    actual_hours INTEGER,
    parts_replaced TEXT,
    parts_cost_usd INTEGER,
    labor_cost_usd INTEGER,
    total_cost_usd INTEGER,
    downtime_hours INTEGER,
    safety_check_passed INTEGER,
    notes TEXT,
    priority_level TEXT,
    approval_status TEXT,
    completed_flag INTEGER,
    follow_up_required INTEGER,
    follow_up_date DATE,
    documentation_link TEXT,
    compliance_audit INTEGER,
    audit_notes TEXT
);

INSERT INTO starship_maintenance_schedule VALUES (1,'SS Voyager','SV-001','2024-11-05','Routine','Propulsion','Lt Cmdr Reyes','WO-1001',40,38,'Thruster Nozzle',15000,8000,23000,8,1,'All systems nominal','Medium','Approved',1,0,NULL,'/docs/maintenance_sv001.pdf',1,'Audit clear');
INSERT INTO starship_maintenance_schedule VALUES (2,'CM Enterprise','CE-210','2024-12-12','Upgrade','Life Support','Engr Patel','WO-2034',60,65,'O2 Filter Pack',12000,12000,24000,12,1,'Filter efficiency improved','High','Pending',0,1,'2025-01-15','/docs/maintenance_ce210.pdf',0,'Awaiting final sign‑off');
INSERT INTO starship_maintenance_schedule VALUES (3,'RS Horizon','RH-88','2025-01-20','Repair','Hull','Chief Engineer Lin','WO-3099',48,50,'Hull Plate',20000,10000,30000,10,0,'Minor cracks detected','Low','Approved',1,0,NULL,'/docs/maintenance_rh88.pdf',1,'Repair recorded in log');


-- Cosmic weather station readings
CREATE TABLE cosmic_weather_station_reading (
    reading_id INTEGER PRIMARY KEY,
    station_name TEXT,
    observation_timestamp TIMESTAMP,
    solar_wind_speed_km_s REAL,
    magnetic_field_strength_nT REAL,
    photon_flux_density REAL,
    cosmic_ray_intensity REAL,
    particle_density_cm3 REAL,
    temperature_kelvin REAL,
    pressure_pascal REAL,
    humidity_percent REAL,
    precipitation_mm REAL,
    observation_quality TEXT,
    data_processor TEXT,
    calibration_version TEXT,
    notes TEXT,
    orbital_position TEXT,
    latitude_deg REAL,
    longitude_deg REAL,
    altitude_km REAL,
    radiation_level_sievert REAL,
    alert_status TEXT,
    file_uri TEXT,
    analyst_name TEXT,
    validation_flag INTEGER
);

INSERT INTO cosmic_weather_station_reading VALUES (1,'Helios Station','2024-10-01 08:00:00',550.2,45.6,1.2e12,0.8,5.4,2500.0,101325.0,20.0,0.0,'Good','Dr Sol','v2.0','No anomalies','L1','12.34','-45.67',400.0,0.03,'Normal','/data/helios_20241001.dat','Anna Lopez',1);
INSERT INTO cosmic_weather_station_reading VALUES (2,'Aurora Outpost','2024-10-01 09:15:00',480.5,38.2,9.5e11,0.5,4.8,2400.0,100800.0,22.5,0.0,'Fair','Dr Frost','v2.0','Slight dip in magnetic field','L2','-23.45','67.89',300.0,0.02,'Watch','/data/aurora_20241001.dat','Brian Chen',1);
INSERT INTO cosmic_weather_station_reading VALUES (3,'Nebula Sentinel','2024-10-01 10:30:00',610.0,52.1,1.4e12,1.0,6.1,2600.0,102000.0,18.0,0.0,'Excellent','Dr Nova','v2.0','Peak solar wind observed','L3','5.67','-12.34',500.0,0.04','Alert','/data/nebula_20241001.dat','Cynthia Wu',1);


-- AI model deployment log
CREATE TABLE ai_model_deployment_log (
    deployment_id INTEGER PRIMARY KEY,
    model_name TEXT,
    version TEXT,
    deployment_date DATE,
    environment TEXT,
    compute_resource TEXT,
    gpu_count INTEGER,
    cpu_cores INTEGER,
    memory_gb INTEGER,
    storage_gb INTEGER,
    latency_ms REAL,
    throughput_qps REAL,
    accuracy_percent REAL,
    loss_value REAL,
    optimizer TEXT,
    training_data_version TEXT,
    inference_data_version TEXT,
    monitoring_enabled INTEGER,
    alert_threshold REAL,
    last_evaluation_date DATE,
    evaluated_by TEXT,
    notes TEXT,
    rollback_allowed INTEGER,
    rollback_version TEXT,
    deployment_status TEXT,
    responsible_engineer TEXT
);

INSERT INTO ai_model_deployment_log VALUES (1,'VisionX','v3.2','2024-09-20','Production','Cluster A',8,32,128,2000,45.3,1500.0,92.5,0.07,'Adam','data_v5','data_v2',1,0.10,'2024-10-01','Dr Lin','Stable performance',1,'v3.1','Deployed','Mira Patel');
INSERT INTO ai_model_deployment_log VALUES (2,'LangPro','v1.9','2024-10-05','Staging','Cluster B',4,16,64,1000,30.1,800.0,88.2,0.12,'SGD','nlp_v3','nlp_v1',1,0.15,'2024-10-10','Dr Sato','Minor latency increase observed',0,NULL,'Testing','Yusuf Karim');
INSERT INTO ai_model_deployment_log VALUES (3,'PredictorX','v2.5','2024-08-15','Production','Cluster C',12,48,256,4000,20.5,2500.0,95.0,0.03,'RMSprop','forecast_v2','forecast_v2',1,0.08,'2024-09-30','Dr Zhao','Exceeds SLA expectations',1,'v2.4','Deployed','Lena Ortiz');