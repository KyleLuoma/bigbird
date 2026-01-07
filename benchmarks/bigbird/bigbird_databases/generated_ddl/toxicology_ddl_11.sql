-- Instrument logistics details for lab equipment shipments
CREATE TABLE instrument_logistics_detail (
  logistic_id TEXT NOT NULL,
  instrument_id TEXT NOT NULL,
  shipment_date TEXT,
  carrier TEXT,
  tracking_number TEXT,
  origin_warehouse TEXT,
  destination_lab TEXT,
  status TEXT,
  estimated_arrival TEXT,
  actual_arrival TEXT,
  temperature_control TEXT,
  humidity_control TEXT,
  packaging_type TEXT,
  handling_instructions TEXT,
  customs_clearance TEXT,
  insurance_policy TEXT,
  cost REAL,
  weight_kg REAL,
  dimensions_cm TEXT,
  received_by TEXT,
  notes TEXT,
  PRIMARY KEY (logistic_id)
);

INSERT INTO instrument_logistics_detail VALUES ('log001','instA','2025-03-01','FastShip','TRK12345','WH01','LabA','InTransit','2025-03-05','', 'Yes','No','Box','HandleWithCare','Cleared','POL123',1500.75,12.5,'30x20x15','JohnDoe','');
INSERT INTO instrument_logistics_detail VALUES ('log002','instB','2025-02-28','QuickCarry','TRK54321','WH02','LabB','Delivered','2025-03-02','2025-03-02','No','Yes','Crate','NoShock','Pending','POL456',2350.00,25.0,'45x35x25','JaneSmith','');
INSERT INTO instrument_logistics_detail VALUES ('log003','instC','2025-03-03','ShipNow','TRK98765','WH03','LabC','Delayed','2025-03-08','', 'Yes','Yes','Pallet','KeepUpright','Cleared','POL789',3200.50,40.0,'60x40x30','MikeBrown','CheckTemperature');

-- Lab airflow analysis measurements
CREATE TABLE lab_airflow_analysis (
  analysis_id TEXT NOT NULL,
  lab_zone TEXT,
  measurement_datetime TEXT,
  air_speed_mps REAL,
  pressure_pa REAL,
  temperature_c REAL,
  humidity_percent REAL,
  co2_ppm REAL,
  voc_ppb REAL,
  particle_count_0_5um INTEGER,
  particle_count_1_0um INTEGER,
  particle_count_2_5um INTEGER,
  particle_count_5_0um INTEGER,
  particle_count_10um INTEGER,
  sensor_id TEXT,
  technician_id TEXT,
  reference_standard TEXT,
  deviation_percent REAL,
  notes TEXT,
  PRIMARY KEY (analysis_id)
);

INSERT INTO lab_airflow_analysis VALUES ('flow001','ZoneA','2025-03-01T09:00','0.35','101.2','22.5','45.0','600','120','1500','800','300','150','50','SEN001','TECH01','STD001','2.5','');
INSERT INTO lab_airflow_analysis VALUES ('flow002','ZoneB','2025-03-01T10:30','0.40','100.8','23.0','48.0','620','130','1600','850','320','160','55','SEN002','TECH02','STD001','1.8','CheckVent');
INSERT INTO lab_airflow_analysis VALUES ('flow003','ZoneC','2025-03-01T11:15','0.30','101.5','21.8','42.0','590','115','1400','750','280','140','45','SEN003','TECH01','STD001','3.0','');

-- Chemical process control parameters
CREATE TABLE chemical_process_control (
  process_id TEXT NOT NULL,
  batch_number TEXT,
  start_time TEXT,
  end_time TEXT,
  reactor_id TEXT,
  temperature_setpoint_c REAL,
  pressure_setpoint_pa REAL,
  stir_rate_rpm REAL,
  pH_target REAL,
  dissolved_oxygen_mgL REAL,
  feed_rate_mlmin REAL,
  coolant_flow_lpm REAL,
  agitator_type TEXT,
  residence_time_min REAL,
  catalyst_id TEXT,
  safety_interlock TEXT,
  operator_id TEXT,
  batch_status TEXT,
  yield_percent REAL,
  impurity_ppm REAL,
  notes TEXT,
  PRIMARY KEY (process_id)
);

