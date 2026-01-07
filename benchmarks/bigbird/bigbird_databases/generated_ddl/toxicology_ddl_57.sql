-- Nanotechnology fabrication line metadata
CREATE TABLE `nanotech_fabrication_line` (
  `nanofab_id` TEXT NOT NULL,
  `facility_name` TEXT,
  `location_city` TEXT,
  `location_state` TEXT,
  `operating_shift` TEXT,
  `line_number` INTEGER,
  `cleanroom_class` TEXT,
  `max_particle_count` INTEGER,
  `temperature_c` REAL,
  `humidity_percent` REAL,
  `airflow_cfm` REAL,
  `laser_power_w` REAL,
  `electron_beam_current_ma` REAL,
  `substrate_type` TEXT,
  `process_step` TEXT,
  `operator_id` TEXT,
  `maintenance_due_date` TEXT,
  `last_calibration_date` TEXT,
  `software_version` TEXT,
  `safety_incident_flag` INTEGER,
  `throughput_units_per_hour` INTEGER,
  `energy_consumption_kwh` REAL,
  PRIMARY KEY (`nanofab_id`)
);

INSERT INTO `nanotech_fabrication_line` VALUES
('NF001','NanoLab Alpha','Springfield','IL','Day',1,'ISO5',1000,22.5,45.0,500.0,1500.0,250.0,'Silicon','Deposition','OP001','2024-11-15','2024-07-01','v3.2',0,1200,3500.5);
INSERT INTO `nanotech_fabrication_line` VALUES
('NF002','NanoLab Beta','Aurora','CO','Night',2,'ISO6',800,21.0,40.0,450.0,1200.0,200.0,'GalliumArsenide','Etching','OP002','2024-12-01','2024-08-10','v3.2',1,950,2800.0);
INSERT INTO `nanotech_fabrication_line` VALUES
('NF003','NanoLab Gamma','Riverside','CA','Swing',3,'ISO7',600,23.0,50.0,400.0,1000.0,150.0,'Graphene','Patterning','OP003','2025-01-20','2024-09-05','v3.3',0,800,2100.7);


-- Solar panel testing facility records
CREATE TABLE `solar_panel_testing_facility` (
  `test_facility_id` TEXT NOT NULL,
  `site_name` TEXT,
  `latitude` REAL,
  `longitude` REAL,
  `panel_type` TEXT,
  `capacity_w` INTEGER,
  `temperature_test_c` REAL,
  `humidity_test_percent` REAL,
  `irradiance_w_per_m2` REAL,
  `test_start_date` TEXT,
  `test_end_date` TEXT,
  `efficiency_percent` REAL,
  `degradation_rate_ppm_per_year` REAL,
  `manufacturer` TEXT,
  `model_number` TEXT,
  `tester_id` TEXT,
  `status` TEXT,
  `notes` TEXT,
  `safety_check_passed` INTEGER,
  `energy_output_kwh` REAL,
  `peak_power_time` TEXT,
  `maintenance_cycle_days` INTEGER,
  `software_version` TEXT,
  `calibration_date` TEXT,
  PRIMARY KEY (`test_facility_id`)
);

INSERT INTO `solar_panel_testing_facility` VALUES
('SF001','Desert Sun Lab',34.05,-117.25,'Monocrystalline',350,85.0,20.0,1000.0,'2024-03-01','2024-09-01',22.5,150,'SunPower','SP-350','TE001','Completed','No issues',1,4200.0,'2024-06-15',180,'v1.0','2024-02-20');
INSERT INTO `solar_panel_testing_facility` VALUES
('SF002','Coastal Breeze Site',36.77,-122.42,'ThinFilm',250,75.0,30.0,950.0,'2024-04-15','2024-10-15',19.8,200,'FirstSolar','FS-250','TE002','InProgress','Minor delamination',1,3100.0,'2024-07-20',150,'v1.1','2024-03-10');
INSERT INTO `solar_panel_testing_facility` VALUES
('SF003','Mountain Peak Lab',39.74,-105.52,'Polycrystalline',300,80.0,25.0,980.0,'2024-05-10','2024-11-10',20.3,180,'Trina','TR-300','TE003','Pending','Awaiting final calibration',0,3500.0,'2024-08-05',200,'v1.0','2024-04-01');


