-- Spectrometer instrument details
CREATE TABLE spectrometer_device (
  spectrometer_id TEXT NOT NULL,
  model_number TEXT,
  manufacturer TEXT,
  serial_number TEXT,
  installation_date TEXT,
  calibration_date TEXT,
  wavelength_range_min_nm REAL,
  wavelength_range_max_nm REAL,
  resolution_nm REAL,
  detector_type TEXT,
  slit_width_mm REAL,
  light_source TEXT,
  fiber_optic_length_m REAL,
  software_version TEXT,
  firmware_version TEXT,
  power_rating_watts REAL,
  cooling_method TEXT,
  maintenance_interval_days INTEGER,
  last_service_date TEXT,
  service_provider TEXT,
  location_room TEXT,
  notes TEXT,
  PRIMARY KEY (spectrometer_id)
);

INSERT INTO spectrometer_device VALUES (
  'spec_001','SMX1000','OptiLab','SN12345','2022-01-15','2023-06-01',
  200.0,800.0,0.5,'CCD','0.1','Deuterium Lamp',5.0,'v3.2','f1.0',
  150.0,'Liquid Cooling',180,'2023-05-20','CalibTech','RoomA','Initial install'
);
INSERT INTO spectrometer_device VALUES (
  'spec_002','SMX2000','PhotonicsInc','SN67890','2021-07-22','2023-04-10',
  150.0,900.0,0.2,'CMOS','0.05','Xenon Flash',3.5,'v4.0','f2.1',
  200.0,'Air Cooling',365,'2023-04-08','LabServ','RoomB','Upgraded detector'
);
INSERT INTO spectrometer_device VALUES (
  'spec_003','SMX3000','SpectraCorp','SN54321','2023-03-05','2023-09-15',
  250.0,750.0,0.1,'InGaAs','0.2','LED Array',4.2,'v5.1','f3.0',
  180.0,'Thermoelectric',90,'2023-09-10','TechMaint','RoomC','New unit'
);

-- Laser system information
CREATE TABLE laser_system (
  laser_id TEXT NOT NULL,
  laser_type TEXT,
  wavelength_nm REAL,
  pulse_width_ns REAL,
  repetition_rate_hz REAL,
  output_power_watts REAL,
  beam_quality_m2 REAL,
  cooling_method TEXT,
  safety_class TEXT,
  manufacturer TEXT,
  model TEXT,
  serial_number TEXT,
  installation_date TEXT,
  last_alignment_date TEXT,
  alignment_interval_days INTEGER,
  maintenance_provider TEXT,
  warranty_expiration TEXT,
  safety_interlock BOOLEAN,
  enclosure_type TEXT,
  control_interface TEXT,
  location TEXT,
  notes TEXT,
  PRIMARY KEY (laser_id)
);

INSERT INTO laser_system VALUES (
  'laser_001','Diode','808','5','1000','2.5','1.2','Air','Class3B','LaserTech','LT-808','LX001','2022-05-10','2023-07-01',180,'LaserCare','2025-05-10',TRUE,'Enclosed','Ethernet','RoomD','Primary research laser'
);
INSERT INTO laser_system VALUES (
  'laser_002','Fiber','1550','10','500','5.0','1.0','Water','Class4','PhotonicsCo','FT-1550','FX002','2021-11-20','2023-06-15',365,'OptiServe','2024-11-20',TRUE,'Boxed','USB','RoomE','Communications testing'
);
INSERT INTO laser_system VALUES (
  'laser_003','Q-switched','1064','2','2000','1.0','1.5','Air','Class4','PulseInc','QSW-1064','PX003','2023-01-05','2023-08-20',90,'PulseMaintain','2026-01-05',TRUE,'Bench','RS232','RoomF','High‑speed ablation'
);

-- HVAC zone configuration
CREATE TABLE hvac_zone (
  zone_id TEXT NOT NULL,
  zone_name TEXT,
  floor_level INTEGER,
  area_sq_m REAL,
  max_occupancy INTEGER,
  cooling_capacity_kw REAL,
  heating_capacity_kw REAL,
  airflow_cfm REAL,
  filter_type TEXT,
  filter_change_interval_days INTEGER,
  temperature_setpoint_c REAL,
  humidity_setpoint_percent REAL,
  co2_setpoint_ppm REAL,
  supply_fan_status TEXT,
  return_fan_status TEXT,
  damper_position_percent REAL,
  thermostat_id TEXT,
  controller_ip TEXT,
  maintenance_contact TEXT,
  last_maintenance_date TEXT,
  notes TEXT,
  PRIMARY KEY (zone_id)
);

