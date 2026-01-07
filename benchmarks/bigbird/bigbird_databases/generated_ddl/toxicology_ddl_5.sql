-- Lab Visitor Log
CREATE TABLE lab_visitor_log (
  visitor_id TEXT PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  organization TEXT,
  visit_date DATE,
  entry_time TIME,
  exit_time TIME,
  badge_id TEXT,
  purpose TEXT,
  host_researcher_id TEXT,
  area_accessed TEXT,
  temperature_check REAL,
  health_declaration TEXT,
  visitor_type TEXT,
  vehicle_plate TEXT,
  parking_spot TEXT,
  email TEXT,
  phone TEXT,
  notes TEXT,
  security_clearance_level INTEGER
);

INSERT INTO lab_visitor_log VALUES
('V001','Alice','Smith','AcmeCorp','2025-01-10','08:30:00','11:45:00','B123','ProjectMeeting','R001','ZoneA',36.5,'None','External','ABC123','P01','alice.smith@acme.com','5551234','N/A',2),
('V002','Bob','Jones','BioTech','2025-02-15','09:00:00','12:30:00','B124','SamplePickup','R002','ZoneB',36.7,'None','External','XYZ987','P02','bob.jones@biotech.com','5555678','Delivered samples',1),
('V003','Carol','Lee','University','2025-03-20','10:15:00','13:00:00','B125','Conference','R003','ZoneC',36.4,'None','Guest','LMN456','P03','carol.lee@uni.edu','5559012','Attended talk',3);

-- Facility Security Event
CREATE TABLE facility_security_event (
  event_id TEXT PRIMARY KEY,
  event_timestamp TIMESTAMP,
  event_type TEXT,
  location TEXT,
  triggered_by TEXT,
  severity INTEGER,
  resolved INTEGER,
  resolution_timestamp TIMESTAMP,
  analyst_id TEXT,
  description TEXT,
  camera_id TEXT,
  alarm_code TEXT,
  response_time_seconds INTEGER,
  department_responsible TEXT,
  equipment_affected TEXT,
  is_false_alarm INTEGER,
  notification_sent INTEGER,
  escalation_level INTEGER,
  ticket_number TEXT,
  mitigation_steps TEXT,
  related_incident_id TEXT,
  notes TEXT
);

INSERT INTO facility_security_event VALUES
('E001','2025-04-01 14:23:10','MotionDetected','EntranceA','Sensor12',2,1,'2025-04-01 14:25:00','A001','Employee entered after hours','CAM01','ALM01',110,'Security','DoorA',0,1,2,'TKT1001','Locked door','INC001','Checked video'),
('E002','2025-04-05 09:12:45','FireAlarm','LabB','SmokeDetector5',5,0,NULL,'A002','Smoke detected in LabB','CAM02','ALM02',0,'Facilities','Ventilation',0,1,3,'TKT1002','Evacuate','INC002','Pending response'),
('E003','2025-04-10 18:45:30','AccessDenied','ServerRoom','BadgeReader3',1,1,'2025-04-10 18:46:00','A003','Invalid badge used','CAM03','ALM03',30,'IT','ServerRack',0,1,1,'TKT1003','Badge revoked','INC003','Logged incident');

-- Instrument Failure History
CREATE TABLE instrument_failure_history (
  failure_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  failure_date DATE,
  downtime_hours REAL,
  failure_mode TEXT,
  root_cause TEXT,
  corrective_action TEXT,
  technician_id TEXT,
  part_replaced TEXT,
  part_serial TEXT,
  warranty_claim INTEGER,
  cost_estimate REAL,
  downtime_reason TEXT,
  observed_symptom TEXT,
  failure_severity INTEGER,
  logged_by TEXT,
  log_timestamp TIMESTAMP,
  maintenance_cycle INTEGER,
  failure_probability REAL,
  notes TEXT,
  escalation_required INTEGER
);

