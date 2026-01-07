-- Reaction mechanism details table
CREATE TABLE `reaction_mechanism` (
  `reaction_id` TEXT NOT NULL,
  `step_number` INTEGER NOT NULL,
  `reactant_id` TEXT,
  `product_id` TEXT,
  `catalyst` TEXT,
  `temperature_c` REAL,
  `pressure_atm` REAL,
  `solvent` TEXT,
  `ph` REAL,
  `reaction_time_min` INTEGER,
  `yield_percent` REAL,
  `mechanism_type` TEXT,
  `intermediate_id` TEXT,
  `rate_constant` REAL,
  `activation_energy_kj` REAL,
  `author` TEXT,
  `lab_location` TEXT,
  `date_conducted` TEXT,
  `instrument_used` TEXT,
  `notes` TEXT,
  `validated` TEXT,
  `reference_id` TEXT,
  PRIMARY KEY (`reaction_id`,`step_number`)
);
INSERT INTO `reaction_mechanism` VALUES ('RXN001',1,'AT001','AT002','PdC','80','1','Ethanol','7.2','120','85','Oxidative','INT001','0.005','45.2','DrSmith','LabA','2023-05-10','Reactor1','Initial step','Y','REF001');
INSERT INTO `reaction_mechanism` VALUES ('RXN001',2,'AT002','AT003','PdC','80','1','Ethanol','7.2','90','78','Oxidative','INT002','0.004','48.0','DrSmith','LabA','2023-05-10','Reactor1','Second step','Y','REF001');
INSERT INTO `reaction_mechanism` VALUES ('RXN002',1,'AT010','AT011','None','25','1','Water','7.0','30','95','Hydrolysis','INT010','0.010','12.5','DrLee','LabB','2023-06-15','Batch1','Single step','N','REF002');

-- Spectral peak table
CREATE TABLE `spectral_peak` (
  `spectrum_id` TEXT NOT NULL,
  `peak_number` INTEGER NOT NULL,
  `wavelength_nm` REAL,
  `intensity` REAL,
  `resolution` REAL,
  `detector` TEXT,
  `acquisition_date` TEXT,
  `instrument` TEXT,
  `method` TEXT,
  `sample_id` TEXT,
  `baseline_corrected` TEXT,
  `noise_level` REAL,
  `calibration_status` TEXT,
  `operator` TEXT,
  `comments` TEXT,
  `processed` TEXT,
  `peak_width` REAL,
  `peak_area` REAL,
  `signal_to_noise` REAL,
  `quality_flag` TEXT,
  `reference_peak_id` TEXT,
  PRIMARY KEY (`spectrum_id`,`peak_number`)
);
INSERT INTO `spectral_peak` VALUES ('SP001',1,'500','1200','0.5','D1','2023-04-01','SpecA','Absorbance','SM001','Y','0.02','Calibrated','Alice','Peak1','Y','0.8','950','60','Good','RP001');
INSERT INTO `spectral_peak` VALUES ('SP001',2,'600','800','0.5','D1','2023-04-01','SpecA','Absorbance','SM001','Y','0.02','Calibrated','Alice','Peak2','Y','0.7','600','45','Good','RP002');
INSERT INTO `spectral_peak` VALUES ('SP002',1,'250','1500','0.3','D2','2023-05-12','SpecB','Fluorescence','SM010','N','0.01','Uncalibrated','Bob','PeakA','N','0.5','1300','80','Fair','RP010');

