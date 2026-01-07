-- Table storing periodic measurements from air quality sensors in the laboratory
CREATE TABLE lab_air_quality_sensor (
  sensor_id TEXT PRIMARY KEY,
  location TEXT,
  installation_date TEXT,
  last_calibration_date TEXT,
  sensor_type TEXT,
  manufacturer TEXT,
  model_number TEXT,
  firmware_version TEXT,
  pm2_5 REAL,
  pm10 REAL,
  co2 REAL,
  tvoc REAL,
  temperature_c REAL,
  humidity_percent REAL,
  pressure_hpa REAL,
  battery_voltage REAL,
  signal_strength_dbm REAL,
  maintenance_status TEXT,
  notes TEXT,
  data_logging_interval_sec INTEGER,
  calibration_due_date TEXT,
  last_maintenance_date TEXT,
  operational_status TEXT,
  alert_threshold_pm2_5 REAL
);

INSERT INTO lab_air_quality_sensor VALUES ('AQ001','LabA','2022-03-15','2023-03-01','Optical','AirSense','AQX100','v1.2',12.5,35.0,420.0,0.45,22.1,45.0,1013.2,3.7,-70,'OK','Initial install',300,'2024-03-01','2023-03-01','Active',25.0);
INSERT INTO lab_air_quality_sensor VALUES ('AQ002','LabB','2021-11-20','2023-01-10','Electrochemical','CleanAir','CE200','v2.0',8.2,28.0,380.0,0.30,21.5,48.2,1012.5,3.9,-68,'Scheduled','Replace filter',600,'2024-01-10','2023-01-10','Active',20.0);
INSERT INTO lab_air_quality_sensor VALUES ('AQ003','StorageRoom','2023-01-05','2023-06-20','Laser','PureTech','PT500','v3.1',5.0,15.0,400.0,0.20,19.8,40.0,1011.0,3.5,-72,'OK','Battery check',300,'2024-06-20','2023-06-20','Active',15.0);

-- Table tracking audits of chemical storage areas
CREATE TABLE chemical_storage_audit (
  audit_id TEXT PRIMARY KEY,
  storage_location TEXT,
  auditor_name TEXT,
  audit_date TEXT,
  overall_score INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  ventilation_status TEXT,
  fire_suppression_status TEXT,
  spill_containment_status TEXT,
  inventory_accuracy_percent REAL,
  expired_chemicals_count INTEGER,
  missing_labels_count INTEGER,
  broken_containers_count INTEGER,
  safety_data_sheet_completeness_percent REAL,
  corrective_actions_taken TEXT,
  follow_up_date TEXT,
  notes TEXT,
  compliance_status TEXT,
  audit_duration_minutes INTEGER,
  temperature_logger_id TEXT,
  humidity_logger_id TEXT,
  ventilation_system_id TEXT,
  fire_system_id TEXT
);

INSERT INTO chemical_storage_audit VALUES ('AUD001','CabinetA','Smith','2023-07-12',92,21.5,44.0,'Good','Operational','Intact',98.5,2,1,0,100.0,'Replaced expired solvents','2023-08-01','No issues','Completed',90,'TL001','HL001','VS001','FS001');
INSERT INTO chemical_storage_audit VALUES ('AUD002','CabinetB','Lee','2023-08-05',85,23.0,47.5,'Adequate','Operational','Minor leak',95.0,5,3,2,96.0,'Repaired leak, updated labels','2023-09-01','Observed minor humidity rise','Completed',110,'TL002','HL002','VS002','FS002');
INSERT INTO chemical_storage_audit VALUES ('AUD003','RefrigeratedUnit','Patel','2023-09-20',78,4.2,55.0,'Good','Operational','Intact',90.0,8,5,1,92.0,'Added missing SDS, removed expired reagents','2023-10-15','Temperature fluctuation noted','Completed',130,'TL003','HL003','VS003','FS003');

