-- Station Parking Reservations
CREATE TABLE station_parking_reservations
(
    ReservationID INTEGER PRIMARY KEY AUTOINCREMENT,
    StationID INTEGER,
    ParkingSpotID INTEGER,
    VehicleLicensePlate TEXT,
    DriverID INTEGER,
    ReservationStart DATETIME,
    ReservationEnd DATETIME,
    ReservedThroughApp INTEGER,
    ReservationStatus TEXT,
    PaymentMethod TEXT,
    AmountPaid REAL,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedAt DATETIME,
    UpdatedBy TEXT,
    Notes TEXT,
    DiscountCode TEXT,
    IsPaid INTEGER,
    IsCancelled INTEGER,
    CancellationReason TEXT,
    Latitude REAL,
    Longitude REAL
);
INSERT INTO station_parking_reservations VALUES (1,101,23,'ABC1234',1001,'2024-03-01 08:00:00','2024-03-01 10:00:00',1,'Confirmed','CreditCard',5.00,'2024-02-25 09:15:00','system','2024-02-25 09:20:00','system','Near entrance','SPRING2024',1,0,NULL,40.7128,-74.0060);
INSERT INTO station_parking_reservations VALUES (2,102,45,'XYZ7890',1002,'2024-03-02 14:30:00','2024-03-02 16:30:00',0,'Pending','Cash',0.00,'2024-02-26 11:00:00','admin','2024-02-26 11:05:00','admin','Reserved for delivery',NULL,0,0,NULL,34.0522,-118.2437);
INSERT INTO station_parking_reservations VALUES (3,103,12,'LMN4567',1003,'2024-03-03 09:15:00','2024-03-03 11:15:00',1,'Cancelled','DebitCard',3.50,'2024-02-27 13:45:00','system','2024-02-27 13:50:00','system','Customer no‑show',NULL,1,1,'No show',51.5074,-0.1278);

-- Fuel Station Renewable Energy Mix
CREATE TABLE fuel_station_renewable_energy_mix
(
    MixID INTEGER PRIMARY KEY AUTOINCREMENT,
    StationID INTEGER,
    Date DATE,
    SolarGenerationMWh REAL,
    WindGenerationMWh REAL,
    HydroGenerationMWh REAL,
    BiomassGenerationMWh REAL,
    GeothermalGenerationMWh REAL,
    TotalRenewableMWh REAL,
    RenewablePercentage REAL,
    GridImportMWh REAL,
    GridExportMWh REAL,
    CO2SavingsTonnes REAL,
    ReportCreatedBy TEXT,
    ReportCreatedAt DATETIME,
    VerifiedBy TEXT,
    VerifiedAt DATETIME,
    Notes TEXT,
    IsVerified INTEGER,
    IsProjected INTEGER,
    ProjectionMethod TEXT,
    Region TEXT
);
INSERT INTO fuel_station_renewable_energy_mix VALUES (1,101,'2024-01-01',12.5,8.3,5.0,2.1,0.0,27.9,45.2,10.5,2.3,'analyst','2024-01-02 08:00:00','manager','2024-01-03 09:00:00','Monthly report',1,0,'actual','Northeast');
INSERT INTO fuel_station_renewable_energy_mix VALUES (2,102,'2024-01-01',5.0,3.2,0.0,1.5,0.0,9.7,38.8,5.0,1.1,'analyst','2024-01-02 09:30:00','manager','2024-01-03 10:15:00','Monthly report',1,0,'actual','Southwest');
INSERT INTO fuel_station_renewable_energy_mix VALUES (3,103,'2024-01-01',0.0,0.0,0.0,0.0,0.0,0.0,0.0,20.0,0.0,'analyst','2024-01-02 10:45:00','manager','2024-01-03 11:30:00','No renewable generation',0,1,'forecast','Midwest');

