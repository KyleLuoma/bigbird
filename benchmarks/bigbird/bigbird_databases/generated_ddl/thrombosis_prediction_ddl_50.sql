-- Energy metrics per facility
CREATE TABLE FacilityEnergyMetric
(
    metric_id               INTEGER PRIMARY KEY,
    facility_id             INTEGER,
    record_date             DATE,
    electricity_kwh         REAL,
    water_liters            REAL,
    gas_therms              REAL,
    solar_kw                REAL,
    hvac_power_kw           REAL,
    cooling_degree_days     INTEGER,
    heating_degree_days     INTEGER,
    co2_tons                REAL,
    renewable_percent       REAL,
    peak_demand_kw          REAL,
    avg_voltage             REAL,
    power_factor            REAL,
    maintenance_cost        REAL,
    carbon_intensity        REAL,
    avg_temperature_c       REAL,
    avg_humidity_percent    REAL,
    notes                   TEXT
);

INSERT INTO FacilityEnergyMetric VALUES (1,101,'2023-01-15',1200.5,35000,150.2,45.3,300.0,12,8,2.5,35.0,250.0,230.0,0.95,1200.0,0.45,22.5,55.0,'Monthly snapshot');
INSERT INTO FacilityEnergyMetric VALUES (2,102,'2023-01-15',980.2,28000,130.0,30.0,280.5,10,6,2.1,40.0,230.0,225.0,0.96,1100.0,0.40,21.0,60.0,'Monthly snapshot');
INSERT INTO FacilityEnergyMetric VALUES (3,103,'2023-01-15',1500.0,40000,180.5,60.0,320.0,15,10,3.0,30.0,260.0,240.0,0.94,1300.0,0.50,23.0,50.0,'Monthly snapshot');

-- Sensor readings from environmental monitoring stations
CREATE TABLE EnvironmentalSensorReading
(
    reading_id           INTEGER PRIMARY KEY,
    sensor_id            INTEGER,
    location_id          INTEGER,
    reading_timestamp    DATETIME,
    temperature_c        REAL,
    humidity_percent     REAL,
    pm2_5                REAL,
    pm10                 REAL,
    no2_ppb              REAL,
    o3_ppb               REAL,
    co_ppm               REAL,
    so2_ppb              REAL,
    sound_db             REAL,
    light_lux            REAL,
    vibration_g          REAL,
    battery_mv           INTEGER,
    status               TEXT,
    firmware_version     TEXT,
    calibration_date     DATE,
    last_maintenance     DATE,
    notes                TEXT
);

INSERT INTO EnvironmentalSensorReading VALUES (1,201,301,'2023-02-01 08:00:00',22.5,45.0,12.3,20.1,15.0,30.0,0.4,5.0,55.0,300.0,0.02,3700,'OK','v1.2','2022-12-01','2023-01-15','Routine check');
INSERT INTO EnvironmentalSensorReading VALUES (2,202,302,'2023-02-01 08:05:00',23.0,47.0,10.5,18.9,14.5,28.0,0.5,4.8,58.0,320.0,0.01,3600,'OK','v1.3','2022-11-20','2023-01-10','Calibration due soon');
INSERT INTO EnvironmentalSensorReading VALUES (3,203,303,'2023-02-01 08:10:00',21.8,44.5,13.0,22.0,16.0,32.0,0.3,5.2,52.0,310.0,0.03,3800,'WARN','v1.2','2022-12-15','2023-01-20','Battery low');

-- Performance metrics for supply chain vendors
CREATE TABLE SupplyChainVendorPerformance
(
    perf_id                INTEGER PRIMARY KEY,
    vendor_id              INTEGER,
    evaluation_date        DATE,
    delivery_on_time_pct   REAL,
    quality_score          REAL,
    price_variance_pct     REAL,
    communication_score    REAL,
    responsiveness_score   REAL,
    contract_compliance    TEXT,
    incident_count         INTEGER,
    avg_lead_time_days     REAL,
    fill_rate_pct          REAL,
    return_rate_pct        REAL,
    sustainability_score   REAL,
    risk_rating            TEXT,
    notes                  TEXT
);

INSERT INTO SupplyChainVendorPerformance VALUES (1,401,'2023-03-01',96.5,89.0,2.5,85.0,90.0,'Compliant',0,5.2,98.0,1.0,78.0,'Low','Quarterly review');
INSERT INTO SupplyChainVendorPerformance VALUES (2,402,'2023-03-01',88.0,75.0,5.0,70.0,68.0,'NonCompliant',2,7.8,92.0,3.5,65.0,'Medium','Improvement plan required');
INSERT INTO SupplyChainVendorPerformance VALUES (3,403,'2023-03-01',99.0,93.5,1.0,92.0,95.0,'Compliant',0,4.1,99.5,0.5,85.0,'Low','Excellent performance');

