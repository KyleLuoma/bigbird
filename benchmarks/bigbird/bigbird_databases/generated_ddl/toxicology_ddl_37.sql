-- Lab Air Handling Unit information
CREATE TABLE lab_air_handling_unit (
  unit_id INTEGER PRIMARY KEY,
  building_id INTEGER,
  floor_number INTEGER,
  capacity_cfm INTEGER,
  filter_type_id INTEGER,
  hvac_zone_id INTEGER,
  fan_speed_rpm INTEGER,
  motor_power_kw REAL,
  control_mode INTEGER,
  maintenance_interval_days INTEGER,
  last_maintenance_date INTEGER,
  next_inspection_date INTEGER,
  temperature_setpoint_f REAL,
  humidity_setpoint_percent REAL,
  airflow_balance_flag INTEGER,
  pressure_drop_pa REAL,
  energy_efficiency_ratio REAL,
  remote_monitoring_enabled INTEGER,
  commissioning_year INTEGER,
  manufacturer_id INTEGER,
  serial_number INTEGER,
  warranty_years INTEGER,
  operational_status INTEGER,
  comments INTEGER
);

INSERT INTO lab_air_handling_unit VALUES (1, 101, 2, 5000, 1, 10, 1450, 15.5, 2, 180, 20230115, 20231215, 72.5, 45.0, 1, 250.0, 0.85, 1, 2018, 301, 123456, 5, 1, 0);
INSERT INTO lab_air_handling_unit VALUES (2, 102, 1, 7500, 2, 11, 1600, 18.0, 1, 200, 20230220, 20240320, 70.0, 40.0, 1, 300.0, 0.90, 0, 2019, 302, 234567, 4, 1, 0);
INSERT INTO lab_air_handling_unit VALUES (3, 103, 3, 6000, 3, 12, 1500, 16.2, 3, 190, 20230310, 20240410, 71.0, 42.0, 0, 280.0, 0.88, 1, 2020, 303, 345678, 3, 0, 0);

-- Facility Power Distribution details
CREATE TABLE facility_power_distribution (
  distribution_id INTEGER PRIMARY KEY,
  building_id INTEGER,
  circuit_id INTEGER,
  voltage_kv REAL,
  current_amps INTEGER,
  power_factor REAL,
  load_kw REAL,
  transformer_id INTEGER,
  breaker_rating_amps INTEGER,
  outage_flag INTEGER,
  last_outage_timestamp INTEGER,
  scheduled_maintenance_date INTEGER,
  peak_demand_kw REAL,
  average_load_kw REAL,
  harmonic_distortion_percent REAL,
  emergency_shutdown_capable INTEGER,
  metering_device_id INTEGER,
  capacity_mva REAL,
  substation_id INTEGER,
  protection_scheme_id INTEGER,
  voltage_regulation_percent REAL,
  grounding_resistance_ohms REAL,
  maintenance_status INTEGER,
  notes INTEGER
);

INSERT INTO facility_power_distribution VALUES (1, 101, 201, 0.415, 200, 0.95, 78.0, 501, 250, 0, 0, 20240301, 85.0, 60.0, 3.2, 1, 801, 1.5, 601, 701, 1.0, 0.5, 1, 0);
INSERT INTO facility_power_distribution VALUES (2, 102, 202, 0.415, 250, 0.92, 92.0, 502, 300, 0, 0, 20240415, 100.0, 70.0, 2.8, 1, 802, 1.8, 602, 702, 1.2, 0.6, 1, 0);
INSERT INTO facility_power_distribution VALUES (3, 103, 203, 0.415, 180, 0.96, 72.0, 503, 200, 1, 20231231, 20240520, 80.0, 55.0, 3.5, 0, 803, 1.3, 603, 703, 0.9, 0.4, 0, 0);

-- Environmental Sensor Network registry
CREATE TABLE environmental_sensor_network (
  sensor_id INTEGER PRIMARY KEY,
  location_id INTEGER,
  sensor_type_id INTEGER,
  measurement_interval_seconds INTEGER,
  battery_voltage_v REAL,
  firmware_version INTEGER,
  calibration_date INTEGER,
  last_communication_timestamp INTEGER,
  signal_strength_dbm INTEGER,
  data_retention_days INTEGER,
  operational_status INTEGER,
  alert_threshold_high REAL,
  alert_threshold_low REAL,
  latitude_deg REAL,
  longitude_deg REAL,
  altitude_m REAL,
  manufacturer_id INTEGER,
  model_number INTEGER,
  upload_endpoint_id INTEGER,
  maintenance_cycle_days INTEGER,
  last_maintenance_timestamp INTEGER,
  temperature_offset_c REAL,
  humidity_offset_percent REAL,
  notes INTEGER
);

