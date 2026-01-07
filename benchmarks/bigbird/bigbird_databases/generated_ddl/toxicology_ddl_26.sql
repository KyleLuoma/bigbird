-- Table storing metadata for air quality sensors in the laboratory
CREATE TABLE lab_air_quality_sensor (
  sensor_id TEXT NOT NULL,
  location TEXT,
  manufacturer TEXT,
  model TEXT,
  install_date TEXT,
  calibration_date TEXT,
  firmware_version TEXT,
  sampling_rate_hz TEXT,
  ppm_threshold TEXT,
  temperature_c TEXT,
  humidity_percent TEXT,
  battery_voltage TEXT,
  last_maintenance TEXT,
  status TEXT,
  ip_address TEXT,
  mac_address TEXT,
  sensor_type TEXT,
  data_format TEXT,
  network_segment TEXT,
  notes TEXT,
  PRIMARY KEY (sensor_id)
);

INSERT INTO lab_air_quality_sensor (sensor_id,location,manufacturer,model,install_date,calibration_date,firmware_version,sampling_rate_hz,ppm_threshold,temperature_c,humidity_percent,battery_voltage,last_maintenance,status,ip_address,mac_address,sensor_type,data_format,network_segment,notes) VALUES (sensor001,labroomA,AirTech,AT200,2023-01-15,2024-01-10,v1.2,1,5,22,45,3.7,2024-01-05,active,192.168.1.10,AA:BB:CC:DD:EE:01,CO2,JSON,segment1,initial_deployment);
INSERT INTO lab_air_quality_sensor (sensor_id,location,manufacturer,model,install_date,calibration_date,firmware_version,sampling_rate_hz,ppm_threshold,temperature_c,humidity_percent,battery_voltage,last_maintenance,status,ip_address,mac_address,sensor_type,data_format,network_segment,notes) VALUES (sensor002,labroomB,EnviroSense,ESX5,2022-11-20,2023-11-20,v2.0,0.5,10,21,50,3.9,2023-12-01,inactive,192.168.1.11,AA:BB:CC:DD:EE:02,PM2.5,XML,segment2,stored_for_spare);
INSERT INTO lab_air_quality_sensor (sensor_id,location,manufacturer,model,install_date,calibration_date,firmware_version,sampling_rate_hz,ppm_threshold,temperature_c,humidity_percent,battery_voltage,last_maintenance,status,ip_address,mac_address,sensor_type,data_format,network_segment,notes) VALUES (sensor003,cleanroom1,ClearAir,CA100,2023-05-05,2024-05-05,v1.0,2,7,20,40,4.0,2024-02-15,active,192.168.1.12,AA:BB:CC:DD:EE:03,Ozone,CSV,segment3,calibrated_recently);

-- Log of waste disposal vehicle trips
CREATE TABLE waste_disposal_vehicle_log (
  vehicle_id TEXT NOT NULL,
  driver_name TEXT,
  departure_time TEXT,
  arrival_time TEXT,
  waste_type TEXT,
  load_weight_kg TEXT,
  route_id TEXT,
  temperature_c TEXT,
  seal_number TEXT,
  compliance_check TEXT,
  gps_latitude TEXT,
  gps_longitude TEXT,
  odometer_start_km TEXT,
  odometer_end_km TEXT,
  fuel_used_liters TEXT,
  maintenance_status TEXT,
  next_service_date TEXT,
  company_name TEXT,
  license_plate TEXT,
  remarks TEXT,
  PRIMARY KEY (vehicle_id, departure_time)
);

