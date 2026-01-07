-- Equipment asset register: tracks lab equipment assets and related metadata
CREATE TABLE equipment_asset_register (
  asset_id TEXT NOT NULL,
  serial_number TEXT,
  purchase_date DATE,
  vendor_name TEXT,
  warranty_expiry DATE,
  location_code TEXT,
  asset_type TEXT,
  model_number TEXT,
  depreciation_rate REAL,
  purchase_price REAL,
  current_status TEXT,
  last_inspection_date DATE,
  inspector_id TEXT,
  calibration_required INTEGER,
  calibration_interval_days INTEGER,
  next_calibration_due DATE,
  maintenance_contract_id TEXT,
  decommission_date DATE,
  disposal_method TEXT,
  asset_category TEXT,
  assigned_to TEXT,
  notes TEXT,
  PRIMARY KEY (asset_id)
);

INSERT INTO equipment_asset_register VALUES ('A001','SN12345','2022-01-15','VendorX','2025-01-15','L01','Spectrometer','M-200','0.15','12000.50','Active','2023-06-10','I100','1','365','2024-06-10','MC001',NULL,'Recycle','Analytical','R001','Initial deployment');
INSERT INTO equipment_asset_register VALUES ('A002','SN67890','2021-07-20','VendorY','2024-07-20','L02','Centrifuge','C-500','0.12','8500.00','Maintenance','2023-05-01','I101','0','0',NULL,'MC002','2025-01-01','Donate','Utility','R002','Routine check');
INSERT INTO equipment_asset_register VALUES ('A003','SN54321','2020-03-10','VendorZ','2023-03-10','L03','Incubator','I-300','0.10','6500.00','Retired','2022-12-15','I102','0','0',NULL,'MC003','2022-12-31','Dispose','Environmental','R003','Decommissioned due to age');

-- Facility ventilation system: specifications and maintenance data for building ventilation
CREATE TABLE facility_ventilation_system (
  system_id TEXT NOT NULL,
  building_id TEXT,
  zone TEXT,
  fan_type TEXT,
  airflow_capacity_cfm INTEGER,
  filter_type TEXT,
  filter_change_interval_days INTEGER,
  last_filter_change DATE,
  power_rating_kw REAL,
  control_mode TEXT,
  sensor_temperature_c REAL,
  sensor_humidity_percent REAL,
  alarm_threshold_temp REAL,
  alarm_threshold_humidity REAL,
  installation_date DATE,
  last_maintenance_date DATE,
  maintenance_vendor TEXT,
  status TEXT,
  rpm INTEGER,
  noise_level_db REAL,
  commissioning_engineer TEXT,
  documentation_url TEXT,
  PRIMARY KEY (system_id)
);

INSERT INTO facility_ventilation_system VALUES ('VS001','B01','NorthWing','Axial',15000,'HEPA','180','2023-01-15',5.2,'Automatic',22.5,45.0,30.0,70.0,'2020-09-01','2023-07-01','VentCo','Operational',1800,55.0,'E100','http://docs.example.com/vs001');
INSERT INTO facility_ventilation_system VALUES ('VS002','B02','SouthWing','Centrifugal',12000,'Carbon','365','2022-12-20',4.8,'Manual',20.0,40.0,28.0,65.0,'2019-05-12','2023-06-20','AirFlowInc','Operational',1500,50.0,'E101','http://docs.example.com/vs002');
INSERT INTO facility_ventilation_system VALUES ('VS003','B03','LabCore','MixedFlow',20000,'Electrostatic','90','2023-03-05',6.0,'Automatic',23.0,48.0,32.0,72.0,'2021-02-18','2023-05-30','VentSolutions','UnderInspection',2000,60.0,'E102','http://docs.example.com/vs003');

-- Chemical storage condition monitoring: environmental parameters for chemical storage areas
CREATE TABLE chemical_storage_condition (
  storage_id TEXT NOT NULL,
  location_id TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  temp_alert_low REAL,
  temp_alert_high REAL,
  humidity_alert_low REAL,
  humidity_alert_high REAL,
  monitoring_interval_minutes INTEGER,
  last_check_timestamp DATE,
  responsible_staff_id TEXT,
  lock_status TEXT,
  fire_suppression_type TEXT,
  ventilation_rate_cfm INTEGER,
  storage_type TEXT,
  capacity_liters REAL,
  current_fill_percent REAL,
  audit_status TEXT,
  notes TEXT,
  compliance_regime TEXT,
  sensor_id TEXT,
  calibration_date DATE,
  PRIMARY KEY (storage_id)
);

