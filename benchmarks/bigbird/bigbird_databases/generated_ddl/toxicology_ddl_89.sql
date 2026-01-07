-- lab_air_quality_monitoring
CREATE TABLE lab_air_quality_monitoring (
  monitor_id TEXT PRIMARY KEY,
  location TEXT,
  sensor_type TEXT,
  installation_date DATE,
  last_calibration DATE,
  calibration_interval_days INTEGER,
  ppm_co2 INTEGER,
  ppm_o2 INTEGER,
  ppb_no2 INTEGER,
  ppb_so2 INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  battery_voltage REAL,
  status TEXT,
  maintenance_contact TEXT,
  firmware_version TEXT,
  data_upload_url TEXT,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME
);
INSERT INTO lab_air_quality_monitoring VALUES ('M001','RoomA','NDIR','2022-01-15','2023-06-01',180,420,210,15,5,22.5,45.0,3.7,'Active','JohnDoe','v1.2','http://example.com/upload','Initial installation','2023-01-01 08:00:00','2023-06-01 09:30:00');
INSERT INTO lab_air_quality_monitoring VALUES ('M002','RoomB','Electrochemical','2021-11-20','2023-05-20',365,380,200,12,4,21.0,48.5,3.6,'Active','JaneSmith','v1.3','http://example.com/upload','Routine check','2023-02-10 10:15:00','2023-05-20 11:00:00');
INSERT INTO lab_air_quality_monitoring VALUES ('M003','RoomC','Photoacoustic','2022-07-05','2023-04-15',180,400,205,10,6,23.1,44.2,3.8,'Maintenance','MikeLee','v1.1','http://example.com/upload','Battery replaced','2023-03-05 14:45:00','2023-04-15 08:20:00');

-- chemical_storage_audit_log
CREATE TABLE chemical_storage_audit_log (
  audit_id TEXT PRIMARY KEY,
  storage_unit_id TEXT,
  auditor_name TEXT,
  audit_date DATE,
  temperature_c REAL,
  humidity_percent REAL,
  pressure_kpa REAL,
  door_lock_status TEXT,
  security_camera_status TEXT,
  inventory_match_percent REAL,
  discrepancies_found TEXT,
  corrective_action TEXT,
  next_audit_due DATE,
  supervisor_approval TEXT,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  audit_score INTEGER,
  external_compliance_flag TEXT,
  audit_type TEXT
);
INSERT INTO chemical_storage_audit_log VALUES ('A001','SU100','AliceBrown','2023-06-01',18.5,42.0,101.3,'Locked','Active',98.5,'None','N/A','2024-06-01','Approved','Quarterly audit','2023-06-01 09:00:00','2023-06-01 10:15:00',95,'Yes','Routine');
INSERT INTO chemical_storage_audit_log VALUES ('A002','SU101','BobGreen','2023-05-20',19.0,40.5,101.5,'Locked','Inactive',95.2,'Missing MSDS','Updated records','2024-05-20','Pending','Follow up required','2023-05-20 11:30:00','2023-05-20 12:45:00',88,'No','Spot');
INSERT INTO chemical_storage_audit_log VALUES ('A003','SU102','CarolWhite','2023-04-15',17.8,43.2,101.0,'Unlocked','Active',92.0,'Improper labeling','Re-label containers','2024-04-15','Approved','Corrective measures taken','2023-04-15 08:20:00','2023-04-15 09:35:00',80,'Yes','Routine');

-- nanomaterial_exposure_assessment
CREATE TABLE nanomaterial_exposure_assessment (
  assessment_id TEXT PRIMARY KEY,
  batch_id TEXT,
  exposure_date DATE,
  worker_id TEXT,
  exposure_level_ppm REAL,
  duration_minutes INTEGER,
  protective_equipment TEXT,
  medical_clearance TEXT,
  symptoms_reported TEXT,
  follow_up_required TEXT,
  follow_up_date DATE,
  assessor_name TEXT,
  assessment_score INTEGER,
  risk_category TEXT,
  mitigation_plan TEXT,
  comments TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  exposure_type TEXT,
  lab_section TEXT
);
INSERT INTO nanomaterial_exposure_assessment VALUES ('EX001','NB1001','2023-06-10','W001',0.8,45,'Gloves+Mask','Clear','None','No','2023-06-20','DrSmith',85,'Low','Continue standard PPE','All parameters normal','2023-06-10 07:30:00','2023-06-10 08:00:00','Inhalation','Synthesis');
INSERT INTO nanomaterial_exposure_assessment VALUES ('EX002','NB1002','2023-05-22','W002',1.5,60,'Gloves+Mask+Vent','Clear','Mild irritation','Yes','2023-06-01','DrJones',70,'Medium','Increase ventilation','Symptoms resolved','2023-05-22 09:15:00','2023-05-22 09:45:00','Inhalation','Characterization');
INSERT INTO nanomaterial_exposure_assessment VALUES ('EX003','NB1003','2023-04-30','W003',0.3,30,'Gloves','Clear','None','No','2023-05-10','DrLee',90,'Low','Maintain current controls','No issues','2023-04-30 10:00:00','2023-04-30 10:30:00','Dermal','Packaging');

