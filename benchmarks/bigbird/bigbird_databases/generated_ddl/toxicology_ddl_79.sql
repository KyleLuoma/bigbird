-- Optical fiber testing records
CREATE TABLE optical_fiber_testing (
  test_id TEXT PRIMARY KEY,
  fiber_type TEXT,
  manufacturer TEXT,
  test_date DATE,
  wavelength_nm INTEGER,
  attenuation_db_per_km REAL,
  dispersion_ps_nm_km REAL,
  insertion_loss_db REAL,
  return_loss_db REAL,
  test_operator TEXT,
  equipment_id TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  test_location TEXT,
  test_status TEXT,
  notes TEXT,
  batch_id TEXT,
  calibration_id TEXT,
  service_contract_id TEXT,
  data_file_path TEXT,
  reviewed_by TEXT,
  review_date DATE,
  compliance_flag TEXT
);
INSERT INTO optical_fiber_testing VALUES ('TF001','SingleMode','FiberCo','2023-01-15',1550,0.35,3.5,0.2,30,'JohnDoe','EQ123',22.5,45.0,'LabA','Completed','AllGood','B001','CAL001','SC001','/data/tf001.csv','JaneSmith','2023-01-16','Y');
INSERT INTO optical_fiber_testing VALUES ('TF002','MultiMode','OptiLink','2023-02-20',850,0.55,5.2,0.3,28,'AliceWang','EQ124',21.0,48.0,'LabB','Completed','WithinSpec','B002','CAL002','SC002','/data/tf002.csv','BobLee','2023-02-21','Y');
INSERT INTO optical_fiber_testing VALUES ('TF003','SingleMode','PhotonTech','2023-03-05',1310,0.40,4.0,0.25,29,'MikeNg','EQ125',23.0,44.5,'LabC','Pending','ReviewNeeded','B003','CAL003','SC003','/data/tf003.csv','SaraKim','2023-03-06','N');

-- Cryogenic vapor analysis logs
CREATE TABLE cryogenic_vapor_analysis (
  analysis_id TEXT PRIMARY KEY,
  vessel_id TEXT,
  analysis_date DATE,
  operator TEXT,
  temperature_c REAL,
  pressure_mbar REAL,
  vapor_composition TEXT,
  flow_rate_l_min REAL,
  detector_id TEXT,
  calibration_version TEXT,
  sample_id TEXT,
  notes TEXT,
  batch_number TEXT,
  method_code TEXT,
  data_file_path TEXT,
  reviewed_by TEXT,
  review_date DATE,
  qc_passed TEXT,
  instrument_status TEXT,
  ambient_humidity_percent REAL,
  ambient_temperature_c REAL,
  safety_status TEXT,
  corrective_action TEXT
);
INSERT INTO cryogenic_vapor_analysis VALUES ('VA001','VSL001','2023-04-10','JohnDoe',-150.0,5.2,'N2O4',0.8,'DET01','CALV1','SMP001','Initial run','BN001','MTH01','/data/va001.csv','JaneSmith','2023-04-11','Y','OK',30.0,22.0,'Clear','');
INSERT INTO cryogenic_vapor_analysis VALUES ('VA002','VSL002','2023-04-12','AliceWang',-148.5,5.5,'ClF3',0.75,'DET02','CALV2','SMP002','Second run','BN002','MTH02','/data/va002.csv','BobLee','2023-04-13','Y','OK',31.5,21.5,'Clear','');
INSERT INTO cryogenic_vapor_analysis VALUES ('VA003','VSL003','2023-04-15','MikeNg',-149.0,5.3,'HF',0.78,'DET03','CALV3','SMP003','Outlier','BN003','MTH03','/data/va003.csv','SaraKim','2023-04-16','N','MaintenanceRequired',29.0,23.0,'Alert','Recalibrate detector');

