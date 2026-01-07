-- Instrument Logistics: tracking shipment and storage of laboratory instruments
CREATE TABLE `instrument_logistics` (
  `log_id` TEXT NOT NULL,
  `instrument_id` TEXT NOT NULL,
  `shipment_date` TEXT,
  `arrival_date` TEXT,
  `carrier` TEXT,
  `tracking_number` TEXT,
  `origin_address` TEXT,
  `destination_address` TEXT,
  `temperature_control` TEXT,
  `humidity_control` TEXT,
  `customs_clearance` TEXT,
  `insurance_policy` TEXT,
  `handling_instructions` TEXT,
  `status` TEXT,
  `receive_by` TEXT,
  `inspection_status` TEXT,
  `damage_report` TEXT,
  `weight_kg` REAL,
  `volume_cbm` REAL,
  `crate_id` TEXT,
  `last_updated` TEXT,
  PRIMARY KEY (`log_id`)
);
INSERT INTO `instrument_logistics` VALUES ('LOG001','INST100','2024-03-01','2024-03-05','FastShip','TRK12345','123 Origin Rd','Lab Building A','Yes','No','Cleared','POL567','Handle with care','Delivered','John Doe','Passed','None',12.5,0.03,'CRATE7','2024-03-06');
INSERT INTO `instrument_logistics` VALUES ('LOG002','INST101','2024-04-10','2024-04-12','QuickTransit','TRK67890','456 Source St','Lab Building B','No','Yes','Pending','POL890','Keep upright','InTransit','Jane Smith','Pending','None',8.2,0.02,'CRATE3','2024-04-13');
INSERT INTO `instrument_logistics` VALUES ('LOG003','INST102','2024-05-15','2024-05-18','ShipFast','TRK24680','789 Depot Ave','Lab Building C','Yes','Yes','Cleared','POL135','No shock','Delivered','Mike Lee','Passed','Scratch on side',15.0,0.04,'CRATE9','2024-05-19');

-- Computational Resource Pool: inventory of servers and GPUs for data processing
CREATE TABLE `computational_resource_pool` (
  `resource_id` TEXT NOT NULL,
  `cpu_cores` INTEGER,
  `gpu_count` INTEGER,
  `ram_gb` INTEGER,
  `storage_tb` REAL,
  `network_gbps` REAL,
  `os` TEXT,
  `virtualization_type` TEXT,
  `allocated_to` TEXT,
  `allocation_start` TEXT,
  `allocation_end` TEXT,
  `power_usage_kw` REAL,
  `rack_location` TEXT,
  `maintenance_window` TEXT,
  `status` TEXT,
  `last_audit` TEXT,
  `ip_address` TEXT,
  `mac_address` TEXT,
  `support_contact` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`resource_id`)
);
INSERT INTO `computational_resource_pool` VALUES ('RES001',32,4,256,8.0,10.0,'Linux','KVM','ProjectA','2024-01-01','2024-12-31',2.5,'Rack12U','Sundays 02:00-04:00','Active','2024-03-10','10.0.0.5','AA:BB:CC:DD:EE:01','HighPerformanceNode');
INSERT INTO `computational_resource_pool` VALUES ('RES002',24,2,128,4.0,1.0,'Windows','Hyper-V','ProjectB','2024-02-15','2025-02-14',1.8,'Rack8U','Saturdays 01:00-03:00','Active','2024-04-05','10.0.0.6','AA:BB:CC:DD:EE:02','GeneralPurposeNode');
INSERT INTO `computational_resource_pool` VALUES ('RES003',48,8,512,16.0,40.0,'Linux','Docker','ProjectC','2024-03-20','2026-03-19',3.2,'Rack20U','Fridays 03:00-05:00','Maintenance','2024-05-12','10.0.0.7','AA:BB:CC:DD:EE:03','GPUAcceleratedCluster');

