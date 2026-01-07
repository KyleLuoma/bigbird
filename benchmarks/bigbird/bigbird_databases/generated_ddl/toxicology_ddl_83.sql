-- Spectrometer configuration details
CREATE TABLE spectrometer_configuration (
  config_id TEXT PRIMARY KEY,
  spectrometer_id TEXT,
  wavelength_start_nm REAL,
  wavelength_end_nm REAL,
  resolution_angstrom REAL,
  detector_type TEXT,
  grating_lines_per_mm INTEGER,
  slit_width_um REAL,
  polarization TEXT,
  calibration_date TEXT,
  calibration_technique TEXT,
  software_version TEXT,
  autozero_enabled INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  power_supply_voltage REAL,
  power_supply_current REAL,
  maintenance_cycle_days INTEGER,
  last_maintenance_date TEXT,
  notes TEXT
);

INSERT INTO spectrometer_configuration VALUES
('cfg001','specA','200.0','800.0','0.5','CCD','1200', '50.0','linear','2025-01-15','lamp','v3.2',1,25.0,45.0,230.0,0.8,180,'Initial install'),
('cfg002','specB','100.0','700.0','0.2','CMOS','600','30.0','circular','2025-02-20','laser','v4.1',0,22.5,40.0,240.0,0.9,365,'Quarterly check'),
('cfg003','specC','400.0','900.0','1.0','PMT','300','70.0','linear','2025-03-10','standard','v2.8',1,20.0,35.0,220.0,0.7,90,'After upgrade');

-- Chemical batch quality control records
CREATE TABLE chemical_batch_quality_control (
  qc_id TEXT PRIMARY KEY,
  batch_id TEXT,
  reagent_name TEXT,
  supplier_name TEXT,
  received_date TEXT,
  expiration_date TEXT,
  purity_percent REAL,
  moisture_percent REAL,
  appearance TEXT,
  pH REAL,
  conductivity_us_cm REAL,
  density_g_ml REAL,
  assay_method TEXT,
  analyst_name TEXT,
  instrument_id TEXT,
  test_temperature_c REAL,
  result_status TEXT,
  deviation_reason TEXT,
  corrective_action TEXT,
  release_date TEXT,
  notes TEXT,
  archived_flag INTEGER
);

INSERT INTO chemical_batch_quality_control VALUES
('qc001','batchA','Acetone','ChemCo','2025-01-05','2026-01-05','99.5','0.1','clear','7.0','0.2','0.789','GC','Alice','inst001',25.0,'Pass','','','2025-01-10','Initial release',0),
('qc002','batchB','Ethanol','LabSupplies','2025-01-12','2027-01-12','95.0','0.5','clear','7.5','0.15','0.789','GC','Bob','inst002',22.0,'Fail','Out of spec','Reprocess','2025-01-18','Rejection due to purity',0),
('qc003','batchC','Water','PureWaterInc','2025-01-20','2025-12-31','100.0','0.0','clear','7.0','0.05','1.0','Titration','Carol','inst003',20.0,'Pass','','','2025-01-22','Ready for use',0);

-- Lab ventilation filter change log
CREATE TABLE lab_ventilation_filter_log (
  log_id TEXT PRIMARY KEY,
  ventilation_system_id TEXT,
  filter_type TEXT,
  filter_serial TEXT,
  installation_date TEXT,
  removal_date TEXT,
  pressure_drop_pa REAL,
  airflow_cmh REAL,
  technician_name TEXT,
  maintenance_order_id TEXT,
  next_replacement_due TEXT,
  filter_condition TEXT,
  notes TEXT,
  inspected_by TEXT,
  inspection_date TEXT,
  compliance_status TEXT,
  replacement_reason TEXT,
  part_number TEXT,
  location_zone TEXT,
  warranty_expiry TEXT,
  cost_usd REAL,
  approved_by TEXT
);

