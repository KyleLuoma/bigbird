-- Optical fiber maintenance record table
CREATE TABLE optical_fiber_maintenance_record (
  record_id TEXT PRIMARY KEY,
  maintenance_date DATE,
  technician_id TEXT,
  fiber_id TEXT,
  segment_length_km REAL,
  connector_type TEXT,
  inspection_result TEXT,
  attenuation_db REAL,
  splice_loss_db REAL,
  chromatic_dispersion_psnm REAL,
  polarization_mode_dispersion_ps REAL,
  temperature_c REAL,
  humidity_percent REAL,
  location_building TEXT,
  location_floor INTEGER,
  remarks TEXT,
  next_due_date DATE,
  maintenance_type TEXT,
  equipment_used TEXT,
  service_provider TEXT,
  cost_usd REAL,
  updated_at DATETIME
);

INSERT INTO optical_fiber_maintenance_record (record_id, maintenance_date, technician_id, fiber_id, segment_length_km, connector_type, inspection_result, attenuation_db, splice_loss_db, chromatic_dispersion_psnm, polarization_mode_dispersion_ps, temperature_c, humidity_percent, location_building, location_floor, remarks, next_due_date, maintenance_type, equipment_used, service_provider, cost_usd, updated_at)
VALUES ('REC001','2025-01-10','TECH01','FIB001',12.5,'LCAP','PASS',0.35,0.05,4.2,0.3,22.5,45,'Main','2','Routine check','2025-07-10','Preventive','OTDR','FiberCo',150.00,'2025-01-10 08:30:00');

INSERT INTO optical_fiber_maintenance_record (record_id, maintenance_date, technician_id, fiber_id, segment_length_km, connector_type, inspection_result, attenuation_db, splice_loss_db, chromatic_dispersion_psnm, polarization_mode_dispersion_ps, temperature_c, humidity_percent, location_building, location_floor, remarks, next_due_date, maintenance_type, equipment_used, service_provider, cost_usd, updated_at)
VALUES ('REC002','2025-02-15','TECH02','FIB017',8.3,'SCAP','FAIL',0.78,0.12,5.5,0.45,24.0,50,'East','1','Connector damage','2025-08-15','Corrective','PowerMeter','FiberCo',220.00,'2025-02-15 09:15:00');

INSERT INTO optical_fiber_maintenance_record (record_id, maintenance_date, technician_id, fiber_id, segment_length_km, connector_type, inspection_result, attenuation_db, splice_loss_db, chromatic_dispersion_psnm, polarization_mode_dispersion_ps, temperature_c, humidity_percent, location_building, location_floor, remarks, next_due_date, maintenance_type, equipment_used, service_provider, cost_usd, updated_at)
VALUES ('REC003','2025-03-20','TECH03','FIB042',15.0,'LCAP','PASS',0.28,0.04,3.9,0.25,21.8,42,'West','3','Annual inspection','2025-09-20','Preventive','OTDR','FiberCo',180.00,'2025-03-20 07:45:00');

-- Lab power backup test table
CREATE TABLE lab_power_backup_test (
  test_id TEXT PRIMARY KEY,
  test_date DATE,
  battery_bank_id TEXT,
  capacity_kwh REAL,
  load_percent REAL,
  duration_minutes INTEGER,
  result TEXT,
  operator_id TEXT,
  voltage_v REAL,
  current_a REAL,
  temperature_c REAL,
  humidity_percent REAL,
  location TEXT,
  maintenance_cycle INTEGER,
  notes TEXT,
  next_test_date DATE,
  verifier_id TEXT,
  software_version TEXT,
  error_code TEXT,
  updated_at DATETIME
);

INSERT INTO lab_power_backup_test (test_id, test_date, battery_bank_id, capacity_kwh, load_percent, duration_minutes, result, operator_id, voltage_v, current_a, temperature_c, humidity_percent, location, maintenance_cycle, notes, next_test_date, verifier_id, software_version, error_code, updated_at)
VALUES ('TEST001','2025-01-05','BB01',250.0,75.0,120,'PASS','OP001',480.0,150.0,22.0,40,'BuildingA',2,'All parameters nominal','2025-07-05','VER001','v1.2','', '2025-01-05 10:00:00');

