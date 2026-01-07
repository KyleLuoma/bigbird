-- Lab ventilation filter inventory
CREATE TABLE lab_ventilation_filter_inventory (
  filter_id TEXT NOT NULL,
  installation_date DATE,
  last_replacement_date DATE,
  filter_type TEXT,
  efficiency_percent REAL,
  manufacturer TEXT,
  model_number TEXT,
  serial_number TEXT,
  location_zone TEXT,
  inspection_status TEXT,
  inspection_date DATE,
  pressure_drop REAL,
  airflow_rate REAL,
  compatible_duct_size TEXT,
  maintenance_contact TEXT,
  warranty_expiration DATE,
  notes TEXT,
  created_by TEXT,
  created_at DATETIME,
  updated_by TEXT,
  updated_at DATETIME,
  PRIMARY KEY (filter_id)
);

INSERT INTO lab_ventilation_filter_inventory VALUES ('FILT001','2022-01-15','2023-01-10','HEPA','99.97','AirFlowCo','AF-200','SN12345','ZoneA','Passed','2023-01-09','0.35','1200','12x12','John Doe','2025-12-31','Initial install','admin','2022-01-15 08:00:00','admin','2023-01-09 09:30:00');
INSERT INTO lab_ventilation_filter_inventory VALUES ('FILT002','2022-03-22','2023-03-18','ULPA','99.999','CleanAirInc','CA-500','SN67890','ZoneB','Passed','2023-03-17','0.20','1500','16x16','Jane Smith','2026-03-22','Routine check','admin','2022-03-22 09:15:00','admin','2023-03-17 10:45:00');
INSERT INTO lab_ventilation_filter_inventory VALUES ('FILT003','2022-06-05','2023-06-01','HEPA','99.97','VentTech','VT-300','SN54321','ZoneC','Failed','2023-05-30','0.55','1100','10x10','Mike Lee','2025-06-05','Filter clogs detected','admin','2022-06-05 07:45:00','admin','2023-05-30 14:20:00');

-- Chemical hazard training record
CREATE TABLE chemical_hazard_training_record (
  training_id TEXT NOT NULL,
  employee_id TEXT,
  employee_name TEXT,
  training_date DATE,
  trainer_name TEXT,
  training_topic TEXT,
  duration_minutes INTEGER,
  certification_status TEXT,
  certificate_number TEXT,
  expiration_date DATE,
  training_location TEXT,
  material_handled TEXT,
  safety_equipment_used TEXT,
  assessment_score REAL,
  remarks TEXT,
  created_by TEXT,
  created_at DATETIME,
  updated_by TEXT,
  updated_at DATETIME,
  PRIMARY KEY (training_id)
);

INSERT INTO chemical_hazard_training_record VALUES ('TR001','EMP1001','Alice Brown','2023-02-10','Dr Green','Solvent Safety','90','Certified','CERT1001','2025-02-10','Room 101','Acetone, Methanol','Gloves, Goggles',85.5,'Completed without incident','admin','2023-02-10 08:00:00','admin','2023-02-10 09:30:00');
INSERT INTO chemical_hazard_training_record VALUES ('TR002','EMP1002','Bob Clark','2023-03-15','Dr Blue','Acid Handling','120','Pending','CERT1002','2025-03-15','Room 102','Sulfuric Acid','Gloves, Face Shield',78.0,'Needs retest','admin','2023-03-15 08:30:00','admin','2023-03-15 10:45:00');
INSERT INTO chemical_hazard_training_record VALUES ('TR003','EMP1003','Carol Davis','2023-04-20','Dr Yellow','Gas Cylinder Safety','60','Certified','CERT1003','2025-04-20','Room 103','Oxygen, Nitrogen','Safety Glasses',92.0,'Excellent performance','admin','2023-04-20 07:45:00','admin','2023-04-20 09:00:00');

-- Instrument noise calibration
CREATE TABLE instrument_noise_calibration (
  calibration_id TEXT NOT NULL,
  instrument_id TEXT,
  instrument_type TEXT,
  calibration_date DATE,
  technician_name TEXT,
  noise_level_db REAL,
  frequency_range_hz TEXT,
  reference_standard TEXT,
  deviation_percent REAL,
  environmental_temperature_c REAL,
  humidity_percent REAL,
  calibration_status TEXT,
  notes TEXT,
  created_by TEXT,
  created_at DATETIME,
  updated_by TEXT,
  updated_at DATETIME,
  PRIMARY KEY (calibration_id)
);

