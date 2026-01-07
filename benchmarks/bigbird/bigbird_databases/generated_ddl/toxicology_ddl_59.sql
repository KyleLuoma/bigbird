-- Laboratory building facilities details
CREATE TABLE lab_building_facilities (
  facility_id TEXT PRIMARY KEY,
  building_name TEXT,
  floor_number INTEGER,
  wing_code TEXT,
  room_number TEXT,
  room_type TEXT,
  square_feet INTEGER,
  occupancy_limit INTEGER,
  hvac_zone TEXT,
  fire_suppression_type TEXT,
  access_control_level TEXT,
  construction_year INTEGER,
  renovation_year INTEGER,
  structural_material TEXT,
  window_count INTEGER,
  door_count INTEGER,
  emergency_exit_count INTEGER,
  power_supply_type TEXT,
  backup_generator BOOLEAN,
  lighting_system TEXT,
  security_camera_count INTEGER,
  wifi_coverage_percent REAL,
  maintenance_contract_id TEXT,
  last_inspection_date TEXT,
  comments TEXT
);

INSERT INTO lab_building_facilities VALUES
('F001','AlphaLab','1','A','101','Office',850,4,'HVAC1','Sprinkler','Level1',1998,2021,'Concrete',8,2,1,'ThreePhase',1,'LED',12,98.5,'MC100','2023-06-15','Initial setup');

INSERT INTO lab_building_facilities VALUES
('F002','BetaResearch','2','B','210','CleanRoom',1200,2,'HVAC2','InertGas','Level3',2005,2019,'Steel',4,1,2,'SinglePhase',0,'Fluorescent',8,95.0,'MC101','2023-07-02','Upgraded filters');

INSERT INTO lab_building_facilities VALUES
('F003','GammaCenter','3','C','315','Lab',950,6,'HVAC3','Foam','Level2',2010,2022,'Concrete',6,2,1,'ThreePhase',1,'LED',10,96.7,'MC102','2023-05-20','Routine check');

-- Instrument performance metric log
CREATE TABLE instrument_performance_metric_log (
  metric_log_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  metric_timestamp TEXT,
  temperature_c REAL,
  voltage_v REAL,
  current_a REAL,
  pressure_bar REAL,
  vibration_mm_s2 REAL,
  uptime_hours INTEGER,
  error_code TEXT,
  throughput_units_per_hr REAL,
  calibration_status TEXT,
  firmware_version TEXT,
  operator_id TEXT,
  maintenance_cycle INTEGER,
  power_consumption_kw REAL,
  noise_db REAL,
  flow_rate_l_min REAL,
  humidity_percent REAL,
  laser_output_mw REAL,
  sensor_response_time_ms REAL,
  batch_id TEXT,
  notes TEXT
);

INSERT INTO instrument_performance_metric_log VALUES
('M001','INST001','2023-06-20T08:15:00','22.5','5.0','0.2','1.2','0.03','1500','E00','250.0','Passed','v1.2','R001','5','1.5','45','0.8','0.9','25','10','BCH001','Normal operation');

INSERT INTO instrument_performance_metric_log VALUES
('M002','INST002','2023-06-20T09:00:00','24.0','5.5','0.25','1.0','0.04','1520','E01','260.0','Failed','v1.3','R002','6','1.6','46','0.85','1.0','26','12','BCH002','Calibration required');

INSERT INTO instrument_performance_metric_log VALUES
('M003','INST003','2023-06-20T09:45:00','23.0','5.2','0.22','1.1','0.035','1510','E00','255.0','Passed','v1.2','R003','5','1.55','45.5','0.9','0.95','25.5','11','BCH003','All good');

-- Computational job resource allocation
CREATE TABLE computational_job_resource_allocation (
  allocation_id TEXT PRIMARY KEY,
  job_id TEXT,
  user_id TEXT,
  queue_name TEXT,
  requested_cpus INTEGER,
  requested_gpus INTEGER,
  requested_memory_gb REAL,
  requested_storage_gb REAL,
  walltime_minutes INTEGER,
  priority_level INTEGER,
  allocation_timestamp TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  node_list TEXT,
  cpu_binding TEXT,
  gpu_binding TEXT,
  max_runtime_minutes INTEGER,
  sla_met BOOLEAN,
  cost_center TEXT,
  billing_rate_per_hour REAL,
  notes TEXT,
  reservation_id TEXT,
  effective_until TEXT
);

