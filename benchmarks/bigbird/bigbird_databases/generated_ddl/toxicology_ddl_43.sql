-- Schedule of synthesis batches with equipment and reagent allocations
CREATE TABLE synthesis_batch_schedule (
  batch_id TEXT NOT NULL,
  project_code TEXT,
  scheduled_start DATE,
  scheduled_end DATE,
  reactor_type TEXT,
  reactor_volume_ml INTEGER,
  temperature_setpoint_c REAL,
  pressure_setpoint_bar REAL,
  catalyst_code TEXT,
  solvent_code TEXT,
  primary_reagent_code TEXT,
  secondary_reagent_code TEXT,
  mixing_speed_rpm INTEGER,
  residence_time_min REAL,
  operator_id TEXT,
  safety_review_status TEXT,
  batch_status TEXT,
  quality_control_status TEXT,
  created_timestamp DATETIME,
  updated_timestamp DATETIME,
  notes TEXT,
  PRIMARY KEY (batch_id)
);

INSERT INTO synthesis_batch_schedule VALUES ('SB001','PRJ1001','2025-03-01','2025-03-03','CSTR',2500,80.5,1.2,'CAT01','SOL01','REAG01','REAG02',300,45.0,'OP123','APPROVED','IN_PROGRESS','PENDING','2025-02-20 08:30:00','2025-02-20 08:30:00','Initial schedule');
INSERT INTO synthesis_batch_schedule VALUES ('SB002','PRJ1002','2025-04-10','2025-04-12','Batch',5000,120.0,0.8,'CAT05','SOL07','REAG08','REAG09',250,60.0,'OP456','PENDING','PLANNED','PENDING','2025-03-15 09:15:00','2025-03-15 09:15:00','Awaiting material receipt');
INSERT INTO synthesis_batch_schedule VALUES ('SB003','PRJ1003','2025-05-05','2025-05-07','CSTR',3000,95.0,1.5,'CAT02','SOL03','REAG04','REAG05',320,30.0,'OP789','APPROVED','COMPLETED','PASSED','2025-04-25 10:00:00','2025-05-08 12:45:00','Batch completed with good yield');

-- Log of individual spectroscopy experiments performed on compounds
CREATE TABLE spectroscopy_experiment_log (
  experiment_id TEXT NOT NULL,
  compound_id TEXT,
  instrument_id TEXT,
  technique TEXT,
  wavelength_start_nm REAL,
  wavelength_end_nm REAL,
  resolution_nm REAL,
  acquisition_time_sec REAL,
  sample_preparation TEXT,
  operator_id TEXT,
  experiment_date DATE,
  ambient_temperature_c REAL,
  ambient_humidity_percent REAL,
  laser_power_mw REAL,
  detector_gain INTEGER,
  scan_mode TEXT,
  data_file_path TEXT,
  analysis_status TEXT,
  qc_passed TEXT,
  created_timestamp DATETIME,
  notes TEXT,
  PRIMARY KEY (experiment_id)
);

INSERT INTO spectroscopy_experiment_log VALUES ('SE1001','CMP001','INST01','UVVis',200.0,800.0,1.0,120.0,'DILUTED_IN_METHANOL','OP111','2025-01-15',22.5,45.0,0.0,10,'CONTINUOUS','/data/spec/SE1001.csv','COMPLETED','YES','2025-01-16 08:00:00','First trial');
INSERT INTO spectroscopy_experiment_log VALUES ('SE1002','CMP002','INST02','IR','4000.0','400.0',4.0,180.0,'PELLET_PRESS','OP222','2025-02-20',21.0,40.0,0.0,12,'STEP','/data/spec/SE1002.csv','PENDING','NO','2025-02-21 09:30:00','Sample preparation delayed');
INSERT INTO spectroscopy_experiment_log VALUES ('SE1003','CMP003','INST03','Raman','100.0','3500.0',2.0,240.0,'DROP_CAST_ON_SLIDE','OP333','2025-03-10',23.0,50.0,15.0,8,'CONTINUOUS','/data/spec/SE1003.csv','COMPLETED','YES','2025-03-11 10:15:00','Good signal-to-noise');

