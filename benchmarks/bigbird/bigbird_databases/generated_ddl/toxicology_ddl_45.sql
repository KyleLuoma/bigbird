-- Laser optics inventory tracking
CREATE TABLE laser_optics_inventory (
  optics_id TEXT NOT NULL,
  laser_id TEXT,
  optic_type TEXT,
  focal_length_mm INTEGER,
  diameter_mm INTEGER,
  coating_type TEXT,
  transmission_percent INTEGER,
  manufacturer TEXT,
  model_number TEXT,
  serial_number TEXT,
  purchase_date TEXT,
  warranty_expiration TEXT,
  location_room TEXT,
  alignment_status TEXT,
  last_calibrated TEXT,
  calibration_cert_id TEXT,
  maintenance_cycle_days INTEGER,
  next_maintenance_due TEXT,
  notes TEXT,
  active_flag TEXT,
  PRIMARY KEY (optics_id)
);

INSERT INTO laser_optics_inventory VALUES ('OPT001','LAS001','Lens','150','25','ARCoating','99','OptiCorp','LENS-A1','SN12345','2022-01-15','2025-01-15','Room101','Aligned','2023-06-01','CERT001',180,'2024-01-01','Initial installation','Y');
INSERT INTO laser_optics_inventory VALUES ('OPT002','LAS002','Mirror','200','50','Dielectric','98','MirrorWorks','MIR-B2','SN54321','2021-07-20','2024-07-20','Room202','Misaligned','2023-01-10','CERT002',365,'2023-12-20','Requires realignment','Y');
INSERT INTO laser_optics_inventory VALUES ('OPT003','LAS003','BeamSplitter','100','30','ARCoating','97','BeamTech','BS-C3','SN67890','2023-03-05','2026-03-05','Room303','Aligned','2023-09-15','CERT003',90,'2024-06-15','Spare part in stock','N');

-- Spectral acquisition configuration parameters
CREATE TABLE spectral_acquisition_config (
  config_id TEXT NOT NULL,
  instrument_id TEXT,
  scan_mode TEXT,
  start_wavelength_nm INTEGER,
  end_wavelength_nm INTEGER,
  resolution_nm REAL,
  integration_time_ms INTEGER,
  averaging_factor INTEGER,
  detector_gain INTEGER,
  laser_power_mw REAL,
  slit_width_um INTEGER,
  polarization TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  created_by TEXT,
  creation_timestamp TEXT,
  last_modified_by TEXT,
  last_modified_timestamp TEXT,
  validation_status TEXT,
  comments TEXT,
  active_flag TEXT,
  PRIMARY KEY (config_id)
);

INSERT INTO spectral_acquisition_config VALUES ('CFG001','SPEC001','Continuous','200','800','0.5','100','5','10','15.0','50','p','25.0','45.0','tech1','2023-01-01','tech2','2023-06-01','Validated','Standard configuration','Y');
INSERT INTO spectral_acquisition_config VALUES ('CFG002','SPEC002','Step','400','700','0.2','250','10','12','20.0','75','s','22.5','40.0','tech3','2022-12-15','tech3','2023-04-20','Pending','High resolution mode','Y');
INSERT INTO spectral_acquisition_config VALUES ('CFG003','SPEC003','Continuous','300','900','1.0','50','3','8','10.0','30','p','20.0','35.0','tech4','2023-02-10','tech5','2023-05-05','Validated','Fast scan low res','N');

-- Cryogenic vial usage log
CREATE TABLE cryogenic_vial_log (
  vial_id TEXT NOT NULL,
  sample_id TEXT,
  storage_container TEXT,
  rack_position TEXT,
  fill_volume_ul INTEGER,
  fill_date TEXT,
  freeze_date TEXT,
  thaw_date TEXT,
  operator_id TEXT,
  temperature_c REAL,
  status TEXT,
  last_inspection TEXT,
  inspection_by TEXT,
  notes TEXT,
  barcode TEXT,
  location_building TEXT,
  location_floor INTEGER,
  location_room TEXT,
  decommission_date TEXT,
  decommission_reason TEXT,
  active_flag TEXT,
  PRIMARY KEY (vial_id)
);

INSERT INTO cryogenic_vial_log VALUES ('VIAL001','SMP001','CNR001','A01','500','2023-01-10','2023-01-12','','OP001','-150','Stored','2023-03-01','OP002','No issues','BC001','BioBuilding','1','CryoRoomA','','','Y');
INSERT INTO cryogenic_vial_log VALUES ('VIAL002','SMP002','CNR001','A02','250','2023-02-05','2023-02-07','2023-05-01','OP003','-150','Thawed','2023-04-20','OP004','Thawed for analysis','BC002','BioBuilding','1','CryoRoomA','','','N');
INSERT INTO cryogenic_vial_log VALUES ('VIAL003','SMP003','CNR002','B05','1000','2023-03-15','2023-03-17','','OP005','-150','Stored','2023-06-10','OP006','Pending QC','BC003','BioBuilding','2','CryoRoomB','','','Y');

