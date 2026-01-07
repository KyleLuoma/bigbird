-- External audit logistics information
CREATE TABLE external_audit_logistics (
  audit_log_id TEXT NOT NULL,
  auditor_name TEXT,
  audit_type TEXT,
  scheduled_date TEXT,
  start_time TEXT,
  end_time TEXT,
  location_code TEXT,
  travel_expense REAL,
  accommodation_expense REAL,
  equipment_used TEXT,
  notes TEXT,
  risk_level TEXT,
  compliance_scope TEXT,
  document_reference TEXT,
  phone_contact TEXT,
  email_contact TEXT,
  audit_status TEXT,
  follow_up_required TEXT,
  follow_up_deadline TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (audit_log_id)
);

INSERT INTO external_audit_logistics VALUES ('AUD001','JohnDoe','Safety','2024-03-15','08:00','12:00','LOC01',150.00,200.00,'Tablet','None','High','ISO9001','DOC1001','5551234','john@example.com','Completed','No','', '2024-01-01','2024-01-02');
INSERT INTO external_audit_logistics VALUES ('AUD002','JaneSmith','Environmental','2024-04-20','09:30','14:30','LOC02',180.00,250.00,'Laptop','Urgent','Medium','ISO14001','DOC1002','5555678','jane@example.com','Pending','Yes','2024-05-30','2024-02-10','2024-02-11');
INSERT INTO external_audit_logistics VALUES ('AUD003','MikeBrown','Quality','2024-05-10','07:45','11:45','LOC03',120.00,180.00,'Smartphone','Followup needed','Low','ISO45001','DOC1003','5559012','mike@example.com','InProgress','Yes','2024-06-15','2024-03-05','2024-03-06');

-- Genomic sequence repository metadata
CREATE TABLE genomic_sequence_repository (
  seq_id TEXT NOT NULL,
  organism TEXT,
  sample_id TEXT,
  collection_date TEXT,
  tissue_type TEXT,
  extraction_method TEXT,
  library_prep_kit TEXT,
  sequencing_platform TEXT,
  read_length INT,
  coverage REAL,
  assembly_version TEXT,
  annotation_release TEXT,
  gc_content REAL,
  n_content REAL,
  submitter_name TEXT,
  submitter_contact TEXT,
  data_integrity_status TEXT,
  embargo_date TEXT,
  public_release_date TEXT,
  storage_location TEXT,
  checksum_md5 TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (seq_id)
);

INSERT INTO genomic_sequence_repository VALUES ('SEQ001','ArabidopsisThaliana','SMP001','2023-11-02','Leaf','CTAB','KitA','IlluminaNovaSeq',150,30.5,'v1.0','Release2023',0.38,0.02,'DrAlice','5551111','Validated','2024-01-01','2025-01-01','FreezerA','d41d8cd98f00b204e9800998ecf8427e','2023-12-01','2023-12-02');
INSERT INTO genomic_sequence_repository VALUES ('SEQ002','EscherichiaColi','SMP002','2023-12-15','Culture','PhenolChloroform','KitB','OxfordNanopore',10000,50.0,'v2.1','Release2024',0.50,0.00,'DrBob','5552222','Validated','2024-02-01','2025-02-01','FreezerB','0cc175b9c0f1b6a831c399e269772661','2023-12-20','2023-12-21');
INSERT INTO genomic_sequence_repository VALUES ('SEQ003','HomoSapiens','SMP003','2024-01-10','Blood','SpinColumn','KitC','PacBioSequel',20000,80.0,'v3.3','Release2025',0.41,0.01,'DrCarol','5553333','Pending','2024-03-01','2026-03-01','FreezerC','900150983cd24fb0d6963f7d28e17f72','2024-01-15','2024-01-16');

-- Nanoparticle characterization suite
CREATE TABLE nanoparticle_characterization_suite (
  char_id TEXT NOT NULL,
  batch_id TEXT,
  synthesis_method TEXT,
  core_material TEXT,
  shell_material TEXT,
  size_nm REAL,
  zeta_potential_mv REAL,
  surface_area_m2g REAL,
  pore_volume_cm3g REAL,
  crystallinity_percent REAL,
  magnetic_susceptibility REAL,
  optical_bandgap_ev REAL,
  stability_test_duration_days INT,
  storage_temperature_c REAL,
  dispersion_solvent TEXT,
  functional_group TEXT,
  analysis_instrument TEXT,
  operator_name TEXT,
  analysis_date TEXT,
  data_file_path TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (char_id)
);

