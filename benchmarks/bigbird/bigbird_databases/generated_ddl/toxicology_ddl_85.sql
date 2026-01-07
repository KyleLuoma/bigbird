-- Equipment inventory extended details
CREATE TABLE equipment_inventory_extended (
  equipment_id INTEGER NOT NULL,
  serial_number INTEGER,
  purchase_date INTEGER,
  warranty_years INTEGER,
  manufacturer_code INTEGER,
  model_code INTEGER,
  location_code INTEGER,
  status_code INTEGER,
  last_maintenance_date INTEGER,
  maintenance_interval_days INTEGER,
  calibration_due_date INTEGER,
  depreciation_rate REAL,
  asset_tag INTEGER,
  department_code INTEGER,
  cost REAL,
  lifecycle_stage_code INTEGER,
  supplier_id INTEGER,
  warranty_expiration_date INTEGER,
  insurance_policy INTEGER,
  notes_code INTEGER,
  last_inspection_date INTEGER,
  inspection_status_code INTEGER,
  PRIMARY KEY (equipment_id)
);
INSERT INTO equipment_inventory_extended VALUES (1,100001,20200101,5,10,101,1,1,20210101,180,20210701,0.15,5001,2,25000.00,1,2001,20250101,3001,0,20210301,1);
INSERT INTO equipment_inventory_extended VALUES (2,100002,20190515,3,12,102,2,2,20201215,365,20210815,0.10,5002,3,18000.00,2,2002,20220515,3002,1,20201220,2);
INSERT INTO equipment_inventory_extended VALUES (3,100003,20180120,4,11,103,3,1,20210220,90,20211020,0.20,5003,1,32000.00,3,2003,20240220,3003,2,20210410,3);

-- Environmental monitoring station readings
CREATE TABLE environmental_monitoring_station (
  station_id INTEGER NOT NULL,
  region_code INTEGER,
  installation_date INTEGER,
  sensor_type_code INTEGER,
  firmware_version INTEGER,
  last_calibration_date INTEGER,
  calibration_interval_days INTEGER,
  temperature_celsius REAL,
  humidity_percent REAL,
  co2_ppm INTEGER,
  pm2_5_ugm3 REAL,
  pm10_ugm3 REAL,
  noise_db INTEGER,
  radiation_msv REAL,
  battery_level_percent INTEGER,
  signal_strength INTEGER,
  data_logger_status INTEGER,
  maintenance_required INTEGER,
  last_maintenance_date INTEGER,
  operational_status INTEGER,
  PRIMARY KEY (station_id)
);
INSERT INTO environmental_monitoring_station VALUES (101,5,20200110,1,3,20210105,180,22.5,45.0,410,12.3,20.1,55,0.02,95,80,1,0,20210310,1);
INSERT INTO environmental_monitoring_station VALUES (102,3,20191222,2,4,20201201,365,21.0,50.5,380,10.8,18.4,60,0.01,88,75,1,0,20210415,1);
INSERT INTO environmental_monitoring_station VALUES (103,4,20200215,1,3,20210312,180,23.1,48.2,425,13.0,21.0,58,0.03,92,78,1,1,20210520,2);

-- Computational job execution log
CREATE TABLE computational_job_log (
  job_id INTEGER NOT NULL,
  project_id INTEGER,
  user_id INTEGER,
  submission_timestamp INTEGER,
  start_timestamp INTEGER,
  end_timestamp INTEGER,
  compute_node_id INTEGER,
  cpu_cores INTEGER,
  gpu_count INTEGER,
  memory_gb REAL,
  storage_gb REAL,
  job_type_code INTEGER,
  priority_level INTEGER,
  status_code INTEGER,
  exit_code INTEGER,
  total_runtime_seconds INTEGER,
  io_read_gb REAL,
  io_write_gb REAL,
  queue_wait_seconds INTEGER,
  max_memory_usage_gb REAL,
  max_cpu_usage_percent REAL,
  max_gpu_usage_percent REAL,
  PRIMARY KEY (job_id)
);
INSERT INTO computational_job_log VALUES (10001,2001,301,202104010800,202104010805,202104010915,401,16,2,64.0,200.0,1,5,2,0,660,12.5,8.3,300,48.0,85.0,70.0);
INSERT INTO computational_job_log VALUES (10002,2002,302,202104021200,202104021210,202104021430,402,32,4,128.0,500.0,2,3,2,1,840,20.0,15.0,600,96.0,90.0,80.0);
INSERT INTO computational_job_log VALUES (10003,2003,303,202104031400,202104031405,202104031525,403,8,1,32.0,100.0,1,4,3,0,720,5.0,3.0,150,24.0,70.0,60.0);

