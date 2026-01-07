-- Quantum experiment metadata
CREATE TABLE `quantum_experiment_metadata` (
  `experiment_id` TEXT NOT NULL,
  `mission_name` TEXT,
  `device_id` TEXT,
  `start_date` DATE,
  `end_date` DATE,
  `operator` TEXT,
  `objective` TEXT,
  `hypothesis` TEXT,
  `parameters` TEXT,
  `result_summary` TEXT,
  `data_volume_gb` REAL,
  `firmware_version` TEXT,
  `power_consumption_w` REAL,
  `temperature_c` REAL,
  `humidity_percent` REAL,
  `location` TEXT,
  `notes` TEXT,
  `status` TEXT,
  `version` INTEGER,
  `created_at` DATE,
  PRIMARY KEY (`experiment_id`)
);

INSERT INTO `quantum_experiment_metadata` VALUES (
  'EXP001','QuantumSweep','QD-01','2025-01-10','2025-01-12','DrSmith','Test entanglement','Entanglement persists over 10km','freq=5GHz;power=2W','Success with 98% fidelity',12.5,'v1.2',200.0,22.5,45.0,'LabA','No issues','COMPLETED',1,'2025-01-09'
);
INSERT INTO `quantum_experiment_metadata` VALUES (
  'EXP002','PhotonLoop','QD-02','2025-02-01','2025-02-03','DrJones','Photon looping','Loop stability >1ms','freq=3GHz;power=1.5W','Partial success 75% fidelity',9.8,'v1.3',180.0,21.0,40.0,'LabB','Adjusted mirror alignment','COMPLETED',1,'2025-01-31'
);
INSERT INTO `quantum_experiment_metadata` VALUES (
  'EXP003','QubitArray','QD-03','2025-03-15','2025-03-20','DrLee','Scalable qubit array','Array of 64 qubits', 'layout=64grid;power=3W','Failed due to cooling issue',0.0,'v1.1',250.0,19.5,35.0,'LabC','Cooling system rebooted','FAILED',1,'2025-03-14'
);

-- Marine biome sampling
CREATE TABLE `marine_biome_sampling` (
  `sample_id` TEXT NOT NULL,
  `campaign_name` TEXT,
  `vessel_id` TEXT,
  `sampling_date` DATE,
  `latitude` REAL,
  `longitude` REAL,
  `depth_m` REAL,
  `water_temperature_c` REAL,
  `salinity_psu` REAL,
  `ph` REAL,
  `dissolved_oxygen_mg_l` REAL,
  `chlorophyll_ug_l` REAL,
  `plankton_count` INTEGER,
  `bacteria_cfu_ml` INTEGER,
  `sediment_type` TEXT,
  `collector_name` TEXT,
  `methodology` TEXT,
  `lab_analysis_status` TEXT,
  `storage_location` TEXT,
  `notes` TEXT,
  `recorded_by` TEXT,
  `entry_timestamp` DATE,
  PRIMARY KEY (`sample_id`)
);

INSERT INTO `marine_biome_sampling` VALUES (
  'SMP001','PacificSurvey','VSL-01','2025-04-10',-15.2,145.3,30.5,12.4,35.1,8.1,6.5,2.3,15000,12000,'Silt','DrKumar','Niskin bottle','PENDING','FreezerA','Clear water','DrKumar','2025-04-09'
);
INSERT INTO `marine_biome_sampling` VALUES (
  'SMP002','AtlanticQuest','VSL-02','2025-05-22',42.7,-30.5,150.0,10.9,36.5,8.4,5.8,1.9,26000,21000,'Clay','DrMorris','CTD cast','COMPLETED','LabShelfB','High turbidity','DrMorris','2025-05-21'
);
INSERT INTO `marine_biome_sampling` VALUES (
  'SMP003','IndianExpedition','VSL-03','2025-06-15',-10.0,78.0,5.0,28.0,33.0,7.6,7.2,3.5,8000,5000,'Sand','DrLi','Plankton net','IN_PROGRESS','RefrigeratedC','Storm observed','DrLi','2025-06-14'
);

