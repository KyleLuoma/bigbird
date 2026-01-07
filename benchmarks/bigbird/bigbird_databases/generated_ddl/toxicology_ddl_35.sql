-- Lab ventilation zone information
CREATE TABLE lab_ventilation_zone (
  zone_id TEXT NOT NULL,
  building_code TEXT,
  floor_number INTEGER,
  wing TEXT,
  hvac_unit_id TEXT,
  fan_capacity_cfm REAL,
  filter_type TEXT,
  filter_change_interval_days INTEGER,
  last_filter_change DATE,
  intake_temperature_c REAL,
  exhaust_temperature_c REAL,
  air_flow_rate_cmh REAL,
  co2_ppm INTEGER,
  humidity_percent REAL,
  pressure_diff_pa REAL,
  maintenance_status TEXT,
  last_maintenance DATE,
  next_maintenance DATE,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (zone_id)
);

INSERT INTO lab_ventilation_zone VALUES ('VZ001','B1',2,'North','HVAC01',1500.0,'HEPA',180,'2023-01-10',22.5,25.0,3000.0,800,45.0,5.2,'OK','2023-06-01','2023-12-01','Initial setup','2023-01-01','2023-06-01');
INSERT INTO lab_ventilation_zone VALUES ('VZ002','B2',3,'South','HVAC05',1800.0,'Carbon','HEPA',200,'2023-02-15',23.0,26.5,3200.0,750,48.5,4.8,'Scheduled','2023-07-01','2024-01-01','Upgrade pending','2023-02-01','2023-07-01');
INSERT INTO lab_ventilation_zone VALUES ('VZ003','B3',1,'East','HVAC02',1300.0,'HEPA',150,'2023-03-20',21.0,24.0,2800.0,820,42.0,5.0,'OK','2023-08-01','2024-02-01','Routine check','2023-03-01','2023-08-01');

-- Instrument failure analysis log
CREATE TABLE instrument_failure_analysis_log (
  analysis_id TEXT NOT NULL,
  instrument_id TEXT,
  failure_timestamp TEXT,
  failure_type TEXT,
  root_cause TEXT,
  corrective_action TEXT,
  downtime_hours REAL,
  mean_time_between_failures REAL,
  technician_id TEXT,
  severity_level TEXT,
  parts_replaced TEXT,
  cost_usd REAL,
  calibration_status_before TEXT,
  calibration_status_after TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  voltage_v REAL,
  current_a REAL,
  software_version TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (analysis_id)
);

INSERT INTO instrument_failure_analysis_log VALUES ('FA001','INST01','2023-05-12 14:30:00','Mechanical','Worn bearing','Replace bearing','4.5','120.0','TECH001','High','BearingA','2500.0','Calibrated','Not calibrated','22.0','40.0','220','0.5','v2.3','Replaced bearing successfully','2023-05-13','2023-05-13');
INSERT INTO instrument_failure_analysis_log VALUES ('FA002','INST02','2023-06-20 09:15:00','Electrical','Power surge','Install surge protector','2.0','95.0','TECH004','Medium','SurgeProtectorX','1800.0','Not calibrated','Calibrated','21.5','38.0','240','0.8','v1.9','Surge protector installed','2023-06-21','2023-06-21');
INSERT INTO instrument_failure_analysis_log VALUES ('FA003','INST03','2023-07-08 11:45:00','Software','Firmware bug','Update firmware','1.2','110.0','TECH002','Low','N/A','1200.0','Calibrated','Calibrated','23.0','45.0','230','0.6','v3.0','Firmware updated to v3.1','2023-07-09','2023-07-09');

-- Chemical storage temperature log
CREATE TABLE chemical_storage_temperature_log (
  log_id TEXT NOT NULL,
  storage_id TEXT,
  sensor_id TEXT,
  timestamp TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  alarm_triggered TEXT,
  alarm_threshold_c REAL,
  comment TEXT,
  recorded_by TEXT,
  battery_level_percent INTEGER,
  signal_strength_db REAL,
  firmware_version TEXT,
  maintenance_required TEXT,
  location_zone TEXT,
  temperature_trend TEXT,
  avg_daily_temp_c REAL,
  max_temp_c REAL,
  min_temp_c REAL,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (log_id)
);