-- Field Study Site: metadata for outdoor experimental locations
CREATE TABLE `field_study_site` (
  `site_id` TEXT NOT NULL,
  `site_name` TEXT,
  `latitude` REAL,
  `longitude` REAL,
  `elevation_m` REAL,
  `climate_zone` TEXT,
  `land_owner` TEXT,
  `access_permission` TEXT,
  `nearest_town` TEXT,
  `field_contact` TEXT,
  `start_date` TEXT,
  `end_date` TEXT,
  `soil_type` TEXT,
  `vegetation_type` TEXT,
  `water_source` TEXT,
  `permit_number` TEXT,
  `risk_level` TEXT,
  `notes` TEXT,
  `gps_accuracy_m` REAL,
  `surveyor` TEXT,
  `last_updated` TEXT,
  PRIMARY KEY (`site_id`)
);
INSERT INTO `field_study_site` VALUES ('SITE001','River Valley',45.1234,-122.5678,210,'Temperate','StateAgency','Granted','RiverTown','Alice Green','2024-06-01','2024-09-30','Loam','MixedForest','Stream','PERM123','Medium','Site used for plant phenology study',1.5,'Bob Surveyor','2024-05-20');
INSERT INTO `field_study_site` VALUES ('SITE002','Desert Ridge',33.9876,-115.4321,500,'Arid','PrivateOwner','Pending','DustCity','Carlos Ruiz','2024-07-15','2024-10-15','Sandy','Shrubland','Well','PERM456','High','Requires additional safety measures',3.0,'Dana Mapper','2024-06-30');
INSERT INTO `field_study_site` VALUES ('SITE003','Highland Plateau',60.5432,-150.3210,1500,'Boreal','University','Granted','SnowVille','Emily Zhao','2024-08-01','2025-01-31','Peaty','Coniferous','Lake','PERM789','Low','Long term climate monitoring',0.8,'Frank Geo','2024-07-25');

-- Clinical Trial Registry: records of biomedical studies
CREATE TABLE `clinical_trial_registry` (
  `trial_id` TEXT NOT NULL,
  `title` TEXT,
  `phase` TEXT,
  `therapeutic_area` TEXT,
  `sponsor` TEXT,
  `principal_investigator` TEXT,
  `start_date` TEXT,
  `end_date` TEXT,
  `enrollment_target` INTEGER,
  `enrollment_actual` INTEGER,
  `site_count` INTEGER,
  `randomization_method` TEXT,
  `blinding` TEXT,
  `primary_endpoint` TEXT,
  `secondary_endpoint` TEXT,
  `status` TEXT,
  `registration_number` TEXT,
  `regulatory_body` TEXT,
  `data_sharing_policy` TEXT,
  `ethics_approval_id` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`trial_id`)
);
INSERT INTO `clinical_trial_registry` VALUES ('TR001','Novel Antibody Therapy','Phase2','Oncology','PharmaCo','DrSmith','2024-01-15','2025-01-14',150,80,5,'BlockRandom','DoubleBlind','TumorReduction','SurvivalRate','Active','NCT0123456','FDA','Open','ETH001','Interim analysis pending');
INSERT INTO `clinical_trial_registry` VALUES ('TR002','Vaccine Efficacy Study','Phase3','Infectious Disease','HealthOrg','2024-03-01','2026-02-28',3000,1200,12,'Stratified','SingleBlind','InfectionRate','AntibodyTiter','Recruiting','NCT0654321','EMA','Restricted','ETH002','Enrollment expanding');
INSERT INTO `clinical_trial_registry` VALUES ('TR003','Gene Editing Trial','Phase1','Genetic Disorders','BioTech','2024-05-20','2025-05-19',30,10,2,'Simple','OpenLabel','Safety','OffTargetEffects','Pending','NCT0987654','HealthCanada','Closed','ETH003','Safety monitoring committee formed');

