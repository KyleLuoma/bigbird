-- Spectrometer calibration settings table
CREATE TABLE spectrometer_calibration_setting (
  setting_id TEXT NOT NULL,
  spectrometer_id TEXT,
  calibration_date TEXT,
  wavelength_start_nm INTEGER,
  wavelength_end_nm INTEGER,
  resolution_nm REAL,
  detector_gain REAL,
  lamp_type TEXT,
  lamp_intensity_lux REAL,
  integration_time_ms INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  operator_id TEXT,
  calibration_status TEXT,
  notes TEXT,
  software_version TEXT,
  reference_standard_id TEXT,
  calibration_factor REAL,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (setting_id)
);
INSERT INTO spectrometer_calibration_setting VALUES ('SET001','SPEC01','2023-05-12',200,800,0.5,1.2,'Deuterium',1500.0,100,'22.5','45.0','OP123','Completed','Initial calibration','v1.0','STD001',1.05,'2023-05-12T08:30:00','2023-05-12T09:00:00');
INSERT INTO spectrometer_calibration_setting VALUES ('SET002','SPEC02','2023-06-01',250,900,0.3,1.0,'Xenon',1400.0,120,'23.0','40.0','OP124','Pending','Calibration scheduled','v1.1','STD002',0.98,'2023-06-01T10:00:00','2023-06-01T10:30:00');
INSERT INTO spectrometer_calibration_setting VALUES ('SET003','SPEC03','2023-07-20',180,750,0.4,1.1,'Deuterium',1550.0,110,'21.8','50.0','OP125','Completed','Follow-up calibration','v1.2','STD003',1.02,'2023-07-20T14:15:00','2023-07-20T14:45:00');

-- Nanoparticle characterization results table
CREATE TABLE nanoparticle_characterization_result (
  result_id TEXT NOT NULL,
  batch_id TEXT,
  analysis_date TEXT,
  technique TEXT,
  particle_size_nm REAL,
  size_distribution_percent REAL,
  zeta_potential_mv REAL,
  surface_area_m2g REAL,
  porosity_percent REAL,
  composition TEXT,
  crystallinity_percent REAL,
  morphology TEXT,
  analyst_id TEXT,
  instrument_id TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  calibration_id TEXT,
  comments TEXT,
  qc_passed TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (result_id)
);
INSERT INTO nanoparticle_characterization_result VALUES ('RES001','BATCHA','2023-04-10','TEM',45.2,78.5,-15.3,120.0,35.0,'SiO2',92.0,'Spherical','AN001','INST01','22.0','40.0','CAL001','All parameters within spec','Yes','2023-04-10T09:00:00','2023-04-10T09:30:00');
INSERT INTO nanoparticle_characterization_result VALUES ('RES002','BATCHB','2023-05-22','DLS',78.9,65.2,-20.5,95.0,30.0,'TiO2',88.0,'Rod-like','AN002','INST02','23.5','45.0','CAL002','Size slightly larger than target','No','2023-05-22T11:15:00','2023-05-22T11:45:00');
INSERT INTO nanoparticle_characterization_result VALUES ('RES003','BATCHC','2023-06-18','BET',60.1,70.0,-18.0,110.0,33.0,'Al2O3',90.5,'Cubical','AN003','INST03','21.0','42.0','CAL003','Results acceptable','Yes','2023-06-18T14:20:00','2023-06-18T14:50:00');

