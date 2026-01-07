-- Spectrophotometer run log
CREATE TABLE spectrophotometer_run_log (
  run_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  operator_id TEXT,
  sample_id TEXT,
  batch_number TEXT,
  run_date DATE,
  start_time TEXT,
  end_time TEXT,
  wavelength_start_nm INTEGER,
  wavelength_end_nm INTEGER,
  absorbance_max REAL,
  temperature_c REAL,
  humidity_percent REAL,
  lamp_intensity_lumen REAL,
  detector_gain REAL,
  calibration_id TEXT,
  method_code TEXT,
  status TEXT,
  notes TEXT,
  created_at DATE,
  updated_at DATE,
  lot_number TEXT
);

INSERT INTO spectrophotometer_run_log VALUES ('R001','INST001','OP001','SMP001','B001','2024-01-15','08:00','08:30',200,800,1.23,22.5,45.0,1500,1.0,'CAL001','MTH01','COMPLETED','Initial run','2024-01-15','2024-01-15','LOT123');
INSERT INTO spectrophotometer_run_log VALUES ('R002','INST002','OP002','SMP002','B002','2024-02-20','09:15','09:45',210,790,0.98,23.0,40.0,1520,0.95,'CAL002','MTH02','COMPLETED','Second run','2024-02-20','2024-02-20','LOT124');
INSERT INTO spectrophotometer_run_log VALUES ('R003','INST003','OP003','SMP003','B003','2024-03-10','10:05','10:35',205,795,1.10,21.8,42.5,1510,1.05,'CAL003','MTH03','FAILED','Instrument error','2024-03-10','2024-03-10','LOT125');

-- Polymerization reactor log
CREATE TABLE polymerization_reactor_log (
  reactor_id TEXT,
  run_id TEXT,
  polymer_type TEXT,
  catalyst_id TEXT,
  initiator_id TEXT,
  monomer_batch TEXT,
  reaction_temperature_c REAL,
  reaction_pressure_bar REAL,
  stir_speed_rpm INTEGER,
  reaction_time_min INTEGER,
  viscosity_cp REAL,
  molecular_weight_gmol REAL,
  polydispersity REAL,
  yield_percent REAL,
  operator_id TEXT,
  start_date DATE,
  end_date DATE,
  status TEXT,
  safety_check_passed TEXT,
  notes TEXT,
  created_at DATE,
  updated_at DATE,
  PRIMARY KEY (reactor_id,run_id)
);

INSERT INTO polymerization_reactor_log VALUES ('RCTR001','RUN001','Polyethylene','CAT001','INIT001','MON001',80.0,5.0,150,120,250.0,50000.0,1.2,85.0,'OP001','2024-04-01','2024-04-02','COMPLETED','YES','Standard run','2024-04-01','2024-04-02');
INSERT INTO polymerization_reactor_log VALUES ('RCTR002','RUN002','Polypropylene','CAT002','INIT002','MON002',85.0,6.0,160,130,260.0,52000.0,1.15,88.0,'OP002','2024-05-10','2024-05-11','COMPLETED','YES','Adjusted temperature','2024-05-10','2024-05-11');
INSERT INTO polymerization_reactor_log VALUES ('RCTR003','RUN003','Polystyrene','CAT003','INIT003','MON003',90.0,7.0,170,140,270.0,54000.0,1.1,90.0,'OP003','2024-06-15','2024-06-16','FAILED','NO','Pressure sensor fault','2024-06-15','2024-06-16');

-- Ionizing radiation exposure log
CREATE TABLE ionizing_radiation_exposure_log (
  exposure_id TEXT PRIMARY KEY,
  detector_id TEXT,
  personnel_id TEXT,
  exposure_date DATE,
  start_time TEXT,
  end_time TEXT,
  radiation_type TEXT,
  dose_msv REAL,
  area_m2 REAL,
  shielding_material TEXT,
  shield_thickness_cm REAL,
  location TEXT,
  operator_id TEXT,
  device_status TEXT,
  comments TEXT,
  created_at DATE,
  updated_at DATE,
  audit_trail TEXT,
  equipment_calibration_id TEXT,
  exposure_category TEXT,
  incident_flag TEXT
);

