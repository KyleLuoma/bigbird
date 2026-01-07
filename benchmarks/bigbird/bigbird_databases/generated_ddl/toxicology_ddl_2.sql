-- Environmental monitoring data captured from sensors
CREATE TABLE `environmental_monitoring` (
  `record_id` TEXT NOT NULL,
  `sensor_id` TEXT,
  `location` TEXT,
  `temperature_c` REAL,
  `humidity_pct` REAL,
  `co2_ppm` REAL,
  `voc_ppb` REAL,
  `pressure_kpa` REAL,
  `light_lux` REAL,
  `noise_db` REAL,
  `timestamp` TEXT,
  `battery_level_pct` INTEGER,
  `signal_strength` INTEGER,
  `sensor_status` TEXT,
  `calibration_date` TEXT,
  `maintenance_due` TEXT,
  `operator_id` TEXT,
  `notes` TEXT,
  `firmware_version` TEXT,
  `data_quality_flag` TEXT,
  PRIMARY KEY (`record_id`)
);

INSERT INTO `environmental_monitoring` (`record_id`,`sensor_id`,`location`,`temperature_c`,`humidity_pct`,`co2_ppm`,`voc_ppb`,`pressure_kpa`,`light_lux`,`noise_db`,`timestamp`,`battery_level_pct`,`signal_strength`,`sensor_status`,`calibration_date`,`maintenance_due`,`operator_id`,`notes`,`firmware_version`,`data_quality_flag`) VALUES ('EM001','SEN01','LabA',22.5,45.2,400,150,101.3,300,45,'2025-01-01T08:00:00',95,80,'OK','2024-12-01','2025-06-01','OP100','Routine','v1.2','GOOD');
INSERT INTO `environmental_monitoring` (`record_id`,`sensor_id`,`location`,`temperature_c`,`humidity_pct`,`co2_ppm`,`voc_ppb`,`pressure_kpa`,`light_lux`,`noise_db`,`timestamp`,`battery_level_pct`,`signal_strength`,`sensor_status`,`calibration_date`,`maintenance_due`,`operator_id`,`notes`,`firmware_version`,`data_quality_flag`) VALUES ('EM002','SEN02','LabB',19.8,50.1,420,130,101.0,250,40,'2025-01-01T09:15:00',88,75,'OK','2024-11-20','2025-05-20','OP101','Checked','v1.2','GOOD');
INSERT INTO `environmental_monitoring` (`record_id`,`sensor_id`,`location`,`temperature_c`,`humidity_pct`,`co2_ppm`,`voc_ppb`,`pressure_kpa`,`light_lux`,`noise_db`,`timestamp`,`battery_level_pct`,`signal_strength`,`sensor_status`,`calibration_date`,`maintenance_due`,`operator_id`,`notes`,`firmware_version`,`data_quality_flag`) VALUES ('EM003','SEN03','Storage',18.3,55.0,380,120,100.8,0,35,'2025-01-01T10:30:00',92,78,'OK','2024-12-10','2025-06-10','OP102','No issues','v1.2','GOOD');

-- Inventory of biological and chemical samples
CREATE TABLE `sample_inventory` (
  `sample_id` TEXT NOT NULL,
  `sample_type` TEXT,
  `collection_date` TEXT,
  `origin` TEXT,
  `volume_ml` REAL,
  `concentration_mgml` REAL,
  `storage_location` TEXT,
  `temperature_c` REAL,
  `status` TEXT,
  `assigned_project` TEXT,
  `owner_researcher_id` TEXT,
  `expiry_date` TEXT,
  `hazard_level` TEXT,
  `barcode` TEXT,
  `qc_passed` TEXT,
  `qc_date` TEXT,
  `lot_number` TEXT,
  `supplier` TEXT,
  `notes` TEXT,
  `last_accessed` TEXT,
  PRIMARY KEY (`sample_id`)
);