-- Agricultural field trial
CREATE TABLE `agricultural_field_trial` (
  `trial_id` TEXT NOT NULL,
  `crop_name` TEXT,
  `variety` TEXT,
  `field_id` TEXT,
  `planting_date` DATE,
  `harvest_date` DATE,
  `soil_ph` REAL,
  `soil_nitrogen_ppm` REAL,
  `soil_phosphorus_ppm` REAL,
  `soil_potassium_ppm` REAL,
 `irrigation_type` TEXT,
  `fertilizer_type` TEXT,
  `fertilizer_rate_kg_ha` REAL,
  `pesticide_applied` TEXT,
  `pesticide_rate_l_ha` REAL,
  `yield_kg_ha` REAL,
  `moisture_percent` REAL,
  `grain_quality_score` INTEGER,
  `weather_station_id` TEXT,
  `average_rainfall_mm` REAL,
  `average_temperature_c` REAL,
  `notes` TEXT,
  `recorded_by` TEXT,
  `entry_date` DATE,
  PRIMARY KEY (`trial_id`)
);

INSERT INTO `agricultural_field_trial` VALUES (
  'TRL001','Wheat','VarA','FLD-01','2025-03-01','2025-08-15',6.5,15.2,30.1,45.3,'Drip','Urea',120.0,'None',0.0,6500.0,14.2,85,'WS-01',320.0,22.5,'Optimal growth','DrAllen','2025-08-16'
);
INSERT INTO `agricultural_field_trial` VALUES (
  'TRL002','Corn','VarB','FLD-02','2025-04-10','2025-09-20',6.8,18.0,28.5,50.0,'Sprinkler','Ammonium nitrate',150.0,'Glyphosate',2.5,7200.0,13.8,90,'WS-02',410.0,23.1,'Pest pressure high','DrBaker','2025-09-21'
);
INSERT INTO `agricultural_field_trial` VALUES (
  'TRL003','Soybean','VarC','FLD-03','2025-05-05','2025-10-10',6.2,12.5,35.0,40.0,'Furrow','None',0.0,'Imidazolinone',1.2,4800.0,12.5,78,'WS-03',380.0,21.9,'Drought stress observed','DrCarter','2025-10-11'
);

-- Financial market indicator
CREATE TABLE `financial_market_indicator` (
  `indicator_id` TEXT NOT NULL,
  `market_name` TEXT,
  `indicator_name` TEXT,
  `record_date` DATE,
  `open_value` REAL,
  `close_value` REAL,
  `high_value` REAL,
  `low_value` REAL,
  `volume_units` BIGINT,
  `adjusted_close` REAL,
  `moving_average_50` REAL,
  `moving_average_200` REAL,
  `trend_direction` TEXT,
  `volatility_index` REAL,
  `market_capitalization` REAL,
  `pe_ratio` REAL,
  `dividend_yield_percent` REAL,
  `beta` REAL,
  `earnings_per_share` REAL,
  `price_to_book` REAL,
  `sector` TEXT,
  `currency` TEXT,
  `source` TEXT,
  `last_updated` DATE,
  PRIMARY KEY (`indicator_id`)
);

INSERT INTO `financial_market_indicator` VALUES (
  'FI001','NYSE','S&P500','2025-06-30',4200.5,4250.3,4265.0,4180.2,3500000000,4250.3,4150.0,4100.0,'UP',12.5,21000000,22.1,1.8,1.1,150.4,4.5,'Index','USD','Bloomberg','2025-06-30'
);
INSERT INTO `financial_market_indicator` VALUES (
  'FI002','NASDAQ','NASDAQ100','2025-06-30',14000.2,14150.7,14200.0,13950.0,1200000000,14150.7,13800.0,13500.0,'UP',15.3,18000000,30.2,2.1,1.3,85.7,5.2,'Index','USD','Reuters','2025-06-30'
);
INSERT INTO `financial_market_indicator` VALUES (
  'FI003','NYSE','DowJones','2025-06-30',34000.0,34220.5,34300.0,33900.0,2500000000,34220.5,33500.0,33000.0,'UP',10.8,25000000,18.5,2.0,1.2,120.3,3.9,'Index','USD','YahooFinance','2025-06-30'
);

