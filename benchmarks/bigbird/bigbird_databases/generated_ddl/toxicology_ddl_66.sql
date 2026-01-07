-- Molecular geometry details
CREATE TABLE molecular_geometry (
  geometry_id TEXT PRIMARY KEY,
  molecule_id TEXT,
  method TEXT,
  basis_set TEXT,
  energy REAL,
  dipole_moment REAL,
  polarizability REAL,
  symmetry TEXT,
  point_group TEXT,
  geometry_type TEXT,
  optimization_status TEXT,
  rms_gradient REAL,
  max_force REAL,
  scf_convergence INTEGER,
  cartesian_coordinates TEXT,
  z_matrix TEXT,
  calculation_time_seconds INTEGER,
  memory_usage_mb INTEGER,
  cpu_cores INTEGER,
  software_version TEXT,
  notes TEXT,
  submitted_by TEXT
);

INSERT INTO molecular_geometry VALUES
('geom001','molA','DFT','6-31G','-150.23','1.23','12.5','C1','Cs','optimized','converged',0.001,0.005,8,'coords1','zmat1','120','2048','8','Gaussian16','initial run','alice');
INSERT INTO molecular_geometry VALUES
('geom002','molB','MP2','cc-pVTZ','-200.45','0.98','14.2','C2v','C2v','frequency','converged',0.0008,0.004,10,'coords2','zmat2','180','4096','12','ORCA5','second iteration','bob');
INSERT INTO molecular_geometry VALUES
('geom003','molC','HF','STO-3G','-120.78','2.01','10.0','D3h','D3h','single_point','n/a',0.0,0.0,6,'coords3','zmat3','90','1024','4','Psi4','quick check','carol');

-- Reaction equilibrium data
CREATE TABLE reaction_equilibrium_data (
  equilibrium_id TEXT PRIMARY KEY,
  reaction_id TEXT,
  temperature_k REAL,
  pressure_atm REAL,
  equilibrium_constant REAL,
  delta_g REAL,
  delta_h REAL,
  delta_s REAL,
  reactant_conc_initial REAL,
  product_conc_initial REAL,
  reactant_conc_eq REAL,
  product_conc_eq REAL,
  extent_of_reaction REAL,
  solvent TEXT,
  catalyst TEXT,
  ionic_strength REAL,
  pH REAL,
  measurement_method TEXT,
  instrument_id TEXT,
  analyst TEXT,
  notes TEXT,
  recorded_at TEXT
);

INSERT INTO reaction_equilibrium_data VALUES
('eq001','rxnA','298.15','1.0','5.6','-12.3','-20.0','-0.056','0.1','0.0','0.08','0.04','0.5','water','catX','0.1','7.0','spectrophotometry','inst01','dave','first run','2025-03-15');
INSERT INTO reaction_equilibrium_data VALUES
('eq002','rxnB','310.00','0.8','2.3','-8.5','-15.2','-0.022','0.2','0.0','0.15','0.05','0.375','methanol','catY','0.05','6.5','titration','inst02','eva','repeat','2025-04-01');
INSERT INTO reaction_equilibrium_data VALUES
('eq003','rxnC','280.00','1.2','10.1','-18.0','-30.0','-0.045','0.05','0.0','0.045','0.005','0.9','acetonitrile','none','0.2','8.0','calorimetry','inst03','frank','high temp','2025-04-20');

-- Isotope decay record
CREATE TABLE isotope_decay_record (
  decay_id TEXT PRIMARY KEY,
  isotope TEXT,
  half_life_seconds REAL,
  decay_mode TEXT,
  decay_energy_keV REAL,
  sample_id TEXT,
  activity_bq REAL,
  measurement_date TEXT,
  detector_type TEXT,
  background_bq REAL,
  geometry TEXT,
  source_purity REAL,
  lab_location TEXT,
  technician TEXT,
  calibration_factor REAL,
  temperature_c REAL,
  humidity_percent REAL,
  notes TEXT,
  verified_by TEXT,
  verification_date TEXT,
  data_quality TEXT,
  instrument_id TEXT
);

INSERT INTO isotope_decay_record VALUES
('dec001','C14','5730*365*24*3600','beta','156','sampA','5000','2025-02-10','liquid_scintillation','10','vial','0.99','lab1','gina','1.02','22','45','baseline','henry','2025-02-12','good','det01');
INSERT INTO isotope_decay_record VALUES
('dec002','I131','8*24*3600','beta','971','sampB','20000','2025-03-05','gamma_spectrometer','15','petri','0.95','lab2','ivan','0.98','20','40','post-irradiation','jane','2025-03-07','moderate','det02');
INSERT INTO isotope_decay_record VALUES
('dec003','U238','4.468e9*365*24*3600','alpha','4190','sampC','300','2025-01-20','alpha_counter','5','solid','0.98','lab3','karl','1.00','18','50','long term','lisa','2025-01-22','excellent','det03');

