-- Optical fiber testing log (records of fiber optic test events)
CREATE TABLE optical_fiber_testing_log (
  test_id TEXT PRIMARY KEY,
  fiber_id TEXT NOT NULL,
  test_date TEXT NOT NULL,
  tester_name TEXT,
  location_code TEXT,
  wavelength_nm INTEGER,
  attenuation_db_km REAL,
  dispersion_ps_nm_km REAL,
  return_loss_db REAL,
  connector_type TEXT,
  splice_type TEXT,
  test_equipment_id TEXT,
  firmware_version TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  voltage_v REAL,
  current_ma REAL,
  test_status TEXT,
  notes TEXT,
  reviewed_by TEXT,
  review_date TEXT,
  calibration_id TEXT,
  compliance_flag TEXT
);

INSERT INTO optical_fiber_testing_log VALUES
('TF001','FIB001','2024-11-01','Alice Smith','LOC01',1310,0.35,4.2,55.0,'LC','mechanical','EQ001','v1.2',22.5,45.0,3.3,120,'PASS','Initial deployment','Bob Jones','2024-11-02','CAL001','Y');

INSERT INTO optical_fiber_testing_log VALUES
('TF002','FIB002','2024-11-03','Carlos Ruiz','LOC02',1550,0.28,3.9,58.0,'SC','fusion','EQ002','v1.3',21.0,40.0,3.0,110,'PASS','Routine check','Dana Lee','2024-11-04','CAL002','Y');

INSERT INTO optical_fiber_testing_log VALUES
('TF003','FIB003','2024-11-05','Emily Zhao','LOC03',1490,0.41,5.1,52.0,'LC','mechanical','EQ003','v1.1',23.0,48.0,3.5,130,'FAIL','High loss observed','Frank Miller','2024-11-06','CAL003','N');

-- Laser system maintenance (maintenance activities for laser devices)
CREATE TABLE laser_system_maintenance (
  maintenance_id TEXT PRIMARY KEY,
  laser_id TEXT NOT NULL,
  maintenance_date TEXT NOT NULL,
  technician_name TEXT,
  maintenance_type TEXT,
  cavity_alignment_status TEXT,
  pump_power_w REAL,
  output_power_w REAL,
  wavelength_nm INTEGER,
  pulse_width_ns REAL,
  repetition_rate_hz REAL,
  safety_interlock_status TEXT,
  coolant_flow_l_min REAL,
  coolant_temp_c REAL,
  mirror_cleaning TEXT,
  crystal_condition TEXT,
  firmware_version TEXT,
  notes TEXT,
  next_due_date TEXT,
  approved_by TEXT,
  approval_date TEXT,
  cost_usd REAL,
  downtime_minutes INTEGER,
  compliance_flag TEXT
);

INSERT INTO laser_system_maintenance VALUES
('LM001','LAS001','2024-10-20','Greg Patel','annual','OK',350.0,120.0,1064,10.0,2000,'ENGAGED',15.0,18.5,'YES','GOOD','v3.0','Replaced pump diode','2025-10-20','Laura Kim','2024-10-21',2500.00,120,'Y');

INSERT INTO laser_system_maintenance VALUES
('LM002','LAS002','2024-11-10','Helen Wu','preventive','OK',420.0,150.0,532,5.0,1500,'ENGAGED',14.5,19.0,'NO','EXCELLENT','v3.1','Checked alignment','2025-11-10','Mark Doran','2024-11-11',2800.00,90,'Y');

INSERT INTO laser_system_maintenance VALUES
('LM003','LAS003','2024-11-15','Ian Brooks','repair','ADJUSTED',300.0,80.0,808,12.0,1800,'DISENGAGED',13.0,20.0,'YES','FAIR','v2.9','Replaced cracked crystal','2024-12-15','Nina Sato','2024-11-16',3200.00,210,'N');

-- Nanoparticle characterization experiment (records of characterization runs)
CREATE TABLE nanoparticle_characterization_experiment (
  experiment_id TEXT PRIMARY KEY,
  nanoparticle_batch_id TEXT NOT NULL,
  run_date TEXT NOT NULL,
  operator_name TEXT,
  instrument_id TEXT,
  technique TEXT,
  size_nm REAL,
  size_distribution_percent REAL,
  zeta_potential_mv REAL,
  surface_area_m2_g REAL,
  porosity_percent REAL,
  composition TEXT,
  doping_element TEXT,
  doping_concentration_ppm REAL,
  temperature_c REAL,
  pressure_pa REAL,
  gas_flow_sccm REAL,
  measurement_time_min REAL,
  data_file_path TEXT,
  calibration_id TEXT,
  notes TEXT,
  approval_status TEXT,
  approved_by TEXT,
  approval_date TEXT
);

