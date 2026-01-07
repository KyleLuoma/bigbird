-- Lab Incident Report
CREATE TABLE `lab_incident_report` (
  `incident_id` TEXT NOT NULL,
  `reported_date` TEXT,
  `reporter_id` TEXT,
  `location` TEXT,
  `incident_type` TEXT,
  `severity` TEXT,
  `description` TEXT,
  `immediate_action` TEXT,
  `equipment_involved` TEXT,
  `chemical_involved` TEXT,
  `patient_id` TEXT,
  `medical_treatment` TEXT,
  `follow_up_required` TEXT,
  `follow_up_date` TEXT,
  `root_cause_analysis` TEXT,
  `corrective_action` TEXT,
  `status` TEXT,
  `investigation_lead` TEXT,
  `comments` TEXT,
  `attachments_path` TEXT,
  PRIMARY KEY (`incident_id`)
);
INSERT INTO `lab_incident_report` VALUES ('inc001','2023-01-01','r001','RoomA','Spill','High','Leak of solvent near bench','Shut valve and evacuate area','centrifuge_01','Acetone','p001','First aid applied','Yes','2023-01-05','Valve failure','Replace valve and retrain staff','Open','lead01','Initial report filed','/files/inc001');
INSERT INTO `lab_incident_report` VALUES ('inc002','2023-02-12','r002','RoomB','Fire','Medium','Small fire in fume hood','Activated fire alarm','fumehood_02','Ethanol','p002','No injuries','No','2023-02-20','Improper venting','Install new vent filter','Closed','lead02','Fire suppressed quickly','/files/inc002');
INSERT INTO `lab_incident_report` VALUES ('inc003','2023-03-08','r003','RoomC','Chemical exposure','Low','Skin contact with reagent','Rinsed with water','bench_03','Sodium hydroxide','p003','First aid applied','No','NULL','Insufficient PPE','Provide additional gloves','Closed','lead03','No further action needed','/files/inc003');

-- Equipment Decommission Log
CREATE TABLE `equipment_decommission_log` (
  `decomm_id` TEXT NOT NULL,
  `equipment_id` TEXT,
  `decomm_date` TEXT,
  `reason` TEXT,
  `disposal_method` TEXT,
  `vendor` TEXT,
  `cost` TEXT,
  `approval_id` TEXT,
  `decomm_manager` TEXT,
  `condition_at_decomm` TEXT,
  `warranty_remaining` TEXT,
  `serial_number` TEXT,
  `model_number` TEXT,
  `location` TEXT,
  `notes` TEXT,
  `final_status` TEXT,
  `environmental_impact` TEXT,
  `recycle_certificate` TEXT,
  `last_maintenance_date` TEXT,
  `responsible_engineer` TEXT,
  PRIMARY KEY (`decomm_id`)
);
INSERT INTO `equipment_decommission_log` VALUES ('de001','eq001','2023-04-10','Obsolete','Recycle','VendorA','1500','app001','mgr01','Good','6 months','SN12345','MDL-100','Lab1','Removed from inventory','Retired','Low','cert001','2023-02-15','eng01');
INSERT INTO `equipment_decommission_log` VALUES ('de002','eq002','2023-05-22','Damaged','Scrap','VendorB','800','app002','mgr02','Broken','0','SN54321','MDL-200','Lab2','Severe motor failure','Disposed','High','cert002','2023-03-10','eng02');
INSERT INTO `equipment_decommission_log` VALUES ('de003','eq003','2023-06-05','Upgrade','Sell','VendorC','1200','app003','mgr03','Fair','12 months','SN67890','MDL-300','Lab3','Sold to external lab','Transferred','Medium','cert003','2023-04-20','eng03');

