-- Spectral peak annotation details
CREATE TABLE spectral_peak_annotation (
  annotation_id TEXT NOT NULL,
  peak_id TEXT,
  wavelength_nm REAL,
  intensity REAL,
  relative_intensity REAL,
  detector_id TEXT,
  acquisition_date TEXT,
  method TEXT,
  sample_id TEXT,
  compound_id TEXT,
  user_id TEXT,
  lab_section TEXT,
  comment TEXT,
  calibration_version TEXT,
  signal_to_noise REAL,
  baseline REAL,
  peak_shape TEXT,
  resolution REAL,
  integration_time_ms INTEGER,
  validation_status TEXT,
  PRIMARY KEY (annotation_id)
);
INSERT INTO spectral_peak_annotation VALUES ('ANN001','PK001',280.5,1200.3,0.95,'DET01','2023-05-10','UV-Vis','SMP001','CMP001','USR01','SectionA','Initial annotation','CALV1',45.2,0.5,'Gaussian',0.8,150,'Pending');
INSERT INTO spectral_peak_annotation VALUES ('ANN002','PK002',315.2,850.7,0.78,'DET02','2023-06-12','Fluorescence','SMP002','CMP002','USR02','SectionB','Reviewed','CALV2',38.1,0.3,'Lorentzian',0.6,200,'Approved');
INSERT INTO spectral_peak_annotation VALUES ('ANN003','PK003',450.0,2300.0,1.00,'DET03','2023-07-01','IR','SMP003','CMP003','USR03','SectionC','Finalized','CALV3',60.0,0.2,'Voigt',1.0,180,'Verified');

-- Reaction energy profile per step
CREATE TABLE reaction_energy_profile (
  profile_id TEXT NOT NULL,
  reaction_id TEXT,
  step_number INTEGER,
  energy_kj_mol REAL,
  enthalpy_change REAL,
  entropy_change REAL,
  free_energy REAL,
  temperature_k REAL,
  pressure_atm REAL,
  catalyst_id TEXT,
  solvent_id TEXT,
  duration_s REAL,
  yield_percent REAL,
  side_product_id TEXT,
  measurement_method TEXT,
  instrument_id TEXT,
  analyst_id TEXT,
  notes TEXT,
  data_quality_flag TEXT,
  approved_by TEXT,
  PRIMARY KEY (profile_id)
);
INSERT INTO reaction_energy_profile VALUES ('PROF001','RXN001',1,-120.5,-115.0,-10.2,-125.0,298,1.0,'CAT01','SOL01',3600,85.0,'SP001','Calorimetry','INST01','ANL01','First step','Good','MGR01');
INSERT INTO reaction_energy_profile VALUES ('PROF002','RXN001',2,-80.3,-78.0,-5.5,-83.5,310,1.0,'CAT01','SOL01',5400,78.0,'SP002','Calorimetry','INST02','ANL02','Second step','Good','MGR01');
INSERT INTO reaction_energy_profile VALUES ('PROF003','RXN002',1,-150.0,-148.0,-12.0,-160.0,295,0.95,'CAT02','SOL02',7200,92.0,'SP003','Spectroscopy','INST03','ANL03','Single step reaction','Excellent','MGR02');

