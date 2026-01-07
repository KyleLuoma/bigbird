-- Air Quality Monitoring Station
CREATE TABLE air_quality_monitoring_station (
  station_id TEXT NOT NULL,
  station_name TEXT,
  latitude REAL,
  longitude REAL,
  elevation_m INTEGER,
  installation_date TEXT,
  sensor_vendor TEXT,
  pm25_sensor_id TEXT,
  pm10_sensor_id TEXT,
  no2_sensor_id TEXT,
  o3_sensor_id TEXT,
  co_sensor_id TEXT,
  temperature_sensor_id TEXT,
  humidity_sensor_id TEXT,
  battery_capacity_mah INTEGER,
  maintenance_interval_days INTEGER,
  last_maintenance_date TEXT,
  calibration_status TEXT,
  data_transmission_protocol TEXT,
  firmware_version TEXT,
  PRIMARY KEY (station_id)
);
INSERT INTO air_quality_monitoring_station VALUES ('AQ001','NorthWing','40.7128','-74.0060','15','2022-03-01','SensTech','PM25A1','PM10B2','NO2C3','O3D4','COE5','TMPF6','HUMG7',5000,180,'2023-08-15','Calibrated','MQTT','v1.2.3');
INSERT INTO air_quality_monitoring_station VALUES ('AQ002','SouthWing','34.0522','-118.2437','30','2021-11-12','AirSense','PM25X9','PM10Y8','NO2Z7','O3W6','COV5','TMPU4','HUMT3',4500,180,'2023-07-20','Calibrated','HTTP','v1.1.0');
INSERT INTO air_quality_monitoring_station VALUES ('AQ003','EastWing','51.5074','-0.1278','25','2023-01-20','ClearAir','PM25L1','PM10M2','NO2N3','O3O4','COP5','TMPQ6','HUMR7',5200,180,'2023-09-01','Pending','CoAP','v1.3.5');

-- Nanoparticle Synthesis Batch Log
CREATE TABLE nanoparticle_synthesis_batch_log (
  batch_id TEXT NOT NULL,
  product_name TEXT,
  synthesis_date TEXT,
  operator_id TEXT,
  reactor_id TEXT,
  precursor_a TEXT,
  precursor_b TEXT,
  solvent TEXT,
  target_particle_size_nm REAL,
  actual_particle_size_nm REAL,
  polydispersity_index REAL,
  temperature_c REAL,
  pressure_bar REAL,
  stirring_speed_rpm INTEGER,
  reaction_time_min INTEGER,
  post_treatment TEXT,
  yield_mg REAL,
  purity_percent REAL,
  analytical_method TEXT,
  quality_approval TEXT,
  notes TEXT,
  PRIMARY KEY (batch_id)
);
INSERT INTO nanoparticle_synthesis_batch_log VALUES ('NB001','GoldNano','2023-05-10','OPR12','RCTR05','HAuCl4','NaBH4','Water',15.0,14.8,0.08,25.0,1.0,800,30,'Centrifuge',120.5,99.2,'TEM','Approved','No issues');
INSERT INTO nanoparticle_synthesis_batch_log VALUES ('NB002','SilverNano','2023-06-02','OPR15','RCTR07','AgNO3','NaBH4','Ethanol',20.0,20.3,0.10,22.0,0.8,700,45,'Dialysis',95.0,98.5,'DLS','Approved','Minor agglomeration observed');
INSERT INTO nanoparticle_synthesis_batch_log VALUES ('NB003','IronOxide','2023-07-18','OPR09','RCTR03','FeCl3','NaOH','Water',50.0,49.5,0.12,30.0,1.5,600,60,'Magnetic Separation',150.0,97.0,'SEM','Pending','Awaiting final QC');

