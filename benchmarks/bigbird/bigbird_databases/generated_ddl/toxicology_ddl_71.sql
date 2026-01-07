-- Lab air quality inspection records
CREATE TABLE lab_air_quality_inspection (
  inspection_id TEXT PRIMARY KEY,
  facility_id TEXT,
  inspector_name TEXT,
  inspection_date TEXT,
  hvac_status TEXT,
  filter_change_due TEXT,
  particulate_level_ppm REAL,
  co2_level_ppm REAL,
  humidity_percent REAL,
  temperature_celsius REAL,
  compliance_status TEXT,
  notes TEXT,
  reviewer_id TEXT,
  review_date TEXT,
  corrective_action TEXT,
  action_due_date TEXT,
  equipment_tag TEXT,
  zone_identifier TEXT,
  airflow_rate_cmh REAL,
  odometer_reading INTEGER,
  audit_trail_id TEXT,
  external_agency TEXT
);

INSERT INTO lab_air_quality_inspection VALUES ('INSP001','FAC01','Alice Smith','2026-01-02','OK','2026-06-01',12.5,420.0,45.0,22.1,'PASS','All parameters within limits','REV01','2026-01-03','None','', 'HVAC001','Z01',350.0,12000,'AT001','EPA');
INSERT INTO lab_air_quality_inspection VALUES ('INSP002','FAC02','Bob Jones','2026-01-05','MAINTENANCE','2026-07-15',25.3,800.0,55.2,24.3,'FAIL','High CO2 level','REV02','2026-01-06','Increase ventilation','2026-01-20','HVAC002','Z02',300.0,15000,'AT002','ISO');
INSERT INTO lab_air_quality_inspection VALUES ('INSP003','FAC03','Carol Lee','2026-01-08','OK','2026-08-10',8.9,380.0,40.5,21.0,'PASS','Filter replacement scheduled','REV03','2026-01-09','None','', 'HVAC003','Z03',400.0,13000,'AT003','FDA');

-- Equipment failure prediction data
CREATE TABLE equipment_failure_prediction (
  prediction_id TEXT PRIMARY KEY,
  equipment_id TEXT,
  model_version TEXT,
  prediction_date TEXT,
  predicted_failure_date TEXT,
  failure_probability REAL,
  mean_time_between_failures REAL,
  recent_error_count INTEGER,
  temperature_celsius REAL,
  vibration_mm_s2 REAL,
  pressure_bar REAL,
  humidity_percent REAL,
  last_maintenance_date TEXT,
  maintenance_interval_days INTEGER,
  operating_hours INTEGER,
  load_percentage REAL,
  sensor_status TEXT,
  anomaly_score REAL,
  technician_assigned TEXT,
  priority_level TEXT,
  comment TEXT,
  data_source TEXT,
  validated_flag TEXT
);