-- Detailed definitions of chromatography methods used in the lab
CREATE TABLE chromatography_method_detail (
  method_id TEXT NOT NULL,
  method_name TEXT,
  technique TEXT,
  column_type TEXT,
  column_length_cm REAL,
  column_inner_diameter_mm REAL,
  stationary_phase TEXT,
  mobile_phase_a TEXT,
  mobile_phase_b TEXT,
  gradient_profile TEXT,
  flow_rate_ml_min REAL,
  temperature_c REAL,
  detection_wavelength_nm REAL,
  detector_type TEXT,
  injection_volume_ul REAL,
  sample_preparation TEXT,
  run_time_min REAL,
  system_pressure_bar REAL,
  maintenance_date DATE,
  created_by TEXT,
  created_timestamp DATETIME,
  notes TEXT,
  PRIMARY KEY (method_id)
);

INSERT INTO chromatography_method_detail VALUES ('CM001','RevHPLC_Method1','HPLC','C18','150.0','4.6','C18_BOND','Water+0.1%FA','Acetonitrile+0.1%FA','Linear_0-30%_B_10min','1.0','30.0','254','UV','10','FILTERED','12','250','2025-01-01','OP001','2025-01-02 07:45:00','Standard reverse phase method');
INSERT INTO chromatography_method_detail VALUES ('CM002','NormalPhase_MethodA','HPLC','Silica','250.0','4.6','Silica','Hexane','EtOAc','Stepwise_30%_EtOAc_5min','0.8','25.0','210','UV','5','VAPOR_PHASE','15','200','2025-02-10','OP002','2025-02-11 08:20:00','Used for non-polar compounds');
INSERT INTO chromatography_method_detail VALUES ('CM003','IonExchange_MethodX','IC','StrongCation','200.0','7.8','SCX','Water','NaCl_0.5M','Linear_0-100%_NaCl_20min','1.2','25.0','Conductivity','20','DILUTE_WITH_BUFFER','25','300','2025-03-05','OP003','2025-03-06 09:00:00','Ion exchange for basic analytes');

-- Records of electrochemical testing performed on electrode materials
CREATE TABLE electrochemical_test_record (
  test_id TEXT NOT NULL,
  electrode_id TEXT,
  cell_type TEXT,
  electrolyte TEXT,
  test_type TEXT,
  scan_rate_mv_s REAL,
  potential_start_v REAL,
  potential_end_v REAL,
  cycles INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  operator_id TEXT,
  test_date DATE,
  data_file_path TEXT,
  analysis_status TEXT,
  impedance_ohm REAL,
  charge_capacity_mah REAL,
  discharge_capacity_mah REAL,
  coulombic_efficiency_percent REAL,
  created_timestamp DATETIME,
  notes TEXT,
  PRIMARY KEY (test_id)
);

INSERT INTO electrochemical_test_record VALUES ('ET001','ELEC01','ThreeElectrode','LiPF6_EC_DMC','CV',5.0,0.0,3.0,1,22.0,40.0,'OP100','2025-01-20','/data/echem/ET001.csv','COMPLETED',15.2,120.5,118.0,97.9,'Initial cyclic voltammetry');
INSERT INTO electrochemical_test_record VALUES ('ET002','ELEC02','TwoElectrode','NaCl_Solution','EIS',0.0,0.0,0.0,1,25.0,35.0,'OP101','2025-02-14','/data/echem/ET002.csv','COMPLETED',30.5,0,0,0,'Electrochemical impedance spectroscopy');
INSERT INTO electrochemical_test_record VALUES ('ET003','ELEC03','ThreeElectrode','KOH_1M','Galvanostatic','',0.0,2.0,500,23.0,45.0,'OP102','2025-03-08','/data/echem/ET003.csv','PENDING',0,250.0,245.0,98.0,'Long‑term cycling test');

