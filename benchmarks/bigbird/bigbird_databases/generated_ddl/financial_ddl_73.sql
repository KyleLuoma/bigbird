-- Wildlife observation records
CREATE TABLE wildlife_observation (
    observation_id INTEGER default 0 not null primary key,
    site_code TEXT not null,
    observer_id INTEGER not null,
    observation_date DATE not null,
    species_common_name TEXT not null,
    species_scientific_name TEXT not null,
    count INTEGER not null,
    age_class TEXT,
    gender TEXT,
    behavior TEXT,
    weather_condition TEXT,
    temperature_c REAL,
    humidity_percent INTEGER,
    latitude REAL,
    longitude REAL,
    habitat_type TEXT,
    notes TEXT,
    photo_url TEXT,
    verified_by INTEGER,
    verification_date DATE,
    confidence_score REAL,
    data_source TEXT
);
INSERT INTO wildlife_observation VALUES (1, 'S001', 101, '2023-05-12', 'Bald Eagle', 'Haliaeetus leucocephalus', 2, 'Adult', 'Male', 'Soaring', 'Clear', 22.5, 45, 45.1234, -122.1234, 'Forest', 'None', 'http://example.com/photo1.jpg', 201, '2023-05-13', 0.98, 'field');
INSERT INTO wildlife_observation VALUES (2, 'S002', 102, '2023-05-13', 'Gray Wolf', 'Canis lupus', 5, 'Juvenile', 'Female', 'Pack Hunt', 'Snow', -5.0, 80, 46.5678, -123.5678, 'Tundra', 'Observed near den', 'http://example.com/photo2.jpg', 202, '2023-05-14', 0.95, 'survey');
INSERT INTO wildlife_observation VALUES (3, 'S003', 103, '2023-05-14', 'Monarch Butterfly', 'Danaus plexippus', 30, 'Adult', 'Female', 'Feeding', 'Sunny', 27.0, 30, 47.9101, -124.9101, 'Meadow', 'Clustered on milkweed', 'http://example.com/photo3.jpg', 203, '2023-05-15', 0.99, 'citizen');

-- Renewable energy farm operational status
CREATE TABLE renewable_energy_farm_status (
    farm_id INTEGER default 0 not null primary key,
    farm_name TEXT not null,
    location_city TEXT,
    location_state TEXT,
    installation_date DATE,
    capacity_mw REAL,
    current_output_mw REAL,
    capacity_factor REAL,
    avg_wind_speed_ms REAL,
    avg_solar_irradiance_wm2 REAL,
    num_turbines INTEGER,
    num_panels INTEGER,
    maintenance_status TEXT,
    last_maintenance_date DATE,
    next_maintenance_due DATE,
    fault_count INTEGER,
    total_energy_generated_mwh REAL,
    grid_connection_status TEXT,
    operator_company TEXT,
    contact_email TEXT,
    latitude REAL,
    longitude REAL,
    notes TEXT
);
INSERT INTO renewable_energy_farm_status VALUES (10, 'SunnyVale', 'Austin', 'TX', '2018-03-15', 150.0, 120.5, 0.80, 6.2, 800.0, 0, 200000, 'Good', '2023-04-01', '2023-10-01', 1, 3500000.0, 'Connected', 'EcoPower', 'contact@ecopower.com', 30.2672, -97.7431, 'Operating normally');
INSERT INTO renewable_energy_farm_status VALUES (11, 'Windcrest', 'Denver', 'CO', '2019-07-20', 200.0, 150.0, 0.75, 7.5, 0.0, 50, 0, 'Scheduled', '2023-05-10', '2023-11-10', 0, 5000000.0, 'Connected', 'WindCo', 'info@windco.com', 39.7392, -104.9903, 'Upcoming turbine upgrade');
INSERT INTO renewable_energy_farm_status VALUES (12, 'SolarisPeak', 'Phoenix', 'AZ', '2020-01-05', 100.0, 85.0, 0.85, 0.0, 950.0, 0, 180000, 'Critical', '2023-02-20', '2023-08-20', 3, 2100000.0, 'Disconnected', 'SolarTech', 'support@solartech.com', 33.4484, -112.0740, 'Panel cleaning required');

