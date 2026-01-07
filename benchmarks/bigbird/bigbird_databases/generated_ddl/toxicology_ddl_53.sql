-- Spacecraft mission log
CREATE TABLE spacecraft_mission_log (
  mission_id TEXT PRIMARY KEY,
  launch_date TEXT,
  vehicle TEXT,
  destination TEXT,
  mission_duration_days INTEGER,
  crew_size INTEGER,
  commander TEXT,
  payload_mass_kg REAL,
  orbit_type TEXT,
  mission_status TEXT,
  communication_band TEXT,
  ground_station TEXT,
  fuel_used_kg REAL,
  cost_million_usd REAL,
  scientific_objectives TEXT,
  data_volume_tb REAL,
  anomalies_reported INTEGER,
  EVA_count INTEGER,
  primary_experiment TEXT,
  secondary_experiment TEXT,
  notes TEXT
);

INSERT INTO spacecraft_mission_log (mission_id, launch_date, vehicle, destination, mission_duration_days, crew_size, commander, payload_mass_kg, orbit_type, mission_status, communication_band, ground_station, fuel_used_kg, cost_million_usd, scientific_objectives, data_volume_tb, anomalies_reported, EVA_count, primary_experiment, secondary_experiment, notes) VALUES
('M001','2022-03-15','Orion','Moon',14,4,'Smith',12000.5,'Lunar','Completed','S-band','Houston',8500.2,2500.0,'Lunar geology',1.2,0,2,'Regolith sampling','Seismology','All systems nominal'),
('M002','2023-07-01','Starship','Mars',210,6,'Johnson',20000.0,'Mars Transfer','InProgress','Ka-band','Canberra',15000.0,5000.0,'Atmospheric analysis',5.4,1,0,'Atmosphere composition','Radiation mapping','Minor comm glitch recorded'),
('M003','2024-11-20','FalconHeavy','Asteroid','180',0,'N/A',3000.0,'Heliocentric','Planned','X-band','Madrid',2500.0,1200.0,'Mineral survey',3.0,0,0,'Mineral spectroscopy','Dust dynamics','Mission awaiting final review');

-- Quantum device characterization
CREATE TABLE quantum_device_characterization (
  device_id TEXT PRIMARY KEY,
  fabrication_batch TEXT,
  qubit_count INTEGER,
  coherence_time_us REAL,
  gate_fidelity REAL,
  operating_temperature_mK REAL,
  material TEXT,
  measurement_date TEXT,
  lab TEXT,
  operator TEXT,
  calibration_version TEXT,
  readout_error REAL,
  crosstalk_error REAL,
  thermal_noise REAL,
  device_status TEXT,
  last_maintenance_date TEXT,
  next_maintenance_due TEXT,
  test_platform TEXT,
  notes TEXT,
  data_file_path TEXT,
  version TEXT
);

INSERT INTO quantum_device_characterization (device_id, fabrication_batch, qubit_count, coherence_time_us, gate_fidelity, operating_temperature_mK, material, measurement_date, lab, operator, calibration_version, readout_error, crosstalk_error, thermal_noise, device_status, last_maintenance_date, next_maintenance_due, test_platform, notes, data_file_path, version) VALUES
('QD001','BATCHA','64','120.5','0.998','15.2','Aluminum','2023-02-10','QuantumLab','Lee','v1.3','0.0012','0.0008','0.0005','Operational','2023-01-15','2024-01-15','Cryostat','No anomalies','/data/qd001/run1','1.0'),
('QD002','BATCHB','128','85.3','0.992','12.7','Niobium','2023-06-05','QuantumLab','Patel','v1.4','0.0015','0.0010','0.0007','Operational','2023-05-20','2024-05-20','DilutionRefrigerator','Slight frequency drift','/data/qd002/run2','1.1'),
('QD003','BATCHC','32','200.0','0.999','9.8','Silicon','2024-01-22','QuantumLab','Garcia','v1.5','0.0009','0.0004','0.0003','Maintenance','2023-12-01','2024-12-01','3D Cavity','Cleaning performed','/data/qd003/run3','1.2');

