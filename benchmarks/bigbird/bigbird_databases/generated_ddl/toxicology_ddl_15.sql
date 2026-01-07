-- Table for laboratory personnel certifications
CREATE TABLE lab_personnel_certification (
  cert_id TEXT PRIMARY KEY,
  employee_id TEXT,
  cert_type TEXT,
  cert_status TEXT,
  issue_date TEXT,
  expiration_date TEXT,
  issuing_body TEXT,
  cert_level TEXT,
  cert_number TEXT,
  training_hours INTEGER,
  last_review_date TEXT,
  reviewer_id TEXT,
  notes TEXT,
  reissue_required INTEGER,
  reissue_date TEXT,
  audit_flag INTEGER,
  version INTEGER,
  created_at TEXT,
  updated_at TEXT,
  department TEXT,
  location TEXT
);

INSERT INTO lab_personnel_certification VALUES ('CERT001','EMP100','Safety','Active','2022-01-15','2025-01-15','ISO','Level1','SN001',40,'2023-01-10','REV01','Initial certification',0,NULL,0,1,'2022-01-15','2023-01-10','Chemistry','BuildingA');
INSERT INTO lab_personnel_certification VALUES ('CERT002','EMP101','Radiation','Expired','2019-06-01','2022-06-01','NationalLab','Level2','SN002',30,'2021-05-20','REV02','Renewal needed',1,'2022-05-20',1,2,'2019-06-01','2021-05-20','Physics','BuildingB');
INSERT INTO lab_personnel_certification VALUES ('CERT003','EMP102','Biohazard','Active','2023-03-10','2026-03-10','HealthAgency','Level1','SN003',20,'2023-03-15','REV03','Verified',0,NULL,0,1,'2023-03-10','2023-03-15','Biology','BuildingC');

-- Table for instrument deployment scheduling
CREATE TABLE instrument_deployment_schedule (
  deployment_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  site_id TEXT,
  scheduled_start TEXT,
  scheduled_end TEXT,
  technician_id TEXT,
  deployment_status TEXT,
  priority INTEGER,
  notes TEXT,
  created_by TEXT,
  created_at TEXT,
  updated_by TEXT,
  updated_at TEXT,
  maintenance_window TEXT,
  risk_level TEXT,
  approval_id TEXT,
  contact_phone TEXT,
  contact_email TEXT,
  equipment_tag TEXT,
  firmware_version TEXT,
  software_version TEXT
);

INSERT INTO instrument_deployment_schedule VALUES ('DEP001','INST01','SITEA','2024-04-01','2024-04-03','TECH01','Planned',1,'Initial deployment','ADMIN','2024-01-10','ADMIN','2024-01-15','2024-04-02','Low','APP001','5551234','tech1@example.com','TAG001','FW1.0','SW2.3');
INSERT INTO instrument_deployment_schedule VALUES ('DEP002','INST02','SITEB','2024-05-10','2024-05-12','TECH02','InProgress',2,'Follow‑up calibration','ADMIN','2024-02-20','ADMIN','2024-02-25','2024-05-11','Medium','APP002','5555678','tech2@example.com','TAG002','FW1.2','SW2.5');
INSERT INTO instrument_deployment_schedule VALUES ('DEP003','INST03','SITEC','2024-06-15','2024-06-18','TECH03','Completed',3,'Routine upgrade','ADMIN','2024-03-05','ADMIN','2024-03-10','2024-06-16','Low','APP003','5559012','tech3@example.com','TAG003','FW1.1','SW2.4');

-- Table for chemical waste analysis records
CREATE TABLE chemical_waste_analysis (
  analysis_id TEXT PRIMARY KEY,
  waste_batch_id TEXT,
  analysis_date TEXT,
  analyst_id TEXT,
  ph_value REAL,
  conductivity REAL,
  temperature REAL,
  heavy_metal_level REAL,
  organic_compound_level REAL,
  radioactive_level REAL,
  waste_type TEXT,
  disposal_method TEXT,
  comments TEXT,
  approved_by TEXT,
  approval_date TEXT,
  lab_section TEXT,
  storage_location TEXT,
  sample_volume REAL,
  density REAL,
  viscosity REAL,
  test_method TEXT
);

