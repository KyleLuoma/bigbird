-- Air handling system details
CREATE TABLE lab_air_handling_system (
  system_id TEXT PRIMARY KEY,
  hvac_zone TEXT,
  filter_type TEXT,
  fan_speed_rpm INTEGER,
  airflow_cfm REAL,
  pressure_drop_pa REAL,
  maintenance_interval_days INTEGER,
  last_maintenance_date DATE,
  next_maintenance_date DATE,
  manufacturer TEXT,
  model_number TEXT,
  serial_number TEXT,
  installation_date DATE,
  warranty_expiration DATE,
  power_rating_kw REAL,
  noise_level_db REAL,
  control_system TEXT,
  software_version TEXT,
  operational_status TEXT,
  comments TEXT
);

INSERT INTO lab_air_handling_system (system_id, hvac_zone, filter_type, fan_speed_rpm, airflow_cfm, pressure_drop_pa, maintenance_interval_days, last_maintenance_date, next_maintenance_date, manufacturer, model_number, serial_number, installation_date, warranty_expiration, power_rating_kw, noise_level_db, control_system, software_version, operational_status, comments) VALUES ('AH001','ZoneA','HEPA',1500,3500.5,0.75,180,'2023-06-01','2023-12-01','AirTech','AT-900','SN12345','2022-01-15','2027-01-15',15.2,68.5,'BACnet','v2.3','Active','Routine operation');
INSERT INTO lab_air_handling_system (system_id, hvac_zone, filter_type, fan_speed_rpm, airflow_cfm, pressure_drop_pa, maintenance_interval_days, last_maintenance_date, next_maintenance_date, manufacturer, model_number, serial_number, installation_date, warranty_expiration, power_rating_kw, noise_level_db, control_system, software_version, operational_status, comments) VALUES ('AH002','ZoneB','Carbon','1800',4200.0,0.60,365,'2022-11-20','2023-11-20','VentCorp','VC-210','SN98765','2021-05-10','2026-05-10',18.0,72.0,'Modbus','v1.9','Active','Filter replaced 2023');
INSERT INTO lab_air_handling_system (system_id, hvac_zone, filter_type, fan_speed_rpm, airflow_cfm, pressure_drop_pa, maintenance_interval_days, last_maintenance_date, next_maintenance_date, manufacturer, model_number, serial_number, installation_date, warranty_expiration, power_rating_kw, noise_level_db, control_system, software_version, operational_status, comments) VALUES ('AH003','ZoneC','ULPA',1650,3800.2,0.85,240,'2023-02-15','2023-08-15','CoolAir','CA-550','SN55555','2020-09-01','2025-09-01',16.5,70.2,'LonWorks','v3.0','Maintenance','Scheduled for quarterly check');

-- Chemical storage audit log
CREATE TABLE chemical_storage_audit_log (
  audit_id TEXT PRIMARY KEY,
  storage_location_id TEXT,
  auditor_id TEXT,
  audit_date DATE,
  temperature_c REAL,
  humidity_percent REAL,
  leak_detected TEXT,
  fire_suppression_status TEXT,
  security_lock_status TEXT,
  notes TEXT,
  corrective_action_required TEXT,
  corrective_action_due DATE,
  followup_audit_date DATE,
  compliance_score INTEGER,
  storage_type TEXT,
  max_capacity_liters REAL,
  current_volume_liters REAL,
  ventilation_rate_cfm REAL,
  oxygen_level_percent REAL,
  pressure_atm REAL
);

