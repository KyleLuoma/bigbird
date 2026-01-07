-- Energy usage details for each branch on a daily basis
CREATE TABLE branch_energy_usage_detail
(
    record_id               INTEGER PRIMARY KEY,
    branch_id               INTEGER NOT NULL,
    usage_date              DATE NOT NULL,
    electricity_kwh         REAL NOT NULL,
    gas_m3                  REAL NOT NULL,
    water_liters            REAL NOT NULL,
    renewable_pct           REAL NOT NULL,
    peak_demand_kw          REAL NOT NULL,
    avg_voltage             REAL NOT NULL,
    avg_current             REAL NOT NULL,
    hvac_energy_kwh         REAL NOT NULL,
    lighting_energy_kwh     REAL NOT NULL,
    equipment_energy_kwh    REAL NOT NULL,
    total_energy_kwh        REAL NOT NULL,
    carbon_emission_kg      REAL NOT NULL,
    weather_condition       TEXT NOT NULL,
    temperature_c           REAL NOT NULL,
    humidity_pct            REAL NOT NULL,
    notes                   TEXT,
    created_at              TIMESTAMP NOT NULL
);

INSERT INTO branch_energy_usage_detail VALUES (1, 101, '2023-01-01', 1200.5, 350.2, 50000, 35.0, 85.3, 230.5, 12.4, 400.0, 150.0, 250.0, 800.0, 420.7, 'Sunny', 22.5, 45.0, 'Normal operation', '2023-01-01 08:00:00');
INSERT INTO branch_energy_usage_detail VALUES (2, 102, '2023-01-01', 950.0, 280.0, 42000, 40.0, 78.0, 225.0, 11.8, 350.0, 130.0, 210.0, 690.0, 360.2, 'Cloudy', 18.3, 55.0, 'Slightly high usage', '2023-01-01 08:05:00');
INSERT INTO branch_energy_usage_detail VALUES (3, 103, '2023-01-01', 1100.8, 300.5, 47000, 38.0, 82.5, 228.0, 12.0, 380.0, 140.0, 220.0, 740.0, 395.0, 'Rainy', 20.1, 50.0, 'Maintenance scheduled', '2023-01-01 08:10:00');

-- Metadata for environmental sensor stations
CREATE TABLE environmental_sensor_station_meta
(
    station_id               INTEGER PRIMARY KEY,
    station_name             TEXT NOT NULL,
    location_latitude        REAL NOT NULL,
    location_longitude       REAL NOT NULL,
    installation_date        DATE NOT NULL,
    sensor_type              TEXT NOT NULL,
    model_number             TEXT NOT NULL,
    firmware_version         TEXT NOT NULL,
    calibration_date         DATE NOT NULL,
    maintenance_interval_days INTEGER NOT NULL,
    last_maintenance_date    DATE NOT NULL,
    status                   TEXT NOT NULL,
    owner_dept               TEXT NOT NULL,
    data_endpoint            TEXT NOT NULL,
    communication_protocol   TEXT NOT NULL,
    power_supply             TEXT NOT NULL,
    battery_capacity_mah    INTEGER NOT NULL,
    notes                    TEXT,
    created_at               TIMESTAMP NOT NULL,
    updated_at               TIMESTAMP NOT NULL
);

INSERT INTO environmental_sensor_station_meta VALUES (1, 'RiverWatch1', 45.1234, -71.5678, '2022-05-10', 'Weather', 'WX-200', 'v1.3', '2023-01-15', 180, '2023-07-01', 'Active', 'EnvDept', 'http://data.env/river1', 'LoRa', 'Solar', 2000, 'Near river bank', '2023-07-01 09:00:00', '2023-07-01 09:00:00');
INSERT INTO environmental_sensor_station_meta VALUES (2, 'AirQualityA', 46.2345, -70.6789, '2021-11-20', 'Air', 'AQ-500', 'v2.0', '2022-12-01', 365, '2023-06-15', 'Active', 'EnvDept', 'http://data.env/airA', 'Cellular', 'Battery', 1500, 'Urban area', '2023-06-15 10:30:00', '2023-06-15 10:30:00');
INSERT INTO environmental_sensor_station_meta VALUES (3, 'SoilMoist2', 44.9876, -72.3456, '2023-02-01', 'Soil', 'SM-300', 'v1.0', '2023-03-01', 90, 'Active', 'AgriDept', 'http://data.agri/soil2', 'WiFi', 'Solar', 2500, 'Farm field', '2023-03-01 08:45:00', '2023-03-01 08:45:00');