INSERT INTO chemical_storage_condition VALUES ('CS001','LOC01',4.0,35.0,2.0,6.0,30.0,50.0,60,'2023-07-20','S001','Locked','Foam','300','Refrigerated',5000.0,45.0,'Passed','Routine check','OSHA','SN1001','2023-01-10');
INSERT INTO chemical_storage_condition VALUES ('CS002','LOC02',22.0,55.0,18.0,26.0,45.0,65.0,30,'2023-07-19','S002','Unlocked','CO2','500','Ambient',2000.0,80.0,'Passed','No issues','ISO9001','SN1002','2022-12-01');
INSERT INTO chemical_storage_condition VALUES ('CS003','LOC03',-20.0,30.0,-25.0,-15.0,25.0,35.0,120,'2023-07-18','S003','Locked','DryIce','150','Freezer',1000.0,70.0,'Failed','Temperature out of range','GLP','SN1003','2023-02-15');

-- Research data repository: metadata for datasets stored in the lab's data repository
CREATE TABLE research_data_repository (
  repo_id TEXT NOT NULL,
  project_id TEXT,
  dataset_name TEXT,
  data_type TEXT,
  storage_path TEXT,
  size_gb REAL,
  checksum_md5 TEXT,
  created_at DATE,
  updated_at DATE,
  owner_user_id TEXT,
  access_level TEXT,
  encryption_status TEXT,
  retention_policy_months INTEGER,
  backup_frequency_days INTEGER,
  last_backup_date DATE,
  compliance_label TEXT,
  version TEXT,
  description TEXT,
  format TEXT,
  geographic_region TEXT,
  source_system TEXT,
  validation_status TEXT,
  PRIMARY KEY (repo_id)
);

INSERT INTO research_data_repository VALUES ('DR001','P100','gene_expression','RNASeq','/repo/p100/gene_expr','120.5','d41d8cd98f00b204e9800998ecf8427e','2023-01-10','2023-07-15','U001','Restricted','Encrypted','36','7','2023-07-10','HIPAA','v1.0','RNA sequencing dataset','FASTQ','NorthAmerica','SequencerX','Validated');
INSERT INTO research_data_repository VALUES ('DR002','P101','cell_images','Microscopy','/repo/p101/cell_imgs','85.3','0cc175b9c0f1b6a831c399e269772661','2022-11-05','2023-07-12','U002','Public','Unencrypted','24','14','2023-07-01','FAIR','v2.1','High‑resolution cell images','TIFF','Europe','MicroscopeY','Pending');
INSERT INTO research_data_repository VALUES ('DR003','P102','clinical_trials','Survey','/repo/p102/trial_survey','45.0','900150983cd24fb0d6963f7d28e17f72','2023-03-22','2023-07-14','U003','Confidential','Encrypted','48','30','2023-06-30','GDPR','v0.9','Survey responses from trial participants','CSV','Asia','SurveyToolZ','Validated');

-- Bioinformatics pipeline log: execution details for computational pipelines
CREATE TABLE bioinformatics_pipeline_log (
  pipeline_id TEXT NOT NULL,
  run_id TEXT,
  start_time DATE,
  end_time DATE,
  status TEXT,
  compute_node TEXT,
  cpu_cores INTEGER,
  memory_gb REAL,
  input_dataset_id TEXT,
  output_dataset_id TEXT,
  software_version TEXT,
  parameters_json TEXT,
  error_message TEXT,
  initiated_by TEXT,
  queue_name TEXT,
  priority INTEGER,
  walltime_seconds INTEGER,
  walltime_used_seconds INTEGER,
  cpu_time_seconds INTEGER,
  memory_used_gb REAL,
  exit_code INTEGER,
  log_file_path TEXT,
  PRIMARY KEY (pipeline_id, run_id)
);

INSERT INTO bioinformatics_pipeline_log VALUES ('BP001','R001','2023-07-10','2023-07-10','Success','node01',16,64.0,'DR001','DR004','v3.2','{\"trim\":true,\"aligner\":\"bowtie2\"}',NULL,'U001','standard',5,7200,7100,115200,60.0,0,'/logs/bp001_r001.log');
INSERT INTO bioinformatics_pipeline_log VALUES ('BP001','R002','2023-07-12','2023-07-12','Failed','node02',32,128.0,'DR002','DR005','v3.2','{\"trim\":false,\"aligner\":\"hisat2\"}','Segmentation fault','U002','high',8,10800,5000,43200,30.0,1,'/logs/bp001_r002.log');
INSERT INTO bioinformatics_pipeline_log VALUES ('BP002','R001','2023-07-15','2023-07-15','Success','node03',24,96.0,'DR003','DR006','v1.4','{\"statistical_test\":\"ANOVA\"}',NULL,'U003','standard',4,5400,5300,129600,55.0,0,'/logs/bp002_r001.log');