-- Urban noise monitoring stations
CREATE TABLE urban_noise_monitor (
    station_id INTEGER default 0 not null primary key,
    station_name TEXT not null,
    city TEXT,
    neighborhood TEXT,
    installation_date DATE,
    latitude REAL,
    longitude REAL,
    noise_level_db_a REAL,
    noise_level_db_c REAL,
    peak_noise_db REAL,
    avg_daytime_db REAL,
    avg_nighttime_db REAL,
    frequency_low_hz REAL,
    frequency_mid_hz REAL,
    frequency_high_hz REAL,
    sensor_status TEXT,
    last_calibration_date DATE,
    next_calibration_due DATE,
    data_transmission_method TEXT,
    power_source TEXT,
    maintenance_contact TEXT,
    notes TEXT
);
INSERT INTO urban_noise_monitor VALUES (101, 'MainStNorth', 'Chicago', 'Loop', '2021-06-01', 41.8781, -87.6298, 65.2, 63.5, 95.0, 70.0, 55.0, 20.0, 500.0, 2000.0, 'Active', '2023-03-15', '2023-09-15', 'Cellular', 'Solar', 'tech1@city.gov', 'No issues');
INSERT INTO urban_noise_monitor VALUES (102, 'LakeviewEast', 'Chicago', 'Lakeview', '2021-07-15', 41.9400, -87.6530, 60.8, 59.0, 88.0, 66.0, 50.0, 25.0, 600.0, 2100.0, 'Active', '2023-04-10', '2023-10-10', 'WiFi', 'Mains', 'tech2@city.gov', 'Battery replacement needed');
INSERT INTO urban_noise_monitor VALUES (103, 'SouthSide', 'Chicago', 'South Loop', '2022-01-20', 41.8540, -87.6180, 68.5, 66.0, 100.0, 73.0, 58.0, 22.0, 550.0, 2050.0, 'Inactive', '2022-12-01', '2023-06-01', 'Ethernet', 'Mains', 'tech3@city.gov', 'Sensor offline for repair');

-- Marine fishing vessel activity log
CREATE TABLE marine_fishing_vessel_log (
    log_id INTEGER default 0 not null primary key,
    vessel_id TEXT not null,
    vessel_name TEXT,
    registration_country TEXT,
    departure_port TEXT,
    arrival_port TEXT,
    departure_date DATE,
    arrival_date DATE,
    fish_species_caught TEXT,
    catch_quantity_kg REAL,
    gear_type TEXT,
    average_fuel_consumption_lph REAL,
    max_speed_knots REAL,
    captain_name TEXT,
    crew_size INTEGER,
    weather_conditions TEXT,
    sea_state TEXT,
    latitude_start REAL,
    longitude_start REAL,
    latitude_end REAL,
    longitude_end REAL,
    compliance_status TEXT,
    notes TEXT
);
INSERT INTO marine_fishing_vessel_log VALUES (1001, 'V001', 'OceanBounty', 'NO', 'Oslo', 'London', '2023-04-01', '2023-04-20', 'Atlantic Cod', 1200.5, 'Trawl', 150.0, 12.5, 'Erik Hansen', 12, 'Clear', 'Calm', 59.9139, 10.7522, 51.5074, -0.1278, 'Compliant', 'No incidents');
INSERT INTO marine_fishing_vessel_log VALUES (1002, 'V002', 'SeaHarvest', 'DK', 'Copenhagen', 'Hamburg', '2023-05-05', '2023-05-18', 'Herring', 850.0, 'Gillnet', 130.0, 11.0, 'Lars Nielsen', 10, 'Cloudy', 'Moderate', 55.6761, 12.5683, 53.5511, 9.9937, 'Compliant', 'Minor gear issue solved');
INSERT INTO marine_fishing_vessel_log VALUES (1003, 'V003', 'WaveRunner', 'SE', 'Stockholm', 'Gothenburg', '2023-06-10', '2023-06-25', 'Mackerel', 970.3, 'Purse Seine', 140.0, 13.0, 'Anna Karlsson', 11, 'Rain', 'Rough', 59.3293, 18.0686, 57.7089, 11.9746, 'Violation', 'Exceeded catch quota');

