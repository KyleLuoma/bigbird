-- Optical fiber network layout and maintenance
CREATE TABLE optical_fiber_network (
  network_id TEXT NOT NULL,
  segment_id TEXT NOT NULL,
  fiber_type TEXT,
  core_diameter_um REAL,
  cladding_diameter_um REAL,
  length_m REAL,
  installation_date DATE,
  splicing_method TEXT,
  connector_type TEXT,
  attenuation_db_per_km REAL,
  manufacturer TEXT,
  warranty_expiration DATE,
  last_inspection_date DATE,
  status TEXT,
  notes TEXT,
  bandwidth_gbps REAL,
  location TEXT,
  route_description TEXT,
  maintenance_cycle_months INTEGER,
  last_maintenance_date DATE,
  PRIMARY KEY (network_id, segment_id)
);

INSERT INTO optical_fiber_network VALUES
('OFN001','SEG01','SingleMode',9.0,125.0,250.0,'2022-03-15','Fusion','LC','0.35','FiberCorp','2027-03-15','2024-06-01','Active','Initial deployment','10','BuildingA','Floor1toFloor3',12,'2024-06-01');

INSERT INTO optical_fiber_network VALUES
('OFN001','SEG02','SingleMode',9.0,125.0,180.0,'2022-03-15','Fusion','LC','0.35','FiberCorp','2027-03-15','2024-06-01','Active','Extended to Lab4','10','BuildingA','Floor3toLab4',12,'2024-06-01');

INSERT INTO optical_fiber_network VALUES
('OFN002','SEG01','MultiMode',50.0,125.0,300.0,'2021-11-20','Mechanical','SC','0.5','OptiLink','2026-11-20','2024-05-20','Active','Backup link','1','BuildingB','DataCenterAtoOfficeB',6,'2024-05-20');

-- Laser system maintenance records
CREATE TABLE laser_system_maintenance (
  laser_id TEXT NOT NULL,
  maintenance_id TEXT NOT NULL,
  maintenance_date DATE,
  technician_name TEXT,
  service_type TEXT,
  power_output_watts REAL,
  wavelength_nm REAL,
  safety_interlock_status TEXT,
  alignment_status TEXT,
  cooling_system_status TEXT,
  firmware_version TEXT,
  notes TEXT,
  next_scheduled_date DATE,
  component_replaced TEXT,
  replacement_part_number TEXT,
  downtime_minutes INTEGER,
  maintenance_cost_usd REAL,
  location TEXT,
  calibration_status TEXT,
  beam_quality_metric REAL,
  PRIMARY KEY (laser_id, maintenance_id)
);

INSERT INTO laser_system_maintenance VALUES
('LAS001','MT001','2024-03-10','Alice Smith','Annual','150.0','532.0','OK','Aligned','OK','v2.3','Routine check','2024-09-10','None','',0,'1200.00','Lab1','Calibrated','1.02');

INSERT INTO laser_system_maintenance VALUES
('LAS001','MT002','2024-07-15','Bob Jones','ComponentSwap','150.0','532.0','OK','Realigned','OK','v2.3','Replaced pump','PumpModule','PM-200','45','1450.00','Lab1','Calibrated','1.01');

INSERT INTO laser_system_maintenance VALUES
('LAS002','MT001','2024-04-22','Carol Lee','Annual','200.0','1064.0','OK','Aligned','OK','v1.9','Routine check','2024-10-22','None','',0,'1300.00','Lab2','Calibrated','0.98');

-- Nanoparticle synthesis batch tracking
CREATE TABLE nanoparticle_synthesis_batch (
  batch_id TEXT NOT NULL,
  synthesis_date DATE,
  operator_name TEXT,
  nanoparticle_type TEXT,
  target_diameter_nm REAL,
  actual_diameter_nm REAL,
  concentration_mg_per_ml REAL,
  solvent TEXT,
  surfactant TEXT,
  reaction_temperature_c REAL,
  reaction_time_min INTEGER,
  stirring_speed_rpm INTEGER,
  pH REAL,
  purification_method TEXT,
  yield_percent REAL,
  storage_temperature_c REAL,
  storage_location TEXT,
  stability_days INTEGER,
  characterization_method TEXT,
  notes TEXT,
  PRIMARY KEY (batch_id)
);

