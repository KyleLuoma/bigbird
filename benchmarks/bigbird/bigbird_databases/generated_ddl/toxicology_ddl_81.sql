-- Spacecraft mission control logs
CREATE TABLE `spacecraft_mission_control` (
  `mission_id` TEXT NOT NULL,
  `launch_date` DATE DEFAULT NULL,
  `vehicle_name` TEXT DEFAULT NULL,
  `control_center` TEXT DEFAULT NULL,
  `flight_director` TEXT DEFAULT NULL,
  `satellite_payload` TEXT DEFAULT NULL,
  `orbit_type` TEXT DEFAULT NULL,
  `mission_status` TEXT DEFAULT NULL,
  `crew_count` INTEGER DEFAULT NULL,
  `duration_days` INTEGER DEFAULT NULL,
  `fuel_mass_kg` REAL DEFAULT NULL,
  `communication_band` TEXT DEFAULT NULL,
  `ground_station` TEXT DEFAULT NULL,
  `telemetry_rate_hz` REAL DEFAULT NULL,
  `max_temperature_c` REAL DEFAULT NULL,
  `min_temperature_c` REAL DEFAULT NULL,
  `radiation_level_svy` REAL DEFAULT NULL,
  `anomaly_count` INTEGER DEFAULT NULL,
  `post_mission_review` TEXT DEFAULT NULL,
  `budget_million_usd` REAL DEFAULT NULL,
  `data_volume_tb` REAL DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  PRIMARY KEY (`mission_id`)
);

INSERT INTO `spacecraft_mission_control` VALUES ('M001','2025-03-15','Orion','Houston','AliceSmith','CommsSat','LEO','Success',4,12,25000.5,'X','GS1',2.5,35.0,-5.0,0.12,0,'All objectives met',150.0,3.2,'No issues');
INSERT INTO `spacecraft_mission_control` VALUES ('M002','2025-07-22','Starliner','Kennedy','BobJones','WeatherSat','GEO','PartialSuccess',2,180,18000.0,'Ka','GS2',1.2,28.0,-12.0,0.08,2,'Minor delay due to weather',200.0,5.5,'Review pending');
INSERT INTO `spacecraft_mission_control` VALUES ('M003','2026-01-05','Dragon','Vandenberg','CarolLee','ResearchProbe','HEO','Failure',0,0,0.0,'S','GS3',0.0,0.0,0.0,0.0,5,'Launch abort',120.0,0.0,'Abort due to engine fault');

-- Quantum computing job tracking
CREATE TABLE `quantum_computing_job` (
  `job_id` TEXT NOT NULL,
  `submission_timestamp` DATE DEFAULT NULL,
  `qubit_count` INTEGER DEFAULT NULL,
  `algorithm_name` TEXT DEFAULT NULL,
  `gate_depth` INTEGER DEFAULT NULL,
  `circuit_type` TEXT DEFAULT NULL,
  `error_rate` REAL DEFAULT NULL,
  `runtime_seconds` REAL DEFAULT NULL,
  `result_status` TEXT DEFAULT NULL,
  `output_file` TEXT DEFAULT NULL,
  `researcher_id` TEXT DEFAULT NULL,
  `project_code` TEXT DEFAULT NULL,
  `hardware_backend` TEXT DEFAULT NULL,
  `queue_position` INTEGER DEFAULT NULL,
  `priority_level` INTEGER DEFAULT NULL,
  `estimated_cost_usd` REAL DEFAULT NULL,
  `actual_cost_usd` REAL DEFAULT NULL,
  `resource_allocation` TEXT DEFAULT NULL,
  `temperature_mk` REAL DEFAULT NULL,
  `magnetic_field_mT` REAL DEFAULT NULL,
  `post_processing_notes` TEXT DEFAULT NULL,
  `validation_passed` INTEGER DEFAULT NULL,
  `comments` TEXT DEFAULT NULL,
  PRIMARY KEY (`job_id`)
);

INSERT INTO `quantum_computing_job` VALUES ('QJ1001','2025-04-01',27,'Shor','150','Factorization',0.0012,3600.5,'Success','out1.dat','R123','PC01','IBM_Q30',5,1,250.0,260.5,'Full','15.0','0.5','Verified primes',1,'No issues');
INSERT INTO `quantum_computing_job` VALUES ('QJ1002','2025-04-03',15,'Grover','80','Search',0.0025,1200.0,'Success','out2.dat','R124','PC02','Rigetti_Aspen',10,2,120.0,125.0,'Partial','12.0','0.3','Found target',1,'Optimization needed');
INSERT INTO `quantum_computing_job` VALUES ('QJ1003','2025-04-05',5,'VQE','200','Optimization',0.0050,500.0,'Failed','out3.dat','R125','PC03','IonQ_Harmony',2,3,80.0,0.0,'None','10.0','0.2','Simulation error',0,'Check parameters');