INSERT INTO computational_job_resource_allocation VALUES
('A001','JOB1001','USR01','short','16','2','64.0','200','120','5','2023-06-19T12:00:00','2023-06-19T12:05:00','2023-06-19T14:05:00','node01,node02','socket','gpu0','180','1','CC100','0.75','Standard allocation','RES001','2023-06-20T12:00:00');

INSERT INTO computational_job_resource_allocation VALUES
('A002','JOB1002','USR02','medium','32','4','128.0','500','240','8','2023-06-19T13:00:00','2023-06-19T13:10:00','2023-06-19T17:10:00','node03,node04,node05','core','gpu1','300','0','CC200','1.00','High priority','RES002','2023-06-21T13:00:00');

INSERT INTO computational_job_resource_allocation VALUES
('A003','JOB1003','USR03','long','64','8','256.0','1000','720','10','2023-06-18T08:00:00','2023-06-18T08:15:00','2023-06-20T08:15:00','node06,node07,node08,node09','socket','gpu2','900','1','CC300','1.50','Batch processing','RES003','2023-06-22T08:00:00');

-- Environmental sensor calibration record
CREATE TABLE environmental_sensor_calibration_record (
  calibration_id TEXT PRIMARY KEY,
  sensor_id TEXT,
  sensor_type TEXT,
  calibration_date TEXT,
  technician_id TEXT,
  reference_standard TEXT,
  offset_value REAL,
  scale_factor REAL,
  temperature_compensation REAL,
  humidity_compensation REAL,
  pressure_compensation REAL,
  calibration_method TEXT,
  certification_status TEXT,
  next_calibration_due TEXT,
  notes TEXT,
  calibration_location TEXT,
  equipment_used TEXT,
  calibration_time_minutes INTEGER,
  uncertainty_ppm REAL,
  batch_number TEXT,
  valid_range_min REAL,
  valid_range_max REAL
);

INSERT INTO environmental_sensor_calibration_record VALUES
('C001','SEN001','Temp','2023-06-10','TECH01','StdTemp','0.02','1.0005','-0.01','0.00','0.00','FourPoint','Certified','2024-06-10','No issues','LabRoomA','CalibBoxV1','30','0.5','BCH001','-20','150');

INSERT INTO environmental_sensor_calibration_record VALUES
('C002','SEN002','Pressure','2023-05-22','TECH02','StdPress','-0.05','0.9998','0.00','0.00','0.02','TwoPoint','Certified','2024-05-22','Minor drift observed','LabRoomB','CalibBoxV2','45','0.8','BCH002','950','1050');

INSERT INTO environmental_sensor_calibration_record VALUES
('C003','SEN003','Humidity','2023-06-01','TECH03','StdHum','0.01','1.0010','0.00','-0.02','0.00','SinglePoint','Pending','2024-06-01','Calibration pending approval','LabRoomC','CalibBoxV1','20','0.3','BCH003','10','90');

-- Researcher skill profile
CREATE TABLE researcher_skill_profile (
  profile_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  skill_category TEXT,
  skill_name TEXT,
  proficiency_level INTEGER,
  years_experience INTEGER,
  last_used_date TEXT,
  certification_id TEXT,
  certification_date TEXT,
  training_hours INTEGER,
  last_training_date TEXT,
  endorsement_by TEXT,
  project_experience TEXT,
  publications_count INTEGER,
  patents_count INTEGER,
  awards_received TEXT,
  self_assessment_score REAL,
  peer_review_score REAL,
  skill_status TEXT,
  notes TEXT,
  future_development_plan TEXT,
  skill_version TEXT
);

INSERT INTO researcher_skill_profile VALUES
('SP001','R001','StatisticalAnalysis','LinearRegression','4','5','2023-05-30','CERT001','2021-03-15','40','2023-04-20','DrSmith','ProjA,ProjB','12','1','BestPaperAward','4.5','4.2','Active','Focus on mixed models','Enroll in advanced ML course','v1');

INSERT INTO researcher_skill_profile VALUES
('SP002','R002','Programming','Python','5','8','2023-06-10','CERT002','2020-11-01','120','2023-05-15','DrJones','ProjC,ProjD','20','3','InnovationAward','4.9','4.8','Active','Contribute to open source','Lead workshops','v2');

INSERT INTO researcher_skill_profile VALUES
('SP003','R003','Microscopy','Confocal','3','3','2023-04-22','CERT003','2022-02-10','25','2023-03-05','DrLee','ProjE','5','0','YoungResearcherAward','4.0','3.9','Active','Gain experience in super-resolution','Attend specialized training','v1');

