-- Air quality monitoring stations in the lab
CREATE TABLE lab_air_quality_monitor (
  monitor_id TEXT NOT NULL,
  location_code TEXT,
  installation_date DATE,
  sensor_type TEXT,
  firmware_version TEXT,
  calibration_date DATE,
  pm2_5 REAL,
  pm10 REAL,
  co_ppm REAL,
  no2_ppm REAL,
  o3_ppm REAL,
  temperature_c REAL,
  humidity_percent REAL,
  battery_level_percent INTEGER,
  signal_strength_db INTEGER,
  maintenance_interval_days INTEGER,
  last_maintenance_date DATE,
  alert_threshold_pm2_5 REAL,
  alert_threshold_co REAL,
  data_log_path TEXT,
  notes TEXT,
  status TEXT,
  PRIMARY KEY (monitor_id)
);
INSERT INTO lab_air_quality_monitor VALUES ('MON001','LABA','2022-01-15','Electrochemical','v1.2','2023-06-01',12.5,25.3,0.04,0.02,0.03,22.1,45.0,85,-70,30,'2023-05-30',35.0,0.05,'/logs/mon001','Initial deployment','ACTIVE');
INSERT INTO lab_air_quality_monitor VALUES ('MON002','LABB','2021-11-20','Optical','v2.0','2023-01-10',8.2,18.7,0.03,0.015,0.025,21.5,40.2,90,-68,45,'2023-04-15',30.0,0.04,'/logs/mon002','Routine check','ACTIVE');
INSERT INTO lab_air_quality_monitor VALUES ('MON003','LABC','2023-03-05','Laser','v1.0','2023-07-20',15.0,35.0,0.06,0.03,0.05,23.0,50.0,80,-75,60,'2023-07-19',40.0,0.06,'/logs/mon003','Needs calibration','MAINTENANCE');

-- Historical lifecycle records for each piece of laboratory equipment
CREATE TABLE equipment_lifecycle_history (
  lifecycle_id TEXT NOT NULL,
  equipment_serial TEXT,
  acquisition_date DATE,
  supplier_name TEXT,
  purchase_order_id TEXT,
  warranty_expiration DATE,
  installation_date DATE,
  initial_location TEXT,
  depreciation_method TEXT,
  cost_usd REAL,
  currency TEXT,
  asset_tag TEXT,
  maintenance_contract_id TEXT,
  last_service_date DATE,
  service_provider TEXT,
  status_at_last_check TEXT,
  retirement_date DATE,
  disposal_method TEXT,
  resale_value_usd REAL,
  notes TEXT,
  created_by TEXT,
  created_timestamp TIMESTAMP,
  PRIMARY KEY (lifecycle_id)
);
INSERT INTO equipment_lifecycle_history VALUES ('LCH001','EQ12345','2019-05-10','Acme Instruments','PO789','2024-05-10','2019-06-01','Lab A','Straight Line',15000,'USD','AT001','MC100','2023-11-20','ServiceCo','Good',NULL,NULL,NULL,'First acquisition','admin','2023-01-01 08:00:00');
INSERT INTO equipment_lifecycle_history VALUES ('LCH002','EQ54321','2020-02-15','BioTech Supplies','PO456','2025-02-15','2020-03-01','Lab B','Declining Balance',25000,'USD','AT002','MC200','2023-09-12','RepairInc','Fair',NULL,NULL,NULL,'Second acquisition','admin','2023-02-01 09:30:00');
INSERT INTO equipment_lifecycle_history VALUES ('LCH003','EQ98765','2018-09-20','LabGear Co','PO321','2023-09-20','2018-10-05','Lab C','Straight Line',10000,'USD','AT003','MC300','2022-12-05','MaintainIt','Retired','2023-10-01','Recycling','2000','Equipment retired','admin','2023-03-15 10:45:00');