INSERT INTO waste_disposal_vehicle_log (vehicle_id,driver_name,departure_time,arrival_time,waste_type,load_weight_kg,route_id,temperature_c,seal_number,compliance_check,gps_latitude,gps_longitude,odometer_start_km,odometer_end_km,fuel_used_liters,maintenance_status,next_service_date,company_name,license_plate,remarks) VALUES (veh001,JohnDoe,2024-03-01T08:00,2024-03-01T09:30,chemical,1200,R001,15,sealA,passed,40.7128N,74.0060W,15000,15120,45,good,2024-09-01,WasteCo,ABC123,none);
INSERT INTO waste_disposal_vehicle_log (vehicle_id,driver_name,departure_time,arrival_time,waste_type,load_weight_kg,route_id,temperature_c,seal_number,compliance_check,gps_latitude,gps_longitude,odometer_start_km,odometer_end_km,fuel_used_liters,maintenance_status,next_service_date,company_name,license_plate,remarks) VALUES (veh002,JaneSmith,2024-03-02T10:15,2024-03-02T11:45,biohazard,800,R002,12,sealB,passed,34.0522N,118.2437W,20000,20130,38,service_due,2024-07-15,GreenWaste,XYZ789,delayed_due_to_traffic);
INSERT INTO waste_disposal_vehicle_log (vehicle_id,driver_name,departure_time,arrival_time,waste_type,load_weight_kg,route_id,temperature_c,seal_number,compliance_check,gps_latitude,gps_longitude,odometer_start_km,odometer_end_km,fuel_used_liters,maintenance_status,next_service_date,company_name,license_plate,remarks) VALUES (veh003,MarkLee,2024-03-03T13:00,2024-03-03T14:20,metal,500,R003,18,sealC,failed,51.5074N,0.1278W,30000,30110,30,good,2025-01-10,WasteMasters,LMN456,seal_issue_reported);

-- Inventory of computational cluster nodes
CREATE TABLE computational_node_inventory (
  node_id TEXT NOT NULL,
  hostname TEXT,
  cpu_model TEXT,
  cpu_cores TEXT,
  cpu_threads TEXT,
  memory_gb TEXT,
  storage_tb TEXT,
  gpu_model TEXT,
  gpu_count TEXT,
  os_version TEXT,
  rack_location TEXT,
  power_supply_watts TEXT,
  network_speed_gbps TEXT,
  ip_address TEXT,
  mac_address TEXT,
  virtualized TEXT,
  maintenance_window TEXT,
  last_update TEXT,
  warranty_expiry TEXT,
  asset_tag TEXT,
  notes TEXT,
  PRIMARY KEY (node_id)
);

INSERT INTO computational_node_inventory (node_id,hostname,cpu_model,cpu_cores,cpu_threads,memory_gb,storage_tb,gpu_model,gpu_count,os_version,rack_location,power_supply_watts,network_speed_gbps,ip_address,mac_address,virtualized,maintenance_window,last_update,warranty_expiry,asset_tag,notes) VALUES (node001,comp-node-01,IntelXeonE5,32,64,256,8,NVIDIAV100,2,Ubuntu22.04,RackA1,800,10,10.0.0.1,AA:BB:CC:DD:EE:10,no,Sat02-03:00,2024-03-01,2027-03-01,AT001,primary_compute_node);
INSERT INTO computational_node_inventory (node_id,hostname,cpu_model,cpu_cores,cpu_threads,memory_gb,storage_tb,gpu_model,gpu_count,os_version,rack_location,power_supply_watts,network_speed_gbps,ip_address,mac_address,virtualized,maintenance_window,last_update,warranty_expiry,asset_tag,notes) VALUES (node002,comp-node-02,AMD_EPYC,64,128,512,16,NVIDIA_A30,4,CentOS8,RackA2,1200,25,10.0.0.2,AA:BB:CC:DD:EE:11,yes,Sun02-04:00,2024-02-28,2028-02-28,AT002,storage_heavy_node);
INSERT INTO computational_node_inventory (node_id,hostname,cpu_model,cpu_cores,cpu_threads,memory_gb,storage_tb,gpu_model,gpu_count,os_version,rack_location,power_supply_watts,network_speed_gbps,ip_address,mac_address,virtualized,maintenance_window,last_update,warranty_expiry,asset_tag,notes) VALUES (node003,comp-node-03,IntelXeonGold,48,96,384,12,NVIDIA_T4,2,Ubuntu20.04,RackB1,900,10,10.0.0.3,AA:BB:CC:DD:EE:12,no,Mon01-01:00,2024-01-15,2026-01-15,AT003,ml_training_node);

-- Access events for cleanroom zones
CREATE TABLE lab_cleanroom_access_event (
  event_id TEXT NOT NULL,
  employee_id TEXT,
  badge_number TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  zone TEXT,
  access_level TEXT,
  purpose TEXT,
  supervisor_id TEXT,
  temperature_c TEXT,
  humidity_percent TEXT,
  particle_count TEXT,
  filter_status TEXT,
  air_change_rate TEXT,
  iv_equipment_used TEXT,
  chemical_used TEXT,
  notes TEXT,
  recorded_by TEXT,
  audit_flag TEXT,
  compliance_status TEXT,
  PRIMARY KEY (event_id)
);

