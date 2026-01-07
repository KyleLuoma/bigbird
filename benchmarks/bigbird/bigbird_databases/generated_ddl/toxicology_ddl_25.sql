-- Spectral analysis parameters for instrument calibrations
CREATE TABLE spectral_analysis_parameters (
  param_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  wavelength_start_nm REAL,
  wavelength_end_nm REAL,
  resolution_nm REAL,
  integration_time_ms INTEGER,
  detector_gain REAL,
  background_subtraction TEXT,
  smoothing_algorithm TEXT,
  smoothing_factor REAL,
  baseline_correction TEXT,
  peak_detection_threshold REAL,
  reference_standard_id TEXT,
  calibration_date TEXT,
  operator_id TEXT,
  lab_location TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  is_active INTEGER
);

INSERT INTO spectral_analysis_parameters VALUES ('sp001','instA',200.0,800.0,0.5,100,1.2,'yes','savitzky_golay',2.0,'linear',0.05,'ref001','2023-05-10','user01','labA',22.5,45.0,'initial setup','2023-05-09','2023-05-10',1);
INSERT INTO spectral_analysis_parameters VALUES ('sp002','instB',150.0,750.0,0.3,150,1.0,'no','moving_average',3.0,'none',0.08,'ref002','2023-06-15','user02','labB',20.0,40.0,'routine check','2023-06-14','2023-06-15',1);
INSERT INTO spectral_analysis_parameters VALUES ('sp003','instC',100.0,900.0,0.8,200,0.9,'yes','gaussian',1.5,'polynomial',0.04,'ref003','2023-07-20','user03','labC',25.0,50.0','post maintenance','2023-07-19','2023-07-20',1);

-- Energy meter readings for facility power consumption
CREATE TABLE facility_energy_meter (
  meter_id TEXT PRIMARY KEY,
  building_code TEXT,
  floor_number INTEGER,
  zone TEXT,
  meter_type TEXT,
  installation_date TEXT,
  last_calibration_date TEXT,
  voltage_v REAL,
  current_a REAL,
  power_factor REAL,
  active_power_kw REAL,
  reactive_power_kvar REAL,
  apparent_power_kva REAL,
  cumulative_energy_kwh REAL,
  peak_demand_kw REAL,
  demand_timestamp TEXT,
  operator_id TEXT,
  maintenance_status TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  is_operational INTEGER
);

INSERT INTO facility_energy_meter VALUES ('em001','B01',1,'ZoneA','digital','2022-01-15','2023-01-10',230.0,10.5,0.95,9.9,3.2,10.6,15000.5,12.5','2023-08-01 14:00:00','eng01','ok','monthly check','2023-07-31','2023-08-01',1);
INSERT INTO facility_energy_meter VALUES ('em002','B02',2,'ZoneB','analog','2021-06-20','2023-02-05',230.0,8.2,0.92,7.5,2.8,8.3,12000.0,10.0','2023-08-01 15:30:00','eng02','ok','quarterly inspection','2023-07-30','2023-08-01',1);
INSERT INTO facility_energy_meter VALUES ('em003','B03',3,'ZoneC','smart','2023-03-10','2023-07-01',230.0,12.0,0.98,11.8,3.5,12.6,8000.2,13.2','2023-08-01 16:45:00','eng03','calibration needed','new installation','2023-07-28','2023-08-01',1);

-- Detailed failure mode records for laboratory instruments
CREATE TABLE instrument_failure_mode (
  failure_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  failure_type TEXT,
  symptom_description TEXT,
  root_cause TEXT,
  detection_method TEXT,
  occurrence_date TEXT,
  resolution_date TEXT,
  downtime_hours REAL,
  repaired_by TEXT,
  parts_replaced TEXT,
  cost_usd REAL,
  severity_level TEXT,
  priority TEXT,
  impact_area TEXT,
  corrective_action TEXT,
  preventive_action TEXT,
  comments TEXT,
  logged_by TEXT,
  created_at TEXT,
  updated_at TEXT,
  is_resolved INTEGER
);

INSERT INTO instrument_failure_mode VALUES ('fm001','instA','electrical','no power output','faulty power supply','visual inspection','2023-04-12','2023-04-15',72.0,'tech01','psu123',2500.0,'high','high','analysis','replace PSU','regular PSU test','spare parts used','user01','2023-04-11','2023-04-15',1);
INSERT INTO instrument_failure_mode VALUES ('fm002','instB','mechanical','vibration excess','worn bearing','vibration sensor','2023-05-20','2023-05-22',48.0,'tech02','bearing45',1800.0,'medium','medium','measurement','replace bearing','lubrication schedule','no additional notes','user02','2023-05-19','2023-05-22',1);
INSERT INTO instrument_failure_mode VALUES ('fm003','instC','software','error code 0x1A','corrupt firmware','log analysis','2023-06-05','2023-06-07',36.0,'tech03','firmware_v2','1200.0','low','low','data acquisition','reflash firmware','firmware integrity check','resolved after update','user03','2023-06-04','2023-06-07',1);

-- Chemical storage location hierarchy
CREATE TABLE chemical_storage_location (
  location_id TEXT PRIMARY KEY,
  building TEXT,
  floor INTEGER,
  aisle TEXT,
  shelf TEXT,
  compartment TEXT,
  storage_type TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  ventilation_type TEXT,
  access_control TEXT,
  max_weight_kg REAL,
  current_occupancy_percent REAL,
  fire_suppression TEXT,
  leak_detection TEXT,
  last_inspection_date TEXT,
  inspector_id TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  is_active INTEGER
);

INSERT INTO chemical_storage_location VALUES ('loc001','Main','1','A1','S1','C1','flame_resistant',4.0,30.0,'mechanical','badge','500',20.0,'sprinkler','yes','2023-07-01','insp01','near entrance','2023-06-30','2023-07-01',1);
INSERT INTO chemical_storage_location VALUES ('loc002','Annex','2','B3','S2','C2','refrigerated',-20.0,35.0,'forced','pin','300',45.0,'foam','no','2023-06-15','insp02','cold storage','2023-06-14','2023-06-15',1);
INSERT INTO chemical_storage_location VALUES ('loc003','Research','3','C5','S3','C3','ambient',22.0,40.0,'natural','keycard','400',60.0,'none','yes','2023-05-20','insp03','high traffic area','2023-05-19','2023-05-20',1);

-- Researcher training records for laboratory safety
CREATE TABLE researcher_training_record (
  record_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  training_module TEXT,
  completion_status TEXT,
  score_percent REAL,
  completion_date TEXT,
  expiration_date TEXT,
  trainer_id TEXT,
  training_location TEXT,
  training_method TEXT,
  cert_number TEXT,
  cert_issued_by TEXT,
  cert_issue_date TEXT,
  cert_expiry_date TEXT,
  remarks TEXT,
  created_at TEXT,
  updated_at TEXT,
  is_current INTEGER,
  verification_status TEXT,
  verification_date TEXT,
  verified_by TEXT,
  comment TEXT
);

INSERT INTO researcher_training_record VALUES ('tr001','res001','chemical_safety','completed',95.0,'2023-03-10','2025-03-09','trainer01','LabRoom1','online','cert001','SafetyBoard','2023-03-11','2025-03-09','none','2023-03-09','2023-03-10',1,'verified','2023-03-12','admin01','good');
INSERT INTO researcher_training_record VALUES ('tr002','res002','biosafety','completed',88.5,'2023-04-22','2025-04-21','trainer02','LabRoom2','inperson','cert002','SafetyBoard','2023-04-23','2025-04-21','extra notes','2023-04-21','2023-04-22',1,'verified','2023-04-24','admin02','satisfactory');
INSERT INTO researcher_training_record VALUES ('tr003','res003','equipment_handling','completed',92.0,'2023-05-15','2025-05-14','trainer03','LabRoom3','online','cert003','SafetyBoard','2023-05-16','2025-05-14','none','2023-05-14','2023-05-15',1,'verified','2023-05-17','admin03','well done');

-- Environmental permit applications for lab projects
CREATE TABLE environmental_permit_application (
  permit_id TEXT PRIMARY KEY,
  project_id TEXT,
  applicant_id TEXT,
  permit_type TEXT,
  submission_date TEXT,
  review_deadline TEXT,
  status TEXT,
  approver_id TEXT,
  permit_number TEXT,
  valid_from TEXT,
  valid_to TEXT,
  emission_limit_ton TEXT,
  waste_limit_kg TEXT,
  water_use_limit_l TEXT,
  mitigation_measures TEXT,
  public_notice_required TEXT,
  public_notice_date TEXT,
  comments TEXT,
  created_at TEXT,
  updated_at TEXT,
  is_active INTEGER
);

INSERT INTO environmental_permit_application VALUES ('ap001','projA','app01','air_emission','2023-02-01','2023-03-01','approved','officer01','PERM001','2023-03-15','2025-03-14','10','500','2000','install scrubber','yes','2023-02-15','no comments','2023-01-31','2023-02-01',1);
INSERT INTO environmental_permit_application VALUES ('ap002','projB','app02','waste_disposal','2023-04-10','2023-05-10','pending','officer02','PERM002','2023-06-01','2024-06-01','0','2000','0','use certified contractor','no','2023-04-15','awaiting documents','2023-04-09','2023-04-10',1);
INSERT INTO environmental_permit_application VALUES ('ap003','projC','app03','water_use','2023-06-20','2023-07-20','rejected','officer03','PERM003','2023-08-01','2024-08-01','0','0','5000','recycle water','yes','2023-07-01','insufficient mitigation','2023-06-19','2023-06-20',0);

-- Nanomaterial batch tracking for synthesis runs
CREATE TABLE nanomaterial_batch_tracking (
  batch_id TEXT PRIMARY KEY,
  material_name TEXT,
  synthesis_date TEXT,
  operator_id TEXT,
  reactor_id TEXT,
  precursor_a TEXT,
  precursor_b TEXT,
  solvent TEXT,
  temperature_c REAL,
  pressure_bar REAL,
  stirring_speed_rpm INTEGER,
  residence_time_min REAL,
  particle_size_nm REAL,
  surface_area_m2g REAL,
  zeta_potential_mv REAL,
  purity_percent REAL,
  yield_percent REAL,
  batch_status TEXT,
  storage_location_id TEXT,
  quality_check_date TEXT,
  quality_pass INTEGER,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO nanomaterial_batch_tracking VALUES ('nb001','gold_nanoparticles','2023-01-15','op01','reactorA','HAuCl4','NaBH4','water',80.0,1.0,1200,30.0,15.2,120.5,25.0,98.5,85.0,'completed','loc001','2023-01-20',1,'smooth synthesis','2023-01-14','2023-01-20');
INSERT INTO nanomaterial_batch_tracking VALUES ('nb002','silica_nanoparticles','2023-03-10','op02','reactorB','TEOS','NH4OH','ethanol',70.0,0.8,900,45.0,50.0,80.3,10.0,97.0,90.0,'completed','loc002','2023-03-15',1,'no issues','2023-03-09','2023-03-15');
INSERT INTO nanomaterial_batch_tracking VALUES ('nb003','iron_oxide_nanoparticles','2023-05-05','op03','reactorC','FeCl3','NaAc','water',85.0,1.2,1500,60.0,12.5,95.0,30.0,95.5,80.0,'failed','loc003','2023-05-10',0,'aggregation observed','2023-05-04','2023-05-10');

-- Clinical trial adverse event details
CREATE TABLE clinical_trial_adverse_event_detail (
  event_id TEXT PRIMARY KEY,
  trial_id TEXT,
  participant_id TEXT,
  event_date TEXT,
  event_type TEXT,
  severity_grade TEXT,
  onset_time_hours REAL,
  resolution_time_days REAL,
  related_to_drug TEXT,
  outcome TEXT,
  action_taken TEXT,
  investigator_id TEXT,
  reporting_site TEXT,
  description TEXT,
  seriousness_criteria TEXT,
  causality_assessment TEXT,
  follow_up_required TEXT,
  follow_up_date TEXT,
  comments TEXT,
  created_at TEXT,
  updated_at TEXT,
  is_reported INTEGER
);

INSERT INTO clinical_trial_adverse_event_detail VALUES ('ae001','trialA','subj01','2023-04-12','headache','mild',2.0,3.0,'no','resolved','dose_adjustment','inv01','site01','patient reported mild headache','none','unlikely','yes','2023-04-20','monitored','2023-04-11','2023-04-12',1);
INSERT INTO clinical_trial_adverse_event_detail VALUES ('ae002','trialB','subj02','2023-05-22','nausea','moderate',1.5,5.0,'yes','ongoing','medication','inv02','site02','persistent nausea after dose','hospitalization','possible','yes','2023-05-30','additional labs ordered','2023-05-21','2023-05-22',1);
INSERT INTO clinical_trial_adverse_event_detail VALUES ('ae003','trialC','subj03','2023-06-10','rash','severe',0.5,10.0,'yes','resolved','discontinuation','inv03','site03','widespread rash with itching','life threatening','probable','no','null','resolved after drug stop','2023-06-09','2023-06-10',1);

-- Computational resource quota allocations per project
CREATE TABLE computational_resource_quota (
  quota_id TEXT PRIMARY KEY,
  project_id TEXT,
  cpu_cores INTEGER,
  gpu_units INTEGER,
  ram_gb REAL,
  storage_tb REAL,
  max_jobs INTEGER,
  allocation_start_date TEXT,
  allocation_end_date TEXT,
  priority_level TEXT,
  approved_by TEXT,
  usage_policy TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  is_active INTEGER,
  overage_allowed TEXT,
  overage_rate_usd_per_hour REAL,
  last_audit_date TEXT,
  audit_status TEXT,
  audit_comments TEXT
);

INSERT INTO computational_resource_quota VALUES ('cq001','projA',64,4,256.0,20.0,500,'2023-01-01','2023-12-31','high','admin01','fair_use','initial allocation','2023-01-01','2023-01-01',1,'yes',10.0,'2023-06-01','passed','none');
INSERT INTO computational_resource_quota VALUES ('cq002','projB',32,2,128.0,10.0,300,'2023-02-15','2024-02-14','medium','admin02','fair_use','adjusted after review','2023-02-15','2023-02-15',1,'no',0.0,'2023-07-01','passed','none');
INSERT INTO computational_resource_quota VALUES ('cq003','projC',16,1,64.0,5.0,150,'2023-03-01','2023-09-30','low','admin03','fair_use','temporary project','2023-03-01','2023-03-01',1,'yes',5.0,'2023-08-15','passed','none');

-- Facility maintenance tasks log
CREATE TABLE facility_maintenance_task (
  task_id TEXT PRIMARY KEY,
  facility_section TEXT,
  task_type TEXT,
  description TEXT,
  scheduled_date TEXT,
  completed_date TEXT,
  assigned_technician TEXT,
  priority TEXT,
  status TEXT,
  required_parts TEXT,
  estimated_duration_hours REAL,
  actual_duration_hours REAL,
  cost_usd REAL,
  safety_risk_level TEXT,
  compliance_requirement TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  is_completed INTEGER,
  follow_up_action TEXT,
  follow_up_due_date TEXT,
  auditor_id TEXT,
  audit_result TEXT
);

INSERT INTO facility_maintenance_task VALUES ('mt001','HVAC','filter_replacement','replace air filters in main hall','2023-07-01','2023-07-02','tech01','medium','completed','filterA,filterB',2.0,2.5,150.0,'low','yes','filters swapped','2023-06-30','2023-07-02',1,'inspection','2023-07-10','aud01','pass');
INSERT INTO facility_maintenance_task VALUES ('mt002','Electrical','circuit_check','inspect and tighten connections in lab wing','2023-08-05','2023-08-06','tech02','high','completed','none',3.0,3.2,300.0,'medium','yes','no issues found','2023-08-04','2023-08-06',1,'none','null','aud02','pass');
INSERT INTO facility_maintenance_task VALUES ('mt003','Plumbing','leak_repair','repair leak under sink in chemistry lab','2023-09-10','2023-09-12','tech03','high','completed','sealant,pipe_section',4.0,5.0,500.0,'high','yes','leak sealed','2023-09-09','2023-09-12',1,'monitor for recurrence','2023-09-20','aud03','pass');

-- Lab ventilation system maintenance records
CREATE TABLE lab_ventilation_maintenance_log (
  maintenance_id TEXT PRIMARY KEY,
  system_id TEXT,
  maintenance_type TEXT,
  technician_id TEXT,
  start_time TEXT,
  end_time TEXT,
  filter_change BOOLEAN,
  duct_cleaning BOOLEAN,
  motor_inspection BOOLEAN,
  airflow_cfm REAL,
  pressure_drop_pa REAL,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  is_successful INTEGER,
  next_scheduled_date TEXT,
  maintenance_cost_usd REAL,
  supervisor_id TEXT,
  compliance_checked TEXT,
  compliance_status TEXT,
  comments TEXT
);

INSERT INTO lab_ventilation_maintenance_log VALUES ('vm001','ventA','routine','tech01','2023-05-01 08:00','2023-05-01 12:00',1,0,1,1200.0,85.0,'filter replaced','2023-05-01','2023-05-01',1,'2024-05-01',200.0,'sup01','yes','pass','no issues');
INSERT INTO lab_ventilation_maintenance_log VALUES ('vm002','ventB','deep_clean','tech02','2023-06-15 09:00','2023-06-15 15:00',0,1,1,1100.0,70.0,'ducts cleaned','2023-06-15','2023-06-15',1,'2024-06-15',350.0,'sup02','yes','pass','improved airflow');
INSERT INTO lab_ventilation_maintenance_log VALUES ('vm003','ventC','emergency','tech03','2023-07-20 14:00','2023-07-20 16:30',0,0,0,900.0,120.0,'motor failure repaired','2023-07-20','2023-07-20',1,'2024-07-20',400.0,'sup03','yes','pass','motor replaced');

-- Sample preservation log for biobanking
CREATE TABLE sample_preservation_log (
  preservation_id TEXT PRIMARY KEY,
  sample_id TEXT,
  biobank_id TEXT,
  preservation_method TEXT,
  temperature_c REAL,
  storage_location TEXT,
  preservation_date TEXT,
  operator_id TEXT,
  quality_score REAL,
  aliquot_number INTEGER,
  volume_ml REAL,
  container_type TEXT,
  freeze_thaw_cycles INTEGER,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  is_active INTEGER,
  expiration_date TEXT,
  compliance_status TEXT,
  auditor_id TEXT,
  audit_comments TEXT
);

INSERT INTO sample_preservation_log VALUES ('sp001','smp001','bb001','cryopreservation',-80.0,'freezerA','2023-02-10','op01',95.0,1,0.5,'cryovial',0,'initial storage','2023-02-09',1,'2028-02-10','compliant','aud01','none');
INSERT INTO sample_preservation_log VALUES ('sp002','smp002','bb002','lyophilization',-20.0,'dryBoxB','2023-04-18','op02',88.0,2,0.3,'vial',1,'partial lyophilized','2023-04-17',1,'2026-04-18','compliant','aud02','reviewed');
INSERT INTO sample_preservation_log VALUES ('sp003','smp003','bb003','refrigeration',4.0,'fridgeC','2023-06-05','op03',90.0,1,1.0,'tube',0,'short term storage','2023-06-04',1,'2025-06-05','compliant','aud03','none');

-- Equipment failure root cause analysis records
CREATE TABLE equipment_failure_root_cause (
  analysis_id TEXT PRIMARY KEY,
  equipment_id TEXT,
  failure_id TEXT,
  root_cause_category TEXT,
  detailed_cause TEXT,
  detection_method TEXT,
  analysis_date TEXT,
  analyst_id TEXT,
  corrective_action TEXT,
  preventive_action TEXT,
  downtime_hours REAL,
  cost_usd REAL,
  risk_level TEXT,
  recurrence_likelihood TEXT,
  comments TEXT,
  created_at TEXT,
  updated_at TEXT,
  is_resolved INTEGER,
  verification_status TEXT,
  verification_date TEXT,
  verifier_id TEXT,
  verification_notes TEXT
);

INSERT INTO equipment_failure_root_cause VALUES ('rc001','instA','fm001','electrical','faulty power supply unit','visual inspection','2023-04-16','analyst01','replace PSU','schedule regular PSU testing',72.0,2500.0,'high','low','resolved after replacement','2023-04-15','2023-04-16',1,'verified','2023-04-18','ver01','all good');
INSERT INTO equipment_failure_root_cause VALUES ('rc002','instB','fm002','mechanical','bearing wear due to lack lubrication','vibration analysis','2023-05-21','analyst02','replace bearing','implement lubrication schedule',48.0,1800.0,'medium','medium','bearing replaced','2023-05-20','2023-05-22',1,'verified','2023-05-23','ver02','no further vibration');
INSERT INTO equipment_failure_root_cause VALUES ('rc003','instC','fm003','software','corrupt firmware image','log analysis','2023-06-06','analyst03','reflash firmware','establish firmware checksum verification',36.0,1200.0,'low','low','firmware updated','2023-06-05','2023-06-07',1,'verified','2023-06-08','ver03','system stable');