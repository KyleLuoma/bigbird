-- Electric vehicle battery health monitoring data
CREATE TABLE electric_vehicle_battery_health
(
    RecordID INTEGER PRIMARY KEY AUTOINCREMENT,
    VehicleID INTEGER,
    BatterySerial TEXT,
    ManufactureDate DATE,
    CapacityKWh REAL,
    CurrentChargePct REAL,
    VoltageV REAL,
    TemperatureC REAL,
    HealthScore INTEGER,
    CycleCount INTEGER,
    LastServiceDate DATE,
    WarrantyStatus TEXT,
    FastChargeCapable INTEGER,
    DegradationRate REAL,
    SoCVariance REAL,
    ChargerType TEXT,
    LocationID INTEGER,
    FirmwareVersion TEXT,
    AlertFlag INTEGER,
    Notes TEXT
);

INSERT INTO electric_vehicle_battery_health (VehicleID, BatterySerial, ManufactureDate, CapacityKWh, CurrentChargePct, VoltageV, TemperatureC, HealthScore, CycleCount, LastServiceDate, WarrantyStatus, FastChargeCapable, DegradationRate, SoCVariance, ChargerType, LocationID, FirmwareVersion, AlertFlag, Notes) VALUES (101, 'BAT12345', '2020-05-15', 75.0, 80.5, 400.0, 25.0, 92, 350, '2023-06-01', 'Active', 1, 0.02, 0.5, 'CCS', 12, 'v2.3', 0, 'Routine check');
INSERT INTO electric_vehicle_battery_health (VehicleID, BatterySerial, ManufactureDate, CapacityKWh, CurrentChargePct, VoltageV, TemperatureC, HealthScore, CycleCount, LastServiceDate, WarrantyStatus, FastChargeCapable, DegradationRate, SoCVariance, ChargerType, LocationID, FirmwareVersion, AlertFlag, Notes) VALUES (102, 'BAT67890', '2021-03-22', 60.0, 45.3, 360.0, 30.2, 78, 210, '2023-09-12', 'Expired', 0, 0.05, 1.2, 'CHAdeMO', 7, 'v1.9', 1, 'Cooling issue');
INSERT INTO electric_vehicle_battery_health (VehicleID, BatterySerial, ManufactureDate, CapacityKWh, CurrentChargePct, VoltageV, TemperatureC, HealthScore, CycleCount, LastServiceDate, WarrantyStatus, FastChargeCapable, DegradationRate, SoCVariance, ChargerType, LocationID, FirmwareVersion, AlertFlag, Notes) VALUES (103, 'BAT54321', '2019-11-08', 85.0, 92.1, 420.0, 22.5, 95, 480, '2023-04-20', 'Active', 1, 0.015, 0.3, 'CCS', 15, 'v2.5', 0, 'Excellent condition');

-- Public transport vehicle maintenance logs
CREATE TABLE public_transport_maintenance_logs
(
    LogID INTEGER PRIMARY KEY AUTOINCREMENT,
    VehicleID INTEGER,
    DepotID INTEGER,
    MaintenanceDate DATE,
    OdometerKm INTEGER,
    ServiceType TEXT,
    PartsReplaced TEXT,
    LaborHours REAL,
    TechnicianID INTEGER,
    CostUSD REAL,
    DowntimeHours REAL,
    NextDueKm INTEGER,
    NextDueDate DATE,
    InspectionScore INTEGER,
    SafetyCheckPassed INTEGER,
    Comments TEXT,
    FuelType TEXT,
    WheelAlignmentFlag INTEGER,
    BrakeInspectionFlag INTEGER,
    CleanlinessScore INTEGER
);

