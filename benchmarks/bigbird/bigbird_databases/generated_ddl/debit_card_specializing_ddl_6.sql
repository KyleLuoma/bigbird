-- Road sensor data collected from highway monitoring devices
CREATE TABLE road_sensor_data
(
    SensorID INTEGER PRIMARY KEY,
    RoadSegmentID TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    SensorType TEXT,
    FirmwareVersion TEXT,
    BatteryLevel REAL,
    SignalStrength REAL,
    TemperatureC REAL,
    Humidity REAL,
    VehicleCount INTEGER,
    AverageSpeed REAL,
    HeavyVehicleCount INTEGER,
    IncidentFlag BOOLEAN,
    DataUploadTimestamp TEXT,
    CalibrationDate DATE,
    Manufacturer TEXT,
    MaintenanceDueDate DATE,
    Notes TEXT
);

INSERT INTO road_sensor_data (SensorID, RoadSegmentID, Latitude, Longitude, InstallationDate, SensorType, FirmwareVersion, BatteryLevel, SignalStrength, TemperatureC, Humidity, VehicleCount, AverageSpeed, HeavyVehicleCount, IncidentFlag, DataUploadTimestamp, CalibrationDate, Manufacturer, MaintenanceDueDate, Notes) VALUES (101, 'RS01', 34.0567, -118.2475, '2022-03-15', 'Speed', 'v1.3', 78.5, -62.3, 22.5, 45.0, 1280, 65.4, 215, 0, '2023-07-20T10:15:00', '2023-01-10', 'SensTech', '2024-03-15', 'Initial deployment');
INSERT INTO road_sensor_data (SensorID, RoadSegmentID, Latitude, Longitude, InstallationDate, SensorType, FirmwareVersion, BatteryLevel, SignalStrength, TemperatureC, Humidity, VehicleCount, AverageSpeed, HeavyVehicleCount, IncidentFlag, DataUploadTimestamp, CalibrationDate, Manufacturer, MaintenanceDueDate, Notes) VALUES (102, 'RS02', 40.7128, -74.0060, '2021-11-05', 'Count', 'v2.0', 65.2, -70.1, 18.3, 50.2, 980, 48.7, 120, 1, '2023-07-21T08:45:00', '2022-12-20', 'RoadSense', '2024-11-05', 'Sensor upgraded');
INSERT INTO road_sensor_data (SensorID, RoadSegmentID, Latitude, Longitude, InstallationDate, SensorType, FirmwareVersion, BatteryLevel, SignalStrength, TemperatureC, Humidity, VehicleCount, AverageSpeed, HeavyVehicleCount, IncidentFlag, DataUploadTimestamp, CalibrationDate, Manufacturer, MaintenanceDueDate, Notes) VALUES (103, 'RS03', 51.5074, -0.1278, '2020-06-30', 'Weather', 'v1.8', 88.0, -55.0, 15.0, 60.0, 1500, 55.2, 300, 0, '2023-07-22T12:00:00', '2022-06-30', 'MetroSensors', '2024-06-30', 'Added humidity sensor');

-- Mobile app usage sessions by customers
CREATE TABLE mobile_app_usage
(
    SessionID INTEGER PRIMARY KEY,
    UserID INTEGER,
    DeviceID TEXT,
    OSVersion TEXT,
    AppVersion TEXT,
    StartTimestamp TEXT,
    EndTimestamp TEXT,
    SessionDuration INTEGER,
    PagesViewed INTEGER,
    FeatureSearchCount INTEGER,
    FeaturePaymentCount INTEGER,
    ErrorCount INTEGER,
    DataConsumedMB REAL,
    NetworkType TEXT,
    CountryCode TEXT,
    Language TEXT,
    IsPremiumUser BOOLEAN,
    AvgInteractionTime REAL,
    LastScreen TEXT,
    ReferralSource TEXT
);