INSERT INTO nanoparticle_synthesis_batch VALUES
('NPB001','2024-02-10','Dana White','Gold','50.0','48.5','10.0','Water','CTAB','80.0','60','1200','7.0','Centrifuge','85.0','4.0','FreezerA','180','TEM','Good size distribution');

INSERT INTO nanoparticle_synthesis_batch VALUES
('NPB002','2024-03-05','Eli Brown','Silica','100.0','102.3','8.5','Ethanol','None','25.0','120','800','7.5','Dialysis','78.0','20.0','RefrigeratorB','365','DLS','Slight agglomeration observed');

INSERT INTO nanoparticle_synthesis_batch VALUES
('NPB003','2024-04-12','Fiona Green','IronOxide','30.0','29.8','12.0','Water','PVP','70.0','45','1500','6.8','MagneticSeparator','92.0','-20.0','ColdRoomC','90','VSM','Magnetic properties as expected');

-- Bioinformatics compute node inventory
CREATE TABLE bioinformatics_compute_node (
  node_id TEXT NOT NULL,
  hostname TEXT,
  cpu_cores INTEGER,
  gpu_count INTEGER,
  ram_gb REAL,
  storage_tb REAL,
  os_version TEXT,
  installation_date DATE,
  last_update_date DATE,
  network_segment TEXT,
  location TEXT,
  power_supply_watts REAL,
  cooling_system TEXT,
  virtualization_enabled TEXT,
  owner_team TEXT,
  status TEXT,
  maintenance_window TEXT,
  warranty_expiration DATE,
  notes TEXT,
  disaster_recovery_ready TEXT,
  PRIMARY KEY (node_id)
);

INSERT INTO bioinformatics_compute_node VALUES
('BN001','bio-node-01',32,2,256.0,12.0,'Ubuntu20.04','2021-06-01','2024-05-30','SEG-A','DataCenter1',750.0,'LiquidCooling','Yes','GenomicsTeam','Active','Sundays02-04','2026-06-01','Primary node for variant calling','Yes');

INSERT INTO bioinformatics_compute_node VALUES
('BN002','bio-node-02',24,1,128.0,8.0,'Ubuntu20.04','2022-01-15','2024-05-20','SEG-A','DataCenter1',600.0,'AirCooling','Yes','ProteomicsTeam','Active','Saturdays01-03','2025-01-15','Secondary node for protein analysis','Yes');

INSERT INTO bioinformatics_compute_node VALUES
('BN003','bio-node-03',48,4,512.0,20.0,'Ubuntu22.04','2020-09-10','2024-05-25','SEG-B','DataCenter2',1200.0,'LiquidCooling','Yes','MetabolomicsTeam','Active','Fridays22-23','2027-09-10','High‑performance node for metabolomics pipelines','Yes');

-- Field sampling station registry
CREATE TABLE field_sampling_station (
  station_id TEXT NOT NULL,
  station_name TEXT,
  latitude REAL,
  longitude REAL,
  elevation_m REAL,
  installation_date DATE,
  last_service_date DATE,
  sensor_type TEXT,
  data_transmission_method TEXT,
  power_source TEXT,
  battery_capacity_mah INTEGER,
  firmware_version TEXT,
  maintenance_cycle_days INTEGER,
  status TEXT,
  region TEXT,
  owner_organization TEXT,
  contact_person TEXT,
  contact_phone TEXT,
  notes TEXT,
  calibration_date DATE,
  PRIMARY KEY (station_id)
);

INSERT INTO field_sampling_station VALUES
('FS001','RiverBankNorth',45.1234,-122.5678,150.0,'2023-04-01','2024-04-15','WaterQuality','Cellular','Solar',8000,'v1.2',180,'Active','NorthRegion','EnvAgency','Laura Kim','555-0123','Near confluence of two streams','2024-04-15');