INSERT INTO public_transport_maintenance_logs (VehicleID, DepotID, MaintenanceDate, OdometerKm, ServiceType, PartsReplaced, LaborHours, TechnicianID, CostUSD, DowntimeHours, NextDueKm, NextDueDate, InspectionScore, SafetyCheckPassed, Comments, FuelType, WheelAlignmentFlag, BrakeInspectionFlag, CleanlinessScore) VALUES (2001, 3, '2023-05-10', 125000, 'EngineOverhaul', 'Piston;Gasket', 16.5, 45, 3200.00, 5.0, 150000, '2024-05-10', 88, 1, 'Replaced worn pistons', 'Diesel', 1, 1, 85);
INSERT INTO public_transport_maintenance_logs (VehicleID, DepotID, MaintenanceDate, OdometerKm, ServiceType, PartsReplaced, LaborHours, TechnicianID, CostUSD, DowntimeHours, NextDueKm, NextDueDate, InspectionScore, SafetyCheckPassed, Comments, FuelType, WheelAlignmentFlag, BrakeInspectionFlag, CleanlinessScore) VALUES (2002, 2, '2023-07-22', 98000, 'BrakeReplacement', 'BrakePads;Rotor', 8.0, 38, 1200.00, 2.5, 120000, '2024-07-22', 92, 1, 'All brakes replaced', 'Electric', 0, 1, 90);
INSERT INTO public_transport_maintenance_logs (VehicleID, DepotID, MaintenanceDate, OdometerKm, ServiceType, PartsReplaced, LaborHours, TechnicianID, CostUSD, DowntimeHours, NextDueKm, NextDueDate, InspectionScore, SafetyCheckPassed, Comments, FuelType, WheelAlignmentFlag, BrakeInspectionFlag, CleanlinessScore) VALUES (2003, 5, '2023-09-15', 134500, 'HVACService', 'Compressor', 4.5, 52, 750.00, 1.8, 160000, '2024-09-15', 85, 1, 'Air flow restored', 'Hybrid', 1, 0, 80);

-- Renewable energy investor profile table
CREATE TABLE renewable_energy_investor_profiles
(
    InvestorID INTEGER PRIMARY KEY,
    Name TEXT,
    Organization TEXT,
    Country TEXT,
    InvestmentType TEXT,
    TotalCommitmentUSD REAL,
    RenewableFocus TEXT,
    AvgReturnPct REAL,
    RiskTolerance TEXT,
    ContactEmail TEXT,
    PhoneNumber TEXT,
    PreferredProjectSizeMW REAL,
    ESGScore INTEGER,
    LastInvestmentDate DATE,
    AccreditedInvestorFlag INTEGER,
    TaxStatus TEXT,
    PortfolioDiversificationScore REAL,
    RegistrationDate DATE,
    Notes TEXT,
    ActiveFlag INTEGER
);

INSERT INTO renewable_energy_investor_profiles (InvestorID, Name, Organization, Country, InvestmentType, TotalCommitmentUSD, RenewableFocus, AvgReturnPct, RiskTolerance, ContactEmail, PhoneNumber, PreferredProjectSizeMW, ESGScore, LastInvestmentDate, AccreditedInvestorFlag, TaxStatus, PortfolioDiversificationScore, RegistrationDate, Notes, ActiveFlag) VALUES (5001, 'Alice Green', 'EcoCap Ventures', 'USA', 'Equity', 25000000.00, 'Solar', 8.5, 'Medium', 'alice.green@ecocap.com', '5551234567', 50.0, 85, '2023-03-12', 1, 'TaxExempt', 0.78, '2020-06-01', 'Focused on utility scale', 1);
INSERT INTO renewable_energy_investor_profiles (InvestorID, Name, Organization, Country, InvestmentType, TotalCommitmentUSD, RenewableFocus, AvgReturnPct, RiskTolerance, ContactEmail, PhoneNumber, PreferredProjectSizeMW, ESGScore, LastInvestmentDate, AccreditedInvestorFlag, TaxStatus, PortfolioDiversificationScore, RegistrationDate, Notes, ActiveFlag) VALUES (5002, 'Ben Liu', 'GreenFund Ltd', 'Canada', 'Debt', 12000000.00, 'Wind', 6.2, 'Low', 'ben.liu@greenfund.ca', '5559876543', 30.0, 90, '2023-06-05', 1, 'TaxDeferred', 0.82, '2019-11-15', 'Prefers offshore wind', 1);
INSERT INTO renewable_energy_investor_profiles (InvestorID, Name, Organization, Country, InvestmentType, TotalCommitmentUSD, RenewableFocus, AvgReturnPct, RiskTolerance, ContactEmail, PhoneNumber, PreferredProjectSizeMW, ESGScore, LastInvestmentDate, AccreditedInvestorFlag, TaxStatus, PortfolioDiversificationScore, RegistrationDate, Notes, ActiveFlag) VALUES (5003, 'Carlos Mendes', 'Solaris Partners', 'Brazil', 'Equity', 8000000.00, 'Solar', 9.1, 'High', 'carlos.mendes@solaris.com.br', '5553217890', 20.0, 78, '2023-02-20', 0, 'TaxLiable', 0.70, '2021-02-10', 'Interested in rooftop projects', 1);

