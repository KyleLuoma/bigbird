-- Spectrometer device specifications
CREATE TABLE `spectrometer_device_spec` (
  `spectrometer_id` TEXT NOT NULL,
  `model` TEXT,
  `manufacturer` TEXT,
  `wavelength_range_nm` TEXT,
  `resolution_pm` TEXT,
  `detector_type` TEXT,
  `max_power_mw` TEXT,
  `calibration_date` TEXT,
  `last_maintenance_date` TEXT,
  `software_version` TEXT,
  `firmware_version` TEXT,
  `serial_number` TEXT,
  `location` TEXT,
  `installation_date` TEXT,
  `operating_temperature_c` TEXT,
  `humidity_percent` TEXT,
  `laser_type` TEXT,
  `polarization` TEXT,
  `field_of_view_deg` TEXT,
  `pixel_size_um` TEXT,
  `dynamic_range_db` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`spectrometer_id`)
);

INSERT INTO `spectrometer_device_spec` VALUES 
('spec001','SpecX2000','OptiTech','200-800','0.5','CCD','100','2023-05-10','2024-01-15','v2.3','fw1.0','SN12345','LabA','2022-09-01','22','45','Diode','Horizontal','30','13','85','Initial deployment');

INSERT INTO `spectrometer_device_spec` VALUES 
('spec002','UltraSpec300','PhotonInc','400-900','0.2','CMOS','150','2023-11-20','2024-02-10','v3.1','fw2.1','SN67890','LabB','2023-01-12','20','40','Fiber','Vertical','45','10','90','Upgraded optics');

INSERT INTO `spectrometer_device_spec` VALUES 
('spec003','NanoSpec500','NanoOptics','100-700','0.1','InGaAs','80','2024-03-05','2024-03-20','v1.8','fw0.9','SN54321','LabC','2024-02-28','19','38','LED','Circular','60','8','92','Calibration pending');

-- Lab air handling unit log
CREATE TABLE `lab_air_handling_unit_log` (
  `unit_id` TEXT NOT NULL,
  `timestamp` TEXT,
  `airflow_cfm` TEXT,
  `pressure_pa` TEXT,
  `temperature_c` TEXT,
  `humidity_percent` TEXT,
  `filter_status` TEXT,
  `fan_speed_rpm` TEXT,
  `motor_current_a` TEXT,
  `duct_leak_detected` TEXT,
  `co2_ppm` TEXT,
  `voc_ppb` TEXT,
  `pm2_5_ug_m3` TEXT,
  `pm10_ug_m3` TEXT,
  `alarm_active` TEXT,
  `maintenance_required` TEXT,
  `operator_id` TEXT,
  `shift` TEXT,
  `notes` TEXT,
  `software_version` TEXT,
  `firmware_version` TEXT,
  `energy_consumption_kwh` TEXT,
  PRIMARY KEY (`unit_id`,`timestamp`)
);

INSERT INTO `lab_air_handling_unit_log` VALUES 
('ahu001','2024-04-01 08:00','1200','101','22','45','OK','1500','2.5','No','600','120','15','30','No','No','op123','Day','Routine check','v5.0','fw3.2','12.5');

INSERT INTO `lab_air_handling_unit_log` VALUES 
('ahu001','2024-04-01 20:00','1150','99','21','48','OK','1480','2.3','No','580','110','14','28','No','Yes','op456','Night','Filter replacement scheduled','v5.0','fw3.2','12.0');

INSERT INTO `lab_air_handling_unit_log` VALUES 
('ahu002','2024-04-01 09:30','1300','105','23','42','Warning','1600','2.8','Yes','620','130','16','35','Yes','Yes','op789','Day','Leak detected in duct','v5.1','fw3.3','13.2');

