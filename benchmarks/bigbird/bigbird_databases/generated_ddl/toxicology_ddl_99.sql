-- Air quality event log records
CREATE TABLE air_quality_event_log (
  event_id TEXT PRIMARY KEY,
  event_timestamp TEXT,
  location TEXT,
  sensor_id TEXT,
  pm25 REAL,
  pm10 REAL,
  no2 REAL,
  o3 REAL,
  co REAL,
  temperature REAL,
  humidity REAL,
  wind_speed REAL,
  wind_direction TEXT,
  event_type TEXT,
  severity INTEGER,
  notes TEXT,
  analyst TEXT,
  verification_status TEXT,
  corrected_value REAL,
  data_source TEXT
);

INSERT INTO air_quality_event_log VALUES ('AE001','2025-12-01T08:15:00Z','BuildingA','SENS01',35.2,80.1,0.018,0.025,0.7,22.5,45.0,3.2,'N','PM_Exceedance',2,'Initial alert','JSmith','Pending',NULL,'Automated');
INSERT INTO air_quality_event_log VALUES ('AE002','2025-12-02T14:45:00Z','BuildingB','SENS07',12.5,30.0,0.010,0.015,0.3,19.8,50.2,1.8,'S','Ozone Spike',3,'Manual review','ALee','Confirmed',0.015,'Manual');
INSERT INTO air_quality_event_log VALUES ('AE003','2025-12-03T20:30:00Z','Outdoor','SENS03',55.0,120.4,0.025,0.040,0.9,25.1,60.5,5.0,'W','High Wind PM',4,'Data corrected after calibration','MPatel','Corrected',52.3,'Automated');

-- Chemical storage audit trail documenting periodic checks
CREATE TABLE chemical_storage_audit_trail (
  audit_id TEXT PRIMARY KEY,
  audit_date TEXT,
  storage_zone TEXT,
  auditor_name TEXT,
  chemical_id TEXT,
  chemical_name TEXT,
  quantity REAL,
  unit TEXT,
  expiration_date TEXT,
  storage_temperature REAL,
  humidity_level REAL,
  container_type TEXT,
  seal_intact INTEGER,
  safety_label_present INTEGER,
  ventilation_status TEXT,
  fire_suppression_status TEXT,
  remarks TEXT,
  corrective_action TEXT,
  followup_date TEXT,
  compliance_score INTEGER
);

INSERT INTO chemical_storage_audit_trail VALUES ('CA001','2025-11-15','Zone1','RNguyen','CH001','Acetone',250.0,'L','2026-05-30',22.0,40.0,'Metal Drum',1,1,'Good','Operational','All good','None','2026-05-01',95);
INSERT INTO chemical_storage_audit_trail VALUES ('CA002','2025-12-01','Zone2','KMiller','CH045','Benzene',120.5,'L','2025-12-20',20.5,45.0,'Glass Bottle',0,1,'Adequate','Operational','Seal broken','Replace seal','2025-12-10',78);
INSERT INTO chemical_storage_audit_trail VALUES ('CA003','2025-12-10','Zone3','JLopez','CH102','Sodium Hydroxide',500.0,'kg','2028-01-15',18.0,35.0,'Plastic Barrel',1,1,'Good','Operational','No issues','None','2026-01-15',88);

-- Root cause analysis for instrument failures
CREATE TABLE instrument_failure_root_cause_analysis (
  failure_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  failure_timestamp TEXT,
  detected_by TEXT,
  failure_type TEXT,
  symptom_description TEXT,
  immediate_action TEXT,
  root_cause_category TEXT,
  root_cause_detail TEXT,
  part_replaced TEXT,
  part_serial TEXT,
  downtime_hours REAL,
  cost_estimate REAL,
  preventive_measure TEXT,
  verification_status TEXT,
  analyst TEXT,
  notes TEXT,
  severity_level INTEGER,
  report_generated TEXT,
  resolution_status TEXT
);

