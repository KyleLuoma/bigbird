-- Astronomical Event Log
CREATE TABLE astronomical_event_log (
  event_id TEXT PRIMARY KEY,
  event_type TEXT,
  observation_date TEXT,
  telescope_id TEXT,
  observer_name TEXT,
  right_ascension TEXT,
  declination TEXT,
  magnitude REAL,
  wavelength_nm REAL,
  exposure_seconds INTEGER,
  filter_used TEXT,
  sky_condition TEXT,
  notes TEXT,
  data_file_path TEXT,
  processing_version TEXT,
  calibration_id TEXT,
  ra_error_arcsec REAL,
  dec_error_arcsec REAL,
  signal_to_noise REAL,
  altitude_m REAL,
  azimuth_deg REAL,
  temperature_c REAL,
  humidity_percent REAL,
  wind_speed_mps REAL,
  seeing_arcsec REAL
);
INSERT INTO astronomical_event_log VALUES ('EVT001','Supernova','2025-03-12','TEL01','DrSmith','12h30m','-45d20m',15.2,500.0,1200,'R','Clear','Bright SN observed','/data/evt001.fits','v1.2','CAL01',0.05,0.04,30.5,1500,200,10.5,30,5.2,1.1);
INSERT INTO astronomical_event_log VALUES ('EVT002','Transit','2025-04-01','TEL02','DrLee','08h15m','+22d10m',12.8,650.0,800,'G','PartlyCloudy','Exoplanet transit','/data/evt002.fits','v1.2','CAL02',0.03,0.02,45.0,1800,180,12.0,35,3.8,0.9);
INSERT INTO astronomical_event_log VALUES ('EVT003','GammaRayBurst','2025-05-05','TEL03','DrChen','05h45m','-10d30m',9.5,800.0,300,'X','Clear','High energy burst','/data/evt003.fits','v1.3','CAL03',0.01,0.01,60.0,2000,210,8.0,25,6.0,0.7);

-- Marine Sensor Deployment
CREATE TABLE marine_sensor_deployment (
  deployment_id TEXT PRIMARY KEY,
  sensor_type TEXT,
  serial_number TEXT,
  vessel_name TEXT,
  captain_name TEXT,
  deployment_date TEXT,
  latitude REAL,
  longitude REAL,
  depth_m REAL,
  water_temperature_c REAL,
  salinity_psu REAL,
  battery_capacity_mah INTEGER,
  firmware_version TEXT,
  data_rate_hz REAL,
  calibration_date TEXT,
  pre_deployment_check TEXT,
  post_deployment_check TEXT,
  expected_lifetime_days INTEGER,
  maintenance_interval_days INTEGER,
  last_maintenance_date TEXT,
  communication_mode TEXT,
  antenna_type TEXT,
  power_source TEXT,
  notes TEXT,
  latitude_error_m REAL,
  longitude_error_m REAL
);
INSERT INTO marine_sensor_deployment VALUES ('DEP001','CTD','SN1001','RV Oceanic','CaptainA','2024-11-20',34.5678,-120.1234,150,12.3,35.0,5000,'v2.0',1.0,'2024-11-19','OK','OK',365,30,'2025-01-15','Satellite','UHF','Battery','Initial deployment',0.5,0.5);
INSERT INTO marine_sensor_deployment VALUES ('DEP002','Acoustic','SN2002','RV Neptune','CaptainB','2025-02-10',36.7890,-121.5678,300,11.8,34.8,6000,'v1.5',0.5,'2025-02-09','OK','OK',400,45,'2025-03-20','Radio','VHF','Battery','Deployed for migration study',0.3,0.3);
INSERT INTO marine_sensor_deployment VALUES ('DEP003','Fluorometer','SN3003','RV Poseidon','CaptainC','2025-04-05',33.2222,-119.4444,200,13.1,35.2,4500,'v2.1',0.8,'2025-04-04','OK','OK',380,40,'2025-05-10','Satellite','UHF','Solar','Second season',0.4,0.4);

