-- Log of operations performed by laboratory robotic arms
CREATE TABLE `lab_robotic_arm_log` (
  `log_id` TEXT NOT NULL,
  `arm_id` TEXT,
  `task_type` TEXT,
  `start_time` TEXT,
  `end_time` TEXT,
  `status` TEXT,
  `error_code` TEXT,
  `operator_id` TEXT,
  `firmware_version` TEXT,
  `calibration_date` TEXT,
  `speed_setting` REAL,
  `torque_setting` REAL,
  `grip_force` REAL,
  `motion_profile` TEXT,
  `temperature` REAL,
  `humidity` REAL,
  `power_consumption` REAL,
  `maintenance_flag` INTEGER,
  `notes` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  `batch_id` TEXT,
  PRIMARY KEY (`log_id`)
);
INSERT INTO `lab_robotic_arm_log` VALUES ('LOG001','ARM01','SampleTransfer','2025-01-01T08:00:00','2025-01-01T08:05:00','COMPLETED','0','OP001','v1.2','2024-12-15',1.2,0.8,5.0,'Linear',22.5,45.0,150.0,0,'No issues','2025-01-01','2025-01-01','BATCHA');
INSERT INTO `lab_robotic_arm_log` VALUES ('LOG002','ARM02','PlateStack','2025-01-02T09:30:00','2025-01-02T09:45:00','FAILED','E101','OP002','v1.3','2024-12-20',0.9,0.6,4.5,'Arc',23.0,44.0,140.0,1,'Grip failure','2025-01-02','2025-01-02','BATCHB');
INSERT INTO `lab_robotic_arm_log` VALUES ('LOG003','ARM01','ReagentDispense','2025-01-03T10:15:00','2025-01-03T10:20:00','COMPLETED','0','OP003','v1.2','2024-12-15',1.0,0.7,5.2,'Linear',22.8,46.0,152.0,0,'','2025-01-03','2025-01-03','BATCHC');

-- Simulation runs of chemical processes
CREATE TABLE `chemical_process_simulation` (
  `simulation_id` TEXT NOT NULL,
  `process_name` TEXT,
  `version` TEXT,
  `run_date` TEXT,
  `duration_seconds` INTEGER,
  `temperature_setpoint` REAL,
  `pressure_setpoint` REAL,
  `reactant_a_conc` REAL,
  `reactant_b_conc` REAL,
  `catalyst_loading` REAL,
  `solvent_type` TEXT,
  `mixing_speed_rpm` REAL,
  `pH_initial` REAL,
  `pH_target` REAL,
  `energy_consumption_kwh` REAL,
  `emission_co2_kg` REAL,
  `simulation_status` TEXT,
  `error_message` TEXT,
  `created_by` TEXT,
  `validated_by` TEXT,
  `validation_date` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`simulation_id`)
);
INSERT INTO `chemical_process_simulation` VALUES ('SIM001','PolymerSynthesis','v2.0','2025-01-05',7200,150.0,5.0,0.8,0.4,0.05,'Water',300.0,7.0,8.0,12.5,0.8,'COMPLETED','', 'USR001','VAL001','2025-01-06','Initial run');
INSERT INTO `chemical_process_simulation` VALUES ('SIM002','DrugFormulation','v1.4','2025-01-06',5400,95.0,1.2,0.6,0.3,0.02,'Ethanol',250.0,6.5,7.5,9.8,0.6,'FAILED','Convergence error','USR002','VAL002','2025-01-07','Adjusted parameters');
INSERT INTO `chemical_process_simulation` VALUES ('SIM003','CatalystScreening','v3.1','2025-01-07',3600,200.0,10.0,1.0,0.5,0.10,'Acetone',350.0,8.0,9.0,15.0,1.0,'COMPLETED','', 'USR003','VAL003','2025-01-08','High yield observed');

-- Metadata for nanoparticle characterization experiments
CREATE TABLE `nanoparticle_characterization_meta` (
  `char_id` TEXT NOT NULL,
  `nanoparticle_id` TEXT,
  `technique` TEXT,
  `operator` TEXT,
  `instrument_id` TEXT,
  `run_date` TEXT,
  `sample_preparation` TEXT,
  `concentration_mg_per_ml` REAL,
  `solvent` TEXT,
  `temperature_c` REAL,
  `humidity_percent` REAL,
  `acquisition_time_sec` REAL,
  `data_path` TEXT,
  `analysis_software` TEXT,
  `software_version` TEXT,
  `quality_flag` INTEGER,
  `notes` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  `reviewer` TEXT,
  PRIMARY KEY (`char_id`)
);
INSERT INTO `nanoparticle_characterization_meta` VALUES ('CH001','NP001','TEM','OP001','INS001','2025-01-09','DropCast','5.0','Water',25.0,40.0,600,'/data/np001','ImageJ','1.53',1,'','2025-01-09','2025-01-09','REV001');
INSERT INTO `nanoparticle_characterization_meta` VALUES ('CH002','NP002','DLS','OP002','INS002','2025-01-10','Filtration','2.5','Ethanol',22.0,35.0,300,'/data/np002','DLSAnalyzer','2.1',0,'High polydispersity','2025-01-10','2025-01-11','REV002');
INSERT INTO `nanoparticle_characterization_meta` VALUES ('CH003','NP003','XRD','OP003','INS003','2025-01-11','PowderMount','10.0','Air',20.0,30.0,900,'/data/np003','XRDSoft','3.0',1,'','2025-01-11','2025-01-11','REV003');