-- instrument_failure_analysis
CREATE TABLE instrument_failure_analysis (
  failure_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  failure_timestamp DATETIME,
  failure_mode TEXT,
  root_cause TEXT,
  downtime_minutes INTEGER,
  repair_action TEXT,
  technician_id TEXT,
  parts_replaced TEXT,
  cost_usd REAL,
  warranty_claimed TEXT,
  impact_score INTEGER,
  severity_level TEXT,
  post_failure_test_passed TEXT,
  notes TEXT,
  logged_by TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  failure_category TEXT,
  service_contract_id TEXT
);
INSERT INTO instrument_failure_analysis VALUES ('F001','INST100','2023-05-15 14:20:00','ThermalOverrun','CoolingFanFailure',180,'FanReplacement','TECH01','FanModelX',450.00,'Yes',78,'High','Yes','Replaced under warranty','OperatorA','2023-05-15 15:00:00','2023-05-15 15:30:00','Hardware','SC001');
INSERT INTO instrument_failure_analysis VALUES ('F002','INST101','2023-04-28 09:45:00','SoftwareCrash','MemoryLeak','60','PatchInstallation','TECH02','N/A',120.00,'No',65,'Medium','Yes','Applied patch version 2.3','OperatorB','2023-04-28 10:30:00','2023-04-28 11:00:00','Software','SC002');
INSERT INTO instrument_failure_analysis VALUES ('F003','INST102','2023-03-20 11:10:00','PowerFailure','UPSFailure','240','UPSReplacement','TECH03','UPSModelY',800.00,'Yes',90,'Critical','No','UPS replaced under contract','OperatorC','2023-03-20 12:00:00','2023-03-20 12:45:00','Electrical','SC003');

-- researcher_collaboration_network
CREATE TABLE researcher_collaboration_network (
  collaboration_id TEXT PRIMARY KEY,
  researcher_a_id TEXT,
  researcher_b_id TEXT,
  project_id TEXT,
  start_date DATE,
  end_date DATE,
  collaboration_type TEXT,
  joint_publications INTEGER,
  total_funding_usd REAL,
  primary_institution_a TEXT,
  primary_institution_b TEXT,
  field_of_study TEXT,
  collaboration_intensity_score REAL,
  remote_meetings_count INTEGER,
  shared_lab_resources TEXT,
  data_sharing_agreement TEXT,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  status TEXT,
  last_interaction_date DATE
);
INSERT INTO researcher_collaboration_network VALUES ('C001','R001','R002','P100','2022-01-15','2023-12-31','CoPI','3',250000.00,'UniA','UniB','Nanotech',8.5,24,'SharedFumeHood','Signed','Successful partnership','2022-01-15 08:00:00','2023-06-01 10:00:00','Active','2023-06-01');
INSERT INTO researcher_collaboration_network VALUES ('C002','R003','R004','P101','2021-06-01','2024-05-30','JointGrant','5',500000.00,'InstX','InstY','Bioinformatics',9.2,36,'SharedCluster','Signed','High impact outputs','2021-06-01 09:30:00','2023-05-15 14:20:00','Active','2023-05-15');
INSERT INTO researcher_collaboration_network VALUES ('C003','R005','R006','P102','2020-03-10','2022-12-31','DataSharing','2',120000.00,'LabM','LabN','MaterialsScience',7.0,12,'SharedMicroscope','Signed','Data exchange completed','2020-03-10 10:45:00','2022-12-31 16:00:00','Completed','2022-12-31');

