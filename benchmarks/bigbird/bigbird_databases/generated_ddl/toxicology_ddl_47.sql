-- Genome sequence repository storing reference and experimental DNA sequences
CREATE TABLE `genome_sequence_repository` (
  `sequence_id` TEXT NOT NULL,
  `species` TEXT,
  `assembly_version` TEXT,
  `accession_number` TEXT,
  `sequence_length` INTEGER,
  `gc_content` REAL,
  `is_reference` INTEGER,
  `submitted_by` TEXT,
  `submission_date` TEXT,
  `sequencing_center` TEXT,
  `platform` TEXT,
  `library_preparation` TEXT,
  `read_length` INTEGER,
  `coverage` REAL,
  `contig_count` INTEGER,
  `scaffold_count` INTEGER,
  `annotation_version` TEXT,
  `gene_count` INTEGER,
  `repeat_masked` INTEGER,
  `md5_checksum` TEXT,
  PRIMARY KEY (`sequence_id`)
);

INSERT INTO `genome_sequence_repository` VALUES ('SEQ001','Homo sapiens','GRCh38','ACC12345',3200000000,41.0,1,'DrSmith','2023-05-01','GenomeCenterA','Illumina','Nextera',150,30.5,5000,2000,'v1.0',20000,1,'ABCD1234EFGH5678');
INSERT INTO `genome_sequence_repository` VALUES ('SEQ002','Mus musculus','GRCm39','ACC67890',2750000000,42.5,1,'DrLee','2023-06-15','GenomeCenterB','PacBio','SMRTbell',10000,45.0,3000,1500,'v2.1',21000,0,'IJKL9012MNOP3456');
INSERT INTO `genome_sequence_repository` VALUES ('SEQ003','Drosophila melanogaster','BDGP6','ACC24680',180000000,40.2,0,'DrChen','2023-07-20','GenomeCenterC','Nanopore','Rapid',5000,20.0,2500,1200,'v3.3',15000,1,'QRST1122UVWX3344');

-- Panel of microbial assays used for phenotypic profiling
CREATE TABLE `microbial_assay_panel` (
  `panel_id` TEXT NOT NULL,
  `assay_name` TEXT,
  `organism` TEXT,
  `target_gene` TEXT,
  `detection_method` TEXT,
  `sensitivity` REAL,
  `specificity` REAL,
  `instrument` TEXT,
  `reagent_batch` TEXT,
  `protocol_version` TEXT,
  `run_time_minutes` INTEGER,
  `control_type` TEXT,
  `sample_volume_ul` REAL,
  `positive_control` TEXT,
  `negative_control` TEXT,
  `created_by` TEXT,
  `creation_date` TEXT,
  `last_modified_by` TEXT,
  `last_modified_date` TEXT,
  `validation_status` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`panel_id`)
);

INSERT INTO `microbial_assay_panel` VALUES ('PANEL01','BetaLactamResistance','Escherichia coli','blaTEM','qPCR',0.98,0.99,'ThermoQuant','RB001','v1.0',45,'Internal','10.0','Ecoli_ATCC25922','Water','DrMiller','2023-02-10','DrMiller','2023-02-10','Validated','Standard beta lactam panel');
INSERT INTO `microbial_assay_panel` VALUES ('PANEL02','MethicillinResistance','Staphylococcus aureus','mecA','PCR',0.95,0.97,'BioRad','RB002','v2.2',60,'External','15.0','Saureus_N315','Water','DrPatel','2023-03-12','DrPatel','2023-03-12','Validated','MRSA detection panel');
INSERT INTO `microbial_assay_panel` VALUES ('PANEL03','CarbapenemaseDetection','Klebsiella pneumoniae','blaKPC','LAMP',0.92,0.96,'Qiagen','RB003','v1.5',30,'Internal','8.0','Kp_ATCC13883','Water','DrGomez','2023-04-05','DrGomez','2023-04-05','InReview','Carbapenemase rapid panel');

