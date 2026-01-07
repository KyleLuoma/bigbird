-- City parks information
CREATE TABLE city_parks (
    park_id TEXT PRIMARY KEY,
    park_name TEXT,
    city TEXT,
    county TEXT,
    park_type TEXT,
    acres REAL,
    established_year INTEGER,
    latitude REAL,
    longitude REAL,
    facility_count INTEGER,
    playground_present INTEGER,
    dog_park_present INTEGER,
    sports_field_count INTEGER,
    trail_miles REAL,
    water_feature TEXT,
    hours_open TEXT,
    maintenance_contact TEXT,
    annual_visitors INTEGER,
    budget_allocated REAL,
    green_certification TEXT,
    eco_programs TEXT,
    wifi_available INTEGER,
    lighting_type TEXT,
    last_renovation DATE,
    notes TEXT
);
INSERT INTO city_parks VALUES ('P001','MaplePark','Springfield','Greene','Neighborhood',5.2,1995,39.78,-89.64,3,1,0,2,1.5,'Pond','6am-10pm','JohnDoe',25000,15000,'LEED','Recycling',1,'LED','2022-05-01','');
INSERT INTO city_parks VALUES ('P002','Riverfront','Springfield','Greene','Regional',25.0,2005,39.80,-89.60,8,1,1,4,4.2,'River','5am-11pm','JaneSmith',120000,50000,'LEED','HabitatRestoration',1,'Solar','2019-08-15','');
INSERT INTO city_parks VALUES ('P003','OakRidge','Shelbyville','Shelby','Neighborhood',7.8,1980,39.90,-89.70,5,1,0,1,2.0,'Stream','6am-9pm','MikeBrown',40000,20000,'','Compost',0,'Fluorescent','2015-03-20','');

-- Public art installations
CREATE TABLE public_art_installations (
    art_id TEXT PRIMARY KEY,
    title TEXT,
    artist TEXT,
    installation_year INTEGER,
    material TEXT,
    height_cm REAL,
    width_cm REAL,
    depth_cm REAL,
    location_description TEXT,
    city TEXT,
    county TEXT,
    gps_latitude REAL,
    gps_longitude REAL,
    funding_source TEXT,
    maintenance_provider TEXT,
    condition_rating INTEGER,
    last_inspection DATE,
    lighting_type TEXT,
    interactive INTEGER,
    audio_component INTEGER,
    water_feature INTEGER,
    ir_enabled INTEGER,
    visitor_count_estimate INTEGER,
    accessibility_level TEXT,
    warranty_expiration DATE,
    notes TEXT
);
INSERT INTO public_art_installations VALUES ('A001','Harmony','LenaLee',2010,'Bronze',250,120,80,'Central Plaza','Springfield','Greene',39.78,-89.62,'CityGrant','CityParks',9,'2023-01-12','LED',0,0,0,0,50000,'ADA','2028-12-31','');
INSERT INTO public_art_installations VALUES ('A002','Waves','CarlosM',2015,'StainlessSteel',180,200,20,'Riverwalk','Springfield','Greene',39.81,-89.59,'PrivateDonor','RiverDept',8,'2022-07-05','Solar',1,0,1,0,30000,'ADA','2027-06-30','');
INSERT INTO public_art_installations VALUES ('A003','Echo','MiraK',2020,'RecycledPlastic',100,150,50,'Town Hall Square','Shelbyville','Shelby',39.92,-89.71,'FederalArts','CityArts',10,'2023-09-20','None',0,1,0,1,15000,'Standard','2025-03-15','');

