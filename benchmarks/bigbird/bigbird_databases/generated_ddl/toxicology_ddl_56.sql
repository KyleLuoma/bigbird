-- optical_microscope_log
CREATE TABLE optical_microscope_log (
  log_id TEXT PRIMARY KEY,
  microscope_id TEXT,
  session_date DATE,
  technician_id TEXT,
  magnification INTEGER,
  objective_type TEXT,
  filter_set TEXT,
  illumination_mode TEXT,
  camera_model TEXT,
  image_count INTEGER,
  notes TEXT,
  resolution_um REAL,
  working_distance_mm REAL,
  field_number INTEGER,
  pixel_size_nm REAL,
  exposure_time_ms INTEGER,
  gain INTEGER,
  comment TEXT,
  maintenance_required TEXT,
  status TEXT
);
INSERT INTO optical_microscope_log VALUES ('LOG001','MIC001','2024-01-10','TECH01',40,'Planar','SetA','Brightfield','CamX200',120,'Initial session',0.25,5.0,22,6.5,150,10,'All good','No','Completed');
INSERT INTO optical_microscope_log VALUES ('LOG002','MIC002','2024-02-15','TECH02',60,'Oil','SetB','DIC','CamY300',200,'Follow-up',0.20,4.5,18,5.8,200,12,'Minor focus drift','Yes','Pending');
INSERT INTO optical_microscope_log VALUES ('LOG003','MIC001','2024-03-05','TECH03',100,'Phase','SetC','Fluorescence','CamZ400',85,'Special stains',0.15,3.8,12,4.2,100,8,'Clear images','No','Completed');

-- spectral_image_dataset
CREATE TABLE spectral_image_dataset (
  dataset_id TEXT PRIMARY KEY,
  experiment_id TEXT,
  capture_date DATE,
  sensor_type TEXT,
  wavelength_start_nm INTEGER,
  wavelength_end_nm INTEGER,
  spectral_resolution_nm REAL,
  spatial_resolution_um REAL,
  image_width_px INTEGER,
  image_height_px INTEGER,
  num_slices INTEGER,
  operator_id TEXT,
  calibration_id TEXT,
  background_subtracted TEXT,
  quality_score REAL,
  file_path TEXT,
  metadata_version TEXT,
  processing_software TEXT,
  notes TEXT,
  status TEXT
);
INSERT INTO spectral_image_dataset VALUES ('DS001','EXP01','2024-01-20','Hyperspec','400','800',2.5,0.5,1024,768,50,'OP01','CAL01','Yes',0.95,'/data/ds001','v1.0','SpecSoft','Initial capture','Approved');
INSERT INTO spectral_image_dataset VALUES ('DS002','EXP02','2024-02-12','Multispec','450','750',5.0,0.8,2048,1536,30,'OP02','CAL02','No',0.88,'/data/ds002','v1.1','SpecSoft','Reviewed','Pending');
INSERT INTO spectral_image_dataset VALUES ('DS003','EXP03','2024-03-08','Hyperspec','350','900',1.0,0.4,512,512,70,'OP03','CAL03','Yes',0.98,'/data/ds003','v2.0','SpecPro','Final dataset','Approved');

-- lab_temperature_control_system
CREATE TABLE lab_temperature_control_system (
  system_id TEXT PRIMARY KEY,
  zone_id TEXT,
  controller_model TEXT,
  installation_date DATE,
  set_point_c REAL,
  current_temp_c REAL,
  humidity_percent REAL,
  pid_parameters TEXT,
  alarm_status TEXT,
  last_service_date DATE,
  maintenance_interval_days INTEGER,
  software_version TEXT,
  network_address TEXT,
  last_error_code TEXT,
  error_description TEXT,
  energy_consumption_kwh REAL,
  operator_id TEXT,
  access_level TEXT,
  notes TEXT,
  status TEXT
);
INSERT INTO lab_temperature_control_system VALUES ('SYS001','ZONE_A','CTM-500','2022-06-01',22.0,22.3,45.0,'P1=2.0,I1=0.5,D1=0.1','Normal','2024-01-01',180,'v3.2','192.168.1.10','E00','None',1200.5,'OP01','Admin','Running smoothly','Active');
INSERT INTO lab_temperature_control_system VALUES ('SYS002','ZONE_B','CTM-600','2023-03-15',18.0,18.5,40.0,'P1=1.8,I1=0.4,D1=0.2','Warning','2024-02-10',180,'v4.0','192.168.1.11','E02','Sensor drift',980.3,'OP02','User','Check humidity sensor','Active');
INSERT INTO lab_temperature_control_system VALUES ('SYS003','ZONE_C','CTM-700','2021-11-20',20.0,19.8,42.0,'P1=2.2,I1=0.6,D1=0.15','Normal','2023-12-05',365,'v3.8','192.168.1.12','E00','None',1350.0,'OP03','Admin','Scheduled maintenance due','Active');