INSERT INTO instrument_noise_calibration VALUES ('NCAL001','INST5001','Spectrometer','2023-05-01','Eve Miller',45.2,'20-20000','StdNoiseA',1.5,22.5,45.0,'Pass','Routine calibration','admin','2023-05-01 08:00:00','admin','2023-05-01 09:15:00');
INSERT INTO instrument_noise_calibration VALUES ('NCAL002','INST5002','Mass Spectrometer','2023-06-10','Frank Wilson',48.7,'10-18000','StdNoiseB',2.0,21.0,50.0,'Pass','Adjusted filter','admin','2023-06-10 07:30:00','admin','2023-06-10 09:00:00');
INSERT INTO instrument_noise_calibration VALUES ('NCAL003','INST5003','NMR','2023-07-15','Grace Lee',42.0,'5-5000','StdNoiseC',0.8,23.0,40.0,'Fail','Excessive background noise','admin','2023-07-15 09:00:00','admin','2023-07-15 10:30:00');

-- Sample sequencing run
CREATE TABLE sample_sequencing_run (
  run_id TEXT NOT NULL,
  sample_id TEXT,
  sequencing_platform TEXT,
  run_date DATE,
  operator_name TEXT,
  read_length_bp INTEGER,
  total_reads INTEGER,
  coverage_depth REAL,
  library_prep_method TEXT,
  barcode_sequence TEXT,
  flowcell_id TEXT,
  lane_number INTEGER,
  quality_score_mean REAL,
  adapter_trimmed BOOLEAN,
  notes TEXT,
  created_by TEXT,
  created_at DATETIME,
  updated_by TEXT,
  updated_at DATETIME,
  PRIMARY KEY (run_id)
);

INSERT INTO sample_sequencing_run VALUES ('RUN001','SAMP1001','Illumina NovaSeq','2023-08-01','Hannah Kim',150,25000000,30.5,'Nextera XT','ATCGGCTA','FC001',1,35.2,1,'Initial run','admin','2023-08-01 06:00:00','admin','2023-08-01 12:00:00');
INSERT INTO sample_sequencing_run VALUES ('RUN002','SAMP1002','Oxford Nanopore','2023-08-15','Ian Patel',10000,5000000,20.0,'Ligation','GCTAGCTA','FC002',2,30.0,0,'Long-read run','admin','2023-08-15 07:30:00','admin','2023-08-15 14:45:00');
INSERT INTO sample_sequencing_run VALUES ('RUN003','SAMP1003','PacBio Sequel','2023-09-05','Jenna Liu',2500,8000000,40.2,'SMRTbell','CGTATGCA','FC003',3,38.5,1,'High-fidelity','admin','2023-09-05 08:15:00','admin','2023-09-05 13:30:00');

-- Researcher mentorship program
CREATE TABLE researcher_mentorship_program (
  mentorship_id TEXT NOT NULL,
  mentor_id TEXT,
  mentor_name TEXT,
  mentee_id TEXT,
  mentee_name TEXT,
  start_date DATE,
  end_date DATE,
  meeting_frequency TEXT,
  topics_covered TEXT,
  progress_notes TEXT,
  evaluation_score REAL,
  next_steps TEXT,
  program_status TEXT,
  created_by TEXT,
  created_at DATETIME,
  updated_by TEXT,
  updated_at DATETIME,
  PRIMARY KEY (mentorship_id)
);

INSERT INTO researcher_mentorship_program VALUES ('MENT001','RES2001','Dr Alice Smith','RES3001','Bob Johnson','2023-01-10','2023-12-31','Monthly','Data analysis, Grant writing','Good progress',4.5,'Prepare manuscript','Active','admin','2023-01-10 09:00:00','admin','2023-01-10 09:30:00');
INSERT INTO researcher_mentorship_program VALUES ('MENT002','RES2002','Dr Carol White','RES3002','Dana Lee','2023-03-01','2024-02-28','Biweekly','Laboratory techniques, Publishing','Excellent',4.8,'Lead new project','Active','admin','2023-03-01 08:45:00','admin','2023-03-01 09:15:00');
INSERT INTO researcher_mentorship_program VALUES ('MENT003','RES2003','Dr Ethan Brown','RES3003','Fiona Green','2022-09-15','2023-09-14','Quarterly','Career development, Networking','Satisfactory',3.9,'Identify funding sources','Completed','admin','2022-09-15 10:00:00','admin','2022-09-15 10:30:00');

