-- Lab automation workflow definitions
CREATE TABLE lab_automation_workflow (
  workflow_id TEXT PRIMARY KEY,
  workflow_name TEXT,
  description TEXT,
  created_date DATE,
  updated_date DATE,
  status TEXT,
  version INTEGER,
  owner_researcher_id TEXT,
  trigger_event TEXT,
  step_count INTEGER,
  average_duration_min REAL,
  last_run_timestamp DATETIME,
  success_rate REAL,
  error_threshold INTEGER,
  notification_email TEXT,
  schedule_cron TEXT,
  resource_pool_id TEXT,
  is_active INTEGER,
  priority_level INTEGER,
  remarks TEXT
);

INSERT INTO lab_automation_workflow VALUES
('WF001','SynthesisAutomation','Automates synthesis steps','2023-01-01','2023-06-01','active',1,'R001','start_signal',5,12.5,'2023-07-01 10:00:00',0.98,2,'lab@example.com','0 0 * * *','RP001',1,3,'Initial deployment'),
('WF002','AnalysisPipeline','Data analysis pipeline','2022-05-15','2023-05-20','inactive',2,'R002','data_ready',8,30.0,'2023-07-02 14:30:00',0.85,5,'analysis@example.com','30 2 * * 1','RP002',0,2,'Pending review'),
('WF003','CleaningRoutine','Automated cleaning schedule','2021-09-10','2023-01-15','active',3,'R003','timer',3,45.0,'2023-07-03 08:00:00',0.99,1,'clean@example.com','0 3 * * 0','RP003',1,5,'Routine update');

-- Equipment depreciation schedule
CREATE TABLE equipment_depreciation_schedule (
  depreciation_id TEXT PRIMARY KEY,
  equipment_id TEXT,
  purchase_date DATE,
  cost REAL,
  depreciation_method TEXT,
  useful_life_years INTEGER,
  salvage_value REAL,
  annual_depreciation REAL,
  accumulated_depreciation REAL,
  current_book_value REAL,
  last_update DATE,
  approved_by TEXT,
  depreciation_status TEXT,
  fiscal_year INTEGER,
  depreciation_rate_percent REAL,
  notes TEXT,
  asset_location TEXT,
  warranty_end_date DATE,
  disposal_status TEXT,
  disposal_date DATE
);