INSERT INTO instrument_failure_history VALUES
('F001','INST01','2025-05-01',4.5,'Electrical','PowerSurge','Replaced PSU','TECH01','PSU123','SN001',1,250.00,'Power outage','No power','3','USER01','2025-05-01 08:00:00',2,0.02,'Replaced within warranty',0),
('F002','INST02','2025-05-12',12.0,'Mechanical','WearAndTear','Lubricated bearings','TECH02','BEAR456','SN002',0,500.00,'Overheating','Noise','4','USER02','2025-05-12 09:30:00',3,0.05,'Planned maintenance next quarter',1),
('F003','INST03','2025-06-03',2.0,'Software','Bug','Applied patch','TECH03','N/A','N/A',0,0.00,'Software crash','Error code 500','2','USER03','2025-06-03 10:15:00',1,0.01,'Patch validated',0);

-- Environmental Sampling Record
CREATE TABLE environmental_sampling_record (
  sample_id TEXT PRIMARY KEY,
  sample_type TEXT,
  collection_date DATE,
  collection_time TIME,
  collector_id TEXT,
  location TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  ph_value REAL,
  conductivity_us REAL,
  sample_volume_ml REAL,
  container_type TEXT,
  storage_temp_c REAL,
  transport_time_min INTEGER,
  analysis_lab TEXT,
  analysis_method TEXT,
  result_value REAL,
  result_units TEXT,
  quality_flag TEXT,
  analyst_id TEXT,
  report_timestamp TIMESTAMP,
  remarks TEXT
);

INSERT INTO environmental_sampling_record VALUES
('S001','Water','2025-07-01','08:00:00','C001','RiverBank',15.2,78.5,7.1,150.0,500,'Bottle',4.0,30,'LabA','ICPMS',0.45,'mgL','Pass','AN001','2025-07-02 10:00:00','Clear sample'),
('S002','Soil','2025-07-05','09:30:00','C002','FieldNorth',22.0,55.0,6.8,200.0,250,'Jar',-20.0,45,'LabB','GCMS',1.2,'ppm','Pass','AN002','2025-07-06 11:15:00','No contaminants'),
('S003','Air','2025-07-10','07:45:00','C003','LabVent',20.5,40.0,NA,NA,NA,'Canister',-5.0,20,'LabC','FTIR',0.03,'ppm','Pass','AN003','2025-07-10 12:00:00','Background level');

-- Procurement Contract Audit
CREATE TABLE procurement_contract_audit (
  audit_id TEXT PRIMARY KEY,
  contract_id TEXT,
  auditor_id TEXT,
  audit_date DATE,
  audit_status TEXT,
  compliance_score REAL,
  risk_level TEXT,
  issue_count INTEGER,
  critical_issues INTEGER,
  minor_issues INTEGER,
  follow_up_required INTEGER,
  follow_up_due DATE,
  notes TEXT,
  corrective_action_plan TEXT,
  vendor_id TEXT,
  contract_value_usd REAL,
  currency TEXT,
  payment_terms TEXT,
  delivery_schedule TEXT,
  performance_metric TEXT,
  last_updated TIMESTAMP,
  approved_by TEXT
);

INSERT INTO procurement_contract_audit VALUES
('A001','C001','AU001','2025-08-01','Completed',92.5,'Medium',5,2,3,1,'2025-09-01','All clauses met','Update reporting','V001',150000.00,'USD','Net30','Quarterly','OnTime','2025-08-02 09:00:00','MGR01'),
('A002','C002','AU002','2025-08-15','Pending',78.0,'High',8,4,4,1,'2025-09-15','Missing safety clause','Add safety clause','V002',250000.00,'USD','Net45','Monthly','Late','2025-08-16 10:30:00','MGR02'),
('A003','C003','AU003','2025-09-01','Completed',85.0,'Low',3,0,3,0,NULL,'All good','N/A','V003',100000.00,'EUR','Net60','Biannual','OnBudget','2025-09-02 11:45:00','MGR03');