-- Inventory of optical fiber network components in the facility
CREATE TABLE `optical_fiber_network_inventory` (
  `component_id` TEXT NOT NULL,
  `component_type` TEXT,
  `manufacturer` TEXT,
  `model_number` TEXT,
  `serial_number` TEXT,
  `installation_date` TEXT,
  `location_rack` TEXT,
  `location_slot` TEXT,
  `cable_length_m` REAL,
  `core_count` INTEGER,
  `cladding_diameter_um` REAL,
  `connector_type` TEXT,
  `loss_db_km` REAL,
  `operational_status` TEXT,
  `last_test_date` TEXT,
  `test_result` TEXT,
  `firmware_version` TEXT,
  `maintenance_cycle_months` INTEGER,
  `next_maintenance_date` TEXT,
  `owner_department` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`component_id`)
);

INSERT INTO `optical_fiber_network_inventory` VALUES ('COMP001','Transceiver','Finisar','FTS-100','SN10001','2022-01-15','RackA','Slot12',0.0,1,125.0,'LC','0.4','Active','2023-08-01','Pass','v2.3',12,'2024-08-01','IT','Spare part');
INSERT INTO `optical_fiber_network_inventory` VALUES ('COMP002','PatchCable','Corning','PC-12m','SN20002','2021-06-10','RackB','Slot05',12.0,2,125.0,'SC','0.2','Active','2023-07-20','Pass','',6,'2024-01-20','Lab','Used for instrument A');
INSERT INTO `optical_fiber_network_inventory` VALUES ('COMP003','Switch','Cisco','OFS-48','SN30003','2020-09-25','RackC','Slot20',0.0,1,125.0,'LC','0.1','Inactive','2023-05-15','Fail','v1.0',24,'2025-09-25','Facility','Pending replacement');

-- Log of HVAC zone performance measurements
CREATE TABLE `hvac_zone_performance_log` (
  `log_id` TEXT NOT NULL,
  `zone_id` TEXT,
  `measurement_timestamp` TEXT,
  `temperature_c` REAL,
  `relative_humidity` REAL,
  `airflow_cfm` REAL,
  `pressure_pa` REAL,
  `filter_status` TEXT,
  `energy_consumption_kwh` REAL,
  `co2_ppm` REAL,
  `voc_ppb` REAL,
  `fan_speed_rpm` REAL,
  `heating_setpoint_c` REAL,
  `cooling_setpoint_c` REAL,
  `maintenance_flag` INTEGER,
  `operator_id` TEXT,
  `remarks` TEXT,
  `recorded_by` TEXT,
  `recorded_date` TEXT,
  `audit_status` TEXT,
  `calibration_due_date` TEXT,
  PRIMARY KEY (`log_id`)
);

INSERT INTO `hvac_zone_performance_log` VALUES ('LOG001','ZONE_A','2023-09-01 08:00:00',22.5,45.0,1250.0,12.5,'Good',350.0,600.0,250.0,1500.0,20.0,24.0,0,'OP001','Normal operation','SysA','2023-09-01','Checked','2024-03-01');
INSERT INTO `hvac_zone_performance_log` VALUES ('LOG002','ZONE_B','2023-09-01 08:05:00',23.0,48.0,1300.0,13.0,'ReplaceSoon',360.0,620.0,260.0,1520.0,21.0,25.0,1,'OP002','Filter nearing end of life','SysB','2023-09-01','Checked','2024-04-15');
INSERT INTO `hvac_zone_performance_log` VALUES ('LOG003','ZONE_C','2023-09-01 08:10:00',21.8,42.0,1190.0,11.8,'Good',340.0,580.0,240.0,1480.0,19.5,23.5,0,'OP003','All parameters within spec','SysC','2023-09-01','Checked','2024-02-20');

-- Usage log for laser systems in the facility
CREATE TABLE `laser_system_usage_log` (
  `usage_id` TEXT NOT NULL,
  `laser_id` TEXT,
  `user_id` TEXT,
  `start_timestamp` TEXT,
  `end_timestamp` TEXT,
  `wavelength_nm` REAL,
  `pulse_energy_mj` REAL,
  `repetition_rate_hz` REAL,
  `beam_diameter_mm` REAL,
  `operator_notes` TEXT,
  `safety_interlock_status` INTEGER,
  `cooling_status` TEXT,
  `maintenance_due` INTEGER,
  `calibration_date` TEXT,
  `operation_mode` TEXT,
  `shield_status` TEXT,
  `laser_power_percentage` REAL,
  `energy_consumption_kwh` REAL,
  `experiment_id` TEXT,
  `approval_status` TEXT,
  `audit_trail` TEXT,
  PRIMARY KEY (`usage_id`)
);