INSERT INTO nanoparticle_characterization_suite VALUES ('CHAR001','BATCH01','SolGel','Silica','Gold',50.2,25.5,150.0,0.45,92.0,1.2,2.1,365,4.0,'Ethanol','Amines','DLS','Emily','2024-02-01','/data/char001.csv','Initial run','2024-02-02','2024-02-03');
INSERT INTO nanoparticle_characterization_suite VALUES ('CHAR002','BATCH02','Hydrothermal','TiO2','Polydopamine',75.0,-15.3,200.5,0.60,88.5,0.8,3.0,180,25.0,'Water','Carboxyl','BET','Liam','2024-03-10','/data/char002.csv','Repeat test','2024-03-11','2024-03-12');
INSERT INTO nanoparticle_characterization_suite VALUES ('CHAR003','BATCH03','Microwave','IronOxide','Silica',120.5,30.0,110.0,0.30,95.0,2.5,1.8,90, -20.0,'Isopropanol','Hydroxyl','TEM','Olivia','2024-04-05','/data/char003.csv','High temp storage','2024-04-06','2024-04-07');

-- Lab environmental control parameters
CREATE TABLE lab_environmental_control (
  ctrl_id TEXT NOT NULL,
  zone_name TEXT,
  parameter_name TEXT,
  set_point REAL,
  tolerance_plus REAL,
  tolerance_minus REAL,
  measurement_unit TEXT,
  sensor_id TEXT,
  last_calibrated TEXT,
  calibration_interval_days INT,
  current_value REAL,
  status TEXT,
  alarm_threshold REAL,
  alarm_status TEXT,
  logged_by TEXT,
  log_timestamp TEXT,
  maintenance_required TEXT,
  maintenance_due TEXT,
  comments TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (ctrl_id)
);

INSERT INTO lab_environmental_control VALUES ('CTRL001','ZoneA','Temperature',22.0,2.0,-2.0,'C','SEN001','2023-12-01',180,21.8,'Normal',28.0,'OK','Ana','2024-02-15','No','2024-08-15','Stable','2024-02-15','2024-02-16');
INSERT INTO lab_environmental_control VALUES ('CTRL002','ZoneB','RelativeHumidity',45.0,5.0,-5.0,'%','SEN002','2023-11-15',180,46.2,'Normal',60.0,'OK','Ben','2024-02-15','No','2024-08-15','Within range','2024-02-15','2024-02-16');
INSERT INTO lab_environmental_control VALUES ('CTRL003','ZoneC','AirPressure',101.3,1.0,-1.0,'kPa','SEN003','2024-01-10',365,101.0,'Normal',105.0,'OK','Clara','2024-02-15','Yes','2025-01-10','Monitor pressure drift','2024-02-15','2024-02-16');

-- Supplier performance dashboard
CREATE TABLE supplier_performance_dashboard (
  supplier_perf_id TEXT NOT NULL,
  supplier_id TEXT,
  contract_number TEXT,
  evaluation_period TEXT,
  on_time_delivery_percent REAL,
  quality_score REAL,
  responsiveness_score REAL,
  compliance_score REAL,
  total_score REAL,
  incidents_reported INT,
  incident_severity_avg REAL,
  corrective_actions_taken INT,
  average_lead_time_days REAL,
  cost_variance_percent REAL,
  sustainability_rating REAL,
  risk_level TEXT,
  last_evaluation_date TEXT,
  evaluator_name TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (supplier_perf_id)
);

INSERT INTO supplier_performance_dashboard VALUES ('SP001','SUP001','CN1001','2023Q4',96.5,88.0,90.0,85.0,89.9,2,3.5,2,12.4,1.8,4.5,'Low','2024-01-20','David','Good overall performance','2024-01-21','2024-01-22');
INSERT INTO supplier_performance_dashboard VALUES ('SP002','SUP002','CN1002','2023Q4',89.0,75.0,80.0,70.0,78.5,5,4.2,4,18.7,5.5,3.0,'Medium','2024-01-20','Laura','Needs improvement in quality','2024-01-21','2024-01-22');
INSERT INTO supplier_performance_dashboard VALUES ('SP003','SUP003','CN1003','2023Q4',98.0,92.0,95.0,90.0,91.3,0,0.0,0,9.5,0.5,5.0,'Low','2024-01-20','Michael','Excellent supplier','2024-01-21','2024-01-22');

