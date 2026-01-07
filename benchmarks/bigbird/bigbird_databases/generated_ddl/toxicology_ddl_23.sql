-- Table for tracking production batches of nanomaterials
CREATE TABLE nanomaterial_production_batch (
  batch_id TEXT NOT NULL,
  material_name TEXT,
  synthesis_method TEXT,
  operator_id TEXT,
  start_date TEXT,
  end_date TEXT,
  target_size_nm REAL,
  size_distribution REAL,
  purity_percent REAL,
  yield_mg REAL,
  reactor_id TEXT,
  temperature_c REAL,
  pressure_bar REAL,
  stirring_speed_rpm INTEGER,
  atmosphere TEXT,
  safety_check_passed INTEGER,
  batch_status TEXT,
  comments TEXT,
  quality_approval_id TEXT,
  created_at TEXT,
  PRIMARY KEY (batch_id)
);

INSERT INTO nanomaterial_production_batch VALUES ('NB001','GoldNanoparticle','Turkevich','OP001','2025-03-01','2025-03-02',20.5,5.1,98.7,1500,'R001',85.0,1200,'Nitrogen',1,'Completed','Initial batch','QA001','2025-03-01');
INSERT INTO nanomaterial_production_batch VALUES ('NB002','SilverNanoparticle','Polyol','OP002','2025-04-10','2025-04-11',15.2,3.8,96.3,2000,'R002',95.0,800,'Argon',1,'Completed','Scale up','QA002','2025-04-10');
INSERT INTO nanomaterial_production_batch VALUES ('NB003','TitaniumDioxide','SolGel','OP003','2025-05-05','2025-05-06',50.0,7.2,99.1,2500,'R003',120.0,500,'Air',0,'Hold','Awaiting QC','QA003','2025-05-05');

-- Table for scheduling spectrometer maintenance activities
CREATE TABLE spectrometer_maintenance_schedule (
  maintenance_id TEXT NOT NULL,
  spectrometer_id TEXT,
  scheduled_date TEXT,
  technician_id TEXT,
  maintenance_type TEXT,
  duration_hours REAL,
  calibration_required INTEGER,
  parts_replaced TEXT,
  software_update_version TEXT,
  safety_lockout INTEGER,
  pre_check_passed INTEGER,
  post_check_passed INTEGER,
  notes TEXT,
  priority_level TEXT,
  estimated_cost REAL,
  actual_cost REAL,
  downtime_minutes INTEGER,
  created_by TEXT,
  created_at TEXT,
  approved_by TEXT,
  PRIMARY KEY (maintenance_id)
);

INSERT INTO spectrometer_maintenance_schedule VALUES ('SM001','SPEC001','2025-06-01','TECH001','FullService',4.5,1,'Detector,Grating','v2.3',1,1,1,'All good','High',1200.00,1150.00,30,'ADMIN','2025-05-20','DIR001');
INSERT INTO spectrometer_maintenance_schedule VALUES ('SM002','SPEC002','2025-06-15','TECH002','CalibrationOnly',2.0,1,NULL,'v2.4',1,1,1,'Calibration successful','Medium',300.00,280.00,15,'ADMIN','2025-06-01','DIR002');
INSERT INTO spectrometer_maintenance_schedule VALUES ('SM003','SPEC003','2025-07-10','TECH003','Preventive',3.0,0,'Lamp','v2.5',1,1,0,'Lamp replaced, pending verification','Low',500.00,0.00,20,'ADMIN','2025-06-20','DIR003');

-- Table for recording laboratory airflow test results
CREATE TABLE lab_airflow_test (
  test_id TEXT NOT NULL,
  lab_room TEXT,
  test_date TEXT,
  technician_id TEXT,
  airflow_rate_cfm REAL,
  pressure_diff_pa REAL,
  temperature_c REAL,
  humidity_percent REAL,
  filter_status TEXT,
  equipment_id TEXT,
  pass_fail TEXT,
  comments TEXT,
  reference_standard TEXT,
  measurement_device TEXT,
  calibration_date TEXT,
  tolerance_percent REAL,
  anomaly_detected INTEGER,
  corrective_action TEXT,
  created_at TEXT,
  approved_by TEXT,
  PRIMARY KEY (test_id)
);