-- Molecular mechanics parameters for force field calculations
CREATE TABLE molecular_mechanics_parameter (
  param_id TEXT NOT NULL,
  molecule_id TEXT,
  force_field TEXT,
  bond_constant REAL,
  angle_constant REAL,
  dihedral_constant REAL,
  improper_constant REAL,
  van_der_waals_epsilon REAL,
  van_der_waals_sigma REAL,
  partial_charge_method TEXT,
  charge_scale_factor REAL,
  dielectric_constant REAL,
  scaling_factor REAL,
  version TEXT,
  generated_by TEXT,
  generation_date TEXT,
  validation_status TEXT,
  comments TEXT,
  reference_id TEXT,
  last_modified TEXT,
  PRIMARY KEY (param_id)
);
INSERT INTO molecular_mechanics_parameter VALUES ('PAR001','MOL001','MMFF94',340.0,55.0,2.0,1.5,0.2,3.5,'MK','1.0',78.5,0.9','v1','USR04','2023-04-15','Validated','Parameter set for organic molecule','REF001','2023-04-20');
INSERT INTO molecular_mechanics_parameter VALUES ('PAR002','MOL002','OPLS-AA',310.0,50.0,1.8,1.2,0.15,3.2,'ESP','0.95',80.0,0.85','v2','USR05','2023-05-05','Pending','Initial parameters for peptide','REF002','2023-05-07');
INSERT INTO molecular_mechanics_parameter VALUES ('PAR003','MOL003','CHARMM36',360.0,60.0,2.2,1.6,0.25,3.8,'Mulliken','1.05',77.0,0.92','v3','USR06','2023-06-01','Validated','Parameters for lipid molecule','REF003','2023-06-03');

-- Regulatory status of chemical compounds per jurisdiction
CREATE TABLE compound_regulatory_status (
  status_id TEXT NOT NULL,
  compound_id TEXT,
  jurisdiction TEXT,
  regulatory_body TEXT,
  status TEXT,
  decision_date TEXT,
  review_cycle_years INTEGER,
  docket_number TEXT,
  compliance_deadline TEXT,
  risk_category TEXT,
  safety_class TEXT,
  last_audit_date TEXT,
  responsible_officer TEXT,
  notes TEXT,
  amendment_number INTEGER,
  amendment_date TEXT,
  chemical_category TEXT,
  status_history TEXT,
  public_notice_flag TEXT,
  archive_flag TEXT,
  PRIMARY KEY (status_id)
);
INSERT INTO compound_regulatory_status VALUES ('STAT001','CMP001','EU','ECHA','Approved','2022-12-01',5,'DCK1001','2025-12-01','Low','ClassA','2023-01-15','OFF001','No issues','1','2023-01-20','Organic','Approved->Monitored','Yes','No');
INSERT INTO compound_regulatory_status VALUES ('STAT002','CMP002','US','EPA','Pending','2023-03-10',3,'DCK2002','2026-03-10','Medium','ClassB','2023-04-01','OFF002','Additional data required','0','1970-01-01','Inorganic','Pending','No','No');
INSERT INTO compound_regulatory_status VALUES ('STAT003','CMP003','CN','MEP','Rejected','2022-08-20',4,'DCK3003','2026-08-20','High','ClassC','2022-09-05','OFF003','Safety concerns','2','2023-02-14','Polymer','Rejected','No','Yes');

-- Lab airflow zone configuration parameters
CREATE TABLE lab_airflow_zone_config (
  zone_id TEXT NOT NULL,
  zone_name TEXT,
  floor INTEGER,
  building TEXT,
  airflow_rate_cfm REAL,
  pressure_difference_pa REAL,
  temperature_c REAL,
  humidity_percent REAL,
  filter_type TEXT,
  filter_efficiency_percent REAL,
  fan_speed_rpm INTEGER,
  maintenance_interval_days INTEGER,
  last_maintenance_date TEXT,
  next_maintenance_date TEXT,
  control_system_id TEXT,
  sensor_id TEXT,
  alarm_threshold_pa REAL,
  occupancy_limit INTEGER,
  certification_status TEXT,
  comments TEXT,
  PRIMARY KEY (zone_id)
);
INSERT INTO lab_airflow_zone_config VALUES ('ZONE01','Cleanroom1',1,'Main','1500.0','5.0','22.0','45.0','HEPA','99.97','1800','180','2023-02-10','2023-08-10','CTRL01','SNS01','6.0','20','Certified','Routine check completed');
INSERT INTO lab_airflow_zone_config VALUES ('ZONE02','SafetyLab',2,'Annex','1200.0','3.5','20.0','50.0','ULPA','99.99','1500','150','2023-01-05','2023-07-05','CTRL02','SNS02','5.0','15','Certified','Filters replaced Jan 2023');
INSERT INTO lab_airflow_zone_config VALUES ('ZONE03','GeneralArea',1,'Main','800.0','2.0','21.0','55.0','MERV13','99.5','1300','365','2022-12-20','2023-12-20','CTRL03','SNS03','4.0','30','Pending','Pending certification');

-- Remote access log for instruments
CREATE TABLE instrument_remote_access_log (
  access_id TEXT NOT NULL,
  instrument_id TEXT,
  user_id TEXT,
  remote_ip TEXT,
  access_start_ts TEXT,
  access_end_ts TEXT,
  protocol TEXT,
  session_id TEXT,
  data_transferred_mb REAL,
  actions_performed TEXT,
  auth_method TEXT,
  success_flag TEXT,
  failure_reason TEXT,
  vpn_used TEXT,
  encryption_level TEXT,
  bandwidth_mbps REAL,
  latency_ms REAL,
  notes TEXT,
  admin_approval_id TEXT,
  audit_timestamp TEXT,
  PRIMARY KEY (access_id)
);
INSERT INTO instrument_remote_access_log VALUES ('ACC001','INST01','USR10','192.168.10.5','2023-06-01 09:15:00','2023-06-01 10:45:00','SSH','SID001','250.5','Data extraction','Password','Yes','','Yes','AES-256','100.0','15','No issues','ADM01','2023-06-01 10:46:00');
INSERT INTO instrument_remote_access_log VALUES ('ACC002','INST02','USR11','192.168.10.6','2023-06-02 14:00:00','2023-06-02 14:30:00','RDP','SID002','120.0','Parameter upload','Certificate','Yes','','Yes','AES-128','80.0','20','Upload successful','ADM02','2023-06-02 14:31:00');
INSERT INTO instrument_remote_access_log VALUES ('ACC003','INST03','USR12','192.168.10.7','2023-06-03 11:20:00','2023-06-03 11:45:00','VPN','SID003','0','Login attempt','Password','No','Invalid credentials','Yes','AES-256','50.0','30','Authentication failed','ADM03','2023-06-03 11:46:00');

-- Quality control records for chemical batches
CREATE TABLE chemical_batch_quality_control (
  qc_id TEXT NOT NULL,
  batch_id TEXT,
  assay_type TEXT,
  result_value REAL,
  result_unit TEXT,
  acceptance_criteria TEXT,
  passed_flag TEXT,
  analyst_id TEXT,
  qc_date TEXT,
  instrument_id TEXT,
  lot_number TEXT,
  deviation_note TEXT,
  corrective_action_id TEXT,
  retest_needed_flag TEXT,
  retest_date TEXT,
  reviewer_id TEXT,
  review_comments TEXT,
  stability_point TEXT,
  temperature_recorded_c REAL,
  humidity_recorded_percent REAL,
  archive_location TEXT,
  PRIMARY KEY (qc_id)
);
INSERT INTO chemical_batch_quality_control VALUES ('QC001','BCH001','Purity','99.5','%','>=99','Yes','ANL04','2023-05-20','INST04','LOT001','','','No','1970-01-01','RVW01','All criteria met','Stable','22.0','40.0','/archive/qc001');
INSERT INTO chemical_batch_quality_control VALUES ('QC002','BCH002','Moisture','0.8','%','<=1','Yes','ANL05','2023-05-22','INST05','LOT002','Minor deviation','CA001','No','1970-01-01','RVW02','Within limits','Stable','21.5','42.0','/archive/qc002');
INSERT INTO chemical_batch_quality_control VALUES ('QC003','BCH003','pH','6.2','units','6.0-7.0','Yes','ANL06','2023-05-25','INST06','LOT003','Out of spec initial','CA002','Yes','2023-06-01','RVW03','Re‑tested, now within spec','Stable','23.0','38.0','/archive/qc003');

-- Production schedule for nanomaterial batches
CREATE TABLE nanomaterial_production_schedule (
  schedule_id TEXT NOT NULL,
  production_line_id TEXT,
  batch_id TEXT,
  planned_start_dt TEXT,
  planned_end_dt TEXT,
  actual_start_dt TEXT,
  actual_end_dt TEXT,
  operator_id TEXT,
  supervisor_id TEXT,
  target_yield_percent REAL,
  actual_yield_percent REAL,
  material_type TEXT,
  safety_reviewed_flag TEXT,
  hazard_assessment_id TEXT,
  equipment_id TEXT,
  maintenance_window_flag TEXT,
  shift TEXT,
  notes TEXT,
  priority_level INTEGER,
  change_order_number TEXT,
  status TEXT,
  PRIMARY KEY (schedule_id)
);
INSERT INTO nanomaterial_production_schedule VALUES ('SCH001','LINE01','NB001','2023-07-01 08:00','2023-07-02 18:00','2023-07-01 08:15','2023-07-02 18:20','OP001','SUP001','98.0','97.5','CarbonNanotube','Yes','HA001','EQ001','No','Day','On schedule',1,'CO001','Completed');
INSERT INTO nanomaterial_production_schedule VALUES ('SCH002','LINE02','NB002','2023-07-05 07:00','2023-07-06 17:00','2023-07-05 07:05','2023-07-06 17:10','OP002','SUP002','95.0','94.0','SilicaNanoparticle','Yes','HA002','EQ002','No','Night','Minor delay due to equipment check',2,'CO002','Completed');
INSERT INTO nanomaterial_production_schedule VALUES ('SCH003','LINE01','NB003','2023-07-10 09:00','2023-07-11 19:00','2023-07-10 09:30','2023-07-11 19:45','OP003','SUP003','99.0','98.8','Graphene','Yes','HA003','EQ003','Yes','Day','Maintenance window overlapped, extended time',1,'CO003','Delayed');

-- Computational simulation environment specifications
CREATE TABLE computational_simulation_environment (
  env_id TEXT NOT NULL,
  simulation_id TEXT,
  cpu_cores INTEGER,
  gpu_count INTEGER,
  memory_gb REAL,
  os_version TEXT,
  compiler_version TEXT,
  mpi_version TEXT,
  scheduler TEXT,
  queue_name TEXT,
  runtime_limit_hr REAL,
  storage_gb REAL,
  software_module_list TEXT,
  env_variables TEXT,
  container_image TEXT,
  created_by TEXT,
  creation_ts TEXT,
  last_modified_by TEXT,
  last_modified_ts TEXT,
  validation_status TEXT,
  PRIMARY KEY (env_id)
);
INSERT INTO computational_simulation_environment VALUES ('ENV001','SIM001',32,2,256.0,'Ubuntu20.04','GCC9.3','OpenMPI4.0','SLURM','high_mem',48.0,2000,'GROMACS,PLUMED','OMP_NUM_THREADS=32','docker://gmx:2023','USR13','2023-04-01 10:00:00','USR14','2023-04-15 12:30:00','Validated');
INSERT INTO computational_simulation_environment VALUES ('ENV002','SIM002',64,4,512.0,'CentOS7','GCC10.2','MPICH3.3','PBS','gpu',72.0,5000,'LAMMPS,CP2K','OMP_NUM_THREADS=64','docker://lammps:2023','USR15','2023-05-10 09:30:00','USR16','2023-05-20 14:45:00','Pending');
INSERT INTO computational_simulation_environment VALUES ('ENV003','SIM003',16,0,128.0,'Debian11','GCC8.4','OpenMPI3.1','SLURM','short',12.0,800,'NAMD','OMP_NUM_THREADS=16','docker://namd:2023','USR17','2023-06-01 08:15:00','USR18','2023-06-05 11:20:00','Validated');

-- Research project collaboration matrix
CREATE TABLE research_project_collaboration_matrix (
  matrix_id TEXT NOT NULL,
  project_id TEXT,
  institution_id TEXT,
  principal_investigator TEXT,
  collaboration_role TEXT,
  start_date TEXT,
  end_date TEXT,
  funding_amount_usd REAL,
  funding_source TEXT,
  data_sharing_agreement TEXT,
  ip_rights TEXT,
  joint_publication_count INTEGER,
  contact_email TEXT,
  phone_number TEXT,
  status TEXT,
  review_date TEXT,
  next_review_date TEXT,
  notes TEXT,
  compliance_flag TEXT,
  archive_path TEXT,
  PRIMARY KEY (matrix_id)
);
INSERT INTO research_project_collaboration_matrix VALUES ('MX001','PRJ001','INST01','DrSmith','Lead','2022-01-01','2025-12-31','1500000','NationalScienceFund','Yes','Shared','8','drsmith@inst01.edu','555-0100','Active','2023-06-01','2024-06-01','Monthly coordination meetings','Yes','/archive/mx001');
INSERT INTO research_project_collaboration_matrix VALUES ('MX002','PRJ002','INST02','DrLee','Partner','2021-03-15','2024-03-14','800000','IndustryPartner','No','Institutional','3','drlee@inst02.edu','555-0200','Active','2023-05-15','2024-05-15','Quarterly progress reports','Yes','/archive/mx002');
INSERT INTO research_project_collaboration_matrix VALUES ('MX003','PRJ003','INST03','DrPatel','Consultant','2023-07-01','2026-06-30','500000','InternationalGrant','Yes','Joint','0','drpatel@inst03.edu','555-0300','Planned','2023-08-01','2024-08-01','Initial planning stage','No','/archive/mx003');