-- Records of synthesis batches for chemical compounds
CREATE TABLE compound_synthesis_batch (
  batch_id TEXT NOT NULL,
  compound_name TEXT,
  batch_number INTEGER,
  synthesis_date DATE,
  reactor_id TEXT,
  operator_id TEXT,
  target_yield_percent REAL,
  actual_yield_percent REAL,
  purity_percent REAL,
  solvent_type TEXT,
  solvent_volume_ml REAL,
  catalyst_used TEXT,
  catalyst_amount_mg REAL,
  temperature_c REAL,
  pressure_bar REAL,
  reaction_time_min INTEGER,
  quench_method TEXT,
  post_process_steps TEXT,
  analytical_method TEXT,
  analysis_report_path TEXT,
  safety_grade TEXT,
  batch_status TEXT,
  comments TEXT,
  PRIMARY KEY (batch_id)
);
INSERT INTO compound_synthesis_batch VALUES ('BCH001','CompoundX',1,'2023-06-15','RCR001','OP100',85.0,80.5,98.2,'Ethanol',500,'Pd/C',25,120,5,30,'Cooling','Distillation','GC-MS','/reports/bch001.pdf','A','COMPLETED','No issues');
INSERT INTO compound_synthesis_batch VALUES ('BCH002','CompoundY',2,'2023-07-01','RCR002','OP101',90.0,88.0,99.0,'Methanol',750,'Pt',30,130,10,45,'Neutralization','Extraction','NMR','/reports/bch002.pdf','B','COMPLETED','Minor temperature deviation');
INSERT INTO compound_synthesis_batch VALUES ('BCH003','CompoundZ',3,'2023-07-20','RCR003','OP102',75.0,70.0,95.5,'Acetone',600,'Ni',20,110,8,60,'Quenching','Filtration','LC-MS','/reports/bch003.pdf','C','FAILED','Yield below target');

-- Queue of computational jobs submitted to HPC resources
CREATE TABLE computational_job_queue (
  job_id TEXT NOT NULL,
  user_id TEXT,
  project_code TEXT,
  submission_timestamp TIMESTAMP,
  queue_name TEXT,
  requested_nodes INTEGER,
  requested_cpus_per_node INTEGER,
  requested_memory_gb REAL,
  walltime_hours INTEGER,
  job_script_path TEXT,
  job_status TEXT,
  start_timestamp TIMESTAMP,
  end_timestamp TIMESTAMP,
  exit_code INTEGER,
  cpu_time_seconds REAL,
  max_memory_used_gb REAL,
  input_dataset_path TEXT,
  output_results_path TEXT,
  scheduler_notes TEXT,
  priority_level INTEGER,
  estimated_cost_usd REAL,
  actual_cost_usd REAL,
  PRIMARY KEY (job_id)
);
INSERT INTO computational_job_queue VALUES ('JOB001','USR001','PRJAlpha','2023-08-01 09:15:00','short','2','16','64',4,'/scripts/job1.sh','COMPLETED','2023-08-01 09:20:00','2023-08-01 13:20:00',0,14400,30,'/data/input1','/results/out1','No issues',10,15.0,15.5);
INSERT INTO computational_job_queue VALUES ('JOB002','USR002','PRJBeta','2023-08-02 10:00:00','medium','4','32','128',12,'/scripts/job2.sh','FAILED','2023-08-02 10:05:00','2023-08-02 22:05:00',1,43200,120,'/data/input2','/results/out2','Segmentation fault',8,45.0,0.0);
INSERT INTO computational_job_queue VALUES ('JOB003','USR003','PRJGamma','2023-08-03 11:30:00','long','8','64','256',48,'/scripts/job3.sh','RUNNING','2023-08-03 11:35:00',NULL,NULL,NULL,NULL,'/data/input3','/results/out3','Running smooth',9,120.0,NULL);

-- Energy consumption records for lab facilities
CREATE TABLE facility_energy_consumption (
  record_id TEXT NOT NULL,
  facility_zone TEXT,
  meter_id TEXT,
  reading_date DATE,
  consumption_kwh REAL,
  peak_demand_kw REAL,
  average_voltage_v REAL,
  average_current_a REAL,
  power_factor REAL,
  temperature_c REAL,
  humidity_percent REAL,
  occupancy_level INTEGER,
  hvac_mode TEXT,
  lighting_status TEXT,
  renewable_share_percent REAL,
  cost_usd REAL,
  carbon_emission_kg REAL,
  notes TEXT,
  validated_by TEXT,
  validation_timestamp TIMESTAMP,
  PRIMARY KEY (record_id)
);
INSERT INTO facility_energy_consumption VALUES ('EC001','ZoneA','MT001','2023-07-31',1250.5,75.2,230.1,10.5,0.95,22.0,40.0,30,'Cooling','On',20.0,300.0,560.0,'Monthly reading','ENERGYMAN','2023-08-01 08:00:00');
INSERT INTO facility_energy_consumption VALUES ('EC002','ZoneB','MT002','2023-07-31',980.3,60.0,229.5,9.8,0.93,21.5,38.0,25,'Heating','Dimmed',15.0,250.0,470.0,'Monthly reading','ENERGYMAN','2023-08-01 08:15:00');
INSERT INTO facility_energy_consumption VALUES ('EC003','ZoneC','MT003','2023-07-31',1105.0,68.5,231.0,10.2,0.94,22.5,42.0,28,'Ventilation','On',18.0,275.0,515.0,'Monthly reading','ENERGYMAN','2023-08-01 08:30:00');