INSERT INTO chemical_storage_audit_log (audit_id, storage_location_id, auditor_id, audit_date, temperature_c, humidity_percent, leak_detected, fire_suppression_status, security_lock_status, notes, corrective_action_required, corrective_action_due, followup_audit_date, compliance_score, storage_type, max_capacity_liters, current_volume_liters, ventilation_rate_cfm, oxygen_level_percent, pressure_atm) VALUES ('AU001','LOC01','AUD001','2023-07-12',22.5,45.0,'No','Operational','Locked','All OK','None',NULL,NULL,95,'Flammable',5000.0,3200.0,250.0,20.9,1.01);
INSERT INTO chemical_storage_audit_log (audit_id, storage_location_id, auditor_id, audit_date, temperature_c, humidity_percent, leak_detected, fire_suppression_status, security_lock_status, notes, corrective_action_required, corrective_action_due, followup_audit_date, compliance_score, storage_type, max_capacity_liters, current_volume_liters, ventilation_rate_cfm, oxygen_level_percent, pressure_atm) VALUES ('AU002','LOC02','AUD002','2023-08-03',18.0,40.0,'Yes','Operational','Unlocked','Leak in secondary valve','Replace valve', '2023-09-01','2023-09-15',78,'Corrosive',3000.0,1500.0,200.0,21.0,0.99);
INSERT INTO chemical_storage_audit_log (audit_id, storage_location_id, auditor_id, audit_date, temperature_c, humidity_percent, leak_detected, fire_suppression_status, security_lock_status, notes, corrective_action_required, corrective_action_due, followup_audit_date, compliance_score, storage_type, max_capacity_liters, current_volume_liters, ventilation_rate_cfm, oxygen_level_percent, pressure_atm) VALUES ('AU003','LOC03','AUD003','2023-09-20',25.0,50.0,'No','Maintenance required','Locked','Fire suppression sensor aging','Service panel', '2023-10-10','2023-10-25',82,'Toxic',4000.0,2800.0,230.0,20.5,1.00);

-- Wet lab equipment inventory
CREATE TABLE wet_lab_equipment_inventory (
  equipment_id TEXT PRIMARY KEY,
  equipment_name TEXT,
  manufacturer TEXT,
  model TEXT,
  serial_number TEXT,
  purchase_date DATE,
  warranty_expiry DATE,
  calibration_due_date DATE,
  last_calibration_date DATE,
  status TEXT,
  location TEXT,
  lab_section TEXT,
  power_requirement_kw REAL,
  water_connection TEXT,
  waste_output_type TEXT,
  max_volume_ml REAL,
  precision_percent REAL,
  user_manual_version TEXT,
  maintenance_schedule_days INTEGER,
  last_maintenance_date DATE,
  next_maintenance_date DATE,
  depreciation_years INTEGER
);

INSERT INTO wet_lab_equipment_inventory (equipment_id, equipment_name, manufacturer, model, serial_number, purchase_date, warranty_expiry, calibration_due_date, last_calibration_date, status, location, lab_section, power_requirement_kw, water_connection, waste_output_type, max_volume_ml, precision_percent, user_manual_version, maintenance_schedule_days, last_maintenance_date, next_maintenance_date, depreciation_years) VALUES ('EQW001','Centrifuge','SpinTech','ST-3500','SN001','2020-03-10','2025-03-10','2024-03-10','2023-09-15','Operational','Room101','Biology',1.2,'Yes','Liquid','5000',0.5,'v3.2',180,'2023-03-01','2023-09-01',7);
INSERT INTO wet_lab_equipment_inventory (equipment_id, equipment_name, manufacturer, model, serial_number, purchase_date, warranty_expiry, calibration_due_date, last_calibration_date, status, location, lab_section, power_requirement_kw, water_connection, waste_output_type, max_volume_ml, precision_percent, user_manual_version, maintenance_schedule_days, last_maintenance_date, next_maintenance_date, depreciation_years) VALUES ('EQW002','Spectrophotometer','OptiLight','OL-210','SN002','2019-07-22','2024-07-22','2023-12-01','2023-06-30','Operational','Room202','Chemistry',0.8,'No','None','2000',0.2,'v1.9',365,'2022-12-31','2023-12-31',8);
INSERT INTO wet_lab_equipment_inventory (equipment_id, equipment_name, manufacturer, model, serial_number, purchase_date, warranty_expiry, calibration_due_date, last_calibration_date, status, location, lab_section, power_requirement_kw, water_connection, waste_output_type, max_volume_ml, precision_percent, user_manual_version, maintenance_schedule_days, last_maintenance_date, next_maintenance_date, depreciation_years) VALUES ('EQW003','pH Meter','AquaSense','AS-55','SN003','2021-01-15','2026-01-15','2024-05-20','2023-05-20','Operational','Room303','Environmental',0.2,'No','None','N/A',0.1,'v2.0',180,'2023-02-01','2023-08-01',5);