INSERT INTO ionizing_radiation_exposure_log VALUES ('EXP001','DET001','PER001','2024-07-01','07:30','07:45','Gamma',0.45,10.0,'Lead',5.0,'RoomA','OP001','OK','No issues','2024-07-01','2024-07-01','TrailA','CAL001','Routine','NO');
INSERT INTO ionizing_radiation_exposure_log VALUES ('EXP002','DET002','PER002','2024-07-15','08:00','08:20','XRay',0.30,8.0,'Polyethylene',3.0,'RoomB','OP002','OK','Slight fluctuation','2024-07-15','2024-07-15','TrailB','CAL002','Routine','NO');
INSERT INTO ionizing_radiation_exposure_log VALUES ('EXP003','DET003','PER003','2024-08-05','09:10','09:30','Beta',0.60,12.0,'Concrete',7.0,'RoomC','OP003','ALERT','High dose warning','2024-08-05','2024-08-05','TrailC','CAL003','Critical','YES');

-- Cryogenic storage inventory
CREATE TABLE cryogenic_storage_inventory (
  unit_id TEXT PRIMARY KEY,
  location TEXT,
  temperature_k REAL,
  max_capacity_l REAL,
  current_volume_l REAL,
  stored_item_id TEXT,
  stored_item_type TEXT,
  batch_number TEXT,
  date_stored DATE,
  expiry_date DATE,
  humidity_percent REAL,
  pressure_pa REAL,
  operator_id TEXT,
  inspection_date DATE,
  inspection_status TEXT,
  maintenance_due DATE,
  notes TEXT,
  created_at DATE,
  updated_at DATE,
  status TEXT,
  alarm_flag TEXT
);

INSERT INTO cryogenic_storage_inventory VALUES ('CU001','FreezerA',77.0,500.0,250.0,'ITEM001','Protein','BN001','2024-01-10','2025-01-10',30.0,101325,'OP001','2024-06-01','PASS','2025-06-01','Stable','2024-01-10','2024-06-01','ACTIVE','NO');
INSERT INTO cryogenic_storage_inventory VALUES ('CU002','FreezerB',85.0,400.0,150.0,'ITEM002','CellLine','BN002','2024-02-15','2025-02-15',35.0,101300,'OP002','2024-07-01','PASS','2025-07-01','Minor frost','2024-02-15','2024-07-01','ACTIVE','NO');
INSERT INTO cryogenic_storage_inventory VALUES ('CU003','FreezerC',80.0,600.0,500.0,'ITEM003','DNA','BN003','2024-03-20','2025-03-20',32.0,101350,'OP003','2024-08-10','FAIL','2025-08-10','Temperature variance','2024-03-20','2024-08-10','INACTIVE','YES');

-- Reference genome annotation
CREATE TABLE reference_genome_annotation (
  annotation_id TEXT PRIMARY KEY,
  genome_id TEXT,
  species TEXT,
  assembly_version TEXT,
  annotation_date DATE,
  annotator_id TEXT,
  gene_count INTEGER,
  transcript_count INTEGER,
  protein_coding_genes INTEGER,
  non_coding_rna INTEGER,
  gc_content_percent REAL,
  total_length_bp INTEGER,
  source_database TEXT,
  annotation_method TEXT,
  notes TEXT,
  created_at DATE,
  updated_at DATE,
  status TEXT,
  release_version TEXT,
  accession_number TEXT,
  checksum TEXT,
  curation_status TEXT
);

INSERT INTO reference_genome_annotation VALUES ('ANN001','GEN001','Homo sapiens','GRCh38','2024-01-05','ANOT001',20000,80000,19000,1000,41.0,3200000000,'ENSEMBL','Automated','Initial release','2024-01-05','2024-01-05','RELEASED','v1','ACC001','CHK001','CURATED');
INSERT INTO reference_genome_annotation VALUES ('ANN002','GEN002','Mus musculus','GRCm39','2024-02-12','ANOT002',21000,85000,20000,1100,42.5,2700000000,'NCBI','Manual','Updated with new transcripts','2024-02-12','2024-02-12','RELEASED','v2','ACC002','CHK002','CURATED');
INSERT INTO reference_genome_annotation VALUES ('ANN003','GEN003','Drosophila melanogaster','Release6','2024-03-18','ANOT003',15000,50000,14000,900,39.8,180000000,'UCSC','Hybrid','Added isoforms','2024-03-18','2024-03-18','RELEASED','v1','ACC003','CHK003','CURATED');

