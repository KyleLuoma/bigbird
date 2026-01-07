-- Laser beam alignment records for equipment calibration
CREATE TABLE laser_beam_alignment_record (
  alignment_id TEXT PRIMARY KEY,
  laser_id TEXT,
  operator_id TEXT,
  alignment_date DATE,
  wavelength_nm REAL,
  power_mW REAL,
  beam_quality_factor REAL,
  target_position_x REAL,
  target_position_y REAL,
  target_position_z REAL,
  alignment_status TEXT,
  notes TEXT,
  calibration_version TEXT,
  environment_temp_c REAL,
  humidity_percent REAL,
  vibration_level_g REAL,
  measurement_device_id TEXT,
  alignment_duration_sec INTEGER,
  software_version TEXT,
  safety_check_passed INTEGER,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

INSERT INTO laser_beam_alignment_record VALUES
('ALN001','LASER01','OPR100','2023-04-12',532.0,150.5,0.98,0.12,0.05,0.00,'COMPLETED','Initial alignment','v1.2',22.5,45.0,0.02,'MD1001',180,'soft1.0',1,'2023-04-12 08:15:00','2023-04-12 09:00:00');

INSERT INTO laser_beam_alignment_record VALUES
('ALN002','LASER02','OPR101','2023-05-03',1064.0,200.0,0.95,0.10,-0.03,0.02,'COMPLETED','Routine check','v1.3',21.8,42.7,0.01,'MD1002',150,'soft1.1',1,'2023-05-03 10:00:00','2023-05-03 10:30:00');

INSERT INTO laser_beam_alignment_record VALUES
('ALN003','LASER03','OPR102','2023-06-20',355.0,120.0,0.92,0.08,0.04,-0.01,'FAILED','Alignment drift detected','v1.2',23.0,48.0,0.05,'MD1003',200,'soft1.0',0,'2023-06-20 14:45:00','2023-06-20 15:20:00');

-- Cryogenic storage temperature logging
CREATE TABLE cryogenic_storage_temperature_log (
  log_id TEXT PRIMARY KEY,
  storage_unit_id TEXT,
  sensor_id TEXT,
  measurement_timestamp TIMESTAMP,
  temperature_k REAL,
  pressure_pa REAL,
  humidity_percent REAL,
  freeze_cycle_number INTEGER,
  alarm_triggered INTEGER,
  operator_id TEXT,
  notes TEXT,
  firmware_version TEXT,
  battery_voltage_v REAL,
  ambient_temperature_c REAL,
  location_zone TEXT,
  data_quality_flag TEXT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  maintenance_required INTEGER,
  calibration_date DATE,
  sensor_type TEXT,
  sampling_interval_sec INTEGER
);

INSERT INTO cryogenic_storage_temperature_log VALUES
('LOG001','CRYO01','SNS100','2023-07-01 00:00:00',84.0,101325.0,0.0,1,0,'OPR200','Normal operation','fw3.1',3.3,22.5','ZoneA','GOOD','2023-07-01 00:05:00','2023-07-01 00:10:00',0,'2023-06-01','RTD',300);

INSERT INTO cryogenic_storage_temperature_log VALUES
('LOG002','CRYO02','SNS101','2023-07-01 00:05:00',85.2,101500.0,0.0,1,0,'OPR201','Slight fluctuation','fw3.0',3.2,22.8','ZoneB','GOOD','2023-07-01 00:10:00','2023-07-01 00:15:00',0,'2023-05-15','RTD',300);

INSERT INTO cryogenic_storage_temperature_log VALUES
('LOG003','CRYO01','SNS100','2023-07-01 00:10:00',120.5,101200.0,0.0,1,1,'OPR200','Temp rise alarm','fw3.1',3.3,23.0','ZoneA','ALARM','2023-07-01 00:15:00','2023-07-01 00:20:00',1,'2023-06-01','RTD',300);

-- Biobank sample processing pipeline metadata
CREATE TABLE biobank_sample_processing_pipeline (
  pipeline_id TEXT PRIMARY KEY,
  sample_id TEXT,
  receipt_date DATE,
  processing_stage TEXT,
  technician_id TEXT,
  equipment_id TEXT,
  protocol_version TEXT,
  start_timestamp TIMESTAMP,
  end_timestamp TIMESTAMP,
  temperature_c REAL,
  humidity_percent REAL,
  centrifuge_speed_rpm INTEGER,
  centrifuge_duration_sec INTEGER,
  buffer_solution TEXT,
  aliquot_volume_ml REAL,
  storage_location TEXT,
  barcode TEXT,
  quality_score REAL,
  comments TEXT,
  audit_user TEXT,
  audit_timestamp TIMESTAMP,
  status TEXT,
  next_stage TEXT,
  priority_level INTEGER
);

INSERT INTO biobank_sample_processing_pipeline VALUES
('PIPE001','SMP1001','2023-04-10','Lysis','TECH01','EQ001','v2.0','2023-04-10 08:00:00','2023-04-10 08:30:00',4.0,45.0,8000,600,'PBS','0.5','FreezerA','BC12345',0.92','No issues','AUD001','2023-04-10 09:00:00','COMPLETED','Extraction',1);

INSERT INTO biobank_sample_processing_pipeline VALUES
('PIPE002','SMP1002','2023-04-11','Centrifugation','TECH02','EQ002','v2.0','2023-04-11 09:15:00','2023-04-11 09:45:00',4.0,46.0,10000,300,'PBS','1.0','FreezerB','BC12346',0.88','Minor bubble observed','AUD002','2023-04-11 10:00:00','COMPLETED','Aliquoting',2);

INSERT INTO biobank_sample_processing_pipeline VALUES
('PIPE003','SMP1003','2023-04-12','Aliquoting','TECH03','EQ003','v2.1','2023-04-12 11:00:00','2023-04-12 11:20:00',4.0,47.0,0,0,'PBS','0.2','FreezerC','BC12347',0.95','All good','AUD003','2023-04-12 11:30:00','COMPLETED','Storage',1);

-- Microfluidic chip fabrication log
CREATE TABLE microfluidic_chip_fabrication_log (
  fab_id TEXT PRIMARY KEY,
  chip_design_id TEXT,
  fab_date DATE,
  fab_technician_id TEXT,
  substrate_material TEXT,
  channel_depth_um REAL,
  channel_width_um REAL,
  num_channels INTEGER,
  bonding_method TEXT,
  bonding_temperature_c REAL,
  bonding_time_sec INTEGER,
  surface_treatment TEXT,
  cleaning_solution TEXT,
  clean_time_sec INTEGER,
  post_process_inspection TEXT,
  defect_rate_percent REAL,
  yield_percent REAL,
  equipment_id TEXT,
  firmware_version TEXT,
  operator_notes TEXT,
  quality_control_passed INTEGER,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  lot_number TEXT,
  batch_size INTEGER
);

INSERT INTO microfluidic_chip_fabrication_log VALUES
('FAB001','DES100','2023-03-15','TECH10','PDMS',50.0,100.0,8,'ThermalBond','150.0',180,'O2Plasma','IPA',60,'Optical','2.0',95.0,'EQM001','fw2.3','All parameters within spec',1,'2023-03-15 10:00:00','2023-03-15 12:00:00','LOT9001',500);

INSERT INTO microfluidic_chip_fabrication_log VALUES
('FAB002','DES101','2023-04-05','TECH11','Glass',30.0,80.0,12,'AdhesiveBond','120.0',150,'Silane','Acetone',45,'SEM','1.5',92.0,'EQM002','fw2.4','Minor edge delamination',0,'2023-04-05 09:30:00','2023-04-05 11:15:00','LOT9002',300);

INSERT INTO microfluidic_chip_fabrication_log VALUES
('FAB003','DES102','2023-04-20','TECH12','PDMS',45.0,90.0,10,'ThermalBond','140.0',170,'O2Plasma','Ethanol',50,'Optical','1.8',94.0,'EQM001','fw2.3','Yield improved',1,'2023-04-20 08:45:00','2023-04-20 10:40:00','LOT9003',400);

-- Synthetic biology part inventory
CREATE TABLE synthetic_biology_part_inventory (
  part_id TEXT PRIMARY KEY,
  part_name TEXT,
  part_type TEXT,
  sequence TEXT,
  length_bp INTEGER,
  gc_content_percent REAL,
  synthesis_date DATE,
  provider TEXT,
  cost_usd REAL,
  storage_location TEXT,
  freezer_temperature_c REAL,
  container_type TEXT,
  lot_number TEXT,
  quality_assurance_passed INTEGER,
  notes TEXT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  regulatory_status TEXT,
  classification TEXT,
  usage_count INTEGER,
  last_used_date DATE,
  responsible_scientist TEXT,
  hazard_level TEXT,
  expiration_date DATE
);

INSERT INTO synthetic_biology_part_inventory VALUES
('PART001','PromoterX','Promoter','ATGCGTACGTAGCTAGCTAG',200,52.5,'2023-01-10','GeneSynth','250.0','FreezerA',-80.0,'Tube','LT12345',1,'High expression promoter','2023-01-10 09:00:00','2023-04-01 10:00:00','Approved','Regulatory','5','2023-03-20','DrSmith','Low','2025-01-10');

INSERT INTO synthetic_biology_part_inventory VALUES
('PART002','RiboSwitchY','Ribozyme','GCTAGCTAGCTAGGCTA',150,48.0,'2023-02-15','BioPartsCo','180.0','FreezerB',-80.0,'Plate','LT12346',1,'Temperature-sensitive ribozyme','2023-02-15 11:30:00','2023-04-02 12:45:00','Pending','Research','3','2023-03-25','DrLee','Medium','2024-12-31');

INSERT INTO synthetic_biology_part_inventory VALUES
('PART003','Cas9Z','Protein','',0,0.0,'2023-03-05','ProteinWorks','500.0','FreezerC',-80.0,'Vial','LT12347',1,'High-purity Cas9','2023-03-05 08:20:00','2023-04-03 09:15:00','Approved','Protein','2','2023-03-30','DrKim','High','2026-06-30');

-- Gene editing experiment schedule
CREATE TABLE gene_editing_experiment_schedule (
  schedule_id TEXT PRIMARY KEY,
  experiment_name TEXT,
  target_gene TEXT,
  crispr_system TEXT,
  guide_rna_id TEXT,
  cell_line TEXT,
  start_date DATE,
  end_date DATE,
  principal_investigator TEXT,
  lab_location TEXT,
  required_equipment TEXT,
  reagent_batch_id TEXT,
  safety_approval_id TEXT,
  estimated_cells INTEGER,
  transfection_method TEXT,
  electroporation_voltage_v REAL,
  electroporation_duration_ms INTEGER,
  post_editing_assay TEXT,
  data_storage_path TEXT,
  status TEXT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  notes TEXT,
  budget_usd REAL,
  expected_success_rate_percent REAL
);

INSERT INTO gene_editing_experiment_schedule VALUES
('SCH001','Knockout TP53','TP53','SpCas9','gRNA001','HeLa','2023-05-01','2023-05-07','DrBrown','LabA','Electroporator','RB1001','SA001',2000000,'Electroporation',1200.0,5,'T7E1','/data/exp1','PLANNED','2023-04-20 09:00:00','2023-04-20 10:00:00','Initial setup','50000',75.0);

INSERT INTO gene_editing_experiment_schedule VALUES
('SCH002','Base Editing ABC','ABC','ABE8e','gRNA002','HEK293','2023-06-10','2023-06-14','DrGreen','LabB','Lipofectamine','RB1002','SA002',1500000,'Lipofection',0.0,0,'DeepSeq','/data/exp2','PLANNED','2023-05-30 14:30:00','2023-05-30 15:00:00','Order reagents','35000',65.0);

INSERT INTO gene_editing_experiment_schedule VALUES
('SCH003','CRISPRi XYZ','XYZ','dCas9-KRAB','gRNA003','U2OS','2023-07-01','2023-07-05','DrWhite','LabC','Electroporator','RB1003','SA003',1800000,'Electroporation',1300.0,4,'RT-qPCR','/data/exp3','PLANNED','2023-06-20 11:15:00','2023-06-20 11:45:00','Prepare controls','40000',70.0);

-- Robotic arm maintenance cycle
CREATE TABLE robotic_arm_maintenance_cycle (
  maintenance_id TEXT PRIMARY KEY,
  robot_arm_id TEXT,
  maintenance_date DATE,
  technician_id TEXT,
  maintenance_type TEXT,
  duration_hours REAL,
  parts_replaced TEXT,
  firmware_version_before TEXT,
  firmware_version_after TEXT,
  lubrication_used TEXT,
  torque_calibration_passed INTEGER,
  position_accuracy_mm REAL,
  temperature_c REAL,
  humidity_percent REAL,
  safety_check_passed INTEGER,
  notes TEXT,
  next_scheduled_date DATE,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  cost_usd REAL,
  downtime_minutes INTEGER,
  service_vendor TEXT,
  compliance_status TEXT,
  inspection_report_id TEXT,
  priority_level INTEGER
);

INSERT INTO robotic_arm_maintenance_cycle VALUES
('MNT001','RA001','2023-03-20','TECH20','Preventive','4.5','JointGear,MotorX','v1.8','v1.9','SyntheticOil','1','0.02','22.0','40.0','1','Replaced motor bearings','2023-09-20','2023-03-20 08:00:00','2023-03-20 13:00:00','1200','30','RoboServ','Compliant','IR1001',1);

INSERT INTO robotic_arm_maintenance_cycle VALUES
('MNT002','RA002','2023-04-15','TECH21','Corrective','6.0','ControllerBoard','v2.0','v2.1','SiliconeGrease','0','0.05','23.5','42.0','0','Controller failure due to voltage spike','2023-10-15','2023-04-15 09:30:00','2023-04-15 15:45:00','1800','45','RoboFix','NonCompliant','IR1002',2);

INSERT INTO robotic_arm_maintenance_cycle VALUES
('MNT003','RA003','2023-05-10','TECH22','Preventive','3.5','CableSet','v1.5','v1.5','SyntheticOil','1','0.01','21.5','38.0','1','All checks passed','2023-11-10','2023-05-10 07:45:00','2023-05-10 11:30:00','950','20','RoboCare','Compliant','IR1003',1);

-- Solar panel efficiency tracking
CREATE TABLE solar_panel_efficiency_tracking (
  record_id TEXT PRIMARY KEY,
  panel_id TEXT,
  installation_date DATE,
  location_site TEXT,
  orientation TEXT,
  tilt_angle_deg REAL,
  measured_power_w REAL,
  ambient_temperature_c REAL,
  irradiance_w_per_m2 REAL,
  efficiency_percent REAL,
  degradation_rate_percent_per_year REAL,
  cleaning_date DATE,
  inverter_id TEXT,
  cable_resistance_ohm REAL,
  module_temperature_c REAL,
  weather_condition TEXT,
  maintenance_flag INTEGER,
  notes TEXT,
  recorded_at TIMESTAMP,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  analyst_id TEXT,
  data_quality_flag TEXT,
  calibration_status TEXT,
  anticipated_lifetime_years INTEGER,
  warranty_expiry_date DATE
);

INSERT INTO solar_panel_efficiency_tracking VALUES
('REC001','PV001','2020-01-15','SiteA','South','30.0',250.0,25.0,1000.0,25.0,0.5,'2023-03-01','INV001',0.02,28.0','Sunny',0,'No issues','2023-04-01 10:00:00','2023-04-01 10:05:00','2023-04-01 10:10:00','AN001','GOOD','CALIBRATED',25,'2025-01-15');

INSERT INTO solar_panel_efficiency_tracking VALUES
('REC002','PV002','2021-06-20','SiteB','East','25.0',210.0,27.0,950.0,22.1,0.6,'2023-03-15','INV002',0.025,30.0','PartlyCloudy',1,'Scheduled cleaning needed','2023-04-02 09:30:00','2023-04-02 09:35:00','2023-04-02 09:40:00','AN002','GOOD','CALIBRATED',25,'2026-06-20');

INSERT INTO solar_panel_efficiency_tracking VALUES
('REC003','PV003','2019-11-05','SiteC','West','20.0',275.0,22.0,1020.0,26.5,0.4,'2023-02-28','INV003',0.018,26.0','Sunny',0,'Performance stable','2023-04-03 11:15:00','2023-04-03 11:20:00','2023-04-03 11:25:00','AN003','GOOD','CALIBRATED',30,'2024-11-05');

-- Spacecraft telemetry analysis results
CREATE TABLE spacecraft_telemetry_analysis (
  analysis_id TEXT PRIMARY KEY,
  spacecraft_id TEXT,
  mission_phase TEXT,
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  orbit_type TEXT,
  altitude_km REAL,
  velocity_km_s REAL,
  attitude_pitch_deg REAL,
  attitude_yaw_deg REAL,
  attitude_roll_deg REAL,
  fuel_consumption_kg REAL,
  power_generated_w REAL,
  battery_soc_percent REAL,
  thermal_status TEXT,
  anomaly_detected INTEGER,
  anomaly_description TEXT,
  data_quality_score REAL,
  analyst_id TEXT,
  review_timestamp TIMESTAMP,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  software_version TEXT,
  processing_node_id TEXT,
  notes TEXT,
  confidence_level_percent REAL
);

INSERT INTO spacecraft_telemetry_analysis VALUES
('ANA001','SC001','Cruise','2023-03-01 00:00:00','2023-03-01 12:00:00','LEO',400.0,7.8,0.5,1.0,0.2,150.0,2500.0,85.0,'Nominal',0,'','0.98','ANL001','2023-03-01 13:00:00','2023-03-01 13:05:00','2023-03-01 13:10:00','v3.2','NODE12','All parameters within limits',95.0);

INSERT INTO spacecraft_telemetry_analysis VALUES
('ANA002','SC002','OrbitInsertion','2023-04-10 08:00:00','2023-04-10 10:30:00','GEO',35786.0,3.1,2.5,0.8,1.0,200.0,3200.0,90.0,'Nominal',1,'Transient voltage dip','0.92','ANL002','2023-04-10 11:00:00','2023-04-10 11:05:00','2023-04-10 11:10:00','v3.3','NODE15','Investigate power subsystem',88.0);

INSERT INTO spacecraft_telemetry_analysis VALUES
('ANA003','SC003','Descent','2023-05-20 14:00:00','2023-05-20 16:45:00','MarsOrbit',500.0,5.5,1.2,2.3,0.9,120.0,2800.0,80.0,'CoolingRequired',0,'','0.95','ANL003','2023-05-20 17:30:00','2023-05-20 17:35:00','2023-05-20 17:40:00','v4.0','NODE20','Thermal control checked',92.0);

-- Archaeological site excavation log
CREATE TABLE archaeological_site_excavation_log (
  excavation_id TEXT PRIMARY KEY,
  site_name TEXT,
  sector_code TEXT,
  excavation_start DATE,
  excavation_end DATE,
  lead_archaeologist TEXT,
  team_size INTEGER,
  stratigraphy_layer TEXT,
  artifact_type TEXT,
  artifact_id TEXT,
  material TEXT,
  depth_cm REAL,
  latitude REAL,
  longitude REAL,
  conservation_status TEXT,
  post_excavation_storage TEXT,
  documentation_method TEXT,
  gps_accuracy_m REAL,
  climate_condition TEXT,
  notes TEXT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  funding_source TEXT,
  permit_number TEXT,
  catalog_number TEXT,
  preservation_method TEXT
);

INSERT INTO archaeological_site_excavation_log VALUES
('EXC001','OldTown','S01','2023-02-01','2023-02-15','DrMiller',8,'LayerIII','Ceramic','ART001','Clay',45.0,34.1234,-117.5678','Stable','VaultA','Photogrammetry',0.5,'Sunny','No visible damage','2023-02-16 09:00:00','2023-02-16 10:00:00','HeritageFund','PERM123','CAT001','Encapsulation');

INSERT INTO archaeological_site_excavation_log VALUES
('EXC002','RiverBank','N02','2023-03-10','2023-03-20','DrSanchez',6,'LayerII','Metal','ART002','Bronze',30.0,35.6789,-118.1234','Corroded','CabinetB','LaserScanning',0.3,'Rainy','Requires immediate conservation','2023-03-21 11:30:00','2023-03-21 12:30:00','CulturalTrust','PERM124','CAT002','ControlledAtmosphere');

INSERT INTO archaeological_site_excavation_log VALUES
('EXC003','HillFort','E03','2023-04-05','2023-04-18','DrLee',10,'LayerI','Stone','ART003','Granite',20.0,36.2345,-119.4567','Excellent','ShelfC','3DModeling',0.2,'Windy','Intact condition','2023-04-19 08:45:00','2023-04-19 09:45:00','NationalGrant','PERM125','CAT003','Stable');

-- Additional tables can be added below as needed.