-- Environmental sensor deployment: details of field‑deployed environmental sensors
CREATE TABLE environmental_sensor_deployment (
  deployment_id TEXT NOT NULL,
  sensor_id TEXT,
  sensor_type TEXT,
  firmware_version TEXT,
  latitude REAL,
  longitude REAL,
  altitude_m REAL,
  installation_date DATE,
  last_service_date DATE,
  calibration_due_date DATE,
  power_source TEXT,
  battery_capacity_mah INTEGER,
  sampling_interval_sec INTEGER,
  data_endpoint_url TEXT,
  responsible_team TEXT,
  status TEXT,
  notes TEXT,
  manufacturer TEXT,
  model_number TEXT,
  warranty_expiry DATE,
  compliance_cert TEXT,
  location_description TEXT,
  PRIMARY KEY (deployment_id)
);

INSERT INTO environmental_sensor_deployment VALUES ('DEP001','SEN1001','TemperatureHumidity','1.0.3',40.7128,-74.0060,10.0,'2022-05-01','2023-06-01','2023-12-01','Battery','3000','300','http://data.example.com/sen1001','EnvTeamA','Active','No issues','SensorCo','TH-200','2024-05-01','ISO13156','Rooftop lab A');
INSERT INTO environmental_sensor_deployment VALUES ('DEP002','SEN1002','AirQuality','2.1.0',34.0522,-118.2437,30.0,'2021-09-15','2023-04-20','2023-10-20','Solar','2500','600','http://data.example.com/sen1002','EnvTeamB','Active','Calibrated recently','AirSense','AQ-500','2023-09-15','EPA001','Ground floor hallway');
INSERT INTO environmental_sensor_deployment VALUES ('DEP003','SEN1003','Radiation','0.9.8',51.5074,-0.1278,15.0,'2020-11-10','2023-05-05','2023-11-05','Mains','0','120','http://data.example.com/sen1003','EnvTeamC','Maintenance','Battery replacement due','RadDetect','RD-100','2025-11-10','ISO17025','Basement storage');

-- Lab shuttle schedule: internal shuttle service details for moving samples between labs
CREATE TABLE lab_shuttle_schedule (
  shuttle_id TEXT NOT NULL,
  route_name TEXT,
  departure_time TEXT,
  arrival_time TEXT,
  driver_id TEXT,
  vehicle_plate TEXT,
  capacity_seats INTEGER,
  wheelchair_accessible INTEGER,
  frequency_minutes INTEGER,
  last_maintenance_date DATE,
  next_maintenance_due DATE,
  fuel_type TEXT,
  fuel_capacity_l REAL,
  current_fuel_level_percent REAL,
  operating_status TEXT,
  assigned_lab TEXT,
  notes TEXT,
  gps_tracker_id TEXT,
  maintenance_vendor TEXT,
  insurance_policy_number TEXT,
  registration_expiry DATE,
  contact_number TEXT,
  PRIMARY KEY (shuttle_id)
);

INSERT INTO lab_shuttle_schedule VALUES ('SH001','NorthLoop','08:00','08:15','D001','AB123CD',12,1,30,'2023-06-01','2023-12-01','Electric',80.0,75.0,'Operational','LabNorth','On time','GT001','AutoCare','INS1001','2024-06-30','5551234');
INSERT INTO lab_shuttle_schedule VALUES ('SH002','SouthLoop','09:00','09:20','D002','EF456GH',10,0,45,'2023-05-15','2023-11-15','Diesel',90.0,60.0,'Operational','LabSouth','Requires cleaning','GT002','AutoCare','INS1002','2024-05-15','5555678');
INSERT INTO lab_shuttle_schedule VALUES ('SH003','EastWest','10:30','10:45','D003','IJ789KL',8,1,60,'2023-04-20','2023-10-20','Hybrid',70.0,40.0,'UnderRepair','LabEast','Brake issue','GT003','AutoCare','INS1003','2024-04-20','5558765');

-- Contract performance review: periodic evaluation of vendor contracts
CREATE TABLE contract_performance_review (
  review_id TEXT NOT NULL,
  contract_id TEXT,
  vendor_id TEXT,
  review_date DATE,
  reviewer_id TEXT,
  score_quality INTEGER,
  score_timeliness INTEGER,
  score_cost INTEGER,
  overall_rating TEXT,
  comments TEXT,
  corrective_action_required INTEGER,
  action_due_date DATE,
  follow_up_date DATE,
  documentation_link TEXT,
  compliance_flag INTEGER,
  risk_level TEXT,
  contract_value_usd REAL,
  contract_type TEXT,
  renewal_option TEXT,
  termination_clause_present INTEGER,
  audit_status TEXT,
  next_review_due DATE,
  PRIMARY KEY (review_id)
);