-- Performance metrics for fleet drivers
CREATE TABLE fleet_driver_performance
(
    driver_perf_id          INTEGER PRIMARY KEY,
    driver_id               INTEGER NOT NULL,
    vehicle_id              INTEGER NOT NULL,
    period_start            DATE NOT NULL,
    period_end              DATE NOT NULL,
    total_miles             REAL NOT NULL,
    avg_speed               REAL NOT NULL,
    harsh_brakes            INTEGER NOT NULL,
    harsh_accels            INTEGER NOT NULL,
    idle_time_minutes      INTEGER NOT NULL,
    fuel_consumed_liters    REAL NOT NULL,
    emissions_kg            REAL NOT NULL,
    on_time_deliveries      INTEGER NOT NULL,
    missed_deliveries       INTEGER NOT NULL,
    safety_score            REAL NOT NULL,
    training_completed      TEXT NOT NULL,
    license_expiry          DATE NOT NULL,
    comments                TEXT,
    record_created          DATE NOT NULL,
    record_updated          DATE NOT NULL,
    supervisor_id           INTEGER NOT NULL,
    region_code             TEXT NOT NULL
);

INSERT INTO fleet_driver_performance VALUES (1, 201, 301, '2023-01-01', '2023-01-31', 1200.5, 45.2, 3, 2, 120, 150.0, 30.5, 28, 4.7, 'Yes', '2025-06-30', 'Good performance', '2023-02-01', '2023-02-01', 501, 'NE');
INSERT INTO fleet_driver_performance VALUES (2, 202, 302, '2023-01-01', '2023-01-31', 1100.0, 44.0, 5, 3, 140, 160.5, 29.0, 30, 4.2, 'No', '2024-12-15', 'Needs training', '2023-02-01', '2023-02-01', 502, 'NW');
INSERT INTO fleet_driver_performance VALUES (3, 203, 303, '2023-01-01', '2023-01-31', 1250.8, 46.5, 2, 1, 110, 145.3, 31.0, 27, 4.9, 'Yes', '2026-03-20', 'Excellent', '2023-02-01', '2023-02-01', 503, 'SE');

-- Snapshot of inventory at logistics hubs
CREATE TABLE logistics_hub_inventory_snapshot
(
    snapshot_id             INTEGER PRIMARY KEY,
    hub_id                  INTEGER NOT NULL,
    snapshot_date           DATE NOT NULL,
    total_items             INTEGER NOT NULL,
    hazardous_items         INTEGER NOT NULL,
    perishable_items        INTEGER NOT NULL,
    cold_storage_units      INTEGER NOT NULL,
    warehouse_area_sqft     REAL NOT NULL,
    loading_docks           INTEGER NOT NULL,
    available_space_pct     REAL NOT NULL,
    inbound_shipments       INTEGER NOT NULL,
    outbound_shipments      INTEGER NOT NULL,
    average_dwell_days      REAL NOT NULL,
    inventory_value_usd     REAL NOT NULL,
    discrepancy_count       INTEGER NOT NULL,
    checked_by              INTEGER NOT NULL,
    notes                   TEXT,
    created_at              TIMESTAMP NOT NULL,
    updated_at              TIMESTAMP NOT NULL,
    audit_status            TEXT NOT NULL,
    temperature_c           REAL NOT NULL
);

INSERT INTO logistics_hub_inventory_snapshot VALUES (1, 401, '2023-07-01', 50000, 120, 8000, 25, 150000.0, 12, 85.0, 300, 250, 2.5, 4500000.0, 3, 601, 'All good', '2023-07-01 07:00:00', '2023-07-01 07:00:00', 'Passed', 22.5);
INSERT INTO logistics_hub_inventory_snapshot VALUES (2, 402, '2023-07-01', 47000, 100, 7500, 20, 140000.0, 10, 80.0, 280, 260, 2.8, 4200000.0, 5, 602, 'Minor discrepancy', '2023-07-01 07:15:00', '2023-07-01 07:15:00', 'Pending', 21.0);
INSERT INTO logistics_hub_inventory_snapshot VALUES (3, 403, '2023-07-01', 52000, 130, 8500, 30, 160000.0, 14, 88.0, 320, 240, 2.3, 4800000.0, 2, 603, 'Inspection upcoming', '2023-07-01 07:30:00', '2023-07-01 07:30:00', 'Passed', 23.0);