INSERT INTO lab_power_backup_test (test_id, test_date, battery_bank_id, capacity_kwh, load_percent, duration_minutes, result, operator_id, voltage_v, current_a, temperature_c, humidity_percent, location, maintenance_cycle, notes, next_test_date, verifier_id, software_version, error_code, updated_at)
VALUES ('TEST002','2025-02-10','BB02',300.0,60.0,90,'FAIL','OP002',460.0,140.0,24.5,45,'BuildingB',3,'Voltage dip observed','2025-08-10','VER002','v1.3','E101','2025-02-10 11:30:00');

INSERT INTO lab_power_backup_test (test_id, test_date, battery_bank_id, capacity_kwh, load_percent, duration_minutes, result, operator_id, voltage_v, current_a, temperature_c, humidity_percent, location, maintenance_cycle, notes, next_test_date, verifier_id, software_version, error_code, updated_at)
VALUES ('TEST003','2025-03-20','BB01',250.0,85.0,130,'PASS','OP003',485.0,155.0,21.0,38,'BuildingA',2,'Extended run successful','2025-09-20','VER001','v1.2','', '2025-03-20 09:45:00');

-- Air handling unit performance table
CREATE TABLE air_handling_unit_performance (
  unit_id TEXT PRIMARY KEY,
  measurement_timestamp DATETIME,
  supply_air_flow_cmh REAL,
  exhaust_air_flow_cmh REAL,
  static_pressure_pa REAL,
  temperature_supply_c REAL,
  temperature_exhaust_c REAL,
  humidity_supply_percent REAL,
  humidity_exhaust_percent REAL,
  filter_status TEXT,
  fan_speed_rpm REAL,
  motor_current_a REAL,
  power_kw REAL,
  co2_ppm REAL,
  voc_ppb REAL,
  sound_level_db REAL,
  location_building TEXT,
  location_floor INTEGER,
  maintenance_flag TEXT,
  operator_id TEXT,
  remarks TEXT
);

INSERT INTO air_handling_unit_performance (unit_id, measurement_timestamp, supply_air_flow_cmh, exhaust_air_flow_cmh, static_pressure_pa, temperature_supply_c, temperature_exhaust_c, humidity_supply_percent, humidity_exhaust_percent, filter_status, fan_speed_rpm, motor_current_a, power_kw, co2_ppm, voc_ppb, sound_level_db, location_building, location_floor, maintenance_flag, operator_id, remarks)
VALUES ('AHU01','2025-01-12 08:00:00',3500.0,3400.0,150.0,22.5,24.0,45.0,50.0,'OK',1800.0,5.2,12.0,400,120,55,'Main','1','N','OP001','Normal operation');

INSERT INTO air_handling_unit_performance (unit_id, measurement_timestamp, supply_air_flow_cmh, exhaust_air_flow_cmh, static_pressure_pa, temperature_supply_c, temperature_exhaust_c, humidity_supply_percent, humidity_exhaust_percent, filter_status, fan_speed_rpm, motor_current_a, power_kw, co2_ppm, voc_ppb, sound_level_db, location_building, location_floor, maintenance_flag, operator_id, remarks)
VALUES ('AHU02','2025-01-12 08:05:00',2800.0,2750.0,130.0,21.0,23.0,48.0,53.0,'WARN',1600.0,4.8,10.5,420,130,60,'East','2','Y','OP002','Filter pressure high');

INSERT INTO air_handling_unit_performance (unit_id, measurement_timestamp, supply_air_flow_cmh, exhaust_air_flow_cmh, static_pressure_pa, temperature_supply_c, temperature_exhaust_c, humidity_supply_percent, humidity_exhaust_percent, filter_status, fan_speed_rpm, motor_current_a, power_kw, co2_ppm, voc_ppb, sound_level_db, location_building, location_floor, maintenance_flag, operator_id, remarks)
VALUES ('AHU03','2025-01-12 08:10:00',3100.0,3000.0,140.0,22.0,23.5,46.0,51.0,'OK',1700.0,5.0,11.2,410,125,58,'West','1','N','OP003','All parameters stable');

