-- Regional weather observation stations
CREATE TABLE regional_weather_observations (
    station_id TEXT PRIMARY KEY,
    station_name TEXT,
    latitude REAL,
    longitude REAL,
    elevation_m INTEGER,
    obs_date DATE,
    temperature_c REAL,
    dew_point_c REAL,
    humidity_percent REAL,
    wind_speed_kph REAL,
    wind_dir_deg INTEGER,
    precipitation_mm REAL,
    solar_radiation_wm2 REAL,
    visibility_km REAL,
    pressure_hpa REAL,
    weather_code INTEGER,
    sky_condition TEXT,
    snowfall_cm REAL,
    uv_index INTEGER,
    observation_quality TEXT,
    data_source TEXT,
    notes TEXT
);
INSERT INTO regional_weather_observations VALUES ('ST001','NorthHill',45.12,-122.45,320,'2023-06-01',22.5,10.2,55.0,12.3,180,0.0,560.0,10.0,1013.2,1,'Clear',0.0,5,'Good','NOAA','Routine');
INSERT INTO regional_weather_observations VALUES ('ST002','RiverValley',44.85,-123.10,150,'2023-06-01',18.7,8.5,60.0,8.0,90,2.1,480.0,12.5,1010.5,2,'PartlyCloudy',0.0,6,'Moderate','StateWeather','Low visibility');
INSERT INTO regional_weather_observations VALUES ('ST003','LakeSide',45.50,-122.80,200,'2023-06-01',20.1,9.3,58.0,10.5,270,0.0,520.0,9.8,1012.0,1,'Clear',0.0,4,'Good','NOAA','No anomalies');

-- Public transport vehicle maintenance logs
CREATE TABLE public_transport_maintenance_logs (
    maintenance_id TEXT PRIMARY KEY,
    vehicle_id TEXT,
    vehicle_type TEXT,
    depot_code TEXT,
    maintenance_date DATE,
    odometer_km INTEGER,
    service_type TEXT,
    engine_check TEXT,
    transmission_check TEXT,
    brake_system TEXT,
    electrical_system TEXT,
    HVAC_status TEXT,
    tire_condition TEXT,
    fuel_filter_status TEXT,
    oil_change TEXT,
    next_service_due_km INTEGER,
    technician_id TEXT,
    labor_hours REAL,
    parts_cost REAL,
    total_cost REAL,
    maintenance_notes TEXT,
    compliance_flag TEXT
);
INSERT INTO public_transport_maintenance_logs VALUES ('MNT001','BUS1001','Bus','DPT01','2023-05-15',45200,'FullService','OK','OK','Replaced','OK','OK','Good','OK','Done',50000,'TECH07',5.5,250.00,600.00,'All systems nominal','Y');
INSERT INTO public_transport_maintenance_logs VALUES ('MNT002','TRAM2003','Tram','DPT02','2023-05-20',31000,'BrakeInspection','OK','OK','Repaired','OK','OK','Good','OK','N/A',35000,'TECH12',3.0,120.00,300.00,'Brake pads replaced','Y');
INSERT INTO public_transport_maintenance_logs VALUES ('MNT003','BUS1015','Bus','DPT01','2023-05-22',47000,'EngineTune','Adjusted','OK','OK','OK','OK','Fair','OK','Done',52000,'TECH07',4.0,180.00,500.00,'Engine timing corrected','Y');

-- City park facilities inventory
CREATE TABLE city_park_facilities (
    facility_id TEXT PRIMARY KEY,
    park_name TEXT,
    facility_type TEXT,
    capacity INTEGER,
    surface_material TEXT,
    built_year INTEGER,
    last_renovation_year INTEGER,
    lighting_type TEXT,
    wheelchair_accessible TEXT,
    restroom_available TEXT,
    water_fountain_count INTEGER,
    picnic_table_count INTEGER,
    playground_equipment_count INTEGER,
    sports_field_type TEXT,
    concession_stand TEXT,
    parking_spots INTEGER,
    security_cameras INTEGER,
    maintenance_contract TEXT,
    annual_visitors_est INTEGER,
    operating_hours TEXT,
    seasonal_closure TEXT,
    notes TEXT
);
INSERT INTO city_park_facilities VALUES ('FAC001','RiverPark','Playground',50,'Rubber',1998,2020,'LED','Y','Y',4,6,12,'N/A','N/A',20,8,'CityContract','15000','06:00-22:00','None','New equipment added 2020');
INSERT INTO city_park_facilities VALUES ('FAC002','MapleReserve','BasketballCourt',30,'Concrete',2005,2018,'Fluorescent','Y','Y',2,0,0,'Hardcourt','Yes',10,4,'PrivateVendor','8000','07:00-21:00','Winter','Repaired surface 2018');
INSERT INTO city_park_facilities VALUES ('FAC003','SunsetGardens','PicnicArea',100,'Grass',2010,2021,'Solar','Y','N',6,12,0,'N/A','Yes',30,6,'CityContract','22000','05:00-23:00','None','Added new BBQ stations');

