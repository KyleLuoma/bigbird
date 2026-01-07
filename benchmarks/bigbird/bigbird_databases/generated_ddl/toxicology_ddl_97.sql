-- Lab Air Quality Sensor Network
CREATE TABLE lab_air_quality_sensor_network (
  sensor_id TEXT PRIMARY KEY,
  location TEXT,
  zone TEXT,
  installation_date TEXT,
  last_calibration_date TEXT,
  firmware_version TEXT,
  manufacturer TEXT,
  model_number TEXT,
  ip_address TEXT,
  mac_address TEXT,
  battery_level REAL,
  signal_strength REAL,
  measurement_interval_sec INTEGER,
  co2_ppm REAL,
  voc_ppb REAL,
  temperature_c REAL,
  humidity_percent REAL,
  pressure_hpa REAL,
  status TEXT,
  notes TEXT,
  maintenance_schedule TEXT,
  calibration_due_date TEXT,
  uptime_hours REAL,
  last_error_code TEXT,
  last_error_desc TEXT,
  data_retention_days INTEGER,
  alert_threshold_co2 REAL,
  alert_threshold_voc REAL,
  alert_enabled INTEGER,
  system_version TEXT,
  created_at TEXT,
  updated_at TEXT
);
INSERT INTO lab_air_quality_sensor_network VALUES
('AQS001','BuildingA_Floor1','ZoneAlpha','2023-01-10','2023-12-01','v1.2.3','EnviroTech','AQ-200','192.168.1.10','AA:BB:CC:DD:EE:01',95.5, -70.2,60,420.0,150.0,22.5,45.0,1013.2,'ACTIVE','Initial deployment','Monthly','2024-06-01',1240.5,'E01','Sensor rebooted','365',800.0,120.0,1,'v1.2','2023-01-10','2023-12-01');
INSERT INTO lab_air_quality_sensor_network VALUES
('AQS002','BuildingB_Floor2','ZoneBeta','2023-03-15','2024-01-20','v1.3.0','AirSense','AQ-300','192.168.2.20','AA:BB:CC:DD:EE:02',88.0, -68.0,120,500.0,200.0,21.0,48.5,1012.8,'ACTIVE','Routine check','Quarterly','2024-09-15',980.0,'E02','No error','730',900.0,180.0,1,'v1.3','2023-03-15','2024-01-20');
INSERT INTO lab_air_quality_sensor_network VALUES
('AQS003','BuildingC_Floor3','ZoneGamma','2022-11-05','2023-10-30','v1.1.5','CleanAir','AQ-150','192.168.3.30','AA:BB:CC:DD:EE:03',92.3, -71.5,30,380.0,100.0,23.1,44.2,1013.5,'MAINTENANCE','Spare sensor','Biannual','2024-04-05',1500.0,'E03','Calibration needed','180',750.0,110.0,0,'v1.1','2022-11-05','2023-10-30');

-- Facility HVAC Zone Performance Metrics
CREATE TABLE facility_hvac_zone_performance_metrics (
  zone_id TEXT PRIMARY KEY,
  building TEXT,
  floor INTEGER,
  hvac_unit_id TEXT,
  coolant_type TEXT,
  supply_temp_c REAL,
  return_temp_c REAL,
  delta_t_c REAL,
  fan_speed_rpm INTEGER,
  power_kw REAL,
  airflow_cfm REAL,
  humidity_setpoint_percent REAL,
  actual_humidity_percent REAL,
  co2_ppm REAL,
  filter_status TEXT,
  maintenance_due_date TEXT,
  last_service_date TEXT,
  runtime_hours REAL,
  efficiency_percent REAL,
  error_code TEXT,
  error_description TEXT,
  avg_temp_c REAL,
  avg_pressure_pa REAL,
  occupancy_estimate INTEGER,
  energy_consumption_kwh REAL,
  created_at TEXT,
  updated_at TEXT,
  sensor_count INTEGER,
  control_mode TEXT,
  alarm_active INTEGER,
  notes TEXT
);
INSERT INTO facility_hvac_zone_performance_metrics VALUES
('HZ001','MainLab','1','HVAC-U01','R134a',22.5,18.0,4.5,1500,45.2,6000,45.0,47.2,600,'OK','2024-07-01','2023-12-15',8500,92.5,'','',21.8,101325,12,3500,'2023-01-01','2023-12-31',5,'AUTO',0,'Zone operating within parameters');
INSERT INTO facility_hvac_zone_performance_metrics VALUES
('HZ002','MainLab','2','HVAC-U02','Water',24.0,19.5,4.5,1400,48.0,5800,50.0,52.1,750,'FILTER_REPLACE','2024-08-15','2023-11-20',7200,89.0,'E10','Fan overload',23.1,101500,15,3400,'2023-02-01','2023-12-31',4,'MANUAL',1,'Filter replacement required soon');
INSERT INTO facility_hvac_zone_performance_metrics VALUES
('HZ003','ResearchWing','1','HVAC-U03','R410a',20.0,16.0,4.0,1600,42.5,6200,40.0,41.5,500,'OK','2024-09-30','2023-10-05',9100,94.0,'','',20.5,101200,10,3600,'2023-03-01','2023-12-31',6,'AUTO',0,'All systems nominal');

