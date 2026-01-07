-- Optical microscope usage tracking log
CREATE TABLE optical_microscope_usage_log (
  usage_id TEXT NOT NULL,
  microscope_id TEXT,
  user_id TEXT,
  session_start TIMESTAMP,
  session_end TIMESTAMP,
  magnification_level TEXT,
  illumination_type TEXT,
  objective_type TEXT,
  camera_model TEXT,
  image_format TEXT,
  images_captured INTEGER,
  notes TEXT,
  maintenance_flag TEXT,
  firmware_version TEXT,
  software_version TEXT,
  lab_location TEXT,
  sample_id TEXT,
  experiment_id TEXT,
  operator_shift TEXT,
  data_storage_path TEXT,
  PRIMARY KEY (usage_id)
);

INSERT INTO optical_microscope_usage_log VALUES ('omul001','mic001','usr001','2024-01-10 09:00:00','2024-01-10 10:30:00','100x','LED','PlanApo','camA','tiff',120,'Routine imaging','v1.2','s1.3','LabA','smp001','exp001','ShiftA','/data/omul001');
INSERT INTO optical_microscope_usage_log VALUES ('omul002','mic002','usr002','2024-01-11 13:15:00','2024-01-11 14:45:00','60x','Halogen','PlanFluor','camB','jpeg',85,'Fluorescence assay','v1.3','s1.4','LabB','smp002','exp002','ShiftB','/data/omul002');
INSERT INTO optical_microscope_usage_log VALUES ('omul003','mic001','usr003','2024-01-12 08:00:00','2024-01-12 09:20:00','40x','LED','PlanApo','camA','tiff',60,'Cell count','v1.2','s1.3','LabA','smp003','exp003','ShiftA','/data/omul003');

-- Ion chromatography run details
CREATE TABLE ion_chromatography_run (
  run_id TEXT NOT NULL,
  instrument_id TEXT,
  operator_id TEXT,
  run_date DATE,
  sample_id TEXT,
  method_name TEXT,
  column_type TEXT,
  guard_column TEXT,
  mobile_phase TEXT,
  flow_rate REAL,
  injection_volume REAL,
  detection_mode TEXT,
  ion_type TEXT,
  concentration_ppm REAL,
  calibration_curve_id TEXT,
  run_time_minutes REAL,
  temperature_celsius REAL,
  pressure_bar REAL,
  data_file_path TEXT,
  quality_flag TEXT,
  PRIMARY KEY (run_id)
);

INSERT INTO ion_chromatography_run VALUES ('icr001','icInst01','op001','2024-02-01','smp101','StandardMethod','AnionExchange','GuardA','EluentA',1.0,20.0,'Conductivity','Cl',5.2,'cal001',15.5,30.0,1.2,'/data/icr001','PASS');
INSERT INTO ion_chromatography_run VALUES ('icr002','icInst02','op002','2024-02-02','smp102','CationMethod','CationExchange','GuardB','EluentB',0.8,25.0,'ASV','Na',3.8,'cal002',12.0,28.0,1.0,'/data/icr002','PASS');
INSERT INTO ion_chromatography_run VALUES ('icr003','icInst01','op003','2024-02-03','smp103','TraceMethod','AnionExchange','GuardA','EluentC',1.2,15.0,'Conductivity','NO3',0.9,'cal003',18.2,32.0,1.3,'/data/icr003','FAIL');

-- Thermal analyzer batch records
CREATE TABLE thermal_analyzer_batch (
  batch_id TEXT NOT NULL,
  analyzer_id TEXT,
  analyst_id TEXT,
  start_date DATE,
  end_date DATE,
  sample_set TEXT,
  heating_rate_c_per_min REAL,
  cooling_rate_c_per_min REAL,
  atmosphere TEXT,
  gas_flow_rate_sccm REAL,
  max_temperature_c REAL,
  min_temperature_c REAL,
  sample_weight_mg REAL,
  tg_curve_id TEXT,
  dtg_curve_id TEXT,
  data_file_path TEXT,
  analysis_type TEXT,
  result_summary TEXT,
  quality_check TEXT,
  notes TEXT,
  PRIMARY KEY (batch_id)
);

