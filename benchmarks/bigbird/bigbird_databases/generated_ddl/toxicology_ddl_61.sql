-- Optical fiber network topology
CREATE TABLE optical_fiber_network_topology (
  network_id TEXT NOT NULL,
  location_region TEXT,
  fiber_type TEXT,
  core_diameter_um INTEGER,
  cladding_diameter_um INTEGER,
  connector_type TEXT,
  splice_count INTEGER,
  total_length_km REAL,
  installation_date TEXT,
  last_maintenance_date TEXT,
  attenuation_db_per_km REAL,
  bandwidth_gbps INTEGER,
  network_status TEXT,
  vendor_name TEXT,
  contract_id TEXT,
  ip_address_range TEXT,
  vlan_id INTEGER,
  mtu_size INTEGER,
  redundancy_mode TEXT,
  notes TEXT,
  PRIMARY KEY (network_id)
);
INSERT INTO optical_fiber_network_topology VALUES ('net001','north_campus','singlemode',9,125,'lc',12,3.5,'2022-03-10','2023-06-01',0.35,10,'active','fibercorp','cont1001','10.0.0.0/24',100,1500,'ring','initial_deployment');
INSERT INTO optical_fiber_network_topology VALUES ('net002','south_campus','multimode',50,125,'sc',20,5.2,'2021-11-22','2023-04-15',0.45,1,'maintenance','opticplus','cont1002','10.0.1.0/24',200,1500,'star','upgraded_splices');
INSERT INTO optical_fiber_network_topology VALUES ('net003','research_center','singlemode',9,125,'lc',8,2.0,'2023-01-05','2023-08-20',0.30,40,'active','lightwave','cont1003','10.0.2.0/24',300,1500,'mesh','high_bandwidth');