-- Demographic snapshot for regions
CREATE TABLE regional_demographic_snapshot
(
    snapshot_id               INTEGER PRIMARY KEY,
    region_code               TEXT NOT NULL,
    snapshot_year             INTEGER NOT NULL,
    total_population          INTEGER NOT NULL,
    median_age                REAL NOT NULL,
    male_percent              REAL NOT NULL,
    female_percent            REAL NOT NULL,
    urban_population_percent  REAL NOT NULL,
    rural_population_percent  REAL NOT NULL,
    average_household_size    REAL NOT NULL,
    median_income_usd         REAL NOT NULL,
    unemployment_rate         REAL NOT NULL,
    education_highschool_percent REAL NOT NULL,
    education_bachelor_percent   REAL NOT NULL,
    education_master_percent     REAL NOT NULL,
    education_phd_percent        REAL NOT NULL,
    poverty_rate               REAL NOT NULL,
    population_density_per_sqkm REAL NOT NULL,
    growth_rate_percent       REAL NOT NULL,
    data_source                TEXT NOT NULL
);

INSERT INTO regional_demographic_snapshot VALUES (1, 'R01', 2023, 1500000, 36.5, 49.0, 51.0, 68.0, 32.0, 2.8, 55000.0, 5.5, 85.0, 25.0, 10.0, 2.0, 12.0, 150.0, 1.2, 'Census2023');
INSERT INTO regional_demographic_snapshot VALUES (2, 'R02', 2023, 890000, 34.2, 48.5, 51.5, 55.0, 45.0, 3.0, 62000.0, 4.8, 80.0, 22.0, 9.0, 1.5, 10.0, 130.0, 0.9, 'Census2023');
INSERT INTO regional_demographic_snapshot VALUES (3, 'R03', 2023, 2100000, 38.1, 50.0, 50.0, 72.0, 28.0, 2.7, 47000.0, 6.2, 88.0, 27.0, 11.0, 2.5, 14.0, 180.0, 1.5, 'Census2023');

-- Detailed digital advertising spend
CREATE TABLE digital_advertising_spend_detail
(
    spend_id                INTEGER PRIMARY KEY,
    campaign_id             INTEGER NOT NULL,
    channel                 TEXT NOT NULL,
    date                    DATE NOT NULL,
    impressions             INTEGER NOT NULL,
    clicks                  INTEGER NOT NULL,
    ctr                     REAL NOT NULL,
    cpc_usd                 REAL NOT NULL,
    cpm_usd                 REAL NOT NULL,
    total_spend_usd         REAL NOT NULL,
    conversion_rate         REAL NOT NULL,
    conversions             INTEGER NOT NULL,
    revenue_usd             REAL NOT NULL,
    roi                     REAL NOT NULL,
    audience_segment        TEXT NOT NULL,
    device_type             TEXT NOT NULL,
    geographic_region       TEXT NOT NULL,
    ad_format               TEXT NOT NULL,
    creative_id             INTEGER NOT NULL,
    created_at              TIMESTAMP NOT NULL,
    updated_at              TIMESTAMP NOT NULL
);

INSERT INTO digital_advertising_spend_detail VALUES (1, 1001, 'Social', '2023-06-15', 500000, 7200, 0.0144, 0.45, 5.0, 3240.0, 0.025, 180, 4500.0, 0.39, 'YoungAdults', 'Mobile', 'NorthAmerica', 'Video', 301, '2023-06-16 10:00:00', '2023-06-16 10:00:00');
INSERT INTO digital_advertising_spend_detail VALUES (2, 1002, 'Search', '2023-06-15', 300000, 6600, 0.0220, 0.55, 7.5, 3630.0, 0.030, 200, 5000.0, 0.38, 'Professionals', 'Desktop', 'Europe', 'Text', 302, '2023-06-16 10:05:00', '2023-06-16 10:05:00');
INSERT INTO digital_advertising_spend_detail VALUES (3, 1003, 'Display', '2023-06-15', 800000, 6400, 0.0080, 0.38, 4.5, 2400.0, 0.020, 130, 2600.0, 0.08, 'Parents', 'Tablet', 'Asia', 'Banner', 303, '2023-06-16 10:10:00', '2023-06-16 10:10:00');

-- Insurance policy premium history details
CREATE TABLE insurance_policy_premium_history_detail
(
    premium_id               INTEGER PRIMARY KEY,
    policy_number            TEXT NOT NULL,
    effective_date           DATE NOT NULL,
    expiration_date          DATE NOT NULL,
    premium_amount_usd       REAL NOT NULL,
    payment_frequency        TEXT NOT NULL,
    payment_method           TEXT NOT NULL,
    discount_percent         REAL NOT NULL,
    surcharge_percent        REAL NOT NULL,
    tax_amount_usd           REAL NOT NULL,
    total_due_usd            REAL NOT NULL,
    policy_status            TEXT NOT NULL,
    underwriting_risk_score  REAL NOT NULL,
    broker_id                INTEGER NOT NULL,
    agent_id                 INTEGER NOT NULL,
    claim_count              INTEGER NOT NULL,
    total_claim_amount_usd   REAL NOT NULL,
    notes                    TEXT,
    created_at               TIMESTAMP NOT NULL,
    updated_at               TIMESTAMP NOT NULL,
    renewal_notice_sent      DATE NOT NULL,
    last_payment_date        DATE NOT NULL
);