-- Chemical reaction safety review table
CREATE TABLE chemical_reaction_safety_review (
  review_id TEXT PRIMARY KEY,
  reaction_id TEXT,
  review_date DATE,
  reviewer_id TEXT,
  hazard_level TEXT,
  flammability_rating INTEGER,
  toxicity_rating INTEGER,
  reactivity_rating INTEGER,
  containment_type TEXT,
  required_ppe TEXT,
  ventilation_needed BOOLEAN,
  shielding_needed BOOLEAN,
  max_temperature_c REAL,
  max_pressure_bar REAL,
  exothermic BOOLEAN,
  safety_measures TEXT,
  approval_status TEXT,
  comments TEXT,
  next_review_date DATE,
  document_reference TEXT,
  updated_by TEXT,
  updated_at DATETIME
);

INSERT INTO chemical_reaction_safety_review (review_id, reaction_id, review_date, reviewer_id, hazard_level, flammability_rating, toxicity_rating, reactivity_rating, containment_type, required_ppe, ventilation_needed, shielding_needed, max_temperature_c, max_pressure_bar, exothermic, safety_measures, approval_status, comments, next_review_date, document_reference, updated_by, updated_at)
VALUES ('REV001','RXN1001','2025-01-08','REVW01','HIGH',5,4,3,'GloveBox','LabCoat,Goggles',TRUE,FALSE,150.0,5.0,TRUE,'Secondary containment, gas scrubber','APPROVED','No issues','2026-01-08','DOC1001','REVW01','2025-01-08 09:00:00');

INSERT INTO chemical_reaction_safety_review (review_id, reaction_id, review_date, reviewer_id, hazard_level, flammability_rating, toxicity_rating, reactivity_rating, containment_type, required_ppe, ventilation_needed, shielding_needed, max_temperature_c, max_pressure_bar, exothermic, safety_measures, approval_status, comments, next_review_date, document_reference, updated_by, updated_at)
VALUES ('REV002','RXN2002','2025-02-12','REVW02','MEDIUM',3,2,4,'FumeHood','LabCoat,Gloves',TRUE,TRUE,120.0,3.0,FALSE,'Ventilation increase, lead shield','PENDING','Awaiting additional data','2026-02-12','DOC2002','REVW02','2025-02-12 11:20:00');

INSERT INTO chemical_reaction_safety_review (review_id, reaction_id, review_date, reviewer_id, hazard_level, flammability_rating, toxicity_rating, reactivity_rating, containment_type, required_ppe, ventilation_needed, shielding_needed, max_temperature_c, max_pressure_bar, exothermic, safety_measures, approval_status, comments, next_review_date, document_reference, updated_by, updated_at)
VALUES ('REV003','RXN3003','2025-03-15','REVW03','LOW',1,1,2,'OpenBench','Gloves',FALSE,FALSE,80.0,1.0,FALSE,'Standard PPE','APPROVED','Suitable for teaching lab','2026-03-15','DOC3003','REVW03','2025-03-15 14:45:00');

-- Nanomaterial exposure evaluation table
CREATE TABLE nanomaterial_exposure_evaluation (
  evaluation_id TEXT PRIMARY KEY,
  nanomaterial_id TEXT,
  evaluation_date DATE,
  evaluator_id TEXT,
  exposure_route TEXT,
  concentration_mg_m3 REAL,
  duration_minutes INTEGER,
  particle_size_nm REAL,
  surface_area_m2_g REAL,
  zeta_potential_mv REAL,
  toxicity_score INTEGER,
  genotoxicity_score INTEGER,
  oxidative_stress_score INTEGER,
  respiratory_effect_score INTEGER,
  skin_effect_score INTEGER,
  recommended_control TEXT,
  ppe_required TEXT,
  engineering_controls TEXT,
  notes TEXT,
  follow_up_date DATE,
  status TEXT,
  created_at DATETIME,
  updated_at DATETIME
);

