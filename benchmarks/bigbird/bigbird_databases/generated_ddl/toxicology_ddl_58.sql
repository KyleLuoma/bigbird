-- Lab Environmental Humidity Log
CREATE TABLE `lab_environmental_humidity_log` (
  `record_id` TEXT NOT NULL,
  `timestamp` TEXT NOT NULL,
  `lab_section` TEXT,
  `sensor_id` TEXT,
  `humidity_percent` REAL,
  `temperature_c` REAL,
  `dew_point_c` REAL,
  `sensor_status` TEXT,
  `calibration_date` TEXT,
  `operator_id` TEXT,
  `maintenance_flag` INTEGER,
  `external_weather_humidity` REAL,
  `external_weather_temp` REAL,
  `notes` TEXT,
  `data_quality_score` REAL,
  `batch_id` TEXT,
  `uploaded_by` TEXT,
  `upload_timestamp` TEXT,
  `validation_status` TEXT,
  `archived_flag` INTEGER,
  `revision_number` INTEGER,
  PRIMARY KEY (`record_id`)
);
INSERT INTO `lab_environmental_humidity_log` VALUES
('hum001','2025-01-01T08:00:00','SectionA','sensorA1',45.2,22.5,7.1,'OK','2024-12-01','op123',0,50.0,15.0,'Initial reading',0.98,'batch01','sysadmin','2025-01-01T09:00:00','validated',0,1),
('hum002','2025-01-01T12:00:00','SectionB','sensorB2',48.5,23.0,9.0,'OK','2024-12-01','op124',0,55.0,16.0,'Midday reading',0.97,'batch01','sysadmin','2025-01-01T13:00:00','validated',0,1),
('hum003','2025-01-01T16:00:00','SectionC','sensorC3',42.0,21.8,5.5,'OK','2024-12-01','op125',0,48.0,14.5,'Afternoon reading',0.96,'batch01','sysadmin','2025-01-01T17:00:00','validated',0,1);

-- Lab Power Distribution Log
CREATE TABLE `lab_power_distribution_log` (
  `log_id` TEXT NOT NULL,
  `recorded_at` TEXT NOT NULL,
  `panel_id` TEXT,
  `phase` TEXT,
  `voltage_v` REAL,
  `current_a` REAL,
  `frequency_hz` REAL,
  `power_kw` REAL,
  `reactive_power_kvar` REAL,
  `power_factor` REAL,
  `temperature_c` REAL,
  `status` TEXT,
  `alarm_code` TEXT,
  `operator_id` TEXT,
  `maintenance_cycle` INTEGER,
  `event_description` TEXT,
  `data_quality` REAL,
  `batch_ref` TEXT,
  `uploaded_by` TEXT,
  `upload_time` TEXT,
  `archived` INTEGER,
  PRIMARY KEY (`log_id`)
);
INSERT INTO `lab_power_distribution_log` VALUES
('pwr001','2025-02-10T08:15:00','panelA','L1',230.0,15.2,50.0,3.5,0.8,0.95,35.0,'NORMAL','NONE','op200',30,'No issues',0.99,'batchP1','admin','2025-02-10T08:20:00',0),
('pwr002','2025-02-10T12:45:00','panelB','L2',230.0,18.1,50.0,4.2,1.1,0.92,36.5,'NORMAL','NONE','op201',30,'Slight overload',0.97,'batchP1','admin','2025-02-10T12:50:00',0),
('pwr003','2025-02-10T17:30:00','panelC','L3',230.0,12.5,50.0,2.9,0.5,0.98,34.0,'NORMAL','NONE','op202',30,'Stable',0.99,'batchP1','admin','2025-02-10T17:35:00',0);

