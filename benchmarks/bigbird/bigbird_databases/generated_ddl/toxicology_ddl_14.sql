-- Spectroscopy measurement data
CREATE TABLE spectroscopy_measurement (
  measurement_id TEXT PRIMARY KEY,
  sample_id TEXT,
  instrument_id TEXT,
  wavelength_nm REAL,
  absorbance REAL,
  transmittance REAL,
  measurement_date TEXT,
  operator_id TEXT,
  integration_time_ms INTEGER,
  detector_gain REAL,
  calibration_id TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  notes TEXT,
  file_path TEXT,
  batch_id TEXT,
  method TEXT,
  spectral_resolution REAL,
  baseline_corrected INTEGER,
  qc_passed INTEGER
);

INSERT INTO spectroscopy_measurement VALUES
('spec_meas_001','sample_A','spec_instr_01',280.5,0.85,0.15,'2023-06-12','op_1001',500,1.2,'cal_202306','22.5','45.0','Initial run','/data/spec/001.csv','batch_10','UV-Vis',2.0,1,1),
('spec_meas_002','sample_B','spec_instr_02',340.0,0.60,0.40,'2023-06-13','op_1002',600,1.1,'cal_202306','23.0','44.5','Repeat measurement','/data/spec/002.csv','batch_10','UV-Vis',1.8,0,1),
('spec_meas_003','sample_C','spec_instr_01',500.0,0.30,0.70,'2023-06-14','op_1003',450,1.3,'cal_202306','21.8','46.2','Low absorbance','/data/spec/003.csv','batch_11','Vis-NIR',2.5,1,0);

-- Crystallography dataset metadata
CREATE TABLE crystallography_dataset (
  dataset_id TEXT PRIMARY KEY,
  crystal_id TEXT,
  diffraction_id TEXT,
  wavelength_ang REAL,
  temperature_k REAL,
  space_group TEXT,
  unit_cell_a REAL,
  unit_cell_b REAL,
  unit_cell_c REAL,
  unit_cell_alpha REAL,
  unit_cell_beta REAL,
  unit_cell_gamma REAL,
  resolution_ang REAL,
  completeness_percent REAL,
  redundancy REAL,
  i_over_sigma REAL,
  r_merge REAL,
  data_collection_date TEXT,
  instrument_id TEXT,
  operator_id TEXT,
  processing_software TEXT,
  notes TEXT
);

INSERT INTO crystallography_dataset VALUES
('crys_ds_001','crystal_X1','diff_001',0.9795,100.0,'P212121',12.34,13.45,14.56,90.0,90.0,90.0,1.2,98.5,12.0,15.3,0.07,'2023-05-20','cryst_instr_01','op_2001','XDS','High quality dataset'),
('crys_ds_002','crystal_X2','diff_002',0.9795,150.0,'C2/c',10.11,11.22,12.33,90.0,110.0,90.0,1.5,95.0,10.5,12.0,0.09,'2023-05-22','cryst_instr_02','op_2002','XDS','Moderate mosaicity'),
('crys_ds_003','crystal_X3','diff_003',0.9795,120.0,'P21','9.87','10.98','11.09','90.0','90.0','90.0',1.1,99.0,13.2,16.0,0.05,'2023-05-25','cryst_instr_01','op_2003','XDS','Excellent completeness');

-- Simulation parameter sets
CREATE TABLE simulation_parameter_set (
  sim_id TEXT PRIMARY KEY,
  simulation_type TEXT,
  software_name TEXT,
  version TEXT,
  input_file_path TEXT,
  output_dir TEXT,
  num_steps INTEGER,
  time_step_fs REAL,
  temperature_k REAL,
  pressure_bar REAL,
  ensemble TEXT,
  random_seed INTEGER,
  gpu_enabled INTEGER,
  max_threads INTEGER,
  cpu_cores INTEGER,
  memory_gb REAL,
  created_by TEXT,
  creation_date TEXT,
  description TEXT,
  status TEXT,
  runtime_seconds REAL
);