INSERT INTO `laser_system_usage_log` VALUES ('U001','LASER_A','USR001','2023-08-15 09:00:00','2023-08-15 10:15:00',532.0,0.5,10.0,1.2,'Alignment check',1,'Normal',0,'2023-07-01','Continuous','Engaged',75.0,5.2,'EXP1001','Approved','LogCreated');
INSERT INTO `laser_system_usage_log` VALUES ('U002','LASER_B','USR002','2023-08-16 14:30:00','2023-08-16 15:00:00',1064.0,1.0,5.0,0.8,'Sample ablation',1,'Normal',1,'2023-06-15','Pulsed','Engaged',60.0,3.1,'EXP1002','Pending','LogCreated');
INSERT INTO `laser_system_usage_log` VALUES ('U003','LASER_A','USR003','2023-08-17 11:20:00','2023-08-17 12:45:00',355.0,0.3,20.0,1.0,'Spectroscopy run',1,'Normal',0,'2023-07-01','Continuous','Engaged',80.0,6.0,'EXP1003','Approved','LogCreated');

-- Metadata for biobank sample records
CREATE TABLE `biobank_sample_metadata` (
  `sample_id` TEXT NOT NULL,
  `donor_id` TEXT,
  `sample_type` TEXT,
  `collection_date` TEXT,
  `processing_center` TEXT,
  `preservation_method` TEXT,
  `storage_temperature_c` REAL,
  `volume_ml` REAL,
  `concentration_ng_ml` REAL,
  `aliquot_count` INTEGER,
  `qc_passed` INTEGER,
  `qc_metrics` TEXT,
  `batch_number` TEXT,
  `project_code` TEXT,
  `ethical_approval_id` TEXT,
  `consent_version` TEXT,
  `data_access_level` TEXT,
  `linked_dataset_id` TEXT,
  `last_accessed_date` TEXT,
  `storage_location` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`sample_id`)
);