INSERT INTO mobile_app_usage (SessionID, UserID, DeviceID, OSVersion, AppVersion, StartTimestamp, EndTimestamp, SessionDuration, PagesViewed, FeatureSearchCount, FeaturePaymentCount, ErrorCount, DataConsumedMB, NetworkType, CountryCode, Language, IsPremiumUser, AvgInteractionTime, LastScreen, ReferralSource) VALUES (2001, 501, 'DEVICEA123', 'iOS14.6', '3.2.1', '2023-08-01T08:05:00', '2023-08-01T08:25:00', 1200, 15, 3, 1, 0, 45.6, 'WiFi', 'US', 'en', 1, 4.2, 'HomeScreen', 'Email');
INSERT INTO mobile_app_usage (SessionID, UserID, DeviceID, OSVersion, AppVersion, StartTimestamp, EndTimestamp, SessionDuration, PagesViewed, FeatureSearchCount, FeaturePaymentCount, ErrorCount, DataConsumedMB, NetworkType, CountryCode, Language, IsPremiumUser, AvgInteractionTime, LastScreen, ReferralSource) VALUES (2002, 502, 'DEVICEB456', 'Android11', '3.2.1', '2023-08-02T14:10:00', '2023-08-02T14:35:00', 1500, 20, 5, 0, 1, 62.3, '4G', 'CA', 'en', 0, 3.8, 'PaymentScreen', 'Ad');
INSERT INTO mobile_app_usage (SessionID, UserID, DeviceID, OSVersion, AppVersion, StartTimestamp, EndTimestamp, SessionDuration, PagesViewed, FeatureSearchCount, FeaturePaymentCount, ErrorCount, DataConsumedMB, NetworkType, CountryCode, Language, IsPremiumUser, AvgInteractionTime, LastScreen, ReferralSource) VALUES (2003, 503, 'DEVICEC789', 'iOS15.0', '3.3.0', '2023-08-03T09:00:00', '2023-08-03T09:20:00', 1200, 12, 2, 2, 0, 38.1, 'WiFi', 'GB', 'en', 1, 4.5, 'OffersScreen', 'Push');

-- Logs of internal corporate communications
CREATE TABLE corporate_communication_logs
(
    LogID INTEGER PRIMARY KEY,
    SenderEmployeeID INTEGER,
    ReceiverEmployeeID INTEGER,
    CommunicationChannel TEXT,
    MessageSubject TEXT,
    MessageBody TEXT,
    SentTimestamp TEXT,
    ReceivedTimestamp TEXT,
    AttachmentCount INTEGER,
    IsConfidential BOOLEAN,
    PriorityLevel INTEGER,
    ThreadID INTEGER,
    ConversationTag TEXT,
    DepartmentCode TEXT,
    Location TEXT,
    EncryptionStatus TEXT,
    MessageLength INTEGER,
    ResponseTimeSeconds INTEGER,
    ArchiveFlag BOOLEAN,
    ComplianceReviewed BOOLEAN
);

INSERT INTO corporate_communication_logs (LogID, SenderEmployeeID, ReceiverEmployeeID, CommunicationChannel, MessageSubject, MessageBody, SentTimestamp, ReceivedTimestamp, AttachmentCount, IsConfidential, PriorityLevel, ThreadID, ConversationTag, DepartmentCode, Location, EncryptionStatus, MessageLength, ResponseTimeSeconds, ArchiveFlag, ComplianceReviewed) VALUES (3001, 1001, 1002, 'Email', 'Quarterly Report', 'Please review the attached Q2 financials.', '2023-07-15T09:00:00', '2023-07-15T09:00:05', 1, 1, 2, 5001, 'Finance', 'FIN', 'NewYork', 'AES256', 128, 300, 0, 1);
INSERT INTO corporate_communication_logs (LogID, SenderEmployeeID, ReceiverEmployeeID, CommunicationChannel, MessageSubject, MessageBody, SentTimestamp, ReceivedTimestamp, AttachmentCount, IsConfidential, PriorityLevel, ThreadID, ConversationTag, DepartmentCode, Location, EncryptionStatus, MessageLength, ResponseTimeSeconds, ArchiveFlag, ComplianceReviewed) VALUES (3002, 1003, 1004, 'Chat', 'Team Lunch', 'Let''s schedule lunch for Friday.', '2023-07-16T11:20:00', '2023-07-16T11:20:02', 0, 0, 1, 5002, 'HR', 'HR', 'Chicago', 'None', 45, 60, 0, 0);
INSERT INTO corporate_communication_logs (LogID, SenderEmployeeID, ReceiverEmployeeID, CommunicationChannel, MessageSubject, MessageBody, SentTimestamp, ReceivedTimestamp, AttachmentCount, IsConfidential, PriorityLevel, ThreadID, ConversationTag, DepartmentCode, Location, EncryptionStatus, MessageLength, ResponseTimeSeconds, ArchiveFlag, ComplianceReviewed) VALUES (3003, 1005, 1006, 'Phone', 'System Outage', 'The system will be down for maintenance tonight.', '2023-07-17T14:00:00', '2023-07-17T14:00:01', 0, 1, 3, 5003, 'IT', 'IT', 'SanFrancisco', 'TLS', 82, 180, 1, 1);

