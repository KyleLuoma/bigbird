-- Parking lot inventory details
CREATE TABLE parking_lot_inventory
(
    ParkingLotID INTEGER PRIMARY KEY,
    Location TEXT,
    TotalSpaces INTEGER,
    CoveredSpaces INTEGER,
    DisabledSpaces INTEGER,
    HourlyRate REAL,
    DailyRate REAL,
    MonthlyRate REAL,
    SecurityLevel TEXT,
    SurveillanceCameras INTEGER,
    LightingType TEXT,
    OperatedBy TEXT,
    MaintenanceVendor TEXT,
    LastInspectionDate DATE,
    NextInspectionDue DATE,
    ContactPhone TEXT,
    Email TEXT,
    Latitude REAL,
    Longitude REAL,
    ConstructionYear INTEGER,
    AreaSqM REAL,
    SoilType TEXT
);
INSERT INTO parking_lot_inventory VALUES (1, 'Downtown', 200, 50, 5, 2.5, 15.0, 300.0, 'High', 12, 'LED', 'CityParkingCo', 'MetroMaint', '2023-06-15', '2024-06-15', '5551234', 'info@cityparkingco.com', 40.7128, -74.0060, 1995, 5000.0, 'Clay');
INSERT INTO parking_lot_inventory VALUES (2, 'AirportEast', 350, 80, 8, 3.0, 20.0, 450.0, 'Medium', 20, 'Halogen', 'AirportParkingLtd', 'AeroMaint', '2023-03-10', '2024-03-10', '5555678', 'contact@airportparking.com', 33.9416, -118.4085, 2002, 8000.0, 'Sand');
INSERT INTO parking_lot_inventory VALUES (3, 'SuburbanMall', 500, 120, 10, 1.8, 12.0, 250.0, 'Low', 15, 'Fluorescent', 'MallParkingInc', 'SuburbMaint', '2023-09-01', '2024-09-01', '5559012', 'service@mallparking.com', 41.8781, -87.6298, 2010, 10000.0, 'Loam');

-- Roadside billboard advertising spaces
CREATE TABLE roadside_advertising_spaces
(
    BillboardID INTEGER PRIMARY KEY,
    Highway TEXT,
    MileMarker INTEGER,
    WidthFt REAL,
    HeightFt REAL,
    Illumination TEXT,
    OwnerCompany TEXT,
    LeaseStartDate DATE,
    LeaseEndDate DATE,
    MonthlyRent REAL,
    VisibilityScore INTEGER,
    SurfaceMaterial TEXT,
    InstallationDate DATE,
    LastMaintenanceDate DATE,
    ContactPerson TEXT,
    ContactPhone TEXT,
    Zone TEXT,
    DesignTemplate TEXT,
    IsDigital INTEGER,
    PixelResolution TEXT,
    PowerSupplyType TEXT,
    AccessRoadCondition TEXT
);
INSERT INTO roadside_advertising_spaces VALUES (101, 'I-95', 32, 30.5, 12.0, 'LED', 'AdCoLtd', '2022-01-01', '2025-01-01', 1200.0, 85, 'Aluminum', '2021-12-15', '2023-05-20', 'John Doe', '5551111', 'North', 'TemplateA', 1, '1920x1080', 'Solar', 'Paved');
INSERT INTO roadside_advertising_spaces VALUES (102, 'US-101', 58, 45.0, 15.5, 'Fluorescent', 'BillboardCorp', '2021-06-15', '2024-06-15', 1500.0, 92, 'Steel', '2020-11-30', '2023-03-10', 'Jane Smith', '5552222', 'South', 'TemplateB', 0, 'N/A', 'Grid', 'Gravel');
INSERT INTO roadside_advertising_spaces VALUES (103, 'I-80', 110, 60.0, 20.0, 'LED', 'OutdoorAds', '2020-09-01', '2023-09-01', 1800.0, 78, 'Composite', '2019-08-20', '2022-12-05', 'Mike Lee', '5553333', 'East', 'TemplateC', 1, '3840x2160', 'Hybrid', 'Dirt');

