-- Nanomaterial exposure report
CREATE TABLE nanomaterial_exposure_report (
  report_id TEXT PRIMARY KEY,
  batch_id TEXT,
  material_type TEXT,
  exposure_level TEXT,
  exposure_duration_minutes INTEGER,
  employee_id TEXT,
  department TEXT,
  safety_officer TEXT,
  report_date TEXT,
  mitigation_action TEXT,
  follow_up_date TEXT,
  comments TEXT,
  measurement_device_id TEXT,
  ambient_temperature_c REAL,
  humidity_percent REAL,
  ventilation_rate_cmh REAL,
  protective_equipment_used TEXT,
  incident_category TEXT,
  regulatory_reference TEXT,
  audit_status TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT
);

INSERT INTO nanomaterial_exposure_report VALUES
('RPT001','BCH1001','CarbonNanotube','High',45,'EMP123','Materials','SO001','2024-10-01','Evacuation and area containment','2024-10-15','No injuries reported','DEV01',22.5,45.0,350.0,'FullSuit','Spill','REG-2023-07','Pending','2024-10-01T08:00:00','2024-10-01T12:00:00');

INSERT INTO nanomaterial_exposure_report VALUES
('RPT002','BCH1002','SilicaNanoparticle','Medium',30,'EMP124','R&D','SO002','2024-10-03','Ventilation increase','2024-10-10','Minor skin irritation','DEV02',21.0,40.0,300.0,'Mask','Leak','REG-2023-08','Approved','2024-10-03T09:15:00','2024-10-03T11:45:00');

INSERT INTO nanomaterial_exposure_report VALUES
('RPT003','BCH1003','Graphene','Low',15,'EMP125','Engineering','SO003','2024-10-05','Air filter replacement','2024-10-12','No incident','DEV03',23.0,50.0,400.0,'Gloves','Dust','REG-2023-09','Reviewed','2024-10-05T07:30:00','2024-10-05T09:00:00');

-- Chemical process quality control
CREATE TABLE chemical_process_quality_control (
  qc_id TEXT PRIMARY KEY,
  process_id TEXT,
  batch_number TEXT,
  analyst_id TEXT,
  qc_date TEXT,
  ph_value REAL,
  conductivity_us_cm REAL,
  temperature_c REAL,
  pressure_bar REAL,
  impurity_percent REAL,
  yield_percent REAL,
  residence_time_min INTEGER,
  catalyst_activity REAL,
  visual_inspection_pass INTEGER,
  microscopy_pass INTEGER,
  spectroscopy_pass INTEGER,
  notes TEXT,
  approved_by TEXT,
  approval_date TEXT,
  revision_number INTEGER,
  created_at TEXT,
  modified_at TEXT
);

INSERT INTO chemical_process_quality_control VALUES
('QC001','PROC01','BN001','ANL001','2024-09-20',7.2,12.5,85.0,1.2,0.3,92.5,45,98.7,1,1,1,'All parameters within spec','MGR001','2024-09-21',1,'2024-09-20T08:00:00','2024-09-20T12:30:00');

INSERT INTO chemical_process_quality_control VALUES
('QC002','PROC02','BN002','ANL002','2024-09-22',6.8,10.9,78.0,1.0,0.5,88.0,50,96.4,1,0,1,'Microscopy failed due to particles','MGR002','2024-09-23',2,'2024-09-22T09:15:00','2024-09-22T14:00:00');

INSERT INTO chemical_process_quality_control VALUES
('QC003','PROC03','BN003','ANL003','2024-09-25',7.0,11.2,80.0,1.1,0.2,90.2,48,97.1,1,1,1,'Batch released','MGR003','2024-09-26',1,'2024-09-25T07:45:00','2024-09-25T11:20:00');