INSERT INTO environmental_sensor_network VALUES (1, 1001, 1, 60, 3.7, 12, 20230110, 20231201, -70, 365, 1, 100.0, 10.0, 40.7128, -74.0060, 15.0, 401, 10001, 501, 180, 20231201, 0.0, 0.0, 0);
INSERT INTO environmental_sensor_network VALUES (2, 1002, 2, 120, 3.6, 13, 20230215, 20231202, -68, 365, 1, 200.0, 20.0, 34.0522, -118.2437, 30.0, 402, 10002, 502, 180, 20231202, 0.0, 0.0, 0);
INSERT INTO environmental_sensor_network VALUES (3, 1003, 3, 30, 3.8, 14, 20230320, 20231203, -65, 365, 1, 50.0, 5.0, 41.8781, -87.6298, 20.0, 403, 10003, 503, 180, 20231203, 0.0, 0.0, 0);

-- Sample Storage Facility layout
CREATE TABLE sample_storage_facility (
  storage_id INTEGER PRIMARY KEY,
  facility_name INTEGER,
  aisle_number INTEGER,
  rack_number INTEGER,
  slot_number INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  max_capacity_samples INTEGER,
  current_occupancy INTEGER,
  access_control_level INTEGER,
  fire_suppression_type_id INTEGER,
  alarm_status INTEGER,
  last_inspection_date INTEGER,
  next_inspection_due INTEGER,
  maintenance_contract_id INTEGER,
  power_backup_minutes INTEGER,
  uv_light_enabled INTEGER,
  vibration_isolation_rating INTEGER,
  security_camera_id INTEGER,
  contamination_risk_level INTEGER,
  cleaning_cycle_days INTEGER,
  last_cleaning_timestamp INTEGER,
  calibration_status INTEGER,
  notes INTEGER
);

INSERT INTO sample_storage_facility VALUES (1, 1, 1, 10, 100, -20.0, 30.0, 5000, 2500, 3, 2, 0, 20231201, 20240101, 601, 120, 1, 5, 701, 2, 30, 20231115, 1, 0);
INSERT INTO sample_storage_facility VALUES (2, 2, 2, 20, 200, 4.0, 45.0, 8000, 4000, 2, 1, 0, 20231202, 20240102, 602, 180, 0, 4, 702, 1, 45, 20231120, 1, 0);
INSERT INTO sample_storage_facility VALUES (3, 3, 3, 30, 300, -80.0, 20.0, 6000, 3500, 4, 3, 1, 20231203, 20240103, 603, 240, 1, 6, 703, 3, 60, 20231125, 0, 0);

-- Instrument Deployment Log
CREATE TABLE instrument_deployment_log (
  deployment_id INTEGER PRIMARY KEY,
  instrument_id INTEGER,
  site_id INTEGER,
  deployment_start_date INTEGER,
  deployment_end_date INTEGER,
  latitude_deg REAL,
  longitude_deg REAL,
  altitude_m REAL,
  orientation_deg REAL,
  power_source_id INTEGER,
  network_connection_type_id INTEGER,
  firmware_version INTEGER,
  calibration_status INTEGER,
  environmental_protection_level INTEGER,
  security_clearance_required INTEGER,
  remote_access_enabled INTEGER,
  maintenance_contract_id INTEGER,
  last_service_date INTEGER,
  next_service_due INTEGER,
  operational_status INTEGER,
  usage_hours INTEGER,
  data_storage_capacity_gb INTEGER,
  notes INTEGER,
  compliance_flag INTEGER
);

INSERT INTO instrument_deployment_log VALUES (1, 10001, 2001, 20230101, 0, 42.3601, -71.0589, 10.0, 0, 801, 1, 20, 1, 3, 2, 1, 901, 20231201, 20240101, 1, 500, 2000, 0, 1);
INSERT INTO instrument_deployment_log VALUES (2, 10002, 2002, 20230215, 0, 37.7749, -122.4194, 15.0, 90, 802, 2, 21, 1, 2, 1, 1, 902, 20231205, 20240105, 1, 600, 2500, 0, 1);
INSERT INTO instrument_deployment_log VALUES (3, 10003, 2003, 20230320, 0, 34.0522, -118.2437, 20.0, 180, 803, 3, 22, 0, 4, 3, 0, 903, 20231210, 20240110, 0, 0, 0, 0, 0);