-- Gas Station Air Emission Records
CREATE TABLE gas_station_air_emission_records
(
    RecordID INTEGER PRIMARY KEY AUTOINCREMENT,
    StationID INTEGER,
    MeasurementDate DATE,
    VOC_ppb REAL,
    NOx_ppb REAL,
    SO2_ppb REAL,
    PM2_5_ug_m3 REAL,
    PM10_ug_m3 REAL,
    CO_ppb REAL,
    Ozone_ppb REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    WindSpeed_mps REAL,
    WindDirection_deg INTEGER,
    SensorID TEXT,
    CalibrationDate DATE,
    TechnicianName TEXT,
    IsCompliant INTEGER,
    ComplianceNotes TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    Notes TEXT
);
INSERT INTO gas_station_air_emission_records VALUES (1,101,'2024-02-15',120.5,45.2,30.1,12.3,20.4,0.8,50.0,22.5,55.0,3.2,180,'SENSOR_A','2024-01-20','John Doe',1,'Within limits','2024-02-16 08:00:00','system','Initial reading');
INSERT INTO gas_station_air_emission_records VALUES (2,102,'2024-02-15',150.0,60.0,40.0,15.0,25.0,1.0,55.0,20.0,60.0,2.8,90,'SENSOR_B','2024-01-22','Jane Smith',0,'Exceeded NOx','2024-02-16 09:30:00','system','Follow‑up required');
INSERT INTO gas_station_air_emission_records VALUES (3,103,'2024-02-15',100.0,30.0,20.0,10.0,18.0,0.5,45.0,24.0,50.0,1.5,270,'SENSOR_C','2024-01-25','Mike Lee',1,'All good','2024-02-16 10:45:00','system','Routine check');