-- Clinical trial data quality log
CREATE TABLE clinical_trial_data_quality (
  dq_log_id TEXT NOT NULL,
  trial_id TEXT,
  site_id TEXT,
  dataset_name TEXT,
  record_count INT,
  missing_values INT,
  duplicate_records INT,
  outlier_percentage REAL,
  validation_status TEXT,
  reviewer_name TEXT,
  review_date TEXT,
  comments TEXT,
  corrective_action TEXT,
  action_due_date TEXT,
  data_manager TEXT,
  version_number TEXT,
  audit_trail TEXT,
  issue_severity TEXT,
  flagged BOOLEAN,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (dq_log_id)
);

INSERT INTO clinical_trial_data_quality VALUES ('DQ001','TR001','SITE01','BaselineData',1500,10,2,0.5,'Passed','Sofia','2024-02-10','All good','None','', 'Mark','v1.0','Init','Low',0,'2024-02-11','2024-02-12');
INSERT INTO clinical_trial_data_quality VALUES ('DQ002','TR001','SITE02','FollowUpData',1400,25,5,1.2,'Failed','Ravi','2024-02-11','Missing values exceed threshold','Data cleaning required','2024-02-20','Laura','v1.0','Update','High',1,'2024-02-12','2024-02-13');
INSERT INTO clinical_trial_data_quality VALUES ('DQ003','TR002','SITE03','AdverseEvents',300,0,0,0.0,'Passed','Ana','2024-02-12','Clean dataset','None','', 'Tom','v2.1','Review','Low',0,'2024-02-13','2024-02-14');

-- Computational workflow audit trail
CREATE TABLE computational_workflow_audit_trail (
  audit_id TEXT NOT NULL,
  workflow_id TEXT,
  step_name TEXT,
  execution_timestamp TEXT,
  executed_by TEXT,
  node_id TEXT,
  cpu_time_seconds REAL,
  memory_usage_mb REAL,
  input_checksum TEXT,
  output_checksum TEXT,
  status TEXT,
  exit_code INT,
  error_message TEXT,
  retry_count INT,
  priority_level TEXT,
  queue_name TEXT,
  allocated_cores INT,
  allocated_gb REAL,
  runtime_environment TEXT,
  version_tag TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (audit_id)
);

INSERT INTO computational_workflow_audit_trail VALUES ('AUDIT001','WF001','Preprocess','2024-02-15T08:00:00','alice','node01',120.5,2048,'abc123','def456','Success',0,'',0,'High','default',8,32,'Docker','v1.0','Initial preprocessing','2024-02-15','2024-02-15');
INSERT INTO computational_workflow_audit_trail VALUES ('AUDIT002','WF001','Alignment','2024-02-15T09:00:00','bob','node02',3600.0,8192,'def456','ghi789','Success',0,'',1,'Medium','default',16,64,'Singularity','v1.0','Alignment step','2024-02-15','2024-02-15');
INSERT INTO computational_workflow_audit_trail VALUES ('AUDIT003','WF001','VariantCalling','2024-02-15T10:30:00','carol','node03',5400.5,16384,'ghi789','jkl012','Failed',1,'Segmentation fault',0,'Low','default',32,128,'Docker','v1.0','Variant calling error','2024-02-15','2024-02-15');

-- Chemical stability study records
CREATE TABLE chemical_stability_study (
  study_id TEXT NOT NULL,
  compound_id TEXT,
  formulation TEXT,
  storage_temperature_c REAL,
  storage_humidity_percent REAL,
  container_type TEXT,
  aging_period_days INT,
  degradation_percent REAL,
  impurity_profile TEXT,
  analytical_method TEXT,
  analyst_name TEXT,
  analysis_date TEXT,
  qc_status TEXT,
  notes TEXT,
  stability_class TEXT,
  regulatory_category TEXT,
  batch_number TEXT,
  lot_number TEXT,
  expiration_date TEXT,
  disposal_instructions TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (study_id)
);

