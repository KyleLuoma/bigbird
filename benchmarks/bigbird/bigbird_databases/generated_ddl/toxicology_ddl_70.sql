-- Grant proposal review details
CREATE TABLE grant_proposal_review (
  review_id TEXT NOT NULL,
  proposal_id TEXT,
  reviewer_id TEXT,
  review_date TEXT,
  overall_score INTEGER,
  methodology_score INTEGER,
  feasibility_score INTEGER,
  impact_score INTEGER,
  budget_justification TEXT,
  conflict_of_interest TEXT,
  recommendation TEXT,
  comments TEXT,
  version INTEGER,
  review_cycle TEXT,
  reviewer_affiliation TEXT,
  reviewer_expertise_level TEXT,
  review_status TEXT,
  supplementary_doc_url TEXT,
  final_decision TEXT,
  decision_date TEXT,
  committee_id TEXT,
  notes TEXT,
  PRIMARY KEY (review_id)
);

INSERT INTO grant_proposal_review VALUES ('R001','P123','U456','2023-01-15',85,90,80,88,'Justified','No','Approve','Good work',1,'Cycle1','UniversityX','Senior','Completed','http://docs.example.com/r1','Accepted','2023-02-01','C01','All good');
INSERT INTO grant_proposal_review VALUES ('R002','P124','U457','2023-02-20',78,75,70,80,'Partial','Yes','Revise','Needs more data',2,'Cycle1','InstituteY','Mid','Pending','http://docs.example.com/r2','Pending','2023-03-10','C02','Awaiting revision');
INSERT INTO grant_proposal_review VALUES ('R003','P125','U458','2023-03-05',92,95,90,94,'Comprehensive','No','Approve','Excellent',3,'Cycle2','CollegeZ','Senior','Completed','http://docs.example.com/r3','Accepted','2023-04-01','C03','Final approval');

-- Computational algorithm version tracking
CREATE TABLE computational_algorithm_version (
  algo_id TEXT NOT NULL,
  version_number TEXT,
  release_date TEXT,
  language TEXT,
  runtime_env TEXT,
  dependency_list TEXT,
  author_id TEXT,
  description TEXT,
  checksum TEXT,
  status TEXT,
  supported_platforms TEXT,
  license_type TEXT,
  documentation_url TEXT,
  performance_score INTEGER,
  memory_footprint_mb INTEGER,
  cpu_requirements TEXT,
  gpu_support TEXT,
  validation_status TEXT,
  changelog TEXT,
  deprecation_date TEXT,
  maintainer_contact TEXT,
  notes TEXT,
  PRIMARY KEY (algo_id)
);

INSERT INTO computational_algorithm_version VALUES ('A001','v1.0','2022-01-10','Python','Docker','numpy;scipy','AUTH01','Initial release','abc123','Active','Linux;Windows','MIT','http://docs.example.com/a1','85',256,'2 cores','No','Validated','Initial release notes','2025-01-01','maintainer@example.com','Stable release');
INSERT INTO computational_algorithm_version VALUES ('A002','v1.1','2022-06-15','Python','Docker','numpy;scipy;pandas','AUTH02','Bug fixes and performance','def456','Active','Linux;Windows','MIT','http://docs.example.com/a2','88',260,'2 cores','No','Validated','Performance improvements','2025-06-01','maintainer2@example.com','Minor update');
INSERT INTO computational_algorithm_version VALUES ('A003','v2.0','2023-03-20','C++','Singularity','Eigen;Boost','AUTH03','Major overhaul with GPU support','ghi789','Beta','Linux','GPL','http://docs.example.com/a3','92',512,'4 cores','Yes','In testing','Added GPU kernels','2026-03-01','maintainer3@example.com','Beta release');

-- Facility inspection schedule
CREATE TABLE facility_inspection_schedule (
  schedule_id TEXT NOT NULL,
  facility_id TEXT,
  inspection_type TEXT,
  scheduled_date TEXT,
  inspector_id TEXT,
  duration_hours INTEGER,
  priority_level TEXT,
  checklist_version TEXT,
  required_equipment TEXT,
  status TEXT,
  notes TEXT,
  followup_date TEXT,
  report_url TEXT,
  risk_category TEXT,
  area_covered TEXT,
  compliance_status TEXT,
  created_at TEXT,
  updated_at TEXT,
  approval_signature TEXT,
  inspection_cycle TEXT,
  auditor_team TEXT,
  escalation_contact TEXT,
  PRIMARY KEY (schedule_id)
);

