-- Table storing astronomical galaxy observation metadata
CREATE TABLE galaxy_observation (
  observation_id TEXT PRIMARY KEY,
  telescope_name TEXT,
  instrument TEXT,
  target_galaxy TEXT,
  ra TEXT,
  dec TEXT,
  redshift REAL,
  observation_date TEXT,
  exposure_time_sec INTEGER,
  filter_band TEXT,
  seeing_arcsec REAL,
  airmass REAL,
  sky_brightness_mag_per_sq_arcsec REAL,
  data_volume_gb REAL,
  processing_status TEXT,
  pipeline_version TEXT,
  photometric_calibration TEXT,
  spectral_resolution REAL,
  notes TEXT,
  observer_id TEXT
);

INSERT INTO galaxy_observation VALUES
('obs001','VLT','FORS2','NGC1234','12h34m56s','-45d23m11s',0.023,'2024-03-15',3600,'R',0.9,1.2,21.5,12.4,'COMPLETED','v1.3','CALIB1',2500,'Clear sky observation','userA');

INSERT INTO galaxy_observation VALUES
('obs002','Keck','LRIS','M81','09h55m33s','+69d03m55s',0.0009,'2024-04-01',1800,'V',0.7,1.1,20.8,8.2,'PROCESSING','v1.4','CALIB2',3000,'Partial clouds','userB');

INSERT INTO galaxy_observation VALUES
('obs003','Gemini','GMOS','IC342','03h46m48s','+68d05m46s',0.0007,'2024-05-20',5400,'I',1.0,1.3,22.1,15.0,'FAILED','v1.2','CALIB3',2750,'Guiding error','userC');

-- Table storing satellite telemetry packets
CREATE TABLE satellite_telemetry (
  packet_id TEXT PRIMARY KEY,
  satellite_id TEXT,
  timestamp TEXT,
  orbit_number INTEGER,
  latitude REAL,
  longitude REAL,
  altitude_km REAL,
  velocity_km_s REAL,
  battery_voltage_v REAL,
  solar_panel_current_a REAL,
  temperature_c REAL,
  radiation_dose_rad REAL,
  gyroscope_x REAL,
  gyroscope_y REAL,
  gyroscope_z REAL,
  magnetometer_x REAL,
  magnetometer_y REAL,
  magnetometer_z REAL,
  communication_status TEXT,
  error_code TEXT,
  data_quality TEXT,
  ground_station_id TEXT
);

INSERT INTO satellite_telemetry VALUES
('pkt001','SAT-A1','2024-06-01T12:00:00Z',1024,12.34,-45.67,550.0,7.8,28.5,5.2,22.1,0.02,0.001,0.0005,0.0009,0.3,0.1,0.2,'OK','NONE','HIGH','GS01');

INSERT INTO satellite_telemetry VALUES
('pkt002','SAT-B2','2024-06-01T12:01:30Z',1024,12.35,-45.66,550.1,7.81,28.6,5.1,22.0,0.021,0.0011,0.0006,0.0008,0.31,0.11,0.21,'OK','NONE','HIGH','GS01');

INSERT INTO satellite_telemetry VALUES
('pkt003','SAT-A1','2024-06-01T12:03:00Z',1025,12.36,-45.65,549.9,7.79,28.4,5.3,22.2,0.019,0.0012,0.0004,0.0007,0.29,0.09,0.19,'WARN','TEMP01','MEDIUM','GS02');

-- Table storing deep‑sea expedition logs
CREATE TABLE deep_sea_expedition (
  expedition_id TEXT PRIMARY KEY,
  vessel_name TEXT,
  start_date TEXT,
  end_date TEXT,
  dive_number INTEGER,
  dive_depth_m REAL,
  water_temperature_c REAL,
  salinity_psu REAL,
  dissolved_oxygen_mg_l REAL,
  pressure_atm REAL,
  location_lat TEXT,
  location_lon TEXT,
  camera_model TEXT,
  video_duration_min INTEGER,
  sample_type TEXT,
  sample_weight_g REAL,
  core_length_cm REAL,
  sonar_type TEXT,
  navigation_system TEXT,
  chief_scientist TEXT,
  data_archive_path TEXT,
  notes TEXT,
  funding_agency TEXT,
  mission_status TEXT,
  crew_size INTEGER
);