INSERT INTO chemical_waste_analysis VALUES ('ANA001','WB001','2024-02-20','ANL001',7.2,150.5,22.1,0.02,1.5,0.0,'Solvent','Incineration','All parameters within limits','SUP001','2024-02-21','Chemistry','Room101',250.0,0.98,1.2,'EPAMethod123');
INSERT INTO chemical_waste_analysis VALUES ('ANA002','WB002','2024-03-15','ANL002',6.8,140.0,21.5,0.05,2.0,0.0,'Acid','Neutralization','Heavy metal slightly elevated','SUP002','2024-03-16','Physics','Room202',300.0,1.05,1.5,'ISOStandard456');
INSERT INTO chemical_waste_analysis VALUES ('ANA003','WB003','2024-04-10','ANL003',8.0,160.0,23.0,0.00,0.8,0.0,'Base','Solidification','All clear','SUP003','2024-04-11','Biology','Room303',200.0,0.92,1.0,'CustomMethod789');

-- Table for facility HVAC performance measurements
CREATE TABLE facility_hvac_performance (
  record_id TEXT PRIMARY KEY,
  hvac_unit_id TEXT,
  measurement_timestamp TEXT,
  supply_temp REAL,
  return_temp REAL,
  delta_temp REAL,
  fan_speed REAL,
  power_consumption REAL,
  airflow_rate REAL,
  filter_status TEXT,
  maintenance_flag INTEGER,
  alert_code TEXT,
  operator_id TEXT,
  zone TEXT,
  building TEXT,
  created_at TEXT,
  updated_at TEXT,
  humidity REAL,
  co2_level REAL,
  ozone_level REAL,
  system_mode TEXT,
  setpoint_temp REAL
);