-- Table logging nanomaterial exposure events for lab personnel
CREATE TABLE nanomaterial_exposure_event (
  event_id TEXT PRIMARY KEY,
  nanomaterial_type TEXT,
  batch_number TEXT,
  exposure_date TEXT,
  employee_id TEXT,
  exposure_route TEXT,
  duration_minutes INTEGER,
  concentration_mg_m3 REAL,
  personal_protective_equipment TEXT,
  immediate_symptoms TEXT,
  medical_evaluation_required TEXT,
  follow_up_date TEXT,
  incident_severity TEXT,
  mitigation_measures TEXT,
  notes TEXT,
  location TEXT,
  ventilation_rate_cfm REAL,
  air_change_per_hour REAL,
  exposure_monitor_id TEXT,
  exposure_limit_exceeded TEXT,
  regulatory_reporting_status TEXT,
  supervisor_id TEXT,
  training_completed TEXT
);

INSERT INTO nanomaterial_exposure_event VALUES ('EXP001','SilverNanoparticles','BN001','2023-06-10','EMP001','Inhalation',30,0.12,'Respirator, Gloves','None','No','2023-06-15','Low','Improved local exhaust','Routine check','SynthesisRoom',200,8,'EM001','No','Reported','SUP001','Yes');
INSERT INTO nanomaterial_exposure_event VALUES ('EXP002','CarbonNanotubes','BN045','2023-07-22','EMP002','Dermal',15,0.00,'Gloves, LabCoat','Rash','Yes','2023-07-30','Medium','Skin wash, medical review','Minor irritation','CharacterizationLab',150,6,'EM002','No','Reported','SUP002','Yes');
INSERT INTO nanomaterial_exposure_event VALUES ('EXP003','TitaniumDioxide','BN078','2023-08-05','EMP003','Inhalation',45,0.25,'FullFaceMask','Cough','Yes','2023-08-12','High','Enhanced ventilation, medical monitoring','Severe cough','PowderHandlingArea',250,10,'EM003','Yes','Reported','SUP003','Yes');

-- Table describing nodes in a computational cluster used for simulations
CREATE TABLE computational_cluster_node (
  node_id TEXT PRIMARY KEY,
  hostname TEXT,
  rack_location TEXT,
  cpu_model TEXT,
  cpu_cores INTEGER,
  gpu_model TEXT,
  gpu_count INTEGER,
  total_memory_gb REAL,
  storage_capacity_tb REAL,
  network_interface TEXT,
  ip_address TEXT,
  operating_system TEXT,
  os_version TEXT,
  uptime_days INTEGER,
  last_maintenance_date TEXT,
  power_supply_watts INTEGER,
  cooling_system_type TEXT,
  virtualization_enabled TEXT,
  installed_software TEXT,
  bios_version TEXT,
  secure_boot_enabled TEXT,
  remote_management_ip TEXT,
  health_status TEXT,
  notes TEXT
);

INSERT INTO computational_cluster_node VALUES ('NODE001','clust01','RackA1','IntelXeonPlatinum','32','NvidiaTeslaV100','2','256','8','eth0','10.0.0.1','Linux','Ubuntu20.04',120,'2023-04-10','800','Air','Yes','MPI,CUDA','BIOS1.2','Yes','10.0.1.1','Healthy','Primary compute node');
INSERT INTO computational_cluster_node VALUES ('NODE002','clust02','RackA2','AMD_EPYC','64','NvidiaTeslaA100','4','512','12','eth1','10.0.0.2','Linux','Ubuntu22.04',90,'2023-05-15','1000','Liquid','Yes','MPI,OpenMP','BIOS2.0','Yes','10.0.1.2','Healthy','GPU intensive node');
INSERT INTO computational_cluster_node VALUES ('NODE003','clust03','RackB1','IntelXeonGold','48','None','0','128','4','eth0','10.0.0.3','Linux','CentOS7',200,'2023-01-20','750','Air','No','MPI','BIOS1.5','No','10.0.1.3','Degraded','Storage heavy node');