-- Traffic signal configuration
CREATE TABLE traffic_signal_config (
    signal_id TEXT PRIMARY KEY,
    intersection_name TEXT,
    street_a TEXT,
    street_b TEXT,
    city TEXT,
    county TEXT,
    latitude REAL,
    longitude REAL,
    signal_type TEXT,
    phases INTEGER,
    cycle_length_seconds INTEGER,
    pedestrian_phase INTEGER,
    turn_lane_control INTEGER,
    adaptive_control INTEGER,
    coordinated_group TEXT,
    installation_year INTEGER,
    last_maintenance DATE,
    firmware_version TEXT,
    voltage_volts REAL,
    ampere_rating REAL,
    power_consumption_kw REAL,
    outage_history TEXT,
    maintenance_contact TEXT,
    notes TEXT,
    gps_accuracy_m REAL,
    last_inspection DATE
);
INSERT INTO traffic_signal_config VALUES ('S001','MainSt&1st','Main St','1st Ave','Springfield','Greene',39.78,-89.65,'LED',4,120,1,1,1,'GroupA',2012,'2023-03-10','v2.1',120.0,15.0,0.5,'None','JohnDoe','','1.5','2023-01-15');
INSERT INTO traffic_signal_config VALUES ('S002','ElmSt&3rd','Elm St','3rd Blvd','Springfield','Greene',39.80,-89.61,'LED',6,140,1,1,0,'GroupB',2016,'2022-11-22','v2.3',115.0,13.5,0.6,'2021-07-08:PowerLoss','JaneSmith','','2.0','2022-10-30');
INSERT INTO traffic_signal_config VALUES ('S003','PineRd&5th','Pine Rd','5th St','Shelbyville','Shelby',39.93,-89.68,'Solar',4,115,0,0,1,'GroupA',2018,'2023-02-05','v2.5',110.0,12.0,0.4,'2020-05-12:SensorFault','MikeBrown','','1.2','2023-02-01');

-- Stormwater management projects
CREATE TABLE stormwater_management_projects (
    project_id TEXT PRIMARY KEY,
    project_name TEXT,
    city TEXT,
    county TEXT,
    start_date DATE,
    completion_date DATE,
    budget_millions REAL,
    contractor TEXT,
    design_firm TEXT,
    project_type TEXT,
    area_acres REAL,
    pipe_length_meters REAL,
    detention_volume_cubic_meters REAL,
    green_infrastructure INTEGER,
    infiltration_beds INTEGER,
    rain_garden_count INTEGER,
    permeable_pavement_m2 REAL,
    monitoring_stations INTEGER,
    compliance_status TEXT,
    permits_obtained INTEGER,
    community_outreach_hours INTEGER,
    sustainability_score INTEGER,
    maintenance_plan TEXT,
    notes TEXT,
    project_manager TEXT,
    total_employees INTEGER
);
INSERT INTO stormwater_management_projects VALUES ('SW001','RiverbankRetention','Springfield','Greene','2021-01-15','2023-08-30',2.5,'BuildCo','EcoDesign','DetentionBasin',15.0,3000,5000,1,4,2,1200,3,'Complete',1,40,85,'AnnualInspection','', 'SarahLee',25);
INSERT INTO stormwater_management_projects VALUES ('SW002','NorthSideInfiltration','Springfield','Greene','2020-06-01','2022-12-10',1.8,'FlowWorks','HydroPlan','InfiltrationTrench',8.5,1500,2500,1,6,5,800,2,'Complete',1,30,78,'QuarterlyInspection','', 'TomHarris',18);
INSERT INTO stormwater_management_projects VALUES ('SW003','EastParkRainGarden','Shelbyville','Shelby','2022-03-20','2024-05-15',0.9,'GreenBuild','LandscapePro','RainGarden',2.0,0,0,1,0,8,400,1,'InProgress',0,20,65,'BiannualInspection','', 'LisaNguyen',12);

-- Renewable energy assets
CREATE TABLE renewable_energy_assets (
    asset_id TEXT PRIMARY KEY,
    asset_type TEXT,
    location_description TEXT,
    city TEXT,
    county TEXT,
    latitude REAL,
    longitude REAL,
    capacity_kw REAL,
    installation_date DATE,
    developer TEXT,
    owner TEXT,
    operational_status TEXT,
    maintenance_contract TEXT,
    last_service_date DATE,
    expected_life_years INTEGER,
    decommission_date DATE,
    energy_output_yearly_mwh REAL,
    grid_connection_point TEXT,
    incentives_received REAL,
    financing_type TEXT,
    tax_credit_percentage REAL,
    performance_ratio REAL,
    monitoring_system TEXT,
    notes TEXT,
    gps_accuracy_m REAL,
    commissioning_agency TEXT,
    total_investment_millions REAL
);
INSERT INTO renewable_energy_assets VALUES ('RE001','SolarPV','School Roof','Springfield','Greene',39.78,-89.63,150.0,'2020-04-15','SunPower','City','Active','CityParks','2023-02-20',25,NULL,180.0,'SubstationA',0.5,'PowerPurchase','30',0.85,'SCADA','',1.2,'EnergyDept',0.12);
INSERT INTO renewable_energy_assets VALUES ('RE002','WindTurbine','County Park','Springfield','Greene',39.81,-89.58,2500.0,'2019-09-01','WindCo','UtilityCo','Active','WindServ','2023-01-12',20,NULL,8000.0,'SubstationB',1.2,'Lease','25',0.90,'SCADA','',2.5,'EnergyDept',2.0);
INSERT INTO renewable_energy_assets VALUES ('RE003','Geothermal','Municipal Building','Shelbyville','Shelby',39.94,-89.69,300.0,'2021-07-22','GeoHeat','City','Active','GeoMaintain','2023-03-05',30,NULL,350.0,'SubstationC',0.8,'Bond','15',0.80,'SCADA','',1.8,'EnergyDept',0.45);