INSERT INTO equipment_depreciation_schedule VALUES
('DEP001','EQ001','2018-03-15',25000,'straight_line',10,5000,2000,6000,19000,'2023-06-30','MGR001','ongoing',2023,8.0,'Initial schedule','Lab A','2025-03-15','not_disposed',NULL),
('DEP002','EQ002','2020-07-20',12000,'double_declining',5,2000,4800,9600,2400,'2023-06-30','MGR002','completed',2023,40.0,'Depreciated fully','Lab B','2023-07-20','disposed','2023-07-25'),
('DEP003','EQ003','2019-11-05',8000,'sum_of_years','7',800,1142.86,3428.58,4571.42,'2023-06-30','MGR003','ongoing',2023,10.0','Mid‑life','Lab C','2024-11-05','not_disposed',NULL);

-- Researcher performance review
CREATE TABLE researcher_performance_review (
  review_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  review_period_start DATE,
  review_period_end DATE,
  overall_score REAL,
  publications_count INTEGER,
  grants_awarded INTEGER,
  mentorship_hours INTEGER,
  lab_hours INTEGER,
  training_completed INTEGER,
  infractions INTEGER,
  commendations INTEGER,
  reviewer_id TEXT,
  review_date DATE,
  future_goals TEXT,
  development_plan TEXT,
  rating_excellence INTEGER,
  rating_collaboration INTEGER,
  rating_innovation INTEGER,
  comments TEXT
);

INSERT INTO researcher_performance_review VALUES
('REV001','R001','2022-01-01','2022-12-31',4.5,5,2,30,1500,3,0,2,'MGR001','2023-01-15','Publish 2 papers','Attend leadership workshop',5,4,5,'Excellent overall'),
('REV002','R002','2021-07-01','2022-06-30',3.8,2,1,20,1200,2,1,'MGR002','2022-07-10','Increase grant submissions','Complete data analysis course',4,5,4,'Strong collaborator'),
('REV003','R003','2022-04-01','2023-03-31',4.2,4,3,25,1400,4,0,'MGR003','2023-04-05','Lead a new project','Mentor junior staff',5,5,5,'Outstanding performance');

-- Chemical hazard monitoring
CREATE TABLE chemical_hazard_monitoring (
  monitor_id TEXT PRIMARY KEY,
  chemical_id TEXT,
  location TEXT,
  sensor_type TEXT,
  reading_value REAL,
  unit TEXT,
  timestamp DATETIME,
  threshold REAL,
  status TEXT,
  alert_sent INTEGER,
  responsible_staff_id TEXT,
  calibration_date DATE,
  sensor_serial TEXT,
  maintenance_due DATE,
  notes TEXT,
  batch_number TEXT,
  storage_temp REAL,
  storage_humidity REAL,
  risk_level TEXT,
  mitigation_action TEXT
);

INSERT INTO chemical_hazard_monitoring VALUES
('MON001','CHEM001','StorageRoom1','gas','0.02','ppm','2023-07-01 09:00:00','0.05','normal',0,'STF001','2023-01-01','SN001','2024-01-01','All clear','BATCH01',22.5,45,'low','Routine ventilation'),
('MON002','CHEM002','BenchA','liquid','5.5','%','2023-07-01 10:15:00','10','normal',0,'STF002','2023-02-15','SN002','2024-02-15','Stable','BATCH02',18.0,40,'medium','Increase fume hood flow'),
('MON003','CHEM003','ReactorZone','temperature','78.0','C','2023-07-01 11:30:00','100','warning',1,'STF003','2022-12-20','SN003','2023-12-20','Approaching limit','BATCH03',75.0,30,'high','Immediate cooling');

-- Bioinformatics tool version registry
CREATE TABLE bioinformatics_tool_version (
  tool_id TEXT PRIMARY KEY,
  tool_name TEXT,
  version_number TEXT,
  release_date DATE,
  supported_os TEXT,
  license_type TEXT,
  vendor TEXT,
  checksum TEXT,
  documentation_url TEXT,
  installed_by TEXT,
  install_date DATE,
  last_update DATE,
  deprecated_flag INTEGER,
  compatibility_notes TEXT,
  performance_metrics TEXT,
  default_parameters TEXT,
  usage_count INTEGER,
  last_used_timestamp DATETIME,
  maintainer_contact TEXT,
  notes TEXT
);

INSERT INTO bioinformatics_tool_version VALUES
('BT001','SeqAnalyzer','2.3.1','2022-05-10','Linux','GPL','BioSoft','abc123def','http://docs.example.com/seqanalyzer','IT001','2022-05-12','2023-06-01',0,'Compatible with Python3.8','CPU 2.5GHz','--fast','150','2023-07-01 14:00:00','maint@example.com','Stable release'),
('BT002','GenomeMapper','5.0.0','2023-01-20','Windows','Commercial','GenMap Inc','def456ghi','http://docs.example.com/genomemapper','IT002','2023-01-22','2023-06-15',0,'Requires .NET 5','Memory 8GB','--default','85','2023-07-02 09:30:00','support@genmap.com','Latest features added'),
('BT003','PhyloTree','1.8','2021-11-05','macOS','MIT','PhyloTech','ghi789jkl','http://docs.example.com/phylotree','IT003','2021-11-07','2023-05-20',1,'Deprecated, use PhyloTreePro','CPU 1.8GHz','--mode ultra','30','2023-06-28 16:45:00','legacy@phylotech.com','Deprecated version');

-- Facility cleaning log
CREATE TABLE facility_cleaning_log (
  cleaning_id TEXT PRIMARY KEY,
  area_id TEXT,
  area_name TEXT,
  cleaning_type TEXT,
  scheduled_date DATE,
  actual_date DATE,
  cleaner_id TEXT,
  supervisor_id TEXT,
  checklist_passed INTEGER,
  issues_found TEXT,
  issue_severity TEXT,
  resolution_action TEXT,
  time_spent_minutes INTEGER,
  cleaning_status TEXT,
  chemicals_used TEXT,
  equipment_used TEXT,
  safety_checks_passed INTEGER,
  comments TEXT,
  next_due_date DATE,
  log_entry_timestamp DATETIME
);

INSERT INTO facility_cleaning_log VALUES
('CLN001','A001','BenchArea','routine','2023-07-01','2023-07-01','CLN001','SUP001',1,'none','none','none',45,'completed','disinfectant','mop',1,'All good','2023-07-08','2023-07-01 08:10:00'),
('CLN002','A002','FumeHood','deep','2023-07-02','2023-07-02','CLN002','SUP002',0,'filter clog','high','replace filter',120,'completed','filter','vacuum',1,'Filter replaced','2023-07-09','2023-07-02 10:20:00'),
('CLN003','A003','ColdRoom','routine','2023-07-03','2023-07-03','CLN003','SUP003',1,'none','none','none',30,'completed','none','none',1,'Temperature stable','2023-07-10','2023-07-03 07:55:00');

-- Instrument temperature log
CREATE TABLE instrument_temperature_log (
  temp_log_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  location TEXT,
  temperature_c REAL,
  timestamp DATETIME,
  recorded_by TEXT,
  status TEXT,
  deviation_flag INTEGER,
  corrective_action TEXT,
  trend_id TEXT,
  sensor_id TEXT,
  calibration_date DATE,
  notes TEXT,
  ambient_temp_c REAL,
  humidity_percent REAL,
  set_point_c REAL,
  tolerance_c REAL,
  alert_sent INTEGER,
  maintenance_required INTEGER,
  log_version INTEGER
);

INSERT INTO instrument_temperature_log VALUES
('TL001','INST001','Room1',22.5,'2023-07-01 09:00:00','OP001','normal',0,'none','TR001','SEN001','2023-01-01','All good',22.0,40,23.0,1.0,0,0,1),
('TL002','INST002','Room2',35.2,'2023-07-01 09:15:00','OP002','warning',1,'cooling system check','TR002','SEN002','2022-12-15','High temperature observed',30.0,45,25.0,2.0,1,1,1),
('TL003','INST003','Room3',18.0,'2023-07-01 09:30:00','OP003','normal',0,'none','TR003','SEN003','2023-03-10','Stable',18.5,38,20.0,1.5,0,0,1);

-- Sample quality assurance records
CREATE TABLE sample_quality_assurance (
  qa_id TEXT PRIMARY KEY,
  sample_id TEXT,
  assay_type TEXT,
  qa_status TEXT,
  reviewer_id TEXT,
  review_date DATE,
  pass_fail TEXT,
  deviation_detail TEXT,
  corrective_action TEXT,
  re_test_required INTEGER,
  re_test_date DATE,
  notes TEXT,
  quality_score REAL,
  batch_number TEXT,
  storage_conditions TEXT,
  transport_temperature REAL,
  chain_of_custody_id TEXT,
  regulatory_compliance TEXT,
  equipment_used TEXT,
  analyst_id TEXT
);

INSERT INTO sample_quality_assurance VALUES
('QA001','SMP001','ELISA','approved','REV001','2023-07-01','pass','none','none',0,NULL,'All parameters met',95.2,'BATCH01','-20C','2.0','COC001','compliant','ELISA Reader','ANL001'),
('QA002','SMP002','PCR','pending','REV002','2023-07-02','fail','Ct value high','repeat PCR',1,'2023-07-05','Review needed',68.4,'BATCH02','-80C','-30','COC002','non_compliant','PCR Thermocycler','ANL002'),
('QA003','SMP003','MassSpec','approved','REV003','2023-07-03','pass','none','none',0,NULL,'Spectra within range',88.7,'BATCH03','4C','room','COC003','compliant','Mass Spectrometer','ANL003');

-- Computational job dependency mapping
CREATE TABLE computational_job_dependency (
  dep_id TEXT PRIMARY KEY,
  job_id TEXT,
  dependent_job_id TEXT,
  dependency_type TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  is_active INTEGER,
  priority INTEGER,
  estimated_start DATETIME,
  estimated_end DATETIME,
  actual_start DATETIME,
  actual_end DATETIME,
  status TEXT,
  notes TEXT,
  owner_id TEXT,
  resource_requirements TEXT,
  sla_hours INTEGER,
  notification_sent INTEGER,
  escalation_level INTEGER,
  retry_count INTEGER
);

INSERT INTO computational_job_dependency VALUES
('DEP001','JOB001','JOB002','sequential','2023-06-01 08:00:00','2023-06-10 12:00:00',1,1,'2023-07-01 10:00:00','2023-07-01 12:00:00',NULL,NULL,'pending','Initial mapping','USR001','CPU4,Mem16GB',24,0,1,0),
('DEP002','JOB003','JOB004','parallel','2023-05-15 09:30:00','2023-06-20 15:45:00',1,2,'2023-07-02 14:00:00','2023-07-02 16:30:00',NULL,NULL,'queued','Run together','USR002','GPU1,Mem32GB',12,0,2,0),
('DEP003','JOB005','JOB006','conditional','2023-04-10 11:20:00','2023-05-05 13:55:00',0,3,NULL,NULL,NULL,NULL,'cancelled','Dependency removed','USR003','CPU2,Mem8GB',48,1,3,1);

-- Regulatory inspection schedule
CREATE TABLE regulatory_inspection_schedule (
  schedule_id TEXT PRIMARY KEY,
  facility_section TEXT,
  inspector_id TEXT,
  inspection_type TEXT,
  scheduled_date DATE,
  frequency_days INTEGER,
  last_inspection_date DATE,
  next_due_date DATE,
  status TEXT,
  findings_summary TEXT,
  corrective_action_deadline DATE,
  responsible_party TEXT,
  compliance_status TEXT,
  notes TEXT,
  created_by TEXT,
  created_at DATETIME,
  updated_by TEXT,
  updated_at DATETIME,
  document_reference TEXT,
  escalation_needed INTEGER
);

INSERT INTO regulatory_inspection_schedule VALUES
('SCH001','ChemicalStorage','INSP001','safety','2023-08-01',180,'2023-02-01','2023-08-01','scheduled','pending review','2023-08-15','SAFETY_OFFICER','pending','initial schedule','ADMIN001','2023-01-10 09:00:00','ADMIN002','2023-06-01 10:30:00','DOC001',0),
('SCH002','RadiationLab','INSP002','radiation','2023-09-15',365,'2022-09-15','2023-09-15','scheduled','pending review','2023-09-30','RAD_OFFICER','pending','annual radiation check','ADMIN003','2023-02-20 11:15:00','ADMIN004','2023-07-15 14:45:00','DOC002',0),
('SCH003','WasteManagement','INSP003','environment','2023-07-20',90,'2023-04-20','2023-07-20','scheduled','pending review','2023-07-25','ENV_OFFICER','pending','quarterly waste audit','ADMIN005','2023-03-05 08:30:00','ADMIN006','2023-06-10 12:00:00','DOC003',0);