-- Fuel quality test results for station products
CREATE TABLE fuel_quality_tests
(
    TestID INTEGER PRIMARY KEY,
    StationID INTEGER,
    ProductID INTEGER,
    TestDate DATE,
    OctaneRating REAL,
    CetaneNumber REAL,
    SulfurContentPPM REAL,
    WaterContentPPM REAL,
    GreaseContentPPM REAL,
    FlashPointC REAL,
    DensityKgM3 REAL,
    TemperatureC REAL,
    TesterName TEXT,
    LabName TEXT,
    TestMethod TEXT,
    PassFlag BOOLEAN,
    Comments TEXT,
    SampleID TEXT,
    CalibrationDate DATE,
    InstrumentID INTEGER,
    RegulatoryStandard TEXT
);

INSERT INTO fuel_quality_tests (TestID, StationID, ProductID, TestDate, OctaneRating, CetaneNumber, SulfurContentPPM, WaterContentPPM, GreaseContentPPM, FlashPointC, DensityKgM3, TemperatureC, TesterName, LabName, TestMethod, PassFlag, Comments, SampleID, CalibrationDate, InstrumentID, RegulatoryStandard) VALUES (4001, 201, 10, '2023-06-01', 95.2, 0, 15.0, 5.0, 2.1, 220.0, 0.755, 15.0, 'JohnDoe', 'LabA', 'ASTM', 1, 'All parameters within limits', 'SMP001', '2023-01-01', 301, 'EPA');
INSERT INTO fuel_quality_tests (TestID, StationID, ProductID, TestDate, OctaneRating, CetaneNumber, SulfurContentPPM, WaterContentPPM, GreaseContentPPM, FlashPointC, DensityKgM3, TemperatureC, TesterName, LabName, TestMethod, PassFlag, Comments, SampleID, CalibrationDate, InstrumentID, RegulatoryStandard) VALUES (4002, 202, 11, '2023-06-02', 91.5, 0, 20.0, 6.0, 1.8, 210.0, 0.740, 16.0, 'JaneSmith', 'LabB', 'ISO', 0, 'Sulfur slightly high', 'SMP002', '2023-02-15', 302, 'EPA');
INSERT INTO fuel_quality_tests (TestID, StationID, ProductID, TestDate, OctaneRating, CetaneNumber, SulfurContentPPM, WaterContentPPM, GreaseContentPPM, FlashPointC, DensityKgM3, TemperatureC, TesterName, LabName, TestMethod, PassFlag, Comments, SampleID, CalibrationDate, InstrumentID, RegulatoryStandard) VALUES (4003, 203, 12, '2023-06-03', 98.0, 0, 10.0, 4.0, 2.5, 230.0, 0.760, 14.5, 'MikeLee', 'LabC', 'ASTM', 1, 'Excellent quality', 'SMP003', '2023-03-10', 303, 'EPA');

-- Inventory of electric vehicle charging stations
CREATE TABLE ev_charging_station_inventory
(
    ChargerID INTEGER PRIMARY KEY,
    StationID INTEGER,
    ChargerModel TEXT,
    PowerKW REAL,
    ConnectorType TEXT,
    InstallationDate DATE,
    FirmwareVersion TEXT,
    Status TEXT,
    LastServiceDate DATE,
    NextServiceDue DATE,
    OperatorCompany TEXT,
    NetworkProvider TEXT,
    Latitude REAL,
    Longitude REAL,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    VoltageV REAL,
    CurrentA REAL,
    PricingPlan TEXT,
    PaymentMethodSupported TEXT,
    UsageCount INTEGER
);

