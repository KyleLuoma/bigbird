-- Spectroscopy Instrument Specifications
CREATE TABLE spectroscopy_instrument_specs (
  instrument_id TEXT PRIMARY KEY,
  model_name TEXT,
  manufacturer TEXT,
  serial_number TEXT,
  wavelength_range_min_nm REAL,
  wavelength_range_max_nm REAL,
  resolution_nm REAL,
  detector_type TEXT,
  cooling_method TEXT,
  max_power_watts REAL,
  calibration_date TEXT,
  last_maintenance_date TEXT,
  firmware_version TEXT,
  optical_path_length_cm REAL,
  grating_density_lines_per_mm INTEGER,
  slit_width_um REAL,
  polarization TEXT,
  safety_interlock BOOLEAN,
  operating_voltage_v REAL,
  operating_current_a REAL,
  location_room TEXT,
  notes TEXT
);
INSERT INTO spectroscopy_instrument_specs VALUES ('SPEC001','UVVisPro','OptiTech','SN12345',200.0,800.0,0.5,'Photodiode','Thermoelectric',50.0,'2023-05-12','2023-11-01','v2.3',15.0,1200,50.0,'Linear','TRUE',120.0,0.5,'RoomA','Initial deployment');
INSERT INTO spectroscopy_instrument_specs VALUES ('SPEC002','NIRScan','SpectraCo','SN67890',800.0,2500.0,1.0,'InGaAs','LiquidNitrogen',75.0,'2024-01-20','2024-07-15','v1.8',20.0,800,75.0,'Circular','TRUE',150.0,0.8,'RoomB','Routine check');
INSERT INTO spectroscopy_instrument_specs VALUES ('SPEC003','RamanX','MiraLabs','SN54321',400.0,2000.0,2.0,'CCD','AirCooled',30.0,'2022-09-05','2023-03-22','v3.0',10.0,600,25.0,'Linear','FALSE',110.0,0.3,'RoomC','Pending calibration');

-- Nanofabrication Process Log
CREATE TABLE nanofabrication_process_log (
  process_id TEXT PRIMARY KEY,
  batch_id TEXT,
  wafer_id TEXT,
  tool_name TEXT,
  operator_id TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  temperature_c REAL,
  pressure_pa REAL,
  gas_flow_sccm REAL,
  recipe_name TEXT,
  layer_count INTEGER,
  etch_rate_nm_per_min REAL,
  deposition_rate_angstrom_per_sec REAL,
  chamber_cleaned BOOLEAN,
  maintenance_cycle INTEGER,
  alignment_error_um REAL,
  yield_percent REAL,
  defect_density_cm2 REAL,
  comment TEXT,
  safety_check_passed BOOLEAN,
  calibration_verification TEXT
);
INSERT INTO nanofabrication_process_log VALUES ('PROC001','BATCHA','WAF001','Etcher3000','OP123','2024-02-01 08:00','2024-02-01 10:30',25.0,500.0,150.0,'DeepEtchV1',5,45.0,0.0,TRUE,2,0.2,92.5,1.2,'Run completed without issues',TRUE,'Cal2023');
INSERT INTO nanofabrication_process_log VALUES ('PROC002','BATCHB','WAF002','Depo200','OP456','2024-02-03 14:15','2024-02-03 16:00',180.0,101325.0,200.0,'MetalLayerV2',3,0.0,12.5,FALSE,3,0.1,88.0,0.9,'Minor pressure fluctuation observed',TRUE,'Cal2024');
INSERT INTO nanofabrication_process_log VALUES ('PROC003','BATCHC','WAF003','LithoX','OP789','2024-02-05 09:45','2024-02-05 12:10',22.0,760.0,100.0,'PhotoResistV3',1,0.0,0.0,TRUE,1,0.05,95.3,0.7,'All parameters within spec',TRUE,'Cal2023');

