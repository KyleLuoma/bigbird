-- Astronomical observation data
CREATE TABLE astronomical_observation (
  obs_id TEXT PRIMARY KEY,
  telescope_id TEXT,
  observation_date TEXT,
  right_ascension REAL,
  declination REAL,
  exposure_seconds INTEGER,
  filter_band TEXT,
  seeing_arcsec REAL,
  airmass REAL,
  sky_brightness REAL,
  target_name TEXT,
  observer_name TEXT,
  proposal_id TEXT,
  weather_conditions TEXT,
  focus_position REAL,
  ccd_temperature REAL,
  gain REAL,
  readout_speed REAL,
  tracking_mode TEXT,
  data_volume_mb INTEGER,
  quality_flag TEXT,
  notes TEXT
);

INSERT INTO astronomical_observation VALUES ('obs001','telA','2023-04-15',12.34,45.67,300,'V',1.2,1.1,20.5,'M31','DrSmith','prop01','Clear',0.5,-80.0,1.5,200,'Auto',1500,'Good','First light');
INSERT INTO astronomical_observation VALUES ('obs002','telB','2023-04-16',130.21,-22.33,600,'R',0.9,1.0,19.8,'NGC6543','DrJones','prop02','PartlyCloudy',0.6,-78.5,1.6,250,'Manual',1800,'Fair','Calibration run');
INSERT INTO astronomical_observation VALUES ('obs003','telC','2023-04-17',210.45,12.78,1200,'I',1.5,1.3,21.0,'M51','DrLee','prop03','Clear',0.4,-79.2,1.4,300,'Auto',2500,'Excellent','Deep field');

-- Marine sensor reading data
CREATE TABLE marine_sensor_reading (
  reading_id TEXT PRIMARY KEY,
  sensor_id TEXT,
  collection_timestamp TEXT,
  latitude REAL,
  longitude REAL,
  water_temperature_c REAL,
  salinity_psu REAL,
  dissolved_oxygen_mg_l REAL,
  ph REAL,
  turbidity_ntu REAL,
  chlorophyll_ug_l REAL,
  current_speed_m_s REAL,
  current_direction_deg REAL,
  depth_m REAL,
  battery_voltage_v REAL,
  signal_strength_db REAL,
  firmware_version TEXT,
  maintenance_status TEXT,
  data_quality TEXT,
  notes TEXT,
  operator_name TEXT,
  location_description TEXT
);

INSERT INTO marine_sensor_reading VALUES ('r001','s001','2023-05-01T08:00:00',34.56,-120.45,15.2,35.0,8.1,8.0,2.5,0.7,0.3,180,10.5,-70,'v1.2','OK','Good','Routine check','Alice','Offshore platform');
INSERT INTO marine_sensor_reading VALUES ('r002','s002','2023-05-01T12:30:00',35.10,-121.00,14.8,34.8,7.9,7.9,3.0,0.6,0.4,190,10.3,-68,'v1.2','OK','Good','Midday sample','Bob','Coastal bay');
INSERT INTO marine_sensor_reading VALUES ('r003','s003','2023-05-01T16:45:00',34.80,-120.80,15.0,35.1,8.0,8.1,2.8,0.8,0.2,175,10.6,-72,'v1.3','OK','Excellent','Evening collection','Carol','Open ocean');

-- Transportation route schedule data
CREATE TABLE transportation_route (
  route_id TEXT PRIMARY KEY,
  route_name TEXT,
  start_point TEXT,
  end_point TEXT,
  distance_km REAL,
  average_speed_kmh REAL,
  vehicle_type TEXT,
  capacity INTEGER,
  scheduled_departure TEXT,
  scheduled_arrival TEXT,
  actual_departure TEXT,
  actual_arrival TEXT,
  delay_minutes INTEGER,
  driver_id TEXT,
  route_status TEXT,
  fuel_consumption_l REAL,
  emissions_kg REAL,
  maintenance_due_km INTEGER,
  route_category TEXT,
  toll_cost_usd REAL,
  passenger_count INTEGER,
  notes TEXT
);

INSERT INTO transportation_route VALUES ('rt001','NorthExpress','CityA','CityB',250.5,80.0,'Bus',50,'08:00','11:00','08:05','11:10',10,'drv01','OnTime',180.0,45.0,15000,'Intercity',15.0,48,'Minor delay due to traffic');
INSERT INTO transportation_route VALUES ('rt002','SouthLine','CityC','CityD',180.0,70.0,'Train',200,'09:30','12:00','09:30','12:05',5,'drv02','OnTime',220.0,55.0,20000,'Regional',0.0,190,'Smooth ride');
INSERT INTO transportation_route VALUES ('rt003','EastCoast','CityE','CityF',320.0,85.0,'Coach',55,'07:15','11:45','07:20','12:00',15,'drv03','Delayed',260.0,65.0,25000,'LongDistance',20.0,52,'Weather related delay');

