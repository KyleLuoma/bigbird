-- Chemical process monitoring data
CREATE TABLE chemical_process_monitoring (
  process_id TEXT PRIMARY KEY,
  batch_id TEXT,
  reactor_id TEXT,
  start_timestamp DATETIME,
  end_timestamp DATETIME,
  temperature_setpoint REAL,
  temperature_actual REAL,
  pressure_setpoint REAL,
  pressure_actual REAL,
  pH_setpoint REAL,
  pH_actual REAL,
  stir_rate_rpm INTEGER,
  catalyst_type TEXT,
  feed_rate_ml_per_min REAL,
  product_yield_percent REAL,
  impurity_level_ppm REAL,
  operator_id TEXT,
  safety_interlock_status TEXT,
  alarm_code TEXT,
  notes TEXT
);
INSERT INTO chemical_process_monitoring (process_id,batch_id,reactor_id,start_timestamp,end_timestamp,temperature_setpoint,temperature_actual,pressure_setpoint,pressure_actual,pH_setpoint,pH_actual,stir_rate_rpm,catalyst_type,feed_rate_ml_per_min,product_yield_percent,impurity_level_ppm,operator_id,safety_interlock_status,alarm_code,notes) VALUES ('PROC001','BATCH001','R001','2025-01-01 08:00:00','2025-01-01 12:00:00',150.0,149.2,5.0,4.9,7.0,7.1,300,'CatA',10.5,92.3,15,'OP001','OK','AL001','Initial run');
INSERT INTO chemical_process_monitoring (process_id,batch_id,reactor_id,start_timestamp,end_timestamp,temperature_setpoint,temperature_actual,pressure_setpoint,pressure_actual,pH_setpoint,pH_actual,stir_rate_rpm,catalyst_type,feed_rate_ml_per_min,product_yield_percent,impurity_level_ppm,operator_id,safety_interlock_status,alarm_code,notes) VALUES ('PROC002','BATCH002','R002','2025-02-10 09:30:00','2025-02-10 14:45:00',180.0,179.5,8.0,7.8,6.5,6.6,350,'CatB',12.0,88.7,22,'OP002','OK','AL000','Extended reaction');
INSERT INTO chemical_process_monitoring (process_id,batch_id,reactor_id,start_timestamp,end_timestamp,temperature_setpoint,temperature_actual,pressure_setpoint,pressure_actual,pH_setpoint,pH_actual,stir_rate_rpm,catalyst_type,feed_rate_ml_per_min,product_yield_percent,impurity_level_ppm,operator_id,safety_interlock_status,alarm_code,notes) VALUES ('PROC003','BATCH003','R003','2025-03-15 07:15:00','2025-03-15 11:20:00',200.0,199.8,10.0,9.9,8.0,7.9,400,'CatC',15.2,95.0,5,'OP003','WARN','AL002','Temperature spike detected');

-- Instrument performance metric records
CREATE TABLE instrument_performance_metric (
  metric_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  sample_id TEXT,
  run_id TEXT,
  metric_timestamp DATETIME,
  signal_to_noise_ratio REAL,
  resolution_fwhm REAL,
  baseline_drift REAL,
  peak_shift_ppm REAL,
  intensity REAL,
  throughput_seconds INTEGER,
  uptime_hours REAL,
  error_code TEXT,
  calibration_status TEXT,
  operator_id TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  power_consumption_watts REAL,
  comments TEXT,
  maintenance_due_date DATE
);
INSERT INTO instrument_performance_metric (metric_id,instrument_id,sample_id,run_id,metric_timestamp,signal_to_noise_ratio,resolution_fwhm,baseline_drift,peak_shift_ppm,intensity,throughput_seconds,uptime_hours,error_code,calibration_status,operator_id,temperature_c,humidity_percent,power_consumption_watts,comments,maintenance_due_date) VALUES ('MET001','INST001','SAMPLE01','RUN001','2025-04-01 10:20:00',45.2,0.8,0.02,0.1,123456,30,150.5,'','PASS','OP004',22.5,45.0,350.0,'All metrics nominal','2025-12-31');
INSERT INTO instrument_performance_metric (metric_id,instrument_id,sample_id,run_id,metric_timestamp,signal_to_noise_ratio,resolution_fwhm,baseline_drift,peak_shift_ppm,intensity,throughput_seconds,uptime_hours,error_code,calibration_status,operator_id,temperature_c,humidity_percent,power_consumption_watts,comments,maintenance_due_date) VALUES ('MET002','INST002','SAMPLE02','RUN002','2025-04-02 11:45:00',38.7,1.1,0.05,0.3,98765,45,200.0,'E101','FAIL','OP005',24.0,50.0,420.0,'Calibration required','2025-11-15');
INSERT INTO instrument_performance_metric (metric_id,instrument_id,sample_id,run_id,metric_timestamp,signal_to_noise_ratio,resolution_fwhm,baseline_drift,peak_shift_ppm,intensity,throughput_seconds,uptime_hours,error_code,calibration_status,operator_id,temperature_c,humidity_percent,power_consumption_watts,comments,maintenance_due_date) VALUES ('MET003','INST003','SAMPLE03','RUN003','2025-04-03 09:10:00',52.0,0.6,0.01,0.05,150000,25,120.0,'','PASS','OP006',21.0,40.0,310.0,'Performance within spec','2025-10-20');