-- Urban noise complaint details
CREATE TABLE urban_noise_complaint_details
(
    ComplaintID INTEGER PRIMARY KEY,
    ReporterID INTEGER,
    LocationID INTEGER,
    ReportDate DATE,
    NoiseLevelDbA REAL,
    SourceType TEXT,
    DurationMinutes INTEGER,
    TimeOfDay TEXT,
    WeatherCondition TEXT,
    ImmediateActionTaken TEXT,
    FollowUpStatus TEXT,
    AssignedOfficerID INTEGER,
    ResolutionDate DATE,
    CompensationOffered REAL,
    Comments TEXT,
    Latitude REAL,
    Longitude REAL,
    NoiseCategory TEXT,
    RecordingAvailable INTEGER,
    SurveyScore INTEGER
);

INSERT INTO urban_noise_complaint_details (ComplaintID, ReporterID, LocationID, ReportDate, NoiseLevelDbA, SourceType, DurationMinutes, TimeOfDay, WeatherCondition, ImmediateActionTaken, FollowUpStatus, AssignedOfficerID, ResolutionDate, CompensationOffered, Comments, Latitude, Longitude, NoiseCategory, RecordingAvailable, SurveyScore) VALUES (9001, 301, 45, '2023-08-01', 78.5, 'Construction', 45, 'Evening', 'Clear', 'WarningIssued', 'Pending', 12, NULL, 0.00, 'Noise from nearby site', -33.865143, 151.209900, 'Industrial', 0, 4);
INSERT INTO urban_noise_complaint_details (ComplaintID, ReporterID, LocationID, ReportDate, NoiseLevelDbA, SourceType, DurationMinutes, TimeOfDay, WeatherCondition, ImmediateActionTaken, FollowUpStatus, AssignedOfficerID, ResolutionDate, CompensationOffered, Comments, Latitude, Longitude, NoiseCategory, RecordingAvailable, SurveyScore) VALUES (9002, 302, 78, '2023-09-12', 62.0, 'Traffic', 30, 'Night', 'Rainy', 'CitationIssued', 'Resolved', 15, '2023-09-15', 150.00, 'Heavy truck passing', 40.712776, -74.005974, 'Transportation', 1, 5);
INSERT INTO urban_noise_complaint_details (ComplaintID, ReporterID, LocationID, ReportDate, NoiseLevelDbA, SourceType, DurationMinutes, TimeOfDay, WeatherCondition, ImmediateActionTaken, FollowUpStatus, AssignedOfficerID, ResolutionDate, CompensationOffered, Comments, Latitude, Longitude, NoiseCategory, RecordingAvailable, SurveyScore) VALUES (9003, 303, 12, '2023-07-20', 85.2, 'PublicEvent', 120, 'Afternoon', 'Sunny', 'EventPaused', 'InProgress', 19, NULL, 0.00, 'Music festival near residential area', 51.507351, -0.127758, 'Entertainment', 0, 3);

-- Logistics container tracking data
CREATE TABLE logistics_container_tracking
(
    TrackingID INTEGER PRIMARY KEY,
    ContainerID TEXT,
    ShipmentID INTEGER,
    OriginPort TEXT,
    DestinationPort TEXT,
    CurrentLocation TEXT,
    Status TEXT,
    EstimatedArrival DATE,
    ActualArrival DATE,
    WeightKg REAL,
    VolumeM3 REAL,
    cargoType TEXT,
    carrierName TEXT,
    sealNumber TEXT,
    lastUpdateTimestamp TEXT,
    temperatureC REAL,
    humidityPct REAL,
    delayReason TEXT,
    customsClearanceFlag INTEGER,
    priorityLevel INTEGER
);