INSERT INTO chemical_process_control VALUES ('proc001','BCH001','2025-03-01T08:00','2025-03-01T12:00','RCTR01','150.0','200000','500','7.0','8.5','250','30','Magnetic','180','CAT001','Enabled','OP001','Completed','85.2','120','');
INSERT INTO chemical_process_control VALUES ('proc002','BCH002','2025-03-02T09:30','2025-03-02T14:15','RCTR02','130.0','180000','450','6.8','9.0','300','35','Paddle','210','CAT002','Enabled','OP002','Completed','78.5','250','AdjustTemperature');
INSERT INTO chemical_process_control VALUES ('proc003','BCH003','2025-03-03T07:45','2025-03-03T11:30','RCTR03','145.0','195000','480','7.2','8.0','275','32','Magnetic','165','CAT003','Enabled','OP003','Failed','0.0','0','PressureAlarm');

-- Nanomaterial production log
CREATE TABLE nanomaterial_production_log (
  production_id TEXT NOT NULL,
  material_name TEXT,
  batch_id TEXT,
  synthesis_date TEXT,
  reactor_type TEXT,
  precursor_a TEXT,
  precursor_b TEXT,
  solvent TEXT,
  concentration_mgml REAL,
  temperature_c REAL,
  pressure_pa REAL,
  sonication_time_min REAL,
  stirring_speed_rpm REAL,
  particle_size_nm REAL,
  zeta_potential_mv REAL,
  yield_mg REAL,
  purity_percent REAL,
  operator_id TEXT,
  qc_status TEXT,
  storage_location TEXT,
  safety_review TEXT,
  notes TEXT,
  PRIMARY KEY (production_id)
);

INSERT INTO nanomaterial_production_log VALUES ('nano001','AuNano','BN001','2025-02-28','BatchReactor','HAuCl4','NaBH4','Water','0.5','25','101325','30','600','15','-25','2000','98','OP101','Passed','FreezerA','Reviewed','');
INSERT INTO nanomaterial_production_log VALUES ('nano002','AgNano','BN002','2025-03-01','Microwave','AgNO3','Citrate','Ethanol','0.8','80','120000','45','800','20','-30','1500','95','OP102','Passed','FreezerB','Reviewed','');
INSERT INTO nanomaterial_production_log VALUES ('nano003','SiO2Nano','BN003','2025-03-02','StirredTank','TEOS','NH4OH','Isopropanol','1.2','60','101000','60','500','10','-20','2500','99','OP103','Failed','FreezerC','Pending','LowYield');

-- Computational cluster node inventory
CREATE TABLE computational_cluster_node (
  node_id TEXT NOT NULL,
  hostname TEXT,
  ip_address TEXT,
  cpu_model TEXT,
  cpu_cores INTEGER,
  gpu_model TEXT,
  gpu_count INTEGER,
  ram_gb REAL,
  storage_tb REAL,
  network_bandwidth_gbps REAL,
  os_version TEXT,
  role TEXT,
  rack_location TEXT,
  power_supply_watts REAL,
  purchase_date TEXT,
  warranty_expiration TEXT,
  status TEXT,
  last_maintenance TEXT,
  admin_contact TEXT,
  notes TEXT,
  PRIMARY KEY (node_id)
);