-- Airflow zones within the facility
CREATE TABLE `facility_airflow_zone` (
  `zone_id` TEXT NOT NULL,
  `zone_name` TEXT,
  `floor` INTEGER,
  `wing` TEXT,
  `area_sq_m` REAL,
  `max_air_change_rate` REAL,
  `current_air_change_rate` REAL,
  `temperature_setpoint` REAL,
  `humidity_setpoint` REAL,
  `pressure_diff_pa` REAL,
  `filter_type` TEXT,
  `filter_efficiency_percent` REAL,
  `ventilation_mode` TEXT,
  `last_maintenance_date` TEXT,
  `next_service_due` TEXT,
  `status` TEXT,
  `alarm_state` INTEGER,
  `notes` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  `sensor_id` TEXT,
  `controller_id` TEXT,
  PRIMARY KEY (`zone_id`)
);
INSERT INTO `facility_airflow_zone` VALUES ('ZONE01','MainLabA','1','North','120.0','12.0','11.5','22.0','45.0','5','HEPA','99.97','Automatic','2024-12-01','2025-06-01','Active',0,'','2025-01-12','2025-01-12','SEN001','CTRL001');
INSERT INTO `facility_airflow_zone` VALUES ('ZONE02','QuarantineB','2','South','80.0','15.0','14.8','20.0','40.0','3','ULPA','99.999','Automatic','2024-11-15','2025-05-15','Active',0,'','2025-01-13','2025-01-13','SEN002','CTRL002');
INSERT INTO `facility_airflow_zone` VALUES ('ZONE03','ColdRoomC','B1','East','60.0','8.0','7.5','4.0','30.0','2','HEPA','99.97','Manual','2024-10-20','2025-04-20','Maintenance',1,'Filter replacement pending','2025-01-14','2025-01-14','SEN003','CTRL003');

-- Patents associated with researchers
CREATE TABLE `researcher_patent_portfolio` (
  `patent_id` TEXT NOT NULL,
  `researcher_id` TEXT,
  `title` TEXT,
  `application_number` TEXT,
  `filing_date` TEXT,
  `grant_date` TEXT,
  `status` TEXT,
  `jurisdiction` TEXT,
  `technology_area` TEXT,
  `priority_country` TEXT,
  `priority_date` TEXT,
  `inventor_order` INTEGER,
  `patent_type` TEXT,
  `licensee` TEXT,
  `royalty_rate_percent` REAL,
  `expiration_date` TEXT,
  `last_maintenance_fee_date` TEXT,
  `notes` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  `assigned_to` TEXT,
  `valuation_usd` REAL,
  PRIMARY KEY (`patent_id`)
);
INSERT INTO `researcher_patent_portfolio` VALUES ('PAT001','RS001','NanoCoatingMethod','US202400001','2024-01-15','2025-06-20','GRANTED','US','Nanomaterials','US','2023-12-01',1,'Utility','CompanyA',5.0,'2035-06-20','2024-12-01','High commercial potential','2025-01-15','2025-01-15','DeptTech','2500000');
INSERT INTO `researcher_patent_portfolio` VALUES ('PAT002','RS002','SyntheticRouteX','EP202300123','2023-03-10',NULL,'PENDING','EU','OrganicChemistry','DE','2023-02-20',1,'Utility','CompanyB',3.0,'2033-03-10','2023-11-01','Awaiting exam','2025-01-16','2025-01-16','DeptChem','1800000');
INSERT INTO `researcher_patent_portfolio` VALUES ('PAT003','RS003','DataCompressionAlgorithm','CN202200456','2022-07-05','2024-01-30','GRANTED','CN','Bioinformatics','CN','2022-06-01',2,'Design','CompanyC',2.5,'2032-01-30','2024-06-05','Implemented in internal pipeline','2025-01-17','2025-01-17','DeptBio','1200000');