-- Academic research dataset registry
CREATE TABLE academic_research_dataset (
    dataset_id INTEGER default 0 not null primary key,
    title TEXT not null,
    principal_investigator TEXT,
    institution TEXT,
    discipline TEXT,
    collection_start_date DATE,
    collection_end_date DATE,
    data_format TEXT,
    file_size_gb REAL,
    number_of_records INTEGER,
    access_level TEXT,
    doi TEXT,
    license TEXT,
    funding_agency TEXT,
    grant_number TEXT,
    geographic_coverage TEXT,
    temporal_coverage TEXT,
    variables_description TEXT,
    metadata_version TEXT,
    last_update DATE,
    contact_email TEXT,
    notes TEXT
);
INSERT INTO academic_research_dataset VALUES (2001, 'Global Soil Moisture', 'Dr Jane Smith', 'UniversityX', 'Environmental Science', '2019-01-01', '2022-12-31', 'NetCDF', 45.2, 1500000, 'Open', '10.1234/soil2023', 'CC-BY', 'NSF', 'GR12345', 'Global', '2019-2022', 'Moisture, Temp, Salinity', 'v1.2', '2023-01-15', 'jane.smith@univx.edu', 'High resolution');
INSERT INTO academic_research_dataset VALUES (2002, 'Urban Traffic Flow', 'Prof Mark Lee', 'InstituteY', 'Transportation Engineering', '2020-05-01', '2021-04-30', 'CSV', 12.5, 800000, 'Restricted', '10.5678/traffic2022', 'CC-NC', 'DOT', 'TR56789', 'Metropolitan Area', '2020-2021', 'VehicleCount, Speed, Occupancy', 'v3.0', '2022-12-01', 'mark.lee@insty.org', 'Contains PII');
INSERT INTO academic_research_dataset VALUES (2003, 'Genome Sequencing Samples', 'Dr Alice Wong', 'BioLabZ', 'Genomics', '2021-01-15', '2021-12-15', 'FASTQ', 78.9, 250000, 'Controlled', '10.9012/genome2022', 'Proprietary', 'NIH', 'GS09876', 'USA', '2021', 'Sequence Reads, Quality Scores', 'v2.1', '2022-06-30', 'alice.wong@biolabz.org', 'IRB approved');

-- Cultural heritage site inventory
CREATE TABLE cultural_heritage_site (
    site_id INTEGER default 0 not null primary key,
    site_name TEXT not null,
    country TEXT,
    region TEXT,
    city TEXT,
    latitude REAL,
    longitude REAL,
    designation TEXT,
    designation_date DATE,
    period TEXT,
    architectural_style TEXT,
    material TEXT,
    visitor_capacity INTEGER,
    annual_visitors INTEGER,
    status TEXT,
    conservation_status TEXT,
    managing_authority TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    website_url TEXT,
    area_sq_m REAL,
    description TEXT,
    last_inspection DATE,
    notes TEXT
);
INSERT INTO cultural_heritage_site VALUES (301, 'OldFortress', 'Spain', 'Andalusia', 'Seville', 37.3891, -5.9845, 'World Heritage', '1987-12-12', 'Medieval', 'Gothic', 'Stone', 5000, 300000, 'Open', 'Good', 'CulturalDept', '+34123456789', 'info@oldfortress.es', 'http://oldfortress.es', 25000.0, 'Well preserved medieval fortress', '2022-11-20', '');
INSERT INTO cultural_heritage_site VALUES (302, 'AncientTemple', 'India', 'Maharashtra', 'Mumbai', 19.0760, 72.8777, 'National Monument', '1975-06-05', 'Ancient', 'Dravidian', 'Sandstone', 2000, 150000, 'Closed for restoration', 'Fair', 'ArchaeologyBoard', '+912212345678', 'contact@ancienttemple.in', 'http://ancienttemple.in', 18000.0, 'Temple dating back to 8th century', '2023-02-10', 'Restoration scheduled 2024');
INSERT INTO cultural_heritage_site VALUES (303, 'HistoricBridge', 'USA', 'Colorado', 'Denver', 39.7392, -104.9903, 'State Landmark', '1990-09-15', 'Industrial', 'Steel', 'Steel', 3000, 120000, 'Open', 'Excellent', 'StateHistoricSociety', '+13035551234', 'bridge@state.gov', 'http://historicbridge.co', 5000.0, 'Early 20th century railway bridge', '2022-08-05', '');