-- Molecular property table
CREATE TABLE `molecular_property` (
  `molecule_id` TEXT NOT NULL,
  `mol_weight` REAL,
  `logp` REAL,
  `hbd` INTEGER,
  `hba` INTEGER,
  `tpsa` REAL,
  `rotatable_bonds` INTEGER,
  `aromatic_rings` INTEGER,
  `aliphatic_rings` INTEGER,
  `smiles` TEXT,
  `inchi` TEXT,
  `qed_score` REAL,
  `synthetic_accessibility` REAL,
  `solubility_mgml` REAL,
  `melting_point_c` REAL,
  `boiling_point_c` REAL,
  `density_gcm3` REAL,
  `refractivity` REAL,
  `polarizability` REAL,
  `dipole_moment` REAL,
  `created_at` TEXT,
  `source` TEXT,
  PRIMARY KEY (`molecule_id`)
);
INSERT INTO `molecular_property` VALUES ('M001','300.12','2.1','1','3','45.6','4','2','1','C1=CC=CC=C1','InChI=1S/C6H6/c1-2-4-6-5-3-1/h1-6H','0.68','3.2','0.5','150','210','0.88','1.02','12.5','0.4','2023-01-15','PubChem');
INSERT INTO `molecular_property` VALUES ('M002','150.07','-0.5','0','2','20.1','1','0','0','CCO','InChI=1S/C2H6O/c1-2-3/h3H,2H2,1H3','0.45','4.1','25.0','-','0.79','0.85','8.4','0.2','2023-02-20','ChemSpider');
INSERT INTO `molecular_property` VALUES ('M003','500.25','3.8','2','5','80.2','6','3','2','C1CCCCC1','InChI=1S/C7H14/c1-2-3-4-5-6-7/h7H,2-6H2,1H3','0.72','2.5','1.2','210','250','1.12','1.15','15.0','0.6','2023-03-10','CustomDB');

-- Crystallography information table
CREATE TABLE `crystallography_info` (
  `crystal_id` TEXT NOT NULL,
  `molecule_id` TEXT,
  `space_group` TEXT,
  `cell_a` REAL,
  `cell_b` REAL,
  `cell_c` REAL,
  `alpha` REAL,
  `beta` REAL,
  `gamma` REAL,
  `resolution_angstrom` REAL,
  `r_factor` REAL,
  `reflections` INTEGER,
  `temperature_k` REAL,
  `detector_type` TEXT,
  `wavelength_angstrom` REAL,
  `crystal_size_mm` TEXT,
  `data_collection_date` TEXT,
  `refiner` TEXT,
  `software` TEXT,
  `validation_status` TEXT,
  `doi` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`crystal_id`)
);
INSERT INTO `crystallography_info` VALUES ('CR001','M001','P212121','10.0','12.0','15.0','90','90','90','1.2','0.025','34000','100','CCD','0.71','0.2x0.2x0.3','2023-04-05','DrSmith','XDS','Pass','10.1234/xyz','Good quality crystal');
INSERT INTO `crystallography_info` VALUES ('CR002','M002','C2','8.5','8.5','9.0','90','90','120','1.5','0.030','21000','150','Hybrid','0.98','0.1x0.1x0.2','2023-05-12','DrLee','PHENIX','Pass','10.5678/abc','Slight disorder');
INSERT INTO `crystallography_info` VALUES ('CR003','M003','P21','12.2','14.3','16.5','90','106','90','0.9','0.020','45000','80','Pixel','1.00','0.3x0.4x0.5','2023-06-20','DrKim','MOSFLM','Pass','10.9012/def','Excellent diffraction');

-- Electrochemical cell data table
CREATE TABLE `electrochemical_cell` (
  `cell_id` TEXT NOT NULL,
  `experiment_id` TEXT,
  `anode_material` TEXT,
  `cathode_material` TEXT,
  `electrolyte` TEXT,
  `temperature_c` REAL,
  `current_density_ma` REAL,
  `voltage_v` REAL,
  `duration_hr` REAL,
  `capacity_mah` REAL,
  `energy_wh` REAL,
  `efficiency_percent` REAL,
  `separator_type` TEXT,
  `cell_configuration` TEXT,
  `charge_discharge_cycles` INTEGER,
  `max_power_w` REAL,
  `internal_resistance_mohm` REAL,
  `test_date` TEXT,
  `operator` TEXT,
  `instrument` TEXT,
  `notes` TEXT,
  `validation` TEXT,
  PRIMARY KEY (`cell_id`)
);
INSERT INTO `electrochemical_cell` VALUES ('EC001','EXP001','Graphite','LiCoO2','LiPF6','25','150','3.7','2','500','7.4','95','Celgard','18650',500,'15','12','2023-04-10','Alice','Potentiostat','No issues','Pass');
INSERT INTO `electrochemical_cell` VALUES ('EC002','EXP002','Silicon','NMC','EC/DEC','30','200','3.9','1.5','300','5.9','92','SeparatorX','21700',300,'12','15','2023-05-18','Bob','Galvanostat','Slight overvoltage','Pass');
INSERT INTO `electrochemical_cell` VALUES ('EC003','EXP003','Lithium metal','LFP','LiPF6','20','100','3.2','3','800','8.0','98','Celgard','Prismatic',800,'18','10','2023-06-22','Carol','Potentiostat','Stable','Pass');

