-- Microbial strain repository
CREATE TABLE microbial_strain_repository (
  strain_id TEXT PRIMARY KEY,
  species TEXT,
  genotype TEXT,
  source TEXT,
  isolation_date TEXT,
  storage_location TEXT,
  freezer_section TEXT,
  shelf_number INTEGER,
  tube_id TEXT,
  aliquot_volume_ml REAL,
  viability_percent REAL,
  passage_number INTEGER,
  antibiotic_resistance TEXT,
  growth_medium TEXT,
  incubation_temp_c REAL,
  incubation_time_h REAL,
  notes TEXT,
  curator_name TEXT,
  last_updated TEXT,
  biosecurity_level TEXT,
  strain_status TEXT,
  reference_pub TEXT
);
INSERT INTO microbial_strain_repository VALUES ('STR001','Ecoli','WT','LabA','2023-06-15','FreezerA','Section1',12,'TUB001',1.5,98.5,5,'AmpR','LB',37.0,18.0,'No issues','DrSmith','2024-01-01','BSL1','Active','PMID123456');
INSERT INTO microbial_strain_repository VALUES ('STR002','Bsubtilis','Δspo0A','LabB','2022-11-03','FreezerB','Section2',7,'TUB002',2.0,95.0,8,'KanR','Minimal',30.0,24.0,'Spore deficient','DrJones','2024-01-15','BSL1','Active','PMID234567');
INSERT INTO microbial_strain_repository VALUES ('STR003','Saccharomyces_cerevisiae','ura3Δ','LabC','2021-09-20','FreezerC','Section3',3,'TUB003',0.8,92.0,12,'None','YPD',30.0,20.0,'Yeast strain for auxotrophy','DrLee','2024-02-01','BSL1','Inactive','PMID345678');

-- Lab gel image archive
CREATE TABLE lab_gel_image_archive (
  image_id TEXT PRIMARY KEY,
  experiment_id TEXT,
  gel_type TEXT,
  staining_method TEXT,
  resolution_dpi INTEGER,
  image_format TEXT,
  capture_date TEXT,
  operator TEXT,
  file_path TEXT,
  image_width_px INTEGER,
  image_height_px INTEGER,
  band_count INTEGER,
  ladder_used TEXT,
  buffer_type TEXT,
  voltage_v REAL,
  run_time_min REAL,
  gel_percentage REAL,
  notes TEXT,
  quality_score INTEGER,
  archived_by TEXT,
  archive_date TEXT,
  storage_location TEXT
);
INSERT INTO lab_gel_image_archive VALUES ('IMG001','EXP001','Agarose','Coomassie','300','png','2024-02-10','Alice','/images/IMG001.png',1200,800,8,'Ladder500','TAE',120.0,45.0,1.0,'Clean','95','Bob','2024-03-01','ArchiveRoom1');
INSERT INTO lab_gel_image_archive VALUES ('IMG002','EXP002','Polyacrylamide','Silver','600','tif','2024-02-12','Bob','/images/IMG002.tif',1600,1200,12,'Ladder100','Tris-glycine',150.0,60.0,12.0,'Slight background','88','Carol','2024-03-03','ArchiveRoom2');
INSERT INTO lab_gel_image_archive VALUES ('IMG003','EXP003','Agarose','SYBR_Gold','400','jpg','2024-02-15','Carol','/images/IMG003.jpg',1400,900,5,'Ladder200','TAE',130.0,50.0,0.8,'Fluorescent signal','92','Dave','2024-03-05','ArchiveRoom1');

-- Spectroscopy session
CREATE TABLE spectroscopy_session (
  session_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  sample_id TEXT,
  technique TEXT,
  wavelength_start_nm REAL,
  wavelength_end_nm REAL,
  resolution_nm REAL,
  integration_time_s REAL,
  detector_gain REAL,
  laser_power_mw REAL,
  temperature_c REAL,
  pressure_kpa REAL,
  operator TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  data_file_path TEXT,
  calibration_status TEXT,
  notes TEXT,
  processing_version TEXT,
  quality_flag TEXT,
  batch_id TEXT,
  lab_location TEXT
);
INSERT INTO spectroscopy_session VALUES ('SS001','INST001','SMP001','Raman','400','1800','2','10','1.5','5','22','101','Eve','2024-04-01 09:00:00','2024-04-01 09:30:00','/data/SS001.dat','Calibrated','No issues','v1.2','PASS','BATCH01','LabA');
INSERT INTO spectroscopy_session VALUES ('SS002','INST002','SMP002','FTIR','500','4000','4','5','2.0','0','20','101','Frank','2024-04-02 10:15:00','2024-04-02 10:45:00','/data/SS002.dat','Calibrated','Minor baseline drift','v1.3','WARN','BATCH01','LabB');
INSERT INTO spectroscopy_session VALUES ('SS003','INST001','SMP003','UV-Vis','200','800','1','2','1.0','0','25','101','Grace','2024-04-03 11:00:00','2024-04-03 11:10:00','/data/SS003.dat','Not_Calibrated','Recalibration needed','v1.0','FAIL','BATCH02','LabA');

