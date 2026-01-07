-- Building infrastructure details
CREATE TABLE building_infrastructure_details (
  building_id TEXT NOT NULL,
  building_name TEXT,
  street_address TEXT,
  city TEXT,
  state TEXT,
  zip_code TEXT,
  year_built INTEGER,
  total_floors INTEGER,
  total_sqft REAL,
  occupancy_limit INTEGER,
  fire_safety_rating TEXT,
  seismic_rating TEXT,
  hvac_system_id TEXT,
  electrical_system_id TEXT,
  plumbing_system_id TEXT,
  roof_type TEXT,
  foundation_type TEXT,
  construction_material TEXT,
  last_renovation_date DATE,
  energy_star_rating TEXT,
  sustainability_certification TEXT,
  maintenance_contact TEXT,
  security_vendor TEXT,
  gps_latitude REAL,
  gps_longitude REAL,
  PRIMARY KEY (building_id)
);

INSERT INTO building_infrastructure_details VALUES
('B001','MainResearchComplex','123 Science Way','Metropolis','CA','90001',1998,5,250000,500,'A','IV','HVAC001','ELEC001','PLUMB001','Metal','Concrete','Steel', '2015-06-12','Yes','LEED_Gold','John Doe','SecureTech','34.0522','-118.2437');

INSERT INTO building_infrastructure_details VALUES
('B002','SecondaryLab','456 Innovation Rd','Metropolis','CA','90002',2005,3,120000,250,'B','III','HVAC002','ELEC002','PLUMB002','Tile','Concrete','Aluminum','2019-03-20','No','LEED_Silver','Jane Smith','GuardPro','34.0530','-118.2450');

INSERT INTO building_infrastructure_details VALUES
('B003','FieldStationNorth','789 Rural Ave','Countryside','TX','75001',2010,2,80000,150,'A','II','HVAC003','ELEC003','PLUMB003','Shingle','Concrete','Wood','2022-01-05','Yes','LEED_Bronze','Mike Lee','SafeGuard','31.9686','-99.9018');

-- HVAC system performance
CREATE TABLE hvac_system_performance (
  hvac_system_id TEXT NOT NULL,
  system_name TEXT,
  manufacturer TEXT,
  model_number TEXT,
  installation_date DATE,
  capacity_tons REAL,
  refrigerant_type TEXT,
  efficiency_ratio REAL,
  last_maintenance_date DATE,
  filter_change_interval_days INTEGER,
  average_airflow_cfm REAL,
  energy_consumption_kwh_month REAL,
  pressure_drop_pa REAL,
  coil_cleaning_date DATE,
  sensor_calibration_date DATE,
  operational_status TEXT,
  control_system_version TEXT,
  warranty_expiration DATE,
  maintenance_contact TEXT,
  escalation_contact TEXT,
  notes TEXT,
  PRIMARY KEY (hvac_system_id)
);

INSERT INTO hvac_system_performance VALUES
('HVAC001','MainComplexHVAC','CoolAir','CA-3000','2000-04-15',250.5,'R410A',3.5,'2023-10-01',90,12000,3500,150,'2023-09-20','2023-09-15','Operational','v2.1','2028-04-15','John Doe','Emily Clark','Routine operation');

INSERT INTO hvac_system_performance VALUES
('HVAC002','SecondaryLabHVAC','AirFlowTech','AF-200','2006-08-22',150.0,'R22',4.0,'2023-09-15',120,8000,2100,130,'2023-09-10','2023-09-08','Operational','v3.0','2029-08-22','Jane Smith','Mark Ruiz','Minor vibration noted');

INSERT INTO hvac_system_performance VALUES
('HVAC003','FieldStationHVAC','EcoCool','EC-150','2011-01-10',100.0,'R134a',3.8,'2023-11-05',180,5000,1300,110,'2023-10-30','2023-10-28','Operational','v1.5','2026-01-10','Mike Lee','Sara Patel','Installed solar preheat');

-- Power distribution units
CREATE TABLE power_distribution_units (
  pdu_id TEXT NOT NULL,
  location TEXT,
  voltage_nominal REAL,
  current_rating_amps INTEGER,
  phases INTEGER,
  manufacturer TEXT,
  model TEXT,
  installation_date DATE,
  firmware_version TEXT,
  last_inspection_date DATE,
  outage_history TEXT,
  load_balance_status TEXT,
  temperature_celsius REAL,
  humidity_percent REAL,
  breaker_status TEXT,
  maintenance_schedule TEXT,
  warranty_end_date DATE,
  contact_person TEXT,
  monitoring_endpoint TEXT,
  notes TEXT,
  PRIMARY KEY (pdu_id)
);

