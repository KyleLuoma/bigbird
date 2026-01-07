-- FacilityInspection: records of building inspections
CREATE TABLE FacilityInspection
(
    inspection_id               INTEGER NOT NULL,
    building_id                 INTEGER,
    floor_number                INTEGER,
    inspector_id                INTEGER,
    inspection_year             INTEGER,
    inspection_month            INTEGER,
    inspection_day              INTEGER,
    structural_score            REAL,
    fire_safety_score           REAL,
    electrical_score            REAL,
    hvac_score                  REAL,
    plumbing_score              REAL,
    accessibility_score         REAL,
    cleanliness_score           REAL,
    damage_reported             INTEGER,
    emergency_exit_count        INTEGER,
    sprinkler_status           INTEGER,
    elevator_status            INTEGER,
    lighting_score              REAL,
    noise_level_db              REAL,
    notes_code                  INTEGER,
    PRIMARY KEY (inspection_id)
);

INSERT INTO FacilityInspection VALUES (1,101,2,5001,2023,5,12,85.5,90.0,78.2,88.1,80.0,92.5,87.3,0,4,1,1,88.0,55.2,0);
INSERT INTO FacilityInspection VALUES (2,102,1,5002,2023,6,3,80.0,85.5,75.0,82.0,77.5,89.0,84.0,1,3,0,1,82.5,60.0,2);
INSERT INTO FacilityInspection VALUES (3,103,3,5003,2023,7,20,90.0,95.0,88.0,91.0,85.0,93.0,90.0,0,5,1,0,92.0,50.0,1);

-- EnergyConsumption: monthly utility usage per building
CREATE TABLE EnergyConsumption
(
    record_id               INTEGER NOT NULL,
    building_id             INTEGER,
    month                   INTEGER,
    year                    INTEGER,
    electricity_kwh         REAL,
    gas_therms              REAL,
    water_gallons           REAL,
    solar_kwh               REAL,
    peak_demand_kw          REAL,
    avg_power_factor        REAL,
    carbon_emission_kg      REAL,
    cost_usd                REAL,
    utility_provider_id     INTEGER,
    meter_reading_start     INTEGER,
    meter_reading_end       INTEGER,
    consumption_type        INTEGER,
    demand_charge           REAL,
    transmission_loss_pct   REAL,
    renewable_percent       REAL,
    peak_time_start_hour    INTEGER,
    peak_time_end_hour      INTEGER,
    baseline_adjustment     REAL,
    PRIMARY KEY (record_id)
);

INSERT INTO EnergyConsumption VALUES (1,101,5,2023,12500.5,340.2,45000.0,800.0,5.6,0.98,2300.0,15000.0,10,123450,124950,1,200.0,2.5,15.0,16,20,0.95);
INSERT INTO EnergyConsumption VALUES (2,102,5,2023,9800.0,290.0,38000.0,600.0,4.8,0.97,1800.0,12000.0,11,223340,224340,2,180.0,3.0,12.0,17,19,0.92);
INSERT INTO EnergyConsumption VALUES (3,103,5,2023,14300.3,410.5,52000.0,950.0,6.2,0.99,2600.0,17500.0,12,323120,324620,1,220.0,2.0,18.0,15,22,0.97);

-- WasteManagementLog: tracking waste collection and disposal
CREATE TABLE WasteManagementLog
(
    log_id               INTEGER NOT NULL,
    facility_id          INTEGER,
    waste_type_code      INTEGER,
    collection_date      INTEGER,
    weight_kg            REAL,
    disposal_method_code INTEGER,
    contractor_id        INTEGER,
    container_id         INTEGER,
    recyclable_flag      INTEGER,
    hazardous_flag       INTEGER,
    landfill_fee_usd     REAL,
    recycling_income_usd REAL,
    notes_code           INTEGER,
    incident_flag        INTEGER,
    audit_score          REAL,
    temperature_c        REAL,
    humidity_percent     REAL,
    transport_distance_km REAL,
    vehicle_id           INTEGER,
    driver_id            INTEGER,
    schedule_id          INTEGER,
    compliance_flag      INTEGER,
    PRIMARY KEY (log_id)
);