-- Pharmacokinetic study table
CREATE TABLE `pharmacokinetic_study` (
  `study_id` TEXT NOT NULL,
  `compound_id` TEXT,
  `subject_id` TEXT,
  `dose_mg` REAL,
  `route` TEXT,
  `sampling_time_hr` REAL,
  `plasma_conc_ngml` REAL,
  `half_life_hr` REAL,
  `clearance_mlmin` REAL,
  `volume_distribution_l` REAL,
  `bioavailability_percent` REAL,
  `gender` TEXT,
  `age_years` INTEGER,
  `weight_kg` REAL,
  `height_cm` REAL,
  `fasted_state` TEXT,
  `collection_date` TEXT,
  `analytical_method` TEXT,
  `lab` TEXT,
  `analyst` TEXT,
  `notes` TEXT,
  `approved` TEXT,
  PRIMARY KEY (`study_id`,`subject_id`,`sampling_time_hr`)
);
INSERT INTO `pharmacokinetic_study` VALUES ('PK001','CPD001','SUBJ001','50','Oral','0.5','12.5','4.2','5.3','35','85','M','28','70','175','Yes','2023-03-01','LCMS','LabA','Diana','Baseline','Y');
INSERT INTO `pharmacokinetic_study` VALUES ('PK001','CPD001','SUBJ001','50','Oral','1','10.2','4.2','5.3','35','85','M','28','70','175','Yes','2023-03-01','LCMS','LabA','Diana','Follow-up','Y');
INSERT INTO `pharmacokinetic_study` VALUES ('PK002','CPD002','SUBJ002','100','IV','0.25','25.0','2.8','9.1','40','100','F','35','80','165','No','2023-04-15','HPLC','LabB','Ethan','High dose','Y');

-- Compound registry table
CREATE TABLE `compound_registry` (
  `compound_id` TEXT NOT NULL,
  `iupac_name` TEXT,
  `common_name` TEXT,
  `cas_number` TEXT,
  `supplier` TEXT,
  `lot_number` TEXT,
  `arrival_date` TEXT,
  `expiration_date` TEXT,
  `purity_percent` REAL,
  `storage_location` TEXT,
  `hazard_class` TEXT,
  `safety_data_sheet` TEXT,
  `quantity_g` REAL,
  `unit_price_usd` REAL,
  `batch_number` TEXT,
  `molecular_formula` TEXT,
  `molecular_weight` REAL,
  `smiles` TEXT,
  `inchi_key` TEXT,
  `category` TEXT,
  `project_code` TEXT,
  `status` TEXT,
  PRIMARY KEY (`compound_id`)
);
INSERT INTO `compound_registry` VALUES ('CPD001','2,4-Dichlorophenoxyacetic acid','2,4-D','94-75-7','ChemSup','LOT123','2023-01-10','2025-01-10','98.5','CabinetA','Herbicide','SDS001','5','120','B001','C8H6Cl2O3','221.0','Clc1c(cc(cc1)Cl)C(=O)O','XKRDHVYDNGDQAK-UHFFFAOYSA-N','Herbicide','PRJ001','Active');
INSERT INTO `compound_registry` VALUES ('CPD002','N-(4-hydroxyphenyl)acetamide','Paracetamol','103-90-2','PharmaInc','LOT456','2023-02-20','2026-02-20','99.2','CabinetB','Analgesic','SDS002','10','80','B002','C8H9NO2','151.2','CC(=O)Nc1ccc(O)cc1','RZVAJINKPMORJF-UHFFFAOYSA-N','Analgesic','PRJ002','Active');
INSERT INTO `compound_registry` VALUES ('CPD003','1,2-Dichloroethane','EDC','107-06-2','ChemSupply','LOT789','2023-03-15','2024-09-15','97.0','CabinetC','Solvent','SDS003','8','90','B003','C2H4Cl2','98.96','ClCCCl','KJULJOPFYYPUNW-UHFFFAOYSA-N','Solvent','PRJ003','Expired');

