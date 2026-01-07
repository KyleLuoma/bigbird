-- Spectral instrument calibration records
CREATE TABLE spectral_instrument_calibration (
  calibration_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  calibration_date DATE,
  technician_id TEXT,
  wavelength_start REAL,
  wavelength_end REAL,
  calibration_method TEXT,
  reference_standard TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  pressure_hpa REAL,
  calibration_status TEXT,
  notes TEXT,
  version INTEGER,
  data_file_hash TEXT,
  duration_minutes INTEGER,
  calibration_type TEXT,
  lab_location TEXT,
  approved_by TEXT,
  next_due_date DATE
);

INSERT INTO spectral_instrument_calibration VALUES ('CAL001','SPEC01','2025-03-12','TECH100',200.0,800.0,'MethodA','StdA',22.5,45.0,1013.25,'Completed','Initial calibration',1,'HASHABC123',60,'Full','LabA','SUPV01','2026-03-12');
INSERT INTO spectral_instrument_calibration VALUES ('CAL002','SPEC02','2025-04-05','TECH101',150.0,750.0,'MethodB','StdB',21.0,40.0,1012.80,'Completed','Quarterly check',2,'HASHDEF456',45,'Partial','LabB','SUPV02','2026-04-05');
INSERT INTO spectral_instrument_calibration VALUES ('CAL003','SPEC03','2025-05-20','TECH102',250.0,900.0,'MethodC','StdC',23.0,50.0,1013.00,'Pending','Scheduled',3,'HASHGHI789',70,'Full','LabC','SUPV03','2026-05-20');

-- Nanomaterial exposure event log
CREATE TABLE nanomaterial_exposure_log (
  exposure_id TEXT PRIMARY KEY,
  nanomaterial_batch_id TEXT,
  employee_id TEXT,
  exposure_start DATETIME,
  exposure_end DATETIME,
  exposure_level_ppm REAL,
  protection_equipment_used TEXT,
  location_id TEXT,
  ventilation_rate_cfh REAL,
  incident_reported TEXT,
  corrective_action TEXT,
  notes TEXT,
  measurement_device_id TEXT,
  calibration_id TEXT,
  exposure_type TEXT,
  duration_minutes INTEGER,
  risk_category TEXT,
  supervisor_id TEXT,
  exposure_status TEXT,
  followup_date DATE
);

INSERT INTO nanomaterial_exposure_log VALUES ('EXP001','NBATCH01','EMP1001','2025-06-01 09:00:00','2025-06-01 10:30:00',0.75,'Mask,Gloves','LOC01',350.0,'Yes','Ventilation upgrade','No abnormal symptoms','DEV01','CAL001','Inhalation',90,'Low','SUPV10','Closed','2025-06-15');
INSERT INTO nanomaterial_exposure_log VALUES ('EXP002','NBATCH02','EMP1002','2025-06-02 14:15:00','2025-06-02 14:45:00',1.20,'Respirator','LOC02',400.0,'No','Immediate evacuation','Mild cough reported','DEV02','CAL002','Dermal',30,'Medium','SUPV11','Open','2025-06-20');
INSERT INTO nanomaterial_exposure_log VALUES ('EXP003','NBATCH03','EMP1003','2025-06-03 08:00:00','2025-06-03 09:00:00',0.50,'Mask','LOC03',300.0,'Yes','Procedure review','No symptoms','DEV03','CAL003','Inhalation',60,'Low','SUPV12','Closed','2025-06-18');

-- Lab airflow zone configuration
CREATE TABLE lab_airflow_zone_config (
  zone_id TEXT PRIMARY KEY,
  zone_name TEXT,
  floor_number INTEGER,
  area_sqm REAL,
  airflow_rate_cfh REAL,
  supply_temperature_c REAL,
  exhaust_temperature_c REAL,
  pressure_differential_pa REAL,
  filter_type TEXT,
  filter_efficiency_percent REAL,
  humidity_setpoint_percent REAL,
  temperature_setpoint_c REAL,
  cascade_control_enabled TEXT,
  occupancy_limit INTEGER,
  lighting_level_lux REAL,
  acoustic_noise_db REAL,
  maintenance_schedule TEXT,
  last_inspection_date DATE,
  responsible_engineer_id TEXT,
  notes TEXT
);

