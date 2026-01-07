-- Table storing detailed signal integrity metrics for optical fiber links
CREATE TABLE optical_fiber_signal_integrity (
  link_id TEXT NOT NULL,
  fiber_type TEXT,
  connector_type TEXT,
  launch_power_dbm REAL,
  receive_power_dbm REAL,
  attenuation_db REAL,
  dispersion_psnm REAL,
  wavelength_nm INTEGER,
  test_date TEXT,
  tester_id TEXT,
  polarity TEXT,
  splice_count INTEGER,
  splice_loss_db REAL,
  num_reflectors INTEGER,
  max_reflection_db REAL,
  temperature_c REAL,
  humidity_percent REAL,
  location_building TEXT,
  location_floor TEXT,
  location_room TEXT,
  measurement_mode TEXT,
  notes TEXT,
  PRIMARY KEY (link_id)
);

INSERT INTO optical_fiber_signal_integrity VALUES ('OF001','singlemode','lc','-3.2',-10.5,7.3,0.45,1310,'2024-10-01','TST01','normal',2,0.15,1,-40.2,22.5,45.0,'ScienceBlock','2','LabA','continuous','initial install','none');
INSERT INTO optical_fiber_signal_integrity VALUES ('OF002','multimode','sc','-1.5',-8.0,6.8,0.60,850,'2024-10-03','TST02','reverse',1,0.10,0,0.0,21.0,40.0,'EngineeringBlock','1','LabB','periodic','routine check','verified');
INSERT INTO optical_fiber_signal_integrity VALUES ('OF003','singlemode','pc','-2.8',-9.2,7.0,0.48,1550,'2024-10-05','TST03','normal',3,0.12,2,-35.0,23.0,48.5,'AdminBlock','3','LabC','maintenance','fiber patch','pending review');

-- Table capturing medical history details of biobank donors
CREATE TABLE biobank_donor_medical_history (
  donor_id TEXT NOT NULL,
  diagnosis_code TEXT,
  diagnosis_description TEXT,
  diagnosis_date TEXT,
  treatment_code TEXT,
  treatment_description TEXT,
  treatment_start_date TEXT,
  treatment_end_date TEXT,
  medication_name TEXT,
  medication_dose TEXT,
  medication_frequency TEXT,
  allergy_flag INTEGER,
  allergy_description TEXT,
  smoking_status TEXT,
  alcohol_use TEXT,
  bmi REAL,
  height_cm REAL,
  weight_kg REAL,
  blood_type TEXT,
  rh_factor TEXT,
  genetic_marker TEXT,
  comorbidity_flag INTEGER,
  comorbidity_details TEXT,
  vaccination_status TEXT,
  notes TEXT,
  PRIMARY KEY (donor_id)
);

INSERT INTO biobank_donor_medical_history VALUES ('D001','I10','hypertension','2022-03-15','T01','antihypertensive therapy','2022-03-16','2024-09-30','Lisinopril','10mg','once daily',0,'','non-smoker','moderate',27.5,175,85,'A','positive','APOE4','1','type 2 diabetes','up-to-date','none');
INSERT INTO biobank_donor_medical_history VALUES ('D002','E11','type 2 diabetes','2021-07-20','T02','insulin therapy','2021-07-21','2024-09-30','Metformin','500mg','twice daily',1,'penicillin','former smoker','low',30.2,168,85,'O','negative','None','0','','up-to-date','patient consented');
INSERT INTO biobank_donor_medical_history VALUES ('D003','J45','asthma','2019-11-05','T03','bronchodilator therapy','2019-11-06','2024-09-30','Albuterol','2 puffs','as needed',0,'','non-smoker','none',22.0,162,58,'B','positive','None','0','','up-to-date','requires follow-up');

-- Table for storing smart lab environment sensor readings
CREATE TABLE smart_lab_environment_monitor (
  sensor_id TEXT NOT NULL,
  sensor_type TEXT,
  location_building TEXT,
  location_floor TEXT,
  location_room TEXT,
  measurement_timestamp TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  co2_ppm REAL,
  voc_ppb REAL,
  particulate_pm25_ugm3 REAL,
  particulate_pm10_ugm3 REAL,
  noise_db_a REAL,
  light_lux REAL,
  vibration_mms REAL,
  battery_voltage REAL,
  signal_strength_dbm REAL,
  firmware_version TEXT,
  calibration_date TEXT,
  status TEXT,
  alert_flag INTEGER,
  notes TEXT,
  PRIMARY KEY (sensor_id, measurement_timestamp)
);