-- Marine meteorology station observations
CREATE TABLE `marine_meteorology_station` (
  `station_id` TEXT NOT NULL,
  `observation_date` DATE DEFAULT NULL,
  `latitude` REAL DEFAULT NULL,
  `longitude` REAL DEFAULT NULL,
  `air_temperature_c` REAL DEFAULT NULL,
  `sea_surface_temp_c` REAL DEFAULT NULL,
  `wind_speed_ms` REAL DEFAULT NULL,
  `wind_direction_deg` INTEGER DEFAULT NULL,
  `relative_humidity` REAL DEFAULT NULL,
  `atmospheric_pressure_hpa` REAL DEFAULT NULL,
  `precipitation_mm` REAL DEFAULT NULL,
  `wave_height_m` REAL DEFAULT NULL,
  `wave_period_s` REAL DEFAULT NULL,
  `salinity_psu` REAL DEFAULT NULL,
  `chlorophyll_ug_l` REAL DEFAULT NULL,
  `visibility_km` REAL DEFAULT NULL,
  `cloud_coverage_pct` INTEGER DEFAULT NULL,
  `solar_radiation_wm2` REAL DEFAULT NULL,
  `uv_index` INTEGER DEFAULT NULL,
  `observer_name` TEXT DEFAULT NULL,
  `instrument_type` TEXT DEFAULT NULL,
  `data_quality_flag` TEXT DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  PRIMARY KEY (`station_id`,`observation_date`)
);

INSERT INTO `marine_meteorology_station` VALUES ('MS001','2025-06-01',34.5,-120.7,22.3,18.5,5.2,270,78.0,1015.2,0.0,1.2,6.5,35.1,0.8,15.0,20,500.0,5,'JohnDoe','BuoyV2','Good','Clear day');
INSERT INTO `marine_meteorology_station` VALUES ('MS001','2025-06-02',34.5,-120.7,23.0,19.0,6.0,260,80.5,1014.8,0.0,1.3,6.4,34.9,0.9,14.5,25,520.0,6,'JohnDoe','BuoyV2','Good','Slight wind shift');
INSERT INTO `marine_meteorology_station` VALUES ('MS002','2025-06-01',40.2,-73.0,19.5,16.8,4.5,180,85.0,1012.0,2.5,0.8,5.8,36.0,0.5,20.0,30,480.0,4,'JaneSmith','ShipboardX','Fair','Rain showers');

-- Archaeology exhibit catalog
CREATE TABLE `archaeology_exhibit` (
  `exhibit_id` TEXT NOT NULL,
  `title` TEXT DEFAULT NULL,
  `culture` TEXT DEFAULT NULL,
  `period` TEXT DEFAULT NULL,
  `origin_country` TEXT DEFAULT NULL,
  `discovery_site` TEXT DEFAULT NULL,
  `discovery_year` INTEGER DEFAULT NULL,
  `material` TEXT DEFAULT NULL,
  `dimensions_cm` TEXT DEFAULT NULL,
  `weight_kg` REAL DEFAULT NULL,
  `condition` TEXT DEFAULT NULL,
  `display_location` TEXT DEFAULT NULL,
  `curator_id` TEXT DEFAULT NULL,
  `acquisition_method` TEXT DEFAULT NULL,
  `acquisition_cost_usd` REAL DEFAULT NULL,
  `insurance_value_usd` REAL DEFAULT NULL,
  `loan_status` TEXT DEFAULT NULL,
  `last_restoration_date` DATE DEFAULT NULL,
  `restoration_details` TEXT DEFAULT NULL,
  `exhibit_start_date` DATE DEFAULT NULL,
  `exhibit_end_date` DATE DEFAULT NULL,
  `public_engagement_notes` TEXT DEFAULT NULL,
  `metadata_source` TEXT DEFAULT NULL,
  PRIMARY KEY (`exhibit_id`)
);

INSERT INTO `archaeology_exhibit` VALUES ('AE001','Bronze Age Sword','Celts','Bronze Age','Ireland','Dublin Site',1920,'Bronze','150x5','2.3','Excellent','Hall A','C001','Donation',0.0,50000.0,'OnDisplay','2023-02-15','Polish and stabilization','2025-01-01','2025-12-31','School tour program','MuseumDB');
INSERT INTO `archaeology_exhibit` VALUES ('AE002','Terracotta Warrior','Han','2nd Century BC','China','Xi\'an',1974,'Terracotta','180x60','150.0','Fair','Hall B','C002','Purchase',120000.0,300000.0,'OnLoan','2024-05-10','Cleaning and repair','2025-03-01','2025-09-30','Cultural exchange event','MuseumDB');
INSERT INTO `archaeology_exhibit` VALUES ('AE003','Mayan Stela','Maya','9th Century','Guatemala','Tikal',1995,'Stone','250x70','350.0','Good','Outdoor Garden','C003','Gift',0.0,200000.0,'OnDisplay','2022-11-20','Weatherproof coating','2025-06-15','2026-06-14','Community lecture series','MuseumDB');