-- Nanostructure imaging dataset
CREATE TABLE nanostructure_imaging_dataset (
  dataset_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  sample_id TEXT,
  imaging_mode TEXT,
  pixel_size_nm REAL,
  field_of_view_um REAL,
  acceleration_voltage_kv REAL,
  dose_e_per_ang2 REAL,
  resolution_nm REAL,
  contrast_method TEXT,
  operator_id TEXT,
  acquisition_date DATE,
  processing_software TEXT,
  software_version TEXT,
  metadata TEXT,
  notes TEXT,
  created_at DATE,
  updated_at DATE,
  status TEXT,
  project_id TEXT,
  data_size_gb REAL
);

INSERT INTO nanostructure_imaging_dataset VALUES ('DS001','INST001','SMP001','TEM',0.5,20.0,200.0,2.5,1.2,'Phase contrast','OP001','2024-04-05','ImagePro','3.1','meta1','First dataset','2024-04-05','2024-04-05','COMPLETED','PROJ001',15.2);
INSERT INTO nanostructure_imaging_dataset VALUES ('DS002','INST002','SMP002','SEM',1.0,50.0,15.0,1.0,2.5,'Backscatter','OP002','2024-05-10','ScanSuite','2.4','meta2','Second dataset','2024-05-10','2024-05-10','COMPLETED','PROJ002',22.5);
INSERT INTO nanostructure_imaging_dataset VALUES ('DS003','INST003','SMP003','AFM',0.2,10.0,0.0,0.0,0.5,'Tapping','OP003','2024-06-20','AFMSoft','1.9','meta3','Third dataset','2024-06-20','2024-06-20','PENDING','PROJ003',8.7);

-- HVAC zone performance
CREATE TABLE hvac_zone_performance (
  zone_id TEXT PRIMARY KEY,
  building_id TEXT,
  hvac_unit_id TEXT,
  airflow_cfm REAL,
  temperature_setpoint_c REAL,
  humidity_setpoint_percent REAL,
  actual_temperature_c REAL,
  actual_humidity_percent REAL,
  filter_status TEXT,
  fan_speed_rpm INTEGER,
  energy_consumption_kwh REAL,
  co2_ppm REAL,
  voc_ppb REAL,
  maintenance_date DATE,
  next_maintenance_due DATE,
  operator_id TEXT,
  status TEXT,
  notes TEXT,
  created_at DATE,
  updated_at DATE,
  alert_flag TEXT,
  zone_area_sqft REAL
);

INSERT INTO hvac_zone_performance VALUES ('ZONE001','BLD001','HVAC01',1200.0,22.0,45.0,22.5,44.5,'OK',1800,350.0,600,200,'2024-01-15','2025-01-15','OP001','ACTIVE','All good','2024-01-15','2024-01-15','NO',1500);
INSERT INTO hvac_zone_performance VALUES ('ZONE002','BLD001','HVAC02',1300.0,21.5,50.0,21.8,49.0,'OK',1900,370.0,620,210,'2024-02-20','2025-02-20','OP002','ACTIVE','Slight temp drift','2024-02-20','2024-02-20','NO',1600);
INSERT INTO hvac_zone_performance VALUES ('ZONE003','BLD002','HVAC03',1100.0,23.0,40.0,24.2,38.5,'REPLACE','FAIL',400.0,800,300,'2024-03-10','2025-03-10','OP003','ALERT','Filter clogged','2024-03-10','2024-03-10','YES',1400);

-- Trial consent document
CREATE TABLE trial_consent_document (
  consent_id TEXT PRIMARY KEY,
  trial_id TEXT,
  participant_id TEXT,
  consent_date DATE,
  version_number INTEGER,
  signed_by TEXT,
  witness_id TEXT,
  document_hash TEXT,
  language TEXT,
  document_type TEXT,
  approval_status TEXT,
  expiration_date DATE,
  notes TEXT,
  created_at DATE,
  updated_at DATE,
  storage_location TEXT,
  electronic_signature TEXT,
  paper_copy_flag TEXT,
  reviewed_by TEXT,
  review_date DATE,
  consent_form_url TEXT,
  ethical_board_id TEXT
);

