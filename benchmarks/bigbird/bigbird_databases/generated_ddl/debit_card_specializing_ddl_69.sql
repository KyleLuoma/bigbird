-- City parks information
CREATE TABLE city_parks
(
    park_id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT,
    area_sq_m INTEGER,
    established_date DATE,
    playgrounds_count INTEGER,
    walking_trails_km REAL,
    water_feature_type TEXT,
    dog_friendly INTEGER,
    annual_visitors INTEGER,
    maintenance_budget INTEGER,
    lighting_hours_per_day INTEGER,
    has_sprinklers INTEGER,
    picnic_sites INTEGER,
    wheelchair_accessible INTEGER,
    native_tree_species TEXT,
    annual_events INTEGER,
    security_patrols_per_week INTEGER,
    avg_monthly_rainfall REAL,
    nearest_metro_station TEXT
);

INSERT INTO city_parks VALUES (1,'Central Park','Metropolis',50000,'1990-05-10',5,12.5,'Lake',1,2000000,150000,12,1,20,1,'Oak',12,3,85.0,'Central Station');
INSERT INTO city_parks VALUES (2,'Riverside Gardens','Rivercity',30000,'1985-09-15',3,8.2,'River',0,850000,90000,10,0,12,1,'Maple',8,2,78.5,'Riverfront');
INSERT INTO city_parks VALUES (3,'Hilltop Reserve','Hilltown',42000,'2001-04-22',4,10.0,'Pond',1,1200000,110000,11,1,15,0,'Pine',10,4,92.3,'Hilltop Station');

-- Public library branches
CREATE TABLE public_library_branches
(
    branch_id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT,
    address TEXT,
    total_books INTEGER,
    staff_count INTEGER,
    open_hours_per_day INTEGER,
    has_wifi INTEGER,
    digital_kiosk_count INTEGER,
    annual_visits INTEGER,
    renovation_year INTEGER,
    floor_area_sqm INTEGER,
    study_rooms INTEGER,
    childrens_section INTEGER,
    meeting_rooms INTEGER,
    annual_budget INTEGER,
    book_checkout_limit INTEGER,
    late_fee_per_day REAL,
    computer_workstations INTEGER,
    neighboring_cafe TEXT
);

INSERT INTO public_library_branches VALUES (101,'Central Library','Metropolis','123 Main St',250000,45,12,1,8,500000,2018,3500,20,1,5,2000000,10,0.25,30,'Cafe Latte');
INSERT INTO public_library_branches VALUES (102,'Westside Branch','Rivercity','456 West Ave',90000,20,10,1,4,180000,2020,1200,8,1,2,800000,12,0.15,15,'Brew Corner');
INSERT INTO public_library_branches VALUES (103,'Eastside Branch','Hilltown','789 East Rd',75000,18,11,0,3,150000,2019,1100,6,0,3,750000,8,0.20,12,'Sunrise Cafe');

-- Weather station readings
CREATE TABLE weather_station_readings
(
    station_id INTEGER,
    station_name TEXT,
    latitude REAL,
    longitude REAL,
    elevation_m INTEGER,
    reading_date DATE,
    temperature_c REAL,
    humidity_percent REAL,
    wind_speed_kmh REAL,
    wind_direction_deg INTEGER,
    precipitation_mm REAL,
    solar_radiation_wm2 REAL,
    air_pressure_hpa REAL,
    visibility_km REAL,
    dew_point_c REAL,
    cloud_cover_percent INTEGER,
    uv_index INTEGER,
    pollen_count INTEGER,
    thunderstorm_flag INTEGER,
    data_quality_flag INTEGER,
    PRIMARY KEY (station_id, reading_date)
);

INSERT INTO weather_station_readings VALUES (201,'North Hill',45.12,-122.34,250,'2023-07-01',22.5,65.0,15.2,180,0.0,560.0,1013.2,12.0,13.0,40,5,1200,0,1);
INSERT INTO weather_station_readings VALUES (202,'Lakeview',44.98,-122.20,30,'2023-07-01',24.1,58.0,12.5,200,0.1,590.0,1011.8,15.5,13.8,35,6,800,0,1);
INSERT INTO weather_station_readings VALUES (203,'Downtown',45.03,-122.28,20,'2023-07-01',23.0,60.0,10.0,190,0.0,570.0,1012.5,10.0,13.5,38,5,950,0,1);

