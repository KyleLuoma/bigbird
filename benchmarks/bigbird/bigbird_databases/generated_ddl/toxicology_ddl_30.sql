-- Lab air flow analysis data
CREATE TABLE lab_air_flow_analysis (
  analysis_id TEXT PRIMARY KEY,
  analysis_date DATE,
  technician_id TEXT,
  equipment_serial TEXT,
  airflow_rate REAL,
  pressure_drop REAL,
  temperature_c REAL,
  humidity_percent REAL,
  filter_status TEXT,
  duct_section TEXT,
  inlet_location TEXT,
  outlet_location TEXT,
  calibration_factor REAL,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  sensor_id TEXT,
  voltage_mv REAL,
  current_ma REAL,
  flow_direction TEXT,
  validation_status TEXT
);

INSERT INTO lab_air_flow_analysis VALUES ('AF001','2024-03-15','TECH01','EQP1001',12.5,0.8,22.3,45.0,'OK','D1','InletA','OutletB',1.02,'Initial run','2024-03-15 08:00:00','2024-03-15 08:05:00','SENS01',3.3,150.0,'North','PASSED');
INSERT INTO lab_air_flow_analysis VALUES ('AF002','2024-04-01','TECH02','EQP1002',14.0,0.7,21.8,48.2,'REPLACED','D2','InletC','OutletD',0.98,'Post-maintenance','2024-04-01 09:30:00','2024-04-01 09:35:00','SENS02',3.3,145.0,'South','PASSED');
INSERT INTO lab_air_flow_analysis VALUES ('AF003','2024-04-20','TECH03','EQP1003',13.2,0.9,23.1,44.5,'OK','D3','InletE','OutletF',1.00,'Routine check','2024-04-20 10:15:00','2024-04-20 10:20:00','SENS03',3.3,148.0,'East','FAILED');

-- Instrument operator certification records
CREATE TABLE instrument_operator_cert (
  cert_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  operator_id TEXT,
  certification_date DATE,
  expiration_date DATE,
  cert_level TEXT,
  training_hours INTEGER,
  trainer_id TEXT,
  competency_score REAL,
  last_retest_date DATE,
  status TEXT,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  document_ref TEXT,
  safety_briefing TEXT,
  equipment_location TEXT,
  calibration_verified TEXT,
  proctor_id TEXT,
  recertification_required TEXT,
  audit_flag TEXT
);

INSERT INTO instrument_operator_cert VALUES ('IC001','INST100','OP001','2023-06-01','2025-06-01','Level2',40,'TRN01',92.5,'2024-05-20','ACTIVE','No issues','2023-06-01 08:00:00','2024-01-10 09:00:00','DOC123','Completed','LabA','YES','PRO01','NO','CLEAR');
INSERT INTO instrument_operator_cert VALUES ('IC002','INST101','OP002','2022-09-15','2024-09-15','Level3',55,'TRN02',88.0,'2024-03-10','ACTIVE','Minor remark','2022-09-15 09:30:00','2024-02-05 10:00:00','DOC124','Completed','LabB','YES','PRO02','YES','REVIEW');
INSERT INTO instrument_operator_cert VALUES ('IC003','INST102','OP003','2021-12-20','2023-12-20','Level1',30,'TRN03',75.0,'2023-11-01','EXPIRED','Training overdue','2021-12-20 07:45:00','2023-12-01 08:30:00','DOC125','Pending','LabC','NO','PRO03','YES','FLAGGED');

-- Chemical storage log
CREATE TABLE chemical_storage_log (
  storage_log_id TEXT PRIMARY KEY,
  chemical_id TEXT,
  batch_number TEXT,
  storage_location TEXT,
  quantity_ml REAL,
  quantity_g REAL,
  arrival_date DATE,
  expiration_date DATE,
  stored_by TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  containment_type TEXT,
  safety_class TEXT,
  last_inspection_date DATE,
  inspection_status TEXT,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  auditor_id TEXT,
  seal_integrity TEXT,
  quarantine_flag TEXT
);

INSERT INTO chemical_storage_log VALUES ('SL001','CHEM001','BATCH001','CabinetA',500.0,0.0,'2024-01-10','2025-01-10','STAFF01',20.0,35.0,'Closed','Flammable','2024-03-01','PASS','Stored under lock','2024-01-10 08:00:00','2024-03-01 09:00:00','AUD01','INTACT','NO');
INSERT INTO chemical_storage_log VALUES ('SL002','CHEM002','BATCH002','FreezerB',0.0,250.0,'2023-11-05','2024-11-05','STAFF02',-5.0,40.0,'Sealed','Corrosive','2024-02-15','PASS','Checked temperature','2023-11-05 09:30:00','2024-02-15 10:30:00','AUD02','INTACT','NO');
INSERT INTO chemical_storage_log VALUES ('SL003','CHEM003','BATCH003','CabinetC',1000.0,0.0,'2023-08-20','2024-08-20','STAFF03',22.0,38.0,'Closed','Toxic','2024-01-20','FAIL','Leak detected','2023-08-20 07:45:00','2024-01-20 08:45:00','AUD03','BREACHED','YES');