-- Nanoparticle synthesis batch summary
CREATE TABLE `nanoparticle_synthesis_batch_summary` (
  `batch_id` TEXT NOT NULL,
  `project_code` TEXT,
  `synthesis_date` TEXT,
  `operator_id` TEXT,
  `nanoparticle_type` TEXT,
  `target_size_nm` TEXT,
  `actual_size_nm` TEXT,
  `size_distribution_percent` TEXT,
  `zeta_potential_mv` TEXT,
  `concentration_mg_ml` TEXT,
  `solvent` TEXT,
  `reaction_time_min` TEXT,
  `temperature_c` TEXT,
  `stir_rate_rpm` TEXT,
  `pH` TEXT,
  `precursor_batch` TEXT,
  `capping_agent` TEXT,
  `yield_percent` TEXT,
  `purity_percent` TEXT,
  `storage_location` TEXT,
  `safety_review_completed` TEXT,
  `notes` TEXT,
  `quality_approval` TEXT,
  PRIMARY KEY (`batch_id`)
);

INSERT INTO `nanoparticle_synthesis_batch_summary` VALUES 
('nbatch001','PRJ001','2024-03-10','op111','Gold','20','19.8','85','-25','2.5','Water','60','80','500','7','PB001','Citrate','78','99','FreezerA','Yes','Stable dispersion','Approved');

INSERT INTO `nanoparticle_synthesis_batch_summary` VALUES 
('nbatch002','PRJ002','2024-03-15','op222','Silver','15','15.2','90','-30','3.0','Ethanol','45','70','450','8','PB002','PVP','82','97','FreezerB','Yes','Bright colloid','Approved');

INSERT INTO `nanoparticle_synthesis_batch_summary` VALUES 
('nbatch003','PRJ003','2024-03-20','op333','Silica','50','49.5','80','-10','1.8','Isopropanol','120','25','300','6','PB003','TEOS','70','95','FreezerC','No','Pending safety sign‑off','Pending');

-- Environmental noise source registry detail
CREATE TABLE `environmental_noise_source_registry_detail` (
  `source_id` TEXT NOT NULL,
  `description` TEXT,
  `category` TEXT,
  `location` TEXT,
  `latitude` TEXT,
  `longitude` TEXT,
  `operating_hours` TEXT,
  `average_db_a` TEXT,
  `peak_db_a` TEXT,
  `frequency_range_hz` TEXT,
  `owner_contact` TEXT,
  `maintenance_interval_days` TEXT,
  `last_inspection_date` TEXT,
  `next_inspection_due` TEXT,
  `mitigation_measures` TEXT,
  `regulatory_status` TEXT,
  `permit_number` TEXT,
  `emission_type` TEXT,
  `notes` TEXT,
  `created_by` TEXT,
  `creation_date` TEXT,
  `status` TEXT,
  PRIMARY KEY (`source_id`)
);

INSERT INTO `environmental_noise_source_registry_detail` VALUES 
('ns001','Main campus HVAC','Mechanical','Building1','40.7128N','74.0060W','24/7','65','85','100-2000','eng1@example.com','180','2024-02-01','2024-08-01','Acoustic baffles','Compliant','PERM123','Continuous','Routine operation','admin','2024-01-15','Active');

INSERT INTO `environmental_noise_source_registry_detail` VALUES 
('ns002','Parking lot generators','Electrical','LotA','40.7130N','74.0055W','06:00-22:00','70','95','50-5000','eng2@example.com','365','2023-12-10','2024-12-10','Enclosure','Compliant','PERM124','Intermittent','Backup power','admin','2023-11-20','Active');

INSERT INTO `environmental_noise_source_registry_detail` VALUES 
('ns003','Construction site jackhammers','Construction','SiteB','40.7140N','74.0040W','08:00-17:00','80','110','500-3000','sitelead@example.com','30','2024-03-15','2024-04-14','Noise barriers','Pending','PERM125','Intermittent','Temporary project','admin','2024-03-01','Pending');