-- Phases of hospital construction projects
CREATE TABLE HospitalConstructionProjectPhase
(
    phase_id            INTEGER PRIMARY KEY,
    project_id          INTEGER,
    phase_name          TEXT,
    start_date          DATE,
    planned_end_date    DATE,
    actual_end_date     DATE,
    budget_allocated    REAL,
    budget_spent        REAL,
    percent_complete    REAL,
    contractor_id       INTEGER,
    workforce_size      INTEGER,
    safety_incidents    INTEGER,
    inspections_passed  INTEGER,
    permits_obtained    INTEGER,
    notes               TEXT
);

INSERT INTO HospitalConstructionProjectPhase VALUES (1,501,'Design','2022-01-10','2022-04-30','2022-04-28',500000,495000,100,601,25,0,5,5,'Design completed on schedule');
INSERT INTO HospitalConstructionProjectPhase VALUES (2,502,'Foundation','2022-05-01','2022-09-30','2022-10-05',800000,820000,100,602,40,1,4,4,'Slight delay due to weather');
INSERT INTO HospitalConstructionProjectPhase VALUES (3,503,'Finishing','2023-01-15','2023-06-30',NULL,NULL,45,603,30,0,3,3,'Currently halfway through');

-- Warranty information for medical devices
CREATE TABLE MedicalDeviceWarrantyInfo
(
    warranty_id            INTEGER PRIMARY KEY,
    device_id              INTEGER,
    manufacturer           TEXT,
    model_number           TEXT,
    serial_number          TEXT,
    purchase_date          DATE,
    warranty_start         DATE,
    warranty_end           DATE,
    warranty_term_years    INTEGER,
    coverage_details       TEXT,
    service_contract_id    INTEGER,
    service_provider       TEXT,
    extended_warranty_flag TEXT,
    extended_warranty_end  DATE,
    notes                  TEXT
);

INSERT INTO MedicalDeviceWarrantyInfo VALUES (1,701,'MedTech','MTX100','SN12345','2021-06-01','2021-06-01','2024-06-01',3,'Full coverage','SC001','HealthServ','No',NULL,'Standard warranty');
INSERT INTO MedicalDeviceWarrantyInfo VALUES (2,702,'BioMed','BD200','SN67890','2020-03-15','2020-03-15','2025-03-15',5,'Parts and labor','SC002','MediCare','Yes','2027-03-15','Extended warranty purchased');
INSERT INTO MedicalDeviceWarrantyInfo VALUES (3,703,'HealthEquip','HE300','SN54321','2022-11-20','2022-11-20','2025-11-20',3,'Limited coverage','SC003','EquipServ','No',NULL,'Warranty includes only parts');

-- Tracking of biohazard materials
CREATE TABLE BiohazardMaterialTrackingLog
(
    tracking_id          INTEGER PRIMARY KEY,
    material_id          INTEGER,
    material_type        TEXT,
    collection_date      DATE,
    container_type       TEXT,
    storage_location     TEXT,
    temperature_c        REAL,
    hazard_level         TEXT,
    authorized_user_id   INTEGER,
    transfer_to_location TEXT,
    transfer_date        DATE,
    disposal_method      TEXT,
    disposal_date        DATE,
    compliance_status    TEXT,
    notes                TEXT
);

INSERT INTO BiohazardMaterialTrackingLog VALUES (1,801,'Blood','2023-04-01','BioBag','FreezerA','-80','High',301,'LabB','2023-04-02','Incineration','2023-04-05','Compliant','Handled per protocol');
INSERT INTO BiohazardMaterialTrackingLog VALUES (2,802,'Tissue','2023-04-03','CryoTube','FreezerB','-20','Medium',302,'LabC','2023-04-04','Chemical Disposition','2023-04-08','Compliant','No issues');
INSERT INTO BiohazardMaterialTrackingLog VALUES (3,803,'Sputum','2023-04-05','BioContainer','Refrigerator1','4','Low',303,'LabA','2023-04-06','Biohazard Waste','2023-04-10','Compliant','Routine sample');