-- Scheduled downtime for instruments
CREATE TABLE `instrument_downtime_schedule` (
  `downtime_id` TEXT NOT NULL,
  `instrument_id` TEXT,
  `scheduled_start` TEXT,
  `scheduled_end` TEXT,
  `downtime_type` TEXT,
  `reason` TEXT,
  `estimated_duration_minutes` INTEGER,
  `technician_id` TEXT,
  `approval_status` TEXT,
  `approval_date` TEXT,
  `impact_area` TEXT,
  `notification_sent` INTEGER,
  `follow_up_required` INTEGER,
  `follow_up_date` TEXT,
  `remarks` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  `priority_level` TEXT,
  `maintenance_order_id` TEXT,
  `cost_estimate_usd` REAL,
  `actual_start` TEXT,
  `actual_end` TEXT,
  PRIMARY KEY (`downtime_id`)
);
INSERT INTO `instrument_downtime_schedule` VALUES ('DT001','INS004','2025-02-01T08:00:00','2025-02-01T12:00:00','Preventive','Filter replacement',240,'TECH001','APPROVED','2025-01-20','Spectroscopy','1','0',NULL,'','2025-01-21','2025-01-21','Medium','MO001','500',NULL,NULL);
INSERT INTO `instrument_downtime_schedule` VALUES ('DT002','INS005','2025-02-05T14:00:00','2025-02-05T18:30:00','Corrective','Laser alignment issue',270,'TECH002','PENDING',NULL,'Microscopy','0','1','2025-02-10','Awaiting parts','2025-02-01','2025-02-01','High','MO002','1200',NULL,NULL);
INSERT INTO `instrument_downtime_schedule` VALUES ('DT003','INS006','2025-02-10T09:00:00','2025-02-10T11:00:00','Calibration','Routine check',120,'TECH003','APPROVED','2025-01-25','Chromatography','1','0',NULL,'','2025-01-26','2025-01-26','Low','MO003','300',NULL,NULL);

-- Panels of molecular assays
CREATE TABLE `molecular_assay_panel` (
  `panel_id` TEXT NOT NULL,
  `panel_name` TEXT,
  `description` TEXT,
  `num_targets` INTEGER,
  `detection_method` TEXT,
  `sample_type` TEXT,
  `volume_per_reaction_ul` REAL,
  `thermocycler_model` TEXT,
  `run_time_minutes` INTEGER,
  `annealing_temp_c` REAL,
  `extension_temp_c` REAL,
  `reference_gene` TEXT,
  `validation_status` TEXT,
  `created_by` TEXT,
  `creation_date` TEXT,
  `last_modified_by` TEXT,
  `last_modified_date` TEXT,
  `quality_control_passed` INTEGER,
  `notes` TEXT,
  `stored_location` TEXT,
  `license` TEXT,
  `version` TEXT,
  `approved` INTEGER,
  PRIMARY KEY (`panel_id`)
);
INSERT INTO `molecular_assay_panel` VALUES ('PAN001','InfluenzaPanel','Respiratory virus detection panel',8,'RT-PCR','NasopharyngealSwab',20,'ThermoCyclerX',90,55.0,72.0,'GAPDH','Validated','RS004','2024-11-01','RS004','2025-01-10',1,'','FreezerA','Open','v1.0',1);
INSERT INTO `molecular_assay_panel` VALUES ('PAN002','CancerGenePanel','Oncogene mutation screening',25,'NGS','Blood',50,'SeqMachineZ',180,0,0,'ACTB','InDevelopment','RS005','2025-01-05','RS005','2025-01-06',0,'Pending validation','FreezerB','Restricted','v0.9',0);
INSERT INTO `molecular_assay_panel` VALUES ('PAN003','MetabolismPanel','Metabolic enzyme expression',15,'qPCR','Tissue',15,'CyclerPro',75,60.0,72.0,'TBP','Validated','RS006','2024-09-15','RS006','2025-01-07',1,'','FreezerC','Open','v1.2',1);