-- Nanoparticle surface characterization results
CREATE TABLE nanoparticle_surface_characterization (
  record_id TEXT NOT NULL,
  particle_id TEXT,
  technique TEXT,
  measurement_date TEXT,
  size_nm REAL,
  zeta_potential_mv REAL,
  surface_area_m2_g REAL,
  pore_volume_cm3_g REAL,
  functional_group TEXT,
  coating_material TEXT,
  concentration_mg_ml REAL,
  solvent TEXT,
  operator_id TEXT,
  instrument_id TEXT,
  calibration_id TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  comments TEXT,
  validation_status TEXT,
  data_file_path TEXT,
  analysis_version TEXT,
  PRIMARY KEY (record_id)
);

INSERT INTO nanoparticle_surface_characterization VALUES ('NR001','NP001','DLS','2023-04-01','75.2','-25.4','120.5','0.45','Carboxyl','PEG','0.5','Water','OP010','INST01','CAL001','22.0','40.0','Initial batch','Validated','/data/np001_dls.csv','v1.0');
INSERT INTO nanoparticle_surface_characterization VALUES ('NR002','NP002','Zeta','2023-05-12','120.0','+15.2','85.0','0.30','Amine','PVP','1.0','Ethanol','OP011','INST02','CAL002','20.0','35.0','Stability test','Pending','/data/np002_zeta.csv','v1.1');
INSERT INTO nanoparticle_surface_characterization VALUES ('NR003','NP003','BET','2023-06-20','200.0','N/A','150.0','0.60','Silane','None','2.0','Acetone','OP012','INST03','CAL003','25.0','45.0','High surface area sample','Validated','/data/np003_bet.csv','v2.0');

-- Lab medical surveillance records
CREATE TABLE lab_medical_surveillance (
  surveillance_id TEXT NOT NULL,
  employee_id TEXT,
  surveillance_date TEXT,
  height_cm INTEGER,
  weight_kg REAL,
  blood_pressure_systolic INTEGER,
  blood_pressure_diastolic INTEGER,
  cholesterol_total_mg_dl REAL,
  hdl_mg_dl REAL,
  ldl_mg_dl REAL,
  triglycerides_mg_dl REAL,
  vision_left_eye TEXT,
  vision_right_eye TEXT,
  hearing_left_db REAL,
  hearing_right_db REAL,
  vaccination_status TEXT,
  recent_exposure TEXT,
  notes TEXT,
  clinician_id TEXT,
  follow_up_required TEXT,
  follow_up_date TEXT,
  PRIMARY KEY (surveillance_id)
);

INSERT INTO lab_medical_surveillance VALUES ('MS001','EMP001','2023-01-15','175','78.5','120','80','190','55','110','130','20/20','20/20','15.0','14.5','UpToDate','None','All normal','CL001','N','','');
INSERT INTO lab_medical_surveillance VALUES ('MS002','EMP002','2023-03-22','162','65.0','130','85','210','50','120','150','20/30','20/30','20.0','19.5','UpToDate','MinorChemicalSpill','Recommended vitamin D','CL002','Y','2023-04-15','');
INSERT INTO lab_medical_surveillance VALUES ('MS003','EMP003','2023-06-10','180','90.0','115','75','180','60','100','120','20/20','20/20','13.0','13.5','UpToDate','None','No issues','CL003','N','','');

-- Isotope labeling batch information
CREATE TABLE isotope_labeling_batch (
  batch_id TEXT NOT NULL,
  target_molecule TEXT,
  isotope TEXT,
  enrichment_percent REAL,
  labeling_method TEXT,
  start_date TEXT,
  end_date TEXT,
  operator_id TEXT,
  reagent_lot TEXT,
  reagent_quantity_mg REAL,
  solvent TEXT,
  temperature_c REAL,
  pH REAL,
  yield_percent REAL,
  purification_method TEXT,
  analysis_report_id TEXT,
  qc_passed TEXT,
  notes TEXT,
  storage_location TEXT,
  last_accessed TEXT,
  PRIMARY KEY (batch_id)
);

