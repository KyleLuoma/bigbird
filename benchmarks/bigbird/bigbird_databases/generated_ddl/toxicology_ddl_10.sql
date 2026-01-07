-- Log of routine maintenance activities for laboratory ventilation systems
CREATE TABLE lab_ventilation_maintenance_log (
  log_id TEXT NOT NULL,
  ventilation_system_id TEXT NOT NULL,
  maintenance_date TEXT NOT NULL,
  technician_id TEXT NOT NULL,
  filter_status TEXT,
  airflow_rate REAL,
  pressure_drop REAL,
  notes TEXT,
  next_due_date TEXT,
  maintenance_type TEXT,
  duration_minutes INTEGER,
  cost_usd REAL,
  vendor_id TEXT,
  approval_status TEXT,
  safety_check_passed TEXT,
  equipment_tag TEXT,
  humidity_pct REAL,
  temperature_c REAL,
  humidity_sensor_id TEXT,
  co2_ppm REAL,
  PRIMARY KEY (log_id)
);

INSERT INTO lab_ventilation_maintenance_log VALUES ('LOG001','VENT001','2024-10-01','TECH001','GOOD',1250.5,0.35,'All clear','2025-01-01','Preventive',90,250.00,'VEND001','APPROVED','YES','TAG001',45.2,22.5,'HS001',400.0);
INSERT INTO lab_ventilation_maintenance_log VALUES ('LOG002','VENT002','2024-09-15','TECH002','REPLACED',1120.0,0.40,'Filter changed','2025-03-01','Corrective',120,320.75,'VEND002','APPROVED','YES','TAG002',48.1,21.8,'HS002',415.0);
INSERT INTO lab_ventilation_maintenance_log VALUES ('LOG003','VENT003','2024-08-20','TECH003','GOOD',1300.2,0.30,'Inspected','2025-02-15','Preventive',75,180.50,'VEND003','PENDING','YES','TAG003',44.7,23.0,'HS003',390.0);

-- Certification records for operators of high‑precision analytical instruments
CREATE TABLE instrument_operator_certification (
  cert_id TEXT NOT NULL,
  instrument_id TEXT NOT NULL,
  operator_id TEXT NOT NULL,
  certification_date TEXT NOT NULL,
  expiry_date TEXT NOT NULL,
  certifying_body TEXT,
  competency_level TEXT,
  training_hours INTEGER,
  last_retraining_date TEXT,
  renewal_required TEXT,
  document_path TEXT,
  supervisor_id TEXT,
  audit_status TEXT,
  notes TEXT,
  calibration_authority TEXT,
  test_protocol_version TEXT,
  risk_assessment_id TEXT,
  safety_briefing_completed TEXT,
  proficiency_score REAL,
  authorized_operations TEXT,
  PRIMARY KEY (cert_id)
);

INSERT INTO instrument_operator_certification VALUES ('CERT001','INST001','OP001','2023-05-10','2025-05-10','ISO9001','Level2',40,'2024-05-01','NO','/docs/cert1.pdf','SUP001','PASS','All good','CAL001','v2.1','RA001','YES',88.5,'Full');
INSERT INTO instrument_operator_certification VALUES ('CERT002','INST002','OP002','2022-11-20','2024-11-20','ISO9002','Level3',55,'2023-11-19','YES','/docs/cert2.pdf','SUP002','FAIL','Requires review','CAL002','v3.0','RA002','NO',72.0,'Limited');
INSERT INTO instrument_operator_certification VALUES ('CERT003','INST003','OP003','2024-01-15','2026-01-15','ISO9003','Level1',30,'2024-12-15','NO','/docs/cert3.pdf','SUP003','PASS','Satisfactory','CAL003','v1.5','RA003','YES',95.0,'Full');

-- Safety review entries for nanomaterial handling procedures
CREATE TABLE nanomaterial_safety_review (
  review_id TEXT NOT NULL,
  nanomaterial_id TEXT NOT NULL,
  reviewer_id TEXT NOT NULL,
  review_date TEXT NOT NULL,
  risk_category TEXT,
  exposure_control TEXT,
  engineering_controls TEXT,
  PPE_required TEXT,
  disposal_method TEXT,
  comments TEXT,
  approval_status TEXT,
  next_review_date TEXT,
  regulatory_reference TEXT,
  containment_level TEXT,
  ventilation_rate REAL,
  humidity_control TEXT,
  temperature_control TEXT,
  incident_history TEXT,
  training_required TEXT,
  compliance_score REAL,
  PRIMARY KEY (review_id)
);

