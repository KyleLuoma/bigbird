-- Ventilation system audit details
CREATE TABLE ventilation_system_audit (
  audit_id TEXT NOT NULL,
  system_id TEXT NOT NULL,
  audit_date TEXT,
  auditor_name TEXT,
  airflow_rate REAL,
  pressure_drop REAL,
  filter_status TEXT,
  hvac_mode TEXT,
  temperature REAL,
  humidity REAL,
  co2_level REAL,
  pm2_5 REAL,
  noise_level REAL,
  power_consumption REAL,
  maintenance_due TEXT,
  software_version TEXT,
  firmware_version TEXT,
  notes TEXT,
  corrective_action_status TEXT,
  follow_up_date TEXT,
  PRIMARY KEY (audit_id)
);

INSERT INTO ventilation_system_audit VALUES ('VA001','SYS01','2025-01-15','AliceSmith',500.2,0.35,'OK','AUTO',22.5,45.0,600,12.3,55.0,1200.5,'2025-06-01','v2.3','fw1.0','Initial audit','Pending','2025-02-15');
INSERT INTO ventilation_system_audit VALUES ('VA002','SYS02','2025-02-10','BobJones',480.0,0.40,'REPLACE','MANUAL',21.0,50.0,580,10.8,60.0,1150.0,'2025-07-20','v2.4','fw1.1','Filter wear observed','InProgress','2025-03-01');
INSERT INTO ventilation_system_audit VALUES ('VA003','SYS03','2025-03-05','CarolLee',510.5,0.33,'OK','AUTO',23.2,42.0,610,13.0,53.0,1225.3,'2025-08-15','v2.5','fw1.2','All parameters nominal','Closed','2025-03-20');

-- Instrument firmware release tracking
CREATE TABLE instrument_firmware_release (
  release_id TEXT NOT NULL,
  instrument_serial TEXT NOT NULL,
  firmware_version TEXT,
  release_date TEXT,
  released_by TEXT,
  changelog TEXT,
  checksum TEXT,
  file_path TEXT,
  compatibility_notes TEXT,
  validation_status TEXT,
  deployment_target TEXT,
  rollout_phase TEXT,
  risk_assessment TEXT,
  rollback_plan TEXT,
  documentation_url TEXT,
  support_contact TEXT,
  affected_modules TEXT,
  minimum_hardware_rev TEXT,
  download_url TEXT,
  release_notes_summary TEXT,
  PRIMARY KEY (release_id)
);

INSERT INTO instrument_firmware_release VALUES ('FR001','INS12345','fw3.2','2025-01-20','DaveMiller','BugFixesAndImprovements','abc123def','/firmware/fw3.2.bin','RequiresHVACv2','Validated','AllLabs','Phase1','Low','UseStandardRollback','http://docs/fw3.2','support@labco.com','ModA,ModB','Rev2','http://downloads/fw3.2','ImprovedStability');
INSERT INTO instrument_firmware_release VALUES ('FR002','INS67890','fw4.0','2025-02-12','EveTran','NewFeatureXAdded','def456ghi','/firmware/fw4.0.bin','OnlyForHVACv3','Pending','Subset','Phase2','Medium','CustomRollbackProcedure','http://docs/fw4.0','tech@labco.com','ModC','Rev3','http://downloads/fw4.0','AddsFeatureX');
INSERT INTO instrument_firmware_release VALUES ('FR003','INS54321','fw4.1','2025-03-08','FrankYu','SecurityPatch','ghi789jkl','/firmware/fw4.1.bin','AllVersions','Validated','AllLabs','Phase1','High','ImmediateRollbackIfFailure','http://docs/fw4.1','security@labco.com','ModA,ModD','Rev2','http://downloads/fw4.1','CriticalSecurityUpdate');

-- Lab power distribution log
CREATE TABLE lab_power_distribution (
  record_id TEXT NOT NULL,
  panel_id TEXT,
  circuit_id TEXT,
  timestamp TEXT,
  voltage REAL,
  current REAL,
  power_factor REAL,
  frequency REAL,
  total_power REAL,
  harmonic_distortion REAL,
  breaker_status TEXT,
  overload_event TEXT,
  maintenance_flag TEXT,
  temperature REAL,
  humidity REAL,
  alarm_status TEXT,
  operator_id TEXT,
  notes TEXT,
  estimated_load REAL,
  actual_load REAL,
  PRIMARY KEY (record_id)
);

