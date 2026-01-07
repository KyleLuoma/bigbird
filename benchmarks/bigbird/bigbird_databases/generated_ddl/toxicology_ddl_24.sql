-- Chromatography run details
CREATE TABLE `chromatography_run` (
  `run_id` TEXT NOT NULL,
  `instrument_id` TEXT,
  `sample_id` TEXT,
  `operator_id` TEXT,
  `method_name` TEXT,
  `column_type` TEXT,
  `mobile_phase` TEXT,
  `flow_rate_ml_min` TEXT,
  `temperature_c` TEXT,
  `injection_volume_ul` TEXT,
  `detector_type` TEXT,
  `wavelength_nm` TEXT,
  `run_start_time` TEXT,
  `run_end_time` TEXT,
  `data_file_path` TEXT,
  `peak_count` TEXT,
  `total_area` TEXT,
  `baseline_noise` TEXT,
  `quality_flag` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`run_id`)
);
INSERT INTO `chromatography_run` VALUES ('run001','inst01','samp01','op01','methodA','C18','AcetonitrileWater','1.0','30','5','UV','254','2023-01-01 09:00','2023-01-01 09:30','/data/run001.raw','12','3456','0.02','PASS','first test run');
INSERT INTO `chromatography_run` VALUES ('run002','inst02','samp02','op02','methodB','C8','MethanolWater','0.8','40','4','DAD','210','2023-02-15 10:10','2023-02-15 10:40','/data/run002.raw','9','2789','0.03','PASS','routine analysis');
INSERT INTO `chromatography_run` VALUES ('run003','inst01','samp03','op03','methodC','Phenyl','AcetonitrileWater','1.2','35','6','UV','280','2023-03-20 08:45','2023-03-20 09:15','/data/run003.raw','15','4120','0.01','FAIL','column clogging');

-- High‑throughput screening results
CREATE TABLE `highthroughput_screen` (
  `screen_id` TEXT NOT NULL,
  `assay_id` TEXT,
  `plate_id` TEXT,
  `well_position` TEXT,
  `compound_id` TEXT,
  `concentration_uM` TEXT,
  `incubation_time_min` TEXT,
  `readout_type` TEXT,
  `signal_value` TEXT,
  `hit_flag` TEXT,
  `operator_id` TEXT,
  `run_date` TEXT,
  `instrument_id` TEXT,
  `control_type` TEXT,
  `batch_id` TEXT,
  `sample_type` TEXT,
  `cell_line` TEXT,
  `replicate_number` TEXT,
  `data_file_path` TEXT,
  `comments` TEXT,
  PRIMARY KEY (`screen_id`,`well_position`)
);
INSERT INTO `highthroughput_screen` VALUES ('hts001','assayA','plate01','A01','cmpd001','10','60','fluorescence','12345','YES','opA','2023-04-01','instHTS1','positive','batchA','smallmolecule','HeLa','1','/hts/hts001_A01.csv','initial hit');
INSERT INTO `highthroughput_screen` VALUES ('hts001','assayA','plate01','A02','cmpd002','10','60','fluorescence','6789','NO','opA','2023-04-01','instHTS1','negative','batchA','smallmolecule','HeLa','1','/hts/hts001_A02.csv','no activity');
INSERT INTO `highthroughput_screen` VALUES ('hts001','assayA','plate01','B01','cmpd003','20','60','fluorescence','15432','YES','opA','2023-04-01','instHTS1','positive','batchA','smallmolecule','HeLa','1','/hts/hts001_B01.csv','stronger signal');

-- Bioinformatics gene annotation records
CREATE TABLE `bioinformatics_annotation` (
  `annotation_id` TEXT NOT NULL,
  `gene_id` TEXT,
  `transcript_id` TEXT,
  `protein_id` TEXT,
  `source_db` TEXT,
  `evidence_code` TEXT,
  `annotation_term` TEXT,
  `start_pos` TEXT,
  `end_pos` TEXT,
  `strand` TEXT,
  `score` TEXT,
  `created_at` TEXT,
  `updated_at` TEXT,
  `curator_id` TEXT,
  `annotation_type` TEXT,
  `confidence_level` TEXT,
  `species` TEXT,
  `assembly_version` TEXT,
  `notes` TEXT,
  `review_status` TEXT,
  PRIMARY KEY (`annotation_id`)
);
INSERT INTO `bioinformatics_annotation` VALUES ('ann001','GENE001','TX001','PROT001','Ensembl','IEA','kinase activity','100','500','+','0.95','2023-01-10','2023-02-05','cur01','function','high','HomoSapiens','GRCh38','verified','approved');
INSERT INTO `bioinformatics_annotation` VALUES ('ann002','GENE002','TX002','PROT002','RefSeq','EXP','DNA binding','200','800','-','0.88','2023-01-15','2023-02-10','cur02','function','medium','MusMusculus','GRCm39','pending review','pending');
INSERT INTO `bioinformatics_annotation` VALUES ('ann003','GENE003','TX003','PROT003','UniProt','ISS','membrane receptor','50','400','+','0.92','2023-01-20','2023-02-12','cur03','function','high','RattusNorvegicus','Rnor_6.0','curated manually','approved');