-- Archival document metadata
CREATE TABLE `archival_document_metadata` (
  `doc_id` TEXT NOT NULL,
  `title` TEXT,
  `author` TEXT,
  `creation_date` DATE,
  `document_type` TEXT,
  `format` TEXT,
  `language` TEXT,
  `pages` INTEGER,
  `size_mb` REAL,
  `physical_location` TEXT,
  `digital_location` TEXT,
  `access_restriction` TEXT,
  `preservation_status` TEXT,
  `condition_notes` TEXT,
  `source_collection` TEXT,
  `rights_holder` TEXT,
  `license` TEXT,
  `keywords` TEXT,
  `summary` TEXT,
  `catalogue_number` TEXT,
  `related_items` TEXT,
  `curator` TEXT,
  `last_reviewed` DATE,
  PRIMARY KEY (`doc_id`)
);

INSERT INTO `archival_document_metadata` VALUES (
  'DOC001','Treatise on Botany','J. Darwin','1859-11-24','Manuscript','PDF','English',250,12.5,'VaultA','/archive/botany/doc001.pdf','None','Preserved','Good condition','HistoricalBotany','DarwinEstate','CC0','botany, evolution','A foundational work in evolutionary biology','CAT-001','DOC002;DOC003','CuratorA','2025-01-15'
);
INSERT INTO `archival_document_metadata` VALUES (
  'DOC002','Industrial Revolution Records','A. Smith','1800-01-01','Ledger','TIFF','English',120,8.0,'VaultB','/archive/industry/doc002.tiff','Restricted','Digitized','Some fading','IndustrialArchive','NationalArchive','CC-BY','industry, economy','Records of early factories','CAT-002','DOC001','CuratorB','2025-02-20'
);
INSERT INTO `archival_document_metadata` VALUES (
  'DOC003','Ancient Map of Alexandria','Unknown','0300-01-01','Map','JPEG','Latin',1,2.3,'VaultC','/archive/maps/doc003.jpg','Public','Restored','Excellent','HistoricalMaps','MuseumOfHistory','PD','geography, ancient','Map depicting Alexandria in 3rd century','CAT-003','DOC001;DOC002','CuratorC','2025-03-10'
);

-- Urban infrastructure asset detail
CREATE TABLE `urban_infrastructure_asset_detail` (
  `asset_id` TEXT NOT NULL,
  `asset_type` TEXT,
  `asset_name` TEXT,
  `installation_date` DATE,
  `last_inspection_date` DATE,
  `location_lat` REAL,
  `location_long` REAL,
  `owner_department` TEXT,
  `maintenance_schedule` TEXT,
  `condition_rating` INTEGER,
  `expected_lifespan_years` INTEGER,
  `current_status` TEXT,
  `capacity_units` REAL,
  `energy_consumption_kwh` REAL,
  `material` TEXT,
  `manufacturer` TEXT,
  `model_number` TEXT,
  `warranty_expiry` DATE,
  `inspection_notes` TEXT,
  `geo_zone` TEXT,
  `coordinates_precision` TEXT,
  `updated_by` TEXT,
  `record_timestamp` DATE,
  PRIMARY KEY (`asset_id`)
);

INSERT INTO `urban_infrastructure_asset_detail` VALUES (
  'UA001','Bridge','RiverCrossing','1995-06-15','2024-11-01',40.7128,-74.0060,'TransportDept','Annual','8',100,'Operational',2000.0,50000.0,'Steel','BridgeCo','BR-500','2025-06-15','No cracks detected','ZoneA','5m','EngineerA','2025-01-01'
);
INSERT INTO `urban_infrastructure_asset_detail` VALUES (
  'UA002','Streetlight','MainStLight01','2005-04-20','2024-09-10',34.0522,-118.2437,'PublicWorks','Biannual','9',40,'Operational',100.0,150.0,'Aluminum','LightInc','SL-100','2026-04-20','LED functioning','ZoneB','3m','EngineerB','2025-01-02'
);
INSERT INTO `urban_infrastructure_asset_detail` VALUES (
  'UA003','WaterPump','ReservoirPumpA','2010-01-05','2024-12-20',51.5074,-0.1278,'WaterDept','Quarterly','7',30,'UnderMaintenance',5000.0,8000.0,'CastIron','PumpMakers','WP-2500','2027-01-05','Seal wear observed','ZoneC','2m','EngineerC','2025-01-03'
);

