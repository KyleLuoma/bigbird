-- Log of waste incineration activities in the lab
CREATE TABLE lab_waste_incineration_log (
  incineration_id TEXT PRIMARY KEY,
  waste_batch_id TEXT,
  incineration_date DATE,
  temperature_c REAL,
  duration_minutes INTEGER,
  operator_id TEXT,
  emission_level_co2 REAL,
  emission_level_nox REAL,
  ash_weight_kg REAL,
  residue_type TEXT,
  equipment_id TEXT,
  location TEXT,
  regulatory_compliance_status TEXT,
  notes TEXT,
  verified_by TEXT,
  verification_date DATE,
  carbon_credit_earned REAL,
  waste_type TEXT,
  incineration_method TEXT,
  post_incineration_inspection_status TEXT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

INSERT INTO lab_waste_incineration_log VALUES
('inc001','batchA','2023-06-15',850.5,120,'op01',1.2,0.03,12.5,'ash','eq01','zoneA','compliant','routine incineration','qa01','2023-06-16',0.5,'organic','thermal','passed','2023-06-15 08:00:00','2023-06-15 12:30:00');

INSERT INTO lab_waste_incineration_log VALUES
('inc002','batchB','2023-07-01',900.0,95,'op02',1.5,0.04,10.0,'slag','eq02','zoneB','compliant','high temperature run','qa02','2023-07-02',0.7,'inorganic','plasma','passed','2023-07-01 09:15:00','2023-07-01 10:50:00');

INSERT INTO lab_waste_incineration_log VALUES
('inc003','batchC','2023-08-20',800.0,130,'op03',1.1,0.02,14.2,'ash','eq03','zoneC','noncompliant','needs filter change','qa03','2023-08-21',0.3,'mixed','thermal','failed','2023-08-20 07:45:00','2023-08-20 11:55:00');

-- Mapping of chemical synthesis routes
CREATE TABLE chemical_synthesis_route_map (
  route_id TEXT PRIMARY KEY,
  start_material_id TEXT,
  catalyst_id TEXT,
  solvent_id TEXT,
  temperature_c REAL,
  pressure_bar REAL,
  reaction_time_minutes INTEGER,
  yield_percent REAL,
  purification_method TEXT,
  final_product_id TEXT,
  route_description TEXT,
  steps_count INTEGER,
  hazards_assessed TEXT,
  safety_level TEXT,
  created_by TEXT,
  created_at TIMESTAMP,
  updated_by TEXT,
  updated_at TIMESTAMP,
  notes TEXT,
  validation_status TEXT
);

INSERT INTO chemical_synthesis_route_map VALUES
('rt001','matA','catX','sol1',120.0,1.5,180,78.5,'chromatography','prod001','two-step oxidation','2','yes','high','user01','2023-05-10 10:00:00','user02','2023-05-12 14:30:00','optimized route','validated');

INSERT INTO chemical_synthesis_route_map VALUES
('rt002','matB','catY','sol2',85.0,0.8,240,65.0,'recrystallization','prod002','three-step condensation','3','no','medium','user03','2023-06-20 09:15:00','user04','2023-06-22 11:45:00','needs scale-up','pending');

INSERT INTO chemical_synthesis_route_map VALUES
('rt003','matC','catZ','sol3',150.0,2.0,90,92.0,'distillation','prod003','single step polymerization','1','yes','high','user05','2023-07-05 13:20:00','user05','2023-07-05 13:20:00','high yield pilot','validated');

-- Records of researcher public engagement activities
CREATE TABLE researcher_public_engagement (
  engagement_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  event_name TEXT,
  event_type TEXT,
  audience_type TEXT,
  event_date DATE,
  location TEXT,
  organization TEXT,
  duration_minutes INTEGER,
  topics_covered TEXT,
  media_coverage TEXT,
  attendance_count INTEGER,
  feedback_score REAL,
  follow_up_actions TEXT,
  sponsor TEXT,
  funding_amount REAL,
  notes TEXT,
  public_contact_info TEXT,
  engagement_status TEXT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

INSERT INTO researcher_public_engagement VALUES
('eng001','r001','Science Fair 2023','exhibition','students','2023-04-12','Community Center','Local School','180','nanotech basics','local newspaper','250',4.5,'send pamphlet','City Council',5000,'great turnout','info@school.edu','completed','2023-04-13 08:00:00','2023-04-13 08:00:00');

INSERT INTO researcher_public_engagement VALUES
('eng002','r002','Health Podcast','media','general public','2023-05-20','Online','HealthOrg','60','vaccines research','online streaming','1200',4.8,'provide follow‑up link','HealthOrg',2000,'positive feedback','contact@healthorg.com','completed','2023-05-21 09:30:00','2023-05-21 09:30:00');

INSERT INTO researcher_public_engagement VALUES
('eng003','r003','University Lecture Series','lecture','undergrads','2023-06-05','Campus Hall','University','90','materials science','campus radio','80',4.2,'share slides','University',0,'well received','dept@university.edu','completed','2023-06-06 10:15:00','2023-06-06 10:15:00');

-- Facility fire safety audit records
CREATE TABLE facility_fire_safety_audit (
  audit_id TEXT PRIMARY KEY,
  facility_id TEXT,
  audit_date DATE,
  auditor_name TEXT,
  fire_extinguisher_count INTEGER,
  sprinkler_status TEXT,
  alarm_system_status TEXT,
  evacuation_plan_version TEXT,
  drills_conducted INTEGER,
  non_compliance_issues TEXT,
  corrective_actions TEXT,
  next_audit_due DATE,
  overall_rating TEXT,
  remarks TEXT,
  fire_hydrant_status TEXT,
  emergency_exit_lighting TEXT,
  fire_door_inspection TEXT,
  fire_risk_assessment_score REAL,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

INSERT INTO facility_fire_safety_audit VALUES
('fa001','facA','2023-03-10','AuditorOne',45,'operational','operational','v2','3','none','none','2024-03-10','excellent','all good','operational','functional','passed',95.0,'2023-03-10 07:00:00','2023-03-10 15:30:00');

INSERT INTO facility_fire_safety_audit VALUES
('fa002','facB','2023-07-22','AuditorTwo',30,'maintenance required','operational','v1','1','extinguisher expired','replace ext','2024-07-22','good','needs follow-up','partial','functional','needs replacement',78.5,'2023-07-22 08:15:00','2023-07-22 12:45:00');

INSERT INTO facility_fire_safety_audit VALUES
('fa003','facC','2023-11-05','AuditorThree',60,'operational','faulty','v3','5','alarm false alarm','system reset','2024-11-05','fair','system upgrade required','operational','non‑functional','failed',62.0,'2023-11-05 09:30:00','2023-11-05 14:20:00');

-- Lab ventilation filter change tracking
CREATE TABLE lab_ventilation_filter_change (
  change_id TEXT PRIMARY KEY,
  ventilation_unit_id TEXT,
  filter_type TEXT,
  filter_serial_number TEXT,
  change_date DATE,
  technician_id TEXT,
  pre_change_pressure_pa REAL,
  post_change_pressure_pa REAL,
  pressure_drop_pa REAL,
  filter_lifespan_months INTEGER,
  next_due_date DATE,
  notes TEXT,
  verified_by TEXT,
  verification_date DATE,
  filter_manufacturer TEXT,
  filter_efficiency_percent REAL,
  humidity_level_percent REAL,
  temperature_c REAL,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

INSERT INTO lab_ventilation_filter_change VALUES
('fc001','vent01','HEPA','SN1001','2023-02-15','techA',250.0,500.0,250.0,12,'2024-02-15','routine replace','qaA','2023-02-16','FilterCo',99.5,45.0,22.5,'2023-02-15 08:00:00','2023-02-15 10:30:00');

INSERT INTO lab_ventilation_filter_change VALUES
('fc002','vent02','ULPA','SN2002','2023-06-20','techB',180.0,460.0,280.0,10,'2024-06-20','high particulate load','qaB','2023-06-21','UltraFilter',99.9,50.0,21.0,'2023-06-20 09:15:00','2023-06-20 11:45:00');

INSERT INTO lab_ventilation_filter_change VALUES
('fc003','vent03','Carbon','SN3003','2023-09-05','techC',220.0,480.0,260.0,8,'2024-05-05','odor control filter','qaC','2023-09-06','CarbonTech',98.0,48.0,23.0,'2023-09-05 07:30:00','2023-09-05 09:00:00');

-- Validation records for computational models
CREATE TABLE computational_model_validation (
  validation_id TEXT PRIMARY KEY,
  model_name TEXT,
  version TEXT,
  dataset_used TEXT,
  validation_date DATE,
  validator_id TEXT,
  accuracy_percent REAL,
  precision_percent REAL,
  recall_percent REAL,
  f1_score REAL,
  runtime_seconds REAL,
  hardware_used TEXT,
  software_version TEXT,
  parameters_count INTEGER,
  notes TEXT,
  status TEXT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  validation_script_checksum TEXT,
  data_split_strategy TEXT,
  cross_validation_folds INTEGER
);

INSERT INTO computational_model_validation VALUES
('val001','PredictorX','1.0','DatasetAlpha','2023-04-01','valA',92.3,90.1,88.5,89.3,3600.0,'GPU-RTX8000','v3.2',1500000,'initial validation','passed','2023-04-01 08:00:00','2023-04-01 09:00:00','abc123def','80/20 split',5);

INSERT INTO computational_model_validation VALUES
('val002','ClassifierY','2.1','DatasetBeta','2023-07-15','valB',85.7,82.4,80.2,81.3,5400.0,'CPU-IntelXeon','v4.0',2000000,'second round','pending','2023-07-15 10:30:00','2023-07-15 11:45:00','def456ghi','k‑fold 10',10);

INSERT INTO computational_model_validation VALUES
('val003','RegressorZ','0.9','DatasetGamma','2023-10-20','valC',78.0,75.5,73.0,74.2,2700.0,'GPU-RTX6000','v2.5',1200000,'final testing','failed','2023-10-20 14:00:00','2023-10-20 15:20:00','ghi789jkl','random split',3);

-- Quality assurance for biological samples
CREATE TABLE bio_sample_quality_assurance (
  qa_id TEXT PRIMARY KEY,
  sample_id TEXT,
  collection_date DATE,
  collector_id TEXT,
  storage_location TEXT,
  storage_temperature_c REAL,
  freeze_thaw_cycles INTEGER,
  dna_concentration_ng_ul REAL,
  rna_integrity_number REAL,
  contamination_flag TEXT,
  qc_passed TEXT,
  qc_date DATE,
  qc_technician_id TEXT,
  notes TEXT,
  reanalysis_required TEXT,
  reanalysis_date DATE,
  reanalysis_technician TEXT,
  sample_type TEXT,
  volume_ul REAL,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

INSERT INTO bio_sample_quality_assurance VALUES
('qa001','smp001','2023-01-10','col01','FreezerA','-80',1,45.2,8.5,'no','yes','2023-01-12','tech01','initial pass','no',NULL,NULL,'blood',200,'2023-01-10 08:00:00','2023-01-12 09:30:00');

INSERT INTO bio_sample_quality_assurance VALUES
('qa002','smp002','2023-03-22','col02','FreezerB','-80',3,30.1,6.2','yes','no','2023-03-24','tech02','low RNA integrity','yes','2023-04-02','tech03','tissue',150,'2023-03-22 09:15:00','2023-03-24 10:45:00');

INSERT INTO bio_sample_quality_assurance VALUES
('qa003','smp003','2023-06-05','col03','FreezerC','-70',0,60.0,9.0,'no','yes','2023-06-06','tech04','high quality','no',NULL,NULL,'saliva',250,'2023-06-05 07:30:00','2023-06-06 08:20:00');

-- Environmental air quality trend analysis
CREATE TABLE environmental_air_quality_trend (
  trend_id TEXT PRIMARY KEY,
  location_id TEXT,
  parameter TEXT,
  start_date DATE,
  end_date DATE,
  average_value REAL,
  max_value REAL,
  min_value REAL,
  standard_deviation REAL,
  regulatory_limit REAL,
  exceedance_count INTEGER,
  measurement_method TEXT,
  sensor_id TEXT,
  data_source TEXT,
  analyst_id TEXT,
  analysis_date DATE,
  notes TEXT,
  trend_direction TEXT,
  confidence_interval REAL,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

INSERT INTO environmental_air_quality_trend VALUES
('tr001','loc01','PM2_5','2023-01-01','2023-06-30',12.5,35.0,5.0,8.2,25.0,2,'optical','senA','internal','anal01','2023-07-01','steady increase','upward',0.95,'2023-07-01 08:00:00','2023-07-01 09:00:00');

INSERT INTO environmental_air_quality_trend VALUES
('tr002','loc02','NO2','2023-02-01','2023-07-31',25.0,55.0,10.0,12.5,40.0,4,'electrochemical','senB','external','anal02','2023-08-01','seasonal variation','downward',0.90,'2023-08-01 07:45:00','2023-08-01 08:30:00');

INSERT INTO environmental_air_quality_trend VALUES
('tr003','loc03','O3','2023-03-01','2023-08-31',30.0,70.0,15.0,14.0,70.0,1,'uv','senC','internal','anal03','2023-09-01','stable','stable',0.98,'2023-09-01 09:15:00','2023-09-01 10:00:00');

-- Threshold limits for nanomaterial exposure
CREATE TABLE nanomaterial_exposure_thresholds (
  threshold_id TEXT PRIMARY KEY,
  nanomaterial_id TEXT,
  exposure_type TEXT,
  limit_value REAL,
  unit TEXT,
  measurement_method TEXT,
  regulatory_body TEXT,
  effective_date DATE,
  expiration_date DATE,
  notes TEXT,
  created_by TEXT,
  created_at TIMESTAMP,
  updated_by TEXT,
  updated_at TIMESTAMP,
  safety_category TEXT,
  risk_assessment_id TEXT,
  compliance_status TEXT,
  audit_date DATE,
  auditor_id TEXT,
  revision_number INTEGER,
  comments TEXT
);

INSERT INTO nanomaterial_exposure_thresholds VALUES
('th001','nanoA','inhalation',0.01,'mg/m3','gravimetric','EPA','2023-01-01','2025-12-31','initial limit','admin','2023-01-01 08:00:00','admin','2023-01-01 08:00:00','high','ra001','compliant','2023-02-15','aud01',1,'no comments');

INSERT INTO nanomaterial_exposure_thresholds VALUES
('th002','nanoB','dermal',0.005,'mg/cm2','patch','FDA','2023-03-01','2026-02-28','updated after study','admin','2023-03-01 09:30:00','admin','2023-03-01 09:30:00','medium','ra002','pending','2023-04-10','aud02',2,'review pending');

INSERT INTO nanomaterial_exposure_thresholds VALUES
('th003','nanoC','oral',0.002,'mg/kg','spectroscopy','EU','2023-05-15','2027-05-14','provisional','admin','2023-05-15 10:45:00','admin','2023-05-15 10:45:00','low','ra003','non‑compliant','2023-06-20','aud03',3,'requires amendment');

-- Robotic arm task execution log
CREATE TABLE lab_robotic_arm_task_log (
  task_log_id TEXT PRIMARY KEY,
  robotic_arm_id TEXT,
  task_name TEXT,
  task_type TEXT,
  start_timestamp TIMESTAMP,
  end_timestamp TIMESTAMP,
  duration_seconds REAL,
  operator_id TEXT,
  status TEXT,
  error_code TEXT,
  error_description TEXT,
  materials_handled TEXT,
  tool_used TEXT,
  software_version TEXT,
  firmware_version TEXT,
  battery_level_percent REAL,
  temperature_c REAL,
  location TEXT,
  notes TEXT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

INSERT INTO lab_robotic_arm_task_log VALUES
('tl001','arm01','SampleTransfer','transfer','2023-04-10 08:00:00','2023-04-10 08:05:30',330.0,'op01','completed',NULL,NULL,'tubeA','gripper','v2.1','f1.0',95.0,22.5,'bench1','no issues','2023-04-10 08:00:00','2023-04-10 08:06:00');

INSERT INTO lab_robotic_arm_task_log VALUES
('tl002','arm02','PlateSeeding','seeding','2023-05-15 09:20:00','2023-05-15 09:35:45',945.0,'op02','error','E101','gripper jam','plate96','dispensor','v2.2','f1.1',80.0,21.0,'bench2','gripper jammed','2023-05-15 09:20:00','2023-05-15 09:36:00');

INSERT INTO lab_robotic_arm_task_log VALUES
('tl003','arm03','ReagentDispense','dispense','2023-06-01 14:00:00','2023-06-01 14:02:15',135.0,'op03','completed',NULL,NULL,'reagentB','pipette','v2.3','f1.2',88.0,23.0,'bench3','smooth operation','2023-06-01 14:00:00','2023-06-01 14:02:20');