-- Chemical Batch Tracking
CREATE TABLE `chemical_batch_tracking` (
  `batch_id` TEXT NOT NULL,
  `chemical_name` TEXT,
  `supplier` TEXT,
  `lot_number` TEXT,
  `arrival_date` TEXT,
  `storage_location` TEXT,
  `quantity_received` TEXT,
  `unit` TEXT,
  `expiration_date` TEXT,
  `safety_data_sheet` TEXT,
  `quality_check_passed` TEXT,
  `qc_date` TEXT,
  `qc_analyst` TEXT,
  `temperature_control` TEXT,
  `humidity_control` TEXT,
  `container_type` TEXT,
  `hazard_class` TEXT,
  `approval_status` TEXT,
  `approved_by` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`batch_id`)
);
INSERT INTO `chemical_batch_tracking` VALUES ('bat001','Ethanol','SupplierA','LOT001','2023-01-15','Cabinet1','500','L','2025-01-15','sds001','Yes','2023-01-16','analyst01','Yes','Yes','Bottle','Flammable','Approved','mgr01','Stored at 4C');
INSERT INTO `chemical_batch_tracking` VALUES ('bat002','Acetone','SupplierB','LOT002','2023-02-20','Cabinet2','300','L','2024-02-20','sds002','Yes','2023-02-21','analyst02','Yes','Yes','Drum','Flammable','Approved','mgr02','Checked for leaks');
INSERT INTO `chemical_batch_tracking` VALUES ('bat003','SodiumHydroxide','SupplierC','LOT003','2023-03-10','ShelfA','200','kg','2026-03-10','sds003','No','2023-03-11','analyst03','No','No','Bag','Corrosive','Pending','mgr03','Awaiting QC results');

-- Research Project Milestone
CREATE TABLE `research_project_milestone` (
  `milestone_id` TEXT NOT NULL,
  `project_id` TEXT,
  `milestone_name` TEXT,
  `description` TEXT,
  `target_date` TEXT,
  `actual_completion_date` TEXT,
  `status` TEXT,
  `owner_id` TEXT,
  `budget_allocated` TEXT,
  `budget_spent` TEXT,
  `risk_level` TEXT,
  `mitigation_plan` TEXT,
  `stakeholder` TEXT,
  `dependencies` TEXT,
  `deliverables` TEXT,
  `approval_status` TEXT,
  `approved_by` TEXT,
  `comments` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  PRIMARY KEY (`milestone_id`)
);
INSERT INTO `research_project_milestone` VALUES ('ms001','prj001','Synthesis Phase','Complete initial synthesis','2023-07-01','2023-06-28','Completed','r001','100000','75000','Medium','Increase staffing','Dr. Smith','None','Synthesized compounds','Approved','mgr01','On schedule','2023-01-10','2023-06-30');
INSERT INTO `research_project_milestone` VALUES ('ms002','prj001','Characterization','Characterize synthesized compounds','2023-08-15','2023-08-20','Delayed','r002','50000','52000','High','Outsource analysis','Dr. Lee','ms001','Analytical data','Pending','mgr02','Delay due to equipment downtime','2023-02-05','2023-08-20');
INSERT INTO `research_project_milestone` VALUES ('ms003','prj002','Clinical Prep','Prepare for pre‑clinical testing','2023-09-30','NULL','Planned','r003','150000','0','Low','Allocate resources early','Dr. Patel','ms002','Pre‑clinical protocol','Approved','mgr03','Awaiting funding','2023-03-12','2023-03-12');

-- Software Deployment Record
CREATE TABLE `software_deployment_record` (
  `deployment_id` TEXT NOT NULL,
  `software_name` TEXT,
  `version` TEXT,
  `deployed_by` TEXT,
  `deployment_date` TEXT,
  `target_system` TEXT,
  `environment` TEXT,
  `deployment_status` TEXT,
  `rollback_plan` TEXT,
  `validation_results` TEXT,
  `validation_date` TEXT,
  `change_request_id` TEXT,
  `approval_id` TEXT,
  `notes` TEXT,
  `affected_modules` TEXT,
  `downtime_minutes` TEXT,
  `post_deployment_monitoring` TEXT,
  `monitoring_results` TEXT,
  `compliance_check` TEXT,
  `created_at` TEXT,
  PRIMARY KEY (`deployment_id`)
);
INSERT INTO `software_deployment_record` VALUES ('dep001','LabManager','2.1.0','admin01','2023-04-01','ServerA','Production','Success','RollbackScript1','All tests passed','2023-04-02','cr001','app001','Routine upgrade','ModuleA,ModuleB','5','Enabled','No issues','Pass','2023-04-01');
INSERT INTO `software_deployment_record` VALUES ('dep002','DataCollector','1.4.3','admin02','2023-05-15','ServerB','Staging','Failed','RollbackScript2','Failed at step 3','2023-05-16','cr002','app002','Hotfix attempt','ModuleC','0','Disabled','N/A','Fail','2023-05-15');
INSERT INTO `software_deployment_record` VALUES ('dep003','AnalysisTool','3.0.0','admin03','2023-06-20','ServerC','Production','Success','RollbackScript3','All benchmarks met','2023-06-21','cr003','app003','Major release','ModuleD,ModuleE','10','Enabled','Performance within limits','Pass','2023-06-20');