-- Chemical storage zone mapping
CREATE TABLE `chemical_storage_zone_mapping` (
  `zone_id` TEXT NOT NULL,
  `building` TEXT,
  `floor` TEXT,
  `aisle` TEXT,
  `shelf` TEXT,
  `capacity_liters` TEXT,
  `current_utilization_percent` TEXT,
  `temperature_c` TEXT,
  `humidity_percent` TEXT,
  `ventilation_type` TEXT,
  `fire_suppression` TEXT,
  `access_control_level` TEXT,
  `last_audit_date` TEXT,
  `next_audit_due` TEXT,
  `responsible_manager` TEXT,
  `hazard_class_allowed` TEXT,
  `security_camera_present` TEXT,
  `lock_type` TEXT,
  `notes` TEXT,
  `created_by` TEXT,
  `creation_date` TEXT,
  `status` TEXT,
  PRIMARY KEY (`zone_id`)
);

INSERT INTO `chemical_storage_zone_mapping` VALUES 
('zoneA1','ResearchBlock','1','A','S1','500','45','20','35','HVAC','Foam','Level2','2024-01-10','2025-01-10','mgr01','Flammable','Yes','Electronic','Near exit','admin','2023-12-01','Active');

INSERT INTO `chemical_storage_zone_mapping` VALUES 
('zoneB2','ChemistryWing','2','B','S3','800','60','18','40','Natural','CO2','Level3','2023-11-05','2024-11-05','mgr02','Corrosive','Yes','Mechanical','Temperature monitored','admin','2023-10-20','Active');

INSERT INTO `chemical_storage_zone_mapping` VALUES 
('zoneC3','PhysicsDept','3','C','S5','300','30','22','30','HVAC','WaterMist','Level1','2024-02-20','2025-02-20','mgr03','Toxic','No','Electronic','Empty','admin','2024-01-15','Active');

-- Molecular dynamics simulation run
CREATE TABLE `molecular_dynamics_simulation_run` (
  `run_id` TEXT NOT NULL,
  `project_code` TEXT,
  `simulation_name` TEXT,
  `software_package` TEXT,
  `software_version` TEXT,
  `force_field` TEXT,
  `initial_structure_file` TEXT,
  `number_of_atoms` TEXT,
  `simulation_time_ns` TEXT,
  `time_step_fs` TEXT,
  `temperature_k` TEXT,
  `pressure_bar` TEXT,
  `ensemble` TEXT,
  `gpu_used` TEXT,
  `num_gpus` TEXT,
  `compute_node` TEXT,
  `submission_date` TEXT,
  `start_date` TEXT,
  `end_date` TEXT,
  `status` TEXT,
  `output_path` TEXT,
  `notes` TEXT,
  `principal_investigator` TEXT,
  PRIMARY KEY (`run_id`)
);

INSERT INTO `molecular_dynamics_simulation_run` VALUES 
('md001','PROJMD1','ProteinFold','GROMACS','2023.5','CHARMM36','prot_initial.pdb','25000','500','2','310','1','NPT','Yes','2','node05','2024-03-01','2024-03-02','2024-03-07','Completed','/data/md001/','Stable trajectory','DrSmith');

INSERT INTO `molecular_dynamics_simulation_run` VALUES 
('md002','PROJMD2','LipidBilayer','NAMD','2.14','AMBER99','bilayer_initial.pdb','18000','200','1','300','1','NVT','Yes','4','node12','2024-03-10','2024-03-11','2024-03-20','Running','/data/md002/','High membrane fluidity','DrLee');

INSERT INTO `molecular_dynamics_simulation_run` VALUES 
('md003','PROJMD3','DNAHelix','LAMMPS','2022.3','OPLS-AA','dna_initial.pdb','12000','1000','2','315','1','NPT','No','0','node07','2024-02-15','2024-02-16','2024-02-25','Failed','/data/md003/','Energy spikes observed','DrPatel');

