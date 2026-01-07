-- Lab ventilation event log
CREATE TABLE lab_ventilation_event_log (
  event_id TEXT PRIMARY KEY,
  timestamp TEXT,
  zone TEXT,
  airflow_rate REAL,
  temperature_c REAL,
  humidity_percent REAL,
  filter_status TEXT,
  hvac_mode TEXT,
  alarm_triggered TEXT,
  maintenance_required TEXT,
  operator_id TEXT,
  notes TEXT,
  co2_ppm REAL,
  voc_ppb REAL,
  pressure_pa REAL,
  fan_speed_rpm INTEGER,
  power_status TEXT,
  external_temp_c REAL,
  external_humidity_percent REAL,
  event_category TEXT,
  duration_seconds INTEGER,
  sensor_serial TEXT,
  log_source TEXT
);
INSERT INTO lab_ventilation_event_log VALUES ('vent001','2025-07-01T08:15:00Z','ZoneA',350.5,22.1,45.0,'OK','AUTO','NO','NO','res123','Routine check',415.0,12.5,101325.0,1500,'ON',18.5,55.0,'NORMAL',300,'SNV001','SCADA');
INSERT INTO lab_ventilation_event_log VALUES ('vent002','2025-07-02T14:30:00Z','ZoneB',420.0,23.8,40.2,'REPLACE','MANUAL','YES','YES','res456','Filter clogged',620.0,20.1,101200.0,1600,'OFF',19.0,50.0,'ALARM',120,'SNV002','SCADA');
INSERT INTO lab_ventilation_event_log VALUES ('vent003','2025-07-03T22:45:00Z','ZoneC',300.0,21.0,48.5,'OK','AUTO','NO','NO','res789','Night mode',380.0,10.0,101400.0,1400,'ON',17.0,60.0,'NORMAL',600,'SNV003','SCADA');

-- Chemical risk assessment
CREATE TABLE chemical_risk_assessment (
  assessment_id TEXT PRIMARY KEY,
  chemical_id TEXT,
  assessment_date TEXT,
  assessor_id TEXT,
  hazard_class TEXT,
  flash_point_c REAL,
  ld50_mg_per_kg REAL,
  occupational_exposure_limit_ppm REAL,
  storage_requirement TEXT,
  containment_type TEXT,
  emergency_procedures TEXT,
  disposal_method TEXT,
  risk_score INTEGER,
  control_measures TEXT,
  training_required TEXT,
  review_interval_days INTEGER,
  last_review_date TEXT,
  comments TEXT,
  regulatory_reference TEXT,
  parent_company TEXT,
  supplier_id TEXT,
  batch_number TEXT,
  quantity_on_hand REAL,
  unit_of_measure TEXT,
  location_code TEXT,
  status TEXT
);
INSERT INTO chemical_risk_assessment VALUES ('ra001','chemA','2025-06-10','res001','Flammable',23.5,1500.0,25.0,'CoolDry','ClosedCabinet','Evacuate','HazardousWaste',85,'Ventilation','YES',180,'2025-12-10','Initial assessment','OSHA','ChemCorp','sup001','BCH123',500.0,'L','LOC01','ACTIVE');
INSERT INTO chemical_risk_assessment VALUES ('ra002','chemB','2025-06-12','res002','Toxic',NULL,0.5,5.0,'Refrigerated','SealedContainer','SpillKit','Incineration',92,'PPE','YES',365,'2026-06-12','Updated toxicity data','EPA','ToxInc','sup002','BCH124',200.0,'kg','LOC02','ACTIVE');
INSERT INTO chemical_risk_assessment VALUES ('ra003','chemC','2025-06-15','res003','Corrosive',NULL,750.0,15.0,'Ventilated','OpenShelf','Neutralize','Neutralization',70,'SecondaryContainment','NO',90,'2025-09-15','Routine review','GHS','CorroChem','sup003','BCH125',1000.0,'g','LOC03','PENDING');