INSERT INTO hvac_zone VALUES (
  'zone_01','Chemistry Lab','1',120.5,30,15.0,12.5,1500,'HEPA',180,22.0,45.0,800,'Running','Running',85.0,'therm_01','192.168.10.21','HVACServ','2023-07-10','Critical area'
);
INSERT INTO hvac_zone VALUES (
  'zone_02','Electronics Bench','2',80.0,20,10.0,8.0,1200,'MERV13',365,21.0,50.0,600,'Running','Idle',70.0,'therm_02','192.168.10.22','HVACServ','2023-06-15','Standard operation'
);
INSERT INTO hvac_zone VALUES (
  'zone_03','Office Space','3',200.0,50,20.0,18.0,2000,'MERV8',730,23.0,40.0,500,'Running','Running',60.0,'therm_03','192.168.10.23','HVACServ','2023-05-20','Low‑priority zone'
);

-- Cleanroom environmental monitor
CREATE TABLE cleanroom_monitor (
  monitor_id TEXT NOT NULL,
  cleanroom_id TEXT,
  particle_count_0_1um INTEGER,
  particle_count_0_5um INTEGER,
  particle_count_1um INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
 **  pressure_pa REAL,
  airflow_velocity_fpm REAL,
  filter_efficiency_percent REAL,
  sensor_status TEXT,
  last_calibration_date TEXT,
  calibration_interval_days INTEGER,
  alert_threshold_particle_0_5um INTEGER,
  alert_threshold_humidity_percent REAL,
  alert_threshold_temperature_c REAL,
  maintenance_contact TEXT,
  location_coordinates TEXT,
  notes TEXT,
  PRIMARY KEY (monitor_id)
);

INSERT INTO cleanroom_monitor VALUES (
  'clm_001','CR01',1200,800,300,21.5,45.0,101325,350,99.99,'OK','2023-04-01',180,1000,50.0,22.0,'CleanServ','35.6895N,139.6917E','Main cleanroom monitor'
);
INSERT INTO cleanroom_monitor VALUES (
  'clm_002','CR02',2000,1500,600,22.0,48.0,101300,300,99.95,'OK','2023-05-15',180,1500,55.0,23.0,'CleanServ','34.0522N,118.2437W','Secondary cleanroom monitor'
);
INSERT INTO cleanroom_monitor VALUES (
  'clm_003','CR03',900,500,200,20.5,42.0,101350,380,99.98,'OK','2023-06-20',180,800,48.0,21.0,'CleanServ','51.5074N,0.1278W','Tertiary cleanroom monitor'
);

-- Chemical storage unit inventory
CREATE TABLE chemical_storage_unit (
  storage_unit_id TEXT NOT NULL,
  location TEXT,
  max_capacity_liters REAL,
  current_volume_liters REAL,
  chemical_type TEXT,
  hazard_class TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  ventilation_rate_cfm REAL,
  alarm_enabled BOOLEAN,
  alarm_threshold_percent REAL,
  last_inventory_date TEXT,
  inventory_auditor TEXT,
  expiration_date TEXT,
  supplier_name TEXT,
  batch_number TEXT,
  containment_type TEXT,
  secondary_containment BOOLEAN,
  access_control_level INTEGER,
  lock_status TEXT,
  notes TEXT,
  PRIMARY KEY (storage_unit_id)
);

INSERT INTO chemical_storage_unit VALUES (
  'csu_001','RoomA‑Shelf1',500.0,250.0,'Organic Solvent','Flammable',20.0,35.0,150,TRUE,80.0,'2023-07-01','AuditorA','2025-12-31','ChemSupplies','BATCH001','Cabinet',TRUE,3,'Locked','Primary solvent storage'
);
INSERT INTO chemical_storage_unit VALUES (
  'csu_002','RoomB‑Cabinet2',300.0,120.0,'Acidic','Corrosive',18.0,40.0,120,TRUE,75.0,'2023-06-15','AuditorB','2024-09-30','AcidCo','BATCH102','Fume Hood',FALSE,2,'Locked','Acid storage'
);
INSERT INTO chemical_storage_unit VALUES (
  'csu_003','RoomC‑Freezer',200.0,80.0,'Biological','Biohazard', -20.0,30.0,80,TRUE,85.0,'2023-05-20','AuditorC','2026-03-15','BioSupplies','BATCH210','Freezer',TRUE,4,'Locked','Cold chain reagents'
);