-- Nanotech safety audit records
CREATE TABLE `nanotech_safety_audit` (
  `audit_id` TEXT NOT NULL,
  `facility_name` TEXT DEFAULT NULL,
  `audit_date` DATE DEFAULT NULL,
  `auditor_name` TEXT DEFAULT NULL,
  `nanomaterial_type` TEXT DEFAULT NULL,
  `particle_size_nm` REAL DEFAULT NULL,
  `exposure_limit_ppm` REAL DEFAULT NULL,
  `measured_concentration_ppm` REAL DEFAULT NULL,
  `ventilation_rate_cfh` REAL DEFAULT NULL,
  `ppe_required` TEXT DEFAULT NULL,
  `training_completed` INTEGER DEFAULT NULL,
  `spill_response_plan` TEXT DEFAULT NULL,
  `containment_level` TEXT DEFAULT NULL,
  `incident_history` TEXT DEFAULT NULL,
  `corrective_actions` TEXT DEFAULT NULL,
  `follow_up_date` DATE DEFAULT NULL,
  `status` TEXT DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  `regulatory_reference` TEXT DEFAULT NULL,
  `documentation_link` TEXT DEFAULT NULL,
  `risk_score` INTEGER DEFAULT NULL,
  `budget_usd` REAL DEFAULT NULL,
  `approval_signature` TEXT DEFAULT NULL,
  PRIMARY KEY (`audit_id`)
);