INSERT INTO nanomaterial_exposure_evaluation (evaluation_id, nanomaterial_id, evaluation_date, evaluator_id, exposure_route, concentration_mg_m3, duration_minutes, particle_size_nm, surface_area_m2_g, zeta_potential_mv, toxicity_score, genotoxicity_score, oxidative_stress_score, respiratory_effect_score, skin_effect_score, recommended_control, ppe_required, engineering_controls, notes, follow_up_date, status, created_at, updated_at)
VALUES ('EVAL001','NM001','2025-01-20','EVAL01','Inhalation',0.05,120,25.0,150.0,-30,3,2,4,5,1,'Local exhaust','Respirator,Gloves','HEPA filtration','Observed mild irritation','2025-04-20','OPEN','2025-01-20 08:00:00','2025-01-20 08:00:00');

INSERT INTO nanomaterial_exposure_evaluation (evaluation_id, nanomaterial_id, evaluation_date, evaluator_id, exposure_route, concentration_mg_m3, duration_minutes, particle_size_nm, surface_area_m2_g, zeta_potential_mv, toxicity_score, genotoxicity_score, oxidative_stress_score, respiratory_effect_score, skin_effect_score, recommended_control, ppe_required, engineering_controls, notes, follow_up_date, status, created_at, updated_at)
VALUES ('EVAL002','NM002','2025-02-14','EVAL02','Dermal',0.02,60,45.0,120.0,15,2,1,3,2,2,'Encapsulation','Gloves','Wet washdown','No skin redness observed','2025-05-14','CLOSED','2025-02-14 09:30:00','2025-02-14 09:30:00');

INSERT INTO nanomaterial_exposure_evaluation (evaluation_id, nanomaterial_id, evaluation_date, evaluator_id, exposure_route, concentration_mg_m3, duration_minutes, particle_size_nm, surface_area_m2_g, zeta_potential_mv, toxicity_score, genotoxicity_score, oxidative_stress_score, respiratory_effect_score, skin_effect_score, recommended_control, ppe_required, engineering_controls, notes, follow_up_date, status, created_at, updated_at)
VALUES ('EVAL003','NM003','2025-03-05','EVAL03','Ingestion',0.01,30,10.0,200.0,5,1,0,1,0,0,'Process isolation','None','Closed system','No adverse effects','2025-06-05','OPEN','2025-03-05 10:15:00','2025-03-05 10:15:00');

-- Robotic arm task queue table
CREATE TABLE robotic_arm_task_queue (
  queue_id TEXT PRIMARY KEY,
  task_id TEXT,
  submission_time DATETIME,
  priority INTEGER,
  robot_id TEXT,
  task_type TEXT,
  target_location TEXT,
  required_tool TEXT,
  estimated_duration_sec INTEGER,
  status TEXT,
  operator_id TEXT,
  error_code TEXT,
  retry_count INTEGER,
  max_retries INTEGER,
  scheduled_start DATETIME,
  actual_start DATETIME,
  actual_end DATETIME,
  remarks TEXT,
  created_by TEXT,
  created_at DATETIME
);

INSERT INTO robotic_arm_task_queue (queue_id, task_id, submission_time, priority, robot_id, task_type, target_location, required_tool, estimated_duration_sec, status, operator_id, error_code, retry_count, max_retries, scheduled_start, actual_start, actual_end, remarks, created_by, created_at)
VALUES ('Q001','T001','2025-01-10 07:45:00',1,'RB01','SampleTransfer','RackA1','Gripper',300,'QUEUED','OP001','','0',3,'2025-01-10 08:00:00',NULL,NULL,'High priority transfer','SYS','2025-01-10 07:45:00');

INSERT INTO robotic_arm_task_queue (queue_id, task_id, submission_time, priority, robot_id, task_type, target_location, required_tool, estimated_duration_sec, status, operator_id, error_code, retry_count, max_retries, scheduled_start, actual_start, actual_end, remarks, created_by, created_at)
VALUES ('Q002','T002','2025-01-10 08:15:00',2,'RB02','PlateSeating','IncubatorB','PlateHandler',600,'IN_PROGRESS','OP002','E200',1,5,'2025-01-10 08:30:00','2025-01-10 08:31:00',NULL,'Encountered brief pause','SYS','2025-01-10 08:15:00');