INSERT INTO nanomaterial_safety_review VALUES ('NR001','NM001','REV001','2024-07-12','HIGH','HEPA','ENCLOSURE','FULL','INCINERATION','No issues','APPROVED','2025-07-12','REG123','LEVEL3',12.5,'YES','YES','NONE','YES',93.2);
INSERT INTO nanomaterial_safety_review VALUES ('NR002','NM002','REV002','2023-03-05','MEDIUM','BOAT','VENTILATED CABIN','PARTIAL','SOLIDIFY','Minor leak noted','PENDING','2024-03-05','REG456','LEVEL2',8.0,'NO','YES','LEAK01','YES',78.5);
INSERT INTO nanomaterial_safety_review VALUES ('NR003','NM003','REV003','2024-11-20','LOW','NONE','OPEN BENCH','MINIMAL','WASTE','All clear','APPROVED','2025-11-20','REG789','LEVEL1',5.0,'YES','NO','NONE','NO',85.0);

-- Records of radiation monitoring stations deployed around the facility
CREATE TABLE radiation_monitoring_station (
  station_id TEXT NOT NULL,
  location_description TEXT NOT NULL,
  install_date TEXT NOT NULL,
  detector_type TEXT,
  sensitivity_msv REAL,
  calibration_date TEXT,
  last_maintenance_date TEXT,
  status TEXT,
  daily_average_msv REAL,
  peak_msv REAL,
  alert_threshold_msv REAL,
  responsible_technician_id TEXT,
  maintenance_contract_id TEXT,
  data_endpoint_url TEXT,
  power_source TEXT,
  connectivity_type TEXT,
  firmware_version TEXT,
  notes TEXT,
  upstream_station_id TEXT,
  downstream_station_id TEXT,
  PRIMARY KEY (station_id)
);

INSERT INTO radiation_monitoring_station VALUES ('RS001','North Wing Corridor','2023-06-15','Geiger','0.01','2024-06-01','2024-09-01','ACTIVE',0.02,0.12,0.10,'TECH001','MC001','http://data.lab/rs001','AC','WIFI','FW1.2','All good','RS000','RS002');
INSERT INTO radiation_monitoring_station VALUES ('RS002','South Lab Entrance','2022-12-01','Scintillator','0.005','2024-01-20','2024-08-20','ACTIVE',0.015,0.08,0.07,'TECH002','MC002','http://data.lab/rs002','UPS','ETHERNET','FW1.0','Battery backup','RS001','RS003');
INSERT INTO radiation_monitoring_station VALUES ('RS003','Basement Storage','2024-02-10','Geiger','0.02','2024-02-15','2024-09-15','INACTIVE',NULL,NULL,0.10,'TECH003','MC003','http://data.lab/rs003','DC','WIFI','FW1.3','Awaiting activation','RS002','RS004');

-- Detailed procedures for sample preparation prior to analysis
CREATE TABLE sample_preparation_procedure (
  procedure_id TEXT NOT NULL,
  sample_type TEXT NOT NULL,
  preparation_step TEXT,
  reagent_id TEXT,
  reagent_volume_ml REAL,
  incubation_time_min INTEGER,
  incubation_temperature_c REAL,
  centrifuge_speed_rpm INTEGER,
  centrifuge_time_min INTEGER,
  filtration_type TEXT,
  filter_pore_um REAL,
  drying_method TEXT,
  drying_time_min INTEGER,
  final_volume_ml REAL,
  storage_temperature_c REAL,
  storage_container TEXT,
  qc_acceptance_criteria TEXT,
  operator_id TEXT,
  last_updated TEXT,
  version_number TEXT,
  PRIMARY KEY (procedure_id)
);