-- Nanomaterial surface analysis
CREATE TABLE nanomaterial_surface_analysis (
  analysis_id TEXT PRIMARY KEY,
  nanomaterial_id TEXT,
  technique TEXT,
  surface_area_m2_g REAL,
  pore_volume_cm3_g REAL,
  average_pore_diameter_nm REAL,
  composition_percent TEXT,
  functional_groups TEXT,
  measurement_temperature_c REAL,
  measurement_pressure_atm REAL,
  instrument_id TEXT,
  operator TEXT,
  calibration_date TEXT,
  scan_rate_mV_s REAL,
  resolution_nm REAL,
  background_subtraction BOOLEAN,
  analysis_date TEXT,
  notes TEXT,
  data_file_path TEXT,
  verification_status TEXT,
  approved_by TEXT,
  quality_flag TEXT,
  sample_preparation TEXT
);

INSERT INTO nanomaterial_surface_analysis VALUES
('na001','nanoA','BET','350','0.8','2.5','SiO2:80;C:20','hydroxyl','25','1','instA','mia','2025-01-10','0.5','0.1','true','2025-01-12','clean sample','/data/na001.csv','approved','omar','pass','degassed');
INSERT INTO nanomaterial_surface_analysis VALUES
('na002','nanoB','BJH','120','0.4','1.8','Al2O3:70;SiO2:30','carboxyl','30','0.9','instB','nina','2025-02-15','0.7','0.08','false','2025-02-18','pre‑treated','/data/na002.csv','pending','peter','review','ultrasonicated');
INSERT INTO nanomaterial_surface_analysis VALUES
('na003','nanoC','TEM','N/A','N/A','N/A','Fe2O3:100','none','20','1','instC','oliver','2025-03-05','N/A','0.05','false','2025-03-07','no coating','/data/na003.csv','approved','quinn','pass','dryed');

-- Crystallography experiment
CREATE TABLE crystallography_experiment (
  experiment_id TEXT PRIMARY KEY,
  crystal_id TEXT,
  space_group TEXT,
  unit_cell_a REAL,
  unit_cell_b REAL,
  unit_cell_c REAL,
  alpha REAL,
  beta REAL,
  gamma REAL,
  wavelength_angstrom REAL,
  detector_type TEXT,
  temperature_k REAL,
  data_collection_time_min INTEGER,
  frames_collected INTEGER,
  resolution_limit_angstrom REAL,
  completeness_percent REAL,
  r_merge REAL,
  i_over_sigma REAL,
  refinement_method TEXT,
  software TEXT,
  operator TEXT,
  notes TEXT,
  submission_date TEXT,
  status TEXT,
  data_file_path TEXT,
  publication_ref TEXT
);

INSERT INTO crystallography_experiment VALUES
('cryst001','cryA','P212121','10.2','12.3','14.5','90','90','90','0.979','pixel','100','45','1800','1.8','95','0.07','20','full_matrix','SHELX','alice','first dataset','2025-02-01','submitted','/cryst/cryst001.mtz','doi10.1234/abc');
INSERT INTO crystallography_experiment VALUES
('cryst002','cryB','C2/c','8.5','8.5','15.0','90','90','120','1.5418','pilatus','150','60','2400','2.0','98','0.05','25','refinement','PHENIX','bob','high symmetry','2025-03-10','approved','/cryst/cryst002.mtz','doi10.5678/def');
INSERT INTO crystallography_experiment VALUES
('cryst003','cryC','Fddd','20.0','20.0','20.0','90','90','90','0.71073','eiger','80','30','1200','1.5','92','0.09','15','phenix','CCTBX','carol','low temperature','2025-04-05','in_review','/cryst/cryst003.mtz','doi10.9012/ghi');

-- Electrochemical potential log
CREATE TABLE electrochemical_potential_log (
  log_id TEXT PRIMARY KEY,
  cell_id TEXT,
  electrode_material TEXT,
  electrolyte TEXT,
  reference_electrode TEXT,
  applied_potential_mv REAL,
  measured_current_ua REAL,
  temperature_c REAL,
  scan_rate_mv_s REAL,
  measurement_mode TEXT,
  timestamp TEXT,
  operator TEXT,
  instrument_id TEXT,
  solution_resistance_ohm REAL,
  iR_correction BOOLEAN,
  cycle_number INTEGER,
  charge_capacity_mAh_g REAL,
  discharge_capacity_mAh_g REAL,
  coulombic_efficiency_percent REAL,
  notes TEXT,
  data_file_path TEXT,
  verification_status TEXT,
  approved_by TEXT,
  quality_flag TEXT,
  analysis_software TEXT
);