-- Dry lab chemical dispensing log
CREATE TABLE dry_lab_chemical_dispensing_log (
  dispense_id TEXT PRIMARY KEY,
  operator_id TEXT,
  dispense_date DATE,
  dispense_time TEXT,
  chemical_id TEXT,
  batch_number TEXT,
  volume_ml REAL,
  concentration_mg_per_ml REAL,
  dispensing_method TEXT,
  device_id TEXT,
  nozzle_size_mm REAL,
  temperature_c REAL,
  humidity_percent REAL,
  safety_check_passed TEXT,
  incident_reported TEXT,
  comments TEXT,
  location TEXT,
  equipment_id TEXT,
  calibration_status TEXT,
  supervisor_id TEXT,
  workflow_step TEXT
);

INSERT INTO dry_lab_chemical_dispensing_log (dispense_id, operator_id, dispense_date, dispense_time, chemical_id, batch_number, volume_ml, concentration_mg_per_ml, dispensing_method, device_id, nozzle_size_mm, temperature_c, humidity_percent, safety_check_passed, incident_reported, comments, location, equipment_id, calibration_status, supervisor_id, workflow_step) VALUES ('DP001','OP001','2023-07-01','09:15','CHEM001','BATCH01',250.0,5.0,'Automated','DEV001',0.8,22.0,45.0,'Yes','No','Routine dispense','RoomA','EQD001','Calibrated','SUP001','Preparation');
INSERT INTO dry_lab_chemical_dispensing_log (dispense_id, operator_id, dispense_date, dispense_time, chemical_id, batch_number, volume_ml, concentration_mg_per_ml, dispensing_method, device_id, nozzle_size_mm, temperature_c, humidity_percent, safety_check_passed, incident_reported, comments, location, equipment_id, calibration_status, supervisor_id, workflow_step) VALUES ('DP002','OP002','2023-07-02','14:30','CHEM002','BATCH05',100.0,10.0,'Manual','DEV002',1.2,20.0,50.0,'Yes','No','Adjusted volume','RoomB','EQD002','Calibrated','SUP002','QualityCheck');
INSERT INTO dry_lab_chemical_dispensing_log (dispense_id, operator_id, dispense_date, dispense_time, chemical_id, batch_number, volume_ml, concentration_mg_per_ml, dispensing_method, device_id, nozzle_size_mm, temperature_c, humidity_percent, safety_check_passed, incident_reported, comments, location, equipment_id, calibration_status, supervisor_id, workflow_step) VALUES ('DP003','OP003','2023-07-03','11:45','CHEM003','BATCH09',500.0,2.5,'Automated','DEV003',0.5,23.5,48.0,'No','Yes','Spill detected; containment used','RoomC','EQD003','Pending','SUP003','Cleanup');

-- Spectroscopy instrument schedule
CREATE TABLE spectroscopy_instrument_schedule (
  schedule_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  schedule_date DATE,
  start_time TEXT,
  end_time TEXT,
  user_id TEXT,
  experiment_type TEXT,
  sample_id TEXT,
  method TEXT,
  wavelength_start_nm REAL,
  wavelength_end_nm REAL,
  resolution_nm REAL,
  detector_type TEXT,
  acquisition_mode TEXT,
  data_path TEXT,
  priority_level INTEGER,
  reservation_status TEXT,
  notes TEXT,
  maintenance_window_flag TEXT,
  approved_by TEXT,
  expiration_timestamp TEXT
);

