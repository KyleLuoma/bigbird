-- City Infrastructure details
CREATE TABLE city_infrastructure
(
    id INTEGER PRIMARY KEY,
    city_name TEXT,
    district TEXT,
    infrastructure_type TEXT,
    construction_year INTEGER,
    capacity INTEGER,
    operational_status TEXT,
    maintenance_cycle_months INTEGER,
    last_maintenance_date DATE,
    next_inspection_date DATE,
    budget_million DECIMAL,
    contractor TEXT,
    owner_agency TEXT,
    geo_latitude DECIMAL,
    geo_longitude DECIMAL,
    environmental_impact_score INTEGER,
    safety_rating INTEGER,
    accessibility_level TEXT,
    remarks TEXT,
    created_at DATE
);

INSERT INTO city_infrastructure (id, city_name, district, infrastructure_type, construction_year, capacity, operational_status, maintenance_cycle_months, last_maintenance_date, next_inspection_date, budget_million, contractor, owner_agency, geo_latitude, geo_longitude, environmental_impact_score, safety_rating, accessibility_level, remarks, created_at)
VALUES (1, 'Metroville', 'Central', 'Bridge', 1998, 5000, 'Active', 12, '2023-06-15', '2024-06-15', 12.5, 'BuildCo', 'CityDept', 40.7128, -74.0060, 78, 9, 'High', 'Routine check required', '2023-01-01');

INSERT INTO city_infrastructure (id, city_name, district, infrastructure_type, construction_year, capacity, operational_status, maintenance_cycle_months, last_maintenance_date, next_inspection_date, budget_million, contractor, owner_agency, geo_latitude, geo_longitude, environmental_impact_score, safety_rating, accessibility_level, remarks, created_at)
VALUES (2, 'Rivergate', 'North', 'WaterTreatment', 2005, 120000, 'Active', 24, '2022-11-20', '2024-11-20', 45.0, 'AquaWorks', 'WaterAuthority', 34.0522, -118.2437, 65, 8, 'Medium', 'Upgrade pending', '2023-02-10');

INSERT INTO city_infrastructure (id, city_name, district, infrastructure_type, construction_year, capacity, operational_status, maintenance_cycle_months, last_maintenance_date, next_inspection_date, budget_million, contractor, owner_agency, geo_latitude, geo_longitude, environmental_impact_score, safety_rating, accessibility_level, remarks, created_at)
VALUES (3, 'Laketown', 'East', 'PowerSubstation', 2010, 250, 'Planned', 18, NULL, NULL, 8.3, 'ElectroBuild', 'EnergyDept', 41.8781, -87.6298, 82, 9, 'High', 'Pending construction permit', '2023-03-05');

-- Urban Traffic Sensor data
CREATE TABLE urban_traffic_sensor
(
    id INTEGER PRIMARY KEY,
    sensor_id TEXT,
    location_description TEXT,
    road_type TEXT,
    latitude DECIMAL,
    longitude DECIMAL,
    installation_date DATE,
    last_calibration_date DATE,
    status TEXT,
    vehicle_count INTEGER,
    average_speed_kph DECIMAL,
    peak_hour_start INTEGER,
    peak_hour_end INTEGER,
    data_transmission_interval_seconds INTEGER,
    battery_level_percent INTEGER,
    firmware_version TEXT,
    maintenance_required BOOLEAN,
    signal_type TEXT,
    manufacturer TEXT,
    installation_phase TEXT,
    city_zone TEXT,
    created_at DATE
);

INSERT INTO urban_traffic_sensor (id, sensor_id, location_description, road_type, latitude, longitude, installation_date, last_calibration_date, status, vehicle_count, average_speed_kph, peak_hour_start, peak_hour_end, data_transmission_interval_seconds, battery_level_percent, firmware_version, maintenance_required, signal_type, manufacturer, installation_phase, city_zone, created_at)
VALUES (1, 'UTS001', 'Main St & 5th Ave', 'Arterial', 40.7128, -74.0060, '2021-04-12', '2023-04-01', 'Online', 12450, 45.6, 7, 9, 60, 87, 'v2.3', FALSE, 'Wireless', 'SensorTech', 'Phase1', 'Downtown', '2023-01-15');