INSERT INTO lab_airflow_zone_config VALUES ('Z001','ZoneA',1,120.5,800.0,22.0,24.0,5.0,'HEPA','99.97',45.0,22.5,'Yes',10,500.0,45.0,'Quarterly','2025-02-10','ENG001','Primary cell culture area');
INSERT INTO lab_airflow_zone_config VALUES ('Z002','ZoneB',2,150.0,950.0,21.5,23.5,4.5,'ULPA','99.999',40.0,21.8,'No',12,600.0,50.0,'Biannual','2025-01-20','ENG002','Protein purification suite');
INSERT INTO lab_airflow_zone_config VALUES ('Z003','ZoneC',3,200.0,1100.0,22.5,25.0,6.0,'HEPA','99.97',47.0,22.7,'Yes',8,450.0/40.0,'Quarterly','2025-03-05','ENG003','Microscopy room');

-- Chemical process batch log
CREATE TABLE chemical_process_batch_log (
  batch_id TEXT PRIMARY KEY,
  process_id TEXT,
  start_timestamp DATETIME,
  end_timestamp DATETIME,
  reactor_id TEXT,
  batch_volume_l REAL,
  temperature_setpoint_c REAL,
  pressure_setpoint_bar REAL,
  catalyst_batch_id TEXT,
  raw_material_source TEXT,
  operator_id TEXT,
  safety_interlock_status TEXT,
  pH_setpoint REAL,
  dissolved_oxygen_mg_l REAL,
  yield_percent REAL,
  impurity_level_ppm REAL,
  batch_status TEXT,
  quality_approval_id TEXT,
  notes TEXT,
  archived_flag TEXT
);

INSERT INTO chemical_process_batch_log VALUES ('BATCH001','PROC10','2025-07-01 08:00:00','2025-07-01 16:00:00','RCRT01',500.0,180.0,5.0,'CAT001','SupplierA','OP100','Engaged',7.0,8.5,92.5,120.0,'Completed','QA001','Standard run','N');
INSERT INTO chemical_process_batch_log VALUES ('BATCH002','PROC11','2025-07-02 09:30:00','2025-07-02 14:45:00','RCRT02',300.0,150.0,3.5,'CAT002','SupplierB','OP101','Engaged',6.5,7.0,88.0,200.0,'Completed','QA002','Extended hold','N');
INSERT INTO chemical_process_batch_log VALUES ('BATCH003','PROC12','2025-07-03 07:15:00','2025-07-03 12:30:00','RCRT03',400.0,165.0,4.2,'CAT003','SupplierC','OP102','Disengaged',7.2,9.0,0.0,0.0,'Aborted','QA003','Pressure leak detected','Y');

-- Computational job resource profile
CREATE TABLE computational_job_resource_profile (
  job_id TEXT PRIMARY KEY,
  user_id TEXT,
  submission_timestamp DATETIME,
  start_timestamp DATETIME,
  end_timestamp DATETIME,
  cpu_cores_requested INTEGER,
  cpu_cores_used INTEGER,
  memory_gb_requested REAL,
  memory_gb_used REAL,
  gpu_units_requested INTEGER,
  gpu_units_used INTEGER,
  node_count_requested INTEGER,
  node_count_used INTEGER,
  queue_name TEXT,
  priority_level INTEGER,
  execution_status TEXT,
  error_code TEXT,
  runtime_seconds INTEGER,
  io_bytes_read BIGINT,
  io_bytes_written BIGINT
);

INSERT INTO computational_job_resource_profile VALUES ('JOB001','USR001','2025-08-01 10:00:00','2025-08-01 10:05:00','2025-08-01 11:30:00',16,15,64.0,60.5,2,2,1,1,'high','Success','0',5400,104857600,52428800);
INSERT INTO computational_job_resource_profile VALUES ('JOB002','USR002','2025-08-02 09:30:00','2025-08-02 09:35:00','2025-08-02 12:00:00',32,28,128.0,120.0,4,3,2,2,'medium','Failed','E123',9000,209715200,104857600);
INSERT INTO computational_job_resource_profile VALUES ('JOB003','USR003','2025-08-03 14:15:00','2025-08-03 14:20:00','2025-08-03 15:45:00',8,8,32.0,31.0,0,0,1,1,'low','Success','0',5700,52428800,26214400);