-- Facility HVAC Zone Performance
CREATE TABLE `facility_hvac_zone_performance` (
  `zone_perf_id` TEXT NOT NULL,
  `zone_id` TEXT,
  `measurement_time` TEXT,
  `supply_temp_c` REAL,
  `return_temp_c` REAL,
  `delta_t_c` REAL,
  `airflow_cmh` REAL,
  `fan_speed_rpm` REAL,
  `energy_consumption_kwh` REAL,
  `co2_ppm` REAL,
  `humidity_percent` REAL,
  `filter_status` TEXT,
  `maintenance_due` INTEGER,
  `operator_id` TEXT,
  `alarm_flag` INTEGER,
  `notes` TEXT,
  `data_quality_score` REAL,
  `batch_tag` TEXT,
  `uploaded_by` TEXT,
  `upload_timestamp` TEXT,
  `archived_flag` INTEGER,
  PRIMARY KEY (`zone_perf_id`)
);
INSERT INTO `facility_hvac_zone_performance` VALUES
('hvz001','ZoneA','2025-03-01T09:00:00',22.5,19.0,3.5,1200.0,1500,5.2,600,45.0,'GOOD',0,'op300',0,'Normal operation',0.98,'batchHV1','sysadmin','2025-03-01T09:10:00',0),
('hvz002','ZoneB','2025-03-01T09:05:00',23.0,19.5,3.5,1150.0,1480,5.0,580,47.0,'GOOD',0,'op301',0,'Normal operation',0.97,'batchHV1','sysadmin','2025-03-01T09:15:00',0),
('hvz003','ZoneC','2025-03-01T09:10:00',21.8,18.8,3.0,1300.0,1520,5.5,610,44.0,'GOOD',0,'op302',0,'Normal operation',0.99,'batchHV1','sysadmin','2025-03-01T09:20:00',0);

-- Instrument Signal Integrity Log
CREATE TABLE `instrument_signal_integrity_log` (
  `signal_log_id` TEXT NOT NULL,
  `instrument_id` TEXT,
  `timestamp` TEXT,
  `signal_type` TEXT,
  `amplitude_mv` REAL,
  `frequency_hz` REAL,
  `noise_ratio_db` REAL,
  `distortion_percent` REAL,
  `baseline_offset_mv` REAL,
  `temperature_c` REAL,
  `humidity_percent` REAL,
  `operator_id` TEXT,
  `calibration_status` TEXT,
  `error_code` TEXT,
  `resolution_bits` INTEGER,
  `sampling_rate_hz` REAL,
  `data_quality` REAL,
  `batch_ref` TEXT,
  `uploaded_by` TEXT,
  `upload_time` TEXT,
  `archived` INTEGER,
  PRIMARY KEY (`signal_log_id`)
);
INSERT INTO `instrument_signal_integrity_log` VALUES
('sig001','instA','2025-04-12T10:00:00','ANALOG',150.2,1000.0,0.5,0.02,0.1,22.5,40.0,'op400','PASS','NONE',16,20000.0,0.99,'batchSI1','admin','2025-04-12T10:05:00',0),
('sig002','instB','2025-04-12T10:10:00','DIGITAL',0.0,5000.0,0.2,0.01,0.0,23.0,38.0,'op401','PASS','NONE',24,50000.0,0.98,'batchSI1','admin','2025-04-12T10:15:00',0),
('sig003','instC','2025-04-12T10:20:00','RF',75.5,25000.0,1.0,0.05,0.2,21.8,42.0,'op402','PASS','NONE',20,100000.0,0.97,'batchSI1','admin','2025-04-12T10:25:00',0);

-- Research Data ETL Audit
CREATE TABLE `research_data_etl_audit` (
  `audit_id` TEXT NOT NULL,
  `pipeline_name` TEXT,
  `run_timestamp` TEXT,
  `source_system` TEXT,
  `target_system` TEXT,
  `record_count` INTEGER,
  `processed_records` INTEGER,
  `failed_records` INTEGER,
  `duration_seconds` REAL,
  `cpu_usage_percent` REAL,
  `memory_usage_mb` REAL,
  `io_bytes` REAL,
  `operator_id` TEXT,
  `status` TEXT,
  `error_message` TEXT,
  `validation_passed` INTEGER,
  `checksum_source` TEXT,
  `checksum_target` TEXT,
  `batch_tag` TEXT,
  `uploaded_by` TEXT,
  `upload_time` TEXT,
  PRIMARY KEY (`audit_id`)
);
INSERT INTO `research_data_etl_audit` VALUES
('etl001','raw_to_curated','2025-05-01T02:00:00','lab_db','warehouse','50000','49980','20',3600.0,45.0,2048.0,1250000000.0,'op500','SUCCESS','',1,'abc123','def456','batchETL1','admin','2025-05-01T03:00:00'),
('etl002','curated_to_public','2025-05-02T02:00:00','warehouse','pub_repo','48000','47995','5',3400.0,40.0,1900.0,1100000000.0,'op501','SUCCESS','',1,'ghi789','jkl012','batchETL1','admin','2025-05-02T03:00:00'),
('etl003','metadata_sync','2025-05-03T02:00:00','metadata_service','search_index','20000','19980','20',1800.0,35.0,1200.0,800000000.0,'op502','SUCCESS','',1,'mno345','pqr678','batchETL1','admin','2025-05-03T03:00:00');