-- Renewable energy asset status
CREATE TABLE `renewable_energy_asset_status` (
  `asset_id` TEXT NOT NULL,
  `asset_type` TEXT,
  `location` TEXT,
  `capacity_mw` REAL,
  `commission_date` DATE,
  `latest_generation_mwh` REAL,
  `availability_percent` REAL,
  `downtime_hours` REAL,
  `maintenance_last_date` DATE,
  `maintenance_next_due` DATE,
  `operator` TEXT,
  `grid_connection_point` TEXT,
  `environmental_impact_score` REAL,
  `weather_station_id` TEXT,
  `average_wind_speed_ms` REAL,
  `average_solar_irradiance_wm2` REAL,
  `technology` TEXT,
  `status` TEXT,
  `notes` TEXT,
  `region` TEXT,
  `installed_by` TEXT,
  `last_update` DATE,
  PRIMARY KEY (`asset_id`)
);

INSERT INTO `renewable_energy_asset_status` VALUES (
  'RE001','WindFarm','Hilltop','25.0','2018-05-01',210000.0,95.2,150.0,'2024-10-15','2025-04-15','EnergyCo','GC-01',4.5,'WS-10',7.8,0.0,'HorizontalAxis','Operational','No issues','NorthRegion','ConstructorA','2025-01-05'
);
INSERT INTO `renewable_energy_asset_status` VALUES (
  'RE002','SolarPark','DesertEdge','50.0','2020-09-20',360000.0,98.0,80.0,'2024-08-10','2025-02-10','SunPower','GC-02',3.2,'WS-12',0.0,5.6,'PVPanel','Operational','Cleaning scheduled','SouthRegion','ConstructorB','2025-01-06'
);
INSERT INTO `renewable_energy_asset_status` VALUES (
  'RE003','HydroPlant','RiverValley','15.0','2015-03-15',120000.0,92.5,200.0,'2024-11-05','2025-05-05','HydroFlow','GC-03',5.0,'WS-11',0.0,0.0,'RunOfRiver','UnderMaintenance','Turbine bearing wear','EastRegion','ConstructorC','2025-01-07'
);

-- Spacecraft telemetry summary
CREATE TABLE `spacecraft_telemetry_summary` (
  `telemetry_id` TEXT NOT NULL,
  `mission_name` TEXT,
  `spacecraft_id` TEXT,
  `timestamp_utc` DATE,
  `altitude_km` REAL,
  `velocity_km_s` REAL,
  `temperature_c` REAL,
  `battery_voltage_v` REAL,
  `solar_panel_current_a` REAL,
  `fuel_level_percent` REAL,
  `payload_status` TEXT,
  `communication_link_status` TEXT,
  `error_code` TEXT,
  `cpu_usage_percent` REAL,
  `memory_usage_mb` REAL,
  `radiation_dose_msv` REAL,
  `orientation_quaternion` TEXT,
  `ground_station_id` TEXT,
  `data_downlink_rate_mbps` REAL,
  `anomaly_flag` TEXT,
  `operator` TEXT,
  `recorded_at` DATE,
  PRIMARY KEY (`telemetry_id`)
);

INSERT INTO `spacecraft_telemetry_summary` VALUES (
  'TL001','LunaProbe','SC-01','2025-07-01',384400.0,1.02, -55.0,28.5,4.2,87.0,'OK','ACTIVE','NONE',45.0,512.0,0.12,'0.0,0.0,0.0,1.0','GS-01',2.5,'FALSE','MissionOps','2025-07-01'
);
INSERT INTO `spacecraft_telemetry_summary` VALUES (
  'TL002','MarsOrbiter','SC-02','2025-07-01',225000.0,2.65, -20.0,30.0,5.1,65.0,'OK','ACTIVE','ERR12',60.0,1024.0,0.45,'0.1,0.0,0.0,0.99','GS-02',3.8,'TRUE','MissionOps','2025-07-01'
);
INSERT INTO `spacecraft_telemetry_summary` VALUES (
  'TL003','CometFlyby','SC-03','2025-07-01',50000.0,5.4, -10.0,27.8,3.9,45.0,'OK','LOST','ERR07',70.0,2048.0,1.10,'0.0,0.1,0.0,0.99','GS-03',1.2,'FALSE','MissionOps','2025-07-01'
);