INSERT INTO chemical_storage_temperature_log VALUES ('CT001','STG01','SENS01','2023-08-01 08:00:00',5.2,30,'No',8.0,'Normal operation','TECH005',95, -70.0,'v1.0','No','ZoneA','Stable',5.2,5.5,5.0,'2023-08-01','2023-08-01');
INSERT INTO chemical_storage_temperature_log VALUES ('CT002','STG02','SENS03','2023-08-01 08:05:00',22.5,45,'Yes',20.0,'High temp alarm','TECH006',88, -68.5,'v1.2','Yes','ZoneB','Rising',22.5,23.0,22.0,'2023-08-01','2023-08-01');
INSERT INTO chemical_storage_temperature_log VALUES ('CT003','STG03','SENS07','2023-08-01 08:10:00',-12.0,25,'No',-10.0,'Cold storage','TECH007',80, -72.0,'v1.1','No','ZoneC','Stable',-12.0,-11.5,-12.5,'2023-08-01','2023-08-01');

-- Researcher certification record
CREATE TABLE researcher_certification_record (
  cert_id TEXT NOT NULL,
  researcher_id TEXT,
  certification_name TEXT,
  issuing_body TEXT,
  issue_date DATE,
  expiration_date DATE,
  certification_status TEXT,
  certification_level TEXT,
  training_hours INTEGER,
  last_retraining_date DATE,
  credential_file_path TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (cert_id)
);

INSERT INTO researcher_certification_record VALUES ('RC001','RES001','Biosafety Level 2','CDC','2022-01-15','2025-01-15','Active','Level2',40,'2023-01-15','/files/cert/rc001.pdf','All good','2022-01-15','2022-01-15');
INSERT INTO researcher_certification_record VALUES ('RC002','RES002','Chemical Hygiene','NIOSH','2021-06-10','2024-06-10','Active','Standard',30,'2022-06-10','/files/cert/rc002.pdf','Renewal due soon','2021-06-10','2021-06-10');
INSERT INTO researcher_certification_record VALUES ('RC003','RES003','Radiation Safety','DOE','2020-09-20','2023-09-20','Expired','Advanced',35,'2021-09-20','/files/cert/rc003.pdf','Needs renewal','2020-09-20','2020-09-20');

-- Environmental noise measurement station
CREATE TABLE environmental_noise_measurement_station (
  station_id TEXT NOT NULL,
  location_description TEXT,
  latitude REAL,
  longitude REAL,
  installation_date DATE,
  sensor_model TEXT,
  frequency_range_hz TEXT,
  calibration_date DATE,
  noise_level_db_a REAL,
  peak_noise_db_a REAL,
  avg_noise_day_db_a REAL,
  avg_noise_night_db_a REAL,
  status TEXT,
  maintenance_due DATE,
  last_maintenance DATE,
  battery_status_percent INTEGER,
  data_upload_endpoint TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (station_id)
);