-- Computational Cluster Node Detail
CREATE TABLE computational_cluster_node_detail (
  node_id INTEGER PRIMARY KEY,
  rack_id INTEGER,
  slot_number INTEGER,
  cpu_cores INTEGER,
  cpu_threads INTEGER,
  gpu_count INTEGER,
  memory_gb INTEGER,
  storage_tb REAL,
  network_bandwidth_gbps REAL,
  power_supply_watts INTEGER,
  cooling_fan_rpm INTEGER,
  bios_version INTEGER,
  operating_system_id INTEGER,
  virtualization_enabled INTEGER,
  node_role_id INTEGER,
  uptime_seconds INTEGER,
  last_boot_timestamp INTEGER,
  health_status INTEGER,
  error_log_sequence INTEGER,
  maintenance_window_start INTEGER,
  maintenance_window_end INTEGER,
  firmware_update_pending INTEGER,
  admin_contact_id INTEGER,
  notes INTEGER
);

INSERT INTO computational_cluster_node_detail VALUES (1, 10, 1, 32, 64, 2, 256, 4.0, 40.0, 800, 3000, 1101, 1201, 1, 1, 864000, 20231201, 1, 0, 20240301, 20240302, 0, 5001, 0);
INSERT INTO computational_cluster_node_detail VALUES (2, 10, 2, 48, 96, 4, 384, 8.0, 100.0, 1200, 3500, 1102, 1202, 1, 2, 432000, 20231202, 1, 1, 20240303, 20240304, 1, 5002, 0);
INSERT INTO computational_cluster_node_detail VALUES (3, 11, 1, 24, 48, 1, 128, 2.0, 10.0, 600, 2500, 1103, 1203, 0, 3, 259200, 20231203, 0, 0, 20240305, 20240306, 0, 5003, 0);

-- Waste Processing Unit configuration
CREATE TABLE waste_processing_unit (
  unit_id INTEGER PRIMARY KEY,
  facility_id INTEGER,
  waste_type_id INTEGER,
  capacity_kg_per_hour REAL,
  operating_temperature_c REAL,
  pressure_bar REAL,
  energy_consumption_kw REAL,
  automation_level INTEGER,
  safety_shutoff_enabled INTEGER,
  emission_control_system_id INTEGER,
  maintenance_interval_days INTEGER,
  last_maintenance_date INTEGER,
  next_inspection_date INTEGER,
  remote_monitoring_enabled INTEGER,
  control_software_version INTEGER,
  operator_training_required INTEGER,
  certification_status INTEGER,
  decommission_date INTEGER,
  disposal_method_id INTEGER,
  waste_residue_storage_capacity_kg REAL,
  alarm_threshold_kg REAL,
  temperature_threshold_c REAL,
  pressure_threshold_bar REAL,
  notes INTEGER
);

INSERT INTO waste_processing_unit VALUES (1, 1, 1, 500.0, 150.0, 2.5, 75.0, 3, 1, 101, 180, 20231201, 20240101, 1, 2101, 1, 1, 0, 2, 1000.0, 450.0, 160.0, 3.0, 0);
INSERT INTO waste_processing_unit VALUES (2, 2, 2, 300.0, 120.0, 1.8, 55.0, 2, 1, 102, 200, 20231205, 20240105, 0, 2102, 1, 1, 0, 3, 800.0, 250.0, 130.0, 2.5, 0);
INSERT INTO waste_processing_unit VALUES (3, 3, 3, 400.0, 140.0, 2.2, 65.0, 3, 0, 103, 190, 20231210, 20240110, 1, 2103, 1, 0, 0, 1, 900.0, 350.0, 150.0, 2.8, 0);