INSERT INTO ev_charging_station_inventory (ChargerID, StationID, ChargerModel, PowerKW, ConnectorType, InstallationDate, FirmwareVersion, Status, LastServiceDate, NextServiceDue, OperatorCompany, NetworkProvider, Latitude, Longitude, City, State, ZipCode, VoltageV, CurrentA, PricingPlan, PaymentMethodSupported, UsageCount) VALUES (5001, 301, 'ChargeFastX', 150.0, 'CCS', '2021-05-20', 'v5.1', 'Active', '2023-04-10', '2024-04-10', 'EVPowerCo', 'ChargeNet', 35.6895, 139.6917, 'Tokyo', 'Tokyo', '100-0001', 400, 375, 'TimeBased', 'CreditCard', 1200);
INSERT INTO ev_charging_station_inventory (ChargerID, StationID, ChargerModel, PowerKW, ConnectorType, InstallationDate, FirmwareVersion, Status, LastServiceDate, NextServiceDue, OperatorCompany, NetworkProvider, Latitude, Longitude, City, State, ZipCode, VoltageV, CurrentA, PricingPlan, PaymentMethodSupported, UsageCount) VALUES (5002, 302, 'EcoCharge200', 75.0, 'CHAdeMO', '2020-09-15', 'v4.3', 'Maintenance', '2023-01-05', '2023-12-05', 'GreenEnergy', 'FastCharge', 48.8566, 2.3522, 'Paris', 'Ile-de-France', '75001', 380, 197, 'PerKWh', 'MobilePay', 850);
INSERT INTO ev_charging_station_inventory (ChargerID, StationID, ChargerModel, PowerKW, ConnectorType, InstallationDate, FirmwareVersion, Status, LastServiceDate, NextServiceDue, OperatorCompany, NetworkProvider, Latitude, Longitude, City, State, ZipCode, VoltageV, CurrentA, PricingPlan, PaymentMethodSupported, UsageCount) VALUES (5003, 303, 'SuperChargePro', 250.0, 'CCS', '2022-02-10', 'v6.0', 'Active', '2023-06-01', '2024-06-01', 'ChargeNow', 'ElectraNet', 51.5074, -0.1278, 'London', 'England', 'SW1A', 415, 603, 'Subscription', 'Card', 450);

-- Records of employee daily commutes
CREATE TABLE employee_commute_records
(
    CommuteID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    CommuteDate DATE,
    ModeOfTransport TEXT,
    DistanceKm REAL,
    DurationMinutes INTEGER,
    CarbonEmissionKg REAL,
    CostUSD REAL,
    StartLocation TEXT,
    EndLocation TEXT,
    ParkingFeeUSD REAL,
    PublicTransitTicketID TEXT,
    CarpoolGroupID INTEGER,
    WeatherCondition TEXT,
    TrafficLevel TEXT,
    Remarks TEXT,
    SupervisorApproval BOOLEAN,
    ReimbursementStatus TEXT,
    MileageLogNumber TEXT,
    FuelType TEXT,
    ShiftID INTEGER
);

INSERT INTO employee_commute_records (CommuteID, EmployeeID, CommuteDate, ModeOfTransport, DistanceKm, DurationMinutes, CarbonEmissionKg, CostUSD, StartLocation, EndLocation, ParkingFeeUSD, PublicTransitTicketID, CarpoolGroupID, WeatherCondition, TrafficLevel, Remarks, SupervisorApproval, ReimbursementStatus, MileageLogNumber, FuelType, ShiftID) VALUES (6001, 701, '2023-07-20', 'Car', 15.2, 35, 3.4, 12.5, 'HomeA', 'OfficeA', 5.0, NULL, NULL, 'Clear', 'Medium', 'N/A', 1, 'Approved', 'MLN001', 'Petrol', 1);
INSERT INTO employee_commute_records (CommuteID, EmployeeID, CommuteDate, ModeOfTransport, DistanceKm, DurationMinutes, CarbonEmissionKg, CostUSD, StartLocation, EndLocation, ParkingFeeUSD, PublicTransitTicketID, CarpoolGroupID, WeatherCondition, TrafficLevel, Remarks, SupervisorApproval, ReimbursementStatus, MileageLogNumber, FuelType, ShiftID) VALUES (6002, 702, '2023-07-21', 'Bus', 8.5, 25, 1.2, 4.0, 'HomeB', 'OfficeB', 0.0, 'TCK123', NULL, 'Rain', 'High', 'Late due to rain', 1, 'Pending', 'MLN002', 'N/A', 2);
INSERT INTO employee_commute_records (CommuteID, EmployeeID, CommuteDate, ModeOfTransport, DistanceKm, DurationMinutes, CarbonEmissionKg, CostUSD, StartLocation, EndLocation, ParkingFeeUSD, PublicTransitTicketID, CarpoolGroupID, WeatherCondition, TrafficLevel, Remarks, SupervisorApproval, ReimbursementStatus, MileageLogNumber, FuelType, ShiftID) VALUES (6003, 703, '2023-07-22', 'Bike', 5.0, 20, 0.0, 0.0, 'HomeC', 'OfficeC', 0.0, NULL, NULL, 'Sunny', 'Low', 'Enjoyable ride', 1, 'Approved', 'MLN003', 'N/A', 3);