INSERT INTO spectroscopy_instrument_schedule (schedule_id, instrument_id, schedule_date, start_time, end_time, user_id, experiment_type, sample_id, method, wavelength_start_nm, wavelength_end_nm, resolution_nm, detector_type, acquisition_mode, data_path, priority_level, reservation_status, notes, maintenance_window_flag, approved_by, expiration_timestamp) VALUES ('SCH001','INST001','2023-08-15','08:00','10:00','USR001','UV-Vis','SAMP001','Transmission',200.0,800.0,1.0,'CCD','Continuous','/data/uvvis/20230815_001',1,'Confirmed','N/A','No','MAN001','2023-08-14T23:59');
INSERT INTO spectroscopy_instrument_schedule (schedule_id, instrument_id, schedule_date, start_time, end_time, user_id, experiment_type, sample_id, method, wavelength_start_nm, wavelength_end_nm, resolution_nm, detector_type, acquisition_mode, data_path, priority_level, reservation_status, notes, maintenance_window_flag, approved_by, expiration_timestamp) VALUES ('SCH002','INST002','2023-08-16','13:30','15:30','USR002','Raman','SAMP002','Backscatter',400.0,1800.0,2.0,'PMT','Burst','/data/raman/20230816_001',2,'Pending','Awaiting safety clearance','No','MAN002','2023-08-15T23:59');
INSERT INTO spectroscopy_instrument_schedule (schedule_id, instrument_id, schedule_date, start_time, end_time, user_id, experiment_type, sample_id, method, wavelength_start_nm, wavelength_end_nm, resolution_nm, detector_type, acquisition_mode, data_path, priority_level, reservation_status, notes, maintenance_window_flag, approved_by, expiration_timestamp) VALUES ('SCH003','INST003','2023-08-17','09:00','11:30','USR003','FTIR','SAMP003','Absorption',500.0,4000.0=3.0,'InGaAs','Scan','/data/ftir/20230817_001',3,'Confirmed','User requested extended time','Yes','MAN003','2023-08-16T23:59');

-- Computational resource quota policy
CREATE TABLE computational_resource_quota_policy (
  policy_id TEXT PRIMARY KEY,
  resource_type TEXT,
  max_cpu_cores INTEGER,
  max_memory_gb REAL,
  max_storage_tb REAL,
  max_gpu_units INTEGER,
  period_days INTEGER,
  allowed_user_group TEXT,
  overcommit_factor REAL,
  priority_score INTEGER,
  enforcement_action TEXT,
  created_date DATE,
  updated_date DATE,
  version TEXT,
  admin_contact TEXT,
  audit_log_enabled TEXT,
  notification_email TEXT,
  usage_threshold_percent INTEGER,
  escalation_level INTEGER,
  comment TEXT
);

INSERT INTO computational_resource_quota_policy (policy_id, resource_type, max_cpu_cores, max_memory_gb, max_storage_tb, max_gpu_units, period_days, allowed_user_group, overcommit_factor, priority_score, enforcement_action, created_date, updated_date, version, admin_contact, audit_log_enabled, notification_email, usage_threshold_percent, escalation_level, comment) VALUES ('POL001','CPU',128,512.0,10.0,0,30,'researchers',1.2,80,'Throttle','2023-01-01','2023-07-01','v1.0','admin1','Yes','admin1@example.com',85,2,'Standard compute quota');
INSERT INTO computational_resource_quota_policy (policy_id, resource_type, max_cpu_cores, max_memory_gb, max_storage_tb, max_gpu_units, period_days, allowed_user_group, overcommit_factor, priority_score, enforcement_action, created_date, updated_date, version, admin_contact, audit_log_enabled, notification_email, usage_threshold_percent, escalation_level, comment) VALUES ('POL002','GPU',64,256.0,5.0,8,30,'gpu_users',1.0,90,'Deny','2023-02-15','2023-07-15','v1.1','admin2','Yes','admin2@example.com',80,3,'High‑performance GPU quota');
INSERT INTO computational_resource_quota_policy (policy_id, resource_type, max_cpu_cores, max_memory_gb, max_storage_tb, max_gpu_units, period_days, allowed_user_group, overcommit_factor, priority_score, enforcement_action, created_date, updated_date, version, admin_contact, audit_log_enabled, notification_email, usage_threshold_percent, escalation_level, comment) VALUES ('POL003','Memory',256,1024.0,20.0,0,30,'memory_intensive','1.5',70,'Notify','2023-03-10','2023-07-20','v2.0','admin3','No','admin3@example.com',90,1,'Large memory jobs');