-- Cell culture log
CREATE TABLE cell_culture_log (
  log_id TEXT PRIMARY KEY,
  cell_line_id TEXT,
  passage_number INTEGER,
  culture_date TEXT,
  incubator_id TEXT,
  temperature_c REAL,
  CO2_percent REAL,
  media_type TEXT,
  media_volume_ml REAL,
  flask_type TEXT,
  flask_id TEXT,
  confluency_percent REAL,
  viability_percent REAL,
  contamination_flag TEXT,
  notes TEXT,
  technician TEXT,
  last_media_change TEXT,
  split_ratio REAL,
  mycoplasma_test_date TEXT,
  mycoplasma_result TEXT,
  freezerslot TEXT,
  storage_temp_c REAL
);
INSERT INTO cell_culture_log VALUES ('CL001','HEK293','5','2024-03-20','INC001',37.0,5.0,'DMEM',20.0,'T75','FLASK001',80.0,95.0,'No','Routine passage','Hannah','2024-03-18',0.3,'2024-01-15','Negative','SlotA','-80');
INSERT INTO cell_culture_log VALUES ('CL002','MCF7','12','2024-03-22','INC002',37.0,5.0,'RPMI',15.0,'T25','FLASK002',70.0,92.0,'No','Observed slight morphology change','Ian','2024-03-20',0.2,'2024-02-10','Negative','SlotB','-80');
INSERT INTO cell_culture_log VALUES ('CL003','A549','8','2024-03-25','INC001',37.0,5.0,'DMEM_F12',18.0,'T75','FLASK003',85.0,96.0,'Yes','Contamination suspected, antibiotic added','Jane','2024-03-23',0.25,'2024-03-01','Positive','SlotC','-80');

-- Instrument firmware update
CREATE TABLE instrument_firmware_update (
  update_id TEXT PRIMARY KEY,
  instrument_serial TEXT,
  firmware_version TEXT,
  release_date TEXT,
  applied_date TEXT,
  technician TEXT,
  checksum TEXT,
  file_path TEXT,
  update_success_flag TEXT,
  duration_minutes REAL,
  notes TEXT,
  vendor TEXT,
  support_ticket_id TEXT,
  rollback_possible_flag TEXT,
  previous_version TEXT,
  changelog_summary TEXT,
  health_check_before TEXT,
  health_check_after TEXT,
  compliance_status TEXT,
  audit_id TEXT,
  location TEXT,
  verification_user TEXT
);
INSERT INTO instrument_firmware_update VALUES ('UPD001','SN12345','v3.2.1','2024-01-15','2024-02-01','Kyle','ABCD1234','/fw/v3.2.1.bin','Yes',12.5,'Update applied without issues','VendorX','TCK1001','Yes','v3.1.9','Bug fixes and performance','PASS','PASS','Compliant','AUD001','LabA','Lara');
INSERT INTO instrument_firmware_update VALUES ('UPD002','SN67890','v2.5.0','2023-12-10','2024-02-10','Liam','EFGH5678','/fw/v2.5.0.bin','No',20.0,'Power loss during update','VendorY','TCK1002','Yes','v2.4.8','Security patch','FAIL','PASS','NonCompliant','AUD002','LabB','Mona');
INSERT INTO instrument_firmware_update VALUES ('UPD003','SN54321','v1.9.3','2024-03-01','2024-03-05','Nina','IJKL9012','/fw/v1.9.3.bin','Yes',8.0,'Successful rollback test after install','VendorZ','TCK1003','No','v1.9.2','Minor UI update','PASS','PASS','Compliant','AUD003','LabC','Odin');