-- Instrument software version tracking
CREATE TABLE instrument_software_version (
  record_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  software_name TEXT,
  version_major INTEGER,
  version_minor INTEGER,
  version_patch INTEGER,
  build_number TEXT,
  release_date TEXT,
  installed_by TEXT,
  verification_status TEXT,
  checksum_sha256 TEXT,
  license_key TEXT,
  support_contract_id TEXT,
  deployment_environment TEXT,
  configuration_profile TEXT,
  rollback_allowed TEXT,
  last_update_check TEXT,
  update_source TEXT,
  changelog_summary TEXT,
  compliance_status TEXT,
  notes TEXT,
  retention_policy_days INTEGER,
  archived TEXT
);
INSERT INTO instrument_software_version VALUES ('sv001','instA','AcqSoft',3,2,5,'b20250601','2025-05-20','res010','PASS','abc123def456ghi789jkl012mno345pqr678stu901vwx234yz567','LK-001','contractA','Production','Default','YES','2025-06-30','VendorPortal','BugFixes','COMPLIANT','Initial install',365,'NO');
INSERT INTO instrument_software_version VALUES ('sv002','instB','ControlSuite',1,8,0,'rc20250715','2025-07-01','res011','PASS','def456ghi789jkl012mno345pqr678stu901vwx234yz567abc123','LK-002','contractB','Testing','Custom','NO','2025-07-20','InternalRepo','FeatureAdd','NONCOMPLIANT','Beta version',180,'YES');
INSERT INTO instrument_software_version VALUES ('sv003','instC','DataLogger',2,0,1,'alpha20250810','2025-08-05','res012','FAIL','ghi789jkl012mno345pqr678stu901vwx234yz567abc123def456','LK-003','contractC','Development','Experimental','YES','2025-09-01','GitHub','AlphaRelease','PENDING','Pre‑release build',90,'NO');