INSERT INTO logistics_container_tracking (ContainerID, ShipmentID, OriginPort, DestinationPort, CurrentLocation, Status, EstimatedArrival, ActualArrival, WeightKg, VolumeM3, cargoType, carrierName, sealNumber, lastUpdateTimestamp, temperatureC, humidityPct, delayReason, customsClearanceFlag, priorityLevel) VALUES ('CNU1234567', 4001, 'Rotterdam', 'NewYork', 'AtlanticOcean', 'InTransit', '2023-10-05', NULL, 12000.0, 68.5, 'Machinery', 'Maersk', 'SL98765', '2023-09-28 14:30', 22.5, 55.0, 'Weather', 0, 2);
INSERT INTO logistics_container_tracking (ContainerID, ShipmentID, OriginPort, DestinationPort, CurrentLocation, Status, EstimatedArrival, ActualArrival, WeightKg, VolumeM3, cargoType, carrierName, sealNumber, lastUpdateTimestamp, temperatureC, humidityPct, delayReason, customsClearanceFlag, priorityLevel) VALUES ('CNU7654321', 4002, 'Shanghai', 'LosAngeles', 'LosAngeles Port', 'Arrived', '2023-09-20', '2023-09-20', 8500.0, 50.2, 'Electronics', 'COSCO', 'SL12345', '2023-09-20 09:15', 18.0, 60.0, 'None', 1, 1);
INSERT INTO logistics_container_tracking (ContainerID, ShipmentID, OriginPort, DestinationPort, CurrentLocation, Status, EstimatedArrival, ActualArrival, WeightKg, VolumeM3, cargoType, carrierName, sealNumber, lastUpdateTimestamp, temperatureC, humidityPct, delayReason, customsClearanceFlag, priorityLevel) VALUES ('CNU1122334', 4003, 'Hamburg', 'Singapore', 'AtSea', 'Delayed', '2023-11-02', NULL, 15000.0, 80.0, 'Chemicals', 'HapagLloyd', 'SL54321', '2023-09-30 18:45', 25.0, 40.0, 'PortCongestion', 0, 3);

-- Airport cargo handling records
CREATE TABLE airport_cargo_handling
(
    CargoID INTEGER PRIMARY KEY,
    FlightNumber TEXT,
    AirlineCode TEXT,
    OriginAirport TEXT,
    DestinationAirport TEXT,
    HandlingDate DATE,
    WeightKg REAL,
    VolumeM3 REAL,
    CargoType TEXT,
    HandlingAgent TEXT,
    StorageLocation TEXT,
    TemperatureControlled INTEGER,
    SecurityCheckPassed INTEGER,
    CustomsDeclared INTEGER,
    FeeUSD REAL,
    ReceivedTimestamp TEXT,
    ReleasedTimestamp TEXT,
    DamageReported INTEGER,
    ClaimsAmountUSD REAL,
    Notes TEXT
);

INSERT INTO airport_cargo_handling (CargoID, FlightNumber, AirlineCode, OriginAirport, DestinationAirport, HandlingDate, WeightKg, VolumeM3, CargoType, HandlingAgent, StorageLocation, TemperatureControlled, SecurityCheckPassed, CustomsDeclared, FeeUSD, ReceivedTimestamp, ReleasedTimestamp, DamageReported, ClaimsAmountUSD, Notes) VALUES (7001, 'AA123', 'AA', 'JFK', 'LAX', '2023-08-15', 2500.0, 12.5, 'Pharmaceuticals', 'DeltaCargo', 'WarehouseA', 1, 1, 1, 1800.00, '2023-08-15 06:45', '2023-08-15 12:30', 0, 0.00, 'Handled with care');
INSERT INTO airport_cargo_handling (CargoID, FlightNumber, AirlineCode, OriginAirport, DestinationAirport, HandlingDate, WeightKg, VolumeM3, CargoType, HandlingAgent, StorageLocation, TemperatureControlled, SecurityCheckPassed, CustomsDeclared, FeeUSD, ReceivedTimestamp, ReleasedTimestamp, DamageReported, ClaimsAmountUSD, Notes) VALUES (7002, 'DL456', 'DL', 'CDG', 'ORD', '2023-09-02', 1800.0, 9.0, 'Electronics', 'AirWorld', 'WarehouseB', 0, 1, 1, 1500.00, '2023-09-02 04:20', '2023-09-02 10:05', 1, 300.00, 'Minor dent on pallet');
INSERT INTO airport_cargo_handling (CargoID, FlightNumber, AirlineCode, OriginAirport, DestinationAirport, HandlingDate, WeightKg, VolumeM3, CargoType, HandlingAgent, StorageLocation, TemperatureControlled, SecurityCheckPassed, CustomsDeclared, FeeUSD, ReceivedTimestamp, ReleasedTimestamp, DamageReported, ClaimsAmountUSD, Notes) VALUES (7003, 'UA789', 'UA', 'HND', 'SFO', '2023-07-28', 3200.0, 15.2, 'Automotive', 'GlobalFreight', 'WarehouseC', 0, 1, 0, 2100.00, '2023-07-28 08:10', '2023-07-28 14:45', 0, 0.00, 'Customs pending clearance');