-- Bio Sample Storage
CREATE TABLE `bio_sample_storage` (
  `storage_id` TEXT NOT NULL,
  `sample_id` TEXT,
  `specimen_type` TEXT,
  `donor_id` TEXT,
  `collection_date` TEXT,
  `storage_temperature` TEXT,
  `freezer_id` TEXT,
  `rack_position` TEXT,
  `volume` TEXT,
  `concentration` TEXT,
  `aliquot_number` TEXT,
  `storage_status` TEXT,
  `last_accessed` TEXT,
  `accessed_by` TEXT,
  `preservation_method` TEXT,
  `expiration_date` TEXT,
  `notes` TEXT,
  `qc_passed` TEXT,
  `qc_date` TEXT,
  `qc_analyst` TEXT,
  PRIMARY KEY (`storage_id`)
);
INSERT INTO `bio_sample_storage` VALUES ('st001','smp001','Blood','don001','2023-01-05','-80C','FZR01','A12','500','10','1','Stored','2023-04-01','r001','Cryopreservation','2025-01-05','No issues','Yes','2023-01-06','analyst01');
INSERT INTO `bio_sample_storage` VALUES ('st002','smp002','Tissue','don002','2023-02-10','-20C','FZR02','B08','250','5','2','Stored','2023-04-10','r002','Formalin fixation','2024-02-10','Slight discoloration','No','2023-02-12','analyst02');
INSERT INTO `bio_sample_storage` VALUES ('st003','smp003','Plasma','don003','2023-03-15','-80C','FZR01','C03','300','8','1','Stored','2023-05-20','r003','Aliquot freezing','2025-03-15','Pending QC','Pending','NULL','NULL');

-- Environmental Compliance Audit
CREATE TABLE `environmental_compliance_audit` (
  `audit_id` TEXT NOT NULL,
  `facility_id` TEXT,
  `audit_date` TEXT,
  `auditor` TEXT,
  `compliance_area` TEXT,
  `regulatory_reference` TEXT,
  `findings` TEXT,
  `severity` TEXT,
  `corrective_action` TEXT,
  `due_date` TEXT,
  `status` TEXT,
  `follow_up_date` TEXT,
  `documentation_link` TEXT,
  `notes` TEXT,
  `overall_score` TEXT,
  `rating` TEXT,
  `previous_audit_id` TEXT,
  `next_scheduled_audit` TEXT,
  `audit_type` TEXT,
  `created_at` TEXT,
  PRIMARY KEY (`audit_id`)
);
INSERT INTO `environmental_compliance_audit` VALUES ('aud001','fac001','2023-03-01','aud01','Air Quality','EPA-123','Minor exceedance of VOC limits','Low','Install additional filtration','2023-04-15','Open','2023-04-20','/docs/aud001','Reviewed with management','85','B','aud000','2023-09-01','Annual','2023-03-01');
INSERT INTO `environmental_compliance_audit` VALUES ('aud002','fac002','2023-06-10','aud02','Waste Disposal','EPA-456','Improper labeling of hazardous waste','Medium','Re‑label all containers','2023-07-01','Open','2023-07-05','/docs/aud002','Training scheduled','78','C','aud001','2023-12-01','Semi‑annual','2023-06-10');
INSERT INTO `environmental_compliance_audit` VALUES ('aud003','fac003','2023-09-20','aud03','Water Discharge','EPA-789','No issues detected','None','N/A','N/A','Closed','2023-09-25','/docs/aud003','All criteria met','92','A','aud002','2024-03-01','Annual','2023-09-20');