INSERT INTO isotope_labeling_batch VALUES ('IB001','ProteinA','13C','98.5','Metabolic','2023-02-01','2023-02-10','OP020','LOT123','500','D2O','37','7.4','85','HPLC','AR001','Y','Batch for structural study','FreezerA1','2023-06-01');
INSERT INTO isotope_labeling_batch VALUES ('IB002','NucleotideB','15N','95.0','Chemical','2023-04-15','2023-04-20','OP021','LOT124','300','DMF','25','6.8','78','FlashChrom','AR002','Y','High purity needed','FreezerB2','2023-07-10');
INSERT INTO isotope_labeling_batch VALUES ('IB003','LipidC','2H','90.0','Enzymatic','2023-05-05','2023-05-12','OP022','LOT125','200','MeOH','30','7.0','70','PrepColumn','AR003','N','Pending final QC','FreezerC3','2023-08-15');

-- Electrochemical cell historical data
CREATE TABLE electrochemical_cell_history (
  cell_id TEXT NOT NULL,
  cell_type TEXT,
  electrolyte TEXT,
  separator TEXT,
  anode_material TEXT,
  cathode_material TEXT,
  assembly_date TEXT,
  testing_start_date TEXT,
  testing_end_date TEXT,
  capacity_mah REAL,
  voltage_nominal_v REAL,
  internal_resistance_mohm REAL,
  cycle_count INTEGER,
  last_cycle_date TEXT,
  degradation_percent REAL,
  operator_id TEXT,
  test_station_id TEXT,
  notes TEXT,
  maintenance_required TEXT,
  next_maintenance_due TEXT,
  PRIMARY KEY (cell_id)
);

INSERT INTO electrochemical_cell_history VALUES ('EC001','LiIon','LiPF6_EC_DMC','Celgard','Graphite','NMC','2022-11-01','2023-01-15','2023-06-15','2500','3.7','15','300','2023-06-15','5.0','OP030','TS01','No issues','N','2024-01-01');
INSERT INTO electrochemical_cell_history VALUES ('EC002','LiFePO4','LiPF6_EC_DMC','Celgard','Carbon','LiFePO4','2023-02-10','2023-03-01','2023-09-01','1800','3.2','20','150','2023-09-01','2.5','OP031','TS02','Slight capacity fade','Y','2023-12-01');
INSERT INTO electrochemical_cell_history VALUES ('EC003','SolidState','LiFSI_Glyme','PEO','LiMetal','LLZO','2023-05-20','2023-06-10','2023-12-10','1200','4.0','10','200','2023-12-10','3.2','OP032','TS03','Requires separator inspection','N','2024-06-01');

-- Radiation dosimetry records
CREATE TABLE radiation_dosimetry_record (
  dosimetry_id TEXT NOT NULL,
  personnel_id TEXT,
  exposure_date TEXT,
  radiation_type TEXT,
  dose_msv REAL,
  measurement_device TEXT,
  device_serial TEXT,
  location TEXT,
  shift TEXT,
  supervisor_id TEXT,
  calibration_date TEXT,
  notes TEXT,
  cumulative_dose_msv REAL,
  limit_msv REAL,
  status TEXT,
  follow_up_action TEXT,
  follow_up_date TEXT,
  recorded_by TEXT,
  verification_status TEXT,
  verification_date TEXT,
  PRIMARY KEY (dosimetry_id)
);

INSERT INTO radiation_dosimetry_record VALUES ('RD001','EMP010','2023-03-05','Gamma','0.45','TLD','TLD123','Room201','Morning','SUP001','2023-02-01','No abnormal readings','1.20','5.0','Clear','','','REC001','Verified','2023-03-06');
INSERT INTO radiation_dosimetry_record VALUES ('RD002','EMP011','2023-04-12','XRay','0.80','Badge','BADGE456','Room302','Evening','SUP002','2023-03-15','Slightly elevated','2.00','5.0','Alert','Medical Review','2023-04-20','REC002','Verified','2023-04-13');
INSERT INTO radiation_dosimetry_record VALUES ('RD003','EMP012','2023-05-20','Beta','0.30','TLD','TLD789','Room403','Night','SUP003','2023-04-10','Normal','2.30','5.0','Clear','','','REC003','Verified','2023-05-21');

-- Workflow version control metadata
CREATE TABLE workflow_version_control (
  workflow_id TEXT NOT NULL,
  version_number INTEGER,
  created_by TEXT,
  creation_timestamp TEXT,
  description TEXT,
  repository_url TEXT,
  branch_name TEXT,
  commit_hash TEXT,
  approved_by TEXT,
  approval_timestamp TEXT,
  status TEXT,
  last_modified_by TEXT,
  last_modified_timestamp TEXT,
  changelog TEXT,
  associated_project TEXT,
  deployment_environment TEXT,
  rollback_allowed TEXT,
  test_coverage_percent REAL,
  documentation_url TEXT,
  notes TEXT,
  PRIMARY KEY (workflow_id, version_number)
);