INSERT INTO instrument_failure_root_cause_analysis VALUES ('FC001','INST12','2025-10-05T09:20:00Z','Automation','Electrical','Power flicker','Switched to backup','PowerSupply','Transient voltage surge','PSU-Module','PSU12345',2.5,1500.00,'Install surge protector','Closed','DChen','No further incidents','3','2025-10-06','Resolved');
INSERT INTO instrument_failure_root_cause_analysis VALUES ('FC002','INST07','2025-11-12T14:45:00Z','Technician','Mechanical','Stall during run','Stopped operation','BearingWear','Degraded bearing surfaces','Bearing-A','BRG9876',4.0,2400.00,'Scheduled bearing replacement','Closed','SPatel','Observed vibration','4','2025-11-13','Resolved');
INSERT INTO instrument_failure_root_cause_analysis VALUES ('FC003','INST03','2025-12-02T08:00:00Z','Sensor','Software','Error code 0x03','Rebooted system','FirmwareBug','Missing firmware patch','N/A','N/A',1.0,500.00,'Apply latest firmware','Open','LNguyen','Awaiting patch release','2','2025-12-03','Pending');

-- Repository of researcher knowledge assets
CREATE TABLE researcher_knowledge_repository (
  asset_id TEXT PRIMARY KEY,
  title TEXT,
  author_id TEXT,
  author_name TEXT,
  domain TEXT,
  creation_date TEXT,
  version TEXT,
  format TEXT,
  file_path TEXT,
  abstract TEXT,
  keywords TEXT,
  access_level TEXT,
  citation_count INTEGER,
  related_project TEXT,
  review_status TEXT,
  reviewer TEXT,
  approval_date TEXT,
  expiration_date TEXT,
  download_count INTEGER,
  comments TEXT
);

INSERT INTO researcher_knowledge_repository VALUES ('KR001','Advanced NMR Techniques','R001','Alice Smith','Spectroscopy','2024-06-15','v1.0','PDF','/repo/kr001.pdf','Comprehensive guide to NMR','NMR,Spectroscopy,Analysis','Public',12,'ProjA','Approved','JDoe','2024-07-01','2029-12-31',45,'Well received');
INSERT INTO researcher_knowledge_repository VALUES ('KR002','Machine Learning for Drug Discovery','R017','Bob Lee','Computational Chemistry','2025-02-20','v2.1','DOCX','/repo/kr002.docx','Methods integrating ML','ML,DrugDiscovery,Cheminformatics','Restricted',5,'ProjB','Pending','MKim','NULL','2027-12-31',8,'Under review');
INSERT INTO researcher_knowledge_repository VALUES ('KR003','Standard Operating Procedure - Sample Prep','R023','Clara Wu','Laboratory Operations','2023-11-05','v3.0','HTML','/repo/kr003.html','Step‑by‑step SOP','SOP,SamplePrep,LabSafety','Internal',0,'ProjC','Approved','ASmith','2023-12-01','2025-12-01',22,'No issues');

-- Sample preservation protocols for long‑term storage
CREATE TABLE sample_preservation_protocols (
  protocol_id TEXT PRIMARY KEY,
  sample_type TEXT,
  preservation_method TEXT,
  temperature REAL,
  duration_months INTEGER,
  container_type TEXT,
  label_format TEXT,
  prep_steps TEXT,
  quality_check_required INTEGER,
  qc_metric TEXT,
  notes TEXT,
  version TEXT,
  approved_by TEXT,
  approval_date TEXT,
  last_review_date TEXT,
  stability_data_reference TEXT,
  hazard_classification TEXT,
  storage_location TEXT,
  monitoring_frequency TEXT,
  emergency_action_plan TEXT
);

INSERT INTO sample_preservation_protocols VALUES ('SP001','Plasma','Freezing','-80',24,'Cryovial','Barcode','Thaw‑mix‑aliquot','1','ProteinIntegrity','Standard protocol','v1.0','JSmith','2024-01-15','2025-01-15','REF001','Biohazard','Freezer_A','Monthly','Contact Lab Manager');
INSERT INTO sample_preservation_protocols VALUES ('SP002','DNA','Lyophilization','RoomTemp',36,'Ampoule','QR','Extract‑purify‑dry','0','Purity260/280','Optimized for long term','v2.2','ALee','2025-03-10','2026-03-10','REF045','Non‑hazardous','DryBox_1','Quarterly','Notify BioSafety Officer');
INSERT INTO sample_preservation_protocols VALUES ('SP003','Cell Line','Cryopreservation','-196',48,'CryoStraw','RFID','Harvest‑freeze‑store','1','ViabilityPostThaw','Validated for stem cells','v1.5','MPatel','2023-07-20','2024-07-20','REF078','Biohazard','LN2_Tank_3','Weekly','Follow LN2 spill protocol');