INSERT INTO facility_inspection_schedule VALUES ('S001','F001','Safety','2023-04-10','INSP01',4,'High','v2','FireExtinguisher;Mask','Scheduled','Initial scheduling','2023-04-15','http://reports.example.com/s1','Critical','LabAreaA','Pending','2023-03-01','2023-03-05','SIGN01','Annual','TeamA','ESC01');
INSERT INTO facility_inspection_schedule VALUES ('S002','F002','Environmental','2023-05-12','INSP02',3,'Medium','v1','AirSampler','Completed','All good','2023-05-20','http://reports.example.com/s2','Moderate','WarehouseB','Compliant','2023-04-01','2023-04-03','SIGN02','SemiAnnual','TeamB','ESC02');
INSERT INTO facility_inspection_schedule VALUES ('S003','F003','Equipment','2023-06-01','INSP03',2,'Low','v3','Calibrator','Pending','Awaiting parts','2023-06-10','http://reports.example.com/s3','Low','OfficeC','Pending','2023-05-01','2023-05-02','SIGN03','Quarterly','TeamC','ESC03');

-- External funding agency registry
CREATE TABLE external_funding_agency (
  agency_id TEXT NOT NULL,
  agency_name TEXT,
  country TEXT,
  funding_type TEXT,
  contact_email TEXT,
  website_url TEXT,
  established_year INTEGER,
  total_budget INTEGER,
  active_projects INTEGER,
  focus_area TEXT,
  eligibility_criteria TEXT,
  application_deadline TEXT,
  review_process TEXT,
  grant_max_amount INTEGER,
  grant_min_amount INTEGER,
  currency TEXT,
  reporting_requirements TEXT,
  audit_frequency TEXT,
  liaison_officer TEXT,
  phone_number TEXT,
  address TEXT,
  notes TEXT,
  PRIMARY KEY (agency_id)
);

INSERT INTO external_funding_agency VALUES ('AG001','GlobalScienceFund','USA','Research','contact@gsf.org','http://gsf.org',1995,50000000,120,'Life Sciences','Open to universities','2023-12-31','Peer review',500000,5000,'USD','Annual','Yearly','LiaisonA','+1-555-0100','123 Main St, City','Top tier agency');
INSERT INTO external_funding_agency VALUES ('AG002','InnovateTech Grants','Germany','Innovation','info@itg.de','http://itg.de',2002,30000000,80,'Engineering','SMEs only','2024-03-31','Panel review',250000,10000,'EUR','Biannual','Biannual','LiaisonB','+49-30-123456','Königstraße 5, Berlin','Focus on tech transfer');
INSERT INTO external_funding_agency VALUES ('AG003','HealthAdvance Council','UK','Public Health','admin@hac.uk','http://hac.uk',2010,20000000,60,'Public Health','Non-profits','2023-11-30','External review',150000,2000,'GBP','Quarterly','Quarterly','LiaisonC','+44-20-987654','10 Downing St, London','Emphasis on disease prevention');

-- Lab automation error log
CREATE TABLE lab_automation_error_log (
  error_id TEXT NOT NULL,
  system_id TEXT,
  timestamp TEXT,
  error_code TEXT,
  severity TEXT,
  description TEXT,
  affected_module TEXT,
  resolution_status TEXT,
  assigned_engineer TEXT,
  resolution_timestamp TEXT,
  root_cause TEXT,
  corrective_action TEXT,
  downtime_minutes INTEGER,
  impact_area TEXT,
  escalation_level TEXT,
  logged_by TEXT,
  firmware_version TEXT,
  software_version TEXT,
  retry_count INTEGER,
  notification_sent TEXT,
  documentation_link TEXT,
  comments TEXT,
  PRIMARY KEY (error_id)
);

INSERT INTO lab_automation_error_log VALUES ('E001','SYS01','2023-04-02T10:15:00','ERR100','High','Valve malfunction','Dispensing','Unresolved','ENG01',NULL,'Seal wear','Replace valve','45','Sample prep','Level2','OP01','v3.2','1.4.0',3,'Yes','http://docs.example.com/e1','Awaiting parts');
INSERT INTO lab_automation_error_log VALUES ('E002','SYS02','2023-05-10T14:30:00','ERR200','Medium','Temperature sensor drift','ThermalControl','Resolved','ENG02','2023-05-10T15:00:00','Calibration error','Recalibrate sensor','10','Incubator','Level1','OP02','v2.8','1.3.5',1,'Yes','http://docs.example.com/e2','Recalibrated successfully');
INSERT INTO lab_automation_error_log VALUES ('E003','SYS03','2023-06-18T09:05:00','ERR300','Low','UI lag','ControlPanel','Resolved','ENG03','2023-06-18T09:25:00','Memory leak','Patch applied','5','User interface','Level0','OP03','v4.0','1.5.2',0,'No','http://docs.example.com/e3','Patch verified');

