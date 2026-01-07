-- Simulation of laboratory air‑flow dynamics
CREATE TABLE lab_airflow_simulation_run (
  run_id TEXT PRIMARY KEY,
  simulation_name TEXT,
  software_version TEXT,
  mesh_resolution REAL,
  time_step REAL,
  total_time REAL,
  boundary_condition TEXT,
  inlet_velocity REAL,
  outlet_pressure REAL,
  turbulence_model TEXT,
  cpu_cores INTEGER,
  memory_gb INTEGER,
  start_timestamp TEXT,
  end_timestamp TEXT,
  status TEXT,
  generated_by TEXT,
  description TEXT,
  validation_score REAL,
  notes TEXT,
  archived BOOLEAN,
  source_data_hash TEXT,
  result_file_path TEXT
);

INSERT INTO lab_airflow_simulation_run VALUES
('SIM001','AirflowStudyA','CFDPro_v2.1',0.005,0.001,10.0,'VelocityInlet',0.35,101.3,'kEpsilon',16,64,'2025-06-01 08:00:00','2025-06-01 12:30:00','Completed','DrSmith','Baseline ventilation model',0.96,'No issues',FALSE,'HASHA1','/results/sim001.dat');

INSERT INTO lab_airflow_simulation_run VALUES
('SIM002','AirflowStudyB','CFDPro_v2.1',0.003,0.0005,8.0,'PressureOutlet',0.30,100.8,'LES',32,128,'2025-06-05 09:15:00','2025-06-05 14:45:00','Completed','DrJones','Modified inlet design',0.98,'Adjusted turbulence',FALSE,'HASHB2','/results/sim002.dat');

INSERT INTO lab_airflow_simulation_run VALUES
('SIM003','AirflowStudyC','CFDPro_v2.2',0.004,0.0008,12.0,'MassFlowInlet',0.40,101.0,'RNG',24,96,'2025-06-10 07:45:00','2025-06-10 13:20:00','Failed','DrLee','High‑efficiency filter test',0.00,'Solver divergence',TRUE,'HASHC3','/results/sim003.dat');

-- Log of chemical process control events
CREATE TABLE chemical_process_control_log (
  event_id TEXT PRIMARY KEY,
  batch_id TEXT,
  process_step TEXT,
  setpoint_temperature REAL,
  actual_temperature REAL,
  setpoint_pressure REAL,
  actual_pressure REAL,
  flow_rate_lph REAL,
  reagent_a_conc REAL,
  reagent_b_conc REAL,
  catalyst_amount_g REAL,
  operator_id TEXT,
  start_time TEXT,
  end_time TEXT,
  deviation_flag BOOLEAN,
  deviation_reason TEXT,
  corrective_action TEXT,
  equipment_id TEXT,
  sensor_status TEXT,
  logged_by TEXT,
  notes TEXT,
  archived BOOLEAN
);

INSERT INTO chemical_process_control_log VALUES
('EVT001','BCH1001','Mixing',25.0,25.3,1.0,1.02,150.0,0.5,0.7,2.0,'OP001','2025-05-01 08:00:00','2025-05-01 08:30:00',FALSE,'','', 'EQMIX01','OK','SysAdmin','Initial mix step','FALSE');

INSERT INTO chemical_process_control_log VALUES
('EVT002','BCH1002','Heating',80.0,82.5,1.0,0.99,0.0,0.0,0.0,1.5,'OP002','2025-05-03 10:15:00','2025-05-03 11:45:00',TRUE,'Temp overshoot','Reduced heat power','EQHEAT02','WARN','SysAdmin','Temperature exceeded limit','FALSE');

INSERT INTO chemical_process_control_log VALUES
('EVT003','BCH1003','Cooling',5.0,4.8,1.0,1.01,0.0,0.0,0.0,0.0,'OP003','2025-05-05 14:00:00','2025-05-05 15:20:00',FALSE,'','', 'EQCOOL03','OK','SysAdmin','Standard cooling','FALSE');