-- Chemical storage audit trail
CREATE TABLE chemical_storage_audit_trail (
  audit_id TEXT PRIMARY KEY,
  storage_location_id TEXT,
  chemical_id TEXT,
  audit_timestamp TEXT,
  auditor_id TEXT,
  quantity_on_hand REAL,
  unit_of_measure TEXT,
  storage_condition TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  expiration_date TEXT,
  lot_number TEXT,
  safety_data_sheet_version TEXT,
  compliance_status TEXT,
  violations_found TEXT,
  corrective_action TEXT,
  next_audit_due TEXT,
  notes TEXT,
  container_type TEXT,
  sealed BOOLEAN,
  access_restriction_level TEXT,
  last_movement_timestamp TEXT,
  last_movement_type TEXT
);

INSERT INTO chemical_storage_audit_trail VALUES
('A001','LOC01','CHEM001','2023-06-15','AUD001','15.5','L','CoolDry','18.0','35','2025-12-31','LOT123','v2','Compliant','','2024-06-15','No issues','Bottle',1,'Level2','2023-05-20','Restock');

INSERT INTO chemical_storage_audit_trail VALUES
('A002','LOC02','CHEM002','2023-06-10','AUD002','8.0','kg','Refrigerated','4.0','45','2024-06-30','LOT456','v1','Compliant','','2024-06-10','Temperature stable','Drum',0,'Level3','2023-04-15','Inspection');

INSERT INTO chemical_storage_audit_trail VALUES
('A003','LOC03','CHEM003','2023-06-12','AUD003','0.5','L','FlammableCabinet','22.0','40','2023-09-15','LOT789','v3','NonCompliant','ExpiredLabel','Replace label','2024-06-12','Label corrected','Can',1,'Level1','2023-06-12','Disposal');

-- Clinical trial site inspection
CREATE TABLE clinical_trial_site_inspection (
  inspection_id TEXT PRIMARY KEY,
  site_id TEXT,
  inspector_id TEXT,
  inspection_date TEXT,
  overall_score INTEGER,
  protocol_adherence BOOLEAN,
  informed_consent_compliance BOOLEAN,
  data_integrity_score INTEGER,
  adverse_event_reporting BOOLEAN,
  equipment_calibration_status TEXT,
  staff_training_compliance BOOLEAN,
  facility_safety_status TEXT,
  notes TEXT,
  follow_up_actions TEXT,
  next_inspection_due TEXT,
  inspection_type TEXT,
  site_contact TEXT,
  site_address TEXT,
  site_phone TEXT,
  site_email TEXT,
  documentation_complete BOOLEAN,
  corrective_action_deadline TEXT
);

INSERT INTO clinical_trial_site_inspection VALUES
('I001','SITE001','INSP001','2023-06-08','85',1,1,'90',1,'AllCalibrated',1,'Pass','Good overall','None','2024-06-08','Annual','JohnDoe','123MainSt','5551234','site1@example.com',1,'2023-07-01');

INSERT INTO clinical_trial_site_inspection VALUES
('I002','SITE002','INSP002','2023-06-10','78',0,1,'80',0,'Partial',0,'Fail','Issues with consent forms','Revise consent process','2024-06-10','Annual','JaneSmith','456ElmSt','5555678','site2@example.com',0,'2023-07-15');

INSERT INTO clinical_trial_site_inspection VALUES
('I003','SITE003','INSP003','2023-06-12','92',1,1,'95',1,'AllCalibrated',1,'Pass','Excellent','None','2024-06-12','Annual','MikeBrown','789OakSt','5559012','site3@example.com',1,'2023-07-05');

-- Nanomaterial exposure monitoring
CREATE TABLE nanomaterial_exposure_monitoring (
  monitoring_id TEXT PRIMARY KEY,
  location_id TEXT,
  nanomaterial_type TEXT,
  measurement_timestamp TEXT,
  particle_concentration_per_cm3 REAL,
  particle_size_nm REAL,
  airflow_rate_cfm REAL,
  sampler_type TEXT,
  filter_media TEXT,
  humidity_percent REAL,
  temperature_c REAL,
  calibration_factor REAL,
  analyst_id TEXT,
  qc_pass BOOLEAN,
  notes TEXT,
  next_sampling_due TEXT,
  exposure_limit_ppm REAL,
  alarm_triggered BOOLEAN,
  mitigation_action TEXT,
  data_quality_score INTEGER,
  sampling_duration_minutes INTEGER,
  instrument_id TEXT
);