-- Performance metrics for suppliers
CREATE TABLE supplier_performance_metrics
(
    SupplierID INTEGER PRIMARY KEY,
    MetricPeriod TEXT,
    OnTimeDeliveryPct REAL,
    DefectRatePct REAL,
    AvgLeadTimeDays REAL,
    CostVariancePct REAL,
    ContractCompliancePct REAL,
    CommunicationScore INTEGER,
    InnovationScore INTEGER,
    SustainabilityScore INTEGER,
    RiskRating INTEGER,
    TotalOrders INTEGER,
    FulfilledOrders INTEGER,
    LateOrders INTEGER,
    ReturnRatePct REAL,
    AuditFindingsCount INTEGER,
    LastAuditDate DATE,
    PrimaryContact TEXT,
    ContactPhone TEXT,
    Email TEXT,
    Notes TEXT
);

INSERT INTO supplier_performance_metrics (SupplierID, MetricPeriod, OnTimeDeliveryPct, DefectRatePct, AvgLeadTimeDays, CostVariancePct, ContractCompliancePct, CommunicationScore, InnovationScore, SustainabilityScore, RiskRating, TotalOrders, FulfilledOrders, LateOrders, ReturnRatePct, AuditFindingsCount, LastAuditDate, PrimaryContact, ContactPhone, Email, Notes) VALUES (8001, '2023Q2', 96.5, 0.8, 12.4, -2.1, 99.0, 85, 70, 88, 2, 1500, 1445, 55, 0.5, 1, '2023-06-15', 'AliceBrown', '555-1234', 'alice.brown@supplier.com', 'Improved lead times');
INSERT INTO supplier_performance_metrics (SupplierID, MetricPeriod, OnTimeDeliveryPct, DefectRatePct, AvgLeadTimeDays, CostVariancePct, ContractCompliancePct, CommunicationScore, InnovationScore, SustainabilityScore, RiskRating, TotalOrders, FulfilledOrders, LateOrders, ReturnRatePct, AuditFindingsCount, LastAuditDate, PrimaryContact, ContactPhone, Email, Notes) VALUES (8002, '2023Q2', 89.2, 1.5, 18.0, 3.4, 95.5, 78, 60, 73, 4, 1200, 1070, 130, 1.2, 3, '2023-06-20', 'BobClark', '555-5678', 'bob.clark@supplier.com', 'Needs improvement in quality');
INSERT INTO supplier_performance_metrics (SupplierID, MetricPeriod, OnTimeDeliveryPct, DefectRatePct, AvgLeadTimeDays, CostVariancePct, ContractCompliancePct, CommunicationScore, InnovationScore, SustainabilityScore, RiskRating, TotalOrders, FulfilledOrders, LateOrders, ReturnRatePct, AuditFindingsCount, LastAuditDate, PrimaryContact, ContactPhone, Email, Notes) VALUES (8003, '2023Q2', 92.0, 0.6, 15.2, -1.0, 98.0, 82, 68, 90, 1, 1400, 1288, 112, 0.7, 0, '2023-06-18', 'CarolDavis', '555-9012', 'carol.davis@supplier.com', 'Excellent sustainability record');

-- Findings from tax audits
CREATE TABLE tax_audit_findings
(
    FindingID INTEGER PRIMARY KEY,
    AuditYear INTEGER,
    Department TEXT,
    IssueCategory TEXT,
    Description TEXT,
    SeverityLevel INTEGER,
    AmountAffectedUSD REAL,
    CorrectiveAction TEXT,
    ActionOwner TEXT,
    DueDate DATE,
    Status TEXT,
    FindingsCount INTEGER,
    FollowUpDate DATE,
    DocumentationLink TEXT,
    Reviewer TEXT,
    ReviewDate DATE,
    PenaltyImposed BOOLEAN,
    PenaltyAmountUSD REAL,
    AdjustedTaxLiabilityUSD REAL,
    Comments TEXT
);