INSERT INTO nanoparticle_characterization_experiment VALUES
('NC001','NB001','2024-09-05','Olivia Reed','INST001','DLS',85.2,12.5,-25.0,45.3,8.0,'SiO2','Fe',1500.0,25.0,101325,0.0,30.0,'/data/nc001.csv','CAL001','Initial batch','APPROVED','Dr Kim','2024-09-06');

INSERT INTO nanoparticle_characterization_experiment VALUES
('NC002','NB002','2024-09-12','Peter Gomez','INST002','BET','120.4,15.0,-30.0,60.1,10.0','TiO2','Au',2000.0,22.0,101000,0.0,45.0,'/data/nc002.csv','CAL002','High surface area','APPROVED','Dr Lee','2024-09-13');

INSERT INTO nanoparticle_characterization_experiment VALUES
('NC003','NB003','2024-09-20','Quincy Zhou','INST003','TEM','50.0,5.0,NULL,30.0,5.0','ZnO','None',0.0,20.0,100800,0.0,60.0,'/data/nc003.csv','CAL003','Morphology study','PENDING','', '');

-- Chemical process simulation meta (metadata for simulation runs)
CREATE TABLE chemical_process_simulation_meta (
  simulation_id TEXT PRIMARY KEY,
  process_name TEXT NOT NULL,
  version TEXT,
  creator_name TEXT,
  creation_date TEXT,
  solver_type TEXT,
  mesh_size REAL,
  time_step_s REAL,
  total_time_s REAL,
  convergence_tolerance REAL,
  temperature_profile TEXT,
  pressure_profile TEXT,
  feed_composition TEXT,
  catalyst_type TEXT,
  catalyst_load_kg REAL,
  reaction_rate_constant REAL,
  activation_energy_kj_mol REAL,
  heat_of_reaction_kj_mol REAL,
  output_file_path TEXT,
  cpu_cores INTEGER,
  memory_gb REAL,
  wallclock_time_min REAL,
  status TEXT,
  notes TEXT,
  last_modified TEXT,
  verified_by TEXT,
  verification_date TEXT
);

INSERT INTO chemical_process_simulation_meta VALUES
('SIM001','Ammonia_Synthesis','v1.0','Rita Novak','2024-08-01','FiniteVolume',0.02,0.001,3600,1e-06,'linear','linear','N2:78,H2:22','Fe','0.5',0.8,120.0,-100.0,'/sim/output1.dat',16,32.0,180.0,'COMPLETED','Baseline run','2024-08-02','Dr Hall','2024-08-03');

INSERT INTO chemical_process_simulation_meta VALUES
('SIM002','Methanol_Production','v2.1','Samir Patel','2024-08-15','CFD',0.015,0.0005,5400,5e-07,'step','step','CO:30,H2:70','CuZn','0.3',1.2,110.0,-85.0,'/sim/output2.dat',24,64.0,240.0,'COMPLETED','Optimized catalyst','2024-08-16','Dr Wu','2024-08-17');

INSERT INTO chemical_process_simulation_meta VALUES
('SIM003','Ethylene_Oxidation','v0.9','Tara Singh','2024-09-01','LatticeBoltzmann',0.025,0.002,7200,2e-06,'ramp','ramp','C2H4:100','Pt','0.2',0.5,130.0,-95.0,'/sim/output3.dat',32,128.0,300.0,'RUNNING','High temperature case','2024-09-02','', '');

-- Bioinformatics workflow run (execution records for bioinformatics pipelines)
CREATE TABLE bioinformatics_workflow_run (
  run_id TEXT PRIMARY KEY,
  workflow_name TEXT NOT NULL,
  version TEXT,
  executor_user TEXT,
  start_time TEXT,
  end_time TEXT,
  compute_cluster TEXT,
  node_count INTEGER,
  cpu_per_node INTEGER,
  memory_gb_per_node REAL,
  input_dataset_id TEXT,
  reference_genome_id TEXT,
  analysis_type TEXT,
  parameters_json TEXT,
  status TEXT,
  exit_code INTEGER,
  log_file_path TEXT,
  output_dir TEXT,
  qc_passed TEXT,
  reported_by TEXT,
  report_date TEXT,
  notes TEXT,
  reviewed_by TEXT,
  review_date TEXT,
  compliance_flag TEXT,
  archive_location TEXT
);