-- Clinical Trial Protocol Version
CREATE TABLE `clinical_trial_protocol_version` (
  `protocol_version_id` TEXT NOT NULL,
  `trial_id` TEXT,
  `version_number` TEXT,
  `effective_date` TEXT,
  `created_by` TEXT,
  `review_status` TEXT,
  `reviewer` TEXT,
  `approval_date` TEXT,
  `amendment_summary` TEXT,
  `inclusion_criteria` TEXT,
  `exclusion_criteria` TEXT,
  `dosing_schedule` TEXT,
  `monitoring_plan` TEXT,
  `data_collection_methods` TEXT,
  `statistical_analysis_plan` TEXT,
  `ethical_approval_id` TEXT,
  `regulatory_approval_id` TEXT,
  `notes` TEXT,
  `document_link` TEXT,
  `created_at` TEXT,
  PRIMARY KEY (`protocol_version_id`)
);
INSERT INTO `clinical_trial_protocol_version` VALUES ('pv001','ct001','v1.0','2023-01-01','r001','Approved','rev01','2023-01-05','Initial version','Age18-65','Pregnancy','QWEEKLY','Blood draws monthly','Electronic CRF','ANOVA','eth001','reg001','No remarks','/docs/pv001','2023-01-01');
INSERT INTO `clinical_trial_protocol_version` VALUES ('pv002','ct001','v1.1','2023-04-01','r002','Pending','rev02','NULL','Added safety monitoring','Age18-70','Pregnancy,Heart disease','QBIWEEKLY','Added ECG','Electronic CRF','Mixed models','eth002','reg002','Review in progress','/docs/pv002','2023-04-01');
INSERT INTO `clinical_trial_protocol_version` VALUES ('pv003','ct002','v2.0','2023-07-15','r003','Approved','rev03','2023-07-20','Major amendment adding arm B','Age21-75','Kidney disease','Daily dosing','Weekly labs','Paper CRF','Cox regression','eth003','reg003','Implemented new arm','/docs/pv003','2023-07-15');

-- Data Security Event
CREATE TABLE `data_security_event` (
  `event_id` TEXT NOT NULL,
  `event_type` TEXT,
  `detection_date` TEXT,
  `severity` TEXT,
  `affected_system` TEXT,
  `description` TEXT,
  `source_ip` TEXT,
  `destination_ip` TEXT,
  `user_id` TEXT,
  `action_taken` TEXT,
  `resolution_date` TEXT,
  `remediation_steps` TEXT,
  `reported_by` TEXT,
  `status` TEXT,
  `impact_assessment` TEXT,
  `compliance_implication` TEXT,
  `notification_sent` TEXT,
  `ticket_id` TEXT,
  `notes` TEXT,
  `created_at` TEXT,
  PRIMARY KEY (`event_id`)
);
INSERT INTO `data_security_event` VALUES ('ev001','Malware','2023-02-10','High','ServerA','Detected ransomware encryption','192.168.1.10','10.0.0.5','r001','System isolated','2023-02-12','Restore from backups','sec01','Closed','Significant data loss','Yes','Yes','TCK001','Recovered from backup','2023-02-10');
INSERT INTO `data_security_event` VALUES ('ev002','Phishing','2023-03-22','Medium','UserWorkstation','User clicked malicious link','203.0.113.45','NULL','r002','Password reset','2023-03-23','Force password change, scan workstation','sec02','Closed','Limited credential exposure','No','No','TCK002','User educated on phishing','2023-03-22');
INSERT INTO `data_security_event` VALUES ('ev003','Unauthorized Access','2023-05-05','Low','DatabaseServer','Repeated failed login attempts','NULL','NULL','r003','Account locked','2023-05-06','Lockout policy enforced','sec03','Open','No data accessed','Yes','Yes','TCK003','Monitoring ongoing','2023-05-05');

-- Grant Funding Allocation
CREATE TABLE `grant_funding_allocation` (
  `allocation_id` TEXT NOT NULL,
  `grant_id` TEXT,
  `fiscal_year` TEXT,
  `allocated_amount` TEXT,
  `spent_amount` TEXT,
  `remaining_balance` TEXT,
  `allocation_date` TEXT,
  `approving_officer` TEXT,
  `purpose_category` TEXT,
  `project_code` TEXT,
  `cost_center` TEXT,
  `funding_source` TEXT,
  `currency` TEXT,
  `exchange_rate` TEXT,
  `notes` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  `audit_trail` TEXT,
  `fund_disbursement_method` TEXT,
  `compliance_status` TEXT,
  PRIMARY KEY (`allocation_id`)
);
INSERT INTO `grant_funding_allocation` VALUES ('alloc001','gr001','2023','500000','150000','350000','2023-01-15','officer01','Equipment','PRJ001','CC100','Federal','USD','1.0','Initial allocation','2023-01-15','2023-06-30','audit001','BankTransfer','Compliant');
INSERT INTO `grant_funding_allocation` VALUES ('alloc002','gr001','2024','300000','50000','250000','2023-12-01','officer02','Personnel','PRJ002','CC101','Federal','USD','1.0','Second year allocation','2023-12-01','2024-06-30','audit002','Check','Compliant');
INSERT INTO `grant_funding_allocation` VALUES ('alloc003','gr002','2023','200000','20000','180000','2023-02-20','officer03','Travel','PRJ003','CC102','State','USD','1.0','Conference travel funds','2023-02-20','2023-08-15','audit003','CreditCard','Compliant');