INSERT INTO chemical_stability_study VALUES ('STU001','CMP001','SolutionA',25.0,45.0,'GlassBottle',180,2.5,'ImpA:0.5% ImpB:0.2%','HPLC','Nina','2024-01-20','Pass','Stable within limits','ClassI','Pharma','BATCH100','LOT200','2025-01-20','Return to supplier','2024-01-21','2024-01-22');
INSERT INTO chemical_stability_study VALUES ('STU002','CMP002','PowderB',5.0,30.0,'AluminumCan',365,5.0,'ImpC:1.0%','GCMS','Omar','2024-02-05','Fail','Degradation exceeds threshold','ClassII','Agri','BATCH101','LOT201','2026-02-05','Dispose as hazardous','2024-02-06','2024-02-07');
INSERT INTO chemical_stability_study VALUES ('STU003','CMP003','EmulsionC',40.0,60.0,'PlasticVial',90,0.8,'ImpD:0.1%','FTIR','Priya','2024-02-12','Pass','No significant change','ClassI','Cosmetic','BATCH102','LOT202','2024-08-12','Standard waste','2024-02-13','2024-02-14');

-- Regulatory filing tracker
CREATE TABLE regulatory_filing_tracker (
  filing_id TEXT NOT NULL,
  submission_type TEXT,
  dossier_id TEXT,
  applicant_name TEXT,
  jurisdiction TEXT,
  filing_date TEXT,
  status TEXT,
  agency_reference TEXT,
  reviewer_assigned TEXT,
  review_deadline TEXT,
  outcome TEXT,
  approval_date TEXT,
  withdrawal_date TEXT,
  notes TEXT,
  amendment_number INT,
  fee_paid REAL,
  fee_currency TEXT,
  electronic_submission BOOLEAN,
  compliance_checklist TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (filing_id)
);

INSERT INTO regulatory_filing_tracker VALUES ('FIL001','NewDrug','DOSS001','PharmaCo','USA','2024-01-15','Submitted','EPA123','John','2024-04-15','','','','','0',50000.00,'USD',1,'ChecklistV1','2024-01-16','2024-01-17');
INSERT INTO regulatory_filing_tracker VALUES ('FIL002','Renewal','DOSS002','BioTech','EU','2023-12-01','UnderReview','EMA456','Maria','2024-03-01','','','','','1',30000.00,'EUR',1,'ChecklistV2','2023-12-02','2023-12-03');
INSERT INTO regulatory_filing_tracker VALUES ('FIL003','Amendment','DOSS003','ChemInc','JP','2024-02-10','Approved','PMDA789','Ken','2024-05-10','Approved','2024-05-20','','','0',20000.00,'JPY',1,'ChecklistV3','2024-02-11','2024-02-12');

-- Equipment lifecycle cost analysis
CREATE TABLE equipment_lifecycle_cost_analysis (
  cost_id TEXT NOT NULL,
  equipment_id TEXT,
  purchase_price REAL,
  purchase_date TEXT,
  depreciation_method TEXT,
  depreciation_rate_percent REAL,
  accumulated_depreciation REAL,
  net_book_value REAL,
  maintenance_cost_yearly REAL,
  repair_cost_yearly REAL,
  energy_consumption_kwh_yearly REAL,
  disposal_cost REAL,
  resale_value_estimated REAL,
  total_cost_of_ownership REAL,
  cost_center TEXT,
  responsible_department TEXT,
  warranty_expiry_date TEXT,
  last_maintenance_date TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (cost_id)
);

INSERT INTO equipment_lifecycle_cost_analysis VALUES ('COST001','EQ001',250000.00,'2019-06-01','StraightLine',5.0,50000.00,200000.00,15000.00,5000.00,12000.00,8000.00,30000.00,317000.00,'CC01','Chemistry','2024-06-01','2024-01-15','Annual review','2024-01-16','2024-01-17');
INSERT INTO equipment_lifecycle_cost_analysis VALUES ('COST002','EQ002',120000.00,'2020-01-15','DecliningBalance',10.0,36000.00,84000.00,8000.00,2000.00,8000.00,4000.00,15000.00,163000.00,'CC02','Physics','2025-01-15','2024-02-10','Routine check','2024-02-11','2024-02-12');
INSERT INTO equipment_lifecycle_cost_analysis VALUES ('COST003','EQ003',50000.00,'2021-09-30','StraightLine',8.0,8000.00,42000.00,4000.00,1500.00,5000.0,2000.00,10000.00,108500.00,'CC03','Biology','2024-09-30','2024-03-05','Minor repairs','2024-03-06','2024-03-07');

