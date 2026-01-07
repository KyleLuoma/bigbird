-- Spectral calibration reference data for laboratory instruments
CREATE TABLE `spectral_calibration_reference` (
  `cal_id` TEXT PRIMARY KEY,
  `instrument_type` TEXT,
  `wavelength_start` REAL,
  `wavelength_end` REAL,
  `calibration_date` TEXT,
  `technician_id` TEXT,
  `calibration_method` TEXT,
  `reference_standard` TEXT,
  `uncertainty` REAL,
  `notes` TEXT,
  `version` INTEGER,
  `lab_location` TEXT,
  `temperature` REAL,
  `humidity` REAL,
  `pressure` REAL,
  `operator_id` TEXT,
  `validation_status` TEXT,
  `next_due_date` TEXT,
  `calibration_file_path` TEXT,
  `data_source` TEXT,
  `audit_user` TEXT,
  `audit_timestamp` TEXT
);
INSERT INTO `spectral_calibration_reference` VALUES ('CAL001','FTIR',400,4000,'2023-01-15','TECH01','Standard','NIST_SRM_621',0.5,'Initial calibration',1,'LabA',22.5,45,1013,'OP01','Validated','2024-01-15','/files/cal001.dat','Internal','admin','2023-01-16 10:00:00');
INSERT INTO `spectral_calibration_reference` VALUES ('CAL002','UVVis',200,800,'2023-03-20','TECH02','GasCell','NIST_SRML_2A',0.3,'Routine check',2,'LabB',21.0,40,1010,'OP02','Validated','2024-03-20','/files/cal002.dat','Internal','admin','2023-03-21 09:30:00');
INSERT INTO `spectral_calibration_reference` VALUES ('CAL003','Raman',100,3500,'2023-06-05','TECH03','SolidReference','NIST_RM_864',0.2,'After maintenance',3,'LabC',23.0,42,1015,'OP03','Pending','2024-06-05','/files/cal003.dat','External','admin','2023-06-06 14:45:00');

-- Nanotoxicology assessment records for nanomaterial safety studies
CREATE TABLE `nanotoxicology_assessment` (
  `assessment_id` TEXT PRIMARY KEY,
  `nanomaterial_id` TEXT,
  `study_type` TEXT,
  `cell_line` TEXT,
  `exposure_concentration` REAL,
  `exposure_duration` REAL,
  `viability_percent` REAL,
  `oxidative_stress_score` REAL,
  `inflammation_score` REAL,
  `assay_method` TEXT,
  `analyst_id` TEXT,
  `assessment_date` TEXT,
  `lab_section` TEXT,
  `instrument_used` TEXT,
  `protocol_version` TEXT,
  `control_group_id` TEXT,
  `result_summary` TEXT,
  `data_file_path` TEXT,
  `compliance_status` TEXT,
  `reviewer_id` TEXT,
  `review_date` TEXT,
  `audit_timestamp` TEXT,
  `notes` TEXT
);
INSERT INTO `nanotoxicology_assessment` VALUES ('NA001','NM001','Cytotoxicity','A549',10,24,78.5,1.2,0.8,'MTT','AN01','2023-02-10','NanoLab','FlowCytometer','v1.0','CTRL001','Reduced viability at 10ug/ml','/data/na001.csv','Compliant','REV01','2023-02-15','2023-02-15 11:20:00','');
INSERT INTO `nanotoxicology_assessment` VALUES ('NA002','NM002','Genotoxicity','HeLa',5,48,92.3,0.6,0.4,'CometAssay','AN02','2023-04-22','GenLab','FluorescenceMicroscope','v2.1','CTRL002','No DNA damage observed','/data/na002.csv','Compliant','REV02','2023-04-27','2023-04-27 09:45:00','');
INSERT INTO `nanotoxicology_assessment` VALUES ('NA003','NM003','Inflammation','THP1',20,72,65.0,2.5,1.9,'ELISA','AN03','2023-07-08','ImmunoLab','PlateReader','v1.3','CTRL003','Elevated cytokine release','/data/na003.csv','NonCompliant','REV03','2023-07-14','2023-07-14 16:10:00','Follow‑up required');