INSERT INTO urban_traffic_sensor (id, sensor_id, location_description, road_type, latitude, longitude, installation_date, last_calibration_date, status, vehicle_count, average_speed_kph, peak_hour_start, peak_hour_end, data_transmission_interval_seconds, battery_level_percent, firmware_version, maintenance_required, signal_type, manufacturer, installation_phase, city_zone, created_at)
VALUES (2, 'UTS002', 'Broadway Near 10th', 'Collector', 34.0522, -118.2437, '2020-09-08', '2023-02-20', 'Online', 9800, 38.2, 8, 10, 30, 76, 'v2.1', FALSE, 'Cellular', 'TrafficSense', 'Phase1', 'Midtown', '2023-01-20');

INSERT INTO urban_traffic_sensor (id, sensor_id, location_description, road_type, latitude, longitude, installation_date, last_calibration_date, status, vehicle_count, average_speed_kph, peak_hour_start, peak_hour_end, data_transmission_interval_seconds, battery_level_percent, firmware_version, maintenance_required, signal_type, manufacturer, installation_phase, city_zone, created_at)
VALUES (3, 'UTS003', 'Lakeview Blvd', 'Residential', 41.8781, -87.6298, '2022-01-15', '2023-05-05', 'Offline', 2300, 25.0, 6, 8, 120, 45, 'v1.9', TRUE, 'WiFi', 'MetroSensors', 'Phase2', 'NorthSide', '2023-02-01');