-- Agricultural plot monitoring data
CREATE TABLE agricultural_plot (
  plot_id TEXT PRIMARY KEY,
  farm_name TEXT,
  crop_type TEXT,
  soil_type TEXT,
  area_ha REAL,
  planting_date TEXT,
  harvest_date TEXT,
  irrigation_method TEXT,
  fertilizer_type TEXT,
  pesticide_used TEXT,
  avg_yield_tons_ha REAL,
  soil_ph REAL,
  soil_nitrogen_ppm REAL,
  soil_phosphorus_ppm REAL,
  soil_potassium_ppm REAL,
  average_rainfall_mm REAL,
  avg_temperature_c REAL,
  pest_incidence_level TEXT,
  disease_incidence_level TEXT,
  tillage_practice TEXT,
  machinery_used TEXT,
  notes TEXT,
  manager_name TEXT,
  last_inspection_date TEXT
);

INSERT INTO agricultural_plot VALUES ('plt001','GreenValley','Wheat','Loam',12.5,'2023-03-01','2023-08-15','Drip','NitrogenRich','None',4.2,6.5,1200,800,1100,350.0,22.5,'Low','None','NoTill','TractorA','Good growth','JohnDoe','2023-04-20');
INSERT INTO agricultural_plot VALUES ('plt002','SunnyFields','Corn','SandyLoam',8.0,'2023-04-10','2023-10-05','Sprinkler','PhosphateHeavy','InsecticideX',6.8,6.2,1500,900,1300,420.0,24.0,'Medium','Low','Conventional','TractorB','Weed pressure observed','JaneSmith','2023-05-15');
INSERT INTO agricultural_plot VALUES ('plt003','RiverSide','Soybean','Clay',15.0,'2023-02-20','2023-07-30','Irrigated','Balanced','FungicideY',3.5,6.8,1100,700,1000,380.0,21.0,'Low','Medium','Reduced','TractorC','Mild disease signs','MikeBrown','2023-03-30');

-- Financial market snapshot data
CREATE TABLE financial_market_snapshot (
  snapshot_id TEXT PRIMARY KEY,
  market_name TEXT,
  snapshot_timestamp TEXT,
  index_value REAL,
  index_change_percent REAL,
  volume_millions REAL,
  top_gainer_symbol TEXT,
  top_gainer_change_percent REAL,
  top_loser_symbol TEXT,
  top_loser_change_percent REAL,
  sector_technology_percent REAL,
  sector_healthcare_percent REAL,
  sector_financials_percent REAL,
  sector_energy_percent REAL,
  sector_consumer_percent REAL,
  market_cap_trillion REAL,
  pe_ratio_average REAL,
  dividend_yield_average REAL,
  volatility_index REAL,
  exchange_rate_usd_eur REAL,
  exchange_rate_usd_gbp REAL,
  notes TEXT,
  analyst_name TEXT,
  data_source TEXT
);

INSERT INTO financial_market_snapshot VALUES ('snap001','GlobalEquities','2023-06-01T16:00:00',3520.5,0.45,1200.0,'ABC','5.2','XYZ','-4.3',25.0,15.0,30.0,10.0,20.0,90.5,22.5,1.8,12.5,0.92,0.78,'Stable market','AnalystA','DataProviderX');
INSERT INTO financial_market_snapshot VALUES ('snap002','GlobalEquities','2023-06-02T16:00:00',3535.0,0.41,1185.0,'DEF','4.8','LMN','-3.9',26.0,14.5,29.5,9.5,19.5,91.0,23.0,1.9,13.0,0.91,0.77,'Slight uptick','AnalystB','DataProviderY');
INSERT INTO financial_market_snapshot VALUES ('snap003','GlobalEquities','2023-06-03T16:00:00',3510.2,-0.70,1195.0,'GHI','5.5','OPQ','-5.1',24.5,15.2,30.2,10.2,20.2,90.8,22.8,1.85,12.8,0.93,0.79,'Minor correction','AnalystC','DataProviderZ');

-- Library catalog entry data
CREATE TABLE library_catalog_entry (
  catalog_id TEXT PRIMARY KEY,
  isbn TEXT,
  title TEXT,
  author TEXT,
  publisher TEXT,
  publication_year INTEGER,
  edition TEXT,
  language TEXT,
  format TEXT,
  pages INTEGER,
  genre TEXT,
  subgenre TEXT,
  location_shelf TEXT,
  call_number TEXT,
  availability_status TEXT,
  acquisition_date TEXT,
  price_usd REAL,
  binding_type TEXT,
  dimensions_cm TEXT,
  weight_grams INTEGER,
  series_name TEXT,
  series_number INTEGER,
  summary TEXT,
  keywords TEXT
);

