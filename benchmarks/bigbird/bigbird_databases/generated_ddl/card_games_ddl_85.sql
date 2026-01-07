-- Weather station metadata and sensor configuration
CREATE TABLE weather_stations (
    station_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    station_name             TEXT,
    latitude                 REAL,
    longitude                REAL,
    elevation                INTEGER,
    installation_date        DATE,
    sensor_type              TEXT,
    firmware_version         TEXT,
    last_calibration         DATE,
    status                   TEXT,
    temperature_avg          REAL,
    humidity_avg             REAL,
    pressure_avg             REAL,
    wind_speed_max           REAL,
    precipitation_total      REAL,
    solar_radiation          REAL,
    data_transmission_interval INTEGER,
    maintenance_cycle_days   INTEGER,
    owner_organization       TEXT,
    contact_email            TEXT
);

INSERT INTO weather_stations (station_name, latitude, longitude, elevation, installation_date, sensor_type, firmware_version, last_calibration, status, temperature_avg, humidity_avg, pressure_avg, wind_speed_max, precipitation_total, solar_radiation, data_transmission_interval, maintenance_cycle_days, owner_organization, contact_email)
VALUES ('AlphaStation', 34.05, -118.25, 89, '2015-06-01', 'MultiSensor', 'v1.2.3', '2023-01-15', 'ACTIVE', 22.5, 55.2, 1013.1, 12.4, 5.6, 420.3, 15, 180, 'National Weather Service', 'contact@weather.gov');

INSERT INTO weather_stations (station_name, latitude, longitude, elevation, installation_date, sensor_type, firmware_version, last_calibration, status, temperature_avg, humidity_avg, pressure_avg, wind_speed_max, precipitation_total, solar_radiation, data_transmission_interval, maintenance_cycle_days, owner_organization, contact_email)
VALUES ('BetaStation', 51.51, -0.13, 35, '2018-03-20', 'TemperatureOnly', 'v2.0.1', '2022-11-30', 'MAINTENANCE', 18.3, 68.0, 1015.5, 8.7, 2.1, 380.0, 30, 365, 'Met Office', 'info@metoffice.gov');

INSERT INTO weather_stations (station_name, latitude, longitude, elevation, installation_date, sensor_type, firmware_version, last_calibration, status, temperature_avg, humidity_avg, pressure_avg, wind_speed_max, precipitation_total, solar_radiation, data_transmission_interval, maintenance_cycle_days, owner_organization, contact_email)
VALUES ('GammaStation', -33.87, 151.21, 15, '2020-09-10', 'WindAndRain', 'v1.8.0', '2023-05-22', 'ACTIVE', 20.1, 60.4, 1012.8, 15.9, 12.3, 450.7, 10, 90, 'Bureau of Meteorology', 'support@bom.gov');

-- Oceanic sensor reading logs
CREATE TABLE oceanic_sensor_readings (
    reading_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_uuid               TEXT,
    capture_timestamp         DATETIME,
    sea_surface_temperature   REAL,
    salinity_psu              REAL,
    wave_height_meters        REAL,
    wind_speed_knots          REAL,
    dissolved_oxygen_mgL      REAL,
    chlorophyll_a_ugL         REAL,
    turbidity_ntu             REAL,
    ph_level                  REAL,
    nitrate_mgL               REAL,
    phosphate_mgL             REAL,
    latitude                  REAL,
    longitude                 REAL,
    depth_meters              INTEGER,
    battery_voltage           REAL,
    signal_strength_dbm       INTEGER,
    firmware_version          TEXT,
    maintenance_status       TEXT,
    data_quality_flag         TEXT
);

INSERT INTO oceanic_sensor_readings (sensor_uuid, capture_timestamp, sea_surface_temperature, salinity_psu, wave_height_meters, wind_speed_knots, dissolved_oxygen_mgL, chlorophyll_a_ugL, turbidity_ntu, ph_level, nitrate_mgL, phosphate_mgL, latitude, longitude, depth_meters, battery_voltage, signal_strength_dbm, firmware_version, maintenance_status, data_quality_flag)
VALUES ('OSR-001', '2023-07-15 08:00:00', 16.4, 35.1, 2.3, 12, 6.8, 0.45, 3.2, 8.1, 0.02, 0.001, -33.9, 151.2, 5, 12.5, -70, 'v3.4', 'OK', 'GOOD');