INSERT INTO lab_ventilation_filter_log VALUES
('log001','vent01','HEPA','SN1001','2025-01-01','2025-04-01',250.0,1200.0,'Dave','MO100','2025-07-01','Good','Routine change','Eve','2025-04-02','Compliant','Scheduled','PN-HEPA-01','ZoneA','2026-01-01',150.0,'Frank'),
('log002','vent02','Carbon','SN2002','2025-02-10','2025-05-10',300.0,1100.0,'Grace','MO200','2025-08-10','Fair','High pressure','Heidi','2025-05-11','Compliant','Performance','PN-CARB-02','ZoneB','2027-02-10',120.0,'Ivan'),
('log003','vent03','HEPA','SN3003','2025-03-15','2025-06-15',220.0,1300.0,'Judy','MO300','2025-09-15','Excellent','No issues','Kevin','2025-06-16','Compliant','Scheduled','PN-HEPA-03','ZoneC','2025-12-31',160.0','Laura');

-- Nanomaterial exposure event detail
CREATE TABLE nanomaterial_exposure_event_detail (
  event_id TEXT PRIMARY KEY,
  nanomaterial_id TEXT,
  batch_number TEXT,
  exposure_start TEXT,
  exposure_end TEXT,
  exposure_type TEXT,
  concentration_mg_m3 REAL,
  particle_size_nm REAL,
  location TEXT,
  ventilation_rate_cmh REAL,
  protective_equipment_used TEXT,
  personnel_exposed TEXT,
  health_monitoring_started TEXT,
  symptoms_reported TEXT,
  medical_followup TEXT,
  exposure_status TEXT,
  incident_report_id TEXT,
  corrective_action_taken TEXT,
  researcher_responsible TEXT,
  notes TEXT,
  regulatory_notification_sent TEXT,
  followup_date TEXT,
  outcome TEXT
);

INSERT INTO nanomaterial_exposure_event_detail VALUES
('ev001','nm001','B001','2025-01-20','2025-01-20',' inhalation',5.0,20.0,'LabRoom1',300.0,'N95','Alice','2025-01-21','cough','DrSmith','Closed','IR001','Enhanced ventilation','Bob','No further issues','Yes','2025-01-25','Resolved'),
('ev002','nm002','B002','2025-02-05','2025-02-05','skin contact',0.0,50.0,'PrepArea',250.0,'Gloves','Bob','2025-02-06','rash','DrJones','Open','IR002','Decontamination protocol','Carol','Monitoring ongoing','No','2025-02-15','Pending'),
('ev003','nm003','B003','2025-03-12','2025-03-12',' ingestion',0.0,0.0,'Cafeteria',0.0,'None','Dave','2025-03-13','none','DrLee','Closed','IR003','Safety training','Eve','No incident','Yes','2025-03-20','No impact');

-- Instrument signal noise profile
CREATE TABLE instrument_signal_noise_profile (
  profile_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  measurement_mode TEXT,
  frequency_hz REAL,
  amplitude_db REAL,
  snr_db REAL,
  noise_floor_db REAL,
  harmonic_distortion_percent REAL,
  temperature_c REAL,
  humidity_percent REAL,
  date_recorded TEXT,
  operator_name TEXT,
  calibration_id TEXT,
  bandwidth_hz REAL,
  gain_db REAL,
  filter_type TEXT,
  comments TEXT,
  validated_flag INTEGER,
  validation_date TEXT,
  approved_by TEXT,
  version INTEGER,
  dataset_id TEXT,
  notes TEXT,
  archive_location TEXT
);

INSERT INTO instrument_signal_noise_profile VALUES
('prof001','instA','FFT',1000.0,-30.0,60.0,-90.0,0.5,22.0,45.0,'2025-01-10','Alice','cal001',200.0,10.0,'low-pass','Initial test',1,'2025-01-11','Bob',1,'ds001','Good','/archive/prof001'),
('prof002','instB','TimeDomain',500.0,-40.0,55.0,-95.0,0.8,24.0,40.0,'2025-02-12','Carol','cal002',150.0,12.0,'high-pass','Follow up',1,'2025-02-13','Dave',2,'ds002','Stable','/archive/prof002'),
('prof003','instC','FFT',2000.0,-35.0,58.0,-92.0,0.6,21.0,50.0,'2025-03-15','Eve','cal003',250.0,11.0,'band-pass','Routine check',1,'2025-03-16','Frank',1,'ds003','Within spec','/archive/prof003');

-- Computational job resource allocation
CREATE TABLE computational_job_resource_allocation (
  allocation_id TEXT PRIMARY KEY,
  job_id TEXT,
  user_id TEXT,
  cpu_cores INTEGER,
  memory_gb REAL,
  gpu_count INTEGER,
  gpu_type TEXT,
  storage_gb REAL,
  priority_level INTEGER,
  queue_name TEXT,
  submission_time TEXT,
  start_time TEXT,
  end_time TEXT,
  walltime_limit_h REAL,
  actual_walltime_h REAL,
  node_list TEXT,
  max_runtime_h REAL,
  cost_center TEXT,
  billing_rate_usd_per_h REAL,
  total_cost_usd REAL,
  reservation_flag INTEGER,
  reservation_id TEXT,
  notes TEXT,
  approved_by TEXT,
  checksum TEXT
);

INSERT INTO computational_job_resource_allocation VALUES
('alloc001','jobA','user1',16,64.0,1,'NVIDIA_T4',200.0,5,'short','2025-01-08 09:00','2025-01-08 09:10','2025-01-08 12:00',3.0,2.9,'node01,node02',5.0,'CC100',2.5,7.5,0,'','Standard allocation','Bob','abc123'),
('alloc002','jobB','user2',32,128.0,2,'NVIDIA_V100',500.0,8,'medium','2025-02-14 14:20','2025-02-14 14:30','2025-02-14 20:30',6.0,6.0,'node03,node04',8.0,'CC200',3.0,18.0,1,'res001','High priority','Carol','def456'),
('alloc003','jobC','user3',8,32.0,0,'','100.0',3,'low','2025-03-22 07:45','2025-03-22 08:00','2025-03-22 10:00',2.0,2.0,'node05',3.0,'CC300',1.5,3.0,0,'','Batch job','Dave','ghi789');

-- Sample isotope labeling record
CREATE TABLE sample_isotope_labeling_record (
  record_id TEXT PRIMARY KEY,
  sample_id TEXT,
  isotope TEXT,
  enrichment_percent REAL,
  labeling_method TEXT,
  reagent_batch TEXT,
  start_date TEXT,
  end_date TEXT,
  temperature_c REAL,
  pH REAL,
  incubation_time_h REAL,
  operator_name TEXT,
  instrument_id TEXT,
  qc_passed INTEGER,
  qc_notes TEXT,
  storage_location TEXT,
  comment TEXT,
  verification_date TEXT,
  verified_by TEXT,
  cost_usd REAL,
  disposal_method TEXT,
  related_experiment_id TEXT,
  analysis_results TEXT,
  regulatory_approval TEXT,
  notes TEXT
);

INSERT INTO sample_isotope_labeling_record VALUES
('rec001','sampA','13C',99.9,'metabolic','RB001','2025-01-05','2025-01-06',37.0,7.4,24.0,'Alice','instX',1,'All good','Freezer1','No issues','2025-01-07','Bob',250.0,'incineration','exp001','mass_spec','Yes','Initial run'),
('rec002','sampB','15N',95.0,'chemical','RB002','2025-02-10','2025-02-12',25.0,6.8,48.0,'Carol','instY',0,'Peak shift observed','Freezer2','Repeat needed','2025-02-13','Dave',300.0,'waste','exp002','nmr','No','Follow up'),
('rec003','sampC','2H',80.0,'enzymatic','RB003','2025-03-15','2025-03-16',30.0,7.0,12.0,'Eve','instZ',1,'Within specs','Freezer3','Successful','2025-03-17','Frank',200.0,'recycle','exp003','gc','Yes','Finalized');

-- Facility HVAC zone performance
CREATE TABLE facility_hvac_zone_performance (
  zone_id TEXT PRIMARY KEY,
  building_id TEXT,
  hvac_system_id TEXT,
  zone_name TEXT,
  supply_temp_c REAL,
  return_temp_c REAL,
  delta_t_c REAL,
  airflow_cmh REAL,
  fan_speed_rpm REAL,
  filter_status TEXT,
  humidity_percent REAL,
  co2_ppm REAL,
  power_kw REAL,
  runtime_h REAL,
  maintenance_due_date TEXT,
  last_service_date TEXT,
  technician_name TEXT,
  energy_efficiency_ratio REAL,
  comments TEXT,
  compliance_status TEXT,
  audit_date TEXT,
  auditor_name TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO facility_hvac_zone_performance VALUES
('zoneA','B001','HVAC01','NorthWing',22.0,18.0,4.0,1500.0,1800,'OK',45.0,500,15.0,3000.0,'2025-07-01','2025-01-15','Mike',3.2,'Stable','Compliant','2025-01-20','Anna','No issues','2025-01-10','2025-01-20'),
('zoneB','B001','HVAC01','SouthWing',21.5,17.5,4.0,1400.0,1750,'ReplaceSoon',48.0,520,14.5,3100.0,'2025-06-15','2025-02-10','Laura',3.1,'Slight drop','Compliant','2025-02-15','Tom','Filter notice','2025-02-05','2025-02-15'),
('zoneC','B001','HVAC02','EastWing',23.0,19.0,4.0,1600.0,1900,'OK',42.0,480,16.0,2900.0','2025-08-01','2025-03-01','Sara',3.3,'Good','Compliant','2025-03-05','Nina','All clear','2025-03-01','2025-03-05');

-- Researcher patent portfolio
CREATE TABLE researcher_patent_portfolio (
  patent_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  title TEXT,
  filing_date TEXT,
  grant_date TEXT,
  patent_number TEXT,
  status TEXT,
  technology_area TEXT,
  assignee TEXT,
  inventors TEXT,
  priority_date TEXT,
  abstract TEXT,
  claims_count INTEGER,
  citations INTEGER,
  legal_events TEXT,
  maintenance_fee_due TEXT,
  renewal_status TEXT,
  related_project_id TEXT,
  funding_source TEXT,
  notes TEXT,
  last_updated TEXT,
  created_by TEXT,
  jurisdiction TEXT,
  ip_type TEXT,
  status_notes TEXT,
  expiration_date TEXT
);

INSERT INTO researcher_patent_portfolio VALUES
('pat001','resA','Nanoparticle drug delivery','2024-05-01','2025-11-20','US12345678','Granted','Pharma','UniLab','resA;resB','2024-04-01','Delivery system using lipid nanoparticles',12,5,'Assignment','2026-11-20','Active','proj001','GovGrant','First patent','2025-12-01','Alice','US','Utility','No issues','2035-11-20'),
('pat002','resB','High-throughput screening platform','2023-02-15','2024-09-10','EP87654321','Granted','Diagnostics','BioCorp','resB;resC','2023-02-01','Automated platform for drug screening',20,8,'Maintenance fee paid','2025-09-10','Active','proj002','Industry','Second patent','2024-10-01','Bob','EU','Utility','On schedule','2034-09-10'),
('pat003','resC','Quantum sensor array','2025-01-10','Pending','CN00011223','Pending','QuantumTech','TechInstitute','resC','2025-01-01','Array of quantum sensors for magnetic detection',15,2,'Pending','2027-01-10','Pending','proj003','University','Third patent','2025-02-01','Carol','CN','Utility','Awaiting examination','2035-01-10');

-- Environmental airborne particle analysis
CREATE TABLE environmental_airborne_particle_analysis (
  analysis_id TEXT PRIMARY KEY,
  station_id TEXT,
  sample_date TEXT,
  particle_size_range_nm TEXT,
  concentration_per_m3 REAL,
  mass_concentration_ug_m3 REAL,
  sampling_method TEXT,
  flow_rate_l_min REAL,
  duration_min REAL,
  temperature_c REAL,
  humidity_percent REAL,
  wind_speed_m_s REAL,
  wind_direction_deg INTEGER,
  instrument_id TEXT,
  technician_name TEXT,
  calibration_date TEXT,
  data_quality_flag INTEGER,
  comments TEXT,
  regulatory_limit_ug_m3 REAL,
  exceedance_flag INTEGER,
  report_generated_date TEXT,
  analyst_name TEXT,
  verification_status TEXT,
  notes TEXT,
  created_at TEXT,
  updated_at TEXT
);

INSERT INTO environmental_airborne_particle_analysis VALUES
('ana001','ST001','2025-01-15','0.3-1.0','15000.0','35.0','filter','5.0','60.0','22.0','55.0','3.2','180','instA','Mike','2024-12-01',1,'Clean day','50.0',0,'2025-01-16','Anna','Verified','No issues','2025-01-15','2025-01-16'),
('ana002','ST002','2025-02-10','1.0-2.5','25000.0','55.0','impactor','4.0','45.0','18.0','60.0','4.5','90','instB','Laura','2025-01-20',1,'Slight dust','50.0',1,'2025-02-11','Bob','Verified','Exceeds limit','2025-02-10','2025-02-11'),
('ana003','ST003','2025-03-05','2.5-10.0','12000.0','20.0','filter','6.0','30.0','20.0','50.0','2.8','270','instC','Eve','2025-02-28',1,'Normal','50.0',0,'2025-03-06','Carol','Verified','Within limits','2025-03-05','2025-03-06');