INSERT INTO electrochemical_potential_log VALUES
('ecl001','cellA','Li','LiPF6_EC_DMC','Ag/AgCl','-350','500','25','0.1','chronoamperometry','2025-01-20 10:15','mike','instE','15','true','5','150','145','96.7','baseline run','/ec/ecl001.csv','approved','nancy','pass','ECLab');
INSERT INTO electrochemical_potential_log VALUES
('ecl002','cellB','Ni','KOH','Hg/HgO','-200','400','30','0.05','cyclic_voltammetry','2025-02-12 14:30','olga','instF','10','false','10','120','115','95.8','scan repeat','/ec/ecl002.csv','pending','oscar','review','VoltAnalyser');
INSERT INTO electrochemical_potential_log VALUES
('ecl003','cellC','Cu','NaCl','Ag/AgCl','-150','300','22','0.2','linear_sweep','2025-03-05 09:45','paul','instG','12','true','3','80','78','97.5','high precision','/ec/ecl003.csv','approved','quinn','pass','SweepPro');

-- Pharmacokinetic profile
CREATE TABLE pharmacokinetic_profile (
  profile_id TEXT PRIMARY KEY,
  compound_id TEXT,
  subject_id TEXT,
  dose_mg REAL,
  route TEXT,
  administration_time TEXT,
  sampling_time_hr REAL,
  plasma_conc_ng_ml REAL,
  urine_conc_ng_ml REAL,
  half_life_hr REAL,
  auc_0_inf_hr_ng_ml REAL,
  clearance_ml_min_kg REAL,
  volume_distribution_l_kg REAL,
  cmax_ng_ml REAL,
  tmax_hr REAL,
  bioavailability_percent REAL,
  metabolite_id TEXT,
  metabolite_ratio REAL,
  notes TEXT,
  analyst TEXT,
  instrument_id TEXT,
  method TEXT,
  quality_flag TEXT,
  verified_by TEXT,
  verification_date TEXT
);

INSERT INTO pharmacokinetic_profile VALUES
('pk001','cmpA','subj01','50','oral','2025-01-01 08:00','0.5','12.3','0.5','2.1','85','5','0.8','20','1','85','metA','0.4','first subject','alice','instH','LCMS','pass','bob','2025-01-03');
INSERT INTO pharmacokinetic_profile VALUES
('pk002','cmpB','subj02','100','iv','2025-01-05 09:30','1.0','45.6','1.2','1.8','210','12','1.2','60','0.8','95','metB','0.6','second subject','carol','instI','HPLC','pass','dave','2025-01-07');
INSERT INTO pharmacokinetic_profile VALUES
('pk003','cmpC','subj03','75','subcutaneous','2025-01-10 07:15','0.75','28.9','0.9','2.5','150','8','1.0','40','1.2','88','metC','0.5','third subject','eve','instJ','GCMS','review','frank','2025-01-12');

-- Computational chemistry job
CREATE TABLE computational_chemistry_job (
  job_id TEXT PRIMARY KEY,
  project_id TEXT,
  user_id TEXT,
  job_name TEXT,
  submission_timestamp TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  status TEXT,
  compute_node TEXT,
  cpu_cores INTEGER,
  gpu_count INTEGER,
  memory_gb INTEGER,
  walltime_seconds INTEGER,
  software TEXT,
  version TEXT,
  method TEXT,
  basis_set TEXT,
  charge INTEGER,
  multiplicity INTEGER,
  input_file_path TEXT,
  output_file_path TEXT,
  log_file_path TEXT,
  error_message TEXT,
  results_summary TEXT,
  approved_by TEXT,
  approval_timestamp TEXT
);

INSERT INTO computational_chemistry_job VALUES
('job001','projA','alice','opt_geom','2025-02-01 09:00','2025-02-01 09:15','2025-02-01 10:00','completed','node01','16','0','64','2700','Gaussian','16','DFT','6-31G','0','1','/jobs/job001.in','/jobs/job001.out','/jobs/job001.log','', 'optimized geometry','bob','2025-02-01 10:05');
INSERT INTO computational_chemistry_job VALUES
('job002','projB','bob','freq_calc','2025-02-05 14:00','2025-02-05 14:10','2025-02-05 15:30','completed','node03','32','1','128','4800','ORCA','5','MP2','cc-pVTZ','0','1','/jobs/job002.in','/jobs/job002.out','/jobs/job002.log','', 'frequency analysis','carol','2025-02-05 15:35');
INSERT INTO computational_chemistry_job VALUES
('job003','projC','carol','md_sim','2025-02-10 08:00','2025-02-10 08:05','2025-02-12 12:00','completed','node07','24','2','96','176400','GROMACS','2022','MD','CHARMM36','-1','1','/jobs/job003.mdp','/jobs/job003.trr','/jobs/job003.log','', 'MD trajectory','dave','2025-02-12 12:10');