-- Lab Airflow Analysis Detail
CREATE TABLE lab_airflow_analysis_detail (
  analysis_id TEXT PRIMARY KEY,
  measurement_date TEXT,
  technician_id TEXT,
  sensor_id TEXT,
  room_name TEXT,
  airflow_rate_cfm REAL,
  pressure_difference_pa REAL,
  temperature_c REAL,
  humidity_percent REAL,
  co2_ppm REAL,
  voc_ppb REAL,
  particle_count_per_cm3 REAL,
  turbidity_ntu REAL,
  velocity_profile TEXT,
  duct_leakage_percent REAL,
  filter_efficiency_percent REAL,
  fan_speed_rpm REAL,
  noise_level_db REAL,
  calibration_status BOOLEAN,
  notes TEXT,
  compliance_status TEXT,
  data_quality_score REAL
);
INSERT INTO lab_airflow_analysis_detail VALUES ('AF001','2024-03-01','TECH01','SEN100','Cleanroom1',350.0,12.5,22.0,35.0,600,150,2000,0.5,'Uniform',0.2,98.5,1800,55.0,TRUE,'All good',PASS,0.95);
INSERT INTO lab_airflow_analysis_detail VALUES ('AF002','2024-03-02','TECH02','SEN101','LabA',210.0,8.0,24.5,40.0,450,100,1500,0.7,'Laminar',0.5,96.0,1200,48.0,TRUE,'Minor variation',PASS,0.89);
INSERT INTO lab_airflow_analysis_detail VALUES ('AF003','2024-03-03','TECH03','SEN102','LabB',180.0,10.2,23.0,38.0,500,120,1300,0.6,'Turbulent',1.1,94.0,1000,52.0,FALSE,'Sensor pending calibration',FAIL,0.72);

-- Chemical Storage Zone
CREATE TABLE chemical_storage_zone (
  zone_id TEXT PRIMARY KEY,
  building TEXT,
  floor INTEGER,
  room TEXT,
  section TEXT,
  max_capacity_liters REAL,
  current_occupancy_liters REAL,
  temperature_c REAL,
  humidity_percent REAL,
  ventilation_rate_cfm REAL,
  fire_suppression_type TEXT,
  access_control_level INTEGER,
  last_inspection_date TEXT,
  inspection_status TEXT,
  hazardous_materials_present BOOLEAN,
  spill_containment_score REAL,
  alarm_system_status BOOLEAN,
  lock_mechanism TEXT,
  responsible_manager_id TEXT,
  notes TEXT,
  gas_monitoring BOOLEAN,
  security_camera_present BOOLEAN
);
INSERT INTO chemical_storage_zone VALUES ('ZONE01','BuildingA',1,'Room101','A1',5000.0,3200.0,20.0,45.0,600,'Foam','3','2024-02-20','PASS',TRUE,0.92,TRUE,'Electronic','MGR001','Routine usage','TRUE','TRUE');
INSERT INTO chemical_storage_zone VALUES ('ZONE02','BuildingB',2,'Room202','B3',3000.0,2500.0,18.5,50.0,450,'CO2','2','2024-01-15','PASS',TRUE,0.88,TRUE,'Mechanical','MGR002','High volatility','TRUE','FALSE');
INSERT INTO chemical_storage_zone VALUES ('ZONE03','BuildingC',3,'Room303','C2',4000.0,1500.0,22.0,40.0,500,'InertGas','4','2023-12-05','FAIL',FALSE,0.65,FALSE,'Electronic','MGR003','Pending remediation','FALSE','TRUE');