-- Smart city air quality alerts
CREATE TABLE smart_city_air_quality_alerts
(
    AlertID INTEGER PRIMARY KEY,
    SensorID INTEGER,
    CitySector TEXT,
    AlertDate DATE,
    Pollutant TEXT,
    ConcentrationPPM REAL,
    ThresholdPPM REAL,
    AlertLevel TEXT,
    ActionIssued TEXT,
    IssuedBy TEXT,
    ResolvedDate DATE,
    ResolutionNotes TEXT,
    Latitude REAL,
    Longitude REAL,
    WeatherCondition TEXT,
    TrafficLevel TEXT,
    PopulationDensity INTEGER,
    NotificationSent INTEGER,
    FollowUpRequired INTEGER,
    AdditionalInfo TEXT
);

INSERT INTO smart_city_air_quality_alerts (AlertID, SensorID, CitySector, AlertDate, Pollutant, ConcentrationPPM, ThresholdPPM, AlertLevel, ActionIssued, IssuedBy, ResolvedDate, ResolutionNotes, Latitude, Longitude, WeatherCondition, TrafficLevel, PopulationDensity, NotificationSent, FollowUpRequired, AdditionalInfo) VALUES (12001, 101, 'Downtown', '2023-09-10', 'PM2.5', 85.0, 50.0, 'High', 'TrafficRestriction', 'EnvDept', NULL, NULL, 40.712776, -74.005974, 'Clear', 'Heavy', 12000, 1, 1, 'Monitor for 24h');
INSERT INTO smart_city_air_quality_alerts (AlertID, SensorID, CitySector, AlertDate, Pollutant, ConcentrationPPM, ThresholdPPM, AlertLevel, ActionIssued, IssuedBy, ResolvedDate, ResolutionNotes, Latitude, Longitude, WeatherCondition, TrafficLevel, PopulationDensity, NotificationSent, FollowUpRequired, AdditionalInfo) VALUES (12002, 102, 'IndustrialPark', '2023-08-22', 'NO2', 70.5, 60.0, 'Moderate', 'FactoryEmissionCheck', 'EnvDept', '2023-08-23', 'Emission reduced', 34.052235, -118.243683, 'Windy', 'Moderate', 8000, 1, 0, 'No further action');
INSERT INTO smart_city_air_quality_alerts (AlertID, SensorID, CitySector, AlertDate, Pollutant, ConcentrationPPM, ThresholdPPM, AlertLevel, ActionIssued, IssuedBy, ResolvedDate, ResolutionNotes, Latitude, Longitude, WeatherCondition, TrafficLevel, PopulationDensity, NotificationSent, FollowUpRequired, AdditionalInfo) VALUES (12003, 103, 'ResidentialEast', '2023-07-15', 'O3', 55.2, 55.0, 'Elevated', 'PublicAdvisory', 'EnvDept', NULL, NULL, 51.507351, -0.127758, 'Sunny', 'Light', 15000, 1, 1, 'Issue health warnings');

-- Water distribution pressure readings
CREATE TABLE water_distribution_pressure_readings
(
    ReadingID INTEGER PRIMARY KEY,
    PipeSegmentID INTEGER,
    LocationName TEXT,
    ReadingTimestamp TEXT,
    PressurePsi REAL,
    FlowRateLps REAL,
    TemperatureC REAL,
    ValveStatus TEXT,
    LeakDetected INTEGER,
    MaintenanceFlag INTEGER,
    RecordedBy INTEGER,
    Comments TEXT,
    Latitude REAL,
    Longitude REAL,
    SensorHealthScore INTEGER,
    CalibrationDate DATE,
    PressureTrend TEXT,
    HourOfDay INTEGER,
    DayOfWeek INTEGER,
    WeekOfYear INTEGER
);