-- Definitions of computational chemistry simulation runs
CREATE TABLE computational_chemistry_simulation_run (
  run_id TEXT NOT NULL,
  software_name TEXT,
  software_version TEXT,
  method TEXT,
  basis_set TEXT,
  charge INTEGER,
  multiplicity INTEGER,
  molecule_input_file TEXT,
  job_submission_timestamp DATETIME,
  compute_node TEXT,
  cpu_cores INTEGER,
  gpu_required TEXT,
  walltime_hours REAL,
  memory_gb REAL,
  status TEXT,
  final_energy_hartree REAL,
  convergence_criteria TEXT,
  output_file_path TEXT,
  created_by TEXT,
  notes TEXT,
  PRIMARY KEY (run_id)
);

INSERT INTO computational_chemistry_simulation_run VALUES ('CS001','Gaussian','16.0','DFT','6-31G(d)','0','1','mol001.gjf','2025-02-01 10:00:00','node12',16,'NO',48.0,32.0,'COMPLETED',-382.456,'1e-6','/output/CS001.log','OP200','Geometry optimization');
INSERT INTO computational_chemistry_simulation_run VALUES ('CS002','ORCA','5.0.3','MP2','def2-TZVP','-1','2','mol002.xyz','2025-02-15 14:30:00','node07',32,'YES',72.0,64.0,'RUNNING',NULL,NULL,'/output/CS002.log','OP201','Open-shell MP2 calculation');
INSERT INTO computational_chemistry_simulation_run VALUES ('CS003','NAMD','2.14','MD','CHARMM36','0','1','top001.psf','2025-03-05 08:15:00','node03',24,'YES',96.0,128.0,'QUEUED',NULL,NULL,'/output/CS003.log','OP202','Molecular dynamics equilibration');

-- Monitoring records for radiation safety in the lab
CREATE TABLE radiation_safety_monitoring (
  record_id TEXT NOT NULL,
  detector_id TEXT,
  detector_type TEXT,
  location TEXT,
  measurement_type TEXT,
  value_msv REAL,
  measurement_timestamp DATETIME,
  alarm_status TEXT,
  technician_id TEXT,
  calibration_date DATE,
  maintenance_date DATE,
  comments TEXT,
  created_timestamp DATETIME,
  approved_by TEXT,
  approval_timestamp DATETIME,
  batch_id TEXT,
  shift TEXT,
  area_zone TEXT,
  radiation_source TEXT,
  threshold_msv REAL,
  PRIMARY KEY (record_id)
);

INSERT INTO radiation_safety_monitoring VALUES ('RS001','DET01','Geiger','LabA','Gamma',0.12,'2025-01-10 09:00:00','NORMAL','TECH01','2024-12-01','2025-01-05','No issues','2025-01-10 09:05:00','SUPV01','2025-01-10 09:10:00','B001','DAY','ZONE1','Co60',0.5);
INSERT INTO radiation_safety_monitoring VALUES ('RS002','DET02','Scintillation','LabB','Beta',0.08,'2025-01-11 14:30:00','NORMAL','TECH02','2024-11-15','2025-01-08','Sensor cleaned','2025-01-11 14:35:00','SUPV02','2025-01-11 14:40:00','B002','EVENING','ZONE2','Cs137',0.4);
INSERT INTO radiation_safety_monitoring VALUES ('RS003','DET03','Ion Chamber','LabC','Alpha',0.20,'2025-01-12 22:45:00','ALARM','TECH03','2024-10-20','2025-01-10','Alarm triggered, investigation started','2025-01-12 22:50:00','SUPV03','2025-01-12 22:55:00','B003','NIGHT','ZONE3','Am241',0.3);

-- Characteristics of airflow zones within the laboratory ventilation system
CREATE TABLE lab_airflow_zone_characteristics (
  zone_id TEXT NOT NULL,
  zone_name TEXT,
  floor_level INTEGER,
  area_sq_m REAL,
  ceiling_height_m REAL,
  supply_airflow_cmh REAL,
  exhaust_airflow_cmh REAL,
  pressure_diff_pa REAL,
  temperature_setpoint_c REAL,
  humidity_setpoint_percent REAL,
  filter_type TEXT,
  filter_efficiency_percent REAL,
  maintenance_interval_days INTEGER,
  last_maintenance_date DATE,
  airflow_uniformity_percent REAL,
  turbulence_intensity_percent REAL,
  noise_level_db_a REAL,
  created_timestamp DATETIME,
  notes TEXT,
  PRIMARY KEY (zone_id)
);

