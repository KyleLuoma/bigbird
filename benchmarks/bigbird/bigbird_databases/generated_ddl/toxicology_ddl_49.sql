-- Laser optics inventory
CREATE TABLE laser_optics_inventory (
  inventory_id TEXT PRIMARY KEY,
  model TEXT,
  manufacturer TEXT,
  wavelength_nm REAL,
  power_w REAL,
  aperture_mm REAL,
  coating_type TEXT,
  serial_number TEXT,
  purchase_date TEXT,
  warranty_expiration TEXT,
  location_room TEXT,
  status TEXT,
  last_maintenance_date TEXT,
  maintenance_interval_days INTEGER,
  calibrated_flag INTEGER,
  calibration_date TEXT,
  calibration_certificate_id TEXT,
  cost_usd REAL,
  vendor_id TEXT,
  notes TEXT
);
INSERT INTO laser_optics_inventory VALUES
('LOI001','LSP-500','OptiCorp',532.0,150.0,10.5,'dielectric','SN12345','2022-05-10','2025-05-10','RoomA','operational','2023-04-01',365,1,'2023-04-01','CERT001',12000.0,'VEND01','Initial deployment'),
('LOI002','LSP-750','PhotonicsInc',750.0,200.0,12.0,'AR-coating','SN67890','2021-11-20','2024-11-20','RoomB','maintenance','2022-12-15',365,0,NULL,NULL,15000.0,'VEND02','Pending calibration'),
('LOI003','LSP-1064','LaserTech',1064.0,250.0,15.0,'HR-coating','SN54321','2023-01-05','2026-01-05','RoomC','operational','2023-07-01',365,1,'2023-07-01','CERT003',18000.0,'VEND03','Ready for experiments');