INSERT INTO smart_lab_environment_monitor VALUES ('SE001','temperature_humidity','ScienceBlock','2','LabA','2024-10-01T08:00:00',22.3,45.0,400,150,12.5,20.2,55,350,0.02,3.7,-70,'v1.2','2024-01-15','active',0,'initial deployment');
INSERT INTO smart_lab_environment_monitor VALUES ('SE001','temperature_humidity','ScienceBlock','2','LabA','2024-10-01T09:00:00',22.7,44.5,410,145,13.0,21.0,57,360,0.02,3.7,-68,'v1.2','2024-01-15','active',0,'');
INSERT INTO smart_lab_environment_monitor VALUES ('SE002','air_quality','EngineeringBlock','1','LabB','2024-10-01T08:30:00',21.8,40.0,380,120,10.8,18.5,50,300,0.01,3.9,-72,'v2.0','2023-12-01','active',0,'');

-- Table logging autonomous drone missions for facility inspection
CREATE TABLE autonomous_drone_mission_log (
  mission_id TEXT NOT NULL,
  drone_id TEXT,
  operator_id TEXT,
  mission_date TEXT,
  start_time TEXT,
  end_time TEXT,
  flight_path TEXT,
  altitude_m REAL,
  speed_mps REAL,
  battery_start_percent REAL,
  battery_end_percent REAL,
  images_captured INTEGER,
  video_duration_seconds REAL,
  thermal_imaging_flag INTEGER,
  lidar_scan_flag INTEGER,
  anomalies_detected INTEGER,
  anomaly_summary TEXT,
  weather_conditions TEXT,
  wind_speed_mps REAL,
  temperature_c REAL,
  humidity_percent REAL,
  notes TEXT,
  PRIMARY KEY (mission_id)
);

INSERT INTO autonomous_drone_mission_log VALUES ('M001','DR001','OP01','2024-09-28','08:00','08:45','pathA','15','5','100','85','250','1800',1,0,0,'none','clear',3.2,20.5,45,'routine roof inspection');
INSERT INTO autonomous_drone_mission_log VALUES ('M002','DR002','OP02','2024-09-30','14:20','15:10','pathB','20','6','100','78','300','2100',0,1,2,'crack in vent, loose panel','partly cloudy',5.0,18.0,55,'ventilation system check');
INSERT INTO autonomous_drone_mission_log VALUES ('M003','DR001','OP01','2024-10-02','09:10','09:55','pathC','12','4','85','70','200','1500',1,1,1,'water pooling','rainy',6.5,16.0,70,'post‑storm assessment');

-- Table recording error logs from quantum computing devices
CREATE TABLE quantum_device_error_log (
  error_id TEXT NOT NULL,
  device_id TEXT,
  error_timestamp TEXT,
  error_code TEXT,
  error_description TEXT,
  severity_level TEXT,
  affected_qubits INTEGER,
  operation_type TEXT,
  firmware_version TEXT,
  temperature_c REAL,
  magnetic_field_ut REAL,
  crosstalk_level REAL,
  decoherence_time_us REAL,
  reset_attempts INTEGER,
  resolved_flag INTEGER,
  resolution_timestamp TEXT,
  technician_id TEXT,
  mitigation_strategy TEXT,
  notes TEXT,
  PRIMARY KEY (error_id)
);

INSERT INTO quantum_device_error_log VALUES ('ERR001','QD01','2024-09-15T10:23:45','E101','photon loss detected','high',12,'gate','fw3.1',15.2,0.45,0.02,35.0,3,0,'','TECH01','recalibrate resonator','investigation pending');
INSERT INTO quantum_device_error_log VALUES ('ERR002','QD02','2024-09-20T14:12:10','E202','flux noise spike','medium',8,'readout','fw2.9',13.8,0.30,0.01,40.0,1,1,'2024-09-20T15:00:00','TECH02','apply magnetic shielding','resolved after shielding');
INSERT INTO quantum_device_error_log VALUES ('ERR003','QD01','2024-09-25T09:05:30','E303','temperature drift','low',5,'idle','fw3.1',16.0,0.50,0.03,38.5,0,1,'2024-09-25T09:30:00','TECH03','adjust cryocooler setpoint','resolved');