INSERT INTO deep_sea_expedition VALUES
('exp001','R/V Oceanic','2023-07-10','2023-07-25',1,3500,2.1,35.0,5.2,350,'-24.5','-150.3','NikonD850',45,'Sediment',120.5,30,'Multibeam','Inertial','DrSmith','/archive/exp001','Successful first dive','NSF','COMPLETED',25);

INSERT INTO deep_sea_expedition VALUES
('exp002','R/V MarineQuest','2023-09-01','2023-09-15',2,4100,1.9,34.8,4.9,410,'-22.1','-148.7','SonyA7S','60','Biota',80.2,45,'SideScan','GPS','DrLee','/archive/exp002','Collected rare species','NOAA','COMPLETED',22);

INSERT INTO deep_sea_expedition VALUES
('exp003','R/V DeepBlue','2024-02-05','2024-02-20',3,2800,2.4,35.2,5.5,280,'-25.0','-151.0','Canon5D','30','WaterSample',0,0,'EchoSounder','GLONASS','DrPatel','/archive/exp003','Weather delay on return','NASA','ABORTED',20);

-- Table storing urban traffic flow measurements
CREATE TABLE urban_traffic_flow (
  record_id TEXT PRIMARY KEY,
  city_name TEXT,
  sensor_id TEXT,
  measurement_date TEXT,
  measurement_time TEXT,
  road_name TEXT,
  lane_count INTEGER,
  vehicle_count INTEGER,
  average_speed_kmh REAL,
  heavy_vehicle_percent REAL,
  pedestrian_count INTEGER,
  bicycle_count INTEGER,
  occupancy_percent REAL,
  travel_time_sec INTEGER,
  queue_length_m REAL,
  incidents_reported INTEGER,
  weather_condition TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  air_quality_index INTEGER,
  data_quality TEXT,
  source_system TEXT,
  operator_name TEXT,
  latitude TEXT,
  longitude TEXT,
  notes TEXT,
  calibration_date TEXT,
  maintenance_status TEXT,
  firmware_version TEXT,
  battery_voltage_v REAL,
  signal_strength_dbm REAL
);

INSERT INTO urban_traffic_flow VALUES
('rec001','Metropolis','SEN-1001','2024-05-01','08:00','MainSt',4,1200,45.2,12.5,150,30,78.0,720,25.0,0,'Clear',22.0,55,42,'GOOD','TSM','Alice','40.7128N','74.0060W','Peak hour traffic','2024-01-15','OK','v2.1',3.7,-85);

INSERT INTO urban_traffic_flow VALUES
('rec002','Metropolis','SEN-1002','2024-05-01','08:05','2ndAve',2,800,38.7,9.0,80,20,65.0,480,18.0,1,'Rain',18.5,70,58,'MEDIUM','TSM','Bob','40.7130N','74.0055W','Minor accident reported','2024-02-10','OK','v2.1',3.6,-83);

INSERT INTO urban_traffic_flow VALUES
('rec003','Gotham','SEN-2001','2024-05-01','17:30','ElmSt',3,950,30.1,5.5,60,15,55.0,600,22.0,0,'Clear',20.0,60,35,'GOOD','TSM','Carol','40.7306N','73.9352W','Evening rush','2024-03-20','OK','v2.2',3.8,-80);