INSERT INTO computational_cluster_node VALUES ('node001','clust01','10.0.0.1','XeonE5','32','TeslaV100','2','256','8','40','Ubuntu20.04','Compute','RackA1','1200','2023-06-15','2026-06-15','Active','2025-01-10','adminA','');
INSERT INTO computational_cluster_node VALUES ('node002','clust02','10.0.0.2','XeonE5','32','TeslaV100','2','256','8','40','Ubuntu20.04','Compute','RackA2','1200','2023-07-01','2026-07-01','Active','2025-01-12','adminB','');
INSERT INTO computational_cluster_node VALUES ('node003','clust-db01','10.0.0.10','XeonGold','64','None','0','512','12','10','Ubuntu20.04','Database','RackB1','1500','2022-12-01','2025-12-01','Maintenance','2024-12-20','adminC','SSDUpgradePending');

-- Environmental contingency plan records
CREATE TABLE environmental_contingency_plan (
  plan_id TEXT NOT NULL,
  plan_name TEXT,
  effective_date TEXT,
  review_date TEXT,
  responsible_officer TEXT,
  trigger_event TEXT,
  mitigation_strategy TEXT,
  communication_method TEXT,
  backup_power_required BOOLEAN,
  alternate_location TEXT,
  resource_inventory TEXT,
  training_required BOOLEAN,
  drill_frequency_days INTEGER,
  last_drill_date TEXT,
  compliance_status TEXT,
  budget_usd REAL,
  external_agency_contact TEXT,
  risk_level TEXT,
  notes TEXT,
  PRIMARY KEY (plan_id)
);

INSERT INTO environmental_contingency_plan VALUES ('plan001','FloodResponse','2024-01-01','2025-01-01','OfficerA','Flood','ElevateEquipment','Email','True','OffsiteLabA','Generators, Pumps','True','180','2024-06-15','Compliant','50000','AgencyX','High','');
INSERT INTO environmental_contingency_plan VALUES ('plan002','PowerOutage','2024-02-01','2025-02-01','OfficerB','PowerFailure','SwitchToUPS','Phone','True','BackupSiteB','UPS, Batteries','True','90','2024-07-20','Compliant','30000','AgencyY','Medium','');
INSERT INTO environmental_contingency_plan VALUES ('plan003','ChemicalSpill','2024-03-01','2025-03-01','OfficerC','Spill','ContainAndVent','Alarm','False','N/A','SpillKits, PPE','True','30','2024-08-05','Compliant','20000','AgencyZ','High','ReviewedQuarterly');

-- Facility maintenance scheduling
CREATE TABLE facility_maintenance_schedule (
  schedule_id TEXT NOT NULL,
  facility_area TEXT,
  maintenance_type TEXT,
  contractor TEXT,
  scheduled_start TEXT,
  scheduled_end TEXT,
  estimated_duration_hours REAL,
  priority_level TEXT,
  required_shutdown BOOLEAN,
  shutdown_start TEXT,
  shutdown_end TEXT,
  safety_measures TEXT,
  compliance_checklist TEXT,
  cost_usd REAL,
  approval_status TEXT,
  supervisor_id TEXT,
  notes TEXT,
  PRIMARY KEY (schedule_id)
);

INSERT INTO facility_maintenance_schedule VALUES ('maint001','HVAC','FilterReplacement','ContractorA','2025-04-01','2025-04-02',8.0,'Medium','False','','','LockoutTagout','Check001',1200,'Approved','SUP001','');
INSERT INTO facility_maintenance_schedule VALUES ('maint002','Electrical','PanelInspection','ContractorB','2025-04-05','2025-04-05',4.0,'High','True','2025-04-05T02:00','2025-04-05T06:00','PPE, Grounding','Check002',2500,'Pending','SUP002','CoordinationNeeded');
INSERT INTO facility_maintenance_schedule VALUES ('maint003','Plumbing','PipeLeakRepair','ContractorC','2025-04-10','2025-04-11',12.0,'High','True','2025-04-10T08:00','2025-04-10T20:00','ShutoffValve','Check003',4000,'Approved','SUP003','AfterHoursWork');