INSERT INTO equipment_failure_prediction VALUES ('PRED001','EQ001','v1.2','2026-01-02','2026-03-15',0.78,500.0,3,65.0,0.12,5.0,40.0,'2025-12-15',180,2000,85.0,'OK',0.65,'TECH01','HIGH','Check lubrication','SCADA','YES');
INSERT INTO equipment_failure_prediction VALUES ('PRED002','EQ002','v1.2','2026-01-02','2026-04-01',0.45,800.0,1,55.0,0.08,4.5,35.0,'2025-11-20',210,1500,70.0,'OK',0.30,'TECH02','MEDIUM','Monitor temperature trends','SCADA','NO');
INSERT INTO equipment_failure_prediction VALUES ('PRED003','EQ003','v1.3','2026-01-02','2026-02-20',0.92,300.0,5,70.0,0.20,6.0,45.0,'2025-12-01',150,2500,95.0','ALERT',0.88,'TECH03','CRITICAL','Immediate shutdown required','SCADA','YES');

-- Chemical process simulation metadata
CREATE TABLE chemical_process_simulation_meta (
  simulation_id TEXT PRIMARY KEY,
  process_name TEXT,
  version TEXT,
  created_by TEXT,
  creation_date TEXT,
  software_package TEXT,
  solver_type TEXT,
  mesh_size INTEGER,
  time_step_seconds REAL,
  total_simulation_time_seconds REAL,
  convergence_tolerance REAL,
  temperature_profile TEXT,
  pressure_profile TEXT,
  catalyst_used TEXT,
  feed_composition TEXT,
  reactor_type TEXT,
  output_file_path TEXT,
  cpu_cores INTEGER,
  memory_gb REAL,
  gpu_used TEXT,
  validation_status TEXT,
  notes TEXT,
  data_repository TEXT,
  publication_reference TEXT
);

INSERT INTO chemical_process_simulation_meta VALUES ('SIM001','Ammonia_Synthesis','v3.0','DrA','2026-01-01','CHEMSim','Transient','500000','0.001','3600','1e-6','Linear','Constant','Fe_Ni','N2_H2_1_3','Fixed_Bed','/data/sim1','16','64.0','No','VALID','Baseline case','RepoA','DOI12345');
INSERT INTO chemical_process_simulation_meta VALUES ('SIM002','Methanol_Production','v2.5','DrB','2026-01-02','CHEMSim','Steady','250000','0.005','7200','5e-7','Ramp','Ramp','Cu_Zn','CO2_H2_1_2','Fluidized_Bed','/data/sim2','32','128.0','Yes','VALID','Scale‑up study','RepoB','DOI67890');
INSERT INTO chemical_process_simulation_meta VALUES ('SIM003','Ethylene_Oxidation','v4.1','DrC','2026-01-03','CHEMSim','Transient','750000','0.0005','1800','1e-8','Step','Step','V2O5','C2H4_O2_1_1.5','Catalytic_Converter','/data/sim3','24','96.0','No','PENDING','Sensitivity analysis','RepoC','DOI11223');

-- Researcher collaboration scorecard
CREATE TABLE researcher_collaboration_scorecard (
  scorecard_id TEXT PRIMARY KEY,
  researcher_id TEXT,
  period_start TEXT,
  period_end TEXT,
  total_coauthored_pubs INTEGER,
  interdisciplinary_pubs INTEGER,
  external_collab_projects INTEGER,
  grant_shared INTEGER,
  conference_presentations INTEGER,
  mentorship_sessions INTEGER,
  data_sharing_instances INTEGER,
  software_contributions INTEGER,
  citation_impact REAL,
  h_index REAL,
  i10_index INTEGER,
  avg_response_time_days REAL,
  collaboration_satisfaction_score REAL,
  network_centrality REAL,
  outreach_activities INTEGER,
  policy_advisory_roles INTEGER,
  patents_filed INTEGER,
  training_sessions_led INTEGER,
  notes TEXT,
  reviewer_id TEXT,
  review_date TEXT
);

INSERT INTO researcher_collaboration_scorecard VALUES ('SC001','R001','2025-01-01','2025-12-31',12,5,3,2,8,15,20,4,3.5,12.0,8,2.1,85.0,0.42,6,2,1,3,'Strong interdisciplinary work','REV01','2026-01-04');
INSERT INTO researcher_collaboration_scorecard VALUES ('SC002','R002','2025-01-01','2025-12-31',7,2,1,1,5,8,12,2,2.1,9.0,5,3.4,70.0,0.30,2,1,0,1,'Growing network','REV02','2026-01-05');
INSERT INTO researcher_collaboration_scorecard VALUES ('SC003','R003','2025-01-01','2025-12-31',20,10,6,4,12,20,30,6,5.0,18.0,12,1.8,92.0,0.55,10,3,3,5,'Leader in collaborations','REV03','2026-01-06');

-- Sample integrity audit
CREATE TABLE sample_integrity_audit (
  audit_id TEXT PRIMARY KEY,
  sample_id TEXT,
  audit_date TEXT,
  auditor_name TEXT,
  storage_location TEXT,
  temperature_celsius REAL,
  humidity_percent REAL,
  freezer_status TEXT,
  seal_integrity TEXT,
  label_legibility TEXT,
  barcode_scan_result TEXT,
  deviation_noted TEXT,
  corrective_action TEXT,
  action_due_date TEXT,
  comments TEXT,
  next_audit_due TEXT,
  audit_score INTEGER,
  risk_level TEXT,
  documentation_reference TEXT,
  external_audit_flag TEXT,
  chain_of_custody_verified TEXT,
  timestamp TEXT,
  data_source TEXT
);

INSERT INTO sample_integrity_audit VALUES ('AUD001','SMP001','2026-01-02','Anna Kim','FreezerA','-80.0','30.0','OK','INTACT','CLEAR','PASS','None','None','', 'Routine check','2027-01-01',95,'LOW','DOC001','NO','YES','2026-01-02T10:00','LIMS');
INSERT INTO sample_integrity_audit VALUES ('AUD002','SMP002','2026-01-03','Brian Lee','FreezerB','-70.5','35.0','FAIL','BROKEN','FADED','FAIL','Seal broken','Replace seal','2026-01-10','Urgent repair required','2026-01-03','70','MEDIUM','DOC002','YES','NO','2026-01-03T11:30','LIMS');
INSERT INTO sample_integrity_audit VALUES ('AUD003','SMP003','2026-01-04','Clara Zhou','ColdRoomC','4.0','45.0','OK','INTACT','CLEAR','PASS','Temperature drift','Calibrate sensor','2026-01-15','Temperature setpoint adjusted','2026-01-04',80,'MEDIUM','DOC003','NO','YES','2026-01-04T09:45','LIMS');

-- Computational job SLA tracking
CREATE TABLE computational_job_sla (
  sla_id TEXT PRIMARY KEY,
  job_id TEXT,
  submitter TEXT,
  submission_time TEXT,
  required_completion_time_seconds INTEGER,
  actual_start_time TEXT,
  actual_end_time TEXT,
  sla_met_flag TEXT,
  deadline_extension_requested TEXT,
  extension_approved TEXT,
  penalty_assessed TEXT,
  compute_cluster TEXT,
  allocated_cpu_cores INTEGER,
  allocated_gpu_count INTEGER,
  memory_gb REAL,
  priority_level TEXT,
  job_type TEXT,
  notes TEXT,
  reviewer TEXT,
  review_date TEXT,
  escalation_needed TEXT,
  final_status TEXT,
  sla_category TEXT,
  audit_log_id TEXT
);

INSERT INTO computational_job_sla VALUES ('SLA001','JOB001','alice','2026-01-02T08:00',7200,'2026-01-02T08:05','2026-01-02T09:50','YES','NO','NO','NO','ClusterA',32,2,128.0,'HIGH','Simulation','Completed early','rev01','2026-01-02','NO','COMPLETED','CRITICAL','ALOG001');
INSERT INTO computational_job_sla VALUES ('SLA002','JOB002','bob','2026-01-02T09:00',10800,'2026-01-02T09:10','2026-01-02T12:30','NO','YES','YES','YES','ClusterB',64,4,256.0,'MEDIUM','Analysis','Extended due to data size','rev02','2026-01-03','YES','COMPLETED','STANDARD','ALOG002');
INSERT INTO computational_job_sla VALUES ('SLA003','JOB003','carol','2026-01-02T10:00',3600,'2026-01-02T10:05','2026-01-02T10:45','YES','NO','NO','NO','ClusterC',16,1,64.0,'LOW','Rendering','Finished on time','rev03','2026-01-02','NO','COMPLETED','FAST','ALOG003');

-- Biohazard decontamination schedule
CREATE TABLE biohazard_decontamination_schedule (
  schedule_id TEXT PRIMARY KEY,
  area_id TEXT,
  decontamination_type TEXT,
  frequency_days INTEGER,
  last_decontamination_date TEXT,
  next_due_date TEXT,
  responsible_person TEXT,
  verification_status TEXT,
  chemical_used TEXT,
  contact_time_minutes INTEGER,
  temperature_celsius REAL,
  humidity_percent REAL,
  equipment_needed TEXT,
  safety_precautions TEXT,
  waste_disposal_method TEXT,
  notes TEXT,
  audit_reference TEXT,
  approved_by TEXT,
  approval_date TEXT,
  emergency_contact TEXT,
  escalation_procedure TEXT,
  compliance_flag TEXT,
  record_timestamp TEXT,
  data_source TEXT
);

INSERT INTO biohazard_decontamination_schedule VALUES ('SCH001','AREA01','AUTOMATIC','30','2025-12-01','2025-12-31','John Doe','PASSED','Virkill','15',22.0,40.0,'Fogger','PPE','Incineration','Routine schedule','AUD001','Jane Smith','2025-12-02','5551234','Standard','YES','2025-12-01','LIMS');
INSERT INTO biohazard_decontamination_schedule VALUES ('SCH002','AREA02','MANUAL','90','2025-09-15','2025-12-14','Emily Roe','FAILED','Bleach','30',20.0,45.0,'Sprayer','Gloves','Neutralization','Follow‑up required','AUD002','Mike Lee','2025-09-16','5555678','Escalate to Safety Office','NO','2025-09-15','LIMS');
INSERT INTO biohazard_decontamination_schedule VALUES ('SCH003','AREA03','AUTOMATIC','60','2025-11-01','2025-12-31','Alice Kim','PASSED','PeraceticAcid','10',23.5,38.0,'UV','Full PPE','Chemical neutralizer','All clear','AUD003','Sara Tan','2025-11-02','5559876','No escalation','YES','2025-11-01','LIMS');

-- Nanomaterial production quality record
CREATE TABLE nanomaterial_production_quality (
  quality_id TEXT PRIMARY KEY,
  batch_id TEXT,
  production_date TEXT,
  material_type TEXT,
  target_size_nm REAL,
  measured_size_nm REAL,
  size_distribution_sd REAL,
  purity_percent REAL,
  surface_area_m2_g REAL,
  zeta_potential_mv REAL,
  morphology TEXT,
  synthesis_method TEXT,
  reactor_id TEXT,
  operator_id TEXT,
  qc_passed TEXT,
  qc_comments TEXT,
  certification_body TEXT,
  certification_status TEXT,
  stability_test_days INTEGER,
  stability_result TEXT,
  storage_temperature_celsius REAL,
  storage_humidity_percent REAL,
  audit_log_id TEXT,
  notes TEXT
);

INSERT INTO nanomaterial_production_quality VALUES ('QRY001','NB001','2026-01-01','GoldNanoparticle',50.0,48.9,4.2,98.5,120.0,-25.0,'Spherical','ChemicalReduction','R001','OP001','YES','Within spec','ISO9001','CERTIFIED',180,'STABLE',4.0,45.0,'ALOG001','Initial batch');
INSERT INTO nanomaterial_production_quality VALUES ('QRY002','NB002','2026-01-05','SilicaNanoparticle',150.0,152.3,5.5,95.0,85.0,-10.0,'Rod','SolGel','R002','OP002','NO','Size exceeds target','ISO9001','REJECTED',90,'UNSTABLE',22.0,30.0,'ALOG002','Re‑run required');
INSERT INTO nanomaterial_production_quality VALUES ('QRY003','NB003','2026-01-10','TitaniumDioxide',30.0,29.8,2.1,99.2,200.0,-5.0,'Anatase','Hydrothermal','R003','OP003','YES','Excellent uniformity','ISO9001','CERTIFIED',365,'STABLE',5.0,40.0,'ALOG003','High quality batch');

-- Facility energy efficiency metric
CREATE TABLE facility_energy_efficiency_metric (
  metric_id TEXT PRIMARY KEY,
  facility_id TEXT,
  reporting_period_start TEXT,
  reporting_period_end TEXT,
  total_energy_consumption_kwh REAL,
  renewable_energy_kwh REAL,
  hvac_energy_kwh REAL,
  lighting_energy_kwh REAL,
  equipment_energy_kwh REAL,
  energy_intensity_kwh_per_m2 REAL,
  carbon_emission_kg REAL,
  peak_demand_kw REAL,
  demand_response_participation TEXT,
  energy_savings_initiative TEXT,
  savings_amount_kwh REAL,
  savings_cost_usd REAL,
  verification_status TEXT,
  auditor_name TEXT,
  audit_date TEXT,
  notes TEXT,
  data_source TEXT,
  compliance_level TEXT,
  benchmark_reference TEXT,
  metric_timestamp TEXT
);

INSERT INTO facility_energy_efficiency_metric VALUES ('MET001','FAC01','2025-01-01','2025-12-31',1250000.0,250000.0,300000.0,200000.0,250000.0,120.5,350000.0,800.0,'YES','LED_Upgrade',50000.0,45000.0,'PASSED','John Auditor','2026-01-02','Annual report','SCADA','HIGH','EPA2025','2026-01-02');
INSERT INTO facility_energy_efficiency_metric VALUES ('MET002','FAC02','2025-01-01','2025-12-31',950000.0,150000.0,250000.0,180000.0,220000.0,115.0,270000.0,750.0,'NO','HVAC_Optimization',30000.0,28000.0,'PENDING','Jane Auditor','2026-01-03','Pending verification','SCADA','MEDIUM','EPA2025','2026-01-03');
INSERT INTO facility_energy_efficiency_metric VALUES ('MET003','FAC03','2025-01-01','2025-12-31',1100000.0,200000.0,280000.0,190000.0,240000.0,118.0,320000.0,770.0,'YES','Solar_Panel_Installation',60000.0,56000.0,'PASSED','Mike Auditor','2026-01-04','Solar contribution accounted','SCADA','HIGH','EPA2025','2026-01-04');

-- Clinical trial data anonymization log
CREATE TABLE clinical_trial_data_anonymization (
  anon_id TEXT PRIMARY KEY,
  trial_id TEXT,
  dataset_name TEXT,
  anonymization_date TEXT,
  method_used TEXT,
  pii_fields_removed INTEGER,
  date_shift_days INTEGER,
  randomization_seed INTEGER,
  compliance_standard TEXT,
  reviewer_id TEXT,
  review_date TEXT,
  approval_status TEXT,
  notes TEXT,
  data_owner TEXT,
  storage_location TEXT,
   encryption_used TEXT,
   key_management_procedure TEXT,
   audit_trail_id TEXT,
   record_count INTEGER,
   error_rate_percent REAL,
   retention_period_years INTEGER,
   external_audit_flag TEXT,
   final_checksum TEXT,
   source_system TEXT
);

INSERT INTO clinical_trial_data_anonymization VALUES ('ANON001','CT001','DEMOGRAPHICS','2026-01-01','KANON','5','30','12345','HIPAA','REV01','2026-01-02','APPROVED','All identifiers masked','DrA','SecureVault','AES256','KMS_v1','AT001','1500','0.0','5','NO','ABCDEF123456','LIMS');
INSERT INTO clinical_trial_data_anonymization VALUES ('ANON002','CT002','LAB_RESULTS','2026-01-03','SAFE_HARNESS','3','0','67890','GDPR','REV02','2026-01-04','APPROVED','No date shift needed','DrB','SecureVault','AES256','KMS_v2','AT002','2000','0.1','7','YES','123456ABCDEF','LIMS');
INSERT INTO clinical_trial_data_anonymization VALUES ('ANON003','CT003','IMAGING','2026-01-05','CUSTOM_MASK','7','15','54321','HIPAA','REV03','2026-01-06','PENDING','Masking in progress','DrC','SecureVault','AES256','KMS_v3','AT003','1200','0.2','4','NO','FEDCBA654321','LIMS');