-- Bioreactor process data
CREATE TABLE bioreactor_process_data (
  reactor_id TEXT,
  batch_id TEXT PRIMARY KEY,
  start_date TEXT,
  end_date TEXT,
  culture_type TEXT,
  organism_strain TEXT,
  volume_liters REAL,
  temperature_c REAL,
  pH REAL,
  dissolved_oxygen_percent REAL,
  agitation_rpm INTEGER,
  feed_rate_ml_per_hr REAL,
  harvest_time_h REAL,
  product_concentration_g_per_l REAL,
  yield_percent REAL,
  impurity_percent REAL,
  sterility_test_result TEXT,
  operator TEXT,
  qc_status TEXT,
  remarks TEXT,
  data_log_file TEXT,
  release_date TEXT,
  notes TEXT
);

INSERT INTO bioreactor_process_data (reactor_id, batch_id, start_date, end_date, culture_type, organism_strain, volume_liters, temperature_c, pH, dissolved_oxygen_percent, agitation_rpm, feed_rate_ml_per_hr, harvest_time_h, product_concentration_g_per_l, yield_percent, impurity_percent, sterility_test_result, operator, qc_status, remarks, data_log_file, release_date, notes) VALUES
('R01','BATCH001','2023-01-10','2023-01-20','Yeast','S288C',5000.0,30.0,5.5,80.0,300,25.0,240,150.0,85.0,1.2,'Pass','Miller','Approved','High purity','/logs/batch001.csv','2023-01-25','No issues'),
('R02','BATCH002','2023-03-05','2023-03-16','Bacteria','EcoliK12',3000.0,37.0,7.0,60.0,250,30.0,260,200.0,90.0,0.8,'Pass','Nguyen','Approved','Slight contamination','/logs/batch002.csv','2023-03-20','Contamination resolved'),
('R03','BATCH003','2023-06-01','2023-06-12','Mammalian','CHO',2000.0,36.5,7.2,50.0,200,20.0,240,80.0,78.0,2.5,'Fail','Kumar','Rejected','Low viability','/logs/batch003.csv','2023-06-15','Repeat required');

-- Gene editing trial
CREATE TABLE gene_editing_trial (
  trial_id TEXT PRIMARY KEY,
  target_gene TEXT,
  organism TEXT,
  cell_line TEXT,
  edit_type TEXT,
  delivery_method TEXT,
  guide_rna_seq TEXT,
  cas9_variant TEXT,
  transfection_efficiency_percent REAL,
  editing_efficiency_percent REAL,
  off_target_score REAL,
  phenotype_observed TEXT,
  assay_date TEXT,
  principal_investigator TEXT,
  lab TEXT,
  funding_source TEXT,
  ethical_approval_id TEXT,
  sample_count INTEGER,
  replicate_number INTEGER,
  notes TEXT,
  data_repository_url TEXT,
  status TEXT
);

INSERT INTO gene_editing_trial (trial_id, target_gene, organism, cell_line, edit_type, delivery_method, guide_rna_seq, cas9_variant, transfection_efficiency_percent, editing_efficiency_percent, off_target_score, phenotype_observed, assay_date, principal_investigator, lab, funding_source, ethical_approval_id, sample_count, replicate_number, notes, data_repository_url, status) VALUES
('GT001','TP53','Human','HEK293','Knockout','Lipofection','GCUAAGUCCGAAUCCUAG','SpCas9','85.0','70.0','0.02','Reduced proliferation','2023-04-12','DrLi','GenomicsLab','NIH','EA12345','150','3','Optimized conditions','http://repo.org/gt001','Completed'),
('GT002','CCR5','Human','Jurkat','Knockin','Electroporation','AGCUUCGGAAUCCUAGU','eSpCas9','78.0','55.0','0.05','Resistance to HIV','2023-08-20','DrChen','ImmunoLab','NSF','EA67890','200','4','Observed off‑target edits','http://repo.org/gt002','InProgress'),
('GT003','MYC','Mouse','NIH3T3','BaseEdit','ViralVector','UCGUAGCUUGAACCAGU','ABE8e','65.0','40.0','0.10','Increased colony size','2024-01-15','DrPatel','CancerLab','DOE','EA54321','120','2','Low editing efficiency','http://repo.org/gt003','Planned');

