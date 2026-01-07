-- Instrument service record tracking
CREATE TABLE instrument_service_record (
  service_id TEXT PRIMARY KEY,
  instrument_id TEXT NOT NULL,
  service_date DATE NOT NULL,
  technician_id TEXT NOT NULL,
  service_type TEXT,
  parts_replaced TEXT,
  cost REAL,
  downtime_hours REAL,
  service_notes TEXT,
  next_service_due DATE,
  warranty_status TEXT,
  calibration_verified INTEGER,
  firmware_version TEXT,
  software_patch_level TEXT,
  service_location TEXT,
  priority TEXT,
  compliance_check INTEGER,
  external_vendor TEXT,
  service_order_number TEXT,
  documentation_link TEXT
);

INSERT INTO instrument_service_record VALUES ('SRV001','INST123','2023-01-15','TECH001','Preventive','PARTA,PARTB',1500.00,2.5,'Routine check','2024-01-15','Valid',1,'v2.3','patch5','Lab A','High',1,'VendorX','ORD1001','http://docs.example.com/srv001');
INSERT INTO instrument_service_record VALUES ('SRV002','INST456','2023-02-20','TECH002','Repair','PARTC',750.00,4,'Replaced sensor','2023-08-20','Expired',0,'v1.9','patch2','Lab B','Medium',1,'VendorY','ORD1002','http://docs.example.com/srv002');
INSERT INTO instrument_service_record VALUES ('SRV003','INST789','2023-03-05','TECH003','Calibration','',300.00,1,'Calibrated voltage','2023-09-05','Valid',1,'v3.0','patch1','Lab C','Low',1,'VendorZ','ORD1003','http://docs.example.com/srv003');

-- Airflow simulation scenario definitions
CREATE TABLE airflow_simulation_scenario (
  scenario_id TEXT PRIMARY KEY,
  description TEXT,
  created_by TEXT,
  creation_date DATE,
  mesh_density INTEGER,
  solver_type TEXT,
  turbulence_model TEXT,
  boundary_condition TEXT,
  inlet_velocity REAL,
  outlet_pressure REAL,
  temperature REAL,
  humidity REAL,
  simulation_duration REAL,
  time_step REAL,
  convergence_criteria REAL,
  cpu_cores INTEGER,
  memory_gb INTEGER,
  software_version TEXT,
  validation_status TEXT,
  result_dataset_id TEXT
);

INSERT INTO airflow_simulation_scenario VALUES ('SCN001','Baseline HVAC','USER01','2023-01-10',100000,'SteadyState','k-epsilon','NoSlip',1.2,0,22.5,45,120.0,0.5,1e-5,8,16,'CFDPro v2.1','Validated','DS001');
INSERT INTO airflow_simulation_scenario VALUES ('SCN002','Increased occupancy','USER02','2023-02-12',150000,'Transient','k-omega','Slip',1.5,0,23.0,50,180.0,0.2,5e-6,12,32,'CFDPro v2.2','Pending','DS002');
INSERT INTO airflow_simulation_scenario VALUES ('SCN003','Filter blockage','USER03','2023-03-15',120000,'SteadyState','LES','NoSlip',0.8,0,21.0,40,90.0,0.3,2e-5,6,12,'CFDPro v2.1','Validated','DS003');

-- Process control parameter history
CREATE TABLE process_control_parameter_history (
  record_id TEXT PRIMARY KEY,
  process_line_id TEXT,
  parameter_name TEXT,
  parameter_value REAL,
  measurement_unit TEXT,
  timestamp DATETIME,
  operator_id TEXT,
  shift TEXT,
  alarm_triggered INTEGER,
  setpoint REAL,
  tolerance REAL,
  reason_code TEXT,
  comment TEXT,
  batch_id TEXT,
  control_mode TEXT,
  sensor_id TEXT,
  calibration_date DATE,
  maintenance_flag INTEGER,
  data_quality_score REAL,
  source_system TEXT
);