-- Schedule of external audits for compliance
CREATE TABLE external_audit_schedule (
  audit_id TEXT NOT NULL,
  audit_type TEXT,
  auditor_name TEXT,
  auditor_organization TEXT,
  scheduled_start DATE,
  scheduled_end DATE,
  scope_description TEXT,
  audit_status TEXT,
  report_due_date DATE,
  follow_up_actions TEXT,
  assigned_responsible TEXT,
  risk_level TEXT,
  estimated_days INTEGER,
  actual_days INTEGER,
  findings_summary TEXT,
  corrective_plan TEXT,
  budget_usd REAL,
  actual_cost_usd REAL,
  notes TEXT,
  created_by TEXT,
  created_timestamp TIMESTAMP,
  PRIMARY KEY (audit_id)
);
INSERT INTO external_audit_schedule VALUES ('AUD001','Safety','JohnDoe','SafetyInspectorsInc','2023-09-01','2023-09-03','Lab safety protocols','Planned','2023-09-10','Update SOPs','RES001','Medium',3,NULL,'','',5000,0,'','admin','2023-07-15 09:00:00');
INSERT INTO external_audit_schedule VALUES ('AUD002','Quality','JaneSmith','QualityAssureLtd','2023-10-10','2023-10-12','QC of data handling','Planned','2023-10-20','Implement validation','RES002','High',3,NULL,'','',7000,0,'','admin','2023-07-20 10:30:00');
INSERT INTO external_audit_schedule VALUES ('AUD003','Environmental','MikeLee','EnviroCheck','2023-11-05','2023-11-06','Waste disposal compliance','Planned','2023-11-15','Revise disposal log','RES003','Low',2,NULL,'','',3000,0,'','admin','2023-07-25 11:45:00');

-- Log of reagent preparations
CREATE TABLE reagent_preparation_log (
  prep_id TEXT NOT NULL,
  reagent_name TEXT,
  batch_code TEXT,
  preparation_date DATE,
  prepared_by TEXT,
  volume_ml REAL,
  concentration_mg_per_ml REAL,
  solvent_used TEXT,
  storage_location TEXT,
  expiry_date DATE,
  stability_notes TEXT,
  pH REAL,
  temperature_c REAL,
  filter_used TEXT,
  sterile BOOLEAN,
  lot_number TEXT,
  manufacturer TEXT,
  safety_data_sheet_path TEXT,
  qc_passed BOOLEAN,
  qc_notes TEXT,
  approval_signature TEXT,
  comments TEXT,
  PRIMARY KEY (prep_id)
);
INSERT INTO reagent_preparation_log VALUES ('RP001','BufferA','BCH001','2023-08-01','TECH01',500,10,'Water','Shelf1','2024-08-01','Stable at 4C',7.4,22,'0.22um','TRUE','LOT123','ChemCo','/sds/buffera.pdf','TRUE','All parameters within spec','SIGN01','Prepared for assay A');
INSERT INTO reagent_preparation_log VALUES ('RP002','EnzymeX','BCH002','2023-08-05','TECH02',250,5,'PhosphateBuffer','Shelf2','2023-12-05','Activity retained',8.0,20,'0.45um','FALSE','LOT456','BioLabs','/sds/enzimex.pdf','FALSE','Low activity observed','SIGN02','Re-prep scheduled');
INSERT INTO reagent_preparation_log VALUES ('RP003','SolutionZ','BCH003','2023-08-10','TECH03',1000,2,'Ethanol','FridgeA','2025-01-10','Clear solution',NULL,4,'N/A','TRUE','LOT789','LabMakers','/sds/solutionz.pdf','TRUE','No issues','SIGN03','Used in protocol B');