-- Microbial fermentation batch
CREATE TABLE microbial_fermentation_batch (
  batch_id TEXT PRIMARY KEY,
  organism TEXT,
  strain TEXT,
  media_type TEXT,
  inoculum_volume_ml REAL,
  fermentation_volume_l REAL,
  temperature_c REAL,
  pH REAL,
  dissolved_oxygen_percent REAL,
  agitation_rpm INTEGER,
  feed_type TEXT,
  feed_rate_ml_per_hr REAL,
  production_time_h REAL,
  product_yield_g_per_l REAL,
  byproduct_concentration_g_per_l REAL,
  sterility_check TEXT,
  operator TEXT,
  batch_status TEXT,
  qc_passed TEXT,
  notes TEXT,
  data_file_path TEXT,
  release_date TEXT
);

INSERT INTO microbial_fermentation_batch (batch_id, organism, strain, media_type, inoculum_volume_ml, fermentation_volume_l, temperature_c, pH, dissolved_oxygen_percent, agitation_rpm, feed_type, feed_rate_ml_per_hr, production_time_h, product_yield_g_per_l, byproduct_concentration_g_per_l, sterility_check, operator, batch_status, qc_passed, notes, data_file_path, release_date) VALUES
('MF001','Ecoli','BL21','TB','50','2000',37.0,7.2,60.0,250,'Glucose','30',48,25.0,1.5,'Pass','Adams','Completed','Yes','Standard run','/ferment/mf001.csv','2023-02-10'),
('MF002','S.cerevisiae','BY4741','YPD','75','1500',30.0,5.5,70.0,300,'Maltose','25',36,40.0,0.8,'Pass','Baker','Completed','Yes','Higher yield due to optimized feed','/ferment/mf002.csv','2023-05-22'),
('MF003','Pseudomonas','PAO1','Minimal','40','2500',28.0,6.8,55.0,200,'Glycerol','20',60,15.0,2.0,'Fail','Cheng','Stopped','No','Contamination detected','/ferment/mf003.csv','2023-08-15');

-- Three D printing job record
CREATE TABLE three_d_printing_job_record (
  job_id TEXT PRIMARY KEY,
  printer_model TEXT,
  material_type TEXT,
  material_batch TEXT,
  layer_height_mm REAL,
  print_speed_mm_per_s REAL,
  infill_percent INTEGER,
  support_used TEXT,
  build_volume_cm3 REAL,
  estimated_time_h REAL,
  actual_time_h REAL,
  post_processing_steps TEXT,
  operator TEXT,
  job_status TEXT,
  failure_reason TEXT,
  nozzle_temperature_c REAL,
  bed_temperature_c REAL,
  filament_diameter_mm REAL,
  print_resolution_microns INTEGER,
  file_name TEXT,
  file_checksum TEXT,
  notes TEXT
);

INSERT INTO three_d_printing_job_record (job_id, printer_model, material_type, material_batch, layer_height_mm, print_speed_mm_per_s, infill_percent, support_used, build_volume_cm3, estimated_time_h, actual_time_h, post_processing_steps, operator, job_status, failure_reason, nozzle_temperature_c, bed_temperature_c, filament_diameter_mm, print_resolution_microns, file_name, file_checksum, notes) VALUES
('JP001','UltimakerS5','PLA','BATCH01','0.2','50','20','Yes','500','4','4.5','Sanding;Acetone vapor','Anna','Completed','None','210','60','2.85','100','partA.stl','ABC123DEF','First prototype'),
('JP002','FormlabsForm3','Resin','BATCH07','0.1','30','15','No','300','2','2.2','UV curing','Ben','Failed','Layer adhesion','0','0','0','25','partB.stl','XYZ789GHI','Print aborted after 1h'),
('JP003','PrusaMK3','ABS','BATCH12','0.15','60','30','Yes','400','3.5','3.7','Heat treatment','Clara','Completed','None','250','80','1.75','50','partC.stl','LMN456OPQ','Final production run');