-- Optical fiber network topology detail
CREATE TABLE `optical_fiber_network_topology_detail` (
  `link_id` TEXT NOT NULL,
  `source_node` TEXT,
  `destination_node` TEXT,
  `fiber_type` TEXT,
  `core_count` TEXT,
  `capacity_gbps` TEXT,
  `length_km` TEXT,
  `installation_date` TEXT,
  `last_maintenance_date` TEXT,
  `status` TEXT,
  `attenuation_db_km` TEXT,
  `connector_type` TEXT,
  `splicing_method` TEXT,
  `routing_path` TEXT,
  `redundancy_level` TEXT,
  `owner_department` TEXT,
  `wavelength_nm` TEXT,
  `mode` TEXT,
  `notes` TEXT,
  `created_by` TEXT,
  `creation_date` TEXT,
  `last_inspection_date` TEXT,
  `inspection_interval_days` TEXT,
  PRIMARY KEY (`link_id`)
);

INSERT INTO `optical_fiber_network_topology_detail` VALUES 
('link001','NodeA','NodeB','SMF','1','10','0.8','2022-06-01','2024-01-20','Active','0.2','LC','Fusion','PathA1','High','IT','1550','Single','Core link between main labs','admin','2022-05-15','2024-01-15','180');

INSERT INTO `optical_fiber_network_topology_detail` VALUES 
('link002','NodeB','NodeC','MMF','4','40','1.2','2021-09-10','2023-12-05','Active','0.5','SC','Mechanical','PathB2','Medium','Engineering','850','Multi','Backup link for data center','admin','2021-09-01','2023-12-01','365');

INSERT INTO `optical_fiber_network_topology_detail` VALUES 
('link003','NodeC','NodeD','SMF','2','20','2.5','2023-03-15','2024-02-28','Planned','0.3','LC','Fusion','PathC3','Low','Physics','1310','Single','Planned expansion for new instrumentation','admin','2023-03-01','2024-02-20','365');

-- Quantum device test configuration
CREATE TABLE `quantum_device_test_configuration` (
  `test_id` TEXT NOT NULL,
  `device_id` TEXT,
  `test_name` TEXT,
  `test_date` TEXT,
  `operator_id` TEXT,
  `qubit_count` TEXT,
  `gate_fidelity_percent` TEXT,
  `readout_fidelity_percent` TEXT,
  `coherence_time_us` TEXT,
  `temperature_mK` TEXT,
  `control_software` TEXT,
  `control_version` TEXT,
  `bias_voltage_v` TEXT,
  `microwave_power_dbm` TEXT,
  `hardware_revision` TEXT,
  `environmental_shielding` TEXT,
  `magnetic_field_uT` TEXT,
  `status` TEXT,
  `notes` TEXT,
  `created_by` TEXT,
  `creation_date` TEXT,
  `approval_status` TEXT,
  `approval_date` TEXT,
  PRIMARY KEY (`test_id`)
);

INSERT INTO `quantum_device_test_configuration` VALUES 
('qt001','qd1001','T1 Calibration','2024-03-05','op101','8','99.2','98.5','120','15','QControl','v3.2','0.85','-10','RevA','Cryogenic','0.5','Passed','Initial qubit calibration','admin','2024-03-01','Approved','2024-03-06');

INSERT INTO `quantum_device_test_configuration` VALUES 
('qt002','qd1002','T2 Crosstalk','2024-03-12','op102','12','98.7','97.9','95','12','QControl','v3.2','0.90','-12','RevB','Magnetic','1.2','Failed','Excessive crosstalk observed','admin','2024-03-10','Rejected','2024-03-13');

INSERT INTO `quantum_device_test_configuration` VALUES 
('qt003','qd1003','T3 Stability Run','2024-04-01','op103','16','99.5','99.0','130','14','QControl','v3.3','0.80','-8','RevC','Shielded','0.3','Passed','Stable operation over 24h','admin','2024-03-30','Approved','2024-04-02');