-- Research data backup catalog
CREATE TABLE research_data_backup (
  backup_id TEXT NOT NULL,
  dataset_name TEXT,
  backup_date TEXT,
  storage_location TEXT,
  storage_medium TEXT,
  encrypted BOOLEAN,
  checksum TEXT,
  size_gb REAL,
  retention_period_days INTEGER,
  responsible_researcher TEXT,
  verification_status TEXT,
  last_verified TEXT,
  backup_operator TEXT,
  notes TEXT,
  PRIMARY KEY (backup_id)
);

INSERT INTO research_data_backup VALUES ('bkp001','GeneSeqStudy','2025-02-28','ArchiveVault','Tape','True','ABC123DEF','1500',365,'ResearcherA','Verified','2025-03-01','OperatorX','');
INSERT INTO research_data_backup VALUES ('bkp002','ProteinStructure','2025-03-01','CloudBucket','Disk','True','XYZ789GHI','800',180,'ResearcherB','Verified','2025-03-02','OperatorY','');
INSERT INTO research_data_backup VALUES ('bkp003','MetabolomicsData','2025-03-02','OffsiteDataCenter','Disk','False','LMN456OPQ','1200',730,'ResearcherC','Pending','2025-03-03','OperatorZ','EncryptionPlanned');

-- Biosafety certificate registry
CREATE TABLE biosafety_certificate (
  cert_id TEXT NOT NULL,
  biosafety_level TEXT,
  issue_date TEXT,
  expiration_date TEXT,
  issued_by TEXT,
  holder_name TEXT,
  holder_id TEXT,
  lab_location TEXT,
  training_completed BOOLEAN,
  training_date TEXT,
  audit_score INTEGER,
  compliance_status TEXT,
  notes TEXT,
  PRIMARY KEY (cert_id)
);

INSERT INTO biosafety_certificate VALUES ('cert001','BSL-2','2024-05-01','2027-05-01','AgencyX','DrSmith','RES001','LabA','True','2024-04-15',95,'Compliant','');
INSERT INTO biosafety_certificate VALUES ('cert002','BSL-1','2023-09-10','2026-09-10','AgencyY','DrJones','RES002','LabB','True','2023-08-20',88,'Compliant','');
INSERT INTO biosafety_certificate VALUES ('cert003','BSL-3','2022-11-20','2025-11-20','AgencyZ','DrLee','RES003','LabC','False','','70','NonCompliant','PendingTraining');

-- Spectral analysis run metadata
CREATE TABLE spectral_analysis_run (
  run_id TEXT NOT NULL,
  instrument_id TEXT,
  sample_id TEXT,
  run_start TEXT,
  run_end TEXT,
  wavelength_start_nm REAL,
  wavelength_end_nm REAL,
  resolution_nm REAL,
  detector_type TEXT,
  acquisition_mode TEXT,
  integration_time_ms REAL,
  averaging_factor INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  operator_id TEXT,
  data_file_path TEXT,
  processing_software TEXT,
  processed BOOLEAN,
  quality_flag TEXT,
  notes TEXT,
  PRIMARY KEY (run_id)
);

INSERT INTO spectral_analysis_run VALUES ('spec001','SPEC01','SMP001','2025-03-01T09:00','2025-03-01T09:30',200.0,800.0,0.5,'CCD','Continuous',100.0,5,22.0,40.0,'OP001','/data/spec001.raw','SpecSoft','True','Pass','');
INSERT INTO spectral_analysis_run VALUES ('spec002','SPEC02','SMP002','2025-03-01T10:00','2025-03-01T10:45',150.0,900.0,0.3,'InGaAs','StepScan',200.0,3,21.5,38.0,'OP002','/data/spec002.raw','SpecSoft','False','Fail','NoiseHigh');
INSERT INTO spectral_analysis_run VALUES ('spec003','SPEC01','SMP003','2025-03-01T11:00','2025-03-01T11:25',250.0,750.0,0.6,'CCD','Continuous',150.0,4,23.0,42.0,'OP003','/data/spec003.raw','SpecSoft','True','Pass','');