INSERT INTO lab_cleanroom_access_event (event_id,employee_id,badge_number,start_timestamp,end_timestamp,zone,access_level,purpose,supervisor_id,temperature_c,humidity_percent,particle_count,filter_status,air_change_rate,iv_equipment_used,chemical_used,notes,recorded_by,audit_flag,compliance_status) VALUES (ev001,E123,BAD001,2024-03-01T07:30,2024-03-01T09:00,ZoneA,Level2,SamplePrep,S456,22,35,5,OK,200,Yes,No,none,system,no,compliant);
INSERT INTO lab_cleanroom_access_event (event_id,employee_id,badge_number,start_timestamp,end_timestamp,zone,access_level,purpose,supervisor_id,temperature_c,humidity_percent,particle_count,filter_status,air_change_rate,iv_equipment_used,chemical_used,notes,recorded_by,audit_flag,compliance_status) VALUES (ev002,E124,BAD002,2024-03-02T10:15,2024-03-02T12:45,ZoneB,Level3,EquipmentMaintenance,S457,21,30,3,OK,250,No,Yes,filter_replaced,system,yes,noncompliant);
INSERT INTO lab_cleanroom_access_event (event_id,employee_id,badge_number,start_timestamp,end_timestamp,zone,access_level,purpose,supervisor_id,temperature_c,humidity_percent,particle_count,filter_status,air_change_rate,iv_equipment_used,chemical_used,notes,recorded_by,audit_flag,compliance_status) VALUES (ev003,E125,BAD003,2024-03-03T14:00,2024-03-03T15:30,ZoneC,Level1,Inspection,S458,23,40,2,OK,180,No,No,routine_check,system,no,compliant);

-- Log of reagent storage condition measurements
CREATE TABLE reagent_storage_condition_log (
  log_id TEXT NOT NULL,
  reagent_id TEXT,
  storage_location TEXT,
  temperature_c TEXT,
  humidity_percent TEXT,
  light_exposure_lux TEXT,
  expiration_date TEXT,
  batch_number TEXT,
  lot_number TEXT,
  container_type TEXT,
  seal_integrity TEXT,
  last_inspection_date TEXT,
  inspector_id TEXT,
  deviation_flag TEXT,
  corrective_action TEXT,
  comments TEXT,
  recorded_by TEXT,
  status TEXT,
  next_inspection_due TEXT,
  audit_timestamp TEXT,
  PRIMARY KEY (log_id)
);

INSERT INTO reagent_storage_condition_log (log_id,reagent_id,storage_location,temperature_c,humidity_percent,light_exposure_lux,expiration_date,batch_number,lot_number,container_type,seal_integrity,last_inspection_date,inspector_id,deviation_flag,corrective_action,comments,recorded_by,status,next_inspection_due,audit_timestamp) VALUES (log001,R001,FreezerA,-20,30,0,2025-06-01,B001,L001,CryoTube,Intact,2024-02-20,I001,no,None,ok,system,active,2024-08-20,2024-02-20T10:00);
INSERT INTO reagent_storage_condition_log (log_id,reagent_id,storage_location,temperature_c,humidity_percent,light_exposure_lux,expiration_date,batch_number,lot_number,container_type,seal_integrity,last_inspection_date,inspector_id,deviation_flag,corrective_action,comments,recorded_by,status,next_inspection_due,audit_timestamp) VALUES (log002,R002,RefrigeratorB,4,45,200,2024-12-15,B002,L002,GlassBottle,Intact,2024-03-01,I002,yes,TempAdjusted,temperature_spike,system,active,2024-09-01,2024-03-01T11:30);
INSERT INTO reagent_storage_condition_log (log_id,reagent_id,storage_location,temperature_c,humidity_percent,light_exposure_lux,expiration_date,batch_number,lot_number,container_type,seal_integrity,last_inspection_date,inspector_id,deviation_flag,corrective_action,comments,recorded_by,status,next_inspection_due,audit_timestamp) VALUES (log003,R003,RoomC,22,55,500,2024-09-30,B003,L003,PlasticBag,Compromised,2024-01-15,I003,yes,SealReplaced,seal_leak_detected,system,inactive,2024-07-15,2024-01-15T09:45);