INSERT INTO oceanic_sensor_readings (sensor_uuid, capture_timestamp, sea_surface_temperature, salinity_psu, wave_height_meters, wind_speed_knots, dissolved_oxygen_mgL, chlorophyll_a_ugL, turbidity_ntu, ph_level, nitrate_mgL, phosphate_mgL, latitude, longitude, depth_meters, battery_voltage, signal_strength_dbm, firmware_version, maintenance_status, data_quality_flag)
VALUES ('OSR-002', '2023-07-15 08:10:00', 18.9, 34.8, 1.7, 9, 7.2, 0.38, 2.9, 8.0, 0.015, 0.0009, 34.0, -118.2, 10, 13.2, -68, 'v3.4', 'OK', 'GOOD');

INSERT INTO oceanic_sensor_readings (sensor_uuid, capture_timestamp, sea_surface_temperature, salinity_psu, wave_height_meters, wind_speed_knots, dissolved_oxygen_mgL, chlorophyll_a_ugL, turbidity_ntu, ph_level, nitrate_mgL, phosphate_mgL, latitude, longitude, depth_meters, battery_voltage, signal_strength_dbm, firmware_version, maintenance_status, data_quality_flag)
VALUES ('OSR-003', '2023-07-15 08:20:00', 14.2, 36.0, 3.1, 15, 6.5, 0.52, 4.0, 8.2, 0.03, 0.0012, 51.5, -0.1, 2, 11.8, -72, 'v3.4', 'OK', 'GOOD');

-- Astronomical observation catalog
CREATE TABLE astronomical_observations (
    observation_id          INTEGER PRIMARY KEY AUTOINCREMENT,
    telescope_id            TEXT,
    observation_date        DATE,
    target_name             TEXT,
    right_ascension_hms     TEXT,
    declination_dms         TEXT,
    exposure_seconds        INTEGER,
    filter_band             TEXT,
    seeing_arcsec           REAL,
    airmass                 REAL,
    magnitude               REAL,
    signal_to_noise         REAL,
    observer_name           TEXT,
    data_path               TEXT,
    reduction_version       TEXT,
    calibration_applied     INTEGER,
    notes                   TEXT,
    weather_conditions      TEXT,
    moon_phase_percent      REAL,
    program_id              TEXT,
    publication_status      TEXT
);

INSERT INTO astronomical_observations (telescope_id, observation_date, target_name, right_ascension_hms, declination_dms, exposure_seconds, filter_band, seeing_arcsec, airmass, magnitude, signal_to_noise, observer_name, data_path, reduction_version, calibration_applied, notes, weather_conditions, moon_phase_percent, program_id, publication_status)
VALUES ('T-01', '2022-11-05', 'M31', '00h42m44s', '+41d16m9s', 1800, 'V', 1.2, 1.1, 3.4, 55.0, 'Dr Smith', '/data/obs/20221105/m31.fits', 'v1.0', 1, 'Clear night', 'Clear', 23.5, 'PROG-1001', 'DRAFT');

INSERT INTO astronomical_observations (telescope_id, observation_date, target_name, right_ascension_hms, declination_dms, exposure_seconds, filter_band, seeing_arcsec, airmass, magnitude, signal_to_noise, observer_name, data_path, reduction_version, calibration_applied, notes, weather_conditions, moon_phase_percent, program_id, publication_status)
VALUES ('T-02', '2023-02-12', 'NGC6543', '17h58m33s', '-18d52m2s', 2400, 'R', 1.0, 1.3, 6.9, 40.2, 'Dr Lee', '/data/obs/20230212/ngc6543.fits', 'v1.1', 1, 'Slight cirrus', 'Partly Cloudy', 45.0, 'PROG-2005', 'SUBMITTED');

INSERT INTO astronomical_observations (telescope_id, observation_date, target_name, right_ascension_hms, declination_dms, exposure_seconds, filter_band, seeing_arcsec, airmass, magnitude, signal_to_noise, observer_name, data_path, reduction_version, calibration_applied, notes, weather_conditions, moon_phase_percent, program_id, publication_status)
VALUES ('T-03', '2023-06-20', 'SN2023abc', '12h34m56s', '+22d45m33s', 3600, 'B', 0.9, 1.0, 16.2, 30.5, 'Dr Patel', '/data/obs/20230620/sn2023abc.fits', 'v2.0', 1, 'Fast rise', 'Clear', 12.0, 'PROG-3002', 'IN_REVIEW');

