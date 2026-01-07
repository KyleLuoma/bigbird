-- Quantum experiment execution records
CREATE TABLE `quantum_experiment_run` (
  `run_id` TEXT PRIMARY KEY,
  `experiment_name` TEXT,
  `device_id` TEXT,
  `start_timestamp` TEXT,
  `end_timestamp` TEXT,
  `temperature` REAL,
  `pressure` REAL,
  `humidity` REAL,
  `operator_id` TEXT,
  `notes` TEXT,
  `data_path` TEXT,
  `result_status` TEXT,
  `voltage` REAL,
  `current` REAL,
  `magnetic_field` REAL,
  `qubit_count` INTEGER,
  `error_rate` REAL,
  `calibration_version` TEXT,
  `software_version` TEXT,
  `sample_id` TEXT,
  `location` TEXT,
  `batch_id` TEXT
);

INSERT INTO `quantum_experiment_run` VALUES 
('run001','SuperpositionTest','devA','2024-01-10T09:00:00','2024-01-10T09:30:00',15.2,101.3,45.0,'op123','initial run','/data/run001','PASS',3.3,0.12,0.85,128,0.0012','v1.4','sw2.0','sampleX','LabA','batch09');

INSERT INTO `quantum_experiment_run` VALUES 
('run002','EntanglementCheck','devB','2024-02-05T11:15:00','2024-02-05T11:45:00',16.0,100.8,44.3,'op124','repeat with new firmware','/data/run002','PASS',3.5,0.11,0.90,256,0.0009','v1.5','sw2.1','sampleY','LabB','batch10');

INSERT INTO `quantum_experiment_run` VALUES 
('run003','DecoherenceStudy','devC','2024-03-12T14:20:00','2024-03-12T15:00:00',14.8,101.0,46.1,'op125','high temperature scenario','/data/run003','FAIL',3.2,0.15,0.70,64,0.0025','v1.3','sw1.9','sampleZ','LabC','batch11');

-- Nanofabrication batch production details
CREATE TABLE `nanofabrication_batch` (
  `batch_id` TEXT PRIMARY KEY,
  `process_name` TEXT,
  `equipment_id` TEXT,
  `start_date` TEXT,
  `end_date` TEXT,
  `wafer_count` INTEGER,
  `layer_thickness_nm` REAL,
  `etch_depth_um` REAL,
  `operator_id` TEXT,
  `supervisor_id` TEXT,
  `status` TEXT,
  `yield_percent` REAL,
  `ambient_temperature` REAL,
  `ambient_humidity` REAL,
  `pressure_mbar` REAL,
  `material_type` TEXT,
  `lot_number` TEXT,
  `recipe_version` TEXT,
  `inspection_report_path` TEXT,
  `safety_check_passed` TEXT,
  `shift` TEXT,
  `facility_zone` TEXT
);

INSERT INTO `nanofabrication_batch` VALUES 
('nb001','SiliconEtch','eqX','2024-04-01','2024-04-03',120,45.0,2.5,'op200','sup01','COMPLETED',92.5,22.5,38.0,1015,'Silicon','L123','R1.0','/reports/nb001.pdf','YES','Night','ZoneA');

INSERT INTO `nanofabrication_batch` VALUES 
('nb002','GateOxideDep','eqY','2024-04-10','2024-04-12',100,30.0,0.0,'op201','sup02','COMPLETED',88.0,21.8,37.5,1012,'Silicon','L124','R1.1','/reports/nb002.pdf','YES','Day','ZoneB');

INSERT INTO `nanofabrication_batch` VALUES 
('nb003','MetalLiftOff','eqZ','2024-04-20','2024-04-22',80,0.0,0.0,'op202','sup03','FAILED',0.0,23.0,40.0,1010,'Copper','L125','R2.0','/reports/nb003.pdf','NO','Evening','ZoneC');

-- Deployment records for bioinformatics tools
CREATE TABLE `bioinformatics_tool_deployment` (
  `deployment_id` TEXT PRIMARY KEY,
  `tool_name` TEXT,
  `version` TEXT,
  `host_server` TEXT,
  `deployment_date` TEXT,
  `deployed_by` TEXT,
  `configuration_file` TEXT,
  `memory_limit_gb` REAL,
  `cpu_cores` INTEGER,
  `storage_limit_gb` REAL,
  `runtime_environment` TEXT,
  `status` TEXT,
  `last_update` TEXT,
  `license_key` TEXT,
  `support_contact` TEXT,
  `uptime_days` INTEGER,
  `error_log_path` TEXT,
  `performance_score` REAL,
  `notes` TEXT,
  `region` TEXT,
  `service_tier` TEXT,
  `access_level` TEXT
);

INSERT INTO `bioinformatics_tool_deployment` VALUES 
('dep001','GenomeAligner','3.2.1','srv01','2024-01-15','adminA','/configs/ga.conf',8.0,4,200,'Docker','ACTIVE','2024-02-20','LIC12345','support@biofx.com',45,'/logs/dep001.err',96.5,'Initial production deployment','US-East','Premium','Admin');

INSERT INTO `bioinformatics_tool_deployment` VALUES 
('dep002','VariantCaller','1.8.0','srv02','2024-02-05','adminB','/configs/vc.conf',16.0,8,500,'Kubernetes','ACTIVE','2024-03-10','LIC67890','support@biofx.com',30,'/logs/dep002.err',88.2','Scaled for high throughput','EU-West','Standard','User');

INSERT INTO `bioinformatics_tool_deployment` VALUES 
('dep003','PathwayAnalyzer','2.4.3','srv03','2024-03-12','adminC','/configs/pa.conf',4.0,2,100,'Docker','INACTIVE','2024-03-15','LIC54321','support@biofx.com',5,'/logs/dep003.err',72.0','Deprecated version','APAC','Basic','ReadOnly');

-- Lab airflow simulation scenario definitions
CREATE TABLE `lab_airflow_simulation_scenario` (
  `scenario_id` TEXT PRIMARY KEY,
  `scenario_name` TEXT,
  `mesh_resolution` INTEGER,
  `turbulence_model` TEXT,
  `boundary_conditions` TEXT,
  `temperature_c` REAL,
  `humidity_percent` REAL,
  `pressure_pa` REAL,
  `air_change_rate_per_hr` REAL,
  `ventilation_type` TEXT,
  `simulation_software` TEXT,
  `software_version` TEXT,
  `cpu_cores` INTEGER,
  `memory_gb` REAL,
  `run_time_minutes` INTEGER,
  `result_summary_path` TEXT,
  `validation_status` TEXT,
  `created_by` TEXT,
  `creation_date` TEXT,
  `last_modified` TEXT,
  `notes` TEXT,
  `region` TEXT
);

INSERT INTO `lab_airflow_simulation_scenario` VALUES 
('scn001','BaselineVentilation',200000,'k-epsilon','Wall=NoSlip;Inlet=Velocity','22.0','45.0',101325,6.0,'Mixing','Fluent','2023R2',32,64.0,180,'/results/scn001_summary.pdf','PASS','eng001','2024-01-10','2024-01-12','Initial baseline model','NorthWing');

INSERT INTO `lab_airflow_simulation_scenario` VALUES 
('scn002','HighEfficiencyFilter',250000,'k-omega','Wall=NoSlip;Inlet=Velocity','20.0','40.0',101300,8.5,'Recirculating','Fluent','2023R2',48,96.0,240,'/results/scn002_summary.pdf','PASS','eng002','2024-02-05','2024-02-07','Evaluating HEPA filter impact','SouthWing');

INSERT INTO `lab_airflow_simulation_scenario` VALUES 
('scn003','LocalizedExhaust',180000,'LES','Wall=NoSlip;Inlet=Velocity','23.5','50.0',101400,4.0,'Local Exhaust','OpenFOAM','v9.0',24,48.0,120,'/results/scn003_summary.pdf','FAIL','eng003','2024-03-01','2024-03-03','Test of point source removal','EastWing');

-- Environmental microplastic analysis records
CREATE TABLE `environmental_microplastic_analysis` (
  `analysis_id` TEXT PRIMARY KEY,
  `sample_id` TEXT,
  `collection_site` TEXT,
  `collection_date` TEXT,
  `water_volume_l` REAL,
  `filter_mesh_um` REAL,
  `microscope_type` TEXT,
  `magnification` INTEGER,
  `particle_count` INTEGER,
  `average_size_um` REAL,
  `size_distribution` TEXT,
  `polymer_type` TEXT,
  `mass_ug` REAL,
  `analysis_method` TEXT,
  `operator_id` TEXT,
  `lab_id` TEXT,
  `quality_control_pass` TEXT,
  `report_path` TEXT,
  `notes` TEXT,
  `temperature_c` REAL,
  `humidity_percent` REAL,
  `pressure_mbar` REAL
);

INSERT INTO `environmental_microplastic_analysis` VALUES 
('ana001','smp001','RiverDelta','2024-04-01',2.5,0.45,'SEM',5000,1240,15.2','0-10:30%;10-20:45%;20-30:25%','PE',3.5,'FTIR','op300','labA','YES','/reports/ana001.pdf','Clear sample','18.0','55.0','1013');

INSERT INTO `environmental_microplastic_analysis` VALUES 
('ana002','smp002','LakeNorth','2024-04-05',3.0,0.30,'Optical',2000,860,22.8','0-10:20%;10-20:50%;20-30:30%','PP',4.1,'Raman','op301','labB','YES','/reports/ana002.pdf','Moderate contamination','19.5','60.0','1011');

INSERT INTO `environmental_microplastic_analysis` VALUES 
('ana003','smp003','CoastalBay','2024-04-10',1.8,0.70,'SEM',10000,2150,8.9','0-10:60%;10-20:30%;20-30:10%','PET',2.8,'FTIR','op302','labC','NO','/reports/ana003.pdf','High debris load','21.0','58.0','1012');

-- Solar panel maintenance log
CREATE TABLE `solar_panel_maintenance_log` (
  `maintenance_id` TEXT PRIMARY KEY,
  `panel_id` TEXT,
  `site_location` TEXT,
  `maintenance_date` TEXT,
  `technician_id` TEXT,
  `inspection_type` TEXT,
  `cleaning_performed` TEXT,
  `thermal_image_path` TEXT,
  `electrical_test_passed` TEXT,
  `output_power_w` REAL,
  `temperature_c` REAL,
  `irradiance_w_per_m2` REAL,
  `weather_conditions` TEXT,
  `notes` TEXT,
  `next_scheduled_date` TEXT,
  `maintenance_duration_min` INTEGER,
  `parts_replaced` TEXT,
  `cost_usd` REAL,
  `safety_check_passed` TEXT,
  `shift` TEXT,
  `team_lead` TEXT,
  `log_timestamp` TEXT
);

INSERT INTO `solar_panel_maintenance_log` VALUES 
('maint001','SP1001','RoofA','2024-01-20','tech01','Quarterly','YES','/images/therm1.png','YES',1250.5,35.2,850.0,'Sunny','No issues','2024-04-20',90,'None',150.00,'YES','Day','leadA','2024-01-20T08:30:00');

INSERT INTO `solar_panel_maintenance_log` VALUES 
('maint002','SP1002','RoofB','2024-02-15','tech02','Annual','YES','/images/therm2.png','NO',1100.0,38.5,820.0,'Partly Cloudy','Electrical fault detected','2024-05-15',120,'Inverter Module',300.00,'YES','Day','leadB','2024-02-15T09:00:00');

INSERT INTO `solar_panel_maintenance_log` VALUES 
('maint003','SP1003','GroundC','2024-03-10','tech03','Semi-Annual','NO','/images/therm3.png','YES',980.0,32.0,900.0,'Rainy','Cleaning deferred due to weather','2024-06-10',60,'None',80.00,'YES','Evening','leadC','2024-03-10T17:45:00');

-- Robotic arm error logging
CREATE TABLE `robotic_arm_error_log` (
  `error_id` TEXT PRIMARY KEY,
  `arm_id` TEXT,
  `occurrence_timestamp` TEXT,
  `error_code` TEXT,
  `severity` TEXT,
  `description` TEXT,
  `operator_id` TEXT,
  `resolved` TEXT,
  `resolution_timestamp` TEXT,
  `downtime_minutes` INTEGER,
  `impact_area` TEXT,
  `temperature_c` REAL,
  `humidity_percent` REAL,
  `voltage_v` REAL,
  `current_a` REAL,
  `software_version` TEXT,
  `firmware_version` TEXT,
  `maintenance_action` TEXT,
  `cost_usd` REAL,
  `safety_incident` TEXT,
  `shift` TEXT,
  `location` TEXT
);

INSERT INTO `robotic_arm_error_log` VALUES 
('err001','RA01','2024-01-05T14:20:00','E101','HIGH','Joint overload detected','op400','YES','2024-01-05T15:00:00',40,'Assembly','22.5','45.0',24.0,2.5,'v3.2','f1.0','Replaced joint bearing',250.00,'NO','Day','Zone1');

INSERT INTO `robotic_arm_error_log` VALUES 
('err002','RA02','2024-02-12T09:45:00','E202','MEDIUM','Encoder glitch', 'op401','YES','2024-02-12T10:30:00',45,'Calibration','21.0','48.0',24.5,2.3,'v3.1','f0.9','Firmware patch applied',120.00,'NO','Day','Zone2');

INSERT INTO `robotic_arm_error_log` VALUES 
('err003','RA03','2024-03-20T18:10:00','E303','LOW','Temperature sensor drift','op402','NO',NULL,NULL,'Monitoring','28.0','55.0',24.0,2.0,'v3.0','f0.8','Scheduled sensor recalibration',0.00,'NO','Evening','Zone3');

-- Clinical trial data monitoring records
CREATE TABLE `clinical_trial_data_monitoring` (
  `monitor_id` TEXT PRIMARY KEY,
  `trial_id` TEXT,
  `site_id` TEXT,
  `monitor_date` TEXT,
  `data_type` TEXT,
  `records_received` INTEGER,
  `records_missing` INTEGER,
  `data_quality_score` REAL,
  `issues_noted` TEXT,
  `action_taken` TEXT,
  `monitoring_officer` TEXT,
  `status` TEXT,
  `next_monitoring_date` TEXT,
  `communication_method` TEXT,
  `log_timestamp` TEXT,
  `audit_trail_path` TEXT,
  `compliance_flag` TEXT,
  `data_transfer_method` TEXT,
  `encryption_used` TEXT,
  `storage_location` TEXT,
  `backup_status` TEXT,
  `remarks` TEXT
);

INSERT INTO `clinical_trial_data_monitoring` VALUES 
('mon001','CT100','S001','2024-01-15','AE','1500','10',92.5','Missing adverse event entries','Requested resubmission','officerA','PARTIAL','2024-02-15','Email','2024-01-15T10:00:00','/audit/mon001.log','YES','SFTP','AES256','SecureDB','COMPLETED','Follow-up needed');

INSERT INTO `clinical_trial_data_monitoring` VALUES 
('mon002','CT101','S002','2024-02-20','LabResults','2000','0',98.0','All records present','No action required','officerB','FULL','2024-03-20','SecurePortal','2024-02-20T11:30:00','/audit/mon002.log','YES','API','TLS1.3','DataLake','COMPLETED','Good quality');

INSERT INTO `clinical_trial_data_monitoring` VALUES 
('mon003','CT102','S003','2024-03-25','CRF','1800','5',89.0','Incomplete CRF sections','Sent clarification form','officerC','PARTIAL','2024-04-25','Phone','2024-03-25T14:45:00','/audit/mon003.log','NO','Manual','NONE','OnPrem','PENDING','Awaiting response');

-- Molecular imaging session metadata
CREATE TABLE `molecular_imaging_session` (
  `session_id` TEXT PRIMARY KEY,
  `sample_id` TEXT,
  `imaging_modality` TEXT,
  `instrument_id` TEXT,
  `operator_id` TEXT,
  `session_date` TEXT,
  `exposure_time_ms` REAL,
  `resolution_nm` REAL,
  `laser_power_mw` REAL,
  `filter_set` TEXT,
  `objective_magnification` REAL,
  `objective_na` REAL,
  `temperature_c` REAL,
  `humidity_percent` REAL,
  `acquisition_software` TEXT,
  `software_version` TEXT,
  `image_format` TEXT,
  `file_path` TEXT,
  `data_quality_score` REAL,
  `notes` TEXT,
  `review_status` TEXT,
  `reviewer_id` TEXT,
  `review_timestamp` TEXT,
  `project_id` TEXT
);

INSERT INTO `molecular_imaging_session` VALUES 
('ims001','sam001','Confocal','instA','op500','2024-02-10',150.0,120.0,20.0,'DAPI/FLUOR','60.0',1.4,22.0,40.0,'ImagerSoft','2.1','tif','/images/ims001.tif',95.0','No issues','APPROVED','rev01','2024-02-11T09:00:00','projA');

INSERT INTO `molecular_imaging_session` VALUES 
('ims002','sam002','TwoPhoton','instB','op501','2024-03-05',200.0,100.0,30.0,'GFP','40.0',1.2,24.5,38.0,'ImagerPro','3.0','raw','/images/ims002.raw',88.5','Slight photobleaching','REVIEW_PENDING','rev02',NULL,'projB');

INSERT INTO `molecular_imaging_session` VALUES 
('ims003','sam003','STED','instC','op502','2024-04-12',80.0,80.0,15.0,'Cy5','100.0',1.6,21.5,45.0,'SuperRes','1.5','png','/images/ims003.png',92.0','Excellent contrast','APPROVED','rev03','2024-04-13T13:30:00','projC');

-- Water quality sampling event log
CREATE TABLE `water_quality_sampling_event` (
  `event_id` TEXT PRIMARY KEY,
  `site_id` TEXT,
  `sample_id` TEXT,
  `collection_datetime` TEXT,
  `collector_id` TEXT,
  `water_depth_m` REAL,
  `temperature_c` REAL,
  `ph` REAL,
  `dissolved_oxygen_mg_l` REAL,
  `conductivity_us_cm` REAL,
  `turbidity_ntu` REAL,
  `nitrate_mg_l` REAL,
  `phosphate_mg_l` REAL,
  `coliform_cfu_100ml` INTEGER,
  `heavy_metal_pb_ppb` REAL,
  `heavy_metal_cd_ppb` REAL,
  `sampling_method` TEXT,
  `preservation` TEXT,
  `lab_analysis_date` TEXT,
  `lab_technician` TEXT,
  `analysis_method` TEXT,
  `result_status` TEXT,
  `report_path` TEXT,
  `notes` TEXT
);

INSERT INTO `water_quality_sampling_event` VALUES 
('wev001','siteA','wq001','2024-01-08T07:30:00','col001',2.5,15.2,7.8,8.5,250.0,3.1,0.45,0.12,10,5.0,0.8','Grab','Refrigerated','2024-01-10','techA','ICP-MS','PASS','/reports/wev001.pdf','Routine monitoring');

INSERT INTO `water_quality_sampling_event` VALUES 
('wev002','siteB','wq002','2024-02-14T09:45:00','col002',5.0,13.9,7.2,9.0,300.0,4.5,1.10,0.30,25,12.0,1.5','Composite','Acidified','2024-02-16','techB','UV-Vis','PASS','/reports/wev002.pdf','Post-rainfall sample');

INSERT INTO `water_quality_sampling_event` VALUES 
('wev003','siteC','wq003','2024-03-22T11:20:00','col003',1.0,16.5,8.1,7.2,220.0,2.0,0.20,0.08,5,3.2,0.5','Grab','Cool dark','2024-03-24','techC','GC-MS','FAIL','/reports/wev003.pdf','Elevated lead levels');