-- Computational Simulation Parameters
CREATE TABLE computational_simulation_parameters (
  simulation_id TEXT PRIMARY KEY,
  project_code TEXT,
  software_name TEXT,
  software_version TEXT,
  algorithm TEXT,
  time_step_fs REAL,
  total_steps INTEGER,
  temperature_k REAL,
  pressure_bar REAL,
  ensemble TEXT,
  boundary_conditions TEXT,
  electrostatics_method TEXT,
  cutoff_distance_angstrom REAL,
  solvent_model TEXT,
  random_seed INTEGER,
  gpu_enabled BOOLEAN,
  cpu_cores INTEGER,
  memory_gb REAL,
  walltime_h REAL,
  output_frequency INTEGER,
  checkpoint_interval INTEGER,
  notes TEXT,
  validated BOOLEAN,
  submission_date TEXT
);
INSERT INTO computational_simulation_parameters VALUES ('SIM001','PRJ100','LAMMPS','2023.08','VelocityVerlet',1.0,500000,300.0,1.0,'NVT','Periodic','PPPM',12.0,'Implicit',12345,TRUE,32,128.0,48.0,1000,5000,'Standard melt simulation',TRUE,'2024-02-10');
INSERT INTO computational_simulation_parameters VALUES ('SIM002','PRJ200','GROMACS','2022.5','Leapfrog',2.0,250000,310.0,1.2,'NPT','Periodic','PME',10.0,'Explicit',67890,FALSE,16,64.0,24.0,500,2500,'Protein-ligand binding',TRUE,'2024-01-22');
INSERT INTO computational_simulation_parameters VALUES ('SIM003','PRJ300','NAMD','2021.12','Langevin',0.5,1000000,298.0,1.0,'NVT','Periodic','Cutoff',14.0,'Explicit',54321,TRUE,64,256.0,72.0,2000,10000,'Membrane dynamics',FALSE,'2024-03-05');

-- Specimen Preservation Metadata
CREATE TABLE specimen_preservation_metadata (
  specimen_id TEXT PRIMARY KEY,
  collection_date TEXT,
  collector_id TEXT,
  preservation_method TEXT,
  storage_temperature_c REAL,
  storage_location TEXT,
  cryoprotectant TEXT,
  container_type TEXT,
  volume_ml REAL,
  barcode TEXT,
  status TEXT,
  last_inspection_date TEXT,
  inspection_result TEXT,
  humidity_percent REAL,
  light_exposure_hours REAL,
  decay_rate_per_day REAL,
  notes TEXT,
  archived BOOLEAN,
  project_code TEXT,
  grant_number TEXT,
  sensitivity_level INTEGER,
  handling_instructions TEXT
);
INSERT INTO specimen_preservation_metadata VALUES ('SP001','2023-11-12','COL01','Freezing','-80.0','FreezerA','DMSO','Cryovial',2.0,'BC12345','Active','2024-02-28','PASS',30.0,0.0,0.001,'No issues',TRUE,'PROJ01','GRNT001',5,'Keep upright');
INSERT INTO specimen_preservation_metadata VALUES ('SP002','2024-01-05','COL02','Formalin','4.0','RefrigeratorB','None','Slide',0.5,'BC67890','Active','2024-03-01','PASS',45.0,12.0,0.0005,'Stored in dark cabinet',TRUE,'PROJ02','GRNT002',3,'Handle with gloves');
INSERT INTO specimen_preservation_metadata VALUES ('SP003','2022-08-20','COL03','Lyophilization','-20.0','FreezerC','Trehalose','Vial',1.0,'BC54321','Archived','2023-12-15','PASS',35.0,0.0,0.0,'Ready for downstream analysis',FALSE,'PROJ03','GRNT003',2,'Avoid moisture');