-- Sample transport tracking records
CREATE TABLE sample_transport_record (
  transport_id INTEGER NOT NULL,
  sample_id INTEGER,
  origin_location_code INTEGER,
  destination_location_code INTEGER,
  carrier_company_code INTEGER,
  dispatch_timestamp INTEGER,
  expected_arrival_timestamp INTEGER,
  actual_arrival_timestamp INTEGER,
  transport_mode_code INTEGER,
  temperature_control_flag INTEGER,
  temperature_setpoint_celsius REAL,
  temperature_deviation_celsius REAL,
  humidity_control_flag INTEGER,
  humidity_setpoint_percent REAL,
  humidity_deviation_percent REAL,
  tracking_status_code INTEGER,
  damage_reported INTEGER,
  damage_severity_code INTEGER,
  courier_id INTEGER,
  signature_captured INTEGER,
  PRIMARY KEY (transport_id)
);
INSERT INTO sample_transport_record VALUES (5001,7001,10,20,301,202104010900,202104011200,202104011150,1,1,4.0,0.2,0,0,0,2,0,0,401,1);
INSERT INTO sample_transport_record VALUES (5002,7002,11,21,302,202104020800,202104021100,202104021130,2,0,0,0,1,45.0,1.0,3,1,2,402,0);
INSERT INTO sample_transport_record VALUES (5003,7003,12,22,303,202104030700,202104031000,202104031005,1,1,2.0,-0.1,1,55.0,0.5,2,0,0,403,1);

-- Hazardous materials audit log
CREATE TABLE hazard_materials_audit (
  audit_id INTEGER NOT NULL,
  material_id INTEGER,
  audit_date INTEGER,
  auditor_id INTEGER,
  storage_location_code INTEGER,
  quantity_units INTEGER,
  container_type_code INTEGER,
  integrity_check_passed INTEGER,
  leak_detected INTEGER,
  exposure_risk_level INTEGER,
  corrective_action_code INTEGER,
  follow_up_date INTEGER,
  notes_code INTEGER,
  regulatory_compliance_flag INTEGER,
  last_updated_timestamp INTEGER,
  PRIMARY KEY (audit_id)
);
INSERT INTO hazard_materials_audit VALUES (9001,1501,20210401,401,30,5,2,1,0,2,0,20210501,10,1,20210401);
INSERT INTO hazard_materials_audit VALUES (9002,1502,20210415,402,31,3,1,1,0,1,0,20210515,11,1,20210415);
INSERT INTO hazard_materials_audit VALUES (9003,1503,20210420,403,32,8,3,0,1,3,2,20210520,12,0,20210420);

-- Facility energy usage detail
CREATE TABLE facility_energy_usage_detail (
  usage_id INTEGER NOT NULL,
  facility_id INTEGER,
  record_date INTEGER,
  electricity_kwh REAL,
  gas_therms REAL,
  water_m3 REAL,
  hvac_power_kw REAL,
  lighting_power_kw REAL,
  equipment_power_kw REAL,
  renewable_generation_kwh REAL,
  peak_demand_kw REAL,
  load_factor_percent REAL,
  carbon_emission_kg REAL,
  cost_usd REAL,
  meter_reading_id INTEGER,
  data_source_code INTEGER,
  PRIMARY KEY (usage_id)
);
INSERT INTO facility_energy_usage_detail VALUES (20001,1,20210401,12500.5,850.2,300.0,1500.0,500.0,800.0,2000.0,2500.0,75.0,9000.0,12000.5,6001,1);
INSERT INTO facility_energy_usage_detail VALUES (20002,1,20210402,12480.0,845.0,298.5,1495.0,495.0,795.0,1995.0,2490.0,74.5,8980.0,11980.0,6002,1);
INSERT INTO facility_energy_usage_detail VALUES (20003,1,20210403,12620.3,860.5,302.2,1510.0,505.0,810.0,2010.0,2510.0,75.5,9025.0,12100.0,6003,1);