INSERT INTO process_control_parameter_history VALUES ('REC001','LINE01','Temperature',350.5,'C','2023-04-01 08:15:00','OP001','Morning',0,360,5,'RC01','Normal operation','BATCH1001','Automatic','SEN123','2023-03-01',0,0.98,'SCADA');
INSERT INTO process_control_parameter_history VALUES ('REC002','LINE02','Pressure',5.2,'bar','2023-04-01 14:30:00','OP002','Afternoon',1,5.0,0.2,'RC02','Pressure exceeded setpoint','BATCH1002','Manual','SEN124','2023-02-20',1,0.85,'SCADA');
INSERT INTO process_control_parameter_history VALUES ('REC003','LINE03','FlowRate',120.0,'L/min','2023-04-01 22:45:00','OP003','Night',0,115,10,'RC03','Within tolerance','BATCH1003','Automatic','SEN125','2023-01-15',0,0.92,'SCADA');

-- Storage facility audit logs
CREATE TABLE storage_facility_audit (
  audit_id TEXT PRIMARY KEY,
  facility_id TEXT,
  audit_date DATE,
  auditor_id TEXT,
  temperature REAL,
  humidity REAL,
  pressure REAL,
  leak_detected INTEGER,
  fire_suppression_status TEXT,
  power_backup_status TEXT,
  door_lock_status TEXT,
  camera_operational INTEGER,
  access_log_reviewed INTEGER,
  pest_control_action TEXT,
  cleaning_status TEXT,
  documentation_completeness INTEGER,
  corrective_action_required INTEGER,
  corrective_action_due DATE,
  remarks TEXT,
  next_audit_date DATE
);

INSERT INTO storage_facility_audit VALUES ('AUD001','FAC001','2023-01-20','AUD001',2.1,45,101.3,0,'Operational','Available','Locked',1,1,'None','Clean',1,0,NULL,'All parameters within limits','2023-07-20');
INSERT INTO storage_facility_audit VALUES ('AUD002','FAC002','2023-02-15','AUD002',5.0,55,100.8,1,'Fault','Unavailable','Unlocked',0,0,'Pest trap set','Needs cleaning',0,1,'2023-03-01','Leak detected in ceiling','2023-08-15');
INSERT INTO storage_facility_audit VALUES ('AUD003','FAC003','2023-03-10','AUD003',-1.0,40,101.0,0,'Operational','Available','Locked',1,1,'None','Clean',1,0,NULL,'Temperature below nominal','2023-09-10');

-- Researcher competency profile
CREATE TABLE researcher_competency_profile (
  researcher_id TEXT PRIMARY KEY,
  competency_area TEXT,
  proficiency_level TEXT,
  years_experience INTEGER,
  last_assessment_date DATE,
  certification_status TEXT,
  certification_expiry DATE,
  training_hours_completed INTEGER,
  recent_project_id TEXT,
  publication_count INTEGER,
  patent_count INTEGER,
  mentorship_experience INTEGER,
  leadership_role TEXT,
  language_proficiency TEXT,
  data_analysis_skill TEXT,
  lab_safety_training INTEGER,
  grant_review_experience INTEGER,
  conference_attendance INTEGER,
  interdisciplinary_collaboration INTEGER,
  notes TEXT
);

INSERT INTO researcher_competency_profile VALUES ('R001','Synthetic Chemistry','Advanced',8,'2023-01-10','Certified','2025-01-10',120,'PROJ100','15','2','3','Team Lead','English,Spanish','Expert',1,2,5,4,'Strong track record');
INSERT INTO researcher_competency_profile VALUES ('R002','Computational Modeling','Intermediate',4,'2022-11-05','Pending','2024-11-05',80,'PROJ101','8','0','1','Member','English','Proficient',1,1,3,2,'Developing expertise');
INSERT INTO researcher_competency_profile VALUES ('R003','Analytical Instrumentation','Expert',12,'2023-03-22','Certified','2026-03-22',150,'PROJ102','22','5','5','Project Manager','English,French','Advanced',1,3,7,6,'Leader in instrumentation');