-- Waste transport schedule
CREATE TABLE waste_transport_schedule (
  schedule_id TEXT PRIMARY KEY,
  waste_type TEXT,
  container_id TEXT,
  pickup_date DATE,
  pickup_time TIME,
  driver_id TEXT,
  vehicle_id TEXT,
  origin_location TEXT,
  destination_facility TEXT,
  manifest_number TEXT,
  weight_kg REAL,
  authorized_by TEXT,
  compliance_status TEXT,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  temperature_c REAL,
  sealed_flag TEXT,
  discharge_permit TEXT,
  verification_code TEXT,
  incident_reported TEXT
);

INSERT INTO waste_transport_schedule VALUES ('WS001','Chemical','CONT001','2024-04-10','08:30:00','DRV01','VEH001','LabA','DisposalSiteX','MAN001',120.5,'SUP001','COMPLIANT','No issues','2024-04-01 09:00:00','2024-04-10 08:45:00',15.0,'YES','PERM001','VER001','NO');
INSERT INTO waste_transport_schedule VALUES ('WS002','Biological','CONT002','2024-04-12','10:15:00','DRV02','VEH002','LabB','DisposalSiteY','MAN002',85.0,'SUP002','COMPLIANT','Handled with PPE','2024-04-02 10:00:00','2024-04-12 10:30:00',4.0,'YES','PERM002','VER002','NO');
INSERT INTO waste_transport_schedule VALUES ('WS003','Radioactive','CONT003','2024-04-15','14:00:00','DRV03','VEH003','LabC','DisposalSiteZ','MAN003',60.0,'SUP003','PENDING','Awaiting permit','2024-04-03 11:00:00','2024-04-15 14:30:00',5.0,'NO','PERM003','VER003','YES');

-- Computational job profile
CREATE TABLE computational_job_profile (
  profile_id TEXT PRIMARY KEY,
  job_name TEXT,
  submitter_id TEXT,
  submission_date DATETIME,
  requested_cpus INTEGER,
  requested_memory_gb REAL,
  estimated_runtime_min INTEGER,
  priority_level TEXT,
  queue_name TEXT,
  software_module TEXT,
  version TEXT,
  dependency_job_id TEXT,
  status TEXT,
  start_time DATETIME,
  end_time DATETIME,
  resource_allocation_id TEXT,
  wallclock_limit_min INTEGER,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  cpu_time_sec REAL,
  memory_peak_gb REAL,
  exit_code INTEGER,
  retry_count INTEGER,
  notification_email TEXT,
  cost_center TEXT
);

INSERT INTO computational_job_profile VALUES ('CP001','SimA','USR01','2024-03-20 09:00:00',32,64.0,180,'HIGH','queueA','simulator','v2.1','', 'QUEUED','', '', 'RP001',240,'Initial run','2024-03-20 09:00:00','2024-03-20 09:05:00',0.0,0.0,NULL,0,'user01@example.com','CC100');
INSERT INTO computational_job_profile VALUES ('CP002','AnalysisB','USR02','2024-04-01 13:30:00',16,32.0,90,'MEDIUM','queueB','analysis_tool','v3.4','CP001','RUNNING','2024-04-01 13:35:00','', 'RP002',120,'Dependent on SimA','2024-04-01 13:30:00','2024-04-01 13:35:00',0.0,0.0,NULL,0,'user02@example.com','CC200');
INSERT INTO computational_job_profile VALUES ('CP003','ModelC','USR03','2024-04-10 08:15:00',64,128.0,300,'LOW','queueC','modeler','v1.9','','COMPLETED','2024-04-10 08:20:00','2024-04-10 13:30:00','RP003',360,'Final batch','2024-04-10 08:15:00','2024-04-10 13:30:00',10800.0,127.5,0,1,'user03@example.com','CC300');

-- Biosafety audit record
CREATE TABLE biosafety_audit_record (
  audit_id TEXT PRIMARY KEY,
  audit_date DATE,
  auditor_id TEXT,
  facility_section TEXT,
  biosafety_level TEXT,
  compliance_score REAL,
  violations_found INTEGER,
  corrective_action TEXT,
  follow_up_date DATE,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  document_ref TEXT,
  equipment_inspected TEXT,
  PPE_compliance TEXT,
  waste_handling TEXT,
  training_status TEXT,
  ventilation_status TEXT,
  signage_status TEXT,
  decontamination_procedures TEXT,
  emergency_plan_status TEXT
);