-- Virtual lab simulation
CREATE TABLE virtual_lab_simulation (
  simulation_id TEXT PRIMARY KEY,
  software_name TEXT,
  version TEXT,
  scenario_name TEXT,
  input_parameters_hash TEXT,
  duration_minutes INTEGER,
  cpu_cores_used INTEGER,
  gpu_used TEXT,
  memory_gb REAL,
  random_seed INTEGER,
  operator TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  outcome_summary TEXT,
  validation_status TEXT,
  associated_experiment_id TEXT,
  notes TEXT,
  data_output_path TEXT,
  simulation_status TEXT,
  error_log_path TEXT,
  simulation_type TEXT,
  license_key TEXT
);

INSERT INTO virtual_lab_simulation (simulation_id, software_name, version, scenario_name, input_parameters_hash, duration_minutes, cpu_cores_used, gpu_used, memory_gb, random_seed, operator, start_timestamp, end_timestamp, outcome_summary, validation_status, associated_experiment_id, notes, data_output_path, simulation_status, error_log_path, simulation_type, license_key) VALUES
('SIM001','LabSimX','2.1','ProteinFolding','A1B2C3','120','8','NVIDIARTX3090','32.0','12345','Olivia','2023-07-01 09:00','2023-07-01 11:00','Stable folded state achieved','Validated','EXP1001','Run with default parameters','/sim/output/sim001','Completed','/logs/sim001_err.log','MolecularDynamics','LIC12345'),
('SIM002','ChemVirtual','5.0','ReactionKinetics','D4E5F6','90','4','None','16.0','67890','Liam','2023-08-15 14:30','2023-08-15 16:00','Reaction reached equilibrium','Validated','EXP1002','Adjusted temperature','/sim/output/sim002','Completed','/logs/sim002_err.log','KineticModel','LIC67890'),
('SIM003','BioSim','3.3','CellGrowth','G7H8I9','180','12','NVIDIAGeForce','64.0','24680','Emma','2023-09-10 08:00','2023-09-10 11:00','Population plateau observed','Pending','EXP1003','High nutrient condition','/sim/output/sim003','Running','/logs/sim003_err.log','AgentBased','LIC24680');

-- Radon monitoring station
CREATE TABLE radon_monitoring_station (
  station_id TEXT PRIMARY KEY,
  location_name TEXT,
  latitude REAL,
  longitude REAL,
  installation_date TEXT,
  detector_type TEXT,
  calibration_date TEXT,
  radon_level_bq_m3 REAL,
  measurement_interval_minutes INTEGER,
  average_annual_ppm REAL,
  alert_threshold_bq_m3 REAL,
  last_alert_timestamp TEXT,
  maintenance_date TEXT,
  technician TEXT,
  station_status TEXT,
  power_source TEXT,
  data_upload_endpoint TEXT,
  notes TEXT,
  firmware_version TEXT,
  battery_level_percent INTEGER,
  additional_info TEXT
);

INSERT INTO radon_monitoring_station (station_id, location_name, latitude, longitude, installation_date, detector_type, calibration_date, radon_level_bq_m3, measurement_interval_minutes, average_annual_ppm, alert_threshold_bq_m3, last_alert_timestamp, maintenance_date, technician, station_status, power_source, data_upload_endpoint, notes, firmware_version, battery_level_percent, additional_info) VALUES
('RS001','Lab Basement','40.7128','-74.0060','2022-01-10','AlphaTrack','2023-12-01','15.2','60','0.007','20.0','2023-08-15 10:30','2023-09-01','Morris','Active','Mains','https://data.lab.org/rs001','No alerts','v2.1',95,'Installed near HVAC intake'),
('RS002','Roof Terrace','40.7130','-74.0058','2022-03-22','GammaDetect','2023-11-20','8.5','30','0.004','12.0','2024-01-05 09:15','2024-01-10','Sofia','Active','Solar','https://data.lab.org/rs002','Alert triggered on 2024-01-05','v2.0',80,'Exposure to wind may affect readings'),
('RS003','Storage Room','40.7125','-74.0062','2023-05-12','BetaProbe','2024-02-15','22.7','15','0.010','25.0','2024-03-01 14:45','2024-03-05','Ravi','Active','Battery','https://data.lab.org/rs003','High radon level observed','v2.2',60,'Battery replacement due soon');