INSERT INTO thermal_analyzer_batch VALUES ('tab001','ta01','an001','2024-03-01','2024-03-02','setA',10.0,5.0,'Nitrogen',50.0,600.0,30.0,5.0,'tg001','dtg001','/data/tab001','TGA','Decomposition observed','PASS','No issues');
INSERT INTO thermal_analyzer_batch VALUES ('tab002','ta02','an002','2024-03-05','2024-03-06','setB',20.0,10.0,'Argon',60.0,800.0,40.0,8.0,'tg002','dtg002','/data/tab002','DSC','Phase transition detected','PASS','Cooling rate adjusted');
INSERT INTO thermal_analyzer_batch VALUES ('tab003','ta01','an003','2024-03-10','2024-03-11','setC',15.0,7.5,'Helium',55.0,750.0,35.0,6.5,'tg003','dtg003','/data/tab003','TGA/DSC','Mixed events','FAIL','Instrument error flagged');

-- Nanoparticle synthesis process documentation
CREATE TABLE nanoparticle_synthesis_process (
  process_id TEXT NOT NULL,
  synthesis_batch_id TEXT,
  chemist_id TEXT,
  start_timestamp TIMESTAMP,
  end_timestamp TIMESTAMP,
  precursor_a TEXT,
  precursor_b TEXT,
  solvent TEXT,
  catalyst TEXT,
  reaction_temperature_c REAL,
  reaction_pressure_bar REAL,
  stirring_speed_rpm INTEGER,
  addition_rate_ml_per_min REAL,
  reflux_time_minutes REAL,
  purification_method TEXT,
  particle_size_nm REAL,
  zeta_potential_mv REAL,
  concentration_mg_per_ml REAL,
  safety_hazard_level TEXT,
  documentation_path TEXT,
  PRIMARY KEY (process_id)
);

INSERT INTO nanoparticle_synthesis_process VALUES ('nsp001','batchA','chem001','2024-04-01 09:00:00','2024-04-01 15:30:00','PrecA','PrecB','Ethanol','CatX',80.0,1.0,500,10.0,120.0,'Centrifugation',50.2,-25.0,2.5,'Medium','/docs/nsp001');
INSERT INTO nanoparticle_synthesis_process VALUES ('nsp002','batchB','chem002','2024-04-05 10:15:00','2024-04-05 16:45:00','PrecC','PrecD','Water','CatY',95.0,0.8,600,12.5,90.0,'Dialysis',30.8,-15.5,3.0,'Low','/docs/nsp002');
INSERT INTO nanoparticle_synthesis_process VALUES ('nsp003','batchC','chem003','2024-04-10 08:30:00','2024-04-10 14:00:00','PrecE','PrecF','Isopropanol','CatZ',70.0,1.2,450,8.0,150.0,'Filtration',75.5,-30.0,1.8,'High','/docs/nsp003');

-- Lab ventilation filter change log (extended)
CREATE TABLE lab_ventilation_filter_change_log_ext (
  change_id TEXT NOT NULL,
  ventilation_unit_id TEXT,
  technician_id TEXT,
  change_date DATE,
  filter_type TEXT,
  filter_serial TEXT,
  pre_change_pressure_pa REAL,
  post_change_pressure_pa REAL,
  airflow_cfm REAL,
  humidity_percent REAL,
  temperature_celsius REAL,
  inspection_notes TEXT,
  part_number TEXT,
  manufacturer TEXT,
  service_contract_id TEXT,
  downtime_minutes INTEGER,
  next_scheduled_change DATE,
  compliance_status TEXT,
  verification_signature TEXT,
  comments TEXT,
  PRIMARY KEY (change_id)
);