-- Sample Isotope Labeling Record
CREATE TABLE `sample_isotope_labeling_record` (
  `label_id` TEXT NOT NULL,
  `sample_id` TEXT,
  `isotope` TEXT,
  `labeling_method` TEXT,
  `enrichment_percent` REAL,
  `date_started` TEXT,
  `date_completed` TEXT,
  `operator_id` TEXT,
  `lab_section` TEXT,
  `batch_number` TEXT,
  `purity_percent` REAL,
  `yield_percent` REAL,
  `verification_method` TEXT,
  `verification_result` TEXT,
  `notes` TEXT,
  `quality_score` REAL,
  `storage_location` TEXT,
  `temperature_c` REAL,
  `humidity_percent` REAL,
  `archived_flag` INTEGER,
  `revision_number` INTEGER,
  PRIMARY KEY (`label_id`)
);
INSERT INTO `sample_isotope_labeling_record` VALUES
('labell001','sampleA','C13','METABOLIC',98.5,'2025-06-01','2025-06-05','op600','SectionA','batchI1',99.0,85.0,'MS','PASS','No issues',0.99,'Freezer1', -80.0,30.0,0,1),
('labell002','sampleB','N15','PEPTIDE',95.0,'2025-06-02','2025-06-06','op601','SectionB','batchI1',98.0,80.0,'NMR','PASS','Minor shift',0.96,'Freezer2', -80.0,32.0,0,1),
('labell003','sampleC','C13','LIPID',97.2,'2025-06-03','2025-06-07','op602','SectionC','batchI1',97.5,82.0,'GC','PASS','All good',0.98,'Freezer3', -80.0,31.0,0,1);

-- Nanomaterial Safety Training Record
CREATE TABLE `nanomaterial_safety_training_record` (
  `training_id` TEXT NOT NULL,
  `employee_id` TEXT,
  `nanomaterial_type` TEXT,
  `training_date` TEXT,
  `trainer_name` TEXT,
  `duration_minutes` INTEGER,
  `assessment_score` REAL,
  `certification_id` TEXT,
  `valid_until` TEXT,
  `location` TEXT,
  `safety_equipment_used` TEXT,
  `hazard_class` TEXT,
  `control_measures` TEXT,
  `notes` TEXT,
  `status` TEXT,
  `uploaded_by` TEXT,
  `upload_timestamp` TEXT,
  `revision_number` INTEGER,
  `archived_flag` INTEGER,
  `batch_ref` TEXT,
  `quality_audit_flag` INTEGER,
  PRIMARY KEY (`training_id`)
);
INSERT INTO `nanomaterial_safety_training_record` VALUES
('train001','emp100','CarbonNanotube','2025-07-10','DrSmith',90,0.92,'certA1','2028-07-10','LabA','PPE','Class1','FumeHood;Gloves','Completed with high score','COMPLETED','admin','2025-07-11',1,0,'batchNT1',0),
('train002','emp101','SilverNanoparticle','2025-07-12','DrJones',75,0.88,'certB2','2027-07-12','LabB','Mask;Gloves','Class2','Ventilation;Mask','Satisfactory','COMPLETED','admin','2025-07-13',1,0,'batchNT1',0),
('train003','emp102','QuantumDot','2025-07-14','DrLee',80,0.95,'certC3','2029-07-14','LabC','Goggles;Gloves','Class3','ContainmentCabinet','Excellent performance','COMPLETED','admin','2025-07-15',1,0,'batchNT1',0);

