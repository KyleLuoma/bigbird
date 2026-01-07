-- Astronomical events observed by the observatory
CREATE TABLE astronomical_event_log (
  event_id TEXT NOT NULL,
  observatory_code TEXT,
  event_type TEXT,
  detection_timestamp TEXT,
  right_ascension REAL,
  declination REAL,
  magnitude REAL,
  duration_seconds INTEGER,
  wavelength_nm REAL,
  instrument_id TEXT,
  weather_condition TEXT,
  sky_quality_index REAL,
  data_file_path TEXT,
  processing_version TEXT,
  analyst_name TEXT,
  verification_status TEXT,
  notes TEXT,
  latitude REAL,
  longitude REAL,
  elevation_m INTEGER,
  PRIMARY KEY (event_id)
);

INSERT INTO astronomical_event_log VALUES ('EVT001','OBS01','supernova','2025-03-15T02:13:00Z',150.23,-45.67,12.4,3600,550.0,'INST01','clear',2.5,'/data/evt001.fits','v1.0','alice','verified','first_detection',34.05,-118.25,500);
INSERT INTO astronomical_event_log VALUES ('EVT002','OBS02','gamma_ray_burst','2025-04-01T14:22:00Z',210.12,22.34,8.9,180,800.0,'INST02','partial_cloud',3.0,'/data/evt002.fits','v1.1','bob','pending','needs_review',40.71,-74.00,10);
INSERT INTO astronomical_event_log VALUES ('EVT003','OBS03','exoplanet_transit','2025-05-20T09:45:00Z',45.67,10.12,13.2,7200,650.0,'INST03','clear','1.8','/data/evt003.fits','v1.0','carol','verified','high_quality',51.51,-0.13,35);

-- Deployment records for marine environmental sensors
CREATE TABLE marine_sensor_deployment (
  deployment_id TEXT NOT NULL,
  sensor_type TEXT,
  serial_number TEXT,
  deployment_date TEXT,
  recovery_date TEXT,
  latitude REAL,
  longitude REAL,
  depth_m INTEGER,
  manufacturer TEXT,
  firmware_version TEXT,
  battery_capacity_mah INTEGER,
  calibration_date TEXT,
  calibration_coefficient REAL,
  data_storage_capacity_gb INTEGER,
  transmission_mode TEXT,
  communication_frequency_mhz REAL,
  vessel_name TEXT,
  crew_leader TEXT,
  environmental_condition TEXT,
  notes TEXT,
  PRIMARY KEY (deployment_id)
);

INSERT INTO marine_sensor_deployment VALUES ('DEP001','temperature','SN1001','2025-01-10','2025-06-10',34.12,-120.45,200,'OceanTech','1.2.0',5000,'2024-12-15',0.998,256,'satellite','2400.5','RV_MarineOne','david','clear','initial_deployment');
INSERT INTO marine_sensor_deployment VALUES ('DEP002','salinity','SN2002','2025-02-20','2025-07-20',36.78,-122.33,150,'SeaSensors','2.0.1',4500,'2025-01-30',1.005,128,'radio','1800.0','RV_DeepSea','emma','moderate','second_phase');
INSERT INTO marine_sensor_deployment VALUES ('DEP003','ph','SN3003','2025-03-15','2025-08-15',33.55,-119.80,100,'AquaLab','3.1.4',4000,'2025-03-01',0.990,64,'wifi','2400.0','RV_Oceanic','frank','clear','final_survey');

-- Urban traffic sensor installations
CREATE TABLE urban_traffic_sensor (
  sensor_uuid TEXT NOT NULL,
  city_code TEXT,
  intersection_id TEXT,
  sensor_model TEXT,
  installation_date TEXT,
  last_maintenance TEXT,
  latitude REAL,
  longitude REAL,
  detection_range_m INTEGER,
  vehicle_count INTEGER,
  avg_speed_kph REAL,
  occupancy_percent REAL,
  data_upload_endpoint TEXT,
  power_source TEXT,
  firmware_rev TEXT,
  communication_protocol TEXT,
  status TEXT,
  notes TEXT,
  manufacturer TEXT,
  warranty_expiration TEXT,
  PRIMARY KEY (sensor_uuid)
);