-- Vehicle Fleet Biometric Access Logs
CREATE TABLE vehicle_fleet_biometric_access_logs
(
    LogID INTEGER PRIMARY KEY AUTOINCREMENT,
    VehicleID INTEGER,
    DriverID INTEGER,
    Timestamp DATETIME,
    BiometricType TEXT,
    BiometricDataHash TEXT,
    AccessResult TEXT,
    LocationLat REAL,
    LocationLon REAL,
    DeviceID TEXT,
    SoftwareVersion TEXT,
    BatteryLevelPercent INTEGER,
    SignalStrength INTEGER,
    IsOverride INTEGER,
    OverrideReason TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    Notes TEXT,
    ShiftID INTEGER,
    RouteID INTEGER,
    PolicyID INTEGER,
    ComplianceScore REAL
);
INSERT INTO vehicle_fleet_biometric_access_logs VALUES (1,2001,3001,'2024-03-01 07:45:00','fingerprint','a1b2c3d4','granted',40.7128,-74.0060,'DEV01','v2.3',85,75,0,NULL,'2024-03-01 07:46:00','system','Morning start',101,5001,20,98.5);
INSERT INTO vehicle_fleet_biometric_access_logs VALUES (2,2002,3002,'2024-03-01 08:10:00','iris','e5f6g7h8','denied',34.0522,-118.2437','DEV02','v2.3',60,50,1,'admin override','2024-03-01 08:11:00','admin','Access denied due to policy',102,5002,21,45.0);
INSERT INTO vehicle_fleet_biometric_access_logs VALUES (3,2003,3003,'2024-03-01 09:00:00','face','i9j0k1l2','granted',51.5074,-0.1278,'DEV03','v2.4',90,80,0,NULL,'2024-03-01 09:01:00','system','Midday shift start',103,5003,22,99.0);

-- Customer Affinity Segmentation Maps
CREATE TABLE customer_affinity_segmentation_maps
(
    MapID INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerID INTEGER,
    SegmentCode TEXT,
    AffinityScore REAL,
    LastInteractionDate DATE,
    Channel TEXT,
    Region TEXT,
    PreferredProductID INTEGER,
    AvgSpend REAL,
    VisitFrequency INTEGER,
    OnlineHoursPerWeek REAL,
    AppUsageScore REAL,
    LoyaltyTier TEXT,
    PromotionResponseRate REAL,
    SurveyScore REAL,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    Notes TEXT,
    IsActive INTEGER,
    DataSource TEXT,
    ModelVersion TEXT,
    ProcessingTimeSec REAL
);
INSERT INTO customer_affinity_segmentation_maps VALUES (1,5001,'A1',0.87,'2024-02-28','mobile','NorthEast',101,120.5,12,5.2,0.9,'Gold',0.75,4.5,'2024-03-01 08:00:00','system','High value',1,'analytics','v1.2',12.3);
INSERT INTO customer_affinity_segmentation_maps VALUES (2,5002,'B3',0.45,'2024-02-20','web','SouthWest',102,45.0,4,2.1,0.5,'Silver',0.30,3.0,'2024-03-01 09:00:00','system','Occasional buyer',1,'analytics','v1.2',10.8);
INSERT INTO customer_affinity_segmentation_maps VALUES (3,5003,'C2',0.62,'2024-02-25','in‑store','Midwest',103,78.9,8,3.5,0.7,'Bronze',0.55,3.8,'2024-03-01 10:00:00','system','Loyalty program member',1,'analytics','v1.2',11.5);

-- Transaction Refund Audit Trail
CREATE TABLE transaction_refund_audit_trail
(
    AuditID INTEGER PRIMARY KEY AUTOINCREMENT,
    TransactionID INTEGER,
    RefundID INTEGER,
    RequestDate DATE,
    ApprovalDate DATE,
    RefundAmount REAL,
    RefundMethod TEXT,
    ReasonCode TEXT,
    ProcessedBy TEXT,
    ApprovalStatus TEXT,
    Notes TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedAt DATETIME,
    UpdatedBy TEXT,
    IsReversed INTEGER,
    OriginalAmount REAL,
    Currency TEXT,
    ExchangeRate REAL,
    FraudCheckScore REAL,
    ComplianceFlag INTEGER
);
INSERT INTO transaction_refund_audit_trail VALUES (1,9001,10001,'2024-02-15','2024-02-16',25.00,'credit','RC001','alice','approved','Customer returned product','2024-02-16 09:00:00','system','2024-02-16 09:30:00','system',0,30.00,'USD',1.0,0.2,1);
INSERT INTO transaction_refund_audit_trail VALUES (2,9002,10002,'2024-02-18','2024-02-19',15.00,'cash','RC002','bob','denied','Insufficient evidence','2024-02-19 10:15:00','system','2024-02-19 10:45:00','system',0,15.00,'USD',1.0,0.8,0);
INSERT INTO transaction_refund_audit_trail VALUES (3,9003,10003,'2024-02-20','2024-02-21',40.00,'credit','RC003','carol','approved','Late return accepted','2024-02-21 11:30:00','system','2024-02-21 12:00:00','system',0,45.00,'EUR',0.95,0.1,1);

-- Gas Station Maintenance Parts Inventory
CREATE TABLE gas_station_maintenance_parts_inventory
(
    InventoryID INTEGER PRIMARY KEY AUTOINCREMENT,
    StationID INTEGER,
    PartID INTEGER,
    PartName TEXT,
    Category TEXT,
    QuantityOnHand INTEGER,
    ReorderLevel INTEGER,
    SupplierID INTEGER,
    UnitCost REAL,
    LastRestocked DATE,
    NextRestockDue DATE,
    WarrantyExpiration DATE,
    LocationInStation TEXT,
    IsCritical INTEGER,
    LastUsed DATE,
    UsageRatePerMonth REAL,
    StoredTemperatureC REAL,
    StoredHumidityPercent REAL,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    Notes TEXT
);
INSERT INTO gas_station_maintenance_parts_inventory VALUES (1,101,501,'Fuel Pump','Mechanical',3,2,2001,250.00,'2024-01-15','2024-03-01','2026-01-15','Backroom',1,'2024-02-10',0.5,22.0,45.0,'2024-02-20 08:00:00','system','Spare parts for pumps');
INSERT INTO gas_station_maintenance_parts_inventory VALUES (2,102,502,'Air Filter','Consumable',20,10,2002,15.00,'2024-02-01','2024-02-28','2025-02-01','Shelf A',0,'2024-02-20',2.0,20.0,40.0,'2024-02-20 09:30:00','system','Regular replacement');
INSERT INTO gas_station_maintenance_parts_inventory VALUES (3,103,503,'Oil Seal','Mechanical',5,3,2003,45.00,'2024-01-20','2024-03-05','2025-01-20','Toolbox',1,'2024-02-15',0.3,25.0,50.0,'2024-02-20 10:45:00','system','Critical for engine maintenance');

-- Fuel Distribution Route Weather Conditions
CREATE TABLE fuel_distribution_route_weather_conditions
(
    RecordID INTEGER PRIMARY KEY AUTOINCREMENT,
    RouteID INTEGER,
    Date DATE,
    TemperatureC REAL,
    PrecipitationMM REAL,
    WindSpeed_mps REAL,
    WindDirection_deg INTEGER,
    HumidityPercent REAL,
    VisibilityKM REAL,
    WeatherCondition TEXT,
    RoadTemperatureC REAL,
    IceAccidentRiskLevel TEXT,
    HeatStressLevel TEXT,
    FogDensity REAL,
    SnowDepthCM REAL,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    Notes TEXT,
    IsSevere INTEGER,
    Forecasted BOOLEAN,
    AdjustmentRecommended TEXT
);
INSERT INTO fuel_distribution_route_weather_conditions VALUES (1,3001,'2024-03-01',10.5,0.0,5.2,180,70,15,'clear',9.0,'low','moderate',0.0,0.0,'2024-03-01 07:00:00','system','Normal conditions',0,0,'none');
INSERT INTO fuel_distribution_route_weather_conditions VALUES (2,3002,'2024-03-01',-2.0,5.0,8.0,90,85,5,'snow',-5.0,'high','low',0.3,12.0,'2024-03-01 07:30:00','system','Snowy, adjust speed',1,0,'reduce speed');
INSERT INTO fuel_distribution_route_weather_conditions VALUES (3,3003,'2024-03-01',25.0,0.0,3.0,270,50,20,'rain',24.0,'low','high',0.0,0.0,'2024-03-01 08:00:00','system','Hot and humid',0,1,'monitor');

-- Station Surveillance Event Log
CREATE TABLE station_surveillance_event_log
(
    EventID INTEGER PRIMARY KEY AUTOINCREMENT,
    StationID INTEGER,
    CameraID TEXT,
    EventTimestamp DATETIME,
    EventType TEXT,
    DetectedObject TEXT,
    ConfidenceScore REAL,
    VideoClipPath TEXT,
    ImageSnapshotPath TEXT,
    OperatorID INTEGER,
    ResponseAction TEXT,
    ResolutionStatus TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    Notes TEXT,
    IsFalsePositive INTEGER,
    DurationSeconds INTEGER,
    LocationDesc TEXT,
    NetworkLatencyMs INTEGER,
    AlertLevel TEXT,
    ReviewedBy TEXT
);
INSERT INTO station_surveillance_event_log VALUES (1,101,'CAM01','2024-02-28 22:15:00','motion','vehicle',0.92,'/videos/vid1.mp4','/images/img1.jpg',10,'investigate','open','2024-02-28 22:20:00','system','Night shift alert',0,12,'North entrance',150,'high','supervisor');
INSERT INTO station_surveillance_event_log VALUES (2,102,'CAM02','2024-02-28 23:05:00','tamper','camera',0.99,'/videos/vid2.mp4','/images/img2.jpg',11,'repair','closed','2024-02-28 23:10:00','system','Camera lens covered',0,5,'East side',120,'critical','engineer');
INSERT INTO station_surveillance_event_log VALUES (3,103,'CAM03','2024-03-01 01:30:00','motion','person',0.85,'/videos/vid3.mp4','/images/img3.jpg',12,'monitor','open','2024-03-01 01:35:00','system','Possible loitering',1,8,'Parking lot',200,'medium','shiftlead');

-- Payment Card Security Token Registry
CREATE TABLE payment_card_security_token_registry
(
    TokenID INTEGER PRIMARY KEY AUTOINCREMENT,
    CardID INTEGER,
    TokenValue TEXT,
    IssuedAt DATETIME,
    ExpiresAt DATETIME,
    IssuerBank TEXT,
    CardType TEXT,
    Cryptogram TEXT,
    Status TEXT,
    RevokedAt DATETIME,
    RevokedBy TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    Notes TEXT,
    IsActive INTEGER,
    EncryptionAlgorithm TEXT,
    KeyVersion INTEGER,
    DeviceID TEXT,
    TransactionCount INTEGER,
    LastUsedAt DATETIME,
    RiskScore REAL
);
INSERT INTO payment_card_security_token_registry VALUES (1,9001,'TOKENABC123','2024-01-01 00:00:00','2025-01-01 00:00:00','BankA','Visa','CRYPT1','active',NULL,NULL,'2024-01-01 00:10:00','system','Initial token',1,'AES','1','DEVICE001',5,'2024-02-28 12:00:00',0.05);
INSERT INTO payment_card_security_token_registry VALUES (2,9002,'TOKENDEF456','2024-02-01 00:00:00','2025-02-01 00:00:00','BankB','MasterCard','CRYPT2','revoked','2024-03-01 08:00:00','admin','2024-02-01 00:10:00','system','Compromised token',0,'RSA','2','DEVICE002',0,'2024-03-01 08:00:00',0.95);
INSERT INTO payment_card_security_token_registry VALUES (3,9003,'TOKENGHI789','2024-03-01 00:00:00','2025-03-01 00:00:00','BankC','Amex','CRYPT3','active',NULL,NULL,'2024-03-01 00:10:00','system','New token for card',1,'AES','1','DEVICE003',2,'2024-03-15 14:30:00',0.10);