-- Compound Spectroscopy Summary
CREATE TABLE `compound_spectroscopy_summary` (
  `summary_id` TEXT NOT NULL,
  `compound_id` TEXT,
  `spectroscopy_type` TEXT,
  `instrument_id` TEXT,
  `acquisition_date` TEXT,
  `operator_id` TEXT,
  `sample_prep_method` TEXT,
  `wavelength_start_nm` REAL,
  `wavelength_end_nm` REAL,
  `resolution_nm` REAL,
  `signal_to_noise` REAL,
  `peak_count` INTEGER,
  `major_peaks` TEXT,
  `baseline_correction` TEXT,
  `integration_method` TEXT,
  `notes` TEXT,
  `data_quality_score` REAL,
  `batch_id` TEXT,
  `uploaded_by` TEXT,
  `upload_timestamp` TEXT,
  `archived_flag` INTEGER,
  PRIMARY KEY (`summary_id`)
);
INSERT INTO `compound_spectroscopy_summary` VALUES
('spec001','cmpA','UVVis','instU1','2025-08-01','op700','DissolveInMethanol',200.0,800.0,1.0,120.5,5,'200,450,600','AUTOMATIC','TRAPEZOID','Clear spectrum',0.99,'batchSP1','admin','2025-08-02',0),
('spec002','cmpB','IR','instI2','2025-08-03','op701','PelletKBr',400.0,4000.0,2.0,85.3,7,'1500,1700,2200','MANUAL','GAUSSIAN','Strong absorbance',0.95,'batchSP1','admin','2025-08-04',0),
('spec003','cmpC','Raman','instR3','2025-08-05','op702','DropCast','100.0',3500.0,1.5,110.0,6,'500,1500,2500','AUTOMATIC','LORENTZ','Baseline stable',0.97,'batchSP1','admin','2025-08-06',0);

-- Computational Resource Quota History
CREATE TABLE `computational_resource_quota_history` (
  `quota_id` TEXT NOT NULL,
  `project_id` TEXT,
  `resource_type` TEXT,
  `allocated_units` REAL,
  `used_units` REAL,
  `remaining_units` REAL,
  `allocation_date` TEXT,
  `expiration_date` TEXT,
  `adjustment_reason` TEXT,
  `adjusted_by` TEXT,
  `approval_status` TEXT,
  `notes` TEXT,
  `audit_timestamp` TEXT,
  `archived_flag` INTEGER,
  `revision_number` INTEGER,
  `batch_reference` TEXT,
  `requested_units` REAL,
  `approval_date` TEXT,
  `expiry_extension_days` INTEGER,
  `overage_allowed` INTEGER,
  `policy_version` TEXT,
  PRIMARY KEY (`quota_id`)
);
INSERT INTO `computational_resource_quota_history` VALUES
('quota001','projA','CPU_HOURS',10000.0,4500.0,5500.0,'2025-01-01','2025-12-31','Initial allocation','admin','APPROVED','', '2025-01-01T10:00:00',0,1,'batchQ1',10000.0,'2025-01-01',0,0,'v1'),
('quota002','projB','GPU_HOURS',2000.0,1800.0,200.0,'2025-02-01','2025-11-30','Mid-year increase','admin','APPROVED','', '2025-06-01T12:00:00',0,2,'batchQ1',2500.0,'2025-06-01',30,0,'v1'),
('quota003','projC','STORAGE_TB',500.0,300.0,200.0,'2025-03-01','2025-09-30','Reduction request','admin','APPROVED','', '2025-07-15T09:30:00',0,3,'batchQ1',500.0,'2025-03-01',0,0,'v1');

-- Environmental Airborne Particle Analysis
CREATE TABLE `environmental_airborne_particle_analysis` (
  `analysis_id` TEXT NOT NULL,
  `station_id` TEXT,
  `sample_timestamp` TEXT,
  `particle_count_per_cm3` REAL,
  `average_diameter_um` REAL,
  `mass_concentration_ug_m3` REAL,
  `pm1_concentration_ug_m3` REAL,
  `pm2_5_concentration_ug_m3` REAL,
  `pm10_concentration_ug_m3` REAL,
  `temperature_c` REAL,
  `humidity_percent` REAL,
  `wind_speed_m_s` REAL,
  `wind_direction_deg` REAL,
  `precipitation_mm` REAL,
  `sensor_status` TEXT,
  `calibration_date` TEXT,
  `operator_id` TEXT,
  `notes` TEXT,
  `data_quality_score` REAL,
  `batch_ref` TEXT,
  `uploaded_by` TEXT,
  `upload_timestamp` TEXT,
  PRIMARY KEY (`analysis_id`)
);
INSERT INTO `environmental_airborne_particle_analysis` VALUES
('part001','stnA','2025-09-01T08:00:00',1500.0,0.3,12.5,5.0,8.0,15.0,22.5,55.0,3.2,180.0,0.0,'OK','2025-08-01','op800','Clear sky',0.98,'batchPA1','admin','2025-09-01T09:00:00'),
('part002','stnB','2025-09-01T08:15:00',1700.0,0.35,14.0,6.0,9.0,16.5,21.8,57.0,3.5,190.0,0.0,'OK','2025-08-01','op801','Slight haze',0.97,'batchPA1','admin','2025-09-01T09:15:00'),
('part003','stnC','2025-09-01T08:30:00',1300.0,0.28,11.0,4.5,7.2,14.2,23.0,53.0,3.0,170.0,0.0,'OK','2025-08-01','op802','Clear conditions',0.99,'batchPA1','admin','2025-09-01T09:30:00');