-- chemical_reactor_batch
CREATE TABLE chemical_reactor_batch (
  batch_id TEXT PRIMARY KEY,
  reactor_id TEXT,
  start_time DATETIME,
  end_time DATETIME,
  reaction_type TEXT,
  catalyst TEXT,
  temperature_c REAL,
  pressure_bar REAL,
  stir_rate_rpm INTEGER,
  volume_l REAL,
  product_yield_percent REAL,
  byproduct_percent REAL,
  operator_id TEXT,
  safety_checks_passed TEXT,
  batch_status TEXT,
  equipment_log_id TEXT,
  qc_report_id TEXT,
  notes TEXT,
  data_file_path TEXT,
  revision_number INTEGER
);
INSERT INTO chemical_reactor_batch VALUES ('BATCH001','RCTR01','2024-01-05 08:00:00','2024-01-05 12:30:00','Esterification','CatA',85.0,5.0,300,12.5,78.5,5.0,'OP01','Yes','Completed','LOG001','QC001','No issues','/data/batch001.csv',1);
INSERT INTO chemical_reactor_batch VALUES ('BATCH002','RCTR02','2024-02-10 09:15:00','2024-02-10 14:45:00','Polymerization','CatB',120.0,10.0,500,20.0,65.0,8.0,'OP02','Yes','Completed','LOG002','QC002','Temperature spike at 11:30','/data/batch002.csv',2);
INSERT INTO chemical_reactor_batch VALUES ('BATCH003','RCTR01','2024-03-20 07:45:00','2024-03-20 11:20:00','Hydrogenation','CatC',60.0,3.0,250,8.0,82.0,3.5,'OP03','No','Interrupted','LOG003','QC003','Safety check failed','/data/batch003.csv',1);

-- nanoparticle_dispersion_analysis
CREATE TABLE nanoparticle_dispersion_analysis (
  analysis_id TEXT PRIMARY KEY,
  sample_id TEXT,
  analysis_date DATE,
  instrument_id TEXT,
  method TEXT,
  particle_size_nm REAL,
  zeta_potential_mv REAL,
  polydispersity_index REAL,
  concentration_mg_ml REAL,
  viscosity_cP REAL,
  temperature_c REAL,
  operator_id TEXT,
  calibration_id TEXT,
  notes TEXT,
  result_file_path TEXT,
  quality_flag TEXT,
  batch_id TEXT,
  protocol_version TEXT,
  repeat_count INTEGER,
  status TEXT,
  reviewer_id TEXT
);
INSERT INTO nanoparticle_dispersion_analysis VALUES ('ANA001','SAMP01','2024-01-12','INST01','DLS',45.2,-15.3,0.12,2.5,1.1,25.0,'OP01','CAL01','Stable dispersion','/results/ana001.csv','Pass','BATCH001','v1.0',1,'Completed','RV01');
INSERT INTO nanoparticle_dispersion_analysis VALUES ('ANA002','SAMP02','2024-02-18','INST02','DLS',78.9,-20.0,0.20,3.0,1.3,22.0,'OP02','CAL02','Aggregates observed','/results/ana002.csv','Fail','BATCH002','v1.1',2,'Review','RV02');
INSERT INTO nanoparticle_dispersion_analysis VALUES ('ANA003','SAMP03','2024-03-22','INST01','DLS',30.5,-10.5,0.08,1.8,0.9,24.5,'OP03','CAL01','Excellent uniformity','/results/ana003.csv','Pass','BATCH003','v1.0',1,'Completed','RV01');