-- Quantum Device Runtime Metrics
CREATE TABLE quantum_device_runtime_metrics (
  device_id TEXT NOT NULL,
  firmware_version TEXT,
  deployment_date TEXT,
  operating_temperature_k REAL,
  qubit_count INTEGER,
  coherence_time_us REAL,
  gate_fidelity_percent REAL,
  readout_error_percent REAL,
  calibration_cycle_hours INTEGER,
  last_calibration_date TEXT,
  uptime_hours REAL,
  downtime_hours REAL,
  error_rate_per_hour REAL,
  power_consumption_w REAL,
  cooling_power_w REAL,
  cryostat_pressure_pa REAL,
  control_signal_latency_ns REAL,
  trigger_rate_hz REAL,
  experiment_mode TEXT,
  operator_id TEXT,
  notes TEXT,
  PRIMARY KEY (device_id)
);
INSERT INTO quantum_device_runtime_metrics VALUES ('QD001','v3.4.2','2022-02-15',15.0,56,85.0,99.2,0.5,24,'2023-08-01',3400.5,15.2,0.004,120.0,250.0,1.2e-5,150.0,5000.0,'Algorithmic','OPR23','Stable operation');
INSERT INTO quantum_device_runtime_metrics VALUES ('QD002','v3.5.0','2022-11-08',12.0,32,70.0,98.7,0.7,48,'2023-07-20',2100.0,30.0,0.010,95.0,200.0,2.0e-5,180.0,3000.0','Simulation','OPR07','Minor drift observed');
INSERT INTO quantum_device_runtime_metrics VALUES ('QD003','v3.3.9','2021-07-30',18.0,128,120.0,99.5,0.3,12,'2023-09-05',5600.8,8.5,0.0015,150.0,300.0,0.8e-5,130.0,7000.0','Research','OPR19','All metrics within spec');

-- Marine Biology Sampling Campaign
CREATE TABLE marine_biology_sampling_campaign (
  campaign_id TEXT NOT NULL,
  vessel_name TEXT,
  start_date TEXT,
  end_date TEXT,
  principal_investigator TEXT,
  region TEXT,
  gps_start_lat REAL,
  gps_start_lon REAL,
  gps_end_lat REAL,
  gps_end_lon REAL,
  sample_type TEXT,
  collection_method TEXT,
  depth_m INTEGER,
  water_temperature_c REAL,
  salinity_psu REAL,
  pH REAL,
  dissolved_oxygen_mg_l REAL,
  chlorophyll_ug_l REAL,
  plankton_count_per_l INTEGER,
  fish_species_observed INTEGER,
  notes TEXT,
  data_release_status TEXT,
  PRIMARY KEY (campaign_id)
);
INSERT INTO marine_biology_sampling_campaign VALUES ('MC001','OceanExplorer','2023-04-01','2023-04-15','DRSMITH','NorthAtlantic','42.0','-60.0','45.0','-55.0','Water','NiskinBottle',200,12.5,35.0,8.1,6.2,2.5,1500,25,'Clear weather','Pending');
INSERT INTO marine_biology_sampling_campaign VALUES ('MC002','SeaVoyager','2023-07-10','2023-07-22','DRJOHNSON','Pacific','-15.0','140.0','-10.0','145.0','Sediment','BoxCorer',50,18.3,34.5,8.0,5.8,1.2,800,12','Encountered storm','Complete');
INSERT INTO marine_biology_sampling_campaign VALUES ('MC003','DeepScout','2023-09-05','2023-09-20','DRLEE','Indian','-20.5','80.2','-18.0','82.0','Water','CTD',500,4.2,35.2,7.9,3.9,0.9,2500,5','Technical issue with CTD','InProgress');

-- Urban Infrastructure Asset Registry
CREATE TABLE urban_infrastructure_asset_registry (
  asset_id TEXT NOT NULL,
  asset_type TEXT,
  asset_name TEXT,
  installation_date TEXT,
  location_address TEXT,
  latitude REAL,
  longitude REAL,
  maintenance_cycle_years INTEGER,
  last_inspection_date TEXT,
  condition_rating INTEGER,
  responsible_department TEXT,
  warranty_expiration_date TEXT,
  manufacturer TEXT,
  model_number TEXT,
  serial_number TEXT,
  power_requirement_kw REAL,
  connectivity BOOLEAN,
  gps_tracker_id TEXT,
  asset_status TEXT,
  depreciation_years INTEGER,
  current_value_usd REAL,
  notes TEXT,
  PRIMARY KEY (asset_id)
);
INSERT INTO urban_infrastructure_asset_registry VALUES ('UA001','TrafficSignal','MainSt_5thAve','2018-06-12','123 Main St','40.7128','-74.0060',5,'2023-05-10',9,'Transportation','2028-06-12','SignalCo','SX100','SN12345',0.1,1,'GT001','Active',10,25000,'Routine maintenance performed');
INSERT INTO urban_infrastructure_asset_registry VALUES ('UA002','StreetLamp','Broadway_42nd','2015-09-20','456 Broadway','40.7590','-73.9845',7,'2022-11-02',8,'PublicWorks','2022-09-20','Lumina','LT200','SN67890',0.05,1,'GT002','Active',12,18000,'LED upgrade completed');
INSERT INTO urban_infrastructure_asset_registry VALUES ('UA003','WaterMeter','RiverSide_12','2020-01-15','789 River Rd','40.7306','-73.9866',10,'2023-03-18',7,'Utilities','2030-01-15','AquaTech','WM300','SN54321',0.02,0,NULL,'Inactive',15,12000,'Meter replaced in 2022');

-- Solar Panel Performance Record
CREATE TABLE solar_panel_performance_record (
  panel_id TEXT NOT NULL,
  installation_site TEXT,
  install_date TEXT,
  manufacturer TEXT,
  model_number TEXT,
  rated_power_w REAL,
  orientation TEXT,
  tilt_angle_deg REAL,
  azimuth_deg REAL,
  inverter_id TEXT,
  daily_energy_kwh REAL,
  monthly_energy_kwh REAL,
  yearly_energy_kwh REAL,
  performance_ratio REAL,
  temperature_coefficient_ppm REAL,
  soiling_loss_percent REAL,
  shading_factor REAL,
  maintenance_date TEXT,
  status TEXT,
  warranty_end_date TEXT,
  notes TEXT,
  PRIMARY KEY (panel_id)
);
INSERT INTO solar_panel_performance_record VALUES ('SP001','CampusRoof','2021-03-01','SolarInc','SI3000',300,'South','30','180','INV001',5.2,150.0,1800.0,0.78, -3500,5.0,0.9,'2023-07-01','Active','2031-03-01','No issues');
INSERT INTO solar_panel_performance_record VALUES ('SP002','WarehouseEast','2020-07-15','SunPower','SPX250',250,'East','20','90','INV002',4.8,140.0,1700.0,0.80, -3000,4.2,0.85,'2023-06-15','Active','2030-07-15','Minor soiling observed');
INSERT INTO solar_panel_performance_record VALUES ('SP003','ParkingLotNorth','2019-11-20','EcoSolar','EC150',150,'North','15','0','INV003',3.1,100.0,1200.0,0.75, -3200,6.0,0.95,'2023-05-20','Active','2029-11-20','Inverter upgraded 2022');

-- Spacecraft Telemetry Event
CREATE TABLE spacecraft_telemetry_event (
  telemetry_id TEXT NOT NULL,
  spacecraft_id TEXT,
  event_timestamp TEXT,
  subsystem TEXT,
  parameter_name TEXT,
  parameter_value REAL,
  unit TEXT,
  status TEXT,
  confidence_level_percent REAL,
  processing_algorithm TEXT,
  downlink_time TEXT,
  ground_station TEXT,
  data_quality_flag TEXT,
  anomaly_flag BOOLEAN,
  comments TEXT,
  PRIMARY KEY (telemetry_id)
);
INSERT INTO spacecraft_telemetry_event VALUES ('TE001','SC-Alpha','2023-08-15T12:00:00Z','Propulsion','FuelPressure',2.5,'MPa','Nominal',99.5,'KalmanFilter','2023-08-15T12:05:00Z','GS-Earth1','Good',0,'All systems normal');
INSERT INTO spacecraft_telemetry_event VALUES ('TE002','SC-Beta','2023-08-15T12:01:30Z','Thermal','BatteryTemp',35.2,'C','Nominal',98.0,'ParticleFilter','2023-08-15T12:06:30Z','GS-Mars','Good',0,'Temperature within limits');
INSERT INTO spacecraft_telemetry_event VALUES ('TE003','SC-Alpha','2023-08-15T12:02:45Z','Communication','SignalStrength',-85.0,'dBm','Low',85.0,'FFTAnalysis','2023-08-15T12:07:45Z','GS-Earth2','Moderate',1,'Signal dip observed, monitoring');

-- Archaeological Excavation Site
CREATE TABLE archaeological_excavation_site (
  site_id TEXT NOT NULL,
  site_name TEXT,
  country TEXT,
  region TEXT,
  latitude REAL,
  longitude REAL,
  start_year INTEGER,
  end_year INTEGER,
  lead_archaeologist TEXT,
  sponsoring_institution TEXT,
  excavation_method TEXT,
  stratigraphy_complexity INTEGER,
  total_artifacts_found INTEGER,
  pottery_percentage REAL,
  metal_artifact_percentage REAL,
  organic_material_percentage REAL,
  radiocarbon_dates INTEGER,
  gps_accuracy_m REAL,
  documentation_status TEXT,
  preservation_plan TEXT,
  notes TEXT,
  PRIMARY KEY (site_id)
);
INSERT INTO archaeological_excavation_site VALUES ('AR001','TempleOfAten','Egypt','Giza',29.9792,31.1342,2018,2020,'DrAlMansur','UniversityOfCairo','Stratigraphic','3',1240,65.0,20.0,15.0,45,0.5,'Complete','Onsite storage','Excellent preservation');
INSERT INTO archaeological_excavation_site VALUES ('AR002','RockShelterX','Spain','Andalusia',36.7213,-4.4213,2019,2021,'DrGarcia','InstitutoDeArqueologia','OpenArea','2',860,40.0,30.0,30.0,32,0.3,'InProgress','Climate controlled','Partial exposure to elements');
INSERT INTO archaeological_excavation_site VALUES ('AR003','BurialMoundY','USA','Ohio',40.1234,-82.5678,2020,2022,'DrSmith','OhioStateUniversity','Mound','4',530,25.0,35.0,40.0,20,0.8,'Pending','Excavation pending','Awaiting funding');

-- Biobank Donor Health Record
CREATE TABLE biobank_donor_health_record (
  donor_id TEXT NOT NULL,
  enrollment_date TEXT,
  age INTEGER,
  sex TEXT,
  ethnicity TEXT,
  body_mass_index REAL,
  smoking_status TEXT,
  alcohol_consumption_per_week INTEGER,
  chronic_conditions TEXT,
  medications TEXT,
  recent_vaccinations TEXT,
  blood_type TEXT,
  rh_factor TEXT,
  serology_status TEXT,
  consent_version TEXT,
  sample_type TEXT,
  collection_center TEXT,
  fasting_status BOOLEAN,
  health_note TEXT,
  data_access_level TEXT,
  PRIMARY KEY (donor_id)
);
INSERT INTO biobank_donor_health_record VALUES ('DN001','2022-01-15',45,'Female','Caucasian',24.5,'Never',2,'Hypertension','Lisinopril','Flu2022','O','Positive','v1.0','Blood','CenterA',1,'No recent illness','ResearchOnly');
INSERT INTO biobank_donor_health_record VALUES ('DN002','2021-11-30',38,'Male','Asian',27.1,'Former',3,'None','None','COVID19_2021','A','Negative','v1.2','Saliva','CenterB',0,'Allergy to peanuts','Restricted');
INSERT INTO biobank_donor_health_record VALUES ('DN003','2023-03-05',52,'Other','Hispanic',29.8,'Current',5,'Diabetes Type2','Metformin','COVID19_2022','B','Positive','v1.1','Tissue','CenterC',1,'Recent surgery','FullAccess');

-- Deep Sea Expedition Log
CREATE TABLE deep_sea_expedition_log (
  expedition_id TEXT NOT NULL,
  vessel_name TEXT,
  departure_date TEXT,
  return_date TEXT,
  principal_scientist TEXT,
  ocean_region TEXT,
  max_depth_m INTEGER,
  dive_count INTEGER,
  sampling_tool TEXT,
  water_temperature_c REAL,
  salinity_psu REAL,
  dissolved_oxygen_mg_l REAL,
  chlorophyll_ug_l REAL,
  acoustic_backscatter_db REAL,
  seabed_type TEXT,
  sediment_core_length_m REAL,
  geological_age_ma REAL,
  biological_observations TEXT,
  weather_conditions TEXT,
  notes TEXT,
  data_repository TEXT,
  PRIMARY KEY (expedition_id)
);
INSERT INTO deep_sea_expedition_log VALUES ('DS001','Nautilus','2022-06-01','2022-07-15','ProfMiller','Pacific','6500','15','ROV','2.1','35.0','5.0','1.2','-12','Muddy','3.5','120','Various deep sea fish observed','Clear','Successful mission','OceanDataHub');
INSERT INTO deep_sea_expedition_log VALUES ('DS002','Abyss','2023-02-10','2023-03-25','DrChen','Atlantic','7200','12','AUV','1.8','34.5','4.8','0.9','-15','Sandy','2.0','95','Hydrothermal vent communities recorded','Stormy','Data gaps due to equipment failure','DeepSeaArchive');
INSERT INTO deep_sea_expedition_log VALUES ('DS003','Titan','2023-09-05','2023-10-20','DrKhan','Indian','6000','10','ROV','2.3','35.2','5.2','1.5','-10','Rocky','4.0','110','Bioluminescent organisms documented','Calm','High quality imagery collected','MarineScienceRepo');

-- Quantum Device Test Run
CREATE TABLE quantum_device_test_run (
  test_run_id TEXT NOT NULL,
  device_id TEXT,
  test_date TEXT,
  test_operator TEXT,
  test_type TEXT,
  gate_set TEXT,
  circuit_depth INTEGER,
  number_of_shots INTEGER,
  average_fidelity_percent REAL,
  error_rate_per_shot REAL,
  quantum_volume INTEGER,
  runtime_seconds REAL,
  temperature_kelvin REAL,
  magnetic_field_microtesla REAL,
  cryostat_pressure_pascal REAL,
  control_line_noise_db REAL,
  measurement_latency_ns REAL,
  post_processing_method TEXT,
  result_summary TEXT,
  notes TEXT,
  PRIMARY KEY (test_run_id)
);
INSERT INTO quantum_device_test_run VALUES ('QT001','QD001','2023-08-10','OPR23','RandomizedBenchmarking','Clifford','20','10000',98.5,0.0015,64,350.0,15.0,0.5,1.0e-5,-80,120,'MaximumLikelihood','Pass','All metrics within spec');
INSERT INTO quantum_device_test_run VALUES ('QT002','QD002','2023-07-22','OPR07','CrossEntropyBenchmark','Native','15','8000',97.2,0.0020,32,280.5,12.5,0.7,1.5e-5,-85,150,'Bayesian','Pass','Slight degradation observed');
INSERT INTO quantum_device_test_run VALUES ('QT003','QD003','2023-09-01','OPR19','RandomizedBenchmarking','Clifford','25','12000',99.0,0.0009,128,420.0,18.0,0.3,0.8e-5,-78,110,'MaximumLikelihood','Pass','Excellent performance');

-- End of script