-- Municipal water quality samples
CREATE TABLE municipal_water_quality
(
    sample_id INTEGER PRIMARY KEY,
    location_name TEXT,
    collection_date DATE,
    pH REAL,
    turbidity_ntu REAL,
    chlorine_mg_l REAL,
    lead_ppb INTEGER,
    arsenic_ppb INTEGER,
    bacteria_cfu_ml INTEGER,
    nitrate_mg_l REAL,
    fluoride_mg_l REAL,
    hardness_mg_l REAL,
    temperature_c REAL,
    conductivity_us_cm REAL,
    total_solid_mg_l REAL,
    sampling_technician TEXT,
    weather_condition TEXT,
    nearby_industry TEXT,
    inspection_status TEXT,
    remarks TEXT
);

INSERT INTO municipal_water_quality VALUES (301,'North Reservoir','2023-06-15',7.2,0.3,0.5,2,5,10,12.5,0.7,150.0,15.0,250.0,340.0,'Alice Smith','Clear','None','Pass','Routine check');
INSERT INTO municipal_water_quality VALUES (302,'South River','2023-06-16',6.8,1.1,0.4,4,8,25,20.0,0.9,180.0,14.5,260.0,400.0,'Bob Jones','Rainy','Manufacturing','Conditional','Elevated turbidity');
INSERT INTO municipal_water_quality VALUES (303,'East Treatment Plant','2023-06-17',7.5,0.2,0.6,1,3,5,8.0,0.6,120.0,16.0,240.0,300.0,'Carol Lee','Cloudy','None','Pass','All parameters within limits');

-- Renewable energy project funding
CREATE TABLE renewable_energy_project_funding
(
    project_id INTEGER PRIMARY KEY,
    project_name TEXT,
    technology_type TEXT,
    total_capacity_mw REAL,
    funding_source TEXT,
    grant_amount_usd INTEGER,
    equity_investment_usd INTEGER,
    debt_financing_usd INTEGER,
    start_date DATE,
    expected_completion_date DATE,
    region TEXT,
    developer_company TEXT,
    permitting_status TEXT,
    environmental_impact_score INTEGER,
    job_creation_estimate INTEGER,
    carbon_savings_tonnes_per_year REAL,
    operational_status TEXT,
    last_report_date DATE,
    project_manager TEXT,
    contact_email TEXT
);

INSERT INTO renewable_energy_project_funding VALUES (401,'Sunnyvale Solar Farm','Solar PV',150.0,'Federal Grant',50000000,30000000,20000000,'2022-01-15','2024-12-31','West Valley','SunPower Inc','Approved',85,1200,350000.0,'Construction','2023-09-10','Diana Miller','diana.miller@sunpower.com');
INSERT INTO renewable_energy_project_funding VALUES (402,'Riverbend Wind Park','Onshore Wind',80.0,'State Incentive',20000000,15000000,25000000,'2021-05-20','2025-05-20','North Ridge','WindCorp LLC','Pending',78,800,210000.0,'Planning','2023-08-05','Ethan Clark','ethan.clark@windcorp.com');
INSERT INTO renewable_energy_project_funding VALUES (403,'Lakeview Hydro','Hydro','30.0','Private Equity',10000000,50000000,15000000,'2020-09-01','2023-12-31','East Plains','AquaEnergy','Operational',92,500,120000.0,'Operational','2023-07-15','Fiona Zhang','fiona.zhang@aquaenergy.com');

-- Urban noise monitoring stations
CREATE TABLE urban_noise_monitoring_stations
(
    station_id INTEGER PRIMARY KEY,
    location_description TEXT,
    latitude REAL,
    longitude REAL,
    installation_date DATE,
    noise_level_dba_avg REAL,
    peak_noise_dba REAL,
    noise_threshold_dba REAL,
    measurement_interval_sec INTEGER,
    sensor_type TEXT,
    power_source TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance_date DATE,
    firmware_version TEXT,
    data_transmission_method TEXT,
    alerts_sent_monthly INTEGER,
    operator_company TEXT,
    compliance_status TEXT,
    urban_zone_type TEXT,
    notes TEXT
);

INSERT INTO urban_noise_monitoring_stations VALUES (501,'Downtown Main St',45.02,-122.30,'2021-03-10',68.5,92.0,85.0,60,'Acoustic','Solar',180,'2023-06-01','v1.3','Cellular',2,'City Sensors Ltd','Compliant','Commercial','No issues');
INSERT INTO urban_noise_monitoring_stations VALUES (502,'Residential Oak Ave',45.06,-122.35,'2020-11-22',55.2,78.5,70.0,120,'Mic','Mains',365,'2023-01-15','v1.2','WiFi',0,'Urban Noise Co','Compliant','Residential','Routine operation');
INSERT INTO urban_noise_monitoring_stations VALUES (503,'Industrial Zone 5',45.10,-122.40,'2022-07-05',73.8,100.0,90.0,30,'Acoustic','Battery',90,'2023-05-20','v1.4','LoRa',5,'Industrial Monitoring Inc','Warning','Industrial','Elevated peaks observed');