-- Environmental hazard inspection
CREATE TABLE environmental_hazard_inspection (
  inspection_id TEXT PRIMARY KEY,
  site_id TEXT,
  inspector_name TEXT,
  inspection_date TEXT,
  hazard_type TEXT,
  severity_level TEXT,
  mitigation_action TEXT,
  due_date TEXT,
  status TEXT,
  notes TEXT,
  photo_url TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  radiation_uSv_h REAL,
  noise_db REAL,
  airflow_cmh REAL,
  chemical_concentration_ppm REAL,
  compliance_flag TEXT,
  followup_inspection_id TEXT,
  area_sq_m REAL,
  building_section TEXT
);
INSERT INTO environmental_hazard_inspection VALUES ('INSP001','SITE01','Olivia','2024-04-01','Chemical Spill','High','Containment and cleanup','2024-04-05','Open','Spill in storage area','http://photos/insp001.jpg',22.5,45.0,0.0,68.0,120.0,5.0,'No','INSP002',45.0,'NorthWing');
INSERT INTO environmental_hazard_inspection VALUES ('INSP002','SITE01','Paul','2024-04-07','Ventilation Fault','Medium','Replace filter','2024-04-12','Closed','Filter replaced successfully','http://photos/insp002.jpg',21.0,40.0,0.0,55.0,130.0,0.0,'Yes',NULL,30.0,'NorthWing');
INSERT INTO environmental_hazard_inspection VALUES ('INSP003','SITE02','Quinn','2024-04-10','Radiation Leak','Critical','Evacuate and repair source','2024-04-20','Open','Leak detected near isotope storage','http://photos/insp003.jpg',19.0,35.0,12.5,70.0,110.0,0.0','No','INSP004',60.0,'SouthWing');

-- Data processing job
CREATE TABLE data_processing_job (
  job_id TEXT PRIMARY KEY,
  dataset_id TEXT,
  pipeline_name TEXT,
  version TEXT,
  submitter TEXT,
  submit_time TEXT,
  start_time TEXT,
  end_time TEXT,
  compute_node TEXT,
  cpu_cores INTEGER,
  memory_gb REAL,
  gpu_used_flag TEXT,
  status TEXT,
  exit_code INTEGER,
  log_path TEXT,
  output_path TEXT,
  error_message TEXT,
  priority TEXT,
  queue_name TEXT,
  runtime_seconds REAL,
  data_volume_gb REAL,
  notes TEXT
);
INSERT INTO data_processing_job VALUES ('JOB001','DS001','RNA_Seq_Analysis','v2.0','Rita','2024-03-28 08:00:00','2024-03-28 08:15:00','2024-03-28 10:45:00','node12',16,64.0,'Yes','Completed',0,'/logs/JOB001.log','/output/JOB001/','', 'High','standard',9000.0,15.2,'');
INSERT INTO data_processing_job VALUES ('JOB002','DS002','Variant_Calling','v1.5','Sam','2024-03-30 09:30:00','2024-03-30 09:45:00','2024-03-30 12:00:00','node07',32,128.0,'No','Failed',1,'/logs/JOB002.log','/output/JOB002/','Segmentation fault', 'Medium','high_mem',8100.0,20.5,'Retry after fixing memory issue');
INSERT INTO data_processing_job VALUES ('JOB003','DS003','Metabolomics_Pipeline','v3.1','Tina','2024-04-01 07:00:00','2024-04-01 07:10:00','2024-04-01 09:20:00','node03',24,96.0,'Yes','Completed',0,'/logs/JOB003.log','/output/JOB003/','', 'Low','standard',7800.0,12.8,'');

-- Clinical imaging study
CREATE TABLE clinical_imaging_study (
  study_id TEXT PRIMARY KEY,
  patient_id TEXT,
  modality TEXT,
  scanner_id TEXT,
  contrast_used_flag TEXT,
  acquisition_date TEXT,
  series_number INTEGER,
  image_series_path TEXT,
  radiologist TEXT,
  diagnosis TEXT,
  protocol_name TEXT,
  slice_thickness_mm REAL,
  field_of_view_cm REAL,
  matrix_size TEXT,
  repetition_time_ms REAL,
  echo_time_ms REAL,
  inversion_time_ms REAL,
  notes TEXT,
  quality_score INTEGER,
  approved_by TEXT,
  approval_date TEXT,
  study_status TEXT
);
INSERT INTO clinical_imaging_study VALUES ('STU001','PAT001','MRI','SCN001','Yes','2024-03-15',1,'/images/STU001/','DrAllen','Glioblastoma','Brain_Tumor_Protocol',5.0,25.0,'256x256',2000.0,90.0,1100.0,'','85','DrAllen','2024-03-16','Approved');
INSERT INTO clinical_imaging_study VALUES ('STU002','PAT002','CT','SCN002','No','2024-03-18',1,'/images/STU002/','DrBaker','Pulmonary Embolism','Chest_Angiography',1.0,35.0,'512x512',0.0,0.0,0.0,'','90','DrBaker','2024-03-19','Approved');
INSERT INTO clinical_imaging_study VALUES ('STU003','PAT003','PET','SCN003','Yes','2024-03-20',1,'/images/STU003/','DrCarter','Alzheimer''s Disease','Brain_FDG',2.5,30.0,'128x128',2500.0,120.0,0.0,'','78','DrCarter','2024-03-21','Pending Review');

-- Chemical transport manifest
CREATE TABLE chemical_transport_manifest (
  manifest_id TEXT PRIMARY KEY,
  shipment_id TEXT,
  carrier TEXT,
  departure_date TEXT,
  arrival_date TEXT,
  origin_location TEXT,
  destination_location TEXT,
  temperature_control_flag TEXT,
  temperature_range_c TEXT,
  hazard_class TEXT,
  total_weight_kg REAL,
  container_type TEXT,
  seal_number TEXT,
  customs_clearance_flag TEXT,
  documentation_complete_flag TEXT,
  driver_name TEXT,
  vehicle_id TEXT,
  tracking_url TEXT,
  incident_report_flag TEXT,
  notes TEXT,
  received_by TEXT,
  receipt_date TEXT
);
INSERT INTO chemical_transport_manifest VALUES ('MAN001','SHIP001','CarrierX','2024-04-01','2024-04-03','WarehouseA','LabB','Yes','2-8','Class3',1250.5,'Refrigerated_Container','SEAL123','Yes','Yes','Tom','VHC001','http://track/SHIP001','No','Handled with care','Anna','2024-04-04');
INSERT INTO chemical_transport_manifest VALUES ('MAN002','SHIP002','CarrierY','2024-04-05','2024-04-07','WarehouseB','LabC','No','N/A','Class2',800.0,'Metal_Drum','SEAL456','Yes','Yes','Uma','VHC002','http://track/SHIP002','Yes','Spillage at checkpoint','Bob','2024-04-08');
INSERT INTO chemical_transport_manifest VALUES ('MAN003','SHIP003','CarrierZ','2024-04-09','2024-04-11','WarehouseC','LabD','Yes','-5--1','Class9',500.2,'Insulated_Box','SEAL789','No','No','Vic','VHC003','http://track/SHIP003','No','Awaiting customs','Cathy','2024-04-12');

-- Quality assurance audit
CREATE TABLE quality_assurance_audit (
  audit_id TEXT PRIMARY KEY,
  department TEXT,
  auditor_name TEXT,
  audit_date TEXT,
  scope TEXT,
  findings_count INTEGER,
  critical_findings INTEGER,
  major_findings INTEGER,
  minor_findings INTEGER,
  corrective_actions_taken TEXT,
  followup_date TEXT,
  compliance_score REAL,
  notes TEXT,
  audit_type TEXT,
  duration_hours REAL,
  documents_reviewed INTEGER,
  interviewees_count INTEGER,
  risk_assessment_level TEXT,
  next_audit_due TEXT,
  audit_status TEXT,
  closure_date TEXT,
  summary_report_path TEXT
);
INSERT INTO quality_assurance_audit VALUES ('AUD001','Safety','Wanda','2024-02-15','Lab safety protocols',12,2,3,7,'All actions completed','2024-03-01',92.5,'','Internal','4.0',15,10,'Medium','2025-02-15','Closed','2024-03-05','/reports/AUD001.pdf');
INSERT INTO quality_assurance_audit VALUES ('AUD002','Data Management','Xander','2024-03-10','Data backup procedures',8,1,2,5,'Pending for two items','2024-04-01',85.0,'Need improvement in retention policy','External','3.5',12,8,'High','2025-03-10','Open','', '');
INSERT INTO quality_assurance_audit VALUES ('AUD003','Equipment','Yara','2024-04-05','Calibration records review',10,0,4,6,'All corrective actions implemented','2024-04-20',90.0,'','Internal','2.5',10,6,'Low','2025-04-05','Closed','2024-04-22','/reports/AUD003.pdf');