-- Logistics fleet vehicle inventory
CREATE TABLE logistics_fleet (
    vehicle_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    vin                      TEXT,
    license_plate            TEXT,
    make                     TEXT,
    model                    TEXT,
    year                     INTEGER,
    vehicle_type             TEXT,
    fuel_type                TEXT,
    payload_capacity_kg      INTEGER,
    mileage_km               INTEGER,
    last_service_date        DATE,
    service_interval_km      INTEGER,
    gps_tracker_id           TEXT,
    insurance_policy_number  TEXT,
    registration_state       TEXT,
    acquisition_date         DATE,
    depreciation_years        INTEGER,
    current_status           TEXT,
    driver_assigned          TEXT,
    maintenance_notes        TEXT,
    last_incident_date       DATE,
    incident_severity        TEXT,
    next_inspection_due      DATE
);

INSERT INTO logistics_fleet (vin, license_plate, make, model, year, vehicle_type, fuel_type, payload_capacity_kg, mileage_km, last_service_date, service_interval_km, gps_tracker_id, insurance_policy_number, registration_state, acquisition_date, depreciation_years, current_status, driver_assigned, maintenance_notes, last_incident_date, incident_severity, next_inspection_due)
VALUES ('1HGCM82633A004352', 'ABC1234', 'Ford', 'Transit', 2019, 'Van', 'Diesel', 1500, 82000, '2023-03-10', 15000, 'GPS-001', 'POL-78901', 'CA', '2019-07-01', 5, 'ACTIVE', 'John Doe', 'Tire rotation done', '2022-11-05', 'Minor', '2024-07-01');

INSERT INTO logistics_fleet (vin, license_plate, make, model, year, vehicle_type, fuel_type, payload_capacity_kg, mileage_km, last_service_date, service_interval_km, gps_tracker_id, insurance_policy_number, registration_state, acquisition_date, depreciation_years, current_status, driver_assigned, maintenance_notes, last_incident_date, incident_severity, next_inspection_due)
VALUES ('2FTZF1727XCA12345', 'XYZ5678', 'Mercedes', 'Sprinter', 2021, 'Van', 'Electric', 1200, 45000, '2023-06-15', 20000, 'GPS-002', 'POL-89012', 'NY', '2021-02-15', 7, 'ACTIVE', 'Emily Smith', 'Battery check ok', NULL, NULL, '2025-02-15');

INSERT INTO logistics_fleet (vin, license_plate, make, model, year, vehicle_type, fuel_type, payload_capacity_kg, mileage_km, last_service_date, service_interval_km, gps_tracker_id, insurance_policy_number, registration_state, acquisition_date, depreciation_years, current_status, driver_assigned, maintenance_notes, last_incident_date, incident_severity, next_inspection_due)
VALUES ('3C6UR5CL5FG123456', 'LMN9012', 'Volvo', 'FH', 2018, 'Truck', 'Diesel', 25000, 180000, '2023-01-20', 30000, 'GPS-003', 'POL-90123', 'TX', '2018-05-30', 8, 'MAINTENANCE', 'Carlos Ruiz', 'Brake pads replaced', '2023-02-10', 'Moderate', '2024-05-30');

-- Industrial machine maintenance log
CREATE TABLE industrial_machine_maintenance (
    log_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    machine_uid           TEXT,
    plant_location        TEXT,
    machine_type          TEXT,
    manufacturer          TEXT,
    model_number          TEXT,
    serial_number         TEXT,
    installation_date     DATE,
    last_maintenance_date DATE,
    maintenance_interval_days INTEGER,
    technician_id         TEXT,
    maintenance_type      TEXT,
    parts_replaced        TEXT,
    labor_hours           REAL,
    downtime_minutes      INTEGER,
    status_before         TEXT,
    status_after          TEXT,
    next_scheduled_date  DATE,
    comments              TEXT,
    safety_check_passed   INTEGER,
    calibration_required  INTEGER,
    energy_consumption_kwh REAL,
    vibration_level_mm_s  REAL,
    temperature_celsius   REAL
);