INSERT INTO simulation_parameter_set VALUES
('sim_001','MD','GROMACS','2022.5','/inputs/sim1.tpr','/outputs/sim1',500000,2.0,300.0,1.0,'NVT',12345,1,8,4,16.0,'user_a','2023-04-01','Protein folding','Running',43200.5),
('sim_002','QM','Gaussian','16.0','/inputs/qm1.com','/outputs/qm1',2000,0.5,298.0,1.0,'NVE',54321,0,4,2,8.0,'user_b','2023-04-05','Reaction barrier','Completed',7200.0),
('sim_003','MD','AMBER','20.0','/inputs/sim2.in','/outputs/sim2',750000,1.5,310.0,1.0,'NPT',11111,1,12,6,24.0,'user_c','2023-04-10','Lipid bilayer','Queued',0.0);

-- Material property reference table
CREATE TABLE material_property_reference (
  material_id TEXT PRIMARY KEY,
  material_name TEXT,
  formula TEXT,
  density_g_cm3 REAL,
  melting_point_c REAL,
  boiling_point_c REAL,
  band_gap_ev REAL,
  refractive_index REAL,
  hardness_gpa REAL,
  thermal_conductivity_w_mk REAL,
  electrical_conductivity_s_m REAL,
  dielectric_constant REAL,
  toxicity_class TEXT,
  storage_condition TEXT,
  supplier_id TEXT,
  catalog_number TEXT,
  last_updated TEXT,
  verified_by TEXT,
  data_source TEXT,
  notes TEXT
);

INSERT INTO material_property_reference VALUES
('mat_001','Silicon','Si',2.33,1414,3510,1.12,3.48,12.0,149.0,0.0,11.7,'III','Dry room','sup_01','CAT123','2023-03-15','tech_x','Handbook','Standard wafer material'),
('mat_002','Gold','Au',19.32,1064,2856,0.0,0.47,120.0,318.0,4.1e7,1.0,'I','Vacuum sealed','sup_02','GOLD001','2023-03-20','tech_y','Database','High purity gold'),
('mat_003','Polystyrene','C8H8',1.05,240,250,2.9,1.59,0.03,0.13,1e-14,2.5,'II','Room temperature','sup_03','PS001','2023-03-25','tech_z','MaterialSheet','Common polymer');

-- Equipment utilization log
CREATE TABLE equipment_utilization_log (
  log_id TEXT PRIMARY KEY,
  equipment_id TEXT,
  user_id TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  purpose TEXT,
  lab_area TEXT,
  safety_checks_passed INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  power_consumption_kw REAL,
  notes TEXT,
  maintenance_flag INTEGER,
  location_code TEXT,
  shift TEXT,
  job_code TEXT,
  project_id TEXT,
  cost_center TEXT,
  created_at TEXT,
  updated_at TEXT,
  approval_status TEXT
);