-- Cryogenic logistics schedule for ultra‑low temperature shipments
CREATE TABLE `cryogenic_logistics_schedule` (
  `schedule_id` TEXT PRIMARY KEY,
  `shipment_id` TEXT,
  `source_location` TEXT,
  `destination_location` TEXT,
  `carrier_company` TEXT,
  `departure_datetime` TEXT,
  `arrival_datetime` TEXT,
  `container_type` TEXT,
  `temperature_setpoint` REAL,
  `temperature_actual` REAL,
  `humidity_percent` REAL,
  `handling_instructions` TEXT,
  `responsible_person` TEXT,
  `status` TEXT,
  `tracking_number` TEXT,
  `eta` TEXT,
  `docket_number` TEXT,
  `refrigeration_unit_id` TEXT,
  `validation_status` TEXT,
  `audit_user` TEXT,
  `audit_timestamp` TEXT,
  `notes` TEXT
);
INSERT INTO `cryogenic_logistics_schedule` VALUES ('CS001','SHIP001','FreezerA','LabX','ColdTrans','2023-03-01 08:00:00','2023-03-01 12:30:00','LN2_Tank',-196,-195,5,'Keep upright','JohnDoe','InTransit','TRK12345','2023-03-01 12:30:00','DOC987','RU01','Validated','admin','2023-03-01 13:00:00','');
INSERT INTO `cryogenic_logistics_schedule` VALUES ('CS002','SHIP002','FreezerB','LabY','IceShip','2023-05-15 14:15:00','2023-05-15 18:45:00','DryIce_Box',-80,-79,10,'No shaking','JaneSmith','Delivered','TRK67890','2023-05-15 18:45:00','DOC654','RU02','Validated','admin','2023-05-15 19:00:00','Minor delay due to traffic');
INSERT INTO `cryogenic_logistics_schedule` VALUES ('CS003','SHIP003','FreezerC','LabZ','CryoLogix','2023-08-20 06:00:00','2023-08-20 10:10:00','LN2_Vial',-196,-197,3,'Handle with gloves','MikeLee','InTransit','TRK54321','2023-08-20 10:10:00','DOC321','RU03','Pending','admin','2023-08-20 10:30:00','');

-- Solar power integration record for facility renewable energy systems
CREATE TABLE `solar_power_integration_record` (
  `record_id` TEXT PRIMARY KEY,
  `facility_id` TEXT,
  `panel_array_id` TEXT,
  `installation_date` TEXT,
  `inverter_id` TEXT,
  `peak_power_kw` REAL,
  `orientation` TEXT,
  `tilt_angle` REAL,
  `avg_daily_output_kwh` REAL,
  `maintenance_cycle_months` INTEGER,
  `last_maintenance_date` TEXT,
  `performance_ratio` REAL,
  `degradation_rate_percent` REAL,
  `monitoring_system_id` TEXT,
  `technician_id` TEXT,
  `warranty_expiry_date` TEXT,
  `grid_connection_status` TEXT,
  `voltage_level` REAL,
  `current_level` REAL,
  `compliance_cert` TEXT,
  `audit_user` TEXT,
  `audit_timestamp` TEXT
);
INSERT INTO `solar_power_integration_record` VALUES ('SR001','F001','PA001','2022-01-10','INV001',250.0,'South','30',900.5,12,'2023-01-09',0.85,1.2,'MS001','TECH01','2027-01-10','Connected',480,10,'CERT001','admin','2023-01-10 08:00:00');
INSERT INTO `solar_power_integration_record` VALUES ('SR002','F002','PA002','2021-06-15','INV002',150.0,'East','25',550.2,12,'2022-06-14',0.82,1.5,'MS002','TECH02','2026-06-15','Connected',380,8,'CERT002','admin','2022-06-15 09:30:00');
INSERT INTO `solar_power_integration_record` VALUES ('SR003','F003','PA003','2023-03-20','INV003',300.0,'West','35',1100.0,12,'2024-03-19',0.88,1.0,'MS003','TECH03','2028-03-20','Pending',500,12,'CERT003','admin','2024-03-20 11:15:00');