-- Bioreactor batch log
CREATE TABLE bioreactor_batch_log (
  batch_id TEXT PRIMARY KEY,
  bioreactor_id TEXT,
  start_date DATE,
  end_date DATE,
  organism TEXT,
  strain TEXT,
  medium TEXT,
  volume_l REAL,
  temperature_c REAL,
  pH REAL,
  dissolved_oxygen_percent REAL,
  agitation_rpm INTEGER,
  sparge_gas TEXT,
  feed_rate_ml_per_h REAL,
  harvest_time_h REAL,
  product_concentration_g_per_l REAL,
  yield_g REAL,
  operator TEXT,
  quality_status TEXT,
  qc_report_id TEXT,
  data_file_path TEXT,
  reviewed_by TEXT,
  review_date DATE,
  notes TEXT,
  compliance_flag TEXT
);
INSERT INTO bioreactor_batch_log VALUES ('BB001','BR001','2023-05-01','2023-05-10','Ecoli','K12','LB','1500',37.0,7.2,80.5,300,'Air','50','240','2.5','600','JohnDoe','Pass','QC001','/data/bb001.csv','JaneSmith','2023-05-11','No issues','Y');
INSERT INTO bioreactor_batch_log VALUES ('BB002','BR002','2023-05-12','2023-05-20','Yeast','S288C','YPD','2000',30.0,5.5,70.0,250,'O2','45','200','3.0','600','AliceWang','Pass','QC002','/data/bb002.csv','BobLee','2023-05-21','Slight pH drift','Y');
INSERT INTO bioreactor_batch_log VALUES ('BB003','BR003','2023-05-22','2023-05-30','CHO','HEK293','DMEM','1800',37.0,7.4,85.0,350,'Air','55','220','1.8','324','MikeNg','Fail','QC003','/data/bb003.csv','SaraKim','2023-05-31','Low yield, investigate','N');

-- Quantum device fabrication records
CREATE TABLE quantum_device_fabrication (
  fab_id TEXT PRIMARY KEY,
  device_type TEXT,
  wafer_id TEXT,
  layer_count INTEGER,
  deposition_method TEXT,
  patterning_tool TEXT,
  start_date DATE,
  end_date DATE,
  cleanroom_class TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  operator TEXT,
  inspection_status TEXT,
  metrology_tool TEXT,
  critical_dimension_nm REAL,
  film_thickness_nm REAL,
  etch_depth_nm REAL,
  defect_density_cm2 REAL,
  lot_number TEXT,
  batch_number TEXT,
  data_file_path TEXT,
  reviewed_by TEXT,
  review_date DATE,
  notes TEXT,
  compliance_flag TEXT
);
INSERT INTO quantum_device_fabrication VALUES ('QD001','Transmon','WFR001',12,'ALD','EBeam','2023-06-01','2023-06-15','ISO7',22.0,40.0,'JohnDoe','Pass','AFM','30.5','150','500','0.02','LOT123','BCH001','/data/qd001.csv','JaneSmith','2023-06-16','All parameters within spec','Y');
INSERT INTO quantum_device_fabrication VALUES ('QD002','Fluxonium','WFR002',15,'CVD','Litho','2023-06-20','2023-07-05','ISO6',21.5,38.0,'AliceWang','Pass','SEM','28.0','180','450','0.015','LOT124','BCH002','/data/qd002.csv','BobLee','2023-07-06','Minor line edge roughness','Y');
INSERT INTO quantum_device_fabrication VALUES ('QD003','PhaseQubit','WFR003',10,'PVD','Laser','2023-07-10','2023-07-25','ISO7',23.0,42.0,'MikeNg','Fail','TEM','32.0','140','520','0.05','LOT125','BCH003','/data/qd003.csv','SaraKim','2023-07-26','Excessive defect density','N');

