-- Spectrograph calibration records
CREATE TABLE spectrograph_calibration_record (
  record_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  calibration_date TEXT,
  technician_id TEXT,
  wavelength_start_nm REAL,
  wavelength_end_nm REAL,
  slit_width_um REAL,
  detector_temp_c REAL,
  lamp_type TEXT,
  lamp_intensity REAL,
  calibration_coeff_a REAL,
  calibration_coeff_b REAL,
  calibration_coeff_c REAL,
  calibration_status TEXT,
  notes TEXT,
  revision_number INTEGER,
  software_version TEXT,
  reference_std TEXT,
  exposure_time_ms INTEGER,
  ambient_humidity_percent REAL
);

INSERT INTO spectrograph_calibration_record VALUES ('rec001','insA','2024-03-15','tech01',200.0,800.0,50.0, -10.5,'Deuterium',1.2,0.998,0.0012,0.0005','PASS','Initial calibr','1','v3.2','StdUV','150','45.0');
INSERT INTO spectrograph_calibration_record VALUES ('rec002','insB','2024-04-10','tech02',250.0,900.0,45.0, -9.8,'Tungsten',0.9,1.001,0.0009,0.0003','PASS','Routine check','2','v3.2','StdVis','200','42.3');
INSERT INTO spectrograph_calibration_record VALUES ('rec003','insC','2024-05-05','tech03',100.0,700.0,55.0, -11.0,'Deuterium',1.1,0.997,0.0015,0.0006','FAIL','Lamp aging observed','3','v3.2','StdUV','120','48.7');

-- Lab humidity control logs
CREATE TABLE lab_humidity_control_log (
  log_id TEXT PRIMARY KEY,
  zone_id TEXT,
  record_timestamp TEXT,
  humidity_percent REAL,
  setpoint_percent REAL,
  sensor_id TEXT,
  controller_status TEXT,
  deviation_percent REAL,
  maintenance_flag INTEGER,
  notes TEXT,
  operator_id TEXT,
  external_weather_humidity REAL,
  dehumidifier_runtime_min INTEGER,
  humidifier_runtime_min INTEGER,
  alert_triggered TEXT,
  calibration_date TEXT,
  firmware_version TEXT,
  power_consumption_w REAL,
  temperature_c REAL,
  ventilation_rate_cmh REAL
);

INSERT INTO lab_humidity_control_log VALUES ('log001','Z01','2024-06-01 08:00:00',44.5,45.0,'sens01','OK',-0.5,0,'Normal operation','op01',55.2,30,5,'NONE','2024-01-15','fw1.0',120.5,22.3,150.0);
INSERT INTO lab_humidity_control_log VALUES ('log002','Z02','2024-06-01 09:00:00',48.2,45.0,'sens02','WARN',3.2,1,'High humidity alarm','op02',58.7,0,20,'HIGH_HUMIDITY','2024-02-20','fw1.1',135.0,21.8,160.0);
INSERT INTO lab_humidity_control_log VALUES ('log003','Z03','2024-06-01 10:00:00',45.0,45.0,'sens03','OK',0.0,0,'Stable','op03',57.0,15,10,'NONE','2024-03-10','fw1.0',118.0,22.0,155.0);

-- Organic synthesis routes
CREATE TABLE organic_synthesis_route (
  route_id TEXT PRIMARY KEY,
  compound_id TEXT,
  step_number INTEGER,
  reagent TEXT,
  quantity_mmol REAL,
  solvent TEXT,
  temperature_c REAL,
  reaction_time_min INTEGER,
  catalyst TEXT,
  catalyst_loading_percent REAL,
  yield_percent REAL,
  purification_method TEXT,
  analysis_method TEXT,
  safety_notes TEXT,
  operator_id TEXT,
  batch_id TEXT,
  equipment_id TEXT,
  pressure_bar REAL,
  atmosphere TEXT,
  notes TEXT
);

INSERT INTO organic_synthesis_route VALUES ('route001','cmpA',1,'Benzene',5.0,'Acetone',80.0,60,'Pd/C',10.0,85.0,'ColumnChrom','NMR','Handle with care','op10','batch001','eq01',1.0,'Nitrogen','First alkylation step');
INSERT INTO organic_synthesis_route VALUES ('route001','cmpA',2,'AceticAnhydride',3.2,'Dichloromethane',25.0,30,'None',0.0,78.0,'Recrystallization','IR','Ventilate area','op11','batch001','eq02',0.5,'Air','Esterification step');
INSERT INTO organic_synthesis_route VALUES ('route001','cmpA',3,'LithiumAlkyl','1.5','THF',-78.0,45,'LiAlH4',5.0,70.0,'Distillation','GC','Use dry ice bath','op12','batch001','eq03',0.8,'Argon','Reduction step');

-- Cryogenic storage monitor
CREATE TABLE cryo_storage_monitor (
  monitor_id TEXT PRIMARY KEY,
  freezer_id TEXT,
  location TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  alarm_status TEXT,
  last_maintenance_date TEXT,
  sensor_serial TEXT,
  battery_voltage_v REAL,
  power_loss_events INTEGER,
  door_open_events INTEGER,
  frost_accumulation_mm REAL,
  coolant_level_percent REAL,
  notes TEXT,
  operator_id TEXT,
  data_log_interval_min INTEGER,
  firmware_version TEXT,
  ambient_temperature_c REAL,
  ambient_humidity_percent REAL,
  verification_timestamp TEXT
);

INSERT INTO cryo_storage_monitor VALUES ('mon001','FZ01','RackA',-150.0,30.0,'OK','2024-02-01','SN12345',3.7,0,2,0.0,95.0,'All good','op20',10,'v2.5',22.0,40.0,'2024-06-01 08:00:00');
INSERT INTO cryo_storage_monitor VALUES ('mon002','FZ02','RackB',-145.0,32.0,'ALARM','2024-01-15','SN12346',3.5,1,0,0.2,88.0,'Temperature rise detected','op21',10,'v2.5',21.5,38.0,'2024-06-01 08:05:00');
INSERT INTO cryo_storage_monitor VALUES ('mon003','FZ03','RackC',-148.0,31.0,'OK','2024-03-10','SN12347',3.6,0,1,0.0,92.0,'Routine check','op22',10,'v2.5',22.2,41.0,'2024-06-01 08:10:00');

-- Material failure analysis
CREATE TABLE material_failure_analysis (
  analysis_id TEXT PRIMARY KEY,
  material_id TEXT,
  failure_mode TEXT,
  test_method TEXT,
  stress_mpa REAL,
  strain_percent REAL,
  temperature_c REAL,
  cycles INTEGER,
  fracture_surface_image TEXT,
  microscopy_type TEXT,
  elemental_composition TEXT,
  hardness_hv REAL,
  elastic_modulus_gpa REAL,
  poisson_ratio REAL,
  fatigue_life_cycles INTEGER,
  user_notes TEXT,
  analyst_id TEXT,
  report_date TEXT,
  equipment_id TEXT,
  validation_status TEXT
);

INSERT INTO material_failure_analysis VALUES ('ana001','matA','CrackPropagation','TensileTest',250.0,2.5,25.0,10000,'img001.jpg','SEM','Fe,Cr,Ni',650.0,210.0,0.30,8000,'Visible pits','an01','2024-05-20','eqFA01','APPROVED');
INSERT INTO material_failure_analysis VALUES ('ana002','matB','Corrosion','ElectrochemicalTest',180.0,0.0,35.0,0,'img002.jpg','TEM','Al,Cu','N/A',70.0,0.33,0,'No visible damage','an02','2024-05-22','eqFA02','PENDING');
INSERT INTO material_failure_analysis VALUES ('ana003','matC','Fatigue','RotatingBending',300.0,1.2,20.0,50000,'img003.jpg','SEM','Ti,Al','350','115','0.28',40000,'Crack initiation at 20000 cycles','an03','2024-05-25','eqFA03','APPROVED');

-- Lab safety audit schedule
CREATE TABLE lab_safety_audit_schedule (
  audit_id TEXT PRIMARY KEY,
  department TEXT,
  scheduled_date TEXT,
  auditor_id TEXT,
  audit_type TEXT,
  scope_description TEXT,
  checklist_version TEXT,
  prior_findings TEXT,
  corrective_action_deadline TEXT,
  status TEXT,
  notes TEXT,
  created_by TEXT,
  created_at TEXT,
  updated_by TEXT,
  updated_at TEXT,
  risk_level TEXT,
  documentation_link TEXT,
  duration_minutes INTEGER,
  follow_up_required INTEGER,
  external_agency TEXT
);

INSERT INTO lab_safety_audit_schedule VALUES ('audit001','Chemistry','2024-07-10','aud01','Routine','General lab safety','v1.2','None','2024-08-01','Scheduled','First quarterly audit','admin','2024-04-01','admin','2024-04-01','Medium','http://docs/audit001','180','0','None');
INSERT INTO lab_safety_audit_schedule VALUES ('audit002','Biology','2024-08-15','aud02','Regulatory','Biohazard containment','v1.0','Missing PPE logs','2024-09-05','Planned','Follow-up on previous audit','admin','2024-04-05','admin','2024-04-05','High','http://docs/audit002','240','1','OSHA');
INSERT INTO lab_safety_audit_schedule VALUES ('audit003','Physics','2024-09-20','aud03','Special','Laser safety compliance','v1.1','Laser lockout not verified','2024-10-10','Planned','Inspect laser enclosures','admin','2024-04-10','admin','2024-04-10','Low','http://docs/audit003','120','0','None');

-- Chemical process batch trace
CREATE TABLE chemical_process_batch_trace (
  trace_id TEXT PRIMARY KEY,
  batch_id TEXT,
  process_step TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  operator_id TEXT,
  equipment_id TEXT,
  temperature_c REAL,
  pressure_bar REAL,
  pH_value REAL,
  flow_rate_lpm REAL,
  reagent_a TEXT,
  reagent_a_qty_kg REAL,
  reagent_b TEXT,
  reagent_b_qty_kg REAL,
  catalyst TEXT,
  catalyst_qty_g REAL,
  yield_percent REAL,
  deviations TEXT,
  comments TEXT
);

INSERT INTO chemical_process_batch_trace VALUES ('trace001','batchA','Mixing','2024-06-01 08:00:00','2024-06-01 08:30:00','op30','eqM01',25.0,1.0,7.0,15.0,'Acetone',0.5,'Water',0.2,'NaOH',5.0,92.0,'None','Mixing completed successfully');
INSERT INTO chemical_process_batch_trace VALUES ('trace002','batchA','Heating','2024-06-01 08:35:00','2024-06-01 09:15:00','op31','eqM02',80.0,5.0,6.5,10.0,'Acetone',0.5,'Water',0.2,'NaOH',5.0,88.0,'Temp rise 2C','Heating step slightly slower');
INSERT INTO chemical_process_batch_trace VALUES ('trace003','batchA','Cooling','2024-06-01 09:20:00','2024-06-01 09:45:00','op32','eqM03',20.0,1.0,7.0,5.0,'Acetone',0.5,'Water',0.2,'NaOH',5.0,90.0,'None','Product crystallized upon cooling');

-- Instrument lifecycle events
CREATE TABLE instrument_lifecycle_event (
  event_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  event_type TEXT,
  event_timestamp TEXT,
  performed_by TEXT,
  description TEXT,
  vendor TEXT,
  warranty_expiration TEXT,
  maintenance_due TEXT,
  calibration_due TEXT,
  retirement_planned TEXT,
  cost_usd REAL,
  funding_source TEXT,
  location TEXT,
  status TEXT,
  documentation_link TEXT,
  next_action TEXT,
  priority_level TEXT,
  impact_assessment TEXT,
  comments TEXT
);

INSERT INTO instrument_lifecycle_event VALUES ('evt001','insX','Installation','2023-01-15 09:00:00','techA','Initial installation of spectrometer','VendorX','2025-01-15','2023-07-01','2023-07-01','2028-01-01',25000.0,'Grant001','LabA','Active','http://docs/insX/install','Schedule first calibration','Medium','Low','Installation complete');
INSERT INTO instrument_lifecycle_event VALUES ('evt002','insX','Calibration','2023-07-01 10:30:00','techB','Annual calibration performed','VendorX','2025-01-15','2024-01-01','2023-07-01','2028-01-01',0.0','Internal','LabA','Active','http://docs/insX/cal2023','Update calibration records','Low','None','Calibration successful');
INSERT INTO instrument_lifecycle_event VALUES ('evt003','insX','Repair','2024-04-20 14:15:00','techC','Replaced detector module due to drift','VendorX','2025-01-15','2024-07-01','2024-07-01','2028-01-01',5000.0','Grant002','LabA','Active','http://docs/insX/repair2024','Verify post-repair performance','High','Medium','Repair completed');

-- Research data sharing agreements
CREATE TABLE research_data_sharing_agreement (
  agreement_id TEXT PRIMARY KEY,
  project_id TEXT,
  partner_institution TEXT,
  data_type TEXT,
  access_level TEXT,
  start_date TEXT,
  end_date TEXT,
  principal_investigator TEXT,
  data_security_measures TEXT,
  compliance_requirements TEXT,
  data_retention_period_months INTEGER,
  approved_by TEXT,
  approval_date TEXT,
  version INTEGER,
  status TEXT,
  notes TEXT,
  contact_email TEXT,
  encryption_standard TEXT,
  audit_frequency_months INTEGER,
  termination_clause TEXT
);

INSERT INTO research_data_sharing_agreement VALUES ('agr001','projX','UniversityY','GenomicSequences','Restricted','2024-01-01','2025-12-31','DrSmith','AES256','HIPAA','24','DrJones','2023-12-15','1','Active','Collaboration on gene expression','dr.smith@uniY.edu','AES-256','12','30-day notice');
INSERT INTO research_data_sharing_agreement VALUES ('agr002','projY','InstituteZ','ImagingData','Open','2023-06-01','2026-05-31','DrLee','TLS1.3','GDPR','36','DrLee','2023-05-20','2','Active','Sharing MRI datasets','dr.lee@instZ.org','TLS1.3','6','Termination upon breach');
INSERT INTO research_data_sharing_agreement VALUES ('agr003','projZ','CompanyA','ChemicalAssayResults','Confidential','2024-03-15','2027-03-14','DrKim','RSA2048','FDA21CFR','48','DrKim','2024-02-28','1','Pending','Pending legal review','dr.kim@compA.com','RSA-2048','12','Mutual agreement required');

-- Thermal degradation test records
CREATE TABLE thermal_degradation_test (
  test_id TEXT PRIMARY KEY,
  material_id TEXT,
  sample_id TEXT,
  oven_id TEXT,
  start_temperature_c REAL,
  end_temperature_c REAL,
  heating_rate_c_per_min REAL,
  soak_time_min INTEGER,
  atmosphere TEXT,
  weight_initial_mg REAL,
  weight_final_mg REAL,
  degradation_percent REAL,
  observation_notes TEXT,
  analyst_id TEXT,
  test_date TEXT,
  standard_reference TEXT,
  equipment_calibration_date TEXT,
  data_file_path TEXT,
  quality_flag TEXT,
  approval_status TEXT
);

INSERT INTO thermal_degradation_test VALUES ('test001','matD','smp01','ovenA',25.0,300.0,5.0,60,'Nitrogen',500.0,350.0,30.0,'Color change observed','an01','2024-04-10','ASTM D123','2024-03-01','/data/test001.csv','PASS','Approved');
INSERT INTO thermal_degradation_test VALUES ('test002','matE','smp02','ovenB',30.0,350.0,10.0,30,'Air',800.0,600.0,25.0,'No significant change','an02','2024-05-12','ISO 9001','2024-04-15','/data/test002.csv','PASS','Approved');
INSERT INTO thermal_degradation_test VALUES ('test003','matF','smp03','ovenC',20.0,250.0,3.0,120,'Argon',400.0,200.0,50.0,'Brittle fracture','an03','2024-06-05','Internal SOP','2024-05-20','/data/test003.csv','FAIL','Pending Review');

-- Research data sharing agreements (duplicate name avoided) -- Already defined; skip.

-- Additional table example: environmental sensor network status
CREATE TABLE environmental_sensor_network_status (
  status_id TEXT PRIMARY KEY,
  network_id TEXT,
  sensor_id TEXT,
  last_check_timestamp TEXT,
  battery_level_percent REAL,
  signal_strength_dbm REAL,
  firmware_version TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  co2_ppm REAL,
  pm25_ug_m3 REAL,
  operational_status TEXT,
  last_maintenance_date TEXT,
  location TEXT,
  notes TEXT,
  alert_triggered INTEGER,
  data_upload_rate_kbps REAL,
  uptime_hours INTEGER,
  error_code TEXT,
  technician_id TEXT
);

INSERT INTO environmental_sensor_network_status VALUES ('stat001','net01','senA','2024-06-01 07:55:00',85.0,-70.5,'v1.3',22.1,45.0,400,12.5,'OK','2024-05-10','LabHall1','All metrics normal',0,250.0,720,'NONE','techA');
INSERT INTO environmental_sensor_network_status VALUES ('stat002','net01','senB','2024-06-01 08:00:00',60.0,-80.0,'v1.3',23.0,48.0,420,13.0,'WARN','2024-04-20','LabHall2','Battery low',1,200.0,680,'BAT_LOW','techB');
INSERT INTO environmental_sensor_network_status VALUES ('stat003','net02','senC','2024-06-01 08:05:00',95.0,-65.0,'v1.4',21.5,44.0,380,11.8,'OK','2024-05-15','ColdRoom','All good',0,300.0,730,'NONE','techC');