-- Environmental noise event log table
CREATE TABLE environmental_noise_event_log (
  event_id TEXT NOT NULL,
  sensor_id TEXT,
  event_timestamp TEXT,
  decibel_level REAL,
  frequency_hz REAL,
  duration_seconds INTEGER,
  source_type TEXT,
  location_zone TEXT,
  weather_condition TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  wind_speed_mps REAL,
  operator_id TEXT,
  event_status TEXT,
  mitigation_action TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (event_id)
);
INSERT INTO environmental_noise_event_log VALUES ('EVT001','NS001','2023-08-01T10:05:00',85.2,500.0,30,'HVAC','ZoneA','Clear',22.5,40.0,2.1,'OP200','Resolved','Adjusted fan speed','Noise spike due to maintenance','2023-08-01T10:10:00','2023-08-01T10:15:00');
INSERT INTO environmental_noise_event_log VALUES ('EVT002','NS002','2023-08-03T14:20:00',78.5,400.0,45,'Equipment','ZoneB','Cloudy',20.0,55.0,1.8,'OP201','Investigating','Pending','Unusual vibration observed','2023-08-03T14:25:00','2023-08-03T14:30:00');
INSERT INTO environmental_noise_event_log VALUES ('EVT003','NS003','2023-08-05T09:00:00',92.0,600.0,20,'Construction','ZoneC','Rain',18.5,70.0,3.0,'OP202','Resolved','Temporarily halted work','Construction activity noise','2023-08-05T09:05:00','2023-08-05T09:10:00');

-- Lab robotic arm task schedule table
CREATE TABLE lab_robotic_arm_task_schedule (
  schedule_id TEXT NOT NULL,
  robot_id TEXT,
  task_name TEXT,
  start_time TEXT,
  end_time TEXT,
  priority_level INTEGER,
  operator_id TEXT,
  payload_kg REAL,
  target_location TEXT,
  source_location TEXT,
  safety_mode TEXT,
  firmware_version TEXT,
  calibration_id TEXT,
  repeat_interval_minutes INTEGER,
  max_retries INTEGER,
  status TEXT,
  error_code TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (schedule_id)
);
INSERT INTO lab_robotic_arm_task_schedule VALUES ('SCH001','ROBO01','PlateTransfer','2023-09-01T08:00:00','2023-09-01T08:30:00',1,'OP300',0.5,'Incubator1','ReagentRackA','Auto','v2.0','CALR01',1440,3,'Scheduled','','Transfer plates for incubation','2023-09-01T07:50:00','2023-09-01T07:55:00');
INSERT INTO lab_robotic_arm_task_schedule VALUES ('SCH002','ROBO02','SamplePickup','2023-09-01T09:00:00','2023-09-01T09:20:00',2,'OP301',0.2,'FreezerB','SampleCart1','Manual','v2.1','CALR02',720,2,'Scheduled','','Pickup samples for analysis','2023-09-01T08:45:00','2023-09-01T08:50:00');
INSERT INTO lab_robotic_arm_task_schedule VALUES ('SCH003','ROBO03','WasteDisposal','2023-09-01T10:00:00','2023-09-01T10:15:00',3,'OP302',1.0,'WasteBin2','Workstation5','Auto','v2.0','CALR03',1440,1,'Scheduled','','Dispose of used consumables','2023-09-01T09:55:00','2023-09-01T09:58:00');

-- Chemical storage zone audit table
CREATE TABLE chemical_storage_zone_audit (
  audit_id TEXT NOT NULL,
  zone_id TEXT,
  audit_date TEXT,
  auditor_id TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  ventilation_cfm REAL,
  fire_suppression_status TEXT,
  door_lock_status TEXT,
  access_log_present TEXT,
  chemical_spill_detected TEXT,
  expired_material_found TEXT,
  corrective_action TEXT,
  remarks TEXT,
  signature TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (audit_id)
);
INSERT INTO chemical_storage_zone_audit VALUES ('AUD001','ZONEA','2023-07-15','AUD001','22.0','45.0','350','Active','Locked','Yes','No','No','N/A','All parameters within limits','AUD001_SIG','2023-07-15T09:00:00','2023-07-15T09:30:00');
INSERT INTO chemical_storage_zone_audit VALUES ('AUD002','ZONEB','2023-08-10','AUD002','24.5','50.0','400','Active','Locked','Yes','Yes','Yes','Removed spilled solvent and disposed expired reagents','Spill and expired material addressed','AUD002_SIG','2023-08-10T10:15:00','2023-08-10T10:45:00');
INSERT INTO chemical_storage_zone_audit VALUES ('AUD003','ZONEC','2023-09-05','AUD003','21.8','42.0','320','Inactive','Unlocked','No','No','No','Improved door lock and updated access log','Lock issue corrected','AUD003_SIG','2023-09-05T11:20:00','2023-09-05T11:50:00');