-- Satellite communication log
CREATE TABLE satellite_communication_log (
  comm_id TEXT PRIMARY KEY,
  satellite_id TEXT,
  ground_station_id TEXT,
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  uplink_frequency_mhz REAL,
  downlink_frequency_mhz REAL,
  data_rate_mbps REAL,
  modulation TEXT,
  polarization TEXT,
  antenna_type TEXT,
  weather_conditions TEXT,
  signal_strength_db REAL,
  bit_error_rate REAL,
  transmission_status TEXT,
  operator TEXT,
  error_code TEXT,
  notes TEXT,
  data_file_path TEXT,
  reviewed_by TEXT,
  review_date DATE,
  compliance_flag TEXT,
  latency_ms REAL,
  jitter_ms REAL,
  packet_loss_percent REAL
);
INSERT INTO satellite_communication_log VALUES ('COM001','SAT001','GS001','2023-08-01 10:00:00','2023-08-01 10:15:00',2400.5,1280.3,150.0,'QPSK','RHCP','Parabolic','Clear',45.2,0.0001,'Success','JohnDoe','','','/data/com001.csv','JaneSmith','2023-08-02','Y',250,5,0.01);
INSERT INTO satellite_communication_log VALUES ('COM002','SAT002','GS002','2023-08-02 14:30:00','2023-08-02 14:45:00',2100.0,1150.0,120.0,'8PSK','LHCP','Dish','Rain',38.7,0.0003,'Success','AliceWang','','','/data/com002.csv','BobLee','2023-08-03','Y',300,7,0.02);
INSERT INTO satellite_communication_log VALUES ('COM003','SAT003','GS003','2023-08-03 09:10:00','2023-08-03 09:25:00',2500.2,1300.1,180.0,'16QAM','RHCP','Parabolic','Cloudy',30.5,0.0010','Failure','MikeNg','ERR42','Antenna misaligned','/data/com003.csv','SaraKim','2023-08-04','N',500,12,0.15);

-- Marine biome sensor deployment records
CREATE TABLE marine_biome_sensor (
  deployment_id TEXT PRIMARY KEY,
  sensor_id TEXT,
  vessel_name TEXT,
  deployment_date DATE,
  retrieval_date DATE,
  latitude REAL,
  longitude REAL,
  depth_m REAL,
  sensor_type TEXT,
  measurement_interval_s INTEGER,
  battery_status_percent REAL,
  firmware_version TEXT,
  calibration_date DATE,
  data_quality_flag TEXT,
  notes TEXT,
  data_file_path TEXT,
  operator TEXT,
  weather_at_deploy TEXT,
  water_temperature_c REAL,
  salinity_psu REAL,
  chlorophyll_ug_per_l REAL,
  dissolved_oxygen_mg_per_l REAL,
  reviewed_by TEXT,
  review_date DATE
);
INSERT INTO marine_biome_sensor VALUES ('MB001','SN001','OceanExplorer','2023-09-01','2023-09-15',34.5,-120.3,150,'CTD',60,95.0,'FW1.2','2023-08-20','Good','No issues','/data/mb001.csv','JohnDoe','Calm',12.5,35.0,0.8,6.2,'JaneSmith','2023-09-16');
INSERT INTO marine_biome_sensor VALUES ('MB002','SN002','SeaVoyager','2023-09-05','2023-09-20',35.0,-121.0,200,'Fluorometer',30,90.0,'FW1.3','2023-08-22','Good','Stable','/data/mb002.csv','AliceWang','Windy',13.0,34.8,1.2,5.9,'BobLee','2023-09-21');
INSERT INTO marine_biome_sensor VALUES ('MB003','SN003','DeepBlue','2023-09-10','2023-09-25',33.8,-119.5,500,'Acoustic','120',85.0,'FW1.1','2023-08-25','Fair','Noise interference','/data/mb003.csv','MikeNg','Rough',11.8,35.2,0.5,7.0,'SaraKim','2023-09-26');

-- Agricultural soil sample records
CREATE TABLE agricultural_soil_sample (
  sample_id TEXT PRIMARY KEY,
  field_id TEXT,
  collection_date DATE,
  collector TEXT,
  latitude REAL,
  longitude REAL,
  depth_cm INTEGER,
  soil_type TEXT,
  ph REAL,
  organic_matter_percent REAL,
  nitrogen_mg_per_kg REAL,
  phosphorus_mg_per_kg REAL,
  potassium_mg_per_kg REAL,
  moisture_percent REAL,
  bulk_density_g_per_cm3 REAL,
  cation_exchange_capacity_meq_per_kg REAL,
  texture TEXT,
  sample_condition TEXT,
  notes TEXT,
  analysis_lab TEXT,
  result_report_id TEXT,
  data_file_path TEXT,
  reviewed_by TEXT,
  review_date DATE,
  compliance_flag TEXT
);
INSERT INTO agricultural_soil_sample VALUES ('SS001','FLD001','2023-10-01','JohnDoe',40.12,-105.23,15,'Loam',6.5,2.8,1500,30,200,12.0,1.35,12.5,'SiltLoam','Intact','No issues','LabA','RPT001','/data/ss001.csv','JaneSmith','2023-10-02','Y');
INSERT INTO agricultural_soil_sample VALUES ('SS002','FLD002','2023-10-03','AliceWang',40.15,-105.20,20,'Clay',5.8,3.2,1400,28,210,13.5,1.40,13.0,'ClayLoam','Intact','Slight compaction','LabB','RPT002','/data/ss002.csv','BobLee','2023-10-04','Y');
INSERT INTO agricultural_soil_sample VALUES ('SS003','FLD003','2023-10-05','MikeNg',40.10,-105.25,10,'SandyLoam',7.2,1.5,1600,35,190,10.0,1.20,10.8,'Sandy','Cracked','Dry surface','LabC','RPT003','/data/ss003.csv','SaraKim','2023-10-06','N');

-- Historical artifact restoration logs
CREATE TABLE historical_artifact_restoration (
  restoration_id TEXT PRIMARY KEY,
  artifact_id TEXT,
  museum_name TEXT,
  start_date DATE,
  end_date DATE,
  conservator TEXT,
  material TEXT,
  condition_before TEXT,
  condition_after TEXT,
  restoration_method TEXT,
  chemicals_used TEXT,
  tool_set TEXT,
  humidity_control_percent REAL,
  temperature_c REAL,
   documentation_path TEXT,
   photographs_path TEXT,
   notes TEXT,
   quality_assessment TEXT,
   reviewed_by TEXT,
   review_date DATE,
   compliance_flag TEXT,
   cost_usd REAL,
   funding_source TEXT,
   project_code TEXT
);
INSERT INTO historical_artifact_restoration VALUES ('HR001','ART001','NationalMuseum','2023-01-15','2023-03-10','JohnDoe','Ceramic','Cracked','Repaired','Consolidation','ParaloidB72','Brush,Spatula',45.0,22.0,'/docs/hr001.pdf','/photos/hr001/','No major issues','Pass','JaneSmith','2023-03-11','Y',12000,'GrantA','PRJ001');
INSERT INTO historical_artifact_restoration VALUES ('HR002','ART002','CityGallery','2023-04-05','2023-05-20','AliceWang','Wood','Faded','Refinished','Varnish','Shellac','Sandpaper,Brush',50.0,20.0,'/docs/hr002.pdf','/photos/hr002/','Minor surface loss','Pass','BobLee','2023-05-21','Y',8000,'GrantB','PRJ002');
INSERT INTO historical_artifact_restoration VALUES ('HR003','ART003','HistoricalSociety','2023-06-01','2023-08-15','MikeNg','Metal','Corroded','Stabilized','Electrochemical','NaClSolution','Electrodes',55.0,18.0,'/docs/hr003.pdf','/photos/hr003/','Corrosion still visible','Fail','SaraKim','2023-08-16','N',15000,'GrantC','PRJ003');

-- Urban traffic signal timing schedules
CREATE TABLE urban_traffic_signal_timing (
  timing_id TEXT PRIMARY KEY,
  intersection_id TEXT,
  city_name TEXT,
  coordinate_lat REAL,
  coordinate_long REAL,
  cycle_length_seconds INTEGER,
  green_time_ns_seconds INTEGER,
  green_time_ew_seconds INTEGER,
  yellow_time_seconds INTEGER,
  all_red_time_seconds INTEGER,
  pedestrian_phase_seconds INTEGER,
  sensor_type TEXT,
  adaptive_control_flag TEXT,
  last_updated TIMESTAMP,
  engineer TEXT,
  notes TEXT,
  compliance_audit_id TEXT,
  data_file_path TEXT,
  reviewed_by TEXT,
  review_date DATE,
  compliance_flag TEXT,
  average_delay_seconds REAL,
  queue_length_vehicles INTEGER,
  incident_count INTEGER
);
INSERT INTO urban_traffic_signal_timing VALUES ('TS001','INT001','MetroCity',39.95,-75.16,120,45,45,5,5,10,'InductiveLoop','Y','2023-09-01 08:00:00','JohnDoe','Optimized for peak','AUD001','/data/ts001.csv','JaneSmith','2023-09-02','Y',15.2,8,0);
INSERT INTO urban_traffic_signal_timing VALUES ('TS002','INT002','MetroCity',39.96,-75.17,110,40,40,5,5,10,'Video','N','2023-09-03 08:00:00','AliceWang','Standard timing','AUD002','/data/ts002.csv','BobLee','2023-09-04','Y',18.5,10,1);
INSERT INTO urban_traffic_signal_timing VALUES ('TS003','INT003','MetroCity',39.97,-75.18,130,55,55,5,5,10,'Radar','Y','2023-09-05 08:00:00','MikeNg','Adaptive during events','AUD003','/data/ts003.csv','SaraKim','2023-09-06','Y',12.0,6,0);

-- Renewable energy grid interconnection logs
CREATE TABLE renewable_energy_grid_interconnection (
  interconnect_id TEXT PRIMARY KEY,
  facility_id TEXT,
  generator_type TEXT,
  capacity_mw REAL,
  connection_date DATE,
  interconnection_point TEXT,
  voltage_kv REAL,
  frequency_hz REAL,
  protection_scheme TEXT,
  status TEXT,
  operator TEXT,
  maintenance_window_start DATE,
  maintenance_window_end DATE,
  outage_reason TEXT,
  data_file_path TEXT,
  reviewed_by TEXT,
  review_date DATE,
  compliance_flag TEXT,
  power_factor REAL,
  reactive_power_mvar REAL,
  harmonic_distortion_percent REAL,
  notes TEXT,
  contract_id TEXT,
  tariff_category TEXT
);
INSERT INTO renewable_energy_grid_interconnection VALUES ('IG001','FAC001','SolarPV',50.0,'2022-06-01','POINTA',138.0,60.0,'DistanceRelay','Active','JohnDoe','2023-12-01','2023-12-02','Scheduled maintenance','/data/ig001.csv','JaneSmith','2023-06-02','Y',0.98,5.0,2.1','No issues','CON001','Standard');
INSERT INTO renewable_energy_grid_interconnection VALUES ('IG002','FAC002','WindTurbine',30.5,'2021-09-15','POINTB',115.0,60.0,'Overcurrent','Active','AliceWang','2023-11-10','2023-11-11','Transformer fault','/data/ig002.csv','BobLee','2021-09-16','Y',0.95,7.2,3.4','Investigated fault','CON002','Premium');
INSERT INTO renewable_energy_grid_interconnection VALUES ('IG003','FAC003','Hydro',120.0,'2020-03-20','POINTC',230.0,60.0,'Differential','Inactive','MikeNg','2024-01-05','2024-01-06','Regulatory shutdown','/data/ig003.csv','SaraKim','2020-03-21','N',0.90,12.5,4.0','Pending compliance review','CON003','Special');

-- Spacecraft payload manifest
CREATE TABLE spacecraft_payload_manifest (
  payload_id TEXT PRIMARY KEY,
  spacecraft_id TEXT,
  mission_name TEXT,
  launch_date DATE,
  payload_type TEXT,
  mass_kg REAL,
  volume_m3 REAL,
  manufacturer TEXT,
  serial_number TEXT,
  destination_orbit TEXT,
  power_requirement_watts REAL,
  data_rate_mbps REAL,
  interface_standard TEXT,
  thermal_control TEXT,
  radiation_shielding TEXT,
  integration_status TEXT,
  testing_status TEXT,
  responsible_engineer TEXT,
  launch_provider TEXT,
  documentation_path TEXT,
  notes TEXT,
  compliance_flag TEXT,
  approval_date DATE,
  approved_by TEXT,
  comments TEXT
);
INSERT INTO spacecraft_payload_manifest VALUES ('PL001','SC001','LunarRecon','2024-02-15','Imaging','150','2.5','SpaceImagingCo','SN12345','LEO','500','100','CAN','Passive','Aluminum','Integrated','Tested','JohnDoe','SpaceX','/docs/pl001.pdf','No issues','Y','2024-01-20','JaneSmith','Ready for launch');
INSERT INTO spacecraft_payload_manifest VALUES ('PL002','SC002','MarsSampler','2025-07-30','Science','250','3.0','MarsLabs','SN67890','MarsTransfer','750','150','CCSDS','Active','Tantalum','Integrated','Pending','AliceWang','ULA','/docs/pl002.pdf','Thermal tests required','Y','2025-06-15','BobLee','Awaiting final review');
INSERT INTO spacecraft_payload_manifest VALUES ('PL003','SC003','DeepSpaceProbe','2026-11-10','Communication','100','1.8','DeepComm','SN54321','DeepSpace','300','50','MIL-STD-1553','Passive','Lead','Pending','NotStarted','MikeNg','Arianespace','/docs/pl003.pdf','Shielding analysis pending','N','2026-09-01','SaraKim','Delay in integration');

-- Nanoparticle surface characterization results
CREATE TABLE nanoparticle_surface_characterization (
  result_id TEXT PRIMARY KEY,
  sample_id TEXT,
  technique TEXT,
  instrument_id TEXT,
  measurement_date DATE,
  particle_size_nm REAL,
  zeta_potential_mv REAL,
  surface_area_m2_g REAL,
  pore_volume_cm3_g REAL,
  functional_group TEXT,
  coating_material TEXT,
  concentration_mg_ml REAL,
  solvent TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  operator TEXT,
  data_file_path TEXT,
  analysis_software TEXT,
  software_version TEXT,
  notes TEXT,
  quality_flag TEXT,
  reviewed_by TEXT,
  review_date DATE,
  compliance_flag TEXT
);
INSERT INTO nanoparticle_surface_characterization VALUES ('NP001','SMP001','DLS','INST001','2023-04-12',55.2, -30.5, 120.0, 0.45,'Carboxyl','PEG','1.2','Water',25.0,40.0,'JohnDoe','/data/np001.csv','NanoSoft','1.0','All parameters within spec','Pass','JaneSmith','2023-04-13','Y');
INSERT INTO nanoparticle_surface_characterization VALUES ('NP002','SMP002','Zeta','INST002','2023-05-08',80.5, -25.0, 95.0, 0.38,'Amine','PVP','0.8','Ethanol',22.0,35.0,'AliceWang','/data/np002.csv','ZetaCalc','2.1','Minor deviation in zeta','Pass','BobLee','2023-05-09','Y');
INSERT INTO nanoparticle_surface_characterization VALUES ('NP003','SMP003','BET','INST003','2023-06-15',120.0, -20.0, 150.0, 0.60,'Thiol','Silica','1.0','Isopropanol',20.0,30.0,'MikeNg','/data/np003.csv','BETPro','3.3','Surface area lower than expected','Fail','SaraKim','2023-06-16','N');

-- Quantum experiment metadata
CREATE TABLE quantum_experiment_metadata (
  experiment_id TEXT PRIMARY KEY,
  system_id TEXT,
  experiment_name TEXT,
  start_timestamp TIMESTAMP,
  end_timestamp TIMESTAMP,
  qubit_count INTEGER,
  gate_fidelity REAL,
  coherence_time_us REAL,
  measurement_error REAL,
  control_software TEXT,
  firmware_version TEXT,
  cryostat_temperature_mk REAL,
  magnetic_field_μt REAL,
  operator TEXT,
  lab_location TEXT,
  data_storage_path TEXT,
  notes TEXT,
  result_status TEXT,
  reviewed_by TEXT,
  review_date DATE,
  compliance_flag TEXT,
  post_processing_tool TEXT,
  post_processing_version TEXT,
  publication_doi TEXT
);
INSERT INTO quantum_experiment_metadata VALUES ('QE001','SYS001','BellTest','2023-07-01 10:00:00','2023-07-01 12:00:00',8,0.998,85.0,0.001,'QControl','v2.1',15.0,0.2,'JohnDoe','LabQ1','/data/qe001','Entanglement verified','Completed','JaneSmith','2023-07-02','Y','QProcess','1.0','10.1234/quantum.2023.001');
INSERT INTO quantum_experiment_metadata VALUES ('QE002','SYS002','RandomCircuit','2023-08-15 14:30:00','2023-08-15 16:00:00',12,0.995,70.0,0.002,'QControl','v2.3',12.0,0.5,'AliceWang','LabQ2','/data/qe002','Circuit depth 25','Completed','BobLee','2023-08-16','Y','QProcess','1.1','10.1234/quantum.2023.002');
INSERT INTO quantum_experiment_metadata VALUES ('QE003','SYS003','ErrorMitigation','2023-09-20 09:00:00','2023-09-20 11:30:00',16,0.990,60.0,0.005,'QControl','v2.5',10.0,1.0,'MikeNg','LabQ3','/data/qe003','Demonstrated error mitigation','InProgress','SaraKim','2023-09-21','N','QProcess','1.2','');