INSERT INTO lab_power_distribution VALUES ('PD001','PNL01','CIR01','2025-01-10T08:00:00',230.0,15.2,0.98,60.0,3500.0,2.5,'Closed','None','No','35.0','45.0','Normal','OP001','MorningCheck',3400.0,3500.0);
INSERT INTO lab_power_distribution VALUES ('PD002','PNL02','CIR05','2025-01-10T12:30:00',231.5,18.0,0.97,60.0,4200.0,3.0,'Closed','Overload','Yes','36.5','44.0','Warning','OP003','MiddayLoadSpike',4100.0,4200.0);
INSERT INTO lab_power_distribution VALUES ('PD003','PNL01','CIR03','2025-01-10T17:45:00',229.8,12.5,0.99,60.0,2950.0,1.8,'Closed','None','No','34.0','46.0','Normal','OP002','EveningCheck',2900.0,2950.0);

-- Chemical storage audit log
CREATE TABLE chemical_storage_audit (
  audit_id TEXT NOT NULL,
  storage_location TEXT,
  audit_date TEXT,
  auditor_name TEXT,
  total_containers INTEGER,
  expired_containers INTEGER,
  incompatibility_issues INTEGER,
  temperature REAL,
  humidity REAL,
  ventilation_status TEXT,
  fire_extinguisher_status TEXT,
  spill_control_measures TEXT,
  security_lock_status TEXT,
  access_log_summary TEXT,
  corrective_actions_required TEXT,
  follow_up_deadline TEXT,
  notes TEXT,
  audit_score REAL,
  compliance_status TEXT,
  next_audit_date TEXT,
  PRIMARY KEY (audit_id)
);