-- Lab Robotic Arm Task Definition
CREATE TABLE `lab_robotic_arm_task_definition` (
  `task_def_id` TEXT NOT NULL,
  `task_name` TEXT,
  `description` TEXT,
  `required_tool` TEXT,
  `estimated_duration_sec` INTEGER,
  `priority_level` INTEGER,
  `safety_requirements` TEXT,
  `calibration_required` INTEGER,
  `operator_id` TEXT,
  `creation_timestamp` TEXT,
  `last_modified_timestamp` TEXT,
  `version_number` INTEGER,
  `approval_status` TEXT,
  `approved_by` TEXT,
  `approval_timestamp` TEXT,
  `parameter_set_id` TEXT,
  `resource_constraints` TEXT,
  `dependency_task_id` TEXT,
  `execution_location` TEXT,
  `notes` TEXT,
  `archived_flag` INTEGER,
  `batch_tag` TEXT,
  PRIMARY KEY (`task_def_id`)
);
INSERT INTO `lab_robotic_arm_task_definition` VALUES
('task001','PlateTransfer','Move96wellPlateFromIncubatorToReader','Gripper',30,2,'NoHumanProximity',1,'op900','2025-10-01T08:00:00','2025-10-01T08:00:00',1,'APPROVED','admin','2025-10-01T08:30:00','paramA1','CPU:2,RAM:4GB','', 'Station1','Initial definition',0,'batchTA1'),
('task002','SampleAliquot','Aliquot10uLFromSourceToDestination','Pipette',45,3,'GlovesRequired',1,'op901','2025-10-02T09:00:00','2025-10-02T09:05:00',1,'APPROVED','admin','2025-10-02T09:30:00','paramB2','CPU:3,RAM:6GB','task001','Station2','Dependent on PlateTransfer',0,'batchTA1'),
('task003','WasteDisposal','TransferUsedTipsToWasteBin','Gripper',20,1,'NoOpenFlame',0,'op902','2025-10-03T10:00:00','2025-10-03T10:00:00',1,'APPROVED','admin','2025-10-03T10:30:00','paramC3','CPU:1,RAM:2GB','task002','Station3','Final cleanup step',0,'batchTA1');

-- Facility Energy Infrastructure
CREATE TABLE `facility_energy_infrastructure` (
  `infra_id` TEXT NOT NULL,
  `component_type` TEXT,
  `manufacturer` TEXT,
  `model_number` TEXT,
  `installation_date` TEXT,
  `capacity_kw` REAL,
  `efficiency_percent` REAL,
  `operational_status` TEXT,
  `last_maintenance_date` TEXT,
  `next_maintenance_due` TEXT,
  `location` TEXT,
  `voltage_level` REAL,
  `current_rating_a` REAL,
  `power_factor` REAL,
  `grid_connection_point` TEXT,
  `backup_power_available` INTEGER,
  `maintenance_contact` TEXT,
  `warranty_expiration` TEXT,
  `energy_source` TEXT,
  `notes` TEXT,
  `data_quality_score` REAL,
  `archived_flag` INTEGER,
  `batch_ref` TEXT,
  PRIMARY KEY (`infra_id`)
);
INSERT INTO `facility_energy_infrastructure` VALUES
('inf001','Transformer','Siemens','TR-5000','2020-05-15',2500.0,98.5,'OPERATIONAL','2025-01-10','2025-07-10','BuildingA','13.8',500.0,0.99,'PointA',1,'TechA','2026-05-15','Electrical','Main power transformer',0.99,0,'batchEI1'),
('inf002','UPS','Eaton','UPS-3500','2021-03-20',3500.0,95.0,'OPERATIONAL','2025-02-20','2025-08-20','BuildingB','400','20.0',0.97,'PointB',1,'TechB','2027-03-20','Battery','Backup UPS system',0.98,0,'batchEI1'),
('inf003','SolarPanelArray','SunPower','SPA-100','2022-11-05',1200.0,92.0,'OPERATIONAL','2025-03-15','2025-09-15','RoofC','0.48','5.0',0.96,'PointC',0,'TechC','2029-11-05','Solar','Rooftop solar PV',0.97,0,'batchEI1');