-- Researcher Skill Assessment
CREATE TABLE researcher_skill_assessment (
  researcher_id TEXT,
  assessment_date TEXT,
  skill_category TEXT,
  skill_subcategory TEXT,
  proficiency_level TEXT,
  years_experience INTEGER,
  last_training_date TEXT,
  certification_status TEXT,
  certification_id TEXT,
  mentor_id TEXT,
  self_rating INTEGER,
  peer_rating INTEGER,
  manager_rating INTEGER,
  improvement_plan TEXT,
  goal_target TEXT,
  target_date TEXT,
  notes TEXT,
  overall_score REAL,
  status TEXT,
  created_at TEXT,
  updated_at TEXT,
  department TEXT,
  role TEXT,
  location TEXT,
  PRIMARY KEY (researcher_id, assessment_date)
);
INSERT INTO researcher_skill_assessment VALUES
('R001','2023-12-01','DataAnalysis','MachineLearning','Advanced',5,'2023-06-15','CERTIFIED','ML-2023','R010',9,8,9,'Enroll in deep learning workshop','Publish ML paper','2024-12-31','Strong foundations','8.7','COMPLETED','BioChem','Senior Scientist','BuildingA','2023-12-01','2023-12-01');
INSERT INTO researcher_skill_assessment VALUES
('R002','2023-11-15','LabTech','PCR','Intermediate',3,'2023-04-20','IN_PROGRESS','PCR-2023','R011',7,7,8,'Complete certification guide','Run 20 validated PCRs','2024-06-30','Needs more practice','7.5','IN_PROGRESS','MolecularBio','Research Associate','BuildingB','2023-11-15','2023-11-15');
INSERT INTO researcher_skill_assessment VALUES
('R003','2023-10-20','Safety','Biosafety','Expert',8,'2022-12-01','CERTIFIED','BS-2022','R012',10,9,10,'Mentor junior staff','Update biosafety SOPs','2024-03-31','Excellent safety record','9.6','COMPLETED','Virology','Principal Investigator','BuildingC','2023-10-20','2023-10-20');