-- environmental_noise_monitoring_station
CREATE TABLE environmental_noise_monitoring_station (
  station_id TEXT PRIMARY KEY,
  site_name TEXT,
  latitude REAL,
  longitude REAL,
  installation_date DATE,
  sensor_model TEXT,
  frequency_range_hz TEXT,
  noise_level_db REAL,
  temperature_c REAL,
  humidity_percent REAL,
  power_source TEXT,
  data_transmission_method TEXT,
  maintenance_schedule TEXT,
  last_maintenance_date DATE,
  firmware_version TEXT,
  operational_status TEXT,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  calibration_date DATE,
  calibration_cert_id TEXT
);
INSERT INTO environmental_noise_monitoring_station VALUES ('NS001','CampusNorth','40.7128','-74.0060','2021-09-01','SoundSenseX','20-20000','55.2','22.0','45.0','Solar','Cellular','Annual','2023-08-15','v2.0','Active','Station operating within specs','2021-09-01 08:00:00','2023-08-15 09:30:00','2023-08-01','CERT1001');
INSERT INTO environmental_noise_monitoring_station VALUES ('NS002','CampusSouth','40.7135','-74.0100','2022-03-15','AcoustiPro','30-18000','62.5','21.5','48.0','Mains','WiFi','SemiAnnual','2023-02-10','v2.1','Active','Noise exceeds threshold during events','2022-03-15 09:00:00','2023-02-10 10:15:00','2023-01-30','CERT1002');
INSERT INTO environmental_noise_monitoring_station VALUES ('NS003','ResearchPark','40.7200','-74.0150','2020-11-20','NoiseGuard','10-25000','48.9','20.0','40.0','Battery','Ethernet','Annual','2023-07-05','v1.9','Maintenance','Sensor calibration pending','2020-11-20 07:45:00','2023-07-05 08:30:00','2023-06-20','CERT1003');

