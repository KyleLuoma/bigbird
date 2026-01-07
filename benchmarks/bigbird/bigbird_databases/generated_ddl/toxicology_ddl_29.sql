-- Optical Isomer Dataset
CREATE TABLE optical_isomer_dataset (
  iso_id TEXT NOT NULL,
  molecule_id TEXT,
  isomer_type TEXT,
  chirality TEXT,
  wavelength_nm TEXT,
  absorbance TEXT,
  optical_rotation TEXT,
  solvent TEXT,
  temperature_c TEXT,
  measurement_date TEXT,
  instrument_id TEXT,
  operator_id TEXT,
  batch_number TEXT,
  sample_preparation TEXT,
  concentration_mg_ml TEXT,
  pathlength_cm TEXT,
  notes TEXT,
  detector_type TEXT,
  resolution_nm TEXT,
  data_file_path TEXT,
  analysis_method TEXT,
  quality_flag TEXT,
  PRIMARY KEY (iso_id),
  FOREIGN KEY (molecule_id) REFERENCES molecule (molecule_id)
);

INSERT INTO optical_isomer_dataset VALUES
('ISO001','MOL001','enantiomer','R','260','0.85','+12.5','methanol','25','2023-01-15','INS001','OP001','B001','filtered','10','1','no issues','photodiode','0.5','/data/iso001.csv','UVVis','PASS');

INSERT INTO optical_isomer_dataset VALUES
('ISO002','MOL002','diastereomer','S','280','0.73','-8.3','acetonitrile','22','2023-02-10','INS002','OP002','B002','direct','5','0.5','sample cloudy','photomultiplier','0.2','/data/iso002.csv','CD','PASS');

INSERT INTO optical_isomer_dataset VALUES
('ISO003','MOL003','enantiomer','R','300','1.02','+15.0','water','20','2023-03-05','INS003','OP003','B003','diluted','2','1','good signal','photodiode','0.4','/data/iso003.csv','UVVis','PASS');

-- Mass Spectrometry Run
CREATE TABLE mass_spectrometry_run (
  msr_id TEXT NOT NULL,
  molecule_id TEXT,
  ion_mode TEXT,
  polarity TEXT,
  mass_range_start TEXT,
  mass_range_end TEXT,
  scan_rate TEXT,
  solvent TEXT,
  injection_volume_ul TEXT,
  source_temperature_c TEXT,
  desolvation_temperature_c TEXT,
  capillary_voltage_v TEXT,
  cone_voltage_v TEXT,
  collision_energy_eV TEXT,
  acquisition_date TEXT,
  instrument_id TEXT,
  operator_id TEXT,
  sample_id TEXT,
  data_file_path TEXT,
  calibration_status TEXT,
  notes TEXT,
  quality_score TEXT,
  PRIMARY KEY (msr_id),
  FOREIGN KEY (molecule_id) REFERENCES molecule (molecule_id)
);

INSERT INTO mass_spectrometry_run VALUES
('MSR001','MOL010','ESI','positive','50','1500','0.5','methanol','5','350','250','4500','30','20','2023-04-12','MS001','OP010','SMP010','/msdata/msr001.mzML','CALIBRATED','clear baseline','A');

INSERT INTO mass_spectrometry_run VALUES
('MSR002','MOL011','MALDI','positive','100','2000','1.0','water','2','300','200','4000','25','15','2023-05-08','MS002','OP011','SMP011','/msdata/msr002.mzML','UNCALIBRATED','noise spike','B');

INSERT INTO mass_spectrometry_run VALUES
('MSR003','MOL012','ESI','negative','30','1200','0.8','acetonitrile','3','340','240','4600','28','18','2023-06-03','MS003','OP012','SMP012','/msdata/msr003.mzML','CALIBRATED','good','A');

-- Cryo-EM Experiment
CREATE TABLE cryo_em_experiment (
  ce_id TEXT NOT NULL,
  molecule_id TEXT,
  grid_type TEXT,
  vitrification_temperature_c TEXT,
  blot_time_ms TEXT,
  blot_force TEXT,
  incubation_time_s TEXT,
  microscope_model TEXT,
  accelerating_voltage_kV TEXT,
  detector_type TEXT,
  magnification TEXT,
  pixel_size_angstrom TEXT,
  dose_rate_e_per_A2_s TEXT,
  total_dose_e_per_A2 TEXT,
  acquisition_date TEXT,
  operator_id TEXT,
  data_file_path TEXT,
  processing_software TEXT,
  processing_version TEXT,
  particle_number TEXT,
  resolution_angstrom TEXT,
  notes TEXT,
  PRIMARY KEY (ce_id),
  FOREIGN KEY (molecule_id) REFERENCES molecule (molecule_id)
);