-- Lab ventilation filter change log
CREATE TABLE lab_ventilation_filter_change_log (
  change_id INTEGER NOT NULL,
  ventilation_zone_code INTEGER,
  filter_type_code INTEGER,
  change_timestamp INTEGER,
  technician_id INTEGER,
  filter_serial_number INTEGER,
  previous_filter_lifetime_days INTEGER,
  new_filter_lifetime_days INTEGER,
  airflow_capacity_lpm REAL,
  pressure_drop_pa REAL,
  compliance_status INTEGER,
  notes_code INTEGER,
  PRIMARY KEY (change_id)
);
INSERT INTO lab_ventilation_filter_change_log VALUES (3001,10,1,20210405,501,70001,180,365,1500.0,0.5,1,20);
INSERT INTO lab_ventilation_filter_change_log VALUES (3002,11,2,20210412,502,70002,200,400,1600.0,0.6,1,21);
INSERT INTO lab_ventilation_filter_change_log VALUES (3003,12,1,20210419,503,70003,190,380,1550.0,0.55,1,22);

-- Instrument performance metric log
CREATE TABLE instrument_performance_metric_log (
  metric_id INTEGER NOT NULL,
  instrument_id INTEGER,
  measurement_timestamp INTEGER,
  metric_type_code INTEGER,
  value_numeric REAL,
  unit_code INTEGER,
  lower_spec_limit REAL,
  upper_spec_limit REAL,
  pass_fail_flag INTEGER,
  technician_id INTEGER,
  notes_code INTEGER,
  PRIMARY KEY (metric_id)
);
INSERT INTO instrument_performance_metric_log VALUES (4001,801,20210408,1,0.98,10,0.95,1.05,1,601,30);
INSERT INTO instrument_performance_metric_log VALUES (4002,802,20210415,2,5.2,11,4.5,6.0,1,602,31);
INSERT INTO instrument_performance_metric_log VALUES (4003,803,20210422,3,12.7,12,10.0,15.0,1,603,32);

-- Reagent storage condition log
CREATE TABLE reagent_storage_condition_log (
  log_id INTEGER NOT NULL,
  reagent_id INTEGER,
  storage_location_code INTEGER,
  record_timestamp INTEGER,
  temperature_celsius REAL,
  humidity_percent REAL,
  light_exposure_flag INTEGER,
  security_access_level INTEGER,
  contamination_flag INTEGER,
  notes_code INTEGER,
  PRIMARY KEY (log_id)
);
INSERT INTO reagent_storage_condition_log VALUES (6001,9001,20,20210403,4.0,30.0,0,2,0,40);
INSERT INTO reagent_storage_condition_log VALUES (6002,9002,21,20210410,3.5,28.0,0,2,0,41);
INSERT INTO reagent_storage_condition_log VALUES (6003,9003,22,20210417,5.0,35.0,1,3,1,42);

-- Research project milestone tracking
CREATE TABLE research_project_milestone_tracking (
  milestone_id INTEGER NOT NULL,
  project_id INTEGER,
  milestone_name_code INTEGER,
  planned_date INTEGER,
  actual_date INTEGER,
  status_code INTEGER,
  responsible_person_id INTEGER,
  budget_allocated_usd REAL,
  budget_spent_usd REAL,
  risk_level_code INTEGER,
  notes_code INTEGER,
  PRIMARY KEY (milestone_id)
);
INSERT INTO research_project_milestone_tracking VALUES (8001,1001,101,20210501,20210503,2,701,50000.00,48000.00,1,50);
INSERT INTO research_project_milestone_tracking VALUES (8002,1002,102,20210615,20210620,3,702,75000.00,76000.00,2,51);
INSERT INTO research_project_milestone_tracking VALUES (8003,1003,103,20210730,20210805,2,703,60000.00,59000.00,1,52);