INSERT INTO facility_hvac_performance VALUES ('HVAC001','UNIT01','2024-04-01T08:00','22.5','18.3','4.2','1200','5.3','350','Good',0,'NONE','OP001','EastWing','Main','2024-04-01','2024-04-01',45.0,600,0.02,'Cooling','22.0');
INSERT INTO facility_hvac_performance VALUES ('HVAC002','UNIT02','2024-04-01T09:00','21.0','17.5','3.5','1100','5.0','340','ReplaceSoon',1,'FILTER01','OP002','WestWing','Annex','2024-04-01','2024-04-01',50.0,620,0.03','Heating','20.0');
INSERT INTO facility_hvac_performance VALUES ('HVAC003','UNIT03','2024-04-01T10:00','23.0','19.0','4.0','1250','5.5','360','Good',0,'NONE','OP003','NorthWing','Lab','2024-04-01','2024-04-01',48.0,610,0.025','Ventilation','23.5');

-- Table for sample processing queue
CREATE TABLE sample_processing_queue (
  queue_id TEXT PRIMARY KEY,
  sample_id TEXT,
  requestor_id TEXT,
  process_type TEXT,
  priority INTEGER,
  status TEXT,
  queued_at TEXT,
  started_at TEXT,
  completed_at TEXT,
  operator_id TEXT,
  instrument_id TEXT,
  batch_id TEXT,
  protocol_version TEXT,
  notes TEXT,
  estimated_duration INTEGER,
  actual_duration INTEGER,
  error_code TEXT,
  retry_count INTEGER,
  created_by TEXT,
  created_at TEXT,
  updated_by TEXT,
  updated_at TEXT
);

INSERT INTO sample_processing_queue VALUES ('Q001','SAMP001','REQ001','DNA_Extraction',1,'Queued','2024-03-01T08:00',NULL,NULL,'OP001','INST10','BATCH01','v1.0','High priority sample',120,NULL,NULL,0,'ADMIN','2024-03-01','ADMIN','2024-03-01');
INSERT INTO sample_processing_queue VALUES ('Q002','SAMP002','REQ002','Protein_Assay',2,'Running','2024-03-01T09:00','2024-03-01T09:15',NULL,'OP002','INST12','BATCH02','v2.1','Standard assay',45,NULL,NULL,0,'ADMIN','2024-03-01','ADMIN','2024-03-01');
INSERT INTO sample_processing_queue VALUES ('Q003','SAMP003','REQ003','Cell_Culture',3,'Completed','2024-02-28T07:30','2024-02-28T07:45','2024-03-01T11:00','OP003','INST15','BATCH03','v1.3','Routine culture',240,225,NULL,0,'ADMIN','2024-02-28','ADMIN','2024-03-01');

-- Table for research data access logging
CREATE TABLE research_data_access_log (
  access_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  dataset_id TEXT,
  access_timestamp TEXT,
  access_type TEXT,
  ip_address TEXT,
  device_id TEXT,
  purpose TEXT,
  approval_id TEXT,
  approved_by TEXT,
  compliance_flag INTEGER,
  notes TEXT,
  duration_seconds INTEGER,
  data_volume_mb REAL,
  data_category TEXT,
  security_level TEXT,
  location TEXT,
  session_id TEXT,
  encryption_used INTEGER,
  audit_status TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO research_data_access_log VALUES ('ACC001','RSR001','DS001','2024-03-20T10:15','Read','192.168.1.10','DEV001','Analysis','APP001','SUP001',1,'No issues',300,150.5,'Genomics','High','LabA','SID001',1,'Passed','2024-03-20','2024-03-20');
INSERT INTO research_data_access_log VALUES ('ACC002','RSR002','DS002','2024-03-21T14:45','Write','192.168.1.11','DEV002','Data entry','APP002','SUP002',1,'Reviewed',600,0.0,'Proteomics','Medium','LabB','SID002',1,'Passed','2024-03-21','2024-03-21');
INSERT INTO research_data_access_log VALUES ('ACC003','RSR003','DS003','2024-03-22T09:30','Read','192.168.1.12','DEV003','Model training','APP003','SUP003',0,'Missing approval',1200,250.0,'Metabolomics','High','LabC','SID003',0,'Failed','2024-03-22','2024-03-22');

-- Table for nanomaterial synthesis records
CREATE TABLE nanomaterial_synthesis_record (
  synthesis_id TEXT PRIMARY KEY,
  nanomaterial_type TEXT,
  batch_number TEXT,
  synthesis_date TEXT,
  chemist_id TEXT,
  precursor_1 TEXT,
  precursor_2 TEXT,
  precursor_3 TEXT,
  solvent TEXT,
  temperature REAL,
  pressure REAL,
  reaction_time INTEGER,
  catalyst TEXT,
  yield_percent REAL,
  particle_size_nm REAL,
  surface_area REAL,
  zeta_potential REAL,
  pH REAL,
  characterization_method TEXT,
  equipment_id TEXT,
  operator_id TEXT,
  notes TEXT,
  approval_id TEXT,
  approved_by TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO nanomaterial_synthesis_record VALUES ('NSR001','Gold_Nano','BN001','2024-02-10','CHM001','HAuCl4','NaBH4','Citrate','Water',25.0,1.0,60,'None',78.5,15.2,120.0,30.5,7.2,'TEM','EQ001','OP001','Batch successful', 'APP001','SUP001','2024-02-10','2024-02-11');
INSERT INTO nanomaterial_synthesis_record VALUES ('NSR002','Silica_Nano','BN002','2024-03-05','CHM002','TEOS','Ethanol','NH4OH','Ethanol',80.0,0.8,120,'Acid','65.0',50.0,200.0,25.0,8.0,'SEM','EQ002','OP002','Minor agglomeration', 'APP002','SUP002','2024-03-05','2024-03-06');
INSERT INTO nanomaterial_synthesis_record VALUES ('NSR003','Carbon_Nano','BN003','2024-04-01','CHM003','CH4','H2','CatalystX','Argon',900.0,5.0,180,'Ni','55.0',100.0,350.0,20.0,6.5,'Raman','EQ003','OP003','High purity product', 'APP003','SUP003','2024-04-01','2024-04-02');

-- Table for computational job resource usage tracking
CREATE TABLE computational_job_resource_usage (
  usage_id TEXT PRIMARY KEY,
  job_id TEXT,
  node_id TEXT,
  start_time TEXT,
  end_time TEXT,
  cpu_seconds REAL,
  gpu_seconds REAL,
  memory_gb REAL,
  io_bytes REAL,
  energy_kwh REAL,
  max_cpu_temp REAL,
  max_gpu_temp REAL,
  exit_status INTEGER,
  error_message TEXT,
  user_id TEXT,
  project_id TEXT,
  allocated_cpus INTEGER,
  allocated_gpus INTEGER,
  allocated_memory_gb REAL,
  queue_name TEXT,
  priority INTEGER,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO computational_job_resource_usage VALUES ('U001','JOB001','NODE01','2024-03-01T08:00','2024-03-01T10:30',7200.0,3600.0,64.0,1.2e12,1.5,85.0,70.0,0,NULL,'USR001','PRJ001',16,4,64.0,'high','1','2024-03-01','2024-03-01');
INSERT INTO computational_job_resource_usage VALUES ('U002','JOB002','NODE02','2024-03-02T12:00','2024-03-02T13:15',4500.0,0.0,32.0,5.0e11,0.8,78.0,65.0,0,NULL,'USR002','PRJ002',8,0,32.0,'medium','2','2024-03-02','2024-03-02');
INSERT INTO computational_job_resource_usage VALUES ('U003','JOB003','NODE03','2024-03-03T14:00','2024-03-03T18:45',17100.0,7200.0,128.0,2.5e12,3.2,90.0,75.0,1,'Segmentation fault','USR003','PRJ003',32,8,128.0,'low','3','2024-03-03','2024-03-03');

-- Table for laboratory inventory audit records
CREATE TABLE lab_inventory_audit (
  audit_id TEXT PRIMARY KEY,
  auditor_id TEXT,
  audit_date TEXT,
  inventory_section TEXT,
  item_id TEXT,
  item_name TEXT,
  recorded_quantity INTEGER,
  physical_quantity INTEGER,
  discrepancy INTEGER,
  discrepancy_reason TEXT,
  corrective_action TEXT,
  status TEXT,
  notes TEXT,
  approved_by TEXT,
  approval_date TEXT,
  location TEXT,
  shelf_id TEXT,
  bin_id TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_type TEXT,
  confidentiality_level TEXT
);

INSERT INTO lab_inventory_audit VALUES ('AUD001','AUD001','2024-02-15','Chemistry','ITM001','Acetone','200','195','-5','Spillage','Order replacement','Closed','Checked seals','SUP001','2024-02-16','BuildingA','SHELF01','BIN04','2024-02-15','2024-02-16','Annual','Low');
INSERT INTO lab_inventory_audit VALUES ('AUD002','AUD002','2024-03-10','Physics','ITM002','Silicon Wafer','150','152','2','Counting error','Adjust records','Open','Verified counts','SUP002','2024-03-11','BuildingB','SHELF05','BIN02','2024-03-10','2024-03-11','Quarterly','Medium');
INSERT INTO lab_inventory_audit VALUES ('AUD003','AUD003','2024-04-05','Biology','ITM003','Petri Dish','500','500','0','N/A','N/A','Closed','All accounted for','SUP003','2024-04-06','BuildingC','SHELF03','BIN07','2024-04-05','2024-04-06','Annual','Low');

-- Table for environmental incident reports
CREATE TABLE environmental_incident_report (
  incident_id TEXT PRIMARY KEY,
  incident_date TEXT,
  incident_time TEXT,
  reporter_id TEXT,
  location TEXT,
  incident_type TEXT,
  severity INTEGER,
  description TEXT,
  immediate_action TEXT,
  root_cause TEXT,
  remediation_plan TEXT,
  responsible_party TEXT,
  status TEXT,
  closure_date TEXT,
  follow_up_date TEXT,
  regulatory_reported INTEGER,
  report_number TEXT,
  environmental_impact TEXT,
  cost_estimate REAL,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO environmental_incident_report VALUES ('INC001','2024-01-20','14:30','REP001','LabA','Spill','2','Minor chemical spill of ethanol','Contained with absorbent','Improper container closure','Dispose waste and retrain staff','TECH001','Closed','2024-01-21','2024-02-01',1,'RPT001','Low','500.0','No injuries', '2024-01-20','2024-01-21');
INSERT INTO environmental_incident_report VALUES ('INC002','2024-02-10','09:15','REP002','VentilationRoom','AirQuality','3','Elevated CO2 levels detected','Increased ventilation','Filter clog','Replace filter and schedule maintenance','ENG001','Open','NULL','2024-03-01',0,'RPT002','Medium','1500.0','Monitoring ongoing', '2024-02-10','2024-02-10');
INSERT INTO environmental_incident_report VALUES ('INC003','2024-03-05','22:45','REP003','StorageArea','Fire','5','Small fire caused by electrical fault','Activated fire alarm, extinguished','Faulty wiring','Rewire area and conduct inspection','ELEC001','Closed','2024-03-06','2024-04-15',1,'RPT003','High','10000.0','Full investigation completed', '2024-03-05','2024-03-06');