INSERT INTO industrial_machine_maintenance (machine_uid, plant_location, machine_type, manufacturer, model_number, serial_number, installation_date, last_maintenance_date, maintenance_interval_days, technician_id, maintenance_type, parts_replaced, labor_hours, downtime_minutes, status_before, status_after, next_scheduled_date, comments, safety_check_passed, calibration_required, energy_consumption_kwh, vibration_level_mm_s, temperature_celsius)
VALUES ('MACH-001', 'PlantA', 'CNC Lathe', 'Haas', 'VF-2', 'SN123456', '2016-04-12', '2023-04-01', 180, 'TECH-01', 'Preventive', 'Spindle Bearing', 4.5, 30, 'Operational', 'Operational', '2023-10-01', 'All good', 1, 0, 1500.0, 0.8, 45.0);

INSERT INTO industrial_machine_maintenance (machine_uid, plant_location, machine_type, manufacturer, model_number, serial_number, installation_date, last_maintenance_date, maintenance_interval_days, technician_id, maintenance_type, parts_replaced, labor_hours, downtime_minutes, status_before, status_after, next_scheduled_date, comments, safety_check_passed, calibration_required, energy_consumption_kwh, vibration_level_mm_s, temperature_celsius)
VALUES ('MACH-002', 'PlantB', 'Laser Cutter', 'Trumpf', 'TruLaser 3030', 'SN654321', '2018-09-05', '2023-03-20', 365, 'TECH-02', 'Corrective', 'Laser Tube', 6.0, 45, 'Fault', 'Operational', '2024-03-20', 'Tube replaced', 1, 1, 2100.0, 0.5, 48.5);

INSERT INTO industrial_machine_maintenance (machine_uid, plant_location, machine_type, manufacturer, model_number, serial_number, installation_date, last_maintenance_date, maintenance_interval_days, technician_id, maintenance_type, parts_replaced, labor_hours, downtime_minutes, status_before, status_after, next_scheduled_date, comments, safety_check_passed, calibration_required, energy_consumption_kwh, vibration_level_mm_s, temperature_celsius)
VALUES ('MACH-003', 'PlantC', 'Press', 'Amada', 'F100', 'SN987654', '2015-01-20', '2023-02-10', 730, 'TECH-03', 'Predictive', 'Hydraulic Seal', 3.2, 20, 'Operational', 'Operational', '2025-02-10', 'Seal wear noted', 1, 0, 1800.0, 0.9, 50.0);

-- Public transport schedule and vehicle assignment
CREATE TABLE public_transport_schedule (
    schedule_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    route_number              TEXT,
    service_day               TEXT,
    departure_time            TIME,
    arrival_time              TIME,
    origin_stop               TEXT,
    destination_stop          TEXT,
    vehicle_id                TEXT,
    driver_id                 TEXT,
    frequency_minutes         INTEGER,
    service_type              TEXT,
    wheelchair_accessible    INTEGER,
    wifi_available            INTEGER,
    fare_zone                 TEXT,
    peak_hour_indicator      INTEGER,
    notes                     TEXT,
    last_updated              DATETIME,
    calendar_effective_start  DATE,
    calendar_effective_end    DATE,
    capacity_seats            INTEGER,
    capacity_standing         INTEGER,
    average_occupancy_percent REAL,
    on_time_performance_percent REAL,
    route_length_km           REAL,
    maintenance_window_start  TIME,
    maintenance_window_end    TIME
);

INSERT INTO public_transport_schedule (route_number, service_day, departure_time, arrival_time, origin_stop, destination_stop, vehicle_id, driver_id, frequency_minutes, service_type, wheelchair_accessible, wifi_available, fare_zone, peak_hour_indicator, notes, last_updated, calendar_effective_start, calendar_effective_end, capacity_seats, capacity_standing, average_occupancy_percent, on_time_performance_percent, route_length_km, maintenance_window_start, maintenance_window_end)
VALUES ('45A', 'Weekday', '06:30:00', '07:45:00', 'CentralStation', 'NorthPark', 'VEH-101', 'DRV-01', 10, 'Regular', 1, 1, 'Zone2', 1, 'Morning rush', '2023-06-01 08:00:00', '2023-01-01', '2023-12-31', 50, 30, 85.0, 92.5, 12.4, '02:00:00', '02:30:00');

INSERT INTO public_transport_schedule (route_number, service_day, departure_time, arrival_time, origin_stop, destination_stop, vehicle_id, driver_id, frequency_minutes, service_type, wheelchair_accessible, wifi_available, fare_zone, peak_hour_indicator, notes, last_updated, calendar_effective_start, calendar_effective_end, capacity_seats, capacity_standing, average_occupancy_percent, on_time_performance_percent, route_length_km, maintenance_window_start, maintenance_window_end)
VALUES ('12B', 'Weekend', '09:00:00', '09:45:00', 'EastSide', 'WestEnd', 'VEH-202', 'DRV-02', 15, 'Express', 0, 1, 'Zone1', 0, 'Limited stops', '2023-06-01 08:30:00', '2023-04-01', '2023-10-31', 40, 20, 70.0, 95.0, 8.6, '03:00:00', '03:45:00');