-- Urban Traffic Sensor
CREATE TABLE urban_traffic_sensor (
  sensor_id TEXT PRIMARY KEY,
  intersection_name TEXT,
  city TEXT,
  install_date TEXT,
  sensor_model TEXT,
  firmware_version TEXT,
  latitude REAL,
  longitude REAL,
  detection_range_m REAL,
  vehicle_count INTEGER,
  average_speed_kmph REAL,
  peak_hour INTEGER,
  congestion_level TEXT,
  power_source TEXT,
  communication_protocol TEXT,
  data_retention_days INTEGER,
  maintenance_status TEXT,
  last_service_date TEXT,
  calibration_factor REAL,
  orientation_degrees REAL,
  mounting_height_m REAL,
  camera_resolution TEXT,
  night_vision_enabled TEXT,
  notes TEXT,
  latitude_error_m REAL,
  longitude_error_m REAL
);
INSERT INTO urban_traffic_sensor VALUES ('UTS001','5th&Main','Metropolis','2023-06-15','TS-300','v3.2',40.7128,-74.0060,100,12450,35.5,8,'High','Solar','WiFi',180,'Good','2024-12-01',1.02,90,5,'1080p','Yes','No issues',0.1,0.1);
INSERT INTO urban_traffic_sensor VALUES ('UTS002','Broadway&7th','Gotham','2024-01-20','TS-200','v2.9',34.0522,-118.2437,80,9870,28.3,17,'Medium','Mains','Cellular',365,'Due','2025-01-10',0.98,45,4,'720p','No','Routine check',0.2,0.2);
INSERT INTO urban_traffic_sensor VALUES ('UTS003','Lakeview&2nd','StarCity','2024-09-05','TS-400','v4.0',37.7749,-122.4194,120,15230,42.1,7,'VeryHigh','Solar','LoRa',90,'Critical','2024-11-20',1.05,180,6,'4K','Yes','Battery replacement soon',0.15,0.15);

-- Renewable Energy Farm
CREATE TABLE renewable_energy_farm (
  farm_id TEXT PRIMARY KEY,
  farm_name TEXT,
  location TEXT,
  farm_type TEXT,
  install_date TEXT,
  total_capacity_mw REAL,
  number_of_units INTEGER,
  unit_type TEXT,
  average_annual_output_mwh REAL,
  grid_connection_point TEXT,
  ownership_type TEXT,
  operator_company TEXT,
  maintenance_contract TEXT,
  last_inspection_date TEXT,
  weather_station_id TEXT,
  avg_wind_speed_ms REAL,
  avg_solar_irradiance_wm2 REAL,
  noise_level_db REAL,
  land_use_type TEXT,
  environmental_impact_score INTEGER,
  safety_incident_count INTEGER,
  funding_source TEXT,
  carbon_reduction_tons INTEGER,
  notes TEXT,
  latitude REAL,
  longitude REAL
);
INSERT INTO renewable_energy_farm VALUES ('RF001','NorthWind','PrairieState','Wind','2018-04-12',150.0,75,'Turbine',525000,'NodeA','Private','WindCo','ContractA','2024-06-01','WS001',8.5,0.0,55,'Agricultural',78,2,'GovernmentGrant',120000,'Operational',40.7128,-100.1234);
INSERT INTO renewable_energy_farm VALUES ('RF002','SunnyVale','DesertRegion','Solar','2020-09-20',80.0,320,'PVPanel',140000,'NodeB','Public','SolarInc','ContractB','2024-07-15','WS002',0.0,850.0,45,'Desert',85,0,'PrivateEquity',65000,'Newly commissioned',33.4484,-112.0740);
INSERT INTO renewable_energy_farm VALUES ('RF003','HybridHill','CoastalArea','Hybrid','2022-03-05',200.0,120,'Turbine+PV',720000,'NodeC','Joint','RenewCo','ContractC','2024-08-10','WS003',7.2,600.0,50,'Coastal',90,1,'PPP',200000,'Phase 2 expansion',36.1699,-115.1398);