INSERT INTO trial_consent_document VALUES ('CONS001','TRIAL001','PART001','2024-01-10',1,'OP001','WIT001','HASH001','English','Standard','APPROVED','2025-01-10','First consent','2024-01-10','2024-01-10','VaultA','SIG001','NO','REVIEW001','2024-01-11','http://example.com/consent1','EB001');
INSERT INTO trial_consent_document VALUES ('CONS002','TRIAL002','PART002','2024-02-12',2,'OP002','WIT002','HASH002','Spanish','Extended','PENDING','2025-02-12','Second consent','2024-02-12','2024-02-12','VaultB','SIG002','YES','REVIEW002','2024-02-13','http://example.com/consent2','EB002');
INSERT INTO trial_consent_document VALUES ('CONS003','TRIAL003','PART003','2024-03-15',1,'OP003','WIT003','HASH003','French','Standard','APPROVED','2025-03-15','Third consent','2024-03-15','2024-03-15','VaultC','SIG003','NO','REVIEW003','2024-03-16','http://example.com/consent3','EB003');

-- Simulation parameter profile
CREATE TABLE simulation_parameter_profile (
  profile_id TEXT PRIMARY KEY,
  simulation_id TEXT,
  model_name TEXT,
  parameter_set_name TEXT,
  parameter_json TEXT,
  created_by TEXT,
  creation_date DATE,
  last_modified_by TEXT,
  last_modified_date DATE,
  status TEXT,
  notes TEXT,
  run_priority INTEGER,
  max_iterations INTEGER,
  tolerance REAL,
  time_step_fs REAL,
  temperature_k REAL,
  pressure_bar REAL,
  ensemble TEXT,
  seed INTEGER,
  hardware_target TEXT,
  software_version TEXT,
  license_key TEXT,
  validation_status TEXT
);

INSERT INTO simulation_parameter_profile VALUES ('PROF001','SIM001','MD_Model','SetA','{\"temp\":300}','USER001','2024-04-01','USER002','2024-04-05','ACTIVE','First profile',1,10000,1e-5,2.0,300.0,1.0,'NVT',12345,'GPU','v2.3','LIC001','PASSED');
INSERT INTO simulation_parameter_profile VALUES ('PROF002','SIM002','QM_Model','SetB','{\"basis\":\"6-31G\"}','USER003','2024-05-10','USER004','2024-05-12','ACTIVE','Second profile',2,5000,1e-6,0.5,298.0,0.5,'NPT',67890,'CPU','v1.8','LIC002','PASSED');
INSERT INTO simulation_parameter_profile VALUES ('PROF003','SIM003','CoarseGrain','SetC','{\"scale\":0.8}','USER005','2024-06-20','USER006','2024-06-22','PENDING','Third profile',3,20000,5e-5,1.0,310.0,1.5,'NVE',24680,'GPU','v3.0','LIC003','PENDING');

-- Process control algorithm version
CREATE TABLE process_control_algorithm_version (
  algorithm_id TEXT PRIMARY KEY,
  process_name TEXT,
  version_number TEXT,
  release_date DATE,
  developer_id TEXT,
  description TEXT,
  parameter_defaults TEXT,
  validation_report TEXT,
  approved_by TEXT,
  approval_date DATE,
  status TEXT,
  notes TEXT,
  created_at DATE,
  updated_at DATE,
  deprecation_date DATE,
  legacy_flag TEXT,
  related_process_id TEXT,
  support_contact TEXT,
  documentation_url TEXT,
  checksum TEXT,
  change_log TEXT,
  severity_level TEXT
);

INSERT INTO process_control_algorithm_version VALUES ('ALG001','Distillation','v1.0','2024-01-20','DEV001','Controls reflux ratio','{\"reflux\":5}','ReportA','MANAGER001','2024-01-25','ACTIVE','Initial release','2024-01-20','2024-01-20','','NO','PROC001','support@example.com','http://docs.example.com/alg1','CHK001','Added safety checks','MEDIUM');
INSERT INTO process_control_algorithm_version VALUES ('ALG002','Crystallization','v2.1','2024-03-15','DEV002','Optimizes cooling profile','{\"cool_rate\":0.5}','ReportB','MANAGER002','2024-03-20','ACTIVE','Bug fixes','2024-03-15','2024-03-15','','NO','PROC002','support2@example.com','http://docs.example.com/alg2','CHK002','Improved temperature sensor handling','HIGH');
INSERT INTO process_control_algorithm_version VALUES ('ALG003','Fermentation','v0.9','2024-05-05','DEV003','Monitors pH and DO','{\"pH_target\":7.0,\"DO_target\":30}','ReportC','MANAGER003','2024-05-10','DEPRECATED','Superseded by v1.0','2024-05-05','2024-05-10','2025-05-05','YES','PROC003','support3@example.com','http://docs.example.com/alg3','CHK003','Deprecated due to new algorithm','LOW');