-- Galactic observation array configuration
CREATE TABLE `galactic_observation_array` (
  `array_id` TEXT NOT NULL,
  `array_name` TEXT,
  `telescope_count` INTEGER,
  `location_latitude` REAL,
  `location_longitude` REAL,
  `primary_mirror_diameter_m` REAL,
  `secondary_mirror_diameter_m` REAL,
  `instrument_type` TEXT,
  `detector_type` TEXT,
  `observing_band` TEXT,
  `resolution_arcsec` REAL,
  `field_of_view_deg` REAL,
  `data_rate_gbps` REAL,
  `operational_status` TEXT,
  `last_maintenance_date` TEXT,
  `next_upgrade_plan` TEXT,
  `control_software_version` TEXT,
  `weather_station_id` TEXT,
  `light_pollution_index` INTEGER,
  `operator_contact` TEXT,
  `budget_year` INTEGER,
  `funding_source` TEXT,
  `notes` TEXT,
  `calibration_status` TEXT,
  PRIMARY KEY (`array_id`)
);

INSERT INTO `galactic_observation_array` VALUES
('GA001','Northern Sky Array',12,45.0,-120.5,2.5,0.8,'Spectrograph','CCD','Visible',0.5,1.2,5.0,'Active','2024-06-01','Upgrade2025','v2.3','WS001',12,'optics@nsa.org',2024,'NSF','Standard operation','Calibrated');
INSERT INTO `galactic_observation_array` VALUES
('GA002','Southern Deep Field',8,-30.2,149.0,3.0,1.0,'Imager','CMOS','Infrared',0.3,0.8,4.2,'Standby','2023-12-15','Upgrade2024','v2.1','WS002',8,'astronomy@sd.gov',2023,'DOE','Awaiting funding','Pending');
INSERT INTO `galactic_observation_array` VALUES
('GA003','Equatorial Survey',10,0.5,15.2,2.8,0.9,'Polarimeter','CCD','Radio',1.0,2.0,6.5,'Active','2024-05-20','Upgrade2026','v2.4','WS003',5,'contact@eqarray.org',2025,'NASA','High priority','Calibrated');


-- Deep sea sampling vessel logs
CREATE TABLE `deep_sea_sampling_vessel` (
  `vessel_id` TEXT NOT NULL,
  `vessel_name` TEXT,
  `imo_number` TEXT,
  `home_port` TEXT,
  `operator_company` TEXT,
  `max_depth_m` INTEGER,
  `cruise_start_date` TEXT,
  `cruise_end_date` TEXT,
  `sample_type` TEXT,
  `water_temperature_c` REAL,
  `salinity_psu` REAL,
  `oxygen_mg_per_l` REAL,
  `ph_level` REAL,
  `latitude_start` REAL,
  `longitude_start` REAL,
  `latitude_end` REAL,
  `longitude_end` REAL,
  `crew_count` INTEGER,
  `captain_id` TEXT,
  `navigation_system` TEXT,
  `data_storage_tb` REAL,
  `equipment_status` TEXT,
  `weather_conditions` TEXT,
  `mission_objective` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`vessel_id`)
);

INSERT INTO `deep_sea_sampling_vessel` VALUES
('DSV001','Abyss Explorer','9701234','Hamburg','Oceanic Ltd',6000,'2024-02-10','2024-03-05','Sediment','2.3',35.0,6.5,8.1,34.5, -120.7,34.8,-121.0,25,'CAP001','RTK-GPS','12.5','Operational','Calm','Core sampling','Successful');
INSERT INTO `deep_sea_sampling_vessel` VALUES
('DSV002','Mariana Quest','9705678','Tokyo','Deep Waters Inc',11000,'2024-04-12','2024-04-28','Water Column','1.8',34.8,5.9,8.3,15.2,145.3,15.5,145.6,30,'CAP002','InertialNav','15.0','Operational','Rough','Biological survey','Partial data loss');
INSERT INTO `deep_sea_sampling_vessel` VALUES
('DSV003','Pacific Probe','9709012','Vancouver','Blue Ocean Corp',8000,'2024-06-01','2024-06-20','Hydrothermal','3.1',36.2,7.2,7.9,48.5,-123.5,48.8,-124.0,22,'CAP003','DualGPS','10.0','Maintenance','Moderate','Geochemical analysis','Equipment failure on day 5');