-- Devices used for environmental sampling
CREATE TABLE `environmental_sampling_device` (
  `device_id` TEXT NOT NULL,
  `device_type` TEXT,
  `model` TEXT,
  `manufacturer` TEXT,
  `serial_number` TEXT,
  `deployment_date` TEXT,
  `last_calibration_date` TEXT,
  `calibration_interval_days` INTEGER,
  `sampling_method` TEXT,
  `flow_rate_lpm` REAL,
  `collection_media` TEXT,
  `max_sample_volume_ml` REAL,
  `battery_capacity_mah` INTEGER,
  `operating_temperature_c_min` REAL,
  `operating_temperature_c_max` REAL,
  `humidity_range_percent_min` REAL,
  `humidity_range_percent_max` REAL,
  `location_id` TEXT,
  `maintenance_status` TEXT,
  `notes` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  `active` INTEGER,
  `firmware_version` TEXT,
  PRIMARY KEY (`device_id`)
);
INSERT INTO `environmental_sampling_device` VALUES ('DEV001','AirSampler','AS-300','EnviroTech','SN12345','2024-12-01','2025-01-01',180,'Filter','100.0','PTFE','500','2000',0.0,50.0,20.0,80.0,'LOC01','Operational','','2025-01-15','2025-01-15',1,'1.0');
INSERT INTO `environmental_sampling_device` VALUES ('DEV002','WaterSampler','WS-200','HydroSense','SN67890','2024-11-15','2025-01-10',120,'Grab','10.0','Glass','250','1500',5.0,30.0,10.0,90.0,'LOC02','DueForService','','2025-01-16','2025-01-16',1,'2.1');
INSERT INTO `environmental_sampling_device` VALUES ('DEV003','SoilSampler','SS-100','SoilMetrics','SN54321','2024-10-20','2025-01-05',365,'Core','N/A','Steel','1000','2500',-10.0,40.0,0.0,100.0','LOC03','Operational','','2025-01-17','2025-01-17',1,'3.0');

-- Graph representation of computational job dependencies
CREATE TABLE `computational_job_dependency_graph` (
  `edge_id` TEXT NOT NULL,
  `parent_job_id` TEXT,
  `child_job_id` TEXT,
  `dependency_type` TEXT,
  `condition` TEXT,
  `order_sequence` INTEGER,
  `created_at` TEXT,
  `updated_at` TEXT,
  `created_by` TEXT,
  `notes` TEXT,
  `is_active` INTEGER,
  `priority` INTEGER,
  `retry_policy` TEXT,
  `max_retries` INTEGER,
  `timeout_seconds` INTEGER,
  `resource_allocation_id` TEXT,
  `runtime_estimate_seconds` INTEGER,
  `checkpoint_enabled` INTEGER,
  `checkpoint_interval_seconds` INTEGER,
  `notification_email` TEXT,
  PRIMARY KEY (`edge_id`)
);
INSERT INTO `computational_job_dependency_graph` VALUES ('EDGE001','JOB100','JOB101','FinishToStart','',1,'2025-01-18','2025-01-18','USR004','',1,5,'OnFailure',3,7200,'RA001',3600,1,300,'user@example.com');
INSERT INTO `computational_job_dependency_graph` VALUES ('EDGE002','JOB102','JOB103','StartToStart','',2,'2025-01-19','2025-01-19','USR005','',1,3,'OnSuccess',2,3600,'RA002',1800,0,NULL,'admin@example.com');
INSERT INTO `computational_job_dependency_graph` VALUES ('EDGE003','JOB104','JOB105','FinishToFinish','',3,'2025-01-20','2025-01-20','USR006','',1,4,'Never',0,0,'RA003',0,0,NULL,'ops@example.com');

-- Reference datasets for bioinformatics pipelines
CREATE TABLE `bioinformatics_reference_dataset` (
  `dataset_id` TEXT NOT NULL,
  `name` TEXT,
  `description` TEXT,
  `version` TEXT,
  `source` TEXT,
  `release_date` TEXT,
  `file_format` TEXT,
  `compression` TEXT,
  `size_gb` REAL,
  `checksum_md5` TEXT,
  `access_level` TEXT,
  `license` TEXT,
  `related_publication` TEXT,
  `last_updated` TEXT,
  `maintainer` TEXT,
  `contact_email` TEXT,
  `storage_location` TEXT,
  `availability_status` TEXT,
  `notes` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  `curation_status` TEXT,
  `priority` INTEGER,
  PRIMARY KEY (`dataset_id`)
);
INSERT INTO `bioinformatics_reference_dataset` VALUES ('DS001','HumanGRCh38','Reference genome assembly', 'v38','GenomeConsortium','2023-06-01','FASTA','gzip',3.2,'d41d8cd98f00b204e9800998ecf8427e','Open','CC0','GENOME2023','2025-01-10','DBAdmin','admin@example.com','/datasets/human','Available','','2025-01-10','2025-01-10','Curated',1);
INSERT INTO `bioinformatics_reference_dataset` VALUES ('DS002','MouseGRCm39','Mouse genome assembly','v39','GenomeConsortium','2024-02-15','FASTA','gzip',2.8,'0cc175b9c0f1b6a831c399e269772661','Restricted','CC-BY','MOUSE2024','2025-01-11','DBAdmin','admin@example.com','/datasets/mouse','Available','','2025-01-11','2025-01-11','Curated',2);
INSERT INTO `bioinformatics_reference_dataset` VALUES ('DS003','SILAC_Standards','Quantitative proteomics standards','v1.0','ProteomicsLab','2022-11-30','TSV','none',0.5','900150983cd24fb0d6963f7d28e17f72','Open','MIT','PROT2022','2025-01-12','DBAdmin','admin@example.com','/datasets/silac','Available','','2025-01-12','2025-01-12','Validated',3);