INSERT INTO lab_airflow_zone_characteristics VALUES ('Z01','SynthesisArea','1',120.5,3.0,5000.0,4950.0,5.0,22.0,45.0,'HEPA','99.99',180,'2025-01-01',95.0,3.0,55.0,'2025-01-02 08:00:00','Zone for batch reactors');
INSERT INTO lab_airflow_zone_characteristics VALUES ('Z02','AnalyticalSuite','2',80.0,2.8,3000.0,2980.0,3.5,21.0,50.0,'ULPA','99.999',365,'2024-12-15',92.0,2.5,48.0,'2025-01-03 09:15:00','Contains spectrometers and chromatographs');
INSERT INTO lab_airflow_zone_characteristics VALUES ('Z03','Cleanroom','0',200.0,3.2,8000.0,7950.0,2.0,20.0,40.0,'ISO5','99.9999',730,'2024-11-30',98.0,1.5,42.0,'2025-01-04 07:30:00','Class 1000 cleanroom');

-- Flow diagram metadata for chemical processes
CREATE TABLE chemical_process_flow_diagram (
  diagram_id TEXT NOT NULL,
  process_name TEXT,
  version_number INTEGER,
  creator_id TEXT,
  creation_date DATE,
  approval_status TEXT,
  approval_date DATE,
  diagram_file_path TEXT,
  description TEXT,
  number_of_units INTEGER,
  total_mass_flow_kg_h REAL,
  total_energy_consumption_mwh REAL,
  safety_category TEXT,
  hazard_rating INTEGER,
  control_strategy TEXT,
  last_updated_timestamp DATETIME,
  review_cycle_months INTEGER,
  associated_project_id TEXT,
  comments TEXT,
  PRIMARY KEY (diagram_id)
);

INSERT INTO chemical_process_flow_diagram VALUES ('DP001','Esterification','1','OP400','2025-01-05','APPROVED','2025-01-10','/diagrams/DP001.png','Standard esterification process',5,1500.0,35.0,'MEDIUM',3,'PID_CONTROL','2025-01-12 10:00:00',12,'PRJ5001','Verified by safety team');
INSERT INTO chemical_process_flow_diagram VALUES ('DP002','Polymerization','2','OP401','2025-02-01','PENDING',NULL,'/diagrams/DP002.png','New polymer batch process',8,2500.0,60.0,'HIGH',5,'ADVANCED_CONTROL','2025-02-10 11:30:00',6,'PRJ5002','Awaiting final review');
INSERT INTO chemical_process_flow_diagram VALUES ('DP003','SolventRecovery','1','OP402','2025-03-03','APPROVED','2025-03-08','/diagrams/DP003.png','Closed-loop solvent recovery',4,800.0,20.0,'LOW',1,'BASIC_CONTROL','2025-03-09 09:45:00',24,'PRJ5003','Operational since Q1 2025');

-- Metadata for molecular imaging studies performed on samples
CREATE TABLE molecular_imaging_study (
  study_id TEXT NOT NULL,
  sample_id TEXT,
  imaging_modality TEXT,
  instrument_id TEXT,
  contrast_agent TEXT,
  acquisition_date DATE,
  resolution_nm REAL,
  voxel_size_nm REAL,
  slice_thickness_nm REAL,
  field_of_view_um REAL,
  scan_time_min REAL,
  operator_id TEXT,
  data_path TEXT,
  analysis_software TEXT,
  analysis_version TEXT,
  results_summary TEXT,
  qc_status TEXT,
  created_timestamp DATETIME,
  notes TEXT,
  PRIMARY KEY (study_id)
);