-- Facility green energy project
CREATE TABLE facility_green_energy_project (
  project_id TEXT NOT NULL,
  project_name TEXT,
  start_date DATE,
  end_date DATE,
  energy_type TEXT,
  installed_capacity_mw REAL,
  vendor_name TEXT,
  contract_number TEXT,
  location_zone TEXT,
  environmental_impact_score REAL,
  regulatory_approval_status TEXT,
  budget_usd REAL,
  actual_spend_usd REAL,
  status TEXT,
  milestone_1_date DATE,
  milestone_2_date DATE,
  milestone_3_date DATE,
  notes TEXT,
  created_by TEXT,
  created_at DATETIME,
  updated_by TEXT,
  updated_at DATETIME,
  PRIMARY KEY (project_id)
);

INSERT INTO facility_green_energy_project VALUES ('EGP001','Solar Rooftop','2023-02-01','2024-05-31','Solar','2.5','SunPower','CON123','RoofA',85.0,'Approved',500000,480000,'Completed','2023-06-15','2023-12-01','2024-04-20','Successful installation','admin','2023-02-01 07:00:00','admin','2024-05-31 17:00:00');
INSERT INTO facility_green_energy_project VALUES ('EGP002','Wind Turbines','2023-04-15','2025-10-30','Wind','5.0','WindTech','CON456','FieldB',78.5,'Pending',1200000,0,'Planning','2023-09-01','2024-03-15','2025-08-10','Awaiting permits','admin','2023-04-15 08:30:00','admin','2023-04-15 09:00:00');
INSERT INTO facility_green_energy_project VALUES ('EGP003','Geothermal Loop','2022-11-01','2026-03-20','Geothermal','3.2','GeoEnergy','CON789','ZoneC',82.0,'Approved',800000,300000,'In Progress','2023-02-20','2024-07-05','2025-12-01','Drilling phase ongoing','admin','2022-11-01 06:45:00','admin','2025-12-01 11:15:00');

-- Computational algorithm performance
CREATE TABLE computational_algorithm_performance (
  record_id TEXT NOT NULL,
  algorithm_name TEXT,
  version TEXT,
  dataset_id TEXT,
  run_date DATE,
  execution_time_seconds REAL,
  cpu_usage_percent REAL,
  memory_usage_mb REAL,
  gpu_usage_percent REAL,
  accuracy_percent REAL,
  precision_percent REAL,
  recall_percent REAL,
  f1_score REAL,
  convergence_status TEXT,
  notes TEXT,
  created_by TEXT,
  created_at DATETIME,
  updated_by TEXT,
  updated_at DATETIME,
  PRIMARY KEY (record_id)
);

INSERT INTO computational_algorithm_performance VALUES ('ALG001','DeepClassify','v1.2','DS1001','2023-07-10',3600.5,75.0,2048,60.0,92.3,88.5,90.1,89.3,'Converged','Baseline model','admin','2023-07-10 09:00:00','admin','2023-07-10 10:30:00');
INSERT INTO computational_algorithm_performance VALUES ('ALG002','SeqAlign','v3.4','DS2002','2023-08-22',5400.0,82.5,3072,70.0,95.0,93.2,94.5,93.8,'Converged','Optimized parameters','admin','2023-08-22 08:45:00','admin','2023-08-22 11:00:00');
INSERT INTO computational_algorithm_performance VALUES ('ALG003','DrugPredict','v0.9','DS3003','2023-09-15',7200.7,90.0,4096,80.0,88.0,85.5,87.2,86.3,'Failed','Memory overflow','admin','2023-09-15 07:30:00','admin','2023-09-15 12:45:00');

-- Biobank donor consent
CREATE TABLE biobank_donor_consent (
  consent_id TEXT NOT NULL,
  donor_id TEXT,
  donor_name TEXT,
  consent_date DATE,
  consent_type TEXT,
  sample_type_allowed TEXT,
  data_sharing_allowed BOOLEAN,
  withdrawal_possible BOOLEAN,
  expiration_date DATE,
  consent_form_version TEXT,
  signed_by TEXT,
  notes TEXT,
  created_by TEXT,
  created_at DATETIME,
  updated_by TEXT,
  updated_at DATETIME,
  PRIMARY KEY (consent_id)
);