INSERT INTO environmental_noise_measurement_station VALUES ('NS001','North wing rooftop',40.7128,-74.0060,'2022-03-01','SN-300','20-20000','2023-03-01',55.2,78.5,52.0,48.5','Active','2024-03-01','2023-09-01',90,'https://data.lab/noise/ns001','No issues','2022-03-01','2022-03-01');
INSERT INTO environmental_noise_measurement_station VALUES ('NS002','West lab entrance',40.7130,-74.0055,'2021-11-15','SN-250','30-18000','2022-11-15',62.0,85.0,60.5,58.0','Active','2023-11-15','2023-05-15',85,'https://data.lab/noise/ns002','Routine check','2021-11-15','2021-11-15');
INSERT INTO environmental_noise_measurement_station VALUES ('NS003','South parking lot',40.7125,-74.0065','2023-01-20','SN-350','10-22000','2023-07-20',48.3,70.2,45.0,42.5','Active','2024-07-20','2023-07-20',95,'https://data.lab/noise/ns003','New installation','2023-01-20','2023-01-20');

-- Computational workflow execution
CREATE TABLE computational_workflow_execution (
  exec_id TEXT NOT NULL,
  workflow_id TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  status TEXT,
  executed_by TEXT,
  compute_node_id TEXT,
  cpu_cores_used INTEGER,
  memory_gb_used REAL,
  disk_gb_used REAL,
  input_dataset_id TEXT,
  output_dataset_id TEXT,
  exit_code INTEGER,
  error_message TEXT,
  retry_count INTEGER,
  priority_level TEXT,
  sla_met TEXT,
  duration_seconds REAL,
  resource_cost_usd REAL,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (exec_id)
);

INSERT INTO computational_workflow_execution VALUES ('WF001','WFL01','2023-08-10 09:00:00','2023-08-10 10:15:00','Success','USER01','NODE12',16,64.0,200.5,'DS001','DS002',0,'',0,'High','Yes',4500.0,120.5,'Run completed without issues','2023-08-10','2023-08-10');
INSERT INTO computational_workflow_execution VALUES ('WF002','WFL02','2023-08-11 14:30:00','2023-08-11 15:05:00','Failed','USER02','NODE07',8,32.0,100.0,'DS003','DS004',1,'Segmentation fault',1,'Medium','No',2100.0,55.0,'Restart required','2023-08-11','2023-08-11');
INSERT INTO computational_workflow_execution VALUES ('WF003','WFL03','2023-08-12 08:00:00','2023-08-12 12:30:00','Success','USER03','NODE19',32,128.0,500.0,'DS005','DS006',0,'',0,'Critical','Yes',16200.0,420.0,'Long-running analysis','2023-08-12','2023-08-12');

-- Nanomaterial exposure event log
CREATE TABLE nanomaterial_exposure_event_log (
  event_id TEXT NOT NULL,
  nanomaterial_batch_id TEXT,
  exposure_timestamp TEXT,
  employee_id TEXT,
  location_zone TEXT,
  exposure_type TEXT,
  concentration_ug_m3 REAL,
  duration_minutes REAL,
  protective_equipment_used TEXT,
  medical_evaluation TEXT,
  symptoms_reported TEXT,
  follow_up_required TEXT,
  follow_up_date DATE,
  incident_report_id TEXT,
  remediation_action TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (event_id)
);

INSERT INTO nanomaterial_exposure_event_log VALUES ('NE001','NB001','2023-06-15 10:20:00','EMP001','ZoneA','Inhalation',0.75,30,'Respirator','Cleared','None','No',NULL,'IR001','Ventilation increased','No issues','2023-06-15','2023-06-15');
INSERT INTO nanomaterial_exposure_event_log VALUES ('NE002','NB002','2023-07-02 14:45:00','EMP002','ZoneB','Dermal',1.20,15,'Gloves','Follow-up','Mild rash','Yes','2023-07-10','IR002','Skin decontamination','Observed irritation','2023-07-02','2023-07-02');
INSERT INTO nanomaterial_exposure_event_log VALUES ('NE003','NB003','2023-08-01 09:05:00','EMP003','ZoneC','Inhalation',0.50,45,'Mask','Cleared','None','No',NULL,'IR003','Air filter replacement','All clear','2023-08-01','2023-08-01');

-- Clinical trial site monitoring log
CREATE TABLE clinical_trial_site_monitoring_log (
  monitoring_id TEXT NOT NULL,
  trial_site_id TEXT,
  monitoring_date DATE,
  monitor_id TEXT,
  compliance_score INTEGER,
  deviations_found TEXT,
  corrective_actions TEXT,
  follow_up_date DATE,
  site_status TEXT,
  patient_enrollment INTEGER,
  adverse_events_reported INTEGER,
  protocol_version TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (monitoring_id)
);

INSERT INTO clinical_trial_site_monitoring_log VALUES ('CM001','TS001','2023-05-20','MON001',92,'None','N/A','2023-06-01','Active',120,2,'v1.2','Site performing well','2023-05-20','2023-05-20');
INSERT INTO clinical_trial_site_monitoring_log VALUES ('CM002','TS002','2023-06-15','MON002',78,'Informed consent missing','Retrain staff','2023-07-01','Active',95,5,'v1.2','Follow-up needed','2023-06-15','2023-06-15');
INSERT INTO clinical_trial_site_monitoring_log VALUES ('CM003','TS003','2023-07-10','MON003',85,'Temperature excursions','Calibrate freezers','2023-07-20','Active',110,1,'v1.3','Minor issues addressed','2023-07-10','2023-07-10');

-- Facility energy consumption daily
CREATE TABLE facility_energy_consumption_daily (
  record_id TEXT NOT NULL,
  facility_id TEXT,
  consumption_date DATE,
  electricity_kwh REAL,
  gas_therms REAL,
  water_cubic_m REAL,
  hvac_energy_kwh REAL,
  lighting_energy_kwh REAL,
  equipment_energy_kwh REAL,
  peak_demand_kw REAL,
  average_power_factor REAL,
  carbon_emission_kg REAL,
  renewable_percentage REAL,
  cost_usd REAL,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (record_id)
);

INSERT INTO facility_energy_consumption_daily VALUES ('EN001','FAC01','2023-08-01',12500.5,350.2,1200.0,8000.0,3000.0,1500.0,2.5,0.95,6500.0,30.0,1500.0','All systems normal','2023-08-01','2023-08-01');
INSERT INTO facility_energy_consumption_daily VALUES ('EN002','FAC02','2023-08-01',9800.0,280.0,950.0,6200.0,2500.0,1100.0,2.2,0.93,5100.0,25.0,1200.0','Minor HVAC issue resolved','2023-08-01','2023-08-01');
INSERT INTO facility_energy_consumption_daily VALUES ('EN003','FAC03','2023-08-01',14300.8,410.5,1300.0,9500.0,3500.0,1800.0,2.8,0.96,7400.0,35.0,1700.0','Peak demand due to research run','2023-08-01','2023-08-01');

-- Sample preservation protocol
CREATE TABLE sample_preservation_protocol (
  protocol_id TEXT NOT NULL,
  sample_type TEXT,
  preservation_method TEXT,
  temperature_c REAL,
  duration_days INTEGER,
  cryoprotectant TEXT,
  storage_location TEXT,
  max_samples_per_container INTEGER,
  container_type TEXT,
  labeling_scheme TEXT,
  quality_control_checks TEXT,
  approved_by TEXT,
  approval_date DATE,
  version TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (protocol_id)
);

INSERT INTO sample_preservation_protocol VALUES ('SP001','Blood','Freezing',-80,365,'DMSO','FreezerA',96,'CryoTube','Barcode','Visual inspection; Viability assay','DR001','2022-01-15','v1.0','Standard blood storage','2022-01-15','2022-01-15');
INSERT INTO sample_preservation_protocol VALUES ('SP002','Tissue','Embedding',-20,180,'None','FreezerB',48,'EmbeddingBox','QRcode','Histology check','DR002','2022-06-10','v1.1','Tissue sections','2022-06-10','2022-06-10');
INSERT INTO sample_preservation_protocol VALUES ('SP003','RNA','Lyophilization',-196,730,'RNAlater','LiquidNitrogenTank',200,'Vial','RFID','Integrity assay','DR003','2023-03-05','v2.0','Long term RNA storage','2023-03-05','2023-03-05');

-- Instrument performance metric
CREATE TABLE instrument_performance_metric (
  metric_id TEXT NOT NULL,
  instrument_id TEXT,
  measurement_date DATE,
  metric_name TEXT,
  metric_value REAL,
  units TEXT,
  threshold_low REAL,
  threshold_high REAL,
  status TEXT,
  notes TEXT,
  recorded_by TEXT,
  verification_timestamp TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (metric_id)
);

INSERT INTO instrument_performance_metric VALUES ('IM001','INST10','2023-08-01','SignalToNoise','45.2','dB','40','60','Pass','Within expected range','TECH010','2023-08-01 12:00:00','2023-08-01','2023-08-01');
INSERT INTO instrument_performance_metric VALUES ('IM002','INST11','2023-08-01','Resolution','0.8','nm','0.5','1.0','Pass','Optimal','TECH011','2023-08-01 13:30:00','2023-08-01','2023-08-01');
INSERT INTO instrument_performance_metric VALUES ('IM003','INST12','2023-08-01','Drift','0.02','%','0','0.05','Pass','Stable','TECH012','2023-08-01 14:45:00','2023-08-01','2023-08-01');

-- Lab airflow simulation run
CREATE TABLE lab_airflow_simulation_run (
  run_id TEXT NOT NULL,
  simulation_name TEXT,
  executed_by TEXT,
  execution_timestamp TEXT,
  mesh_resolution INTEGER,
  solver_type TEXT,
  convergence_criteria REAL,
  total_runtime_seconds REAL,
  max_velocity_m_s REAL,
  pressure_drop_pa REAL,
  turbulence_model TEXT,
  boundary_conditions TEXT,
  validation_status TEXT,
  result_file_path TEXT,
  notes TEXT,
  created_timestamp TEXT,
  updated_timestamp TEXT,
  PRIMARY KEY (run_id)
);

INSERT INTO lab_airflow_simulation_run VALUES ('AS001','Airflow_Z1','ENG001','2023-07-15 09:00:00',200000,'FiniteVolume',1e-05,7200.0,2.5,150.0,'k-epsilon','Inlet=5m/s;Outlet=1Pa','Validated','/simulations/AS001/result.vtk','Good agreement with measurements','2023-07-15','2023-07-15');
INSERT INTO lab_airflow_simulation_run VALUES ('AS002','Airflow_Z2','ENG002','2023-07-20 10:30:00',250000,'FiniteElement',5e-06,5400.0,3.0,180.0,'LES','Inlet=6m/s;Outlet=2Pa','Pending','/simulations/AS002/result.vtk','Awaiting validation','2023-07-20','2023-07-20');
INSERT INTO lab_airflow_simulation_run VALUES ('AS003','Airflow_Z3','ENG003','2023-07-25 14:15:00',180000,'FiniteVolume',2e-05,6300.0,2.2,130.0,'k-omega','Inlet=4.5m/s;Outlet=0.5Pa','Validated','/simulations/AS003/result.vtk','Consistent with previous runs','2023-07-25','2023-07-25');