INSERT INTO bioinformatics_workflow_run VALUES
('BFW001','RNA_Seq_Quant','1.2','alice.smith','2024-10-01 08:00:00','2024-10-01 12:30:00','clusterA',4,32,128.0,'DS001','GRCH38','quantification','{\"aligner\":\"STAR\",\"options\":\"--twopassMode Basic\"}','SUCCESS',0,'/logs/bfw001.log','/output/bfw001','Y','Dr Kim','2024-10-02','All samples processed','Dr Lee','2024-10-03','Y','/archive/bfw001');

INSERT INTO bioinformatics_workflow_run VALUES
('BFW002','Variant_Calling','2.0','bob.jones','2024-10-05 14:00:00','2024-10-05 20:45:00','clusterB',6,48,256.0,'DS002','GRCH37','variant','{\"caller\":\"GATK\",\"ploidy\":2}','SUCCESS',0,'/logs/bfw002.log','/output/bfw002','Y','Dr Patel','2024-10-06','Passed all QC metrics','Dr Patel','2024-10-07','Y','/archive/bfw002');

INSERT INTO bioinformatics_workflow_run VALUES
('BFW003','Metagenome_Assembly','0.9','carol.lee','2024-10-10 09:15:00','2024-10-11 03:20:00','clusterC',8,64,512.0,'DS003','None','assembly','{\"assembler\":\"MEGAHIT\",\"kmer_sizes\":\"21,33,55\"}','FAILED',1,'/logs/bfw003.log','/output/bfw003','N','Dr Chen','2024-10-12','Insufficient memory','Dr Chen','2024-10-13','N','');

-- Environmental air quality index (daily AQI records for monitoring stations)
CREATE TABLE environmental_air_quality_index (
  aqi_record_id TEXT PRIMARY KEY,
  station_id TEXT NOT NULL,
  record_date TEXT NOT NULL,
  aqi_overall INTEGER,
  pm25_ug_m3 REAL,
  pm10_ug_m3 REAL,
  o3_ppb REAL,
  no2_ppb REAL,
  so2_ppb REAL,
  co_ppm REAL,
  temperature_c REAL,
  humidity_percent REAL,
  wind_speed_m_s REAL,
  wind_direction_deg INTEGER,
  precipitation_mm REAL,
  measurement_method TEXT,
  data_source TEXT,
  quality_flag TEXT,
  analyst_name TEXT,
  review_date TEXT,
  notes TEXT,
  calibration_id TEXT,
  sensor_status TEXT,
  maintenance_due_date TEXT,
  region_code TEXT,
  urban_rural_indicator TEXT
);

INSERT INTO environmental_air_quality_index VALUES
('AQI001','ST001','2024-10-15',42,12.5,25.3,30.2,15.0,5.0,0.4,22.0,55.0,3.2,180,0.0,'beta','EPA','Y','Laura Kim','2024-10-16','Good day','CAL001','OPERATIONAL','2024-12-01','R01','U');

INSERT INTO environmental_air_quality_index VALUES
('AQI002','ST002','2024-10-15',85,35.0,80.0,70.5,45.0,12.0,0.9,18.5,70.0,2.5,90,0.2,'gamma','StateAgency','Y','Mark Doran','2024-10-16','Elevated PM levels','CAL002','OPERATIONAL','2025-01-15','R02','U');

INSERT INTO environmental_air_quality_index VALUES
('AQI003','ST003','2024-10-15',120,60.0,150.0,110.0,80.0,25.0,1.5,16.0,80.0,4.0,270,0.5,'alpha','LocalDept','N','Nina Sato','2024-10-16','Unhealthy air','CAL003','MAINTENANCE_REQUIRED','2024-11-10','R03','R');

-- Facility HVAC zone performance (performance metrics for HVAC zones)
CREATE TABLE facility_hvac_zone_performance (
  hvac_perf_id TEXT PRIMARY KEY,
  zone_id TEXT NOT NULL,
  measurement_timestamp TEXT NOT NULL,
  supply_air_temp_c REAL,
  return_air_temp_c REAL,
  outdoor_air_temp_c REAL,
  airflow_cfm REAL,
  fan_speed_rpm REAL,
  heating_power_kw REAL,
  cooling_power_kw REAL,
  humidity_supply_percent REAL,
  humidity_return_percent REAL,
  co2_ppm REAL,
  filter_pressure_drop_pa REAL,
  energy_consumption_kwh REAL,
  operational_mode TEXT,
  fault_code TEXT,
  maintenance_flag TEXT,
  technician_name TEXT,
  maintenance_date TEXT,
  notes TEXT,
  data_source TEXT,
  baseline_temp_c REAL,
  baseline_humidity_percent REAL,
  efficiency_ratio REAL,
  compliance_status TEXT,
  last_calibration_date TEXT
);