-- Astronomical observation log
CREATE TABLE `astronomical_observation_log` (
  `observation_id` TEXT NOT NULL,
  `telescope_id` TEXT,
  `observer_name` TEXT,
  `observation_date` DATE,
  `target_name` TEXT,
  `ra_hms` TEXT,
  `dec_dms` TEXT,
  `exposure_seconds` REAL,
  `filter_used` TEXT,
  `seeing_arcsec` REAL,
  `airmass` REAL,
  `sky_condition` TEXT,
  `instrument` TEXT,
  `data_file_path` TEXT,
  `calibration_applied` TEXT,
  `signal_to_noise` REAL,
  `magnitude` REAL,
  `redshift` REAL,
  `spectral_resolution` REAL,
  `observer_notes` TEXT,
  `data_quality_flag` TEXT,
  `processed_by` TEXT,
  `processing_date` DATE,
  PRIMARY KEY (`observation_id`)
);

INSERT INTO `astronomical_observation_log` VALUES (
  'OBS001','TEL-01','DrMiller','2025-06-15','NGC1300','03:18:19','-19:24:40',1800,'V',1.2,1.05,'Clear','CCD-1','/data/obs001.fits','YES',35.4,12.3,0.0012,5000,'No issues','PASS','DrMiller','2025-06-16'
);
INSERT INTO `astronomical_observation_log` VALUES (
  'OBS002','TEL-02','DrYang','2025-06-20','M31','00:42:44','+41:16:09',3600,'R',0.9,1.02,'Clear','Spectro-2','/data/obs002.fits','YES',45.7,3.44,0.0005,8000,'Slight tracking error','PASS','DrYang','2025-06-21'
);
INSERT INTO `astronomical_observation_log` VALUES (
  'OBS003','TEL-01','DrKhan','2025-06-25','SN2025abc','13:07:24','-11:05:30',1200,'B',1.5,1.10,'Thin clouds','CCD-1','/data/obs003.fits','NO',20.3,15.0,0.0020,3000,'High background','FAIL','DrKhan','2025-06-26'
);

-- Deep sea expedition metadata
CREATE TABLE `deep_sea_expedition_metadata` (
  `expedition_id` TEXT NOT NULL,
  `vessel_name` TEXT,
  `start_date` DATE,
  `end_date` DATE,
  `principal_investigator` TEXT,
  `region` TEXT,
  `max_depth_m` REAL,
  `number_of_dives` INTEGER,
  `total_sampling_hours` REAL,
  `equipment_list` TEXT,
  `data_storage_location` TEXT,
  `metadata_standard` TEXT,
  `funding_agency` TEXT,
  `budget_usd` REAL,
  `samples_collected` INTEGER,
  `species_identified` INTEGER,
  `water_temperature_c` REAL,
  `salinity_psu` REAL,
  `notes` TEXT,
  `safety_incidents` INTEGER,
  `environmental_impact_assessment` TEXT,
  `report_publication` TEXT,
  `last_modified` DATE,
  PRIMARY KEY (`expedition_id`)
);

INSERT INTO `deep_sea_expedition_metadata` VALUES (
  'EXP001','RV Oceanic','2025-01-10','2025-02-20','DrOlson','MarianaTrench',10900.0,45,720.5,'ROV;CTD;MAV','/archive/exp001','ISO19115','NSF',2500000.0,1200,300,2.1,35.0,'Successful deep sampling','0','Low','Journal of Marine Science','2025-02-25'
);
INSERT INTO `deep_sea_expedition_metadata` VALUES (
  'EXP002','RV Explorer','2025-03-05','2025-04-15','DrSanchez','AtlanticSlope',4000.0,30,480.0,'AUV;Sampler','/archive/exp002','ISO19115','EU Horizon',1800000.0,800,150,3.5,34.5,'Encountered equipment failure','1','Moderate','Marine Ecology Letters','2025-04-20'
);
INSERT INTO `deep_sea_expedition_metadata` VALUES (
  'EXP003','RV DeepBlue','2025-05-01','2025-06-10','DrLi','PacificAbyss',6000.0,38,560.0,'ROV;SeafloorCameras','/archive/exp003','ISO19115','NIH',2200000.0,950,200,2.8,34.8,'Collected rare mineral samples','0','Low','Geochemistry Reports','2025-06-15'
);