-- Marine sensor deployment record
CREATE TABLE `marine_sensor_deployment_record` (
  `deployment_id` TEXT NOT NULL,
  `sensor_type` TEXT,
  `sensor_serial` TEXT,
  `vessel_name` TEXT,
  `deployment_date` TEXT,
  `recovery_date` TEXT,
  `latitude_start` TEXT,
  `longitude_start` TEXT,
  `latitude_end` TEXT,
  `longitude_end` TEXT,
  `depth_meters` TEXT,
  `sampling_interval_sec` TEXT,
  `data_format` TEXT,
  `power_source` TEXT,
  `battery_capacity_mah` TEXT,
  `calibration_status` TEXT,
  `operator_id` TEXT,
  `quality_flag` TEXT,
  `notes` TEXT,
  `created_by` TEXT,
  `creation_date` TEXT,
  `status` TEXT,
  `data_archive_path` TEXT,
  PRIMARY KEY (`deployment_id`)
);

INSERT INTO `marine_sensor_deployment_record` VALUES 
('md001','CTD','CTD-5001','RV Oceanic','2024-02-15','2024-02-20','34.5N','120.7W','34.6N','120.8W','150','10','NetCDF','Battery','3000','Calibrated','op301','Good','Typical temperature and salinity profile','admin','2024-02-10','Completed','/archive/md001/');

INSERT INTO `marine_sensor_deployment_record` VALUES 
('md002','Acoustic Doppler','ADCP-2002','RV Explorer','2024-03-01','2024-03-07','33.9N','121.0W','34.0N','121.1W','200','30','CSV','Solar','4000','Pending','op302','Review','Current velocity measurements','admin','2024-02-25','Completed','/archive/md002/');

INSERT INTO `marine_sensor_deployment_record` VALUES 
('md003','pH Sensor','PH-3003','RV Voyager','2024-04-05','2024-04-12','35.2N','119.5W','35.3N','119.6W','100','15','TXT','Battery','2500','Calibrated','op303','Good','pH variation in coastal waters','admin','2024-04-01','Completed','/archive/md003/');

-- Archaeological artifact conservation
CREATE TABLE `archaeological_artifact_conservation` (
  `artifact_id` TEXT NOT NULL,
  `site_name` TEXT,
  `discovery_date` TEXT,
  `material` TEXT,
  `condition_before` TEXT,
  `conservation_method` TEXT,
  `conservator_id` TEXT,
  `treatment_start_date` TEXT,
  `treatment_end_date` TEXT,
  `temperature_c` TEXT,
  `humidity_percent` TEXT,
 `light_exposure_lux` TEXT,
  `stabilization_agent` TEXT,
  `current_condition` TEXT,
  `storage_location` TEXT,
  `photographic_record_path` TEXT,
  `xray_analysis_path` TEXT,
  `notes` TEXT,
  `created_by` TEXT,
  `creation_date` TEXT,
  `approval_status` TEXT,
  `approval_date` TEXT,
  `status` TEXT,
  PRIMARY KEY (`artifact_id`)
);

INSERT INTO `archaeological_artifact_conservation` VALUES 
('art001','SiteAlpha','2021-06-15','Ceramic','Cracked','Consolidation','cons001','2022-01-10','2022-03-05','20','45','50','Paraloid','Stabilized','VaultA','/photos/art001.jpg','/xray/art001.pdf','Minor surface loss repaired','admin','2022-01-01','Approved','2022-03-10','Conserved');

INSERT INTO `archaeological_artifact_conservation` VALUES 
('art002','SiteBeta','2020-11-20','Bronze','Corroded','Electrolytic reduction','cons002','2021-05-12','2021-07-20','18','40','30','Benzotriazole','Cleaned','VaultB','/photos/art002.jpg','/xray/art002.pdf','Patina restored','admin','2021-04-30','Approved','2021-07-25','Conserved');

INSERT INTO `archaeological_artifact_conservation` VALUES 
('art003','SiteGamma','2019-09-05','Stone','Erosion','Consolidation + Sealant','cons003','2020-02-01','2020-04-15','22','50','20','Silicate','Hardened','VaultC','/photos/art003.jpg','/xray/art003.pdf','Surface treated to prevent further loss','admin','2020-01-20','Pending','2020-04-20','In Review');