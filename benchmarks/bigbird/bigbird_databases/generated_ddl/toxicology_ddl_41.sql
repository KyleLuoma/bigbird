-- Microfluidic device status and performance log
CREATE TABLE microfluidic_device_status (
  device_id TEXT NOT NULL,
  serial_number TEXT,
  firmware_version TEXT,
  operational_mode TEXT,
  flow_rate_ml_per_min REAL,
  pressure_bar REAL,
  temperature_celsius REAL,
  voltage_v REAL,
  current_ma REAL,
  last_maintenance_date DATE,
  next_calibration_due DATE,
  status TEXT,
  location TEXT,
  operator_id TEXT,
  error_code TEXT,
  error_description TEXT,
  uptime_hours INTEGER,
  total_runtime_hours INTEGER,
  batch_id TEXT,
  notes TEXT,
  PRIMARY KEY (device_id)
);

INSERT INTO microfluidic_device_status VALUES ('DEV001','SN12345','v1.2.0','continuous',0.75,1.2,22.5,5.0,250,'2023-11-15','2024-05-15','active','LabA','RES001','E01','Air bubble detected',120,350,'BCH001','Initial deployment');
INSERT INTO microfluidic_device_status VALUES ('DEV002','SN67890','v1.3.1','pulsed',1.10,1.5,23.0,5.2,260,'2023-10-01','2024-04-01','maintenance','LabB','RES002','E00','No error',85,200,'BCH002','Routine check');
INSERT INTO microfluidic_device_status VALUES ('DEV003','SN54321','v1.2.5','continuous',0.90,1.3,21.8,4.9,240,'2023-12-05','2024-06-05','active','LabC','RES003','E02','Clog detected',45,150,'BCH003','Clog cleared after cleaning');

-- Cell line repository metadata
CREATE TABLE cell_line_repository (
  cell_line_id TEXT NOT NULL,
  name TEXT,
  species TEXT,
  tissue_origin TEXT,
  disease_association TEXT,
  passage_number INTEGER,
  culture_media TEXT,
  incubation_temp_celsius REAL,
  co2_percent REAL,
  mycoplasma_status TEXT,
  authentication_method TEXT,
  provider TEXT,
  catalog_number TEXT,
  received_date DATE,
  storage_location TEXT,
  cryopreservation_medium TEXT,
  viability_percent REAL,
  genetic_modification TEXT,
  donor_age INTEGER,
  consent_status TEXT,
  PRIMARY KEY (cell_line_id)
);

INSERT INTO cell_line_repository VALUES ('CL001','HeLa','Human','Cervical','Cancer',12,'DMEM',37.0,5.0,'negative','STR','ATCC','HB-2','2022-05-10','FreezerA','10% DMSO',95.0,'None',0,'Approved');
INSERT INTO cell_line_repository VALUES ('CL002','NIH-3T3','Mouse','Fibroblast','None',8,'RPMI',37.0,5.0,'negative','STR','Sigma','3T3-1','2023-01-22','FreezerB','10% DMSO',92.0,'None',2,'Approved');
INSERT INTO cell_line_repository VALUES ('CL003','A549','Human','Lung','Adenocarcinoma',15,'F12K',37.0,5.0,'negative','STR','ECACC','A549-5','2021-11-30','FreezerC','10% DMSO',90.0,'CRISPR KO TP53',45,'Approved');

-- Spectral instrument calibration detail
CREATE TABLE spectral_instrument_calibration_detail (
  calibration_id TEXT NOT NULL,
  instrument_id TEXT,
  calibration_date DATE,
  technician_id TEXT,
  wavelength_start_nm REAL,
  wavelength_end_nm REAL,
  resolution_nm REAL,
  intensity_factor REAL,
  baseline_shift REAL,
  lamp_lifetime_hours INTEGER,
  detector_voltage_v REAL,
  temperature_celsius REAL,
  humidity_percent REAL,
  calibration_status TEXT,
  notes TEXT,
  next_due_date DATE,
  software_version TEXT,
  reference_standard TEXT,
  std_concentration_mg_per_ml REAL,
  std_batch_id TEXT,
  PRIMARY KEY (calibration_id)
);