-- Environmental sensor network status
CREATE TABLE environmental_sensor_network_status (
  sensor_id TEXT PRIMARY KEY,
  sensor_type TEXT,
  installation_date DATE,
  location_id TEXT,
  firmware_version TEXT,
  calibration_id TEXT,
  last_maintenance_date DATE,
  battery_voltage_v REAL,
  signal_strength_dbm REAL,
  temperature_c REAL,
  humidity_percent REAL,
  co2_ppm REAL,
  pm2_5_ug_m3 REAL,
  voc_ppb REAL,
  status TEXT,
  uptime_hours INTEGER,
  error_log TEXT,
  data_transmission_interval_sec INTEGER,
  last_data_timestamp DATETIME,
  notes TEXT
);

INSERT INTO environmental_sensor_network_status VALUES ('SNS001','TempHum','2024-11-01','LOC10','v1.2.3','CAL010','2025-04-01',3.7, -65.0,22.3,45.0,400.0,12.5,250.0,'Online',4200,'','300','2025-09-01 08:00:00','Main lab');
INSERT INTO environmental_sensor_network_status VALUES ('SNS002','CO2','2024-12-15','LOC11','v2.0.1','CAL011','2025-05-10',3.6,-70.0,21.8,48.0,800.0,10.2,300.0,'Online',3950,'','300','2025-09-01 08:00:30','Ventilation duct');
INSERT INTO environmental_sensor_network_status VALUES ('SNS003','PM2.5','2025-01-20','LOC12','v1.5.0','CAL012','2025-06-20',3.8,-68.5,22.0,46.5,410.0,15.8,280.0,'Maintenance','100','Battery low','600','2025-08-31 23:55:00','Storage area');

-- Researcher collaboration metric
CREATE TABLE researcher_collaboration_metric (
  collab_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  project_id TEXT,
  collaboration_type TEXT,
  start_date DATE,
  end_date DATE,
  contribution_percentage REAL,
  publications_coauthored INTEGER,
  conferences_attended INTEGER,
  joint_grants INTEGER,
  shared_dataset_count INTEGER,
  mentorship_hours INTEGER,
  cross_department BOOLEAN,
  international BOOLEAN,
  remote_collaboration BOOLEAN,
  funding_amount_usd REAL,
  impact_factor_sum REAL,
  h_index_change INTEGER,
  notes TEXT,
  last_updated DATE
);

INSERT INTO researcher_collaboration_metric VALUES ('COL001','RES100','PRJ200','Co-PI','2022-01-15','2023-12-31',45.0,5,3,2,4,120,1,0,1,250000.0,12.5,2,'Lead on joint grant','2024-06-01');
INSERT INTO researcher_collaboration_metric VALUES ('COL002','RES101','PRJ201','Advisor','2021-05-01','2022-10-15',30.0,2,2,1,2,80,0,1,0,150000.0,8.0,1,'Mentored junior researcher','2023-01-10');
INSERT INTO researcher_collaboration_metric VALUES ('COL003','RES102','PRJ202','Data Sharing','2023-03-20','2024-03-20',20.0,1,1,0,5,40,1,0,1,50000.0,5.5,0,'Provided dataset for analysis','2024-04-05');

-- Facility power distribution map
CREATE TABLE facility_power_distribution_map (
  circuit_id TEXT PRIMARY KEY,
  circuit_name TEXT,
  voltage_kv REAL,
  amperage_a REAL,
  phase TEXT,
  feeder_id TEXT,
  substation_id TEXT,
  protected BOOLEAN,
  load_percent REAL,
  last_inspection_date DATE,
  insulation_resistance_mohm REAL,
  breaker_type TEXT,
  breaker_rating_ka REAL,
  downstream_equipment TEXT,
  maintenance_interval_months INTEGER,
  last_maintenance_date DATE,
  notes TEXT,
  responsible_engineer_id TEXT,
  area_served TEXT,
  status TEXT
);