INSERT INTO cryo_em_experiment VALUES
('CE001','MOL020','Quantifoil','-180','3000','medium','10','TitanKrios','300','K3','75000','1.05','20','50','2023-07-15','OP020','/cryoem/ce001.mrc','RELION','3.1','250000','3.2','high contrast');

INSERT INTO cryo_em_experiment VALUES
('CE002','MOL021','Lacey','-180','2500','low','8','TalosArctica','200','Falcon4','60000','1.2','15','40','2023-08-01','OP021','/cryoem/ce002.mrc','CryoSPARC','3.0','180000','4.0','good distribution');

INSERT INTO cryo_em_experiment VALUES
('CE003','MOL022','Quantifoil','-180','3500','high','12','TitanKrios','300','K2','80000','0.9','25','60','2023-09-10','OP022','/cryoem/ce003.mrc','EMAN2','2.5','300000','2.8','optimal particles');

-- Electrochemical Measurement
CREATE TABLE electrochemical_measurement (
  ecm_id TEXT NOT NULL,
  molecule_id TEXT,
  cell_type TEXT,
  electrolyte TEXT,
  reference_electrode TEXT,
  counter_electrode TEXT,
  working_electrode TEXT,
  scan_rate_mv_s TEXT,
  potential_range_start_v TEXT,
  potential_range_end_v TEXT,
  temperature_c TEXT,
  measurement_date TEXT,
  instrument_id TEXT,
  operator_id TEXT,
  sample_volume_ul TEXT,
  concentration_mM TEXT,
  stirring BOOLEAN,
  data_file_path TEXT,
  analysis_method TEXT,
  peak_current_uA TEXT,
  peak_potential_v TEXT,
  notes TEXT,
  quality_flag TEXT,
  PRIMARY KEY (ecm_id),
  FOREIGN KEY (molecule_id) REFERENCES molecule (molecule_id)
);

INSERT INTO electrochemical_measurement VALUES
('ECM001','MOL030','three-electrode','0.1M KCl','Ag/AgCl','Pt','GlassyCarbon','50','-0.5','0.5','25','2023-10-05','EC001','OP030','200','5','TRUE','/ecm/ecm001.csv','CV','15','0.23','stable','PASS');

INSERT INTO electrochemical_measurement VALUES
('ECM002','MOL031','two-electrode','0.5M Na2SO4','Au','Pt','Gold','20','-1.0','1.0','20','2023-11-12','EC002','OP031','150','10','FALSE','/ecm/ecm002.csv','DPV','8','-0.45','no drift','PASS');

INSERT INTO electrochemical_measurement VALUES
('ECM003','MOL032','three-electrode','0.2M H2SO4','Ag/AgCl','Pt','Carbon','10','0','1.2','30','2023-12-01','EC003','OP032','250','2','TRUE','/ecm/ecm003.csv','LSV','22','0.78','good signal','PASS');

-- Polymer Characterization
CREATE TABLE polymer_characterization (
  pc_id TEXT NOT NULL,
  polymer_name TEXT,
  molecular_weight_g_mol TEXT,
  polydispersity_index TEXT,
  glass_transition_temp_c TEXT,
  melting_temp_c TEXT,
  degradation_temp_c TEXT,
  tensile_strength_mpa TEXT,
  elongation_at_break_percent TEXT,
  hardness_shore TEXT,
  density_g_cm3 TEXT,
  solubility_solvent TEXT,
  sample_preparation TEXT,
  measurement_date TEXT,
  instrument_id TEXT,
  operator_id TEXT,
  data_file_path TEXT,
  analysis_software TEXT,
  analysis_version TEXT,
  notes TEXT,
  quality_flag TEXT,
  PRIMARY KEY (pc_id)
);

INSERT INTO polymer_characterization VALUES
('PC001','Polyethylene','200000','1.05','-120','130','350','30','600','70','0.92','xylene','melt cast','2023-02-20','PC001','OP040','/polymer/pc001.txt','MeltFlow','2.1','smooth','PASS');

INSERT INTO polymer_characterization VALUES
('PC002','Polystyrene','100000','1.08','-100','240','380','35','500','80','1.04','toluene','solution cast','2023-03-15','PC002','OP041','/polymer/pc002.txt','DMA','3.0','clear','PASS');

INSERT INTO polymer_characterization VALUES
('PC003','Polypropylene','250000','1.03','-80','165','340','28','700','60','0.90','hexane','extrusion','2023-04-10','PC003','OP042','/polymer/pc003.txt','TGA','1.5','consistent','PASS');