INSERT INTO WasteManagementLog VALUES (1,201,3,20230615,1200.5,2,301,401,1,0,500.0,200.0,0,0,92.5,22.0,55.0,12.5,501,601,701,1);
INSERT INTO WasteManagementLog VALUES (2,202,4,20230616,850.0,1,302,402,0,1,400.0,0.0,1,1,78.0,20.0,60.0,10.0,502,602,702,0);
INSERT INTO WasteManagementLog VALUES (3,203,2,20230617,960.3,3,303,403,1,0,450.0,150.0,0,0,85.0,21.5,58.0,11.0,503,603,703,1);

-- ParkingLotUsage: daily usage statistics per parking lot
CREATE TABLE ParkingLotUsage
(
    lot_id                INTEGER NOT NULL,
    usage_date            INTEGER,
    total_spaces          INTEGER,
    occupied_spaces       INTEGER,
    hourly_rate_cents     INTEGER,
    revenue_usd           REAL,
    violation_count       INTEGER,
    electric_vehicle_spots INTEGER,
    handicap_spots        INTEGER,
    average_stay_minutes  REAL,
    peak_hour_start       INTEGER,
    peak_hour_end         INTEGER,
    lighting_status       INTEGER,
    security_incident_flag INTEGER,
    maintenance_flag      INTEGER,
    cleaning_status       INTEGER,
    sensor_status         INTEGER,
    pay_station_status    INTEGER,
    reserved_spaces       INTEGER,
    overflow_spaces       INTEGER,
    ticket_issued_count   INTEGER,
    PRIMARY KEY (lot_id, usage_date)
);

INSERT INTO ParkingLotUsage VALUES (1,20230615,500,375,200,750.0,3,20,15,45.2,8,10,1,0,0,1,1,1,10,5,12);
INSERT INTO ParkingLotUsage VALUES (1,20230616,500,390,200,780.0,2,22,15,44.8,9,11,1,0,0,1,1,1,12,6,10);
INSERT INTO ParkingLotUsage VALUES (2,20230615,300,210,150,315.0,1,10,8,38.5,7,9,1,1,0,1,1,0,5,2,8);

-- ITAssetInventory: inventory of IT assets
CREATE TABLE ITAssetInventory
(
    asset_id               INTEGER NOT NULL,
    asset_type_code        INTEGER,
    purchase_date          INTEGER,
    warranty_years         INTEGER,
    depreciation_rate      REAL,
    current_value_usd      REAL,
    location_id            INTEGER,
    department_id          INTEGER,
    serial_number          INTEGER,
    mac_address_int        INTEGER,
    ip_address_int         INTEGER,
    status_code            INTEGER,
    last_maintenance_date  INTEGER,
    assigned_user_id       INTEGER,
    power_watts            REAL,
    cpu_cores              INTEGER,
    ram_gb                 REAL,
    storage_gb             REAL,
    os_version_code        INTEGER,
    software_license_count INTEGER,
    network_port_count     INTEGER,
    PRIMARY KEY (asset_id)
);

INSERT INTO ITAssetInventory VALUES (1001,1,20200115,3,0.2,1200.0,10,101,555001,11223344,3232235777,1,20230601,2001,250.0,8,16.0,512.0,5,15,4);
INSERT INTO ITAssetInventory VALUES (1002,2,20210320,2,0.25,800.0,11,102,555002,11223345,3232235778,2,20230605,2002,150.0,4,8.0,256.0,3,10,2);
INSERT INTO ITAssetInventory VALUES (1003,3,20220710,4,0.15,1500.0,12,103,555003,11223346,3232235779,1,20230610,2003,300.0,12,32.0,1024.0,6,20,6);