INSERT INTO public_transport_schedule (route_number, service_day, departure_time, arrival_time, origin_stop, destination_stop, vehicle_id, driver_id, frequency_minutes, service_type, wheelchair_accessible, wifi_available, fare_zone, peak_hour_indicator, notes, last_updated, calendar_effective_start, calendar_effective_end, capacity_seats, capacity_standing, average_occupancy_percent, on_time_performance_percent, route_length_km, maintenance_window_start, maintenance_window_end)
VALUES ('88C', 'Holiday', '12:00:00', '12:45:00', 'OldTown', 'University', 'VEH-303', 'DRV-03', 20, 'Regular', 1, 0, 'Zone3', 0, 'Holiday schedule', '2023-06-01 09:00:00', '2023-12-20', '2024-01-05', 45, 25, 60.0, 88.0, 10.2, '01:30:00', '02:15:00');

-- Energy grid metrics per substation
CREATE TABLE energy_grid_metrics (
    metric_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    substation_code          TEXT,
    region                   TEXT,
    timestamp                DATETIME,
    voltage_kv               REAL,
    current_ka               REAL,
    power_mw                 REAL,
    reactive_power_mvar      REAL,
    frequency_hz             REAL,
    load_factor              REAL,
    temperature_celsius      REAL,
    humidity_percent         REAL,
    wind_speed_mps           REAL,
    solar_irradiance_wm2     REAL,
    outage_indicator         INTEGER,
    maintenance_status       TEXT,
    transformer_age_years    INTEGER,
    capacitor_bank_status    TEXT,
    breaker_trips_today      INTEGER,
    fault_events_today       INTEGER,
    net_import_mw            REAL,
    net_export_mw            REAL,
    renewable_share_percent  REAL,
    emissions_tco2_per_mwh   REAL,
    demand_forecast_mw       REAL,
    reserve_margin_percent   REAL,
    equipment_health_score   REAL,
    last_inspection_date     DATE,
    next_maintenance_date    DATE
);

INSERT INTO energy_grid_metrics (substation_code, region, timestamp, voltage_kv, current_ka, power_mw, reactive_power_mvar, frequency_hz, load_factor, temperature_celsius, humidity_percent, wind_speed_mps, solar_irradiance_wm2, outage_indicator, maintenance_status, transformer_age_years, capacitor_bank_status, breaker_trips_today, fault_events_today, net_import_mw, net_export_mw, renewable_share_percent, emissions_tco2_per_mwh, demand_forecast_mw, reserve_margin_percent, equipment_health_score, last_inspection_date, next_maintenance_date)
VALUES ('SS-001', 'North', '2023-07-15 10:00:00', 230.0, 1.2, 150.0, 30.0, 60.0, 0.85, 22.5, 55.0, 5.2, 250.0, 0, 'OPERATIONAL', 12, 'GOOD', 0, 0, 20.0, 5.0, 35.0, 0.45, 155.0, 10.0, 92.5, '2023-06-01', '2024-06-01');

INSERT INTO energy_grid_metrics (substation_code, region, timestamp, voltage_kv, current_ka, power_mw, reactive_power_mvar, frequency_hz, load_factor, temperature_celsius, humidity_percent, wind_speed_mps, solar_irradiance_wm2, outage_indicator, maintenance_status, transformer_age_years, capacitor_bank_status, breaker_trips_today, fault_events_today, net_import_mw, net_export_mw, renewable_share_percent, emissions_tco2_per_mwh, demand_forecast_mw, reserve_margin_percent, equipment_health_score, last_inspection_date, next_maintenance_date)
VALUES ('SS-002', 'South', '2023-07-15 10:05:00', 115.0, 0.8, 80.0, 15.0, 60.0, 0.78, 24.0, 60.0, 3.8, 300.0, 1, 'MAINTENANCE', 8, 'FAIR', 1, 2, 10.0, 2.0, 50.0, 0.30, 85.0, 12.0, 80.0, '2023-05-15', '2023-11-15');