-- Radiology Imaging Device Registry
CREATE TABLE radiology_imaging_device_registry (
  device_id TEXT PRIMARY KEY,
  device_type TEXT,
  manufacturer TEXT,
  model TEXT,
  serial_number TEXT,
  installation_date TEXT,
  last_service_date TEXT,
  service_provider TEXT,
  radiation_type TEXT,
  max_power_kw REAL,
  detector_type TEXT,
  field_of_view_cm REAL,
  resolution_mm REAL,
  iso_setting INTEGER,
  dose_rate_mgy_per_min REAL,
  safety_interlock BOOLEAN,
  firmware_version TEXT,
  network_ip TEXT,
  location_room TEXT,
  compliance_status TEXT,
  calibration_due_date TEXT,
  notes TEXT,
  active BOOLEAN,
  decommission_date TEXT
);
INSERT INTO radiology_imaging_device_registry VALUES ('RAD001','CT','Siemens','SOMATOM','SNCT001','2021-06-15','2024-01-20','MedTech Services','X-ray',120.0,'FlatPanel',50.0,0.5,200,15.0,TRUE,'v5.2','192.168.10.10','ImagingRoom1','PASS','2024-07-15','Routine scan device',TRUE,NULL);
INSERT INTO radiology_imaging_device_registry VALUES ('RAD002','MRI','GE','Signa','SNMR001','2020-03-10','2024-02-10','RadiologyCare','Magnetic',0.0,'CoilArray',70.0,1.0,0,0.0,TRUE,'v3.8','192.168.10.11','ImagingRoom2','PASS','2024-08-01','High field strength',TRUE,NULL);
INSERT INTO radiology_imaging_device_registry VALUES ('RAD003','Xray','Philips','DigitalX','SNXR001','2019-11-05','2023-12-01','HealthEquip','X-ray',80.0,'DigitalDetector',30.0,0.2,100,10.0,TRUE,'v2.5','192.168.10.12','RadiologyHall','FAIL','2024-05-30','Requires calibration',FALSE,'2024-06-30');

-- Environmental Noise Source Catalog
CREATE TABLE environmental_noise_source_catalog (
  source_id TEXT PRIMARY KEY,
  source_type TEXT,
  location_description TEXT,
  average_db_a_weighted REAL,
  peak_db_real_time REAL,
  frequency_range_hz TEXT,
  operating_hours TEXT,
  mitigation_measures TEXT,
  last_measured_date TEXT,
  responsible_department TEXT,
  compliance_status TEXT,
  notes TEXT,
  active BOOLEAN,
  sensor_id TEXT,
  measurement_method TEXT,
  regulatory_limit_db REAL,
  risk_category TEXT,
  maintenance_schedule TEXT,
  installer TEXT,
  warranty_expiration TEXT,
  calibration_status BOOLEAN,
  data_logger_id TEXT
);
INSERT INTO environmental_noise_source_catalog VALUES ('NS001','HVAC','North Wing Ceiling','65.0','85.0','50-2000','24/7','Acoustic dampers','2024-02-15','Facilities','PASS','Operating within limits',TRUE,'SEN200','SoundMeter','70.0','Medium','Quarterly','TechA','2026-03-01',TRUE,'DLG001');
INSERT INTO environmental_noise_source_catalog VALUES ('NS002','Generator','South Parking Lot','78.0','100.0','30-1500','08:00-18:00','Enclosure and muffler','2024-01-30','Engineering','FAIL','Exceeds limit during peak load',FALSE,'SEN201','SoundMeter','75.0','High','Monthly','TechB','2025-11-20',FALSE,'DLG002');
INSERT INTO environmental_noise_source_catalog VALUES ('NS003','Ventilation Fan','Lab B Exhaust','55.0','70.0','100-2500','Continuous','Variable speed control','2024-03-01','Lab Services','PASS','Quiet operation',TRUE,'SEN202','SoundMeter','65.0','Low','Annual','TechC','2027-01-15',TRUE,'DLG003');