INSERT INTO facility_power_distribution_map VALUES ('CIR001','HV_Main','13.8',200.0,'Three','FDR001','SUB001','1',65.0,'2025-02-15',1200.0,'SF6','0.04','Lab_A','12','2025-01-10','Primary high voltage line','ENG010','Building1','Active');
INSERT INTO facility_power_distribution_map VALUES ('CIR002','LV_Lab','0.415',150.0,'Single','FDR002','SUB002','1',45.0,'2025-03-01',800.0,'MoldedCase','0.025','Lab_B','6','2025-02-20','Low voltage distribution','ENG011','Building2','Active');
INSERT INTO facility_power_distribution_map VALUES ('CIR003','Emergency_Gen','0.415',100.0,'Single','FDR003','SUB003','0',30.0,'2024-12-20',600.0,'MoldedCase','0.02','EmergencyPanel','12','2024-11-15','Backup generator feed','ENG012','Building3','Standby');

-- Bio sample storage conditions
CREATE TABLE bio_sample_storage_conditions (
  sample_id TEXT PRIMARY KEY,
  storage_location TEXT,
  container_type TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  nitrogen_level_percent REAL,
  light_exposure TEXT,
  storage_start_date DATE,
  expected_expiry_date DATE,
  current_status TEXT,
  monitoring_device_id TEXT,
  last_check_timestamp DATETIME,
  freezer_defrost_cycle_days INTEGER,
  aliquot_number INTEGER,
  barcode TEXT,
  custodian_id TEXT,
  comments TEXT,
  preservation_method TEXT,
  sample_type TEXT,
  integrity_score REAL
);

INSERT INTO bio_sample_storage_conditions VALUES ('SMP001','Freezer01','Vial','-80.0',30.0,95.0','None','2025-01-10','2030-01-10','Stable','DEV100','2025-08-01 09:00:00',30,1,'BC001','RES200','No issues','Cryopreservation','Blood','98.5');
INSERT INTO bio_sample_storage_conditions VALUES ('SMP002','Refrigerator02','Plate','4.0',40.0,0.0','Low','2025-02-15','2026-02-15','Stable','DEV101','2025-08-01 10:30:00',7,12,'BC002','RES201','Check for condensation','Refrigeration','Tissue','95.0');
INSERT INTO bio_sample_storage_conditions VALUES ('SMP003','LN2_Tank03','CryoTube','-196.0',0.0,100.0','None','2025-03-20','2035-03-20','Stable','DEV102','2025-08-01 11:45:00',365,3,'BC003','RES202','Vial cracked, replace','LiquidNitrogen','Plasma','97.2');

-- Clinical trial site quality audit
CREATE TABLE clinical_trial_site_quality_audit (
  audit_id TEXT PRIMARY KEY,
  site_id TEXT,
  audit_date DATE,
  auditor_id TEXT,
  compliance_score_percent REAL,
  protocol_adherence TEXT,
  data_integrity TEXT,
  patient_consent_process TEXT,
  adverse_event_reporting TEXT,
  training_compliance TEXT,
  equipment_calibration_status TEXT,
  corrective_actions_required INTEGER,
  corrective_actions_completed INTEGER,
  follow_up_date DATE,
  audit_status TEXT,
  notes TEXT,
  site_contact_id TEXT,
  regulatory_body TEXT,
  audit_type TEXT,
  documentation_reference TEXT
);

INSERT INTO clinical_trial_site_quality_audit VALUES ('AUD001','SITE01','2025-04-10','AUD100','92.5','Full','Full','Verified','OnTime','Complete','UpToDate',2,1,'2025-05-15','Open','Minor SOP updates needed','CONT01','FDA','Routine','DOC001');
INSERT INTO clinical_trial_site_quality_audit VALUES ('AUD002','SITE02','2025-05-22','AUD101','85.0','Partial','Partial','Verified','Delayed','Partial','Pending',3,0,'2025-07-01','Open','Training gaps identified','CONT02','EMA','Targeted','DOC002');
INSERT INTO clinical_trial_site_quality_audit VALUES ('AUD003','SITE03','2025-06-05','AUD102','98.0','Full','Full','Verified','OnTime','Complete','UpToDate',0,0,NULL,'Closed','All criteria met','CONT03','HealthCanada','Routine','DOC003');