-- Vehicle insurance claims for fleet vehicles
CREATE TABLE vehicle_insurance_claims
(
    ClaimID INTEGER PRIMARY KEY,
    VehicleVIN TEXT,
    PolicyNumber TEXT,
    ClaimDate DATE,
    ReportedDate DATE,
    IncidentType TEXT,
    Description TEXT,
    EstimatedLoss REAL,
    ApprovedAmount REAL,
    AdjusterName TEXT,
    AdjusterPhone TEXT,
    ClaimStatus TEXT,
    SettlementDate DATE,
    PayoutMethod TEXT,
    BankAccount TEXT,
    Notes TEXT,
    DamageSeverity TEXT,
    PoliceReportNumber TEXT,
    WeatherCondition TEXT,
    RoadCondition TEXT,
    FaultParty TEXT,
    ClaimCategory TEXT
);
INSERT INTO vehicle_insurance_claims VALUES (5001, '1HGCM82633A004352', 'POL12345', '2023-04-10', '2023-04-12', 'Collision', 'Rear end impact at intersection', 7500.0, 7200.0, 'Alice Brown', '5554444', 'Approved', '2023-05-01', 'BankTransfer', 'ACC987654321', 'Minor dent on rear bumper', 'Medium', 'PR20230410', 'Clear', 'Dry', 'ThirdParty', 'Auto');
INSERT INTO vehicle_insurance_claims VALUES (5002, '2FTRX18W1XCA01234', 'POL67890', '2023-07-22', '2023-07-23', 'Theft', 'Vehicle stolen from lot', 18000.0, 17500.0, 'Bob Green', '5555555', 'Approved', '2023-08-10', 'Check', 'ACC123456789', 'Stolen overnight', 'High', 'PR20230722', 'Rainy', 'Wet', 'Unknown', 'Theft');
INSERT INTO vehicle_insurance_claims VALUES (5003, 'JHMFA16586S012345', 'POL54321', '2023-09-05', '2023-09-06', 'Fire', 'Engine fire caused by electrical fault', 12000.0, 11500.0, 'Carol White', '5556666', 'Pending', NULL, NULL, NULL, 'Fire damage to engine bay', 'High', 'PR20230905', 'Clear', 'Dry', 'PolicyHolder', 'Fire');

-- Fleet driver health records
CREATE TABLE fleet_driver_health_records
(
    RecordID INTEGER PRIMARY KEY,
    DriverID INTEGER,
    ExaminationDate DATE,
    HeightCm INTEGER,
    WeightKg INTEGER,
    BMI REAL,
    BloodPressureSys INTEGER,
    BloodPressureDia INTEGER,
    CholesterolTotal INTEGER,
    VisionLeft INTEGER,
    VisionRight INTEGER,
    HearingLeftDb INTEGER,
    HearingRightDb INTEGER,
    MedicalConditions TEXT,
    MedicationList TEXT,
    VaccinationStatus TEXT,
    LastVaccinationDate DATE,
    FitnessScore INTEGER,
    Comments TEXT,
    ExaminerName TEXT,
    ExaminerLicense TEXT,
    FollowUpDate DATE
);
INSERT INTO fleet_driver_health_records VALUES (9001, 101, '2023-03-15', 175, 78, 25.5, 120, 80, 190, 20, 20, 30, 30, 'None', 'None', 'UpToDate', '2022-11-01', 88, 'Good overall health', 'Dr Sam', 'EX123', '2023-09-15');
INSERT INTO fleet_driver_health_records VALUES (9002, 102, '2023-06-20', 168, 85, 30.1, 130, 85, 210, 18, 18, 32, 32, 'Hypertension', 'Lisinopril', 'Due', '2023-01-10', 75, 'Monitor blood pressure', 'Dr Kim', 'EX124', '2023-12-20');
INSERT INTO fleet_driver_health_records VALUES (9003, 103, '2023-08-05', 182, 92, 27.8, 125, 82, 200, 22, 22, 28, 28, 'Asthma', 'Albuterol', 'UpToDate', '2022-12-15', 80, 'Requires inhaler on trips', 'Dr Lee', 'EX125', '2024-02-05');