-- Satellite ground station details
CREATE TABLE satellite_ground_station (
    station_id INTEGER default 0 not null primary key,
    station_name TEXT not null,
    country TEXT,
    state_province TEXT,
    city TEXT,
    latitude REAL,
    longitude REAL,
    elevation_m REAL,
    antenna_diameter_m REAL,
    frequency_band TEXT,
    max_downlink_mbps REAL,
    max_uplink_mbps REAL,
    operational_since DATE,
    last_maintenance DATE,
    status TEXT,
    operator_company TEXT,
    contact_email TEXT,
    data_archive_path TEXT,
    power_source TEXT,
    cooling_system TEXT,
    software_version TEXT,
    notes TEXT
);
INSERT INTO satellite_ground_station VALUES (401, 'NorthStar', 'USA', 'California', 'MountainView', 37.3861, -122.0839, 1500.0, 12.0, 'X', 800.0, 200.0, '2010-04-01', '2023-03-01', 'Active', 'SpaceCom', 'ops@nstar.com', '/data/nstar/', 'Solar', 'ChilledWater', 'v3.5', '');
INSERT INTO satellite_ground_station VALUES (402, 'EuroLink', 'Germany', 'Bavaria', 'Munich', 48.1351, 11.5820, 600.0, 8.0, 'Ka', 500.0, 150.0, '2012-09-15', '2023-01-20', 'Active', 'EuroSat', 'support@eurolink.de', '/archive/eurolink/', 'Mains', 'Air', 'v2.8', '');
INSERT INTO satellite_ground_station VALUES (403, 'SouthernArray', 'Australia', 'NewSouthWales', 'Sydney', -33.8688, 151.2093, 50.0, 6.0, 'S', 300.0, 100.0, '2015-06-30', '2022-12-10', 'Maintenance', 'AusSpace', 'maintenance@sarray.au', '/data/sarray/', 'Hybrid', 'Liquid', 'v1.4', 'Antenna upgrade pending');

-- Healthcare provider network registry
CREATE TABLE healthcare_provider_network (
    provider_id INTEGER default 0 not null primary key,
    provider_name TEXT not null,
    provider_type TEXT,
    specialty TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    phone_number TEXT,
    email TEXT,
    tax_id TEXT,
    network_affiliation TEXT,
    contracted_since DATE,
    contract_end_date DATE,
    status TEXT,
    num_physicians INTEGER,
    num_nurses INTEGER,
    bed_count INTEGER,
    emergency_services TEXT,
    ambulatory_services TEXT,
    telemedicine_capability TEXT,
    accreditation TEXT,
    notes TEXT
);
INSERT INTO healthcare_provider_network VALUES (501, 'CityGeneralHospital', 'Hospital', 'MultiSpecialty', '123 Main St', 'Chicago', 'IL', '60601', '+13125551234', 'info@citygen.org', '12-3456789', 'HealthNetA', '2005-01-01', '2025-12-31', 'Active', 150, 300, 250, 'Yes', 'Yes', 'Yes', 'JointCommission', '');
INSERT INTO healthcare_provider_network VALUES (502, 'RiverSideClinic', 'Clinic', 'FamilyMedicine', '456 River Rd', 'Madison', 'WI', '53703', '+17655554321', 'contact@riversideclinic.org', '98-7654321', 'HealthNetB', '2010-06-15', '2030-06-14', 'Active', 12, 25, 0, 'No', 'Yes', 'Yes', 'None', '');
INSERT INTO healthcare_provider_network VALUES (503, 'WestsideDental', 'DentalOffice', 'Dentistry', '789 West St', 'Portland', 'OR', '97201', '+15035551234', 'hello@westsidedental.com', '56-7890123', 'HealthNetC', '2018-03-20', '2028-03-19', 'Active', 5, 2, 0, 'No', 'No', 'No', 'ADA', '');