-- Historic building registry
CREATE TABLE historic_building_registry (
    registry_id TEXT PRIMARY KEY,
    building_name TEXT,
    address TEXT,
    city TEXT,
    county TEXT,
    construction_year INTEGER,
    architectural_style TEXT,
    historic_designation TEXT,
    designation_date DATE,
    owner TEXT,
    current_use TEXT,
    floor_area_sqft REAL,
    stories INTEGER,
    original_materials TEXT,
    renovation_year INTEGER,
    preservation_status TEXT,
    public_access INTEGER,
    guided_tours_available INTEGER,
    interpretation_signs INTEGER,
    lighting_upgrades INTEGER,
    seismic_upgrades INTEGER,
    energy_efficiency_grade TEXT,
    tax_credits_received REAL,
    grant_funding_received REAL,
    notes TEXT,
    gps_latitude REAL,
    gps_longitude REAL,
    last_inspection DATE,
    inspector_name TEXT
);
INSERT INTO historic_building_registry VALUES ('HB001','Old Courthouse','123 Main St','Springfield','Greene',1885,'Romanesque','NationalRegister','1990-06-15','County','Courtrooms',12000,3,'Stone','2005','Preserved',1,1,1,1,0,'B','200000','150000','',39.78,-89.64,'2023-01-10','JohnDoe');
INSERT INTO historic_building_registry VALUES ('HB002','Heritage Library','456 Oak Ave','Springfield','Greene',1920,'Neoclassical','StateLandmark','2005-09-30','City','Library',18000,2,'Brick','2018','Restored',1,0,1,1,1,'A','300000','250000','',39.80,-89.60,'2023-02-12','JaneSmith');
INSERT INTO historic_building_registry VALUES ('HB003','Miller Mill','789 River Rd','Shelbyville','Shelby',1910,'Industrial','LocalHistoric','2012-04-20','Private','Museum',25000,1,'Wood','2015','Preserved',0,0,0,0,0,'C','100000','0','',39.93,-89.68,'2023-03-08','MikeBrown');

-- Public Wi‑Fi hotspots
CREATE TABLE public_wifi_hotspots (
    hotspot_id TEXT PRIMARY KEY,
    location_name TEXT,
    address TEXT,
    city TEXT,
    county TEXT,
    latitude REAL,
    longitude REAL,
    provider TEXT,
    ssid TEXT,
    security_type TEXT,
    bandwidth_mbps REAL,
    max_clients INTEGER,
    installation_date DATE,
    last_maintenance DATE,
    active INTEGER,
    free_access INTEGER,
    sponsorship TEXT,
    power_source TEXT,
    antenna_type TEXT,
    coverage_radius_m REAL,
    uptime_percentage REAL,
    firmware_version TEXT,
    monitoring_enabled INTEGER,
    notes TEXT,
    gps_accuracy_m REAL,
    maintenance_contact TEXT,
    monthly_data_cap_gb REAL,
    warranty_expiration DATE
);
INSERT INTO public_wifi_hotspots VALUES ('W001','Main Library','100 Library Ln','Springfield','Greene',39.78,-89.63,'CityNet','SpringfieldLib','WPA2',150.0,200,'2018-03-10','2023-02-01',1,1,'CityGrant','Solar','Omni',100,99.5,'v3.2',1,'',1.0,'JohnDoe',500,'2025-12-31');
INSERT INTO public_wifi_hotspots VALUES ('W002','Riverfront Plaza','200 River Rd','Springfield','Greene',39.80,-89.60,'RiverWiFi','RiverWiFi','Open',100.0,150,'2019-07-22','2023-01-20',1,1,'BusinessSponsor','Mains','Panel',80,98.2,'v3.0',1,'',1.5,'JaneSmith',300,'2026-06-30');
INSERT INTO public_wifi_hotspots VALUES ('W003','Town Hall','1 City Hall','Shelbyville','Shelby',39.94,-89.71,'GovNet','ShelbyHall','WPA3',200.0,250,'2020-11-05','2023-03-15',1,0,'GovFund','Mains','Directional',120,99.8,'v3.3',1,'',2.0,'MikeBrown',600,'2027-09-15');