-- Records of facility power outage events
CREATE TABLE facility_power_outage_event (
  outage_id TEXT NOT NULL,
  start_timestamp TEXT,
  end_timestamp TEXT,
  affected_areas TEXT,
  cause TEXT,
  backup_generator_used TEXT,
  generator_runtime_minutes TEXT,
  load_restored_percent TEXT,
  manual_override TEXT,
  maintenance_ticket TEXT,
  reported_by TEXT,
  escalation_level TEXT,
  impact_rating TEXT,
  downtime_minutes TEXT,
  financial_loss_usd TEXT,
  corrective_actions TEXT,
  notes TEXT,
  recorded_timestamp TEXT,
  resolution_status TEXT,
  auditor_id TEXT,
  PRIMARY KEY (outage_id)
);

INSERT INTO facility_power_outage_event (outage_id,start_timestamp,end_timestamp,affected_areas,cause,backup_generator_used,generator_runtime_minutes,load_restored_percent,manual_override,maintenance_ticket,reported_by,escalation_level,impact_rating,downtime_minutes,financial_loss_usd,corrective_actions,notes,recorded_timestamp,resolution_status,auditor_id) VALUES (out001,2024-02-10T14:20,2024-02-10T15:05,LabWingA,GridFailure,GenA,45,95,Yes,MT001,JohnDoe,High,Severe,45,1200,GeneratorServiced,none,2024-02-10T15:10,Resolved,A001);
INSERT INTO facility_power_outage_event (outage_id,start_timestamp,end_timestamp,affected_areas,cause,backup_generator_used,generator_runtime_minutes,load_restored_percent,manual_override,maintenance_ticket,reported_by,escalation_level,impact_rating,downtime_minutes,financial_loss_usd,corrective_actions,notes,recorded_timestamp,resolution_status,auditor_id) VALUES (out002,2024-03-05T08:00,2024-03-05T09:30,EntireFacility,Storm,GenB,90,100,No,MT002,JaneSmith,Medium,Moderate,90,800,ElectricalInspection,storm_related,2024-03-05T09:35,Resolved,A002);
INSERT INTO facility_power_outage_event (outage_id,start_timestamp,end_timestamp,affected_areas,cause,backup_generator_used,generator_runtime_minutes,load_restored_percent,manual_override,maintenance_ticket,reported_by,escalation_level,impact_rating,downtime_minutes,financial_loss_usd,corrective_actions,notes,recorded_timestamp,resolution_status,auditor_id) VALUES (out003,2024-01-20T22:15,2024-01-20T23:00,LabWingC,EquipmentFailure,GenC,30,80,Yes,MT003,MarkLee,Low,Minor,45,300,GeneratorReplaced,minor_issue,2024-01-20T23:05,Resolved,A003);

-- Environmental noise measurement records
CREATE TABLE environmental_noise_measurement (
  measurement_id TEXT NOT NULL,
  sensor_id TEXT,
  measurement_timestamp TEXT,
  location TEXT,
  decibel_level TEXT,
  frequency_hz TEXT,
  duration_seconds TEXT,
  weather_condition TEXT,
  temperature_c TEXT,
  humidity_percent TEXT,
  wind_speed_mps TEXT,
  comments TEXT,
  recorded_by TEXT,
  calibration_status TEXT,
  data_quality_flag TEXT,
  analysis_version TEXT,
  threshold_exceeded TEXT,
  alert_sent TEXT,
  alert_timestamp TEXT,
  resolution_notes TEXT,
  audit_timestamp TEXT,
  PRIMARY KEY (measurement_id)
);