INSERT INTO molecular_imaging_study VALUES ('MI001','SMP001','CryoEM','INST100','None','2025-02-14',2.0,1.5,0.5,150.0,30.0,'OP600','/imaging/MI001.mrc','CryoEMSoft','3.2','High resolution structure','PASS','2025-02-15 08:20:00','Initial dataset');
INSERT INTO molecular_imaging_study VALUES ('MI002','SMP002','Fluorescence','INST101','FITC','2025-03-01',250.0,200.0,5.0,500.0,12.0,'OP601','/imaging/MI002.tif','FluoAnalyser','1.1','Cellular localization observed','PASS','2025-03-02 09:10:00','Live cell imaging');
INSERT INTO molecular_imaging_study VALUES ('MI003','SMP003','Confocal','INST102','DAPI','2025-03-20',300.0,250.0,3.0,400.0,15.0,'OP602','/imaging/MI003.lsm','ConfocalSuite','2.0','Nuclear staining clear','FAIL','2025-03-21 10:05:00','Focus issues detected');

-- Log of equipment failures and root cause analyses
CREATE TABLE equipment_failure_root_cause (
  failure_id TEXT NOT NULL,
  equipment_id TEXT,
  failure_date DATE,
  downtime_hours REAL,
  failure_type TEXT,
  symptom_description TEXT,
  root_cause TEXT,
  corrective_action TEXT,
  responsible_engineer TEXT,
  verification_date DATE,
  status TEXT,
  comments TEXT,
  created_timestamp DATETIME,
  PRIMARY KEY (failure_id)
);

INSERT INTO equipment_failure_root_cause VALUES ('FR001','EQ001','2025-01-18',4.5,'Mechanical','Valve leak','Worn_seal','Replace_seal_and_test','ENG01','2025-01-20','RESOLVED','Leak fixed and system re‑pressurized');
INSERT INTO equipment_failure_root_cause VALUES ('FR002','EQ002','2025-02-05',2.0,'Electrical','Power fluctuation','Loose_connection','Tighten_connection_and_monitor','ENG02','2025-02-06','RESOLVED','No further interruptions observed');
INSERT INTO equipment_failure_root_cause VALUES ('FR003','EQ003','2025-03-12',8.0,'Software','Control algorithm crash','Bug_in_version_3_4','Patch_applied_and_system_rebooted','ENG03','2025-03-15','RESOLVED','Patch version 3_4_1 installed');

-- Records of waste disposal shipments to external treatment facilities
CREATE TABLE waste_disposal_shipment (
  shipment_id TEXT NOT NULL,
  waste_type TEXT,
  container_id TEXT,
  volume_liters REAL,
  weight_kg REAL,
  departure_date DATE,
  arrival_date DATE,
  carrier_company TEXT,
  carrier_contact TEXT,
  disposal_facility TEXT,
  facility_address TEXT,
  manifest_number TEXT,
  compliance_status TEXT,
  inspector_id TEXT,
  inspection_date DATE,
  notes TEXT,
  created_timestamp DATETIME,
  PRIMARY KEY (shipment_id)
);

INSERT INTO waste_disposal_shipment VALUES ('WS001','Organic','CNT001',150.0,200.0,'2025-01-22','2025-01-23','EcoTrans','5551234','GreenWaste Facility','123 Green Rd','MAN001','COMPLIANT','INSP01','2025-01-24','No incidents');
INSERT INTO waste_disposal_shipment VALUES ('WS002','HeavyMetal','CNT002',80.0,120.0,'2025-02-10','2025-02-11','SafeHaul','5555678','MetalRecycle Plant','456 Metal St','MAN002','COMPLIANT','INSP02','2025-02-12','Handled with PPE');
INSERT INTO waste_disposal_shipment VALUES ('WS003','Radioactive','CNT003',20.0,30.0,'2025-03-05','2025-03-06','RadSecure','5559012','Nuclear Disposal Center','789 Nuclear Ave','MAN003','COMPLIANT','INSP03','2025-03-07','Radiation levels within limits');