-- Public park facilities
CREATE TABLE public_park_facilities
(
    ParkID INTEGER PRIMARY KEY,
    Name TEXT,
    City TEXT,
    AreaAcres REAL,
    PlaygroundCount INTEGER,
    PicnicAreaCount INTEGER,
    DogParkAvailable INTEGER,
    RestroomCount INTEGER,
    WheelchairAccessible INTEGER,
    WaterFountainCount INTEGER,
    SolarLighting INTEGER,
    MaintenanceSchedule TEXT,
    LastRenovationDate DATE,
    OperatingHours TEXT,
    EntryFee REAL,
    ContactPhone TEXT,
    Email TEXT,
    Latitude REAL,
    Longitude REAL,
    EstablishedYear INTEGER,
    VisitorCapacity INTEGER,
    AnnualBudget REAL,
    VisitorComments TEXT
);
INSERT INTO public_park_facilities VALUES (1, 'Green Meadows', 'Springfield', 45.2, 4, 10, 1, 3, 1, 6, 1, 'Monthly', '2022-04-10', '06:00-22:00', 0.0, '5557777', 'info@greenmeadows.org', 39.7817, -89.6501, 1975, 2000, 150000.0, 'Family friendly');
INSERT INTO public_park_facilities VALUES (2, 'Riverfront Park', 'Riverside', 60.5, 6, 15, 0, 5, 1, 8, 1, 'Biweekly', '2021-08-22', '05:30-23:00', 2.5, '5558888', 'contact@riverfront.gov', 34.0522, -118.2437, 1990, 3000, 250000.0, 'Great views of the river');
INSERT INTO public_park_facilities VALUES (3, 'Oakwood Reserve', 'Oakton', 30.0, 2, 5, 1, 2, 0, 4, 0, 'Quarterly', '2023-01-15', '07:00-20:00', 0.0, '5559999', 'admin@oakwoodreserve.com', 42.3314, -83.0458, 1985, 1200, 90000.0, 'Quiet and secluded');

-- Maritime port berth assignments
CREATE TABLE maritime_port_berth_assignments
(
    BerthID INTEGER PRIMARY KEY,
    PortName TEXT,
    BerthNumber TEXT,
    MaxDraftM REAL,
    MaxLengthM REAL,
    MaxBreadthM REAL,
    CargoTypeSupported TEXT,
    LeaseStartDate DATE,
    LeaseEndDate DATE,
    AnnualFee REAL,
    OperatorCompany TEXT,
    SecurityLevel TEXT,
    LightingType TEXT,
    MooringEquipment TEXT,
    DepthSensorInstalled INTEGER,
    LastInspectionDate DATE,
    NextInspectionDue DATE,
    GPSLatitude REAL,
    GPSLongitude REAL,
    WeatherProtection TEXT,
    AccessibilityScore INTEGER,
    Remarks TEXT
);
INSERT INTO maritime_port_berth_assignments VALUES (301, 'Port Avalon', 'B12', 12.5, 250.0, 45.0, 'Container', '2022-01-01', '2027-01-01', 500000.0, 'HarborOps Ltd', 'High', 'LED', 'Rubber Fender', 1, '2023-03-10', '2024-03-10', 36.8508, -76.2859, 'Covered', 90, 'Preferred berth for large vessels');
INSERT INTO maritime_port_berth_assignments VALUES (302, 'Bayview Terminal', 'C07', 9.0, 180.0, 35.0, 'Bulk', '2021-06-15', '2026-06-15', 350000.0, 'MarineLogistics', 'Medium', 'Halogen', 'Chain', 0, '2022-11-05', '2023-11-05', 34.0522, -118.2437, 'Open', 75, 'Used for grain shipments');
INSERT INTO maritime_port_berth_assignments VALUES (303, 'East Harbor', 'A03', 7.5, 120.0, 28.0, 'Oil', '2020-09-01', '2025-09-01', 400000.0, 'CoastalEnergy', 'High', 'Fluorescent', 'Concrete Dunnage', 1, '2023-01-20', '2024-01-20', 40.7128, -74.0060, 'Partially Covered', 80, 'Requires special handling');