INSERT INTO equipment_utilization_log VALUES
('log_001','eq_1001','user_01','2023-06-01 08:00:00','2023-06-01 12:00:00','Synthesis','ChemLabA',1,22.5,40.0,2.3','First run of batch','0','LOC_A','Day','JOB001','proj_01','CC100','2023-06-01 08:05:00','2023-06-01 12:10:00','Approved'),
('log_002','eq_1002','user_02','2023-06-02 13:30:00','2023-06-02 15:45:00','Analysis','AnalyticalB',1,21.0,38.5,1.1','Routine calibration','0','LOC_B','Evening','JOB002','proj_02','CC200','2023-06-02 13:35:00','2023-06-02 15:50:00','Approved'),
('log_003','eq_1003','user_03','2023-06-03 22:00:00','2023-06-04 02:30:00','Night run','ChemLabC',0,23.0,45.0,2.8','Safety check failed','1','LOC_C','Night','JOB003','proj_03','CC300','2023-06-03 22:05:00','2023-06-04 02:35:00','Pending');

-- Reagent preparation batch records
CREATE TABLE reagent_preparation_batch (
  batch_id TEXT PRIMARY KEY,
  reagent_name TEXT,
  batch_number TEXT,
  preparation_date TEXT,
  expiry_date TEXT,
  concentration_mg_ml REAL,
  solvent TEXT,
  volume_ml REAL,
  pH REAL,
  temperature_c REAL,
  technician_id TEXT,
  lot_number TEXT,
  purity_percent REAL,
  storage_location TEXT,
  safety_level TEXT,
  approval_status TEXT,
  qc_passed INTEGER,
  qc_report_path TEXT,
  notes TEXT,
  created_by TEXT,
  last_modified TEXT
);

INSERT INTO reagent_preparation_batch VALUES
('rb_001','Sodium Chloride','BN001','2023-05-10','2025-05-10',10.0,'Water',500,7.0,22.0,'tech_01','LOT123',99.5,'Shelf_A','Low','Approved',1,'/qc/rb_001.pdf','Standard buffer','user_admin','2023-05-10 09:00:00'),
('rb_002','Acetone','BN002','2023-05-15','2024-05-15',5.0,'Acetone',250,5.5,20.0,'tech_02','LOT124',98.0,'Shelf_B','Medium','Pending',0,'/qc/rb_002.pdf','Used for extraction','user_admin','2023-05-15 10:30:00'),
('rb_003','Ethanol','BN003','2023-05-20','2024-05-20',20.0,'Water',1000,6.5,21.5,'tech_03','LOT125',97.5,'Shelf_C','Low','Approved',1,'/qc/rb_003.pdf','High purity grade','user_admin','2023-05-20 08:45:00');

-- Environmental monitoring station registry
CREATE TABLE environmental_monitoring_station (
  station_id TEXT PRIMARY KEY,
  station_name TEXT,
  latitude REAL,
  longitude REAL,
  elevation_m REAL,
  installed_date TEXT,
  sensor_type TEXT,
  firmware_version TEXT,
  calibration_date TEXT,
  status TEXT,
  last_maintenance_date TEXT,
  data_endpoint TEXT,
  owner_department TEXT,
  power_source TEXT,
  communication_protocol TEXT,
  battery_level_percent INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  co2_ppm REAL,
  pm2_5_ug_m3 REAL,
  notes TEXT
);

INSERT INTO environmental_monitoring_station VALUES
('env_sta_001','Station_A','34.0522','-118.2437','100','2022-01-15','Multi','v1.2','2023-03-10','Active','2023-05-20','/data/env/sta001','Facilities','Mains','WiFi',95,22.5,40.0,420,12.5,'Main campus north side'),
('env_sta_002','Station_B','40.7128','-74.0060','5','2022-06-20','AirQuality','v1.3','2023-04-12','Active','2023-05-22','/data/env/sta002','Research','Solar','LTE',88,21.0,38.0,380,15.0,'Downtown rooftop'),
('env_sta_003','Station_C','37.7749','-122.4194','30','2023-02-10','Multi','v1.1','2023-05-01','Inactive','2023-05-15','/data/env/sta003','Engineering','Battery','LoRa',60,23.0,45.0,500,20.0','West wing annex');

-- Computational cluster node inventory
CREATE TABLE computational_cluster_node (
  node_id TEXT PRIMARY KEY,
  hostname TEXT,
  ip_address TEXT,
  cpu_model TEXT,
  cpu_cores INTEGER,
  gpu_model TEXT,
  gpu_count INTEGER,
  memory_gb REAL,
  storage_tb REAL,
  os_version TEXT,
  rack_location TEXT,
  power_supply_kw REAL,
  network_bandwidth_gbps REAL,
  status TEXT,
  last_boot_timestamp TEXT,
  maintenance_window TEXT,
  installed_date TEXT,
  decommission_date TEXT,
  owner_team TEXT,
  notes TEXT,
  virtualization_enabled INTEGER
);

INSERT INTO computational_cluster_node VALUES
('node_001','clust01','10.0.0.1','Intel Xeon E5-2690','24','Nvidia Tesla V100','2',256,8,'CentOS 7','Rack_12','1.2','40','Active','2023-06-01 08:00:00','Sundays 02:00-04:00','2021-01-15','','ComputeTeamA','Primary GPU node',1),
('node_002','clust02','10.0.0.2','AMD EPYC 7742','64','Nvidia Tesla T4','4',512,12,'Ubuntu 20.04','Rack_13','1.5','100','Active','2023-06-02 07:45:00','Sundays 02:00-04:00','2021-02-20','','ComputeTeamB','High‑memory node',1),
('node_003','clust03','10.0.0.3','Intel Xeon Gold 6148','32','None','0',128,4,'Rocky Linux 8','Rack_14','1.0','10','Inactive','2023-01-10 12:00:00','None','2020-12-01','2023-05-31','ComputeTeamC','Legacy CPU‑only node',0);

-- Waste disposal certificates
CREATE TABLE waste_disposal_certificate (
  cert_id TEXT PRIMARY KEY,
  waste_type TEXT,
  disposal_method TEXT,
  carrier_company TEXT,
  pickup_date TEXT,
  manifest_number TEXT,
  disposal_facility TEXT,
  disposal_date TEXT,
  authorized_by TEXT,
  compliance_status TEXT,
  volume_liters REAL,
  weight_kg REAL,
  temperature_c REAL,
  notes TEXT,
  received_by TEXT,
  verification_timestamp TEXT,
  regulatory_body TEXT,
  certificate_file_path TEXT,
  renewal_required INTEGER,
  created_at TEXT
);

INSERT INTO waste_disposal_certificate VALUES
('cert_001','Organic Solvent','Incineration','CleanTrans','2023-05-01','MAN123','CityIncinerator','2023-05-02','mgr_01','Compliant',150.0,200.0,25.0,'Standard disposal','recv_01','2023-05-02 10:00:00','EPA','/certs/cert_001.pdf',0,'2023-05-01 09:00:00'),
('cert_002','Heavy Metal','Landfill','SafeHaul','2023-05-10','MAN124','CountyLandfill','2023-05-11','mgr_02','Compliant',80.0,120.0,22.0,'Special handling required','recv_02','2023-05-11 11:30:00','EPA','/certs/cert_002.pdf',1,'2023-05-10 08:45:00'),
('cert_003','Biohazard Waste','Autoclave','BioTrans','2023-05-15','MAN125','BioSafeFacility','2023-05-16','mgr_03','Compliant',30.0,45.0,20.0,'Handled by trained staff','recv_03','2023-05-16 09:15:00','CDC','/certs/cert_003.pdf',0,'2023-05-15 07:30:00');

-- Regulatory compliance documents
CREATE TABLE regulatory_compliance_document (
  doc_id TEXT PRIMARY KEY,
  regulation_name TEXT,
  version TEXT,
  effective_date TEXT,
  expiration_date TEXT,
  issuing_agency TEXT,
  document_type TEXT,
  department_responsible TEXT,
  review_cycle_months INTEGER,
  last_review_date TEXT,
  next_review_date TEXT,
  status TEXT,
  compliance_score REAL,
  auditor_name TEXT,
  audit_date TEXT,
  file_path TEXT,
  comments TEXT,
  approved_by TEXT,
  approval_date TEXT,
  created_by TEXT,
  created_at TEXT
);

INSERT INTO regulatory_compliance_document VALUES
('doc_001','OSHA Hazard Communication','2022','2022-01-01','2025-01-01','OSHA','Policy','Safety','12','2023-01-10','2024-01-10','Active',95.0,'aud_01','2023-01-12','/docs/doc_001.pdf','No issues','mgr_01','2023-01-13','admin','2022-12-15 08:00:00'),
('doc_002','EPA Waste Management','2021','2021-06-15','2024-06-15','EPA','Procedure','Environmental','24','2022-06-20','2024-06-20','Active',88.5,'aud_02','2022-06-22','/docs/doc_002.pdf','Minor updates needed','mgr_02','2022-06-23','admin','2021-06-10 09:30:00'),
('doc_003','FDA Good Laboratory Practice','2023','2023-03-01','2026-03-01','FDA','Standard','Quality Assurance','12','2023-03-05','2024-03-05','Draft',72.0,'aud_03','2023-03-07','/docs/doc_003.pdf','Pending review','mgr_03','2023-03-08','admin','2023-02-28 10:15:00');