-- Lab airflow simulation result
CREATE TABLE lab_airflow_simulation_result (
  sim_id TEXT PRIMARY KEY,
  simulation_name TEXT,
  model_version TEXT,
  mesh_cells INTEGER,
  solver TEXT,
  turbulence_model TEXT,
  inlet_velocity_m_s REAL,
  inlet_temperature_c REAL,
  outlet_pressure_pa REAL,
  simulation_time_seconds INTEGER,
  cpu_cores INTEGER,
  walltime_seconds INTEGER,
  convergence_residual REAL,
  max_velocity_m_s REAL,
  min_pressure_pa REAL,
  average_temperature_c REAL,
  humidity_percent REAL,
  verification_status TEXT,
  analyst TEXT,
  notes TEXT,
  result_file_path TEXT,
  visualization_file_path TEXT,
  approved_by TEXT,
  approval_date TEXT,
  quality_flag TEXT,
  ems_version TEXT
);

INSERT INTO lab_airflow_simulation_result VALUES
('sim001','vent_zone1','v1.0','500000','OpenFOAM','k-epsilon','0.5','22','101325','7200','16','3600','1e-5','0.8','100800','23','45','approved','alice','baseline','/sim/sim001.res','/sim/sim001.viz','bob','2025-03-01','pass','OpenFOAM_2022');
INSERT INTO lab_airflow_simulation_result VALUES
('sim002','vent_zone2','v1.1','750000','ANSYS Fluent','k-omega','0.7','20','101500','10800','32','5400','5e-6','1.0','100600','21','40','pending','carol','modified inlet','/sim/sim002.res','/sim/sim002.viz','dave','2025-03-05','review','Fluent_2023');
INSERT INTO lab_airflow_simulation_result VALUES
('sim003','vent_zone3','v2.0','600000','COMSOL','RNG','0.6','24','101200','14400','24','7200','2e-5','0.9','100900','22','42','approved','eve','final validation','/sim/sim003.res','/sim/sim003.viz','frank','2025-03-10','pass','COMSOL_6');

-- Chemical supply chain event
CREATE TABLE chemical_supply_chain_event (
  event_id TEXT PRIMARY KEY,
  chemical_id TEXT,
  batch_number TEXT,
  supplier_id TEXT,
  transport_mode TEXT,
  departure_date TEXT,
  arrival_date TEXT,
  carrier TEXT,
  temperature_control BOOLEAN,
  recorded_temperature_c REAL,
  humidity_percent REAL,
  customs_clearance_status TEXT,
  inspection_result TEXT,
  quantity_received_kg REAL,
  unit_price_usd_per_kg REAL,
  total_cost_usd REAL,
  receiving_lab TEXT,
  received_by TEXT,
  storage_location TEXT,
  storage_temperature_c REAL,
  storage_humidity_percent REAL,
  QC_passed BOOLEAN,
  qc_notes TEXT,
  documentation_link TEXT,
  approval_status TEXT,
  approved_by TEXT,
  approval_date TEXT
);

INSERT INTO chemical_supply_chain_event VALUES
('sc001','chemA','B001','supX','air','2025-01-10','2025-01-12','carrierA','true','5','30','cleared','passed','100','12.5','1250','lab1','gina','shelfA1','4','40','true','no issues','/docs/sc001.pdf','approved','henry','2025-01-13');
INSERT INTO chemical_supply_chain_event VALUES
('sc002','chemB','B002','supY','sea','2025-02-01','2025-02-15','carrierB','false','N/A','N/A','pending','pending','200','8.0','1600','lab2','ivan','shelfB2','25','55','false','temperature excursion','/docs/sc002.pdf','rejected','jane','2025-02-16');
INSERT INTO chemical_supply_chain_event VALUES
('sc003','chemC','B003','supZ','road','2025-03-05','2025-03-06','carrierC','true','22','45','cleared','passed','50','15.0','750','lab3','karl','shelfC3','-5','30','true','within specs','/docs/sc003.pdf','approved','lisa','2025-03-07');