-- Patent Application: intellectual property submissions
CREATE TABLE `patent_application` (
  `patent_id` TEXT NOT NULL,
  `title` TEXT,
  `applicant` TEXT,
  `inventor` TEXT,
  `filing_date` TEXT,
  `publication_date` TEXT,
  `status` TEXT,
  `jurisdiction` TEXT,
  `priority_date` TEXT,
  `patent_family_id` TEXT,
  `abstract` TEXT,
  `claims_count` INTEGER,
  `examiner` TEXT,
  `attorney` TEXT,
  `fee_paid` TEXT,
  `last_action_date` TEXT,
  `classification_code` TEXT,
  `technology_area` TEXT,
  `related_project_id` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`patent_id`)
);
INSERT INTO `patent_application` VALUES ('PAT001','Self‑Cleaning Surface','InnovateLabs','DrLee','2024-02-10','2024-08-15','Pending','US','2024-02-10','FAM1001','A surface that repels contaminants','12','EX123','ATY456','Yes','2024-07-01','A01B','MaterialsScience','PROJ900','Awaiting examiner assignment');
INSERT INTO `patent_application` VALUES ('PAT002','AI‑Driven Diagnostic Tool','MediTech','DrPatel','2024-03-05','2024-09-20','Pending','EU','2024-03-05','FAM2002','System for automated disease detection','20','EX456','ATY789','Yes','2024-08-10','G06F','HealthInformatics','PROJ901','Clinical trial data integration needed');
INSERT INTO `patent_application` VALUES ('PAT003','Modular Battery Pack','EnergySolutions','DrKim','2024-04-12','2024-10-30','Pending','JP','2024-04-12','FAM3003','Reusable battery module for electric vehicles','15','EX789','ATY012','No','2024-09-15','H01M','EnergyStorage','PROJ902','Fee payment scheduled');

-- Conference Attendance: records of researcher participation in events
CREATE TABLE `conference_attendance` (
  `attendance_id` TEXT NOT NULL,
  `conference_name` TEXT,
  `year` INTEGER,
  `location` TEXT,
  `start_date` TEXT,
  `end_date` TEXT,
  `participant_id` TEXT,
  `role` TEXT,
  `presentation_title` TEXT,
  `session` TEXT,
  `travel_method` TEXT,
  `accommodation` TEXT,
  `registration_fee` REAL,
  `funding_source` TEXT,
  `sponsorship_level` TEXT,
  `abstract_submitted` TEXT,
  `award_received` TEXT,
  `notes` TEXT,
  `contact_email` TEXT,
  `linkedin_profile` TEXT,
  `last_updated` TEXT,
  PRIMARY KEY (`attendance_id`)
);
INSERT INTO `conference_attendance` VALUES ('CONF001','International Chemistry Summit',2024,'Berlin','2024-06-10','2024-06-14','RES123','Speaker','Catalyst Design Advances','SessionA','Flight','HotelGrand','850.00','GrantA','Gold','Yes','BestPoster','Presented to mixed audience','alice.green@lab.edu','linkedin.com/in/alicegreen','2024-05-20');
INSERT INTO `conference_attendance` VALUES ('CONF002','Bioinformatics Workshop',2024,'Tokyo','2024-07-05','2024-07-07','RES124','Attendee','','SessionB','Train','HostelPlus','300.00','DepartmentBudget','Silver','No','None','Networking opportunity','bob.lee@lab.edu','linkedin.com/in/boblee','2024-06-15');
INSERT INTO `conference_attendance` VALUES ('CONF003','Materials Science Expo',2024,'Toronto','2024-09-20','2024-09-23','RES125','Poster','Nanocomposite Fabrication','SessionC','Car','Airbnb','450.00','IndustryPartner','Bronze','Yes','AwardNominated','Plan follow‑up collaborations','carla.martin@lab.edu','linkedin.com/in/carlamartin','2024-08-30');