INSERT INTO `sample_inventory` (`sample_id`,`sample_type`,`collection_date`,`origin`,`volume_ml`,`concentration_mgml`,`storage_location`,`temperature_c`,`status`,`assigned_project`,`owner_researcher_id`,`expiry_date`,`hazard_level`,`barcode`,`qc_passed`,`qc_date`,`lot_number`,`supplier`,`notes`,`last_accessed`) VALUES ('SMP001','Plasma','2024-11-15','PatientA',2.5,0.8,'Freezer1',-80,'Available','ProjX','R001','2026-11-15','Medium','BC12345','Yes','2024-12-01','LN001','BioSup','Initial deposit','2025-01-02');
INSERT INTO `sample_inventory` (`sample_id`,`sample_type`,`collection_date`,`origin`,`volume_ml`,`concentration_mgml`,`storage_location`,`temperature_c`,`status`,`assigned_project`,`owner_researcher_id`,`expiry_date`,`hazard_level`,`barcode`,`qc_passed`,`qc_date`,`lot_number`,`supplier`,`notes`,`last_accessed`) VALUES ('SMP002','Buffer','2024-10-20','VendorB',500,0.0,'Pantry','22','InUse','ProjY','R002','2025-12-20','Low','BC12346','Yes','2024-11-01','LN002','ChemCo','Prepared for assay','2025-01-03');
INSERT INTO `sample_inventory` (`sample_id`,`sample_type`,`collection_date`,`origin`,`volume_ml`,`concentration_mgml`,`storage_location`,`temperature_c`,`status`,`assigned_project`,`owner_researcher_id`,`expiry_date`,`hazard_level`,`barcode`,`qc_passed`,`qc_date`,`lot_number`,`supplier`,`notes`,`last_accessed`) VALUES ('SMP003','DNA','2024-09-05','CellLineC',0.2,5.0,'Freezer2',-80,'Quarantined','ProjZ','R003','2027-09-05','High','BC12347','No','2024-09-10','LN003','GenomicsInc','Pending QC','2025-01-04');

-- Results from various assay runs
CREATE TABLE `assay_result` (
  `result_id` TEXT NOT NULL,
  `assay_name` TEXT,
  `run_date` TEXT,
  `sample_id` TEXT,
  `operator_id` TEXT,
  `instrument_id` TEXT,
  `raw_signal` REAL,
  `processed_signal` REAL,
  `calibration_factor` REAL,
  `units` TEXT,
  `pass_fail` TEXT,
  `qc_flag` TEXT,
  `replicate_number` INTEGER,
  `analysis_software` TEXT,
  `software_version` TEXT,
  `threshold_value` REAL,
  `background_subtracted` REAL,
  `comments` TEXT,
  `reviewer_id` TEXT,
  `review_date` TEXT,
  PRIMARY KEY (`result_id`)
);