-- Solar panel testing facility log
CREATE TABLE solar_panel_testing_facility_log (
  test_id TEXT NOT NULL,
  panel_serial TEXT,
  manufacturer TEXT,
  test_start_date TEXT,
  test_end_date TEXT,
  ambient_temperature_c REAL,
  irradiance_w_per_m2 REAL,
  voltage_open_circuit REAL,
  current_short_circuit REAL,
  max_power_w REAL,
  efficiency_percent REAL,
  test_operator TEXT,
  equipment_id TEXT,
  firmware_version TEXT,
  test_status TEXT,
  notes TEXT,
  location_zone TEXT,
  humidity_percent REAL,
  wind_speed_mps REAL,
  calibration_date TEXT,
  PRIMARY KEY (test_id)
);
INSERT INTO solar_panel_testing_facility_log VALUES ('test001','SN12345','SunPower','2023-05-01','2023-05-02',25.0,1000.0,38.5,9.0,340.0,34.0,'alice','equipA','v1.2','passed','no_issues','zoneA',45.0,3.2,'2023-04-15');
INSERT INTO solar_panel_testing_facility_log VALUES ('test002','SN67890','FirstSolar','2023-06-10','2023-06-11',22.0,950.0,35.0,8.5,298.0,31.4,'bob','equipB','v1.3','passed','minor_noise','zoneB',48.0,2.8,'2023-05-20');
INSERT INTO solar_panel_testing_facility_log VALUES ('test003','SN54321','LG','2023-07-15','2023-07-16',27.0,1020.0,40.2,9.5,380.0,37.3,'carol','equipC','v1.2','failed','overheating','zoneC',50.0,4.0','2023-07-01');

-- Autonomous drone fleet mission
CREATE TABLE autonomous_drone_fleet_mission (
  mission_id TEXT NOT NULL,
  drone_id TEXT,
  operator_name TEXT,
  launch_datetime TEXT,
  landing_datetime TEXT,
  mission_type TEXT,
  waypoint_count INTEGER,
  distance_km REAL,
  avg_speed_kmh REAL,
  max_altitude_m INTEGER,
  payload_weight_kg REAL,
  battery_start_percent INTEGER,
  battery_end_percent INTEGER,
  weather_conditions TEXT,
  mission_status TEXT,
  data_link_quality TEXT,
  camera_resolution TEXT,
  thermal_sensor_active TEXT,
  notes TEXT,
  regulatory_compliance TEXT,
  PRIMARY KEY (mission_id)
);
INSERT INTO autonomous_drone_fleet_mission VALUES ('mis001','drnA01','dave','2023-08-01 09:00','2023-08-01 09:45','survey',15,12.5,30.0,150,1.2,100,78,'clear','completed','high','4k','yes','none','compliant');
INSERT INTO autonomous_drone_fleet_mission VALUES ('mis002','drnB02','eva','2023-08-02 14:30','2023-08-02 15:10','inspection',8,5.0,35.0,120,0.8,100,65,'windy','completed','medium','1080p','no','minor_delay','compliant');
INSERT INTO autonomous_drone_fleet_mission VALUES ('mis003','drnC03','frank','2023-08-03 11:15','2023-08-03 12:00','mapping',20,18.0,28.0,200,2.0,100,55,'rain','aborted','low','4k','yes','lost_signal','non_compliant');

-- Quantum device characterization record
CREATE TABLE quantum_device_characterization_record (
  record_id TEXT NOT NULL,
  device_id TEXT,
  qubit_count INTEGER,
  coherence_time_us REAL,
  gate_fidelity REAL,
  readout_error REAL,
  temperature_mK REAL,
  measurement_basis TEXT,
  calibration_date TEXT,
  operator_name TEXT,
  fridge_cycle INTEGER,
  bias_voltage_mv REAL,
  resonator_frequency_GHz REAL,
  notes TEXT,
  status TEXT,
  hardware_version TEXT,
  firmware_version TEXT,
  error_correction_enabled TEXT,
  control_line_count INTEGER,
  datapath_bandwidth_Gbps REAL,
  PRIMARY KEY (record_id)
);
INSERT INTO quantum_device_characterization_record VALUES ('rec001','qd1001',8,45.2,99.5,0.3,15.0,'xy','2023-07-20','gina',3,120.5,5.12,'initial_characterization','active','v2.1','fw3.4','yes',16,5.0);
INSERT INTO quantum_device_characterization_record VALUES ('rec002','qd1002',16,30.8,98.9,0.5,12.0,'xz','2023-07-22','henry',2,115.0,5.34,'upgraded_firmware','active','v2.2','fw3.5','yes',32,10.0);
INSERT INTO quantum_device_characterization_record VALUES ('rec003','qd1003',4,70.1,99.8,0.2,20.0,'yz','2023-07-25','irene',4,130.0,4.98','benchmark_test','inactive','v2.0','fw3.3','no',8,2.5);

-- Archaeological site artifact inventory
CREATE TABLE archaeological_site_artifact_inventory (
  artifact_id TEXT NOT NULL,
  site_name TEXT,
  discovery_date TEXT,
  material TEXT,
  period TEXT,
  dimensions_cm TEXT,
  weight_grams REAL,
  condition TEXT,
  curator_name TEXT,
  storage_location TEXT,
  acquisition_method TEXT,
  provenance TEXT,
  catalog_number TEXT,
  gps_latitude REAL,
  gps_longitude REAL,
  depth_m REAL,
  excavation_team TEXT,
  restoration_status TEXT,
  exhibit_status TEXT,
  notes TEXT,
  PRIMARY KEY (artifact_id)
);
INSERT INTO archaeological_site_artifact_inventory VALUES ('art001','OldValley','2022-04-15','ceramic','neolithic','15x10x5',250.0,'good','linda','vaultA','excavation','donated_by_local','CAT1001',34.5678,-117.1234,2.3,'teamA','completed','on_display','none');
INSERT INTO archaeological_site_artifact_inventory VALUES ('art002','RiverBend','2021-09-10','stone','bronze_age','30x20x10',1200.0,'fair','mark','vaultB','survey','found_in_field','CAT1002',35.6789,-118.2345,1.8,'teamB','in_progress','in_storage','minor_chipping');
INSERT INTO archaeological_site_artifact_inventory VALUES ('art003','Hilltop','2023-01-05','metal','iron_age','25x15x8',800.0,'excellent','susan','vaultC','acquisition','purchased','CAT1003',36.7890,-119.3456,3.0,'teamC','completed','on_display','none');

-- Marine sensor deployment schedule
CREATE TABLE marine_sensor_deployment_schedule (
  deployment_id TEXT NOT NULL,
  sensor_type TEXT,
  vessel_name TEXT,
  departure_date TEXT,
  arrival_date TEXT,
  latitude_start REAL,
  longitude_start REAL,
  latitude_end REAL,
  longitude_end REAL,
  depth_range_m TEXT,
  sampling_interval_sec INTEGER,
  data_storage_capacity_gb REAL,
  battery_life_days INTEGER,
  technician_name TEXT,
  status TEXT,
  notes TEXT,
  maintenance_interval_days INTEGER,
  firmware_version TEXT,
  calibration_date TEXT,
  contact_email TEXT,
  PRIMARY KEY (deployment_id)
);
INSERT INTO marine_sensor_deployment_schedule VALUES ('dep001','CTD','OceanExplorer','2023-06-01','2023-06-05',45.0,-30.0,46.0,-31.0','0-500',600,500.0,30,'alice','scheduled','none',180,'v1.0','2023-05-20','alice@example.com');
INSERT INTO marine_sensor_deployment_schedule VALUES ('dep002','AcousticDoppler','SeaSurveyor','2023-07-10','2023-07-14',44.5,-29.5,45.5,-30.5','100-1000',300,750.0,45,'bob','scheduled','check_batteries',365,'v1.2','2023-06-30','bob@example.com');
INSERT INTO marine_sensor_deployment_schedule VALUES ('dep003','Fluorometer','MarineScout','2023-08-15','2023-08-20',43.0,-28.0,44.0,-29.0','0-200',900,600.0,35,'carol','scheduled','calibrate_before',200,'v1.1','2023-08-01','carol@example.com');

-- Urban traffic sensor reading
CREATE TABLE urban_traffic_sensor_reading (
  reading_id TEXT NOT NULL,
  sensor_id TEXT,
  timestamp TEXT,
  vehicle_count INTEGER,
  average_speed_kmh REAL,
  occupancy_percent REAL,
  timestamp_interval_sec INTEGER,
  road_segment TEXT,
  latitude REAL,
  longitude REAL,
  weather_condition TEXT,
  incident_flag TEXT,
  average_headway_sec REAL,
  lane_count INTEGER,
  sensor_status TEXT,
  data_quality_score INTEGER,
  firmware_version TEXT,
  maintenance_required TEXT,
  notes TEXT,
  operator_name TEXT,
  PRIMARY KEY (reading_id)
);
INSERT INTO urban_traffic_sensor_reading VALUES ('read001','tsA01','2023-08-01 08:00',250,45.3,60.0,60,'MainSt_1',40.7128,-74.0060,'clear','no',2.4,3,'operational',95,'v2.0','no','none','dave');
INSERT INTO urban_traffic_sensor_reading VALUES ('read002','tsB02','2023-08-01 08:00',180,38.7,55.0,60,'ElmAve_2',34.0522,-118.2437','rain','yes',3.1,2,'operational',88,'v2.1','yes','sensor_noise','eva');
INSERT INTO urban_traffic_sensor_reading VALUES ('read003','tsC03','2023-08-01 08:00',300,52.0,70.0,60,'PineRd_3',41.8781,-87.6298','clear','no',2.0,4,'operational',97,'v2.0','no','none','frank');

-- Renewable energy farm performance
CREATE TABLE renewable_energy_farm_performance (
  farm_id TEXT NOT NULL,
  farm_name TEXT,
  performance_date TEXT,
  energy_generated_mwh REAL,
  capacity_factor_percent REAL,
  average_wind_speed_mps REAL,
  solar_irradiance_w_per_m2 REAL,
  temperature_c REAL,
  availability_percent REAL,
  grid_connection_status TEXT,
  maintenance_window TEXT,
  incident_reported TEXT,
  total_operational_hours REAL,
  total_downtime_hours REAL,
  primary_energy_source TEXT,
  secondary_energy_source TEXT,
  forecast_accuracy_percent REAL,
  notes TEXT,
  regulatory_compliance TEXT,
  operator_name TEXT,
  PRIMARY KEY (farm_id,performance_date)
);
INSERT INTO renewable_energy_farm_performance VALUES ('farm001','WindSolarAlpha','2023-07-31',1500.0,38.5,7.2,850.0,22.0,99.0,'connected','none','no',720.0,5.0,'wind','solar',95.0,'steady_operation','compliant','alice');
INSERT INTO renewable_energy_farm_performance VALUES ('farm002','SolarBeta','2023-07-31',1200.0,45.0,0.0,950.0,25.0,98.0,'connected','2023-08-05 to 2023-08-07','no',720.0,10.0,'solar','none',92.0,'minor_cloud_cover','compliant','bob');
INSERT INTO renewable_energy_farm_performance VALUES ('farm003','HybridGamma','2023-07-31',1800.0,40.0,6.5,800.0,21.0,97.5,'connected','none','yes',720.0,8.0,'wind','solar',90.0,'grid_overload_event','compliant','carol');

-- Spacecraft payload manifest
CREATE TABLE spacecraft_payload_manifest (
  manifest_id TEXT NOT NULL,
  mission_name TEXT,
  payload_id TEXT,
  payload_type TEXT,
  mass_kg REAL,
  volume_m3 REAL,
  power_requirement_w REAL,
  data_rate_mbps REAL,
  operational_temperature_c REAL,
  integration_date TEXT,
  verification_status TEXT,
  responsible_engineer TEXT,
  launch_date TEXT,
  destination TEXT,
  status TEXT,
  hazard_class TEXT,
  radiation_shielding_mm REAL,
  notes TEXT,
  custody_chain TEXT,
  primary_contact TEXT,
  PRIMARY KEY (manifest_id)
);
INSERT INTO spacecraft_payload_manifest VALUES ('man001','LunaProbe','PL001','camera',15.0,0.02,20.0,5.0,-20.0,'2023-05-01','verified','dave','2023-09-15','lunar_orbit','ready','low',5.0,'high_resolution_imaging','shipperA','alice@example.com');
INSERT INTO spacecraft_payload_manifest VALUES ('man002','MarsRover','PL002','spectrometer',25.0,0.05,30.0,10.0,-10.0,'2023-06-10','verified','eva','2024-02-20','mars_surface','ready','medium',10.0,'mineral_analysis','shipperB','bob@example.com');
INSERT INTO spacecraft_payload_manifest VALUES ('man003','JupiterFlyby','PL003','radiometer',12.5,0.015,15.0,3.0,-30.0','2023-07-20','pending','frank','2025-07-30','jupiter_flyby','pending','low',3.0,'magnetic_field_measurements','shipperC','carol@example.com');

-- Deep sea sampling vessel log
CREATE TABLE deep_sea_sampling_vessel_log (
  voyage_id TEXT NOT NULL,
  vessel_name TEXT,
  departure_datetime TEXT,
  return_datetime TEXT,
  captain_name TEXT,
  crew_count INTEGER,
  sampled_depth_m INTEGER,
  water_temperature_c REAL,
  salinity_psu REAL,
  oxygen_mg_per_l REAL,
  chlorophyll_ug_per_l REAL,
  sampling_method TEXT,
  equipment_used TEXT,
  total_samples_collected INTEGER,
  data_storage_gb REAL,
  weather_conditions TEXT,
  sea_state TEXT,
  incident_reported TEXT,
  notes TEXT,
  compliance_status TEXT,
  PRIMARY KEY (voyage_id)
);
INSERT INTO deep_sea_sampling_vessel_log VALUES ('voy001','AbyssExplorer','2023-06-01 08:00','2023-06-10 16:00','alice',12,4000,2.1,35.0,5.5,0.8,'rosette','CTD, Niskin','200',150.0,'clear','moderate','no','none','compliant');
INSERT INTO deep_sea_sampling_vessel_log VALUES ('voy002','OceanDepth','2023-07-15 09:30','2023-07-25 14:45','bob',10,3500,3.0,34.5,4.9,1.0,'trawl','Winch, plankton net','150',120.0,'cloudy','rough','yes','minor_equipment_failure','non_compliant');
INSERT INTO deep_sea_sampling_vessel_log VALUES ('voy003','DeepQuest','2023-08-20 07:15','2023-08-30 12:20','carol',14,4500,1.8,35.2,6.0,0.5,'sediment_core','Drill, core barrel','180',130.0,'storm','high','yes','lost_samples_due_to_flooding','non_compliant');