INSERT INTO tax_audit_findings (FindingID, AuditYear, Department, IssueCategory, Description, SeverityLevel, AmountAffectedUSD, CorrectiveAction, ActionOwner, DueDate, Status, FindingsCount, FollowUpDate, DocumentationLink, Reviewer, ReviewDate, PenaltyImposed, PenaltyAmountUSD, AdjustedTaxLiabilityUSD, Comments) VALUES (9001, 2022, 'Finance', 'Late Filing', 'Submission delayed by 30 days', 2, 15000.00, 'File missing returns', 'JohnMiller', '2023-03-01', 'Closed', 1, '2023-02-15', 'doclink001', 'SarahLee', '2023-02-10', 0, 0.00, 15000.00, 'No penalty due to reasonable cause');
INSERT INTO tax_audit_findings (FindingID, AuditYear, Department, IssueCategory, Description, SeverityLevel, AmountAffectedUSD, CorrectiveAction, ActionOwner, DueDate, Status, FindingsCount, FollowUpDate, DocumentationLink, Reviewer, ReviewDate, PenaltyImposed, PenaltyAmountUSD, AdjustedTaxLiabilityUSD, Comments) VALUES (9002, 2023, 'Operations', 'VAT Misreporting', 'Underreported VAT by 5%', 3, 25000.00, 'Recalculate and remit', 'EmilyStone', '2023-06-15', 'Open', 2, '2023-05-30', 'doclink002', 'MikeRoss', '2023-05-20', 1, 5000.00, 30000.00, 'Penalty assessed');
INSERT INTO tax_audit_findings (FindingID, AuditYear, Department, IssueCategory, Description, SeverityLevel, AmountAffectedUSD, CorrectiveAction, ActionOwner, DueDate, Status, FindingsCount, FollowUpDate, DocumentationLink, Reviewer, ReviewDate, PenaltyImposed, PenaltyAmountUSD, AdjustedTaxLiabilityUSD, Comments) VALUES (9003, 2021, 'HR', 'Payroll Tax', 'Incorrect classification of contractors', 4, 40000.00, 'Reclassify and pay back taxes', 'DavidKim', '2022-01-10', 'Closed', 1, '2021-12-20', 'doclink003', 'LauraChen', '2021-12-15', 1, 8000.00, 48000.00, 'Full investigation completed');

-- Environmental impact reports for facilities
CREATE TABLE environmental_impact_reports
(
    ReportID INTEGER PRIMARY KEY,
    ReportingPeriod TEXT,
    FacilityID INTEGER,
    Scope TEXT,
    GreenhouseGasTonnes REAL,
    WaterUsageM3 REAL,
    WasteGeneratedTonnes REAL,
    RecycledWastePct REAL,
    EnergyConsumptionMWh REAL,
    RenewableEnergyPct REAL,
    AirQualityIndex REAL,
    NoiseLevelDbA REAL,
    BiodiversityImpactScore INTEGER,
    ComplianceStatus TEXT,
    ReportPreparedBy TEXT,
    ApprovalDate DATE,
    AuditorName TEXT,
    AuditScore INTEGER,
    Recommendations TEXT,
    FollowUpStatus TEXT,
    PublicationDate DATE
);