-- Environmental noise monitoring station
CREATE TABLE environmental_noise_monitoring_station (
  station_id TEXT PRIMARY KEY,
  location_description TEXT,
  latitude REAL,
  longitude REAL,
  install_date DATE,
  sensor_model TEXT,
  frequency_range_hz TEXT,
  sensitivity_db REAL,
  calibration_date DATE,
  last_maintenance_date DATE,
  data_retention_days INTEGER,
  power_source TEXT,
  communication_protocol TEXT,
  firmware_version TEXT,
  status TEXT,
  last_reported_level_db REAL,
  avg_daily_level_db REAL,
  max_daily_level_db REAL,
  alerts_triggered INTEGER,
  maintenance_contact TEXT
);

INSERT INTO environmental_noise_monitoring_station (station_id, location_description, latitude, longitude, install_date, sensor_model, frequency_range_hz, sensitivity_db, calibration_date, last_maintenance_date, data_retention_days, power_source, communication_protocol, firmware_version, status, last_reported_level_db, avg_daily_level_db, max_daily_level_db, alerts_triggered, maintenance_contact) VALUES ('NS001','BuildingA_Roof',40.7128,-74.0060,'2022-05-01','NS-200','20-20000','-95', '2023-01-15','2023-06-01',365,'Solar','WiFi','v5.2','Active',65.2,58.0,78.5,0,'tech1');
INSERT INTO environmental_noise_monitoring_station (station_id, location_description, latitude, longitude, install_date, sensor_model, frequency_range_hz, sensitivity_db, calibration_date, last_maintenance_date, data_retention_days, power_source, communication_protocol, firmware_version, status, last_reported_level_db, avg_daily_level_db, max_daily_level_db, alerts_triggered, maintenance_contact) VALUES ('NS002','LabWing_Entrance',40.7130,-74.0062,'2022-06-15','NS-210','10-15000','-92','2023-02-20','2023-06-15',365,'Mains','Ethernet','v5.3','Active',72.1,64.5,85.0,1,'tech2');
INSERT INTO environmental_noise_monitoring_station (station_id, location_description, latitude, longitude, install_date, sensor_model, frequency_range_hz, sensitivity_db, calibration_date, last_maintenance_date, data_retention_days, power_source, communication_protocol, firmware_version, status, last_reported_level_db, avg_daily_level_db, max_daily_level_db, alerts_triggered, maintenance_contact) VALUES ('NS003','ParkingLot_North',40.7135,-74.0065,'2022-07-10','NS-220','30-18000','-96','2023-03-05','2023-07-01',365,'Mains','Cellular','v5.4','Active',80.3,70.2,92.7,2,'tech3');

-- Biohazard waste shipment log
CREATE TABLE biohazard_waste_shipment_log (
  shipment_id TEXT PRIMARY KEY,
  container_id TEXT,
  waste_type TEXT,
  quantity_kg REAL,
  origin_lab TEXT,
  destination_facility TEXT,
  pickup_date DATE,
  pickup_time TEXT,
  courier_company TEXT,
  tracking_number TEXT,
  temperature_controlled TEXT,
  seal_intact TEXT,
  safety_check_passed TEXT,
  incident_flag TEXT,
  incident_description TEXT,
  received_by TEXT,
  receipt_date DATE,
  disposal_method TEXT,
  regulatory_compliance_status TEXT,
  comments TEXT
);