INSERT INTO spectral_instrument_calibration_detail VALUES ('CAL001','SPEC001','2023-09-15','TECH01',200.0,800.0,0.5,1.02,0.01,1200,5.0,22.0,45.0,'pass','Initial calibration','2024-09-15','v3.4','NIST-STD-1',0.5,'BCH001');
INSERT INTO spectral_instrument_calibration_detail VALUES ('CAL002','SPEC002','2023-10-20','TECH02',250.0,900.0,0.4,0.98,0.00,900,4.8,21.5,40.0,'pass','Routine check','2024-10-20','v3.5','NIST-STD-2',0.6,'BCH002');
INSERT INTO spectral_instrument_calibration_detail VALUES ('CAL003','SPEC001','2024-02-05','TECH01',200.0,800.0,0.5,1.01,-0.02,1300,5.1,22.2,46.0','fail','Lamp intensity low','2024-12-05','v3.4','NIST-STD-1',0.5,'BCH003');

-- Environmental airborne particle monitor readings
CREATE TABLE environmental_airborne_particle_monitor (
  monitor_id TEXT NOT NULL,
  location TEXT,
  measurement_timestamp DATETIME,
  pm1_0_ug_m3 REAL,
  pm2_5_ug_m3 REAL,
  pm10_ug_m3 REAL,
  particle_count_cm3 REAL,
  temperature_celsius REAL,
  humidity_percent REAL,
  airflow_m3_per_s REAL,
  battery_voltage_v REAL,
  firmware_version TEXT,
  maintenance_flag TEXT,
  notes TEXT,
  PRIMARY KEY (monitor_id, measurement_timestamp)
);

INSERT INTO environmental_airborne_particle_monitor VALUES ('MON001','LabEntrance','2024-01-10 08:00:00',5.2,12.3,20.1,1500,21.5,45.0,0.8,3.7,'v2.1','ok','Morning measurement');
INSERT INTO environmental_airborne_particle_monitor VALUES ('MON001','LabEntrance','2024-01-10 12:00:00',6.0,13.5,22.0,1600,22.0,48.0,0.8,3.7,'v2.1','ok','Midday measurement');
INSERT INTO environmental_airborne_particle_monitor VALUES ('MON002','CleanRoom','2024-01-10 09:30:00',0.2,0.5,0.8,200,20.0,30.0,0.5,3.9,'v1.8','ok','Baseline');

-- Computational simulation job metadata
CREATE TABLE computational_simulation_job_metadata (
  job_id TEXT NOT NULL,
  project_id TEXT,
  submitter_id TEXT,
  submission_timestamp DATETIME,
  compute_cluster TEXT,
  node_count INTEGER,
  cpu_hours_requested REAL,
  gpu_count INTEGER,
  memory_gb REAL,
  job_status TEXT,
  start_timestamp DATETIME,
  end_timestamp DATETIME,
  software_package TEXT,
  software_version TEXT,
  input_dataset_id TEXT,
  output_dataset_id TEXT,
  simulation_type TEXT,
  parameter_set_id TEXT,
  priority_level INTEGER,
  notes TEXT,
  PRIMARY KEY (job_id)
);

INSERT INTO computational_simulation_job_metadata VALUES ('JOB001','PROJ001','RES001','2024-01-05 10:15:00','ClusterA',8,200.0,2,64.0,'running','2024-01-05 11:00:00',NULL,'GROMACS','2023.5','DS001','OUT001','MolecularDynamics','PARAM001',1,'Initial run');
INSERT INTO computational_simulation_job_metadata VALUES ('JOB002','PROJ002','RES002','2024-01-07 14:20:00','ClusterB',16,500.0,4,128.0,'queued',NULL,NULL,'AMBER','2022.3','DS002','OUT002','QuantumChemistry','PARAM002',2,'High priority');
INSERT INTO computational_simulation_job_metadata VALUES ('JOB003','PROJ001','RES003','2024-01-08 09:00:00','ClusterA',4,100.0,0,32.0,'completed','2024-01-08 09:30:00','2024-01-08 12:45:00','NAMD','2.14','DS003','OUT003','CoarseGrain','PARAM003',3,'Final analysis');

-- Chemical reagent stock audit
CREATE TABLE chemical_reagent_stock_audit (
  audit_id TEXT NOT NULL,
  reagent_id TEXT,
  reagent_name TEXT,
  catalog_number TEXT,
  supplier TEXT,
  lot_number TEXT,
  received_date DATE,
  expiry_date DATE,
  storage_location TEXT,
  quantity_on_hand REAL,
  unit TEXT,
  safety_data_sheet_version TEXT,
  audit_timestamp DATETIME,
  auditor_id TEXT,
  discrepancy_flag TEXT,
  discrepancy_amount REAL,
  notes TEXT,
  PRIMARY KEY (audit_id)
);

INSERT INTO chemical_reagent_stock_audit VALUES ('AUD001','CHEM001','Sodium Chloride','S12345','Sigma','L001','2023-03-01','2025-03-01','CabinetA',5000,'g','v1.0','2024-01-10 10:00:00','AUD001','no',0,'All good');
INSERT INTO chemical_reagent_stock_audit VALUES ('AUD002','CHEM002','Ethanol','E67890','Fisher','L023','2022-11-15','2024-11-15','CabinetB',2000,'ml','v2.1','2024-01-11 11:30:00','AUD002','yes',50,'Evaporation noted');
INSERT INTO chemical_reagent_stock_audit VALUES ('AUD003','CHEM003','Acetone','A11223','Merck','L045','2023-07-20','2025-07-20','CabinetC',1500,'ml','v1.5','2024-01-12 09:45:00','AUD003','no',0,'Checked seals');

-- Lab ventilation zone performance metric
CREATE TABLE lab_ventilation_zone_performance_metric (
  zone_id TEXT NOT NULL,
  measurement_timestamp DATETIME,
  airflow_cfm REAL,
  pressure_diff_pa REAL,
  temperature_celsius REAL,
  humidity_percent REAL,
  filter_status TEXT,
  fan_rpm INTEGER,
  noise_db REAL,
  power_consumption_w REAL,
  maintenance_due DATE,
  notes TEXT,
  PRIMARY KEY (zone_id, measurement_timestamp)
);

INSERT INTO lab_ventilation_zone_performance_metric VALUES ('ZONE01','2024-01-10 08:00:00',850.0,12.5,22.0,40.0,'good',1500,55.0,350.0,'2024-06-01','Normal operation');
INSERT INTO lab_ventilation_zone_performance_metric VALUES ('ZONE01','2024-01-10 12:00:00',840.0,13.0,22.5,42.0,'good',1480,56.0,345.0,'2024-06-01','Slight pressure increase');
INSERT INTO lab_ventilation_zone_performance_metric VALUES ('ZONE02','2024-01-10 09:30:00',920.0,10.0,21.5,38.0,'replace soon',1600,58.0,380.0,'2024-05-15','Filter nearing end of life');

-- Bioinformatics analysis pipeline run
CREATE TABLE bioinformatics_analysis_pipeline_run (
  run_id TEXT NOT NULL,
  pipeline_name TEXT,
  version TEXT,
  start_timestamp DATETIME,
  end_timestamp DATETIME,
  status TEXT,
  input_dataset_id TEXT,
  output_dataset_id TEXT,
  compute_cluster TEXT,
  node_count INTEGER,
  cpu_hours_used REAL,
  memory_gb_used REAL,
  parameter_set_id TEXT,
  reference_genome_id TEXT,
  submitter_id TEXT,
  notes TEXT,
  PRIMARY KEY (run_id)
);

INSERT INTO bioinformatics_analysis_pipeline_run VALUES ('RUN001','RNASeq_Quant','v2.1','2024-01-05 07:00:00','2024-01-05 12:30:00','success','DS_RNA_001','OUT_RNA_001','ClusterA',12,30.5,96.0,'PARAM_RNA_01','GRCh38','RES010','Completed with default params');
INSERT INTO bioinformatics_analysis_pipeline_run VALUES ('RUN002','VariantCalling','v3.0','2024-01-06 08:15:00','2024-01-06 15:45:00','failed','DS_WGS_002','OUT_VAR_002','ClusterB',20,80.0,192.0,'PARAM_VAR_02','GRCh37','RES011','Job aborted due to disk error');
INSERT INTO bioinformatics_analysis_pipeline_run VALUES ('RUN003','MetagenomicsProfile','v1.4','2024-01-07 09:00:00','2024-01-07 14:20:00','success','DS_META_003','OUT_META_003','ClusterA',16,45.0,128.0,'PARAM_META_03','RefDB001','RES012','Used custom taxonomy database');

-- Clinical trial site investigator information
CREATE TABLE clinical_trial_site_investigator (
  investigator_id TEXT NOT NULL,
  site_id TEXT,
  first_name TEXT,
  last_name TEXT,
  specialty TEXT,
  medical_license_number TEXT,
  affiliation TEXT,
  email TEXT,
  phone TEXT,
  start_date DATE,
  end_date DATE,
  training_completion_date DATE,
  credential_status TEXT,
  experience_years INTEGER,
  primary_role TEXT,
  secondary_role TEXT,
  notes TEXT,
  PRIMARY KEY (investigator_id)
);

INSERT INTO clinical_trial_site_investigator VALUES ('INV001','SITE001','Alice','Smith','Oncology','MLN12345','University Hospital','alice.smith@uh.org','5551234567','2022-01-15','2025-12-31','2021-12-01','active',12,'Principal Investigator','Sub-Investigator','Lead on protocol design');
INSERT INTO clinical_trial_site_investigator VALUES ('INV002','SITE002','Bob','Johnson','Cardiology','MLN23456','Cardio Center','bob.johnson@cc.org','5559876543','2021-06-01','2024-05-31','2020-11-20','active',9,'Investigator','Data Safety Monitor','Experienced in ECG monitoring');
INSERT INTO clinical_trial_site_investigator VALUES ('INV003','SITE001','Carol','Lee','Neurology','MLN34567','Neuro Institute','carol.lee@ni.edu','5555551212','2023-03-10','2026-03-09','2022-12-15','pending',4,'Investigator','Site Coordinator','Pending credential verification');

-- Material property dataset description
CREATE TABLE material_property_dataset (
  dataset_id TEXT NOT NULL,
  material_name TEXT,
  composition TEXT,
  density_g_per_cm3 REAL,
  thermal_conductivity_w_mk REAL,
  electrical_resistivity_ohm_m REAL,
  melting_point_celsius REAL,
  glass_transition_celsius REAL,
  hardness_vickers REAL,
  elastic_modulus_gpa REAL,
  tensile_strength_mpa REAL,
  elongation_percent REAL,
  corrosion_rate_mm_per_year REAL,
  fabrication_method TEXT,
  supplier TEXT,
  batch_number TEXT,
  release_date DATE,
  certification TEXT,
  notes TEXT,
  PRIMARY KEY (dataset_id)
);

INSERT INTO material_property_dataset VALUES ('MAT001','Aluminum Alloy 7075','Al-5.6Zn-2.5Mg-1.6Cu',2.81,130,0.00035,477,0,NULL,71.7,572,12,0.02,'Extrusion','AlCo','BCH007','2023-08-01','ISO9001','High strength aerospace alloy');
INSERT INTO material_property_dataset VALUES ('MAT002','Polycarbonate','C16H14O3',1.20,0.19,1e12,267,145,150,2.2,65,100,NULL,'Injection Molding','PlasticsInc','BCH015','2022-11-12','ISO9002','Transparent impact resistant');
INSERT INTO material_property_dataset VALUES ('MAT003','Silicon Carbide','SiC',3.21,120,1e20,2730,0,2500,460,350,0.5,0.001,'Sintering','CeramTech','BCH023','2024-01-20','ISO9003','Used for high temperature components');