-- Facility energy consumption hourly table
CREATE TABLE facility_energy_consumption_hourly (
  record_id TEXT NOT NULL,
  facility_id TEXT,
  consumption_timestamp TEXT,
  electricity_kwh REAL,
  gas_m3 REAL,
  water_liters REAL,
  hvac_power_kw REAL,
  lighting_power_kw REAL,
  equipment_power_kw REAL,
  renewable_source_kw REAL,
  peak_demand_kw REAL,
  demand_response_event TEXT,
  weather_condition TEXT,
  outdoor_temp_c REAL,
  occupancy_count INTEGER,
  carbon_emission_kg REAL,
  carbon_offset_kg REAL,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (record_id)
);
INSERT INTO facility_energy_consumption_hourly VALUES ('ENR001','FAC01','2023-06-01T00:00:00',120.5,15.2,350.0,45.0,20.0,30.0,5.0,80.0,'None','Clear',18.5,120,45.0,5.0,'Normal operation','2023-06-01T00:05:00','2023-06-01T00:10:00');
INSERT INTO facility_energy_consumption_hourly VALUES ('ENR002','FAC01','2023-06-01T01:00:00',115.0,14.8,340.0,44.0,19.5,29.5,5.5,78.0,'DR1','Cloudy',17.0,115,44.0,4.5,'Demand response event active','2023-06-01T01:05:00','2023-06-01T01:10:00');
INSERT INTO facility_energy_consumption_hourly VALUES ('ENR003','FAC01','2023-06-01T02:00:00',110.2,14.5,330.0,42.5,19.0,28.0,6.0,75.0,'None','Rain',16.2,110,43.0,4.0,'Reduced occupancy','2023-06-01T02:05:00','2023-06-01T02:10:00');

-- Clinical trial site staff assignment table
CREATE TABLE clinical_trial_site_staff_assignment (
  assignment_id TEXT NOT NULL,
  site_id TEXT,
  staff_id TEXT,
  role TEXT,
  start_date TEXT,
  end_date TEXT,
  allocation_percent INTEGER,
  supervisor_id TEXT,
  credential_status TEXT,
  training_completed TEXT,
  background_check_status TEXT,
  shift_pattern TEXT,
  contact_email TEXT,
  phone_extension TEXT,
  notes TEXT,
  status TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (assignment_id)
);
INSERT INTO clinical_trial_site_staff_assignment VALUES ('STA001','CTSITE01','STF001','Principal Investigator','2023-01-01','2024-12-31',100,'SUP001','Verified','Yes','Clear','Day','stf001@lab.org','101','Lead investigator for trial','Active','2023-01-01T08:00:00','2023-01-01T08:30:00');
INSERT INTO clinical_trial_site_staff_assignment VALUES ('STA002','CTSITE01','STF002','Study Coordinator','2023-02-15','2024-12-31',80,'SUP001','Verified','Yes','Clear','Evening','stf002@lab.org','102','Coordinates patient visits','Active','2023-02-15T09:00:00','2023-02-15T09:30:00');
INSERT INTO clinical_trial_site_staff_assignment VALUES ('STA003','CTSITE01','STF003','Data Manager','2023-03-01','2024-12-31',60,'SUP002','Pending','No','Pending','Night','stf003@lab.org','103','Manages trial data','Pending','2023-03-01T10:00:00','2023-03-01T10:30:00');