INSERT INTO water_distribution_pressure_readings (ReadingID, PipeSegmentID, LocationName, ReadingTimestamp, PressurePsi, FlowRateLps, TemperatureC, ValveStatus, LeakDetected, MaintenanceFlag, RecordedBy, Comments, Latitude, Longitude, SensorHealthScore, CalibrationDate, PressureTrend, HourOfDay, DayOfWeek, WeekOfYear) VALUES (3001, 501, 'North Main', '2023-09-01 06:15', 55.2, 120.5, 12.3, 'Open', 0, 0, 22, 'Normal operation', 40.730610, -73.935242, 92, '2023-01-15', 'Stable', 6, 5, 35);
INSERT INTO water_distribution_pressure_readings (ReadingID, PipeSegmentID, LocationName, ReadingTimestamp, PressurePsi, FlowRateLps, TemperatureC, ValveStatus, LeakDetected, MaintenanceFlag, RecordedBy, Comments, Latitude, Longitude, SensorHealthScore, CalibrationDate, PressureTrend, HourOfDay, DayOfWeek, WeekOfYear) VALUES (3002, 502, 'East Loop', '2023-09-01 14:45', 62.8, 135.0, 13.7, 'Closed', 1, 1, 23, 'Minor leak observed', 34.052235, -118.243683, 78, '2023-02-20', 'Rising', 14, 5, 35);
INSERT INTO water_distribution_pressure_readings (ReadingID, PipeSegmentID, LocationName, ReadingTimestamp, PressurePsi, FlowRateLps, TemperatureC, ValveStatus, LeakDetected, MaintenanceFlag, RecordedBy, Comments, Latitude, Longitude, SensorHealthScore, CalibrationDate, PressureTrend, HourOfDay, DayOfWeek, WeekOfYear) VALUES (3003, 503, 'South Corridor', '2023-09-01 22:10', 48.5, 110.2, 11.9, 'Open', 0, 0, 24, 'Pressure low due to demand', 51.507351, -0.127758, 85, '2023-03-10', 'Dropping', 22, 5, 35);

-- Municipal roadway surface condition surveys
CREATE TABLE municipal_roadway_surface_conditions
(
    ConditionID INTEGER PRIMARY KEY,
    RoadSegmentID INTEGER,
    SurveyDate DATE,
    SurfaceType TEXT,
    RoughnessIri REAL,
    CrackingPct REAL,
    PavementAgeYears INTEGER,
    MaintenanceNeeded INTEGER,
    RecommendedAction TEXT,
    InspectionTeam TEXT,
    WeatherOnSurvey TEXT,
    TemperatureC REAL,
    HumidityPct REAL,
    TrafficVolumeAADT INTEGER,
    LightCondition TEXT,
    Latitude REAL,
    Longitude REAL,
    Comments TEXT,
    HazardLevel INTEGER,
    FollowUpDate DATE
);