-- Table storing renewable energy farm performance metrics
CREATE TABLE renewable_energy_farm_metrics (
  farm_id TEXT PRIMARY KEY,
  farm_name TEXT,
  location TEXT,
  technology TEXT,
  installed_capacity_mw REAL,
  commission_date TEXT,
  reporting_date TEXT,
  actual_generation_mwh REAL,
  capacity_factor_percent REAL,
  availability_percent REAL,
  total_operating_hours INTEGER,
  downtime_hours INTEGER,
  wind_speed_avg_mps REAL,
  solar_irradiance_avg_wpm2 REAL,
  temperature_avg_c REAL,
  precipitation_mm REAL,
  grid_connection_status TEXT,
  power_factor REAL,
  reactive_power_mvar REAL,
  emissions_avoided_tonnes REAL,
  revenue_usd REAL,
  maintenance_cost_usd REAL,
  o_and_m_cost_usd REAL,
  notes TEXT,
  data_source TEXT,
  operator_contact TEXT,
  latitude TEXT,
  longitude TEXT,
  last_inspection_date TEXT,
  inspection_status TEXT,
  performance_ratio REAL,
  inverter_count INTEGER,
  turbine_count INTEGER,
  storage_capacity_mwh REAL,
  storage_state_of_charge_percent REAL,
  curtailment_mwh REAL,
  forecast_accuracy_percent REAL,
  regulatory_compliance TEXT,
  annual_degradation_percent REAL,
  warranty_expiry_date TEXT,
  financing_partner TEXT
);

INSERT INTO renewable_energy_farm_metrics VALUES
('farm001','SunnyVale Solar','California','Solar PV',150.0,'2020-06-15','2024-05-31',135000.0,81.5,98.7,8760,120,0.0,620.5,22.1,5.2,'CONNECTED',0.98,5.0,25000.0,12000000.0,500000.0,600000.0,'Stable operation','SCADA','JohnDoe','36.7783N','119.4179W','2024-04-20','PASSED',0.95,200,0,0.0,0.0,0.0,92.0,'COMPLIANT',0.5,'2029-06-15','BankXYZ');

INSERT INTO renewable_energy_farm_metrics VALUES
('farm002','WindHarbor','Texas','Wind Turbine',300.0,'2018-03-01','2024-05-31',900000.0,68.0,96.5,8760,200,7.5,0.0,18.5,12.3,'CONNECTED',0.97,4.5,40000.0,25000000.0,800000.0,900000.0,'Minor blade wear','SCADA','JaneSmith','31.9686N','99.9018W','2024-03-15','PASSED',0.90,0,150,100.0,85.0,30.0,88.5,'COMPLIANT',0.7,'2027-03-01','EnergyFund');

INSERT INTO renewable_energy_farm_metrics VALUES
('farm003','HybridPeak','Colorado','Hybrid','220.0','2021-09-10','2024-05-31',180000.0,74.0,97.2,8760,80,5.2,450.0,15.3,8.0,'CONNECTED',0.99,3.8,15000.0,8000000.0,300000.0,350000.0,'Optimal hybrid mix','SCADA','MikeLee','39.5501N','105.7821W','2024-02-28','PASSED',0.92,120,80,40.0,70.0,10.0,90.2,'COMPLIANT',0.4,'2030-09-10','GreenBank');

-- Table storing archaeological dig site information
CREATE TABLE archaeological_dig_site (
  site_id TEXT PRIMARY KEY,
  site_name TEXT,
  country TEXT,
  region TEXT,
  latitude TEXT,
  longitude TEXT,
  discovery_year INTEGER,
  period TEXT,
  area_hectares REAL,
  excavation_start_date TEXT,
  excavation_end_date TEXT,
  lead_archaeologist TEXT,
  sponsoring_institution TEXT,
  funding_amount_usd REAL,
  num_excavation_teams INTEGER,
  total_artifacts_found INTEGER,
  pottery_fragments INTEGER,
  metal_objects INTEGER,
  organic_remains INTEGER,
  lithic_tools INTEGER,
  stratigraphy_complexity TEXT,
  GPS_accuracy_m REAL,
  soil_ph REAL,
  climate_zone TEXT,
  notes TEXT,
  current_status TEXT,
  publication_reference TEXT,
  database_entry_date TEXT,
  last_update_date TEXT,
  preservation_state TEXT,
  public_access BOOLEAN,
  onsite_museum BOOLEAN,
  remote_sensing_used BOOLEAN,
  drone_imagery_used BOOLEAN,
  radiocarbon_dates INTEGER,
  dna_analysis_done BOOLEAN,
  3d_scanning_done BOOLEAN,
  conservation_plan TEXT,
  visitor_center BOOLEAN,
  outreach_programs TEXT,
  risk_assessment TEXT,
  insurance_policy TEXT,
  emergency_plan TEXT
);