-- Bioinformatics Workflow Template
CREATE TABLE bioinformatics_workflow_template (
  workflow_id TEXT PRIMARY KEY,
  template_name TEXT,
  description TEXT,
  created_by TEXT,
  creation_date TEXT,
  last_modified_date TEXT,
  version INTEGER,
  programming_language TEXT,
  container_image TEXT,
  compute_cluster TEXT,
  required_memory_gb REAL,
  required_cpu_cores INTEGER,
  required_gpu BOOLEAN,
  input_file_type TEXT,
  output_file_type TEXT,
  steps_count INTEGER,
  step_names TEXT,
  step_commands TEXT,
  estimated_runtime_h REAL,
  validation_status TEXT,
  documentation_url TEXT,
  compliance_notes TEXT,
  active BOOLEAN,
  deprecation_date TEXT
);
INSERT INTO bioinformatics_workflow_template VALUES ('WF001','RNAseq_Standard','Standard RNA‑seq processing pipeline','USER01','2023-05-10','2024-02-01',3,'Python','docker.io/bio/rnaseq:2.1','ClusterA',32.0,16,FALSE,'FASTQ','BAM',5,'QC,Trim,Align,Quantify,Report','fastqc;trim_galore;hisat2;featureCounts;multiqc',4.5,'Validated','http://docs.lab.org/rnaseq','Compliant with GSR','TRUE',NULL);
INSERT INTO bioinformatics_workflow_template VALUES ('WF002','VariantCalling_GATK','GATK best practices for variant calling','USER02','2022-11-22','2024-01-15',4,'Java','docker.io/bio/gatk:4.2','ClusterB',64.0,32,TRUE,'BAM','VCF',7,'Preprocess,MarkDup,BaseRecal,JointCall,Filter,Annotate,Report','gatk Preprocess;gatk MarkDuplicates;gatk BQSR;gatk HaplotypeCaller;gatk VariantFiltration;gatk Funcotator;multiqc',12.0,'Validated','http://docs.lab.org/gatk','HIPAA compliant','TRUE',NULL);
INSERT INTO bioinformatics_workflow_template VALUES ('WF003','Metagenomics_Profiling','Taxonomic profiling of metagenomic samples','USER03','2024-01-05','2024-02-20',2,'R','docker.io/bio/metapipe:1.0','ClusterC',48.0,24,FALSE,'FASTQ','TSV',4,'QC,Assembly,TaxAssign,Report','fastqc;spades;kraken2;multiqc',6.0,'Pending','http://docs.lab.org/metagenomics','Awaiting review','FALSE','2025-12-31');

-- Quantum Device Operation Log
CREATE TABLE quantum_device_operation_log (
  operation_id TEXT PRIMARY KEY,
  device_id TEXT,
  experiment_id TEXT,
  start_time TEXT,
  end_time TEXT,
  qubit_count INTEGER,
  gate_fidelity REAL,
  readout_error REAL,
  temperature_mk REAL,
  magnetic_field_ua REAL,
  calibration_version TEXT,
  control_software TEXT,
  pulse_sequence TEXT,
  result_file_hash TEXT,
  outcome TEXT,
  error_message TEXT,
  operator_id TEXT,
  safety_check_passed BOOLEAN,
  notes TEXT,
  data_retention_months INTEGER,
  backup_location TEXT,
  archive_status TEXT,
  maintenance_required BOOLEAN,
  decommission_planned BOOLEAN
);
INSERT INTO quantum_device_operation_log VALUES ('OP001','QD100','EXP001','2024-02-10 09:00','2024-02-10 10:30',27,0.998,0.002,15.0,30.5,'CAL2024A','QControl','X90-Y90-X180','HASH001','SUCCESS','', 'OPR001',TRUE,'Initial benchmark run',24,'NAS001','ACTIVE',FALSE,FALSE);
INSERT INTO quantum_device_operation_log VALUES ('OP002','QD101','EXP002','2024-03-01 14:15','2024-03-01 15:45',53,0.985,0.005,12.5,28.0,'CAL2023B','QControl','CustomSeq1','HASH002','FAIL','Exceeded error threshold','OPR002',FALSE,'Error during entanglement','12','NAS002','FAILED',TRUE,FALSE);
INSERT INTO quantum_device_operation_log VALUES ('OP003','QD102','EXP003','2024-03-20 11:00','2024-03-20 12:00',127,0.992,0.003,10.0,25.0,'CAL2024C','QControl','X90-Y90-Entangle','HASH003','SUCCESS','', 'OPR003',TRUE,'Long‑duration coherence test',36,'NAS003','ACTIVE',FALSE,TRUE);