-- Instrument Maintenance Schedule Extended
CREATE TABLE instrument_maintenance_schedule_extended (
  maintenance_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  scheduled_date TEXT,
  maintenance_type TEXT,
  technician_id TEXT,
  duration_minutes INTEGER,
  parts_replaced TEXT,
  labor_cost REAL,
  material_cost REAL,
  total_cost REAL,
  next_due_date TEXT,
  status TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  priority_level TEXT,
  downtime_expected_minutes INTEGER,
  safety_check_passed INTEGER,
  compliance_flag INTEGER,
  work_order_number TEXT,
  shift TEXT,
  building TEXT,
  floor INTEGER,
  room_number TEXT,
  contact_phone TEXT,
  email_contact TEXT,
  confirmation_flag INTEGER,
  service_provider TEXT,
  warranty_coverage TEXT,
  calibration_required INTEGER,
  post_maintenance_verification TEXT
);
INSERT INTO instrument_maintenance_schedule_extended VALUES
('MNT001','INST-1001','2024-02-15','PREVENTIVE','TECH-01',120,'Filter,Seal','150.00','45.00','195.00','2025-02-15','SCHEDULED','Quarterly filter change','2023-12-01','2024-01-10','HIGH',60,1,1,'WO-5001','DAY','MainLab',1,'101','555-1234','tech01@lab.com',1,'LabServCo','FULL','1','Verified');
INSERT INTO instrument_maintenance_schedule_extended VALUES
('MNT002','INST-2002','2024-03-10','CALIBRATION','TECH-02',90,'Calibration Kit','120.00','30.00','150.00','2025-03-10','PENDING','Annual calibration required','2024-01-05','2024-01-20','MEDIUM',45,1,1,'WO-5002','NIGHT','ResearchWing',2,'202','555-5678','tech02@lab.com',0,'CalibExperts','PARTIAL','1','Pending verification');
INSERT INTO instrument_maintenance_schedule_extended VALUES
('MNT003','INST-3003','2024-04-05','REPAIR','TECH-03',180,'Valve,Sensor','250.00','80.00','330.00','2025-04-05','COMPLETED','Replaced faulty valve','2024-02-01','2024-02-10','HIGH',120,1,1,'WO-5003','EVENING','BioChem',3,'303','555-9012','tech03@lab.com',1,'RepairPro','FULL','0','Verified after test run');

-- Chemical Storage Audit Log Extended
CREATE TABLE chemical_storage_audit_log_extended (
  audit_id TEXT PRIMARY KEY,
  storage_area_id TEXT,
  auditor_id TEXT,
  audit_date TEXT,
  overall_score REAL,
  temperature_c REAL,
  humidity_percent REAL,
  pressure_hpa REAL,
  fire_extinguisher_status TEXT,
  leak_detected INTEGER,
  leak_location TEXT,
  ventilation_status TEXT,
  access_control_status TEXT,
  CCTV_status TEXT,
  signage_compliance TEXT,
  inventory_accuracy_percent REAL,
  expired_materials_count INTEGER,
  hazardous_materials_count INTEGER,
  corrective_actions_required INTEGER,
  corrective_action_due_date TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_type TEXT,
  area_sq_meters REAL,
  emergency_exit_access INTEGER,
  power_backup_status TEXT,
  alarm_status TEXT,
  security_key_present INTEGER,
  lock_status TEXT,
  temperature_sensor_id TEXT,
  humidity_sensor_id TEXT
);
INSERT INTO chemical_storage_audit_log_extended VALUES
('AUD001','SA-01','AUD-01','2024-01-20',92.5,20.5,45.0,1015,'OK',0,'','NORMAL','ENABLED','OPERATIONAL','COMPLIANT',98.0,2,15,0,'','All conditions within limits','2024-01-20','2024-01-20','ROUTINE',150.0,1,'ACTIVE','NORMAL',1,'LOCKED','TS-01','HS-01');
INSERT INTO chemical_storage_audit_log_extended VALUES
('AUD002','SA-02','AUD-02','2024-02-10',85.0,22.0,48.5,1012,'REPLACED',1,'Aisle3','REDUCED','DISABLED','MALFUNCTION','NONCOMPLIANT',90.0,5,20,1,'2024-03-01','Leak detected near vent','2024-02-10','2024-02-10','FOLLOWUP',200.0,0,'INACTIVE','ALARMED',0,'UNLOCKED','TS-02','HS-02');
INSERT INTO chemical_storage_audit_log_extended VALUES
('AUD003','SA-03','AUD-03','2024-03-05',78.0,24.5,55.0,1010,'OK',0,'','POOR','ENABLED','OPERATIONAL','COMPLIANT',85.0,8,30,2,'2024-04-15','High humidity; schedule dehumidifier','2024-03-05','2024-03-05','ROUTINE',180.0,1,'ACTIVE','NORMAL',1,'LOCKED','TS-03','HS-03');