INSERT INTO power_distribution_units VALUES
('PDU001','BuildingA-FirstFloor','120',40,1,'PowerMax','PMX-100','2001-05-10','v1.0','2023-08-01','None','Balanced',35.2,45,'Closed','Annual','2026-05-10','John Doe','http://monitoring/pdu001','Main hall PDU');

INSERT INTO power_distribution_units VALUES
('PDU002','BuildingB-SecondFloor','240',60,3,'ElectroGrid','EG-250','2008-11-20','v2.3','2023-07-15','2022-03-05:12kV','Unbalanced',40.1,50,'Open','Biannual','2029-11-20','Jane Smith','http://monitoring/pdu002','Lab area PDU');

INSERT INTO power_distribution_units VALUES
('PDU003','FieldStation-ControlRoom','120',30,1,'RuralPower','RP-30','2012-02-28','v1.5','2023-09-10','2021-06-12:5kV','Balanced',33.8,42,'Closed','Quarterly','2027-02-28','Mike Lee','http://monitoring/pdu003','Outdoor enclosure');

-- Environmental sensor registry
CREATE TABLE environmental_sensor_registry (
  sensor_id TEXT NOT NULL,
  sensor_type TEXT,
  manufacturer TEXT,
  model_number TEXT,
  deployment_location TEXT,
  latitude REAL,
  longitude REAL,
  installation_date DATE,
  calibration_date DATE,
  calibration_interval_days INTEGER,
  measurement_units TEXT,
  data_endpoint TEXT,
  power_source TEXT,
  battery_life_days INTEGER,
  firmware_version TEXT,
  operational_status TEXT,
  last_maintenance DATE,
  next_maintenance DATE,
  alert_threshold_low REAL,
  alert_threshold_high REAL,
  notes TEXT,
  PRIMARY KEY (sensor_id)
);

INSERT INTO environmental_sensor_registry VALUES
('SNS001','Temperature','TempSense','TS-100','MainLab','34.0522','-118.2437','2020-01-15','2023-10-01',365,'Celsius','http://data/sns001','Mains',NULL,'v2.2','Active','2023-10-01','2024-10-01',15.0,30.0,'Room temperature monitor');

INSERT INTO environmental_sensor_registry VALUES
('SNS002','Humidity','HumidTech','HT-200','StorageRoom','34.0525','-118.2440','2021-03-10','2023-09-20',180,'Percent','http://data/sns002','Battery',180,'v1.8','Active','2023-09-20','2024-03-20',30.0,70.0,'Cold storage humidity');

INSERT INTO environmental_sensor_registry VALUES
('SNS003','AirQuality','AirGuard','AG-300','FieldStation','31.9686','-99.9018','2019-07-22','2023-08-15',365,'PPM','http://data/sns003','Solar',NULL,'v3.0','Active','2023-08-15','2024-08-15',0.0,0.05,'Particulate matter monitor');

-- Lab security access log
CREATE TABLE lab_security_access_log (
  log_id TEXT NOT NULL,
  user_id TEXT,
  access_point TEXT,
  entry_timestamp DATETIME,
  exit_timestamp DATETIME,
  access_method TEXT,
  badge_id TEXT,
  biometric_verified TEXT,
  clearance_level TEXT,
  device_ip TEXT,
  device_location TEXT,
  firmware_version TEXT,
  authentication_result TEXT,
  notes TEXT,
  PRIMARY KEY (log_id)
);

INSERT INTO lab_security_access_log VALUES
('LOG001','U001','MainEntrance','2023-12-01 08:15:00','2023-12-01 17:45:00','Badge','BCH123','Yes','Level3','192.168.1.10','FrontDoor','v1.0','Success','Normal workday');

INSERT INTO lab_security_access_log VALUES
('LOG002','U002','RestrictedLab','2023-12-01 09:00:00','2023-12-01 12:30:00','Biometric','BCH124','Yes','Level5','192.168.1.20','LabDoorA','v1.1','Success','Sample processing');

INSERT INTO lab_security_access_log VALUES
('LOG003','U003','ServerRoom','2023-12-01 10:45:00','2023-12-01 11:15:00','Badge','BCH125','No','Level4','192.168.1.30','ServerRoomDoor','v1.0','Success','Routine check');