INSERT INTO sample_preparation_procedure VALUES ('PROC001','Blood','Mix','REAG001',5.0,30,37.0,8000,10,'MEMBRANE',0.22,'LYOFILE','60',1.0,-20,'FREEZER','QC1','OP001','2024-09-01','v1.0');
INSERT INTO sample_preparation_procedure VALUES ('PROC002','Tissue','Homogenize','REAG002',10.0,15,4.0,12000,5,'SILICA','0.45','AIR_DRY','30',0.8,4,'VIAL','QC2','OP002','2024-08-15','v2.1');
INSERT INTO sample_preparation_procedure VALUES ('PROC003','Water','Filter','REAG003',0.0,0,0.0,0,0,'CARBON','0.0','N/A','0',2.0,25,'BOTTLE','QC3','OP003','2024-07-20','v1.3');

-- Inventory of chemical reactions performed in the lab
CREATE TABLE chemical_reaction_inventory (
  reaction_id TEXT NOT NULL,
  reaction_name TEXT NOT NULL,
  equation TEXT,
  catalyst_id TEXT,
  solvent_id TEXT,
  temperature_c REAL,
  pressure_atm REAL,
  duration_min INTEGER,
  yield_percent REAL,
  scale_mmol REAL,
  purification_method TEXT,
  product_id TEXT,
  batch_number TEXT,
  safety_review_id TEXT,
  analyst_id TEXT,
  notes TEXT,
  date_performed TEXT,
  equipment_used TEXT,
  operator_id TEXT,
  quality_status TEXT,
  PRIMARY KEY (reaction_id)
);

INSERT INTO chemical_reaction_inventory VALUES ('RXN001','Esterification','Acid+Alcohol->Ester','CAT001','SOL001',80.0,1.0,180,85.5,50.0,'DISTILL','PROD001','BCH001','NR001','AN001','No issues','2024-06-10','REACTOR01','OP001','PASSED');
INSERT INTO chemical_reaction_inventory VALUES ('RXN002','Aldol Condensation','Aldehyde+Ketone->BetaHydroxy','CAT002','SOL002',120.0,5.0,240,70.0,30.0,'CHROMATOGRAPHY','PROD002','BCH002','NR002','AN002','Minor foaming','2024-05-22','REACTOR02','OP002','PASS_WITH_NOTE');
INSERT INTO chemical_reaction_inventory VALUES ('RXN003','Nitration','Benzene+HNO3->Nitrobenzene','CAT003','SOL003',65.0,1.2,90,60.2,20.0,'EXTRACTION','PROD003','BCH003','NR003','AN003','Handled with care','2024-04-18','REACTOR03','OP003','PASSED');

-- Templates for computational workflows used in data analysis
CREATE TABLE computational_workflow_template (
  template_id TEXT NOT NULL,
  workflow_name TEXT NOT NULL,
  description TEXT,
  version TEXT,
  author_id TEXT,
  creation_date TEXT,
  last_modified TEXT,
  input_format TEXT,
  output_format TEXT,
  required_cpu_cores INTEGER,
  required_gpu BOOLEAN,
  memory_gb REAL,
  storage_gb REAL,
  runtime_estimate_min INTEGER,
  software_dependencies TEXT,
  docker_image TEXT,
  container_registry TEXT,
  access_level TEXT,
  approval_status TEXT,
  notes TEXT,
  PRIMARY KEY (template_id)
);

INSERT INTO computational_workflow_template VALUES ('TMP001','RNASeqPipeline','Standard RNA‑seq analysis','v1.2','AUTH001','2023-09-01','2024-08-20','FASTQ','COUNT_MATRIX',16,'TRUE',64.0,200.0,180,'STAR;HTSeq;DESeq2','rna_seq:1.2','dockerhub','PUBLIC','APPROVED','Validated for human data');
INSERT INTO computational_workflow_template VALUES ('TMP002','MetabolomicsQuant','Quantitative metabolomics processing','v0.9','AUTH002','2022-11-15','2024-07-05','RAW','TABLE',8,'FALSE',32.0,100.0,120,'XCMS;MZmine','metabo:0.9','dockerhub','RESTRICTED','PENDING','Requires additional testing');
INSERT INTO computational_workflow_template VALUES ('TMP003','ImageSegmentation','Cell image segmentation workflow','v2.0','AUTH003','2024-01-10','2024-09-01','TIFF','MASK',32,'TRUE',128.0,500.0,240,'CellProfiler;DeepCell','imgseg:2.0','ghcr.io','PUBLIC','APPROVED','Optimized for high‑res images');