-- Table for monitoring environmental noise levels around the facility
CREATE TABLE environmental_noise_monitor_station (
  station_id TEXT PRIMARY KEY,
  location TEXT,
  installation_date TEXT,
  sensor_make TEXT,
  model_number TEXT,
  firmware_version TEXT,
  frequency_range_hz TEXT,
  max_decibel_level REAL,
  avg_decibel_level REAL,
  peak_decibel_level REAL,
  calibration_date TEXT,
  maintenance_interval_days INTEGER,
  last_maintenance_date TEXT,
   data_logging_interval_sec INTEGER,
  connectivity_type TEXT,
  ip_address TEXT,
  battery_backup_hours REAL,
  notes TEXT,
  operational_status TEXT,
  alert_threshold_decibel REAL,
  alert_contact TEXT,
  response_time_minutes INTEGER,
  responsible_technician TEXT,
  compliance_status TEXT
);

INSERT INTO environmental_noise_monitor_station VALUES ('NS001','NorthWall','2022-09-01','SoundTech','STN100','v1.0','20-20000','95.0','55.2','92.5','2023-03-01',180,'2023-08-28',300,'WiFi','10.0.2.1','4','No major events','Active',85,'env_manager','15','TechA','Compliant');
INSERT INTO environmental_noise_monitor_station VALUES ('NS002','EastGate','2023-01-15','AcoustiGuard','AG200','v2.1','10-20000','100.0','60.0','98.0','2023-06-10',365,'2023-07-20',600,'Ethernet','10.0.2.2','6','Construction nearby','Active',90,'env_manager','10','TechB','Compliant');
INSERT INTO environmental_noise_monitor_station VALUES ('NS003','LabC','2023-04-10','QuietSense','QS300','v1.5','30-18000','90.0','50.5','88.0','2023-04-15',90,'2023-07-01',120,'Cellular','10.0.2.3','2','Routine monitoring','Active',80,'env_manager','20','TechC','Compliant');

-- Table recording daily energy consumption of facility utilities
CREATE TABLE facility_energy_consumption_daily (
  record_date TEXT PRIMARY KEY,
  electricity_kwh REAL,
  gas_therms REAL,
  water_cubic_meters REAL,
  hvac_electricity_kwh REAL,
  lighting_electricity_kwh REAL,
  equipment_load_percent REAL,
  peak_demand_kw REAL,
  renewable_energy_kwh REAL,
  carbon_emission_kg REAL,
  demand_response_event TEXT,
  demand_response_reduction_percent REAL,
  outage_flag TEXT,
  outage_duration_minutes INTEGER,
  notes TEXT,
  total_cost_usd REAL,
  average_voltage_volts REAL,
  average_current_amps REAL,
  power_factor REAL,
  utility_provider TEXT,
  tariff_category TEXT,
  billing_cycle TEXT,
  submeter_electricity_kwh REAL,
  submeter_gas_therms REAL,
  submeter_water_cubic_meters REAL
);