INSERT INTO energy_grid_metrics (substation_code, region, timestamp, voltage_kv, current_ka, power_mw, reactive_power_mvar, frequency_hz, load_factor, temperature_celsius, humidity_percent, wind_speed_mps, solar_irradiance_wm2, outage_indicator, maintenance_status, transformer_age_years, capacitor_bank_status, breaker_trips_today, fault_events_today, net_import_mw, net_export_mw, renewable_share_percent, emissions_tco2_per_mwh, demand_forecast_mw, reserve_margin_percent, equipment_health_score, last_inspection_date, next_maintenance_date)
VALUES ('SS-003', 'East', '2023-07-15 10:10:00', 345.0, 1.5, 250.0, 45.0, 60.0, 0.90, 20.0, 50.0, 6.0, 200.0, 0, 'OPERATIONAL', 15, 'EXCELLENT', 0, 0, 30.0, 10.0, 40.0, 0.55, 260.0, 8.0, 95.0, '2023-04-20', '2024-04-20');

-- Wildlife tracking observations
CREATE TABLE wildlife_tracking (
    observation_id           INTEGER PRIMARY KEY AUTOINCREMENT,
    animal_id                TEXT,
    species_common_name      TEXT,
    species_scientific_name  TEXT,
    tag_id                   TEXT,
    tag_type                 TEXT,
    latitude                 REAL,
    longitude                REAL,
    altitude_meters          INTEGER,
    observation_timestamp    DATETIME,
    activity_status          TEXT,
    heart_rate_bpm           INTEGER,
    body_temperature_c       REAL,
    speed_kmh                REAL,
    heading_degrees          INTEGER,
    battery_level_percent    INTEGER,
    signal_strength_dbm      INTEGER,
    habitat_type             TEXT,
    weather_conditions       TEXT,
    observer_name            TEXT,
    notes                    TEXT,
    data_quality_flag        TEXT,
    processed_flag           INTEGER,
    upload_timestamp         DATETIME,
    verification_status      TEXT,
    associated_project       TEXT
);

INSERT INTO wildlife_tracking (animal_id, species_common_name, species_scientific_name, tag_id, tag_type, latitude, longitude, altitude_meters, observation_timestamp, activity_status, heart_rate_bpm, body_temperature_c, speed_kmh, heading_degrees, battery_level_percent, signal_strength_dbm, habitat_type, weather_conditions, observer_name, notes, data_quality_flag, processed_flag, upload_timestamp, verification_status, associated_project)
VALUES ('A001', 'African Elephant', 'Loxodonta africana', 'TAG-1001', 'GPS', -1.2921, 36.8219, 1500, '2023-07-15 06:30:00', 'Moving', 45, 36.5, 5.2, 90, 80, -65, 'Savanna', 'Clear', 'Dr Jones', 'Normal movement', 'GOOD', 1, '2023-07-15 07:00:00', 'VERIFIED', 'ElephantMigrationStudy');

INSERT INTO wildlife_tracking (animal_id, species_common_name, species_scientific_name, tag_id, tag_type, latitude, longitude, altitude_meters, observation_timestamp, activity_status, heart_rate_bpm, body_temperature_c, speed_kmh, heading_degrees, battery_level_percent, signal_strength_dbm, habitat_type, weather_conditions, observer_name, notes, data_quality_flag, processed_flag, upload_timestamp, verification_status, associated_project)
VALUES ('B023', 'Bald Eagle', 'Haliaeetus leucocephalus', 'TAG-2002', 'Satellite', 45.5231, -122.6765, 300, '2023-07-15 12:15:00', 'Soaring', 30, 40.0, 80.0, 270, 65, -70, 'Mountain', 'Windy', 'Dr Lee', 'High altitude flight', 'GOOD', 1, '2023-07-15 12:45:00', 'VERIFIED', 'BirdOfPreySurvey');

INSERT INTO wildlife_tracking (animal_id, species_common_name, species_scientific_name, tag_id, tag_type, latitude, longitude, altitude_meters, observation_timestamp, activity_status, heart_rate_bpm, body_temperature_c, speed_kmh, heading_degrees, battery_level_percent, signal_strength_dbm, habitat_type, weather_conditions, observer_name, notes, data_quality_flag, processed_flag, upload_timestamp, verification_status, associated_project)
VALUES ('C078', 'Sea Turtle', 'Chelonia mydas', 'TAG-3003', 'Acoustic', -15.7801, -47.9292, 0, '2023-07-15 18:00:00', 'Nesting', 20, 28.0, 0.0, 0, 90, -60, 'Coastal', 'Calm', 'Dr Patel', 'Nesting on beach', 'GOOD', 1, '2023-07-15 18:30:00', 'VERIFIED', 'TurtleConservation');