-- Energy consumption anomaly detection
CREATE TABLE energy_consumption_anomaly (
  anomaly_id TEXT PRIMARY KEY,
  facility_id TEXT,
  detection_timestamp DATETIME,
  anomaly_type TEXT,
  observed_value REAL,
  expected_value REAL,
  deviation_percent REAL,
  severity_level TEXT,
  response_action TEXT,
  resolved INTEGER,
  resolution_timestamp DATETIME,
  analyst_id TEXT,
  notes TEXT,
  sensor_id TEXT,
  measurement_unit TEXT,
  data_source TEXT,
  threshold_value REAL,
  trend_direction TEXT,
  impact_assessment TEXT,
  follow_up_required INTEGER
);

INSERT INTO energy_consumption_anomaly VALUES ('ANOM001','FAC001','2023-04-05 10:30:00','Spikes','3500','2000',75,'High','Investigate load','0',NULL,'ANL001','Unexpected peak during off-hours','SEN001','kWh','SCADA',2500,'Upward','Potential equipment fault',1);
INSERT INTO energy_consumption_anomaly VALUES ('ANOM002','FAC002','2023-04-06 14:20:00','Drop','800','1500',46,'Medium','Check meter','1','2023-04-06 15:00:00','ANL002','Possible meter malfunction','SEN002','kWh','SCADA',1200,'Downward','Minor impact',0);
INSERT INTO energy_consumption_anomaly VALUES ('ANOM003','FAC003','2023-04-07 08:45:00','Gradual increase','2500','2000',25,'Low','Schedule maintenance','0',NULL,'ANL003','Trend analysis ongoing','SEN003','kWh','SCADA',2100,'Upward','Review HVAC efficiency',1);

-- Nanomaterial exposure monitoring stations
CREATE TABLE nanomaterial_exposure_monitoring_station (
  station_id TEXT PRIMARY KEY,
  location_description TEXT,
  installation_date DATE,
  sensor_type TEXT,
  detection_limit REAL,
  units TEXT,
  calibration_date DATE,
  last_maintenance_date DATE,
  firmware_version TEXT,
  data_transmission_method TEXT,
  network_id TEXT,
  operational_status TEXT,
  average_concentration REAL,
  peak_concentration REAL,
  peak_timestamp DATETIME,
  alert_threshold REAL,
  alerts_triggered INTEGER,
  maintenance_frequency_days INTEGER,
  responsible_technician_id TEXT,
  notes TEXT
);

INSERT INTO nanomaterial_exposure_monitoring_station VALUES ('NS001','Cleanroom A','2022-05-10','Particle Counter',0.001,'ug/m3','2023-01-15','2023-03-01','v1.2','WiFi','NET01','Operational',0.005,0.02,'2023-04-01 09:30:00',0.015,0,90,'TECH001','No incidents');
INSERT INTO nanomaterial_exposure_monitoring_station VALUES ('NS002','Lab B - Synthesis Area','2022-08-22','Mass Spectrometer',0.0005,'ug/m3','2023-02-20','2023-03-15','v1.3','Ethernet','NET02','Operational',0.008,0.03,'2023-04-02 11:45:00',0.025,1,120,'TECH002','One alert triggered');
INSERT INTO nanomaterial_exposure_monitoring_station VALUES ('NS003','Storage Zone C','2023-01-05','Optical Particle Counter',0.0008,'ug/m3','2023-03-10','2023-04-01','v1.1','Cellular','NET03','Operational',0.006,0.018,'2023-04-03 14:20:00',0.012,0,60,'TECH003','All clear');

-- Clinical trial site logistics
CREATE TABLE clinical_trial_site_logistics (
  site_log_id TEXT PRIMARY KEY,
  site_id TEXT,
  logistic_event_type TEXT,
  event_timestamp DATETIME,
  responsible_person_id TEXT,
  transport_mode TEXT,
  carrier_name TEXT,
  shipment_id TEXT,
  material_type TEXT,
  quantity INTEGER,
  unit TEXT,
  temperature_controlled INTEGER,
  temperature_range TEXT,
  storage_location TEXT,
  documentation_complete INTEGER,
  compliance_status TEXT,
  notes TEXT,
  expedited_flag INTEGER,
  estimated_arrival DATE,
  actual_arrival DATE
);