INSERT INTO `nanotech_safety_audit` VALUES ('NA001','NanoLab A','2025-05-10','DrSmith','SilverNanoparticles',20.5,0.01,0.008,500,'Yes',1,'StandardProcedure','Level 2','None','Increase ventilation','2025-06-10','Closed','All good','OSHA-1910','http://docs/nalab/audit1.pdf',5,15000.0','DrSmith');
INSERT INTO `nanotech_safety_audit` VALUES ('NA002','NanoLab B','2025-05-12','DrJones','CarbonNanotubes',5.0,0.005,0.006,750,'Yes',1,'SpillKit','Level 3','2 minor spills','Install additional hoods','2025-07-01','Open','Review pending','EPA-40CFR','http://docs/nalab/audit2.pdf',8,20000.0','DrJones');
INSERT INTO `nanotech_safety_audit` VALUES ('NA003','NanoLab C','2025-05-15','DrLee','QuantumDots',10.0,0.002,0.0015,600,'Yes',0,'StandardProcedure','Level 1','None','Conduct training','2025-06-20','Closed','Training scheduled','ISO-45001','http://docs/nalab/audit3.pdf',3,12000.0','DrLee');

-- Synthetic biology part registry
CREATE TABLE `synthetic_biology_part` (
  `part_id` TEXT NOT NULL,
  `part_name` TEXT DEFAULT NULL,
  `part_type` TEXT DEFAULT NULL,
  `source_organism` TEXT DEFAULT NULL,
  `sequence_length_bp` INTEGER DEFAULT NULL,
  `gc_content_percent` REAL DEFAULT NULL,
  `promoter_strength` TEXT DEFAULT NULL,
  `ribosome_binding_site` TEXT DEFAULT NULL,
  `coding_sequence` TEXT DEFAULT NULL,
  `terminator_type` TEXT DEFAULT NULL,
  `cloning_method` TEXT DEFAULT NULL,
  `vector_backbone` TEXT DEFAULT NULL,
  `selection_marker` TEXT DEFAULT NULL,
  `origin_of_replication` TEXT DEFAULT NULL,
  `copy_number` INTEGER DEFAULT NULL,
  `license` TEXT DEFAULT NULL,
  `availability` TEXT DEFAULT NULL,
  `date_added` DATE DEFAULT NULL,
  `added_by` TEXT DEFAULT NULL,
  `storage_location` TEXT DEFAULT NULL,
  `temperature_c` REAL DEFAULT NULL,
  `freeze_thaw_cycles` INTEGER DEFAULT NULL,
  `quality_check` TEXT DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  PRIMARY KEY (`part_id`)
);

INSERT INTO `synthetic_biology_part` VALUES ('SBP001','LuxR_Receptor','TranscriptionFactor','Vibrio_fischeri',1350,55.2,'High','Strong','ATG...TAA','DoubleTerminator','GoldenGate','pSB1C3','KanR','pBR322',15,'OpenSource','InStock','2024-11-01','DrAllen','FreezerA1',-80,2,'Sequenced','Used in quorum sensing circuit');
INSERT INTO `synthetic_biology_part` VALUES ('SBP002','GFP_Synth','Reporter','Aequorea_ventricle',720,48.7,'Medium','Standard','ATG...TGA','SingleTerminator','Gibson','pSB1K3','AmpR','pUC19',30,'MIT','InStock','2025-01-15','DrBaker','FreezerB2',-80,1,'Sequenced','Bright fluorescence');
INSERT INTO `synthetic_biology_part` VALUES ('SBP003','CRISPR_Cas9','Nuclease','Streptococcus_pyogenes',4500,62.0,'Low','None','ATG...TGA','DoubleTerminator','Restriction','pCas9','CmR','pSC101',5,'Proprietary','Ordered','2025-02-20','DrCarter','FreezerC3',-20,0,'Pending','High-fidelity Cas9');

-- Geothermal energy plant operational log
CREATE TABLE `geothermal_energy_plant` (
  `plant_id` TEXT NOT NULL,
  `plant_name` TEXT DEFAULT NULL,
  `location` TEXT DEFAULT NULL,
  `commission_date` DATE DEFAULT NULL,
  `capacity_mw` REAL DEFAULT NULL,
  `working_fluid` TEXT DEFAULT NULL,
  `injection_rate_kg_per_hr` REAL DEFAULT NULL,
  `production_rate_mw` REAL DEFAULT NULL,
  `steam_pressure_bar` REAL DEFAULT NULL,
  `steam_temperature_c` REAL DEFAULT NULL,
  `net_power_output_mw` REAL DEFAULT NULL,
  `downtime_hours` REAL DEFAULT NULL,
  `maintenance_type` TEXT DEFAULT NULL,
  `operator_id` TEXT DEFAULT NULL,
  `environmental_monitoring` TEXT DEFAULT NULL,
  `emission_co2_kg_per_mwh` REAL DEFAULT NULL,
  `water_usage_m3_per_day` REAL DEFAULT NULL,
  `last_inspection_date` DATE DEFAULT NULL,
  `next_inspection_due` DATE DEFAULT NULL,
  `regulatory_permit` TEXT DEFAULT NULL,
  `budget_usd` REAL DEFAULT NULL,
  `revenue_usd` REAL DEFAULT NULL,
  `status` TEXT DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  PRIMARY KEY (`plant_id`)
);

INSERT INTO `geothermal_energy_plant` VALUES ('GE001','BlueRiverPlant','Nevada_US','2015-06-01',50.0,'Water/Steam',1200.5,55.2,200.0,340.0,48.0,12.5,'Scheduled','OP001','Continuous','0.02',1500.0,'2024-12-01','2025-12-01','PermitA','5000000.0','7500000.0','Operational','Running smoothly');
INSERT INTO `geothermal_energy_plant` VALUES ('GE002','RedMagmaPlant','Iceland_IS','2010-09-15',30.0,'CO2',800.0,35.0,150.0,280.0,28.0,8.0,'Emergency','OP002','Periodic','0.015',1200.0,'2024-11-20','2025-11-20','PermitB','3000000.0','4600000.0','Operational','Minor valve issue');
INSERT INTO `geothermal_energy_plant` VALUES ('GE003','GreenValleyPlant','Philippines_PH','2020-01-20',70.0,'Water/Steam',1500.0,70.5,250.0,360.0,66.0,5.0,'Routine','OP003','Continuous','0.018',2000.0,'2024-10-05','2025-10-05','PermitC','8000000.0','12000000.0','Operational','High output month');

-- Artificial intelligence model registry
CREATE TABLE `artificial_intelligence_model_registry` (
  `model_id` TEXT NOT NULL,
  `model_name` TEXT DEFAULT NULL,
  `model_type` TEXT DEFAULT NULL,
  `framework` TEXT DEFAULT NULL,
  `version` TEXT DEFAULT NULL,
  `training_dataset` TEXT DEFAULT NULL,
  `num_parameters` INTEGER DEFAULT NULL,
  `training_start_date` DATE DEFAULT NULL,
  `training_end_date` DATE DEFAULT NULL,
  `accuracy_percent` REAL DEFAULT NULL,
  `precision_percent` REAL DEFAULT NULL,
  `recall_percent` REAL DEFAULT NULL,
  `f1_score` REAL DEFAULT NULL,
  `hardware_used` TEXT DEFAULT NULL,
  `gpu_hours` REAL DEFAULT NULL,
  `cpu_hours` REAL DEFAULT NULL,
  `storage_location` TEXT DEFAULT NULL,
  `license` TEXT DEFAULT NULL,
  `owner_team` TEXT DEFAULT NULL,
  `deployment_status` TEXT DEFAULT NULL,
  `endpoint_url` TEXT DEFAULT NULL,
  `monitoring_enabled` INTEGER DEFAULT NULL,
  `last_evaluation_date` DATE DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  PRIMARY KEY (`model_id`)
);

INSERT INTO `artificial_intelligence_model_registry` VALUES ('AI001','ImageNet_Classifier','CNN','TensorFlow','v1.0','ImageNet','25000000','2024-01-10','2024-02-20',92.5,90.0,94.0,92.0,'GPU_NVIDIA_V100',1500.0,300.0,'s3://models/imagenet','Apache2','VisionTeam','Deployed','https://api.example.com/v1/classify',1,'2025-01-01','Stable performance');
INSERT INTO `artificial_intelligence_model_registry` VALUES ('AI002','Speech_Recognizer','RNN','PyTorch','v2.1','LibriSpeech','18000000','2024-03-05','2024-04-15',88.3,86.5,89.0,87.7,'GPU_NVIDIA_A100',2000.0,400.0,'s3://models/speech','MIT','AudioTeam','Testing','https://api.example.com/v1/recognize',0,'2025-02-10','Awaiting production');
INSERT INTO `artificial_intelligence_model_registry` VALUES ('AI003','Fraud_Detector','XGBoost','XGBoost','v3.2','TransactionDB','5000','2024-06-01','2024-06-30',95.0,94.5,95.2,94.8,'CPU_Xeon','0.0',1200.0,'s3://models/fraud','Proprietary','RiskTeam','Deployed','https://api.example.com/v1/fraud',1,'2025-03-05','Monitoring thresholds updated');

-- Virtual reality experiment log
CREATE TABLE `virtual_reality_experiment` (
  `experiment_id` TEXT NOT NULL,
  `title` TEXT DEFAULT NULL,
  `researcher_id` TEXT DEFAULT NULL,
  `start_date` DATE DEFAULT NULL,
  `end_date` DATE DEFAULT NULL,
  `vr_hardware` TEXT DEFAULT NULL,
  `software_engine` TEXT DEFAULT NULL,
  `scene_complexity` TEXT DEFAULT NULL,
  `num_participants` INTEGER DEFAULT NULL,
  `average_session_minutes` REAL DEFAULT NULL,
  `motion_sickness_reports` INTEGER DEFAULT NULL,
  `head_movement_data` TEXT DEFAULT NULL,
  `hand_interaction_data` TEXT DEFAULT NULL,
  `audio_spatialization` TEXT DEFAULT NULL,
  `visual_fidelity` TEXT DEFAULT NULL,
  `data_storage_path` TEXT DEFAULT NULL,
  `ethics_approval_id` TEXT DEFAULT NULL,
  `funding_source` TEXT DEFAULT NULL,
  `budget_usd` REAL DEFAULT NULL,
  `outcome_summary` TEXT DEFAULT NULL,
  `published` INTEGER DEFAULT NULL,
  `doi` TEXT DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  PRIMARY KEY (`experiment_id`)
);

INSERT INTO `virtual_reality_experiment` VALUES ('VR001','SpatialNavigationStudy','R001','2024-09-01','2024-10-15','OculusQuest2','Unity','Medium',30,45.0,2,'HeadLog1','HandLog1','Stereo','High','/vrdata/exp1','EA100','GrantX',25000.0,'Improved wayfinding','1','10.1234/vr001','No issues');
INSERT INTO `virtual_reality_experiment` VALUES ('VR002','ImmersiveLearning','R002','2025-01-10','2025-02-20','HTCVive','Unreal','High',25,60.0,1,'HeadLog2','HandLog2','Binaural','Ultra','/vrdata/exp2','EA101','GrantY',30000.0,'Enhanced retention','0',NULL,'Preliminary results');
INSERT INTO `virtual_reality_experiment` VALUES ('VR003','PainDistractionTherapy','R003','2025-03-05','2025-04-10','ValveIndex','CustomEngine','Low',20,30.0,0,'HeadLog3','HandLog3','Mono','Medium','/vrdata/exp3','EA102','GrantZ',20000.0,'Reduced reported pain','1','10.1234/vr003','Positive feedback');

-- Biofabrication batch tracking
CREATE TABLE `biofabrication_batch` (
  `batch_id` TEXT NOT NULL,
  `product_name` TEXT DEFAULT NULL,
  `fabrication_method` TEXT DEFAULT NULL,
  `cell_line` TEXT DEFAULT NULL,
  `scaffold_material` TEXT DEFAULT NULL,
  `bioink_composition` TEXT DEFAULT NULL,
  `print_resolution_microns` REAL DEFAULT NULL,
  `print_speed_mm_per_min` REAL DEFAULT NULL,
  `incubator_temperature_c` REAL DEFAULT NULL,
  `incubator_humidity_percent` REAL DEFAULT NULL,
  `culture_duration_days` INTEGER DEFAULT NULL,
  `viability_percent` REAL DEFAULT NULL,
  `sterility_test_result` TEXT DEFAULT NULL,
  `release_criteria_met` INTEGER DEFAULT NULL,
  `batch_size_cm3` REAL DEFAULT NULL,
  `operator_id` TEXT DEFAULT NULL,
  `fabrication_start` DATE DEFAULT NULL,
  `fabrication_end` DATE DEFAULT NULL,
  `quality_control_passed` INTEGER DEFAULT NULL,
  `storage_location` TEXT DEFAULT NULL,
  `storage_temperature_c` REAL DEFAULT NULL,
  `shipping_conditions` TEXT DEFAULT NULL,
  `regulatory_approval_id` TEXT DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  PRIMARY KEY (`batch_id`)
);

INSERT INTO `biofabrication_batch` VALUES ('BB001','CartilagePatch','Bioprinting','MSC_LineA','Alginate','CollagenGel','100.0',30.0,37.0,85.0,14,92.5,'Passed',1,5.0,'OP100','2025-01-01','2025-01-05',1,'FreezerA','-80','ColdChain','RA001','No issues');
INSERT INTO `biofabrication_batch` VALUES ('BB002','SkinGraft','Extrusion','Keratinocyte_LineB','PCL','GelatinMethacrylate','150.0',25.0,36.5,80.0,10,88.0,'Passed',1,3.2,'OP101','2025-02-10','2025-02-14',1,'FreezerB','-80','Controlled','RA002','Minor deviation corrected');
INSERT INTO `biofabrication_batch` VALUES ('BB003','HeartValve','Stereolithography','iPSC_LineC','Polyurethane','HydrogelBlend','80.0',35.0,38.0,90.0,21,94.0,'Passed',1,7.5,'OP102','2025-03-20','2025-03-26',1,'FreezerC','-80','UltraCold','RA003','Validated for preclinical');

-- Facility HVAC zone performance metrics
CREATE TABLE `facility_hvac_zone_performance` (
  `zone_id` TEXT NOT NULL,
  `zone_name` TEXT DEFAULT NULL,
  `building_id` TEXT DEFAULT NULL,
  `floor_number` INTEGER DEFAULT NULL,
  `air_flow_cfm` REAL DEFAULT NULL,
  `temperature_setpoint_c` REAL DEFAULT NULL,
  `humidity_setpoint_percent` REAL DEFAULT NULL,
  `current_temperature_c` REAL DEFAULT NULL,
  `current_humidity_percent` REAL DEFAULT NULL,
  `co2_ppm` REAL DEFAULT NULL,
  `filter_status` TEXT DEFAULT NULL,
  `energy_consumption_kwh` REAL DEFAULT NULL,
  `maintenance_due_date` DATE DEFAULT NULL,
  `last_service_date` DATE DEFAULT NULL,
  `ventilation_efficiency_percent` REAL DEFAULT NULL,
  `noise_level_db` REAL DEFAULT NULL,
  `occupancy_status` TEXT DEFAULT NULL,
  `zone_type` TEXT DEFAULT NULL,
  `controller_firmware` TEXT DEFAULT NULL,
  `alert_active` INTEGER DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  `last_updated` DATE DEFAULT NULL,
  `performance_score` INTEGER DEFAULT NULL,
  `responsible_engineer` TEXT DEFAULT NULL,
  PRIMARY KEY (`zone_id`)
);

INSERT INTO `facility_hvac_zone_performance` VALUES ('HZ001','LabA_Zone1','BLDG01',2,1500.0,22.0,45.0,22.3,44.5,600.0,'Good',3200.0,'2025-06-01','2025-01-15',95.0,55.0,'Occupied','Laboratory','FW1.2',0,'All parameters nominal','2025-04-01',88,'Eng001');
INSERT INTO `facility_hvac_zone_performance` VALUES ('HZ002','LabB_Zone3','BLDG01',3,1800.0,21.5,50.0,21.7,49.8,580.0,'ReplaceSoon',3500.0','2025-07-15','2025-02-20',92.0,58.0,'Occupied','Laboratory','FW1.3',1,'Filter replacement required','2025-04-15',84,'Eng002');
INSERT INTO `facility_hvac_zone_performance` VALUES ('HZ003','Office_Zone5','BLDG02',5,1200.0,23.0,40.0,23.1,39.9,400.0,'Good',2100.0,'2025-08-01','2025-03-10',97.0,45.0,'Unoccupied','Office','FW2.0',0,'No issues','2025-04-20',91,'Eng003');

-- Robotics task definition library
CREATE TABLE `robotics_task_definition` (
  `task_id` TEXT NOT NULL,
  `task_name` TEXT DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  `required_robot_model` TEXT DEFAULT NULL,
  `programming_language` TEXT DEFAULT NULL,
  `estimated_duration_sec` REAL DEFAULT NULL,
  `safety_level` TEXT DEFAULT NULL,
  `required_tool` TEXT DEFAULT NULL,
  `sensor_requirements` TEXT DEFAULT NULL,
  `precision_mm` REAL DEFAULT NULL,
  `repeatability_mm` REAL DEFAULT NULL,
  `max_payload_kg` REAL DEFAULT NULL,
  `environment` TEXT DEFAULT NULL,
  `version` TEXT DEFAULT NULL,
  `author_id` TEXT DEFAULT NULL,
  `approval_status` TEXT DEFAULT NULL,
  `last_review_date` DATE DEFAULT NULL,
  `documentation_link` TEXT DEFAULT NULL,
  `simulation_available` INTEGER DEFAULT NULL,
  `deployment_status` TEXT DEFAULT NULL,
  `associated_project` TEXT DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  `last_modified` DATE DEFAULT NULL,
  `usage_count` INTEGER DEFAULT NULL,
  PRIMARY KEY (`task_id`)
);

INSERT INTO `robotics_task_definition` VALUES ('RT001','PickAndPlace','Standard pick and place operation','UR5','Python',30.0,'Medium','Gripper','ForceTorque','0.5','0.2',5.0,'Factory','v1.0','AUT001','Approved','2024-12-01','http://docs/rt001.pdf',1,'Deployed','ProjA','Used in line 1','2025-03-01',120);
INSERT INTO `robotics_task_definition` VALUES ('RT002','WeldingArc','Robotic arc welding','KukaKR','C++',45.0,'High','WeldingTorch','Vision','0.1','0.05',10.0,'Workshop','v2.1','AUT002','Pending','2025-01-15','http://docs/rt002.pdf',0,'InTesting','ProjB','Requires shielded cell','2025-03-10',45);
INSERT INTO `robotics_task_definition` VALUES ('RT003','InspectionVision','Automated visual inspection','ABBIRB','Java',25.0,'Low','CameraMount','Camera,Lighting','0.2','0.1',2.0,'CleanRoom','v1.2','AUT003','Approved','2024-11-20','http://docs/rt003.pdf',1,'Deployed','ProjC','Integrated with QA system','2025-02-20',78);

-- Remote monitoring station deployment log
CREATE TABLE `remote_monitoring_station_deployment` (
  `deployment_id` TEXT NOT NULL,
  `station_name` TEXT DEFAULT NULL,
  `station_type` TEXT DEFAULT NULL,
  `latitude` REAL DEFAULT NULL,
  `longitude` REAL DEFAULT NULL,
  `installation_date` DATE DEFAULT NULL,
  `installed_by` TEXT DEFAULT NULL,
  `communication_link` TEXT DEFAULT NULL,
  `power_source` TEXT DEFAULT NULL,
  `sensor_package` TEXT DEFAULT NULL,
  `data_retention_period_days` INTEGER DEFAULT NULL,
  `firmware_version` TEXT DEFAULT NULL,
  `last_maintenance_date` DATE DEFAULT NULL,
  `maintenance_interval_days` INTEGER DEFAULT NULL,
  `operational_status` TEXT DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  `regulatory_approval_id` TEXT DEFAULT NULL,
  `environmental_conditions` TEXT DEFAULT NULL,
  `data_uplink_bandwidth_mbps` REAL DEFAULT NULL,
  `alert_thresholds_configured` INTEGER DEFAULT NULL,
  `parent_network_id` TEXT DEFAULT NULL,
  `deployment_cost_usd` REAL DEFAULT NULL,
  `project_code` TEXT DEFAULT NULL,
  `last_updated` DATE DEFAULT NULL,
  PRIMARY KEY (`deployment_id`)
);

INSERT INTO `remote_monitoring_station_deployment` VALUES ('DS001','CoastalWind_01','Wind','34.7','-120.5','2024-08-15','TechTeamA','Satellite','Solar','Anemometer,Temp','365','FW3.0','2025-02-01','180','Active','Installed near lighthouse','RA200','Marine','5.0',1,'Net001',15000.0,'ENV01','2025-03-01');
INSERT INTO `remote_monitoring_station_deployment` VALUES ('DS002','ForestFire_02','Fire','45.2','-122.3','2024-09-20','TechTeamB','Cellular','Battery','Heat,Smoke','180','FW2.5','2025-01-10','90','Active','Located in protected forest area','RA201','Forest','3.0',1,'Net002',12000.0,'ENV02','2025-02-20');
INSERT INTO `remote_monitoring_station_deployment` VALUES ('DS003','ArcticTemp_03','Temperature','78.1','-65.0','2024-11-05','TechTeamC','Satellite','Wind','Temp,WindSpeed','730','FW4.1','2025-03-15','365','Inactive','Awaiting power line installation','RA202','Arctic','2.5',0,'Net003',25000.0','ENV03','2025-04-01');

-- Computational cluster node specification catalog
CREATE TABLE `computational_cluster_node_spec` (
  `node_id` TEXT NOT NULL,
  `hostname` TEXT DEFAULT NULL,
  `cpu_model` TEXT DEFAULT NULL,
  `cpu_cores` INTEGER DEFAULT NULL,
  `cpu_threads` INTEGER DEFAULT NULL,
  `gpu_model` TEXT DEFAULT NULL,
  `gpu_count` INTEGER DEFAULT NULL,
  `ram_gb` INTEGER DEFAULT NULL,
  `local_storage_tb` REAL DEFAULT NULL,
  `network_bandwidth_gbps` REAL DEFAULT NULL,
  `operating_system` TEXT DEFAULT NULL,
  `os_version` TEXT DEFAULT NULL,
  `rack_location` TEXT DEFAULT NULL,
  `power_supply_watts` INTEGER DEFAULT NULL,
  `cooling_type` TEXT DEFAULT NULL,
  `maintenance_window` TEXT DEFAULT NULL,
  `status` TEXT DEFAULT NULL,
  `last_update` DATE DEFAULT NULL,
  `installed_date` DATE DEFAULT NULL,
  `warranty_expiry` DATE DEFAULT NULL,
  `vendor` TEXT DEFAULT NULL,
  `support_contract_id` TEXT DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  `last_audit_date` DATE DEFAULT NULL,
  PRIMARY KEY (`node_id`)
);

INSERT INTO `computational_cluster_node_spec` VALUES ('CN001','node01','IntelXeonGold','32','64','NVIDIATeslaV100','2','256','8.0','40','Linux','CentOS7','RackA12','1200','Air','Sun02:00-04:00','Active','2025-03-01','2023-06-15','2028-06-15','Dell','SC001','Primary AI node','2025-02-20');
INSERT INTO `computational_cluster_node_spec` VALUES ('CN002','node02','AMD_EPYC','64','128','NVIDIATeslaA100','4','512','16.0','100','Linux','Ubuntu20.04','RackB07','1500','Liquid','Mon01:00-03:00','Active','2025-03-05','2024-01-10','2029-01-10','HPE','SC002','High‑memory compute','2025-02-25');
INSERT INTO `computational_cluster_node_spec` VALUES ('CN003','node03','IntelXeonSilver','24','48','None','0','128','4.0','10','Linux','Debian11','RackC03','800','Air','Sat03:00-05:00','Idle','2025-02-28','2022-09-20','2027-09-20','Lenovo','SC003','General purpose','2025-02-15');

-- Renewable energy asset performance record
CREATE TABLE `renewable_energy_asset_performance` (
  `asset_id` TEXT NOT NULL,
  `asset_type` TEXT DEFAULT NULL,
  `location` TEXT DEFAULT NULL,
  `commission_date` DATE DEFAULT NULL,
  `capacity_mw` REAL DEFAULT NULL,
  `average_output_mw` REAL DEFAULT NULL,
  `capacity_factor_percent` REAL DEFAULT NULL,
  `availability_percent` REAL DEFAULT NULL,
  `grid_connection_point` TEXT DEFAULT NULL,
  `maintenance_downtime_hours` REAL DEFAULT NULL,
  `last_maintenance_date` DATE DEFAULT NULL,
  `next_maintenance_due` DATE DEFAULT NULL,
  `performance_rating` INTEGER DEFAULT NULL,
  `environmental_impact_score` REAL DEFAULT NULL,
  `energy_generated_mwh` REAL DEFAULT NULL,
  `co2_offset_tonnes` REAL DEFAULT NULL,
  `operational_status` TEXT DEFAULT NULL,
  `operator_company` TEXT DEFAULT NULL,
  `regulatory_permit_id` TEXT DEFAULT NULL,
  `budget_usd` REAL DEFAULT NULL,
  `revenue_usd` REAL DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  `last_report_date` DATE DEFAULT NULL,
  `data_source` TEXT DEFAULT NULL,
  PRIMARY KEY (`asset_id`)
);

INSERT INTO `renewable_energy_asset_performance` VALUES ('RE001','Solar','Nevada_US','2018-04-01',25.0,22.5,90.0,98.0,'PointA',48.0,'2024-11-15','2025-11-15',85,4.5,197250.0,120.0,'Operational','SunPower','RP001',2000000.0,3500000.0,'Stable output','2025-03-01','SCADA');
INSERT INTO `renewable_energy_asset_performance` VALUES ('RE002','Wind','Texas_US','2016-08-15',50.0,38.0,76.0,95.0,'PointB',72.0,'2024-10-10','2025-10-10',80,5.0,332000.0,200.0,'Operational','WindTech','RP002',3000000.0,5300000.0,'Minor blade wear','2025-03-05','SCADA');
INSERT INTO `renewable_energy_asset_performance` VALUES ('RE003','Hydro','Oregon_US','2012-03-20',100.0,85.0,85.0,99.0,'PointC',120.0,'2024-09-01','2025-09-01',90,3.0,744600.0,500.0,'Operational','HydroGen','RP003',5000000.0,9500000.0,'Excellent performance','2025-03-10','SCADA');