-- Facility energy consumption monitoring
CREATE TABLE facility_energy_consumption_monitoring (
  record_id TEXT NOT NULL,
  building_id TEXT,
  floor_number INT,
  meter_id TEXT,
  measurement_date TEXT,
  energy_kwh REAL,
  peak_demand_kw REAL,
  voltage_v REAL,
  current_a REAL,
  power_factor REAL,
  temperature_c REAL,
  humidity_percent REAL,
  occupancy_status TEXT,
  tariff_category TEXT,
  cost_usd REAL,
  carbon_emission_kg REAL,
  notes TEXT,
  recorded_by TEXT,
  verified_by TEXT,
  verification_date TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (record_id)
);

INSERT INTO facility_energy_consumption_monitoring VALUES ('ENR001','BLD01',1,'MTR001','2024-02-01',3500.0,45.2,230.0,150.0,0.95,22.5,45.0,'Occupied','TierA',420.00,2040.0,'Normal operation','Sam','Lily','2024-02-02','2024-02-02','2024-02-03');
INSERT INTO facility_energy_consumption_monitoring VALUES ('ENR002','BLD02',2,'MTR002','2024-02-01',2750.5,38.0,228.0,135.0,0.93,21.0,40.0,'Unoccupied','TierB',330.00,1605.0,'Reduced load','Mike','Nina','2024-02-02','2024-02-02','2024-02-03');
INSERT INTO facility_energy_consumption_monitoring VALUES ('ENR003','BLD03',3,'MTR003','2024-02-01',4200.8,52.5,235.0,165.0,0.97,23.5,50.0,'Occupied','TierA',504.10,2450.0,'Peak hours','Olivia','Ravi','2024-02-02','2024-02-02','2024-02-03');

-- Environmental incident report log
CREATE TABLE environmental_incident_report_log (
  incident_id TEXT NOT NULL,
  incident_type TEXT,
  location TEXT,
  reported_by TEXT,
  report_date TEXT,
  detection_method TEXT,
  severity_level TEXT,
  immediate_action TEXT,
  containment_status TEXT,
  environmental_impact TEXT,
  regulatory_notification BOOLEAN,
  notification_date TEXT,
  corrective_action_plan TEXT,
  follow_up_date TEXT,
  closure_date TEXT,
  incident_description TEXT,
  photos_path TEXT,
  witnesses TEXT,
  root_cause_analysis TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (incident_id)
);

INSERT INTO environmental_incident_report_log VALUES ('ENV001','Spill','LabA','Alice','2024-01-12','Visual','Medium','Evacuate area','Contained','Minor soil contamination',1,'2024-01-13','Soil remediation plan','2024-02-01','2024-02-28','Chemical solvent spill','/photos/env001.jpg','Bob,Carol','Improper container sealing','Handled promptly','2024-01-13','2024-01-14');
INSERT INTO environmental_incident_report_log VALUES ('ENV002','Emission','Ventilation','David','2024-02-05','Sensor','High','Shut down vent','Uncontained','Air quality exceedance',1,'2024-02-06','HVAC upgrade','2024-03-15','2024-04-20','Unexpected NOx emission','/photos/env002.jpg','Eve','Filter failure','Scheduled maintenance','Investigated','2024-02-06','2024-02-07');
INSERT INTO environmental_incident_report_log VALUES ('ENV003','Leak','StorageRoom','Fiona','2024-02-20','Leak detection system','Low','Isolate pipe','Contained','No immediate impact',0,'','Pipe replacement','2024-03-10','2024-03-12','Water pipe leak detected by system','/photos/env003.jpg','George','Corrosion','Routine check','No environmental damage','2024-02-21','2024-02-22');