INSERT INTO lab_airflow_test VALUES ('AT001','RoomA','2025-08-01','TECH010',850.0,12.5,22.0,45.0,'OK','EQ001','Pass','Normal operation','ISO14644','Anemometer','2025-07-15',5.0,0,'None','2025-08-01','SUP001');
INSERT INTO lab_airflow_test VALUES ('AT002','RoomB','2025-08-05','TECH011',760.0,15.0,21.5,48.0,'Replace','EQ002','Fail','Low airflow','ISO14644','Anemometer','2025-07-20',5.0,1,'Clean filter','2025-08-05','SUP002');
INSERT INTO lab_airflow_test VALUES ('AT003','RoomC','2025-08-10','TECH012',920.0,10.0,23.0,40.0,'OK','EQ003','Pass','All within spec','ISO14644','Anemometer','2025-07-25',5.0,0,'None','2025-08-10','SUP003');

-- Table for tracking chemical process batches
CREATE TABLE chemical_process_batch (
  process_batch_id TEXT NOT NULL,
  process_name TEXT,
  batch_number TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  operator_id TEXT,
  reactor_type TEXT,
  volume_liters REAL,
  temperature_setpoint_c REAL,
  pressure_setpoint_bar REAL,
  pH_setpoint REAL,
  catalyst_id TEXT,
  feed_rate_ml_min REAL,
  product_yield_percent REAL,
  impurity_level_ppm REAL,
  safety_interlock_status INTEGER,
  batch_status TEXT,
  comments TEXT,
  quality_release_id TEXT,
  created_at TEXT,
  PRIMARY KEY (process_batch_id)
);

INSERT INTO chemical_process_batch VALUES ('CPB001','Esterification','BATCH001','2025-09-01 08:00','2025-09-01 12:30','OP100','StirredTank',500.0,80.0,1.5,4.5,'CAT01',250.0,92.3,150.0,1,'Completed','No issues','QR001','2025-09-01');
INSERT INTO chemical_process_batch VALUES ('CPB002','Polymerization','BATCH002','2025-09-05 09:15','2025-09-05 18:45','OP101','BatchReactor',1200.0,120.0,5.0,7.0,'CAT02',400.0,85.0,300.0,1,'Completed','Viscosity higher than expected','QR002','2025-09-05');
INSERT INTO chemical_process_batch VALUES ('CPB003','Hydrogenation','BATCH003','2025-09-10 07:45','2025-09-10 14:20','OP102','FixedBed',800.0,60.0,2.0,6.0,'CAT03',350.0,88.5,200.0,0,'Hold','Interlock failure','QR003','2025-09-10');

-- Table for managing research collaboration agreements
CREATE TABLE research_collaboration_agreement (
  agreement_id TEXT NOT NULL,
  project_title TEXT,
  lead_institution TEXT,
  partner_institution TEXT,
  start_date TEXT,
  end_date TEXT,
  principal_investigator_id TEXT,
  collaborator_pi_id TEXT,
  funding_amount_usd REAL,
  currency TEXT,
  agreement_status TEXT,
  confidentiality_level TEXT,
  data_sharing_policy TEXT,
  intellectual_property_clause TEXT,
  publication_rights TEXT,
  termination_notice_days INTEGER,
  renewal_option INTEGER,
  signed_by_lead TEXT,
  signed_by_partner TEXT,
  created_at TEXT,
  PRIMARY KEY (agreement_id)
);

INSERT INTO research_collaboration_agreement VALUES ('RCA001','Nanomaterial Toxicity Study','UniversityA','InstituteB','2025-01-01','2027-12-31','PI001','PI002',2500000.00,'USD','Active','High','Open','Joint','Co‑author','90',1,'LEAD_SIGN','PARTNER_SIGN','2025-01-01');
INSERT INTO research_collaboration_agreement VALUES ('RCA002','AI‑Driven Drug Discovery','CompanyX','UniversityC','2024-06-15','2026-06-14','PI010','PI020',1500000.00,'USD','Active','Medium','Restricted','Company','Lead','60',0,'LEAD_SIGN','PARTNER_SIGN','2024-06-15');
INSERT INTO research_collaboration_agreement VALUES ('RCA003','Environmental Sensor Network','InstituteD','GovAgencyE','2023-03-01','2025-02-28','PI030','PI040',800000.00,'USD','Completed','Low','Open','Joint','Shared','30',0,'LEAD_SIGN','PARTNER_SIGN','2023-03-01');