-- Radiotracer Study
CREATE TABLE radiotracer_study (
  rts_id TEXT NOT NULL,
  tracer_isotope TEXT,
  molecule_id TEXT,
  administered_dose_mbq TEXT,
  administration_route TEXT,
  subject_id TEXT,
  time_point_min TEXT,
  activity_measurement_mbq TEXT,
  measurement_device TEXT,
  measurement_date TEXT,
  operator_id TEXT,
  notes TEXT,
  protocol_version TEXT,
  quality_control_status TEXT,
  data_file_path TEXT,
  PRIMARY KEY (rts_id),
  FOREIGN KEY (molecule_id) REFERENCES molecule (molecule_id)
);

INSERT INTO radiotracer_study VALUES
('RTS001','F18','MOL040','5','IV','SUBJ001','30','2.1','PET','2023-05-01','OP050','no adverse','v1','PASSED','/rtstudy/rts001.csv');

INSERT INTO radiotracer_study VALUES
('RTS002','C11','MOL041','3','IV','SUBJ002','45','1.8','PET','2023-06-15','OP051','mild nausea','v1','PASSED','/rtstudy/rts002.csv');

INSERT INTO radiotracer_study VALUES
('RTS003','O15','MOL042','4','IV','SUBJ003','60','1.5','PET','2023-07-20','OP052','none','v2','PASSED','/rtstudy/rts003.csv');

-- Quantum Chemistry Simulation
CREATE TABLE quantum_chemistry_simulation (
  qcs_id TEXT NOT NULL,
  molecule_id TEXT,
  method TEXT,
  basis_set TEXT,
  charge INTEGER,
  multiplicity INTEGER,
  solvation_model TEXT,
  dielectric_constant TEXT,
  cpu_cores INTEGER,
  memory_gb INTEGER,
  walltime_h TEXT,
  software TEXT,
  software_version TEXT,
  submit_date TEXT,
  start_date TEXT,
  end_date TEXT,
  operator_id TEXT,
  compute_node TEXT,
  total_energy_hartree TEXT,
  dipole_moment_debye TEXT,
  orbital_energies_file TEXT,
  convergence_status TEXT,
  notes TEXT,
  PRIMARY KEY (qcs_id),
  FOREIGN KEY (molecule_id) REFERENCES molecule (molecule_id)
);

INSERT INTO quantum_chemistry_simulation VALUES
('QCS001','MOL050','DFT','B3LYP/6-31G*','0','1','PCM','78.4','16','64','48','Gaussian','16.0','2023-08-01','2023-08-02','2023-08-04','OP060','node01','-382.754','1.23','/qc/qcs001.orb','CONVERGED','optimized geometry');

INSERT INTO quantum_chemistry_simulation VALUES
('QCS002','MOL051','MP2','aug-cc-pVTZ','-1','2','SMD','78.4','32','128','72','ORCA','5.0','2023-09-10','2023-09-11','2023-09-14','OP061','node02','-401.112','0.87','/qc/qcs002.orb','CONVERGED','frequency analysis');

INSERT INTO quantum_chemistry_simulation VALUES
('QCS003','MOL052','HF','STO-3G','1','1','none','1','8','32','12','NWChem','7.0','2023-10-05','2023-10-05','2023-10-06','OP062','node03','-250.345','2.10','/qc/qcs003.orb','CONVERGED','single point energy');

-- Pharmacology Assay
CREATE TABLE pharmacology_assay (
  pa_id TEXT NOT NULL,
  compound_id TEXT,
  assay_type TEXT,
  cell_line TEXT,
  incubation_time_h TEXT,
  concentration_uM TEXT,
  response_percent TEXT,
  positive_control_id TEXT,
  negative_control_id TEXT,
  assay_date TEXT,
  operator_id TEXT,
  instrument_id TEXT,
  data_file_path TEXT,
  analysis_software TEXT,
  analysis_version TEXT,
  notes TEXT,
  quality_flag TEXT,
  primary_endpoint TEXT,
  secondary_endpoint TEXT,
  assay_plate_id TEXT,
  replicates INTEGER,
  PRIMARY KEY (pa_id)
);

INSERT INTO pharmacology_assay VALUES
('PA001','CMP001','MTT','HeLa','48','10','85','PC001','NC001','2023-11-12','OP070','INST001','/assay/pa001.csv','GraphPad','9.0','clean wells','PASS','cell viability','none','PLT001','3');

INSERT INTO pharmacology_assay VALUES
('PA002','CMP002','LDH','HEK293','24','5','40','PC002','NC002','2023-11-15','OP071','INST002','/assay/pa002.csv','Prism','8.5','slight edge','PASS','cytotoxicity','none','PLT002','3');

INSERT INTO pharmacology_assay VALUES
('PA003','CMP003','cAMP','CHO','72','2','120','PC003','NC003','2023-11-20','OP072','INST003','/assay/pa003.csv','SoftMax','5.2','high signal','PASS','second messenger','none','PLT003','4');