-- Thermodynamic profile table
CREATE TABLE `thermodynamic_profile` (
  `profile_id` TEXT NOT NULL,
  `reaction_id` TEXT,
  `temperature_c` REAL,
  `pressure_atm` REAL,
  `delta_h_kjmol` REAL,
  `delta_s_jmolK` REAL,
  `delta_g_kjmol` REAL,
  `equilibrium_constant` REAL,
  `reaction_rate_constant` REAL,
  `activation_energy_kj` REAL,
  `entropy_change_jmolK` REAL,
  `enthalpy_change_kjmol` REAL,
  `heat_capacity_jmolK` REAL,
  `gibbs_energy_kjmol` REAL,
  `method` TEXT,
  `instrument` TEXT,
  `operator` TEXT,
  `date_measured` TEXT,
  `reference` TEXT,
  `notes` TEXT,
  `validated` TEXT,
  `data_quality` TEXT,
  PRIMARY KEY (`profile_id`)
);
INSERT INTO `thermodynamic_profile` VALUES ('TP001','RXN001','80','1','-45.2','-120','-30.5','2.5e3','0.003','78','-110','-44','150','-30','Calorimetry','CalorimeterX','Dana','2023-04-08','REF001','Stable','Y','High');
INSERT INTO `thermodynamic_profile` VALUES ('TP002','RXN002','25','1','-20.0','-80','-5.0','1.0e2','0.001','50','-70','-19','120','-5','DSC','DSC2000','Evan','2023-05-20','REF002','Consistent','Y','Medium');
INSERT INTO `thermodynamic_profile` VALUES ('TP003','RXN003','100','5','-60.0','-150','-10.0','5.0e3','0.010','90','-140','-58','180','-10','TG','ThermoG','Fiona','2023-06-30','REF003','High temperature data','Y','High');

-- Isotope distribution table
CREATE TABLE `isotope_distribution` (
  `distribution_id` TEXT NOT NULL,
  `molecule_id` TEXT,
  `isotope` TEXT,
  `mass_number` INTEGER,
  `abundance_percent` REAL,
  `exact_mass` REAL,
  `relative_intensity` REAL,
  `ionization_method` TEXT,
  `instrument` TEXT,
  `resolution` REAL,
  `scan_mode` TEXT,
  `collision_energy` REAL,
  `fragmentation_type` TEXT,
  `sample_prep` TEXT,
  `date_acquired` TEXT,
  `operator` TEXT,
  `lab` TEXT,
  `notes` TEXT,
  `validation_status` TEXT,
  `reference_id` TEXT,
  `data_file` TEXT,
  `comments` TEXT,
  PRIMARY KEY (`distribution_id`)
);
INSERT INTO `isotope_distribution` VALUES ('ISO001','M001','13C','13','1.1','13.00335','100','ESI','Orbitrap','60000','Full','10','CID','Direct','2023-04-12','Grace','LabX','Clean spectrum','Pass','REF001','file1.mzML','N/A');
INSERT INTO `isotope_distribution` VALUES ('ISO002','M002','15N','15','0.37','15.00011','50','MALDI','TOF','20000','MS/MS','20','HCD','Matrix','2023-05-07','Henry','LabY','Low signal','Pass','REF002','file2.mzML','Check calibration');
INSERT INTO `isotope_distribution` VALUES ('ISO003','M003','2H','2','0.015','2.01410','30','ESI','QTOF','40000','Full','5','CID','Diluted','2023-06-18','Ivy','LabZ','Background noise','Pass','REF003','file3.mzML','Needs review');