-- Biorepository access log tracking sample usage by researchers
CREATE TABLE `biorepository_access_log` (
  `access_id` TEXT PRIMARY KEY,
  `sample_id` TEXT,
  `researcher_id` TEXT,
  `access_date` TEXT,
  `access_type` TEXT,
  `purpose` TEXT,
  `authorized_by` TEXT,
  `duration_minutes` INTEGER,
  `storage_location` TEXT,
  `temperature_recorded` REAL,
  `humidity_recorded` REAL,
  `equipment_used` TEXT,
  `notes` TEXT,
  `audit_user` TEXT,
  `audit_timestamp` TEXT,
  `compliance_status` TEXT,
  `data_sharing_agreement_id` TEXT,
  `consent_status` TEXT,
  `sample_quality_score` REAL,
  `external_collab_id` TEXT,
  `access_status` TEXT
);
INSERT INTO `biorepository_access_log` VALUES ('BA001','SMP001','RES001','2023-02-12','Read','Genomic analysis','DR001',30,'Freezer1',-80,20,'PCR_ThermalCycler','', 'admin','2023-02-12 10:05:00','Compliant','DSA001','Approved',9.5,'COLL001','Completed');
INSERT INTO `biorepository_access_log` VALUES ('BA002','SMP002','RES002','2023-04-18','Write','Cell culture','DR002',45,'Incubator3',4,35,'Incubator','Adjusted media', 'admin','2023-04-18 14:20:00','Compliant','DSA002','Approved',8.7,'COLL002','Pending');
INSERT INTO `biorepository_access_log` VALUES ('BA003','SMP003','RES003','2023-07-05','Read','Proteomics','DR003',20,'Freezer2',-150,10,'MassSpec','', 'admin','2023-07-05 09:00:00','NonCompliant','DSA003','Pending',7.2,'COLL003','Failed');

-- Lab airflow model parameters for CFD simulations
CREATE TABLE `lab_airflow_model_parameters` (
  `model_id` TEXT PRIMARY KEY,
  `building_id` TEXT,
  `zone_id` TEXT,
  `simulation_date` TEXT,
  `mesh_size` REAL,
  `turbulence_model` TEXT,
  `inlet_velocity` REAL,
  `outlet_pressure` REAL,
  `temperature_initial` REAL,
  `humidity_initial` REAL,
  `boundary_condition` TEXT,
  `solver_type` TEXT,
  `convergence_criteria` REAL,
  `max_iterations` INTEGER,
  `cpu_cores` INTEGER,
  `runtime_seconds` REAL,
  `validation_error` REAL,
  `author_id` TEXT,
  `version` INTEGER,
  `notes` TEXT,
  `audit_user` TEXT,
  `audit_timestamp` TEXT
);
INSERT INTO `lab_airflow_model_parameters` VALUES ('MF001','B001','Z01','2023-01-20',0.02,'k-epsilon',0.5,101.3,22.0,45,'NoSlip','Steady','1e-6',10000,8,3600,0.03,'AUTH01',1,'Initial run','admin','2023-01-21 08:00:00');
INSERT INTO `lab_airflow_model_parameters` VALUES ('MF002','B002','Z02','2023-04-10',0.015,'k-omega',0.6,101.0,21.5,40,'PressureOutlet','Transient','5e-7',15000,12,5400,0.02,'AUTH02',2,'Refined mesh','admin','2023-04-11 09:30:00');
INSERT INTO `lab_airflow_model_parameters` VALUES ('MF003','B003','Z03','2023-07-25',0.025,'LES',0.4,101.5,23.0,50,'VelocityInlet','Steady','2e-6',8000,16,2700,0.04,'AUTH03',3,'Sensitivity analysis','admin','2023-07-26 11:15:00');