-- Waste processing facility log
CREATE TABLE waste_processing_facility (
  facility_id TEXT NOT NULL,
  facility_name TEXT,
  address TEXT,
  processing_capacity_kg_per_day REAL,
  hazardous_waste_handling BOOLEAN,
  radiation_waste_handling BOOLEAN,
  operating_hours TEXT,
  contact_person TEXT,
  contact_phone TEXT,
  permit_number TEXT,
  certification_body TEXT,
  last_audit_date TEXT,
  audit_score INTEGER,
  waste_type_supported TEXT,
  emergency_shutdown_procedure TEXT,
  maintenance_interval_days INTEGER,
  last_maintenance_date TEXT,
  temperature_control_c REAL,
  humidity_control_percent REAL,
  notes TEXT,
  PRIMARY KEY (facility_id)
);

INSERT INTO waste_processing_facility VALUES (
  'wf_001','Central Waste Hub','123 Lab Rd','500.0',TRUE,FALSE,'08:00-20:00','John Doe','5551234567','PERM001','EnvAgency','2023-04-10',92,'Chemical, Biological','ShutdownAllSystems',180,'2023-07-01',22.0,45.0,'Primary facility'
);
INSERT INTO waste_processing_facility VALUES (
  'wf_002','Radiation Waste Unit','456 Safe St','150.0',FALSE,TRUE,'06:00-18:00','Jane Smith','5559876543','PERM002','NRC','2023-05-15',88,'Radioactive','IsolateAndVent',365,'2023-06-20',20.0,40.0,'Radiation specific handling'
);
INSERT INTO waste_processing_facility VALUES (
  'wf_003','Organic Waste Plant','789 Green Ave','300.0',TRUE,FALSE,'07:00-19:00','Mike Lee','5555551212','PERM003','EnvAgency','2023-03-22',95,'Organic Solvent','ContainSpill',90,'2023-07-10',24.0,50.0,'Organic waste processing'
);

-- Robotic arm configuration table
CREATE TABLE robotic_arm_configuration (
  arm_id TEXT NOT NULL,
  model TEXT,
  manufacturer TEXT,
  serial_number TEXT,
  max_payload_kg REAL,
  degrees_of_freedom INTEGER,
  repeatability_mm REAL,
  reach_mm REAL,
  controller_firmware_version TEXT,
  safety_rating TEXT,
  integrated_vision BOOLEAN,
  gripper_type TEXT,
  joint_type TEXT,
  power_rating_watts REAL,
  operating_temperature_c REAL,
  lubricated BOOLEAN,
  last_calibration_date TEXT,
  calibration_interval_days INTEGER,
  maintenance_provider TEXT,
  status TEXT,
  location TEXT,
  notes TEXT,
  PRIMARY KEY (arm_id)
);

INSERT INTO robotic_arm_configuration VALUES (
  'arm_001','RA-6','RoboTech','RA12345',10.0,6,0.05,900,'v1.4','ISO10218','TRUE','Parallel','Rotary',500,35.0,TRUE,'2023-06-20',180,'RoboServ','Active','RoomG','Used for sample handling'
);
INSERT INTO robotic_arm_configuration VALUES (
  'arm_002','RA-8','AutoMech','RA67890',15.0,8,0.02,1100,'v2.1','ISO10218','FALSE','Hybrid','Linear',800,30.0,FALSE,'2023-05-15',365,'AutoServ','Active','RoomH','High‑precision assembly'
);
INSERT INTO robotic_arm_configuration VALUES (
  'arm_003','RA-4','MicroBot','RA54321',5.0,4,0.1,600,'v1.0','ISO10218','TRUE','Suction','Rotary',300,25.0,TRUE,'2023-07-01',120,'MicroServ','Standby','RoomI','Bench‑top prototype'
);

-- Environmental sensor array metadata
CREATE TABLE environmental_sensor_array (
  array_id TEXT NOT NULL,
  array_name TEXT,
  sensor_type TEXT,
  measurement_unit TEXT,
  sampling_rate_hz REAL,
  accuracy_percent REAL,
  calibration_date TEXT,
  firmware_version TEXT,
  power_source TEXT,
  communication_protocol TEXT,
  installation_date TEXT,
  location_description TEXT,
  latitude REAL,
  longitude REAL,
  altitude_m REAL,
  maintenance_interval_days INTEGER,
  last_maintenance_date TEXT,
  data_retention_days INTEGER,
  alert_enabled BOOLEAN,
  alert_threshold REAL,
  notes TEXT,
  PRIMARY KEY (array_id)
);