-- Computational Resource Allocation
CREATE TABLE computational_resource_allocation (
  allocation_id TEXT PRIMARY KEY,
  project_id TEXT,
  user_id TEXT,
  resource_type TEXT,
  cpu_cores INTEGER,
  gpu_units INTEGER,
  memory_gb REAL,
  storage_tb REAL,
  start_date DATE,
  end_date DATE,
  priority_level INTEGER,
  usage_quota_hours REAL,
  actual_usage_hours REAL,
  allocation_status TEXT,
  created_timestamp TIMESTAMP,
  modified_timestamp TIMESTAMP,
  cost_center TEXT,
  billing_rate_usd_per_hour REAL,
  job_queue TEXT,
  max_concurrent_jobs INTEGER,
  reservation_type TEXT,
  notes TEXT,
  approval_id TEXT
);

INSERT INTO computational_resource_allocation VALUES
('AL001','PRJ001','U001','CPU',64,0,256.0,10.0,'2025-10-01','2026-03-31',1,5000.0,1200.5,'Active','2025-09-20 08:00:00','2025-10-05 09:15:00','CC100',2.5,'high_mem',10,'Dedicated','High priority compute','AP001'),
('AL002','PRJ002','U002','GPU',32,4,128.0,5.0,'2025-11-01','2026-04-30',2,3000.0,800.0,'Active','2025-10-15 10:30:00','2025-11-02 11:45:00','CC200',3.0,'gpu_cluster',5,'Shared','GPU intensive workload','AP002'),
('AL003','PRJ003','U003','CPU',16,0,64.0,2.0,'2025-12-01','2026-05-31',3,1500.0,400.0,'Pending','2025-11-05 14:00:00','2025-11-10 15:20:00','CC300',1.8,'standard',3,'OnDemand','Awaiting approval','AP003');

-- Clinical Trial Participant Log
CREATE TABLE clinical_trial_participant_log (
  participant_id TEXT PRIMARY KEY,
  trial_id TEXT,
  enrollment_date DATE,
  consent_signed INTEGER,
  age_years INTEGER,
  gender TEXT,
  ethnicity TEXT,
  enrollment_site TEXT,
  baseline_score REAL,
  adverse_event_flag INTEGER,
  medication_dose_mg REAL,
  visit_number INTEGER,
  visit_date DATE,
  vital_signs_bp TEXT,
  vital_signs_hr INTEGER,
  lab_result_glucose_mgdl REAL,
  lab_result_ldl_mgdl REAL,
  compliance_percentage REAL,
  withdrawn_flag INTEGER,
  withdrawal_reason TEXT,
  follow_up_required INTEGER,
  notes TEXT
);

INSERT INTO clinical_trial_participant_log VALUES
('P001','T001','2025-01-15',1,45,'Female','Hispanic','SiteA',5.2,0,10.0,1,'2025-01-20','120/80',72,90.0,130.0,98.5,0,NULL,0,'No issues'),
('P002','T001','2025-02-10',1,60,'Male','Caucasian','SiteB',4.8,1,15.0,2,'2025-02-15','130/85',78,110.0,140.0,92.0,0,NULL,1,'Mild headache reported'),
('P003','T002','2025-03-05',1,30,'Other','Asian','SiteC',6.0,0,5.0,1,'2025-03-10','115/75',68,85.0,120.0,100.0,0,NULL,0,'All baseline measurements normal');

-- Waste Disposal Certificate
CREATE TABLE waste_disposal_certificate (
  certificate_id TEXT PRIMARY KEY,
  waste_batch_id TEXT,
  disposal_date DATE,
  disposal_method TEXT,
  responsible_party TEXT,
  certificate_issued_by TEXT,
  certificate_number TEXT,
  waste_type TEXT,
  quantity_kg REAL,
  container_id TEXT,
  transport_company TEXT,
  driver_id TEXT,
  vehicle_id TEXT,
  temperature_c REAL,
  hazardous_level TEXT,
  regulatory_code TEXT,
  compliance_status TEXT,
  audit_reference TEXT,
  remarks TEXT,
  expiration_date DATE,
  scanned_copy_path TEXT,
  created_timestamp TIMESTAMP
);