INSERT INTO workflow_version_control VALUES ('WF001',1,'dev_user','2023-01-10','Initial data ingestion pipeline','http://git.lab.org/wf001','main','abc123def','lead_user','2023-01-12','Approved','dev_user','2023-01-10','Added source connectors','ProjectAlpha','Production','Y','85.0','http://docs.lab.org/wf001','');
INSERT INTO workflow_version_control VALUES ('WF001',2,'dev_user','2023-04-05','Added validation steps','http://git.lab.org/wf001','main','def456ghi','lead_user','2023-04-07','Approved','dev_user','2023-04-05','Validation module integrated','ProjectAlpha','Production','Y','90.0','http://docs.lab.org/wf001','');
INSERT INTO workflow_version_control VALUES ('WF002',1,'analyst','2023-02-20','Statistical analysis workflow','http://git.lab.org/wf002','dev','ghi789jkl','data_scientist','2023-02-22','Pending','analyst','2023-02-20','Initial version','ProjectBeta','Staging','N','75.0','http://docs.lab.org/wf002','Awaiting review');

-- Instrument access permission matrix
CREATE TABLE instrument_access_permission (
  permission_id TEXT NOT NULL,
  instrument_id TEXT,
  user_id TEXT,
  access_level TEXT,
  granted_by TEXT,
  grant_timestamp TEXT,
  expiration_date TEXT,
  purpose TEXT,
  training_completed TEXT,
  certification_id TEXT,
  notes TEXT,
  revocation_reason TEXT,
  revoked_by TEXT,
  revocation_timestamp TEXT,
  active_flag TEXT,
  created_at TEXT,
  updated_at TEXT,
  audit_trail TEXT,
  compliance_status TEXT,
  last_compliance_check TEXT,
  PRIMARY KEY (permission_id)
);

INSERT INTO instrument_access_permission VALUES ('AP001','SPEC001','EMP020','Read','SUP004','2023-01-15','2024-01-15','Routine analysis','Y','CERT010','No issues','','','','Y','2023-01-15','2023-01-15','','Compliant','2023-01-15');
INSERT INTO instrument_access_permission VALUES ('AP002','LAS002','EMP021','Control','SUP005','2023-03-01','2023-12-31','Experiment setup','Y','CERT011','Requires quarterly review','','','','Y','2023-03-01','2023-03-01','','Compliant','2023-03-01');
INSERT INTO instrument_access_permission VALUES ('AP003','EC001','EMP022','Read','SUP006','2023-05-20','2024-05-20','Cell testing','N','CERT012','Training pending','Violation of safety protocol','SUP006','2023-06-01','N','2023-05-20','2023-06-01','Revoked due to safety','NonCompliant','2023-06-01');

-- Chemical storage temperature monitoring
CREATE TABLE chemical_storage_temperature (
  sensor_id TEXT NOT NULL,
  storage_location TEXT,
  chemical_category TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  reading_timestamp TEXT,
  sensor_status TEXT,
  battery_level_percent INTEGER,
  calibration_date TEXT,
  alert_threshold_c REAL,
  alert_triggered TEXT,
  acknowledged_by TEXT,
  acknowledgment_timestamp TEXT,
  notes TEXT,
  maintenance_required TEXT,
  last_maintenance_date TEXT,
  firmware_version TEXT,
  data_logger_id TEXT,
  export_file_path TEXT,
  active_flag TEXT,
  PRIMARY KEY (sensor_id, reading_timestamp)
);

INSERT INTO chemical_storage_temperature VALUES ('TS001','FreezerA1','Solvents','-18.5','30','2023-07-01 08:00','OK','95','2023-01-01','-15','N','','','Routine check','N','2023-06-01','v1.2','DL001','/exports/ts001_20230701.csv','Y');
INSERT INTO chemical_storage_temperature VALUES ('TS002','FridgeB2','Reagents','4.2','45','2023-07-01 08:05','OK','90','2023-02-15','5','N','','','Temperature stable','N','2023-05-20','v1.1','DL002','/exports/ts002_20230701.csv','Y');
INSERT INTO chemical_storage_temperature VALUES ('TS003','ColdRoomC3','Biologics','2.0','50','2023-07-01 08:10','Warning','80','2023-03-10','1','Y','OP040','2023-07-01','Temperature above threshold','Y','2023-07-01','v1.0','DL003','/exports/ts003_20230701.csv','Y');