-- Sample storage condition logs
CREATE TABLE sample_storage_conditions (
  storage_id TEXT PRIMARY KEY,
  sample_id TEXT,
  location_code TEXT,
  freezer_id TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  box_id TEXT,
  position_row INTEGER,
  position_col INTEGER,
  storage_start_date DATE,
  storage_end_date DATE,
  inspection_date DATE,
  inspected_by TEXT,
  condition_rating INTEGER,
  frost_flag TEXT,
  power_outage_flag TEXT,
  backup_power_status TEXT,
  notes TEXT,
  last_updated_timestamp DATETIME,
  responsible_id TEXT
);
INSERT INTO sample_storage_conditions (storage_id,sample_id,location_code,freezer_id,temperature_c,humidity_percent,box_id,position_row,position_col,storage_start_date,storage_end_date,inspection_date,inspected_by,condition_rating,frost_flag,power_outage_flag,backup_power_status,notes,last_updated_timestamp,responsible_id) VALUES ('STOR001','SAMPLE01','LOC01','FZ01',-80.0,30.0,'BOXA',1,1,'2025-01-01',NULL,'2025-04-01','OP007',5,'N','N','OK','No issues','2025-04-01 12:00:00','OP007');
INSERT INTO sample_storage_conditions (storage_id,sample_id,location_code,freezer_id,temperature_c,humidity_percent,box_id,position_row,position_col,storage_start_date,storage_end_date,inspection_date,inspected_by,condition_rating,frost_flag,power_outage_flag,backup_power_status,notes,last_updated_timestamp,responsible_id) VALUES ('STOR002','SAMPLE02','LOC02','FZ02',-20.0,35.0,'BOXB',2,3,'2025-02-15','2025-07-15','2025-04-15','OP008',4,'Y','N','OK','Minor frost observed','2025-04-15 09:30:00','OP008');
INSERT INTO sample_storage_conditions (storage_id,sample_id,location_code,freezer_id,temperature_c,humidity_percent,box_id,position_row,position_col,storage_start_date,storage_end_date,inspection_date,inspected_by,condition_rating,frost_flag,power_outage_flag,backup_power_status,notes,last_updated_timestamp,responsible_id) VALUES ('STOR003','SAMPLE03','LOC03','FZ03',-4.0,40.0,'BOXC',5,2,'2025-03-10',NULL,'2025-04-20','OP009',3,'N','Y','FAIL','Power outage reported','2025-04-20 14:45:00','OP009');