INSERT INTO library_catalog_entry VALUES ('cat001','9781234567890','Quantum Mechanics Basics','Alice Newton','SciencePress',2021,'1st','English','Hardcover',350,'Science','Physics','A3','QC123.45','Available','2021-03-15',45.0,'Cloth','23x15x3',800,'Physics Fundamentals',1,'Introductory text on quantum mechanics','quantum,physics,mechanics');
INSERT INTO library_catalog_entry VALUES ('cat002','9780987654321','Modern Art Overview','Bob Rivera','ArtWorld',2019,'2nd','English','Paperback',280,'Art','Modern','B2','AR567.89','CheckedOut','2019-07-22',30.0,'Paper','21x14x2',500,'Contemporary Art Series',3,'Survey of modern art movements','art,modern,painting');
INSERT INTO library_catalog_entry VALUES ('cat003','9781122334455','Data Science Handbook','Carol Lee','TechBooks',2022,'1st','English','Ebook',0,'Technology','DataScience','Online','DS001.01','Available','2022-01-10',0.0,'Digital','N/A',0,'Data Science Series',5,'Comprehensive guide to data science techniques','data,science,ml');

-- Archaeological site record data
CREATE TABLE archaeological_site_record (
  site_id TEXT PRIMARY KEY,
  site_name TEXT,
  country TEXT,
  region TEXT,
  latitude REAL,
  longitude REAL,
  discovery_year INTEGER,
  period TEXT,
  cultural_affiliation TEXT,
  site_type TEXT,
  area_sq_meters REAL,
  main_find TEXT,
  excavation_status TEXT,
  lead_archaeologist TEXT,
  funding_source TEXT,
  conservation_status TEXT,
  num_artifacts INTEGER,
  stratigraphy_complexity TEXT,
  carbon_dating_range TEXT,
  climate_context TEXT,
  threats TEXT,
  notes TEXT,
  last_survey_date TEXT,
  repository TEXT
);

INSERT INTO archaeological_site_record VALUES ('site001','AncientRiverBank','Egypt','UpperEgypt',29.1234,31.4567,1925,'LateDynastic','Egyptian','Settlement',1500.0,'Pottery','Completed','DrAhmed','GovGrant','Protected',200,'High','2500-2400BC','Arid','Erosion','Well preserved','2020-05-12','NationalMuseum');
INSERT INTO archaeological_site_record VALUES ('site002','HilltopFort','Spain','Catalonia',41.2345,2.5678,1978,'MiddleBronze','Iberian','Fortification',800.0,'BronzeSwords','Ongoing','DrMaria','EUFund','Endangered',120,'Medium','1500-1300BC','Mediterranean','Vegetation Overgrowth','Partial coverage','2022-09-03','RegionalArchive');
INSERT INTO archaeological_site_record VALUES ('site003','CoastalMound','USA','California',36.7890,-121.3456,2005,'EarlyContact','NativeAmerican','Mound',600.0,'ShellTools','Completed','DrJames','PrivateDonor','Stable',95,'Low','1800-1600AD','Coastal','Sea Level Rise','Minor disturbance','2021-11-20','StateUniversity');

-- Meteorological station log data
CREATE TABLE meteorological_station_log (
  log_id TEXT PRIMARY KEY,
  station_id TEXT,
  observation_timestamp TEXT,
  temperature_c REAL,
  dew_point_c REAL,
  relative_humidity_percent REAL,
  wind_speed_m_s REAL,
  wind_direction_deg REAL,
  gust_speed_m_s REAL,
  pressure_hpa REAL,
  precipitation_mm REAL,
  solar_radiation_w_m2 REAL,
  uv_index REAL,
  visibility_km REAL,
  cloud_cover_percent REAL,
  snowfall_cm REAL,
  soil_moisture_percent REAL,
  leaf_wetness_percent REAL,
  air_quality_index INTEGER,
  notes TEXT,
  technician_name TEXT,
  maintenance_flag TEXT,
  calibration_date TEXT,
  data_quality_flag TEXT
);