-- Facility power outage log
CREATE TABLE facility_power_outage_log (
  outage_id TEXT PRIMARY KEY,
  start_timestamp TEXT,
  end_timestamp TEXT,
  duration_minutes INTEGER,
  affected_zones TEXT,
  cause TEXT,
  backup_power_used TEXT,
  generator_runtime_minutes INTEGER,
  manual_intervention TEXT,
  incident_report_id TEXT,
  notified_staff TEXT,
  severity_level TEXT,
  root_cause_analysis TEXT,
  remediation_actions TEXT,
  follow_up_date TEXT,
  escalation_contact TEXT,
  sensor_id TEXT,
  voltage_drop_percent REAL,
  frequency_hz REAL,
  notes TEXT,
  status TEXT,
  logged_by TEXT,
  log_timestamp TEXT
);
INSERT INTO facility_power_outage_log VALUES ('out001','2025-07-10T02:15:00Z','2025-07-10T02:45:00Z',30,'ZoneA,ZoneB','GridFailure','YES',30,'YES','ir001','res020','HIGH','Transformer overload','Replace transformer','2025-07-20','eng001','sensA',20.5,49.8,'No injuries','RESOLVED','res020','2025-07-10T03:00:00Z');
INSERT INTO facility_power_outage_log VALUES ('out002','2025-07-12T14:00:00Z','2025-07-12T14:10:00Z',10,'ZoneC','UPSFailure','NO',0,'NO','ir002','res021','MEDIUM','Battery degradation','Service UPS','2025-07-22','eng002','sensB',5.0,50.0,'Temporary impact','RESOLVED','res021','2025-07-12T14:20:00Z');
INSERT INTO facility_power_outage_log VALUES ('out003','2025-07-15T22:30:00Z','2025-07-15T23:15:00Z',45,'AllZones','Storm','YES',45,'YES','ir003','res022','CRITICAL','External line damage','Repair external line','2025-07-30','eng003','sensC',35.0,48.5','Extended outage','OPEN','res022','2025-07-16T00:00:00Z');

-- Lab cleanroom access log
CREATE TABLE lab_cleanroom_access_log (
  access_id TEXT PRIMARY KEY,
  person_id TEXT,
  cleanroom_id TEXT,
  entry_timestamp TEXT,
  exit_timestamp TEXT,
  access_type TEXT,
  gown_type TEXT,
  glove_type TEXT,
  mask_type TEXT,
  shoe_cover TEXT,
  badge_number TEXT,
  authorization_level TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  particle_count_cf INTEGER,
  door_sensor_status TEXT,
  alarm_triggered TEXT,
  supervisor_on_duty TEXT,
  notes TEXT,
  compliance_status TEXT,
  violation_code TEXT,
  corrective_action TEXT,
  review_timestamp TEXT,
  reviewed_by TEXT,
  logged_by TEXT
);
INSERT INTO lab_cleanroom_access_log VALUES ('acc001','pers001','CR01','2025-07-01T08:00:00Z','2025-07-01T12:00:00Z','ENTRY','GownA','GloveB','MaskC','Yes','badge1001','Level2',22.5,40.0,150,'CLOSED','NO','sup001','Routine work','COMPLIANT','NONE','NONE','2025-07-01T13:00:00Z','sup001','sys01');
INSERT INTO lab_cleanroom_access_log VALUES ('acc002','pers002','CR02','2025-07-02T09:30:00Z','2025-07-02T11:45:00Z','ENTRY','GownB','GloveA','MaskB','No','badge1002','Level3',21.0,38.5,200,'OPEN','YES','sup002','Mask breach','NONCOMPLIANT','V001','Replace mask','2025-07-02T12:30:00Z','sup002','sys02');
INSERT INTO lab_cleanroom_access_log VALUES ('acc003','pers003','CR01','2025-07-03T13:15:00Z','2025-07-03T15:00:00Z','ENTRY','GownC','GloveC','MaskA','Yes','badge1003','Level1',23.0,42.0,120,'CLOSED','NO','sup003','Sample prep','COMPLIANT','NONE','NONE','2025-07-03T15:30:00Z','sup003','sys03');

-- Sample sequencing metadata
CREATE TABLE sample_sequencing_metadata (
  seq_id TEXT PRIMARY KEY,
  sample_id TEXT,
  sequencing_platform TEXT,
  run_id TEXT,
  flowcell_id TEXT,
  library_prep_kit TEXT,
  insert_size_bp INTEGER,
  read_length_bp INTEGER,
  coverage_depth REAL,
  gc_content_percent REAL,
  barcode_sequence TEXT,
  lane_number INTEGER,
  basecalling_software TEXT,
  basecalling_version TEXT,
  fastq_file_path TEXT,
  md5_checksum TEXT,
  operator_id TEXT,
  sequencing_date TEXT,
  quality_score_mean REAL,
  quality_score_std REAL,
  adapter_trimmed TEXT,
  duplicate_rate_percent REAL,
  alignment_reference TEXT,
  alignment_tool TEXT,
  alignment_version TEXT,
  notes TEXT,
  status TEXT
);
INSERT INTO sample_sequencing_metadata VALUES ('seq001','smp001','IlluminaNova','runA','FC001','KitX',350,150,30.5,48.2,'ATCGTAGC',1,'BasecallPro','3.2','/data/fastq/seq001.fastq','d41d8cd98f00b204e9800998ecf8427e','res030','2025-06-20','35.0','2.1','YES',12.5,'GRCh38','BWA','0.7.17','Initial run','COMPLETED');
INSERT INTO sample_sequencing_metadata VALUES ('seq002','smp002','PacBioSequel','runB','FC002','KitY',5000,10000,15.0,52.0,'GGCATGCA',2,'SMRTLink','6.0','/data/fastq/seq002.fastq','0cc175b9c0f1b6a831c399e269772661','res031','2025-07-05','30.0','1.8','NO',5.0,'hg19','Minimap2','2.24','Long read run','COMPLETED');
INSERT INTO sample_sequencing_metadata VALUES ('seq003','smp003','OxfordNanopore','runC','FC003','KitZ',20000,15000,8.0,49.5,'TTAGGCGA',3,'Guppy','5.0.11','/data/fastq/seq003.fastq','6f1ed002ab5595859014ebf0951522d9','res032','2025-07-12','28.0','2.5','YES',20.0','GRCh37','GraphMap','0.5.2','Nanopore run','IN_PROGRESS');

-- Researcher mentorship record
CREATE TABLE researcher_mentorship_record (
  mentorship_id TEXT PRIMARY KEY,
  mentor_id TEXT,
  mentee_id TEXT,
  start_date TEXT,
  end_date TEXT,
  mentorship_type TEXT,
  research_area TEXT,
  meeting_frequency TEXT,
  last_meeting_date TEXT,
  goals TEXT,
  progress_status TEXT,
  publications_coauthored INTEGER,
  grant_applications INTEGER,
  feedback_score INTEGER,
  challenges TEXT,
  resources_provided TEXT,
  next_step TEXT,
  review_date TEXT,
  reviewer_id TEXT,
  notes TEXT,
  active TEXT,
  created_by TEXT,
  created_timestamp TEXT,
  updated_by TEXT,
  updated_timestamp TEXT
);
INSERT INTO researcher_mentorship_record VALUES ('ment001','res100','res200','2024-01-15','2025-12-31','Formal','SyntheticChemistry','Monthly','2025-06-20','Publish two papers','OnTrack',3,1,85,'Time management','Lab space, reagents','Write manuscript','2025-07-01','res300','Good progress','YES','res100','2024-01-15T09:00:00Z','res300','2025-06-21T10:00:00Z');
INSERT INTO researcher_mentorship_record VALUES ('ment002','res101','res201','2023-09-01','2024-08-31','Informal','Bioinformatics','Biweekly','2024-05-15','Complete pipeline','Completed',1,0,90,'Data access','Software licenses','Finalize analysis','2024-06-01','res301','Successful','NO','res101','2023-09-01T10:30:00Z','res301','2024-05-16T11:00:00Z');
INSERT INTO researcher_mentorship_record VALUES ('ment003','res102','res202','2025-02-01','2025-11-30','Formal','NanomaterialSafety','Quarterly','2025-07-10','Develop safety protocol','Delayed',0,2,70,'Regulatory compliance','Safety training','Submit protocol','2025-08-01','res302','Needs improvement','YES','res102','2025-02-01T08:45:00Z','res302','2025-07-15T09:20:00Z');

-- Project timeline milestone
CREATE TABLE project_timeline_milestone (
  milestone_id TEXT PRIMARY KEY,
  project_id TEXT,
  milestone_name TEXT,
  planned_start_date TEXT,
  planned_end_date TEXT,
  actual_start_date TEXT,
  actual_end_date TEXT,
  responsible_team TEXT,
  status TEXT,
  dependencies TEXT,
  risk_level TEXT,
  budget_allocation REAL,
  resources_assigned TEXT,
  deliverable TEXT,
  approval_required TEXT,
  approver_id TEXT,
  notes TEXT,
  change_requested TEXT,
  change_approval_date TEXT,
  change_approver_id TEXT,
  created_by TEXT,
  created_timestamp TEXT,
  updated_by TEXT,
  updated_timestamp TEXT
);
INSERT INTO project_timeline_milestone VALUES ('ms001','projA','Synthesis Phase','2025-01-01','2025-04-30','2025-01-05','2025-04-28','ChemistryTeam','COMPLETED','None','Low',250000.0,'Reagents, equipment','Batch A','YES','res400','Phase completed on time','NO',NULL,NULL,'res400','2024-12-15T09:00:00Z','res401','2025-05-01T10:15:00Z');
INSERT INTO project_timeline_milestone VALUES ('ms002','projA','Characterization','2025-05-01','2025-06-30','2025-05-03','2025-07-05','AnalyticsTeam','DELAYED','Synthesis Phase','Medium',120000.0,'Spectrometers, staff','Report B','YES','res401','Delayed due to instrument downtime','YES','2025-07-10','res402','res401','2025-04-20T08:45:00Z','res402','2025-07-11T11:30:00Z');
INSERT INTO project_timeline_milestone VALUES ('ms003','projB','Regulatory Submission','2025-08-01','2025-09-30','NULL','NULL','RegulatoryTeam','PLANNED','Characterization','High',300000.0','Consultants','Submission Package','YES','res403','Pending data from Characterization','NO',NULL,NULL,'res403','2025-06-01T12:00:00Z','res403','2025-06-01T12:00:00Z');

-- Environmental waste air emission record
CREATE TABLE environmental_waste_air_emission (
  emission_id TEXT PRIMARY KEY,
  facility_id TEXT,
  emission_date TEXT,
  pollutant_type TEXT,
  concentration_ppm REAL,
  volume_m3 REAL,
  capture_method TEXT,
  filter_efficiency_percent REAL,
  operational_status TEXT,
  maintenance_required TEXT,
  inspector_id TEXT,
  inspection_date TEXT,
  compliance_status TEXT,
  regulation_reference TEXT,
  notes TEXT,
  reported_by TEXT,
  report_timestamp TEXT,
  corrective_action TEXT,
  action_deadline TEXT,
  action_completed TEXT,
  follow_up_inspector TEXT,
  follow_up_date TEXT,
  archived TEXT
);
INSERT INTO environmental_waste_air_emission VALUES ('em001','fac01','2025-07-01','VOC',15.2,1200.0,'ActivatedCarbon','95.0','NORMAL','NO','res500','2025-07-02','COMPLIANT','EPA-40CFR','Routine emission','res500','2025-07-02T10:00:00Z','NONE',NULL,'NO','res501','2025-07-15','NO');
INSERT INTO environmental_waste_air_emission VALUES ('em002','fac01','2025-07-15','NOx',45.5,1500.0,'Electrostatic','88.0','ELEVATED','YES','res501','2025-07-16','NONCOMPLIANT','EPA-40CFR','Exceeds limit','res501','2025-07-16T11:30:00Z','Install scrubber',NULL,'NO','res502','2025-08-01','NO');
INSERT INTO environmental_waste_air_emission VALUES ('em003','fac02','2025-06-20','SO2',8.0,900.0,'Scrubber','92.5','NORMAL','NO','res502','2025-06-21','COMPLIANT','EPA-40CFR','All good','res502','2025-06-21T09:15:00Z','NONE',NULL,'NO','res503','2025-07-05','NO');

-- Nanomaterial exposure monitoring
CREATE TABLE nanomaterial_exposure_monitor (
  monitor_id TEXT PRIMARY KEY,
  location TEXT,
  nanomaterial_type TEXT,
  particle_size_nm REAL,
  concentration_ug_m3 REAL,
  measurement_timestamp TEXT,
  instrument_id TEXT,
  operator_id TEXT,
  calibration_status TEXT,
  alarm_triggered TEXT,
  maintenance_due_date TEXT,
  comments TEXT,
  compliance_status TEXT,
  regulatory_limit_ug_m3 REAL,
  sampled_by TEXT,
  sampling_method TEXT,
  filter_type TEXT,
  air_flow_lpm REAL,
  temperature_c REAL,
  humidity_percent REAL,
  data_quality_score INTEGER,
  reviewed_by TEXT,
  review_timestamp TEXT,
  action_taken TEXT,
  action_timestamp TEXT
);
INSERT INTO nanomaterial_exposure_monitor VALUES ('nm001','ZoneA','TiO2','20.5','0.8','2025-07-01T08:00:00Z','instN01','res600','VALID','NO','2025-12-01','Routine monitoring','COMPLIANT','1.0','res600','DirectCapture','PTFE','500.0','22.0','45.0',85,'res601','2025-07-01T09:00:00Z','NONE',NULL);
INSERT INTO nanomaterial_exposure_monitor VALUES ('nm002','ZoneB','AgNP','15.0','2.5','2025-07-02T09:30:00Z','instN02','res601','VALID','YES','2025-11-15','Elevated levels','NONCOMPLIANT','1.0','res601','Filtered','Cellulose','600.0','21.5','50.0',70,'res602','2025-07-02T10:30:00Z','Increase ventilation','2025-07-02T11:00:00Z');
INSERT INTO nanomaterial_exposure_monitor VALUES ('nm003','ZoneC','CarbonNanotube','30.0','0.3','2025-07-03T07:45:00Z','instN03','res602','VALID','NO','2025-10-20','Within limits','COMPLIANT','0.5','res602','Cyclone','HEPA','550.0','20.0','40.0',92,'res603','2025-07-03T08:30:00Z','NONE',NULL);