-- Bioinformatics pipeline version table
CREATE TABLE bioinformatics_pipeline_version (
  pipeline_id TEXT NOT NULL,
  version_number TEXT,
  release_date TEXT,
  developer_id TEXT,
  description TEXT,
  supported_species TEXT,
  input_format TEXT,
  output_format TEXT,
  container_image TEXT,
  memory_requirement_gb REAL,
  cpu_cores INTEGER,
  gpu_required TEXT,
  license_type TEXT,
  changelog TEXT,
  validation_status TEXT,
  documentation_url TEXT,
  deprecated TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (pipeline_id)
);
INSERT INTO bioinformatics_pipeline_version VALUES ('PIPE001','v1.0','2023-04-01','DEV001','Initial release for RNAseq analysis','Human,Mouse','FASTQ','BAM','docker.io/bio/rnaseq:1.0',16.0,8,'No','MIT','Added alignment and quantification','Validated','http://docs.lab.org/pipeline/v1.0','No','Stable release','2023-04-01T12:00:00','2023-04-01T12:30:00');
INSERT INTO bioinformatics_pipeline_version VALUES ('PIPE002','v1.1','2023-07-15','DEV002','Bug fixes and performance improvements','Human,Mouse,Rat','FASTQ','BAM','docker.io/bio/rnaseq:1.1',18.0,10,'No','MIT','Improved memory usage','Validated','http://docs.lab.org/pipeline/v1.1','No','Minor update','2023-07-15T09:00:00','2023-07-15T09:30:00');
INSERT INTO bioinformatics_pipeline_version VALUES ('PIPE003','v2.0','2024-01-10','DEV003','Added support for single-cell data','Human,Mouse','FASTQ','H5AD','docker.io/bio/scrna:2.0',32.0,16,'Yes','Apache-2.0','New single-cell workflow','Under Review','http://docs.lab.org/pipeline/v2.0','No','Beta release','2024-01-10T14:00:00','2024-01-10T14:30:00');

-- Radiation shielding inspection table
CREATE TABLE radiation_shielding_inspection (
  inspection_id TEXT NOT NULL,
  area_id TEXT,
  inspector_id TEXT,
  inspection_date TEXT,
  shielding_material TEXT,
  thickness_cm REAL,
  measured_leakage_msvh REAL,
  acceptable_limit_msvh REAL,
  surface_contamination_bq REAL,
  contamination_limit_bq REAL,
  equipment_status TEXT,
  notes TEXT,
  corrective_action TEXT,
  follow_up_date TEXT,
  status TEXT,
  signature TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (inspection_id)
);
INSERT INTO radiation_shielding_inspection VALUES ('RSI001','AREA01','INSP001','2023-05-20','Lead','10.5','0.02','0.05','0.0','0.5','Good','No issues found','N/A','2024-05-20','Closed','INSP001_SIG','2023-05-20T10:00:00','2023-05-20T10:30:00');
INSERT INTO radiation_shielding_inspection VALUES ('RSI002','AREA02','INSP002','2023-08-12','Concrete','15.0','0.06','0.05','0.2','0.5','Minor wear','Leakage slightly above limit','Replace shielding panels','2023-09-12','Open','INSP002_SIG','2023-08-12T11:15:00','2023-08-12T11:45:00');
INSERT INTO radiation_shielding_inspection VALUES ('RSI003','AREA03','INSP003','2023-11-05','Polyethylene','8.0','0.01','0.05','0.0','0.5','Good','All parameters within limits','N/A','2024-11-05','Closed','INSP003_SIG','2023-11-05T09:30:00','2023-11-05T10:00:00');

-- Microfluidic device run log table
CREATE TABLE microfluidic_device_run_log (
  run_id TEXT NOT NULL,
  device_id TEXT,
  run_timestamp TEXT,
  protocol_name TEXT,
  sample_id TEXT,
  flow_rate_ul_per_min REAL,
  pressure_bar REAL,
  temperature_c REAL,
  channel_width_um REAL,
  channel_height_um REAL,
  voltage_v REAL,
  current_ma REAL,
  reagent_a_conc_mM REAL,
  reagent_b_conc_mM REAL,
  incubation_time_s INTEGER,
  operator_id TEXT,
  status TEXT,
  error_code TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (run_id)
);
INSERT INTO microfluidic_device_run_log VALUES ('MFR001','MD001','2023-09-10T08:00:00','CellCapture','SAMP001',5.0,1.2,37.0,100.0,50.0,3.3,0.5,10.0,5.0,120,'OP400','Completed','','Successful capture of cells','2023-09-10T08:05:00','2023-09-10T08:10:00');
INSERT INTO microfluidic_device_run_log VALUES ('MFR002','MD002','2023-09-11T09:30:00','DropletGeneration','SAMP002',10.0,1.5,25.0,80.0,40.0,5.0,0.8,15.0,7.5,60,'OP401','Failed','E101','Clog detected in channel','2023-09-11T09:35:00','2023-09-11T09:40:00');
INSERT INTO microfluidic_device_run_log VALUES ('MFR003','MD001','2023-09-12T11:15:00','GradientMix','SAMP003',7.5,1.3,30.0,120.0,60.0,4.2,0.6,12.0,6.0,90,'OP402','Completed','','Gradient achieved as expected','2023-09-12T11:20:00','2023-09-12T11:25:00');