INSERT INTO chemical_storage_audit VALUES ('CSA001','LOC_A1','2025-02-01','GraceHuang',250,5,2,22.0,40.0,'OK','OK','Ready','Locked','LogReviewed','ReplaceExpired','2025-03-01','All good','92.5','Compliant','2025-08-01');
INSERT INTO chemical_storage_audit VALUES ('CSA002','LOC_B3','2025-02-15','HenryKim',180,3,1,21.5,42.0','OK','NeedsService','Ready','Locked','LogReviewed','UpdateSpillKits','2025-03-20','Minor issues','88.0','Compliant','2025-09-15');
INSERT INTO chemical_storage_audit VALUES ('CSA003','LOC_C2','2025-03-05','IvyPatel',210,0,0,23.0,38.0','OK','OK','Ready','Locked','LogReviewed','NoAction','2025-04-01','Excellent','98.0','Compliant','2025-10-10');

-- Research data access request log
CREATE TABLE research_data_access_request (
  request_id TEXT NOT NULL,
  researcher_id TEXT,
  dataset_id TEXT,
  request_date TEXT,
  purpose TEXT,
  approval_status TEXT,
  approved_by TEXT,
  approval_date TEXT,
  data_transfer_method TEXT,
  encryption_used TEXT,
  access_duration_days INTEGER,
  download_link TEXT,
  notes TEXT,
  compliance_check_passed TEXT,
  audit_trail_id TEXT,
  risk_level TEXT,
  data_sensitivity TEXT,
  retention_policy TEXT,
  revocation_date TEXT,
  PRIMARY KEY (request_id)
);

INSERT INTO research_data_access_request VALUES ('DAR001','RES001','DS1001','2025-01-12','MetabolomicsAnalysis','Approved','DrSmith','2025-01-13','SecureFTP','AES256',30,'http://data.labco.com/ds1001','Urgent analysis needed','Yes','AT001','Low','Confidential','30days','2025-02-11');
INSERT INTO research_data_access_request VALUES ('DAR002','RES004','DS2005','2025-02-05','DrugInteractionStudy','Pending','','','SFTP','AES128',45,'','Awaiting compliance review','No','AT002','Medium','Restricted','45days','');
INSERT INTO research_data_access_request VALUES ('DAR003','RES007','DS3003','2025-02-20','NanomaterialModeling','Rejected','DrLee','2025-02-21','','',0,'','Insufficient justification','No','AT003','High','HighlySensitive','0','');

-- Facility maintenance task schedule
CREATE TABLE facility_maintenance_task (
  task_id TEXT NOT NULL,
  facility_area TEXT,
  task_description TEXT,
  scheduled_start TEXT,
  scheduled_end TEXT,
  assigned_team TEXT,
  priority_level TEXT,
  required_resources TEXT,
  safety_precautions TEXT,
  estimated_hours REAL,
  actual_hours REAL,
  status TEXT,
  completion_date TEXT,
  verification_signature TEXT,
  follow_up_task_id TEXT,
  notes TEXT,
  risk_assessment TEXT,
  escalation_contact TEXT,
  downtime_expected TEXT,
  cost_estimate REAL,
  PRIMARY KEY (task_id)
);

INSERT INTO facility_maintenance_task VALUES ('MT001','HVAC_Room','FilterReplacement','2025-03-01','2025-03-01','TeamA','Medium','Filters,Tools','WearProtectiveGear',2.0,2.1,'Completed','2025-03-01','SigA','MT010','Replaced all filters','Low','EngMgr','None',500.0);
INSERT INTO facility_maintenance_task VALUES ('MT002','Lab_Cleanroom','FloorRecoat','2025-04-10','2025-04-12','TeamB','High','CoatingMaterials','VentilationOn','24.0,','26.0','InProgress','','','Coating drying time considered','High','FacilitiesDir','Yes','12000.0');
INSERT INTO facility_maintenance_task VALUES ('MT003','Electrical_Shop','PanelInspection','2025-05-05','2025-05-05','TeamC','Low','InspectionTools','LockoutTagout',1.5,1.5,'Scheduled','','','Annual inspection','Low','ElecEngLead','No','300.0');

-- Environmental sensor calibration log
CREATE TABLE environmental_sensor_calibration (
  calibration_id TEXT NOT NULL,
  sensor_id TEXT,
  sensor_type TEXT,
  calibration_date TEXT,
  calibrated_by TEXT,
  temperature_offset REAL,
  humidity_offset REAL,
  co2_offset REAL,
  pm2_5_offset REAL,
  noise_level_offset REAL,
  voltage_calibration REAL,
  firmware_version TEXT,
  calibration_certificate TEXT,
  notes TEXT,
  next_due_date TEXT,
  calibration_lab TEXT,
  reference_standard TEXT,
  temperature_reference REAL,
  humidity_reference REAL,
  status TEXT,
  PRIMARY KEY (calibration_id)
);

INSERT INTO environmental_sensor_calibration VALUES ('CAL001','SNS001','TempHumidity','2025-01-25','LauraChen',0.1,0.5,0.0,0.0,0.0,5.0,'fw2.1','CERT001','Calibration successful','2025-07-25','LabA','StdTempHum','22.0','45.0','Valid');
INSERT INTO environmental_sensor_calibration VALUES ('CAL002','SNS005','CO2','2025-02-10','MikeZhou',0.0,0.0,10.0,0.0,0.0,5.0,'fw2.2','CERT002','Offset adjusted','2025-08-10','LabB','StdCO2','0','0','Valid');
INSERT INTO environmental_sensor_calibration VALUES ('CAL003','SNS009','PM2_5','2025-03-03','NinaPatel',0.0,0.0,0.0,1.2,0.0,5.0,'fw2.3','CERT003','Fine particles offset','2025-09-03','LabC','StdPM','0','0','Valid');

-- Nanomaterial exposure assessment record
CREATE TABLE nanomaterial_exposure_assessment (
  assessment_id TEXT NOT NULL,
  batch_id TEXT,
  material_name TEXT,
  assessment_date TEXT,
  assessor_name TEXT,
  particle_size_nm REAL,
  concentration_mg_m3 REAL,
  exposure_duration_minutes INTEGER,
  control_measures TEXT,
  personal_protective_equipment TEXT,
  area_monitoring_result REAL,
  health_surveillance_notes TEXT,
  risk_category TEXT,
  mitigation_plan TEXT,
  follow_up_date TEXT,
  regulatory_reference TEXT,
  comments TEXT,
  approval_status TEXT,
  approved_by TEXT,
  approval_date TEXT,
  PRIMARY KEY (assessment_id)
);

INSERT INTO nanomaterial_exposure_assessment VALUES ('NEA001','NB001','SilverNanoparticles','2025-01-18','OliviaM','15.2',0.8,120,'FumeHood','GlovesMask','0.05','No symptoms reported','Low','MaintainVentilation','2025-02-18','Reg123','All parameters within limits','Approved','DrBrown','2025-01-20');
INSERT INTO nanomaterial_exposure_assessment VALUES ('NEA002','NB002','TitaniumDioxide','2025-02-22','PeterL','30.0',1.5,90,'LaminarFlow','Respirator','0.12','Mild throat irritation','Medium','UpgradeFilters','2025-03-22','Reg456','Slight exceedance observed','Pending','','');
INSERT INTO nanomaterial_exposure_assessment VALUES ('NEA003','NB003','CarbonNanotubes','2025-03-15','QuinnS','5.0',2.1,60,'EnclosedChamber','FullSuit','0.20','No symptoms reported','High','ImplementEngineeringControls','2025-04-15','Reg789','High concentration detected','Rejected','DrWhite','2025-03-16');

-- Clinical trial monitoring schedule
CREATE TABLE clinical_trial_monitoring_schedule (
  schedule_id TEXT NOT NULL,
  trial_id TEXT,
  monitor_name TEXT,
  visit_number INTEGER,
  planned_date TEXT,
  actual_date TEXT,
  site_location TEXT,
  monitoring_type TEXT,
  patient_population TEXT,
  data_collection_focus TEXT,
  required_documents TEXT,
  travel_arrangement TEXT,
  accommodation_details TEXT,
  budget_allocation REAL,
  status TEXT,
  notes TEXT,
  compliance_check TEXT,
  follow_up_actions TEXT,
  deviation_reason TEXT,
  closure_date TEXT,
  PRIMARY KEY (schedule_id)
);

INSERT INTO clinical_trial_monitoring_schedule VALUES ('CTM001','CT001','JohnDoe',1,'2025-02-01','2025-02-02','SiteA','SiteInitiation','Adults','EligibilityVerification','InformedConsent','FlightHotel','HotelXYZ',1500.0,'Completed','All documents received','Pass','','','2025-02-05');
INSERT INTO clinical_trial_monitoring_schedule VALUES ('CTM002','CT002','JaneSmith',2,'2025-03-10','','SiteB','SafetyReview','Elderly','AdverseEventReview','AEReports','CarRental','N/A',1200.0,'Pending','Awaiting site report','','Pending','Travel delay','');
INSERT INTO clinical_trial_monitoring_schedule VALUES ('CTM003','CT003','MikeLee',3,'2025-04-15','2025-04-16','SiteC','DataAudit','Pediatrics','DataIntegrityCheck','CRFs','Train','N/A',1300.0,'Completed','Data clean','Pass','Submit audit report','Minor schedule shift','2025-04-20');

-- Lab waste transport log
CREATE TABLE lab_waste_transport_log (
  transport_id TEXT NOT NULL,
  waste_batch_id TEXT,
  waste_type TEXT,
  origin_location TEXT,
  destination_facility TEXT,
  transport_date TEXT,
  carrier_company TEXT,
  vehicle_id TEXT,
  driver_name TEXT,
  manifest_number TEXT,
  weight_kg REAL,
  volume_liters REAL,
  containment_method TEXT,
  temperature_control TEXT,
  regulatory_compliance TEXT,
  inspection_status TEXT,
  incident_reported TEXT,
  notes TEXT,
  received_by TEXT,
  receipt_date TEXT,
  PRIMARY KEY (transport_id)
);

INSERT INTO lab_waste_transport_log VALUES ('WTL001','WB001','Chemical','LabA','DisposalCenter','2025-01-05','SafeTrans','V001','CarlosM','MN1001',250.0,300.0,'Drum','Ambient','Yes','Passed','No','No issues','JohnK','2025-01-06');
INSERT INTO lab_waste_transport_log VALUES ('WTL002','WB002','Biohazard','LabB','BioSafeFacility','2025-02-12','BioMove','V012','LindaS','MN2002',180.0,200.0,'BioBag','Cold','Yes','Passed','No','Handled with PPE','AmyT','2025-02-13');
INSERT INTO lab_waste_transport_log VALUES ('WTL003','WB003','Radioactive','LabC','NuclearDisposal','2025-03-20','RadioTrans','V055','JamesP','MN3003',95.0,110.0,'ShieldedContainer','Ambient','Yes','Pending','Yes','Leak detected during transport','MikeR','2025-03-22');