-- Waste Processing Unit Status Log
CREATE TABLE waste_processing_unit_status_log (
  log_id TEXT PRIMARY KEY,
  unit_id TEXT,
  timestamp TEXT,
  operational_status TEXT,
  temperature_c REAL,
  pressure_bar REAL,
  flow_rate_lpm REAL,
  chemical_concentration_ppm REAL,
  filter_condition TEXT,
  filter_change_due_date TEXT,
  power_consumption_kw REAL,
  alarm_code TEXT,
  alarm_description TEXT,
  maintenance_required_flag INTEGER,
  last_maintenance_date TEXT,
  next_maintenance_date TEXT,
  operator_id TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  location TEXT,
  batch_id TEXT,
  waste_type TEXT,
  residue_percentage REAL,
  safety_check_passed INTEGER,
  ventilation_status TEXT,
  coolant_level_percent REAL,
  vibration_level_mm_s REAL,
  noise_level_db REAL,
  humidity_percent REAL,
  gas_detection_status TEXT,
  emergency_shutdown_activated INTEGER
);
INSERT INTO waste_processing_unit_status_log VALUES
('WL001','WPU-01','2024-02-01 08:00:00','OPERATIONAL',45.2,1.2,150.0,0.0,'GOOD','2025-01-01',12.5,'','',0,'2023-12-15','2024-12-15','OP-01','Running within specs','2024-02-01','2024-02-01','BuildingA_Floor1','BCH-100','SOLID',2.5,1,'NORMAL',85.0,0.3,65.0,40.0,'PASS',0);
INSERT INTO waste_processing_unit_status_log VALUES
('WL002','WPU-02','2024-02-01 09:15:00','ALARM','60.5',1.8,200.0,15.0,'FAIR','2024-08-01',15.0,'E02','Filter clog detected',1,'2023-11-20','2024-11-20','OP-02','Filter replacement required soon','2024-02-01','2024-02-01','BuildingB_Floor2','BCH-101','LIQUID',10.0,0,'REDUCED',70.0,0.8,78.0,55.0,'FAIL',1);
INSERT INTO waste_processing_unit_status_log VALUES
('WL003','WPU-03','2024-02-01 10:30:00','MAINTENANCE',30.0,0.9,100.0,0.0,'NEW','2025-06-01',8.0,'','',0,'2024-01-10','2025-01-10','OP-03','Scheduled maintenance completed','2024-02-01','2024-02-01','BuildingC_Floor3','BCH-102','GAS',0.0,1,'NORMAL',90.0,0.1,55.0,35.0,'PASS',0);