-- Autonomous drone fleet registry
CREATE TABLE `autonomous_drone_fleet` (
  `drone_id` TEXT NOT NULL,
  `model` TEXT,
  `manufacturer` TEXT,
  `serial_number` TEXT,
  `max_flight_time_min` INTEGER,
  `max_range_km` REAL,
  `payload_capacity_kg` REAL,
  `camera_resolution_mp` INTEGER,
  `sensor_suite` TEXT,
  `communication_band` TEXT,
  `firmware_version` TEXT,
  `last_maintenance_date` TEXT,
  `next_inspection_due` TEXT,
  `operational_status` TEXT,
  `assigned_mission` TEXT,
  `pilot_id` TEXT,
  `battery_type` TEXT,
  `current_battery_cycles` INTEGER,
  `gps_accuracy_m` REAL,
  `altitude_limit_m` INTEGER,
  `weight_kg` REAL,
  `wing_span_m` REAL,
  `max_speed_kmh` REAL,
  `flight_zone` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`drone_id`)
);

INSERT INTO `autonomous_drone_fleet` VALUES
('DR001','AeroScout X1','SkyTech','SN1001',45,120.5,2.5,24,'LiDAR,Thermal','5GHz','v5.2','2024-05-01','2024-11-01','Active','Coastal Mapping','PLT100','LiPo',150,0.5,500,6.2,3.0,85.0,'ZoneA','No issues');
INSERT INTO `autonomous_drone_fleet` VALUES
('DR002','TerraFly Z2','AeroDynamics','SN2002',60,150.0,3.0,30,'Multispectral,RGB','2.4GHz','v5.1','2024-03-15','2024-09-15','Active','Forest Survey','PLT200','LiIon',200,0.3,600,7.0,3.5,95.0','ZoneB','Battery health good');
INSERT INTO `autonomous_drone_fleet` VALUES
('DR003','AeroScout X1','SkyTech','SN1003',45,120.5,2.5,24,'LiDAR,Thermal','5GHz','v5.2','2024-04-10','2024-10-10','Maintenance','Agricultural Inspection','PLT300','LiPo',120,0.6,400,6.2,3.0,85.0','ZoneC','Motor replaced on 2024-04-20');


-- Biopharma batch release records
CREATE TABLE `biopharma_batch_release` (
  `release_id` TEXT NOT NULL,
  `batch_number` TEXT,
  `product_name` TEXT,
  `manufacturing_site` TEXT,
  `production_start_date` TEXT,
  `production_end_date` TEXT,
  `fill_volume_ml` REAL,
  `concentration_mg_per_ml` REAL,
  `potency_units` INTEGER,
  `sterility_test_result` TEXT,
  `endotoxin_level_eu_per_ml` REAL,
  `ph_value` REAL,
  `osmolarity_mOsm_per_l` REAL,
  `store_temperature_c` REAL,
  `expiry_date` TEXT,
  `regulatory_approval_status` TEXT,
  `release_decision` TEXT,
  `reviewer_id` TEXT,
  `release_timestamp` TEXT,
  `transport_conditions` TEXT,
  `distribution_region` TEXT,
  `batch_weight_kg` REAL,
  `container_type` TEXT,
  `label_lot_number` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`release_id`)
);

INSERT INTO `biopharma_batch_release` VALUES
('RL001','BCH1001','ImmunoBoost','Facility A','2024-01-05','2024-01-20',10.0,5.0,120000,'Pass',0.12,7.4,300,2.0,'2026-01-20','Approved','Release','RVR001','2024-01-22T08:30:00','Refrigerated','North America',12.5,'Vial','LOT202401','All tests within spec');
INSERT INTO `biopharma_batch_release` VALUES
('RL002','BCH1002','NeuroHeal','Facility B','2024-02-10','2024-02-25',5.0,8.0,90000,'Pass',0.08,7.2,280,4.0,'2026-02-25','Approved','Release','RVR002','2024-02-27T09:15:00','Frozen','Europe',6.0,'Syringe','LOT202402','Stability confirmed');
INSERT INTO `biopharma_batch_release` VALUES
('RL003','BCH1003','CardioGuard','Facility C','2024-03-12','2024-03-27',2.0,12.0,150000,'Fail','N/A',6.9,250,5.0,'2025-12-31','Pending','Hold','RVR003','2024-03-28T10:00:00','Controlled Room Temp','Asia',2.5,'Vial','LOT202403','Sterility test contamination');


-- Quantum computing node specifications
CREATE TABLE `quantum_computing_node` (
  `node_id` TEXT NOT NULL,
  `vendor` TEXT,
  `model` TEXT,
  `qubit_count` INTEGER,
  `qubit_type` TEXT,
  cryogenic_temperature_mk REAL,
  `control_electronics_version` TEXT,
  `max_gate_fidelity` REAL,
  `coherence_time_us` REAL,
  `readout_error_rate` REAL,
  `gate_set` TEXT,
  `error_correction_scheme` TEXT,
  `available_memory_gb` INTEGER,
  `interconnect_bandwidth_gbps` REAL,
  `operational_status` TEXT,
  `last_maintenance_date` TEXT,
  `next_calibration_due` TEXT,
  `facility_location` TEXT,
  `power_consumption_kw` REAL,
  `cooling_power_kw` REAL,
  `rack_position` TEXT,
  `software_stack_version` TEXT,
  `access_policy` TEXT,
  `user_quota_hours` INTEGER,
  `temperature_stability_mk` REAL,
  `vibration_isolation_level` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`node_id`)
);