-- environmental_radiation_survey
CREATE TABLE environmental_radiation_survey (
  survey_id TEXT PRIMARY KEY,
  site_id TEXT,
  survey_date DATE,
  survey_time TIME,
  radiation_type TEXT,
  dose_rate_mSv_h REAL,
  cumulative_dose_mSv REAL,
  detector_id TEXT,
  weather_conditions TEXT,
  technician_id TEXT,
  equipment_status TEXT,
  calibration_date DATE,
  notes TEXT,
  map_reference TEXT,
  data_file_path TEXT,
  approval_status TEXT,
  reviewer_id TEXT,
  action_required TEXT,
  next_survey_due DATE,
  status TEXT,
  comments TEXT
);
INSERT INTO environmental_radiation_survey VALUES ('SURV001','SITEA','2024-01-15','08:30:00','Gamma',0.034,1.02,'DET01','Clear','TECH01','Operational','2023-12-01','No anomalies','MAP001','/surveys/surv001.csv','Approved','REV01','None','2025-01-15','Closed','');
INSERT INTO environmental_radiation_survey VALUES ('SURV002','SITEB','2024-02-20','09:45:00','Beta',0.012,0.45,'DET02','Rainy','TECH02','Operational','2024-01-10','Elevated beta reading','MAP002','/surveys/surv002.csv','Pending','REV02','Investigate source','2025-02-20','Open','Follow-up needed');
INSERT INTO environmental_radiation_survey VALUES ('SURV003','SITEC','2024-03-10','07:15:00','Neutron',0.005,0.20,'DET03','Foggy','TECH03','Operational','2024-02-05','All within limits','MAP003','/surveys/surv003.csv','Approved','REV01','None','2025-03-10','Closed','');

-- lab_airlock_access
CREATE TABLE lab_airlock_access (
  access_id TEXT PRIMARY KEY,
  airlock_id TEXT,
  person_id TEXT,
  access_time DATETIME,
  access_type TEXT,
  device_id TEXT,
  credential_type TEXT,
  credential_id TEXT,
  door_status TEXT,
  alarm_triggered TEXT,
  duration_seconds INTEGER,
  purpose TEXT,
  supervisor_id TEXT,
  override_flag TEXT,
  notes TEXT,
  log_file_path TEXT,
  verification_status TEXT,
  location_coordinates TEXT,
  status TEXT,
  comments TEXT
);
INSERT INTO lab_airlock_access VALUES ('ACC001','AL001','USR001','2024-01-05 07:55:00','Entry','DEV001','Badge','BADGE123','Closed','No',15,'Sample entry','SUP001','No','Routine','/logs/acc001.log','Verified','45.123,-122.456','Success','');
INSERT INTO lab_airlock_access VALUES ('ACC002','AL001','USR002','2024-01-05 08:05:00','Exit','DEV002','Badge','BADGE124','Closed','No',12,'Sample exit','SUP001','No','Routine','/logs/acc002.log','Verified','45.123,-122.456','Success','');
INSERT INTO lab_airlock_access VALUES ('ACC003','AL002','USR003','2024-01-06 14:20:00','Entry','DEV003','PIN','PIN789','Closed','Yes',30,'Emergency access','SUP002','Yes','Override required','/logs/acc003.log','Pending','45.124,-122.457','Failed','Alarm triggered');