-- Water quality monitoring
CREATE TABLE water_quality_monitoring (
  sample_id TEXT NOT NULL,
  collection_site TEXT,
  collection_datetime DATETIME,
  temperature_celsius REAL,
  ph REAL,
  turbidity_ntu REAL,
  conductivity_us_per_cm REAL,
  dissolved_oxygen_mg_per_l REAL,
  nitrate_mg_per_l REAL,
  phosphate_mg_per_l REAL,
  chloride_mg_per_l REAL,
  total_solids_mg_per_l REAL,
  sampling_method TEXT,
  analyst_id TEXT,
  lab_id TEXT,
  approval_status TEXT,
  report_file_path TEXT,
  notes TEXT,
  PRIMARY KEY (sample_id)
);

INSERT INTO water_quality_monitoring VALUES
('WQ001','WellA','2023-11-20 08:00:00',12.5,7.2,1.3,250,8.5,2.1,0.5,15.0,350,'Grab','U001','LAB01','Approved','/reports/wq001.pdf','Routine well check');

INSERT INTO water_quality_monitoring VALUES
('WQ002','RiverB','2023-11-22 14:30:00',15.0,6.8,3.0,300,7.2,1.8,0.4,18.0,420,'Automatic','U002','LAB02','Pending','/reports/wq002.pdf','Post-storm sampling');

INSERT INTO water_quality_monitoring VALUES
('WQ003','TapC','2023-11-25 09:15:00',10.0,7.5,0.5,200,9.0,0.5,0.2,12.0,250,'Manual','U003','LAB01','Approved','/reports/wq003.pdf','Monthly compliance');

-- Waste processing unit status
CREATE TABLE waste_processing_unit_status (
  unit_id TEXT NOT NULL,
  unit_type TEXT,
  location TEXT,
  operational_status TEXT,
  last_startup DATETIME,
  last_shutdown DATETIME,
  temperature_celsius REAL,
  pressure_kpa REAL,
  throughput_kg_per_hr REAL,
  maintenance_due_date DATE,
  last_maintenance_date DATE,
  technician_id TEXT,
  error_code TEXT,
  power_consumption_kw REAL,
  filter_status TEXT,
  emission_level_ppm REAL,
  notes TEXT,
  PRIMARY KEY (unit_id)
);

INSERT INTO waste_processing_unit_status VALUES
('WP001','Incinerator','BuildingA-Basement','Online','2023-12-01 06:00:00','2023-12-01 22:00:00',850,150,200,2024-01-15,'2023-10-20','U010','None',85.2,'Good',0.02,'Standard operation');