-- Archaeological site records
CREATE TABLE archaeological_sites (
    site_id                 INTEGER PRIMARY KEY AUTOINCREMENT,
    site_code               TEXT,
    site_name               TEXT,
    latitude                REAL,
    longitude               REAL,
    country                 TEXT,
    region                  TEXT,
    discovery_year          INTEGER,
    site_type               TEXT,
    period                  TEXT,
    primary_culture         TEXT,
    excavation_status       TEXT,
    lead_archaeologist      TEXT,
    sponsoring_institution  TEXT,
    grant_number            TEXT,
    total_area_sq_meters    REAL,
    depth_meters            REAL,
    artifact_count_estimated INTEGER,
    preservation_rating     TEXT,
    climate_zone            TEXT,
    soil_type               TEXT,
    access_restrictions     TEXT,
    public_visitation       INTEGER,
    visitor_capacity_daily  INTEGER,
    onsite_facilities       TEXT,
    nearest_city            TEXT,
    distance_to_city_km     REAL,
    last_survey_date        DATE,
    notes                   TEXT,
    gps_accuracy_meters     REAL,
    site_status             TEXT
);

INSERT INTO archaeological_sites (site_code, site_name, latitude, longitude, country, region, discovery_year, site_type, period, primary_culture, excavation_status, lead_archaeologist, sponsoring_institution, grant_number, total_area_sq_meters, depth_meters, artifact_count_estimated, preservation_rating, climate_zone, soil_type, access_restrictions, public_visitation, visitor_capacity_daily, onsite_facilities, nearest_city, distance_to_city_km, last_survey_date, notes, gps_accuracy_meters, site_status)
VALUES ('AR-001', 'Ancient Valley', 29.9792, 31.1342, 'Egypt', 'North Africa', 1922, 'Necropolis', 'Late Period', 'Egyptian', 'Completed', 'Dr Ahmed', 'University of Cairo', 'GR-5678', 25000.0, 5.0, 12000, 'High', 'Arid', 'Sandy', 'Restricted', 0, 0, 'None', 'Cairo', 15.0, '2022-11-01', 'Well preserved tombs', 1.5, 'Preserved');

INSERT INTO archaeological_sites (site_code, site_name, latitude, longitude, country, region, discovery_year, site_type, period, primary_culture, excavation_status, lead_archaeologist, sponsoring_institution, grant_number, total_area_sq_meters, depth_meters, artifact_count_estimated, preservation_rating, climate_zone, soil_type, access_restrictions, public_visitation, visitor_capacity_daily, onsite_facilities, nearest_city, distance_to_city_km, last_survey_date, notes, gps_accuracy_meters, site_status)
VALUES ('AR-002', 'Riverine Settlement', 51.5074, -0.1278, 'UK', 'Europe', 1985, 'Village', 'Iron Age', 'Celtic', 'Ongoing', 'Dr Smith', 'British Museum', 'GR-1234', 18000.0, 2.5, 8000, 'Medium', 'Temperate', 'Clay', 'Partial', 1500, 200, 'Visitor Center', 'London', 25.0, '2023-03-10', 'Evidence of metalworking', 2.0, 'Active');

INSERT INTO archaeological_sites (site_code, site_name, latitude, longitude, country, region, discovery_year, site_type, period, primary_culture, excavation_status, lead_archaeologist, sponsoring_institution, grant_number, total_area_sq_meters, depth_meters, artifact_count_estimated, preservation_rating, climate_zone, soil_type, access_restrictions, public_visitation, visitor_capacity_daily, onsite_facilities, nearest_city, distance_to_city_km, last_survey_date, notes, gps_accuracy_meters, site_status)
VALUES ('AR-003', 'Mountain Shrine', 35.3606, 138.7274, 'Japan', 'East Asia', 2001, 'Temple', 'Heian', 'Japanese', 'Completed', 'Dr Tanaka', 'Kyoto University', 'GR-9012', 5000.0, 1.0, 2500, 'High', 'Subtropical', 'Volcanic', 'Open', 3000, 500, 'Museum', 'Kyoto', 40.0, '2023-06-20', 'Intricate wood carvings', 0.8, 'Preserved');