-- Sample transport temperature monitoring
CREATE TABLE sample_transport_temperature (
  transport_id TEXT NOT NULL,
  sample_id TEXT,
  origin_location TEXT,
  destination_location TEXT,
  start_time TEXT,
  end_time TEXT,
  max_temp_c REAL,
  min_temp_c REAL,
  avg_temp_c REAL,
  temp_log_file TEXT,
  carrier_type TEXT,
  carrier_id TEXT,
  compliance_status TEXT,
  deviation_flag TEXT,
  corrective_action TEXT,
  observed_by TEXT,
  verified_by TEXT,
  temperature_sensor_id TEXT,
  calibration_date TEXT,
  notes TEXT,
  audit_timestamp TEXT,
  status TEXT,
  PRIMARY KEY (transport_id)
);

INSERT INTO sample_transport_temperature VALUES ('T001','SMP001','FreezerA','LabB','2023-04-01T08:00:00','2023-04-01T12:30:00',4.5,2.1,3.3','templog_T001.csv','DryIce','CR001','Compliant','No','None','TECH01','QC01','TS001','2023-03-15','No issues','2023-04-01T13:00:00','Completed');
INSERT INTO sample_transport_temperature VALUES ('T002','SMP002','LabC','FreezerD','2023-05-05T09:15:00','2023-05-05T11:45:00',-1.0,-3.2,-2.1','templog_T002.csv','LiquidNitrogen','CR002','NonCompliant','Yes','Adjust carrier insulation','TECH02','QC02','TS002','2023-04-30','Temp deviation observed','2023-05-05T12:00:00','Investigating');
INSERT INTO sample_transport_temperature VALUES ('T003','SMP003','LabE','LabF','2023-06-20T07:45:00','2023-06-20T10:00:00',5.0,3.5,4.2','templog_T003.csv','RefrigeratedBox','CR003','Compliant','No','None','TECH03','QC03','TS003','2023-06-10','All good','2023-06-20T10:30:00','Completed');

-- Chemical waste incident records
CREATE TABLE chemical_waste_incident (
  incident_id TEXT NOT NULL,
  waste_id TEXT,
  incident_date TEXT,
  reported_by TEXT,
  location TEXT,
  waste_type TEXT,
  quantity_kg REAL,
  containment_status TEXT,
  immediate_action TEXT,
  root_cause TEXT,
  corrective_plan TEXT,
  regulatory_fine REAL,
  status TEXT,
  followup_date TEXT,
  investigator_id TEXT,
  notes TEXT,
  incident_severity TEXT,
  disposal_method TEXT,
  emergency_contact TEXT,
  documentation_url TEXT,
  resolved_timestamp TEXT,
  final_report TEXT,
  PRIMARY KEY (incident_id)
);

INSERT INTO chemical_waste_incident VALUES ('WI001','W123','2023-03-12','EMP01','StorageRoom1','Solvent','2.5','Leaked','Shut valve','Packaged incorrectly','Revise SOP','1500','Closed','2023-04-01','INV01','Spill contained quickly','Medium','Incineration','+1-555-0123','http://incidents.example.com/wi001','2023-04-02','Report_WI001.pdf');
INSERT INTO chemical_waste_incident VALUES ('WI002','W124','2023-04-20','EMP02','LabBench5','Acid','1.0','Uncontained','Neutralized with base','Label missing','Implement barcode scanning','3000','Open','2023-05-15','INV02','Awaiting disposal','High','Neutralization','+1-555-0456','http://incidents.example.com/wi002',NULL,NULL);
INSERT INTO chemical_waste_incident VALUES ('WI003','W125','2023-05-30','EMP03','OutdoorArea','HeavyMetal','0.8','Contained','Removed to secondary container','Improper segregation','Training refresh','0','Closed','2023-06-10','INV03','No further issues','Low','Secure landfill','+1-555-0789','http://incidents.example.com/wi003','2023-06-11','Report_WI003.pdf');

-- Bioinformatics reference annotation table
CREATE TABLE bioinformatics_reference_annotation (
  annotation_id TEXT NOT NULL,
  reference_id TEXT,
  gene_id TEXT,
  transcript_id TEXT,
  annotation_type TEXT,
  source_database TEXT,
  start_pos INTEGER,
  end_pos INTEGER,
  strand TEXT,
  confidence_score REAL,
  evidence_code TEXT,
  last_updated TEXT,
  curator_id TEXT,
  notes TEXT,
  version INTEGER,
  annotation_status TEXT,
  related_variant_id TEXT,
  functional_impact TEXT,
  pathway_id TEXT,
  literature_link TEXT,
  review_date TEXT,
  flagged TEXT,
  PRIMARY KEY (annotation_id)
);

INSERT INTO bioinformatics_reference_annotation VALUES ('AN001','REF001','GENE001','TX001','ProteinCoding','Ensembl',1000,2000,'+','0.98','EXP','2023-03-01','CUR01','Reviewed','3','Approved','VAR001','Missense','PATH001','http://pubmed.example.com/12345','2023-04-01','No');
INSERT INTO bioinformatics_reference_annotation VALUES ('AN002','REF002','GENE002','TX002','lncRNA','RefSeq',3000,4000,'-','0.85','IEA','2023-04-10','CUR02','Preliminary','2','Pending','VAR002','None','PATH002','http://pubmed.example.com/67890','2023-05-01','Yes');
INSERT INTO bioinformatics_reference_annotation VALUES ('AN003','REF003','GENE003','TX003','miRNA','miRBase',500,1500,'+','0.92','TAS','2023-05-20','CUR03','Validated','4','Approved','VAR003','Regulatory','PATH003','http://pubmed.example.com/24680','2023-06-01','No');

-- Environmental policy document registry
CREATE TABLE environmental_policy_document (
  policy_id TEXT NOT NULL,
  title TEXT,
  effective_date TEXT,
  revision_number INTEGER,
  department_responsible TEXT,
  document_url TEXT,
  summary TEXT,
  enforcement_level TEXT,
  compliance_deadline TEXT,
  amendment_date TEXT,
  approved_by TEXT,
  review_cycle TEXT,
  related_regulation_id TEXT,
  statutory_reference TEXT,
  status TEXT,
  last_reviewed TEXT,
  next_review_due TEXT,
  document_hash TEXT,
  author_id TEXT,
  stakeholder_feedback TEXT,
  archiving_location TEXT,
  notes TEXT,
  PRIMARY KEY (policy_id)
);

INSERT INTO environmental_policy_document VALUES ('P001','Air Emission Standards','2022-01-01',3,'EnvironmentalDept','http://policies.example.com/p001','Limits on VOC emissions','Mandatory','2023-12-31','2023-01-15','DIR01','Annual','REG001','EPA-40CFR','Active','2023-03-01','2024-03-01','a1b2c3d4','AUTH01','Positive','ArchiveRoomA','Current version');
INSERT INTO environmental_policy_document VALUES ('P002','Water Discharge Guidelines','2021-06-15',2,'WaterManagement','http://policies.example.com/p002','Regulates effluent quality','Mandatory','2023-06-14','2022-06-20','DIR02','Biennial','REG002','EPA-33CFR','Active','2022-12-01','2024-12-01','e5f6g7h8','AUTH02','Mixed','ArchiveRoomB','Updated 2022');
INSERT INTO environmental_policy_document VALUES ('P003','Hazardous Waste Handling','2020-03-01',5,'SafetyOffice','http://policies.example.com/p003','Procedures for waste segregation','Mandatory','2025-02-28','2024-02-28','DIR03','Quarterly','REG003','OSHA-29CFR','Active','2023-07-15','2024-07-15','i9j0k1l2','AUTH03','Negative','ArchiveRoomC','Pending revision');

-- Nanomaterial exposure threshold profile
CREATE TABLE nanomaterial_exposure_threshold_profile (
  profile_id TEXT NOT NULL,
  nanomaterial_id TEXT,
  exposure_metric TEXT,
  threshold_value REAL,
  unit TEXT,
  limit_type TEXT,
  regulatory_body TEXT,
  effective_date TEXT,
  expiry_date TEXT,
  review_date TEXT,
  reviewer_id TEXT,
  comments TEXT,
  status TEXT,
  risk_category TEXT,
  safety_data_sheet_id TEXT,
  monitoring_method TEXT,
  frequency TEXT,
  equipment_used TEXT,
  calibration_date TEXT,
  data_source TEXT,
  action_plan_id TEXT,
  last_updated TEXT,
  notes TEXT,
  PRIMARY KEY (profile_id)
);

INSERT INTO nanomaterial_exposure_threshold_profile VALUES ('TP001','NM001','Inhalation','0.5','mg/m3','Occupational','OSHA','2023-01-01','2028-01-01','2023-06-01','REV01','Based on recent studies','Active','High','SDS001','AirSampler','Monthly','SamplerX','2023-05-15','LabMeasurements','AP001','2023-07-01','Reviewed annually');
INSERT INTO nanomaterial_exposure_threshold_profile VALUES ('TP002','NM002','Dermal','1.0','mg/cm2','Environmental','EPA','2022-05-01','2027-05-01','2022-11-01','REV02','Precautionary principle applied','Active','Medium','SDS002','SkinPatch','Quarterly','PatchY','2022-10-20','FieldData','AP002','2022-12-15','Pending update');
INSERT INTO nanomaterial_exposure_threshold_profile VALUES ('TP003','NM003','Oral','0.2','mg/kg','Consumer','FDA','2021-09-01','2026-09-01','2022-02-01','REV03','Derived from animal studies','Active','Low','SDS003','IntakeMonitoring','Annually','AnalyzerZ','2021-08-15','ClinicalTrials','AP003','2022-03-01','Stable');