-- Bike share station inventory
CREATE TABLE bike_share_station_inventory
(
    station_id INTEGER PRIMARY KEY,
    station_name TEXT,
    city TEXT,
    latitude REAL,
    longitude REAL,
    total_docks INTEGER,
    available_bikes INTEGER,
    maintenance_status TEXT,
    last_inspection_date DATE,
    manufacturer TEXT,
    installation_year INTEGER,
    solar_panel_capacity_kw REAL,
    avg_daily_usage INTEGER,
    nearby_landmark TEXT,
    wheelchair_accessible INTEGER,
    vandalism_reports_last_month INTEGER,
    insurance_policy_number TEXT,
    warranty_expiry_date DATE,
    operating_company TEXT,
    contact_phone TEXT
);

INSERT INTO bike_share_station_inventory VALUES (601,'Central Plaza', 'Metropolis',45.01,-122.31,30,12,'Good','2023-05-10','BikeTech',2019,0.5,250,'City Hall',1,2,'BP-001','2025-12-31','Metro Bikes','5551234567');
INSERT INTO bike_share_station_inventory VALUES (602,'Riverfront Dock', 'Rivercity',44.99,-122.20,20,5,'Needs Repair','2023-04-22','CycleMakers',2020,0.3,180,'River Walk',0,5,'BP-002','2024-06-30','RiverRide','5559876543');
INSERT INTO bike_share_station_inventory VALUES (603,'Hilltop Park', 'Hilltown',45.08,-122.38,25,20,'Good','2023-06-02','PedalPro',2021,0.4,300,'Hilltop View',1,1,'BP-003','2026-03-15','HillBikes','5555551212');

-- Smart city air quality alerts
CREATE TABLE smart_city_air_quality_alerts
(
    alert_id INTEGER PRIMARY KEY,
    alert_type TEXT,
    severity_level TEXT,
    issued_timestamp TEXT,
    affected_area TEXT,
    pm2_5_ug_m3 REAL,
    pm10_ug_m3 REAL,
    o3_ppb REAL,
    no2_ppb REAL,
    so2_ppb REAL,
    co_ppb REAL,
    temperature_c REAL,
    humidity_percent REAL,
    wind_speed_kmh REAL,
    wind_direction_deg INTEGER,
    source_station_id INTEGER,
    recommended_action TEXT,
    public_notification_sent INTEGER,
    resolved_timestamp TEXT,
    notes TEXT
);

INSERT INTO smart_city_air_quality_alerts VALUES (701,'High Pollution','Severe','2023-07-15 08:30:00','Downtown','85.0','120.0','75','60','20','1.2','28.0','70','15','180',201,'Issue health advisory',1,'2023-07-15 12:00:00','Alert cleared after wind shift');
INSERT INTO smart_city_air_quality_alerts VALUES (702,'Ozone Spike','Moderate','2023-07-20 14:00:00','East Side','45.0','80.0','150','30','10','0.8','30.0','55','10','90',202,'Limit outdoor activities',1,'2023-07-20 18:00:00','Ozone levels normalized');
INSERT INTO smart_city_air_quality_alerts VALUES (703,'Particulate Alert','Mild','2023-07-25 09:15:00','North Suburb','55.0','95.0','60','40','15','0.5','22.0','65','12','200',203,'Increase ventilation',1,'2023-07-25 13:30:00','Alert resolved');

-- Electric grid substation inspections
CREATE TABLE electric_grid_substation_inspections
(
    inspection_id INTEGER PRIMARY KEY,
    substation_name TEXT,
    region TEXT,
    inspection_date DATE,
    inspector_name TEXT,
    voltage_kv REAL,
    transformer_count INTEGER,
    status_good INTEGER,
    issues_found TEXT,
    corrective_action_due DATE,
    next_inspection_date DATE,
    safety_compliance_score INTEGER,
    equipment_age_years REAL,
    recent_upgrades TEXT,
    maintenance_budget_usd INTEGER,
    outage_history_last_year INTEGER,
    photo_document_ref TEXT,
    gps_latitude REAL,
    gps_longitude REAL,
    comments TEXT
);