INSERT INTO waste_disposal_certificate VALUES
('C001','WB001','2025-04-20','Incineration','JohnDoe','EnvAgency','CERT1001','Chemical',2.5,'CONT01','TransCo','DRV01','VEH01',45.0,'High','R001','Compliant','AUD001','No issues','2026-04-20','/certs/c001.pdf','2025-04-21 08:30:00'),
('C002','WB002','2025-05-10','Landfill','JaneSmith','EnvAgency','CERT1002','Biological',1.2,'CONT02','TransCo','DRV02','VEH02',20.0,'Medium','R002','Compliant','AUD002','Seal intact','2026-05-10','/certs/c002.pdf','2025-05-11 09:45:00'),
('C003','WB003','2025-06-05','Recycling','MikeBrown','EnvAgency','CERT1003','Plastic',0.8,'CONT03','TransCo','DRV03','VEH03',15.0,'Low','R003','Compliant','AUD003','Sorted by type','2026-06-05','/certs/c003.pdf','2025-06-06 10:15:00');

-- Lab Air Quality Event
CREATE TABLE lab_air_quality_event (
  event_id TEXT PRIMARY KEY,
  sensor_id TEXT,
  event_timestamp TIMESTAMP,
  pollutant_type TEXT,
  concentration_ppb REAL,
  threshold_ppb REAL,
  status TEXT,
  alert_sent INTEGER,
  acknowledged_by TEXT,
  acknowledgment_timestamp TIMESTAMP,
  mitigation_action TEXT,
  ventilation_adjusted INTEGER,
  zone_affected TEXT,
  external_weather_condition TEXT,
  maintenance_required INTEGER,
  notes TEXT,
  severity_level INTEGER,
  related_incident_id TEXT,
  trend_indicator TEXT,
  repair_ticket_id TEXT,
  created_by TEXT
);

INSERT INTO lab_air_quality_event VALUES
('AE001','SEN01','2025-07-15 13:20:00','VOC',350.0,300.0','High',1,'OP001','2025-07-15 13:25:00','Increase exhaust',1,'Zone1','Sunny',0,'Ventilation increased','4','INC010','Rising','RTK1001','SYS01'),
('AE002','SEN02','2025-08-01 09:45:00','CO2',950.0,800.0','Medium',1,'OP002','2025-08-01 09:50:00','Open windows',1,'Zone2','Rainy',0,'CO2 level stable','3','INC011','Stable','RTK1002','SYS02'),
('AE003','SEN03','2025-09-10 16:05:00','Particulate',120.0,100.0','Low',0,NULL,NULL,'Schedule filter change',0,'Zone3','Windy',1,'Filter due next week','2','INC012','Increasing','RTK1003','SYS03');

-- Training Module Feedback
CREATE TABLE training_module_feedback (
  feedback_id TEXT PRIMARY KEY,
  module_id TEXT,
  participant_id TEXT,
  completion_date DATE,
  rating_score INTEGER,
  comments TEXT,
  duration_minutes INTEGER,
  device_used TEXT,
  location TEXT,
  trainer_id TEXT,
  assessment_passed INTEGER,
  assessment_score REAL,
  suggestions TEXT,
  relevance_score INTEGER,
  difficulty_level INTEGER,
  future_interest INTEGER,
  follow_up_needed INTEGER,
  follow_up_action TEXT,
  submitted_timestamp TIMESTAMP,
  ip_address TEXT,
  browser_type TEXT,
  os_version TEXT
);

INSERT INTO training_module_feedback VALUES
('F001','M001','U001','2025-10-05',5,'Excellent module',45,'Laptop','LabA','T001',1,95.0,'More case studies',5,2,1,0,NULL,'2025-10-05 12:00:00','192.168.1.10','Chrome','Windows10'),
('F002','M002','U002','2025-10-12',4,'Good but could be shorter',30,'Tablet','LabB','T002',1,88.5,'Add interactive quiz',4,3,1,0,NULL,'2025-10-12 14:30:00','192.168.1.11','Firefox','macOS11'),
('F003','M003','U003','2025-10-20',3,'Content was dense',60,'Desktop','LabC','T003',0,60.0,'Simplify language',3,4,0,1,'Schedule refresher session','2025-10-20 09:15:00','192.168.1.12','Edge','Linux5');