-- Instrument signal‑to‑noise profile database
CREATE TABLE `instrument_signal_noise_profile` (
  `profile_id` TEXT PRIMARY KEY,
  `instrument_id` TEXT,
  `signal_type` TEXT,
  `frequency_hz` REAL,
  `amplitude_db` REAL,
  `noise_floor_db` REAL,
  `snr_db` REAL,
  `measurement_date` TEXT,
  `operator_id` TEXT,
  `calibration_id` TEXT,
  `environment` TEXT,
  `temperature` REAL,
  `humidity` REAL,
  `voltage` REAL,
  `current` REAL,
  `comments` TEXT,
  `audit_user` TEXT,
  `audit_timestamp` TEXT,
  `validation_status` TEXT,
  `data_file_path` TEXT,
  `filter_setting` TEXT
);
INSERT INTO `instrument_signal_noise_profile` VALUES ('SP001','INST001','Optical','500','-20','-80','60','2023-02-05','OP001','CAL001','Lab','22','45','5','0.2','All good','admin','2023-02-06 10:00:00','Validated','/data/sp001.csv','LowPass');
INSERT INTO `instrument_signal_noise_profile` VALUES ('SP002','INST002','Acoustic','1500','-30','-85','55','2023-05-12','OP002','CAL002','Lab','21','40','4.8','0.25','Minor hum','admin','2023-05-13 11:30:00','Validated','/data/sp002.csv','BandReject');
INSERT INTO `instrument_signal_noise_profile` VALUES ('SP003','INST003','RF','2.4e9','-25','-90','65','2023-08-20','OP003','CAL003','Lab','23','42','5.2','0.18','Clear signal','admin','2023-08-21 09:45:00','Pending','/data/sp003.csv','HighPass');

-- Computational workflow dependency mapping
CREATE TABLE `computational_workflow_dependency` (
  `dependency_id` TEXT PRIMARY KEY,
  `workflow_id` TEXT,
  `upstream_task_id` TEXT,
  `downstream_task_id` TEXT,
  `dependency_type` TEXT,
  `condition` TEXT,
  `trigger_time` TEXT,
  `retry_limit` INTEGER,
  `timeout_seconds` REAL,
  `owner_id` TEXT,
  `created_date` TEXT,
  `modified_date` TEXT,
  `status` TEXT,
  `notes` TEXT,
  `audit_user` TEXT,
  `audit_timestamp` TEXT,
  `priority` INTEGER,
  `execution_order` INTEGER,
  `resource_group` TEXT,
  `sla_hours` REAL,
  `alert_recipient` TEXT
);
INSERT INTO `computational_workflow_dependency` VALUES ('DW001','WF001','TASK_A','TASK_B','FinishToStart','None','2023-01-01 08:00:00',3,7200,'USR01','2022-12-15','2022-12-20','Active','', 'admin','2022-12-21 10:00:00',1,10,'RG1',4.0,'alert1@example.com');
INSERT INTO `computational_workflow_dependency` VALUES ('DW002','WF002','TASK_C','TASK_D','StartToStart','DataReady','2023-03-10 09:30:00',2,3600,'USR02','2023-02-01','2023-02-05','Pending','', 'admin','2023-02-06 11:15:00',2,20,'RG2',2.5,'alert2@example.com');
INSERT INTO `computational_workflow_dependency` VALUES ('DW003','WF003','TASK_E','TASK_F','FinishToFinish','Success','2023-06-15 14:00:00',1,10800,'USR03','2023-05-10','2023-05-12','Active','', 'admin','2023-05-13 09:00:00',3,30,'RG3',6.0,'alert3@example.com');