INSERT INTO facility_hvac_zone_performance VALUES
('HV001','ZONE_A1','2024-10-20 08:00:00',21.5,19.0,15.0,3500,1200,45.0,30.0,45.0,40.0,600,120.5,150.0,'COOLING','','N','Mike Turner','2024-10-25','Normal operation','SCADA',22.0,50.0,0.92,'Y','2024-09-30');

INSERT INTO facility_hvac_zone_performance VALUES
('HV002','ZONE_B2','2024-10-20 08:05:00',24.0,20.5,17.0,4000,1300,55.0,40.0,48.0,42.0,620,130.0,170.0,'HEATING','F01','Y','Sara Lee','2024-10-28','Fan speed high','SCADA',23.5,55.0,0.88,'Y','2024-09-28');

INSERT INTO facility_hvac_zone_performance VALUES
('HV003','ZONE_C3','2024-10-20 08:10:00',19.0,16.5,14.5,3000,1100,30.0,20.0,42.0,38.0,580,110.0,130.0,'ECONOMY','','N','Tom Baker','2024-11-01','Check filter pressure','SCADA',20.0,48.0,0.95','N','2024-09-25');

-- Quantum device cooling cycle (records of cooling cycles for quantum hardware)
CREATE TABLE quantum_device_cooling_cycle (
  cycle_id TEXT PRIMARY KEY,
  device_id TEXT NOT NULL,
  start_timestamp TEXT NOT NULL,
  end_timestamp TEXT,
  target_temperature_mk REAL,
  achieved_temperature_mk REAL,
  cooldown_rate_mk_per_min REAL,
  helium_flow_l_min REAL,
  compressor_power_kw REAL,
  vibration_level_um REAL,
  magnetic_field_ug REAL,
  pressure_pa REAL,
  temperature_stability_mk REAL,
  cycle_status TEXT,
  error_code TEXT,
  operator_name TEXT,
  safety_interlock_status TEXT,
  notes TEXT,
  maintenance_required TEXT,
  maintenance_scheduled_date TEXT,
  calibration_id TEXT,
  data_logger_id TEXT,
  ambient_temperature_c REAL,
  ambient_humidity_percent REAL,
  energy_consumption_kwh REAL,
  compliance_flag TEXT,
  last_reviewed_by TEXT,
  review_date TEXT
);

INSERT INTO quantum_device_cooling_cycle VALUES
('QC001','QD001','2024-09-30 06:00:00','2024-09-30 07:15:00',10.0,11.2,0.9,25.0,5.5,0.2,0.1,101325,0.05,'COMPLETED','', 'Anna Brooks','ENGAGED','Initial cool down','N','2024-12-01','CAL001','DL001',22.0,45.0,12.0,'Y','Dr Kim','2024-09-30');

INSERT INTO quantum_device_cooling_cycle VALUES
('QC002','QD002','2024-10-05 14:00:00','2024-10-05 15:45:00',8.0,8.5,0.8,30.0,6.0,0.15,0.12,101300,0.04,'COMPLETED','', 'Brian Young','ENGAGED','Routine cycle','N','2025-01-10','CAL002','DL002',20.0,40.0,14.5,'Y','Dr Lee','2024-10-05');

INSERT INTO quantum_device_cooling_cycle VALUES
('QC003','QD003','2024-10-12 22:00:00',NULL,12.0,NULL,NULL,20.0,5.0,0.3,0.2,101400,NULL,'FAILED','E03','Carlos Ruiz','DISENGAGED','Temperature not reached','Y','2024-11-15','CAL003','DL003',18.0,55.0,10.0,'N','Dr Patel','2024-10-13');

-- Spacecraft payload analysis (analysis results for payload data)
CREATE TABLE spacecraft_payload_analysis (
  analysis_id TEXT PRIMARY KEY,
  mission_id TEXT NOT NULL,
  payload_id TEXT NOT NULL,
  analysis_date TEXT NOT NULL,
  analyst_name TEXT,
  data_product_type TEXT,
  spectral_range_nm TEXT,
  spatial_resolution_m REAL,
  temporal_resolution_s REAL,
  signal_to_noise_ratio REAL,
  calibration_version TEXT,
  processing_algorithm TEXT,
  processing_version TEXT,
  quality_flag TEXT,
  anomaly_detected TEXT,
  anomaly_type TEXT,
  anomaly_severity TEXT,
  comments TEXT,
  report_file_path TEXT,
  data_archive_location TEXT,
  validation_status TEXT,
  validated_by TEXT,
  validation_date TEXT,
  version_number INTEGER,
  retention_policy_years INTEGER,
  encryption_status TEXT,
  data_access_level TEXT,
  export_format TEXT,
  checksum_sha256 TEXT
);

INSERT INTO spacecraft_payload_analysis VALUES
('PA001','MSN001','PLD001','2024-08-20','Laura Kim','Imaging','400-700','0.5',0.0,45.2,'v1.0','FFT','v2.1','Y','N','','','Clear sky observation','/reports/pa001.pdf','/archive/pa001','APPROVED','Dr Lee','2024-08-21',1,10,'ENABLED','RESEARCH','TIFF','ABCDEF1234567890ABCDEF1234567890ABCDEF1234567890ABCDEF1234567890');

INSERT INTO spacecraft_payload_analysis VALUES
('PA002','MSN002','PLD002','2024-09-05','Mark Doran','Spectroscopy','200-400','0.0',0.1,30.5,'v1.2','Wavelet','v1.5','Y','Y','Radiation Spike','HIGH','Handled in post-processing','/reports/pa002.pdf','/archive/pa002','PENDING','',NULL,2,5,'ENABLED','PUBLIC','CSV','1234567890ABCDEF1234567890ABCDEF1234567890ABCDEF1234567890ABCDEF');

INSERT INTO spacecraft_payload_analysis VALUES
('PA003','MSN003','PLD003','2024-09-18','Nina Sato','Radiometry','1000-2000','0.0',0.0,20.0,'v0.9','Kalman','v1.0','N','N','','','Data incomplete due to antenna outage','/reports/pa003.pdf','/archive/pa003','REJECTED','Dr Patel','2024-09-19',1,3,'DISABLED','RESTRICTED','HDF5','FEDCBA0987654321FEDCBA0987654321FEDCBA0987654321FEDCBA0987654321');

-- Archaeological site diagnostics (diagnostic data for excavation sites)
CREATE TABLE archaeological_site_diagnostics (
  diagnostic_id TEXT PRIMARY KEY,
  site_id TEXT NOT NULL,
  survey_date TEXT NOT NULL,
  lead_archaeologist TEXT,
  diagnostic_method TEXT,
  instrument_id TEXT,
  depth_m REAL,
  soil_moisture_percent REAL,
  magnetic_anomaly_nT REAL,
  electrical_resistivity_ohm_m REAL,
  ground_penetrating_radar_depth_m REAL,
  lidar_point_density_per_m2 REAL,
  photogrammetry_accuracy_mm REAL,
  artifact_density_per_m2 REAL,
  stratigraphy_notes TEXT,
  preservation_status TEXT,
  gps_latitude REAL,
  gps_longitude REAL,
  elevation_m REAL,
  weather_conditions TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  notes TEXT,
  data_file_path TEXT,
  analyst_name TEXT,
  review_status TEXT,
  reviewed_by TEXT,
  review_date TEXT,
  compliance_flag TEXT,
  archive_location TEXT
);

INSERT INTO archaeological_site_diagnostics VALUES
('DIAG001','SITE001','2024-07-10','Dr Helen Wu','GPR','INSTGPR01',2.5,12.0,45.0,150.0,3.0,0.8,5.0,0.3,'Fine silts, occasional charcoal','EXCELLENT',35.6895,139.6917,50.0,'Clear',22.5,55.0,'No significant anomalies','/data/diag001.gpr','Carlos Ruiz','APPROVED','Dr Lee','2024-07-12','Y','/archive/diag001');

INSERT INTO archaeological_site_diagnostics VALUES
('DIAG002','SITE002','2024-08-01','Dr Mark Doran','Magnetometry','INSTMAG01',1.8,9.5,120.0,200.0,0.0,1.2,3.5,0.5,'Clay layers, high magnetic spikes','GOOD',34.0522,-118.2437,120.0,'Partly cloudy',25.0,60.0,'Detected possible hearth features','/data/diag002.mag','Laura Kim','PENDING','',NULL,'N','/archive/diag002');

INSERT INTO archaeological_site_diagnostics VALUES
('DIAG003','SITE003','2024-08-15','Dr Nina Sato','LIDAR','INSTLID01',0.0,0.0,0.0,0.0,0.0,5.5,2.0,0.0,'Rocky outcrop, dense vegetation','FAIR',51.5074,-0.1278,35.0,'Rainy',18.0,85.0,'Limited penetration due to canopy','/data/diag003.lidar','Mike Turner','REVIEWED','Dr Patel','2024-08-17','Y','/archive/diag003');