-- Historical quota usage of computational resources
CREATE TABLE computational_resource_quota_history (
  record_id TEXT PRIMARY KEY,
  user_id TEXT,
  resource_type TEXT,
  quota_allocated REAL,
  quota_used REAL,
  period_start TEXT,
  period_end TEXT,
  overage_flag INTEGER,
  overage_amount REAL,
  approval_status TEXT,
  approved_by TEXT,
  request_date TEXT,
  review_comments TEXT,
  last_update TEXT,
  usage_trend TEXT,
  project_code TEXT,
  department TEXT,
  cost_center TEXT,
  billing_flag INTEGER,
  notes TEXT
);

INSERT INTO computational_resource_quota_history VALUES ('QRH001','U123','CPU_Hours',2000,1850,'2025-01-01','2025-01-31',0,NULL,'Approved','JSmith','2024-12-15','Within limits','2025-01-31','Stable','PRJ001','Bioinformatics','CC1001',1,'');
INSERT INTO computational_resource_quota_history VALUES ('QRH002','U456','GPU_Hours',500,540,'2025-01-01','2025-01-31',1,40,'Pending','ALee','2024-12-20','Review needed for overage','2025-01-31','Increasing','PRJ045','Computational','CC2002',0,'Overage justification pending');
INSERT INTO computational_resource_quota_history VALUES ('QRH003','U789','Storage_TB',10,9.5,'2025-01-01','2025-01-31',0,NULL,'Approved','MPatel','2024-12-10','No issues','2025-01-31','Stable','PRJ078','DataScience','CC3003',1,'');

-- Inspection records for clinical trial sites
CREATE TABLE clinical_trial_site_inspection (
  inspection_id TEXT PRIMARY KEY,
  site_id TEXT,
  inspection_date TEXT,
  inspector_name TEXT,
  site_type TEXT,
  compliance_score INTEGER,
  major_findings TEXT,
  corrective_actions TEXT,
  follow_up_date TEXT,
  status TEXT,
  notes TEXT,
  regulatory_body TEXT,
  protocol_version TEXT,
  participant_capacity INTEGER,
  emergency_plan_status TEXT,
  data_integrity_status TEXT,
  training_completion_rate REAL,
  equipment_calibration_status TEXT,
  privacy_compliance INTEGER,
  overall_risk_rating TEXT
);

INSERT INTO clinical_trial_site_inspection VALUES ('CTI001','SITE01','2025-09-15','JSmith','Hospital',92,'Minor documentation lag','Update SOPs','2025-10-15','Closed','All good','FDA','v3','120','Validated','Validated',98.5,'Current','1','Low');
INSERT INTO clinical_trial_site_inspection VALUES ('CTI002','SITE07','2025-11-02','ALee','Clinic',78,'Temperature control issue','Repair freezer','2025-12-01','Open','Awaiting repair','EMA','v2','45','Pending','Pending',85.0,'Outdated','0','Medium');
INSERT INTO clinical_trial_site_inspection VALUES ('CTI003','SITE15','2025-12-20','MPatel','Research Center',88,'Incomplete consent forms','Retrain staff','2026-01-10','Closed','Resolved','HealthCanada','v4','80','Validated','Validated',92.0,'Current','1','Low');

-- Detailed registry of environmental noise sources
CREATE TABLE environmental_noise_source_registry_detail (
  source_id TEXT PRIMARY KEY,
  source_name TEXT,
  category TEXT,
  location TEXT,
  latitude REAL,
  longitude REAL,
  dominant_frequency REAL,
  average_db_a TEXT,
  measurement_method TEXT,
  installation_date TEXT,
  last_maintenance TEXT,
  maintenance_frequency TEXT,
  responsible_party TEXT,
  compliance_status TEXT,
  notes TEXT,
  mitigation_strategy TEXT,
  operational_status TEXT,
  data_logger_id TEXT,
  calibration_date TEXT,
  last_audit TEXT
);