-- Spectrometer optical alignment parameters
CREATE TABLE spectrometer_optical_alignment (
  alignment_id TEXT PRIMARY KEY,
  spectrometer_id TEXT,
  alignment_date TEXT,
  technician_id TEXT,
  laser_wavelength_nm REAL,
  mirror_pitch_deg REAL,
  mirror_yaw_deg REAL,
  grating_angle_deg REAL,
  detector_offset_um REAL,
  slit_width_um REAL,
  focus_position_mm REAL,
  polarization_state TEXT,
  alignment_status TEXT,
  notes TEXT,
  verification_timestamp TEXT,
  verified_by TEXT,
  calibration_file_path TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  vibration_level_g REAL,
  archiving_flag BOOLEAN,
  legacy_reference TEXT
);

INSERT INTO spectrometer_optical_alignment VALUES
('ALG001','SPEC01','2025-04-10','TECH001',632.8,0.01,0.02,30.5,15.0,50.0,120.3,'S','Pass','Initial alignment','2025-04-10 14:30:00','TECH001','/calib/spec01_20250410.cal',22.5,45.0,0.02,FALSE','REFA1');

INSERT INTO spectrometer_optical_alignment VALUES
('ALG002','SPEC02','2025-04-12','TECH002',532.0,0.00,0.00,29.8,12.5,45.0,118.7,'P','Pass','Routine check','2025-04-12 09:45:00','TECH002','/calib/spec02_20250412.cal',21.0,40.0,0.01,FALSE','REFB2');

INSERT INTO spectrometer_optical_alignment VALUES
('ALG003','SPEC01','2025-05-20','TECH003',632.8,0.03,-0.01,30.7,16.2,52.0,121.0,'S','Fail','Misalignment detected','2025-05-20 11:20:00','TECH003','/calib/spec01_20250520.cal',23.0,48.0,0.05,TRUE','REFC3');

-- Nanomaterial exposure event tracking
CREATE TABLE nanomaterial_exposure_event (
  exposure_id TEXT PRIMARY KEY,
  batch_id TEXT,
  material_type TEXT,
  particle_size_nm REAL,
  concentration_ppm REAL,
  exposure_start TEXT,
  exposure_end TEXT,
  location TEXT,
  personnel_id TEXT,
  protective_equipment TEXT,
  monitoring_device_id TEXT,
  measured_level_ppm REAL,
  health_symptom TEXT,
  incident_reported BOOLEAN,
  corrective_action TEXT,
  logged_by TEXT,
  log_timestamp TEXT,
  notes TEXT,
  archived BOOLEAN,
  regulatory_ref TEXT,
  followup_date TEXT
);

INSERT INTO nanomaterial_exposure_event VALUES
('EXP001','NBCH001','SilverNanoparticles',15.0,0.8,'2025-03-01 08:00:00','2025-03-01 12:00:00','RoomA','PER001','N95Mask','MON001',0.75,'',FALSE,'Ventilation increase','OPLOG','2025-03-01 12:15:00','No symptoms','FALSE','REGA','2025-03-15');

INSERT INTO nanomaterial_exposure_event VALUES
('EXP002','NBCH002','CarbonNanotubes',30.0,1.2,'2025-03-10 09:30:00','2025-03-10 11:45:00','RoomB','PER002','FullSuit','MON002',1.15,'Cough','TRUE','Air filtration upgrade','OPLOG','2025-03-10 12:00:00','Mild irritation','FALSE','REGB','2025-03-24');

INSERT INTO nanomaterial_exposure_event VALUES
('EXP003','NBCH003','TitaniumDioxide',5.0,0.4,'2025-04-05 13:00:00','2025-04-05 15:30:00','RoomC','PER003','Gloves','MON003',0.38,'',FALSE,'Standard procedures','OPLOG','2025-04-05 15:45:00','No issues','FALSE','REGC','2025-04-19');

-- Environmental noise event log
CREATE TABLE environmental_noise_event_log (
  noise_event_id TEXT PRIMARY KEY,
  site_id TEXT,
  event_date TEXT,
  start_time TEXT,
  end_time TEXT,
  noise_level_db REAL,
  frequency_range_hz TEXT,
  source_description TEXT,
  measured_by TEXT,
  instrument_id TEXT,
  weather_conditions TEXT,
  mitigation_action TEXT,
  status TEXT,
  notes TEXT,
  reviewed_by TEXT,
  review_timestamp TEXT,
  archived BOOLEAN,
  compliance_flag BOOLEAN,
  regulatory_reference TEXT,
  followup_required BOOLEAN,
  followup_deadline TEXT
);

INSERT INTO environmental_noise_event_log VALUES
('NOISE001','SITE01','2025-02-20','08:00','09:15',85.2,'500-2000','HVAC fan','TECH001','NOISEMON01','Clear','Adjusted fan speed','Closed','No further action','MANAGER1','2025-02-20 10:00',FALSE,TRUE,'NR001',FALSE,'');

INSERT INTO environmental_noise_event_log VALUES
('NOISE002','SITE02','2025-03-05','14:30','15:00',92.5,'1000-4000','External construction','TECH002','NOISEMON02','Windy','Issued temporary barrier','Open','Monitor for recurrence','MANAGER2','2025-03-05 16:00',FALSE,FALSE,'NR002',TRUE,'2025-03-20');

INSERT INTO environmental_noise_event_log VALUES
('NOISE003','SITE01','2025-04-12','22:00','23:30',78.0,'200-800','Late‑night lab equipment','TECH003','NOISEMON03','Rain','Scheduled maintenance','Closed','Noise within limits','MANAGER1','2025-04-13 08:00',FALSE,TRUE,'NR003',FALSE,'');

-- Detailed computational workflow template
CREATE TABLE computational_workflow_template_detail (
  template_id TEXT PRIMARY KEY,
  workflow_name TEXT,
  version TEXT,
  author_id TEXT,
  creation_date TEXT,
  last_modified TEXT,
  description TEXT,
  step_order INTEGER,
  step_name TEXT,
  step_type TEXT,
  input_dataset TEXT,
  output_dataset TEXT,
  compute_resource TEXT,
  cpu_cores INTEGER,
  memory_gb INTEGER,
  walltime_limit_hr REAL,
  container_image TEXT,
  script_path TEXT,
  parameters TEXT,
  retry_policy TEXT,
  notifications TEXT,
  deprecated BOOLEAN,
  retirement_date TEXT
);

INSERT INTO computational_workflow_template_detail VALUES
('TPL001','RNASeqAnalysis','1.0','USR001','2025-01-15','2025-02-10','Standard RNA‑seq pipeline',1,'QualityControl','QC','raw_fastq','qc_report','clusterA',8,32,4.0,'docker.io/rnaqc:1.2','/scripts/qc.sh','--min-quality 20','on_failure','email_admin','FALSE','');

INSERT INTO computational_workflow_template_detail VALUES
('TPL001','RNASeqAnalysis','1.0','USR001','2025-01-15','2025-02-10','Standard RNA‑seq pipeline',2,'Alignment','Align','qc_report','aligned_bam','clusterB',16,64,8.0,'docker.io/aligner:3.1','/scripts/align.sh','-t 16','on_failure','slack_channel','FALSE','');

INSERT INTO computational_workflow_template_detail VALUES
('TPL001','RNASeqAnalysis','1.0','USR001','2025-01-15','2025-02-10','Standard RNA‑seq pipeline',3,'Quantification','Quant','aligned_bam','gene_counts','clusterC',4,16,2.0,'docker.io/quantify:2.0','/scripts/quant.sh','--mode TPM','never','email_user','FALSE','');

-- Hazardous material transportation record
CREATE TABLE hazardous_materials_transport (
  transport_id TEXT PRIMARY KEY,
  manifest_number TEXT,
  material_name TEXT,
  un_number TEXT,
  quantity_kg REAL,
  packaging_type TEXT,
  origin_location TEXT,
  destination_location TEXT,
  shipper_id TEXT,
  carrier_company TEXT,
  departure_timestamp TEXT,
  arrival_timestamp TEXT,
  temperature_control BOOLEAN,
  max_allowed_temp_c REAL,
  min_allowed_temp_c REAL,
  incident_reported BOOLEAN,
  incident_details TEXT,
  compliance_checked BOOLEAN,
  compliance_status TEXT,
  sealed BOOLEAN,
  notes TEXT,
  archived BOOLEAN
);

INSERT INTO hazardous_materials_transport VALUES
('TRP001','MAN1001','Acetone','1090',500.0,'Drum','WarehouseA','LabB','SHIP001','FastTrans','2025-03-01 06:00:00','2025-03-01 10:30:00',FALSE,NULL,NULL,FALSE,'','TRUE','Approved',TRUE,'','FALSE');

INSERT INTO hazardous_materials_transport VALUES
('TRP002','MAN1002','Mercury','1515',200.0,'Cylinder','SupplierX','LabC','SHIP002','SafeMove','2025-03-05 14:00:00','2025-03-05 18:45:00',TRUE,25.0,15.0,TRUE,'Leak detected at checkpoint 3','FALSE','Pending',FALSE,'Leak sealed promptly','FALSE');

INSERT INTO hazardous_materials_transport VALUES
('TRP003','MAN1003','SodiumAzide','2858',150.0,'Container','WarehouseB','LabD','SHIP003','SecureHaul','2025-04-10 08:15:00','2025-04-10 12:00:00',FALSE,NULL,NULL,FALSE,'','TRUE','Approved',TRUE,'','FALSE');

-- Clinical trial eligibility criteria definitions
CREATE TABLE clinical_trial_eligibility_criteria (
  criteria_id TEXT PRIMARY KEY,
  trial_id TEXT,
  version TEXT,
  inclusion_text TEXT,
  exclusion_text TEXT,
  age_min INTEGER,
  age_max INTEGER,
  gender_allowed TEXT,
  bmi_min REAL,
  bmi_max REAL,
  required_consent BOOLEAN,
  lab_test_required TEXT,
  imaging_required BOOLEAN,
  medication_restriction TEXT,
  smoking_status_allowed TEXT,
  alcohol_use_allowed TEXT,
  pregnancy_allowed BOOLEAN,
  disease_stage_allowed TEXT,
  created_by TEXT,
  creation_date TEXT,
  last_updated TEXT,
  active BOOLEAN
);

INSERT INTO clinical_trial_eligibility_criteria VALUES
('CRIT001','CT001','v1','Age 18‑65, BMI 18‑30','Pregnant, Breastfeeding','18','65','Any',18.0,30.0,TRUE,'CBC, LFT','TRUE','No glucocorticoids','Non‑smoker','Social drinker',FALSE,'Stage I‑II','DR001','2025-01-20','2025-02-15',TRUE);

INSERT INTO clinical_trial_eligibility_criteria VALUES
('CRIT002','CT001','v2','Age 30‑75, BMI 20‑35','Severe hepatic disease','30','75','Male','20.0',35.0,TRUE,'CBC, BMP','FALSE','Discontinue NSAIDs 48h','Former smoker','Occasional drinker',FALSE,'Stage III','DR001','2025-02-01','2025-02-20',TRUE);

INSERT INTO clinical_trial_eligibility_criteria VALUES
('CRIT003','CT002','v1','Age 21‑55, BMI 19‑28','History of myocardial infarction','21','55','Female','19.0',28.0,TRUE,'CBC, Lipid Panel','TRUE','No hormonal therapy','Never smoker','Abstain','TRUE','Stage I','DR002','2025-03-05','2025-03-10',TRUE);

-- Sample cryopreservation storage record
CREATE TABLE sample_cryopreservation_record (
  cryo_id TEXT PRIMARY KEY,
  sample_id TEXT,
  specimen_type TEXT,
  collection_date TEXT,
  preservation_method TEXT,
  storage_temperature_c REAL,
  freezer_id TEXT,
  shelf_position TEXT,
  volume_ul REAL,
  concentration_ng_ul REAL,
  aliquot_number INTEGER,
  operator_id TEXT,
  quality_check_passed BOOLEAN,
  thaw_cycles INTEGER,
  last_accessed TEXT,
  downstream_use TEXT,
  notes TEXT,
  archived BOOLEAN,
  disposal_date TEXT,
  disposal_method TEXT,
  audit_trail TEXT
);

INSERT INTO sample_cryopreservation_record VALUES
('CRYO001','SMP1001','Blood plasma','2025-02-10','Vitrification',-196.0,'FRZ01','A1','500','200',1,'OP001',TRUE,0,'2025-03-01','ELISA','No issues','FALSE','','','INIT');

INSERT INTO sample_cryopreservation_record VALUES
('CRYO002','SMP1002','Cell line','2025-02-15','Slow cooling',-80.0,'FRZ02','B3','1000','500',2,'OP002',TRUE,1,'2025-03-10','qPCR','Cell viability 90%','FALSE','','','INIT');

INSERT INTO sample_cryopreservation_record VALUES
('CRYO003','SMP1003','Tissue biopsy','2025-02-20','Vitrification',-196.0,'FRZ01','C5','250','150',1,'OP003',FALSE,0,'2025-03-05','Histology','Visible ice crystals','TRUE','2025-04-01','Incineration','QCFAIL');

-- Equipment decontamination log
CREATE TABLE equipment_decontamination_log (
  decon_id TEXT PRIMARY KEY,
  equipment_id TEXT,
  decon_date TEXT,
,
  performed_by TEXT,
  decontamination_method TEXT,
  chemical_agent TEXT,
  concentration_percent REAL,
  exposure_time_min REAL,
  temperature_c REAL,
  humidity_percent REAL,
  validation_result TEXT,
  notes TEXT,
  next_scheduled_date TEXT,
  compliance_verified BOOLEAN,
  verification_by TEXT,
  verification_timestamp TEXT,
  archived BOOLEAN,
  incident_flag BOOLEAN,
  incident_details TEXT,
  equipment_status TEXT,
  maintenance_required BOOLEAN
);

INSERT INTO equipment_decontamination_log VALUES
('DC001','EQMIX01','2025-03-01','TECH001','Chemical soak','Ethanol',70.0,30.0,22.0,45.0,'Pass','Standard procedure','2025-04-01',TRUE,'QC001','2025-03-01 11:00:00',FALSE,FALSE,'','Operational',FALSE);

INSERT INTO equipment_decontamination_log VALUES
('DC002','EQHEAT02','2025-03-10','TECH002','Steam sterilization','',0.0,45.0,121.0,30.0,'Pass','Cycle completed without errors','2025-04-10',TRUE,'QC002','2025-03-10 14:30:00',FALSE,FALSE,'','Operational',FALSE);

INSERT INTO equipment_decontamination_log VALUES
('DC003','EQCOOL03','2025-03-20','TECH003','UV exposure','',0.0,15.0,25.0,50.0,'Fail','Insufficient dose','2025-04-20',FALSE,'QC003','2025-03-20 09:15:00',TRUE,TRUE,'UV lamp malfunction','Out of service',TRUE);

-- Sample cryogenic transport record
CREATE TABLE sample_cryogenic_transport (
  transport_id TEXT PRIMARY KEY,
  shipment_id TEXT,
  sample_id TEXT,
  origin_location TEXT,
  destination_location TEXT,
  carrier_name TEXT,
  departure_time TEXT,
  arrival_time TEXT,
  container_type TEXT,
  dry_ice_kg REAL,
  temperature_monitor_id TEXT,
  max_recorded_temp_c REAL,
  min_recorded_temp_c REAL,
  breach_flag BOOLEAN,
  breach_details TEXT,
  handling_instructions TEXT,
  compliance_checked BOOLEAN,
  compliance_status TEXT,
  logged_by TEXT,
  log_timestamp TEXT,
  notes TEXT,
  archived BOOLEAN
);

INSERT INTO sample_cryogenic_transport VALUES
('CRYO_TR001','SHIP001','SMP2001','FreezerA','LabB','ColdExpress','2025-04-01 07:00:00','2025-04-01 12:30:00','Dewar','15.0','TEMP001',-165.0,-170.0,FALSE,'','Keep upright','TRUE','Approved','OPLOG','2025-04-01 13:00:00','Delivered without incident','FALSE');

INSERT INTO sample_cryogenic_transport VALUES
('CRYO_TR002','SHIP002','SMP2002','FreezerC','LabD','IceLogistics','2025-04-05 09:15:00','2025-04-05 15:45:00','Dewar','20.0','TEMP002',-160.0,-168.0,TRUE,'Temperature rose to -150C for 5 min','Do not thaw','FALSE','Pending','OPLOG','2025-04-05 16:00:00','Investigate temperature excursion','FALSE');

INSERT INTO sample_cryogenic_transport VALUES
('CRYO_TR003','SHIP003','SMP2003','FreezerE','LabF','RapidCold','2025-04-10 06:30:00','2025-04-10 11:00:00','Dewar','12.0','TEMP003',-172.0,-175.0,FALSE,'','Maintain -170C','TRUE','Approved','OPLOG','2025-04-10 11:30:00','All parameters within range','FALSE');

-- Instrument firmware release history
CREATE TABLE instrument_firmware_release (
  release_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  firmware_version TEXT,
  release_date TEXT,
  released_by TEXT,
  changelog TEXT,
  checksum TEXT,
  file_path TEXT,
  critical_update BOOLEAN,
  affected_modules TEXT,
  rollback_supported BOOLEAN,
  validation_status TEXT,
  deployment_status TEXT,
  notes TEXT,
  compliance_checked BOOLEAN,
  compliance_status TEXT,
  testing_environment TEXT,
  test_result TEXT,
  verification_by TEXT,
  verification_timestamp TEXT,
  archived BOOLEAN
);

INSERT INTO instrument_firmware_release VALUES
('FW001','SPEC01','v3.2.1','2025-02-15','ENG001','Bug fixes and performance improvements','ABC123DEF456','/firmware/spec01_v3.2.1.bin',FALSE,'Optics, Detector',TRUE,'Validated','Deployed','No issues','TRUE','Compliant','LabBench','Pass','QC001','2025-02-16 08:00:00',FALSE);

INSERT INTO instrument_firmware_release VALUES
('FW002','SPEC02','v4.0.0','2025-03-10','ENG002','Major feature upgrade: new wavelength range','XYZ789GHI012','/firmware/spec02_v4.0.0.bin',TRUE,'Grating, ControlBoard',TRUE,'Pending','Staged','Requires verification','FALSE','Pending','StagingEnv','N/A','QC002','2025-03-12 09:30:00',FALSE);

INSERT INTO instrument_firmware_release VALUES
('FW003','SPEC01','v3.2.2','2025-04-01','ENG001','Security patch','LMN345OPQ678','/firmware/spec01_v3.2.2.bin',FALSE,'ControlBoard',TRUE,'Validated','Deployed','Patch applied','TRUE','Compliant','LabBench','Pass','QC001','2025-04-02 10:15:00',FALSE);

-- Material property reference database
CREATE TABLE material_property_reference (
  material_id TEXT PRIMARY KEY,
  material_name TEXT,
  chemical_formula TEXT,
  density_g_cm3 REAL,
  melting_point_c REAL,
  boiling_point_c REAL,
  thermal_conductivity_w_mk REAL,
  electrical_resistivity_ohm_cm REAL,
  refractive_index REAL,
  hardness_mohs REAL,
  specific_heat_j_gk REAL,
  band_gap_ev REAL,
  toxicity_class TEXT,
  common_uses TEXT,
  supplier_name TEXT,
  datasheet_url TEXT,
  hazard_code TEXT,
  storage_temperature_c REAL,
  expiration_date TEXT,
  last_updated TEXT,
  verified_by TEXT,
  notes TEXT
);

INSERT INTO material_property_reference VALUES
('MAT001','Aluminum','Al','2.70','660.3','2519','237','2.65E-06','1.44','2.75','0.897','1.5','Class2','Construction, Aerospace','MetalSuppliesInc','http://example.com/al_datasheet.pdf','UN0014','25','2028-12-31','2025-01-10','QC001','Standard grade aluminum');

INSERT INTO material_property_reference VALUES
('MAT002','Silicon','Si','2.33','1414','3265','149','6.40E+03','3.42','6.5','0.705','1.1','Class3','Semiconductors','SemiTechCo','http://example.com/si_datasheet.pdf','UN1805','25','2030-06-30','2025-02-15','QC002','High purity silicon');

INSERT INTO material_property_reference VALUES
('MAT003','Copper','Cu','8.96','1085','2562','401','1.68E-06','1.52','3.0','0.385','0.0','Class1','Electrical wiring','CopperMinesLtd','http://example.com/cu_datasheet.pdf','UN0007','25','2027-03-20','2025-03-05','QC001','Electrolytic Grade');

-- Environmental sensor deployment schedule
CREATE TABLE environmental_sensor_deployment_schedule (
  deployment_id TEXT PRIMARY KEY,
  sensor_type TEXT,
  sensor_model TEXT,
  location_code TEXT,
  deployment_start TEXT,
  deployment_end TEXT,
  frequency_hz REAL,
  calibration_due TEXT,
  maintenance_window TEXT,
  responsible_technician TEXT,
  data_endpoint_url TEXT,
  power_source TEXT,
  network_connectivity TEXT,
  security_level TEXT,
  notes TEXT,
  status TEXT,
  approval_by TEXT,
  approval_date TEXT,
  last_modified TEXT,
  archived BOOLEAN
);

INSERT INTO environmental_sensor_deployment_schedule VALUES
('DEP001','Air Quality','AQ-200','LOC01','2025-01-15','2026-01-15','1.0','2025-07-15','2025-07-20','TECH001','http://data.lab/env/aq200_loc01','Mains','WiFi','Medium','Initial deployment','Active','ENG001','2025-01-01','2025-01-10',FALSE);

INSERT INTO environmental_sensor_deployment_schedule VALUES
('DEP002','Temperature/Humidity','TH-500','LOC02','2025-02-01','2025-12-31','0.5','2025-08-01','2025-08-05','TECH002','http://data.lab/env/th500_loc02','Battery','LoRa','Low','Battery powered sensor','Active','ENG002','2025-01-20','2025-02-05',FALSE);

INSERT INTO environmental_sensor_deployment_schedule VALUES
('DEP003','Radiation','RD-900','LOC03','2025-03-10','2025-09-10','0.2','2025-09-01','2025-09-05','TECH003','http://data.lab/env/rd900_loc03','Mains','Ethernet','High','High‑sensitivity detector','Planned','ENG003','2025-03-01','2025-03-07',FALSE);

-- Computational node inventory
CREATE TABLE computational_node_inventory (
  node_id TEXT PRIMARY KEY,
  hostname TEXT,
  cpu_model TEXT,
  cpu_cores INTEGER,
  gpu_model TEXT,
  gpu_count INTEGER,
  ram_gb INTEGER,
  local_storage_tb REAL,
  network_bandwidth_gbps REAL,
  operating_system TEXT,
  rack_location TEXT,
  power_supply_watts INTEGER,
  cooling_type TEXT,
  purchase_date TEXT,
  warranty_expiration TEXT,
  maintenance_contract TEXT,
  last_maintenance TEXT,
  status TEXT,
  assigned_project TEXT,
  notes TEXT,
  decommissioned BOOLEAN
);

INSERT INTO computational_node_inventory VALUES
('NODE001','compute01','IntelXeonE5-2690','32','NVIDIA V100','2','256','8','40','Linux CentOS 7','RACK01','1200','Air','2023-06-15','2026-06-15','ContractA','2025-01-10','Active','ProjectX','Primary ML node',FALSE);

INSERT INTO computational_node_inventory VALUES
('NODE002','compute02','AMD EPYC 7742','64','NVIDIA A100','4','512','12','100','Linux Ubuntu 20.04','RACK02','1500','Liquid','2024-01-20','2027-01-20','ContractB','2025-03-22','Active','ProjectY','High‑memory analytics',FALSE);

INSERT INTO computational_node_inventory VALUES
('NODE003','compute03','IntelXeonPlatinum','48','None','0','192','6','25','Linux Rocky 8','RACK03','1100','Air','2022-11-05','2025-11-05','ContractC','2024-12-01','Retired','', 'Decommissioned after end of life',TRUE);