INSERT INTO nanomaterial_exposure_monitoring VALUES
('NM001','LOC01','TiO2','2023-06-14','1200','75','500','Impactor','PTFE','40','22','1.02','ANL001',1,'Stable','2023-07-14','1500',0,'None',85,'60','INST001');

INSERT INTO nanomaterial_exposure_monitoring VALUES
('NM002','LOC02','AgNP','2023-06-15','800','45','400','Cyclone','PVC','45','20','0.98','ANL002',1,'Within limits','2023-07-15','1000',0,'None',90,'45','INST002');

INSERT INTO nanomaterial_exposure_monitoring VALUES
('NM003','LOC03','SiO2','2023-06-16','2000','120','600','Impactor','PTFE','38','23','1.05','ANL003',0,'High concentration','2023-07-16','1500',1,'Increase ventilation',70,'75','INST003');

-- Sample transport route map
CREATE TABLE sample_transport_route_map (
  route_id TEXT PRIMARY KEY,
  sample_id TEXT,
  origin_location_id TEXT,
  destination_location_id TEXT,
  transport_mode TEXT,
  carrier_id TEXT,
  departure_timestamp TEXT,
  arrival_timestamp TEXT,
  temperature_control BOOLEAN,
  max_temperature_c REAL,
  min_temperature_c REAL,
  humidity_control BOOLEAN,
  max_humidity_percent REAL,
  min_humidity_percent REAL,
  security_seal_id TEXT,
  handling_instructions TEXT,
  transport_status TEXT,
  delay_reason TEXT,
  compliance_check_passed BOOLEAN,
  notes TEXT,
  gps_tracking_enabled BOOLEAN,
  tracking_device_id TEXT,
  estimated_transit_minutes INTEGER
);

INSERT INTO sample_transport_route_map VALUES
('R001','SAMP001','LOC01','LOC05','RefrigeratedVan','CAR001','2023-06-10T08:00:00','2023-06-10T12:30:00',1,'8','2',1,'55','30','SEAL001','Keep upright, no shock','Delivered','',1,'No issues',1,'DEV001',270);

INSERT INTO sample_transport_route_map VALUES
('R002','SAMP002','LOC02','LOC06','DryIceBox','CAR002','2023-06-11T09:15:00','2023-06-11T14:45:00',1,'-20','-80',0,NULL,NULL,'SEAL002','Maintain -20C','Delivered','',1,'Temperature stable',1,'DEV002',330);

INSERT INTO sample_transport_route_map VALUES
('R003','SAMP003','LOC03','LOC07','Courier','CAR003','2023-06-12T10:30:00','2023-06-12T13:00:00',0,NULL,NULL,0,NULL,NULL,'SEAL003','Handle with care','Delayed','Traffic jam',0,'Delayed 30 min',1,'DEV003',150);

-- Facility energy consumption detail
CREATE TABLE facility_energy_consumption_detail (
  consumption_id TEXT PRIMARY KEY,
  facility_id TEXT,
  reporting_period_start TEXT,
  reporting_period_end TEXT,
  electricity_kwh REAL,
  natural_gas_therms REAL,
  water_gallons REAL,
  hvac_energy_kwh REAL,
  lighting_energy_kwh REAL,
  equipment_energy_kwh REAL,
  renewable_energy_kwh REAL,
  total_carbon_kg REAL,
  peak_demand_kw REAL,
  demand_response_participation BOOLEAN,
  carbon_offset_credits INTEGER,
  cost_usd REAL,
  meter_reading_timestamp TEXT,
  utility_provider TEXT,
  notes TEXT,
  verification_status TEXT,
  data_source TEXT,
  emission_factor_co2_per_kwh REAL,
  reporting_timezone TEXT
);

INSERT INTO facility_energy_consumption_detail VALUES
('E001','FAC001','2023-05-01','2023-05-31','12500.5','850.0','300000','4000.2','1500.6','2000.3','500.0','6000.4','120.0',1,'150','25000.0','2023-06-02T00:00:00','UtilityCo','Monthly report','Verified','Internal','0.45','UTC');

INSERT INTO facility_energy_consumption_detail VALUES
('E002','FAC002','2023-05-01','2023-05-31','9800.0','720.5','250000','3500.0','1300.0','1800.0','400.0','4700.2','110.0',0,'100','20000.0','2023-06-02T00:00:00','PowerCorp','Monthly report','Pending','Estimated','0.44','UTC');