-- Air quality compliance records
CREATE TABLE air_quality_compliance_records (
    record_id TEXT PRIMARY KEY,
    monitoring_station_id TEXT,
    station_name TEXT,
    city TEXT,
    county TEXT,
    latitude REAL,
    longitude REAL,
    pollutant TEXT,
    measurement_value REAL,
    unit TEXT,
    measurement_timestamp DATE,
    compliance_status TEXT,
    regulatory_limit REAL,
    exceedance_flag INTEGER,
    action_taken TEXT,
    inspector_name TEXT,
    inspection_date DATE,
    data_source TEXT,
    calibration_date DATE,
    sensor_type TEXT,
    data_quality_flag INTEGER,
    notes TEXT,
    maintenance_required INTEGER,
    next_calibration_due DATE,
    reporting_period TEXT,
    average_daily_value REAL,
    standard_reference TEXT
);
INSERT INTO air_quality_compliance_records VALUES ('AQ001','ST001','Downtown Monitor','Springfield','Greene',39.78,-89.62,'PM2.5',12.5,'µg/m3','2023-01-15','Compliant',35.0,0,'None','JohnDoe','2023-01-20','EPA','2022-12-01','Beta','1','',0,'2024-12-01','2023-Q1',10.2,'EPA-2019');
INSERT INTO air_quality_compliance_records VALUES ('AQ002','ST002','River Edge','Springfield','Greene',39.80,-89.59,'O3',0.07,'ppm','2023-02-10','Exceeds','0.07',1,'Investigation','JaneSmith','2023-02-15','EPA','2022-11-15','Alpha','2','Investigate source',1,'2024-11-15','2023-Q1',0.08,'EPA-2019');
INSERT INTO air_quality_compliance_records VALUES ('AQ003','ST003','North Hill','Shelbyville','Shelby',39.93,-89.68,'NO2',0.03,'ppm','2023-03-05','Compliant','0.053',0,'None','MikeBrown','2023-03-10','EPA','2022-10-20','Gamma','1','',0,'2024-10-20','2023-Q1',0.025,'EPA-2019');

-- Smart city sensor deployments
CREATE TABLE smart_city_sensor_deployments (
    deployment_id TEXT PRIMARY KEY,
    sensor_type TEXT,
    location_description TEXT,
    city TEXT,
    county TEXT,
    latitude REAL,
    longitude REAL,
    installation_date DATE,
    manufacturer TEXT,
    model_number TEXT,
    firmware_version TEXT,
    connectivity_type TEXT,
    power_source TEXT,
    data_interval_seconds INTEGER,
    data_format TEXT,
    encryption_enabled INTEGER,
    calibration_status TEXT,
    last_calibration DATE,
    maintenance_contract TEXT,
    maintenance_contact TEXT,
    operational_status TEXT,
    data_retention_days INTEGER,
    alert_threshold REAL,
    alerts_sent INTEGER,
    integration_platform TEXT,
    notes TEXT,
    gps_accuracy_m REAL,
    deployment_phase TEXT,
    budget_usd REAL
);
INSERT INTO smart_city_sensor_deployments VALUES ('SD001','TrafficFlow','MainSt&2nd','Springfield','Greene',39.78,-89.65,'2022-05-10','SenseTech','TF-100','v1.4','Cellular','Mains',30,'JSON',1,'Calibrated','2023-01-01','CityContract','JohnDoe','Active',365,80.0,5,'OpenDataPortal','',1.0,'Phase1',50000);
INSERT INTO smart_city_sensor_deployments VALUES ('SD002','AirQuality','Riverfront Park','Springfield','Greene',39.80,-89.60,'2021-09-20','AirSense','AQ-200','v2.0','LoRa','Solar',60,'CSV',1,'Calibrated','2022-12-15','EnviroContract','JaneSmith','Active',730,50.0,2,'CityGIS','',0.8,'Phase2',75000);
INSERT INTO smart_city_sensor_deployments VALUES ('SD003','NoiseLevel','Industrial Zone','Shelbyville','Shelby',39.94,-89.71,'2023-01-05','SoundInc','NL-300','v1.0','WiFi','Mains',15,'XML',0,'Pending','2023-02-20','NoiseContract','MikeBrown','Testing',180,70.0,0,'CityAnalytics','',1.2,'Pilot',30000);