INSERT INTO robotic_arm_task_queue (queue_id, task_id, submission_time, priority, robot_id, task_type, target_location, required_tool, estimated_duration_sec, status, operator_id, error_code, retry_count, max_retries, scheduled_start, actual_start, actual_end, remarks, created_by, created_at)
VALUES ('Q003','T003','2025-01-10 09:00:00',3,'RB01','Cleaning','CleaningStation','Brush',180,'COMPLETED','OP001','',0,3,'2025-01-10 09:05:00','2025-01-10 09:06:00','2025-01-10 09:09:00','Routine cleaning','SYS','2025-01-10 09:00:00');

-- HVAC zone temperature profile table
CREATE TABLE hvac_zone_temperature_profile (
  profile_id TEXT PRIMARY KEY,
  zone_id TEXT,
  record_timestamp DATETIME,
  temperature_c REAL,
  setpoint_c REAL,
  humidity_percent REAL,
  airflow_cmh REAL,
  filter_efficiency_percent REAL,
  cooling_capacity_kw REAL,
  heating_capacity_kw REAL,
  mode TEXT,
  fan_speed_rpm REAL,
  energy_consumption_kwh REAL,
  timestamp_start DATETIME,
  timestamp_end DATETIME,
  occupancy_status TEXT,
  damper_position_percent REAL,
  co2_ppm REAL,
  voc_ppb REAL,
  maintenance_required BOOLEAN,
  notes TEXT,
  updated_at DATETIME
);

INSERT INTO hvac_zone_temperature_profile (profile_id, zone_id, record_timestamp, temperature_c, setpoint_c, humidity_percent, airflow_cmh, filter_efficiency_percent, cooling_capacity_kw, heating_capacity_kw, mode, fan_speed_rpm, energy_consumption_kwh, timestamp_start, timestamp_end, occupancy_status, damper_position_percent, co2_ppm, voc_ppb, maintenance_required, notes, updated_at)
VALUES ('PROF001','ZONE01','2025-01-12 10:00:00',22.5,22.0,45.0,1800.0,95.0,12.0,8.0,'COOL',1500.0,5.2,'2025-01-12 09:55:00','2025-01-12 10:05:00','OCCUPIED',80.0,600,80,FALSE,'Stable operation','2025-01-12 10:00:00');

INSERT INTO hvac_zone_temperature_profile (profile_id, zone_id, record_timestamp, temperature_c, setpoint_c, humidity_percent, airflow_cmh, filter_efficiency_percent, cooling_capacity_kw, heating_capacity_kw, mode, fan_speed_rpm, energy_consumption_kwh, timestamp_start, timestamp_end, occupancy_status, damper_position_percent, co2_ppm, voc_ppb, maintenance_required, notes, updated_at)
VALUES ('PROF002','ZONE02','2025-01-12 10:15:00',24.0,23.5,50.0,2000.0,90.0,14.0,9.0,'HEAT',1600.0,6.0,'2025-01-12 10:10:00','2025-01-12 10:20:00','VACANT',70.0,650,85,TRUE,'Filter replacement due','2025-01-12 10:15:00');