-- Access control logs for facility entry points
CREATE TABLE facility_access_control (
  log_id TEXT NOT NULL,
  badge_id TEXT NOT NULL,
  user_id TEXT NOT NULL,
  entry_point TEXT NOT NULL,
  access_timestamp TEXT NOT NULL,
  access_granted TEXT,
  door_status TEXT,
  reader_type TEXT,
  verification_method TEXT,
  region TEXT,
  device_id TEXT,
  firmware_version TEXT,
  override_reason TEXT,
  supervisor_approval TEXT,
  ip_address TEXT,
  mac_address TEXT,
  authentication_mode TEXT,
  latency_ms INTEGER,
  event_type TEXT,
  notes TEXT,
  PRIMARY KEY (log_id)
);

INSERT INTO facility_access_control VALUES ('AC001','BADGE001','USR001','MainEntrance','2024-09-15 08:05:12','YES','OPEN','RFID','CARD','NorthWing','DEV001','1.4','NONE','N/A','192.168.1.10','AA:BB:CC:DD:EE:01','STANDARD',15,'ENTRY','No issues');
INSERT INTO facility_access_control VALUES ('AC002','BADGE002','USR002','LabDoorA','2024-09-15 09:30:45','NO','CLOSED','Biometric','FINGERPRINT','SouthWing','DEV002','2.0','Expired badge','YES','192.168.1.20','AA:BB:CC:DD:EE:02','OVERRIDE',30,'DENIED','Badge expired');
INSERT INTO facility_access_control VALUES ('AC003','BADGE003','USR003','ServerRoom','2024-09-15 10:12:00','YES','OPEN','RFID','CARD','DataCenter','DEV003','1.8','NONE','N/A','192.168.1.30','AA:BB:CC:DD:EE:03','STANDARD',10,'ENTRY','Access for maintenance');

-- Monitoring records for environmental noise levels around the laboratory
CREATE TABLE environmental_noise_monitoring (
  record_id TEXT NOT NULL,
  sensor_id TEXT NOT NULL,
  location TEXT NOT NULL,
  measurement_timestamp TEXT NOT NULL,
  noise_level_db REAL,
  frequency_band TEXT,
  calibration_date TEXT,
  sensor_status TEXT,
  battery_voltage REAL,
  signal_strength INTEGER,
  data_quality TEXT,
  notes TEXT,
  maintenance_due_date TEXT,
  firmware_version TEXT,
  alert_triggered TEXT,
  reporting_interval_sec INTEGER,
  avg_noise_last_hour REAL,
  max_noise_last_day REAL,
  min_noise_last_day REAL,
  compliance_status TEXT,
  PRIMARY KEY (record_id)
);

INSERT INTO environmental_noise_monitoring VALUES ('NM001','SN001','EastWall','2024-09-15 08:00:00',55.2,'125-250Hz','2024-06-01','ACTIVE',3.7,85,'GOOD','Normal operation','2025-06-01','v1.0','NO',300,53.1,78.4,42.0,'COMPLIANT');
INSERT INTO environmental_noise_monitoring VALUES ('NM002','SN002','WestWall','2024-09-15 08:05:00',62.8,'500-1000Hz','2024-07-15','ACTIVE',3.6,80,'GOOD','Slight peak observed','2025-07-15','v1.1','YES',300,60.5,85.2,45.3,'COMPLIANT');
INSERT INTO environmental_noise_monitoring VALUES ('NM003','SN003','Roof','2024-09-15 08:10:00',48.5,'250-500Hz','2024-05-20','INACTIVE',0.0,0,'N/A','Sensor offline for maintenance','2024-09-20','v0.9','NO',300,NULL,NULL,NULL,'NON_COMPLIANT');

-- Registrations of bioinformatics analysis jobs run on the compute cluster
CREATE TABLE bioinformatics_analysis_job (
  job_id TEXT NOT NULL,
  pipeline_name TEXT NOT NULL,
  submitted_by TEXT NOT NULL,
  submission_timestamp TEXT NOT NULL,
  start_timestamp TEXT,
  end_timestamp TEXT,
  compute_node TEXT,
  cpu_cores INTEGER,
  gpu_used BOOLEAN,
  memory_gb REAL,
  input_dataset_id TEXT,
  output_dataset_id TEXT,
  status TEXT,
  error_message TEXT,
  priority INTEGER,
  runtime_seconds INTEGER,
  software_version TEXT,
  container_image TEXT,
  report_path TEXT,
  notes TEXT,
  PRIMARY KEY (job_id)
);