-- Instrument firmware deployment
CREATE TABLE instrument_firmware_deployment (
  deployment_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  firmware_version TEXT,
  deployment_date TEXT,
  deployed_by TEXT,
  deployment_method TEXT,
  checksum TEXT,
  rollout_stage TEXT,
  target_environment TEXT,
  success_flag INTEGER,
  error_code TEXT,
  rollback_needed INTEGER,
  rollback_version TEXT,
  notes TEXT,
  approved_by TEXT,
  approval_date TEXT,
  schedule_id TEXT,
  duration_minutes INTEGER,
  verification_passed INTEGER,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO instrument_firmware_deployment VALUES
('DEP001','INST100','v3.2.1','2024-08-15','TECH01','Remote','ABCD1234','Pilot','Production',1,'',0,'', 'Initial pilot deployment','MGR001','2024-08-16','SCH001',45,1,'2024-08-15T08:00:00','2024-08-15T09:00:00');

INSERT INTO instrument_firmware_deployment VALUES
('DEP002','INST101','v3.2.1','2024-08-20','TECH02','OnSite','EFGH5678','Full','Production',1,'',0,'', 'Full rollout completed','MGR002','2024-08-21','SCH002',60,1,'2024-08-20T10:30:00','2024-08-20T11:45:00');

INSERT INTO instrument_firmware_deployment VALUES
('DEP003','INST102','v3.1.9','2024-08-10','TECH03','Remote','IJKL9012','Rollback','Production',0,'ERR42',1,'v3.1.8','Rollback due to instability','MGR003','2024-08-11','SCH003',30,0,'2024-08-10T07:00:00','2024-08-10T07:45:00');

-- Researcher knowledge base
CREATE TABLE researcher_knowledge_base (
  kb_entry_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  topic TEXT,
  subtopic TEXT,
  entry_date TEXT,
  content_summary TEXT,
  document_id TEXT,
  url TEXT,
  tags TEXT,
  rating INTEGER,
  last_reviewed TEXT,
  reviewer_id TEXT,
  confidentiality_level TEXT,
  related_project_id TEXT,
  status TEXT,
  version INTEGER,
  created_at TEXT,
  updated_at TEXT,
  archive_flag INTEGER,
  notes TEXT
);

INSERT INTO researcher_knowledge_base VALUES
('KB001','RES001','CRISPR','GuideRNA Design','2024-07-01','Guide design workflow','DOC1001','http://labkb.org/doc1001','gene editing,CRISPR',5,'2024-07-15','REV001','Internal','PROJ001','Active',1,'2024-07-01T09:00:00','2024-07-15T10:30:00',0,'Initial entry');

INSERT INTO researcher_knowledge_base VALUES
('KB002','RES002','MachineLearning','Model Validation','2024-07-10','Cross‑validation techniques','DOC1002','http://labkb.org/doc1002','ML,validation',4,'2024-07-20','REV002','Public','PROJ002','Review',2,'2024-07-10T11:15:00','2024-07-20T14:45:00',0,'Updated with new metrics');

INSERT INTO researcher_knowledge_base VALUES
('KB003','RES003','Spectroscopy','NMR Peak Assignment','2024-07-12','Assigning peaks for small molecules','DOC1003','http://labkb.org/doc1003','NMR,spectroscopy',5,'2024-07-22','REV003','Restricted','PROJ003','Active',1,'2024-07-12T13:30:00','2024-07-22T15:00:00',0,'Added example spectra');

-- Environmental incident response plan
CREATE TABLE environmental_incident_response_plan (
  plan_id TEXT PRIMARY KEY,
  incident_type TEXT,
  location_id TEXT,
  activation_date TEXT,
  coordinator_id TEXT,
  description TEXT,
  resources_allocated TEXT,
  evacuation_route TEXT,
  communication_channel TEXT,
  responsible_agency TEXT,
  status TEXT,
  review_date TEXT,
  next_review_due TEXT,
  version INTEGER,
  approval_id TEXT,
  approved_by TEXT,
  created_at TEXT,
  updated_at TEXT,
  comments TEXT,
  budget_estimate REAL
);

INSERT INTO environmental_incident_response_plan VALUES
('PLAN001','Chemical Spill','LOC01','2024-09-01','COORD01','Spill of solvent in zone A','HazmatTeam,Absorbents','RouteA','Radio','EnvAgency','Active','2024-09-05','2025-09-05',1,'APP001','MGR001','2024-08-30T08:00:00','2024-09-01T12:00:00','Initial activation','15000.00');

INSERT INTO environmental_incident_response_plan VALUES
('PLAN002','Air Emission Exceedance','LOC02','2024-09-10','COORD02','Unexpected VOC release','AirFilters,PortableUnits','RouteB','Phone','AirRegulator','Closed','2024-09-12','2025-09-12',2,'APP002','MGR002','2024-09-09T09:30:00','2024-09-10T11:45:00','Incident resolved','8000.00');

INSERT INTO environmental_incident_response_plan VALUES
('PLAN003','Water Contamination','LOC03','2024-09-20','COORD03','Leak from storage tank','Pumps,ContainmentBags','RouteC','Email','WaterAuthority','Active','2024-09-22','2025-09-22',1,'APP003','MGR003','2024-09-18T07:45:00','2024-09-20T10:15:00','Monitoring ongoing','12000.00');

-- Lab power backups schedule
CREATE TABLE lab_power_backups_schedule (
  schedule_id TEXT PRIMARY KEY,
  backup_system_id TEXT,
  start_date TEXT,
  end_date TEXT,
  frequency_hours INTEGER,
  expected_duration_minutes INTEGER,
  responsible_engineer TEXT,
  verification_method TEXT,
  test_result TEXT,
  next_test_date TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  backup_type TEXT,
  capacity_kwh REAL,
  location TEXT,
  maintenance_window TEXT,
  risk_level TEXT,
  compliance_status TEXT,
  audit_id TEXT
);

INSERT INTO lab_power_backups_schedule VALUES
('SCH001','UPS01','2024-08-01','2024-12-31',24,30,'ENG001','LoadBank','Pass','2024-09-01','Monthly load test','2024-08-01T08:00:00','2024-08-01T09:00:00','UPS',250.0,'RoomA','02:00-04:00','Low','Compliant','AUD001');

INSERT INTO lab_power_backups_schedule VALUES
('SCH002','GEN02','2024-08-15','2025-08-14',168,180,'ENG002','FuelTest','Pass','2024-09-15','Weekly fuel quality check','2024-08-15T10:00:00','2024-08-15T12:00:00','Generator',1500.0,'RoomB','01:00-03:00','Medium','Compliant','AUD002');

INSERT INTO lab_power_backups_schedule VALUES
('SCH003','BAT03','2024-09-01','2025-02-28',48,45,'ENG003','BatteryDischarge','Fail','2024-10-01','Battery replacement required','2024-09-01T07:30:00','2024-09-01T08:30:00','Battery',500.0,'RoomC','03:00-05:00','High','Non‑Compliant','AUD003');

-- Sample isotopic enrichment log
CREATE TABLE sample_isotopic_enrichment_log (
  log_id TEXT PRIMARY KEY,
  sample_id TEXT,
  isotope TEXT,
  enrichment_percent REAL,
  enrichment_method TEXT,
  start_date TEXT,
  end_date TEXT,
  operator_id TEXT,
  instrument_id TEXT,
  temperature_c REAL,
  pressure_bar REAL,
  notes TEXT,
  quality_flag TEXT,
  verified_by TEXT,
  verification_date TEXT,
  batch_number TEXT,
  created_at TEXT,
  updated_at TEXT,
  storage_location TEXT,
  disposal_plan TEXT,
  regulatory_code TEXT
);

INSERT INTO sample_isotopic_enrichment_log VALUES
('ENR001','SMP100','C13',99.5,'GasExchange','2024-07-01','2024-07-05','OP001','INST200',25.0,1.0,'High purity enrichment','Pass','VER001','2024-07-06','BN100','2024-07-01T08:00:00','2024-07-06T12:00:00','FreezerA','Retain','REG-2024-01');

INSERT INTO sample_isotopic_enrichment_log VALUES
('ENR002','SMP101','N15',98.0,'Electrochemical','2024-07-10','2024-07-12','OP002','INST201',22.5,1.1,'Minor deviation observed','Conditional','VER002','2024-07-13','BN101','2024-07-10T09:30:00','2024-07-13T11:45:00','FreezerB','Retain','REG-2024-02');

INSERT INTO sample_isotopic_enrichment_log VALUES
('ENR003','SMP102','O18',95.0,'ThermalDiffusion','2024-07-20','2024-07-22','OP003','INST202',20.0,0.9,'Accepted','Pass','VER003','2024-07-23','BN102','2024-07-20T07:45:00','2024-07-23T10:15:00','FreezerC','Retain','REG-2024-03');

-- Computational model training log
CREATE TABLE computational_model_training_log (
  training_id TEXT PRIMARY KEY,
  model_name TEXT,
  version TEXT,
  dataset_id TEXT,
  training_start TEXT,
  training_end TEXT,
  compute_node_id TEXT,
  gpu_count INTEGER,
  epochs INTEGER,
  training_accuracy REAL,
  validation_accuracy REAL,
  loss REAL,
  optimizer TEXT,
  learning_rate REAL,
  batch_size INTEGER,
  hyperparameters_json TEXT,
  trained_by TEXT,
  approved_by TEXT,
  approval_date TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO computational_model_training_log VALUES
('TRN001','MolPredictor','v1.0','DS001','2024-06-01','2024-06-03','NODE01',4,50,0.92,0.88,0.15,'Adam',0.001,128,'{\"dropout\":0.2}','ANL001','MGR001','2024-06-04','Initial model for molecule property prediction','2024-06-01T08:00:00','2024-06-04T10:30:00');

INSERT INTO computational_model_training_log VALUES
('TRN002','ProteinFolding','v2.1','DS002','2024-06-10','2024-06-12','NODE02',8,100,0.95,0.91,0.10,'SGD',0.0005,256,'{\"momentum\":0.9}','ANL002','MGR002','2024-06-13','Improved architecture for folding accuracy','2024-06-10T09:15:00','2024-06-13T11:45:00');

INSERT INTO computational_model_training_log VALUES
('TRN003','CellSegmentation','v0.9','DS003','2024-06-20','2024-06-22','NODE03',2,30,0.88,0.85,0.20,'RMSprop',0.0008,64,'{\"weight_decay\":0.0001}','ANL003','MGR003','2024-06-23','Model for microscopy image segmentation','2024-06-20T07:30:00','2024-06-23T09:00:00');

-- Facility fire drill record
CREATE TABLE facility_fire_drill_record (
  drill_id TEXT PRIMARY KEY,
  facility_id TEXT,
  drill_date TEXT,
  coordinator_id TEXT,
  scenario_description TEXT,
  participants_count INTEGER,
  alarm_triggered_time TEXT,
  evacuation_time_minutes INTEGER,
  muster_point TEXT,
  injuries_reported INTEGER,
  equipment_damage TEXT,
  lessons_learned TEXT,
  follow_up_actions TEXT,
  next_drill_date TEXT,
  status TEXT,
  auditor_id TEXT,
  audit_date TEXT,
  remarks TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO facility_fire_drill_record VALUES
('FD001','FAC01','2024-08-05','COORD01','Simulated electrical fire in Lab 3',45,'08:00:30',3,'MusterZoneA',0,'None','Improved signage required','Update evacuation maps','2024-11-05','Completed','AUD001','2024-08-06','Drill executed smoothly','2024-08-05T08:00:00','2024-08-06T09:00:00');

INSERT INTO facility_fire_drill_record VALUES
('FD002','FAC02','2024-08-12','COORD02','Chemical spill fire scenario',60,'09:15:00',4,'MusterZoneB',1,'Fire extinguisher damaged','Replaced damaged extinguisher','Conduct refresher training','2024-12-12','Completed','AUD002','2024-08-13','One minor injury treated','2024-08-12T09:15:00','2024-08-13T10:30:00');

INSERT INTO facility_fire_drill_record VALUES
('FD003','FAC03','2024-08-20','COORD03','Full building evacuation',120,'07:45:00',5,'MusterZoneC',0,'None','Better alarm synchronization needed','Upgrade alarm system','2025-01-20','Scheduled','AUD003','2024-08-21','Pending equipment upgrade','2024-08-20T07:45:00','2024-08-21T09:15:00');

-- Biohazard decontamination log
CREATE TABLE biohazard_decontamination_log (
  log_id TEXT PRIMARY KEY,
  area_id TEXT,
  decontamination_date TEXT,
  method TEXT,
  chemical_used TEXT,
  concentration_percent REAL,
  exposure_time_minutes INTEGER,
  technician_id TEXT,
  equipment_id TEXT,
  pre_decon_status TEXT,
  post_decon_status TEXT,
  validation_method TEXT,
  validation_result TEXT,
  notes TEXT,
  approved_by TEXT,
  approval_date TEXT,
  next_scheduled TEXT,
  compliance_status TEXT,
  audit_reference TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO biohazard_decontamination_log VALUES
('DC001','AREA01','2024-07-15','Chemical','Bleach',5.0,30,'TECH001','EQ001','Contaminated','Clean','Swab Test','Pass','Standard decontamination','MGR001','2024-07-16','2024-10-15','Compliant','AUD001','2024-07-15T08:00:00','2024-07-16T09:30:00');

INSERT INTO biohazard_decontamination_log VALUES
('DC002','AREA02','2024-07-20','UV','N/A',0,20,'TECH002','EQ002','Contaminated','Reduced','UV Sensor Readout','Pass','Used UV-C for 20 min','MGR002','2024-07-21','2024-11-20','Compliant','AUD002','2024-07-20T10:00:00','2024-07-21T11:15:00');

INSERT INTO biohazard_decontamination_log VALUES
('DC003','AREA03','2024-07-25','Steam','Steam',0,25,'TECH003','EQ003','Contaminated','Clean','Temperature Log','Fail','Steam temperature insufficient','MGR003','2024-07-26','2024-12-25','Non‑Compliant','AUD003','2024-07-25T09:30:00','2024-07-26T10:45:00');