INSERT INTO environmental_noise_measurement (measurement_id,sensor_id,measurement_timestamp,location,decibel_level,frequency_hz,duration_seconds,weather_condition,temperature_c,humidity_percent,wind_speed_mps,comments,recorded_by,calibration_status,data_quality_flag,analysis_version,threshold_exceeded,alert_sent,alert_timestamp,resolution_notes,audit_timestamp) VALUES (nm001,S001,2024-03-01T10:00,LabEntrance,68,500,60,Clear,21,40,2,normal,system,calibrated,good,v1.0,no,, ,2024-03-01T10:05);
INSERT INTO environmental_noise_measurement (measurement_id,sensor_id,measurement_timestamp,location,decibel_level,frequency_hz,duration_seconds,weather_condition,temperature_c,humidity_percent,wind_speed_mps,comments,recorded_by,calibration_status,data_quality_flag,analysis_version,threshold_exceeded,alert_sent,alert_timestamp,resolution_notes,audit_timestamp) VALUES (nm002,S002,2024-03-02T14:30,ParkingLot,82,1000,120,Rain,19,85,5,high_noise,system,calibrated,good,v1.1,yes,yes,2024-03-02T14:35,investigated,2024-03-02T14:40);
INSERT INTO environmental_noise_measurement (measurement_id,sensor_id,measurement_timestamp,location,decibel_level,frequency_hz,duration_seconds,weather_condition,temperature_c,humidity_percent,wind_speed_mps,comments,recorded_by,calibration_status,data_quality_flag,analysis_version,threshold_exceeded,alert_sent,alert_timestamp,resolution_notes,audit_timestamp) VALUES (nm003,S003,2024-03-03T09:15,LabCorridor,71,750,90,Cloudy,22,50,3,normal,system,calibrated,good,v1.0,no,, ,2024-03-03T09:20);

-- Tracking of patient samples in clinical studies
CREATE TABLE patient_sample_tracking (
  sample_id TEXT NOT NULL,
  patient_id TEXT,
  collection_date TEXT,
  collection_time TEXT,
  sample_type TEXT,
  tube_id TEXT,
  volume_ml TEXT,
  storage_temperature_c TEXT,
  freezer_location TEXT,
  barcode TEXT,
  processing_status TEXT,
  analyst_id TEXT,
  consent_form_id TEXT,
  study_id TEXT,
  visit_number TEXT,
  comments TEXT,
  last_updated TEXT,
  updated_by TEXT,
  audit_flag TEXT,
  disposal_date TEXT,
  PRIMARY KEY (sample_id)
);

INSERT INTO patient_sample_tracking (sample_id,patient_id,collection_date,collection_time,sample_type,tube_id,volume_ml,storage_temperature_c,freezer_location,barcode,processing_status,analyst_id,consent_form_id,study_id,visit_number,comments,last_updated,updated_by,audit_flag,disposal_date) VALUES (ps001,P001,2024-02-15,08:30,Blood,T001,5,-80,Freezer1,BC001,received,A001,CF001,ST001,1,none,2024-02-15,system,no,);
INSERT INTO patient_sample_tracking (sample_id,patient_id,collection_date,collection_time,sample_type,tube_id,volume_ml,storage_temperature_c,freezer_location,barcode,processing_status,analyst_id,consent_form_id,study_id,visit_number,comments,last_updated,updated_by,audit_flag,disposal_date) VALUES (ps002,P002,2024-02-20,09:15,Urine,T002,10,4,RefrigeratorA,BC002,processed,A002,CF002,ST002,2,repeat_collection,2024-02-20,system,no,);
INSERT INTO patient_sample_tracking (sample_id,patient_id,collection_date,collection_time,sample_type,tube_id,volume_ml,storage_temperature_c,freezer_location,barcode,processing_status,analyst_id,consent_form_id,study_id,visit_number,comments,last_updated,updated_by,audit_flag,disposal_date) VALUES (ps003,P003,2024-03-01,07:45,Tissue,T003,2,-80,Freezer2,BC003,queued,A003,CF003,ST003,1,awaiting_processing,2024-03-01,system,yes,2024-06-01);

-- Inventory for instrument spare parts
CREATE TABLE instrument_spare_parts_inventory (
  part_id TEXT NOT NULL,
  instrument_id TEXT,
  part_name TEXT,
  part_number TEXT,
  manufacturer TEXT,
  batch_number TEXT,
  serial_number TEXT,
  quantity_in_stock TEXT,
  reorder_level TEXT,
  last_order_date TEXT,
  supplier_name TEXT,
  warranty_months TEXT,
  installation_date TEXT,
  last_maintenance_date TEXT,
  condition TEXT,
  storage_location TEXT,
  notes TEXT,
  recorded_by TEXT,
  audit_timestamp TEXT,
  status TEXT,
  PRIMARY KEY (part_id)
);