-- Metrics for community health programs
CREATE TABLE CommunityHealthProgramMetrics
(
    program_id            INTEGER PRIMARY KEY,
    community_id          INTEGER,
    program_name          TEXT,
    start_date            DATE,
    end_date              DATE,
    participants_total    INTEGER,
    participants_male     INTEGER,
    participants_female   INTEGER,
    age_average           REAL,
    sessions_conducted    INTEGER,
    hours_education       REAL,
    health_outcomes_score REAL,
    satisfaction_score    REAL,
    funding_amount        REAL,
    funding_source        TEXT,
    notes                 TEXT
);

INSERT INTO CommunityHealthProgramMetrics VALUES (1,901,'HeartHealth','2022-01-01','2022-12-31',2500,1200,1300,45.3,48,120.0,78.5,85.0,500000,'GovGrant','Program exceeded targets');
INSERT INTO CommunityHealthProgramMetrics VALUES (2,902,'DiabetesCare','2023-02-01','2023-11-30',1800,800,1000,52.1,36,90.0,70.2,80.5,300000,'PrivateDonor','Steady participation');
INSERT INTO CommunityHealthProgramMetrics VALUES (3,903,'YouthFitness','2023-05-15','2024-05-14',1200,600,600,18.7,24,60.0,65.0,78.0,200000,'CorporateSponsorship','High youth engagement');

-- Cleaning schedule for facility areas
CREATE TABLE FacilityCleaningSchedule
(
    schedule_id          INTEGER PRIMARY KEY,
    facility_id          INTEGER,
    area_name            TEXT,
    cleaning_type        TEXT,
    frequency_per_week   INTEGER,
    last_cleaned_date    DATE,
    next_scheduled_date  DATE,
    responsible_staff_id INTEGER,
    cleaning_supplies_used TEXT,
    duration_minutes     INTEGER,
    inspection_passed    TEXT,
    notes                TEXT
);

INSERT INTO FacilityCleaningSchedule VALUES (1,101,'Lobby','Standard',7,'2023-06-10','2023-06-11',401,'Detergent,Disinfectant',30,'Yes','Daily cleaning');
INSERT INTO FacilityCleaningSchedule VALUES (2,102,'ICU','Deep',3,'2023-06-09','2023-06-12',402,'HospitalGradeCleaner',45,'Yes','Enhanced protocol');
INSERT INTO FacilityCleaningSchedule VALUES (3,103,'SurgeryRoom','Sterile',2,'2023-06-08','2023-06-10',403,'SterileWipes',60,'Yes','Post‑operation cleaning');

-- Lifecycle events for equipment
CREATE TABLE EquipmentLifecycleEvent
(
    event_id            INTEGER PRIMARY KEY,
    equipment_id        INTEGER,
    event_type          TEXT,
    event_date          DATE,
    performed_by        TEXT,
    description         TEXT,
    cost                REAL,
    downtime_minutes    INTEGER,
    warranty_impacted_flag TEXT,
    next_maintenance_date DATE,
    notes               TEXT
);

INSERT INTO EquipmentLifecycleEvent VALUES (1,1001,'Installation','2022-01-15','TechTeam','Installed new MRI scanner',250000,120,'No','2023-01-15','Installation completed');
INSERT INTO EquipmentLifecycleEvent VALUES (2,1002,'Repair','2023-03-20','ServiceVendor','Replaced faulty pump',15000,240,'Yes','2024-03-20','Warranty claim processed');
INSERT INTO EquipmentLifecycleEvent VALUES (3,1003,'Decommission','2025-07-01','Facilities','Removed old X‑ray unit',0,0,'No','NULL','Equipment retired');

-- Metrics from wearable health devices (non‑patient specific)
CREATE TABLE WearableDeviceUsageMetric
(
    metric_id          INTEGER PRIMARY KEY,
    device_id          INTEGER,
    metric_date        DATE,
    step_count         INTEGER,
    heart_rate_avg     REAL,
    sleep_hours        REAL,
    calories_burned    REAL,
    stress_level       INTEGER,
    battery_percent    INTEGER,
    firmware_version   TEXT,
    notes              TEXT
);

INSERT INTO WearableDeviceUsageMetric VALUES (1,2001,'2023-06-10',8500,72.5,7.2,550.0,3,85,'v3.1','Normal day');
INSERT INTO WearableDeviceUsageMetric VALUES (2,2002,'2023-06-10',12000,78.0,6.5,720.0,2,90,'v3.2','Active day');
INSERT INTO WearableDeviceUsageMetric VALUES (3,2003,'2023-06-10',4000,65.0,8.0,300.0,4,70,'v3.0','Low activity');