-- Sample Transport Route Detail
CREATE TABLE sample_transport_route_detail (
  route_id TEXT PRIMARY KEY,
  sample_id TEXT,
  origin_site TEXT,
  destination_lab TEXT,
  departure_time TEXT,
  arrival_time TEXT,
  transport_mode TEXT,
  carrier_company TEXT,
  container_id TEXT,
  temperature_monitor_id TEXT,
  max_temp_c REAL,
  min_temp_c REAL,
  avg_temp_c REAL,
  humidity_monitor_id TEXT,
  max_humidity_percent REAL,
  min_humidity_percent REAL,
  avg_humidity_percent REAL,
  shock_events_count INTEGER,
  tilt_events_count INTEGER,
  customs_clearance_status TEXT,
  lock_status TEXT,
  seal_number TEXT,
  handler_id TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  gps_tracking_enabled INTEGER,
  gps_last_latitude REAL,
  gps_last_longitude REAL,
  estimated_transit_time_min INTEGER,
  compliance_flag INTEGER,
  insurance_policy_number TEXT
);
INSERT INTO sample_transport_route_detail VALUES
('RT001','SMP-001','FieldSiteA','LabMain','2024-01-15 08:00:00','2024-01-15 12:30:00','RefrigeratedTruck','FastShip','CNT-1001','TM-001',4.5,-1.0,2.0,'HM-001',55.0,30.0,42.0,0,0','CLEARED','LOCKED','SL-12345','HAND-01','No incidents','2024-01-15','2024-01-15',1,40.7128,-74.0060,270,1,'POL-1001');
INSERT INTO sample_transport_route_detail VALUES
('RT002','SMP-002','ClinicB','LabSecondary','2024-02-10 14:00:00','2024-02-10 18:45:00','DryIceBox','ColdExpress','CNT-2002','TM-002',-78.0,-80.0,-79.0,'HM-002',20.0,15.0,17.5,1,2','PENDING','UNLOCKED','SL-54321','HAND-02','Minor temperature fluctuation','2024-02-10','2024-02-10',1,34.0522,-118.2437,285,0,'POL-2002');
INSERT INTO sample_transport_route_detail VALUES
('RT003','SMP-003','FieldSiteC','LabTertiary','2024-03-05 09:30:00','2024-03-05 13:00:00','Courier','RapidDelivery','CNT-3003','TM-003',22.0,18.0,20.0,'HM-003',70.0,45.0,60.0,0,0','CLEARED','LOCKED','SL-67890','HAND-03','All parameters normal','2024-03-05','2024-03-05',0,0,0,210,1,'POL-3003');

-- Computational Resource Quota History
CREATE TABLE computational_resource_quota_history (
  record_id TEXT PRIMARY KEY,
  resource_type TEXT,
  user_id TEXT,
  quota_limit REAL,
  quota_used REAL,
  quota_remaining REAL,
  period_start TEXT,
  period_end TEXT,
  adjustment_reason TEXT,
  adjusted_by TEXT,
  adjustment_value REAL,
  created_at TEXT,
  updated_at TEXT,
  notes TEXT,
  resource_group TEXT,
  allocation_policy TEXT,
  priority_level TEXT,
  usage_percent REAL,
  overage_flag INTEGER,
  overage_amount REAL,
  billing_code TEXT,
  approval_status TEXT,
  approved_by TEXT,
  approval_date TEXT,
  expiration_date TEXT,
  auto_renew_flag INTEGER,
  renewal_date TEXT,
  escalation_contact TEXT,
  cost_center TEXT,
  forecasted_usage REAL,
  actual_usage REAL,
  variance_percent REAL
);
INSERT INTO computational_resource_quota_history VALUES
('QRH001','CPU','USR-01',1000.0,450.0,550.0,'2024-01-01','2024-01-31','Initial allocation','ADMIN','', '2024-01-01','2024-01-31','', 'ResearchCluster','Standard','MEDIUM',45.0,0,0.0,'BILL-100','APPROVED','ADMIN','2023-12-15','2024-12-31',1,'2024-02-01','ops@lab.org','CC-01',500.0,450.0,10.0);
INSERT INTO computational_resource_quota_history VALUES
('QRH002','GPU','USR-02',200.0,210.0, -10.0,'2024-01-01','2024-01-31','Exceeded usage','ADMIN',10.0,'2024-01-01','2024-01-31','Overage noted','AICluster','Priority','HIGH',105.0,1,10.0,'BILL-200','PENDING','MANAGER','2024-01-10','2024-12-31',0,NULL,'manager@lab.org','CC-02',180.0,210.0,16.7);
INSERT INTO computational_resource_quota_history VALUES
('QRH003','STORAGE','USR-03',5000.0,3200.0,1800.0,'2024-02-01','2024-02-28','Quarterly review','ADMIN',0,'2024-02-01','2024-02-28','', 'DataLake','Standard','LOW',64.0,0,0.0,'BILL-300','APPROVED','ADMIN','2024-01-20','2024-12-31',1,'2024-03-01','storage@lab.org','CC-03',3500.0,3200.0,8.6);

-- Environmental Noise Monitoring Station
CREATE TABLE environmental_noise_monitoring_station (
  station_id TEXT PRIMARY KEY,
  location_desc TEXT,
  latitude REAL,
  longitude REAL,
  elevation_m REAL,
  installation_date TEXT,
  last_calibration_date TEXT,
  microphone_model TEXT,
  firmware_version TEXT,
  sampling_rate_hz INTEGER,
  frequency_range_hz TEXT,
  noise_threshold_db REAL,
  avg_noise_level_db REAL,
  max_noise_level_db REAL,
  min_noise_level_db REAL,
  status TEXT,
  power_source TEXT,
  battery_status_percent REAL,
  data_upload_interval_sec INTEGER,
  last_data_upload TEXT,
  maintenance_due_date TEXT,
  operator_id TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  network_id TEXT,
  ip_address TEXT,
  mac_address TEXT,
  alert_active INTEGER,
  alert_timestamp TEXT,
  alert_type TEXT,
  compliance_status TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  wind_speed_m_s REAL,
  rain_indicator TEXT
);
INSERT INTO environmental_noise_monitoring_station VALUES
('ENS001','NorthWingRoof',40.7128,-74.0060,10.0,'2023-05-01','2024-01-15','MicoPro-X','v2.4',48000,'20-20000',85.0,68.5,102.0,45.0,'ACTIVE','SOLAR',95.0,300,'2024-02-01','2024-03-01','OP-01','','2023-05-01','2024-02-01','NET-01','192.168.10.10','AA:BB:CC:DD:EE:01',0,NULL,NULL,'COMPLIANT',22.5,55.0,3.2,'NO');
INSERT INTO environmental_noise_monitoring_station VALUES
('ENS002','SouthParkingLot',34.0522,-118.2437,15.0,'2023-07-10','2024-02-20','AcoustiMax','v3.1',44100,'30-18000',90.0,70.2,110.5,40.0,'MAINTENANCE','METERED',80.0,600,'2024-01-20','2024-04-01','OP-02','Battery replacement required','2023-07-10','2024-01-20','NET-02','192.168.20.20','AA:BB:CC:DD:EE:02',1,'2024-02-25 08:15:00','THRESHOLD_EXCEEDED','NONCOMPLIANT',24.0,60.0,4.5,'YES');
INSERT INTO environmental_noise_monitoring_station VALUES
('ENS003','EastWingHall',37.7749,-122.4194,8.0,'2023-09-05','2024-03-10','SoundWave-200','v1.9',96000,'10-22000',80.0,65.0,95.0,30.0,'ACTIVE','METERED',88.0,900,'2024-02-10','2024-05-01','OP-03','','2023-09-05','2024-02-10','NET-03','192.168.30.30','AA:BB:CC:DD:EE:03',0,NULL,NULL,'COMPLIANT',21.0,50.0,2.8','NO');

-- Lab Automation Error Log
CREATE TABLE lab_automation_error_log (
  error_id TEXT PRIMARY KEY,
  automation_system_id TEXT,
  timestamp TEXT,
  error_code TEXT,
  error_message TEXT,
  severity_level TEXT,
  affected_module TEXT,
  operation_id TEXT,
  user_id TEXT,
  resolved_flag INTEGER,
  resolution_timestamp TEXT,
  resolver_id TEXT,
  corrective_action TEXT,
  root_cause_analysis TEXT,
  downtime_minutes INTEGER,
  repeat_occurrence_count INTEGER,
  previous_error_id TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  system_version TEXT,
  firmware_version TEXT,
  hardware_id TEXT,
  location TEXT,
  impact_description TEXT,
  escalation_contact TEXT,
  sla_met_flag INTEGER,
  cost_of_downtime_usd REAL,
  backup_recovery_status TEXT,
  change_request_id TEXT
);
INSERT INTO lab_automation_error_log VALUES
('ERR001','AUTO-01','2024-01-12 09:30:00','E001','Valve actuator not responding','HIGH','PIPETTING_MODULE','OP-1001','USR-01',1,'2024-01-12 10:15:00','TECH-01','Reset valve actuator','Mechanical jam detected',45,2,NULL,'Issue resolved after part replacement','2024-01-12','2024-01-12','v3.5','f2.1','HW-100','LabA','Disruption of sample dispensing','ops@lab.org',1,1500.00','RECOVERED','CR-001');
INSERT INTO lab_automation_error_log VALUES
('ERR002','AUTO-02','2024-02-05 14:45:00','E017','Software exception in scheduling engine','MEDIUM','SCHEDULER','OP-2002','USR-02',0,NULL,NULL,'Apply patch','Null pointer dereference in scheduler loop',30,1,NULL,'Pending developer response','2024-02-05','2024-02-05','v4.0','f3.0','HW-200','LabB','Delay in automated run start','dev@lab.org',0,0.00','PENDING','CR-002');
INSERT INTO lab_automation_error_log VALUES
('ERR003','AUTO-03','2024-03-18 08:10:00','E023','Temperature sensor read failure','LOW','ENVIRONMENT_MONITOR','OP-3003','USR-03',1,'2024-03-18 09:00:00','TECH-03','Replace sensor cable','Loose connector caused intermittent signal',20,0,NULL,'Sensor replaced and calibrated','2024-03-18','2024-03-18','v2.9','f1.8','HW-300','LabC','Minor impact on temperature logging','maint@lab.org',1,200.00','RECOVERED','CR-003');