-- Table for recording instrument noise profiles
CREATE TABLE instrument_noise_profile (
  profile_id TEXT NOT NULL,
  instrument_id TEXT,
  measurement_date TEXT,
  frequency_hz REAL,
  amplitude_db REAL,
  noise_type TEXT,
  environment TEXT,
  operator_id TEXT,
  calibration_id TEXT,
  pass_fail TEXT,
  notes TEXT,
  reference_standard TEXT,
  measurement_device TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  signal_to_noise_ratio REAL,
  bandwidth_hz REAL,
  corrected_amplitude_db REAL,
  created_at TEXT,
  approved_by TEXT,
  PRIMARY KEY (profile_id)
);

INSERT INTO instrument_noise_profile VALUES ('NP001','INST001','2025-10-01',5000.0, -85.2,'White','Lab','TECH020','CAL001','Pass','Within spec','ISOIEC','SoundMeter','22.0',40.0,70.5,2000.0,-85.0,'2025-10-01','ENG001');
INSERT INTO instrument_noise_profile VALUES ('NP002','INST002','2025-10-05',12000.0, -78.5,'Pink','CleanRoom','TECH021','CAL002','Fail','Exceeds limit','ISOIEC','SoundMeter','20.0',35.0,55.2,2500.0,-78.0,'2025-10-05','ENG002');
INSERT INTO instrument_noise_profile VALUES ('NP003','INST003','2025-10-10',8000.0, -82.0,'White','Lab','TECH022','CAL003','Pass','Good','ISOIEC','SoundMeter','21.5',38.0,68.0,1800.0,-81.8,'2025-10-10','ENG003');

-- Table for logging molecular simulation jobs
CREATE TABLE molecular_simulation_job (
  job_id TEXT NOT NULL,
  simulation_name TEXT,
  molecule_id TEXT,
  method TEXT,
  force_field TEXT,
  temperature_k REAL,
  pressure_bar REAL,
  time_ns REAL,
  timestep_fs REAL,
  number_of_steps INTEGER,
  compute_node_id TEXT,
  cpu_cores INTEGER,
  gpu_count INTEGER,
  memory_gb REAL,
  job_status TEXT,
  submitted_at TEXT,
  started_at TEXT,
  completed_at TEXT,
  result_path TEXT,
  notes TEXT,
  PRIMARY KEY (job_id)
);

INSERT INTO molecular_simulation_job VALUES ('MSJ001','MD_Run1','MOL001','MolecularDynamics','OPLS-AA',300.0,1.0,100.0,2.0,50000,'NODE01',32,2,128.0,'Completed','2025-11-01 08:00','2025-11-01 09:00','2025-11-05 12:00','/results/msj001/','Successful run');
INSERT INTO molecular_simulation_job VALUES ('MSJ002','QM_Calc1','MOL002','QuantumChemistry','B3LYP',298.0,1.0,0.5,0.5,1000,'NODE02',16,0,64.0,'Failed','2025-11-02 10:00','2025-11-02 11:00','2025-11-02 13:30','/results/msj002/','Convergence not reached');
INSERT INTO molecular_simulation_job VALUES ('MSJ003','CoarseGrain1','MOL003','CoarseGrain','MARTINI',310.0,1.0,200.0,5.0,40000,'NODE03',48,4,256.0,'Running','2025-11-03 07:30','2025-11-03 08:15',NULL,'/results/msj003/','Monitoring');

-- Table for logging sample preservation procedures
CREATE TABLE sample_preservation_log (
  preservation_id TEXT NOT NULL,
  sample_id TEXT,
  preservation_method TEXT,
  temperature_c REAL,
  storage_location TEXT,
  preservative_added TEXT,
  concentration_percent REAL,
  duration_days INTEGER,
  operator_id TEXT,
  verification_status TEXT,
  notes TEXT,
  date_preserved TEXT,
  expiration_date TEXT,
  quality_check_passed INTEGER,
  backup_storage_location TEXT,
  freezer_id TEXT,
  humidity_percent REAL,
  light_exposure TEXT,
  created_at TEXT,
  approved_by TEXT,
  PRIMARY KEY (preservation_id)
);