-- Smart meter reading log
CREATE TABLE smart_meter_reading (
    reading_id INTEGER default 0 not null primary key,
    meter_id TEXT not null,
    customer_id INTEGER,
    reading_timestamp DATE not null,
    kwh_consumed REAL,
    voltage_v REAL,
    current_a REAL,
    power_factor REAL,
    reactive_power_kvar REAL,
    power_quality TEXT,
    meter_status TEXT,
    firmware_version TEXT,
    communication_signal_strength INTEGER,
    billing_cycle TEXT,
    tariff_code TEXT,
    peak_demand_kw REAL,
    demand_timestamp DATE,
    anomaly_flag TEXT,
    latitude REAL,
    longitude REAL,
    installation_date DATE,
    last_maintenance DATE,
    notes TEXT
);
INSERT INTO smart_meter_reading VALUES (601, 'MTR001', 1001, '2023-01-01', 350.5, 230.0, 1.5, 0.98, 5.2, 'Good', 'Active', 'v1.0', -70, '2023Q1', 'T01', 12.5, '2023-01-01', 'None', 40.7128, -74.0060, '2022-06-15', '2023-02-15', '');
INSERT INTO smart_meter_reading VALUES (602, 'MTR002', 1002, '2023-01-01', 420.0, 235.0, 1.8, 0.95, 6.0, 'Good', 'Active', 'v1.0', -68, '2023Q1', 'T02', 14.0, '2023-01-01', 'None', 34.0522, -118.2437, '2022-07-20', '2023-02-20', '');
INSERT INTO smart_meter_reading VALUES (603, 'MTR003', 1003, '2023-01-01', 310.2, 228.0, 1.3, 0.99, 4.8, 'Good', 'Active', 'v1.0', -72, '2023Q1', 'T01', 11.0, '2023-01-01', 'None', 41.8781, -87.6298, '2022-05-10', '2023-01-15', '');

-- Public art installation registry
CREATE TABLE public_art_installation (
    installation_id INTEGER default 0 not null primary key,
    title TEXT not null,
    artist TEXT,
    year_created INTEGER,
    medium TEXT,
    dimensions_cm TEXT,
    location_city TEXT,
    location_state TEXT,
    address TEXT,
    latitude REAL,
    longitude REAL,
    commissioning_body TEXT,
    installation_date DATE,
    removal_date DATE,
    status TEXT,
    funding_source TEXT,
    budget_usd REAL,
    maintenance_contract TEXT,
    last_maintenance DATE,
    public_access TEXT,
    lighting TEXT,
    interactive_features TEXT,
    description TEXT,
    notes TEXT
);
INSERT INTO public_art_installation VALUES (701, 'River Flow', 'Anna Rivera', 2018, 'Steel', '300x200x150', 'Seattle', 'WA', '1 River St', 47.6062, -122.3321, 'CityArtsDept', '2019-04-10', NULL, 'Installed', 'Grant', 250000.0, 'ArtCareCo', '2023-03-01', 'Yes', 'LED', 'Motion Sensors', 'Abstract representation of river currents', '');
INSERT INTO public_art_installation VALUES (702, 'Sky Mirror', 'Liam Chen', 2020, 'Glass', '500x500x50', 'Austin', 'TX', '2 Sunset Blvd', 30.2672, -97.7431, 'CommunityFund', '2021-06-15', NULL, 'Installed', 'Private Donation', 400000.0, 'MirrorMaintain', '2022-11-20', 'Yes', 'Solar Powered', 'Reflective Surface', 'Creates a reflective skyline effect', '');
INSERT INTO public_art_installation VALUES (703, 'Harmony Bells', 'Sofia Patel', 2015, 'Bronze', '250x250x250', 'Boston', 'MA', '3 Beacon St', 42.3601, -71.0589, 'CulturalCouncil', '2016-09-05', NULL, 'Installed', 'City Budget', 150000.0, 'BellTech', '2023-01-10', 'Yes', 'Night Light', 'Wind Activated', 'Set of bells that chime with wind', '');
