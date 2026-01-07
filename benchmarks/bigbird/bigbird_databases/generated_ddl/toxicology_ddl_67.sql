```sql
-- Lab air handling performance metrics
CREATE TABLE lab_air_handling_performance (
  performance_id TEXT PRIMARY KEY,
  system_name TEXT,
  zone_id TEXT,
  measurement_timestamp TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  pressure_pa REAL,
  airflow_cfm REAL,
  filter_efficiency_percent REAL,
  co2_ppm REAL,
  voc_ppb REAL,
  particle_count_per_cm3 INTEGER,
  noise_db REAL,
  maintenance_cycle_days INTEGER,
  last_maintenance_date TEXT,
  operator_id TEXT,
  status TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_user TEXT,
  audit_timestamp TEXT
);

INSERT INTO lab_air_handling_performance VALUES
('PFX001','MainVent','Z01','2025-11-01T08:00:00',22.5,45.0,101325,750.0,98.5,420.0,150.0,1200,55.2,180,'2025-10-15','OP001','OK','Initial calibration','2025-11-01','2025-11-01','admin','2025-11-01');

INSERT INTO lab_air_handling_performance VALUES
('PFX002','AuxVent','Z02','2025-11-01T08:15:00',21.8,48.0,101300,620.0,97.2,410.0,145.0,1150,53.8,180,'2025-10-15','OP002','OK','Post‑maintenance check','2025-11-01','2025-11-01','admin','2025-11-01');

INSERT INTO lab_air_handling_performance VALUES
('PFX003','CleanRoomVent','Z03','2025-11-01T08:30:00',20.0,40.0,101400,500.0,99.0,350.0,130.0,800,47.0,365,'2025-09-30','OP003','OK','Routine daily log','2025-11-01','2025-11-01','admin','2025-11-01');


-- Nanomaterial batch synthesis log
CREATE TABLE nanomaterial_batch_synthesis (
  synthesis_id TEXT PRIMARY KEY,
  batch_code TEXT,
  material_type TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  reactor_id TEXT,
  target_particle_size_nm REAL,
  actual_particle_size_nm REAL,
  yield_grams REAL,
  purity_percent REAL,
  catalyst_used TEXT,
  solvent_used TEXT,
  temperature_c REAL,
  pressure_pa REAL,
  stirring_speed_rpm INTEGER,
  operator_id TEXT,
  safety_review_status TEXT,
  qc_passed BOOLEAN,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_user TEXT,
  audit_timestamp TEXT
);

INSERT INTO nanomaterial_batch_synthesis VALUES
('NSY001','NB001','GoldNanoparticle','2025-10-20T09:00:00','2025-10-20T12:30:00','R001',50.0,48.7,25.0,99.2,'CT001','EtOH',85.0,101500,1200,'OP010','Approved',1,'Standard protocol','2025-10-20','2025-10-20','labmgr','2025-10-20');

INSERT INTO nanomaterial_batch_synthesis VALUES
('NSY002','NB002','SiliconNanowire','2025-10-22T07:45:00','2025-10-22T15:15:00','R002',30.0,31.2,40.5,98.5,'CT003','H2O',120.0,101200,800,'OP011','Approved',1,'Extended growth time','2025-10-22','2025-10-22','labmgr','2025-10-22');

INSERT INTO nanomaterial_batch_synthesis VALUES
('NSY003','NB003','TitaniumDioxide','2025-10-25T10:15:00','2025-10-25T14:45:00','R003',15.0,14.8,60.0,97.8,'CT005','IPA',95.0,101600,1000,'OP012','Pending',0,'Yield below target','2025-10-25','2025-10-25','labmgr','2025-10-25');


-- Computational model performance metrics
CREATE TABLE computational_model_performance (
  metric_id TEXT PRIMARY KEY,
  model_name TEXT,
  version TEXT,
  run_id TEXT,
  start_time TEXT,
  end_time TEXT,
  cpu_hours REAL,
  gpu_hours REAL,
  memory_gb REAL,
  storage_gb REAL,
  accuracy_percent REAL,
  loss_value REAL,
  epochs INTEGER,
  batch_size INTEGER,
  optimizer TEXT,
  learning_rate REAL,
  hyperparameter_set TEXT,
  execution_environment TEXT,
  status TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_user TEXT,
  audit_timestamp TEXT
);

INSERT INTO computational_model_performance VALUES
('CMP001','MoleculePredictor','v1.2','RUN1001','2025-09-01T00:00:00','2025-09-01T06:30:00',12.5,0.0,64.0,120.0,92.3,0.04,50,128,'Adam',0.001,'HPSET01','GPUCluster','Completed','Baseline run','2025-09-01','2025-09-01','mladmin','2025-09-01');

INSERT INTO computational_model_performance VALUES
('CMP002','ProteinFoldNet','v3.0','RUN1002','2025-09-05T02:00:00','2025-09-05T10:15:00',20.0,5.5,128.0,250.0,88.7,0.07,100,256,'SGD',0.0005,'HPSET07','GPUCluster','Completed','Learning rate schedule applied','2025-09-05','2025-09-05','mladmin','2025-09-05');

INSERT INTO computational_model_performance VALUES
('CMP003','QuantumSim','v0.9','RUN1003','2025-09-10T08:00:00','2025-09-10T12:45:00',8.0,2.0,32.0,80.0,95.1,0.02,30,64,'RMSProp',0.002,'HPSET03','QuantumNode','Failed','Node outage','2025-09-10','2025-09-10','mladmin','2025-09-10');


-- Chemical storage zone inventory
CREATE TABLE chemical_storage_zone_inventory (
  inventory_id TEXT PRIMARY KEY,
  zone_code TEXT,
  location_description TEXT,
  shelf_id TEXT,
  bin_id TEXT,
  chemical_name TEXT,
  cas_number TEXT,
  quantity_liters REAL,
  quantity_grams REAL,
  storage_temperature_c REAL,
  humidity_percent REAL,
  last_inspection_date TEXT,
  next_inspection_due TEXT,
  responsible_user TEXT,
  hazard_class TEXT,
  status TEXT,
  comments TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_user TEXT,
  audit_timestamp TEXT
);

INSERT INTO chemical_storage_zone_inventory VALUES
('CSI001','ZC01','ColdRoomA','SH01','BN01','Acetone','67-64-1',120.0,0.0,-20.0,30.0,'2025-09-15','2025-12-15','USR001','Flammable','OK','Stored in sealed containers','2025-09-15','2025-09-15','invadmin','2025-09-15');

INSERT INTO chemical_storage_zone_inventory VALUES
('CSI002','ZC02','VentilatedShelfB','SH02','BN02','SodiumHydroxide','1310-73-2',0.0,2500.0,22.0,45.0,'2025-09-10','2025-12-10','USR002','Corrosive','OK','Palletized','2025-09-10','2025-09-10','invadmin','2025-09-10');

INSERT INTO chemical_storage_zone_inventory VALUES
('CSI003','ZC03','DryRoomC','SH03','BN03','Benzene','71-43-2',80.0,0.0,18.0,35.0,'2025-09-20','2025-12-20','USR003','Flammable','Alert','Ventilation check required','2025-09-20','2025-09-20','invadmin','2025-09-20');


-- Bio sample processing step log
CREATE TABLE bio_sample_processing_step_log (
  step_log_id TEXT PRIMARY KEY,
  sample_id TEXT,
  processing_stage TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  technician_id TEXT,
  equipment_id TEXT,
  reagents_used TEXT,
  volume_ml REAL,
  temperature_c REAL,
  incubation_time_min INTEGER,
  result_status TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_user TEXT,
  audit_timestamp TEXT,
  qc_passed BOOLEAN,
  qc_notes TEXT,
  batch_id TEXT,
  protocol_version TEXT,
  storage_location TEXT
);

INSERT INTO bio_sample_processing_step_log VALUES
('BSL001','SMP1001','Lysis','2025-08-01T09:00:00','2025-08-01T09:15:00','TECH01','EQ001','BufferA',0.5,4.0,15,'Success','Lysis completed','2025-08-01','2025-08-01','labtech','2025-08-01',1,'All good','BCH001','v1.0','FRZ01');

INSERT INTO bio_sample_processing_step_log VALUES
('BSL002','SMP1002','ReverseTranscription','2025-08-02T10:30:00','2025-08-02T10:55:00','TECH02','EQ002','RTEnzymeMix',1.0,25.0,30,'Success','cDNA synthesis','2025-08-02','2025-08-02','labtech','2025-08-02',1,'Clear bands','BCH002','v1.1','FRZ02');

INSERT INTO bio_sample_processing_step_log VALUES
('BSL003','SMP1003','PCR','2025-08-03T13:00:00','2025-08-03T13:45:00','TECH03','EQ003','PCRMix',2.0,95.0,0,'Failed','No amplification','2025-08-03','2025-08-03','labtech','2025-08-03',0,'Primer issue','BCH003','v1.2','FRZ03');


-- Environmental sensor deployment metrics
CREATE TABLE environmental_sensor_deployment_metrics (
  deployment_id TEXT PRIMARY KEY,
  sensor_type TEXT,
  sensor_id TEXT,
  deployment_site TEXT,
  latitude REAL,
  longitude REAL,
  install_timestamp TEXT,
  firmware_version TEXT,
  battery_voltage REAL,
  signal_strength_dbm REAL,
  data_rate_hz REAL,
  calibration_status TEXT,
  last_calibration_date TEXT,
  next_calibration_due TEXT,
  operational_status TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_user TEXT,
  audit_timestamp TEXT,
  maintenance_cycle_days INTEGER,
  last_maintenance_date TEXT,
  temperature_c REAL
);

INSERT INTO environmental_sensor_deployment_metrics VALUES
('ESD001','AirQuality','SNS001','SiteAlpha',34.0522,-118.2437,'2025-06-01T08:00:00','FW1.2',3.7,-70.5,1.0,'Calibrated','2025-06-15','2025-12-15','Active','No issues','2025-06-01','2025-06-01','admin','2025-06-01',180,'2025-08-01',22.5);

INSERT INTO environmental_sensor_deployment_metrics VALUES
('ESD002','Noise','SNS002','SiteBeta',40.7128,-74.0060,'2025-07-10T09:30:00','FW1.3',3.6,-68.0,0.5,'Calibrated','2025-07-20','2025-01-20','Active','Battery replace due Q4','2025-07-10','2025-07-10','admin','2025-07-10',180,'2025-09-10',21.0);

INSERT INTO environmental_sensor_deployment_metrics VALUES
('ESD003','Radiation','SNS003','SiteGamma',51.5074,-0.1278,'2025-08-05T11:15:00','FW2.0',3.8,-72.3,0.2,'Pending','2025-08-20','2026-02-20','Inactive','Awaiting calibration','2025-08-05','2025-08-05','admin','2025-08-05',180,'2025-10-05',19.8);


-- Research project fiscal summary
CREATE TABLE research_project_fiscal_summary (
  fiscal_id TEXT PRIMARY KEY,
  project_id TEXT,
  fiscal_year INTEGER,
  allocated_budget_usd REAL,
  spent_to_date_usd REAL,
  remaining_budget_usd REAL,
  overhead_rate_percent REAL,
  indirect_cost_usd REAL,
  cost_center_code TEXT,
  principal_investigator TEXT,
  funding_source TEXT,
  approval_status TEXT,
  revision_number INTEGER,
  last_revision_date TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_user TEXT,
  audit_timestamp TEXT,
  notes TEXT,
  currency TEXT,
  exchange_rate_to_usd REAL,
  approved_by TEXT,
  approval_date TEXT
);

INSERT INTO research_project_fiscal_summary VALUES
('RFS001','PRJ001',2025,500000.0,120000.0,380000.0,15.0,75000.0,'CC100','DrSmith','NIH','Approved',2,'2025-04-01','2025-01-15','2025-04-01','finadmin','2025-04-01','Quarterly update','USD',1.0,'DirFinance','2025-04-01');

INSERT INTO research_project_fiscal_summary VALUES
('RFS002','PRJ002',2025,300000.0,210000.0,90000.0,12.0,36000.0,'CC200','DrJones','NSF','Pending',1,'2025-03-15','2025-01-20','2025-03-15','finadmin','2025-03-15','Awaiting final sign off','USD',1.0,'DirFinance','2025-03-15');

INSERT INTO research_project_fiscal_summary VALUES
('RFS003','PRJ003',2025,750000.0,400000.0,350000.0,18.0,135000.0,'CC300','DrLee','DOE','Approved',3,'2025-05-10','2025-02-01','2025-05-10','finadmin','2025-05-10','Mid‑year review','USD',1.0,'DirFinance','2025-05-10');


-- Instrument remote control event
CREATE TABLE instrument_remote_control_event (
  event_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  user_id TEXT,
  control_interface TEXT,
  command_executed TEXT,
  command_parameters TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  result_status TEXT,
  error_code TEXT,
  latency_ms REAL,
  data_transferred_mb REAL,
  session_id TEXT,
  ip_address TEXT,
  location TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_user TEXT,
  audit_timestamp TEXT,
  firmware_version TEXT,
  security_level TEXT,
  authentication_method TEXT
);

INSERT INTO instrument_remote_control_event VALUES
('IRC001','INST001','USR001','WebUI','StartAcquisition','duration=60','2025-09-01T10:00:00','2025-09-01T10:01:00','Success','','15.2',0.5,'SID1001','192.168.1.10','LabA','Acquisition started remotely','2025-09-01','2025-09-01','itadmin','2025-09-01','FW3.1','High','Token');

INSERT INTO instrument_remote_control_event VALUES
('IRC002','INST002','USR002','CLI','SetTemperature','temp=25','2025-09-02T14:30:00','2025-09-02T14:30:10','Success','','2.8',0.0,'SID1002','192.168.1.11','LabB','Temperature set via command line','2025-09-02','2025-09-02','itadmin','2025-09-02','FW2.9','Medium','Password');

INSERT INTO instrument_remote_control_event VALUES
('IRC003','INST003','USR003','API','UploadCalibration','file=cal2025.dat','2025-09-03T08:15:00','2025-09-03T08:15:45','Failed','ERR42','120.5',1.2,'SID1003','192.168.1.12','LabC','Calibration upload error','2025-09-03','2025-09-03','itadmin','2025-09-03','FW4.0','High','Certificate');


-- Waste disposal route analysis
CREATE TABLE waste_disposal_route_analysis (
  analysis_id TEXT PRIMARY KEY,
  waste_type TEXT,
  source_location TEXT,
  destination_facility TEXT,
  distance_km REAL,
  transport_method TEXT,
  container_type TEXT,
  scheduled_date TEXT,
  actual_departure TEXT,
  actual_arrival TEXT,
  compliance_status TEXT,
  responsible_manager TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_user TEXT,
  audit_timestamp TEXT,
  cost_usd REAL,
  carbon_emission_kg REAL,
  regulatory_reference TEXT,
  risk_level TEXT,
  mitigation_measures TEXT
);

INSERT INTO waste_disposal_route_analysis VALUES
('WRA001','Solvent','LabA','FacilityX',12.5,'Truck','IBC','2025-10-01','2025-10-01T08:00:00','2025-10-01T10:30:00','Compliant','MGR001','Standard route','2025-09-20','2025-09-20','logadmin','2025-09-20',350.0,45.2,'EPA-40','Low','Regular training');

INSERT INTO waste_disposal_route_analysis VALUES
('WRA002','Biohazard','LabB','FacilityY',8.0,'Van','BioContainer','2025-10-05','2025-10-05T09:15:00','2025-10-05T10:00:00','Compliant','MGR002','Urgent pickup','2025-09-22','2025-09-22','logadmin','2025-09-22',200.0,30.0,'OSHA-1910','Medium','Enhanced PPE');

INSERT INTO waste_disposal_route_analysis VALUES
('WRA003','Radioactive','LabC','FacilityZ',15.3,'SpecializedTruck','LeadShielded','2025-10-10','2025-10-10T07:45:00','2025-10-10T11:20:00','Pending','MGR003','Awaiting clearance','2025-09-25','2025-09-25','logadmin','2025-09-25',750.0,120.5','NRC-10','High','Escort required');


-- Clinical trial site staff schedule
CREATE TABLE clinical_trial_site_staff_schedule (
  schedule_id TEXT PRIMARY KEY,
  site_id TEXT,
  staff_id TEXT,
  role TEXT,
  shift_date TEXT,
  shift_start_time TEXT,
  shift_end_time TEXT,
  assigned_tasks TEXT,
  supervisor_id TEXT,
  status TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_user TEXT,
  audit_timestamp TEXT,
  overtime_hours REAL,
  on_call BOOLEAN,
  training_completed BOOLEAN,
  certification_type TEXT,
  last_training_date TEXT,
  next_training_due TEXT
);

INSERT INTO clinical_trial_site_staff_schedule VALUES
('CTSS001','SITE001','STF001','Coordinator','2025-11-01','07:00','15:00','PatientCheckIn','SUP001','Confirmed','All set','2025-10-20','2025-10-20','ctadmin','2025-10-20',0.0,0,1,'GCP','2025-06-01','2026-06-01');

INSERT INTO clinical_trial_site_staff_schedule VALUES
('CTSS002','SITE001','STF002','Nurse','2025-11-01','08:00','16:00','BloodDraw','SUP001','Confirmed','Prepared','2025-10-20','2025-10-20','ctadmin','2025-10-20',1.5,1,1,'ClinicalNursing','2025-08-15','2026-08-15');

INSERT INTO clinical_trial_site_staff_schedule VALUES
('CTSS003','SITE002','STF003','Investigator','2025-11-02','09:00','17:00','AdverseEventReview','SUP002','Pending','Awaiting documents','2025-10-22','2025-10-22','ctadmin','2025-10-22',0.0,0,0,'MedicalDoctor','2025-03-01','2025-09-01');
```