-- Waste disposal regulatory compliance tracking
CREATE TABLE `waste_disposal_regulatory_compliance` (
  `compliance_id` TEXT PRIMARY KEY,
  `disposal_event_id` TEXT,
  `regulator_id` TEXT,
  `compliance_status` TEXT,
  `inspection_date` TEXT,
  `inspector_id` TEXT,
  `findings` TEXT,
  `corrective_action` TEXT,
  `due_date` TEXT,
  `closure_date` TEXT,
  `penalty_amount` REAL,
  `documentation_path` TEXT,
  `audit_user` TEXT,
  `audit_timestamp` TEXT,
  `waste_type` TEXT,
  `volume_liters` REAL,
  `disposal_method` TEXT,
  `location` TEXT,
  `permit_number` TEXT,
  `validity_period` TEXT,
  `notes` TEXT
);
INSERT INTO `waste_disposal_regulatory_compliance` VALUES ('WC001','EVT001','REG01','Compliant','2023-02-20','INSP01','All procedures followed','N/A','2023-03-01','2023-02-28',0,'/docs/wc001.pdf','admin','2023-02-21 12:00:00','Chemical','150','Incineration','FacilityA','PERM001','2023-2025','');
INSERT INTO `waste_disposal_regulatory_compliance` VALUES ('WC002','EVT002','REG02','NonCompliant','2023-05-10','INSP02','Improper labeling','Re‑label containers','2023-05-20','2023-05-18',5000,'/docs/wc002.pdf','admin','2023-05-11 09:30:00','Hazardous','200','Landfill','FacilityB','PERM002','2022-2024','Fine imposed');
INSERT INTO `waste_disposal_regulatory_compliance` VALUES ('WC003','EVT003','REG03','Compliant','2023-08-05','INSP03','Documentation missing but provided later','Submitted missing logs','2023-08-15','2023-08-12',0,'/docs/wc003.pdf','admin','2023-08-06 11:45:00','Biohazard','80','Autoclave','FacilityC','PERM003','2023-2026','');

-- Research data curation audit records
CREATE TABLE `research_data_curation_audit` (
  `audit_id` TEXT PRIMARY KEY,
  `dataset_id` TEXT,
  `curator_id` TEXT,
  `audit_date` TEXT,
  `completeness_score` REAL,
  `consistency_score` REAL,
  `metadata_quality_score` REAL,
  `compliance_flag` TEXT,
  `issues_found` TEXT,
  `remediation_steps` TEXT,
  `final_status` TEXT,
  `approved_by` TEXT,
  `approval_date` TEXT,
  `version` INTEGER,
  `audit_user` TEXT,
  `audit_timestamp` TEXT,
  `repository_location` TEXT,
  `access_level` TEXT,
  `data_retention_policy` TEXT,
  `backup_verified` TEXT,
  `notes` TEXT
);
INSERT INTO `research_data_curation_audit` VALUES ('RA001','DS001','CUR001','2023-03-12',0.95,0.92,0.97','Pass','Missing variable description','Update metadata','Approved','DIR001','2023-03-15',1,'admin','2023-03-12 10:20:00','/repo/ds001','Public','5years','Yes','');
INSERT INTO `research_data_curation_audit` VALUES ('RA002','DS002','CUR002','2023-06-20',0.88,0.85,0.90','Fail','Inconsistent date formats','Standardize dates','Rejected','DIR002','2023-06-25',1,'admin','2023-06-20 14:45:00','/repo/ds002','Restricted','3years','No','Needs re‑submission');
INSERT INTO `research_data_curation_audit` VALUES ('RA003','DS003','CUR003','2023-09-05',0.99,0.98,0.99','Pass','No issues','N/A','Approved','DIR003','2023-09-08',2,'admin','2023-09-05 09:10:00','/repo/ds003','Public','10years','Yes','');