INSERT INTO facility_energy_consumption_detail VALUES
('E003','FAC003','2023-05-01','2023-05-31','14300.8','950.3','350000','4600.5','1700.9','2500.4','600.0','7200.9','130.0',1,'200','30000.0','2023-06-02T00:00:00','EnergySupply','Monthly report','Verified','Internal','0.46','UTC');

-- Environmental sensor deployment schedule
CREATE TABLE environmental_sensor_deployment_schedule (
  deployment_id TEXT PRIMARY KEY,
  sensor_id TEXT,
  sensor_type TEXT,
  deployment_location_id TEXT,
  deployment_start_date TEXT,
  deployment_end_date TEXT,
  mounting_method TEXT,
  power_source TEXT,
  data_transmission_method TEXT,
  firmware_version TEXT,
  calibration_due_date TEXT,
  maintenance_interval_days INTEGER,
  responsible_technician_id TEXT,
  installation_notes TEXT,
  status TEXT,
  last_maintenance_date TEXT,
  next_maintenance_date TEXT,
  decommission_date TEXT,
  legacy_sensor BOOLEAN,
  integration_system TEXT,
  network_segment TEXT,
  alert_threshold_high REAL,
  alert_threshold_low REAL,
  notes TEXT
);

INSERT INTO environmental_sensor_deployment_schedule VALUES
('D001','SNS001','AirTemp','LOC01','2023-01-15','2025-01-15','WallMount','Solar','LoRa','v1.0','2023-12-15',180,'TECH001','Initial install','Active','2023-06-01','2023-11-28',NULL,0,'SCADA','SegmentA','30.0','15.0','No issues');

INSERT INTO environmental_sensor_deployment_schedule VALUES
('D002','SNS002','Humidity','LOC02','2023-02-01','2025-02-01','CeilingMount','Mains','WiFi','v1.2','2023-11-01',365,'TECH002','Mounted near HVAC','Active','2023-05-20','2024-05-20',NULL,0,'BMS','SegmentB','70.0','30.0','Check quarterly');

INSERT INTO environmental_sensor_deployment_schedule VALUES
('D003','SNS003','Pressure','LOC03','2023-03-05','2024-03-05','PipeClamp','Battery','Cellular','v0.9','2023-09-05',90,'TECH003','Installed in pipeline','Decommissioned','2023-07-15','2023-10-13','2024-03-05',0,'OPC-UA','SegmentC','200.0','100.0','Decommission after study');

-- Instrument deployment log
CREATE TABLE instrument_deployment_log (
  deployment_log_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  instrument_type TEXT,
  deployment_site_id TEXT,
  deployment_date TEXT,
  installed_by TEXT,
  configuration_version TEXT,
  network_address TEXT,
  power_connection_type TEXT,
  rack_position TEXT,
  cable_management_status TEXT,
  initial_calibration_date TEXT,
  acceptance_test_passed BOOLEAN,
  documentation_url TEXT,
  notes TEXT,
  decommission_date TEXT,
  decommission_reason TEXT,
  current_status TEXT,
  last_maintenance_date TEXT,
  next_maintenance_due TEXT,
  warranty_expiration_date TEXT,
  service_contract_id TEXT,
  last_error_code TEXT,
  operational_hours INTEGER
);

INSERT INTO instrument_deployment_log VALUES
('DL001','INST010','MassSpec','SITE001','2023-01-20','TECH010','cfgV2','192.168.1.10','ThreePhase','U3','Neat','2023-02-01',1,'http://docs.example.com/inst10','Installed successfully',NULL,NULL,'Active','2023-06-10','2023-12-10','2025-01-20','SC1001','E00',1200);

INSERT INTO instrument_deployment_log VALUES
('DL002','INST011','NMR','SITE002','2023-02-15','TECH011','cfgV1','192.168.1.11','SinglePhase','U5','Tidy','2023-03-01',1,'http://docs.example.com/inst11','Calibration pending',NULL,NULL,'Active','2023-05-20','2023-11-20','2026-02-15','SC1002','E01',950);

INSERT INTO instrument_deployment_log VALUES
('DL003','INST012','ElectronMicroscope','SITE003','2023-03-10','TECH012','cfgV3','192.168.1.12','ThreePhase','U2','Organized','2023-04-01',0,'http://docs.example.com/inst12','Failed acceptance test',NULL,NULL,'Inactive','2023-04-15','2023-10-15','2024-03-10','SC1003','E02',300);