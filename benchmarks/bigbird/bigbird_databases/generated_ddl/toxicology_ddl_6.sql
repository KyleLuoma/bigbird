-- Spectral dataset records associated with molecules
CREATE TABLE spectral_dataset (
  dataset_id TEXT PRIMARY KEY,
  molecule_id_ref TEXT,
  instrument_id TEXT,
  acquisition_date TEXT,
  wavelength_start REAL,
  wavelength_end REAL,
  resolution REAL,
  detector_type TEXT,
  integration_time REAL,
  temperature REAL,
  pressure REAL,
  sample_preparation TEXT,
  solvent TEXT,
  concentration REAL,
  path_length REAL,
  scan_number INTEGER,
  comment TEXT,
  data_format TEXT,
  file_path TEXT,
  version TEXT,
  checksum TEXT
);

INSERT INTO spectral_dataset VALUES ('DS001','MOL001','INST01','2023-03-15',200.0,800.0,0.5,'CCD',10.0,25.0,1.0,'Dried','Acetonitrile',0.01,1.0,5,'Initial run','CSV','/data/spec/DS001.csv','v1','abc123def');
INSERT INTO spectral_dataset VALUES ('DS002','MOL002','INST02','2023-04-10',150.0,750.0,0.3,'PMT',12.5,22.0,0.8,'Filtration','Methanol',0.02,1.5,8,'Repeat','TXT','/data/spec/DS002.txt','v1','def456ghi');
INSERT INTO spectral_dataset VALUES ('DS003','MOL003','INST03','2023-05-05',100.0,600.0,0.2,'Photodiode',8.0,20.0,1.2,'Dilution','Water',0.005,2.0,3,'Control','XML','/data/spec/DS003.xml','v2','ghi789jkl');

-- Reaction condition logs for synthesis experiments
CREATE TABLE reaction_condition_log (
  reaction_id TEXT PRIMARY KEY,
  molecule_id TEXT,
  catalyst TEXT,
  temperature_c REAL,
  pressure_atm REAL,
  time_minutes REAL,
  stirring_speed_rpm INTEGER,
  ph REAL,
  solvent TEXT,
  concentration_mol_l REAL,
  atmosphere TEXT,
  light_intensity_lux REAL,
  reactor_volume_ml REAL,
  batch_number TEXT,
  operator_id TEXT,
  safety_notes TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  yield_percent REAL,
  notes TEXT
);

INSERT INTO reaction_condition_log VALUES ('RXN001','MOL010','Pd/C',80.0,1.0,120.0,500,7.0,'Ethanol',0.5,'Nitrogen',0.0,250.0,'B001','OP100','No incidents','2023-06-01 09:00','2023-06-01 11:00',85.0,'High conversion');
INSERT INTO reaction_condition_log VALUES ('RXN002','MOL011','CuSO4',45.0,0.8,60.0,300,5.5,'Water',1.0,'Air',2000.0,100.0,'B002','OP101','Watch temperature','2023-06-02 14:30','2023-06-02 15:30',60.0,'Partial yield');
INSERT INTO reaction_condition_log VALUES ('RXN003','MOL012','EnzymeX',30.0,1.0,240.0,0,6.8,'Phosphate buffer',0.2,'Air',0.0,500.0,'B003','OP102','pH stable','2023-06-03 08:00','2023-06-03 12:00',92.5,'Successful enzyme run');

-- Metadata for computational simulation jobs
CREATE TABLE simulation_job_metadata (
  job_id TEXT PRIMARY KEY,
  molecule_id TEXT,
  simulation_type TEXT,
  software_name TEXT,
  version TEXT,
  method TEXT,
  basis_set TEXT,
  num_cores INTEGER,
  memory_gb REAL,
  walltime_hours REAL,
  start_time TEXT,
  end_time TEXT,
  status TEXT,
  owner_id TEXT,
  input_file_path TEXT,
  output_file_path TEXT,
  random_seed INTEGER,
  precision TEXT,
  convergence_threshold REAL,
  description TEXT,
  tags TEXT
);