INSERT INTO municipal_roadway_surface_conditions (ConditionID, RoadSegmentID, SurveyDate, SurfaceType, RoughnessIri, CrackingPct, PavementAgeYears, MaintenanceNeeded, RecommendedAction, InspectionTeam, WeatherOnSurvey, TemperatureC, HumidityPct, TrafficVolumeAADT, LightCondition, Latitude, Longitude, Comments, HazardLevel, FollowUpDate) VALUES (8001, 1001, '2023-07-05', 'Asphalt', 1.8, 4.2, 12, 1, 'Resurface', 'TeamA', 'Sunny', 22.5, 45, 25000, 'Daylight', 40.730610, -73.935242, 'Minor rutting observed', 2, '2023-10-01');
INSERT INTO municipal_roadway_surface_conditions (ConditionID, RoadSegmentID, SurveyDate, SurfaceType, RoughnessIri, CrackingPct, PavementAgeYears, MaintenanceNeeded, RecommendedAction, InspectionTeam, WeatherOnSurvey, TemperatureC, HumidityPct, TrafficVolumeAADT, LightCondition, Latitude, Longitude, Comments, HazardLevel, FollowUpDate) VALUES (8002, 1002, '2023-08-12', 'Concrete', 2.5, 7.8, 20, 1, 'Joint sealing', 'TeamB', 'Cloudy', 18.0, 60, 18000, 'Dusk', 34.052235, -118.243683, 'Expansion joints deteriorating', 3, '2023-11-15');
INSERT INTO municipal_roadway_surface_conditions (ConditionID, RoadSegmentID, SurveyDate, SurfaceType, RoughnessIri, CrackingPct, PavementAgeYears, MaintenanceNeeded, RecommendedAction, InspectionTeam, WeatherOnSurvey, TemperatureC, HumidityPct, TrafficVolumeAADT, LightCondition, Latitude, Longitude, Comments, HazardLevel, FollowUpDate) VALUES (8003, 1003, '2023-09-20', 'Asphalt', 3.2, 12.5, 25, 1, 'Full reconstruction', 'TeamC', 'Rainy', 16.3, 80, 30000, 'Night', 51.507351, -0.127758, 'Severe cracking and potholes', 5, '2024-02-01');

-- Digital identity verification logs
CREATE TABLE digital_identity_verification_logs
(
    VerificationID INTEGER PRIMARY KEY,
    UserID INTEGER,
    VerificationMethod TEXT,
    Provider TEXT,
    VerificationTimestamp TEXT,
    Outcome TEXT,
    ReasonCode TEXT,
    DocumentType TEXT,
    DocumentNumber TEXT,
    DocumentIssueDate DATE,
    DocumentExpiryDate DATE,
    CountryCode TEXT,
    IPAddress TEXT,
    DeviceFingerprint TEXT,
    ConfidenceScore REAL,
    ManualReviewFlag INTEGER,
    ReviewerID INTEGER,
    ReviewComments TEXT,
    UpdatedTimestamp TEXT,
    ActiveFlag INTEGER
);

INSERT INTO digital_identity_verification_logs (UserID, VerificationMethod, Provider, VerificationTimestamp, Outcome, ReasonCode, DocumentType, DocumentNumber, DocumentIssueDate, DocumentExpiryDate, CountryCode, IPAddress, DeviceFingerprint, ConfidenceScore, ManualReviewFlag, ReviewerID, ReviewComments, UpdatedTimestamp, ActiveFlag) VALUES (901, 'Biometric', 'AuthX', '2023-09-01 10:20', 'Success', 'None', 'Passport', 'P9876543', '2015-04-10', '2025-04-10', 'US', '192.168.1.10', 'FP123ABC', 0.98, 0, NULL, NULL, '2023-09-01 10:22', 1);
INSERT INTO digital_identity_verification_logs (UserID, VerificationMethod, Provider, VerificationTimestamp, Outcome, ReasonCode, DocumentType, DocumentNumber, DocumentIssueDate, DocumentExpiryDate, CountryCode, IPAddress, DeviceFingerprint, ConfidenceScore, ManualReviewFlag, ReviewerID, ReviewComments, UpdatedTimestamp, ActiveFlag) VALUES (902, 'DocumentUpload', 'VerifyNow', '2023-09-02 14:05', 'Failure', 'DocMismatch', 'DriverLicense', 'D1234567', '2018-07-01', '2028-07-01', 'CA', '192.168.1.20', 'FP456DEF', 0.45, 1, 33, 'Image blurry, request new upload', '2023-09-02 14:10', 1);
INSERT INTO digital_identity_verification_logs (UserID, VerificationMethod, Provider, VerificationTimestamp, Outcome, ReasonCode, DocumentType, DocumentNumber, DocumentIssueDate, DocumentExpiryDate, CountryCode, IPAddress, DeviceFingerprint, ConfidenceScore, ManualReviewFlag, ReviewerID, ReviewComments, UpdatedTimestamp, ActiveFlag) VALUES (903, 'OTP', 'SecurePass', '2023-09-03 09:30', 'Success', 'None', 'NationalID', 'NID998877', '2010-01-15', '2030-01-15', 'GB', '192.168.1.30', 'FP789GHI', 0.85, 0, NULL, NULL, '2023-09-03 09:32', 1);