INSERT INTO waste_processing_unit_status VALUES
('WP002','Autoclave','BuildingB-SecondFloor','Offline','2023-11-15 08:00:00','2023-11-15 20:00:00',130,120,150,2024-02-10','2023-09-30','U011','E102',60.5,'NeedsReplacement',0.05,'Scheduled downtime for filter change');

INSERT INTO waste_processing_unit_status VALUES
('WP003','Shredder','FieldStation','Online','2023-12-02 07:30:00','2023-12-02 19:30:00',45,90,100,2024-03-05,'2023-11-10','U012','None',30.8,'Good',0.01,'Operating within parameters');

-- Cleanroom environment metrics
CREATE TABLE cleanroom_environment_metrics (
  record_id TEXT NOT NULL,
  cleanroom_id TEXT,
  timestamp DATETIME,
  temperature_celsius REAL,
  humidity_percent REAL,
  particle_count_m0_5 INTEGER,
  particle_count_m1 INTEGER,
  particle_count_m5 INTEGER,
  pressure_difference_pa REAL,
  airflow_cfm REAL,
  filter_efficiency_percent REAL,
  leakage_rate_percent REAL,
  static_charge_mv REAL,
  uv_intensity_mw_per_cm2 REAL,
  notes TEXT,
  PRIMARY KEY (record_id)
);

INSERT INTO cleanroom_environment_metrics VALUES
('CR001','CR-A','2023-12-01 09:00:00',22.0,45.0,100,50,10,15.5,350,99.5,0.2,150,0.8,'Normal operation');

INSERT INTO cleanroom_environment_metrics VALUES
('CR002','CR-B','2023-12-01 09:15:00',21.5,48.0,80,40,8,12.0,300,99.7,0.15,130,0.7,'Slight humidity increase');

INSERT INTO cleanroom_environment_metrics VALUES
('CR003','CR-C','2023-12-01 09:30:00',23.0,42.0,120,60,12,18.0,400,99.3,0.25,170,0.9,'Airflow adjusted per schedule');

-- Research publication metrics
CREATE TABLE research_publication_metrics (
  publication_id TEXT NOT NULL,
  title TEXT,
  journal TEXT,
  publication_date DATE,
  doi TEXT,
  citation_count INTEGER,
  download_count INTEGER,
  altmetric_score INTEGER,
  impact_factor REAL,
  author_count INTEGER,
  corresponding_author_id TEXT,
  open_access TEXT,
  funding_agency TEXT,
  grant_number TEXT,
  keywords TEXT,
  abstract_hash TEXT,
  peer_review_status TEXT,
  revision_number INTEGER,
  last_updated DATETIME,
  notes TEXT,
  PRIMARY KEY (publication_id)
);

INSERT INTO research_publication_metrics VALUES
('PUB001','Advances in Nanomaterial Synthesis','NanoLetters','2022-05-10','10.1021/nl123456','85','1200','45','12.5','5','U001','Yes','NSF','NSF-12345','nanomaterials; synthesis','AB12CD34','Accepted','2','2023-11-01','Highly cited');

INSERT INTO research_publication_metrics VALUES
('PUB002','Machine Learning for Protein Folding','Bioinformatics','2023-02-18','10.1093/bioinformatics/btz789','30','800','20','5.2','3','U002','No','NIH','R01-98765','machine learning; protein folding','EF56GH78','In Review','1','2023-11-15','Pending acceptance');

INSERT INTO research_publication_metrics VALUES
('PUB003','Environmental Impact of Chemical Waste','Journal of Environmental Science','2021-11-05','10.1016/j.jes.2021.07.012','12','450','5','3.8','4','U003','Yes','EPA','EPA-11223','environment; waste','IJ90KL12','Published','1','2022-01-20','Cited in policy reports');

-- External partner agreement
CREATE TABLE external_partner_agreement (
  agreement_id TEXT NOT NULL,
  partner_name TEXT,
  partnership_type TEXT,
  start_date DATE,
  end_date DATE,
  governing_law TEXT,
  confidentiality_clause TEXT,
  data_sharing_agreement TEXT,
  financial_terms TEXT,
  lead_contact_id TEXT,
  secondary_contact_id TEXT,
  renewal_option TEXT,
  termination_notice_days INTEGER,
  amendment_history TEXT,
  compliance_requirements TEXT,
  audit_frequency TEXT,
  risk_assessment_status TEXT,
  last_audit_date DATE,
  notes TEXT,
  PRIMARY KEY (agreement_id)
);

INSERT INTO external_partner_agreement VALUES
('AGR001','GlobalChem Corp','Research Collaboration','2020-01-01','2025-12-31','California','Standard','Yes','Fixed annual fee','U010','U011','Option to extend 2 years','90','None','ISO27001','Annual','Compliant','2023-06-15','Ongoing joint projects');

INSERT INTO external_partner_agreement VALUES
('AGR002','BioData Solutions','Data Sharing','2021-06-15','2024-06-14','New York','Enhanced','Yes','Revenue share 10%','U012','U013','No renewal','60','Amendment 2022-03-01','HIPAA','Semi-annual','Pending','2023-12-01','Data integration pilot');

INSERT INTO external_partner_agreement VALUES
('AGR003','EcoAnalytics Ltd','Consultancy','2019-09-01','2022-08-31','Texas','Standard','No','Fixed project fee','U014','U015','Renewable','30','Amendment 2020-11-20','None','Quarterly','Compliant','2022-07-20','Completed sustainability assessment');

-- Facility power distribution map
CREATE TABLE facility_power_distribution_map (
  circuit_id TEXT NOT NULL,
  building_id TEXT,
  floor_number INTEGER,
  voltage_nominal REAL,
  amperage_capacity INTEGER,
  phase_count INTEGER,
  breaker_type TEXT,
  installation_date DATE,
  last_inspection DATE,
  load_percentage REAL,
  fault_history TEXT,
  transformer_id TEXT,
  relay_protected TEXT,
  backup_power_source TEXT,
  monitoring_endpoint TEXT,
  maintenance_contact TEXT,
  notes TEXT,
  PRIMARY KEY (circuit_id)
);

INSERT INTO facility_power_distribution_map VALUES
('CIR001','B001',1,120,80,1,'Miniature','2000-03-10','2023-07-01',45.0,'None','TR001','Yes','Generator','http://monitoring/cir001','John Doe','Main lobby circuit');

INSERT INTO facility_power_distribution_map VALUES
('CIR002','B001',2,240,120,3,'MoldedCase','2002-05-22','2023-08-15',70.5,'2022-11-12: Overload','TR002','Yes','UPS','http://monitoring/cir002','Jane Smith','Laboratory floor circuit');

INSERT INTO facility_power_distribution_map VALUES
('CIR003','B003',1,120,60,1,'Miniature','2010-09-05','2023-06-20',30.0,'None','TR003','No','Solar','http://monitoring/cir003','Mike Lee','Field station main circuit');