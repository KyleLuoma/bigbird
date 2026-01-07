```sql
/* -------------------------------------------------
   Table 1: plasma_device_log
   ------------------------------------------------- */
CREATE TABLE plasma_device_log (
    log_id                TEXT PRIMARY KEY,
    device_id             TEXT,
    operation_date        DATE,
    operator_id           TEXT,
    power_kw              REAL,
    gas_type              TEXT,
    pressure_mbar         REAL,
    duration_sec          INTEGER,
    temperature_c         REAL,
    voltage_v             REAL,
    current_a             REAL,
    maintenance_due_date  DATE,
    firmware_version      TEXT,
    error_code            TEXT,
    comment               TEXT,
    location              TEXT,
    batch_number          TEXT,
    coolant_flow_lpm      REAL,
    emission_intensity    REAL,
    safety_check_passed   INTEGER,
    calibration_date      DATE
);

INSERT INTO plasma_device_log VALUES
('PL001','PD1001','2023-03-15','OP001',5.2,'Argon',120.5,3600,23.4,400,0.85,'2024-03-15','v2.1','E0','initial run','FacilityA','B001',2.5,0.78,1,'2023-03-15');

INSERT INTO plasma_device_log VALUES
('PL002','PD1002','2023-04-10','OP002',4.9,'Helium',110.0,5400,22.1,380,0.80,'2024-04-10','v2.2','E1','maintenance check','FacilityB','B002',2.3,0.80,1,'2023-04-10');

INSERT INTO plasma_device_log VALUES
('PL003','PD1003','2023-05-05','OP003',5.5,'Nitrogen',130.2,7200,24.0,410,0.88,'2024-05-05','v2.3','E2','high output','FacilityC','B003',2.6,0.75,0,'2023-05-05');

/* -------------------------------------------------
   Table 2: laser_fiber_network
   ------------------------------------------------- */
CREATE TABLE laser_fiber_network (
    network_id                TEXT PRIMARY KEY,
    fiber_id                  TEXT,
    laser_id                  TEXT,
    wavelength_nm             REAL,
    attenuation_db_per_km     REAL,
    connector_type            TEXT,
    splice_count              INTEGER,
    installation_date         DATE,
    last_inspection_date      DATE,
    bandwidth_gbps            REAL,
    manufacturer              TEXT,
    model_number              TEXT,
    core_diameter_um          REAL,
    cladding_diameter_um      REAL,
    coating_type              TEXT,
    protective_tube_material  TEXT,
    length_m                  REAL,
    status                    TEXT,
    allocated_project         TEXT,
    notes                     TEXT
);

INSERT INTO laser_fiber_network VALUES
('LN001','FIB1001','LAS01',1064,0.35,'FC/PC',2,'2022-01-10','2023-12-01',40,'FiberTech','FT-200',9.0,125.0,'Acrylate','Polyethylene',120.5,'Active','ProjA','core network');

INSERT INTO laser_fiber_network VALUES
('LN002','FIB1002','LAS02',532,0.25,'FC/APC',1,'2021-06-15','2023-11-20',100,'PhotonicsInc','PI-500',8.3,125.0,'Polyimide','PVC',85.0,'Active','ProjB','backup line');

INSERT INTO laser_fiber_network VALUES
('LN003','FIB1003','LAS03',1550,0.45,'LC/PC',3,'2020-09-05','2023-10-10',10,'OptiLink','OL-300',10.0,125.0,'Silica','Teflon',200.0,'Inactive','ProjC','spare fiber');

/* -------------------------------------------------
   Table 3: cryogenic_vial_inventory
   ------------------------------------------------- */
CREATE TABLE cryogenic_vial_inventory (
    vial_id              TEXT PRIMARY KEY,
    storage_location     TEXT,
    cryo_box_id          TEXT,
    position             TEXT,
    sample_id            TEXT,
    volume_ml            REAL,
    fills_date           DATE,
    last_accessed        DATE,
    temperature_c        REAL,
    expiration_date      DATE,
    aliquot_number       INTEGER,
    sample_type          TEXT,
    donor_id             TEXT,
    preservation_method  TEXT,
    tube_material        TEXT,
    lid_type             TEXT,
    barcode              TEXT,
    owner_user_id        TEXT,
    quality_flag         TEXT,
    notes                TEXT
);

INSERT INTO cryogenic_vial_inventory VALUES
('V001','FreezerA','BOX01','A1','SMP001',0.5,'2022-02-01','2023-11-01',-150.0,'2025-02-01',1,'Plasma','D001','SnapFreezing','Polypropylene','Screw','BC001','USR01','Pass','first aliquot');

INSERT INTO cryogenic_vial_inventory VALUES
('V002','FreezerB','BOX02','B3','SMP002',1.0,'2022-05-15','2023-10-20',-150.0,'2025-05-15',2,'Serum','D002','LiquidNitrogen','Polystyrene','Flip','BC002','USR02','Pass','second aliquot');

INSERT INTO cryogenic_vial_inventory VALUES
('V003','FreezerC','BOX03','C5','SMP003',0.2,'2023-01-10','2023-11-10',-150.0,'2026-01-10',1,'DNA','D003','DryIce','Glass','Screw','BC003','USR03','Fail','sample degraded');

/* -------------------------------------------------
   Table 4: bio_sample_processing_step_log
   ------------------------------------------------- */
CREATE TABLE bio_sample_processing_step_log (
    step_id               TEXT PRIMARY KEY,
    sample_id             TEXT,
    protocol_id           TEXT,
    step_number           INTEGER,
    description           TEXT,
    start_timestamp       TEXT,
    end_timestamp         TEXT,
    technician_id         TEXT,
    equipment_id          TEXT,
    reagents_used         TEXT,
    temperature_c         REAL,
    humidity_percent      REAL,
    pH                    REAL,
    centrifuge_speed_rpm  INTEGER,
    centrifuge_time_sec   INTEGER,
    incubation_time_sec   INTEGER,
    incubation_temp_c     REAL,
    result_status         TEXT,
    notes                 TEXT,
    audit_trail_id        TEXT,
    batch_id              TEXT
);

INSERT INTO bio_sample_processing_step_log VALUES
('STP001','SMP001','PR001',1,'Cell lysis','2023-09-01 08:00:00','2023-09-01 08:15:00','TECH01','EQ001','BufferA, EnzymeX',4.0,45.0,7.4,1200,300,0,0,'Success','lysis complete','AUD001','BCH001');

INSERT INTO bio_sample_processing_step_log VALUES
('STP002','SMP001','PR001',2,'DNA purification','2023-09-01 08:20:00','2023-09-01 09:00:00','TECH01','EQ002','SilicaColumn, WashBuffer',4.0,45.0,8.0,0,0,1800,4.0,'Success','purified DNA','AUD002','BCH001');

INSERT INTO bio_sample_processing_step_log VALUES
('STP003','SMP002','PR002',1,'Protein extraction','2023-09-02 10:00:00','2023-09-02 10:30:00','TECH02','EQ003','LysisBuffer',22.0,50.0,6.8,0,0,0,0,'Failed','insufficient yield','AUD003','BCH002');

/* -------------------------------------------------
   Table 5: environmental_airborne_particle_monitor
   ------------------------------------------------- */
CREATE TABLE environmental_airborne_particle_monitor (
    monitor_id                     TEXT PRIMARY KEY,
    location                       TEXT,
    installation_date              DATE,
    last_calibration_date         DATE,
    sensor_type                    TEXT,
    detection_limit_ug_m3          REAL,
    flow_rate_lpm                  REAL,
    data_interval_sec              INTEGER,
    avg_pm10_ug_m3                REAL,
    avg_pm2_5_ug_m3               REAL,
    avg_pm1_ug_m3                 REAL,
    temperature_c                  REAL,
    humidity_percent               REAL,
    battery_status                 TEXT,
    firmware_version               TEXT,
    maintenance_due_date           DATE,
    alert_threshold_pm10           REAL,
    alert_threshold_pm2_5          REAL,
    last_alert_timestamp           TEXT,
    notes                          TEXT
);

INSERT INTO environmental_airborne_particle_monitor VALUES
('MON001','LabEntrance','2021-03-01','2023-02-20','Optical','0.5',5.0,60,12.3,8.7,5.4,22.5,55.0,'Good','v1.4','2024-03-01',15.0,10.0,'2023-11-15 14:32:00','routine check');

INSERT INTO environmental_airborne_particle_monitor VALUES
('MON002','CleanroomA','2020-07-15','2023-01-10','Laser','0.3',4.5,30,0.8,0.5,0.3,20.0,40.0,'Good','v1.6','2024-01-15',2.0,1.0,'2023-10-05 09:12:00','low levels');

INSERT INTO environmental_airborne_particle_monitor VALUES
('MON003','StorageRoom','2022-11-20','2023-11-01','Electrostatic','0.7',6.0,120,25.0,18.0,12.0,24.0,60.0,'Low','v1.2','2024-11-20',30.0,20.0,'2023-12-20 18:45:00','high due to ventilation');

/* -------------------------------------------------
   Table 6: hvac_zone_performance_log
   ------------------------------------------------- */
CREATE TABLE hvac_zone_performance_log (
    performance_id               TEXT PRIMARY KEY,
    zone_id                      TEXT,
    timestamp                    TEXT,
    supply_air_temp_c            REAL,
    return_air_temp_c            REAL,
    supply_fan_speed_rpm         INTEGER,
    heating_coil_power_kw        REAL,
    cooling_coil_power_kw        REAL,
    humidity_supply_percent      REAL,
    humidity_return_percent      REAL,
    co2_ppm                      INTEGER,
    filter_status                TEXT,
    damper_position_percent      REAL,
    energy_consumption_kwh       REAL,
    maintenance_flag             TEXT,
    comments                     TEXT,
    external_weather_temp_c      REAL,
    external_humidity_percent    REAL,
    occupancy_estimate           INTEGER,
    alarm_code                   TEXT
);

INSERT INTO hvac_zone_performance_log VALUES
('HVAC001','ZONE01','2023-11-01 08:00:00',22.5,24.0,1200,15.0,5.0,45.0,50.0,800,'OK',30.0,150.5,'None','normal operation',10.0,35.0,5,'');

INSERT INTO hvac_zone_performance_log VALUES
('HVAC002','ZONE02','2023-11-01 08:05:00',21.0,23.5,1300,12.0,6.5,48.0,53.0,750,'OK',35.0,160.2,'None','slight cooling demand',9.5,40.0,3,'');

INSERT INTO hvac_zone_performance_log VALUES
('HVAC003','ZONE03','2023-11-01 08:10:00',24.0,25.5,1100,18.0,4.0,42.0,47.0,900,'Dirty',25.0,140.8,'Review','filter nearing limit',11.0,30.0,8,'F01');

/* -------------------------------------------------
   Table 7: quantum_device_characterization_record
   ------------------------------------------------- */
CREATE TABLE quantum_device_characterization_record (
    record_id                TEXT PRIMARY KEY,
    device_id                TEXT,
    test_date                DATE,
    qubit_count              INTEGER,
    coherence_time_us        REAL,
    gate_fidelity            REAL,
    readout_error_rate       REAL,
    microwave_power_dbm      REAL,
    cryostat_temp_mK         REAL,
    shielding_type           TEXT,
    control_software_version TEXT,
    calibration_status       TEXT,
    error_correction_enabled TEXT,
    measurement_cycle_time_ns REAL,
    crosstalk_level_db      REAL,
    quantum_volume           INTEGER,
    notes                    TEXT,
    operator_id              TEXT,
    firmware_revision        TEXT,
    audit_timestamp          TEXT
);

INSERT INTO quantum_device_characterization_record VALUES
('QD001','QD1001','2023-08-15',20,45.2,0.998,0.0015,5.0,12.0,'MuMetal','v3.2','Calibrated','Yes',200,0.3,500,'Initial test','OPQ01','revA','2023-08-15 10:00:00');

INSERT INTO quantum_device_characterization_record VALUES
('QD002','QD1002','2023-09-10',32,60.5,0.997,0.0012,6.0,10.5,'Cryoperm','v3.4','Calibrated','Yes',180,0.25,800,'Post‑upgrade','OPQ02','revB','2023-09-10 11:30:00');

INSERT INTO quantum_device_characterization_record VALUES
('QD003','QD1003','2023-10-05',16,30.0,0.995,0.0020,4.5,14.0,'Superconducting','v3.1','Pending','No',220,0.4,300,'Benchmark','OPQ03','revA','2023-10-05 09:45:00');

/* -------------------------------------------------
   Table 8: robotic_arm_task_schedule
   ------------------------------------------------- */
CREATE TABLE robotic_arm_task_schedule (
    schedule_id              TEXT PRIMARY KEY,
    robot_id                 TEXT,
    task_name                TEXT,
    priority_level           INTEGER,
    scheduled_start          TEXT,
    scheduled_end            TEXT,
    estimated_duration_sec   INTEGER,
    required_tool            TEXT,
    safety_mode              TEXT,
    operator_id              TEXT,
    task_status              TEXT,
    last_execution_timestamp TEXT,
    error_code               TEXT,
    maintenance_window       TEXT,
    energy_consumption_kwh   REAL,
    location                 TEXT,
    batch_id                 TEXT,
    remarks                  TEXT,
    created_by               TEXT,
    created_at               TEXT,
    updated_at               TEXT
);

INSERT INTO robotic_arm_task_schedule VALUES
('RS001','RA01','PlateTransfer',1,'2023-12-01 07:00:00','2023-12-01 07:15:00',900,'Gripper','Enabled','OPR01','Pending','', '','2023-12-01 06:50:00',0.5,'LabA','BCH001','transfer plates','ADMIN01','2023-11-20 12:00:00','2023-11-20 12:00:00');

INSERT INTO robotic_arm_task_schedule VALUES
('RS002','RA02','SampleLoading',2,'2023-12-01 08:00:00','2023-12-01 08:20:00',1200,'VacuumSuction','Enabled','OPR02','Scheduled','', '','2023-12-01 07:55:00',0.6,'LabB','BCH002','load samples into reader','ADMIN02','2023-11-21 09:30:00','2023-11-21 09:30:00');

INSERT INTO robotic_arm_task_schedule VALUES
('RS003','RA03','WasteDisposal',3,'2023-12-01 09:30:00','2023-12-01 09:45:00',900,'BinHandler','Disabled','OPR03','Completed','2023-12-01 09:44:00','E00','2023-12-01 09:00:00',0.4,'LabC','BCH003','dispose used tips','ADMIN03','2023-11-22 14:15:00','2023-11-22 14:45:00');

/* -------------------------------------------------
   Table 9: satellite_telemetry_log
   ------------------------------------------------- */
CREATE TABLE satellite_telemetry_log (
    telemetry_id            TEXT PRIMARY KEY,
    satellite_id            TEXT,
    timestamp_utc           TEXT,
    orbit_number            INTEGER,
    altitude_km             REAL,
    velocity_km_s           REAL,
    battery_voltage_v       REAL,
    solar_panel_current_a   REAL,
    temperature_panel_c     REAL,
    temperature_bus_c       REAL,
    payload_status          TEXT,
    downlink_rate_mbps      REAL,
    uplink_rate_mbps        REAL,
    error_flag              TEXT,
    fuel_level_percent      REAL,
    attitude_pitch_deg      REAL,
    attitude_yaw_deg        REAL,
    attitude_roll_deg       REAL,
    ground_station_id       TEXT,
    notes                   TEXT
);

INSERT INTO satellite_telemetry_log VALUES
('TL001','SAT01','2023-11-15 12:00:00',1023,550.0,7.8,28.5,5.2,15.0,20.0,'Nominal',150.0,50.0,'','85.0',0.5,1.0,0.2','GS01','all systems normal');

INSERT INTO satellite_telemetry_log VALUES
('TL002','SAT01','2023-11-15 12:10:00',1024,549.8,7.79,28.4,5.1,15.2,20.1,'Nominal',149.5,49.8,'','84.9',0.6,1.1,0.3','GS02','minor temperature drift');

INSERT INTO satellite_telemetry_log VALUES
('TL003','SAT01','2023-11-15 12:20:00',1025,549.6,7.78,28.3,5.0,15.1,20.2,'Nominal',149.0,49.5,'','84.8',0.4,0.9,0.1','GS01','stable orbit');

/* -------------------------------------------------
   Table 10: microbiome_assay_result
   ------------------------------------------------- */
CREATE TABLE microbiome_assay_result (
    assay_id                  TEXT PRIMARY KEY,
    sample_id                 TEXT,
    assay_type                TEXT,
    run_date                  DATE,
    platform                  TEXT,
    read_count                INTEGER,
    diversity_index           REAL,
    dominant_species          TEXT,
    relative_abundance_percent REAL,
    detection_limit           REAL,
    quality_score             REAL,
    technician_id             TEXT,
    analysis_version          TEXT,
    software_used             TEXT,
    reference_database        TEXT,
    batch_number              TEXT,
    storage_location          TEXT,
    comments                  TEXT,
    validation_status         TEXT,
    audit_timestamp           TEXT,
    external_report_id        TEXT
);

INSERT INTO microbiome_assay_result VALUES
('MA001','SM001','16S','2023-09-20','IlluminaMiSeq',2500000,2.71,'Bacteroides_fragilis',35.2,0.001,98.5,'TECH10','v2.0','QIIME2','Greengenes','BN001','FreezerD','good coverage','Validated','2023-09-21 10:00:00','ER001');

INSERT INTO microbiome_assay_result VALUES
('MA002','SM002','ITS','2023-09-22','IonTorrent','1800000',1.95,'Candida_albicans',28.7,0.0015,96.0,'TECH11','v1.5','Mothur','UNITE','BN002','FreezerE','moderate reads','Pending','2023-09-23 11:30:00','ER002');

INSERT INTO microbiome_assay_result VALUES
('MA003','SM003','Shotgun','2023-09-25','NovaSeq','5000000',3.10,'Escherichia_coli',40.0,0.0005,99.2,'TECH12','v3.1','MetaPhlAn','NCBI','BN003','FreezerF','high depth','Validated','2023-09-26 09:45:00','ER003');
```