INSERT INTO meteorological_station_log VALUES ('log001','st001','2023-07-01T06:00:00',15.2,10.5,68.0,3.5,180,5.0,1013.2,0.0,250.0,5,15.0,20.0,0.0,30.0,10.0,45,'Clear sky','Mike','OK','2023-01-10','Good');
INSERT INTO meteorological_station_log VALUES ('log002','st001','2023-07-01T12:00:00',22.8,14.2,61.0,4.2,210,6.8,1010.5,0.0,500.0,7,10.0,45.0,0.0,28.0,12.0,40,'Sunny','Mike','OK','2023-01-10','Good');
INSERT INTO meteorological_station_log VALUES ('log003','st001','2023-07-01T18:00:00',18.5,12.0,65.0,2.8,150,4.5,1012.0,0.0,300.0,6,12.0,35.0,0.0,29.0,11.0,42,'Partly cloudy','Mike','OK','2023-01-10','Good');

-- Renewable energy farm data
CREATE TABLE renewable_energy_farm (
  farm_id TEXT PRIMARY KEY,
  farm_name TEXT,
  location_country TEXT,
  location_region TEXT,
  latitude REAL,
  longitude REAL,
  farm_type TEXT,
  installed_capacity_mw REAL,
  operational_since_year INTEGER,
  number_of_units INTEGER,
  average_capacity_factor_percent REAL,
  annual_generation_gwh REAL,
  grid_connection_voltage_kv REAL,
  maintenance_contract TEXT,
  owner_entity TEXT,
  financing_model TEXT,
  average_wind_speed_m_s REAL,
  solar_irradiance_w_m2 REAL,
  water_usage_m3_per_year REAL,
  emissions_offset_tons_co2_per_year REAL,
  land_use_hectares REAL,
  notes TEXT,
  last_inspection_date TEXT,
  regulatory_permit_status TEXT,
  primary_contact TEXT
);

INSERT INTO renewable_energy_farm VALUES ('farm001','SolarHills','USA','Nevada',36.7783,-119.4179','Solar',150.0,2015,300,22.5,295.0,115,'SolarMaintenanceCo','SunEnergyCorp','PPF','N/A',220.0,5000.0,80000.0,'N/A',1200.0,'High solar potential','2023-04-01','Approved','Laura');
INSERT INTO renewable_energy_farm VALUES ('farm002','WindVale','Denmark','Jutland',56.2639,9.5018,'Wind',200.0,2010,120,35.0,613.0,132,'WindServLtd','NordicWind','Lease','7.8','N/A',250.0,12000.0,150.0,'Widespread','Coastal wind farm','2023-06-15','Approved','Erik');
INSERT INTO renewable_energy_farm VALUES ('farm003','HybridPlaza','Australia','Queensland',-27.4705,153.0260,'Hybrid',250.0,2018,500,30.0,657.0,66,'HybridOps','AusRenew','JointVentures','5.5','250','30000','15000','1600','Combined solar and wind installation','2023-05-20','Pending','Sophie');

-- Urban infrastructure asset data
CREATE TABLE urban_infrastructure_asset (
  asset_id TEXT PRIMARY KEY,
  asset_type TEXT,
  asset_name TEXT,
  city TEXT,
  district TEXT,
  latitude REAL,
  longitude REAL,
  installation_date TEXT,
  condition_rating INTEGER,
  material TEXT,
  last_maintenance_date TEXT,
  maintenance_frequency_days INTEGER,
  responsible_department TEXT,
  estimated_replacement_year INTEGER,
  current_utilization_percent REAL,
  capacity_units INTEGER,
  funding_source TEXT,
  lifecycle_cost_million_usd REAL,
  associated_projects TEXT,
  geojson_boundary TEXT,
  traffic_impact_score REAL,
  environmental_impact_score REAL,
  notes TEXT,
  asset_manager TEXT,
  compliance_status TEXT,
  inspection_score INTEGER
);

INSERT INTO urban_infrastructure_asset VALUES ('asset001','Bridge','RiverCross','MetroCity','Downtown',40.7128,-74.0060,'2005-06-15',8,'Steel','2022-11-10',365,'PublicWorks',2035,75.0,4,'MunicipalBond',12.5,'BridgeUpgrade2024','{...}','8.5','3.2','Overall good condition','JohnDoe','Compliant',88);
INSERT INTO urban_infrastructure_asset VALUES ('asset002','Road','MainSt','MetroCity','Uptown',40.7130,-74.0100,'1998-04-20',6,'Asphalt','2023-01-05',180,'TransportationDept',2028,60.0,2,'StateGrant',9.3,'RoadResurfacing2025','{...}','7.0','4.0','Potholes observed','JaneSmith','Compliant',75);
INSERT INTO urban_infrastructure_asset VALUES ('asset003','WaterTreatmentPlant','NorthPlant','MetroCity','NorthSide',40.7200,-74.0150,'2012-09-01',9,'Concrete','2023-03-12',730,'UtilityDept',2042,90.0,1,'PublicPrivate','15.0','CapacityExpansion2026','{...}','5.5','2.0','Operating near capacity','MikeBrown','Compliant',92);