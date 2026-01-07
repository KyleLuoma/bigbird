-- Table describing detailed parameters for each nanoparticle synthesis run
CREATE TABLE nanoparticle_synthesis_parameters (
  synthesis_id TEXT NOT NULL,
  project_id TEXT,
  operator TEXT,
  start_date TEXT,
  end_date TEXT,
  particle_type TEXT,
  core_material TEXT,
  shell_material TEXT,
  target_diameter_nm REAL,
  actual_diameter_nm REAL,
  polydispersity_index REAL,
  solvent TEXT,
  concentration_mg_per_ml REAL,
  temperature_c REAL,
  pressure_atm REAL,
  stirring_speed_rpm INTEGER,
  pH REAL,
  functionalization_agent TEXT,
  surface_charge_mV REAL,
  yield_percent REAL,
  batch_number TEXT,
  PRIMARY KEY (synthesis_id)
);
INSERT INTO nanoparticle_synthesis_parameters VALUES ('SYN001','PRJ100','alice','2025-01-10','2025-01-12','gold','gold','silica',50.0,48.7,0.07,'water',5.0,25.0,1.0,500,7.0,'PEG','-25',85.0,'BN001');
INSERT INTO nanoparticle_synthesis_parameters VALUES ('SYN002','PRJ101','bob','2025-02-05','2025-02-07','silver','silver','polymer',30.0,31.2,0.09,'ethanol',3.5,22.0,0.8,800,6.5,'citrate','-15',78.5,'BN002');
INSERT INTO nanoparticle_synthesis_parameters VALUES ('SYN003','PRJ102','carol','2025-03-01','2025-03-03','ironoxide','fe2o3','dextran',20.0,19.5,0.05,'water',2.0,20.0,1.2,600,7.2,'amine','-30',92.0','BN003');

-- Table logging each chemical process control event
CREATE TABLE chemical_process_control_log (
  log_id TEXT NOT NULL,
  process_id TEXT,
  timestamp TEXT,
  operator TEXT,
  control_parameter TEXT,
  set_point REAL,
  measured_value REAL,
  deviation REAL,
  alarm_flag INTEGER,
  corrective_action TEXT,
  batch_id TEXT,
  equipment_id TEXT,
  recipe_version TEXT,
  shift TEXT,
  temperature_c REAL,
  pressure_bar REAL,
  flow_rate_l_min REAL,
  pH REAL,
  conductivity_us_cm REAL,
  residence_time_min REAL,
  comment TEXT,
  PRIMARY KEY (log_id)
);
INSERT INTO chemical_process_control_log VALUES ('LOG001','PROC01','2025-04-01 08:00','alice','temperature',100.0,99.5,0.5,0,'adjusted valve','BCH001','EQ001','v1','A','99.5',1.2,150.0,7.0,500,5.0,'normal operation');
INSERT INTO chemical_process_control_log VALUES ('LOG002','PROC02','2025-04-01 12:30','bob','pressure',5.0,5.3,0.3,1,'released pressure','BCH002','EQ002','v2','B','25.0',5.3,200.0,6.5,450,4.5,'high pressure alarm');
INSERT INTO chemical_process_control_log VALUES ('LOG003','PROC03','2025-04-01 15:45','carol','pH',7.0,6.8,0.2,0,'added base','BCH003','EQ003','v1','C','22.0',1.0,180.0,6.8,470,6.0,'pH corrected');

-- Table defining specifications for each airflow zone in the lab
CREATE TABLE lab_airflow_zone_specifications (
  zone_id TEXT NOT NULL,
  zone_name TEXT,
  floor TEXT,
  ceiling_height_m REAL,
  airflow_rate_cfm REAL,
  filter_type TEXT,
  filter_efficiency_percent REAL,
  pressure_differential_pa REAL,
  temperature_setpoint_c REAL,
  humidity_setpoint_percent REAL,
  max_occupancy INTEGER,
  ventilation_type TEXT,
  hvac_unit_id TEXT,
  construction_material TEXT,
  noise_level_db_a REAL,
  commissioning_date TEXT,
  last_maintenance_date TEXT,
  certification_status TEXT,
  notes TEXT,
  PRIMARY KEY (zone_id)
);
INSERT INTO lab_airflow_zone_specifications VALUES ('ZONE01','Main Lab','1',3.0,1200.0,'HEPA','99.97',10.0,22.0,45.0,10,'mixing','HVAC01','concrete',55.0,'2024-06-01','2025-06-01','certified','none');
INSERT INTO lab_airflow_zone_specifications VALUES ('ZONE02','Cleanroom','2',2.8,800.0,'ULPA','99.9995',8.0,20.0,40.0,5,'laminar','HVAC02','steel',50.0,'2024-07-15','2025-07-15','certified','restricted access');
INSERT INTO lab_airflow_zone_specifications VALUES ('ZONE03','Storage','1',3.2,600.0,'MERV13','99.0',5.0,24.0,50.0,2,'recirculating','HVAC03','brick',60.0,'2024-05-20','2025-05-20','pending','used for chemicals');

-- Table recording firmware releases for instruments
CREATE TABLE instrument_firmware_release_log (
  release_id TEXT NOT NULL,
  instrument_id TEXT,
  firmware_version TEXT,
  release_date TEXT,
  released_by TEXT,
  changelog TEXT,
  checksum TEXT,
  compatible_models TEXT,
  download_url TEXT,
  installation_status TEXT,
  validation_status TEXT,
  rollback_allowed INTEGER,
  affected_features TEXT,
  notes TEXT,
  PRIMARY KEY (release_id)
);
INSERT INTO instrument_firmware_release_log VALUES ('FWR001','INST001','v3.2.1','2025-01-20','alice','bug fixes and performance improvements','abc123','modelA,modelB','http://example.com/fw/v3.2.1','pending','not validated',1,'acquisition,control','first stable release');
INSERT INTO instrument_firmware_release_log VALUES ('FWR002','INST002','v2.5.0','2025-02-10','bob','added new spectroscopy mode','def456','modelC','http://example.com/fw/v2.5.0','pending','not validated',0,'spectroscopy','requires hardware upgrade');
INSERT INTO instrument_firmware_release_log VALUES ('FWR003','INST003','v1.9.4','2025-03-05','carol','security patch','ghi789','modelD','http://example.com/fw/v1.9.4','pending','not validated',1,'network','critical security update');

-- Table tracking researchers' education background
CREATE TABLE researcher_education_history (
  edu_id TEXT NOT NULL,
  researcher_id TEXT,
  degree TEXT,
  field_of_study TEXT,
  institution TEXT,
  start_year INTEGER,
  end_year INTEGER,
  thesis_title TEXT,
  advisor TEXT,
  gpa REAL,
  honors TEXT,
  city TEXT,
  country TEXT,
  degree_level TEXT,
  accreditation TEXT,
  scholarship TEXT,
  publication_count INTEGER,
  conference_attended INTEGER,
  language_proficiency TEXT,
  notes TEXT,
  PRIMARY KEY (edu_id)
);
INSERT INTO researcher_education_history VALUES ('EDU001','RES001','PhD','Chemical Engineering','MIT','2012','2017','Catalyst design for green processes','drsmith',3.9,'summa cum laude','Cambridge','USA','doctoral','ABET','none',25,12,'English,Spanish','none');
INSERT INTO researcher_education_history VALUES ('EDU002','RES002','MSc','Bioinformatics','Oxford','2014','2016','Genome assembly algorithms','drjones',3.8,'magna cum laude','Oxford','UK','master','QAA','scholarshipX',15,8,'English,French','none');
INSERT INTO researcher_education_history VALUES ('EDU003','RES003','BSc','Physics','University of Tokyo','2008','2012','Particle detection methods','drtanaka',3.7,'cum laude','Tokyo','Japan','bachelor','JABEE','none',5,3,'Japanese,English','none');

-- Table scheduling isotope labeling for samples
CREATE TABLE sample_isotope_labeling_schedule (
  schedule_id TEXT NOT NULL,
  sample_id TEXT,
  isotope TEXT,
  enrichment_percent REAL,
  labeling_start TEXT,
  labeling_end TEXT,
  operator TEXT,
  instrument_id TEXT,
  protocol_version TEXT,
  target_molecule TEXT,
  expected_yield_percent REAL,
  qc_status TEXT,
  notes TEXT,
  PRIMARY KEY (schedule_id)
);
INSERT INTO sample_isotope_labeling_schedule VALUES ('SCH001','SMP001','13C','98.5','2025-04-01','2025-04-03','alice','INST010','v1','glucose',80.0,'pending','none');
INSERT INTO sample_isotope_labeling_schedule VALUES ('SCH002','SMP002','15N','95.0','2025-04-05','2025-04-07','bob','INST011','v2','aminoacid mix',75.0,'pending','none');
INSERT INTO sample_isotope_labeling_schedule VALUES ('SCH003','SMP003','2H','99.0','2025-04-10','2025-04-12','carol','INST012','v1','lipid extract',85.0,'pending','none');

-- Table cataloguing sources of environmental noise
CREATE TABLE environmental_noise_source_catalogue (
  source_id TEXT NOT NULL,
  source_type TEXT,
  description TEXT,
  typical_loudness_db_a REAL,
  frequency_range_hz TEXT,
  location TEXT,
  mitigation_strategy TEXT,
  last_assessed TEXT,
  status TEXT,
  notes TEXT,
  PRIMARY KEY (source_id)
);
INSERT INTO environmental_noise_source_catalogue VALUES ('NSRC001','HVAC','central air handling unit','68.0','100-2000','Building A','acoustic dampers','2025-01-15','active','none');
INSERT INTO environmental_noise_source_catalogue VALUES ('NSRC002','Traffic','adjacent road traffic','75.0','50-4000','Entrance east','sound barrier','2025-02-20','active','none');
INSERT INTO environmental_noise_source_catalogue VALUES ('NSRC003','Equipment','centrifuge operation','70.0','200-1500','Lab B','vibration isolation','2025-03-10','active','none');

-- Table storing performance metrics of each node in the computational cluster
CREATE TABLE computational_cluster_node_performance (
  node_id TEXT NOT NULL,
  cpu_model TEXT,
  cpu_cores INTEGER,
  gpu_model TEXT,
  gpu_count INTEGER,
  ram_gb REAL,
  storage_tb REAL,
  network_gbps REAL,
  avg_cpu_utilization_percent REAL,
  avg_gpu_utilization_percent REAL,
  avg_memory_utilization_percent REAL,
  avg_disk_io_mb_s REAL,
  avg_network_io_mb_s REAL,
  temperature_c REAL,
  power_watts REAL,
  last_maintenance TEXT,
  firmware_version TEXT,
  operating_system TEXT,
  status TEXT,
  notes TEXT,
  PRIMARY KEY (node_id)
);
INSERT INTO computational_cluster_node_performance VALUES ('NODE01','IntelXeonE5','32','NvidiaTeslaV100','2','256','4','10','45.0','60.0','70.0','120.0','80.0','35.0','2100','2025-01-05','fw1.2','Linux','online','none');
INSERT INTO computational_cluster_node_performance VALUES ('NODE02','AMD_EPYC','64','NvidiaTeslaA100','4','512','8','25','55.0','70.0','80.0','200.0','150.0','38.0','2500','2025-02-12','fw2.0','Linux','online','none');
INSERT INTO computational_cluster_node_performance VALUES ('NODE03','IntelXeonPlatinum','48','NvidiaTeslaT4','3','384','6','20','50.0','65.0','75.0','150.0','100.0','36.0','2300','2025-03-18','fw1.5','Linux','online','none');

-- Table summarizing adverse events reported in clinical trials
CREATE TABLE clinical_trial_adverse_event_summary (
  event_id TEXT NOT NULL,
  trial_id TEXT,
  participant_id TEXT,
  event_date TEXT,
  event_type TEXT,
  severity TEXT,
  outcome TEXT,
  related_to_drug INTEGER,
  description TEXT,
  investigator TEXT,
  reporting_site TEXT,
  action_taken TEXT,
  follow_up_required INTEGER,
  follow_up_status TEXT,
  comments TEXT,
  PRIMARY KEY (event_id)
);
INSERT INTO clinical_trial_adverse_event_summary VALUES ('AEV001','CT001','P001','2025-01-20','headache','mild','resolved',0,'patient reported mild headache','drlee','SiteA','observation','0','none','no further action');
INSERT INTO clinical_trial_adverse_event_summary VALUES ('AEV002','CT001','P002','2025-02-05','nausea','moderate','resolved',1,'vomiting after dose','drkim','SiteB','dose_adjusted','1','pending','monitor next visit');
INSERT INTO clinical_trial_adverse_event_summary VALUES ('AEV003','CT002','P010','2025-03-12','rash','severe','hospitalized',1,'widespread urticaria','drsmith','SiteC','treatment discontinued','1','completed','patient recovered');

-- Table logging maintenance activities for the facility HVAC system
CREATE TABLE facility_hvac_maintenance_record (
  maintenance_id TEXT NOT NULL,
  hvac_unit_id TEXT,
  maintenance_date TEXT,
  technician TEXT,
  maintenance_type TEXT,
  components_replaced TEXT,
  filter_change BOOLEAN,
  coil_cleaning BOOLEAN,
  duct_inspection BOOLEAN,
  airflow_test_passed BOOLEAN,
  pressure_test_passed BOOLEAN,
  notes TEXT,
  next_scheduled DATE,
  status TEXT,
  PRIMARY KEY (maintenance_id)
);
INSERT INTO facility_hvac_maintenance_record VALUES ('HVACM001','HVAC01','2025-01-10','alice','preventive','fan_motor',1,0,1,1,1,'all parameters nominal','2025-07-10','completed');
INSERT INTO facility_hvac_maintenance_record VALUES ('HVACM002','HVAC02','2025-02-15','bob','corrective','compressor',0,1,0,0,0,'compressor failure repaired','2025-08-15','completed');
INSERT INTO facility_hvac_maintenance_record VALUES ('HVACM003','HVAC03','2025-03-20','carol','preventive','air_filter',1,0,1,1,1,'filter replaced, airflow optimal','2025-09-20','completed');