INSERT INTO `assay_result` (`result_id`,`assay_name`,`run_date`,`sample_id`,`operator_id`,`instrument_id`,`raw_signal`,`processed_signal`,`calibration_factor`,`units`,`pass_fail`,`qc_flag`,`replicate_number`,`analysis_software`,`software_version`,`threshold_value`,`background_subtracted`,`comments`,`reviewer_id`,`review_date`) VALUES ('AR001','ELISA','2025-01-01','SMP001','OP100','INST01',1200.5,1150.2,1.05,'AU','PASS','OK',1,'AssaySoft','3.1',1000,150.3','No issues','R010','2025-01-02');
INSERT INTO `assay_result` (`result_id`,`assay_name`,`run_date`,`sample_id`,`operator_id`,`instrument_id`,`raw_signal`,`processed_signal`,`calibration_factor`,`units`,`pass_fail`,`qc_flag`,`replicate_number`,`analysis_software`,`software_version`,`threshold_value`,`background_subtracted`,`comments`,`reviewer_id`,`review_date`) VALUES ('AR002','PCR','2025-01-02','SMP003','OP101','INST02',45.7,44.9,0.98,'Ct','FAIL','WARN',1,'PCRSuite','2.4',30,15.7','Low yield','R011','2025-01-03');
INSERT INTO `assay_result` (`result_id`,`assay_name`,`run_date`,`sample_id`,`operator_id`,`instrument_id`,`raw_signal`,`processed_signal`,`calibration_factor`,`units`,`pass_fail`,`qc_flag`,`replicate_number`,`analysis_software`,`software_version`,`threshold_value`,`background_subtracted`,`comments`,`reviewer_id`,`review_date`) VALUES ('AR003','MassSpec','2025-01-03','SMP002','OP102','INST03',3500,3400,1.02,'m/z','PASS','OK',2,'SpecAnalyser','5.0',3000,500','Clear spectrum','R012','2025-01-04');

-- Log of equipment usage by staff
CREATE TABLE `equipment_usage_log` (
  `usage_id` TEXT NOT NULL,
  `equipment_id` TEXT,
  `user_id` TEXT,
  `start_time` TEXT,
  `end_time` TEXT,
  `purpose` TEXT,
  `project_code` TEXT,
  `run_parameters` TEXT,
  `data_path` TEXT,
  `comments` TEXT,
  `supervisor_approval` TEXT,
  `approval_time` TEXT,
  `maintenance_flag` TEXT,
  `error_code` TEXT,
  `temperature_setpoint` REAL,
  `humidity_setpoint` REAL,
  `software_version` TEXT,
  `license_key` TEXT,
  `location` TEXT,
  `log_timestamp` TEXT,
  PRIMARY KEY (`usage_id`)
);

INSERT INTO `equipment_usage_log` (`usage_id`,`equipment_id`,`user_id`,`start_time`,`end_time`,`purpose`,`project_code`,`run_parameters`,`data_path`,`comments`,`supervisor_approval`,`approval_time`,`maintenance_flag`,`error_code`,`temperature_setpoint`,`humidity_setpoint`,`software_version`,`license_key`,`location`,`log_timestamp`) VALUES ('UL001','EQ001','OP100','2025-01-01 08:00','2025-01-01 10:00','DNA extraction','ProjX','ParamA','/data/run1','No issues','Yes','2025-01-01 07:45','No','None',22,45,'v2.3','LIC123','LabA','2025-01-01 10:05');
INSERT INTO `equipment_usage_log` (`usage_id`,`equipment_id`,`user_id`,`start_time`,`end_time`,`purpose`,`project_code`,`run_parameters`,`data_path`,`comments`,`supervisor_approval`,`approval_time`,`maintenance_flag`,`error_code`,`temperature_setpoint`,`humidity_setpoint`,`software_version`,`license_key`,`location`,`log_timestamp`) VALUES ('UL002','EQ002','OP101','2025-01-02 09:30','2025-01-02 12:15','Spectroscopy','ProjY','ParamB','/data/run2','Slight drift','Yes','2025-01-02 09:15','Yes','E101',20,40,'v1.9','LIC124','LabB','2025-01-02 12:20');
INSERT INTO `equipment_usage_log` (`usage_id`,`equipment_id`,`user_id`,`start_time`,`end_time`,`purpose`,`project_code`,`run_parameters`,`data_path`,`comments`,`supervisor_approval`,`approval_time`,`maintenance_flag`,`error_code`,`temperature_setpoint`,`humidity_setpoint`,`software_version`,`license_key`,`location`,`log_timestamp`) VALUES ('UL003','EQ003','OP102','2025-01-03 13:00','2025-01-03 15:30','Cell culture','ProjZ','ParamC','/data/run3','Clean run','Yes','2025-01-03 12:45','No','None',37,55,'v3.0','LIC125','LabC','2025-01-03 15:35');

-- Log of biohazard incidents
CREATE TABLE `biohazard_incident_log` (
  `incident_id` TEXT NOT NULL,
  `date_reported` TEXT,
  `reporter_id` TEXT,
  `hazard_type` TEXT,
  `location` TEXT,
  `exposure_level` TEXT,
  `material_id` TEXT,
  `containment_breach` TEXT,
  `decontamination_method` TEXT,
  `responsible_personnel` TEXT,
  `medical_action_taken` TEXT,
  `follow_up_date` TEXT,
  `status` TEXT,
  `root_cause` TEXT,
  `corrective_action` TEXT,
  `preventive_measures` TEXT,
  `incident_notes` TEXT,
  `reviewer_id` TEXT,
  `review_date` TEXT,
  `log_timestamp` TEXT,
  PRIMARY KEY (`incident_id`)
);

INSERT INTO `biohazard_incident_log` (`incident_id`,`date_reported`,`reporter_id`,`hazard_type`,`location`,`exposure_level`,`material_id`,`containment_breach`,`decontamination_method`,`responsible_personnel`,`medical_action_taken`,`follow_up_date`,`status`,`root_cause`,`corrective_action`,`preventive_measures`,`incident_notes`,`reviewer_id`,`review_date`,`log_timestamp`) VALUES ('BI001','2025-01-01','OP100','Blood','LabA','Low','MAT001','No','Autoclave','OP100','First aid','2025-01-15','Closed','Spill during transfer','Revised SOP','Training refresh','No injury','R010','2025-01-02','2025-01-01 10:00');
INSERT INTO `biohazard_incident_log` (`incident_id`,`date_reported`,`reporter_id`,`hazard_type`,`location`,`exposure_level`,`material_id`,`containment_breach`,`decontamination_method`,`responsible_personnel`,`medical_action_taken`,`follow_up_date`,`status`,`root_cause`,`corrective_action`,`preventive_measures`,`incident_notes`,`reviewer_id`,`review_date`,`log_timestamp`) VALUES ('BI002','2025-01-03','OP101','Aerosol','LabB','Medium','MAT002','Yes','HEPA filtration','OP101','Medical evaluation','2025-01-20','Open','Faulty cabinet','Cabinet repair','Monthly inspection','Symptoms reported','R011','2025-01-04','2025-01-03 14:30');
INSERT INTO `biohazard_incident_log` (`incident_id`,`date_reported`,`reporter_id`,`hazard_type`,`location`,`exposure_level`,`material_id`,`containment_breach`,`decontamination_method`,`responsible_personnel`,`medical_action_taken`,`follow_up_date`,`status`,`root_cause`,`corrective_action`,`preventive_measures`,`incident_notes`,`reviewer_id`,`review_date`,`log_timestamp`) VALUES ('BI003','2025-01-05','OP102','Chemical','LabC','High','MAT003','Yes','Neutralization','OP102','Antidote administered','2025-01-25','Open','Incorrect labeling','Relabel all reagents','Label audit','Severe reaction','R012','2025-01-06','2025-01-05 09:15');

-- Records of procurement orders
CREATE TABLE `procurement_order` (
  `order_id` TEXT NOT NULL,
  `order_date` TEXT,
  `requester_id` TEXT,
  `vendor_id` TEXT,
  `item_description` TEXT,
  `quantity` INTEGER,
  `unit_price` REAL,
  `total_price` REAL,
  `currency` TEXT,
  `delivery_date_expected` TEXT,
  `delivery_date_actual` TEXT,
  `order_status` TEXT,
  `payment_terms` TEXT,
  `approved_by` TEXT,
  `approval_date` TEXT,
  `shipping_method` TEXT,
  `tracking_number` TEXT,
  `receiving_department` TEXT,
  `comments` TEXT,
  `last_modified` TEXT,
  PRIMARY KEY (`order_id`)
);

INSERT INTO `procurement_order` (`order_id`,`order_date`,`requester_id`,`vendor_id`,`item_description`,`quantity`,`unit_price`,`total_price`,`currency`,`delivery_date_expected`,`delivery_date_actual`,`order_status`,`payment_terms`,`approved_by`,`approval_date`,`shipping_method`,`tracking_number`,`receiving_department`,`comments`,`last_modified`) VALUES ('PO001','2024-12-01','OP100','VEND01','Microscope',2,5000,10000,'USD','2025-01-15','2025-01-14','Received','Net30','R010','2024-12-05','Air','TRK12345','Research','Urgent','2025-01-14 11:00');
INSERT INTO `procurement_order` (`order_id`,`order_date`,`requester_id`,`vendor_id`,`item_description`,`quantity`,`unit_price`,`total_price`,`currency`,`delivery_date_expected`,`delivery_date_actual`,`order_status`,`payment_terms`,`approved_by`,`approval_date`,`shipping_method`,`tracking_number`,`receiving_department`,`comments`,`last_modified`) VALUES ('PO002','2024-12-10','OP101','VEND02','Reagents Kit',5,200,1000,'USD','2025-02-01',NULL,'Pending','Net45','R011','2024-12-12','Ground','TRK12346','Chemistry','Check lot numbers','2024-12-12 09:30');
INSERT INTO `procurement_order` (`order_id`,`order_date`,`requester_id`,`vendor_id`,`item_description`,`quantity`,`unit_price`,`total_price`,`currency`,`delivery_date_expected`,`delivery_date_actual`,`order_status`,`payment_terms`,`approved_by`,`approval_date`,`shipping_method`,`tracking_number`,`receiving_department`,`comments`,`last_modified`) VALUES ('PO003','2024-12-20','OP102','VEND03','Safety Gloves',100,1.5,150,'USD','2025-01-05','2025-01-04','Received','Net30','R012','2024-12-22','Air','TRK12347','Safety','Batch 2024','2025-01-04 15:20');

-- Vendor performance metrics
CREATE TABLE `vendor_performance_metrics` (
  `vendor_id` TEXT NOT NULL,
  `evaluation_period` TEXT,
  `on_time_delivery_pct` REAL,
  `quality_score` REAL,
  `cost_variance_pct` REAL,
  `response_time_hours` REAL,
  `incident_count` INTEGER,
  `sustainability_score` REAL,
  `compliance_issues` INTEGER,
  `overall_rating` REAL,
  `notes` TEXT,
  `last_review_date` TEXT,
  `reviewer_id` TEXT,
  `contract_start` TEXT,
  `contract_end` TEXT,
  `preferred_supplier` TEXT,
  `audit_score` REAL,
  `risk_level` TEXT,
  `discount_rate_pct` REAL,
  `payment_history` TEXT,
  PRIMARY KEY (`vendor_id`,`evaluation_period`)
);

INSERT INTO `vendor_performance_metrics` (`vendor_id`,`evaluation_period`,`on_time_delivery_pct`,`quality_score`,`cost_variance_pct`,`response_time_hours`,`incident_count`,`sustainability_score`,`compliance_issues`,`overall_rating`,`notes`,`last_review_date`,`reviewer_id`,`contract_start`,`contract_end`,`preferred_supplier`,`audit_score`,`risk_level`,`discount_rate_pct`,`payment_history`) VALUES ('VEND01','2024Q4',98.5,94.2,1.2,4.5,0,88.0,0,95.0,'Excellent service','2025-01-01','R010','2024-01-01','2026-12-31','Yes',92.0,'Low',5.0,'OnTime');
INSERT INTO `vendor_performance_metrics` (`vendor_id`,`evaluation_period`,`on_time_delivery_pct`,`quality_score`,`cost_variance_pct`,`response_time_hours`,`incident_count`,`sustainability_score`,`compliance_issues`,`overall_rating`,`notes`,`last_review_date`,`reviewer_id`,`contract_start`,`contract_end`,`preferred_supplier`,`audit_score`,`risk_level`,`discount_rate_pct`,`payment_history`) VALUES ('VEND02','2024Q4',85.0,78.5,3.5,12.0,2,70.0,1,80.0,'Needs improvement','2025-01-02','R011','2023-06-01','2025-05-31','No',75.0,'Medium',3.0','Late');
INSERT INTO `vendor_performance_metrics` (`vendor_id`,`evaluation_period`,`on_time_delivery_pct`,`quality_score`,`cost_variance_pct`,`response_time_hours`,`incident_count`,`sustainability_score`,`compliance_issues`,`overall_rating`,`notes`,`last_review_date`,`reviewer_id`,`contract_start`,`contract_end`,`preferred_supplier`,`audit_score`,`risk_level`,`discount_rate_pct`,`payment_history`) VALUES ('VEND03','2024Q4',92.0,88.0,2.0,6.0,1,80.0,0,90.0,'Reliable','2025-01-03','R012','2024-03-15','2027-03-14','Yes',88.0,'Low',4.0','Good');

-- Lab staff shift schedule
CREATE TABLE `lab_staff_shift_schedule` (
  `schedule_id` TEXT NOT NULL,
  `staff_id` TEXT,
  `date` TEXT,
  `shift_start` TEXT,
  `shift_end` TEXT,
  `role` TEXT,
  `location` TEXT,
  `on_call` TEXT,
  `break_start` TEXT,
  `break_end` TEXT,
  `supervisor_id` TEXT,
  `notes` TEXT,
  `approved_by` TEXT,
  `approval_timestamp` TEXT,
  `shift_type` TEXT,
  `hours_worked` REAL,
  `overtime_hours` REAL,
  `training_required` TEXT,
  `certification_status` TEXT,
  `last_updated` TEXT,
  PRIMARY KEY (`schedule_id`)
);

INSERT INTO `lab_staff_shift_schedule` (`schedule_id`,`staff_id`,`date`,`shift_start`,`shift_end`,`role`,`location`,`on_call`,`break_start`,`break_end`,`supervisor_id`,`notes`,`approved_by`,`approval_timestamp`,`shift_type`,`hours_worked`,`overtime_hours`,`training_required`,`certification_status`,`last_updated`) VALUES ('SCH001','R001','2025-01-01','08:00','16:00','Technician','LabA','No','12:00','12:30','R010','Normal day','R010','2024-12-28 09:00','Day',8,0,'No','Valid','2025-01-01 07:55');
INSERT INTO `lab_staff_shift_schedule` (`schedule_id`,`staff_id`,`date`,`shift_start`,`shift_end`,`role`,`location`,`on_call`,`break_start`,`break_end`,`supervisor_id`,`notes`,`approved_by`,`approval_timestamp`,`shift_type`,`hours_worked`,`overtime_hours`,`training_required`,`certification_status`,`last_updated`) VALUES ('SCH002','R002','2025-01-01','16:00','00:00','Researcher','LabB','Yes','20:00','20:30','R011','Evening shift','R011','2024-12-28 10:00','Evening',8,0,'Yes','Expired','2025-01-01 15:55');
INSERT INTO `lab_staff_shift_schedule` (`schedule_id`,`staff_id`,`date`,`shift_start`,`shift_end`,`role`,`location`,`on_call`,`break_start`,`break_end`,`supervisor_id`,`notes`,`approved_by`,`approval_timestamp`,`shift_type`,`hours_worked`,`overtime_hours`,`training_required`,`certification_status`,`last_updated`) VALUES ('SCH003','R003','2025-01-01','00:00','08:00','Analyst','LabC','No','04:00','04:30','R012','Night shift','R012','2024-12-28 11:00','Night',8,0,'No','Valid','2025-01-01 23:55');

-- Audit compliance records
CREATE TABLE `audit_compliance_record` (
  `audit_id` TEXT NOT NULL,
  `audit_date` TEXT,
  `auditor_id` TEXT,
  `department` TEXT,
  `compliance_area` TEXT,
  `findings` TEXT,
  `severity` TEXT,
  `recommendation` TEXT,
  `status` TEXT,
  `deadline` TEXT,
  `responsible_party` TEXT,
  `implementation_date` TEXT,
  `follow_up_date` TEXT,
  `evidence_path` TEXT,
  `overall_score` REAL,
  `notes` TEXT,
  `approved_by` TEXT,
  `approval_date` TEXT,
  `last_modified` TEXT,
  `review_cycle` TEXT,
  PRIMARY KEY (`audit_id`)
);

INSERT INTO `audit_compliance_record` (`audit_id`,`audit_date`,`auditor_id`,`department`,`compliance_area`,`findings`,`severity`,`recommendation`,`status`,`deadline`,`responsible_party`,`implementation_date`,`follow_up_date`,`evidence_path`,`overall_score`,`notes`,`approved_by`,`approval_date`,`last_modified`,`review_cycle`) VALUES ('AU001','2024-12-15','A001','Safety','PPE','Missing goggles','Medium','Provide goggles to all staff','Open','2025-02-01','R010',NULL,NULL','/evidence/au001','85','First audit','R010','2024-12-16','2024-12-16','Annual');
INSERT INTO `audit_compliance_record` (`audit_id`,`audit_date`,`auditor_id`,`department`,`compliance_area`,`findings`,`severity`,`recommendation`,`status`,`deadline`,`responsible_party`,`implementation_date`,`follow_up_date`,`evidence_path`,`overall_score`,`notes`,`approved_by`,`approval_date`,`last_modified`,`review_cycle`) VALUES ('AU002','2024-12-20','A002','Regulatory','Documentation','Incomplete SOPs','High','Update SOPs','Closed','2025-01-10','R011','2025-01-05','2025-01-20','/evidence/au002','78','Follow-up needed','R011','2024-12-21','2024-12-21','Quarterly');
INSERT INTO `audit_compliance_record` (`audit_id`,`audit_date`,`auditor_id`,`department`,`compliance_area`,`findings`,`severity`,`recommendation`,`status`,`deadline`,`responsible_party`,`implementation_date`,`follow_up_date`,`evidence_path`,`overall_score`,`notes`,`approved_by`,`approval_date`,`last_modified`,`review_cycle`) VALUES ('AU003','2024-12-25','A003','Equipment','Calibration','Calibration records missing','Low','Enforce record keeping','Open','2025-03-01','R012',NULL,NULL','/evidence/au003','90','Pending','R012','2024-12-26','2024-12-26','Annual');

-- Data backup registry
CREATE TABLE `data_backup_registry` (
  `backup_id` TEXT NOT NULL,
  `dataset_name` TEXT,
  `backup_date` TEXT,
  `storage_location` TEXT,
  `backup_type` TEXT,
  `size_gb` REAL,
  `initiated_by` TEXT,
  `verification_status` TEXT,
  `retention_policy` TEXT,
  `encryption_method` TEXT,
  `checksum` TEXT,
  `notes` TEXT,
  `approved_by` TEXT,
  `approval_timestamp` TEXT,
  `last_modified` TEXT,
  `backup_frequency` TEXT,
  `duration_minutes` REAL,
  `error_log_path` TEXT,
  `restore_test_date` TEXT,
  `restore_success` TEXT,
  PRIMARY KEY (`backup_id`)
);

INSERT INTO `data_backup_registry` (`backup_id`,`dataset_name`,`backup_date`,`storage_location`,`backup_type`,`size_gb`,`initiated_by`,`verification_status`,`retention_policy`,`encryption_method`,`checksum`,`notes`,`approved_by`,`approval_timestamp`,`last_modified`,`backup_frequency`,`duration_minutes`,`error_log_path`,`restore_test_date`,`restore_success`) VALUES ('BK001','experiment_raw','2025-01-01','NAS01','Full',120.5,'OP100','Verified','2 years','AES256','CHK12345','Nightly backup','R010','2025-01-01 02:00','2025-01-01 02:10','Daily',30,'/logs/bk001_err','2025-01-10','Yes');
INSERT INTO `data_backup_registry` (`backup_id`,`dataset_name`,`backup_date`,`storage_location`,`backup_type`,`size_gb`,`initiated_by`,`verification_status`,`retention_policy`,`encryption_method`,`checksum`,`notes`,`approved_by`,`approval_timestamp`,`last_modified`,`backup_frequency`,`duration_minutes`,`error_log_path`,`restore_test_date`,`restore_success`) VALUES ('BK002','analysis_results','2025-01-02','Cloud01','Incremental',15.2,'OP101','Verified','1 year','AES256','CHK12346','Weekly incremental','R011','2025-01-02 03:00','2025-01-02 03:05','Weekly',10,'/logs/bk002_err','2025-01-12','Yes');
INSERT INTO `data_backup_registry` (`backup_id`,`dataset_name`,`backup_date`,`storage_location`,`backup_type`,`size_gb`,`initiated_by`,`verification_status`,`retention_policy`,`encryption_method`,`checksum`,`notes`,`approved_by`,`approval_timestamp`,`last_modified`,`backup_frequency`,`duration_minutes`,`error_log_path`,`restore_test_date`,`restore_success`) VALUES ('BK003','metadata','2025-01-03','NAS02','Full',5.0,'OP102','Verified','5 years','AES256','CHK12347','Monthly full backup','R012','2025-01-03 01:00','2025-01-03 01:02','Monthly',5,'/logs/bk003_err','2025-01-15','Yes');