INSERT INTO `quantum_computing_node` VALUES
('QN001','IonQ','Harmonic-1',32,'Ion','4.2','v3.5',0.9995,2000.0,0.001,'Molmer-Sorensen','Surface Code',64,20.0,'Online','2024-04-10','2024-10-10','Lab A',12.5,8.0,'Rack12','v2.1','Restricted','200',0.01,'High','Stable operation');
INSERT INTO `quantum_computing_node` VALUES
('QN002','Rigetti','Aspen-9',64,'Superconducting','15.0','v2.9',0.9980,150.0,0.003,'CZ','XZZX',128,40.0,'Online','2024-03-01','2024-09-01','Lab B',18.0,12.0,'Rack05','v2.0','Open','500',0.05,'Medium','Running at peak performance');
INSERT INTO `quantum_computing_node` VALUES
('QN003','Google','Sycamore-2',54,'Superconducting','15.0','v4.0',0.9975,120.0,0.004,'iSWAP','Surface Code',256,60.0,'Maintenance','2024-01-20','2024-07-20','Lab C',20.0,15.0,'Rack09','v3.2','Restricted','300',0.04,'High','Scheduled upgrade pending');


-- Archaeology artifact catalog
CREATE TABLE `archaeology_artifact_catalog` (
  `artifact_id` TEXT NOT NULL,
  `site_name` TEXT,
  `culture` TEXT,
  `period` TEXT,
  `material` TEXT,
  `dimensions_cm` TEXT,
  `weight_g` REAL,
  `discovery_date` TEXT,
  `discoverer_id` TEXT,
  `curatorial_status` TEXT,
  `storage_location` TEXT,
  `conservation_treatment` TEXT,
  `radiocarbon_date_bp` INTEGER,
  `latitude` REAL,
  `longitude` REAL,
  `photo_reference` TEXT,
  `description` TEXT,
  `current_exhibition` TEXT,
  `loan_status` TEXT,
  `insurance_value_usd` REAL,
  `access_restriction` TEXT,
  `cataloged_by` TEXT,
  `catalog_date` TEXT,
  `condition_rating` INTEGER,
  `notes` TEXT,
  PRIMARY KEY (`artifact_id`)
);

INSERT INTO `archaeology_artifact_catalog` VALUES
('AR001','Tell Balam','Maya','Classic','Ceramic','15x10x5','850','1923-06-12','DR001','In Storage','Vault A','Stabilized','850','17.5','-92.3','IMG001','Large urn with glyphs','None','Available','25000','Research','CR001','1923-07-01',8,'No damage');
INSERT INTO `archaeology_artifact_catalog` VALUES
('AR002','Necropolis H','Egyptian','New Kingdom','Gold','12x8x3','1200','1998-09-25','DR002','On Display','Gallery 3','Polished','N/A','29.2','31.1','IMG002','Necklace with lapis');INSERT INTO `archaeology_artifact_catalog` VALUES
('AR003','Site Q','Roman','Imperial','Stone','25x20x15','3400','2005-04-10','DR003','In Storage','Vault B','Consolidated','N/A','41.0','12.5','IMG003','Mosaic fragment','None','On Loan','50000','None','CR003','2005-05-01',9,'Minor cracks');