INSERT INTO environmental_impact_reports (ReportID, ReportingPeriod, FacilityID, Scope, GreenhouseGasTonnes, WaterUsageM3, WasteGeneratedTonnes, RecycledWastePct, EnergyConsumptionMWh, RenewableEnergyPct, AirQualityIndex, NoiseLevelDbA, BiodiversityImpactScore, ComplianceStatus, ReportPreparedBy, ApprovalDate, AuditorName, AuditScore, Recommendations, FollowUpStatus, PublicationDate) VALUES (10001, '2022', 401, 'Scope1', 1200.5, 85000.0, 45.2, 68.0, 5000.0, 15.0, 42, 65, 78, 'Compliant', 'AnnaGreen', '2023-01-15', 'ThomasWhite', 92, 'Increase solar panel capacity', 'InProgress', '2023-02-01');
INSERT INTO environmental_impact_reports (ReportID, ReportingPeriod, FacilityID, Scope, GreenhouseGasTonnes, WaterUsageM3, WasteGeneratedTonnes, RecycledWastePct, EnergyConsumptionMWh, RenewableEnergyPct, AirQualityIndex, NoiseLevelDbA, BiodiversityImpactScore, ComplianceStatus, ReportPreparedBy, ApprovalDate, AuditorName, AuditScore, Recommendations, FollowUpStatus, PublicationDate) VALUES (10002, '2023', 402, 'Scope2', 950.3, 72000.0, 38.7, 72.5, 4600.0, 20.0, 38, 60, 82, 'Compliant', 'MarkBlue', '2024-01-10', 'LindaGrey', 95, 'Implement water recycling system', 'Planned', '2024-02-05');
INSERT INTO environmental_impact_reports (ReportID, ReportingPeriod, FacilityID, Scope, GreenhouseGasTonnes, WaterUsageM3, WasteGeneratedTonnes, RecycledWastePct, EnergyConsumptionMWh, RenewableEnergyPct, AirQualityIndex, NoiseLevelDbA, BiodiversityImpactScore, ComplianceStatus, ReportPreparedBy, ApprovalDate, AuditorName, AuditScore, Recommendations, FollowUpStatus, PublicationDate) VALUES (10003, '2023', 403, 'Scope3', 1105.0, 90000.0, 50.0, 65.0, 5200.0, 12.0, 45, 70, 75, 'UnderReview', 'SophieRed', '2024-03-20', 'PeterBlack', 88, 'Upgrade waste sorting equipment', 'Pending', '2024-04-01');

-- Performance metrics for advertising campaigns
CREATE TABLE advertising_campaign_performance
(
    CampaignID INTEGER PRIMARY KEY,
    CampaignName TEXT,
    StartDate DATE,
    EndDate DATE,
    Channel TEXT,
    BudgetUSD REAL,
    SpendUSD REAL,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    CostPerClickUSD REAL,
    CostPerConversionUSD REAL,
    RevenueGeneratedUSD REAL,
    ReturnOnAdSpend REAL,
    TargetAudience TEXT,
    GeoTarget TEXT,
    CreativeVersion TEXT,
    FrequencyCap INTEGER,
    Dayparting TEXT,
    AttributionModel TEXT,
    Notes TEXT
);

INSERT INTO advertising_campaign_performance (CampaignID, CampaignName, StartDate, EndDate, Channel, BudgetUSD, SpendUSD, Impressions, Clicks, Conversions, CostPerClickUSD, CostPerConversionUSD, RevenueGeneratedUSD, ReturnOnAdSpend, TargetAudience, GeoTarget, CreativeVersion, FrequencyCap, Dayparting, AttributionModel, Notes) VALUES (11001, 'SummerFuelPromo', '2023-06-01', '2023-08-31', 'Online', 50000.00, 47500.00, 12000000, 34000, 5500, 1.40, 8.64, 82000.00, 1.73, 'Drivers18-35', 'US', 'V1', 3, 'Evening', 'LastClick', 'Strong performance in West Coast');
INSERT INTO advertising_campaign_performance (CampaignID, CampaignName, StartDate, EndDate, Channel, BudgetUSD, SpendUSD, Impressions, Clicks, Conversions, CostPerClickUSD, CostPerConversionUSD, RevenueGeneratedUSD, ReturnOnAdSpend, TargetAudience, GeoTarget, CreativeVersion, FrequencyCap, Dayparting, AttributionModel, Notes) VALUES (11002, 'EcoFuelDrive', '2023-09-01', '2023-11-30', 'TV', 75000.00, 73000.00, 8000000, 21000, 3400, 3.48, 21.47, 95000.00, 1.30, 'EcoConscious', 'EU', 'V2', 2, 'PrimeTime', 'Linear', 'Positive brand lift');
INSERT INTO advertising_campaign_performance (CampaignID, CampaignName, StartDate, EndDate, Channel, BudgetUSD, SpendUSD, Impressions, Clicks, Conversions, CostPerClickUSD, CostPerConversionUSD, RevenueGeneratedUSD, ReturnOnAdSpend, TargetAudience, GeoTarget, CreativeVersion, FrequencyCap, Dayparting, AttributionModel, Notes) VALUES (11003, 'WinterWarmUp', '2023-12-01', '2024-02-28', 'Radio', 30000.00, 29500.00, 5000000, 15000, 1800, 1.97, 16.39, 42000.00, 1.42, 'Drivers30-55', 'CA', 'V3', 4, 'Morning', 'Position', 'High recall among commuters');