-- Thermal Analysis Log
CREATE TABLE thermal_analysis_log (
  tal_id TEXT NOT NULL,
  molecule_id TEXT,
  analysis_type TEXT,
  heating_rate_c_per_min TEXT,
  start_temp_c TEXT,
  end_temp_c TEXT,
  atmosphere TEXT,
  sample_weight_mg TEXT,
  pan_type TEXT,
  instrument_id TEXT,
  operator_id TEXT,
  analysis_date TEXT,
  data_file_path TEXT,
  calibration_status TEXT,
  peak_temperature_c TEXT,
  peak_enthalpy_j_g TEXT,
  onset_temperature_c TEXT,
  notes TEXT,
  quality_flag TEXT,
  PRIMARY KEY (tal_id),
  FOREIGN KEY (molecule_id) REFERENCES molecule (molecule_id)
);

INSERT INTO thermal_analysis_log VALUES
('TAL001','MOL060','DSC','10','25','300','Nitrogen','5','Aluminum','TA001','OP080','2023-12-01','/thermal/tal001.csv','CALIBRATED','150','45','120','no anomalies','PASS');

INSERT INTO thermal_analysis_log VALUES
('TAL002','MOL061','TGA','5','30','600','Air','8','Platinum','TA002','OP081','2023-12-02','/thermal/tal002.csv','CALIBRATED','350','120','320','small residue','PASS');

INSERT INTO thermal_analysis_log VALUES
('TAL003','MOL062','DSC','20','-40','250','Helium','3','Aluminum','TA003','OP082','2023-12-03','/thermal/tal003.csv','UNCALIBRATED','80','30','70','baseline drift','FAIL');

-- Solvent Usage Record
CREATE TABLE solvent_usage_record (
  sur_id TEXT NOT NULL,
  solvent_name TEXT,
  storage_location TEXT,
  container_type TEXT,
  container_volume_l TEXT,
  current_volume_l TEXT,
  acquisition_date TEXT,
  supplier_name TEXT,
  lot_number TEXT,
  expiration_date TEXT,
  safety_data_sheet_id TEXT,
  hazardous_class TEXT,
  ppe_required TEXT,
  usage_log_id TEXT,
  last_used_date TEXT,
  operator_id TEXT,
  notes TEXT,
  quality_flag TEXT,
  PRIMARY KEY (sur_id)
);

INSERT INTO solvent_usage_record VALUES
('SUR001','Methanol','CabinetA','Bottle','20','15','2022-01-10','SupplierX','LOT1001','2025-01-10','SDS001','Flammable','gloves goggles','UL001','2023-10-20','OP090','stored at 4C','PASS');

INSERT INTO solvent_usage_record VALUES
('SUR002','Acetonitrile','CabinetB','Canister','50','30','2022-03-15','SupplierY','LOT2002','2024-03-15','SDS002','Flammable','gloves goggles','UL002','2023-11-05','OP091','no issues','PASS');

INSERT INTO solvent_usage_record VALUES
('SUR003','Water','UtilityRoom','Tank','1000','850','2021-07-01','SupplierZ','LOT3003','2026-07-01','SDS003','None','none','UL003','2023-12-01','OP092','filtered','PASS');

-- Radiopurity Assessment
CREATE TABLE radiopurity_assessment (
  rpa_id TEXT NOT NULL,
  material_id TEXT,
  assay_type TEXT,
  detector_type TEXT,
  counting_time_days TEXT,
  background_rate_cpm TEXT,
  sample_activity_mBq TEXT,
  detection_limit_mBq TEXT,
  measurement_date TEXT,
  instrument_id TEXT,
  operator_id TEXT,
  notes TEXT,
  quality_flag TEXT,
  data_file_path TEXT,
  primary_isotope TEXT,
  secondary_isotope TEXT,
  PRIMARY KEY (rpa_id)
);

INSERT INTO radiopurity_assessment VALUES
('RPA001','MAT001','GammaSpectroscopy','HPGe','7','0.5','0.02','0.01','2023-08-10','RP001','OP100','clean environment','PASS','/rad/rpa001.csv','U238','Th232');

INSERT INTO radiopurity_assessment VALUES
('RPA002','MAT002','AlphaCounting','Silicon','14','0.3','0.05','0.02','2023-09-12','RP002','OP101','no contamination','PASS','/rad/rpa002.csv','Po210','Rn222');

INSERT INTO radiopurity_assessment VALUES
('RPA003','MAT003','BetaCounting','PlasticScintillator','21','0.2','0.01','0.008','2023-10-05','RP003','OP102','stable','PASS','/rad/rpa003.csv','Sr90','Cs137');