-- Public transport network usage
CREATE TABLE public_transport_network_usage (
    usage_id TEXT PRIMARY KEY,
    route_id TEXT,
    route_name TEXT,
    vehicle_type TEXT,
    start_stop TEXT,
    end_stop TEXT,
    city TEXT,
    county TEXT,
    daily_ridership INTEGER,
    peak_hour_ridership INTEGER,
    average_speed_kmh REAL,
    distance_km REAL,
    service_start_date DATE,
    service_end_date DATE,
    operating_agency TEXT,
    fare_structure TEXT,
    free_ride_eligible INTEGER,
    on_time_percentage REAL,
    incidents_reported INTEGER,
    maintenance_downtime_minutes INTEGER,
    fuel_type TEXT,
    emissions_kg_co2 REAL,
    wifi_onboard INTEGER,
    wheelchair_accessible INTEGER,
    real_time_tracking INTEGER,
    notes TEXT,
    last_updated DATE,
    data_source TEXT,
    budget_usd REAL
);
INSERT INTO public_transport_network_usage VALUES ('UT001','R01','Downtown Loop','Bus','Central Station','North Plaza','Springfield','Greene',12000,2500,25.0,15.0,'2015-01-01',NULL,'CityTransit','FlatFare',0,92.5,3,60,'Diesel',4500,1,1,1,'', '2023-03-01','TransitDB',2000000);
INSERT INTO public_transport_network_usage VALUES ('UT002','R02','River Line','Trolley','Riverfront','East Side','Springfield','Greene',8000,1800,30.0,10.0,'2018-06-15',NULL,'CityTransit','ZoneFare',1,95.0,1,30,'Electric',1200,1,1,1,'', '2023-03-01','TransitDB',1500000);
INSERT INTO public_transport_network_usage VALUES ('UT003','R03','North Suburbs','Bus','West Terminal','North Suburb','Shelbyville','Shelby',6000,1200,22.0,20.0,'2017-03-20',NULL,'CountyTransit','FlatFare',0,88.0,2,45,'Diesel',3500,0,1,1,'Pilot route', '2023-03-01','TransitDB',1000000);

-- Community health metrics
CREATE TABLE community_health_metrics (
    metric_id TEXT PRIMARY KEY,
    community_name TEXT,
    city TEXT,
    county TEXT,
    year INTEGER,
    population_estimate INTEGER,
    median_age REAL,
    percent_under_18 REAL,
    percent_over_65 REAL,
    average_household_income REAL,
    unemployment_rate REAL,
    percent_below_poverty REAL,
    obesity_rate REAL,
    diabetes_prevalence REAL,
    smoking_rate REAL,
    mental_health_incidence REAL,
    access_to_primary_care INTEGER,
    number_of_clinics INTEGER,
    average_distance_to_hospital_km REAL,
    vaccination_rate_childhood REAL,
    vaccination_rate_adult REAL,
    health_insurance_coverage REAL,
    air_quality_index REAL,
    water_quality_score REAL,
    physical_activity_rate REAL,
    food_desert_indicator INTEGER,
    notes TEXT,
    data_collection_method TEXT,
    last_updated DATE,
    reporting_agency TEXT
);
INSERT INTO community_health_metrics VALUES ('CH001','Northside','Springfield','Greene',2022,45000,34.2,22.5,12.3,56000,4.5,15.0,28.0,9.5,14.0,12.0,1,8,5.2,92.0,78.0,88.5,45,85,'',0,'Survey','2023-01-15','CountyHealthDept');
INSERT INTO community_health_metrics VALUES ('CH002','Riverbend','Springfield','Greene',2022,30000,36.1,20.0,10.5,62000,3.8,12.5,26.0,8.0,13.5,10.5,1,5,6.0,95.0,82.0,90.2,38,88,'',0,'ElectronicRecords','2023-01-20','CountyHealthDept');
INSERT INTO community_health_metrics VALUES ('CH003','East Village','Shelbyville','Shelby',2022,25000,33.5,25.0,13.0,54000,5.2,18.0,30.0,10.5,15.0,11.0,0,4,7.5,89.0,70.0,85.0,50,80,'',1,'Survey','2023-01-25','CountyHealthDept');