INSERT INTO bioinformatics_analysis_job VALUES ('JOB001','VariantCalling','USR001','2024-09-14 22:00:00','2024-09-14 22:05:00','2024-09-14 23:30:00','node15',32,'FALSE',128.0,'DS001','DS001_OUT','COMPLETED','',1,5400,'v2.3','variant:2.3','/reports/job001.html','');
INSERT INTO bioinformatics_analysis_job VALUES ('JOB002','TranscriptAssembly','USR002','2024-09-15 01:15:00','2024-09-15 01:20:00','2024-09-15 04:45:00','node22',48,'TRUE',256.0,'DS002','DS002_OUT','FAILED','Segmentation fault','2',12300,'v1.8','transcript:1.8','/reports/job002.html','Investigation needed');
INSERT INTO bioinformatics_analysis_job VALUES ('JOB003','MetagenomeProfiling','USR003','2024-09-15 03:00:00','2024-09-15 03:05:00','2024-09-15 06:10:00','node10',24,'FALSE',96.0,'DS003','DS003_OUT','COMPLETED','',3,11100,'v3.0','metagenome:3.0','/reports/job003.html','All steps passed');

-- Records of ventilation system maintenance history (historical view)
CREATE TABLE ventilation_system_maintenance_history (
  hist_id TEXT NOT NULL,
  ventilation_system_id TEXT NOT NULL,
  maintenance_event TEXT NOT NULL,
  event_date TEXT NOT NULL,
  performed_by TEXT,
  details TEXT,
  cost_usd REAL,
  downtime_minutes INTEGER,
  parts_replaced TEXT,
  next_scheduled_event TEXT,
  compliance_check TEXT,
  notes TEXT,
  PRIMARY KEY (hist_id)
);

INSERT INTO ventilation_system_maintenance_history VALUES ('VH001','VENT001','Filter Replacement','2024-03-10','TECH001','Replaced HEPA filter','200.00',30,'HEPA_FILTER','2024-09-10','PASS','');
INSERT INTO ventilation_system_maintenance_history VALUES ('VH002','VENT002','Motor Inspection','2024-04-22','TECH002','Lubricated motor bearings','150.00',45,'MOTOR_BEARINGS','2025-04-22','PASS','Minor wear observed');
INSERT INTO ventilation_system_maintenance_history VALUES ('VH003','VENT003','Full System Overhaul','2024-01-05','TECH003','Replaced ductwork and controllers','1250.00',240,'DUCTS,CONTROLLERS','2025-01-05','PASS','System upgraded to v2');

-- Log of chemical batch tracking across synthesis processes
CREATE TABLE chemical_batch_tracking (
  batch_id TEXT NOT NULL,
  compound_name TEXT NOT NULL,
  synthesis_start TEXT,
  synthesis_end TEXT,
  reactor_id TEXT,
  operator_id TEXT,
  batch_yield_percent REAL,
  purity_percent REAL,
  analytical_method TEXT,
  storage_location TEXT,
  storage_temperature_c REAL,
  hazard_class TEXT,
  safety_data_sheet_id TEXT,
  quality_release_status TEXT,
  release_timestamp TEXT,
  lot_number TEXT,
  distributor_id TEXT,
  expiration_date TEXT,
  notes TEXT,
  PRIMARY KEY (batch_id)
);

INSERT INTO chemical_batch_tracking VALUES ('CBT001','Aspirin','2024-06-01','2024-06-03','RCTR001','OP001',78.5,99.2','HPLC','Shelf_A','25.0','Class3','SDS001','RELEASED','2024-06-04','LOT123','DIST001','2026-06-01','');
INSERT INTO chemical_batch_tracking VALUES ('CBT002','Paracetamol','2024-07-10','2024-07-12','RCTR002','OP002',82.1,98.7','GC-MS','Shelf_B','20.0','Class3','SDS002','RELEASED','2024-07-13','LOT124','DIST002','2026-07-10','');
INSERT INTO chemical_batch_tracking VALUES ('CBT003','Ibuprofen','2024-08-15','2024-08-18','RCTR003','OP003',75.0,97.5','LC-MS','Shelf_C','22.0','Class3','SDS003','PENDING','', 'LOT125','DIST003','2026-08-15','Awaiting QC approval');