-- Table defining design specifications for microfluidic devices
CREATE TABLE microfluidic_device_design_spec (
  design_id TEXT NOT NULL,
  device_name TEXT,
  channel_width_um REAL,
  channel_height_um REAL,
  total_channels INTEGER,
  material TEXT,
  surface_treatment TEXT,
  max_pressure_psi REAL,
  flow_rate_nl_per_min REAL,
  valve_type TEXT,
  valve_actuation_method TEXT,
  inlet_port_diameter_um REAL,
  outlet_port_diameter_um REAL,
  connector_type TEXT,
  chip_dimensions_mm REAL,
  substrate_thickness_um REAL,
  optical_clarity_percent REAL,
  biocompatibility_grade TEXT,
  manufacturing_method TEXT,
  batch_number TEXT,
  design_version TEXT,
  designer_id TEXT,
  release_date TEXT,
  notes TEXT,
  PRIMARY KEY (design_id)
);

INSERT INTO microfluidic_device_design_spec VALUES ('MF001','CellSorter','50','30',200,'PDMS','oxygen plasma','30','100','membrane','pneumatic',200,200,'copper','50','200','95','ISO10993-5','soft lithography','BCH001','v1.0','ENG01','2023-06-01','prototype for blood cells');
INSERT INTO microfluidic_device_design_spec VALUES ('MF002','DrugScreen','100','40',150,'COC','UV curing','25','250','valve','electromagnetic',250,250,'silicone','60','250','90','ISO10993-1','injection molding','BCH002','v2.1','ENG02','2024-01-15','high‑throughput screening');
INSERT INTO microfluidic_device_design_spec VALUES ('MF003','OrganoidCult','150','80',80,'Glass','silanization','20','50','none','none',300,300,'glass','45','300','98','ISO10993-10','wet etching','BCH003','v1.2','ENG03','2023-11-20','culture of 3D organoids');

-- Table tracking deployment of firmware updates to remote sensors
CREATE TABLE remote_sensor_firmware_deployment (
  deployment_id TEXT NOT NULL,
  sensor_id TEXT,
  firmware_version TEXT,
  deployment_timestamp TEXT,
  deployment_method TEXT,
  initiated_by TEXT,
  target_os TEXT,
  checksum TEXT,
  file_size_kb INTEGER,
  reboot_required INTEGER,
  post_deployment_status TEXT,
  verification_timestamp TEXT,
  verification_result TEXT,
  notes TEXT,
  PRIMARY KEY (deployment_id)
);

INSERT INTO remote_sensor_firmware_deployment VALUES ('DEP001','RS101','v5.2','2024-09-01T02:00:00','over‑the‑air','ADMIN01','linux','abc123def','2048',1,'pending','', '', 'scheduled overnight');
INSERT INTO remote_sensor_firmware_deployment VALUES ('DEP002','RS102','v5.2','2024-09-01T02:05:00','over‑the‑air','ADMIN01','linux','abc123def','2048',1,'pending','', '', 'scheduled overnight');
INSERT INTO remote_sensor_firmware_deployment VALUES ('DEP003','RS103','v5.2','2024-09-01T02:10:00','over‑the‑air','ADMIN01','linux','abc123def','2048',1,'pending','', '', 'scheduled overnight');

-- Table recording integration of green energy sources into facility power grid
CREATE TABLE green_energy_integration_record (
  record_id TEXT NOT NULL,
  facility_id TEXT,
  energy_source_type TEXT,
  capacity_kw REAL,
  installation_date TEXT,
  vendor_name TEXT,
  contract_start_date TEXT,
  contract_end_date TEXT,
  annual_generation_mwh REAL,
  performance_ratio REAL,
  maintenance_schedule TEXT,
  last_maintenance_date TEXT,
  inverter_model TEXT,
  battery_storage_capacity_kwh REAL,
  grid_connection_point TEXT,
  regulatory_approval_id TEXT,
  emissions_reduction_tons_co2 REAL,
  cost_savings_usd REAL,
  financing_mode TEXT,
  remarks TEXT,
  PRIMARY KEY (record_id)
);