INSERT INTO `biobank_sample_metadata` VALUES ('SB001','DON001','Blood','2023-04-10','CenterA','Cryopreservation',-80.0,2.0,500.0,5,1','QC_OK','BATCH01','PROJ01','ETH001','v1','Restricted','DS001','2023-08-01','FreezerA1','First aliquot');
INSERT INTO `biobank_sample_metadata` VALUES ('SB002','DON002','Tissue','2023-05-22','CenterB','Formalin','4.0',1.5,300.0,3,0','QC_FAIL','BATCH02','PROJ02','ETH002','v2','Controlled','DS002','2023-07-15','FreezerB3','Needs reprocessing');
INSERT INTO `biobank_sample_metadata` VALUES ('SB003','DON003','Plasma','2023-06-05','CenterC','LiquidNitrogen','-196.0',3.0,800.0,8,1','QC_OK','BATCH03','PROJ03','ETH003','v1','Open','DS003','2023-08-20','FreezerC2','High quality');

-- Versioning information for computational workflows
CREATE TABLE `computational_workflow_version` (
  `workflow_id` TEXT NOT NULL,
  `version_number` TEXT,
  `description` TEXT,
  `created_by` TEXT,
  `creation_date` TEXT,
  `last_modified_by` TEXT,
  `last_modified_date` TEXT,
  `status` TEXT,
  `execution_environment` TEXT,
  `docker_image` TEXT,
  `memory_limit_gb` REAL,
  `cpu_limit_cores` INTEGER,
  `runtime_limit_minutes` INTEGER,
  `input_schema_version` TEXT,
  `output_schema_version` TEXT,
  `parameter_set` TEXT,
  `validation_passed` INTEGER,
  `validation_date` TEXT,
  `approval_id` TEXT,
  `release_notes` TEXT,
  `deprecated` INTEGER,
  PRIMARY KEY (`workflow_id`,`version_number`)
);

INSERT INTO `computational_workflow_version` VALUES ('WF001','v1.0','RNA-Seq pipeline','devA','2023-01-15','devA','2023-01-15','Active','SLURM','rna_seq:1.0',32.0,16,1440,'schema_v1','schema_v2','default',1,'2023-01-16','APP001','Initial release',0);
INSERT INTO `computational_workflow_version` VALUES ('WF001','v1.1','RNA-Seq pipeline with improved trimming','devB','2023-03-10','devB','2023-03-10','Active','SLURM','rna_seq:1.1',32.0,16,1440,'schema_v1','schema_v2','trim_v2',1,'2023-03-11','APP001','Added trimming step',0);
INSERT INTO `computational_workflow_version` VALUES ('WF002','v2.0','Proteomics quantification','devC','2023-05-05','devC','2023-05-05','Active','Kubernetes','proteomics:2.0',64.0,32,2880,'schema_v3','schema_v4','default',1,'2023-05-06','APP002','First proteomics workflow',0);

-- Summary records for nanoparticle characterization studies
CREATE TABLE `nanoparticle_characterization_summary` (
  `study_id` TEXT NOT NULL,
  `nanoparticle_id` TEXT,
  `material` TEXT,
  `synthesis_method` TEXT,
  `average_size_nm` REAL,
  `size_distribution_sd_nm` REAL,
  `zeta_potential_mv` REAL,
  `surface_area_m2_g` REAL,
  `crystallinity_percent` REAL,
  `morphology` TEXT,
  `functionalization` TEXT,
  `dosage_mg_ml` REAL,
  `cell_line` TEXT,
  `incubation_time_hr` REAL,
  `viability_percent` REAL,
  `uptake_percent` REAL,
  `imaging_modality` TEXT,
  `spectroscopy_type` TEXT,
  `batch_number` TEXT,
  `principal_investigator` TEXT,
  `start_date` TEXT,
  `end_date` TEXT,
  `publication_doi` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`study_id`)
);

INSERT INTO `nanoparticle_characterization_summary` VALUES ('ST001','NP001','Gold','Turkevich',50.0,5.0,-25.0,150.0,95.0,'Spherical','PEG','0.5','HeLa','24',85.0,30.0,'TEM','UVVis','B001','DrSmith','2023-02-01','2023-04-15','10.1000/xyz123','Stable formulation');
INSERT INTO `nanoparticle_characterization_summary` VALUES ('ST002','NP002','Silica','Stober',120.0,10.0,-15.0,80.0,90.0,'Rod','Amine','1.0','A549','48',70.0,45.0,'SEM','FTIR','B002','DrLee','2023-03-10','2023-06-20','10.1000/abc456','High uptake observed');
INSERT INTO `nanoparticle_characterization_summary` VALUES ('ST003','NP003','IronOxide','Co-precipitation',30.0,3.0,-35.0,200.0,85.0,'CoreShell','Dextran','0.2','MCF7','12',92.0,20.0,'MRI','NMR','B003','DrPatel','2023-05-05','2023-07-30','10.1000/def789','Magnetic resonance contrast');

-- Registry of environmental noise sources and their characteristics
CREATE TABLE `environmental_noise_source_registry` (
  `source_id` TEXT NOT NULL,
  `source_type` TEXT,
  `location_description` TEXT,
  `frequency_range_hz` TEXT,
  `average_db` REAL,
  `peak_db` REAL,
  `measurement_date` TEXT,
  `measured_by` TEXT,
  `equipment_used` TEXT,
  `calibration_status` TEXT,
  `mitigation_measures` TEXT,
  `operation_schedule` TEXT,
  `maintenance_interval_days` INTEGER,
  `last_maintenance_date` TEXT,
  `responsible_team` TEXT,
  `notes` TEXT,
  `status` TEXT,
  `risk_level` TEXT,
  `exposure_limit_db` REAL,
  `compliance_status` TEXT,
  `audit_date` TEXT,
  PRIMARY KEY (`source_id`)
);

INSERT INTO `environmental_noise_source_registry` VALUES ('NS001','HVAC_Fan','Building1 Roof','20-2000','68.5','85.0','2023-08-01','TechA','SoundMeterX','Calibrated','AcousticBaffles','24/7',90,'2023-07-15','Facilities','Normal operation','Active','Medium','85','Compliant','2023-08-05');
INSERT INTO `environmental_noise_source_registry` VALUES ('NS002','Cooling_Chiller','Basement Level2','50-1500','72.0','90.5','2023-08-03','TechB','SoundMeterY','Calibrated','IsolationPanels','NightShift','180','2023-07-20','Facilities','Requires periodic review','Active','High','92','NonCompliant','2023-08-06');
INSERT INTO `environmental_noise_source_registry` VALUES ('NS003','Ventilation_Duct','Lab Wing','30-1800','65.0','80.0','2023-08-02','TechC','SoundMeterZ','Calibrated','DuctSilencers','8am-6pm',120,'2023-07-25','Facilities','All clear','Active','Low','80','Compliant','2023-08-07');

-- Log of instrument performance metrics for periodic review
CREATE TABLE `instrument_performance_log` (
  `log_entry_id` TEXT NOT NULL,
  `instrument_id` TEXT,
  `metric_name` TEXT,
  `metric_value` REAL,
  `unit` TEXT,
  `measurement_timestamp` TEXT,
  `measured_by` TEXT,
  `baseline_value` REAL,
  `tolerance_percent` REAL,
  `status` TEXT,
  `action_required` TEXT,
  `comments` TEXT,
  `maintenance_due` INTEGER,
  `next_calibration_date` TEXT,
  `location` TEXT,
  `hardware_version` TEXT,
  `software_version` TEXT,
  `frequency_of_measurement_days` INTEGER,
  `last_maintenance_date` TEXT,
  `reviewed_by` TEXT,
  PRIMARY KEY (`log_entry_id`)
);

INSERT INTO `instrument_performance_log` VALUES ('IP001','INST_A','SignalToNoiseRatio',45.2,'dB','2023-08-10 10:00:00','TechA',50.0,5.0','Warning','Recalibrate','SNR dropped','1','2023-09-01','Lab1','HW1.2','SW3.4',30,'2023-07-15','EngLead');
INSERT INTO `instrument_performance_log` VALUES ('IP002','INST_B','WavelengthAccuracy',0.02,'nm','2023-08-11 11:30:00','TechB',0.0,0.05','Pass','None','Within specs','0','2024-01-15','Lab2','HW2.0','SW4.1',60,'2023-06-20','EngLead');
INSERT INTO `instrument_performance_log` VALUES ('IP003','INST_C','PowerStability',98.5,'%','2023-08-12 09:45:00','TechC',99.0,1.0','Pass','Monitor','Slight drift','0','2023-12-01','Lab3','HW3.5','SW5.0',90,'2023-05-10','EngLead');

-- Records of chemical process control parameters
CREATE TABLE `chemical_process_control_parameters` (
  `parameter_id` TEXT NOT NULL,
  `process_name` TEXT,
  `unit` TEXT,
  `setpoint` REAL,
  `lower_limit` REAL,
  `upper_limit` REAL,
  `control_strategy` TEXT,
  `sensor_id` TEXT,
  `actuator_id` TEXT,
  `last_adjusted_timestamp` TEXT,
  `adjusted_by` TEXT,
  `status` TEXT,
  `remarks` TEXT,
  `batch_id` TEXT,
  `product_quality_metric` TEXT,
  `quality_target` REAL,
  `quality_tolerance` REAL,
  `audit_trail` TEXT,
  `maintenance_required` INTEGER,
  `next_maintenance_due` TEXT,
  `operator_shift` TEXT,
  `department` TEXT,
  PRIMARY KEY (`parameter_id`)
);

INSERT INTO `chemical_process_control_parameters` VALUES ('CP001','Polymerization','Celsius',180.0,175.0,185.0,'PID','SEN001','ACT001','2023-08-05 14:00:00','OpA','Active','Temperature stable','BATCH01','Viscosity','1500','5','LogA','0','2023-12-01','Shift1','Production');
INSERT INTO `chemical_process_control_parameters` VALUES ('CP002','Distillation','kPa',101.3,100.0,102.5,'Feedforward','SEN002','ACT002','2023-08-06 09:30:00','OpB','Active','Pressure within range','BATCH02','Purity','99.5','0.2','LogB','1','2023-11-15','Shift2','Production');
INSERT INTO `chemical_process_control_parameters` VALUES ('CP003','Crystallization','pH',7.0,6.8,7.2,'PID','SEN003','ACT003','2023-08-07 11:15:00','OpC','Active','pH stable','BATCH03','CrystalSize','25','2','LogC','0','2024-01-20','Shift3','R&D');

-- Schedule of robotic arm tasks in the automation lab
CREATE TABLE `robotic_arm_task_schedule` (
  `task_id` TEXT NOT NULL,
  `robotic_arm_id` TEXT,
  `task_type` TEXT,
  `scheduled_start` TEXT,
  `scheduled_end` TEXT,
  `priority_level` INTEGER,
  `current_status` TEXT,
  `operator_id` TEXT,
  `assigned_to` TEXT,
  `tool_attached` TEXT,
  `material_handled` TEXT,
  `quantity` REAL,
  `unit` TEXT,
  `safety_check_passed` INTEGER,
  `override_allowed` INTEGER,
  `execution_log` TEXT,
  `error_code` TEXT,
  `maintenance_flag` INTEGER,
  `next_service_date` TEXT,
  `location` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`task_id`)
);

INSERT INTO `robotic_arm_task_schedule` VALUES ('TASK001','ARM01','PlateTransfer','2023-08-20 08:00:00','2023-08-20 08:15:00',1,'Scheduled','OP001','TechA','Gripper','96wellPlate','1','pcs',1,0,'LogStart','',0,'2023-10-01','AutomationLab','Initial run');
INSERT INTO `robotic_arm_task_schedule` VALUES ('TASK002','ARM02','SampleAliquot','2023-08-20 09:00:00','2023-08-20 09:30:00',2,'Scheduled','OP002','TechB','Pipette','ReagentA','500','µL',1,0,'LogStart','',0,'2023-10-15','AutomationLab','High precision aliquoting');
INSERT INTO `robotic_arm_task_schedule` VALUES ('TASK003','ARM01','PlateSeal','2023-08-20 10:00:00','2023-08-20 10:10:00',3,'Scheduled','OP003','TechC','Sealer','96wellPlate','1','pcs',1,0,'LogStart','',0,'2023-10-01','AutomationLab','Seal after aliquoting');

-- Energy consumption records for facility utility meters
CREATE TABLE `facility_energy_consumption_record` (
  `record_id` TEXT NOT NULL,
  `meter_id` TEXT,
  `measurement_timestamp` TEXT,
  `energy_kwh` REAL,
  `voltage_v` REAL,
  `current_a` REAL,
  `power_factor` REAL,
  `frequency_hz` REAL,
  `meter_location` TEXT,
  `reading_type` TEXT,
  `validation_status` TEXT,
  `adjustment_factor` REAL,
  `notes` TEXT,
  `operator_id` TEXT,
  `audit_timestamp` TEXT,
  `audit_user` TEXT,
  `estimated_cost_usd` REAL,
  `cost_center` TEXT,
  `regulatory_compliance` TEXT,
  `forecasted_next_month_kwh` REAL,
  `anomaly_flag` INTEGER,
  PRIMARY KEY (`record_id`)
);

INSERT INTO `facility_energy_consumption_record` VALUES ('REC001','MTR001','2023-08-01 00:00:00',1250.5,230.0,5.4,0.95,60.0,'BuildingA','Hourly','Validated',1.0,'Normal operation','OP001','2023-08-01 01:00:00','AuditorA',150.60,'ENG001','Compliant',1300.0,0);
INSERT INTO `facility_energy_consumption_record` VALUES ('REC002','MTR002','2023-08-01 00:00:00',980.2,230.0,4.2,0.97,60.0,'BuildingB','Hourly','Validated',1.0,'Normal operation','OP002','2023-08-01 01:05:00','AuditorB',118.20,'ENG002','Compliant',1020.0,0);
INSERT INTO `facility_energy_consumption_record` VALUES ('REC003','MTR003','2023-08-01 00:00:00',1500.8,230.0,6.1,0.93,60.0','BuildingC','Hourly','Validated',1.0,'Peak load','OP003','2023-08-01 01:10:00','AuditorC',180.10','ENG003','Compliant',1550.0,0);

-- Registry of environmental sensor deployments and configurations
CREATE TABLE `environmental_sensor_deployment_registry` (
  `deployment_id` TEXT NOT NULL,
  `sensor_id` TEXT,
  `sensor_type` TEXT,
  `firmware_version` TEXT,
  `deployment_location` TEXT,
  `latitude` REAL,
  `longitude` REAL,
  `installation_date` TEXT,
  `calibration_date` TEXT,
  `calibration_due_date` TEXT,
  `measurement_interval_seconds` INTEGER,
  `data_retention_days` INTEGER,
  `communication_protocol` TEXT,
  `network_id` TEXT,
  `power_source` TEXT,
  `battery_capacity_mah` INTEGER,
  `last_maintenance_date` TEXT,
  `maintenance_contact` TEXT,
  `status` TEXT,
  `remarks` TEXT,
  `owner_department` TEXT,
  PRIMARY KEY (`deployment_id`)
);

INSERT INTO `environmental_sensor_deployment_registry` VALUES ('DEP001','SEN_A1','Temperature','v1.2','Lab1-RoomA',40.7128,-74.0060,'2023-01-15','2023-07-01','2024-01-01',300,365,'WiFi','NET01','AC','',NULL,'TechA','Active','Mounted on wall','Facilities');
INSERT INTO `environmental_sensor_deployment_registry` VALUES ('DEP002','SEN_B2','Humidity','v2.0','Lab2-RoomB',34.0522,-118.2437,'2023-02-20','2023-08-10','2024-02-10',300,365,'ZigBee','NET02','Battery','2000','2023-09-15','TechB','Active','Mounted on ceiling','Facilities');
INSERT INTO `environmental_sensor_deployment_registry` VALUES ('DEP003','SEN_C3','Particulate','v3.1','Outdoor-Entrance',37.7749,-122.4194,'2023-03-05','2023-09-20','2024-03-20',600,730,'LoRa','NET03','Solar','5000','2023-10-05','TechC','Active','Weather protected housing','Facilities');

-- Log of software deployment events for lab instruments
CREATE TABLE `software_deployment_event_log` (
  `event_id` TEXT NOT NULL,
  `instrument_id` TEXT,
  `software_name` TEXT,
  `software_version` TEXT,
  `deployment_timestamp` TEXT,
  `deployed_by` TEXT,
  `deployment_method` TEXT,
  `target_os` TEXT,
  `rollback_possible` INTEGER,
  `rollback_version` TEXT,
  `deployment_status` TEXT,
  `verification_passed` INTEGER,
  `verification_timestamp` TEXT,
  `release_notes` TEXT,
  `change_ticket_id` TEXT,
  `downtime_minutes` INTEGER,
  `post_deployment_comments` TEXT,
  `audit_user` TEXT,
  `audit_timestamp` TEXT,
  `compliance_check` TEXT,
  PRIMARY KEY (`event_id`)
);

INSERT INTO `software_deployment_event_log` VALUES ('EVT001','INST_A','AcqSoft','3.1.4','2023-08-12 13:00:00','EngLead','Automated','Linux',1,'3.1.3','Success',1,'2023-08-12 13:15:00','Bug fixes and performance improve','CHG001',5,'No issues observed','AuditorA','2023-08-12 13:30:00','Passed');
INSERT INTO `software_deployment_event_log` VALUES ('EVT002','INST_B','ControlSuite','2.5.0','2023-08-13 09:30:00','EngLead','Manual','Windows',0,NULL,'Success',1,'2023-08-13 09:45:00','Added new protocol support','CHG002',10,'Minor UI glitch noted','AuditorB','2023-08-13 10:00:00','Passed');
INSERT INTO `software_deployment_event_log` VALUES ('EVT003','INST_C','DataLogger','1.8.2','2023-08-14 11:20:00','EngLead','Automated','RTOS',1,'1.8.1','Failed',0,NULL,'Rollback due to crash','CHG003',0,'Deployment aborted, rollback initiated','AuditorC','2023-08-14 11:50:00','Failed');