-- Optical fiber network inventory
CREATE TABLE optical_fiber_network_inventory (
  fiber_id TEXT PRIMARY KEY,
  fiber_type TEXT,
  core_diameter_um REAL,
  cladding_diameter_um REAL,
  length_m REAL,
  manufacturer TEXT,
  installation_date TEXT,
  termination_a TEXT,
  termination_b TEXT,
  connector_type TEXT,
  splice_count INTEGER,
  attenuation_db_per_km REAL,
  bandwidth_GHz REAL,
  compliance_standard TEXT,
  location_start TEXT,
  location_end TEXT,
  status TEXT,
  last_test_date TEXT,
  test_result TEXT,
  maintenance_schedule TEXT,
  cost_usd REAL,
  notes TEXT
);
INSERT INTO optical_fiber_network_inventory VALUES
('FIB001','SingleMode','9.0','125.0',250.0,'FiberCo','2021-02-15','PanelA','PanelB','LC','2',0.35,10.0,'TIA-568','Building1','Building2','active','2023-06-01','pass','annual','1200.0','Main backbone fiber'),
('FIB002','MultiMode','50.0','125.0',150.0,'OptiFiber','2020-07-22','PanelC','PanelD','SC','1',0.5,1.0,'TIA-568','Building3','Building4','active','2023-05-20','pass','biennial','800.0','Lab floor distribution'),
('FIB003','SingleMode','9.0','125.0',300.0,'PhotonNet','2022-11-05','PanelE','PanelF','FC','3',0.32,10.0','TIA-568','Building5','DataCenter','active','2023-07-10','pass','annual','1500.0','High‑speed link');

-- HVAC zone performance log
CREATE TABLE hvac_zone_performance_log (
  log_id TEXT PRIMARY KEY,
  zone_id TEXT,
  timestamp TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  airflow_cfm REAL,
  pressure_pa REAL,
  filter_status TEXT,
  heater_status TEXT,
  cooler_status TEXT,
  fan_speed_rpm REAL,
  energy_consumption_kwh REAL,
  co2_ppm REAL,
  voc_ppb REAL,
  maintenance_due_flag INTEGER,
  last_maintenance_date TEXT,
  setpoint_temperature REAL,
  setpoint_humidity REAL,
  occupancy_status TEXT,
  notes TEXT
);
INSERT INTO hvac_zone_performance_log VALUES
('LOG001','ZONE_A','2023-07-15T08:00:00',22.5,45.0,1200.0,101.3,'good','on','off',1500.0,2.5,600.0,150.0,0,'2023-06-01',22.0,50.0,'occupied','Normal operation'),
('LOG002','ZONE_B','2023-07-15T08:05:00',24.0,50.0,1100.0,102.0,'replace','on','on',1400.0,2.8,650.0,180.0,1,'2023-04-15',23.0,55.0,'vacant','Filter due soon'),
('LOG003','ZONE_C','2023-07-15T08:10:00',21.0,40.0,1300.0,100.8,'good','off','on',1550.0,2.3,580.0,130.0,0,'2023-05-20',21.5,45.0','occupied','All parameters nominal');

-- Laser system maintenance
CREATE TABLE laser_system_maintenance (
  maintenance_id TEXT PRIMARY KEY,
  laser_id TEXT,
  maintenance_date TEXT,
  technician_id TEXT,
  service_type TEXT,
  description TEXT,
  parts_replaced TEXT,
  hours_spent REAL,
  cost_usd REAL,
  next_due_date TEXT,
  calibration_verified INTEGER,
  safety_check_passed INTEGER,
  alignment_status TEXT,
  beam_quality_rating REAL,
  warranty_coverage TEXT,
  vendor_contact TEXT,
  downtime_minutes INTEGER,
  log_file_path TEXT,
  approval_status TEXT,
  notes TEXT
);
INSERT INTO laser_system_maintenance VALUES
('MTN001','LAS001','2023-03-10','TECH01','preventive','Checked optics and electronics','MirrorSetA',4.0,800.0,'2024-03-10',1,1,'aligned',9.5,'full','vendor@example.com',30,'/logs/mt1.txt','approved','Routine check'),
('MTN002','LAS002','2023-06-22','TECH02','corrective','Replaced pump','PumpB',6.5,1200.0','2024-06-22',0,1,'realigned',8.8','partial','service@example.com',45,'/logs/mt2.txt','pending','Pump failure observed'),
('MTN003','LAS003','2023-01-15','TECH03','preventive','Cleaned cavity','None',3.0,500.0,'2024-01-15',1,1,'aligned',9.2,'full','support@example.com',20,'/logs/mt3.txt','approved','No issues');

-- Nanoparticle characterization summary
CREATE TABLE nanoparticle_characterization_summary (
  summary_id TEXT PRIMARY KEY,
  batch_id TEXT,
  measurement_date TEXT,
  technique TEXT,
  size_nm_avg REAL,
  size_nm_std REAL,
  shape TEXT,
  surface_charge_mV REAL,
  composition TEXT,
  purity_percent REAL,
  density_g_per_cm3 REAL,
  optical_properties TEXT,
  magnetic_properties TEXT,
  thermal_stability_c REAL,
  zeta_potential REAL,
  aggregation_index REAL,
  functionalization TEXT,
  assay_result TEXT,
  analyst_id TEXT,
  comments TEXT
);
INSERT INTO nanoparticle_characterization_summary VALUES
('SUM001','BATCH01','2023-05-20','DLS',50.2,5.1,'spherical',-25.0','Au','95.0','19.3','UV‑Vis peak 520nm','none',200.0,30.0,0.12,'PEGylated','pass','ANL001','High uniformity'),
('SUM002','BATCH02','2023-06-12','TEM',120.0,15.0,'rod','+10.0','Fe2O3','88.0','5.2','none','ferromagnetic',350.0,45.0,0.30,'citrate','fail','ANL002','Aggregates observed'),
('SUM003','BATCH03','2023-07-01','FTIR',75.0,8.0,'spherical','-5.0','SiO2','92.0','2.6','IR bands at 1100cm‑1','none',250.0,20.0,0.08,'silane','pass','ANL003','Surface functionalization confirmed');

-- Cryogenic storage monitor
CREATE TABLE cryogenic_storage_monitor (
  monitor_id TEXT PRIMARY KEY,
  unit_id TEXT,
  timestamp TEXT,
  temperature_k REAL,
  pressure_pa REAL,
  humidity_percent REAL,
  power_status TEXT,
  alarm_flag INTEGER,
  backup_power_status TEXT,
  sensor_id TEXT,
  calibration_date TEXT,
  maintenance_due TEXT,
  longevity_days INTEGER,
  location_rack TEXT,
  fill_level_percent REAL,
  nitrogen_consumption_l_per_hour REAL,
  last_refill_date TEXT,
  operator_id TEXT,
  notes TEXT,
  anomaly_detected INTEGER
);
INSERT INTO cryogenic_storage_monitor VALUES
('MON001','CRYO01','2023-07-15T09:00:00',77.0,101325.0,0.5,'on',0,'on','SENS01','2023-01-10','2024-01-10',365,'RackA',95.0,0.8,'2023-07-01','OP001','Normal operation',0),
('MON002','CRYO02','2023-07-15T09:05:00',78.2,101200.0,0.6','off',1,'off','SENS02','2022-12-05','2023-12-05',365,'RackB',80.0,1.1,'2023-06-20','OP002','Power loss detected',1),
('MON003','CRYO03','2023-07-15T09:10:00',76.5,101400.0,0.4,'on',0,'on','SENS03','2023-02-15','2024-02-15',365,'RackC',98.0,0.7,'2023-07-10','OP003','All parameters nominal',0);

-- Bioinformatics tool license
CREATE TABLE bioinformatics_tool_license (
  license_id TEXT PRIMARY KEY,
  tool_name TEXT,
  version TEXT,
  license_type TEXT,
  vendor TEXT,
  purchase_date TEXT,
  expiration_date TEXT,
  seat_count INTEGER,
  assigned_user TEXT,
  department TEXT,
  cost_usd REAL,
  compliance_status TEXT,
  maintenance_contract TEXT,
  support_contact TEXT,
  notes TEXT,
  last_audit_date TEXT,
  renewal_reminder_sent INTEGER,
  license_key TEXT,
  hardware_binding TEXT,
  procurement_order_id TEXT
);
INSERT INTO bioinformatics_tool_license VALUES
('LIC001','GenomeAnalyser','3.2','subscription','BioSoft','2022-03-01','2023-03-01',25,'userA','Genomics',5000.0,'compliant','yes','support@biosoft.com','Annual renewal','2023-02-20',1,'KEY-ABC-123','HW001','PO12345'),
('LIC002','ProteomeMapper','5.0','perpetual','ProteoTech','2020-07-15','2025-07-15',10,'userB','Proteomics',8000.0,'compliant','no','contact@proteotech.com','License transferred','2023-06-01',0,'KEY-XYZ-789','HW002','PO67890'),
('LIC003','MetaboSuite','2.5','subscription','MetaLab','2021-11-30','2022-11-30',15,'userC','Metabolomics',3000.0,'non‑compliant','yes','help@metalab.com','Pending renewal','2022-11-20',1,'KEY-DEF-456','HW003','PO11223');

-- Robotic arm task log
CREATE TABLE robotic_arm_task_log (
  task_id TEXT PRIMARY KEY,
  robot_id TEXT,
  task_name TEXT,
  start_time TEXT,
  end_time TEXT,
  operator_id TEXT,
  task_status TEXT,
  error_code TEXT,
  error_description TEXT,
  parts_used TEXT,
  energy_consumed_kwh REAL,
  cycle_count INTEGER,
  maintenance_required_flag INTEGER,
  next_scheduled_task TEXT,
  priority_level INTEGER,
  notes TEXT,
  software_version TEXT,
  calibration_status TEXT,
  safety_check_passed INTEGER,
  compliance_flag INTEGER
);
INSERT INTO robotic_arm_task_log VALUES
('TASK001','ARM01','SampleTransfer','2023-07-14T08:00:00','2023-07-14T08:15:00','OP100','completed','NULL','NULL','gripperA',1.2,30,0,'TASK005',2,'No issues','v2.3','calibrated',1,1),
('TASK002','ARM02','PlateStaining','2023-07-14T09:00:00','2023-07-14T09:45:00','OP101','error','E12','Motor overload','gripperB',2.5,45,1,'TASK006',1,'Motor replaced','v2.3','calibrated',0,0),
('TASK003','ARM01','WellScanning','2023-07-14T10:00:00','2023-07-14T10:20:00','OP102','completed','NULL','NULL','cameraModule',0.8,20,0,'TASK007',3,'Fast scan','v2.3','calibrated',1,1);

-- Environmental noise monitor station
CREATE TABLE environmental_noise_monitor_station (
  station_id TEXT PRIMARY KEY,
  location_desc TEXT,
  latitude REAL,
  longitude REAL,
  installation_date TEXT,
  manufacturer TEXT,
  sensor_type TEXT,
  frequency_range_hz TEXT,
  sensitivity_db REAL,
  calibration_date TEXT,
  last_maintenance_date TEXT,
  data_upload_interval_min INTEGER,
  power_source TEXT,
  status TEXT,
  last_reading_timestamp TEXT,
  avg_noise_level_db REAL,
  peak_noise_level_db REAL,
  std_dev_noise_db REAL,
  notes TEXT,
  maintenance_contact TEXT
);
INSERT INTO environmental_noise_monitor_station VALUES
('STN001','Building A - Lobby',40.7128,-74.0060,'2021-05-10','AcoustiTech','microphone','20-20000','-38.0','2022-05-01','2023-05-01',15,'AC','active','2023-07-15T07:45:00',55.2,78.5,5.1,'All good','maint@example.com'),
('STN002','Parking Lot West',40.7130,-74.0070,'2020-08-20','SoundSense','hydrophone','10-18000','-42.0','2021-08-15','2023-02-20',30,'Solar','active','2023-07-15T07:50:00',62.0,85.0,6.3,'Minor wind noise','maint2@example.com'),
('STN003','Courtyard East',40.7140,-74.0055,'2022-01-12','NoiseGuard','microphone','30-15000','-40.5','2022-12-01','2023-06-01',10,'Battery','inactive','2023-06-30T18:00:00',48.5,70.2,4.8','Sensor offline for maintenance','maint3@example.com');

-- Clinical trial site audit
CREATE TABLE clinical_trial_site_audit (
  audit_id TEXT PRIMARY KEY,
  site_id TEXT,
  audit_date TEXT,
  auditor_id TEXT,
  audit_type TEXT,
  compliance_score REAL,
  major_findings TEXT,
  corrective_action_plan TEXT,
  deadline_date TEXT,
  follow_up_date TEXT,
  status TEXT,
  documents_reviewed_count INTEGER,
  patient_consent_compliance INTEGER,
  data_integrity_score REAL,
  safety_monitoring_score REAL,
  training_compliance_score REAL,
  infrastructure_score REAL,
  notes TEXT,
  escalation_required_flag INTEGER,
  final_report_path TEXT
);
INSERT INTO clinical_trial_site_audit VALUES
('AUD001','SITE01','2023-03-15','AUD001','routine',92.5,'Minor labeling issue','Update SOPs','2023-06-15','2023-07-01','closed',15,1,95.0,90.0,88.0,85.0,'All corrective actions completed',0,'/reports/aud001.pdf'),
('AUD002','SITE02','2023-05-20','AUD002','follow‑up',78.0,'Missing temperature logs','Implement electronic monitoring','2023-09-01','2023-10-15','open',12,0,80.0,70.0,65.0,60.0,'Pending data upload',1,'/reports/aud002.pdf'),
('AUD003','SITE03','2023-07-10','AUD003','routine',88.0,'Adequate documentation','No action required','2023-12-31','2024-01-15','closed',20,1,90.0,85.0,87.0,90.0,'Excellent compliance',0,'/reports/aud003.pdf');