INSERT INTO field_sampling_station VALUES
('FS002','MountainPeak',38.7654,-115.4321,2200.0,'2022-09-20','2024-03-10','Atmospheric','Satellite','Wind','12000','v1.4',365,'Active','WestMountain','ResearchInstitute','Mark Liu','555-0456','High altitude air monitoring','2024-03-10');

INSERT INTO field_sampling_station VALUES
('FS003','UrbanParkSouth',40.7128,-74.0060,10.0,'2024-01-10','2024-01-25','NoiseLevel','WiFi','Mains','', 'v1.0',30,'Active','UrbanArea','CityDept','Sam Patel','555-0789','Installed near playground','2024-01-25');

-- Radiation shielding assessment log
CREATE TABLE radiation_shielding_log (
  assessment_id TEXT NOT NULL,
  facility_id TEXT,
  assessment_date DATE,
  assessor_name TEXT,
  shielding_material TEXT,
  thickness_cm REAL,
  measured_leakage_uSv_per_hr REAL,
  permissible_limit_uSv_per_hr REAL,
  equipment_affected TEXT,
  status TEXT,
  remediation_needed TEXT,
  remediation_deadline DATE,
  notes TEXT,
  verification_date DATE,
  verified_by TEXT,
  location_description TEXT,
  radiation_type TEXT,
  background_level_uSv_per_hr REAL,
  compliance_status TEXT,
  PRIMARY KEY (assessment_id)
);

INSERT INTO radiation_shielding_log VALUES
('RS001','FAC001','2024-02-18','Nina Patel','Lead','12.5','0.8','1.0','GammaCamera','Pass','No','', 'All measurements within limits','2024-02-20','Omar Hassan','Room 12B','Gamma','0.2','Compliant');

INSERT INTO radiation_shielding_log VALUES
('RS002','FAC002','2024-03-05','Omar Hassan','Concrete','30.0','1.2','1.0','LinearAccelerator','Fail','Yes','2024-04-01','Excess leakage detected','2024-03-10','Nina Patel','Vault 3','XRay','0.3','Non‑Compliant');

INSERT INTO radiation_shielding_log VALUES
('RS003','FAC003','2024-04-12','Laura Kim','Polyethylene','8.0','0.4','0.5','BetaSource','Pass','No','', 'Shielding adequate for beta emissions','2024-04-14','Laura Kim','Lab B2','Beta','0.1','Compliant');

-- Cryogenic freezer audit records
CREATE TABLE cryogenic_freezer_audit (
  freezer_id TEXT NOT NULL,
  audit_id TEXT NOT NULL,
  audit_date DATE,
  auditor_name TEXT,
  temperature_c REAL,
  setpoint_c REAL,
  alarm_status TEXT,
  door_open_events INTEGER,
  power_failure_events INTEGER,
  maintenance_due DATE,
  last_service_date DATE,
  coolant_type TEXT,
  coolant_level_percent REAL,
  calibration_status TEXT,
  notes TEXT,
  location TEXT,
  capacity_liters REAL,
  current_load_percent REAL,
  backup_power_status TEXT,
  compliance_tag TEXT,
  PRIMARY KEY (freezer_id, audit_id)
);

INSERT INTO cryogenic_freezer_audit VALUES
('CF001','AU001','2024-05-01','Mark Liu','-80.0','-80.0','OK',2,0,'2024-11-01','2023-11-01','LiquidNitrogen',95.0,'Calibrated','No issues','LabFreezerRoom1',500.0,70.0,'Available','C1');

INSERT INTO cryogenic_freezer_audit VALUES
('CF001','AU002','2024-08-01','Sam Patel','-78.5','-80.0','Warning',5,1,'2025-02-01','2024-02-01','LiquidNitrogen',88.0,'Pending','Temperature drift observed','LabFreezerRoom1',500.0,72.0,'Available','C2');

INSERT INTO cryogenic_freezer_audit VALUES
('CF002','AU001','2024-04-20','Laura Kim','-150.0','-150.0','OK',0,0,'2024-10-20','2023-10-20','LiquidHelium',99.0,'Calibrated','All parameters nominal','CryoLab2',250.0,55.0,'Available','C1');