-- Lab Cleanroom Environment monitoring
CREATE TABLE lab_cleanroom_environment (
  monitor_id INTEGER PRIMARY KEY,
  cleanroom_id INTEGER,
  particle_count_per_cubic_ft INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  differential_pressure_pa REAL,
  airflow_velocity_fpm REAL,
  static_charge_mv INTEGER,
  uv_disinfection_status INTEGER,
  filter_efficiency_percent REAL,
  alarm_state INTEGER,
  last_calibration_date INTEGER,
  next_calibration_due INTEGER,
  maintenance_cycle_days INTEGER,
  power_status INTEGER,
  network_status INTEGER,
  firmware_revision INTEGER,
  location_zone_id INTEGER,
  occupancy_status INTEGER,
  cleaning_log_id INTEGER,
  notes INTEGER,
  compliance_flag INTEGER
);

INSERT INTO lab_cleanroom_environment VALUES (1, 1, 100, 22.5, 45.0, 12.0, 500.0, 200, 1, 99.9, 0, 20231201, 20240101, 90, 1, 1, 301, 1, 0, 401, 0, 1);
INSERT INTO lab_cleanroom_environment VALUES (2, 2, 150, 21.0, 40.0, 15.0, 550.0, 210, 0, 99.8, 1, 20231205, 20240105, 95, 1, 1, 302, 2, 1, 402, 0, 1);
INSERT INTO lab_cleanroom_environment VALUES (3, 3, 120, 23.0, 42.0, 13.5, 520.0, 205, 1, 99.85, 0, 20231210, 20240110, 92, 1, 1, 303, 3, 0, 403, 0, 1);

-- Research Data Archival Policy
CREATE TABLE research_data_archival_policy (
  policy_id INTEGER PRIMARY KEY,
  department_id INTEGER,
  data_retention_years INTEGER,
  archival_storage_type_id INTEGER,
  encryption_enabled INTEGER,
  compression_algorithm_id INTEGER,
  access_control_level INTEGER,
  audit_logging_enabled INTEGER,
  backup_frequency_days INTEGER,
  disaster_recovery_point_obj INTEGER,
  retention_review_cycle_days INTEGER,
  legal_hold_flag INTEGER,
  versioning_enabled INTEGER,
  data_classification_level INTEGER,
  approval_status INTEGER,
  effective_start_date INTEGER,
  effective_end_date INTEGER,
  policy_owner_id INTEGER,
  last_revision_number INTEGER,
  revision_date INTEGER,
  compliance_score INTEGER,
  notes INTEGER,
  external_audit_required INTEGER,
  enforcement_mechanism_id INTEGER
);

INSERT INTO research_data_archival_policy VALUES (1, 10, 7, 1, 1, 2, 3, 1, 30, 5, 365, 0, 1, 2, 1, 20230101, 0, 9001, 3, 20231201, 95, 0, 1, 401);
INSERT INTO research_data_archival_policy VALUES (2, 20, 5, 2, 1, 1, 2, 1, 15, 3, 180, 0, 0, 1, 1, 20230201, 0, 9002, 2, 20231205, 90, 0, 1, 402);
INSERT INTO research_data_archival_policy VALUES (3, 30, 10, 3, 0, 3, 4, 0, 60, 7, 730, 1, 1, 3, 0, 20230301, 0, 9003, 4, 20231210, 85, 0, 0, 403);

-- Chemical Storage Condition monitoring
CREATE TABLE chemical_storage_condition (
  storage_id INTEGER PRIMARY KEY,
  location_id INTEGER,
  temperature_c REAL,
  humidity_percent REAL,
  pressure_bar REAL,
  ventilation_rate_cfm INTEGER,
  leak_detection_status INTEGER,
  fire_suppression_status INTEGER,
  access_control_level INTEGER,
  last_inspection_date INTEGER,
  next_inspection_due INTEGER,
  sensor_calibration_date INTEGER,
  alarm_state INTEGER,
  maintenance_contract_id INTEGER,
  power_backup_minutes INTEGER,
  remote_monitoring_enabled INTEGER,
  incident_history_id INTEGER,
  notes INTEGER,
  compliance_flag INTEGER,
  overall_health_score INTEGER,
  temperature_trend_id INTEGER,
  humidity_trend_id INTEGER,
  pressure_trend_id INTEGER,
  ventilation_trend_id INTEGER
);

