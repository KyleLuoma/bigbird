-- Nanomaterial characterization records
CREATE TABLE nanomaterial_characterization (
  characterization_id TEXT NOT NULL,
  material_id TEXT,
  particle_size_nm REAL,
  surface_area_m2_g REAL,
  zeta_potential_mv REAL,
  morphology TEXT,
  synthesis_method TEXT,
  batch_number TEXT,
  operator_id TEXT,
  instrument_id TEXT,
  measurement_date TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  ph REAL,
  analysis_technique TEXT,
  raw_data_path TEXT,
  processed_data_path TEXT,
  comments TEXT,
  revision_number INTEGER,
  status TEXT,
  PRIMARY KEY (characterization_id)
);

INSERT INTO nanomaterial_characterization VALUES ('NC001','MAT001',45.2,120.5,15.3,'sphere','solgel','B001','OP001','INST01','2023-03-15',22.5,45.0,7.2,'TEM','/data/raw/nc001','/data/processed/nc001','initial run',1,'completed');
INSERT INTO nanomaterial_characterization VALUES ('NC002','MAT002',78.9,95.1,-5.4,'rod','hydrothermal','B002','OP002','INST02','2023-04-10',20.0,40.0,6.8','DLS','/data/raw/nc002','/data/processed/nc002','repeat measurement',2,'pending');
INSERT INTO nanomaterial_characterization VALUES ('NC003','MAT003',12.0,150.0,8.1,'sheet','chemical vapor','B003','OP003','INST03','2023-05-05',23.0,50.0,8.0','AFM','/data/raw/nc003','/data/processed/nc003','quality check',1,'approved');

-- Spectrometer calibration log
CREATE TABLE spectrometer_calibration_log (
  calibration_id TEXT NOT NULL,
  spectrometer_id TEXT,
  calibration_date TEXT,
  technician_id TEXT,
  wavelength_start_nm REAL,
  wavelength_end_nm REAL,
  calibration_standard TEXT,
  reference_value REAL,
  measured_value REAL,
  deviation_ppm REAL,
  temperature_c REAL,
  humidity_percent REAL,
  pressure_kpa REAL,
  software_version TEXT,
  firmware_version TEXT,
  notes TEXT,
  calibration_status TEXT,
  next_due_date TEXT,
  calibration_type TEXT,
  job_order_number TEXT,
  PRIMARY KEY (calibration_id)
);

INSERT INTO spectrometer_calibration_log VALUES ('CAL001','SPEC01','2023-01-20','TECH01',200.0,800.0,'NIST SRM','1000','998',-2.0,21.5,42.0,101.3,'v3.2','fw1.0','routine check','passed','2024-01-20','full','JO1234');
INSERT INTO spectrometer_calibration_log VALUES ('CAL002','SPEC02','2023-02-15','TECH02',100.0,1000.0,'Custom Std','500','505',10.0,22.0,40.0,100.8,'v4.0','fw2.1','outlier observed','failed','2024-02-15','partial','JO1235');
INSERT INTO spectrometer_calibration_log VALUES ('CAL003','SPEC03','2023-03-10','TECH03',250.0,750.0,'NIST SRM','750','749','-1.3',20.0,45.0,101.0,'v3.8','fw1.5','within specs','passed','2024-03-10','full','JO1236');

-- Lab automation task definition
CREATE TABLE lab_automation_task (
  task_id TEXT NOT NULL,
  task_name TEXT,
  description TEXT,
  created_by TEXT,
  creation_date TEXT,
  last_modified_date TEXT,
  priority_level TEXT,
  estimated_duration_min INTEGER,
  required_equipment TEXT,
  required_reagents TEXT,
  trigger_event TEXT,
  schedule_cron TEXT,
  execution_node TEXT,
  max_retries INTEGER,
  retry_interval_sec INTEGER,
  notification_email TEXT,
  status TEXT,
  version INTEGER,
  approval_required TEXT,
  approved_by TEXT,
  PRIMARY KEY (task_id)
);

INSERT INTO lab_automation_task VALUES ('AT001','PlatePrep','Automated 96‑well plate preparation','USER01','2023-01-05','2023-01-10','high',30,'dispensor','media,antibiotic','start_of_shift','0 8 * * *','nodeA',3,600,'labops@example.com','active',1,'yes','SUPV01');
INSERT INTO lab_automation_task VALUES ('AT002','SampleAliquot','Aliquot samples into tubes','USER02','2023-02-01','2023-02-07','medium',45,'liquid_handler','buffer','batch_complete','0 22 * * *','nodeB',2,1200,'labops@example.com','active',2,'no','');
INSERT INTO lab_automation_task VALUES ('AT003','DataExport','Export instrument data to repository','USER03','2023-03-12','2023-03-13','low',15,'server','none','hourly_trigger','0 * * * *','nodeC',1,0,'labops@example.com','scheduled',1,'no','');

-- Remote monitoring station registry
CREATE TABLE remote_monitoring_station (
  station_id TEXT NOT NULL,
  site_name TEXT,
  latitude REAL,
  longitude REAL,
  altitude_m REAL,
  install_date TEXT,
  firmware_version TEXT,
  sensor_suite TEXT,
  communication_link TEXT,
  power_source TEXT,
  maintenance_interval_days INTEGER,
  last_maintenance_date TEXT,
  data_retention_days INTEGER,
  ip_address TEXT,
  mac_address TEXT,
  admin_contact TEXT,
  status TEXT,
  last_contact_timestamp TEXT,
  software_update_status TEXT,
  notes TEXT,
  PRIMARY KEY (station_id)
);

INSERT INTO remote_monitoring_station VALUES ('RS001','NorthField','45.123','-122.456','250','2022-06-01','v2.1','temp,humidity,pm2.5','satellite','solar','180','2023-12-01','365','192.168.10.10','AA:BB:CC:DD:EE:01','eng1@example.com','online','2023-12-31 23:55:00','up_to_date','initial deployment');
INSERT INTO remote_monitoring_station VALUES ('RS002','SouthValley','44.987','-123.210','180','2023-01-15','v2.1','temp,co2','cellular','grid','180','2023-11-15','365','192.168.10.11','AA:BB:CC:DD:EE:02','eng2@example.com','online','2023-12-31 23:58:00','pending','added during expansion');
INSERT INTO remote_monitoring_station VALUES ('RS003','EastRidge','46.200','-121.800','300','2023-04-20','v2.2','temp,humidity,wind','satellite','solar','180','2023-12-20','365','192.168.10.12','AA:BB:CC:DD:EE:03','eng3@example.com','offline','2023-12-01 10:20:00','failed','awaiting repair');

-- Metabolomics dataset catalog
CREATE TABLE metabolomics_dataset (
  dataset_id TEXT NOT NULL,
  study_id TEXT,
  sample_type TEXT,
  organism TEXT,
  tissue TEXT,
  extraction_method TEXT,
  platform TEXT,
  acquisition_date TEXT,
  analyst_id TEXT,
  raw_file_path TEXT,
  processed_file_path TEXT,
  number_of_features INTEGER,
  detection_limit_umol_l REAL,
  normalization_method TEXT,
  quality_control_status TEXT,
  publication_doi TEXT,
  embargo_until TEXT,
  dataset_version INTEGER,
  comments TEXT,
  PRIMARY KEY (dataset_id)
);

INSERT INTO metabolomics_dataset VALUES ('MD001','ST001','serum','human','blood','methanol','LCMS','2023-02-10','AN001','/data/raw/md001','/data/processed/md001',1520,0.01,'log2','passed','10.1000/xyz123','2024-01-01',1,'baseline cohort');
INSERT INTO metabolomics_dataset VALUES ('MD002','ST002','leaf','arabidopsis','shoot','chloroform','GCMS','2023-03-05','AN002','/data/raw/md002','/data/processed/md002',1780,0.005,'quantile','passed','10.1000/abc456','2024-06-01',1,'stress experiment');
INSERT INTO metabolomics_dataset VALUES ('MD003','ST003','cell lysate','mouse','liver','acid extraction','LCMS','2023-04-22','AN003','/data/raw/md003','/data/processed/md003',1400,0.02,'median','failed','10.1000/def789','2025-01-01',2,'replicate 2');

-- Clinical sample registry
CREATE TABLE clinical_sample_registry (
  sample_reg_id TEXT NOT NULL,
  participant_id TEXT,
  visit_number INTEGER,
  collection_date TEXT,
  specimen_type TEXT,
  volume_ml REAL,
  barcode TEXT,
  storage_location TEXT,
  freezer_id TEXT,
  shelf_number INTEGER,
  box_number INTEGER,
  position_in_box TEXT,
  processing_status TEXT,
  aliquot_count INTEGER,
  consent_version TEXT,
  protocol_id TEXT,
  study_id TEXT,
  remarks TEXT,
  last_updated TEXT,
  PRIMARY KEY (sample_reg_id)
);

INSERT INTO clinical_sample_registry VALUES ('CSR001','P001',1,'2023-01-15','blood',5.0,'BC001','FreezerA',1,2,3,'A1','processed',2,'v1','PR001','ST001','no issues','2023-01-20');
INSERT INTO clinical_sample_registry VALUES ('CSR002','P002',2,'2023-02-10','urine',10.0,'BC002','FreezerB',2,1,5,'B2','pending',0,'v1','PR002','ST002','awaiting processing','2023-02-12');
INSERT INTO clinical_sample_registry VALUES ('CSR003','P003',1,'2023-03-05','saliva',2.0,'BC003','FreezerC',3,4,7,'C3','processed',1,'v2','PR003','ST003','sample hemolysed','2023-03-07');

-- Lab IT support ticket log
CREATE TABLE lab_it_support_ticket (
  ticket_id TEXT NOT NULL,
  reported_by TEXT,
  report_date TEXT,
  issue_category TEXT,
  priority TEXT,
  device_id TEXT,
  location TEXT,
  description TEXT,
  status TEXT,
  assigned_to TEXT,
  escalation_level INTEGER,
  resolution_date TEXT,
  resolution_summary TEXT,
  hours_spent REAL,
  follow_up_required TEXT,
  follow_up_date TEXT,
  related_incident_id TEXT,
  satisfaction_score INTEGER,
  feedback TEXT,
  PRIMARY KEY (ticket_id)
);

INSERT INTO lab_it_support_ticket VALUES ('TKT001','USERA','2023-01-08','network','high','DEV001','Lab1','cannot connect to internet','resolved','TECH01',2,'2023-01-09','replaced router','1.5','no','','INC001',5,'quick fix');
INSERT INTO lab_it_support_ticket VALUES ('TKT002','USERB','2023-02-14','software','medium','DEV002','Lab2','software crash on start','in_progress','TECH02',1,NULL,'','0.0','yes','2023-02-21','',NULL,'');
INSERT INTO lab_it_support_ticket VALUES ('TKT003','USERC','2023-03-22','hardware','low','DEV003','Lab3','printer jam','resolved','TECH03',0,'2023-03-23','cleared jam','0.3','no','','INC003',4,'minor issue');

-- Equipment failure analysis report
CREATE TABLE equipment_failure_analysis (
  analysis_id TEXT NOT NULL,
  equipment_id TEXT,
  failure_date TEXT,
  detected_by TEXT,
  failure_mode TEXT,
  root_cause TEXT,
  corrective_action TEXT,
  downtime_hours REAL,
  cost_estimate_usd REAL,
  parts_replaced TEXT,
  vendor TEXT,
  warranty_status TEXT,
  severity_level TEXT,
  impact_description TEXT,
  follow_up_inspection_date TEXT,
  analyst_id TEXT,
  documentation_path TEXT,
  status TEXT,
  notes TEXT,
  PRIMARY KEY (analysis_id)
);

INSERT INTO equipment_failure_analysis VALUES ('FA001','EQ001','2023-01-20','ENG01','overheating','cooling fan failure','replace fan','4.0','1200','fan model X','VendorA','in_warranty','high','interrupted experiment','2023-02-05','AN001','/docs/fa001','closed','resolved');
INSERT INTO equipment_failure_analysis VALUES ('FA002','EQ002','2023-02-28','ENG02','leak','seal gasket degraded','install new gasket','2.5','800','gasket Y','VendorB','out_of_warranty','medium','minor loss of sample','2023-03-10','AN002','/docs/fa002','closed','monitored');
INSERT INTO equipment_failure_analysis VALUES ('FA003','EQ003','2023-03-15','ENG03','sensor drift','calibration drift','recalibrate sensor','1.0','300','none','VendorC','in_warranty','low','data quality affected','2023-04-01','AN003','/docs/fa003','open','investigation ongoing');

-- Environmental impact assessment records
CREATE TABLE environmental_impact_assessment (
  assessment_id TEXT NOT NULL,
  project_id TEXT,
  assessment_date TEXT,
  assessor_id TEXT,
  scope TEXT,
  baseline_conditions TEXT,
  impact_identified TEXT,
  mitigation_measures TEXT,
  residual_impact TEXT,
  monitoring_plan TEXT,
  stakeholder_comments TEXT,
  approval_status TEXT,
  approval_date TEXT,
  document_version INTEGER,
  related_permit_id TEXT,
  risk_rating TEXT,
  cost_estimate_usd REAL,
  implementation_schedule TEXT,
  follow_up_actions TEXT,
  notes TEXT,
  PRIMARY KEY (assessment_id)
);

INSERT INTO environmental_impact_assessment VALUES ('EA001','PRJ001','2023-01-12','AS001','air emissions','baseline PM10 12 µg/m3','increase PM10 by 5 µg/m3','install scrubbers','PM10 at 13 µg/m3','monthly sensor readings','no objections','approved','2023-01-20',1,'PERM001','moderate','50000','2023-02-01 to 2023-05-01','verify scrubber efficiency','initial assessment');
INSERT INTO environmental_impact_assessment VALUES ('EA002','PRJ002','2023-02-08','AS002','water discharge','baseline BOD 2 mg/L','increase BOD by 1 mg/L','treatment tank upgrade','BOD at 2.5 mg/L','weekly lab analysis','concern about downstream impact','pending',NULL,2,'PERM002','high','75000','2023-03-01 to 2023-09-01','sample downstream water','awaiting approval');
INSERT INTO environmental_impact_assessment VALUES ('EA003','PRJ003','2023-03-22','AS003','waste disposal','baseline landfill 100 t/yr','additional hazardous waste 5 t/yr','hazardous waste contract','hazardous waste at 5 t/yr','quarterly audit','no objections','approved','2023-04-01',1,'PERM003','low','20000','2023-04-15 to 2023-12-31','ensure contractor compliance','completed');

-- Regulatory compliance document archive
CREATE TABLE regulatory_compliance_document (
  doc_id TEXT NOT NULL,
  document_type TEXT,
  jurisdiction TEXT,
  effective_date TEXT,
  expiration_date TEXT,
  version_number INTEGER,
  responsible_party TEXT,
  storage_location TEXT,
  access_level TEXT,
  linked_process TEXT,
  review_cycle_months INTEGER,
  last_review_date TEXT,
  next_review_date TEXT,
  approval_status TEXT,
  approved_by TEXT,
  comments TEXT,
  digital_signature TEXT,
  retention_period_years INTEGER,
  disposal_method TEXT,
  audit_trail_path TEXT,
  PRIMARY KEY (doc_id)
);

INSERT INTO regulatory_compliance_document VALUES ('DOC001','Safety Manual','US','2022-01-01','2025-12-31',3,'SafetyMgr','/docs/safety_manual','confidential','lab_operations',12,'2023-01-15','2024-01-15','approved','DIR001','updated for new equipment','sig123','7','shred','/audit/doc001');
INSERT INTO regulatory_compliance_document VALUES ('DOC002','Chemical Register','EU','2021-06-01','2024-05-31',2,'ChemMgr','/docs/chem_register','restricted','procurement',6,'2023-02-10','2023-08-10','pending','DIR002','pending EU REACH update','sig124','5','archival','/audit/doc002');
INSERT INTO regulatory_compliance_document VALUES ('DOC003','Data Privacy Policy','US','2023-03-01','2026-02-28',1,'DataCmnt','/docs/privacy_policy','public','data_handling',24,'2023-03-01','2025-03-01','approved','DIR003','initial release','sig125','10','shred','/audit/doc003');

-- Lab ventilation system maintenance schedule
CREATE TABLE ventilation_system_maintenance (
  schedule_id TEXT NOT NULL,
  system_id TEXT,
  maintenance_type TEXT,
  frequency_days INTEGER,
  last_maintenance_date TEXT,
  next_due_date TEXT,
  technician_id TEXT,
  checklist_path TEXT,
  notes TEXT,
  status TEXT,
  estimated_downtime_minutes INTEGER,
  parts_required TEXT,
  cost_estimate_usd REAL,
  approval_required TEXT,
  approved_by TEXT,
  approval_date TEXT,
  safety_precautions TEXT,
  documentation_path TEXT,
  follow_up_required TEXT,
  follow_up_date TEXT,
  PRIMARY KEY (schedule_id)
);

INSERT INTO ventilation_system_maintenance VALUES ('VM001','VENT01','filter replacement',180,'2023-01-10','2023-07-09','TECH01','/checklists/vm001','replace HEPA filter','completed',30,'HEPA filter','250','yes','SUPV01','2023-01-09','lockout/tagout','/docs/vm001','no','');
INSERT INTO ventilation_system_maintenance VALUES ('VM002','VENT02','duct cleaning',365,'2023-02-15','2024-02-14','TECH02','/checklists/vm002','full duct cleaning','scheduled',120,'cleaning agents','1200','no','','','','','yes','2024-02-15');
INSERT INTO ventilation_system_maintenance VALUES ('VM003','VENT03','sensor calibration',90,'2023-03-20','2023-06-18','TECH03','/checklists/vm003','calibrate flow sensors','completed',45,'calibration kit','150','yes','SUPV02','2023-03-19','wear PPE','/docs/vm003','no','');

-- Chemical storage condition monitoring
CREATE TABLE chemical_storage_condition (
  record_id TEXT NOT NULL,
  storage_unit_id TEXT,
  location TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  gas_detected TEXT,
  detection_level_ppm REAL,
  timestamp TEXT,
  recorded_by TEXT,
  sensor_status TEXT,
  alert_level TEXT,
  corrective_action TEXT,
  escalation_contact TEXT,
  notes TEXT,
  compliance_status TEXT,
  verification_signature TEXT,
  batch_id TEXT,
  expiration_check_date TEXT,
  next_inspection_due TEXT,
  PRIMARY KEY (record_id)
);

INSERT INTO chemical_storage_condition VALUES ('CS001','SU01','Cabinet A','22.5','40','NO','0','2023-01-05 08:00:00','SENSOR01','ok','none','none','', 'temperature within range','compliant','sig001','BATCH01','2023-12-31','2024-01-15');
INSERT INTO chemical_storage_condition VALUES ('CS002','SU02','Cabinet B','28.0','55','NO','0','2023-02-10 09:30:00','SENSOR02','ok','medium','adjust thermostat','ENG01','humidity slightly high','non‑compliant','sig002','BATCH02','2023-10-01','2023-11-01');
INSERT INTO chemical_storage_condition VALUES ('CS003','SU03','Freezer C','-18.0','30','YES','5','2023-03-15 02:15:00','SENSOR03','ok','high','service freezer','ENG02','gas leak detected','non‑compliant','sig003','BATCH03','2023-08-20','2023-09-01');

-- Computational resource allocation policy
CREATE TABLE computational_resource_allocation_policy (
  policy_id TEXT NOT NULL,
  resource_type TEXT,
  max_allocation_per_user TEXT,
  priority_tiers TEXT,
  fair_share_algorithm TEXT,
  quota_reset_interval TEXT,
  enforcement_mechanism TEXT,
  notification_method TEXT,
  escalation_procedure TEXT,
  audit_log_path TEXT,
  version_number INTEGER,
  effective_date TEXT,
  expiration_date TEXT,
  approved_by TEXT,
  approval_date TEXT,
  compliance_requirements TEXT,
  review_cycle_months INTEGER,
  last_review_date TEXT,
  next_review_date TEXT,
  remarks TEXT,
  PRIMARY KEY (policy_id)
);

INSERT INTO computational_resource_allocation_policy VALUES ('POL001','CPU','8 cores','gold,silver,bronze','dominant_share','monthly','cgroup limits','email','admin escalation','/audit/pol001',1,'2023-01-01','2025-12-31','DIR001','2023-01-15','ISO27001','12','2023-01-15','2024-01-15','initial release');
INSERT INTO computational_resource_allocation_policy VALUES ('POL002','GPU','2 GPUs','gold,silver','fair_share','quarterly','quota enforcement','slack','lead escalation','/audit/pol002',1,'2023-03-01','2026-02-28','DIR002','2023-03-05','ISO27001','12','2023-03-05','2024-03-05','added GPU support');
INSERT INTO computational_resource_allocation_policy VALUES ('POL003','RAM','64GB','gold,silver,bronze','dominant_share','monthly','cgroup limits','email','admin escalation','/audit/pol003',2,'2023-06-01','2025-05-31','DIR003','2023-06-10','ISO27001','6','2023-06-10','2023-12-10','updated for new servers');