-- researcher_conflict_of_interest
CREATE TABLE researcher_conflict_of_interest (
  record_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  disclosure_date DATE,
  conflict_type TEXT,
  entity_name TEXT,
  financial_amount_usd REAL,
  duration_months INTEGER,
  description TEXT,
  mitigation_plan TEXT,
  review_date DATE,
  reviewer_id TEXT,
  approval_status TEXT,
  notes TEXT,
  document_path TEXT,
  conflict_resolved TEXT,
  resolution_date DATE,
  updated_by TEXT,
  timestamp DATETIME,
  status TEXT,
  comments TEXT
);
INSERT INTO researcher_conflict_of_interest VALUES ('REC001','RES001','2023-12-01','Consulting','BioPharma Inc',50000,12,'Advisory board member','Disclosure and recusal','2024-01-10','REV01','Approved','All disclosed','/conflicts/rec001.pdf','Yes','2024-02-01','ADMIN','2024-01-10 09:00:00','Closed','');
INSERT INTO researcher_conflict_of_interest VALUES ('REC002','RES002','2024-01-15','Equity','NanoTech Ltd',120000,24,'Owns 5% shares','Divestiture planned','2024-02-20','REV02','Pending','Pending board review','/conflicts/rec002.pdf','No','NULL','ADMIN','2024-02-20 10:30:00','Open','Awaiting decision');
INSERT INTO researcher_conflict_of_interest VALUES ('REC003','RES003','2024-02-05','Patents','Self','0',36,'Co-inventor on patent','License agreement','2024-03-01','REV01','Approved','Patent licensed to university','/conflicts/rec003.pdf','Yes','2024-04-01','ADMIN','2024-03-01 08:45:00','Closed','');

-- instrument_power_budget
CREATE TABLE instrument_power_budget (
  budget_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  fiscal_year INTEGER,
  allocated_kwh REAL,
  used_kwh REAL,
  peak_power_kw REAL,
  average_power_kw REAL,
  cost_per_kwh REAL,
  total_cost REAL,
  approval_status TEXT,
  approver_id TEXT,
  allocation_date DATE,
  revision_number INTEGER,
  notes TEXT,
  last_update DATETIME,
  forecasted_usage_kwh REAL,
  variance_kwh REAL,
  variance_percent REAL,
  status TEXT,
  comments TEXT
);
INSERT INTO instrument_power_budget VALUES ('BP001','INST01',2024,15000.0,8200.5,12.5,6.8,0.10,820.05,'Approved','APP01','2024-01-01',1,'Initial allocation','2024-03-01 12:00:00',15500.0,-300.5,-2.0,'Active','');
INSERT INTO instrument_power_budget VALUES ('BP002','INST02',2024,20000.0,18900.0,20.0,10.5,0.12,2268.0,'Approved','APP02','2024-01-01',1,'High usage instrument','2024-03-05 09:30:00',21000.0,-100.0,-0.5','Active','');
INSERT INTO instrument_power_budget VALUES ('BP003','INST03',2024,12000.0,3000.0,8.0,4.0,0.09,270.0,'Pending','APP03','2024-02-01',1,'Pending approval','2024-03-10 15:20:00',13000.0,-1000.0,-8.3','Review','');

-- sample_isolation_chamber
CREATE TABLE sample_isolation_chamber (
  chamber_id TEXT PRIMARY KEY,
  chamber_name TEXT,
  location TEXT,
  max_capacity INTEGER,
  airflow_rate_cfm REAL,
  pressure_difference_pa REAL,
  filter_type TEXT,
  maintenance_schedule TEXT,
  last_maintenance_date DATE,
  status TEXT,
  current_occupancy INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  operator_id TEXT,
  safety_check_passed TEXT,
  notes TEXT,
  calibration_id TEXT,
  last_calibration_date DATE,
  inspection_due_date DATE,
  recorded_by TEXT
);
INSERT INTO sample_isolation_chamber VALUES ('CH001','IsoChamberA','Lab Wing 1',4,350.0,12.5,'HEPA','Quarterly','2024-01-15','Operational',2,22.0,40.0,'OP01','Yes','Clean and functional','CAL001','2024-01-01','2025-01-15','ADMIN');
INSERT INTO sample_isolation_chamber VALUES ('CH002','IsoChamberB','Lab Wing 2',2,200.0,8.0,'ULPA','Semiannual','2023-12-20','Operational',1,19.5,35.0,'OP02','Yes','No issues','CAL002','2023-12-01','2025-06-20','ADMIN');
INSERT INTO sample_isolation_chamber VALUES ('CH003','IsoChamberC','Lab Wing 3',6,500.0,15.0,'HEPA','Annual','2022-11-05','Under Maintenance',0,0.0,0.0,'OP03','No','Under repair for filter replacement','CAL003','2022-10-20','2024-11-05','ADMIN');