INSERT INTO urban_traffic_sensor VALUES ('UCS001','NYC','INT001','TS-300','2025-01-05','2025-04-01',40.7128,-74.0060,100,2350,32.5,78.0,'http://data.city/ucs001','solar','rev5','mqtt','active','downtown_node','TrafficInc','2028-01-05');
INSERT INTO urban_traffic_sensor VALUES ('UCS002','LA','INT045','TS-200','2025-02-12','2025-05-10',34.0522,-118.2437,80,1800,45.0,65.0,'http://data.city/ucs002','grid','rev3','http','active','midtown_node','SmartSensors','2027-02-12');
INSERT INTO urban_traffic_sensor VALUES ('UCS003','CHI','INT078','TS-400','2025-03-20','2025-06-15',41.8781,-87.6298,120,2100,38.2,70.5,'http://data.city/ucs003','battery','rev6','coap','maintenance','south_side','RoadTech','2029-03-20');

-- Inventory of artworks in the university gallery
CREATE TABLE art_collection_inventory (
  artwork_id TEXT NOT NULL,
  title TEXT,
  artist TEXT,
  creation_year INTEGER,
  medium TEXT,
  dimensions_cm TEXT,
  acquisition_date TEXT,
  acquisition_method TEXT,
  current_location TEXT,
  insurance_policy TEXT,
  valuation_usd REAL,
  condition_status TEXT,
  conservation_notes TEXT,
  provenance TEXT,
  exhibition_history TEXT,
  catalog_number TEXT,
  storage_temperature_c REAL,
  humidity_percent REAL,
  display_status TEXT,
  last_inspection TEXT,
  PRIMARY KEY (artwork_id)
);

INSERT INTO art_collection_inventory VALUES ('ART001','Sunrise','JohnDoe',1998,'oil_on_canvas','100x80','2020-05-10','purchase','Gallery_MainHall','POL12345',15000.0,'good','none','private_collection','2021_exhibit','CAT001',21.0,45.0,'on_display','2025-01-15');
INSERT INTO art_collection_inventory VALUES ('ART002','AbstractForm','JaneSmith',2005,'acrylic','60x60','2019-09-22','donation','Gallery_Room2','POL67890',8000.0,'excellent','light_fade_correction','artist_estate','2020_exhibit','CAT002',20.0,40.0,'stored','2025-02-10');
INSERT INTO art_collection_inventory VALUES ('ART003','SculptureX','AlexLee',2012,'bronze','150x50x50','2021-11-03','commission','Sculpture_Garden','POL13579',25000.0,'fair','metal_corrosion_treatment','gallery_archive','2022_exhibit','CAT003',18.0,50.0,'on_display','2025-03-05');

-- Archive records for historical documents
CREATE TABLE historical_document_archive (
  doc_id TEXT NOT NULL,
  title TEXT,
  author TEXT,
  creation_date TEXT,
  document_type TEXT,
  language TEXT,
  physical_format TEXT,
  page_count INTEGER,
  storage_location TEXT,
  accession_number TEXT,
  preservation_status TEXT,
  digitization_date TEXT,
  digital_file_path TEXT,
  rights_holder TEXT,
  usage_restrictions TEXT,
  cataloger_name TEXT,
  condition_notes TEXT,
  temperature_c REAL,
  humidity_percent REAL,
  last_review_date TEXT,
  PRIMARY KEY (doc_id)
);

INSERT INTO historical_document_archive VALUES ('DOC001','Treaty of Avalon','Council','1776-07-04','treaty','english','parchment',12,'Vault_A','ACC001','stable','2024-12-01','/digital/doc001.tif','National_Archive','none','linda','no_tear','19.0','35.0','2025-01-20');
INSERT INTO historical_document_archive VALUES ('DOC002','Map of Old Town','CartographerX','1802-03-15','map','latin','paper',2,'Vault_B','ACC002','fragile','2025-01-10','/digital/doc002.tif','Historical_Society','view_only','mike','edge_wear','18.5','40.0','2025-02-12');
INSERT INTO historical_document_archive VALUES ('DOC003','Letter to the King','SirArthur','1610-11-22','letter','english','vellum',1,'Vault_C','ACC003','stable','2025-02-25','/digital/doc003.tif','Royal_Family','restricted','susan','no_damage','20.0','30.0','2025-03-08');