INSERT INTO simulation_job_metadata VALUES ('JOB001','MOL020','MD','GROMACS','2022.5','Charmm36','TIP3P',16,64.0,48.0,'2023-07-01 10:00','2023-07-03 10:00','COMPLETED','USR001','/sim/input/JOB001.inp','/sim/output/JOB001.out',123456,'double',1e-5,'Protein folding study','protein,md');
INSERT INTO simulation_job_metadata VALUES ('JOB002','MOL021','QM','Gaussian','16.0','DFT','B3LYP/6-31G*',8,32.0,12.0,'2023-07-02 09:30','2023-07-02 21:30','FAILED','USR002','/sim/input/JOB002.com','/sim/output/JOB002.log',654321,'single',1e-6,'Transition state search','ts,qm');
INSERT INTO simulation_job_metadata VALUES ('JOB003','MOL022','MC','LAMMPS','2021.3','MonteCarlo','LJ',4,16.0,6.0,'2023-07-03 13:00','2023-07-03 19:00','COMPLETED','USR003','/sim/input/JOB003.mc','/sim/output/JOB003.res',111222,'single',1e-4,'Adsorption isotherm','adsorption,mc');

-- Maintenance records for laboratory instruments
CREATE TABLE instrument_maintenance_record (
  maintenance_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  maintenance_date TEXT,
  technician_id TEXT,
  maintenance_type TEXT,
  duration_hours REAL,
  parts_replaced TEXT,
  firmware_version TEXT,
  calibration_before TEXT,
  calibration_after TEXT,
  notes TEXT,
  cost_usd REAL,
  vendor TEXT,
  service_order_number TEXT,
  next_due_date TEXT,
  downtime_hours REAL,
  safety_check_passed TEXT,
  documentation_path TEXT,
  approval_id TEXT,
  compliance_status TEXT,
  location TEXT
);

INSERT INTO instrument_maintenance_record VALUES ('MT001','INST01','2023-08-01','TECH01','Preventive',2.5,'Filter,Valve','v3.2','2023-07-30','2023-08-02','All good',250.0,'VendorA','SO123','2024-02-01',0.0,'YES','/docs/MT001.pdf','APP001','COMPLIANT','RoomA');
INSERT INTO instrument_maintenance_record VALUES ('MT002','INST02','2023-08-10','TECH02','Corrective',5.0,'Pump','v4.0','2023-08-08','2023-08-11','Replaced faulty pump',500.0,'VendorB','SO124','2024-03-15',1.0,'YES','/docs/MT002.pdf','APP002','COMPLIANT','RoomB');
INSERT INTO instrument_maintenance_record VALUES ('MT003','INST03','2023-08-20','TECH03','Calibration',1.0,'None','v2.9','2023-08-19','2023-08-20','Calibration within tolerance',0.0,'VendorC','SO125','2024-01-20',0.0,'YES','/docs/MT003.pdf','APP003','COMPLIANT','RoomC');

-- Energy consumption tracking per facility zone
CREATE TABLE lab_energy_usage (
  usage_id TEXT PRIMARY KEY,
  facility_zone TEXT,
  date TEXT,
  hour INTEGER,
  electricity_kwh REAL,
  gas_therms REAL,
  water_gallons REAL,
  hvac_power_kw REAL,
  equipment_power_kw REAL,
  renewable_percent REAL,
  carbon_intensity_kgco2 REAL,
  peak_demand_kw REAL,
  total_cost_usd REAL,
  meter_id TEXT,
  reading_start REAL,
  reading_end REAL,
  anomaly_flag TEXT,
  notes TEXT,
  reported_by TEXT,
  approval_status TEXT,
  audit_timestamp TEXT
);

INSERT INTO lab_energy_usage VALUES ('EU001','ZoneA','2023-09-01',14,120.5,15.2,300.0,25.0,45.0,30.0,0.45,80.0,1500.0,'MTR01',0.0,120.5,'NO','Normal operation','USR010','APPROVED','2023-09-01 15:00');
INSERT INTO lab_energy_usage VALUES ('EU002','ZoneB','2023-09-01',14,95.3,10.1,250.0,20.0,35.0,40.0,0.40,70.0,1200.0,'MTR02',0.0,95.3,'NO','Slight increase due to experiment','USR011','APPROVED','2023-09-01 15:05');
INSERT INTO lab_energy_usage VALUES ('EU003','ZoneC','2023-09-01',14,110.0,12.5,280.0,22.0,40.0,35.0,0.42,75.0,1350.0,'MTR03',0.0,110.0,'NO','Stable','USR012','APPROVED','2023-09-01 15:10');