-- Urban noise monitoring stations
CREATE TABLE urban_noise_monitoring (
    station_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    monitor_code              TEXT,
    city                      TEXT,
    neighborhood              TEXT,
    latitude                  REAL,
    longitude                 REAL,
    installation_date         DATE,
    sensor_model              TEXT,
    calibration_date          DATE,
    noise_level_db_a          REAL,
    noise_level_db_c          REAL,
    noise_level_db_z          REAL,
    max_noise_db              REAL,
    min_noise_db              REAL,
    average_daytime_db        REAL,
    average_nighttime_db      REAL,
    peak_hour_start           TIME,
    peak_hour_end             TIME,
    data_upload_interval_min  INTEGER,
    operational_status        TEXT,
    power_source              TEXT,
    battery_level_percent     INTEGER,
    maintenance_due_date      DATE,
    last_maintenance_date     DATE,
    comments                  TEXT,
    gust_factor               REAL,
    humidity_percent          REAL,
    temperature_celsius       REAL,
    wind_speed_mps            REAL,
    last_reported_timestamp   DATETIME,
    compliance_status         TEXT
);

INSERT INTO urban_noise_monitoring (monitor_code, city, neighborhood, latitude, longitude, installation_date, sensor_model, calibration_date, noise_level_db_a, noise_level_db_c, noise_level_db_z, max_noise_db, min_noise_db, average_daytime_db, average_nighttime_db, peak_hour_start, peak_hour_end, data_upload_interval_min, operational_status, power_source, battery_level_percent, maintenance_due_date, last_maintenance_date, comments, gust_factor, humidity_percent, temperature_celsius, wind_speed_mps, last_reported_timestamp, compliance_status)
VALUES ('NM-1001', 'Los Angeles', 'Downtown', 34.0522, -118.2437, '2020-05-15', 'NS-500', '2023-01-10', 65.2, 62.8, 64.5, 78.0, 45.0, 70.5, 58.3, '07:00:00', '09:00:00', 15, 'ACTIVE', 'Solar', 85, '2023-12-01', '2023-06-15', 'No issues', 0.3, 55.0, 22.0, 3.2, '2023-07-15 10:00:00', 'COMPLIANT');

INSERT INTO urban_noise_monitoring (monitor_code, city, neighborhood, latitude, longitude, installation_date, sensor_model, calibration_date, noise_level_db_a, noise_level_db_c, noise_level_db_z, max_noise_db, min_noise_db, average_daytime_db, average_nighttime_db, peak_hour_start, peak_hour_end, data_upload_interval_min, operational_status, power_source, battery_level_percent, maintenance_due_date, last_maintenance_date, comments, gust_factor, humidity_percent, temperature_celsius, wind_speed_mps, last_reported_timestamp, compliance_status)
VALUES ('NM-1002', 'New York', 'Midtown', 40.7549, -73.9840, '2019-09-01', 'NS-600', '2022-11-20', 68.0, 65.5, 66.2, 85.0, 48.0, 73.0, 60.0, '08:00:00', '10:00:00', 10, 'ACTIVE', 'Mains', 95, '2023-09-15', '2023-05-10', 'Minor drift observed', 0.2, 60.0, 20.0, 2.8, '2023-07-15 10:05:00', 'COMPLIANT');

INSERT INTO urban_noise_monitoring (monitor_code, city, neighborhood, latitude, longitude, installation_date, sensor_model, calibration_date, noise_level_db_a, noise_level_db_c, noise_level_db_z, max_noise_db, min_noise_db, average_daytime_db, average_nighttime_db, peak_hour_start, peak_hour_end, data_upload_interval_min, operational_status, power_source, battery_level_percent, maintenance_due_date, last_maintenance_date, comments, gust_factor, humidity_percent, temperature_celsius, wind_speed_mps, last_reported_timestamp, compliance_status)
VALUES ('NM-1003', 'Chicago', 'Loop', 41.8781, -87.6298, '2021-03-10', 'NS-550', '2023-02-05', 66.5, 64.0, 65.2, 80.0, 50.0, 71.0, 59.0, '06:30:00', '08:30:00', 20, 'ACTIVE', 'Battery', 70, '2023-11-20', '2023-04-20', 'Battery replacement needed soon', 0.4, 58.0, 18.0, 3.5, '2023-07-15 10:10:00', 'COMPLIANT');