INSERT INTO chemical_storage_condition VALUES (1, 1001, 4.0, 30.0, 1.0, 150, 0, 1, 2, 20231201, 20240101, 20231115, 0, 601, 60, 1, 701, 0, 1, 98, 801, 801, 801, 801);
INSERT INTO chemical_storage_condition VALUES (2, 1002, -20.0, 20.0, 0.8, 200, 1, 0, 3, 20231205, 20240105, 20231120, 1, 602, 120, 0, 702, 0, 0, 85, 802, 802, 802, 802);
INSERT INTO chemical_storage_condition VALUES (3, 1003, 22.0, 45.0, 1.2, 180, 0, 1, 1, 20231210, 20240110, 20231125, 0, 603, 90, 1, 703, 0, 1, 92, 803, 803, 803, 803);

-- Facility Energy Consumption Monitoring
CREATE TABLE facility_energy_consumption_monitor (
  meter_id INTEGER PRIMARY KEY,
  building_id INTEGER,
  floor_number INTEGER,
  energy_type_id INTEGER,
  peak_demand_kw REAL,
  average_consumption_kw REAL,
  total_consumption_kwh REAL,
  demand_factor REAL,
  power_factor REAL,
  voltage_kv REAL,
  current_amps INTEGER,
  meter_install_date INTEGER,
  last_reading_timestamp INTEGER,
  reading_interval_minutes INTEGER,
  tariff_rate_id INTEGER,
  renewable_energy_percentage REAL,
  carbon_emission_kg REAL,
  maintenance_status INTEGER,
  alarm_threshold_kw REAL,
  alarm_status INTEGER,
  data_quality_flag INTEGER,
  notes INTEGER,
  compliance_status INTEGER,
  reporting_period_id INTEGER
);

INSERT INTO facility_energy_consumption_monitor VALUES (1, 101, 1, 1, 120.0, 80.0, 50000.0, 0.67, 0.95, 0.415, 200, 20230101, 20231201, 60, 301, 15.0, 25000.0, 1, 130.0, 0, 1, 0, 1, 401);
INSERT INTO facility_energy_consumption_monitor VALUES (2, 102, 2, 2, 150.0, 100.0, 75000.0, 0.66, 0.94, 0.415, 250, 20230115, 20231202, 60, 302, 10.0, 30000.0, 1, 160.0, 0, 1, 0, 1, 402);
INSERT INTO facility_energy_consumption_monitor VALUES (3, 103, 3, 1, 110.0, 70.0, 40000.0, 0.64, 0.96, 0.415, 180, 20230201, 20231203, 60, 303, 20.0, 20000.0, 0, 120.0, 1, 1, 0, 0, 403);

-- Nanomaterial Exposure Event Log
CREATE TABLE nanomaterial_exposure_event_log (
  event_id INTEGER PRIMARY KEY,
  nanomaterial_batch_id INTEGER,
  exposure_location_id INTEGER,
  exposure_start_timestamp INTEGER,
  exposure_end_timestamp INTEGER,
  concentration_ug_per_m3 REAL,
  particle_size_nm REAL,
  exposure_route_id INTEGER,
  personnel_id INTEGER,
  protective_equipment_used INTEGER,
  health_monitoring_status INTEGER,
  incident_report_id INTEGER,
  corrective_action_id INTEGER,
  audit_trail_id INTEGER,
  regulatory_notification_flag INTEGER,
  exposure_duration_seconds INTEGER,
  average_dose_ug INTEGER,
  max_dose_ug INTEGER,
  risk_assessment_score INTEGER,
  follow_up_required INTEGER,
  follow_up_due_date INTEGER,
  notes INTEGER,
  compliance_flag INTEGER,
  exposure_event_type_id INTEGER
);

INSERT INTO nanomaterial_exposure_event_log VALUES (1, 5001, 3001, 20231201, 20231201, 0.5, 50.0, 1, 8001, 1, 1, 9001, 10001, 11001, 0, 3600, 1800, 2000, 75, 1, 20240115, 0, 1, 1);
INSERT INTO nanomaterial_exposure_event_log VALUES (2, 5002, 3002, 20231205, 20231205, 0.8, 30.0, 2, 8002, 1, 0, 9002, 10002, 11002, 1, 7200, 3600, 4000, 85, 1, 20240120, 0, 1, 2);
INSERT INTO nanomaterial_exposure_event_log VALUES (3, 5003, 3003, 20231210, 20231210, 0.3, 70.0, 1, 8003, 0, 1, 9003, 10003, 11003, 0, 1800, 900, 1200, 65, 0, 0, 0, 1, 1);