INSERT INTO clinical_trial_site_logistics VALUES ('LOG001','SITE001','Inbound Shipment','2023-03-20 08:00:00','PER001','Refrigerated Truck','CarrierX','SHIP1001','Blood Samples',50,'vials',1,'2-8C','Freezer A','1','Compliant','All samples received intact',0,'2023-03-20','2023-03-20');
INSERT INTO clinical_trial_site_logistics VALUES ('LOG002','SITE002','Outbound Shipment','2023-03-22 14:30:00','PER002','Air Freight','CarrierY','SHIP1002','Investigational Drug',200,'bottles',0,'Room Temp','Warehouse B','1','Compliant','Delivered to regulatory agency',1,'2023-03-23','2023-03-23');
INSERT INTO clinical_trial_site_logistics VALUES ('LOG003','SITE003','Equipment Transfer','2023-03-25 10:15:00','PER003','Ground Transport','CarrierZ','SHIP1003','MRI Scanner',1,'unit',0,'N/A','Radiology Suite','1','Pending','Awaiting installation crew',0,'2023-03-27','2023-03-28');

-- Robotic arm operation log
CREATE TABLE robotic_arm_operation_log (
  operation_id TEXT PRIMARY KEY,
  arm_id TEXT,
  operation_timestamp DATETIME,
  operator_id TEXT,
  task_type TEXT,
  target_object_id TEXT,
  grip_force REAL,
  movement_speed REAL,
  precision_mm REAL,
  error_code TEXT,
  error_description TEXT,
  duration_seconds REAL,
  power_consumption REAL,
  temperature_celsius REAL,
  maintenance_required INTEGER,
  software_version TEXT,
  firmware_version TEXT,
  safety_interlock_engaged INTEGER,
  notes TEXT,
  outcome TEXT
);

INSERT INTO robotic_arm_operation_log VALUES ('OP001','ARM001','2023-04-01 09:00:00','OPR001','PickAndPlace','OBJ123',15.5,0.8,0.2,'','',12.5,45.0,35.0,0,'v2.5','fw1.0',1,'','Success');
INSERT INTO robotic_arm_operation_log VALUES ('OP002','ARM002','2023-04-01 10:30:00','OPR002','Welding','OBJ124',0,1.2,0.1,'E101','Joint overload',30.0,60.0,40.0,1,'v2.6','fw1.1',0,'Joint replaced','Failed');
INSERT INTO robotic_arm_operation_log VALUES ('OP003','ARM001','2023-04-01 11:45:00','OPR003','Inspection','OBJ125',5.0,0.5,0.05,'','',8.0,40.0,33.0,0,'v2.5','fw1.0',1,'','Success');

-- Sensor network configuration
CREATE TABLE sensor_network_configuration (
  config_id TEXT PRIMARY KEY,
  network_name TEXT,
  topology_type TEXT,
  number_of_nodes INTEGER,
  communication_protocol TEXT,
  frequency_hz REAL,
  encryption_enabled INTEGER,
  authentication_method TEXT,
  firmware_version TEXT,
  deployment_date DATE,
  last_update DATE,
  maintenance_window TEXT,
  redundancy_level TEXT,
  latency_ms REAL,
  bandwidth_mbps REAL,
  power_supply_type TEXT,
  backup_power_duration_minutes INTEGER,
  monitoring_dashboard_url TEXT,
  administrator_id TEXT,
  notes TEXT
);