-- Art installation inventory
CREATE TABLE art_installation_inventory (
    installation_id TEXT PRIMARY KEY,
    title TEXT,
    artist_name TEXT,
    medium TEXT,
    year_created INTEGER,
    installation_date DATE,
    location_description TEXT,
    gps_latitude REAL,
    gps_longitude REAL,
    dimensions_cm TEXT,
    weight_kg REAL,
    lighting_requirements TEXT,
    maintenance_schedule TEXT,
    condition_status TEXT,
    insurance_value_usd REAL,
    donor_name TEXT,
    acquisition_method TEXT,
    public_interaction_allowed TEXT,
    nearby_facilities TEXT,
    last_inspection_date DATE,
    notes TEXT,
    catalog_number TEXT
);
INSERT INTO art_installation_inventory VALUES ('ART001','Harmony','Jane Doe','Bronze',2015,'2016-04-10','Main Plaza','45.123','-122.456','150x80x60','350','Spotlight','Annual','Good','25000','CityFund','Purchase','Y','Bench','2023-03-15','No corrosion','CATH001');
INSERT INTO art_installation_inventory VALUES ('ART002','Waves','John Smith','Stainless Steel',2018,'2019-07-22','River Walk','45.125','-122.459','200x50x30','500','LED','Biannual','Excellent','40000','PrivateDonor','Gift','N','Fountain','2023-02-10','No rust','CATH002');
INSERT INTO art_installation_inventory VALUES ('ART003','Dreamscape','Liu Wei','Mosaic',2020,'2020-09-05','City Library Lawn','45.127','-122.462','120x120x20','200','Natural','Quarterly','Fair','15000','LibraryGrant','Commission','Y','Reading Area','2023-01-20','Tiles need replacement','CATH003');