INSERT INTO environmental_sensor_array VALUES (
  'arr_001','TempArray','Temperature','Celsius',1.0,0.1,'2023-04-01','v3.2','AC','Modbus','2022-12-10','North wing hallway',35.6895,139.6917,5.0,180,'2023-07-01',365,TRUE,30.0,'Primary temperature monitoring'
);
INSERT INTO environmental_sensor_array VALUES (
  'arr_002','HumidityArray','Humidity','Percent',0.5,0.2,'2023-05-15','v2.8','Battery','MQTT','2023-01-20','South wing lab',34.0522,-118.2437,10.0,365,'2023-06-20',730,TRUE,70.0,'Secondary humidity monitoring'
);
INSERT INTO environmental_sensor_array VALUES (
  'arr_003','CO2Array','CO2','PPM',0.2,0.5,'2023-06-10','v1.5','PoE','HTTP','2023-03-05','Central corridor',51.5074,-0.1278,15.0,90,'2023-07-05',180,TRUE,1000.0,'CO2 level tracking'
);

-- Data center server inventory
CREATE TABLE data_center_server (
  server_id TEXT NOT NULL,
  hostname TEXT,
  ip_address TEXT,
  rack_location TEXT,
  chassis_model TEXT,
  cpu_model TEXT,
  cpu_cores INTEGER,
  memory_gb INTEGER,
  storage_tb REAL,
  storage_type TEXT,
  operating_system TEXT,
  os_version TEXT,
  virtualization_enabled BOOLEAN,
  vm_count INTEGER,
  network_speed_gbps REAL,
  power_supply_watts REAL,
  redundancy_level INTEGER,
  maintenance_window TEXT,
  last_patch_date TEXT,
  firmware_version TEXT,
  responsible_team TEXT,
  notes TEXT,
  PRIMARY KEY (server_id)
);

INSERT INTO data_center_server VALUES (
  'srv_001','db01','192.168.10.101','RackA1','Dell R740','Intel Xeon Gold','24','256','12.0','SSD','Linux','Ubuntu20.04',TRUE,'10','10.0','800','2','Sun 02:00-04:00','2023-06-20','v2.1','DBTeam','Primary database server'
);
INSERT INTO data_center_server VALUES (
  'srv_002','app01','192.168.10.102','RackA2','HP ProLiant DL380','AMD EPYC 7702','64','512','24.0','NVMe','Linux','CentOS8',TRUE,'25','40.0','1200','3','Sat 03:00-05:00','2023-05-15','v3.0','AppTeam','Application tier'
);
INSERT INTO data_center_server VALUES (
  'srv_003','web01','192.168.10.103','RackB1','Cisco UCS C240','Intel Xeon Silver','32','128','8.0','SSD','Windows','Server2019',FALSE,'0','1.0','600','1','Fri 01:00-02:00','2023-04-10','v1.5','WebTeam','Web front‑end'
);

-- Audit log entry table
CREATE TABLE audit_log_entry (
  audit_id TEXT NOT NULL,
  event_timestamp TEXT,
  user_id TEXT,
  user_role TEXT,
  action_type TEXT,
  object_type TEXT,
  object_id TEXT,
  description TEXT,
  source_ip TEXT,
  application TEXT,
  severity_level TEXT,
  outcome TEXT,
  changes_made TEXT,
  related_ticket TEXT,
  compliance_reference TEXT,
  geo_location TEXT,
  device_id TEXT,
  session_id TEXT,
  auth_method TEXT,
  notes TEXT,
  PRIMARY KEY (audit_id)
);

INSERT INTO audit_log_entry VALUES (
  'audit_001','2023-07-15T09:23:45Z','alice','Researcher','UPDATE','Sample','smp_045','Updated sample metadata','10.0.0.5','LIMS','Medium','Success','metadata_fields_changed','TCK-1001','ISO27001','BuildingA','dev_123','sess_789','Password','No issues'
);
INSERT INTO audit_log_entry VALUES (
  'audit_002','2023-07-16T14:12:03Z','bob','LabTech','DELETE','Instrument','inst_007','Removed deprecated instrument record','10.0.0.12','AssetMgr','High','Success','record_removed','TCK-1002','ISO9001','BuildingB','dev_456','sess_321','Token','Audit complete'
);
INSERT INTO audit_log_entry VALUES (
  'audit_003','2023-07-17T08:45:30Z','carol','Admin','CREATE','User','usr_009','Created new researcher account','10.0.0.20','AuthSys','Low','Success','account_created','TCK-1003','ISO27001','Headquarters','dev_789','sess_654','SSO','Account provisioned'
);