INSERT INTO biobank_donor_consent VALUES ('CONS001','DON1001','George Hill','2022-05-20','Broad','Blood, Tissue',1,1,'2027-05-20','v1.0','Dr. Allen','No restrictions','admin','2022-05-20 09:00:00','admin','2022-05-20 09:05:00');
INSERT INTO biobank_donor_consent VALUES ('CONS002','DON1002','Helen Moore','2023-01-15','Limited','Saliva',0,1,'2028-01-15','v1.1','Dr. Baker','Data sharing prohibited','admin','2023-01-15 10:30:00','admin','2023-01-15 10:35:00');
INSERT INTO biobank_donor_consent VALUES ('CONS003','DON1003','Ian Clark','2021-11-10','Broad','Urine, Stool',1,0,NULL,'v0.9','Dr. Carter','Cannot withdraw after 2025','admin','2021-11-10 08:45:00','admin','2021-11-10 08:50:00');

-- Lab automation task template
CREATE TABLE lab_automation_task_template (
  template_id TEXT NOT NULL,
  template_name TEXT,
  created_by TEXT,
  creation_date DATE,
  last_modified_by TEXT,
  last_modified_date DATE,
  task_category TEXT,
  required_equipment TEXT,
  estimated_duration_minutes INTEGER,
  priority_level TEXT,
  trigger_condition TEXT,
  notification_channel TEXT,
  data_input_schema TEXT,
  data_output_schema TEXT,
  error_handling_strategy TEXT,
  version_number TEXT,
  approval_status TEXT,
  notes TEXT,
  is_active BOOLEAN,
  deprecated BOOLEAN,
  PRIMARY KEY (template_id)
);

INSERT INTO lab_automation_task_template VALUES ('TMP001','Plate Reader Init','admin','2023-01-05','admin','2023-01-05','Initialization','PlateReader','15','High','Schedule','Email','PlateInputSchema','PlateOutputSchema','Retry','v1.0','Approved','Standard init','1','0');
INSERT INTO lab_automation_task_template VALUES ('TMP002','DNA Extraction','admin','2023-02-12','labtech','2023-03-01','Extraction','Centrifuge, Pipette','45','Medium','SampleArrival','SMS','DNAInputSchema','DNAOutputSchema','Abort','v1.2','Pending','Requires validation','1','0');
INSERT INTO lab_automation_task_template VALUES ('TMP003','Data Backup','admin','2023-03-20','admin','2023-03-20','Backup','Server, NAS','60','Low','Midnight','Slack','BackupInputSchema','BackupOutputSchema','Notify','v2.0','Approved','Nightly backup','1','0');

-- Airborne particle sampling log
CREATE TABLE airborne_particle_sampling_log (
  sampling_id TEXT NOT NULL,
  sampler_id TEXT,
  location_zone TEXT,
  sampling_date DATE,
  start_time TIME,
  end_time TIME,
  particle_size_range_um TEXT,
  concentration_per_cm3 REAL,
  temperature_c REAL,
  humidity_percent REAL,
  wind_speed_m_s REAL,
  instrument_model TEXT,
  calibration_status TEXT,
  operator_name TEXT,
  notes TEXT,
  created_by TEXT,
  created_at DATETIME,
  updated_by TEXT,
  updated_at DATETIME,
  PRIMARY KEY (sampling_id)
);

INSERT INTO airborne_particle_sampling_log VALUES ('SAMP001','SAM1001','ZoneA','2023-08-10','08:00:00','08:30:00','0.3-1.0','1500.5','22.5','55','1.2','ParticleCounterX','Calibrated','John Doe','Routine morning sample','admin','2023-08-10 09:00:00','admin','2023-08-10 09:05:00');
INSERT INTO airborne_particle_sampling_log VALUES ('SAMP002','SAM1002','ZoneB','2023-08-10','14:00:00','14:30:00','1.0-5.0','800.2','23.0','60','0.8','ParticleCounterY','Calibrated','Jane Smith','Afternoon sample','admin','2023-08-10 15:00:00','admin','2023-08-10 15:05:00');
INSERT INTO airborne_particle_sampling_log VALUES ('SAMP003','SAM1003','ZoneC','2023-08-11','10:00:00','10:45:00','0.1-0.3','2500.0','21.8','50','1.5','ParticleCounterZ','Pending','Mike Lee','High concentration observed','admin','2023-08-11 11:00:00','admin','2023-08-11 11:10:00');