INSERT INTO biosafety_audit_record VALUES ('BA001','2024-02-15','AUD01','SectionA','BSL2',94.5,1,'Disinfected workbench','2024-03-01','All good','2024-02-15 09:00:00','2024-03-01 10:00:00','DOCBA001','Incubator, Autoclave','YES','COMPLIANT','UP-TO-DATE','OK','OK','Reviewed','VALID');
INSERT INTO biosafety_audit_record VALUES ('BA002','2024-03-20','AUD02','SectionB','BSL3',88.0,3,'Replaced gloves, retrained staff','2024-04-10','Minor issues noted','2024-03-20 10:30:00','2024-04-10 11:00:00','DOCBA002','BiosafetyCabinet','YES','NON-COMPLIANT','OVERDUE','REPAIR NEEDED','UPDATE REQUIRED','DISCUSS');
INSERT INTO biosafety_audit_record VALUES ('BA003','2024-04-05','AUD03','SectionC','BSL1',99.0,0,'None','2024-04-20','Excellent','2024-04-05 08:45:00','2024-04-20 09:15:00','DOCBA003','Freezer','YES','COMPLIANT','UP-TO-DATE','OK','OK','DOCUMENTED','VALID');

-- Environmental sensor deployment log
CREATE TABLE environmental_sensor_deployment_log (
  deployment_id TEXT PRIMARY KEY,
  sensor_type TEXT,
  sensor_id TEXT,
  location TEXT,
  installation_date DATE,
  calibrate_date DATE,
  installer_id TEXT,
  maintenance_interval_days INTEGER,
  last_maintenance_date DATE,
  status TEXT,
  battery_level_percent REAL,
  firmware_version TEXT,
  network_id TEXT,
  ip_address TEXT,
  latitude REAL,
  longitude REAL,
  altitude_m REAL,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  data_endpoint TEXT,
  alert_threshold REAL,
  compliance_flag TEXT,
  decommission_date DATE,
  replacement_sensor_id TEXT
);

INSERT INTO environmental_sensor_deployment_log VALUES ('ED001','Temperature','SENS100','LabRoof','2024-01-05','2024-01-10','TECH10',180,'2024-03-01','ACTIVE',95.0,'v1.2','NET01','192.168.1.10',40.7128,-74.0060,5.0,'No issues','2024-01-05 09:00:00','2024-03-01 10:00:00','http://data.lab/sens100',30.0,'YES',NULL,NULL);
INSERT INTO environmental_sensor_deployment_log VALUES ('ED002','Humidity','SENS101','LabBasement','2024-02-12','2024-02-15','TECH11',180,'2024-04-01','ACTIVE',88.5,'v1.3','NET02','192.168.1.11',40.7130,-74.0062,2.0,'Battery low','2024-02-12 10:30:00','2024-04-01 11:00:00','http://data.lab/sens101',60.0,'YES',NULL,NULL);
INSERT INTO environmental_sensor_deployment_log VALUES ('ED003','Airflow','SENS102','VentilationShaft','2023-12-20','2023-12-25','TECH12',365,'2024-02-20','INACTIVE',0.0,'v2.0','NET03','192.168.1.12',40.7125,-74.0058,10.0,'Decommissioned','2023-12-20 08:45:00','2024-02-20 09:45:00','http://data.lab/sens102',0.0,'NO','2024-03-15','SENS202');

-- Nanomaterial production batch detail
CREATE TABLE nanomaterial_production_batch_detail (
  batch_detail_id TEXT PRIMARY KEY,
  batch_id TEXT,
  material_name TEXT,
  synthesis_method TEXT,
  precursor_a TEXT,
  precursor_b TEXT,
  catalyst TEXT,
  reaction_temp_c REAL,
  reaction_time_min INTEGER,
  solvent TEXT,
  concentration_mgml REAL,
  drying_method TEXT,
  particle_size_nm REAL,
  surface_area_m2g REAL,
  zeta_potential_mv REAL,
  batch_yield_percent REAL,
  quality_grade TEXT,
  analyst_id TEXT,
  approval_status TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  safety_review_id TEXT,
  storage_location TEXT,
  stability_months INTEGER,
  notes TEXT,
  disposal_plan TEXT
);

INSERT INTO nanomaterial_production_batch_detail VALUES ('NB001','NBATCH001','GoldNanoparticle','ChemicalReduction','HAuCl4','SodiumCitrate','None',80.0,30,'Water',2.5,'Lyophilization',15.0,50.0,-25.0,85.0,'A','ANL001','APPROVED','2024-03-01 07:00:00','2024-03-02 08:00:00','SR001','FreezerA',24,'Stable','Incineration');
INSERT INTO nanomaterial_production_batch_detail VALUES ('NB002','NBATCH002','SilicaNanoparticle','SolGel','TEOS','Ethanol','HCl',25.0,120,'Ethanol',5.0,'AirDry',50.0,200.0, -10.0,78.0,'B','ANL002','PENDING','2024-04-05 09:30:00','2024-04-06 10:30:00','SR002','CabinetB',12,'Viscous','Landfill');
INSERT INTO nanomaterial_production_batch_detail VALUES ('NB003','NBATCH003','TitaniumDioxide','Hydrothermal','TiCl4','Water','NaOH',180.0,240,'Water',3.0,'Calcination',100.0,150.0,5.0,92.0,'A','ANL003','APPROVED','2024-02-20 06:45:00','2024-02-21 07:45:00','SR003','ShelfC',36,'Highly crystalline','Recycling');