-- Software License Inventory: tracking of purchased software and allocations
CREATE TABLE `software_license_inventory` (
  `license_id` TEXT NOT NULL,
  `software_name` TEXT,
  `version` TEXT,
  `vendor` TEXT,
  `license_type` TEXT,
  `seat_count` INTEGER,
  `allocated_to` TEXT,
  `purchase_date` TEXT,
  `expiry_date` TEXT,
  `cost_usd` REAL,
  `maintenance_contract` TEXT,
  `support_contact` TEXT,
  `license_key` TEXT,
  `serial_number` TEXT,
  `department` TEXT,
  `compliance_status` TEXT,
  `last_audit` TEXT,
  `notes` TEXT,
  `download_url` TEXT,
  `platform` TEXT,
  `assigned_user` TEXT,
  PRIMARY KEY (`license_id`)
);
INSERT INTO `software_license_inventory` VALUES ('LIC001','DataAnalyzer','3.2','TechSoft','Perpetual',25,'DeptA','2023-01-15','2028-01-14','2500.00','Yes','support@techsoft.com','KEY-ABC-123','SN001','Analytics','Compliant','2024-04-01','Main analysis tool','https://download.techsoft.com/dataanalyzer','Windows','jdoe');
INSERT INTO `software_license_inventory` VALUES ('LIC002','MolSim','5.0','ChemComp','Subscription',10,'DeptB','2024-02-20','2025-02-19','1800.00','Yes','support@chemcomp.com','KEY-DEF-456','SN002','Chemistry','Compliant','2024-04-10','Molecular modeling','https://files.chemcomp.com/molsim','Linux','asmith');
INSERT INTO `software_license_inventory` VALUES ('LIC003','StatSuite','2.8','StatCorp','Perpetual',40,'DeptC','2022-11-05','2027-11-04','3200.00','No','support@statcorp.com','KEY-GHI-789','SN003','Statistics','NonCompliant','2024-03-20','Pending renewal','https://statcorp.com/statsuite','MacOS','bwilson');

-- Disaster Recovery Plan: documentation of recovery strategies for critical systems
CREATE TABLE `disaster_recovery_plan` (
  `drp_id` TEXT NOT NULL,
  `plan_name` TEXT,
  `scope` TEXT,
  `owner_department` TEXT,
  `creation_date` TEXT,
  `last_review_date` TEXT,
  `recovery_time_objective_hr` REAL,
  `recovery_point_objective_min` INTEGER,
  `critical_systems` TEXT,
  `backup_location` TEXT,
  `cloud_provider` TEXT,
  `contact_primary` TEXT,
  `contact_alternate` TEXT,
  `escalation_path` TEXT,
  `testing_frequency_months` INTEGER,
  `last_test_date` TEXT,
  `issues_found` TEXT,
  `mitigation_actions` TEXT,
  `notes` TEXT,
  `status` TEXT,
  PRIMARY KEY (`drp_id`)
);
INSERT INTO `disaster_recovery_plan` VALUES ('DRP001','Lab Data Services','Enterprise','IT','2023-05-01','2024-03-15',4.0,30,'LIMS, DataWarehouse','OffsiteVault','CloudX','anna.k@lab.edu','bob.l@lab.edu','IT Manager > CIO','6','2024-02-20','None','N/A','Plan approved by management','Active');
INSERT INTO `disaster_recovery_plan` VALUES ('DRP002','Instrument Control Systems','Facility','Engineering','2023-08-10','2024-04-01',8.0,60,'PLCNetwork, SCADA','ColdStorage','CloudY','carol.m@lab.edu','dave.n@lab.edu','Engineering Lead > CFO','12','2024-03-10','Backup delay','Increase bandwidth','Pending budget review','Active');
INSERT INTO `disaster_recovery_plan` VALUES ('DRP003','Researcher Communication','Department','Administration','2024-01-20','2024-04-20',2.0,15,'EmailServer, VoIP','RemoteDataCenter','CloudZ','eve.o@lab.edu','frank.p@lab.edu','Admin Director > CEO','3','2024-04-05','Sync errors','Patch servers','Reviewed quarterly','Active');