-- Lab ventilation event records
CREATE TABLE lab_ventilation_event (
  event_id TEXT PRIMARY KEY,
  zone_id TEXT,
  event_timestamp DATETIME,
  airflow_cfm REAL,
  pressure_diff_pa REAL,
  temperature_c REAL,
  humidity_percent REAL,
  filter_status TEXT,
  alarm_triggered TEXT,
  event_type TEXT,
  duration_seconds INTEGER,
  cause_code TEXT,
  resolved_by TEXT,
  resolution_timestamp DATETIME,
  notes TEXT,
  maintenance_required TEXT,
  sensor_id TEXT,
  co2_ppm REAL,
  o2_percent REAL,
  hvac_mode TEXT
);
INSERT INTO lab_ventilation_event (event_id,zone_id,event_timestamp,airflow_cfm,pressure_diff_pa,temperature_c,humidity_percent,filter_status,alarm_triggered,event_type,duration_seconds,cause_code,resolved_by,resolution_timestamp,notes,maintenance_required,sensor_id,co2_ppm,o2_percent,hvac_mode) VALUES ('VENT001','ZONEA','2025-04-05 08:00:00',1200.0,5.0,22.0,45.0,'OK','N','NORMAL',300,'C001','OP010','2025-04-05 08:05:00','Routine airflow check','N','SENS01',400.0,20.9,'AUTO');
INSERT INTO lab_ventilation_event (event_id,zone_id,event_timestamp,airflow_cfm,pressure_diff_pa,temperature_c,humidity_percent,filter_status,alarm_triggered,event_type,duration_seconds,cause_code,resolved_by,resolution_timestamp,notes,maintenance_required,sensor_id,co2_ppm,o2_percent,hvac_mode) VALUES ('VENT002','ZONEB','2025-04-06 14:30:00',800.0,12.0,25.0,55.0,'REPLACE','Y','ALARM',180,'C002','OP011','2025-04-06 14:40:00','High pressure diff, filter change needed','Y','SENS02',800.0,19.5,'MANUAL');
INSERT INTO lab_ventilation_event (event_id,zone_id,event_timestamp,airflow_cfm,pressure_diff_pa,temperature_c,humidity_percent,filter_status,alarm_triggered,event_type,duration_seconds,cause_code,resolved_by,resolution_timestamp,notes,maintenance_required,sensor_id,co2_ppm,o2_percent,hvac_mode) VALUES ('VENT003','ZONEC','2025-04-07 22:15:00',500.0,3.0,18.0,40.0,'OK','N','NORMAL',600,'C003','OP012','2025-04-07 22:25:00','Nighttime low airflow','N','SENS03',350.0,21.0','AUTO');

-- Nanomaterial batch quality records
CREATE TABLE nanomaterial_batch_quality (
  batch_qc_id TEXT PRIMARY KEY,
  batch_id TEXT,
  material_type TEXT,
  synthesis_date DATE,
  particle_size_nm REAL,
  size_distribution_percent REAL,
  surface_area_m2_g REAL,
  zeta_potential_mv REAL,
  purity_percent REAL,
  moisture_content_percent REAL,
  ash_content_percent REAL,
  residual_solvent_ppm REAL,
  batch_status TEXT,
  inspected_by TEXT,
  inspection_date DATE,
  comments TEXT,
  safety_data_sheet_version TEXT,
  storage_location TEXT,
  temperature_c REAL,
  humidity_percent REAL
);
INSERT INTO nanomaterial_batch_quality (batch_qc_id,batch_id,material_type,synthesis_date,particle_size_nm,size_distribution_percent,surface_area_m2_g,zeta_potential_mv,purity_percent,moisture_content_percent,ash_content_percent,residual_solvent_ppm,batch_status,inspected_by,inspection_date,comments,safety_data_sheet_version,storage_location,temperature_c,humidity_percent) VALUES ('QC001','NB001','GoldNanoparticle','2025-01-20',15.0,85.0,120.0,-30.0,99.5,0.2,0.1,5,'PASS','OP013','2025-04-10','Excellent quality','V1','FREEZEA',-80.0,30.0);
INSERT INTO nanomaterial_batch_quality (batch_qc_id,batch_id,material_type,synthesis_date,particle_size_nm,size_distribution_percent,surface_area_m2_g,zeta_potential_mv,purity_percent,moisture_content_percent,ash_content_percent,residual_solvent_ppm,batch_status,inspected_by,inspection_date,comments,safety_data_sheet_version,storage_location,temperature_c,humidity_percent) VALUES ('QC002','NB002','SilicaNanoparticle','2025-02-15',50.0,78.0,80.0,+20.0,97.0,0.5,0.3,12,'FAIL','OP014','2025-04-12','Higher solvent residue','V2','FREEZEB',-20.0,35.0);
INSERT INTO nanomaterial_batch_quality (batch_qc_id,batch_id,material_type,synthesis_date,particle_size_nm,size_distribution_percent,surface_area_m2_g,zeta_potential_mv,purity_percent,moisture_content_percent,ash_content_percent,residual_solvent_ppm,batch_status,inspected_by,inspection_date,comments,safety_data_sheet_version,storage_location,temperature_c,humidity_percent) VALUES ('QC003','NB003','IronOxideNanoparticle','2025-03-05',30.0,90.0,100.0,-15.0,98.5,0.3,0.2,8,'PASS','OP015','2025-04-15','Within spec','V1','FREEZEC',-4.0,40.0);

-- Computational job schedule table
CREATE TABLE computational_job_schedule (
  schedule_id TEXT PRIMARY KEY,
  job_id TEXT,
  cluster_id TEXT,
  queue_name TEXT,
  priority_level INTEGER,
  scheduled_start DATETIME,
  scheduled_end DATETIME,
  estimated_runtime_seconds INTEGER,
  required_cpus INTEGER,
  required_gpus INTEGER,
  required_memory_gb REAL,
  required_storage_gb REAL,
  dependency_job_id TEXT,
  submitter_user TEXT,
  submission_timestamp DATETIME,
  status TEXT,
  notes TEXT,
  allocated_node_list TEXT,
  max_runtime_seconds INTEGER,
  email_notification TEXT
);
INSERT INTO computational_job_schedule (schedule_id,job_id,cluster_id,queue_name,priority_level,scheduled_start,scheduled_end,estimated_runtime_seconds,required_cpus,required_gpus,required_memory_gb,required_storage_gb,dependency_job_id,submitter_user,submission_timestamp,status,notes,allocated_node_list,max_runtime_seconds,email_notification) VALUES ('SCH001','JOB001','CL01','high_mem',10,'2025-04-20 01:00:00','2025-04-20 05:00:00',14400,32,2,256.0,500.0,NULL,'user01','2025-04-18 12:00:00','PENDING','Genome assembly','node[01-04]',18000,'Y');
INSERT INTO computational_job_schedule (schedule_id,job_id,cluster_id,queue_name,priority_level,scheduled_start,scheduled_end,estimated_runtime_seconds,required_cpus,required_gpus,required_memory_gb,required_storage_gb,dependency_job_id,submitter_user,submission_timestamp,status,notes,allocated_node_list,max_runtime_seconds,email_notification) VALUES ('SCH002','JOB002','CL02','gpu',5,'2025-04-21 08:30:00','2025-04-21 12:30:00',14400,16,4,128.0,300.0,'JOB001','user02','2025-04-19 09:15:00','PENDING','Deep learning training','node[05-07]',20000,'N');
INSERT INTO computational_job_schedule (schedule_id,job_id,cluster_id,queue_name,priority_level,scheduled_start,scheduled_end,estimated_runtime_seconds,required_cpus,required_gpus,required_memory_gb,required_storage_gb,dependency_job_id,submitter_user,submission_timestamp,status,notes,allocated_node_list,max_runtime_seconds,email_notification) VALUES ('SCH003','JOB003','CL01','standard',1,'2025-04-22 14:00:00','2025-04-22 16:00:00',7200,8,0,64.0,150.0,NULL,'user03','2025-04-20 10:45:00','PENDING','Data preprocessing','node[08]',10000,'Y');

-- Researcher skill matrix table
CREATE TABLE researcher_skill_matrix (
  skill_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  skill_name TEXT,
  proficiency_level INTEGER,
  years_experience INTEGER,
  last_used_date DATE,
  certification_id TEXT,
  certification_expiry DATE,
  training_completed_flag TEXT,
  last_training_date DATE,
  primary_area_flag TEXT,
  project_assigned TEXT,
  notes TEXT,
  reviewer_id TEXT,
  review_date DATE,
  skill_category TEXT,
  skill_subcategory TEXT,
  assessment_score REAL,
  skill_status TEXT,
  updated_timestamp DATETIME
);
INSERT INTO researcher_skill_matrix (skill_id,researcher_id,skill_name,proficiency_level,years_experience,last_used_date,certification_id,certification_expiry,training_completed_flag,last_training_date,primary_area_flag,project_assigned,notes,reviewer_id,review_date,skill_category,skill_subcategory,assessment_score,skill_status,updated_timestamp) VALUES ('SKL001','RES001','MassSpectrometry',4,5,'2025-03-30','CERT001','2026-12-31','Y','2025-01-15','Y','PROJ001','Experienced with LC-MS','RESMGR01','2025-04-01','Analytical','MassSpec',88.5,'ACTIVE','2025-04-02 09:00:00');
INSERT INTO researcher_skill_matrix (skill_id,researcher_id,skill_name,proficiency_level,years_experience,last_used_date,certification_id,certification_expiry,training_completed_flag,last_training_date,primary_area_flag,project_assigned,notes,reviewer_id,review_date,skill_category,skill_subcategory,assessment_score,skill_status,updated_timestamp) VALUES ('SKL002','RES002','PythonProgramming',5,8,'2025-04-01','CERT002','2025-11-30','Y','2024-12-20','Y','PROJ002','Lead developer for analysis pipelines','RESMGR02','2025-04-03','Computational','Programming',95.0,'ACTIVE','2025-04-03 10:30:00');
INSERT INTO researcher_skill_matrix (skill_id,researcher_id,skill_name,proficiency_level,years_experience,last_used_date,certification_id,certification_expiry,training_completed_flag,last_training_date,primary_area_flag,project_assigned,notes,reviewer_id,review_date,skill_category,skill_subcategory,assessment_score,skill_status,updated_timestamp) VALUES ('SKL003','RES003','CellCulture',3,4,'2025-02-20','CERT003','2025-09-15','Y','2025-02-10','N','PROJ003','Needs additional training on sterile techniques','RESMGR03','2025-04-04','Biological','CellCulture',72.0','ACTIVE','2025-04-04 08:45:00');

-- Facility access log table
CREATE TABLE facility_access_log (
  access_log_id TEXT PRIMARY KEY,
  person_id TEXT,
  access_point TEXT,
  access_timestamp DATETIME,
  access_type TEXT,
  badge_id TEXT,
  door_status TEXT,
  clearance_level INTEGER,
  reason_code TEXT,
  supervisor_approval TEXT,
  device_id TEXT,
  ip_address TEXT,
  location_coordinates TEXT,
  duration_seconds INTEGER,
  exit_timestamp DATETIME,
  notes TEXT,
  violation_flag TEXT,
  violation_code TEXT,
  camera_snapshot_path TEXT,
  audit_timestamp DATETIME
);
INSERT INTO facility_access_log (access_log_id,person_id,access_point,access_timestamp,access_type,badge_id,door_status,clearance_level,reason_code,supervisor_approval,device_id,ip_address,location_coordinates,duration_seconds,exit_timestamp,notes,violation_flag,violation_code,camera_snapshot_path,audit_timestamp) VALUES ('ACC001','EMP001','MainEntrance','2025-04-08 07:55:00','ENTRY','BADGE001','OPEN',5,'R001','Y','DEV01','192.168.1.10','37.7749,-122.4194',3600,'2025-04-08 08:55:00','On time','N','','/snapshots/acc001.jpg','2025-04-08 09:00:00');
INSERT INTO facility_access_log (access_log_id,person_id,access_point,access_timestamp,access_type,badge_id,door_status,clearance_level,reason_code,supervisor_approval,device_id,ip_address,location_coordinates,duration_seconds,exit_timestamp,notes,violation_flag,violation_code,camera_snapshot_path,audit_timestamp) VALUES ('ACC002','EMP002','LabDoor3','2025-04-08 12:30:00','ENTRY','BADGE002','FORCED',3,'R002','N','DEV02','192.168.1.20','34.0522,-118.2437',0,NULL,'Forced entry attempt','Y','V001','/snapshots/acc002.jpg','2025-04-08 12:35:00');
INSERT INTO facility_access_log (access_log_id,person_id,access_point,access_timestamp,access_type,badge_id,door_status,clearance_level,reason_code,supervisor_approval,device_id,ip_address,location_coordinates,duration_seconds,exit_timestamp,notes,violation_flag,violation_code,camera_snapshot_path,audit_timestamp) VALUES ('ACC003','EMP003','ServerRoom','2025-04-09 14:00:00','ENTRY','BADGE003','OPEN',7,'R003','Y','DEV03','192.168.1.30','40.7128,-74.0060',7200,'2025-04-09 16:00:00','Maintenance work','N','','/snapshots/acc003.jpg','2025-04-09 16:05:00');

-- Environmental noise event table
CREATE TABLE environmental_noise_event (
  noise_event_id TEXT PRIMARY KEY,
  sensor_id TEXT,
  event_timestamp DATETIME,
  decibel_level REAL,
  frequency_hz REAL,
  duration_seconds INTEGER,
  location_id TEXT,
  weather_condition TEXT,
  wind_speed_mps REAL,
  temperature_c REAL,
  humidity_percent REAL,
  alert_sent_flag TEXT,
  response_team TEXT,
  resolution_timestamp DATETIME,
  notes TEXT,
  event_category TEXT,
  background_noise_level REAL,
  peak_time TEXT,
  compliance_status TEXT,
  regulator_notified_flag TEXT
);
INSERT INTO environmental_noise_event (noise_event_id,sensor_id,event_timestamp,decibel_level,frequency_hz,duration_seconds,location_id,weather_condition,wind_speed_mps,temperature_c,humidity_percent,alert_sent_flag,response_team,resolution_timestamp,notes,event_category,background_noise_level,peak_time,compliance_status,regulator_notified_flag) VALUES ('NOISE001','SNS001','2025-04-10 09:15:00',85.2,500.0,120,'LOC01','Sunny',3.5,22.0,40.0,'Y','TeamA','2025-04-10 10:00:00','Transient construction noise','Construction',65.0,'09:00','NON_COMPLIANT','Y');
INSERT INTO environmental_noise_event (noise_event_id,sensor_id,event_timestamp,decibel_level,frequency_hz,duration_seconds,location_id,weather_condition,wind_speed_mps,temperature_c,humidity_percent,alert_sent_flag,response_team,resolution_timestamp,notes,event_category,background_noise_level,peak_time,compliance_status,regulator_notified_flag) VALUES ('NOISE002','SNS002','2025-04-11 22:30:00',70.0,1000.0,300,'LOC02','Rainy',5.0,18.0,75.0,'N','TeamB',NULL,'Elevated traffic noise at night','Traffic',60.0,'22:00','COMPLIANT','N');
INSERT INTO environmental_noise_event (noise_event_id,sensor_id,event_timestamp,decibel_level,frequency_hz,duration_seconds,location_id,weather_condition,wind_speed_mps,temperature_c,humidity_percent,alert_sent_flag,response_team,resolution_timestamp,notes,event_category,background_noise_level,peak_time,compliance_status,regulator_notified_flag) VALUES ('NOISE003','SNS003','2025-04-12 15:45:00',92.5,250.0,180,'LOC03','Windy',8.0,20.0,55.0,'Y','TeamC','2025-04-12 16:30:00','Severe wind-induced noise','Weather',70.0,'15:30','NON_COMPLIANT','Y');

-- Procurement invoice record table
CREATE TABLE procurement_invoice_record (
  invoice_id TEXT PRIMARY KEY,
  purchase_order_id TEXT,
  vendor_id TEXT,
  invoice_date DATE,
  due_date DATE,
  total_amount_usd REAL,
  tax_amount_usd REAL,
  discount_usd REAL,
  net_amount_usd REAL,
  payment_status TEXT,
  payment_date DATE,
  accounting_code TEXT,
  received_by TEXT,
  approved_by TEXT,
  invoice_file_path TEXT,
  line_item_count INTEGER,
  currency_code TEXT,
  exchange_rate REAL,
  notes TEXT,
  last_modified_timestamp DATETIME
);
INSERT INTO procurement_invoice_record (invoice_id,purchase_order_id,vendor_id,invoice_date,due_date,total_amount_usd,tax_amount_usd,discount_usd,net_amount_usd,payment_status,payment_date,accounting_code,received_by,approved_by,invoice_file_path,line_item_count,currency_code,exchange_rate,notes,last_modified_timestamp) VALUES ('INV001','PO001','VEND001','2025-03-01','2025-03-31',15000.0,1200.0,300.0,15900.0','PAID','2025-03-28','ACC001','EMP001','MGR001','/invoices/inv001.pdf',12,'USD',1.0,'Paid in full','2025-03-31 12:00:00');
INSERT INTO procurement_invoice_record (invoice_id,purchase_order_id,vendor_id,invoice_date,due_date,total_amount_usd,tax_amount_usd,discount_usd,net_amount_usd,payment_status,payment_date,accounting_code,received_by,approved_by,invoice_file_path,line_item_count,currency_code,exchange_rate,notes,last_modified_timestamp) VALUES ('INV002','PO002','VEND002','2025-04-05','2025-05-05',8000.0,640.0,0.0,8640.0','PENDING',NULL,'ACC002','EMP002','MGR002','/invoices/inv002.pdf',8,'USD',1.0,'Awaiting approval','2025-04-05 09:30:00');
INSERT INTO procurement_invoice_record (invoice_id,purchase_order_id,vendor_id,invoice_date,due_date,total_amount_usd,tax_amount_usd,discount_usd,net_amount_usd,payment_status,payment_date,accounting_code,received_by,approved_by,invoice_file_path,line_item_count,currency_code,exchange_rate,notes,last_modified_timestamp) VALUES ('INV003','PO003','VEND003','2025-04-10','2025-05-10',25000.0,2000.0,500.0,26500.0','PAID','2025-05-01','ACC003','EMP003','MGR003','/invoices/inv003.pdf',20,'USD',1.0,'Partial discount applied','2025-05-01 15:45:00');