INSERT INTO environmental_noise_source_registry_detail VALUES ('NS001','HVAC_Main','Mechanical','BuildingA_Rooftop',45.4215,-75.6920,120.0,'68dB','SoundLevelMeter','2023-03-01','2025-06-15','Semiannual','Facilities','Compliant','Running within specs','Install acoustic baffles','Active','DL001','2025-01-10','2025-07-01');
INSERT INTO environmental_noise_source_registry_detail VALUES ('NS002','Generator_Unit4','Electrical','BuildingB_Basement',45.4240,-75.6900,250.0,'75dB','MicrophoneArray','2022-11-20','2025-05-20','Annual','Engineering','Non‑Compliant','Exceeds threshold','Add noise enclosure','Active','DL002','2024-12-05','2025-06-01');
INSERT INTO environmental_noise_source_registry_detail VALUES ('NS003','Traffic_Intersection_12','Transportation','Campus_East',45.4300,-75.6950,350.0,'80dB','PortableSPL','2020-01-15','2025-04-10','Quarterly','Security','Compliant','Peak traffic periods','Implement speed calming','Active','DL003','2025-03-01','2025-07-15');

-- Monitoring stations for nanomaterial exposure
CREATE TABLE nanomaterial_exposure_monitoring_station (
  station_id TEXT PRIMARY KEY,
  station_name TEXT,
  location TEXT,
  latitude REAL,
  longitude REAL,
  installation_date TEXT,
  sensor_type TEXT,
  detection_limit_ngm3 REAL,
  calibration_interval_days INTEGER,
  last_calibration TEXT,
  data_transmission_method TEXT,
  power_source TEXT,
  maintenance_contact TEXT,
  operational_status TEXT,
  alerts_enabled INTEGER,
  average_concentration_ngm3 REAL,
  max_recorded_concentration_ngm3 REAL,
  compliance_status TEXT,
  notes TEXT,
  last_inspection TEXT
);

INSERT INTO nanomaterial_exposure_monitoring_station VALUES ('NM001','Lab_A_West','LabA_Wing2',45.4218,-75.6930,'2024-02-10','CondensationParticleCounter',0.5,30,'2025-01-15','WiFi','AC','TechTeam','Online',1,0.8,2.3,'Compliant','No issues','2025-06-20');
INSERT INTO nanomaterial_exposure_monitoring_station VALUES ('NM002','Cleanroom_1','Cleanroom_Level1',45.4225,-75.6945,'2023-07-05','ElectrostaticSensor',0.2,60,'2025-02-10','Ethernet','BatteryBackup','Facilities','Online',1,0.15,0.45,'Compliant','Routine check','2025-06-18');
INSERT INTO nanomaterial_exposure_monitoring_station VALUES ('NM003','Warehouse_North','Warehouse_NorthWing',45.4250,-75.6970,'2025-01-20','PhotoionizationDetector',1.0,45,'2025-03-01','Cellular','Solar','ExternalVendor','Offline',0,NULL,NULL,'Pending','Installation pending','2025-06-01');

-- Job definitions for molecular dynamics simulations
CREATE TABLE molecular_dynamics_simulation_job (
  job_id TEXT PRIMARY KEY,
  simulation_name TEXT,
  submitted_by TEXT,
  submission_timestamp TEXT,
  software_package TEXT,
  version TEXT,
  force_field TEXT,
  temperature_K REAL,
  pressure_atm REAL,
  time_step_fs REAL,
  total_steps INTEGER,
  ensemble_type TEXT,
  initial_structure_file TEXT,
  output_trajectory_file TEXT,
  checkpoint_interval_steps INTEGER,
  compute_node_id TEXT,
  allocated_cores INTEGER,
  allocated_memory_gb REAL,
  status TEXT,
  completion_timestamp TEXT
);

INSERT INTO molecular_dynamics_simulation_job VALUES ('MD001','Protein_Fold_Study','R001','2025-11-01T10:00:00Z','GROMACS','2023.5','CHARMM36',310.0,1.0,2.0,5000000,'NVT','prot_initial.gro','prot_traj.xtc',100000,'node12',64,256.0,'Running',NULL);
INSERT INTO molecular_dynamics_simulation_job VALUES ('MD002','Lipid_Bilayer_Equil','R017','2025-10-15T14:30:00Z','NAMD','2.14','CHARMM36',298.0,1.0,1.0,2500000,'NPT','bilayer_start.pdb','bilayer_prod.dcd',50000,'node07',128,512.0,'Completed','2025-10-20T09:45:00Z');
INSERT INTO molecular_dynamics_simulation_job VALUES ('MD003','Polymer_Stress_Test','R023','2025-12-05T08:20:00Z','LAMMPS','2022.10','OPLS-AA',350.0,5.0,0.5,10000000,'NPH','polymer_init.data','polymer_out.dump',200000,'node23',96,384.0,'Queued',NULL);