-- Robotic arm task scheduling
CREATE TABLE robotic_arm_task_schedule (
  robot_id TEXT NOT NULL,
  task_id TEXT NOT NULL,
  scheduled_start DATETIME,
  scheduled_end DATETIME,
  task_type TEXT,
  priority_level INTEGER,
  operator_name TEXT,
  required_tool TEXT,
  material_handled TEXT,
  quantity REAL,
  safety_check_passed TEXT,
  notes TEXT,
  execution_status TEXT,
  actual_start DATETIME,
  actual_end DATETIME,
  error_code TEXT,
  maintenance_required TEXT,
  maintenance_window DATETIME,
  energy_consumption_kwh REAL,
  PRIMARY KEY (robot_id, task_id)
);

INSERT INTO robotic_arm_task_schedule VALUES
('RA001','TK001','2024-06-01 08:00:00','2024-06-01 09:30:00','SampleTransfer',1,'Alice Smith','Gripper','TestTube',20,'Yes','Standard transfer','Pending',NULL,NULL,'','No','2024-06-02 02:00:00',5.2);

INSERT INTO robotic_arm_task_schedule VALUES
('RA001','TK002','2024-06-01 10:00:00','2024-06-01 11:15:00','PlateLoading',2,'Bob Jones','PlateCarrier','MicroPlate',1,'Yes','Load assay plates','Pending',NULL,NULL,'','No','2024-06-02 02:00:00',4.8);

INSERT INTO robotic_arm_task_schedule VALUES
('RA002','TK001','2024-06-01 08:30:00','2024-06-01 10:00:00','SampleTransfer',1,'Carol Lee','VacuumGripper','Vial',15,'Yes','High‑precision transfer','Pending',NULL,NULL,'','No','2024-06-02 02:00:00',6.1);

-- Chemical process control parameters
CREATE TABLE chemical_process_control_parameters (
  process_id TEXT NOT NULL,
  parameter_name TEXT NOT NULL,
  setpoint REAL,
  tolerance_plus REAL,
  tolerance_minus REAL,
  current_value REAL,
  unit TEXT,
  last_updated DATETIME,
  control_mode TEXT,
  actuator_id TEXT,
  sensor_id TEXT,
  alarm_threshold_high REAL,
  alarm_threshold_low REAL,
  alarm_status TEXT,
  comments TEXT,
  operator_responsible TEXT,
  shift TEXT,
  batch_number TEXT,
  recipe_version TEXT,
  PRIMARY KEY (process_id, parameter_name)
);

INSERT INTO chemical_process_control_parameters VALUES
('PROC001','Temperature',85.0,2.0,2.0,84.5,'C','2024-05-15 10:30:00','PID','ACT001','SNS001',90.0,80.0,'Normal','Stable operation','Dana White','Day','BCH1001','R1');

INSERT INTO chemical_process_control_parameters VALUES
('PROC001','Pressure',5.0,0.5,0.5,5.2,'bar','2024-05-15 10:32:00','PID','ACT002','SNS002',6.0,4.0,'High','Slight over‑pressure','Dana White','Day','BCH1001','R1');

INSERT INTO chemical_process_control_parameters VALUES
('PROC001','pH',7.0,0.2,0.2,6.9,'','2024-05-15 10:35:00','PID','ACT003','SNS003',7.5,6.5,'Normal','Within spec','Dana White','Day','BCH1001','R1');

-- Microfluidic experiment log
CREATE TABLE microfluidic_experiment_log (
  experiment_id TEXT NOT NULL,
  run_number INTEGER,
  chip_id TEXT,
  fluid_a_name TEXT,
  fluid_b_name TEXT,
  flow_rate_a_ul_per_min REAL,
  flow_rate_b_ul_per_min REAL,
  temperature_c REAL,
  pressure_bar REAL,
  valve_pattern TEXT,
  observation_notes TEXT,
  image_capture_path TEXT,
  analysis_status TEXT,
  results_summary TEXT,
  technician_name TEXT,
  start_time DATETIME,
  end_time DATETIME,
  device_status TEXT,
  calibration_date DATE,
  PRIMARY KEY (experiment_id, run_number)
);