-- SecurityIncident: log of security incidents
CREATE TABLE SecurityIncident
(
    incident_id            INTEGER NOT NULL,
    incident_date          INTEGER,
    incident_time_hour     INTEGER,
    location_id            INTEGER,
    incident_type_code     INTEGER,
    severity_level         INTEGER,
    reported_by_id         INTEGER,
    resolved_flag          INTEGER,
    resolution_time_hours  REAL,
    investigation_cost_usd REAL,
    witness_count          INTEGER,
    camera_footage_flag    INTEGER,
    alarm_triggered_flag   INTEGER,
    response_team_id       INTEGER,
    lockdown_flag          INTEGER,
    evacuation_flag        INTEGER,
    property_damage_usd    REAL,
    data_breach_flag       INTEGER,
    files_compromised_cnt  INTEGER,
    followup_actions_cnt   INTEGER,
    compliance_flag        INTEGER,
    PRIMARY KEY (incident_id)
);

INSERT INTO SecurityIncident VALUES (5001,20230614,22,301,2,4,7001,1,5.0,1200.0,2,1,1,4001,0,0,5000.0,0,0,3,1);
INSERT INTO SecurityIncident VALUES (5002,20230615,9,302,3,3,7002,0,0.0,0.0,0,0,0,4002,0,0,0.0,1,12,5,0);
INSERT INTO SecurityIncident VALUES (5003,20230616,18,303,1,5,7003,1,12.5,2500.0,4,1,1,4003,1,1,15000.0,1,30,8,1);

-- VendorContract: details of vendor contracts
CREATE TABLE VendorContract
(
    contract_id            INTEGER NOT NULL,
    vendor_id              INTEGER,
    start_date             INTEGER,
    end_date               INTEGER,
    contract_value_usd     REAL,
    service_type_code      INTEGER,
    performance_score      REAL,
    renewal_flag           INTEGER,
    notice_period_days     INTEGER,
    penalty_rate_percent   REAL,
    payment_terms_code     INTEGER,
    discount_percent       REAL,
    currency_code          INTEGER,
    governing_law_code     INTEGER,
    confidentiality_flag   INTEGER,
    exclusivity_flag       INTEGER,
    audit_rights_flag      INTEGER,
    insurance_requirements_code INTEGER,
    liability_limit_usd    REAL,
    termination_fee_usd    REAL,
    compliance_score       REAL,
    PRIMARY KEY (contract_id)
);

INSERT INTO VendorContract VALUES (9001,601,20220101,20231231,250000.0,1,88.5,1,90,5.0,2,3.0,840,100,1,0,1,5,200000.0,15000.0,92.0);
INSERT INTO VendorContract VALUES (9002,602,20220315,20240314,180000.0,2,81.0,0,60,4.5,3,2.5,840,101,1,1,0,4,150000.0,12000.0,85.0);
INSERT INTO VendorContract VALUES (9003,603,20220701,20230701,50000.0,3,75.0,1,30,6.0,1,1.0,840,102,0,0,1,3,40000.0,5000.0,78.0);

-- BuildingProject: construction and renovation projects
CREATE TABLE BuildingProject
(
    project_id                INTEGER NOT NULL,
    building_id               INTEGER,
    project_name_code         INTEGER,
    start_date                INTEGER,
    planned_end_date          INTEGER,
    actual_end_date           INTEGER,
    budget_usd                REAL,
    spent_usd                 REAL,
    phase_code                INTEGER,
    contractor_id             INTEGER,
    architect_id              INTEGER,
    permits_obtained_flag     INTEGER,
    inspections_passed        INTEGER,
    safety_incidents_count    INTEGER,
    change_order_count        INTEGER,
    delay_days                INTEGER,
    risk_score                REAL,
    sustainability_rating     REAL,
    energy_efficiency_target_pct REAL,
    green_certification_level_code INTEGER,
    key_milestone_date1      INTEGER,
    key_milestone_date2      INTEGER,
    PRIMARY KEY (project_id)
);