-- clinical_trial_adverse_event_detail
CREATE TABLE clinical_trial_adverse_event_detail (
  event_id TEXT PRIMARY KEY,
  trial_id TEXT,
  participant_id TEXT,
  event_date DATE,
  seriousness_level TEXT,
  event_type TEXT,
  severity_grade INTEGER,
  outcome TEXT,
  action_taken TEXT,
  related_drug TEXT,
  investigator_report TEXT,
  sponsor_report TEXT,
  regulatory_notification_date DATE,
  follow_up_required TEXT,
  follow_up_date DATE,
  comments TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  reporting_site TEXT,
  causality_assessment TEXT
);
INSERT INTO clinical_trial_adverse_event_detail VALUES ('EV001','TR100','P001','2023-05-10','Serious','CardiacArrest',5,'Fatal','Hospitalization','DrugA','ReportInvA','ReportSpA','2023-05-15','Yes','2023-06-01','Reviewed by safety board','2023-05-10 08:00:00','2023-05-10 09:00:00','SiteAlpha','Probable');
INSERT INTO clinical_trial_adverse_event_detail VALUES ('EV002','TR101','P002','2023-04-22','NonSerious','Nausea',2,'Recovered','MedicationAdjusted','DrugB','ReportInvB','ReportSpB','2023-04-25','No','NULL','Mild and transient','2023-04-22 10:15:00','2023-04-22 11:00:00','SiteBeta','Unrelated');
INSERT INTO clinical_trial_adverse_event_detail VALUES ('EV003','TR102','P003','2023-03-18','Serious','SevereAllergy',4','Recovered','Antihistamine','DrugC','ReportInvC','ReportSpC','2023-03-20','Yes','2023-04-05','Patient monitored for 30 days','2023-03-18 14:30:00','2023-03-18 15:15:00','SiteGamma','Possible');

-- lab_ventilation_filter_change_log
CREATE TABLE lab_ventilation_filter_change_log (
  change_id TEXT PRIMARY KEY,
  ventilation_unit_id TEXT,
  filter_serial_number TEXT,
  change_date DATE,
  technician_id TEXT,
  filter_type TEXT,
  pressure_drop_before_pa REAL,
  pressure_drop_after_pa REAL,
  hours_of_operation INTEGER,
  next_change_due DATE,
  vendor_name TEXT,
  cost_usd REAL,
  notes TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  compliance_status TEXT,
  inspection_id TEXT,
  filter_manufacturer TEXT,
  filter_efficiency_percent REAL,
  filter_location_code TEXT
);
INSERT INTO lab_ventilation_filter_change_log VALUES ('FC001','VU100','FSN12345','2023-06-01','TECH01','HEPA','250.0','150.0','5000','2024-06-01','FilterCorp','120.00','Replaced as scheduled','2023-06-01 08:00:00','2023-06-01 09:00:00','Compliant','INSP001','FilterMfgA',99.5,'LOC01');
INSERT INTO lab_ventilation_filter_change_log VALUES ('FC002','VU101','FSN67890','2023-05-15','TECH02','Carbon','300.0','180.0','4800','2024-05-15','CleanAirInc','150.00','Observed increased pressure drop','2023-05-15 10:30:00','2023-05-15 11:30:00','Compliant','INSP002','FilterMfgB',95.0','LOC02');
INSERT INTO lab_ventilation_filter_change_log VALUES ('FC003','VU102','FSN54321','2023-04-20','TECH03','HEPA','260.0','140.0','5200','2024-04-20','PureFilterCo','130.00','Routine maintenance','2023-04-20 07:45:00','2023-04-20 08:45:00','Compliant','INSP003','FilterMfgA',98.0','LOC03');

-- computational_resource_quota_policy
CREATE TABLE computational_resource_quota_policy (
  policy_id TEXT PRIMARY KEY,
  resource_type TEXT,
  max_cpu_cores INTEGER,
  max_gpu_units INTEGER,
  max_memory_gb INTEGER,
  max_storage_tb REAL,
  allocation_strategy TEXT,
  expiration_date DATE,
  renewal_required TEXT,
  responsible_department TEXT,
  approval_status TEXT,
  policy_version TEXT,
  created_by TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  enforcement_mechanism TEXT,
  escalation_contact TEXT,
  audit_frequency_days INTEGER,
  compliance_status TEXT,
  notes TEXT,
  policy_effective_date DATE
);
INSERT INTO computational_resource_quota_policy VALUES ('QP001','CPU','64','0','256','10.0','FairShare','2024-12-31','Yes','ITDept','Approved','v1.0','AdminA','2023-01-01 08:00:00','2023-01-01 09:00:00','Automated','it_manager@lab.org',30,'Compliant','Standard compute quota','2023-01-01');
INSERT INTO computational_resource_quota_policy VALUES ('QP002','GPU','32','8','128','5.0','Priority','2025-06-30','No','ResearchDept','Pending','v0.9','AdminB','2023-02-15 10:00:00','2023-02-15 11:00:00','Manual','research_lead@lab.org',60,'Pending','GPU intensive workloads','2023-02-15');
INSERT INTO computational_resource_quota_policy VALUES ('QP003','Storage','0','0','0','100.0','QuotaBased','2025-12-31','Yes','DataMgmt','Approved','v1.2','AdminC','2023-03-20 09:30:00','2023-03-20 10:30:00','Automated','data_admin@lab.org',90,'Compliant','Long‑term storage allocation','2023-03-20');

-- sample_transport_route_map
CREATE TABLE sample_transport_route_map (
  route_id TEXT PRIMARY KEY,
  origin_location TEXT,
  destination_location TEXT,
  transport_mode TEXT,
  carrier_name TEXT,
  expected_duration_hours INTEGER,
  temperature_controlled_flag TEXT,
  max_temp_c REAL,
  min_temp_c REAL,
  humidity_controlled_flag TEXT,
  max_humidity_percent REAL,
  min_humidity_percent REAL,
  tracking_url TEXT,
  compliance_requirements TEXT,
  special_handling_instructions TEXT,
  created_at DATETIME,
  updated_at DATETIME,
  route_status TEXT,
  last_inspection_date DATE,
  responsible_staff_id TEXT
);
INSERT INTO sample_transport_route_map VALUES ('R001','LabA','LabB','RefrigeratedTruck','ColdLogistics','4','Yes','-20.0','2','Yes','60.0','30','http://track.example.com/R001','GMP','Keep upright, avoid shaking','2023-01-10 08:00:00','2023-01-10 09:00:00','Active','2023-01-09','STAFF01');
INSERT INTO sample_transport_route_map VALUES ('R002','StorageX','AnalysisY','Courier','FastShip','2','No','NULL','NULL','No','NULL','NULL','http://track.example.com/R002','ISO','Handle with care, no temperature constraints','2023-02-05 10:15:00','2023-02-05 11:00:00','Planned','2023-02-04','STAFF02');
INSERT INTO sample_transport_route_map VALUES ('R003','Freezer1','SequencingCore','DryIceBox','BioTrans','6','Yes','-80.0','-60','Yes','40.0','20','http://track.example.com/R003','GLP','Maintain dry ice, avoid exposure','2023-03-20 07:45:00','2023-03-20 08:30:00','Completed','2023-03-19','STAFF03');