INSERT INTO insurance_policy_premium_history_detail VALUES (1, 'POL12345', '2023-01-01', '2023-12-31', 1200.0, 'Annual', 'CreditCard', 5.0, 0.0, 96.0, 1261.0, 'Active', 78.5, 401, 501, 2, 8000.0, 'Renewal pending', '2023-01-01 09:00:00', '2023-01-01 09:00:00', '2022-12-01', '2023-01-10');
INSERT INTO insurance_policy_premium_history_detail VALUES (2, 'POL67890', '2023-04-01', '2024-03-31', 950.0, 'SemiAnnual', 'BankTransfer', 3.0, 2.0, 71.25, 1020.0, 'Active', 82.0, 402, 502, 0, 0.0, 'No claims', '2023-04-01 09:15:00', '2023-04-01 09:15:00', '2023-03-15', '2023-04-05');
INSERT INTO insurance_policy_premium_history_detail VALUES (3, 'POL24680', '2022-07-01', '2023-06-30', 1100.0, 'Monthly', 'DebitCard', 0.0, 1.5, 82.5, 1184.0, 'Lapsed', 69.0, 403, 503, 4, 15000.0, 'High risk', '2022-07-01 09:30:00', '2022-07-01 09:30:00', '2023-05-20', '2022-07-10');

-- Corporate social responsibility initiatives
CREATE TABLE corporate_social_responsibility_initiative
(
    initiative_id            INTEGER PRIMARY KEY,
    name                     TEXT NOT NULL,
    start_date               DATE NOT NULL,
    end_date                 DATE,
    budget_usd               REAL NOT NULL,
    target_community         TEXT NOT NULL,
    beneficiaries_count      INTEGER NOT NULL,
    volunteer_hours          INTEGER NOT NULL,
    carbon_offset_tons       REAL NOT NULL,
    donations_usd            REAL NOT NULL,
    partnership_org          TEXT NOT NULL,
    status                   TEXT NOT NULL,
    responsible_dept         TEXT NOT NULL,
    manager_id               INTEGER NOT NULL,
    description              TEXT,
    metrics_reported         TEXT,
    approval_date            DATE NOT NULL,
    last_review_date         DATE NOT NULL,
    created_at               TIMESTAMP NOT NULL,
    updated_at               TIMESTAMP NOT NULL,
    risk_level               TEXT NOT NULL
);

INSERT INTO corporate_social_responsibility_initiative VALUES (1, 'GreenCampus', '2023-03-01', NULL, 250000.0, 'UniversityStudents', 5000, 1200, 150.0, 50000.0, 'EcoAlliance', 'Ongoing', 'CSR', 601, 'Tree planting and recycling program', 'TreeCount,RecycledTons', '2023-02-15', '2023-09-01', '2023-03-01 08:00:00', '2023-09-01 08:00:00', 'Low');
INSERT INTO corporate_social_responsibility_initiative VALUES (2, 'HealthOutreach', '2022-05-15', '2023-05-14', 180000.0, 'RuralCommunities', 3000, 800, 0.0, 30000.0, 'HealthPartners', 'Completed', 'CSR', 602, 'Mobile clinics and health education', 'PatientsSeen,Workshops', '2022-04-20', '2023-05-10', '2022-05-15 09:00:00', '2023-05-10 09:00:00', 'Medium');
INSERT INTO corporate_social_responsibility_initiative VALUES (3, 'TechEducation', '2023-01-10', '2024-01-09', 210000.0, 'LowIncomeYouth', 2500, 950, 0.0, 40000.0, 'EduTech', 'Ongoing', 'CSR', 603, 'Coding bootcamps and device donations', 'Graduates,DevicesDonated', '2022-12-30', '2023-10-01', '2023-01-10 10:00:00', '2023-10-01 10:00:00', 'Low');