-- Telecom network node inventory
CREATE TABLE telecom_network_node_inventory
(
    NodeID INTEGER PRIMARY KEY,
    Provider TEXT,
    NodeType TEXT,
    City TEXT,
    StreetAddress TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    LastUpgradeDate DATE,
    FirmwareVersion TEXT,
    PowerSupplyType TEXT,
    BackupBatteryCapacityKWh REAL,
    AntennaCount INTEGER,
    FrequencyBands TEXT,
    CapacityGbps REAL,
    OperationalStatus TEXT,
    MaintenanceVendor TEXT,
    ContractStart DATE,
    ContractEnd DATE,
    SLALevel TEXT,
    TicketingSystemID TEXT,
    Notes TEXT
);
INSERT INTO telecom_network_node_inventory VALUES (1001, 'NetCom', 'MacroCell', 'Metropolis', '123 Main St', 38.8951, -77.0364, '2018-05-10', '2022-12-01', 'v3.2.1', 'DualFeed', 120.5, 4, '700MHz,1800MHz', 10.0, 'Active', 'TechMaint', '2018-05-01', '2028-05-01', 'Gold', 'TS12345', 'Primary downtown node');
INSERT INTO telecom_network_node_inventory VALUES (1002, 'WaveLink', 'SmallCell', 'Gotham', '456 Elm Ave', 40.7128, -74.0060, '2020-03-15', '2023-03-20', 'v4.0.0', 'Solar', 80.0, 2, '3500MHz', 2.5, 'Active', 'CellServ', '2020-03-01', '2030-03-01', 'Silver', 'TS67890', 'Deployed in subway stations');
INSERT INTO telecom_network_node_inventory VALUES (1003, 'SkyNet', 'MicroCell', 'Star City', '789 Oak Blvd', 34.0522, -118.2437, '2019-11-05', '2022-08-30', 'v3.8.4', 'Grid', 60.3, 1, '2100MHz', 1.2, 'Maintenance', 'InfraWorks', '2019-11-01', '2029-11-01', 'Bronze', 'TS54321', 'Rural coverage expansion');

-- Agricultural crop yield forecast
CREATE TABLE agricultural_crop_yield_forecast
(
    ForecastID INTEGER PRIMARY KEY,
    Region TEXT,
    CropType TEXT,
    Year INTEGER,
    Season TEXT,
    ExpectedYieldTonnes REAL,
    RainfallMM REAL,
    AvgTempC REAL,
    SoilQualityIndex INTEGER,
    FertilizerUsageTonnes REAL,
    PesticideUsageLiters REAL,
    IrrigationHours REAL,
    HistoricalYieldTonnes REAL,
    MarketPricePerTon REAL,
    ExportProjectionTonnes REAL,
    DomesticConsumptionTonnes REAL,
    RiskFactorScore INTEGER,
    AnalystName TEXT,
    AnalystContact TEXT,
    ForecastDate DATE,
    Comments TEXT,
    ConfidenceLevel TEXT
);
INSERT INTO agricultural_crop_yield_forecast VALUES (2001, 'Midwest', 'Corn', 2023, 'Summer', 8500.5, 420.0, 22.5, 78, 120.0, 30.0, 1500.0, 8300.0, 150.0, 3000.0, 5000.0, 65, 'Laura Green', '5551112', '2023-02-15', 'Favorable weather', 'High');
INSERT INTO agricultural_crop_yield_forecast VALUES (2002, 'Southern Plains', 'Wheat', 2023, 'Winter', 6200.0, 210.0, 15.2, 70, 95.0, 25.0, 1200.0, 6100.0, 180.0, 2000.0, 4200.0, 55, 'Mark Brown', '5552223', '2023-02-20', 'Drought risk moderate', 'Medium');
INSERT INTO agricultural_crop_yield_forecast VALUES (2003, 'Pacific Northwest', 'Soybeans', 2023, 'Fall', 4100.8, 300.0, 18.0, 82, 80.0, 20.0, 1000.0, 3950.0, 200.0, 1500.0, 2600.0, 45, 'Emily White', '5553334', '2023-02-25', 'Cool temperatures boost yield', 'Low');