-- Community health clinic staff roster
CREATE TABLE community_health_clinic_staff (
    staff_id TEXT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    role TEXT,
    department TEXT,
    license_number TEXT,
    license_type TEXT,
    certification TEXT,
    hire_date DATE,
    full_time_flag TEXT,
    shift VARCHAR(20),
    email TEXT,
    phone TEXT,
    supervision_level TEXT,
    years_experience INTEGER,
    languages_spoken TEXT,
    on_call TEXT,
    current_patient_load INTEGER,
    annual_leave_days INTEGER,
    continuing_education_credits REAL,
    notes TEXT,
    status TEXT
);
INSERT INTO community_health_clinic_staff VALUES ('STF001','Maria','Gonzalez','Physician','PrimaryCare','LIC12345','MD','BoardCertified','2015-08-01','Y','Day','mgonzalez@clinic.org','5551234567','Attending',8,'English Spanish','Y',120,15,45.0,'Lead physician','Active');
INSERT INTO community_health_clinic_staff VALUES ('STF002','Aaron','Lee','Nurse','Pediatrics','LIC54321','RN','PediatricRN','2018-03-12','Y','Night','alee@clinic.org','5559876543','RN',5,'English','N',80,12,30.5,'Night shift nurse','Active');
INSERT INTO community_health_clinic_staff VALUES ('STF003','Sofia','Patel','MedicalAssistant','FamilyMedicine','LIC67890','MA','CertifiedMA','2020-11-20','Y','Swing','spatel@clinic.org','5552345678','MA',2,'English Hindi','Y',40,10,12.0','New hire','Active');

-- Renewable energy asset registry
CREATE TABLE renewable_energy_asset_registry (
    asset_id TEXT PRIMARY KEY,
    asset_type TEXT,
    capacity_mw REAL,
    installation_date DATE,
    location_name TEXT,
    latitude REAL,
    longitude REAL,
    owner_entity TEXT,
    operating_status TEXT,
    last_inspection DATE,
    expected_lifetime_years INTEGER,
    actual_output_mwh_year REAL,
    maintenance_contract TEXT,
    subsidy_amount_usd REAL,
    performance_ratio REAL,
    grid_connection_point TEXT,
    inverter_count INTEGER,
    panel_model TEXT,
    turbine_model TEXT,
    decommission_date DATE,
    notes TEXT,
    registration_number TEXT
);
INSERT INTO renewable_energy_asset_registry VALUES ('REN001','SolarFarm',15.2,'2019-06-15','West Hills','45.130','-122.470','GreenPowerCo','Active','2023-04-01',25,132000,'SolarServ','500000',0.85,'NodeA',640,'SunMax3000','N/A','N/A','No issues','REG001');
INSERT INTO renewable_energy_asset_registry VALUES ('REN002','WindPark',30.0,'2017-09-10','Prairie Ridge','45.135','-122.480','WindEnergyLtd','Active','2023-03-20',30,250000,'WindServ','750000',0.78','NodeB',45,'N/A','WindBladeX','N/A','Planned 2047','REG002');
INSERT INTO renewable_energy_asset_registry VALUES ('REN003','HydroPlant',5.5,'2015-04-22','River Bend','45.140','-122.485','HydroSolutions','Active','2023-02-15',40,48300,'HydroServ','300000',0.90','NodeC','N/A','N/A','HydroTurbY','N/A','Planned 2055','REG003');

-- Water quality testing results
CREATE TABLE water_quality_testing_results (
    sample_id TEXT PRIMARY KEY,
    collection_date DATE,
    site_name TEXT,
    latitude REAL,
    longitude REAL,
    ph_level REAL,
    temperature_c REAL,
    dissolved_oxygen_mg_l REAL,
    turbidity_ntu REAL,
    conductivity_us_cm REAL,
    nitrate_mg_l REAL,
    phosphate_mg_l REAL,
    coliform_cfu_100ml INTEGER,
    lead_ppb REAL,
    arsenic_ppb REAL,
    mercury_ppb REAL,
    sampling_method TEXT,
    lab_name TEXT,
    analyst_name TEXT,
    result_status TEXT,
    report_url TEXT,
    notes TEXT
);
INSERT INTO water_quality_testing_results VALUES ('SMP001','2023-05-01','North Creek','45.150','-122.490',7.2,15.0,8.5,2.1,150,0.4,0.1,10,5.0,2.0,0.5,'Grab','StateLab','Emily Clark','Approved','http://example.com/report1','All parameters within limits');
INSERT INTO water_quality_testing_results VALUES ('SMP002','2023-05-03','South Lake','45.155','-122.495',6.8,14.5,7.9,3.0,140,0.6,0.2,25,12.0,3.5,0.8,'Bottle','PrivateLab','Michael Reed','Review','http://example.com/report2','Elevated lead detected');
INSERT INTO water_quality_testing_results VALUES ('SMP003','2023-05-05','East Reservoir','45.160','-122.500',7.5,16.0,9.0,1.5,160,0.3,0.05,5,3.0,1.0,0.3,'Grab','StateLab','Laura Kim','Approved','http://example.com/report3','Good overall quality');

-- Traffic signal configuration
CREATE TABLE traffic_signal_configuration (
    signal_id TEXT PRIMARY KEY,
    intersection_name TEXT,
    latitude REAL,
    longitude REAL,
    controller_model TEXT,
    firmware_version TEXT,
    cycle_length_seconds INTEGER,
    green_time_ns INTEGER,
    green_time_ew INTEGER,
    yellow_time_ns INTEGER,
    yellow_time_ew INTEGER,
    red_clearance_time INTEGER,
    pedestrian_phase_flag TEXT,
    detection_type TEXT,
    max_vehicle_speed_kph INTEGER,
    coordination_group TEXT,
    last_maintenance DATE,
    maintenance_provider TEXT,
    operational_status TEXT,
    notes TEXT,
    installation_year INTEGER,
    city_zone TEXT
);
INSERT INTO traffic_signal_configuration VALUES ('SIG001','5th & Main','45.165','-122.505','CtrlX100','v2.3',120,30,40,5,5,2,'Y','InductiveLoop',50,'GroupA','2023-01-15','TrafficServ','Active','Standard timing','2010','North');
INSERT INTO traffic_signal_configuration VALUES ('SIG002','8th & Pine','45.170','-122.510','CtrlY200','v1.9',110,25,35,4,4,3,'N','Video','45','GroupB','2022-11-20','SignalTech','Active','Adjusted for school zone','2012','East');
INSERT INTO traffic_signal_configuration VALUES ('SIG003','12th & Oak','45.175','-122.515','CtrlZ300','v3.1',130,35,45,6,6,2,'Y','Radar','55','GroupA','2023-03-10','CityWorks','Active','Added pedestrian scramble','2015','South');

-- Library archival collections
CREATE TABLE library_archival_collections (
    collection_id TEXT PRIMARY KEY,
    collection_name TEXT,
    subject_area TEXT,
    date_range_start DATE,
    date_range_end DATE,
    total_items INTEGER,
    format_type TEXT,
    storage_location TEXT,
    accession_number TEXT,
    condition_rating TEXT,
    digitization_status TEXT,
    last_inventory DATE,
    curator_name TEXT,
    funding_source TEXT,
    access_restrictions TEXT,
    preservation_method TEXT,
    contact_email TEXT,
    notes TEXT,
    related_project TEXT,
    public_use_flag TEXT,
    embargo_end_date DATE,
    catalog_reference TEXT
);
INSERT INTO library_archival_collections VALUES ('ARC001','County Board Minutes','Government','1900-01-01','2020-12-31',12500,'Paper','VaultA','ACC1001','Good','Partial','2023-02-01','Helen Brooks','CountyFund','Closed','ColdStorage','hb@library.org','Digitization in progress','HistoricalRecords','N','2030-01-01','REF001');
INSERT INTO library_archival_collections VALUES ('ARC002','Local Newspaper Clippings','Media','1850-01-01','1950-12-31',8000,'Print','VaultB','ACC1002','Fair','None','2022-12-10','James Lee','Grant2021','Restricted','Microfilm','jl@library.org','Requires handling gloves','MediaArchive','N','2025-06-30','REF002');
INSERT INTO library_archival_collections VALUES ('ARC003','Oral History Interviews','Sociology','2000-01-01','2022-12-31',350,'Audio','DigitalRoom','ACC1003','Excellent','Complete','2023-04-15','Maria Patel','DonorGift','Open','Digital','mp@library.org','Available for researchers','OralHistoryProject','Y','N/A','REF003');

-- Municipal budget lineitems
CREATE TABLE municipal_budget_lineitems (
    lineitem_id TEXT PRIMARY KEY,
    fiscal_year INTEGER,
    department TEXT,
    category TEXT,
    subcategory TEXT,
    expenditure_type TEXT,
    amount_usd REAL,
    allocated_funds REAL,
    projected_spend REAL,
    actual_spend REAL,
    variance_usd REAL,
    funding_source TEXT,
    approval_date DATE,
    responsible_officer TEXT,
    receipt_number TEXT,
    cost_center TEXT,
    notes TEXT,
    priority_level TEXT,
    status TEXT,
    last_update DATE,
    audit_flag TEXT,
    internal_code TEXT
);
INSERT INTO municipal_budget_lineitems VALUES ('BL001',2023,'PublicWorks','Infrastructure','RoadRepair','Capital','2500000','3000000','2600000','2450000','-150000','CityBond','2023-01-10','Karen Smith','RCPT001','CC100','Major highway resurfacing','High','Approved','2023-06-01','N','INT100');
INSERT INTO municipal_budget_lineitems VALUES ('BL002',2023,'Health','PublicHealth','Vaccination','Operating','120000','150000','130000','125000','-5000','StateGrant','2023-02-15','Luis Gomez','RCPT002','CC200','Seasonal flu vaccine program','Medium','Approved','2023-06-02','N','INT200');
INSERT INTO municipal_budget_lineitems VALUES ('BL003',2023,'Education','Facilities','SchoolRenovation','Capital','800000','900000','850000','820000','-30000','FederalAid','2023-03-20','Angela Wu','RCPT003','CC300','Renovate science labs','High','Pending','2023-06-03','Y','INT300');