-- Clinical trial site monitoring
CREATE TABLE clinical_trial_site_monitoring (
  monitoring_id TEXT PRIMARY KEY,
  trial_id TEXT,
  site_id TEXT,
  monitor_id TEXT,
  visit_date DATE,
  visit_type TEXT,
  patient_enrollment INTEGER,
  adverse_events_reported INTEGER,
  protocol_deviation INTEGER,
  source_data_verification_passed TEXT,
  consent_form_completeness TEXT,
  drug_storage_compliance TEXT,
  equipment_calibration_status TEXT,
  training_status TEXT,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  follow_up_required TEXT,
  follow_up_date DATE,
  corrective_action_plan TEXT,
  escalation_level TEXT,
  site_contact TEXT,
  site_phone TEXT,
  site_email TEXT,
  regulatory_status TEXT
);

INSERT INTO clinical_trial_site_monitoring VALUES ('CM001','CT001','SITE01','MON01','2024-03-10','Initial','50','2','0','YES','YES','YES','OK','CURRENT','All good','2024-03-10 09:00:00','2024-03-10 10:00:00','NO',NULL,'','LOW','DrSmith','5551234','drsmith@site01.com','COMPLIANT');
INSERT INTO clinical_trial_site_monitoring VALUES ('CM002','CT001','SITE01','MON02','2024-04-12','Routine','55','1','1','YES','YES','YES','OK','CURRENT','Minor deviation noted','2024-04-12 11:00:00','2024-04-12 12:00:00','YES','2024-04-20','Update SOP','MEDIUM','NurseLee','5555678','nurselee@site01.com','COMPLIANT');
INSERT INTO clinical_trial_site_monitoring VALUES ('CM003','CT002','SITE02','MON03','2024-04-18','Closeout','40','0','0','YES','YES','YES','OK','CURRENT','Trial closed successfully','2024-04-18 08:30:00','2024-04-18 09:30:00','NO',NULL,'','LOW','DrJones','5559012','drjones@site02.com','COMPLIANT');

-- Facility energy electricity usage
CREATE TABLE facility_energy_electricity_usage (
  usage_id TEXT PRIMARY KEY,
  facility_id TEXT,
  meter_id TEXT,
  reading_date DATE,
  start_reading_kwh REAL,
  end_reading_kwh REAL,
  consumption_kwh REAL,
  peak_demand_kw REAL,
  off_peak_demand_kw REAL,
  demand_factor REAL,
  tariff_type TEXT,
  cost_usd REAL,
  carbon_emission_kg REAL,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  meter_status TEXT,
  verification_id TEXT,
  adjustment_kwh REAL,
  adjusted_cost_usd REAL,
  auditor_id TEXT,
  anomaly_flag TEXT,
  correction_note TEXT,
  report_generated_date DATE,
  billing_cycle TEXT,
  regional_grid TEXT
);

INSERT INTO facility_energy_electricity_usage VALUES ('EU001','FAC01','MTR001','2024-03-31',120000.0,121500.0,1500.0,350.0,150.0,0.43,'PEAK',1800.0,900.0,'Normal month','2024-03-31 08:00:00','2024-04-01 09:00:00','ACTIVE','VER001',0.0,1800.0,'AUD01','NO','', '2024-04-02','MARCH','GRID_A');
INSERT INTO facility_energy_electricity_usage VALUES ('EU002','FAC01','MTR001','2024-04-30',121500.0,123200.0,1700.0,400.0,160.0,0.40,'PEAK',2040.0,1020.0,'Higher consumption','2024-04-30 08:30:00','2024-05-01 09:15:00','ACTIVE','VER002',0.0,2040.0,'AUD02','YES','Investigate HVAC usage','2024-05-02','APRIL','GRID_A');
INSERT INTO facility_energy_electricity_usage VALUES ('EU003','FAC02','MTR002','2024-04-30',80000.0,81020.0,1020.0,250.0,120.0,0.48,'OFFPEAK',1224.0,612.0,'Stable','2024-04-30 07:45:00','2024-05-01 08:45:00','ACTIVE','VER003',0.0,1224.0,'AUD03','NO','', '2024-05-02','APRIL','GRID_B');