INSERT INTO sensor_network_configuration VALUES ('CFG001','EnvMonitorNet','Mesh',120,'ZigBee',2.4,1,'AES','v3.1','2022-06-01','2023-03-01','Sundown 02:00-04:00','High',15.0,5.0,'Solar','120','http://dashboard.example.com/env','ADMIN001','Initial deployment');
INSERT INTO sensor_network_configuration VALUES ('CFG002','LabSafetyNet','Star',45,'WiFi',5.0,1,'WPA2','v2.8','2022-09-15','2023-02-15','Night 23:00-01:00','Medium',20.0,10.0,'Mains','60','http://dashboard.example.com/safety','ADMIN002','Added new fire sensors');
INSERT INTO sensor_network_configuration VALUES ('CFG003','ResearchDataNet','Tree',200,'Ethernet',10.0,0,'None','v4.0','2023-01-10','2023-03-20','Weekend 01:00-03:00','Low',5.0,20.0,'Mains','30','http://dashboard.example.com/data','ADMIN003','Upgraded switches');

-- Energy consumption hourly records
CREATE TABLE energy_consumption_hourly (
  record_id TEXT PRIMARY KEY,
  facility_id TEXT,
  timestamp DATETIME,
  electricity_kwh REAL,
  gas_therms REAL,
  water_m3 REAL,
  renewable_energy_kwh REAL,
  peak_demand_kw REAL,
  demand_response_event INTEGER,
  carbon_intensity_g_per_kwh REAL,
  weather_condition TEXT,
  outside_temperature_c REAL,
  humidity_percent REAL,
  occupancy_level INTEGER,
  hvac_runtime_minutes INTEGER,
  lighting_runtime_minutes INTEGER,
  equipment_runtime_minutes INTEGER,
  total_runtime_minutes INTEGER,
  notes TEXT,
  data_quality_score REAL
);

INSERT INTO energy_consumption_hourly VALUES ('HR001','FAC001','2023-04-01 00:00:00',120.5,30.2,0.8,20.0,45.0,0,450.0,'Clear',15.0,30,0,0,0,0,0,'Night low usage',0.99);
INSERT INTO energy_consumption_hourly VALUES ('HR002','FAC001','2023-04-01 01:00:00',115.0,28.5,0.7,22.0,42.0,0,447.0,'Clear',14.5,28,0,0,0,0,0,'Night low usage',0.98);
INSERT INTO energy_consumption_hourly VALUES ('HR003','FAC001','2023-04-01 02:00:00',110.3,27.0,0.6,25.0,40.0,0,445.0,'Clear',14.0,27,0,0,0,0,0,'Night low usage',0.97);

-- Nanomaterial exposure monitoring station configuration
CREATE TABLE nanomaterial_exposure_station_config (
  config_id TEXT PRIMARY KEY,
  station_id TEXT,
  sampling_interval_seconds INTEGER,
  detection_technology TEXT,
  sensitivity_threshold REAL,
  alert_threshold REAL,
  data_retention_days INTEGER,
  firmware_version TEXT,
  calibration_interval_days INTEGER,
  maintenance_contact_id TEXT,
  power_source TEXT,
  backup_power_type TEXT,
  network_interface TEXT,
  encryption_method TEXT,
  location_coordinates TEXT,
  installation_notes TEXT,
  last_config_update DATE,
  compliance_standard TEXT,
  status TEXT,
  comments TEXT
);

INSERT INTO nanomaterial_exposure_station_config VALUES ('CONF001','NS001',60,'Laser Scattering',0.001,0.015,365,'v1.2',180,'TECH001','Solar','Battery','WiFi','AES-256','34.0522N,118.2437W','Mounted on ceiling','2023-03-01','ISO17025','Active','Initial config');
INSERT INTO nanomaterial_exposure_station_config VALUES ('CONF002','NS002',30,'Mass Spectrometry',0.0005,0.025,365,'v1.3',90,'TECH002','Mains','UPS','Ethernet','TLS','40.7128N,74.0060W','Near lab entrance','2023-02-20','ISO17025','Active','Updated firmware');
INSERT INTO nanomaterial_exposure_station_config VALUES ('CONF003','NS003',45,'Optical Particle Counter',0.0008,0.012,180,'v1.1',120,'TECH003','Solar','Battery','Cellular','RSA','51.5074N,0.1278W','Ceiling mount in storage','2023-03-15','ISO17025','Active','All settings nominal');