INSERT INTO hvac_zone_temperature_profile (profile_id, zone_id, record_timestamp, temperature_c, setpoint_c, humidity_percent, airflow_cmh, filter_efficiency_percent, cooling_capacity_kw, heating_capacity_kw, mode, fan_speed_rpm, energy_consumption_kwh, timestamp_start, timestamp_end, occupancy_status, damper_position_percent, co2_ppm, voc_ppb, maintenance_required, notes, updated_at)
VALUES ('PROF003','ZONE03','2025-01-12 10:30:00',21.0,21.5,40.0,1500.0,98.0,10.0,7.0,'AUTO',1400.0,4.8,'2025-01-12 10:25:00','2025-01-12 10:35:00','OCCUPIED',85.0,580,70,FALSE','No issues','2025-01-12 10:30:00');

-- Lab waste incineration schedule table
CREATE TABLE lab_waste_incineration_schedule (
  schedule_id TEXT PRIMARY KEY,
  incineration_date DATE,
  facility_id TEXT,
  waste_type TEXT,
  total_weight_kg REAL,
  batch_number TEXT,
  operator_id TEXT,
  temperature_c REAL,
  duration_minutes INTEGER,
  emission_status TEXT,
  permit_number TEXT,
  environmental_monitoring_id TEXT,
  remarks TEXT,
  next_scheduled_date DATE,
  approval_status TEXT,
  created_by TEXT,
  created_at DATETIME,
  updated_by TEXT,
  updated_at DATETIME,
  status TEXT,
  notes TEXT
);

INSERT INTO lab_waste_incineration_schedule (schedule_id, incineration_date, facility_id, waste_type, total_weight_kg, batch_number, operator_id, temperature_c, duration_minutes, emission_status, permit_number, environmental_monitoring_id, remarks, next_scheduled_date, approval_status, created_by, created_at, updated_by, updated_at, status, notes)
VALUES ('SCH001','2025-02-01','INC001','Organic',1200.5,'B001','OP001',950.0,180,'COMPLIANT','PERM1001','EM001','No irregularities','2025-08-01','APPROVED','ADMIN','2025-01-15 09:00:00','ADMIN','2025-01-15 09:00:00','COMPLETED','Standard batch');

INSERT INTO lab_waste_incineration_schedule (schedule_id, incineration_date, facility_id, waste_type, total_weight_kg, batch_number, operator_id, temperature_c, duration_minutes, emission_status, permit_number, environmental_monitoring_id, remarks, next_scheduled_date, approval_status, created_by, created_at, updated_by, updated_at, status, notes)
VALUES ('SCH002','2025-03-10','INC002','Inorganic',800.0,'B002','OP002',1000.0,150,'WARNING','PERM1002','EM002','Elevated NOx observed','2025-09-10','PENDING','ADMIN','2025-02-20 10:30:00','ADMIN','2025-02-20 10:30:00','PENDING','Investigate emission control');

INSERT INTO lab_waste_incineration_schedule (schedule_id, incineration_date, facility_id, waste_type, total_weight_kg, batch_number, operator_id, temperature_c, duration_minutes, emission_status, permit_number, environmental_monitoring_id, remarks, next_scheduled_date, approval_status, created_by, created_at, updated_by, updated_at, status, notes)
VALUES ('SCH003','2025-04-20','INC001','Mixed',1500.0,'B003','OP003',970.0,200,'COMPLIANT','PERM1003','EM003','All parameters within limits','2025-10-20','APPROVED','ADMIN','2025-03-01 08:45:00','ADMIN','2025-03-01 08:45:00','COMPLETED','Successful incineration');

-- Bioinformatics workflow execution log table
CREATE TABLE bioinformatics_workflow_execution_log (
  execution_id TEXT PRIMARY KEY,
  workflow_id TEXT,
  run_start DATETIME,
  run_end DATETIME,
  status TEXT,
  initiator_id TEXT,
  compute_node TEXT,
  cpu_cores INTEGER,
  memory_gb REAL,
  disk_gb REAL,
  input_dataset TEXT,
  output_dataset TEXT,
  error_message TEXT,
  warning_message TEXT,
  execution_version TEXT,
  parameters_json TEXT,
  log_file_path TEXT,
  runtime_seconds INTEGER,
  queued_time_seconds INTEGER,
  priority INTEGER,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME
);

INSERT INTO bioinformatics_workflow_execution_log (execution_id, workflow_id, run_start, run_end, status, initiator_id, compute_node, cpu_cores, memory_gb, disk_gb, input_dataset, output_dataset, error_message, warning_message, execution_version, parameters_json, log_file_path, runtime_seconds, queued_time_seconds, priority, notes, created_at, updated_at)
VALUES ('EXE001','WF001','2025-01-20 08:00:00','2025-01-20 09:30:00','SUCCESS','USR01','NODE01',16,64.0,500.0,'DS_IN_01','DS_OUT_01','', 'Low memory warning','v2.1','{"param1":"value1"}','/logs/exe001.log',5400,300,1,'','2025-01-20 07:55:00','2025-01-20 09:35:00');

INSERT INTO bioinformatics_workflow_execution_log (execution_id, workflow_id, run_start, run_end, status, initiator_id, compute_node, cpu_cores, memory_gb, disk_gb, input_dataset, output_dataset, error_message, warning_message, execution_version, parameters_json, log_file_path, runtime_seconds, queued_time_seconds, priority, notes, created_at, updated_at)
VALUES ('EXE002','WF002','2025-02-05 10:15:00','2025-02-05 12:45:00','FAILED','USR02','NODE02',32,128.0,1000.0,'DS_IN_02','DS_OUT_02','Segmentation fault','', 'v3.0','{"paramA":"valA"}','/logs/exe002.log',9000,600,2,'Investigation required','2025-02-05 10:00:00','2025-02-05 12:50:00');

INSERT INTO bioinformatics_workflow_execution_log (execution_id, workflow_id, run_start, run_end, status, initiator_id, compute_node, cpu_cores, memory_gb, disk_gb, input_dataset, output_dataset, error_message, warning_message, execution_version, parameters_json, log_file_path, runtime_seconds, queued_time_seconds, priority, notes, created_at, updated_at)
VALUES ('EXE003','WF001','2025-03-12 14:00:00','2025-03-12 15:20:00','SUCCESS','USR01','NODE03',24,96.0,750.0,'DS_IN_03','DS_OUT_03','', 'High CPU usage','v2.1','{"param1":"value2"}','/logs/exe003.log',4800,150,1,'','2025-03-12 13:55:00','2025-03-12 15:25:00');

-- Quantum device fabrication batch table
CREATE TABLE quantum_device_fabrication_batch (
  batch_id TEXT PRIMARY KEY,
  fabrication_date DATE,
  device_type TEXT,
  wafer_id TEXT,
  die_number INTEGER,
  process_node_nm INTEGER,
  gate_count INTEGER,
  critical_dimension_nm REAL,
  yield_percent REAL,
  test_pass_rate REAL,
  cryogenic_test_temp_mk REAL,
  magnetic_field_mT REAL,
  fabrication_facility TEXT,
  operator_id TEXT,
  equipment_used TEXT,
  process_flow TEXT,
  quality_score INTEGER,
  batch_status TEXT,
  remarks TEXT,
  next_step TEXT,
  target_application TEXT,
  cost_usd REAL,
  created_at DATETIME,
  updated_at DATETIME
);

INSERT INTO quantum_device_fabrication_batch (batch_id, fabrication_date, device_type, wafer_id, die_number, process_node_nm, gate_count, critical_dimension_nm, yield_percent, test_pass_rate, cryogenic_test_temp_mk, magnetic_field_mT, fabrication_facility, operator_id, equipment_used, process_flow, quality_score, batch_status, remarks, next_step, target_application, cost_usd, created_at, updated_at)
VALUES ('QBATCH001','2025-01-25','Qubit','WAF001',150,7,1200,30.5,92.0,0.88,15.0,0.5,'FAB01','OP01','Ebeam','Standard','85','COMPLETED','Meets specs','Packaging','QuantumComputing','250000','2025-01-20 09:00:00','2025-01-25 17:30:00');

INSERT INTO quantum_device_fabrication_batch (batch_id, fabrication_date, device_type, wafer_id, die_number, process_node_nm, gate_count, critical_dimension_nm, yield_percent, test_pass_rate, cryogenic_test_temp_mk, magnetic_field_mT, fabrication_facility, operator_id, equipment_used, process_flow, quality_score, batch_status, remarks, next_step, target_application, cost_usd, created_at, updated_at)
VALUES ('QBATCH002','2025-02-15','Qubit','WAF002',140,5,1300,28.0,88.5,0.82,12.0,0.4,'FAB02','OP02','Advanced','Optimized','80','IN_PROGRESS','Yield slightly lower than target','FinalTesting','QuantumSensors','230000','2025-02-10 10:15:00','2025-02-15 16:45:00');

INSERT INTO quantum_device_fabrication_batch (batch_id, fabrication_date, device_type, wafer_id, die_number, process_node_nm, gate_count, critical_dimension_nm, yield_percent, test_pass_rate, cryogenic_test_temp_mk, magnetic_field_mT, fabrication_facility, operator_id, equipment_used, process_flow, quality_score, batch_status, remarks, next_step, target_application, cost_usd, created_at, updated_at)
VALUES ('QBATCH003','2025-03-05','Qubit','WAF003',160,10,1100,32.0,94.0,0.91,18.0,0.6,'FAB01','OP03','Standard','Standard','88','COMPLETED','Excellent performance','Shipping','QuantumResearch','270000','2025-02-28 08:30:00','2025-03-05 15:20:00');