-- Records of hazardous waste disposal activities
CREATE TABLE waste_disposal_record (
  waste_id TEXT PRIMARY KEY,
  waste_type TEXT,
  generation_date TEXT,
  container_id TEXT,
  volume_liters REAL,
  hazardous_flag TEXT,
  disposal_method TEXT,
  carrier_company TEXT,
  pickup_date TEXT,
  disposal_certificate_id TEXT,
  cost_usd REAL,
  regulatory_code TEXT,
  responsible_lab_id TEXT,
  notes TEXT,
  verified_by TEXT,
  verification_date TEXT,
  residuals_flag TEXT,
  storage_location TEXT,
  temperature_controlled TEXT,
  record_timestamp TEXT
);

INSERT INTO waste_disposal_record VALUES ('WD001','Solvent','2023-07-15','CONT01',2.5,'YES','Incineration','CleanTrans','2023-07-20','CERT001',300.0,'R123','LAB01','No issues','DRV001','2023-07-21','NO','StoreA','YES','2023-07-21 10:00');
INSERT INTO waste_disposal_record VALUES ('WD002','HeavyMetal','2023-07-18','CONT02',1.0,'YES','ChemicalTreatment','EcoWaste','2023-07-22','CERT002',450.0','R124','LAB02','Handled with PPE','DRV002','2023-07-23','YES','StoreB','YES','2023-07-23 11:30');
INSERT INTO waste_disposal_record VALUES ('WD003','Biological','2023-07-20','CONT03',0.8','NO','Autoclave','BioSafe','2023-07-25','CERT003',200.0,'R125','LAB03','Biohazard level 2','DRV003','2023-07-26','NO','StoreC','NO','2023-07-26 09:45');

-- Tracking of biological and chemical samples
CREATE TABLE sample_tracking_log (
  sample_id TEXT PRIMARY KEY,
  sample_type TEXT,
  collection_date TEXT,
  collector_id TEXT,
  storage_location TEXT,
  temperature_c REAL,
  preservation_method TEXT,
  aliquot_number INTEGER,
  volume_ml REAL,
  barcode TEXT,
  project_code TEXT,
  status TEXT,
  last_accessed TEXT,
  accessed_by TEXT,
  analysis_requested TEXT,
  analysis_result_id TEXT,
  notes TEXT,
  expiration_date TEXT,
  quarantine_flag TEXT,
  record_created TEXT
);

INSERT INTO sample_tracking_log VALUES ('SM001','Blood','2023-05-10','COL001','Freezer1',-80.0,'Cryopreserved',1,0.5,'BC001','PRJ001','Stored','2023-06-01','USR020','RNASeq','AR001','No issues','2024-05-10','NO','2023-05-10 08:00');
INSERT INTO sample_tracking_log VALUES ('SM002','Tissue','2023-05-12','COL002','Freezer2',-80.0,'Formalin',1,1.0,'BC002','PRJ002','Processed','2023-06-05','USR021','Histology','AR002','Sectioned','2025-05-12','NO','2023-05-12 09:15');
INSERT INTO sample_tracking_log VALUES ('SM003','Chemical','2023-05-15','COL003','CabinetA',22.0,'Sealed',1,10.0,'BC003','PRJ003','InUse','2023-06-10','USR022','GCMS','AR003','Ready for analysis','2024-05-15','NO','2023-05-15 10:30');

-- Usage accounting for computational resources
CREATE TABLE computational_resource_usage (
  resource_id TEXT PRIMARY KEY,
  user_id TEXT,
  cluster_name TEXT,
  job_id TEXT,
  cpu_hours REAL,
  gpu_hours REAL,
  memory_gb REAL,
  start_timestamp TEXT,
  end_timestamp TEXT,
  node_count INTEGER,
  queue_name TEXT,
  priority INTEGER,
  exit_code INTEGER,
  output_path TEXT,
  error_path TEXT,
  allocation_project TEXT,
  billing_account TEXT,
  utilisation_percent REAL,
  comments TEXT,
  audit_timestamp TEXT,
  compliance_flag TEXT
);

INSERT INTO computational_resource_usage VALUES ('RU001','USR100','ClusterA','JOB101',12.5,0.0,64.0,'2023-08-01 08:00','2023-08-01 20:30',4,'short',50,0,'/out/JOB101.out','/err/JOB101.err','PROJ100','BILL100',85.0,'Normal run','2023-08-01 21:00','YES');
INSERT INTO computational_resource_usage VALUES ('RU002','USR101','ClusterB','JOB102',6.0,4.0,128.0,'2023-08-02 09:15','2023-08-02 15:45',2,'gpu',70,0,'/out/JOB102.out','/err/JOB102.err','PROJ101','BILL101',92.0,'GPU intensive','2023-08-02 16:00','YES');
INSERT INTO computational_resource_usage VALUES ('RU003','USR102','ClusterA','JOB103',2.0,0.0,32.0,'2023-08-03 10:00','2023-08-03 12:30',1,'short',30,1,'/out/JOB103.out','/err/JOB103.err','PROJ102','BILL102',70.0,'Job failed','2023-08-03 13:00','YES');

-- History of regulatory permits related to laboratory activities
CREATE TABLE regulatory_permit_history (
  permit_id TEXT PRIMARY KEY,
  permit_type TEXT,
  issue_date TEXT,
  expiry_date TEXT,
  authority TEXT,
  document_number TEXT,
  related_molecule_id TEXT,
  conditions_summary TEXT,
  compliance_status TEXT,
  last_inspection_date TEXT,
  inspector_id TEXT,
  renewal_required TEXT,
  renewal_notice_sent TEXT,
  notes TEXT,
  attached_file_path TEXT,
  approved_by TEXT,
  approval_date TEXT,
  revocation_date TEXT,
  revocation_reason TEXT,
  record_timestamp TEXT
);

INSERT INTO regulatory_permit_history VALUES ('PRM001','Chemical Storage','2022-01-15','2025-01-15','EnvAgency','DOC001','MOL050','Temperature control','COMPLIANT','2023-06-10','INSP001','NO','NO','All conditions met','/perm/PRM001.pdf','ADMIN01','2022-01-10','','','2022-01-15 09:00');
INSERT INTO regulatory_permit_history VALUES ('PRM002','Radiation Use','2021-05-20','2024-05-20','HealthDept','DOC002','MOL051','Shielding required','COMPLIANT','2023-05-15','INSP002','YES','YES','Pending renewal','/perm/PRM002.pdf','ADMIN02','2021-05-15','','','2021-05-20 10:30');
INSERT INTO regulatory_permit_history VALUES ('PRM003','Biohazard Level 2','2020-09-01','2023-09-01','BioSafety','DOC003','MOL052','Containment','REVOKED','2022-12-01','INSP003','YES','YES','Revoked due to violations','/perm/PRM003.pdf','ADMIN03','2020-08-28','2023-08-30','Safety breach','2020-09-01 08:45');

-- Catalog of training modules offered to lab personnel
CREATE TABLE training_module_catalog (
  module_id TEXT PRIMARY KEY,
  title TEXT,
  category TEXT,
  difficulty_level TEXT,
  duration_minutes INTEGER,
  language TEXT,
  version TEXT,
  author_id TEXT,
  creation_date TEXT,
  last_update TEXT,
  prerequisite_module_id TEXT,
  target_audience TEXT,
  certification_available TEXT,
  credit_hours REAL,
  cost_usd REAL,
  max_participants INTEGER,
  enrollment_open TEXT,
  description TEXT,
  objectives TEXT,
  resources_url TEXT,
  evaluation_method TEXT
);

INSERT INTO training_module_catalog VALUES ('TM001','Chemical Safety Basics','Safety','Beginner',90,'English','v1','AUTH01','2022-01-10','2023-02-01',NULL,'All staff','YES',1.5,0.0,30,'YES','Fundamentals of handling chemicals safely','Identify hazards, use PPE, emergency procedures','http://lab.edu/training/chem_safety','Quiz');
INSERT INTO training_module_catalog VALUES ('TM002','Advanced Spectroscopy','Instrumentation','Advanced',180,'English','v2','AUTH02','2021-06-15','2023-03-12','TM001','Researchers','YES',2.0,150.0,20,'YES','In-depth operation of NMR and IR spectrometers','Interpret spectra, troubleshoot instruments','http://lab.edu/training/adv_spectro','Practical exam');
INSERT INTO training_module_catalog VALUES ('TM003','Data Integrity and Management','Compliance','Intermediate',120,'English','v1','AUTH03','2020-09-05','2023-01-20','TM001','Data managers','YES',1.0,0.0,25,'YES','Best practices for data handling in research','Apply FAIR principles, secure storage','http://lab.edu/training/data_integrity','Project assessment');