-- Art Collection Inventory
CREATE TABLE art_collection_inventory (
  artwork_id TEXT PRIMARY KEY,
  title TEXT,
  artist TEXT,
  creation_year INTEGER,
  medium TEXT,
  dimensions_cm TEXT,
  accession_number TEXT,
  provenance TEXT,
  acquisition_date TEXT,
  purchase_price_usd REAL,
  current_estimated_value_usd REAL,
  location_room TEXT,
  display_status TEXT,
  condition_report TEXT,
  insurance_policy_number TEXT,
  insurance_value_usd REAL,
  conservation_status TEXT,
  last_conservation_date TEXT,
  curator_responsible TEXT,
  catalogue_reference TEXT,
  exhibition_history TEXT,
  digital_image_path TEXT,
  qr_code TEXT,
  notes TEXT,
  storage_temperature_c REAL,
  humidity_percent REAL
);
INSERT INTO art_collection_inventory VALUES ('ART001','Sunset Over Sea','A. Monet',1875,'Oil on canvas','100x150','ACC001','Private collection','1995-05-12',2500000,3500000,'Room1','OnDisplay','Good','POL001',4000000,'Stable','2023-09-01','CuratorA','REF001','ExhibitA;ExhibitB','/images/art001.jpg','QRC001','No issues',20.0,45);
INSERT INTO art_collection_inventory VALUES ('ART002','Abstract Form','B. Picasso',1932,'Acrylic','80x120','ACC002','Auction House','2001-11-23',900000,1200000,'Room2','InStorage','Fair','POL002',1300000,'NeedsRestoration','2022-05-15','CuratorB','REF002','ExhibitC','/images/art002.jpg','QRC002','Minor surface cracks',22.0,40);
INSERT INTO art_collection_inventory VALUES ('ART003','Modern Landscape','C. Dali',1960,'Mixed media','150x200','ACC003','Museum donation','2010-03-30',1500000,2000000,'Room3','OnDisplay','Excellent','POL003',2100000,'Stable','2024-02-20','CuratorC','REF003','ExhibitD;ExhibitE','/images/art003.jpg','QRC003','Highlighted in brochure',19.0,48);

-- Wildlife Tracking Device
CREATE TABLE wildlife_tracking_device (
  device_id TEXT PRIMARY KEY,
  species_tracked TEXT,
  tag_type TEXT,
  manufacturer TEXT,
  serial_number TEXT,
  deployment_date TEXT,
  latitude REAL,
  longitude REAL,
  altitude_m REAL,
  battery_capacity_mah INTEGER,
  battery_life_days INTEGER,
  transmission_interval_min INTEGER,
  data_logging_interval_min INTEGER,
  firmware_version TEXT,
  last_download_date TEXT,
  signal_strength_dbm REAL,
  gps_accuracy_m REAL,
  collar_material TEXT,
  weight_g REAL,
  animal_id TEXT,
  study_project TEXT,
  permit_number TEXT,
  notes TEXT,
  latitude_error_m REAL,
  longitude_error_m REAL
);
INSERT INTO wildlife_tracking_device VALUES ('WT001','Elephant','GPSCollar','WildTech','WT1001','2023-08-01',-1.2345,36.7890,1200,8000,365,30,15,'v1.4','2024-11-20',-70,5.0,'Titanium',1500,'ELPH001','SavannaElephantStudy','PERM001','No issues',0.5,0.5);
INSERT INTO wildlife_tracking_device VALUES ('WT002','Wolf','RadioTag','EcoTrack','WT2002','2024-02-14',45.1234,-122.5678,350,4000,180,60,30,'v2.0','2025-01-10',-65,3.5,'Aluminum',250,'WOLF045','NorthernWolfPack','PERM002','Battery replaced 2024',0.3,0.3);
INSERT INTO wildlife_tracking_device VALUES ('WT003','Sea Turtle','Satellite','AquaSense','WT3003','2022-12-05',-15.6789,145.1234,0,5000,730,120,60,'v1.8','2024-09-05',-80,10.0,'Polymer',180,'TURT200','CoralReefTurtle','PERM003','Deployed during nesting season',0.7,0.7);

-- Spacecraft Mission Log
CREATE TABLE spacecraft_mission_log (
  mission_id TEXT PRIMARY KEY,
  spacecraft_name TEXT,
  launch_date TEXT,
  mission_type TEXT,
  operator_agency TEXT,
  destination TEXT,
  orbit_type TEXT,
  mission_duration_days INTEGER,
  primary_objective TEXT,
  secondary_objectives TEXT,
  launch_vehicle TEXT,
  payload_mass_kg REAL,
  fuel_mass_kg REAL,
  thrust_newtons REAL,
  max_power_watts REAL,
  communication_band TEXT,
  ground_station TEXT,
  status TEXT,
  last_contact_date TEXT,
  anomaly_report TEXT,
  budget_million_usd REAL,
  crew_size INTEGER,
  scientific_instruments TEXT,
  data_volume_tb REAL,
  radiation_shielding_mm REAL,
  thermal_control_type TEXT,
  notes TEXT,
  latitude_launch REAL,
  longitude_launch REAL
);
INSERT INTO spacecraft_mission_log VALUES ('MSN001','Odyssey','2023-03-15','LunarLanding','SpaceAgencyX','Moon','LLO',14,'SampleReturn','SurfaceMapping','Falcon9',1500,500,760000,2000,'XBand','StationA','Completed','2023-03-29','None',850,3,'Spectrometer;Camera',2.5,20,'Active','Successful mission',28.5,80.6);
INSERT INTO spacecraft_mission_log VALUES ('MSN002','VoyagerX','2024-07-22','DeepSpace','SpaceAgencyY','Interstellar','Heliocentric',3650,'InterstellarMediumStudy','SolarWindMeasurement','AtlasV',2100,800,950000,3000,'KaBand','StationB','Active','2024-12-01','MinorGyroDrift',1200,0,'PlasmaAnalyzer;Magnetometer',5.8,30,'Passive','Extended mission phase',0.0,0.0);
INSERT INTO spacecraft_mission_log VALUES ('MSN003','AquaProbe','2025-01-10','MarsOrbit','SpaceAgencyZ','Mars','Areocentric',687,'AtmosphericAnalysis','SurfaceImaging', 'DeltaIV',1800,600,880000,2500,'SBand','StationC','Active','2025-06-15','BatteryThermalIssue',950,0,'GasChromatograph;LIDAR',3.1,25,'Hybrid','Mars atmospheric study',28.5,80.6);