-- Renewable Energy Plant catalog
CREATE TABLE renewable_energy_plant
(
    id INTEGER PRIMARY KEY,
    plant_name TEXT,
    energy_type TEXT,
    capacity_mw DECIMAL,
    commissioning_date DATE,
    operator TEXT,
    grid_connection_point TEXT,
    latitude DECIMAL,
    longitude DECIMAL,
    annual_generation_gwh DECIMAL,
    capacity_factor_percent DECIMAL,
    environmental_license_number TEXT,
    status TEXT,
    maintenance_contract TEXT,
    fuel_supply_source TEXT,
    emission_rate_tons_per_year DECIMAL,
    land_area_hectares DECIMAL,
    owner_company TEXT,
    technology_provider TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO renewable_energy_plant (id, plant_name, energy_type, capacity_mw, commissioning_date, operator, grid_connection_point, latitude, longitude, annual_generation_gwh, capacity_factor_percent, environmental_license_number, status, maintenance_contract, fuel_supply_source, emission_rate_tons_per_year, land_area_hectares, owner_company, technology_provider, created_at, updated_at)
VALUES (1, 'Solar Ridge', 'Solar', 150.0, '2019-03-10', 'SunPowerOps', 'NodeA', 35.6895, 139.6917, 240.5, 18.2, 'ELN-00123', 'Active', 'SolarMaintainCo', NULL, 0.0, 500.0, 'GreenEnergyInc', 'SunTech', '2023-01-01', '2023-06-01');

INSERT INTO renewable_energy_plant (id, plant_name, energy_type, capacity_mw, commissioning_date, operator, grid_connection_point, latitude, longitude, annual_generation_gwh, capacity_factor_percent, environmental_license_number, status, maintenance_contract, fuel_supply_source, emission_rate_tons_per_year, land_area_hectares, owner_company, technology_provider, created_at, updated_at)
VALUES (2, 'Wind Crest', 'Wind', 300.0, '2020-07-22', 'WindFlowLtd', 'NodeB', 51.5074, -0.1278, 720.0, 27.0, 'ELN-00456', 'Active', 'WindCareServices', NULL, 0.0, 800.0, 'EcoWindPartners', 'VentoTech', '2023-02-15', '2023-06-15');

INSERT INTO renewable_energy_plant (id, plant_name, energy_type, capacity_mw, commissioning_date, operator, grid_connection_point, latitude, longitude, annual_generation_gwh, capacity_factor_percent, environmental_license_number, status, maintenance_contract, fuel_supply_source, emission_rate_tons_per_year, land_area_hectares, owner_company, technology_provider, created_at, updated_at)
VALUES (3, 'Hydro Stream', 'Hydro', 500.0, '2015-11-05', 'AquaPower', 'NodeC', 48.8566, 2.3522, 2100.0, 48.0, 'ELN-00987', 'Active', 'HydroMaint', 'RiverX', 12.5, 1200.0, 'BlueWaterCorp', 'HydroDynamics', '2023-03-10', '2023-06-20');

-- National Healthcare Facility registry
CREATE TABLE national_healthcare_facility
(
    id INTEGER PRIMARY KEY,
    facility_name TEXT,
    facility_type TEXT,
    city TEXT,
    state TEXT,
    bed_count INTEGER,
    icu_bed_count INTEGER,
    established_date DATE,
    owner_agency TEXT,
    operating_status TEXT,
    primary_specialty TEXT,
    affiliated_university TEXT,
    longitude DECIMAL,
    latitude DECIMAL,
    annual_visits INTEGER,
    staff_count INTEGER,
    license_number TEXT,
    accreditation_level TEXT,
    contact_number TEXT,
    created_at DATE
);

INSERT INTO national_healthcare_facility (id, facility_name, facility_type, city, state, bed_count, icu_bed_count, established_date, owner_agency, operating_status, primary_specialty, affiliated_university, longitude, latitude, annual_visits, staff_count, license_number, accreditation_level, contact_number, created_at)
VALUES (1, 'Central Medical Center', 'Hospital', 'Metroville', 'NY', 850, 120, '1990-05-12', 'StateHealthDept', 'Operating', 'General', 'Metro University', -74.0060, 40.7128, 450000, 1500, 'LIC-1001', 'Level1', '5551234567', '2023-01-01');

INSERT INTO national_healthcare_facility (id, facility_name, facility_type, city, state, bed_count, icu_bed_count, established_date, owner_agency, operating_status, primary_specialty, affiliated_university, longitude, latitude, annual_visits, staff_count, license_number, accreditation_level, contact_number, created_at)
VALUES (2, 'Rivergate Children Hospital', 'Specialty', 'Rivergate', 'CA', 300, 50, '2005-09-30', 'CountyHealthBoard', 'Operating', 'Pediatrics', 'Rivergate College', -118.2437, 34.0522, 180000, 800, 'LIC-2002', 'Level2', '5559876543', '2023-02-10');

INSERT INTO national_healthcare_facility (id, facility_name, facility_type, city, state, bed_count, icu_bed_count, established_date, owner_agency, operating_status, primary_specialty, affiliated_university, longitude, latitude, annual_visits, staff_count, license_number, accreditation_level, contact_number, created_at)
VALUES (3, 'Laketown Mental Health Institute', 'Clinic', 'Laketown', 'IL', 120, 10, '2012-03-20', 'StateHealthDept', 'Operating', 'Psychiatry', 'Laketown University', -87.6298, 41.8781, 75000, 300, 'LIC-3003', 'Level3', '5552223333', '2023-03-05');

-- Academic Journal Publication records
CREATE TABLE academic_journal_publication
(
    id INTEGER PRIMARY KEY,
    journal_name TEXT,
    issue_number INTEGER,
    volume INTEGER,
    publication_date DATE,
    doi TEXT,
    title TEXT,
    abstract TEXT,
    author_list TEXT,
    corresponding_author TEXT,
    pages TEXT,
    keywords TEXT,
    impact_factor DECIMAL,
    publisher TEXT,
    issn TEXT,
    language TEXT,
    peer_review_status TEXT,
    open_access BOOLEAN,
    funding_agency TEXT,
    grant_number TEXT,
    submission_deadline DATE,
    article_type TEXT,
    created_at DATE
);

INSERT INTO academic_journal_publication (id, journal_name, issue_number, volume, publication_date, doi, title, abstract, author_list, corresponding_author, pages, keywords, impact_factor, publisher, issn, language, peer_review_status, open_access, funding_agency, grant_number, submission_deadline, article_type, created_at)
VALUES (1, 'Journal of Hero Studies', 7, 12, '2023-04-15', '10.1234/jhs.2023.007', 'The Evolution of Superhero Narratives', 'An analysis of narrative structures...', 'Doe J; Smith A; Lee K', 'Doe J', '1-15', 'superhero, narrative, culture', 4.5, 'HeroPress', '1234-5678', 'English', 'Accepted', TRUE, 'National Arts Council', 'NAC-2022-01', '2023-01-31', 'Research Article', '2023-02-01');

INSERT INTO academic_journal_publication (id, journal_name, issue_number, volume, publication_date, doi, title, abstract, author_list, corresponding_author, pages, keywords, impact_factor, publisher, issn, language, peer_review_status, open_access, funding_agency, grant_number, submission_deadline, article_type, created_at)
VALUES (2, 'International Comics Review', 3, 8, '2023-05-20', '10.5678/icr.2023.003', 'Crossovers and Multiverse Consistency', 'Explores the challenges of cross-universe storytelling...', 'Kim L; Patel R', 'Kim L', '16-30', 'crossover, multiverse, consistency', 3.2, 'ComicsWorld', '8765-4321', 'English', 'Under Review', FALSE, 'Global Storytelling Fund', 'GSF-2023-05', '2023-02-28', 'Review Article', '2023-03-01');

INSERT INTO academic_journal_publication (id, journal_name, issue_number, volume, publication_date, doi, title, abstract, author_list, corresponding_author, pages, keywords, impact_factor, publisher, issn, language, peer_review_status, open_access, funding_agency, grant_number, submission_deadline, article_type, created_at)
VALUES (3, 'Science of Powers', 12, 15, '2023-06-10', '10.9012/sop.2023.012', 'Quantifying Superhuman Abilities', 'A multidisciplinary approach to measuring...', 'Nguyen T; Ocampo M', 'Nguyen T', '31-45', 'powers, measurement, biology', 5.0, 'SciencePress', '1122-3344', 'English', 'Accepted', TRUE, 'Tech Innovation Grant', 'TIG-2022-09', '2023-03-15', 'Research Article', '2023-04-01');

-- Legal Proceeding records
CREATE TABLE legal_proceeding
(
    id INTEGER PRIMARY KEY,
    case_number TEXT,
    court_name TEXT,
    jurisdiction TEXT,
    filing_date DATE,
    case_type TEXT,
    plaintiff TEXT,
    defendant TEXT,
    judge TEXT,
    status TEXT,
    hearing_date DATE,
    verdict_date DATE,
    outcome TEXT,
    penalty_amount DECIMAL,
    legal_representative TEXT,
    law_firm TEXT,
    case_summary TEXT,
    evidence_count INTEGER,
    witness_count INTEGER,
    appeal_filed BOOLEAN,
    appeal_outcome TEXT,
    created_at DATE
);

INSERT INTO legal_proceeding (id, case_number, court_name, jurisdiction, filing_date, case_type, plaintiff, defendant, judge, status, hearing_date, verdict_date, outcome, penalty_amount, legal_representative, law_firm, case_summary, evidence_count, witness_count, appeal_filed, appeal_outcome, created_at)
VALUES (1, 'CIV-2023-001', 'Supreme Court', 'State', '2023-01-10', 'Civil', 'Metroville City', 'HeroCorp', 'Judge Adams', 'Closed', '2023-03-15', '2023-04-01', 'Settled', 250000.00, 'Laura Smith', 'Smith & Partners', 'Dispute over property rights', 12, 5, FALSE, NULL, '2023-01-12');

INSERT INTO legal_proceeding (id, case_number, court_name, jurisdiction, filing_date, case_type, plaintiff, defendant, judge, status, hearing_date, verdict_date, outcome, penalty_amount, legal_representative, law_firm, case_summary, evidence_count, witness_count, appeal_filed, appeal_outcome, created_at)
VALUES (2, 'CRIM-2023-045', 'District Court', 'County', '2023-02-05', 'Criminal', 'State', 'VillainX', 'Judge Brown', 'Open', '2023-05-20', NULL, NULL, NULL, 'Michael Lee', 'Lee Legal', 'Alleged fraud and theft', 20, 8, TRUE, NULL, '2023-02-07');

INSERT INTO legal_proceeding (id, case_number, court_name, jurisdiction, filing_date, case_type, plaintiff, defendant, judge, status, hearing_date, verdict_date, outcome, penalty_amount, legal_representative, law_firm, case_summary, evidence_count, witness_count, appeal_filed, appeal_outcome, created_at)
VALUES (3, 'BUS-2022-110', 'Commercial Tribunal', 'Federal', '2022-11-15', 'Business', 'TechCorp', 'SupplyCo', 'Judge Davis', 'Closed', '2022-12-10', '2023-01-05', 'Dismissed', 0.00, 'Sandra Patel', 'Patel Associates', 'Contract breach allegations', 5, 3, FALSE, NULL, '2022-11-18');

-- Financial Market Index data
CREATE TABLE financial_market_index
(
    id INTEGER PRIMARY KEY,
    index_name TEXT,
    symbol TEXT,
    region TEXT,
    currency TEXT,
    base_date DATE,
    base_value DECIMAL,
    current_value DECIMAL,
    daily_change_percent DECIMAL,
    annual_return_percent DECIMAL,
    market_capitalization_billion DECIMAL,
    sector TEXT,
    methodology TEXT,
    provider TEXT,
    last_update TIMESTAMP,
    description TEXT,
    dividend_yield_percent DECIMAL,
    pe_ratio DECIMAL,
    beta DECIMAL,
    volume_average INTEGER,
    created_at DATE,
    updated_at DATE
);

INSERT INTO financial_market_index (id, index_name, symbol, region, currency, base_date, base_value, current_value, daily_change_percent, annual_return_percent, market_capitalization_billion, sector, methodology, provider, last_update, description, dividend_yield_percent, pe_ratio, beta, volume_average, created_at, updated_at)
VALUES (1, 'Global Hero Index', 'GHI', 'Global', 'USD', '2000-01-01', 1000.00, 1250.45, 0.75, 12.5, 3500.00, 'Entertainment', 'Market Cap Weighted', 'FinanceDataInc', '2023-06-30 15:30:00', 'Tracks the performance of superhero media companies', 1.8, 22.5, 0.9, 1500000, '2023-01-01', '2023-06-30');

INSERT INTO financial_market_index (id, index_name, symbol, region, currency, base_date, base_value, current_value, daily_change_percent, annual_return_percent, market_capitalization_billion, sector, methodology, provider, last_update, description, dividend_yield_percent, pe_ratio, beta, volume_average, created_at, updated_at)
VALUES (2, 'Arcade Tech Index', 'ATI', 'North America', 'USD', '2005-01-01', 2000.00, 2105.30, 0.45, 8.2, 4200.00, 'Technology', 'Free Float', 'MarketAnalyticsCo', '2023-06-30 16:00:00', 'Includes firms developing gaming and interactive media', 2.1, 18.7, 1.1, 2000000, '2023-02-01', '2023-06-30');

INSERT INTO financial_market_index (id, index_name, symbol, region, currency, base_date, base_value, current_value, daily_change_percent, annual_return_percent, market_capitalization_billion, sector, methodology, provider, last_update, description, dividend_yield_percent, pe_ratio, beta, volume_average, created_at, updated_at)
VALUES (3, 'Renewable Power Index', 'RPI', 'Europe', 'EUR', '2010-01-01', 1500.00, 1720.80, 0.60, 15.0, 2800.00, 'Energy', 'Price Weighted', 'EcoFinance', '2023-06-30 14:45:00', 'Tracks listed companies in renewable energy sector', 3.0, 25.3, 0.7, 1200000, '2023-03-01', '2023-06-30');

-- Aerospace Manufacturing Facility directory
CREATE TABLE aerospace_manufacturing_facility
(
    id INTEGER PRIMARY KEY,
    facility_name TEXT,
    location_city TEXT,
    location_state TEXT,
    established_year INTEGER,
    primary_product TEXT,
    annual_output_units INTEGER,
    employee_count INTEGER,
    owner_company TEXT,
    certification TEXT,
    safety_rating INTEGER,
    environmental_compliance TEXT,
    latitude DECIMAL,
    longitude DECIMAL,
    operational_status TEXT,
    last_audit_date DATE,
    lead_engineer TEXT,
    contact_email TEXT,
    website TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO aerospace_manufacturing_facility (id, facility_name, location_city, location_state, established_year, primary_product, annual_output_units, employee_count, owner_company, certification, safety_rating, environmental_compliance, latitude, longitude, operational_status, last_audit_date, lead_engineer, contact_email, website, created_at, updated_at)
VALUES (1, 'Starship Works', 'Orion', 'CA', 1998, 'Spacecraft Hulls', 500, 1200, 'Galactic Industries', 'ISO9001', 9, 'Compliant', 34.0522, -118.2437, 'Active', '2023-04-10', 'Dr Emily Chen', 'contact@starshipworks.com', 'http://starshipworks.com', '2023-01-05', '2023-06-01');

INSERT INTO aerospace_manufacturing_facility (id, facility_name, location_city, location_state, established_year, primary_product, annual_output_units, employee_count, owner_company, certification, safety_rating, environmental_compliance, latitude, longitude, operational_status, last_audit_date, lead_engineer, contact_email, website, created_at, updated_at)
VALUES (2, 'Nebula Propulsion', 'Nova', 'TX', 2005, 'Ion Thrusters', 2000, 850, 'Nebula Corp', 'ISO14001', 8, 'Compliant', 29.7604, -95.3698, 'Active', '2023-05-22', 'Dr Alan Murray', 'info@nebulaprop.com', 'http://nebulaprop.com', '2023-02-12', '2023-06-10');

INSERT INTO aerospace_manufacturing_facility (id, facility_name, location_city, location_state, established_year, primary_product, annual_output_units, employee_count, owner_company, certification, safety_rating, environmental_compliance, latitude, longitude, operational_status, last_audit_date, lead_engineer, contact_email, website, created_at, updated_at)
VALUES (3, 'Quantum Avionics', 'Quantum City', 'WA', 2012, 'Navigation Systems', 3500, 950, 'Quantum Dynamics', 'AS9100', 9, 'Compliant', 47.6062, -122.3321, 'Planned', NULL, 'Dr Maya Patel', 'support@quantumav.com', 'http://quantumav.com', '2023-03-20', '2023-06-15');

-- Meteorological Station registry
CREATE TABLE meteorological_station
(
    id INTEGER PRIMARY KEY,
    station_code TEXT,
    station_name TEXT,
    country TEXT,
    region TEXT,
    latitude DECIMAL,
    longitude DECIMAL,
    elevation_m INTEGER,
    installation_date DATE,
    operating_agency TEXT,
    data_frequency_minutes INTEGER,
    temperature_celsius DECIMAL,
    humidity_percent DECIMAL,
    wind_speed_kph DECIMAL,
    wind_direction TEXT,
    precipitation_mm DECIMAL,
    solar_radiation_wm2 DECIMAL,
    air_quality_index INTEGER,
    status TEXT,
    last_maintenance_date DATE,
    next_calibration_date DATE,
    created_at DATE
);

INSERT INTO meteorological_station (id, station_code, station_name, country, region, latitude, longitude, elevation_m, installation_date, operating_agency, data_frequency_minutes, temperature_celsius, humidity_percent, wind_speed_kph, wind_direction, precipitation_mm, solar_radiation_wm2, air_quality_index, status, last_maintenance_date, next_calibration_date, created_at)
VALUES (1, 'MS001', 'Coastal Weather Hub', 'USA', 'West Coast', 36.7783, -119.4179, 15, '2015-06-01', 'National Weather Service', 10, 22.5, 55, 12.3, 'NW', 0.0, 850.0, 42, 'Active', '2023-03-01', '2024-03-01', '2023-01-01');

INSERT INTO meteorological_station (id, station_code, station_name, country, region, latitude, longitude, elevation_m, installation_date, operating_agency, data_frequency_minutes, temperature_celsius, humidity_percent, wind_speed_kph, wind_direction, precipitation_mm, solar_radiation_wm2, air_quality_index, status, last_maintenance_date, next_calibration_date, created_at)
VALUES (2, 'MS002', 'Mountain Peak Station', 'Canada', 'Rockies', 51.1784, -115.5708, 2300, '2018-09-15', 'Environment Canada', 15, -5.2, 70, 8.1, 'E', 0.2, 620.0, 30, 'Active', '2023-04-10', '2024-04-10', '2023-02-10');

INSERT INTO meteorological_station (id, station_code, station_name, country, region, latitude, longitude, elevation_m, installation_date, operating_agency, data_frequency_minutes, temperature_celsius, humidity_percent, wind_speed_kph, wind_direction, precipitation_mm, solar_radiation_wm2, air_quality_index, status, last_maintenance_date, next_calibration_date, created_at)
VALUES (3, 'MS003', 'Desert Climate Observatory', 'Australia', 'Outback', -25.2744, 133.7751, 200, '2020-01-20', 'Bureau of Meteorology', 20, 35.0, 20, 5.0, 'S', 0.0, 900.0, 20, 'Active', '2023-05-05', '2024-05-05', '2023-03-05');

-- Cultural Heritage Site catalog
CREATE TABLE cultural_heritage_site
(
    id INTEGER PRIMARY KEY,
    site_name TEXT,
    site_type TEXT,
    country TEXT,
    region TEXT,
    latitude DECIMAL,
    longitude DECIMAL,
    year_inscribed INTEGER,
    governing_body TEXT,
    visitor_capacity_per_year INTEGER,
    annual_visitors INTEGER,
    conservation_status TEXT,
    historical_period TEXT,
    architectural_style TEXT,
    main_attraction TEXT,
    accessibility TEXT,
    entry_fee_currency TEXT,
    entry_fee_amount DECIMAL,
    official_website TEXT,
    status TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO cultural_heritage_site (id, site_name, site_type, country, region, latitude, longitude, year_inscribed, governing_body, visitor_capacity_per_year, annual_visitors, conservation_status, historical_period, architectural_style, main_attraction, accessibility, entry_fee_currency, entry_fee_amount, official_website, status, created_at, updated_at)
VALUES (1, 'Ancient Citadel', 'Monument', 'Greece', 'Attica', 37.9838, 23.7275, 1987, 'UNESCO', 500000, 420000, 'Well Preserved', 'Classical', 'Doric', 'Temple of Athena', 'Public Transport', 'EUR', 12.00, 'http://ancientcitadel.gr', 'Open', '2023-01-01', '2023-06-01');

INSERT INTO cultural_heritage_site (id, site_name, site_type, country, region, latitude, longitude, year_inscribed, governing_body, visitor_capacity_per_year, annual_visitors, conservation_status, historical_period, architectural_style, main_attraction, accessibility, entry_fee_currency, entry_fee_amount, official_website, status, created_at, updated_at)
VALUES (2, 'Royal Palace Gardens', 'Site', 'United Kingdom', 'London', 51.5074, -0.1278, 1995, 'National Heritage', 800000, 750000, 'Excellent', 'Victorian', 'Gothic Revival', 'Grand Fountain', 'Wheelchair Friendly', 'GBP', 15.00, 'http://royalpalaceuk.co.uk', 'Open', '2023-02-10', '2023-06-15');

INSERT INTO cultural_heritage_site (id, site_name, site_type, country, region, latitude, longitude, year_inscribed, governing_body, visitor_capacity_per_year, annual_visitors, conservation_status, historical_period, architectural_style, main_attraction, accessibility, entry_fee_currency, entry_fee_amount, official_website, status, created_at, updated_at)
VALUES (3, 'Sunrise Megalith', 'Archaeological Site', 'Peru', 'Cusco', -13.1631, -72.5450, 2001, 'Cultural Ministry', 300000, 250000, 'Protected', 'Pre-Columbian', 'Stone Construction', 'Stone Alignments', 'Limited Access', 'PEN', 8.00, 'http://sunrisemegalith.pe', 'Open', '2023-03-20', '2023-06-20');