INSERT INTO lab_ventilation_filter_change_log_ext VALUES ('vfl001','vent01','tech001','2024-05-01','HEPA','SN001',120.0,200.0,350.0,45.0,22.0,'All clear','PN100','VentCorp','sc001',30,'2025-05-01','Compliant','verif001','Routine replace');
INSERT INTO lab_ventilation_filter_change_log_ext VALUES ('vfl002','vent02','tech002','2024-05-15','ULPA','SN002',110.0,190.0,340.0,48.0,21.5','Minor wear','PN101','AirFlowInc','sc002',45,'2025-05-15','Compliant','verif002','Replaced due to leak');
INSERT INTO lab_ventilation_filter_change_log_ext VALUES ('vfl003','vent01','tech003','2024-06-10','HEPA','SN003',115.0,195.0,345.0,46.0,22.5','Filter ok','PN102','VentCorp','sc001',25,'2025-06-10','Compliant','verif003','No issues');

-- Chemical process flow diagram archive
CREATE TABLE chemical_process_flow_diagram (
  diagram_id TEXT NOT NULL,
  process_name TEXT,
  version INTEGER,
  author_id TEXT,
  creation_date DATE,
  last_modified DATE,
  diagram_format TEXT,
  file_path TEXT,
  number_of_units INTEGER,
  total_mass_balance REAL,
  temperature_range_c TEXT,
  pressure_range_bar TEXT,
  solvent_system TEXT,
  catalyst_used TEXT,
  control_strategy TEXT,
  safety_notes TEXT,
  approval_status TEXT,
  reviewer_id TEXT,
  change_log TEXT,
  associated_batch_id TEXT,
  PRIMARY KEY (diagram_id)
);

INSERT INTO chemical_process_flow_diagram VALUES ('cpfd001','Polymerization',1,'auth001','2023-12-01','2024-01-15','SVG','/diagrams/cpfd001.svg',12,1500.0,'20-120','1-10','Water','CatA','PID','Check vent','Approved','rev001','Initial release','batchP001');
INSERT INTO chemical_process_flow_diagram VALUES ('cpfd002','SolventExtraction',2,'auth002','2023-11-05','2024-02-20','PDF','/diagrams/cpfd002.pdf',9,800.0,'30-90','0.5-5','Hexane','CatB','OnOff','Wear gloves','Pending','rev002','Updated valve specs','batchS002');
INSERT INTO chemical_process_flow_diagram VALUES ('cpfd003','CatalyticCracking',1,'auth003','2024-01-10','2024-03-01','DWG','/diagrams/cpfd003.dwg',15,2000.0,'150-500','5-20','Nitrogen','CatC','Advanced','Monitor temperature','Approved','rev003','Added pressure transducer','batchC003');

-- Spectral peak annotation log
CREATE TABLE spectral_peak_annotation_log (
  annotation_id TEXT NOT NULL,
  dataset_id TEXT,
  analyst_id TEXT,
  annotation_date DATE,
  instrument_id TEXT,
  peak_number INTEGER,
  mz_value REAL,
  intensity_value REAL,
  charge_state INTEGER,
  isotope_pattern TEXT,
  fragmentation_method TEXT,
  assigned_compound TEXT,
  confidence_score REAL,
  notes TEXT,
  validation_status TEXT,
  reviewer_id TEXT,
  correction_applied TEXT,
  retention_time_min REAL,
  acquisition_mode TEXT,
  linked_publication_id TEXT,
  PRIMARY KEY (annotation_id)
);

INSERT INTO spectral_peak_annotation_log VALUES ('spa001','ds001','analyst01','2024-07-01','spec01',1,150.07,120000,1,'PatternA','CID','CompoundX',0.95,'Clear peak','Validated','revA','None',5.2,'Positive','pub001');
INSERT INTO spectral_peak_annotation_log VALUES ('spa002','ds002','analyst02','2024-07-05','spec02',2,200.15,85000,2,'PatternB','HCD','CompoundY',0.88,'Overlap with noise','ReviewPending','revB','Baseline correction',7.8,'Negative','pub002');
INSERT INTO spectral_peak_annotation_log VALUES ('spa003','ds003','analyst03','2024-07-10','spec01',3,250.30,95000,1,'PatternC','ETD','CompoundZ',0.92,'High confidence','Validated','revC','Deconvolution',10.1,'Positive','pub003');

-- Molecular dynamics simulation snapshot metadata
CREATE TABLE molecular_dynamics_simulation_snapshot (
  snapshot_id TEXT NOT NULL,
  simulation_id TEXT,
  timestep_ps REAL,
  snapshot_time_ps REAL,
  temperature_k REAL,
  pressure_bar REAL,
  energy_kj_mol REAL,
  rmsd_angstrom REAL,
  radius_of_gyration_angstrom REAL,
  box_dimensions_angstrom TEXT,
  solvent_model TEXT,
  force_field TEXT,
  integrator TEXT,
  constraints TEXT,
  neighbor_cutoff_angstrom REAL,
  electrostatics_method TEXT,
  snapshot_file_path TEXT,
  created_by TEXT,
  creation_timestamp TIMESTAMP,
  notes TEXT,
  PRIMARY KEY (snapshot_id)
);

INSERT INTO molecular_dynamics_simulation_snapshot VALUES ('mds001','simA',0.0,0.0,300.0,1.0,-12345.6,1.2,15.4,'100,100,100','TIP3P','CHARMM36','Verlet','SHAKE',10.0,'PME','/snapshots/mds001.pdb','userA','2024-08-01 08:00:00','Initial structure');
INSERT INTO molecular_dynamics_simulation_snapshot VALUES ('mds002','simA',1000.0,2.0,310.0,1.0,-12320.1,1.4,15.6,'100,100,100','TIP3P','CHARMM36','Verlet','SHAKE',10.0,'PME','/snapshots/mds002.pdb','userA','2024-08-01 08:10:00','Equilibrated');
INSERT INTO molecular_dynamics_simulation_snapshot VALUES ('mds003','simB',500.0,1.0,298.0,1.0,-12400.3,1.1,15.2,'120,120,120','SPC','AMBER99','Langevin','NONE',9.0,'ReactionField','/snapshots/mds003.pdb','userB','2024-08-02 09:30:00','Production run snapshot');

-- Bio sample storage audit
CREATE TABLE bio_sample_storage_audit (
  audit_id TEXT NOT NULL,
  storage_unit_id TEXT,
  auditor_id TEXT,
  audit_date DATE,
  temperature_c REAL,
  humidity_percent REAL,
  freezer_model TEXT,
  backup_power_status TEXT,
  alarm_triggered TEXT,
  deviation_description TEXT,
  corrective_action TEXT,
  next_audit_scheduled DATE,
  compliance_status TEXT,
  notes TEXT,
  sample_type_distribution TEXT,
  total_samples INTEGER,
  freezers_in_operation INTEGER,
  maintenance_due DATE,
  last_service_date DATE,
  audit_report_path TEXT,
  PRIMARY KEY (audit_id)
);

INSERT INTO bio_sample_storage_audit VALUES ('bssa001','freezerA','aud001','2024-09-01',-80.0,35.0,'ModelX','OK','No','All within range','N/A','2025-03-01','Compliant','Routine audit','BloodDNA',1200,4,'2024-12-01','2024-06-15','/reports/bssa001.pdf');
INSERT INTO bio_sample_storage_audit VALUES ('bssa002','freezerB','aud002','2024-09-15',-75.0,38.0,'ModelY','OK','Yes','Temp spike 5C','Recalibrated sensor','2025-03-15','Conditional','Temperature deviation','PlasmaSerum',800,3,'2025-01-10','2024-07-20','/reports/bssa002.pdf');
INSERT INTO bio_sample_storage_audit VALUES ('bssa003','freezerC','aud003','2024-10-01',-78.0,36.5,'ModelZ','OK','No','Minor humidity rise','Adjusted humidifier','2025-04-01','Compliant','Humidity within limits','TissueSamples',950,2,'2025-02-20','2024-08-05','/reports/bssa003.pdf');

-- Environmental noise source registry log
CREATE TABLE environmental_noise_source_registry_log (
  source_id TEXT NOT NULL,
  site_id TEXT,
  source_type TEXT,
  description TEXT,
  installation_date DATE,
  last_calibration_date DATE,
  calibration_interval_days INTEGER,
  measured_db_a REAL,
  measured_db_b REAL,
  frequency_range_hz TEXT,
  mitigation_measures TEXT,
  responsible_party TEXT,
  contact_email TEXT,
  status TEXT,
  notes TEXT,
  latitude REAL,
  longitude REAL,
  elevation_m REAL,
  regulatory_compliance TEXT,
  record_update_timestamp TIMESTAMP,
  PRIMARY KEY (source_id)
);

INSERT INTO environmental_noise_source_registry_log VALUES ('nsrl001','siteA','HVAC','Main building ventilation','2023-05-10','2024-05-09',365,65.2,63.8,'20-20000','Acoustic dampers','FacilityMgr','facmgr@example.com','Active','No issues',40.7128,-74.0060,10,'Compliant','2024-11-01 12:00:00');
INSERT INTO environmental_noise_source_registry_log VALUES ('nsrl002','siteB','Generator','Backup power generator','2022-08-15','2024-02-20',180,78.5,77.0,'50-15000','Enclosure','OpsLead','opslead@example.com','Active','Noise exceeds limits during tests',34.0522,-118.2437,30,'Pending','2024-11-02 09:30:00');
INSERT INTO environmental_noise_source_registry_log VALUES ('nsrl003','siteC','Construction','Nearby roadwork','2024-01-01','2024-01-01',0,85.0,84.5,'100-12000','Barriers','ProjectMgr','projmgr@example.com','Temporary','Monitoring until completion',51.5074,-0.1278,15,'Exempt','2024-11-03 15:45:00');

-- Computational resource quota policy definitions
CREATE TABLE computational_resource_quota_policy (
  policy_id TEXT NOT NULL,
  resource_type TEXT,
  max_allocation_units INTEGER,
  allocation_period_days INTEGER,
  user_group TEXT,
  enforcement_mechanism TEXT,
  penalty_action TEXT,
  notification_email TEXT,
  effective_date DATE,
  expiration_date DATE,
  description TEXT,
  approval_status TEXT,
  approved_by TEXT,
  last_review_date DATE,
  revision_number INTEGER,
  cpu_limit INTEGER,
  gpu_limit INTEGER,
  memory_gb_limit INTEGER,
  storage_tb_limit INTEGER,
  priority_level TEXT,
  PRIMARY KEY (policy_id)
);

INSERT INTO computational_resource_quota_policy VALUES ('crqp001','CPU','2000','30','researchers','HardLimit','JobTermination','admin@example.com','2024-01-01','2025-01-01','Standard CPU quota','Approved','admin01','2024-06-01',1,2000,0,256,10,'Medium');
INSERT INTO computational_resource_quota_policy VALUES ('crqp002','GPU','500','30','ml_team','SoftLimit','JobThrottling','mladmin@example.com','2024-02-01','2025-02-01','GPU quota for ML','Approved','admin02','2024-07-01',2,0,500,512,20,'High');
INSERT INTO computational_resource_quota_policy VALUES ('crqp003','Storage','5000','365','all_users','HardLimit','AccessRevocation','storageadmin@example.com','2024-03-01','2026-03-01','Annual storage quota','Pending','admin03','2024-08-01',1,0,0,0,5000,'Low');

-- Lab robotics arm task definition repository
CREATE TABLE lab_robotic_arm_task_definition (
  task_def_id TEXT NOT NULL,
  task_name TEXT,
  version INTEGER,
  created_by TEXT,
  creation_timestamp TIMESTAMP,
  description TEXT,
  required_tool TEXT,
  max_execution_time_sec INTEGER,
  safety_level TEXT,
  supported_materials TEXT,
  calibration_required TEXT,
  calibration_procedure_ref TEXT,
  resource_dependencies TEXT,
  estimated_energy_kwh REAL,
  priority_class TEXT,
  retry_policy TEXT,
  notification_email TEXT,
  last_modified TIMESTAMP,
  deprecation_status TEXT,
  documentation_url TEXT,
  PRIMARY KEY (task_def_id)
);

INSERT INTO lab_robotic_arm_task_definition VALUES ('rtd001','Sample_Transfer','1','engineer01','2024-04-01 08:00:00','Transfer samples between stations','Gripper','300','Medium','Plastic,Glass','Yes','/calib/gripper_v1','Arm,Camera','0.5','High','ExponentialBackoff','ops@example.com','2024-09-01 12:00:00','Active','http://docs/lab/rt001');
INSERT INTO lab_robotic_arm_task_definition VALUES ('rtd002','Plate_Sealing','2','engineer02','2024-05-15 09:30:00','Seal microtiter plates','Sealer','180','Low','Polystyrene','No','', 'Arm,Sealer','0.3','Medium','Linear','labtech@example.com','2024-09-10 09:00:00','Active','http://docs/lab/rt002');
INSERT INTO lab_robotic_arm_task_definition VALUES ('rtd003','Reagent_Dispensing','1','engineer03','2024-06-20 10:15:00','Dispense reagents into wells','Pipette','240','High','Liquid','Yes','/calib/pipette_v2','Arm,Pipette,Sensor','0.7','Critical','ImmediateRetry','labops@example.com','2024-09-15 14:45:00','Active','http://docs/lab/rt003');

-- Facility air quality monitoring station registry
CREATE TABLE facility_air_quality_monitoring_station_registry (
  station_id TEXT NOT NULL,
  location_description TEXT,
  floor INTEGER,
  building TEXT,
  installation_date DATE,
  sensor_type TEXT,
  measurable_parameters TEXT,
  calibration_date DATE,
  calibration_certificate_id TEXT,
  maintenance_interval_days INTEGER,
  last_maintenance_date DATE,
  data_endpoint_url TEXT,
  network_connectivity TEXT,
  power_source TEXT,
  status TEXT,
  owner_contact TEXT,
  latitude REAL,
  longitude REAL,
  altitude_m REAL,
  notes TEXT,
  PRIMARY KEY (station_id)
);

INSERT INTO facility_air_quality_monitoring_station_registry VALUES ('aqms001','Main lobby','1','ScienceBlock','2023-01-15','PM2.5','PM2.5,CO2,Temp','2024-01-10','cert001',180,'2024-07-01','http://sensors/aqms001','WiFi','Mains','Active','facilities@example.com',40.7128,-74.0060,5,'No issues');
INSERT INTO facility_air_quality_monitoring_station_registry VALUES ('aqms002','Lab B3','2','LabWing','2023-06-20','VOC','VOC,Temp,Humidity','2024-02-20','cert002',365,'2024-06-20','http://sensors/aqms002','Ethernet','Mains','Active','labmanager@example.com',34.0522,-118.2437,10,'Routine check');
INSERT INTO facility_air_quality_monitoring_station_registry VALUES ('aqms003','Chemical storage','B1','Chemistry','2024-03-05','NOx','NO,NO2,Temp','2024-03-05','cert003',90,'2024-08-05','http://sensors/aqms003','Cellular','Battery','Active','safety@example.com',51.5074,-0.1278,15,'Battery replacement due');