INSERT INTO biohazard_waste_shipment_log (shipment_id, container_id, waste_type, quantity_kg, origin_lab, destination_facility, pickup_date, pickup_time, courier_company, tracking_number, temperature_controlled, seal_intact, safety_check_passed, incident_flag, incident_description, received_by, receipt_date, disposal_method, regulatory_compliance_status, comments) VALUES ('WS001','CNT001','BacterialCulture',2.5,'LabA','FacilityX','2023-07-20','09:30','BioTrans','TRK001','Yes','Yes','Yes','No','', 'JohnDoe','2023-07-20','Incineration','Compliant','No issues');
INSERT INTO biohazard_waste_shipment_log (shipment_id, container_id, waste_type, quantity_kg, origin_lab, destination_facility, pickup_date, pickup_time, courier_company, tracking_number, temperature_controlled, seal_intact, safety_check_passed, incident_flag, incident_description, received_by, receipt_date, disposal_method, regulatory_compliance_status, comments) VALUES ('WS002','CNT002','ViralSample',1.2,'LabB','FacilityY','2023-07-21','14:00','SafeShip','TRK002','No','Yes','Yes','Yes','Leak detected during transport','JaneSmith','2023-07-22','Autoclave','NonCompliant','Leak sealed and re‑shipped');
INSERT INTO biohazard_waste_shipment_log (shipment_id, container_id, waste_type, quantity_kg, origin_lab, destination_facility, pickup_date, pickup_time, courier_company, tracking_number, temperature_controlled, seal_intact, safety_check_passed, incident_flag, incident_description, received_by, receipt_date, disposal_method, regulatory_compliance_status, comments) VALUES ('WS003','CNT003','PathogenCulture',3.0,'LabC','FacilityZ','2023-07-22','11:45','BioExpress','TRK003','Yes','No','No','Yes','Seal broken, contamination risk','MikeLee','2023-07-23','ChemDisposal','NonCompliant','Quarantine initiated');

-- Lab ventilation zone performance
CREATE TABLE lab_ventilation_zone_performance (
  zone_id TEXT PRIMARY KEY,
  zone_name TEXT,
  airflow_design_cfm REAL,
  airflow_measured_cfm REAL,
  pressure_balance_pa REAL,
  temperature_setpoint_c REAL,
  temperature_measured_c REAL,
  humidity_setpoint_percent REAL,
  humidity_measured_percent REAL,
  filter_efficiency_percent REAL,
  fan_status TEXT,
  damper_position_percent REAL,
  energy_consumption_kwh REAL,
  maintenance_due_date DATE,
  last_inspection_date DATE,
  compliance_status TEXT,
  notes TEXT,
  created_at DATE,
  updated_at DATE,
  responsible_engineer TEXT
);