-- Laser ablation experiment
CREATE TABLE laser_ablation_experiment (
  experiment_id TEXT PRIMARY KEY,
  laser_model TEXT,
  wavelength_nm REAL,
  pulse_energy_mj REAL,
  repetition_rate_hz REAL,
  spot_size_um REAL,
  substrate_material TEXT,
  substrate_thickness_um REAL,
  ablation_depth_um REAL,
  number_of_shots INTEGER,
  ambient_gas TEXT,
  chamber_pressure_pa REAL,
  operator TEXT,
  experiment_date TEXT,
  safety_protocol_version TEXT,
  data_file TEXT,
  analysis_software TEXT,
  result_summary TEXT,
  approval_id TEXT,
  notes TEXT,
  status TEXT,
  post_processing_steps TEXT
);

INSERT INTO laser_ablation_experiment (experiment_id, laser_model, wavelength_nm, pulse_energy_mj, repetition_rate_hz, spot_size_um, substrate_material, substrate_thickness_um, ablation_depth_um, number_of_shots, ambient_gas, chamber_pressure_pa, operator, experiment_date, safety_protocol_version, data_file, analysis_software, result_summary, approval_id, notes, status, post_processing_steps) VALUES
('LAE001','FemtoPulseX','1030','0.8','500','50','Silicon','500','30','2000','Argon','1500','Drake','2023-04-12','SPV1','/labdata/lae001.raw','AblatePro','Uniform crater formation','AP123','Standard run','Completed','SEM imaging'),
('LAE002','UltraNova','355','1.2','200','70','Titanium','800','45','1500','Nitrogen','1200','Leila','2023-09-20','SPV2','/labdata/lae002.raw','AblatePro','Microcracks observed','AP456','Higher pulse energy','Failed','Polishing required'),
('LAE003','PulseMax','532','0.5','1000','30','Glass','300','20','2500','Helium','800','Mona','2024-02-05','SPV1','/labdata/lae003.raw','AblatePro','Smooth surface achieved','AP789','Optimized parameters','Completed','None');

-- Cryogenic vacuum system
CREATE TABLE cryogenic_vacuum_system (
  system_id TEXT PRIMARY KEY,
  location TEXT,
  vacuum_type TEXT,
  base_pressure_pa REAL,
  cryogenic_temperature_k REAL,
  coolant_type TEXT,
  coolant_flow_l_per_min REAL,
  pump_model TEXT,
  pump_status TEXT,
  installation_date TEXT,
  last_maintenance_date TEXT,
  next_maintenance_due TEXT,
  operator TEXT,
  control_software_version TEXT,
  alarm_status TEXT,
  power_consumption_kw REAL,
  gas_leak_detected TEXT,
  leak_rate_pa_per_sec REAL,
  notes TEXT,
  data_log_path TEXT,
  system_status TEXT,
  warranty_expiration TEXT
);

INSERT INTO cryogenic_vacuum_system (system_id, location, vacuum_type, base_pressure_pa, cryogenic_temperature_k, coolant_type, coolant_flow_l_per_min, pump_model, pump_status, installation_date, last_maintenance_date, next_maintenance_due, operator, control_software_version, alarm_status, power_consumption_kw, gas_leak_detected, leak_rate_pa_per_sec, notes, data_log_path, system_status, warranty_expiration) VALUES
('CVS001','CryoLab A','Turbo','5e-6','12.5','Helium','4.2','PUMPX100','Operational','2021-06-15','2023-12-01','2024-12-01','Jensen','v3.4','Normal','2.5','No','0.0','Stable operation','/logs/cvs001.log','Active','2026-06-15'),
('CVS002','CryoLab B','Diffusion','2e-5','15.0','Nitrogen','3.8','PUMPY200','Operational','2022-03-10','2024-01-20','2025-01-20','Aria','v3.5','Normal','3.0','Yes','1.2','Minor leak detected, scheduled repair','/logs/cvs002.log','Active','2027-03-10'),
('CVS003','CryoLab C','Cryopump','1e-7','10.0','Helium','5.0','PUMPZ300','Maintenance','2020-11-05','2023-08-15','2024-08-15','Ravi','v3.2','Alarm','2.8','No','0.0','Pending software update','/logs/cvs003.log','Under Maintenance','2025-11-05');