-- Historical Document Archive
CREATE TABLE historical_document_archive (
  doc_id TEXT PRIMARY KEY,
  title TEXT,
  author TEXT,
  creation_year INTEGER,
  document_type TEXT,
  language TEXT,
  physical_format TEXT,
  dimensions_cm TEXT,
  condition TEXT,
  archive_location TEXT,
  accession_number TEXT,
  provenance TEXT,
  acquisition_date TEXT,
  digitization_status TEXT,
  digital_file_path TEXT,
   storage_temperature_c REAL,
   humidity_percent REAL,
   preservation_notes TEXT,
   catalog_reference TEXT,
   related_collection TEXT,
   rights_status TEXT,
   copyright_holder TEXT,
   usage_restrictions TEXT,
   notes TEXT,
   barcode TEXT,
   last_review_date TEXT,
   conservation_action TEXT,
   folio_count INTEGER,
   mime_type TEXT
);
INSERT INTO historical_document_archive VALUES ('DOC001','Treatise on Botany','J. Linnaeus',1753,'Manuscript','Latin','Parchment','30x45','Good','RoomA','ACC001','Estate of Linnaeus','1990-04-12','Completed','/digital/doc001.tif',18.0,40,'Stored in acid-free box','REF001','BotanyCollection','PublicDomain','NationalArchive','None','No issues','BC001','2024-10-01','None',120,'image/tiff');
INSERT INTO historical_document_archive VALUES ('DOC002','Declaration of Independence','Thomas Jefferson',1776,'Printed','English','Paper','20x30','Fair','RoomB','ACC002','Original Print','1975-07-04','Pending','/digital/doc002.jpg',20.0,45,'Repaired tears in 2005','REF002','FoundingDocs','PublicDomain','NationalArchive','None','Minor stains','BC002','2024-09-15','PaperMending',56,'image/jpeg');
INSERT INTO historical_document_archive VALUES ('DOC003','Ancient Trade Ledger','Unknown',1020,'Papyrus','Egyptian','Papyrus Roll','25x200','Poor','RoomC','ACC003','Excavated site','2005-03-20','NotStarted','',22.0,55,'Requires deacidification','REF003','AncientEconomy','Restricted','Museum','AccessByAppointment','Severe brittleness','BC003','2024-08-30','Stabilization',1,'application/pdf');