-- Spectrophotometry measurement logs
CREATE TABLE `spectrophotometry_measurement` (
  `measurement_id` TEXT NOT NULL,
  `instrument_id` TEXT,
  `sample_id` TEXT,
  `operator_id` TEXT,
  `wavelength_nm` TEXT,
  `absorbance` TEXT,
  `blank_id` TEXT,
  `pathlength_cm` TEXT,
  `temperature_c` TEXT,
  `measurement_time` TEXT,
  `mode` TEXT,
  `data_file_path` TEXT,
  `repeat_count` TEXT,
  `standard_id` TEXT,
  `quality_flag` TEXT,
  `comments` TEXT,
  `solvent` TEXT,
  `concentration_mg_ml` TEXT,
  `batch_id` TEXT,
  `calibration_date` TEXT,
  PRIMARY KEY (`measurement_id`)
);
INSERT INTO `spectrophotometry_measurement` VALUES ('spm001','spec01','sampA','opX','260','1.23','blank01','1.0','25','2023-05-01 09:10','absorbance','/spec/spm001.csv','3','std01','PASS','clear solution','water','0.05','batchX','2023-04-20');
INSERT INTO `spectrophotometry_measurement` VALUES ('spm002','spec02','sampB','opY','340','0.78','blank02','1.0','22','2023-05-02 10:30','absorbance','/spec/spm002.csv','2','std02','PASS','slightly turbid','ethanol','0.10','batchY','2023-04-22');
INSERT INTO `spectrophotometry_measurement` VALUES ('spm003','spec01','sampC','opZ','280','1.56','blank01','1.0','24','2023-05-03 11:45','absorbance','/spec/spm003.csv','1','std03','FAIL','instrument drift','water','0.08','batchZ','2023-04-25');

-- Laboratory airflow simulation configurations
CREATE TABLE `lab_airflow_simulation` (
  `simulation_id` TEXT NOT NULL,
  `scenario_name` TEXT,
  `room_id` TEXT,
  `ventilation_type` TEXT,
  `air_change_rate_h` TEXT,
  `simulation_start` TEXT,
  `simulation_end` TEXT,
  `mesh_resolution_cm` TEXT,
  `solver_type` TEXT,
  `turbulence_model` TEXT,
  `boundary_condition` TEXT,
  `particle_size_um` TEXT,
  `particle_density_g_cm3` TEXT,
  `source_location` TEXT,
  `sink_location` TEXT,
  `temperature_c` TEXT,
  `humidity_percent` TEXT,
  `cpu_cores` TEXT,
  `memory_gb` TEXT,
  `result_file_path` TEXT,
  `validation_status` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`simulation_id`)
);
INSERT INTO `lab_airflow_simulation` VALUES ('sim001','baseline','roomA','mixing','12','2023-06-01 00:00','2023-06-01 02:00','5','steady','k-epsilon','no-slip','0.5','1.2','inlet1','outlet1','22','45','8','16','/sim/sim001.res','validated','initial baseline run');
INSERT INTO `lab_airflow_simulation` VALUES ('sim002','contamination','roomB','laminar','20','2023-06-05 00:00','2023-06-05 03:00','3','transient','les','no-slip','2.0','0.9','sourceA','sinkB','24','50','12','32','/sim/sim002.res','pending','simulate accidental release');
INSERT INTO `lab_airflow_simulation` VALUES ('sim003','hightemp','roomC','mixing','15','2023-06-10 00:00','2023-06-10 01:30','4','steady','k-omega','no-slip','1.0','1.0','inlet2','outlet2','30','40','16','64','/sim/sim003.res','validated','high temperature scenario');