-- Nanomaterial Production Schedule
CREATE TABLE `nanomaterial_production_schedule` (
  `schedule_id` TEXT NOT NULL,
  `nanomaterial_type` TEXT,
  `batch_number` TEXT,
  `planned_start` TEXT,
  `planned_end` TEXT,
  `actual_start` TEXT,
  `actual_end` TEXT,
  `production_line` TEXT,
  `operator_id` TEXT,
  `supervisor_id` TEXT,
  `status` TEXT,
  `quality_check_passed` INTEGER,
  `yield_percent` REAL,
  `purity_percent` REAL,
  `hazard_class` TEXT,
  `safety_measures` TEXT,
  `notes` TEXT,
  `revision_number` INTEGER,
  `archived_flag` INTEGER,
  `batch_tag` TEXT,
  `priority_level` INTEGER,
  `estimated_cost_usd` REAL,
  `actual_cost_usd` REAL,
  PRIMARY KEY (`schedule_id`)
);
INSERT INTO `nanomaterial_production_schedule` VALUES
('sched001','CarbonNanotube','CNT-2025-01','2025-11-01T08:00:00','2025-11-03T18:00:00','2025-11-01T08:15:00','2025-11-03T17:45:00','LineA','op1000','sup200','COMPLETED',1,88.0,99.5,'Class1','Ventilation;PPE','Routine production',1,0,'batchNP1',1,150000.0,148500.0),
('sched002','SilverNanoparticle','AgNP-2025-02','2025-12-05T09:00:00','2025-12-06T17:00:00','2025-12-05T09:10:00','2025-12-06T16:50:00','LineB','op1001','sup201','COMPLETED',1,92.0,98.0,'Class2','FumeHood;Gloves','Standard batch',1,0,'batchNP1',2,120000.0,119000.0),
('sched003','QuantumDot','QD-2025-03','2026-01-10T07:30:00','2026-01-12T19:30:00','2026-01-10T07:45:00','2026-01-12T19:15:00','LineC','op1002','sup202','COMPLETED',1,85.0,97.5,'Class3','CleanRoom;Goggles','High priority batch',1,0,'batchNP1',1,180000.0,179200.0);

-- Lab Ventilation Zone Configuration
CREATE TABLE `lab_ventilation_zone_configuration` (
  `zone_config_id` TEXT NOT NULL,
  `zone_id` TEXT,
  `description` TEXT,
  `air_change_rate_per_hour` REAL,
  `supply_airflow_cmh` REAL,
  `exhaust_airflow_cmh` REAL,
  `filter_type` TEXT,
  `filter_efficiency_percent` REAL,
  `pressure_difference_pa` REAL,
  `temperature_setpoint_c` REAL,
  `humidity_setpoint_percent` REAL,
  `occupancy_limit` INTEGER,
  `monitoring_sensor_id` TEXT,
  `alarm_threshold` REAL,
  `maintenance_interval_days` INTEGER,
  `last_maintenance_date` TEXT,
  `next_maintenance_due` TEXT,
  `control_system_id` TEXT,
  `energy_consumption_kw` REAL,
  `noise_level_db` REAL,
  `notes` TEXT,
  `archived_flag` INTEGER,
  `batch_ref` TEXT,
  `revision_number` INTEGER,
  PRIMARY KEY (`zone_config_id`)
);
INSERT INTO `lab_ventilation_zone_configuration` VALUES
('vconf001','VentA','Main Lab Area',12.0,1500.0,1480.0,'HEPA','99.97',5.0,22.0,45.0,4,'sensorV1',0.8,180,'2025-04-01','2025-09-28','ctrl001',5.5,55.0,'Standard configuration',0,'batchVZ1',1),
('vconf002','VentB','Chemical Storage',15.0,800.0,790.0,'ULPA','99.9995',6.0,20.0,40.0,2,'sensorV2',0.9,200,'2025-03-15','2025-09-30','ctrl002',3.2,48.0,'Enhanced filtration',0,'batchVZ1',1),
('vconf003','VentC','Biohazard Suite',20.0,1200.0,1195.0,'HEPA','99.97',4.5,21.0,42.0,3,'sensorV3',0.7,150,'2025-04-10','2025-09-27','ctrl003',4.8,52.0,'Negative pressure zone',0,'batchVZ1',1);