INSERT INTO microfluidic_experiment_log VALUES
('ME001',1,'CHIP01','BufferA','ReagentX',50.0,120.0,25.0,1.2','01010101','No clog observed','/images/me001_run1.png','Pending','', 'Alice Smith','2024-06-01 09:00:00','2024-06-01 09:45:00','OK','2024-05-20');

INSERT INTO microfluidic_experiment_log VALUES
('ME001',2,'CHIP01','BufferA','ReagentY',55.0,115.0,25.0,1.3','01010101','Minor bubble formation','/images/me001_run2.png','Pending','', 'Alice Smith','2024-06-01 10:00:00','2024-06-01 10:45:00','OK','2024-05-20');

INSERT INTO microfluidic_experiment_log VALUES
('ME002',1,'CHIP02','SolventA','SolventB',80.0,80.0,30.0,0.9','11110000','Channel uniformity good','/images/me002_run1.png','Pending','', 'Bob Jones','2024-06-02 13:00:00','2024-06-02 13:30:00','OK','2024-05-25');

-- Instrument deployment schedule
CREATE TABLE instrument_deployment_schedule (
  deployment_id TEXT NOT NULL,
  instrument_id TEXT,
  instrument_type TEXT,
  deployment_site TEXT,
  scheduled_start DATE,
  scheduled_end DATE,
  responsible_engineer TEXT,
  transport_method TEXT,
  calibration_required TEXT,
  pre_deployment_checklist TEXT,
  post_deployment_verification TEXT,
  notes TEXT,
  status TEXT,
  priority_level INTEGER,
  estimated_cost_usd REAL,
  vendor TEXT,
  warranty_expiration DATE,
  acceptance_criteria TEXT,
  decommission_date DATE,
  PRIMARY KEY (deployment_id)
);

INSERT INTO instrument_deployment_schedule VALUES
('DEP001','INST1001','MassSpectrometer','SiteA','2024-07-01','2024-07-05','Evan Green','Truck','Yes','Completed','Pending','Handle with care','Planned',1,25000.0,'SpectroTech','2029-07-01','Meets sensitivity specs',NULL);

INSERT INTO instrument_deployment_schedule VALUES
('DEP002','INST1002','ElectronMicroscope','SiteB','2024-08-10','2024-08-15','Fiona White','AirFreight','Yes','Completed','Pending','Vibration isolation required','Planned',2,180000.0,'NanoViz','2029-08-10','Resolution >0.2nm',NULL);

INSERT INTO instrument_deployment_schedule VALUES
('DEP003','INST1003','XRayCTScanner','SiteC','2024-09-20','2024-09-25','Greg Black','Truck','No','Completed','Pending','Radiation shielding assessed','Planned',3,95000.0,'ImagingSolutions','2029-09-20','Dose <5mGy per scan',NULL);

-- Environmental incident report log
CREATE TABLE environmental_incident_report_log (
  incident_id TEXT NOT NULL,
  report_date DATE,
  reporter_name TEXT,
  incident_type TEXT,
  location TEXT,
  description TEXT,
  immediate_action TEXT,
  impact_assessment TEXT,
  regulatory_notification TEXT,
  notification_date DATE,
  follow_up_actions TEXT,
  status TEXT,
  closure_date DATE,
  responsible_department TEXT,
  estimated_damage_usd REAL,
  mitigation_plan TEXT,
  corrective_measures TEXT,
  notes TEXT,
  severity_level TEXT,
  PRIMARY KEY (incident_id)
);

INSERT INTO environmental_incident_report_log VALUES
('EI001','2024-04-12','Hannah Lee','Spill','Lab1','Minor chemical spill of ethanol','Contained with absorbent pads','Minimal environmental impact','Yes','2024-04-12','Dispose waste per protocol','Closed','2024-04-13','Safety','500.0','Update spill response training','Reviewed SOPs','No further issues','Low');

INSERT INTO environmental_incident_report_log VALUES
('EI002','2024-05-03','Ian Patel','AirEmission','VentilationShaft','Elevated VOC levels detected','Increased ventilation','Potential health risk','Yes','2024-05-04','Investigate source, install filters','Open','', 'Facilities','2000.0','Install carbon filters','Scheduled maintenance','Awaiting filter installation','Medium');

INSERT INTO environmental_incident_report_log VALUES
('EI003','2024-06-20','Jessica Kim','WasteLeak','StorageRoom','Leak from chemical waste drum','Isolated area, notified hazmat','Soil contamination risk','Yes','2024-06-21','Contain leak, remediation','Open','', 'Environmental','15000.0','Replace drums, train staff','Conduct soil testing','Pending remediation plan','High');

-- Chemical storage audit
CREATE TABLE chemical_storage_audit (
  audit_id TEXT NOT NULL,
  storage_area TEXT,
  audit_date DATE,
  auditor_name TEXT,
  total_containers INTEGER,
  expired_containers INTEGER,
  improperly_labeled INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  ventilation_status TEXT,
  fire_suppression_status TEXT,
  security_access_status TEXT,
  notes TEXT,
  corrective_actions_needed TEXT,
  follow_up_date DATE,
  compliance_status TEXT,
  storage_policy_version TEXT,
  last_update_date DATE,
  PRIMARY KEY (audit_id)
);

INSERT INTO chemical_storage_audit VALUES
('CSA001','ColdRoomA','2024-03-15','Laura Kim',120,5,2,-20.0,30.0,'OK','OK','Restricted','Minor labeling issues','Re‑label expired containers','2024-04-01','Partial','v3','2024-03-15');

INSERT INTO chemical_storage_audit VALUES
('CSA002','DryCabinetB','2024-04-10','Mark Liu',80,0,1,22.0,45.0,'OK','OK','Restricted','One container missing MSDS','Locate MSDS','2024-04-25','Compliant','v3','2024-04-10');

INSERT INTO chemical_storage_audit VALUES
('CSA003','HazMatVault','2024-05-05','Nina Patel',45,2,0,18.0,35.0,'OK','OK','Restricted','Expired containers require disposal','Dispose expired containers','2024-06-01','Partial','v3','2024-05-05');

-- Nanomaterial exposure assessment
CREATE TABLE nanomaterial_exposure_assessment (
  assessment_id TEXT NOT NULL,
  nanomaterial_type TEXT,
  batch_number TEXT,
  exposure_scenario TEXT,
  duration_hours REAL,
  concentration_mg_per_m3 REAL,
  protective_equipment_used TEXT,
  measurement_method TEXT,
  measured_concentration_mg_per_m3 REAL,
  health_effects_observed TEXT,
  risk_level TEXT,
  assessor_name TEXT,
  assessment_date DATE,
  mitigation_recommendation TEXT,
  follow_up_required TEXT,
  follow_up_date DATE,
  notes TEXT,
  regulatory_compliance TEXT,
  PRIMARY KEY (assessment_id)
);

INSERT INTO nanomaterial_exposure_assessment VALUES
('NEA001','SilverNanoparticles','NB001','Handling','2.0',0.05,'Gloves,Mask','AirSampler',0.04,'No symptoms','Low','Evan Green','2024-04-20','Continue current PPE','No','', 'Routine handling','Compliant');

INSERT INTO nanomaterial_exposure_assessment VALUES
('NEA002','CarbonNanotubes','CNB102','Synthesis','5.0',0.20,'Respirator,FaceShield','RealTimeMonitor',0.18','Mild throat irritation','Medium','Fiona White','2024-05-10','Improve local exhaust','Yes','2024-06-01','Elevated exposure during ramp-up','Compliant');

INSERT INTO nanomaterial_exposure_assessment VALUES
('NEA003','TitaniumDioxideNanoparticles','TDB210','Powder Transfer','1.5',0.10,'Gloves','FilterSampler',0.09','None','Low','Greg Black','2024-06-05','Maintain current controls','No','', 'Standard operating procedure followed','Compliant');