-- Nanoparticle batch production records
CREATE TABLE `nanoparticle_batch` (
  `batch_id` TEXT NOT NULL,
  `product_name` TEXT,
  `synthesis_method` TEXT,
  `target_size_nm` TEXT,
  `size_distribution_sd_nm` TEXT,
  `surface_coating` TEXT,
  `concentration_mg_ml` TEXT,
  `solvent` TEXT,
  `reaction_temperature_c` TEXT,
  `reaction_time_min` TEXT,
  `stir_rate_rpm` TEXT,
  `pH` TEXT,
  `batch_volume_ml` TEXT,
  `operator_id` TEXT,
  `production_date` TEXT,
  `quality_control_pass` TEXT,
  `zeta_potential_mv` TEXT,
  `purity_percent` TEXT,
  `storage_location` TEXT,
  `safety_data_sheet` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`batch_id`)
);
INSERT INTO `nanoparticle_batch` VALUES ('nb001','GoldNP','reduction','50','5','citrate','2.5','water','80','30','500','7.0','100','opA','2023-07-01','YES','-30','98','fridge01','sds_nb001.pdf','standard gold nanoparticle batch');
INSERT INTO `nanoparticle_batch` VALUES ('nb002','SiO2NP','sol-gel','150','10','PEG','1.0','ethanol','60','45','300','8.0','200','opB','2023-07-05','YES','-15','95','fridge02','sds_nb002.pdf','silica particles for coating');
INSERT INTO `nanoparticle_batch` VALUES ('nb003','Fe3ONP','thermal','80','8','oleic acid','3.2','hexane','250','60','400','6.5','150','opC','2023-07-10','NO','-40','92','fridge03','sds_nb003.pdf','batch failed zeta potential criteria');

-- Clinical trial site information
CREATE TABLE `clinical_trial_site` (
  `site_id` TEXT NOT NULL,
  `site_name` TEXT,
  `address_line1` TEXT,
  `address_line2` TEXT,
  `city` TEXT,
  `state` TEXT,
  `zip_code` TEXT,
  `country` TEXT,
  `principal_investigator` TEXT,
  `contact_number` TEXT,
  `email` TEXT,
  `ethics_committee_id` TEXT,
  `site_activation_date` TEXT,
  `site_close_date` TEXT,
  `capacity_patients` TEXT,
  `accrual_rate_per_month` TEXT,
  `site_type` TEXT,
  `gcp_certified` TEXT,
  `last_audit_date` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`site_id`)
);
INSERT INTO `clinical_trial_site` VALUES ('cts001','City Hospital','123 Main St','Building A','Metropolis','NY','10001','USA','DrSmith','5551234567','drsmith@cityhospital.org','eth001','2023-01-15',NULL,'200','30','academic','YES','2023-04-01','primary recruitment site');
INSERT INTO `clinical_trial_site` VALUES ('cts002','Westside Clinic','456 Oak Ave',NULL,'Lakeside','CA','90210','USA','DrJones','5559876543','drjones@westsideclinic.com','eth002','2023-02-01',NULL,'120','20','community','YES','2023-05-10','secondary site with imaging facilities');
INSERT INTO `clinical_trial_site` VALUES ('cts003','Northern Research Center','789 Pine Rd','Suite 5','Northfield','IL','60607','USA','DrLee','5555551212','drlee@nrc.org','eth003','2023-03-20',NULL,'300','45','research','YES','2023-06-20','high volume enrollment center');

-- Environmental sampling campaign metadata
CREATE TABLE `environmental_sampling_campaign` (
  `campaign_id` TEXT NOT NULL,
  `campaign_name` TEXT,
  `start_date` TEXT,
  `end_date` TEXT,
  `lead_scientist` TEXT,
  `sampling_method` TEXT,
  `sample_type` TEXT,
  `number_of_sites` TEXT,
  `total_samples_collected` TEXT,
  `weather_conditions` TEXT,
  `season` TEXT,
  `region` TEXT,
  `data_repository` TEXT,
  `quality_control_status` TEXT,
  `metadata_file_path` TEXT,
  `notes` TEXT,
  `instrument_used` TEXT,
  `sampling_frequency` TEXT,
  `regulatory_agency` TEXT,
  `budget_usd` TEXT,
  PRIMARY KEY (`campaign_id`)
);
INSERT INTO `environmental_sampling_campaign` VALUES ('env001','River Water Quality','2023-08-01','2023-08-15','DrGreen','grab','water','15','120','moderate rain','summer','Midwest','/repo/env001','PASS','/metadata/env001.json','focus on nitrates','spectrometer','daily','EPA','25000');
INSERT INTO `environmental_sampling_campaign` VALUES ('env002','Air Particulate Survey','2023-09-10','2023-09-20','DrBrown','filter','air','20','200','clear sky','autumn','Northeast','/repo/env002','PASS','/metadata/env002.json','PM2.5 and PM10 analysis','particle_counter','hourly','EPA','30000');
INSERT INTO `environmental_sampling_campaign` VALUES ('env003','Soil Heavy Metals','2023-10-05','2023-10-12','DrWhite','core','soil','10','80','cold wind','fall','Southwest','/repo/env003','PENDING','/metadata/env003.json','focus on lead and cadmium','ICP-MS','weekly','StateDept','20000');