-- Wildlife tracking device deployments
CREATE TABLE wildlife_tracking_device (
  device_id TEXT NOT NULL,
  species TEXT,
  tag_type TEXT,
  deployment_date TEXT,
  retrieval_date TEXT,
  latitude REAL,
  longitude REAL,
  animal_id TEXT,
  battery_life_days INTEGER,
  firmware_version TEXT,
  data_logging_interval_sec INTEGER,
  transmission_mode TEXT,
  antenna_type TEXT,
  collar_material TEXT,
  weight_g REAL,
  owner_institution TEXT,
  health_status TEXT,
  notes TEXT,
  last_signal_received TEXT,
  PRIMARY KEY (device_id)
);

INSERT INTO wildlife_tracking_device VALUES ('WTD001','wolf','gps_collar','2025-01-15','2025-06-15',45.12,-110.34,'ANML001',180,'v2.1',300,'satellite','dipole','nylon',250,'Wildlife_Institute','good','no_issues','2025-04-01');
INSERT INTO wildlife_tracking_device VALUES ('WTD002','elephant','satellite_tag','2025-02-20','2025-07-20',-1.23,36.45','ANML002',365,'v3.0',600,'gsm','monopole','steel',500,'Conservation_Org','fair','battery_degraded','2025-05-10');
INSERT INTO wildlife_tracking_device VALUES ('WTD003','sea_turtle','archival_logger','2025-03-10','2025-08-10',-15.67,150.78','ANML003',90,'v1.5',1800,'none','none','titanium',120,'Marine_Research_Center','good','retrieval_pending','2025-06-15');

-- Renewable energy asset registry
CREATE TABLE renewable_energy_asset (
  asset_id TEXT NOT NULL,
  asset_type TEXT,
  location_name TEXT,
  latitude REAL,
  longitude REAL,
  capacity_mw REAL,
  commissioning_date TEXT,
  operator TEXT,
  technology TEXT,
  status TEXT,
  average_capacity_factor REAL,
  yearly_production_mwh REAL,
  maintenance_interval_months INTEGER,
  last_maintenance_date TEXT,
  next_inspection_date TEXT,
  grid_connection_point TEXT,
  environmental_impact_score REAL,
  decommission_date TEXT,
  financing_source TEXT,
  notes TEXT,
  PRIMARY KEY (asset_id)
);

INSERT INTO renewable_energy_asset VALUES ('RE001','solar_farm','SunnyVale',35.67,-120.45,50.0,'2022-06-15','SunPower','PV','operational',0.22,96320,12,'2024-12-01','2025-06-01','SUB001',3.5,NULL,'private_equity','phase_2_expansion');
INSERT INTO renewable_energy_asset VALUES ('RE002','wind_park','WindRidge',40.12,-105.32,120.5,'2020-09-01','WindCorp','onshore','operational',0.38,400000,6,'2024-10-15','2025-04-15','SUB002',2.8,NULL,'government_grant','upcoming_turbine_upgrade');
INSERT INTO renewable_energy_asset VALUES ('RE003','hydro_dam','RiverFlow',45.77,-115.88,80.0,'2018-03-20','HydroGen','run_of_river','operational',0.45,315360,24,'2024-08-20','2025-02-20','SUB003',4.1,NULL,'public_funding','scheduled_ecosystem_study');

-- Spacecraft payload records
CREATE TABLE spacecraft_payload (
  payload_id TEXT NOT NULL,
  mission_name TEXT,
  launch_date TEXT,
  payload_type TEXT,
  mass_kg REAL,
  volume_m3 REAL,
  primary_instrument TEXT,
  secondary_instrument TEXT,
  power_requirement_w REAL,
  data_rate_mbps REAL,
  orbit_type TEXT,
  target_body TEXT,
  mission_phase TEXT,
  status TEXT,
  responsible_agency TEXT,
  integration_date TEXT,
  certification_status TEXT,
  deorbit_plan TEXT,
  scientific_objective TEXT,
  notes TEXT,
  PRIMARY KEY (payload_id)
);

INSERT INTO spacecraft_payload VALUES ('PLD001','LunaProbe','2025-07-20','spectrometer',120.5,0.8,'LunarSpec','Camera',150,12,'polar','moon','cruise','ready','SpaceAgencyX','2025-03-10','certified','controlled_landing','lunar_surface_composition','first_of_its_kind');
INSERT INTO spacecraft_payload VALUES ('PLD002','MarsRover','2026-09-12','drill','210.0',1.2,'RockDrill','SeismicSensor',200,20,'elliptical','mars','entry','integrated','SpaceAgencyY','2026-04-05','pending','aerobraking','subsurface_analysis','awaiting_final_checks');
INSERT INTO spacecraft_payload VALUES ('PLD003','AsteroidScout','2027-01-05','camera','85.3',0.5,'WideAngleCam','Spectrograph',100,8,'flyby','asteroid_2027A','approach','testing','SpaceAgencyZ','2026-10-15','certified','none','mapping_surface_features','prototype_mission');

-- Nanorobotics fabrication run logs
CREATE TABLE nanorobotics_fabrication_run (
  run_id TEXT NOT NULL,
  robot_model TEXT,
  fabrication_line TEXT,
  start_timestamp TEXT,
  end_timestamp TEXT,
  batch_size INTEGER,
  yield_percent REAL,
  material_type TEXT,
  substrate TEXT,
  deposition_method TEXT,
  etch_depth_nm REAL,
  cleaning_cycle TEXT,
  operator_id TEXT,
  quality_control_status TEXT,
  inspection_tool TEXT,
  defect_rate_ppm REAL,
  humidity_percent REAL,
  temperature_c REAL,
  energy_consumption_kwh REAL,
  notes TEXT,
  PRIMARY KEY (run_id)
);

INSERT INTO nanorobotics_fabrication_run VALUES ('NRF001','NanoBotX','LineA','2025-02-01T08:00:00Z','2025-02-01T20:00:00Z',5000,92.5,'silicon','glass','CVD',150.0,'ultrasonic','OP001','passed','SEM',30.2,45.0,22.5,120.0,'initial_batch');
INSERT INTO nanorobotics_fabrication_run VALUES ('NRF002','NanoBotY','LineB','2025-03-15T07:30:00Z','2025-03-15T19:45:00Z',6000,88.0,'gallium_arsenide','sapphire','ALD',200.0,'plasma','OP002','rework_needed','AFM',45.7,48.0,23.0,135.5,'adjusted_parameters');
INSERT INTO nanorobotics_fabrication_run VALUES ('NRF003','NanoBotZ','LineC','2025-04-20T09:15:00Z','2025-04-20T22:00:00Z',5500,95.0,'diamond','diamond','CVD',120.0,'chemical','OP003','passed','TEM',12.3,42.0,21.8,110.3,'high_yield_run');

-- Genomic variant annotation entries
CREATE TABLE genomic_variant_annotation (
  variant_id TEXT NOT NULL,
  chromosome TEXT,
  position INTEGER,
  reference_allele TEXT,
  alternate_allele TEXT,
  gene_symbol TEXT,
  consequence TEXT,
  impact TEXT,
  clinical_significance TEXT,
  dbsnp_id TEXT,
  cosmic_id TEXT,
  allele_frequency REAL,
  population TEXT,
  protein_change TEXT,
  transcript_id TEXT,
  exon_number INTEGER,
  functional_prediction TEXT,
  literature_pmids TEXT,
  annotation_date TEXT,
  curator_id TEXT,
  PRIMARY KEY (variant_id)
);

INSERT INTO genomic_variant_annotation VALUES ('VAR001','1',555123,'A','G','BRCA1','missense_variant','high','pathogenic','rs123456','COSM1234',0.0001,'EUR','p.Arg175His','ENST00000357654',5,'polyphen_damaging','PMID123456','2025-01-10','CUR001');
INSERT INTO genomic_variant_annotation VALUES ('VAR002','7',890456,'C','T','CFTR','synonymous_variant','low','benign','rs789012','COSM5678',0.0025,'AFR','p.Pro345Pro','ENST00000344820',12,'sift_tolerated','PMID234567','2025-02-20','CUR002');
INSERT INTO genomic_variant_annotation VALUES ('VAR003','X',1234567,'G','A','MECP2','frameshift_variant','moderate','likely_pathogenic','rs345678','COSM9101',0.00005,'EAS','p.Lys382fs','ENST00000342187',3,'mutationtaster_damaging','PMID345678','2025-03-15','CUR003');