-- Telecom fiber network inventory
CREATE TABLE telecom_fiber_network_inventory
(
    fiber_id                 INTEGER PRIMARY KEY,
    segment_name             TEXT NOT NULL,
    start_node               TEXT NOT NULL,
    end_node                 TEXT NOT NULL,
    length_km                REAL NOT NULL,
    fiber_type               TEXT NOT NULL,
    capacity_gbps            INTEGER NOT NULL,
    installation_date        DATE NOT NULL,
    last_inspection_date     DATE NOT NULL,
    splice_count             INTEGER NOT NULL,
    attenuation_db           REAL NOT NULL,
    status                   TEXT NOT NULL,
    owner_company            TEXT NOT NULL,
    maintenance_contract     TEXT NOT NULL,
    warranty_expiration      DATE NOT NULL,
    notes                    TEXT,
    created_at               TIMESTAMP NOT NULL,
    updated_at               TIMESTAMP NOT NULL,
    geographic_region        TEXT NOT NULL,
    latitude_start           REAL NOT NULL,
    longitude_start          REAL NOT NULL,
    latitude_end             REAL NOT NULL,
    longitude_end            REAL NOT NULL
);

INSERT INTO telecom_fiber_network_inventory VALUES (1, 'NorthLink', 'NodeA', 'NodeB', 120.5, 'SMF', 100, '2021-06-01', '2023-06-01', 15, 0.25, 'Active', 'TeleCo', 'ContractA', '2025-06-01', 'Main north corridor', '2023-06-01 07:00:00', '2023-06-01 07:00:00', 'NorthRegion', 45.1234, -71.5678, 46.2345, -70.6789);
INSERT INTO telecom_fiber_network_inventory VALUES (2, 'SouthRing', 'NodeC', 'NodeD', 85.0, 'MMF', 40, '2020-03-15', '2023-05-20', 10, 0.35, 'Active', 'TeleCo', 'ContractB', '2024-03-15', 'Southern loop', '2023-05-20 08:00:00', '2023-05-20 08:00:00', 'SouthRegion', 44.9876, -72.3456, 45.6789, -71.1234);
INSERT INTO telecom_fiber_network_inventory VALUES (3, 'EastFiber', 'NodeE', 'NodeF', 150.2, 'SMF', 200, '2022-01-10', '2023-07-10', 20, 0.20, 'Planned', 'TeleCo', 'ContractC', '2026-01-10', 'Future east expansion', '2023-07-10 09:00:00', '2023-07-10 09:00:00', 'EastRegion', 46.1111, -70.2222, 47.3333, -69.4444);

-- Water quality station readings
CREATE TABLE water_quality_station_readings
(
    reading_id               INTEGER PRIMARY KEY,
    station_id               INTEGER NOT NULL,
    reading_timestamp        TIMESTAMP NOT NULL,
    ph_value                 REAL NOT NULL,
    temperature_c            REAL NOT NULL,
    turbidity_ntu            REAL NOT NULL,
    dissolved_oxygen_mg_l    REAL NOT NULL,
    conductivity_us_cm       REAL NOT NULL,
    nitrate_mg_l             REAL NOT NULL,
    phosphate_mg_l           REAL NOT NULL,
    total_coliform_cfu       INTEGER NOT NULL,
    e_coli_cfu               INTEGER NOT NULL,
    chlorine_residual_mg_l   REAL NOT NULL,
    sampling_method          TEXT NOT NULL,
    analyst_name             TEXT NOT NULL,
    quality_flag             TEXT NOT NULL,
    notes                    TEXT,
    created_at               TIMESTAMP NOT NULL,
    updated_at               TIMESTAMP NOT NULL,
    batch_number             INTEGER NOT NULL,
    calibration_status       TEXT NOT NULL
);

INSERT INTO water_quality_station_readings VALUES (1, 101, '2023-07-01 06:00:00', 7.2, 15.5, 3.1, 8.5, 250.0, 0.8, 0.04, 5, 0, 0.2, 'Grab', 'Alice', 'Pass', 'Routine check', '2023-07-01 06:15:00', '2023-07-01 06:15:00', 301, 'Calibrated');
INSERT INTO water_quality_station_readings VALUES (2, 102, '2023-07-01 07:00:00', 6.9, 14.8, 2.8, 9.0, 260.0, 0.7, 0.05, 4, 0, 0.1, 'Automatic', 'Bob', 'Pass', 'Automatic sampler', '2023-07-01 07:20:00', '2023-07-01 07:20:00', 302, 'Calibrated');
INSERT INTO water_quality_station_readings VALUES (3, 103, '2023-07-01 08:00:00', 7.5, 16.0, 3.5, 8.2, 240.0, 0.9, 0.03, 6, 1, 0.3, 'Manual', 'Carol', 'Fail', 'High coliform', '2023-07-01 08:10:00', '2023-07-01 08:10:00', 303, 'Pending');