-- Completion records for training modules
CREATE TABLE training_module_completion (
  record_id TEXT NOT NULL,
  employee_id TEXT,
  module_code TEXT,
  module_name TEXT,
  enrollment_date DATE,
  completion_date DATE,
  score_percent REAL,
  passed BOOLEAN,
  trainer_id TEXT,
  certification_id TEXT,
  validity_until DATE,
  renewal_required BOOLEAN,
  feedback_text TEXT,
  time_spent_minutes INTEGER,
  mode_of_delivery TEXT,
  location TEXT,
  digital_signature TEXT,
  notes TEXT,
  administered_by TEXT,
  admin_timestamp TIMESTAMP,
  PRIMARY KEY (record_id)
);
INSERT INTO training_module_completion VALUES ('TM001','EMP001','TM101','Lab Safety','2023-07-01','2023-07-03',95.0,'TRUE','TRN001','CERT001','2025-07-01','FALSE','Excellent','120','Online','N/A','SIG001','', 'HR01','2023-07-03 12:00:00');
INSERT INTO training_module_completion VALUES ('TM002','EMP002','TM102','Data Management','2023-07-10','2023-07-12',88.5,'TRUE','TRN002','CERT002','2024-07-10','TRUE','Good','150','InPerson','Room12','SIG002','Needs renewal next year','HR02','2023-07-12 15:30:00');
INSERT INTO training_module_completion VALUES ('TM003','EMP003','TM103','Chemical Handling','2023-08-01','2023-08-02',70.0,'FALSE','TRN003','CERT003','2024-08-01','TRUE','Pass required','90','Online','N/A','SIG003','Retake scheduled','HR03','2023-08-02 10:45:00');

-- Records of specimen transport between labs
CREATE TABLE specimen_transport_record (
  transport_id TEXT NOT NULL,
  specimen_id TEXT,
  source_lab TEXT,
  destination_lab TEXT,
  transport_date DATE,
  departure_time TEXT,
  arrival_time TEXT,
  carrier_name TEXT,
  carrier_contact TEXT,
  temperature_control BOOLEAN,
  temp_min_c REAL,
  temp_max_c REAL,
  packaging_type TEXT,
  biohazard_level TEXT,
  chain_of_custody TEXT,
  received_by TEXT,
  receipt_timestamp TIMESTAMP,
  condition_on_arrival TEXT,
  notes TEXT,
  audit_status TEXT,
  PRIMARY KEY (transport_id)
);
INSERT INTO specimen_transport_record VALUES ('TR001','SP001','LabA','LabB','2023-08-20','08:30:00','10:15:00','FastShip','5551234','TRUE',2.0,8.0,'ColdBox','Level2','CHC001','TECH01','2023-08-20 10:20:00','Intact','No issues','Verified');
INSERT INTO specimen_transport_record VALUES ('TR002','SP002','LabC','LabD','2023-08-22','12:00:00','14:45:00','QuickLogistics','5555678','FALSE',NULL,NULL,'Standard','Level1','CHC002','TECH02','2023-08-22 14:50:00','Damaged','Temperature deviation','Pending');
INSERT INTO specimen_transport_record VALUES ('TR003','SP003','LabE','LabF','2023-08-25','09:15:00','11:00:00','MediCourier','5559012','TRUE',-20.0,-15.0,'DryIce','Level3','CHC003','TECH03','2023-08-25 11:05:00','Intact','Handled with care','Verified');

-- Policies governing data retention periods and archiving
CREATE TABLE data_retention_policy (
  policy_id TEXT NOT NULL,
  data_category TEXT,
  retention_period_years INTEGER,
  archival_location TEXT,
  encryption_required BOOLEAN,
  access_control_level TEXT,
  review_frequency_months INTEGER,
  last_review_date DATE,
  responsible_owner TEXT,
  backup_frequency_days INTEGER,
  backup_location TEXT,
  compliance_standard TEXT,
  deprecation_notice_required BOOLEAN,
  deprecation_lead_time_months INTEGER,
  notes TEXT,
  version_number INTEGER,
  effective_date DATE,
  expiration_date DATE,
  amendment_history TEXT,
  created_by TEXT,
  created_timestamp TIMESTAMP,
  PRIMARY KEY (policy_id)
);
INSERT INTO data_retention_policy VALUES ('DP001','RawSensorData',5,'ColdStorage','TRUE','High','12','2023-01-15','DataMgr','7','OffsiteTape','ISO27001','TRUE',6,'Retain for 5 years','1','2023-01-01','2028-01-01','Initial policy','admin','2023-01-01 09:00:00');
INSERT INTO data_retention_policy VALUES ('DP002','ProcessedResults',3,'CloudArchive','TRUE','Medium','6','2023-02-10','AnalystLead','14','CloudBucket','GDPR','FALSE',0,'','2','2023-02-01','2026-02-01','Updated encryption','admin','2023-02-01 10:30:00');
INSERT INTO data_retention_policy VALUES ('DP003','AuditLogs',10,'SecureVault','TRUE','VeryHigh','24','2023-03-20','ComplianceOfficer','30','SecureVault','HIPAA','TRUE',12,'','3','2023-03-01','2033-03-01','Policy revision 3','admin','2023-03-01 11:45:00');