INSERT INTO archaeological_dig_site VALUES
('dig001','Tell Al-Mansur','Iraq','Mesopotamia','33.3000N','44.1000E',1920,'Bronze Age',12.5,'2023-01-15','2023-12-20','DrAhmed','University of Baghdad',750000.0,4,1320,800,150,200,70,'High','0.05',7.2,'Arid','Extensive mudbrick structures','Active','Smith2024','2023-12-21','2024-01-10','Good',TRUE,FALSE,TRUE,TRUE,5,TRUE,TRUE,'Phase I stabilization','FALSE','School tours','Low','Policy123','PlanA');

INSERT INTO archaeological_dig_site VALUES
('dig002','Stonehenge Outskirts','UK','South West England','51.1789N','1.8262W',1912,'Neolithic',3.2,'2022-04-01','2022-10-31','DrEmily','English Heritage',500000.0,2,540,300,50,0,190,'Medium','0.02',6.5,'Temperate','Peripheral barrows and henges','Completed','Jones2023','2022-11-01','2022-11-15','Excellent',FALSE,TRUE,FALSE,FALSE,2,FALSE,TRUE,'Full documentation','TRUE','Community workshops','Medium','Policy456','PlanB');

INSERT INTO archaeological_dig_site VALUES
('dig003','Machu Picchu Annex','Peru','Cusco Region','13.1631S','72.5450W',1911,'Inca',1.8,'2021-05-10','2021-09-20','DrLuis','National University of San Marcos',650000.0,3,780,420,90,30,240,'Low','0.03',5.9','Mountainous','Excavations of agricultural terraces','Ongoing','Garcia2022','2021-09-21','2022-02-05','Fair',TRUE,FALSE,TRUE,TRUE,3,TRUE,FALSE,'Conservation ongoing','TRUE','Cultural festivals','High','Policy789','PlanC');

-- Table storing spacecraft mission event logs
CREATE TABLE spacecraft_mission_event (
  event_id TEXT PRIMARY KEY,
  mission_name TEXT,
  spacecraft_id TEXT,
  event_timestamp TEXT,
  event_type TEXT,
  subsystem TEXT,
  description TEXT,
  severity TEXT,
  duration_seconds INTEGER,
  telemetry_packet_id TEXT,
  ground_station TEXT,
  operator TEXT,
  corrective_action TEXT,
  status_before TEXT,
  status_after TEXT,
  anomaly_code TEXT,
  thermal_status_c REAL,
  power_status_watts REAL,
  fuel_level_kg REAL,
  attitude_pitch_deg REAL,
  attitude_yaw_deg REAL,
  attitude_roll_deg REAL,
  communications_latency_ms REAL,
  data_volume_mb REAL,
  software_version TEXT,
  firmware_revision TEXT,
  orbit_phase TEXT,
  mission_day INTEGER,
  cumulative_distance_km REAL,
  solar_panel_current_a REAL,
  battery_temperature_c REAL,
  antenna_status TEXT,
  payload_state TEXT,
  lockout_flag BOOLEAN,
  safe_mode BOOLEAN,
  last_contact_timestamp TEXT,
  next_scheduled_event TEXT,
  notes TEXT,
  risk_level TEXT,
  approval_authority TEXT,
  contingency_plan TEXT,
  post_event_analysis TEXT,
  event_category TEXT
);

INSERT INTO spacecraft_mission_event VALUES
('ev001','LunaExplorer','SC-001','2024-04-12T08:45:00Z','THRUST_BURN','Propulsion','Initial lunar orbit insertion','INFO',3600,'pkt1001','GS-Moon','Alice','Adjusted burn duration','PRE_BURN','POST_BURN','B001',-15.2,850.0,120.5,0.0,0.0,0.0,250.0,500.0,'v3.2','rev5','LUNAR_ORBIT',45,150000.0,2.3,-10.5,'ACTIVE','DEPLOYED',FALSE,FALSE,'2024-04-12T09:45:00Z','2024-04-12T10:30:00Z','Successful insertion','LOW','MissionControl','StandardProcedure','Analysis pending','MANEUVER');

INSERT INTO spacecraft_mission_event VALUES
('ev002','MarsScout','SC-010','2024-05-20T14:20:00Z','ANOMALY','Power','Unexpected voltage dip','CRITICAL',120,'pkt2103','GS-Earth','Bob','Switched to backup battery','NORMAL','DEGRADED','A023',-5.0,450.0,80.0,5.2,1.5,-3.0,500.0,250.0,'v4.0','rev2','CRUISE',210,340000.0,1.8,22.0,'STANDBY','IDLE',TRUE,TRUE,'2024-05-20T14:22:00Z','2024-05-20T15:00:00Z','Battery anomaly resolved','HIGH','MissionControl','EmergencyShutdown','Root cause analysis underway','POWER');

INSERT INTO spacecraft_mission_event VALUES
('ev003','JupiterProbe','SC-021','2024-06-30T03:10:00Z','DATA_DOWNLINK','Communications','High‑gain antenna downlink completed','INFO',1800,'pkt3305','GS-Jupiter','Carol','Archived data','DOWNLINK','COMPLETE','D012',-40.0,1200.0,0.0,0.0,0.0,0.0,120.0,800.0,'v5.1','rev1','JUPITER_ORBIT',365,780000.0,3.5,-20.0,'ACTIVE','COLLECTING',FALSE,FALSE,'2024-06-30T03:40:00Z','2024-07-01T01:00:00Z','All science payload data received','LOW','MissionControl','StandardDownlink','Post‑downlink verification pending','COMMUNICATIONS');

-- Table storing quantum device test runs
CREATE TABLE quantum_device_test (
  test_id TEXT PRIMARY KEY,
  device_id TEXT,
  test_date TEXT,
  test_type TEXT,
  qubit_count INTEGER,
  coherence_time_us REAL,
  gate_fidelity REAL,
  readout_fidelity REAL,
  temperature_mK REAL,
  dilution_refrigerator_cycle INTEGER,
  microwave_power_dBm REAL,
  control_line_count INTEGER,
  error_correction_scheme TEXT,
  logical_qubits INTEGER,
  logical_error_rate REAL,
  crosstalk_percent REAL,
  calibration_version TEXT,
  noise_spectrum TEXT,
  measurement_bias REAL,
  photon_counts INTEGER,
  trial_duration_sec INTEGER,
  operator TEXT,
  remarks TEXT,
  software_release TEXT,
  firmware_version TEXT,
  lab_location TEXT,
  ambient_humidity_percent REAL,
  ambient_pressure_pascal REAL,
  shielding_type TEXT,
  magnetic_field_nT REAL,
  spectral_density REAL,
  quantum_volume INTEGER,
  benchmark_score REAL,
  data_path TEXT,
  result_file TEXT,
  validation_status TEXT,
  approval_manager TEXT,
  post_test_analysis TEXT,
  funding_source TEXT,
  compliance_status TEXT,
  next_scheduled_test TEXT,
  notes TEXT
);

INSERT INTO quantum_device_test VALUES
('qt001','QD-100','2024-03-15','RANDOMIZED_BENCHMARK',16,120.5,0.998,0.995,15.2,3,2.5,12,'SurfaceCode',4,0.0015,0.02,'cal_v2','1/f','0.0001',102400,7200,'DrAlice','All metrics within spec','v3.0','fw1.2','LabA',35.0,101325,'Superconducting','50','0.3',64,85.7,'/data/qt001/','result1.json','PASS','MsBob','Analysis pending','DOE','COMPLIANT','2024-06-01','First test of new control electronics');

INSERT INTO quantum_device_test VALUES
('qt002','QD-200','2024-04-10','TOMOGRAPHY',32,80.0,0.995,0.990,12.8,4,3.0,20,'BaconShor',8,0.0028,0.04,'cal_v3','WhiteNoise','0.0002',204800,10800,'DrCarol','Slight drift observed','v3.1','fw1.3','LabB',33.5,100800,'IonTrap','30','0.5',128,78.4,'/data/qt002/','result2.json','WARN','MsDave','Investigate drift','NSF','COMPLIANT','2024-07-15','Repeat after firmware update');

INSERT INTO quantum_device_test VALUES
('qt003','QD-300','2024-05-22','RANDOMIZED_BENCHMARK',48,150.0,0.999,0.997,10.5,5,2.0,28,'SurfaceCode',12,0.0009,0.015,'cal_v4','1/f+WhiteNoise','0.00005',409600,14400,'DrEve','Excellent performance','v3.2','fw1.4','LabC',30.0,101000,'Superconducting','10','0.2',256,92.3,'/data/qt003/','result3.json','PASS','MsFrank','No issues','DARPA','COMPLIANT','2024-08-30','Scale up qubit count test');

-- Table storing biobank donor records
CREATE TABLE biobank_donor_record (
  donor_id TEXT PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  gender TEXT,
  date_of_birth TEXT,
  ethnicity TEXT,
  consent_date TEXT,
  consent_version TEXT,
  donation_type TEXT,
  sample_type TEXT,
  collection_date TEXT,
  collection_site TEXT,
  processing_lab TEXT,
  storage_location TEXT,
  storage_temperature_c REAL,
  volume_ml REAL,
  aliquot_count INTEGER,
  health_status TEXT,
  smoking_status TEXT,
  alcohol_use TEXT,
  medication_use TEXT,
  disease_history TEXT,
  family_history TEXT,
  height_cm REAL,
  weight_kg REAL,
  bmi REAL,
  blood_type TEXT,
  rh_factor TEXT,
  genotype TEXT,
  phenotype TEXT,
  consent_expiry_date TEXT,
  data_access_level TEXT,
  ethical_approval_id TEXT,
  investigator_id TEXT,
  notes TEXT,
  withdrawal_date TEXT,
  withdrawal_reason TEXT,
  data_use_restriction TEXT,
  sample_quality_score INTEGER,
  qc_passed BOOLEAN,
  last_quality_check TEXT,
  storage_location_detail TEXT,
  freezer_id TEXT,
  rack_position TEXT,
  sample_barcode TEXT,
  last_inventory_audit TEXT,
  audit_result TEXT,
  external_reference TEXT,
  linked_study_id TEXT,
  donation_status TEXT,
  donation_category TEXT
);

INSERT INTO biobank_donor_record VALUES
('don001','John','Doe','Male','1975-08-20','Caucasian','2022-01-15','v1','Blood','Serum','2022-02-01','ClinicA','LabX','Freezer1', -80.0,5.0,10,'Healthy','Never','Moderate','None','None','None',180,75,23.1,'O','Positive','AA','Normal','2025-01-15','Restricted','EP-001','INV-100','Initial sample','NULL','NULL','None',85,TRUE,'2023-12-01','RackA01','FZ01','R01','BC123456','2024-01-15','PASS','EXT001','STUDY01','Completed','Blood');

INSERT INTO biobank_donor_record VALUES
('don002','Maria','Smith','Female','1982-11-05','Hispanic','2023-03-10','v2','Tissue','Liver','2023-03-20','ClinicB','LabY','Freezer2', -150.0,2.5,5,'Chronic Hepatitis','Former','Low','Aspirin','Hepatitis','Father: Diabetes',165,68,24.9,'A','Negative','AG','Altered','2026-03-10','Open','EP-002','INV-101','Second sample','NULL','NULL','None',90,TRUE,'2024-02-28','RackB07','FZ02','R07','BC654321','2024-03-10','PASS','EXT002','STUDY02','Active','Tissue');

INSERT INTO biobank_donor_record VALUES
('don003','Li','Wei','Nonbinary','1990-04-12','Asian','2024-01-05','v3','Saliva','DNA','2024-01-12','ClinicC','LabZ','Freezer3', -20.0,1.0,2,'Healthy','Never','None','None','None','None',170,60,20.8,'B','Positive','GG','Normal','2027-01-05','Restricted','EP-003','INV-102','Third sample','NULL','NULL','None',78,TRUE,'2024-06-01','RackC03','FZ03','R03','BC789012','2024-06-15','PASS','EXT003','STUDY03','Pending','Saliva');

-- Table storing nanorobotics fabrication run details
CREATE TABLE nanorobotics_fabrication_run (
  run_id TEXT PRIMARY KEY,
  batch_number TEXT,
  fabrication_date TEXT,
  facility_name TEXT,
  operator_name TEXT,
  robot_type TEXT,
  material_primary TEXT,
  material_secondary TEXT,
  substrate_type TEXT,
  layer_count INTEGER,
  feature_size_nm REAL,
  pattern_complexity TEXT,
  lithography_method TEXT,
  etching_method TEXT,
  deposition_method TEXT,
  annealing_temperature_c REAL,
  annealing_time_sec INTEGER,
  yield_percent REAL,
  defect_density_cm2 REAL,
  inspection_tool TEXT,
  inspection_result TEXT,
  metrology_tool TEXT,
  metrology_accuracy_nm REAL,
  cleaning_process TEXT,
  post_process_coating TEXT,
  functionalization_method TEXT,
  testing_protocol TEXT,
  test_result TEXT,
  reliability_hours INTEGER,
  operating_voltage_v REAL,
  operating_current_ma REAL,
  power_consumption_mw REAL,
  communication_interface TEXT,
  firmware_version TEXT,
  software_version TEXT,
  safety_check_passed BOOLEAN,
  environmental_conditions TEXT,
  humidity_percent REAL,
  temperature_c REAL,
  pressure_pa REAL,
  waste_disposal_method TEXT,
  batch_quality_score INTEGER,
  qc_passed BOOLEAN,
  qc_review_date TEXT,
  notes TEXT,
  downstream_application TEXT,
  regulatory_approval_id TEXT,
  shipping_log_id TEXT,
  storage_location TEXT,
  expiration_date TEXT,
  recall_status TEXT,
  cost_usd REAL,
  lead_time_days INTEGER,
  customer_id TEXT
);

INSERT INTO nanorobotics_fabrication_run VALUES
('run001','BN-1001','2024-02-15','NanoFabLab','Alice','NanoBotX','Silicon','Gold','Wafer',10,50.0,'Medium','E‑Beam','ReactiveIon','CVD',850.0,1800,92.5,0.001,'SEM','Pass','AFM',0.5,'O2Plasma','SiO2','SelfAssembledMonolayer','Standard','Pass',3000,3.3,5.0,16.5,'I2C','fw1.0','sw2.1',TRUE,'CleanRoom','40.0','22.0','101325','Recycling',85,TRUE,'2024-03-01','No issues','TargetedDrugDelivery','RA-2025-01','SHIP-9001','ColdRoomA','2026-02-15','None',12000.0,45,'CLIENT01');

INSERT INTO nanorobotics_fabrication_run VALUES
('run002','BN-1002','2024-03-22','NanoFabLab','Bob','NanoBotY','Graphene','Copper','Glass',12,30.0,'High','NanoImprint','WetEtch','ALD',400.0,1200,88.0,0.002,'TEM','Pass','Profilometer',1.0,'AcidClean','Al2O3','ChemicalVaporDeposition','Extended','Fail',1500,5.0,8.0,40.0,'SPI','fw1.1','sw2.2',FALSE,'DryRoom','35.0','18.0','100000','Incineration',70,FALSE,'2024-04-10','Rework needed','Sensors','RA-2025-03','SHIP-9002','ShelfB','2025-12-01','Pending',15000.0,60,'CLIENT02');

INSERT INTO nanorobotics_fabrication_run VALUES
('run003','BN-1003','2024-04-10','NanoFabLab','Carol','NanoBotZ','Polymer','Silver','Silicon',8,70.0,'Low','Photolithography','DryEtch','PVD',250.0,900,95.0,0.0005,'OpticalMicroscope','Pass','LaserInterferometer',0.2,'PlasmaClean','TiO2','SpinCoating','Standard','Pass',4000,2.5,3.5,8.0,'UART','fw1.2','sw2.3',TRUE,'ControlledEnv','45.0','20.0','101500','Neutralization',92,TRUE,'2024-05-01','All within spec','Microactuators','RA-2025-05','SHIP-9003','ColdRoomB','2027-01-20','None',18000.0,30,'CLIENT03');