INSERT INTO green_energy_integration_record VALUES ('GE001','FAC001','solar','500','2022-04-15','SunPower','2022-04-01','2032-03-31','620','0.85','annual','2024-06-10','INV-X200','2000','NodeA','RA123','150','50000','lease','north roof array');
INSERT INTO green_energy_integration_record VALUES ('GE002','FAC001','wind','300','2023-09-20','Vestas','2023-09-01','2033-08-31','780','0.90','biannual','2024-05-20','INV-W300','0','NodeB','RA124','180','60000','ppa','west side turbines');
INSERT INTO green_energy_integration_record VALUES ('GE003','FAC002','biomass','150','2021-01-10','BioGen','2021-01-01','2031-12-31','400','0.80','quarterly','2024-04-15','INV-B150','500','NodeC','RA125','100','30000','grant','central plant');

-- Table inventory of facility security cameras
CREATE TABLE facility_security_camera_inventory (
  camera_id TEXT NOT NULL,
  location_building TEXT,
  location_floor TEXT,
  location_area TEXT,
  camera_type TEXT,
  resolution_mp REAL,
  field_of_view_deg REAL,
  night_vision BOOLEAN,
  ip_address TEXT,
  mac_address TEXT,
  firmware_version TEXT,
  installation_date TEXT,
  last_maintenance_date TEXT,
  status TEXT,
  storage_capacity_gb REAL,
  power_source TEXT,
  network_vlan INTEGER,
  ptz_capability BOOLEAN,
  vendor_name TEXT,
  warranty_expiry TEXT,
  notes TEXT,
  PRIMARY KEY (camera_id)
);

INSERT INTO facility_security_camera_inventory VALUES ('CAM001','ScienceBlock','2','LabEntrance','dome','12','90','true','192.168.1.101','AA:BB:CC:DD:EE:01','v3.1','2022-02-01','2024-04-01','active','256','poe',10,'true','SecureCam','2025-02-01','main entrance monitoring');
INSERT INTO facility_security_camera_inventory VALUES ('CAM002','EngineeringBlock','1','CorridorA','bullet','8','120','true','192.168.1.102','AA:BB:CC:DD:EE:02','v2.8','2023-05-15','2024-03-15','active','128','poe',11,'false','CamTech','2024-05-15','north hallway');
INSERT INTO facility_security_camera_inventory VALUES ('CAM003','AdminBlock','3','ParkingLot','fisheye','5','180','true','192.168.1.103','AA:BB:CC:DD:EE:03','v1.9','2021-09-10','2024-02-20','active','512','ac',12,'true','WatchDog','2024-09-10','outdoor coverage');

-- Table logging calibration of lab robotic arm tasks
CREATE TABLE lab_robotic_arm_calibration_record (
  calibration_id TEXT NOT NULL,
  robot_arm_id TEXT,
  calibration_date TEXT,
  operator_id TEXT,
  joint_1_offset_deg REAL,
  joint_2_offset_deg REAL,
  joint_3_offset_deg REAL,
  joint_4_offset_deg REAL,
  joint_5_offset_deg REAL,
  joint_6_offset_deg REAL,
  tool_center_point_x_mm REAL,
  tool_center_point_y_mm REAL,
  tool_center_point_z_mm REAL,
  repeatability_um REAL,
  payload_kg REAL,
  firmware_version TEXT,
  calibration_status TEXT,
  verification_timestamp TEXT,
  notes TEXT,
  PRIMARY KEY (calibration_id)
);

INSERT INTO lab_robotic_arm_calibration_record VALUES ('CAL001','RA01','2024-09-20','OPR01','0.02','-0.01','0.00','0.03','-0.02','0.01','120.5','45.3','200.0','5','10','fw2.5','passed','2024-09-20T10:30:00','routine quarterly calibration');
INSERT INTO lab_robotic_arm_calibration_record VALUES ('CAL002','RA02','2024-09-22','OPR02','-0.01','0.00','0.02','-0.03','0.01','-0.02','130.0','50.0','210.0','4','12','fw2.6','passed','2024-09-22T11:00:00','post‑maintenance check');
INSERT INTO lab_robotic_arm_calibration_record VALUES ('CAL003','RA01','2024-10-01','OPR01','0.00','0.00','0.00','0.00','0.00','0.00','120.5','45.3','200.0','3','10','fw2.5','passed','2024-10-01T09:45:00','after firmware upgrade');