INSERT INTO lab_ventilation_zone_performance (zone_id, zone_name, airflow_design_cfm, airflow_measured_cfm, pressure_balance_pa, temperature_setpoint_c, temperature_measured_c, humidity_setpoint_percent, humidity_measured_percent, filter_efficiency_percent, fan_status, damper_position_percent, energy_consumption_kwh, maintenance_due_date, last_inspection_date, compliance_status, notes, created_at, updated_at, responsible_engineer) VALUES ('ZN001','ZoneAlpha',3000.0,2950.5,0.5,22.0,22.3,45.0,44.8,98.0,'Running',95.0,1200.5,'2023-12-01','2023-06-15','Compliant','All parameters within spec','2023-01-01','2023-07-01','Eng001');
INSERT INTO lab_ventilation_zone_performance (zone_id, zone_name, airflow_design_cfm, airflow_measured_cfm, pressure_balance_pa, temperature_setpoint_c, temperature_measured_c, humidity_setpoint_percent, humidity_measured_percent, filter_efficiency_percent, fan_status, damper_position_percent, energy_consumption_kwh, maintenance_due_date, last_inspection_date, compliance_status, notes, created_at, updated_at, responsible_engineer) VALUES ('ZN002','ZoneBeta',2500.0,2400.0,1.2,21.5,21.9,50.0,49.5,96.5,'Running',88.0,950.3,'2023-11-15','2023-05-20','NonCompliant','Airflow below design','2023-02-01','2023-07-15','Eng002');
INSERT INTO lab_ventilation_zone_performance (zone_id, zone_name, airflow_design_cfm, airflow_measured_cfm, pressure_balance_pa, temperature_setpoint_c, temperature_measured_c, humidity_setpoint_percent, humidity_measured_percent, filter_efficiency_percent, fan_status, damper_position_percent, energy_consumption_kwh, maintenance_due_date, last_inspection_date, compliance_status, notes, created_at, updated_at, responsible_engineer) VALUES ('ZN003','ZoneGamma',3500.0,3520.2,-0.3,23.0,22.8,40.0,40.2,99.0,'Running',100.0,1400.8,'2024-01-10','2023-04-30','Compliant','Performance exceeds design','2023-03-01','2023-07-20','Eng003');

-- Clinical trial data access log
CREATE TABLE clinical_trial_data_access_log (
  access_id TEXT PRIMARY KEY,
  trial_id TEXT,
  participant_id TEXT,
  user_id TEXT,
  access_timestamp TEXT,
  data_type TEXT,
  dataset_id TEXT,
  purpose_code TEXT,
  approval_status TEXT,
  ip_address TEXT,
  device_type TEXT,
  encrypted_transfer_flag TEXT,
  data_bytes_transferred BIGINT,
  audit_trail_id TEXT,
  confidentiality_level TEXT,
  breach_flag TEXT,
  comments TEXT,
  retention_policy TEXT,
  revocation_date DATE,
  audit_user_id TEXT
);

INSERT INTO clinical_trial_data_access_log (access_id, trial_id, participant_id, user_id, access_timestamp, data_type, dataset_id, purpose_code, approval_status, ip_address, device_type, encrypted_transfer_flag, data_bytes_transferred, audit_trail_id, confidentiality_level, breach_flag, comments, retention_policy, revocation_date, audit_user_id) VALUES ('ACC001','TR001','PT001','USR001','2023-07-25T10:15:00','EHR','DS001','ANL','Approved','192.168.1.10','Desktop','Yes',1048576,'AUD001','High','No','Access for baseline analysis','5years',NULL,'AUDUSER1');
INSERT INTO clinical_trial_data_access_log (access_id, trial_id, participant_id, user_id, access_timestamp, data_type, dataset_id, purpose_code, approval_status, ip_address, device_type, encrypted_transfer_flag, data_bytes_transferred, audit_trail_id, confidentiality_level, breach_flag, comments, retention_policy, revocation_date, audit_user_id) VALUES ('ACC002','TR002','PT002','USR002','2023-07-26T14:30:00','Genomics','DS002','QC','Pending','10.0.0.5','Laptop','Yes',2097152,'AUD002','Medium','No','Quality check before analysis','3years',NULL,'AUDUSER2');
INSERT INTO clinical_trial_data_access_log (access_id, trial_id, participant_id, user_id, access_timestamp, data_type, dataset_id, purpose_code, approval_status, ip_address, device_type, encrypted_transfer_flag, data_bytes_transferred, audit_trail_id, confidentiality_level, breach_flag, comments, retention_policy, revocation_date, audit_user_id) VALUES ('ACC003','TR003','PT003','USR003','2023-07-27T09:45:00','Imaging','DS003','REVIEW','Approved','172.16.0.20','Tablet','Yes',3145728,'AUD003','High','Yes','Unauthorized download attempt flagged','5years','2023-08-01','AUDUSER3');