-- Equipment failure event log
CREATE TABLE `equipment_failure_event` (
  `event_id` TEXT NOT NULL,
  `equipment_id` TEXT,
  `failure_type` TEXT,
  `failure_start` TEXT,
  `failure_end` TEXT,
  `downtime_minutes` TEXT,
  `detected_by` TEXT,
  `root_cause_analysis` TEXT,
  `repair_action` TEXT,
  `parts_replaced` TEXT,
  `cost_usd` TEXT,
  `maintenance_contract` TEXT,
  `severity` TEXT,
  `impact_on_projects` TEXT,
  `follow_up_date` TEXT,
  `notes` TEXT,
  `operating_conditions` TEXT,
  `temperature_c` TEXT,
  `humidity_percent` TEXT,
  `status` TEXT,
  PRIMARY KEY (`event_id`)
);
INSERT INTO `equipment_failure_event` VALUES ('fev001','eq001','sensor_failure','2023-11-01 08:30','2023-11-01 12:45','255','opD','sensor drift','sensor replacement','sensorModelX','1500','YES','high','projectA delayed','2023-11-05','replaced faulty sensor','normal','22','45','closed');
INSERT INTO `equipment_failure_event` VALUES ('fev002','eq002','power_outage','2023-11-10 14:00','2023-11-10 16:30','150','opE','UPS failure','UPS replacement','UPSModelY','3000','YES','medium','projectB paused','2023-11-15','installed new UPS','moderate','25','50','closed');
INSERT INTO `equipment_failure_event` VALUES ('fev003','eq003','mechanical_stall','2023-11-20 09:15','2023-11-20 13:00','225','opF','bearing wear','bearing replacement','bearingZ','800','NO','low','no impact','2023-11-25','lubricated moving parts','high','28','55','closed');

-- Computational model run tracking
CREATE TABLE `computational_model_run` (
  `run_id` TEXT NOT NULL,
  `model_name` TEXT,
  `version` TEXT,
  `host_cluster` TEXT,
  `node_list` TEXT,
  `submission_time` TEXT,
  `start_time` TEXT,
  `end_time` TEXT,
  `cpu_hours` TEXT,
  `memory_gb` TEXT,
  `gpu_used` TEXT,
  `input_dataset_id` TEXT,
  `output_dataset_id` TEXT,
  `parameter_set_id` TEXT,
  `status` TEXT,
  `error_log_path` TEXT,
  `result_summary_path` TEXT,
  `initiated_by` TEXT,
  `priority` TEXT,
  `queue_name` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`run_id`)
);
INSERT INTO `computational_model_run` VALUES ('cmr001','md_simulation','v1.2','clusterA','node01,node02','2023-12-01 07:00','2023-12-01 07:15','2023-12-01 12:45','5.5','64','YES','ds001','ds002','ps001','COMPLETED','/logs/cmr001.err','/results/cmr001.summary','userA','high','md_queue','protein folding simulation');
INSERT INTO `computational_model_run` VALUES ('cmr002','climate_projection','v3.0','clusterB','node05','2023-12-02 09:30','2023-12-02 09:45','2023-12-02 18:00','8.2','128','NO','ds010','ds011','ps010','COMPLETED','/logs/cmr002.err','/results/cmr002.summary','userB','medium','climate_queue','regional climate model');
INSERT INTO `computational_model_run` VALUES ('cmr003','genome_assembly','v2.5','clusterC','node12,node13','2023-12-03 10:00','2023-12-03 10:15','2023-12-04 02:30','15.0','256','YES','ds020','ds021','ps020','FAILED','/logs/cmr003.err','/results/cmr003.summary','userC','high','assembly_queue','assembly halted due to memory error');