INSERT INTO BuildingProject VALUES (3001,101,10,20230101,20231231,20231220,1200000.0,1150000.0,3,701,801,1,5,0,2,15,0.2,85.0,15.0,2,20230601,20231201);
INSERT INTO BuildingProject VALUES (3002,102,11,20230215,20241015,20241020,800000.0,850000.0,2,702,802,1,6,1,3,30,0.35,78.0,12.0,1,20230715,20241010);
INSERT INTO BuildingProject VALUES (3003,103,12,20230401,20240630,20240625,500000.0,495000.0,1,703,803,1,4,0,1,5,0.15,90.0,18.0,3,20240501,20240620);

-- HealthEducationProgram: education initiatives
CREATE TABLE HealthEducationProgram
(
    program_id                INTEGER NOT NULL,
    program_type_code         INTEGER,
    target_audience_code      INTEGER,
    start_date                INTEGER,
    end_date                  INTEGER,
    sessions_count            INTEGER,
    total_participants        INTEGER,
    facilitator_id            INTEGER,
    material_cost_usd         REAL,
    venue_cost_usd            REAL,
    equipment_cost_usd        REAL,
    evaluation_score          REAL,
    feedback_count            INTEGER,
    online_access_flag        INTEGER,
    certification_awarded_flag INTEGER,
    sponsor_id                INTEGER,
    compliance_flag           INTEGER,
    outreach_hours            INTEGER,
    media_spots               INTEGER,
    social_media_impacts      INTEGER,
    followup_sessions         INTEGER,
    PRIMARY KEY (program_id)
);

INSERT INTO HealthEducationProgram VALUES (4001,1,2,20230115,20230215,8,120,901,2000.0,1500.0,800.0,88.5,60,1,0,1001,1,40,5,300,2);
INSERT INTO HealthEducationProgram VALUES (4002,2,3,20230301,20230401,10,200,902,2500.0,1800.0,900.0,92.0,80,0,1,1002,1,55,7,450,3);
INSERT INTO HealthEducationProgram VALUES (4003,3,1,20230510,20230610,6,90,903,1800.0,1300.0,700.0,85.0,45,1,0,1003,0,30,3,200,1);

-- MedicalSupplyForecast: forecast of medical supply needs
CREATE TABLE MedicalSupplyForecast
(
    forecast_id               INTEGER NOT NULL,
    supply_item_id            INTEGER,
    forecast_month            INTEGER,
    forecast_year             INTEGER,
    predicted_quantity        REAL,
    safety_stock              REAL,
    lead_time_days           INTEGER,
    vendor_id                 INTEGER,
    unit_cost_usd             REAL,
    total_cost_usd            REAL,
    usage_trend_score        REAL,
    seasonality_factor       REAL,
    adjustment_factor        REAL,
    approved_flag            INTEGER,
    created_by_id            INTEGER,
    created_date             INTEGER,
    last_updated_by_id       INTEGER,
    last_updated_date        INTEGER,
    notes_code               INTEGER,
    confidence_percent       REAL,
    reorder_point            REAL,
    PRIMARY KEY (forecast_id)
);

INSERT INTO MedicalSupplyForecast VALUES (6001,10001,7,2023,1500.0,300.0,14,801,5.0,7500.0,0.9,1.1,1.0,1,1101,20230601,1102,20230605,0,95.0,1200.0);
INSERT INTO MedicalSupplyForecast VALUES (6002,10002,7,2023,2000.0,400.0,10,802,3.5,7000.0,0.85,1.05,0.95,1,1103,20230602,1104,20230606,1,92.0,1600.0);
INSERT INTO MedicalSupplyForecast VALUES (6003,10003,7,2023,1200.0,250.0,7,803,7.2,8640.0,0.95,1.2,1.05,0,1105,20230603,1106,20230607,0,98.0,1000.0);