-- Urban infrastructure maintenance log
CREATE TABLE `urban_infra_maintenance_log` (
  `log_id` TEXT NOT NULL,
  `asset_type` TEXT,
  `asset_id` TEXT,
  `location_address` TEXT,
  `maintenance_date` TEXT,
  `maintenance_type` TEXT,
  `contractor_id` TEXT,
  `work_order_number` TEXT,
  `duration_hours` REAL,
  `materials_used` TEXT,
  `cost_usd` REAL,
  `inspection_passed` INTEGER,
  `follow_up_required` INTEGER,
  `next_scheduled_maintenance` TEXT,
  `personnel_involved` TEXT,
  `weather_conditions` TEXT,
  `notes` TEXT,
  `latitude` REAL,
  `longitude` REAL,
  `jurisdiction` TEXT,
  `priority_level` TEXT,
  `reported_by` TEXT,
  `report_timestamp` TEXT,
  `status` TEXT,
  PRIMARY KEY (`log_id`)
);

INSERT INTO `urban_infra_maintenance_log` VALUES
('UL001','Bridge','BRG-120','123 River Rd','2024-03-15','Structural Inspection','CONT01','WO-5001',3.5,'N/A',1200,1,0,'2025-03-15','ENG001','Clear','No issues observed',40.7128,-74.0060,'City','Medium','OPS001','2024-03-15T08:00:00','Completed');
INSERT INTO `urban_infra_maintenance_log` VALUES
('UL002','Sewer Line','SL-45','456 Oak St','2024-04-20','Pipe Replacement','CONT02','WO-5002',12.0','PVC Pipe, Cement',8000,1,0,'2027-04-20','ENG002','Rainy','Replaced 30m segment',34.0522,-118.2437,'County','High','OPS002','2024-04-20T09:30:00','Completed');
INSERT INTO `urban_infra_maintenance_log` VALUES
('UL003','Traffic Light','TL-78','789 Pine Ave','2024-05-05','Firmware Update','CONT03','WO-5003',1.0,'Software Patch',300,1,0,'2026-05-05','ENG003','Sunny','Updated to v2.1',41.8781,-87.6298,'State','Low','OPS003','2024-05-05T07:45:00','Completed');


-- Renewable energy storage system registry
CREATE TABLE `renewable_energy_storage` (
  `storage_id` TEXT NOT NULL,
  `facility_name` TEXT,
  `storage_type` TEXT,
  `technology` TEXT,
  `capacity_mwh` REAL,
  `max_power_mw` REAL,
 `installation_date` TEXT,
  `manufacturer` TEXT,
  `model_number` TEXT,
  `operational_status` TEXT,
  `last_inspection_date` TEXT,
  `next_maintenance_due` TEXT,
  `efficiency_percent` REAL,
  `grid_connection_point` TEXT,
  `location_latitude` REAL,
  `location_longitude` REAL,
  `owner_entity` TEXT,
  `control_system_version` TEXT,
  `temperature_control` TEXT,
  `safety_certification` TEXT,
  `dispatch_strategy` TEXT,
  `environmental_impact_score` INTEGER,
  `remarks` TEXT,
  `contact_person` TEXT,
  `contact_email` TEXT,
  PRIMARY KEY (`storage_id`)
);

INSERT INTO `renewable_energy_storage` VALUES
('ES001','Sunrise Battery Farm','Battery','Lithium-Ion',50.0,30.0,'2022-06-01','Tesla','TB-500','Online','2024-02-15','2025-02-15',92.5,'Node-A',35.6895,139.6917','EnergyCo','v3.2','Active Cooling','UL9540A','Load Following',78,'No issues','JANE DOE','jane.doe@energyco.com');
INSERT INTO `renewable_energy_storage` VALUES
('ES002','WindPeak Hydro','Pumped Hydro','Gravity','120.0','80.0','2018-09-15','Voith','PH-800','Online','2023-11-30','2024-11-30',85.0,'Node-B',48.8566,2.3522','HydroPower Ltd','v2.9','Passive','IEC 61850','Peak Shaving',65,'Minor seepage observed','JOHN SMITH','john.smith@hydropower.com');
INSERT INTO `renewable_energy_storage` VALUES
('ES003','SolarVault Thermal','Thermal','Molten Salt','200.0','150.0','2020-03-20','Abengoa','TS-300','Online','2024-01-10','2025-01-10',88.0,'Node-C',51.5074,-0.1278','SolarGrid Corp','v4.1','Active','NFPA 850','Base Load',82,'Operating within specs','EMILY CHEN','emily.chen@solargrid.com');