INSERT INTO sample_preservation_log VALUES ('SP001','SMP001','Cryopreservation',-80.0,'FreezerA','DMSO',10.0,365,'OPR001','Verified','No issues','2025-12-01','2026-12-01',1,'BackupBox01','FZ001',45.0,'None','2025-12-01','QC001');
INSERT INTO sample_preservation_log VALUES ('SP002','SMP002','Lyophilization',-20.0,'ShelfB','None',0.0,180,'OPR002','Verified','Completed','2025-12-10','2026-06-08',1,'BackupShelf02','FZ002',30.0,'Low','2025-12-10','QC002');
INSERT INTO sample_preservation_log VALUES ('SP003','SMP003','FormalinFixation',4.0,'CabinetC','Formalin',4.0,730,'OPR003','Pending','Awaiting QC','2025-12-15','2028-12-15',0,'BackupCabinet03','FZ003',55.0,'Medium','2025-12-15','QC003');

-- Table for monitoring facility gas concentrations
CREATE TABLE facility_gas_monitor (
  monitor_id TEXT NOT NULL,
  location TEXT,
  gas_type TEXT,
  concentration_ppm REAL,
  measurement_timestamp TEXT,
  sensor_id TEXT,
  calibration_date TEXT,
  alarm_triggered INTEGER,
  alarm_threshold_ppm REAL,
  temperature_c REAL,
  humidity_percent REAL,
  battery_level_percent INTEGER,
  maintenance_due_date TEXT,
  notes TEXT,
  created_at TEXT,
  recorded_by TEXT,
  PRIMARY KEY (monitor_id)
);

INSERT INTO facility_gas_monitor VALUES ('GM001','LabEntrance','CO','5.2','2025-12-20 08:00','SEN001','2025-06-01',0,50.0,22.0,40.0,95,'2026-06-01','Normal operation','2025-12-20','TECH030');
INSERT INTO facility_gas_monitor VALUES ('GM002','FumeHood1','NO2','12.8','2025-12-20 09:15','SEN002','2025-07-15',1,10.0,23.5,38.0,88,'2026-07-15','Alarm triggered, ventilation check required','2025-12-20','TECH031');
INSERT INTO facility_gas_monitor VALUES ('GM003','Warehouse','CH4','1.1','2025-12-20 10:30','SEN003','2025-08-20',0,5.0,21.0,45.0,92,'2026-08-20','All clear','2025-12-20','TECH032');

-- Table for tracking grant review panels
CREATE TABLE grant_review_panel (
  panel_id TEXT NOT NULL,
  grant_cycle TEXT,
  panel_chair_id TEXT,
  member_ids TEXT,
  meeting_date TEXT,
  venue TEXT,
  total_applications INTEGER,
  applications_reviewed INTEGER,
  average_score REAL,
  decision_deadline TEXT,
  meeting_minutes_path TEXT,
  conflicts_of_interest_resolved INTEGER,
  panel_status TEXT,
  notes TEXT,
  created_at TEXT,
  approved_by TEXT,
  PRIMARY KEY (panel_id)
);

INSERT INTO grant_review_panel VALUES ('GP001','2025_Q1','PI100','PI101,PI102,PI103','2025-01-15','ConferenceRoomA',120,120,4.7,'2025-02-01','/minutes/gp001.pdf',1,'Closed','Successful cycle','2025-01-01','DIR010');
INSERT INTO grant_review_panel VALUES ('GP002','2025_Q2','PI200','PI201,PI202,PI203,PI204','2025-04-20','ConferenceRoomB',150,145,4.2,'2025-05-05','/minutes/gp002.pdf',1,'Closed','Two applications pending','2025-04-01','DIR011');
INSERT INTO grant_review_panel VALUES ('GP003','2025_Q3','PI300','PI301,PI302','2025-07-10','ConferenceRoomC',130,0,0.0,'2025-08-01','/minutes/gp003.pdf',0,'Scheduled','Panel to be convened','2025-07-01','DIR012');