-- Quality Control Checklist: standardized QC steps for laboratory processes
CREATE TABLE `quality_control_checklist` (
  `qc_id` TEXT NOT NULL,
  `process_name` TEXT,
  `step_number` INTEGER,
  `description` TEXT,
  `responsible_role` TEXT,
  `required_documents` TEXT,
  `acceptance_criteria` TEXT,
  `measurement_method` TEXT,
  `tolerance` TEXT,
  `equipment_needed` TEXT,
  `timestamp` TEXT,
  `verified_by` TEXT,
  `verification_status` TEXT,
  `corrective_action_needed` TEXT,
  `corrective_action_owner` TEXT,
  `due_date` TEXT,
  `comments` TEXT,
  `version` TEXT,
  `last_updated` TEXT,
  `archive_flag` TEXT,
  PRIMARY KEY (`qc_id`,`step_number`)
);
INSERT INTO `quality_control_checklist` VALUES ('QC001','Sample Preparation',1,'Weigh 10 mg of powder','LabTech','WeighingLog','±0.1 mg','AnalyticalBalance','±0.1 mg','Balance Model X','2024-04-10 09:15','John Doe','Pass','No','N/A','2024-04-15','All good','v1.0','2024-04-10','N');
INSERT INTO `quality_control_checklist` VALUES ('QC001','Sample Preparation',2,'Dissolve in 1 mL solvent','LabTech','DissolutionLog','Clear solution','VisualInspection','No particles','Vortex Mixer','2024-04-10 09:30','Jane Smith','Pass','No','N/A','2024-04-15','Solution clear','v1.0','2024-04-10','N');
INSERT INTO `quality_control_checklist` VALUES ('QC001','Sample Preparation',3,'Filter through 0.22 µm filter','LabTech','FilterRecord','No clogging','PressureDrop','<5 kPa','Filter Unit','2024-04-10 09:45','Mike Lee','Pass','No','N/A','2024-04-15','Filter intact','v1.0','2024-04-10','N');

-- Ethics Review Board: membership and meeting records for ethical oversight
CREATE TABLE `ethics_review_board` (
  `erb_id` TEXT NOT NULL,
  `board_name` TEXT,
  `member_id` TEXT,
  `member_name` TEXT,
  `affiliation` TEXT,
  `role` TEXT,
  `term_start` TEXT,
  `term_end` TEXT,
  `expertise_area` TEXT,
  `conflict_of_interest` TEXT,
  `meeting_frequency` TEXT,
  `last_meeting_date` TEXT,
  `upcoming_meeting_date` TEXT,
  `decisions_made` INTEGER,
  `protocols_reviewed` INTEGER,
  `notes` TEXT,
  `contact_email` TEXT,
  `phone_number` TEXT,
  `office_location` TEXT,
  `status` TEXT,
  PRIMARY KEY (`erb_id`,`member_id`)
);
INSERT INTO `ethics_review_board` VALUES ('ERB001','Institutional Review Board','M001','DrAnna White','University','Chair','2022-01-01','2025-12-31','ClinicalTrials','None','Quarterly','2024-03-15','2024-06-15',12,45,'Board functioning well','anna.white@univ.edu','555-0100','Room 101','Active');
INSERT INTO `ethics_review_board` VALUES ('ERB001','Institutional Review Board','M002','ProfBob Black','Medical Center','Member','2022-01-01','2025-12-31','Bioethics','Consulting for biotech','Quarterly','2024-03-15','2024-06-15',12,45,'No conflicts reported','bob.black@medcenter.org','555-0101','Room 102','Active');
INSERT INTO `ethics_review_board` VALUES ('ERB001','Institutional Review Board','M003','DrCarol Green','Research Institute','Member','2022-01-01','2025-12-31','Genetics','Industry sponsorship','Quarterly','2024-03-15','2024-06-15',12,45,'Reviewed new gene therapy protocol','carol.green@research.org','555-0102','Room 103','Active');