-- Chemical storage zone audit table
CREATE TABLE chemical_storage_zone_audit (
  audit_id TEXT NOT NULL,
  zone_id TEXT,
  audit_date TEXT,
  auditor_id TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  ventilation_cfm REAL,
  fire_suppression_status TEXT,
  door_lock_status TEXT,
  access_log_present TEXT,
  chemical_spill_detected TEXT,
  expired_material_found TEXT,
  corrective_action TEXT,
  remarks TEXT,
  signature TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (audit_id)
);
INSERT INTO chemical_storage_zone_audit VALUES ('AUD100','ZONEX','2023-02-20','AUD100','21.5','44.0','360','Active','Locked','Yes','No','No','N/A','All checks passed','AUD100_SIG','2023-02-20T08:00:00','2023-02-20T08:30:00');
INSERT INTO chemical_storage_zone_audit VALUES ('AUD101','ZONEY','2023-04-15','AUD101','23.0','48.0','380','Active','Locked','Yes','Yes','Yes','Removed spilled solvent and disposed expired reagents','Spill and expired material addressed','AUD101_SIG','2023-04-15T10:15:00','2023-04-15T10:45:00');
INSERT INTO chemical_storage_zone_audit VALUES ('AUD102','ZONEZ','2023-06-10','AUD102','20.8','42.0','340','Inactive','Unlocked','No','No','No','Improved door lock and updated access log','Lock issue corrected','AUD102_SIG','2023-06-10T11:20:00','2023-06-10T11:50:00');

-- Laboratory air quality sensor table
CREATE TABLE lab_air_quality_sensor (
  sensor_id TEXT NOT NULL,
  location TEXT,
  installed_date TEXT,
  sensor_type TEXT,
  manufacturer TEXT,
  model_number TEXT,
  firmware_version TEXT,
  calibration_date TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  co2_ppm REAL,
  pm25_ug_m3 REAL,
  pm10_ug_m3 REAL,
  volatile_organic_compounds_ppb REAL,
  status TEXT,
  last_maintenance_date TEXT,
  battery_level_percent INTEGER,
  network_id TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (sensor_id)
);
INSERT INTO lab_air_quality_sensor VALUES ('AQS001','LabEntrance','2022-01-15','NDIR','AirSense','AQ100','1.2','2023-12-01',22.0,45.0,600.0,12.5,20.0,150.0,'Active','2023-12-15',85,'NET01','No issues','2022-01-15T09:00:00','2022-01-15T09:30:00');
INSERT INTO lab_air_quality_sensor VALUES ('AQS002','ChemicalStorage','2022-03-10','Electrochemical','EnviroTech','CS200','2.0','2023-11-20',21.5,48.0,550.0,10.0,18.0,130.0','Active','2023-11-25',78,'NET02','Battery low warning','2022-03-10T10:00:00','2022-03-10T10:30:00');
INSERT INTO lab_air_quality_sensor VALUES ('AQS003','BioSection','2022-05-05','Photoionization','SafeAir','BS300','1.5','2023-10-05',23.0,40.0,650.0,14.0,22.0,170.0','Active','2023-10-10',92,'NET03','All parameters normal','2022-05-05T11:00:00','2022-05-05T11:30:00');