-- Museum exhibit loan agreements
CREATE TABLE museum_exhibit_loan_agreements
(
    AgreementID INTEGER PRIMARY KEY,
    ExhibitName TEXT,
    LendingInstitution TEXT,
    BorrowingInstitution TEXT,
    LoanStartDate DATE,
    LoanEndDate DATE,
    InsuranceValueUSD REAL,
    TransportMethod TEXT,
    PackingType TEXT,
    ConditionReportNumber TEXT,
    CuratorContact TEXT,
    ConservationStatus TEXT,
    DisplayLocation TEXT,
    InstallationDate DATE,
    DeinstallationDate DATE,
    SecurityLevel TEXT,
    ClimateControlRequired TEXT,
    LightExposureLimitLux INTEGER,
    HandlingInstructions TEXT,
    RenewalOption INTEGER,
    RenewalDeadline DATE,
    Notes TEXT
);
INSERT INTO museum_exhibit_loan_agreements VALUES (3001, 'Ancient Egyptian Sarcophagus', 'Cairo Museum', 'Metropolitan Museum', '2023-05-01', '2023-11-30', 2500000.0, 'AirFreight', 'CustomCrate', 'CR202305', 'Anna Lee', 'Stable', 'Gallery 3', '2023-05-15', '2023-11-20', 'High', 'Yes', 200, 'Use padded gloves', 1, '2023-10-01', 'Flagship exhibit');
INSERT INTO museum_exhibit_loan_agreements VALUES (3002, 'Renaissance Paintings Collection', 'Uffizi Gallery', 'National Gallery', '2023-06-10', '2024-06-09', 1800000.0, 'SeaFreight', 'ShockproofBox', 'CR202306', 'Brian Kim', 'Good', 'Exhibit Hall A', '2023-06-20', '2024-06-01', 'Medium', 'Yes', 150, 'Maintain 21C temperature', 0, NULL, 'Long-term loan');
INSERT INTO museum_exhibit_loan_agreements VALUES (3003, 'Modern Sculpture Series', 'Tate Modern', 'Art Institute', '2023-09-01', '2024-02-28', 950000.0, 'Truck', 'ModularCase', 'CR202309', 'Clara Zhou', 'Excellent', 'Sculpture Garden', '2023-09-10', '2024-02-20', 'Low', 'No', 300, 'Handle with crane', 1, '2024-01-15', 'Outdoor display');

-- Smart city sensor calibrations
CREATE TABLE smart_city_sensor_calibrations
(
    CalibrationID INTEGER PRIMARY KEY,
    SensorID TEXT,
    SensorType TEXT,
    InstallationLocation TEXT,
    Manufacturer TEXT,
    InstallationDate DATE,
    CalibrationDate DATE,
    CalibratedBy TEXT,
    CalibrationMethod TEXT,
    OffsetValue REAL,
    ScaleFactor REAL,
    TemperatureCompensation REAL,
    HumidityCompensation REAL,
    FirmwareVersion TEXT,
    CalibrationStatus TEXT,
    NextCalibrationDue DATE,
    Latitude REAL,
    Longitude REAL,
    CityZone TEXT,
    ObservationFrequencyHz REAL,
    DataRetentionDays INTEGER,
    Comments TEXT
);
INSERT INTO smart_city_sensor_calibrations VALUES (4001, 'SEN1001', 'AirQuality', 'Main St & 5th', 'EnviroTech', '2022-01-10', '2023-07-01', 'Jon Miller', 'Standard', 0.02, 1.005, 0.1, 0.05, 'v2.1', 'Valid', '2024-07-01', 38.8951, -77.0364, 'Downtown', 1.0, 365, 'Routine calibration');
INSERT INTO smart_city_sensor_calibrations VALUES (4002, 'SEN2005', 'NoiseLevel', 'Parkside Loop', 'SoundMetrics', '2021-05-20', '2023-06-15', 'Sara Patel', 'Automated', -0.01, 0.998, 0.0, 0.0, 'v3.0', 'Valid', '2024-06-15', 34.0522, -118.2437, 'NorthSide', 0.5, 730, 'No anomalies detected');
INSERT INTO smart_city_sensor_calibrations VALUES (4003, 'SEN3009', 'TrafficFlow', 'Bridge Ave', 'TrafficSense', '2020-09-30', '2023-05-20', 'Liam Chen', 'Manual', 0.00, 1.000, 0.0, 0.0, 'v1.8', 'Valid', '2024-05-20', 40.7128, -74.0060, 'EastZone', 2.0, 180, 'Calibration within tolerance');