-- Synthesis route table
CREATE TABLE `synthesis_route` (
  `route_id` TEXT NOT NULL,
  `target_compound_id` TEXT,
  `step_number` INTEGER NOT NULL,
  `reactant_id` TEXT,
  `reagent_id` TEXT,
  `solvent_id` TEXT,
  `temperature_c` REAL,
  `pressure_atm` REAL,
  `reaction_time_min` INTEGER,
  `catalyst_id` TEXT,
  `yield_percent` REAL,
  `purification_method` TEXT,
  `product_id` TEXT,
  `analytical_method` TEXT,
  `operator` TEXT,
  `lab_location` TEXT,
  `date_started` TEXT,
  `date_completed` TEXT,
  `notes` TEXT,
  `validated` TEXT,
  `reference` TEXT,
  `batch_number` TEXT,
  PRIMARY KEY (`route_id`,`step_number`)
);
INSERT INTO `synthesis_route` VALUES ('SR001','CPD001',1,'AT010','REAG001','SOL001','80','1','120','CAT001','85','Chromatography','INT001','NMR','Alice','LabA','2023-02-01','2023-02-03','Initial condensation','Y','REF001','B001');
INSERT INTO `synthesis_route` VALUES ('SR001','CPD001',2,'INT001','REAG002','SOL002','90','1','60','CAT002','78','Recrystallization','CPD001','LCMS','Alice','LabA','2023-02-04','2023-02-06','Final functionalization','Y','REF001','B001');
INSERT INTO `synthesis_route` VALUES ('SR002','CPD002',1,'AT020','REAG010','SOL010','25','1','30','CAT010','92','Filtration','INT010','IR','Bob','LabB','2023-03-10','2023-03-11','Simple esterification','Y','REF010','B010');

-- Nanomaterial characterization detail table
CREATE TABLE `nanomaterial_characterization_detail` (
  `characterization_id` TEXT NOT NULL,
  `nanomaterial_id` TEXT,
  `technique` TEXT,
  `instrument` TEXT,
  `measurement_date` TEXT,
  `operator` TEXT,
  `parameter` TEXT,
  `value` REAL,
  `unit` TEXT,
  `error` REAL,
  `sample_preparation` TEXT,
  `environment` TEXT,
  `beam_energy_keV` REAL,
  `acquisition_time_s` REAL,
  `detector_type` TEXT,
  `resolution` REAL,
  `calibration_status` TEXT,
  `reference` TEXT,
  `notes` TEXT,
  `validated` TEXT,
  `data_file` TEXT,
  `quality_flag` TEXT,
  PRIMARY KEY (`characterization_id`)
);
INSERT INTO `nanomaterial_characterization_detail` VALUES ('NC001','NM001','TEM','TEM2000','2023-04-15','Liam','ParticleSize','45.2','nm','0.5','DropCast','Vacuum','200','60','CCD','0.2','Calibrated','REF005','Uniform distribution','Y','temp1.tif','Good');
INSERT INTO `nanomaterial_characterization_detail` VALUES ('NC002','NM001','DLS','DLSPro','2023-04-16','Mia','ZetaPotential','-30','mV','1.2','Diluted','RoomTemp','-','30','Photodiode','-','Calibrated','REF005','Stable colloid','Y','temp2.dat','Good');
INSERT INTO `nanomaterial_characterization_detail` VALUES ('NC003','NM002','XRD','XRD3000','2023-05-05','Noah','CrystalliteSize','12','nm','0.8','Powder','Ambient','-','120','Scintillator','0.1','Calibrated','REF010','Broad peaks','Y','temp3.raw','Fair');