INSERT INTO instrument_spare_parts_inventory (part_id,instrument_id,part_name,part_number,manufacturer,batch_number,serial_number,quantity_in_stock,reorder_level,last_order_date,supplier_name,warranty_months,installation_date,last_maintenance_date,condition,storage_location,notes,recorded_by,audit_timestamp,status) VALUES (sp001,inst001,Filter,F001,FilterCo,B001,SN001,10,5,2024-01-10,SupplierA,24,2023-06-01,2024-02-01,good,WarehouseA,none,system,2024-02-02,active);
INSERT INTO instrument_spare_parts_inventory (part_id,instrument_id,part_name,part_number,manufacturer,batch_number,serial_number,quantity_in_stock,reorder_level,last_order_date,supplier_name,warranty_months,installation_date,last_maintenance_date,condition,storage_location,notes,recorded_by,audit_timestamp,status) VALUES (sp002,inst002,PowerSupply,PS001,PowerCo,B002,SN002,4,2,2023-12-15,SupplierB,36,2022-11-15,2024-01-20,good,WarehouseB,checked,system,2024-01-21,active);
INSERT INTO instrument_spare_parts_inventory (part_id,instrument_id,part_name,part_number,manufacturer,batch_number,serial_number,quantity_in_stock,reorder_level,last_order_date,supplier_name,warranty_months,installation_date,last_maintenance_date,condition,storage_location,notes,recorded_by,audit_timestamp,status) VALUES (sp003,inst003,Sensor,SEN001,SensorInc,B003,SN003,2,1,2024-02-05,SupplierC,12,2023-02-10,2024-02-10,good,WarehouseC,calibrated,system,2024-02-11,active);

-- Daily energy consumption records for the facility
CREATE TABLE lab_energy_consumption_daily (
  record_id TEXT NOT NULL,
  date TEXT,
  building TEXT,
  wing TEXT,
  total_kwh TEXT,
  hvac_kwh TEXT,
  lighting_kwh TEXT,
  equipment_kwh TEXT,
  renewable_kwh TEXT,
  carbon_intensity_kg_per_kwh TEXT,
  peak_demand_kw TEXT,
  offpeak_kwh TEXT,
  onpeak_kwh TEXT,
  demand_response_participation TEXT,
  notes TEXT,
  recorded_by TEXT,
  audit_timestamp TEXT,
  verification_status TEXT,
  data_source TEXT,
  PRIMARY KEY (record_id)
);

INSERT INTO lab_energy_consumption_daily (record_id,date,building,wing,total_kwh,hvac_kwh,lighting_kwh,equipment_kwh,renewable_kwh,carbon_intensity_kg_per_kwh,peak_demand_kw,offpeak_kwh,onpeak_kwh,demand_response_participation,notes,recorded_by,audit_timestamp,verification_status,data_source) VALUES (e001,2024-03-01,Main,North,15000,5000,3000,6000,3000,0.25,1200,8000,7000,yes,normal_day,system,2024-03-01T01:00,verified,meters);
INSERT INTO lab_energy_consumption_daily (record_id,date,building,wing,total_kwh,hvac_kwh,lighting_kwh,equipment_kwh,renewable_kwh,carbon_intensity_kg_per_kwh,peak_demand_kw,offpeak_kwh,onpeak_kwh,demand_response_participation,notes,recorded_by,audit_timestamp,verification_status,data_source) VALUES (e002,2024-03-02,Main,South,15500,5200,3100,6100,3100,0.24,1250,8200,7300,no,peak_day,system,2024-03-02T01:00,unverified,meters);
INSERT INTO lab_energy_consumption_daily (record_id,date,building,wing,total_kwh,hvac_kwh,lighting_kwh,equipment_kwh,renewable_kwh,carbon_intensity_kg_per_kwh,peak_demand_kw,offpeak_kwh,onpeak_kwh,demand_response_participation,notes,recorded_by,audit_timestamp,verification_status,data_source) VALUES (e003,2024-03-03,Annex,East,14000,4800,2900,5800,2900,0.26,1150,7800,6200,yes,maintenance_day,system,2024-03-03T01:00,verified,meters);