INSERT INTO facility_energy_consumption_daily VALUES ('2023-07-01',45230.5,1800.3,1200.0,15000.2,8000.5,75.0,850.0,12000.0,21000.0,'None',0.0,'No',0,'Normal operation',7500.0,230.0,150.0,0.95,'PowerCo','Standard','Monthly','30000.0',1200.0','800.0');
INSERT INTO facility_energy_consumption_daily VALUES ('2023-07-02',43800.0,1750.0,1185.0,14800.0,7900.0,73.5,830.0,11950.0,20500.0,'DR2023',15.0,'No',0,'Demand response event',7300.0,229.5,148.0,0.96,'PowerCo','Standard','Monthly','29500.0','1180.0','790.0');
INSERT INTO facility_energy_consumption_daily VALUES ('2023-07-03',46000.0,1820.0,1220.0,15200.0,8200.0,77.0,870.0,12100.0,21500.0,'None',0.0,'Yes',45,'Short outage due to storm',7700.0,231.0,152.0,0.94,'PowerCo','Standard','Monthly','30500.0','1220.0','820.0');

-- Table defining routes for transporting samples between facilities
CREATE TABLE sample_transport_route (
  route_id TEXT PRIMARY KEY,
  origin_location TEXT,
  destination_location TEXT,
  transport_mode TEXT,
  carrier_company TEXT,
  scheduled_departure TEXT,
  scheduled_arrival TEXT,
  actual_departure TEXT,
  actual_arrival TEXT,
  temperature_control_required TEXT,
  max_allowed_temperature_c REAL,
  min_allowed_temperature_c REAL,
  humidity_control_required TEXT,
  max_allowed_humidity_percent REAL,
  min_allowed_humidity_percent REAL,
  security_level TEXT,
  tracking_enabled TEXT,
  tracking_device_id TEXT,
  handling_instructions TEXT,
  insurance_coverage_usd REAL,
  cost_usd REAL,
  compliance_check_passed TEXT,
  notes TEXT,
  last_updated TEXT,
  route_status TEXT,
  average_delay_minutes REAL
);

INSERT INTO sample_transport_route VALUES ('RT001','LabA','ClinicX','RefrigeratedTruck','ColdChainCo','2023-07-10 08:00','2023-07-10 12:30','2023-07-10 08:05','2023-07-10 12:45','Yes',4.0,2.0,'Yes',60.0,30.0','High','Yes','TRK123','Keep upright, no shaking','5000.0','250.0','Yes','Delivered on time','2023-07-10','Completed',5.0);
INSERT INTO sample_transport_route VALUES ('RT002','LabB','HospitalY','AirFreight','FastAir','2023-07-11 14:00','2023-07-11 16:00','2023-07-11 14:10','2023-07-11 16:20','Yes',-20.0,-30.0','No','','','Medium','Yes','TRK124','Maintain dry conditions','8000.0','450.0','Yes','Slight delay due to weather','2023-07-11','Completed',20.0);
INSERT INTO sample_transport_route VALUES ('RT003','LabC','ResearchCenterZ','Courier','QuickShip','2023-07-12 09:00','2023-07-12 11:30','2023-07-12 09:00','2023-07-12 11:20','No','','','No','','','Low','No','','Standard handling','2000.0','120.0','Yes','On schedule','2023-07-12','Completed',0.0);

-- Table logging detailed analysis of instrument failure events
CREATE TABLE instrument_failure_analysis (
  analysis_id TEXT PRIMARY KEY,
  instrument_id TEXT,
  failure_date TEXT,
  failure_type TEXT,
  root_cause TEXT,
  downtime_minutes INTEGER,
  parts_replaced TEXT,
  technician_id TEXT,
  corrective_action TEXT,
  preventive_action TEXT,
  failure_severity TEXT,
  impact_description TEXT,
  cost_usd REAL,
  warranty_claim TEXT,
  replacement_part_number TEXT,
  failure_detection_method TEXT,
  temperature_at_failure_c REAL,
  humidity_at_failure_percent REAL,
  voltage_at_failure_volts REAL,
  comments TEXT,
  status TEXT,
  reviewed_by TEXT,
  review_date TEXT,
  next_inspection_date TEXT,
  risk_rating TEXT
);

INSERT INTO instrument_failure_analysis VALUES ('FA001','INS001','2023-05-20','Electrical','Power surge','180','PowerModuleX','TECH001','Replaced PSU','Install surge protector','High','Data loss for 2 hrs',1500.0,'Yes','PMX-2023','Alarm','35.0','45.0','230','Repaired and tested','Closed','ENG001','2023-05-25','2023-11-20','Medium');
INSERT INTO instrument_failure_analysis VALUES ('FA002','INS045','2023-06-15','Mechanical','Wear of moving part','240','GearAssemblyY','TECH002','Replaced gear set','Lubrication schedule updated','Medium','Reduced throughput','800.0','No','GA-2023','Manual inspection','28.0','40.0','220','Adjusted alignment','Closed','ENG002','2023-06-20','2024-01-10','Low');
INSERT INTO instrument_failure_analysis VALUES ('FA003','INS078','2023-07-02','Software','Corrupted firmware','90','Firmware v3.4','TECH003','Reflashed firmware','Implement checksum verification','Low','No operational impact','300.0','No','FW-3.4','Diagnostic tool','30.0','42.0','225','N/A','Resolved','Closed','ENG003','2023-07-05','2023-12-01','Low');

-- Table summarizing skill matrices for researchers
CREATE TABLE researcher_skill_matrix (
  researcher_id TEXT PRIMARY KEY,
  name TEXT,
  primary_department TEXT,
  years_experience INTEGER,
  skill_bioinformatics INTEGER,
  skill_chemistry INTEGER,
  skill_physics INTEGER,
  skill_data_analysis INTEGER,
  skill_machine_learning INTEGER,
  skill_project_management INTEGER,
  certification_gcp INTEGER,
  certification_aws INTEGER,
  certification_azure INTEGER,
  training_microscopy INTEGER,
  training_nmr INTEGER,
  training_mass_spec INTEGER,
  training_cell_culture INTEGER,
  training_animal_handling INTEGER,
  training_safety INTEGER,
  last_training_update TEXT,
  availability_status TEXT,
  preferred_shift TEXT,
  publications_count INTEGER,
  patents_filed INTEGER,
  mentorship_experience TEXT,
  notes TEXT,
  supervisor_id TEXT,
  performance_rating TEXT,
  salary_band TEXT
);

INSERT INTO researcher_skill_matrix VALUES ('R001','Alice Johnson','Biochemistry',5,4,5,2,5,3,4,1,0,0,1,1,0,1,0,1,'2023-06-15','Active','Day','12','2','Mentor for 3 junior scientists','Excellent researcher','SUP100','A','B2');
INSERT INTO researcher_skill_matrix VALUES ('R002','Bob Lee','Computational Biology',8,5,2,3,5,5,3,0,1,0,0,0,0,0,0,1,'2023-05-20','Active','Evening','25','1','Supervises 2 postdocs','Strong coding skills','SUP101','A+','A1');
INSERT INTO researcher_skill_matrix VALUES ('R003','Carol Smith','Physics',10,1,1,5,4,2,5,0,0,1,0,0,0,0,0,0,'2023-04-10','On Leave','Night','18','0','Mentors graduate students','Excellent experimental physicist','SUP102','B','C3');

-- Table tracking allocation of project funding across different categories
CREATE TABLE project_funding_allocation (
  allocation_id TEXT PRIMARY KEY,
  project_id TEXT,
  fiscal_year TEXT,
  total_budget_usd REAL,
  personnel_budget_usd REAL,
  equipment_budget_usd REAL,
  consumables_budget_usd REAL,
  travel_budget_usd REAL,
  indirect_costs_usd REAL,
  funding_source_federal REAL,
  funding_source_state REAL,
  funding_source_industry REAL,
  funding_source_private_nonprofit REAL,
  budget_status TEXT,
  approved_by TEXT,
  approval_date TEXT,
  last_modified_date TEXT,
  notes TEXT,
  cost_overrun_flag TEXT,
  cost_overrun_amount_usd REAL,
  remaining_budget_usd REAL,
  expenditure_to_date_usd REAL,
  projected_expenditure_usd REAL,
  variance_percent REAL,
  reporting_frequency TEXT,
  next_report_due TEXT,
  finance_contact TEXT,
  audit_required TEXT,
  audit_status TEXT
);

INSERT INTO project_funding_allocation VALUES ('FA001','PRJ001','2023',1500000,600000,300000,250000,100000,250000,800000,200000,150000,50000,'Approved','DIR001','2023-01-15','2023-07-01','Initial allocation','No',0,500000,300000,500000,10,'Quarterly','2023-10-01','FIN001','Yes','Pending');
INSERT INTO project_funding_allocation VALUES ('FA002','PRJ002','2023',900000,400000,150000,200000,80000,70000,500000,100000,100000,20000,'Approved','DIR002','2023-02-10','2023-07-15','Mid-year review','Yes',50000,150000,200000,250000,-5,'SemiAnnual','2024-01-15','FIN002','No','N/A');
INSERT INTO project_funding_allocation VALUES ('FA003','PRJ003','2023',2000000,800000,500000,300000,150000,250000,1200000,300000,300000,100000,'Pending','DIR003','2023-03-05','2023-07-20','Awaiting final signatures','No',0,900000,400000,600000,0,'Monthly','2023-08-01','FIN003','Yes','Completed');