-- Agricultural Plot
CREATE TABLE agricultural_plot (
  plot_id TEXT PRIMARY KEY,
  farm_name TEXT,
  location TEXT,
  soil_type TEXT,
  area_ha REAL,
  crop_type TEXT,
  planting_date TEXT,
  harvest_date TEXT,
  expected_yield_tons REAL,
  irrigation_method TEXT,
  fertilizer_type TEXT,
  fertilizer_rate_kg_per_ha REAL,
  pesticide_used TEXT,
  pesticide_rate_l_per_ha REAL,
  previous_crop TEXT,
  crop_rotation_cycle INTEGER,
  tillage_type TEXT,
  seed_variety TEXT,
  seeding_rate_seeds_per_m2 REAL,
  average_rainfall_mm REAL,
  average_temperature_c REAL,
  sun_hours_per_day REAL,
  pest_pressure_level TEXT,
  soil_ph REAL,
  organic_matter_percent REAL,
  slope_percent REAL,
  drainage_class TEXT,
  gps_latitude REAL,
  gps_longitude REAL,
  notes TEXT,
  last_inspection_date TEXT,
  manager_name TEXT,
  irrigation_schedule TEXT,
  yield_actual_tons REAL,
  harvest_quality_grade TEXT,
  pest_incident_count INTEGER
);
INSERT INTO agricultural_plot VALUES ('PLOT001','GreenVale','RegionNorth','Loam',12.5,'Wheat','2024-10-01','2025-06-15',3.2,'Sprinkler','NPK','150','None',0,'Barley',2,'Conventional','VarA',250,500,22,8,'Medium',6.5,2.3,5,'Well','-35.1234','149.1234','No issues','2025-05-20','John Doe','Weekly',3.1,'A',0);
INSERT INTO agricultural_plot VALUES ('PLOT002','SunnyFields','RegionSouth','SandyLoam',8.0,'Corn','2024-04-20','2024-10-05',2.5,'Drip','Urea','120','InsecticideX',0.3,'Soybean',3,'NoTill','VarB',180,400,25,9,'Low',6.0,1.8,3,'Moderate','-33.5678','151.2345','Weed pressure observed','2024-09-30','Jane Smith','Biweekly',2.8,'B',1);
INSERT INTO agricultural_plot VALUES ('PLOT003','RiverBank','RegionEast','Clay',5.4,'Rice','2024-06-01','2024-11-20',1.8,'Flood','AmmoniumSulfate','130','HerbicideY',0.2,'Wheat',1,'Plow','VarC',300,600,23,7,'High',5.8,2.0,8,'Poor','-34.8765','150.9876','Flooded early season','2024-11-10','Mike Lee','Continuous',1.9,'C',2);

-- Financial Market Snapshot
CREATE TABLE financial_market_snapshot (
  snapshot_id TEXT PRIMARY KEY,
  snapshot_date TEXT,
  market_name TEXT,
  index_name TEXT,
  index_value REAL,
  index_change_percent REAL,
  volume_traded_million INTEGER,
  number_of_trades INTEGER,
  top_gainer_symbol TEXT,
  top_gainer_change_percent REAL,
  top_loser_symbol TEXT,
  top_loser_change_percent REAL,
  sector_performance TEXT,
  avg_pe_ratio REAL,
  dividend_yield_percent REAL,
  market_cap_trillion_usd REAL,
  foreign_investment_percent REAL,
  exchange_rate_usd_to_eur REAL,
  interest_rate_percent REAL,
  inflation_rate_percent REAL,
  unemployment_rate_percent REAL,
  consumer_confidence_index REAL,
  manufacturing_pmi REAL,
  services_pmi REAL,
  housing_market_index REAL,
  gold_price_usd_per_oz REAL,
  oil_price_usd_per_barrel REAL,
  crypto_market_cap_billion_usd REAL,
  bond_yield_10yr_percent REAL,
  forex_volatility_index REAL,
  notes TEXT,
  analyst_name TEXT,
  analyst_rating TEXT,
  data_source TEXT,
  created_by TEXT,
  creation_timestamp TEXT,
  last_updated_timestamp TEXT
);
INSERT INTO financial_market_snapshot VALUES ('SNAP001','2025-01-01','Global','S&P500',4200.5,0.35,1500,250000,'AAPL',2.1,'TSLA',-3.5,'Tech,Health,Energy',22.5,1.8,28.0,15.2,0.92,4.5,2.3,6.2,105.4,58.7,62.3,120.5,1800.5,70.2,2.1,1.9,12.5,'Steady market', 'AnalystA','Buy','Bloomberg','System','2025-01-01 08:00:00','2025-01-01 08:00:00');
INSERT INTO financial_market_snapshot VALUES ('SNAP002','2025-02-15','Europe','DAX',15500.0,0.45,1300,220000,'SAP',1.9,'BMW',-2.8','Auto,Industrial,Finance',18.9,2.3,22.5,12.7,0.88,3.8,1.9,7.1,98.2,55.0,60.5,115.0,1820.0,68.5,1.9,2.0,13.2,'Positive growth','AnalystB','Hold','Reuters','System','2025-02-15 09:30:00','2025-02-15 09:30:00');
INSERT INTO financial_market_snapshot VALUES ('SNAP003','2025-03-30','Asia','Nikkei',29500.3,-0.12,1100,200000,'TOYOTA',1.5,'SONY',-4.0','Auto,Tech,Consumer',20.1,1.5,15.0,10.5,0.95,4.0,2.5,5.8,102.0,57.2,61.0,118.0,1750.0,72.0,2.5,1.8,11.8,'Market correction','AnalystC','Sell','YahooFinance','System','2025-03-30 10:15:00','2025-03-30 10:15:00');