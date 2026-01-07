-- Survey of electromagnetic interference measurements across laboratory zones
CREATE TABLE `lab_electromagnetics_survey` (
  `survey_id` TEXT NOT NULL,
  `survey_date` TEXT,
  `lab_zone` TEXT,
  `frequency_start_mhz` REAL,
  `frequency_end_mhz` REAL,
  `peak_amplitude_dbm` REAL,
  ``measurement_device` TEXT,
  `operator_id` TEXT,
  `weather_condition` TEXT,
  `temperature_c` REAL,
  `humidity_percent` REAL,
  `power_line_noise_dbm` REAL,
  `wifi_signal_dbm` REAL,
  `bluetooth_signal_dbm` REAL,
  `cellular_signal_dbm` REAL,
  `microwave_leakage_dbm` REAL,
  `rf_shielding_status` TEXT,
  `notes` TEXT,
  `data_quality_flag` TEXT,
  `reviewed_by` TEXT,
  `review_date` TEXT,
  `approval_status` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  PRIMARY KEY (`survey_id`)
);

INSERT INTO `lab_electromagnetics_survey` (`survey_id`,`survey_date`,`lab_zone`,`frequency_start_mhz`,`frequency_end_mhz`,`peak_amplitude_dbm`,`measurement_device`,`operator_id`,`weather_condition`,`temperature_c`,`humidity_percent`,`power_line_noise_dbm`,`wifi_signal_dbm`,`bluetooth_signal_dbm`,`cellular_signal_dbm`,`microwave_leakage_dbm`,`rf_shielding_status`,`notes`,`data_quality_flag`,`reviewed_by`,`review_date`,`approval_status`,`created_at`,`updated_at`) VALUES
('EMS001','2024-11-01','ZoneA',100.0,6000.0,-45.2,'EMI-2000','OP001','Clear',22.5,40.0,-70.1,-55.0,-60.2,-65.3,-80.0','Pass','Initial sweep','Good','REV01','2024-11-02','Approved','2024-11-01','2024-11-02');

INSERT INTO `lab_electromagnetics_survey` (`survey_id`,`survey_date`,`lab_zone`,`frequency_start_mhz`,`frequency_end_mhz`,`peak_amplitude_dbm`,`measurement_device`,`operator_id`,`weather_condition`,`temperature_c`,`humidity_percent`,`power_line_noise_dbm`,`wifi_signal_dbm`,`bluetooth_signal_dbm`,`cellular_signal_dbm`,`microwave_leakage_dbm`,`rf_shielding_status`,`notes`,`data_quality_flag`,`reviewed_by`,`review_date`,`approval_status`,`created_at`,`updated_at`) VALUES
('EMS002','2024-11-03','ZoneB',200.0,5000.0,-48.5,'EMI-2000','OP002','Cloudy',23.1,45.0,-68.5,-58.2,-62.0,-66.7,-78.5','Pass','No anomalies','Good','REV02','2024-11-04','Approved','2024-11-03','2024-11-04');

INSERT INTO `lab_electromagnetics_survey` (`survey_id`,`survey_date`,`lab_zone`,`frequency_start_mhz`,`frequency_end_mhz`,`peak_amplitude_dbm`,`measurement_device`,`operator_id`,`weather_condition`,`temperature_c`,`humidity_percent`,`power_line_noise_dbm`,`wifi_signal_dbm`,`bluetooth_signal_dbm`,`cellular_signal_dbm`,`microwave_leakage_dbm`,`rf_shielding_status`,`notes`,`data_quality_flag`,`reviewed_by`,`review_date`,`approval_status`,`created_at`,`updated_at`) VALUES
('EMS003','2024-11-05','ZoneC',150.0,5500.0,-46.0,'EMI-3000','OP003','Rainy',21.8,50.0,-71.0,-57.0,-61.5,-68.0,-82.0','Fail','Shield breach observed','Review needed','REV03','2024-11-06','Pending','2024-11-05','2024-11-06');

-- Characteristics of nanoparticle dispersions used in experiments
CREATE TABLE `nanoparticle_dispersion_characteristics` (
  `dispersion_id` TEXT NOT NULL,
  `batch_id` TEXT,
  `nanoparticle_type` TEXT,
  `particle_size_nm` REAL,
  `zeta_potential_mv` REAL,
  `pdi` REAL,
  `medium` TEXT,
  `concentration_mg_per_ml` REAL,
  `surfactant` TEXT,
  `sonication_time_min` INTEGER,
  `sonication_power_w` REAL,
  `temperature_c` REAL,
  `viscosity_cP` REAL,
  `density_g_per_ml` REAL,
  `stability_hours` INTEGER,
  `storage_temperature_c` REAL,
  `light_exposure` TEXT,
  `preparation_date` TEXT,
  `prepared_by` TEXT,
  `quality_status` TEXT,
  `notes` TEXT,
  `analytical_method` TEXT,
  `analysis_date` TEXT,
  `analyst` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  PRIMARY KEY (`dispersion_id`)
);

INSERT INTO `nanoparticle_dispersion_characteristics` (`dispersion_id`,`batch_id`,`nanoparticle_type`,`particle_size_nm`,`zeta_potential_mv`,`pdi`,`medium`,`concentration_mg_per_ml`,`surfactant`,`sonication_time_min`,`sonication_power_w`,`temperature_c`,`viscosity_cP`,`density_g_per_ml`,`stability_hours`,`storage_temperature_c`,`light_exposure`,`preparation_date`,`prepared_by`,`quality_status`,`notes`,`analytical_method`,`analysis_date`,`analyst`,`created_at`,`updated_at`) VALUES
('ND001','B001','Gold','50.2','-30.5','0.12','Water','2.5','Tween20','10','200','22.0','1.0','1.0','48','4','Dark','2024-10-20','RS001','Pass','Clear colloid','DLS','2024-10-21','AN001','2024-10-20','2024-10-21');

INSERT INTO `nanoparticle_dispersion_characteristics` (`dispersion_id`,`batch_id`,`nanoparticle_type`,`particle_size_nm`,`zeta_potential_mv`,`pdi`,`medium`,`concentration_mg_per_ml`,`surfactant`,`sonication_time_min`,`sonication_power_w`,`temperature_c`,`viscosity_cP`,`density_g_per_ml`,`stability_hours`,`storage_temperature_c`,`light_exposure`,`preparation_date`,`prepared_by`,`quality_status`,`notes`,`analytical_method`,`analysis_date`,`analyst`,`created_at`,`updated_at`) VALUES
('ND002','B002','Silica','120.0','-20.0','0.08','Ethanol','5.0','SDS','15','250','20.0','0.8','0.95','72','-20','Light','2024-10-22','RS002','Pass','Stable','TEM','2024-10-23','AN002','2024-10-22','2024-10-23');

INSERT INTO `nanoparticle_dispersion_characteristics` (`dispersion_id`,`batch_id`,`nanoparticle_type`,`particle_size_nm`,`zeta_potential_mv`,`pdi`,`medium`,`concentration_mg_per_ml`,`surfactant`,`sonication_time_min`,`sonication_power_w`,`temperature_c`,`viscosity_cP`,`density_g_per_ml`,`stability_hours`,`storage_temperature_c`,`light_exposure`,`preparation_date`,`prepared_by`,`quality_status`,`notes`,`analytical_method`,`analysis_date`,`analyst`,`created_at`,`updated_at`) VALUES
('ND003','B003','IronOxide','80.5','-25.0','0.15','Water','3.0','PVA','12','220','23.0','1.2','1.2','24','4','Dark','2024-10-25','RS003','Fail','Agglomeration observed','DLS','2024-10-26','AN003','2024-10-25','2024-10-26');

-- Firmware release records for remote environmental sensors
CREATE TABLE `remote_sensor_firmware_release` (
  `release_id` TEXT NOT NULL,
  `sensor_model` TEXT,
  `firmware_version` TEXT,
  `release_date` TEXT,
  `release_notes` TEXT,
  `checksum` TEXT,
  `file_path` TEXT,
  `supported_hardware_rev` TEXT,
  `minimum_os_version` TEXT,
  `maximum_os_version` TEXT,
  `developer` TEXT,
  `validation_status` TEXT,
  `validation_date` TEXT,
  `validation_by` TEXT,
  `deployment_target` TEXT,
  `rollback_version` TEXT,
  `criticality` TEXT,
  `security_patch` TEXT,
  `documentation_url` TEXT,
  `change_summary` TEXT,
  `size_bytes` INTEGER,
  `encryption_used` TEXT,
  `digital_signature` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  PRIMARY KEY (`release_id`)
);

INSERT INTO `remote_sensor_firmware_release` (`release_id`,`sensor_model`,`firmware_version`,`release_date`,`release_notes`,`checksum`,`file_path`,`supported_hardware_rev`,`minimum_os_version`,`maximum_os_version`,`developer`,`validation_status`,`validation_date`,`validation_by`,`deployment_target`,`rollback_version`,`criticality`,`security_patch`,`documentation_url`,`change_summary`,`size_bytes`,`encryption_used`,`digital_signature`,`created_at`,`updated_at`) VALUES
('RF001','EnviroNodeX','v1.2.0','2024-09-15','Bug fixes and performance improvements','ABC123DEF456','/firmware/EnviroNodeX/v1.2.0.bin','RevA','1.0','2.5','DevTeamA','Passed','2024-09-16','QA01','AllSites','v1.1.5','High','CVE-2024-001','http://docs.example.com/EnviroNodeX/v1.2.0','Improved WiFi stability',1024000,'AES256','SIG789XYZ','2024-09-15','2024-09-16');

INSERT INTO `remote_sensor_firmware_release` (`release_id`,`sensor_model`,`firmware_version`,`release_date`,`release_notes`,`checksum`,`file_path`,`supported_hardware_rev`,`minimum_os_version`,`maximum_os_version`,`developer`,`validation_status`,`validation_date`,`validation_by`,`deployment_target`,`rollback_version`,`criticality`,`security_patch`,`documentation_url`,`change_summary`,`size_bytes`,`encryption_used`,`digital_signature`,`created_at`,`updated_at`) VALUES
('RF002','EnviroNodeX','v1.3.0','2024-11-01','Added new pollutant sensor support','DEF456GHI789','/firmware/EnviroNodeX/v1.3.0.bin','RevB','1.0','3.0','DevTeamA','Passed','2024-11-02','QA02','AllSites','v1.2.0','Medium','CVE-2024-015','http://docs.example.com/EnviroNodeX/v1.3.0','New CO2 module integration',1152000,'AES256','SIG012ABC','2024-11-01','2024-11-02');

INSERT INTO `remote_sensor_firmware_release` (`release_id`,`sensor_model`,`firmware_version`,`release_date`,`release_notes`,`checksum`,`file_path`,`supported_hardware_rev`,`minimum_os_version`,`maximum_os_version`,`developer`,`validation_status`,`validation_date`,`validation_by`,`deployment_target`,`rollback_version`,`criticality`,`security_patch`,`documentation_url`,`change_summary`,`size_bytes`,`encryption_used`,`digital_signature`,`created_at`,`updated_at`) VALUES
('RF003','HydroSense','v2.0.1','2024-12-05','Critical security update','GHI789JKL012','/firmware/HydroSense/v2.0.1.bin','RevC','2.0','4.0','DevTeamB','Passed','2024-12-06','QA03','WaterSites','v2.0.0','Critical','CVE-2024-020','http://docs.example.com/HydroSense/v2.0.1','Patch for buffer overflow',970000,'AES256','SIG345DEF','2024-12-05','2024-12-06');

-- Batch records for bioinformatics annotation runs
CREATE TABLE `bioinformatics_annotation_batch` (
  `batch_id` TEXT NOT NULL,
  `project_id` TEXT,
  `analysis_type` TEXT,
  `reference_genome` TEXT,
  `annotation_tool` TEXT,
  `tool_version` TEXT,
  `start_time` TEXT,
  `end_time` TEXT,
  `total_samples` INTEGER,
  `samples_processed` INTEGER,
  `cpu_hours` REAL,
  `memory_gb` REAL,
  `storage_used_gb` REAL,
  `status` TEXT,
  `error_log_path` TEXT,
  `output_directory` TEXT,
  `parameters_json` TEXT,
  `quality_score` REAL,
  `reviewed_by` TEXT,
  `review_date` TEXT,
  `approval_status` TEXT,
  `notes` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  PRIMARY KEY (`batch_id`)
);

INSERT INTO `bioinformatics_annotation_batch` (`batch_id`,`project_id`,`analysis_type`,`reference_genome`,`annotation_tool`,`tool_version`,`start_time`,`end_time`,`total_samples`,`samples_processed`,`cpu_hours`,`memory_gb`,`storage_used_gb`,`status`,`error_log_path`,`output_directory`,`parameters_json`,`quality_score`,`reviewed_by`,`review_date`,`approval_status`,`notes`,`created_at`,`updated_at`) VALUES
('AB001','PRJ001','RNASeq','GRCh38','STAR','2.7.9a','2024-10-01 08:00','2024-10-01 20:15',120,120,48.5,256.0,500.0,'Completed','/logs/AB001_err.log','/output/AB001','{\"maxMismatches\":2,\"outFilterScoreMin\":10}',0.96,'RS001','2024-10-02','Approved','All samples processed successfully','2024-10-01','2024-10-02');

INSERT INTO `bioinformatics_annotation_batch` (`batch_id`,`project_id`,`analysis_type`,`reference_genome`,`annotation_tool`,`tool_version`,`start_time`,`end_time`,`total_samples`,`samples_processed`,`cpu_hours`,`memory_gb`,`storage_used_gb`,`status`,`error_log_path`,`output_directory`,`parameters_json`,`quality_score`,`reviewed_by`,`review_date`,`approval_status`,`notes`,`created_at`,`updated_at`) VALUES
('AB002','PRJ002','ExomeSeq','hg19','GATK','4.2.0.0','2024-11-05 07:30','2024-11-05 19:00',80,78,36.0,192.0,400.0,'Completed','/logs/AB002_err.log','/output/AB002','{\"jointCalling\":true,\"emitRefConfidence\":\"GVCF\"}',0.92,'RS002','2024-11-06','Approved','Two samples failed QC and were excluded','2024-11-05','2024-11-06');

INSERT INTO `bioinformatics_annotation_batch` (`batch_id`,`project_id`,`analysis_type`,`reference_genome`,`annotation_tool`,`tool_version`,`start_time`,`end_time`,`total_samples`,`samples_processed`,`cpu_hours`,`memory_gb`,`storage_used_gb`,`status`,`error_log_path`,`output_directory`,`parameters_json`,`quality_score`,`reviewed_by`,`review_date`,`approval_status`,`notes`,`created_at`,`updated_at`) VALUES
('AB003','PRJ003','VariantCalling','GRCh37','FreeBayes','1.3.5','2024-12-10 06:45','2024-12-10 18:30',50,50,24.0,128.0,250.0,'Failed','/logs/AB003_err.log','/output/AB003','{\"ploidy\":2,\"minBaseQual\":20}',0.0,'RS003','2024-12-11','Rejected','Pipeline crashed due to insufficient disk space','2024-12-10','2024-12-11');

-- Audit log for chemical safety inspections
CREATE TABLE `chemical_safety_audit_log` (
  `audit_id` TEXT NOT NULL,
  `facility_id` TEXT,
  `audit_date` TEXT,
  `inspector_id` TEXT,
  `area_inspected` TEXT,
  `hazard_type` TEXT,
  `risk_level` TEXT,
  `findings_summary` TEXT,
  `action_required` TEXT,
  `deadline_date` TEXT,
  `status` TEXT,
  `corrective_action` TEXT,
  `completion_date` TEXT,
  `follow_up_required` TEXT,
  `follow_up_date` TEXT,
  `comments` TEXT,
  `photos_path` TEXT,
  `document_reference` TEXT,
  `score` REAL,
  `overall_compliance` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  PRIMARY KEY (`audit_id`)
);

INSERT INTO `chemical_safety_audit_log` (`audit_id`,`facility_id`,`audit_date`,`inspector_id`,`area_inspected`,`hazard_type`,`risk_level`,`findings_summary`,`action_required`,`deadline_date`,`status`,`corrective_action`,`completion_date`,`follow_up_required`,`follow_up_date`,`comments`,`photos_path`,`document_reference`,`score`,`overall_compliance`,`created_at`,`updated_at`) VALUES
('CSA001','FAC001','2024-09-20','INSP001','StorageRoomA','Flammable','High','Improper labeling of solvents','Re-label all containers','2024-10-05','Open','Labeling performed by safety officer','2024-09-30','No','0000-00-00','/photos/CSA001/','DOC123','85.0','Partial','2024-09-20','2024-09-30');

INSERT INTO `chemical_safety_audit_log` (`audit_id`,`facility_id`,`audit_date`,`inspector_id`,`area_inspected`,`hazard_type`,`risk_level`,`findings_summary`,`action_required`,`deadline_date`,`status`,`corrective_action`,`completion_date`,`follow_up_required`,`follow_up_date`,`comments`,`photos_path`,`document_reference`,`score`,`overall_compliance`,`created_at`,`updated_at`) VALUES
('CSA002','FAC001','2024-10-15','INSP002','LabBenchB','Corrosive','Medium','Spill containment trays missing','Provide appropriate trays','2024-10-25','Open','Ordered trays, pending delivery','0000-00-00','Yes','2024-11-10','Pending delivery of trays','/photos/CSA002/','DOC124','70.0','Partial','2024-10-15','2024-10-20');

INSERT INTO `chemical_safety_audit_log` (`audit_id`,`facility_id`,`audit_date`,`inspector_id`,`area_inspected`,`hazard_type`,`risk_level`,`findings_summary`,`action_required`,`deadline_date`,`status`,`corrective_action`,`completion_date`,`follow_up_required`,`follow_up_date`,`comments`,`photos_path`,`document_reference`,`score`,`overall_compliance`,`created_at`,`updated_at`) VALUES
('CSA003','FAC002','2024-11-05','INSP003','WasteDisposalArea','Toxic','Low','All waste containers properly labeled','No action needed','0000-00-00','Closed','N/A','2024-11-05','No','0000-00-00','Compliant area','/photos/CSA003/','DOC125','95.0','Full','2024-11-05','2024-11-05');

-- Metrics for facility cooling system performance
CREATE TABLE `facility_cooling_system_metrics` (
  `metric_id` TEXT NOT NULL,
  `facility_id` TEXT,
  `record_timestamp` TEXT,
  `chiller_supply_temp_c` REAL,
  `chiller_return_temp_c` REAL,
  `evaporator_pressure_bar` REAL,
  `condenser_pressure_bar` REAL,
  `compressor_runtime_min` INTEGER,
  `energy_consumption_kwh` REAL,
  `cooling_capacity_ton` REAL,
  `ambient_temp_c` REAL,
  `relative_humidity_percent` REAL,
  `flow_rate_lpm` REAL,
  `refrigerant_type` TEXT,
  `system_status` TEXT,
  `alarm_active` TEXT,
  `maintenance_due_date` TEXT,
  `last_maintenance_date` TEXT,
  `operator_id` TEXT,
  `efficiency_ratio` REAL,
  `notes` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  PRIMARY KEY (`metric_id`)
);

INSERT INTO `facility_cooling_system_metrics` (`metric_id`,`facility_id`,`record_timestamp`,`chiller_supply_temp_c`,`chiller_return_temp_c`,`evaporator_pressure_bar`,`condensser_pressure_bar`,`compressor_runtime_min`,`energy_consumption_kwh`,`cooling_capacity_ton`,`ambient_temp_c`,`relative_humidity_percent`,`flow_rate_lpm`,`refrigerant_type`,`system_status`,`alarm_active`,`maintenance_due_date`,`last_maintenance_date`,`operator_id`,`efficiency_ratio`,`notes`,`created_at`,`updated_at`) VALUES
('FCM001','FAC001','2024-11-01 08:00',7.2,12.5,1.8,5.2,45,120.5,250.0,22.5,45.0,350.0,'R134a','Operational','None','2025-01-15','2024-06-20','OP001',0.85,'All parameters nominal','2024-11-01','2024-11-01');

INSERT INTO `facility_cooling_system_metrics` (`metric_id`,`facility_id`,`record_timestamp`,`chiller_supply_temp_c`,`chiller_return_temp_c`,`evaporator_pressure_bar`,`condensser_pressure_bar`,`compressor_runtime_min`,`energy_consumption_kwh`,`cooling_capacity_ton`,`ambient_temp_c`,`relative_humidity_percent`,`flow_rate_lpm`,`refrigerant_type`,`system_status`,`alarm_active`,`maintenance_due_date`,`last_maintenance_date`,`operator_id`,`efficiency_ratio`,`notes`,`created_at`,`updated_at`) VALUES
('FCM002','FAC001','2024-11-01 20:00',8.0,13.0,1.9,5.3,60,140.0,250.0,24.0,48.0,340.0,'R134a','Operational','HighPressure','2025-01-15','2024-06-20','OP001',0.80,'High pressure alarm triggered, investigated','2024-11-01','2024-11-01');

INSERT INTO `facility_cooling_system_metrics` (`metric_id`,`facility_id`,`record_timestamp`,`chiller_supply_temp_c`,`chiller_return_temp_c`,`evaporator_pressure_bar`,`condensser_pressure_bar`,`compressor_runtime_min`,`energy_consumption_kwh`,`cooling_capacity_ton`,`ambient_temp_c`,`relative_humidity_percent`,`flow_rate_lpm`,`refrigerant_type`,`system_status`,`alarm_active`,`maintenance_due_date`,`last_maintenance_date`,`operator_id`,`efficiency_ratio`,`notes`,`created_at`,`updated_at`) VALUES
('FCM003','FAC002','2024-11-01 08:00',6.5,11.8,1.7,5.0,40,110.0,200.0,21.0,44.0,360.0,'R407C','Operational','None','2025-03-01','2024-07-10','OP002',0.88,'Running efficiently','2024-11-01','2024-11-01');

-- Inventory of optical fiber links between laboratory buildings
CREATE TABLE `optical_fiber_link_inventory` (
  `link_id` TEXT NOT NULL,
  `origin_building` TEXT,
  `origin_floor` INTEGER,
  `origin_rack` TEXT,
  `destination_building` TEXT,
  `destination_floor` INTEGER,
  `destination_rack` TEXT,
  `fiber_type` TEXT,
  `core_count` INTEGER,
  `connector_type` TEXT,
  `length_meters` REAL,
  `installation_date` TEXT,
  `last_test_date` TEXT,
  `test_result` TEXT,
  `attenuation_db` REAL,
  `bandwidth_gbps` REAL,
  `status` TEXT,
  `maintenance_interval_days` INTEGER,
  `next_maintenance_date` TEXT,
  `assigned_to` TEXT,
  `documentation_url` TEXT,
  `notes` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  PRIMARY KEY (`link_id`)
);

INSERT INTO `optical_fiber_link_inventory` (`link_id`,`origin_building`,`origin_floor`,`origin_rack`,`destination_building`,`destination_floor`,`destination_rack`,`fiber_type`,`core_count`,`connector_type`,`length_meters`,`installation_date`,`last_test_date`,`test_result`,`attenuation_db`,`bandwidth_gbps`,`status`,`maintenance_interval_days`,`next_maintenance_date`,`assigned_to`,`documentation_url`,`notes`,`created_at`,`updated_at`) VALUES
('OF001','BldgA',1,'RackA1','BldgB',2,'RackB3','SingleMode','12','LC','250.0','2023-05-10','2024-10-20','Pass','0.3','10.0','Active','180','2025-04-20','ENG001','http://docs.example.com/OF001','Installed for high‑speed data','2023-05-10','2024-10-20');

INSERT INTO `optical_fiber_link_inventory` (`link_id`,`origin_building`,`origin_floor`,`origin_rack`,`destination_building`,`destination_floor`,`destination_rack`,`fiber_type`,`core_count`,`connector_type`,`length_meters`,`installation_date`,`last_test_date`,`test_result`,`attenuation_db`,`bandwidth_gbps`,`status`,`maintenance_interval_days`,`next_maintenance_date`,`assigned_to`,`documentation_url`,`notes`,`created_at`,`updated_at`) VALUES
('OF002','BldgA',2,'RackA5','BldgC',1,'RackC2','MultiMode','24','MTP','120.0','2022-11-01','2024-09-15','Pass','0.7','1.0','Active','365','2025-11-01','ENG002','http://docs.example.com/OF002','Used for instrument control network','2022-11-01','2024-09-15');

INSERT INTO `optical_fiber_link_inventory` (`link_id`,`origin_building`,`origin_floor`,`origin_rack`,`destination_building`,`destination_floor`,`destination_rack`,`fiber_type`,`core_count`,`connector_type`,`length_meters`,`installation_date`,`last_test_date`,`test_result`,`attenuation_db`,`bandwidth_gbps`,`status`,`maintenance_interval_days`,`next_maintenance_date`,`assigned_to`,`documentation_url`,`notes`,`created_at`,`updated_at`) VALUES
('OF003','BldgB',3,'RackB7','BldgD',2,'RackD4','SingleMode','8','FC','340.0','2024-01-20','2024-10-30','Pass','0.2','40.0','Active','90','2025-01-20','ENG003','http://docs.example.com/OF003','Critical link for HPC cluster','2024-01-20','2024-10-30');

-- Registry of machine learning models used in data analysis
CREATE TABLE `machine_learning_model_registry` (
  `model_id` TEXT NOT NULL,
  `model_name` TEXT,
  `version` TEXT,
  `framework` TEXT,
  `framework_version` TEXT,
  `training_dataset_id` TEXT,
  `training_start_date` TEXT,
  `training_end_date` TEXT,
  `hyperparameters_json` TEXT,
  `training_accuracy` REAL,
  `validation_accuracy` REAL,
  `test_accuracy` REAL,
  `metrics_json` TEXT,
  `deployment_environment` TEXT,
  `deployment_date` TEXT,
  `deployed_by` TEXT,
  `status` TEXT,
  `last_update_date` TEXT,
  `updated_by` TEXT,
  `purpose` TEXT,
  `owner_team` TEXT,
  `documentation_url` TEXT,
  `notes` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  PRIMARY KEY (`model_id`)
);

INSERT INTO `machine_learning_model_registry` (`model_id`,`model_name`,`version`,`framework`,`framework_version`,`training_dataset_id`,`training_start_date`,`training_end_date`,`hyperparameters_json`,`training_accuracy`,`validation_accuracy`,`test_accuracy`,`metrics_json`,`deployment_environment`,`deployment_date`,`deployed_by`,`status`,`last_update_date`,`updated_by`,`purpose`,`owner_team`,`documentation_url`,`notes`,`created_at`,`updated_at`) VALUES
('MLM001','SpectraClassifier','v1.0','TensorFlow','2.12','DS001','2024-08-01','2024-08-15','{\"lr\":0.001,\"batch\":64,\"epochs\":30}',0.97,0.94,0.93,'{\"precision\":0.95,\"recall\":0.94}','Production','2024-08-20','ENG001','Deployed','2024-09-01','ENG002','Classify FTIR spectra','AI_Team','http://docs.example.com/MLM001','Model meets performance criteria','2024-08-01','2024-09-01');

INSERT INTO `machine_learning_model_registry` (`model_id`,`model_name`,`version`,`framework`,`framework_version`,`training_dataset_id`,`training_start_date`,`training_end_date`,`hyperparameters_json`,`training_accuracy`,`validation_accuracy`,`test_accuracy`,`metrics_json`,`deployment_environment`,`deployment_date`,`deployed_by`,`status`,`last_update_date`,`updated_by`,`purpose`,`owner_team`,`documentation_url`,`notes`,`created_at`,`updated_at`) VALUES
('MLM002','CompoundPropertyRegressor','v2.1','PyTorch','2.1.0','DS045','2024-07-10','2024-07-25','{\"lr\":0.0005,\"batch\":128,\"epochs\":50}',0.92,0.90,0.89,'{\"mae\":0.12,\"rmse\":0.18}','Staging','2024-08-01','ENG003','Testing','2024-08-15','ENG004','Predict solubility','ChemAI','http://docs.example.com/MLM002','Needs further validation on external set','2024-07-10','2024-08-15');

INSERT INTO `machine_learning_model_registry` (`model_id`,`model_name`,`version`,`framework`,`framework_version`,`training_dataset_id`,`training_start_date`,`training_end_date`,`hyperparameters_json`,`training_accuracy`,`validation_accuracy`,`test_accuracy`,`metrics_json`,`deployment_environment`,`deployment_date`,`deployed_by`,`status`,`last_update_date`,`updated_by`,`purpose`,`owner_team`,`documentation_url`,`notes`,`created_at`,`updated_at`) VALUES
('MLM003','SafetyIncidentPredictor','v0.9','scikit‑learn','1.3','DS078','2024-06-01','2024-06-15','{\"n_estimators\":200,\"max_depth\":10}',0.85,0.82,0.80,'{\"f1\":0.81,\"roc_auc\":0.88}','Research','2024-07-01','ENG005','Active','2024-07-15','ENG006','Predict likelihood of safety incidents','SafetyAI','http://docs.example.com/MLM003','Model in pilot phase','2024-06-01','2024-07-15');

-- Records of microplastics sampling from environmental sites
CREATE TABLE `environmental_microplastics_sampling` (
  `sample_id` TEXT NOT NULL,
  `site_id` TEXT,
  `sample_date` TEXT,
  `collector_id` TEXT,
  `water_depth_m` REAL,
  `sample_volume_l` REAL,
  `mesh_size_mm` REAL,
  `storage_temperature_c` REAL,
  `transport_time_h` REAL,
  `preservation_method` TEXT,
  `particle_count_per_l` INTEGER,
  `size_distribution_json` TEXT,
  `polymer_type_distribution_json` TEXT,
  `analysis_method` TEXT,
  `lab_id` TEXT,
  `analysis_date` TEXT,
  `analyst_id` TEXT,
  `quality_control_pass` TEXT,
  `notes` TEXT,
  `data_quality_score` REAL,
  `created_at` TEXT,
  `updated_at` TEXT,
  PRIMARY KEY (`sample_id`)
);

INSERT INTO `environmental_microplastics_sampling` (`sample_id`,`site_id`,`sample_date`,`collector_id`,`water_depth_m`,`sample_volume_l`,`mesh_size_mm`,`storage_temperature_c`,`transport_time_h`,`preservation_method`,`particle_count_per_l`,`size_distribution_json`,`polymer_type_distribution_json`,`analysis_method`,`lab_id`,`analysis_date`,`analyst_id`,`quality_control_pass`,`notes`,`data_quality_score`,`created_at`,`updated_at`) VALUES
('EMP001','SITE01','2024-09-12','COL001',2.5,10.0,0.3,4.0,3.5,'Ethanol','150','{\"0-0.5\":30,\"0.5-1\":45,\"1-5\":75}','{\"Polyethylene\":60,\"Polypropylene\":25,\"PS\":15','FTIR','LAB01','2024-09-15','AN001','Yes','Sample from river tributary','0.92','2024-09-12','2024-09-15');

INSERT INTO `environmental_microplastics_sampling` (`sample_id`,`site_id`,`sample_date`,`collector_id`,`water_depth_m`,`sample_volume_l`,`mesh_size_mm`,`storage_temperature_c`,`transport_time_h`,`preservation_method`,`particle_count_per_l`,`size_distribution_json`,`polymer_type_distribution_json`,`analysis_method`,`lab_id`,`analysis_date`,`analyst_id`,`quality_control_pass`,`notes`,`data_quality_score`,`created_at`,`updated_at`) VALUES
('EMP002','SITE02','2024-10-05','COL002',5.0,15.0,0.5,5.0,4.0,'Freeze','250','{\"0-0.5\":50,\"0.5-1\":80,\"1-5\":120}','{\"Polyester\":40,\"Nylon\":35,\"PVC\":25','Raman','LAB02','2024-10-08','AN002','Yes','Coastal bay sampling','0.95','2024-10-05','2024-10-08');

INSERT INTO `environmental_microplastics_sampling` (`sample_id`,`site_id`,`sample_date`,`collector_id`,`water_depth_m`,`sample_volume_l`,`mesh_size_mm`,`storage_temperature_c`,`transport_time_h`,`preservation_method`,`particle_count_per_l`,`size_distribution_json`,`polymer_type_distribution_json`,`analysis_method`,`lab_id`,`analysis_date`,`analyst_id`,`quality_control_pass`,`notes`,`data_quality_score`,`created_at`,`updated_at`) VALUES
('EMP003','SITE03','2024-11-20','COL003',0.8,8.0,0.2,3.5,2.0,'Formalin','80','{\"0-0.5\":20,\"0.5-1\":30,\"1-5\":30}','{\"PMMA\":50,\"PET\":30,\"Other\":20','Microscopy','LAB03','2024-11-23','AN003','No','Contamination suspected during transport','0.70','2024-11-20','2024-11-23');

-- Collaboration project metadata linking researchers and external institutions
CREATE TABLE `researcher_collaboration_project` (
  `project_id` TEXT NOT NULL,
  `project_title` TEXT,
  `lead_researcher_id` TEXT,
  `partner_institution` TEXT,
  `partner_contact` TEXT,
  `start_date` TEXT,
  `end_date` TEXT,
  `funding_agency` TEXT,
  `budget_usd` REAL,
  `grant_number` TEXT,
  `collaboration_type` TEXT,
  `data_sharing_agreement` TEXT,
  `intellectual_property_policy` TEXT,
  `reporting_frequency` TEXT,
  `last_report_date` TEXT,
  `project_status` TEXT,
  `milestones_completed` INTEGER,
  `total_milestones` INTEGER,
  `risk_assessment` TEXT,
  `ethical_approval` TEXT,
  `publications_expected` INTEGER,
  `deliverables` TEXT,
  `notes` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  PRIMARY KEY (`project_id`)
);

INSERT INTO `researcher_collaboration_project` (`project_id`,`project_title`,`lead_researcher_id`,`partner_institution`,`partner_contact`,`start_date`,`end_date`,`funding_agency`,`budget_usd`,`grant_number`,`collaboration_type`,`data_sharing_agreement`,`intellectual_property_policy`,`reporting_frequency`,`last_report_date`,`project_status`,`milestones_completed`,`total_milestones`,`risk_assessment`,`ethical_approval`,`publications_expected`,`deliverables`,`notes`,`created_at`,`updated_at`) VALUES
('COL001','Nanoparticle Toxicology Study','RS001','Institute of Toxicology','CT001','2024-01-15','2025-12-31','NIH','750000','R01ABC123','International','Signed','JointOwnership','Quarterly','2024-10-01','Active',4,8,'Medium','Approved',5,'Dataset, Report','Collaborative effort across three labs','2024-01-15','2024-10-01');

INSERT INTO `researcher_collaboration_project` (`project_id`,`project_title`,`lead_researcher_id`,`partner_institution`,`partner_contact`,`start_date`,`end_date`,`funding_agency`,`budget_usd`,`grant_number`,`collaboration_type`,`data_sharing_agreement`,`intellectual_property_policy`,`reporting_frequency`,`last_report_date`,`project_status`,`milestones_completed`,`total_milestones`,`risk_assessment`,`ethical_approval`,`publications_expected`,`deliverables`,`notes`,`created_at`,`updated_at`) VALUES
('COL002','AI‑Driven Spectral Analysis','RS002','TechAI Corp','CT002','2023-06-01','2024-11-30','DARPA','1200000','DARPA-XYZ','Industry','Executed','CompanyOwned','Monthly','2024-09-15','OnHold',6,10,'High','Pending','8','Software Package, Documentation','Negotiations ongoing','2023-06-01','2024-09-15');

INSERT INTO `researcher_collaboration_project` (`project_id`,`project_title`,`lead_researcher_id`,`partner_institution`,`partner_contact`,`start_date`,`end_date`,`funding_agency`,`budget_usd`,`grant_number`,`collaboration_type`,`data_sharing_agreement`,`intellectual_property_policy`,`reporting_frequency`,`last_report_date`,`project_status`,`milestones_completed`,`total_milestones`,`risk_assessment`,`ethical_approval`,`publications_expected`,`deliverables`,`notes`,`created_at`,`updated_at`) VALUES
('COL003','Sustainable Lab Energy Initiative','RS003','GreenEnergy Labs','CT003','2024-03-01','2026-02-28','DOE','500000','DE-2024-ENV','Government','Signed','OpenAccess','SemiAnnual','2024-08-20','Active',2,5,'Low','Approved','3','Energy Audit Reports, Recommendations','Focus on reducing HVAC load','2024-03-01','2024-08-20');