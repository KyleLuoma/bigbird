-- Spectral analysis batch information
CREATE TABLE spectral_analysis_batch (
  batch_id TEXT NOT NULL PRIMARY KEY,
  instrument_id TEXT,
  operator_name TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  sample_type TEXT,
  wavelength_start REAL,
  wavelength_end REAL,
  resolution REAL,
  detector_type TEXT,
  calibration_status TEXT,
  ambient_temperature REAL,
  ambient_humidity REAL,
  data_file_path TEXT,
  notes TEXT,
  processing_software TEXT,
  software_version TEXT,
  approval_status TEXT,
  quality_flag TEXT,
  created_by TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO spectral_analysis_batch VALUES
('SAB001','SPEC01','Alice','2023-05-01 08:00:00','2023-05-01 10:15:00','Solution',200.0,800.0,0.5,'CCD','Calibrated',22.5,45.0,'/data/sa_batch1','Initial run','SpecSoft','1.2','Approved','Pass','admin','2023-05-01','2023-05-01');

INSERT INTO spectral_analysis_batch VALUES
('SAB002','SPEC02','Bob','2023-05-02 09:30:00','2023-05-02 11:45:00','Powder',400.0,900.0,0.8,'PMT','Pending',23.0,50.0,'/data/sa_batch2','Needs review','SpecSoft','1.2','Pending','Warning','tech','2023-05-02','2023-05-02');

INSERT INTO spectral_analysis_batch VALUES
('SAB003','SPEC03','Carol','2023-05-03 07:15:00','2023-05-03 09:00:00','Liquid',250.0,750.0,0.6,'InGaAs','Calibrated',21.8,40.0,'/data/sa_batch3','Completed','SpecSoft','1.3','Approved','Pass','admin','2023-05-03','2023-05-03');

-- Nanoparticle synthesis log
CREATE TABLE nanoparticle_synthesis_log (
  synthesis_id TEXT NOT NULL PRIMARY KEY,
  nanoparticle_type TEXT,
  precursor_material TEXT,
  solvent TEXT,
  concentration REAL,
  temperature_c REAL,
  reaction_time_min INTEGER,
  stirring_speed_rpm INTEGER,
  atmosphere TEXT,
  catalyst TEXT,
  batch_volume_ml REAL,
  yield_percent REAL,
  particle_size_nm REAL,
  zeta_potential_mv REAL,
  surface_functionalization TEXT,
  safety_check_passed TEXT,
  operator TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO nanoparticle_synthesis_log VALUES
('NSL001','Gold','HAuCl4','Water',0.5,80.0,30,1200,'Nitrogen','None',50.0,78.5,15.2,-25.0,'PEG2000','Yes','Alice','2023-04-10 09:00:00','2023-04-10 09:45:00','Standard protocol','2023-04-10','2023-04-10');

INSERT INTO nanoparticle_synthesis_log VALUES
('NSL002','Silver','AgNO3','Ethanol',0.3,60.0,20,900,'Argon','PVP',30.0,65.2,12.8,-30.0,'Citrate','Yes','Bob','2023-04-12 10:15:00','2023-04-12 10:50:00','Adjusted temperature','2023-04-12','2023-04-12');

INSERT INTO nanoparticle_synthesis_log VALUES
('NSL003','IronOxide','FeCl3','Water',1.0,95.0,45,1500,'Air','NaOH',100.0,82.1,8.5,-20.0,'Silane','Yes','Carol','2023-04-15 08:30:00','2023-04-15 09:40:00','Scale up batch','2023-04-15','2023-04-15');

-- Chemical process flow definition
CREATE TABLE chemical_process_flow (
  flow_id TEXT NOT NULL PRIMARY KEY,
  process_name TEXT,
  step_number INTEGER,
  step_description TEXT,
  input_material TEXT,
  input_quantity REAL,
  input_unit TEXT,
  output_material TEXT,
  output_quantity REAL,
  output_unit TEXT,
  temperature_c REAL,
  pressure_bar REAL,
  residence_time_min REAL,
  catalyst TEXT,
  pH REAL,
  agitator_speed_rpm INTEGER,
  gas_flow_rate_lpm REAL,
  reflux BOOLEAN,
  distillation BOOLEAN,
  extraction BOOLEAN,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO chemical_process_flow VALUES
('CPF001','Esterification',1,'Mix reactants','AceticAcid',100.0,'kg','Ethanol',50.0,'kg',80.0,1.0,60.0,'H2SO4',4.5,500,5.0,0,0,0,'Initial mixing','2023-03-01','2023-03-01');

INSERT INTO chemical_process_flow VALUES
('CPF002','Esterification',2,'Heat reactor','Mixture',150.0,'kg','EsterProduct',130.0,'kg',120.0,1.2,180.0,'H2SO4',5.0,700,10.0,1,0,0,'Reaction stage','2023-03-01','2023-03-01');

INSERT INTO chemical_process_flow VALUES
('CPF003','Esterification',3,'Distillate','ReactionMixture',130.0,'kg','EsterProductPurified',120.0,'kg',130.0,1.0,30.0,'None',3.0,0,0,0,1,0,'Product purification','2023-03-01','2023-03-01');

-- Laboratory airflow model
CREATE TABLE laboratory_airflow_model (
  model_id TEXT NOT NULL PRIMARY KEY,
  lab_section TEXT,
  hvac_zone TEXT,
  airflow_rate_cmh REAL,
  inlet_diameter_cm REAL,
  outlet_diameter_cm REAL,
  pressure_drop_pa REAL,
  turbulence_intensity REAL,
  temperature_c REAL,
  humidity_percent REAL,
  filter_efficiency_percent REAL,
  fan_speed_rpm INTEGER,
  duct_material TEXT,
  simulation_software TEXT,
  mesh_resolution_mm REAL,
  boundary_conditions TEXT,
  runtime_minutes REAL,
  convergence_criteria REAL,
  validation_status TEXT,
  notes TEXT,
  created_by TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO laboratory_airflow_model VALUES
('LAM001','Chemistry','ZoneA',5000.0,30.0,30.0,12.5,0.05,22.0,45.0,99.5,1500,'Aluminum','CFDSoft','5.0','NoSlip','120','1e-5','Validated','Initial model','engineer1','2023-02-15','2023-02-15');

INSERT INTO laboratory_airflow_model VALUES
('LAM002','Biology','ZoneB',3500.0,25.0,25.0,10.0,0.04,21.5,50.0,98.0,1300,'Steel','CFDSoft','4.0','VelocityInlet','90','1e-5','Pending','Preliminary run','engineer2','2023-02-20','2023-02-20');

INSERT INTO laboratory_airflow_model VALUES
('LAM003','Physics','ZoneC',6000.0,35.0,35.0,15.0,0.06,23.0,40.0,99.8,1600,'Copper','CFDSoft','6.0','PressureOutlet','150','1e-6','Validated','Final model','engineer1','2023-02-25','2023-02-25');

-- Molecular dynamics simulation metadata
CREATE TABLE molecular_dynamics_simulation (
  sim_id TEXT NOT NULL PRIMARY KEY,
  system_name TEXT,
  forcefield TEXT,
  water_model TEXT,
  box_length_angstrom REAL,
  num_atoms INTEGER,
  simulation_time_ns REAL,
  timestep_fs REAL,
  temperature_k REAL,
  pressure_bar REAL,
  ensemble TEXT,
  equilibration_time_ns REAL,
  production_time_ns REAL,
  constraints TEXT,
  electrostatics_method TEXT,
  cutoff_distance_angstrom REAL,
  gpu_enabled BOOLEAN,
  software_name TEXT,
  software_version TEXT,
  job_queue TEXT,
  submit_timestamp TEXT,
  completion_timestamp TEXT,
  notes TEXT
);

INSERT INTO molecular_dynamics_simulation VALUES
('MD001','ProteinA','CHARMM36','TIP3P',80.0,25000,100.0,2.0,300.0,1.0,'NPT',10.0,90.0,'LINCS','PME',12.0,1,'GROMACS','2023','highmem','2023-04-01 08:00:00','2023-04-10 18:00:00','Standard run');

INSERT INTO molecular_dynamics_simulation VALUES
('MD002','LipidBilayer','AMBER99SB','SPC/E',100.0,35000,200.0,2.0,310.0,1.0,'NVT',20.0,180.0,'SHAKE','PME',10.0,1,'NAMD','2.14','standard','2023-05-01 09:30:00','2023-05-15 17:45:00','Extended simulation');

INSERT INTO molecular_dynamics_simulation VALUES
('MD003','DNA_DoubleHelix','OPLS-AA','TIP4P',120.0,50000,50.0,1.0,295.0,1.0,'NPT',5.0,45.0,'None','ReactionField',14.0,0,'LAMMPS','2023.08','gpu','2023-06-01 07:15:00','2023-06-05 12:00:00','Short test');

-- Compound properties reference
CREATE TABLE compound_properties_reference (
  compound_id TEXT NOT NULL PRIMARY KEY,
  iupac_name TEXT,
  common_name TEXT,
  formula TEXT,
  molecular_weight REAL,
  exact_mass REAL,
  smiles TEXT,
  inchi TEXT,
  cas_number TEXT,
  density_g_cm3 REAL,
  melting_point_c REAL,
  boiling_point_c REAL,
  polarity TEXT,
  logp REAL,
  h_bond_donor_count INTEGER,
  h_bond_acceptor_count INTEGER,
  rotatable_bond_count INTEGER,
  topological_surface_area REAL,
  refractive_index REAL,
  flash_point_c REAL,
  solubility_water_mg_l REAL,
  hazard_class TEXT,
  storage_temperature_c REAL,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO compound_properties_reference VALUES
('CMP001','AcetylsalicylicAcid','Aspirin','C9H8O4',180.16,180.0423,'CC(=O)OC1=CC=CC=C1C(=O)O','InChI=1S/C9H8O4/c1-6(10)13-9-5-3-2-4-7(9)8(11)12/h2-5H,1H3,(H,11,12)','50-78-2',1.40,135.0,140.0,'Polar',1.2,1,3,4,63.6,1.50,85.0,350.0,'NSAID',25.0,'2023-01-10','2023-01-10');

INSERT INTO compound_properties_reference VALUES
('CMP002','N,N-Dimethyltryptamine','DMT','C12H16N2',188.27,188.1385,'CN(C)CCc1c[nH]c2c1cccc2','InChI=1S/C12H16N2/c1-13(2)9-8-10-5-3-4-6-11(10)12(14)7-9/h3-7,9,14H,8H2,1-2H3','61-50-7',0.86,0.0,250.0,'Nonpolar',2.5,0,2,5,69.8,1.53,65.0,2000.0,'Psychedelic', -20.0,'2023-01-12','2023-01-12');

INSERT INTO compound_properties_reference VALUES
('CMP003','SodiumChloride','TableSalt','NaCl',58.44,58.4428,'[Na+].[Cl-]','InChI=1S/ClH.Na/h1H;/q;+1/p-1','7647-14-5',2.16,801.0,1413.0,'Ionic', -1.0,0,0,0,0,1.54,801.0,360000.0,'Irritant',25.0,'2023-01-15','2023-01-15');

-- Reaction pathway network
CREATE TABLE reaction_pathway_network (
  pathway_id TEXT NOT NULL PRIMARY KEY,
  pathway_name TEXT,
  step_order INTEGER,
  reaction_id TEXT,
  reactant_ids TEXT,
  product_ids TEXT,
  catalyst TEXT,
  solvent TEXT,
  temperature_c REAL,
  pressure_bar REAL,
  time_min REAL,
  yield_percent REAL,
  selectivity_percent REAL,
  reaction_type TEXT,
  mechanistic_note TEXT,
  stoichiometry TEXT,
  energy_barrier_kj_mol REAL,
  rate_constant REAL,
  reference_doi TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  status TEXT
);

INSERT INTO reaction_pathway_network VALUES
('RP001','EsterSynthesis',1,'RXN001','AceticAcid+Ethanol','EthylAcetate+Water','H2SO4','Toluene',80.0,1.0,60.0,78.5,95.0,'AcidCatalyzed','Typical Fischer esterification','1:1','75.0','0.001','10.1234/abcde','Initial step','2023-03-01','2023-03-01','Completed');

INSERT INTO reaction_pathway_network VALUES
('RP001','EsterSynthesis',2,'RXN002','EthylAcetate+Methanol','MethylAcetate+Ethanol','NaOH','Methanol',65.0,1.0,45.0,82.0,92.0,'Transesterification','Base catalyzed swap','1:1','68.0','0.002','10.1234/fghij','Second step','2023-03-01','2023-03-01','Completed');

INSERT INTO reaction_pathway_network VALUES
('RP001','EsterSynthesis',3,'RXN003','MethylAcetate+Water','Methanol+AceticAcid','None','Water',25.0,1.0,30.0,90.0,99.0,'Hydrolysis','Reversible equilibrium','1:1','55.0','0.0005','10.1234/klmno','Final equilibration','2023-03-01','2023-03-01','Completed');

-- Instrument calibration curve
CREATE TABLE instrument_calibration_curve (
  curve_id TEXT NOT NULL PRIMARY KEY,
  instrument_type TEXT,
  model_number TEXT,
  calibration_date TEXT,
  analyst_name TEXT,
  standard_type TEXT,
  concentration_range_min REAL,
  concentration_range_max REAL,
  num_points INTEGER,
  regression_type TEXT,
  slope REAL,
  intercept REAL,
  r_squared REAL,
  residual_std_dev REAL,
  acceptable_error_percent REAL,
  verification_passed BOOLEAN,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  status TEXT
);

INSERT INTO instrument_calibration_curve VALUES
('ICC001','Spectrophotometer','UV2000','2023-04-15','Alice','NIST_SRM','0.1','10.0',5,'Linear',0.985,0.015,0.998,0.02,2.0,1,'Routine calibration','2023-04-15','2023-04-15','Active');

INSERT INTO instrument_calibration_curve VALUES
('ICC002','GasChromatograph','GC300','2023-04-20','Bob','CertifiedMixture','0.05','5.0',6,'Quadratic',1.02,-0.03,0.995,0.03,1.5,1,'Validated with standards','2023-04-20','2023-04-20','Active');

INSERT INTO instrument_calibration_curve VALUES
('ICC003','MassSpectrometer','MS500','2023-04-25','Carol','InternalStandard','1','100',8,'Linear',0.97,0.05,0.990,0.05,3.0,0,'Failed verification','2023-04-25','2023-04-25','Inactive');

-- Material safety data
CREATE TABLE material_safety_data (
  msds_id TEXT NOT NULL PRIMARY KEY,
  material_name TEXT,
  cas_number TEXT,
  hazard_class TEXT,
  signal_word TEXT,
  pictogram TEXT,
  precautionary_statement TEXT,
  first_aid_measures TEXT,
  firefighting_measures TEXT,
  accidental_release_measures TEXT,
  handling_storage TEXT,
  exposure_controls TEXT,
  toxicology_info TEXT,
  ecological_information TEXT,
  disposal_considerations TEXT,
  regulatory_information TEXT,
  date_of_issue TEXT,
  revision_date TEXT,
  issued_by TEXT,
  reviewed_by TEXT,
  notes TEXT
);

INSERT INTO material_safety_data VALUES
('MSDS001','Acetone','67-64-1','Flammable','Danger','Flame','Keep away from heat','Wash eyes with water','Use CO2 extinguishers','Ventilate area','Store in cool cabinet','Use gloves','Mild irritation','Harmful to aquatic life','Dispose as hazardous waste','OSHA 1910.1200','2023-01-01','2023-06-01','SafetyDept','Alice','Standard entry');

INSERT INTO material_safety_data VALUES
('MSDS002','SodiumHydroxide','1310-73-2','Corrosive','Danger','Corrosion','Wear protective clothing','Rinse with water','Use dry chemical powder','Neutralize spills','Store in dry area','Use eye protection','Causes burns','Very toxic to aquatic organisms','Neutralize before disposal','OSHA 1910.1200','2023-02-10','2023-07-10','SafetyDept','Bob','Updated for new regulations');

INSERT INTO material_safety_data VALUES
('MSDS003','Ethanol','64-17-5','Flammable','Warning','Flame','Keep container closed','Move to fresh air','Use water spray','Contain to prevent spread','Store in flammable cabinet','Use ventilation','May cause drowsiness','Low toxicity','Dispose as non‑hazardous liquid','OSHA 1910.1200','2023-03-15','2023-08-15','SafetyDept','Carol','Standard entry');

-- Lab environmental sensor registry
CREATE TABLE lab_environmental_sensor (
  sensor_id TEXT NOT NULL PRIMARY KEY,
  sensor_type TEXT,
  model_number TEXT,
  location TEXT,
  installation_date TEXT,
  calibration_date TEXT,
  calibrated_by TEXT,
  measurement_range_min REAL,
  measurement_range_max REAL,
  units TEXT,
  accuracy REAL,
  response_time_s REAL,
  data_logging_enabled BOOLEAN,
  power_source TEXT,
  communication_protocol TEXT,
  maintenance_interval_days INTEGER,
  last_maintenance_date TEXT,
  status TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  firmware_version TEXT
);

INSERT INTO lab_environmental_sensor VALUES
('SEN001','Temperature','TMP-100','LabA-Section1','2022-01-10','2023-04-01','Alice',-20.0,80.0,'Celsius',0.1,5.0,1,'AC','Modbus',180,'2023-05-01','Active','Mounted on wall','2023-01-10','2023-04-01','v1.2');

INSERT INTO lab_environmental_sensor VALUES
('SEN002','Humidity','HMD-200','LabB-Section3','2022-02-15','2023-04-05','Bob',0.0,100.0,'Percent',1.0,10.0,1,'Battery','WiFi',365,'2023-05-10','Active','Ceiling mounted','2023-02-15','2023-04-05','v1.0');

INSERT INTO lab_environmental_sensor VALUES
('SEN003','Pressure','PRS-300','LabC-Section2','2022-03-20','2023-04-12','Carol',0.0,2000.0,'Pascal',0.5,2.0,1,'POE','Ethernet',180,'2023-05-20','Active','Near HVAC inlet','2023-03-20','2023-04-12','v2.1');

-- Lab ventilation system maintenance log
CREATE TABLE lab_ventilation_system_maintenance (
  maintenance_id TEXT NOT NULL PRIMARY KEY,
  system_id TEXT,
  maintenance_type TEXT,
  scheduled_date TEXT,
  performed_date TEXT,
  technician_name TEXT,
  components_serviced TEXT,
  filter_replaced BOOLEAN,
  airflow_measurement_cmh REAL,
  pressure_drop_pa REAL,
  notes TEXT,
  next_scheduled_date TEXT,
  created_at TEXT,
  updated_at TEXT,
  status TEXT,
  work_order_number TEXT,
  downtime_minutes INTEGER,
  parts_used TEXT,
  cost_usd REAL,
  verification_passed BOOLEAN,
  comments TEXT
);

INSERT INTO lab_ventilation_system_maintenance VALUES
('VM001','VentSysA','Routine','2023-06-01','2023-06-01','Dave','Fans, Ducts',1,5200.0,10.5,'All good','2024-06-01','2023-06-01','2023-06-01','Completed','WO12345',30,'FilterA',200.0,1,'No issues');

INSERT INTO lab_ventilation_system_maintenance VALUES
('VM002','VentSysB','Filter Change','2023-06-15','2023-06-15','Eve','Filters',1,4800.0,12.0,'Replaced HEPA filters','2024-06-15','2023-06-15','2023-06-15','Completed','WO12346',45,'HEPA_Filter_B',350.0,1,'Performance within specs');

INSERT INTO lab_ventilation_system_maintenance VALUES
('VM003','VentSysC','Emergency Repair','2023-07-10','2023-07-10','Frank','Motor',0,3000.0,25.0,'Motor bearing failure','2024-07-10','2023-07-10','2023-07-10','Completed','WO12347',120,'Motor_Bearing',500.0,0,'Further inspection needed');

-- Nanomaterial exposure assessment
CREATE TABLE nanomaterial_exposure_assessment (
  assessment_id TEXT NOT NULL PRIMARY KEY,
  nanomaterial_type TEXT,
  batch_id TEXT,
  exposure_scenario TEXT,
  concentration_ug_m3 REAL,
  duration_minutes INTEGER,
  respirator_used BOOLEAN,
  engineering_controls TEXT,
  personal_protective_equipment TEXT,
  measured_concentration_ug_m3 REAL,
  risk_level TEXT,
  control_measure_effectiveness TEXT,
  assessment_date TEXT,
  assessor_name TEXT,
  comments TEXT,
  created_at TEXT,
  updated_at TEXT,
  status TEXT,
  review_date TEXT,
  reviewer_name TEXT
);

INSERT INTO nanomaterial_exposure_assessment VALUES
('NEA001','GoldNanoparticles','BN001','Synthesis','150.0',45,1,'Fume Hood','Gloves, Lab Coat',80.0,'Medium','Effective','2023-04-20','Grace','No incidents','2023-04-20','2023-04-20','Closed','2023-05-20','Helen');

INSERT INTO nanomaterial_exposure_assessment VALUES
('NEA002','SilicaNanoparticles','BN002','Characterization','300.0',30,0,'Ventilated Bench','Mask, Gloves',250.0,'High','Insufficient','2023-05-10','Ian','Follow‑up required','2023-05-10','2023-05-10','Open','2023-06-10','Jack');

INSERT INTO nanomaterial_exposure_assessment VALUES
('NEA003','CarbonNanotubes','BN003','Dispersion','80.0',60,1,'Glove Box','Full Suit',20.0,'Low','Adequate','2023-06-05','Karen','All controls satisfactory','2023-06-05','2023-06-05','Closed','2023-07-05','Liam');

-- Computational cluster node inventory
CREATE TABLE computational_cluster_node (
  node_id TEXT NOT NULL PRIMARY KEY,
  hostname TEXT,
  cpu_model TEXT,
  cpu_cores INTEGER,
  gpu_model TEXT,
  gpu_count INTEGER,
  memory_gb INTEGER,
  storage_tb REAL,
  network_interface TEXT,
  os_version TEXT,
  management_ip TEXT,
  rack_location TEXT,
  power_supply_watts INTEGER,
  cooling_type TEXT,
  status TEXT,
  last_maintenance TEXT,
  installed_date TEXT,
  warranty_expiration TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT,
  maintenance_contact TEXT
);

INSERT INTO computational_cluster_node VALUES
('NODE001','clust01','IntelXeonE5-2680',16,'NVIDIATeslaV100',2,256,4.0,'eth0','CentOS7','10.0.0.1','RackA1',1200,'Water','Active','2023-04-01','2022-12-15','2025-12-15','Primary compute node','2023-04-01','2023-04-01','ITSupport');

INSERT INTO computational_cluster_node VALUES
('NODE002','clust02','AMD_EPYC_7742',64,'NVIDIA_TitanRTX',4,512,8.0,'eth1','Ubuntu20.04','10.0.0.2','RackB3',1500,'Air','Active','2023-05-10','2023-01-20','2026-01-20','GPU‑heavy node','2023-05-10','2023-05-10','ITSupport');

INSERT INTO computational_cluster_node VALUES
('NODE003','clust03','IntelXeonGold6248',40,'None',0,128,2.0,'eth0','RHEL8','10.0.0.3','RackC2',1000,'Air','Maintenance','2023-06-15','2023-02-01','2025-02-01','CPU‑only node for batch jobs','2023-06-15','2023-06-15','ITSupport');