INSERT INTO contract_performance_review VALUES ('RV001','C001','V001','2023-06-30','R001',9,8,7,'A','Excellent delivery','0',NULL,NULL,'/docs/rv001.pdf','1','Low',150000.00,'Supply','Option1','1','Completed','2024-06-30');
INSERT INTO contract_performance_review VALUES ('RV002','C002','V002','2023-07-15','R002',6,5,5','B','Late deliveries','1','2023-08-15','2023-09-01','/docs/rv002.pdf','0','Medium',200000.00,'Service','Option2','0','Open','2024-07-15');
INSERT INTO contract_performance_review VALUES ('RV003','C003','V003','2023-05-20','R003',8,9,8','A','On‑time and within budget','0',NULL,NULL,'/docs/rv003.pdf','1','Low',120000.00,'Consulting','Option3','1','Completed','2024-05-20');

-- Facility energy consumption: utility meter readings and related environmental data
CREATE TABLE facility_energy_consumption (
  record_id TEXT NOT NULL,
  building_id TEXT,
  meter_id TEXT,
  reading_date DATE,
  consumption_kwh REAL,
  peak_demand_kw REAL,
  cost_usd REAL,
  tariff_type TEXT,
  renewable_share_percent REAL,
  temperature_c REAL,
  humidity_percent REAL,
  occupancy_level INTEGER,
  hvac_runtime_hours REAL,
  lighting_runtime_hours REAL,
  equipment_runtime_hours REAL,
  carbon_emission_kg REAL,
  source_of_data TEXT,
  verification_status TEXT,
  notes TEXT,
  created_timestamp DATE,
  updated_timestamp DATE,
  analyst_id TEXT,
  PRIMARY KEY (record_id)
);

INSERT INTO facility_energy_consumption VALUES ('EC001','B01','M001','2023-07-01',3500.5,85.0,420.75,'Standard',25.0,22.5,45.0,150,120.0,200.0,80.0,1500.0,'Meter','Verified','Monthly reading','2023-07-02','2023-07-03','A001');
INSERT INTO facility_energy_consumption VALUES ('EC002','B02','M002','2023-07-01',4200.0,95.0,504.00,'TimeOfUse',30.0,23.0,50.0,180,130.0,210.0,90.0,1800.0,'Meter','Verified','Monthly reading','2023-07-02','2023-07-03','A002');
INSERT INTO facility_energy_consumption VALUES ('EC003','B03','M003','2023-07-01',2800.2,70.0,336.02,'Standard',20.0,21.8,40.0,130,110.0,190.0,70.0,1200.0,'Meter','Pending','Monthly reading','2023-07-02','2023-07-03','A003');

-- Clinical trial adverse event: records of any adverse events observed during trials
CREATE TABLE clinical_trial_adverse_event (
  event_id TEXT NOT NULL,
  trial_id TEXT,
  participant_id TEXT,
  event_date DATE,
  severity_grade INTEGER,
  event_type TEXT,
  description TEXT,
  outcome TEXT,
  related_to_drug INTEGER,
  action_taken TEXT,
  investigator_id TEXT,
  reporting_date DATE,
  follow_up_needed INTEGER,
  follow_up_date DATE,
  regulatory_reported_flag INTEGER,
  report_number TEXT,
  source TEXT,
  resolved_flag INTEGER,
  resolution_date DATE,
  notes TEXT,
  sponsor_contact TEXT,
  data_lock_status TEXT,
  PRIMARY KEY (event_id)
);

INSERT INTO clinical_trial_adverse_event VALUES ('AE001','T100','P001','2023-06-15',2,'Nausea','Mild nausea after dose','Recovered','1','Medication adjusted','I001','2023-06-16','0',NULL,'RPT001','Site','1','2023-06-20','No complications','SponsorA','Locked');
INSERT INTO clinical_trial_adverse_event VALUES ('AE002','T101','P002','2023-07-05',3,'Headache','Persistent headache for 2 days','Ongoing','0','Analgesic prescribed','I002','2023-07-06','1','2023-07-20','0','RPT002','Site','0',NULL,'Monitoring required','SponsorB','Unlocked');
INSERT INTO clinical_trial_adverse_event VALUES ('AE003','T102','P003','2023-05-22',4,'Rash','Dermatological rash covering torso','Resolved','1','Drug discontinued','I003','2023-05-23','0',NULL,'1','RPT003','Site','1','2023-06-01','No further action','SponsorC','Locked');