INSERT INTO electric_grid_substation_inspections VALUES (801,'North Substation','North Region','2023-06-10','Mark Taylor',138.0,4,1,'None','2024-06-10','2024-06-10',95,12.5,'Transformer upgrade 2022',250000,2,'photo_801.jpg',45.12,-122.34','All systems nominal');
INSERT INTO electric_grid_substation_inspections VALUES (802,'East Substation','East Region','2023-05-22','Laura Chen',115.0,3,0,'Oil leak in transformer','2023-09-01','2024-05-22',78,15.0,'Replaced coolant 2021',180000,5,'photo_802.jpg',45.08,-122.28','Leak repaired, monitoring continues');
INSERT INTO electric_grid_substation_inspections VALUES (803,'South Substation','South Region','2023-04-18','Carlos Ruiz',230.0,5,1,'None','2025-04-18','2025-04-18',88,9.0,'Added surge protection 2020',300000,1,'photo_803.jpg',44.99,-122.20','Ready for next load increase');

-- Municipal permit application tracking
CREATE TABLE municipal_permit_application_tracking
(
    application_id INTEGER PRIMARY KEY,
    permit_type TEXT,
    applicant_name TEXT,
    business_name TEXT,
    address TEXT,
    city TEXT,
    submission_date DATE,
    review_status TEXT,
    assigned_officer TEXT,
    estimated_fee_usd INTEGER,
    fee_paid INTEGER,
    required_documents_count INTEGER,
    comments TEXT,
    priority_level TEXT,
    expected_decision_date DATE,
    approval_date DATE,
    permit_number TEXT,
    renewal_required_flag INTEGER,
    enforcement_actions TEXT,
    last_updated_timestamp TEXT
);

INSERT INTO municipal_permit_application_tracking VALUES (901,'Construction','Emily Davis','GreenBuild LLC','101 Oak St','Metropolis','2023-03-15','Under Review','Officer Lee',15000,0,8,'Pending site plan','High','2023-05-01',NULL,'','0','None','2023-04-10 09:20:00');
INSERT INTO municipal_permit_application_tracking VALUES (902,'Food Service','John Patel','TasteBuds','202 Maple Ave','Rivercity','2023-02-20','Approved','Officer Kim',5000,5000,5','All documents submitted','Medium','2023-03-15','2023-03-20','FS-2023-004','1','Annual health inspection required','2023-03-21 14:45:00');
INSERT INTO municipal_permit_application_tracking VALUES (903,'Signage','Linda Wong','CitySigns','55 Pine Rd','Hilltown','2023-04-01','Rejected','Officer Patel',1200,0,3','Design does not meet ordinance','Low','2023-04-30',NULL,'','0','Applicant to revise design','2023-04-15 11:00:00');

-- Solar panel performance metrics
CREATE TABLE solar_panel_performance_metrics
(
    panel_id INTEGER PRIMARY KEY,
    installation_site TEXT,
    latitude REAL,
    longitude REAL,
    installation_date DATE,
    panel_type TEXT,
    capacity_watt INTEGER,
    orientation_deg INTEGER,
    tilt_angle_deg INTEGER,
    average_daily_output_kwh REAL,
    performance_ratio REAL,
    soiling_loss_percent REAL,
    temperature_coefficient_percent_per_c REAL,
    inverter_id TEXT,
    inverter_efficiency_percent REAL,
    shading_factor REAL,
    maintenance_last_date DATE,
    maintenance_notes TEXT,
    warranty_expiry_date DATE,
    responsible_team TEXT
);

INSERT INTO solar_panel_performance_metrics VALUES (1001,'North Warehouse',45.10,-122.30,'2020-06-15','Monocrystalline',350,180,30,5.2,0.78,2.5,0.04,'INV-100','96.5',0.9,'2023-03-10','Cleaned and inspected','2030-06-15','Ops Team A');
INSERT INTO solar_panel_performance_metrics VALUES (1002,'South Parking Lot',44.98,-122.20,'2021-09-01','Polycrystalline',300,170,25,4.8,0.75,3.0,0.05,'INV-101','95.0',0.85,'2023-02-20','Replaced faulty junction box','2031-09-01','Ops Team B');
INSERT INTO solar_panel_performance_metrics VALUES (1003,'East Rooftop',45.05,-122.35,'2019-03-20','Thin Film',250,190,20,4.0,0.72,1.8,0.03,'INV-102','94.0',0.88,'2023-01-15','Routine cleaning','2029-03-20','Ops Team C');