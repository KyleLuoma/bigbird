-- Media campaign performance metrics
CREATE TABLE media_campaign_performance (
    CampaignID INTEGER PRIMARY KEY,
    CampaignName TEXT,
    StartDate DATE,
    EndDate DATE,
    Budget REAL,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    CostPerClick REAL,
    CostPerConversion REAL,
    Platform TEXT,
    TargetAudience TEXT,
    CreativeType TEXT,
    Region TEXT,
    DailySpend REAL,
    AvgPosition REAL,
    CTR REAL,
    CPC REAL,
    ConversionRate REAL,
    Revenue REAL
);
INSERT INTO media_campaign_performance (CampaignID, CampaignName, StartDate, EndDate, Budget, Impressions, Clicks, Conversions, CostPerClick, CostPerConversion, Platform, TargetAudience, CreativeType, Region, DailySpend, AvgPosition, CTR, CPC, ConversionRate, Revenue) VALUES (101, 'SummerSale', '2024-06-01', '2024-06-30', 50000.0, 1200000, 4500, 320, 0.0111, 0.125, 'Google', 'Adults30to45', 'Banner', 'NorthAmerica', 1666.67, 1.3, 0.00375, 0.0111, 0.0711, 40000.0);
INSERT INTO media_campaign_performance (CampaignID, CampaignName, StartDate, EndDate, Budget, Impressions, Clicks, Conversions, CostPerClick, CostPerConversion, Platform, TargetAudience, CreativeType, Region, DailySpend, AvgPosition, CTR, CPC, ConversionRate, Revenue) VALUES (102, 'WinterPromo', '2024-12-01', '2024-12-31', 75000.0, 2000000, 7200, 540, 0.0104, 0.140, 'Facebook', 'Adults18to35', 'Video', 'Europe', 2419.35, 2.1, 0.0036, 0.0104, 0.075, 85000.0);
INSERT INTO media_campaign_performance (CampaignID, CampaignName, StartDate, EndDate, Budget, Impressions, Clicks, Conversions, CostPerClick, CostPerConversion, Platform, TargetAudience, CreativeType, Region, DailySpend, AvgPosition, CTR, CPC, ConversionRate, Revenue) VALUES (103, 'SpringLaunch', '2024-03-15', '2024-04-15', 60000.0, 1500000, 6000, 450, 0.0117, 0.133, 'LinkedIn', 'Professionals', 'Carousel', 'AsiaPacific', 2000.0, 1.8, 0.0040, 0.0117, 0.075, 72000.0);

-- Fleet maintenance schedule
CREATE TABLE fleet_maintenance_schedule (
    ScheduleID INTEGER PRIMARY KEY,
    VehicleVIN TEXT,
    ServiceType TEXT,
    ScheduledDate DATE,
    EstimatedDurationHours REAL,
    ServiceCenterID INTEGER,
    TechnicianID INTEGER,
    PartsRequired TEXT,
    PriorityLevel TEXT,
    MileageAtService INTEGER,
    FuelLevelPercent REAL,
    OdometerReading INTEGER,
    ServiceStatus TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    CostEstimate REAL,
    DowntimeHours REAL
);
INSERT INTO fleet_maintenance_schedule (ScheduleID, VehicleVIN, ServiceType, ScheduledDate, EstimatedDurationHours, ServiceCenterID, TechnicianID, PartsRequired, PriorityLevel, MileageAtService, FuelLevelPercent, OdometerReading, ServiceStatus, Notes, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, CostEstimate, DowntimeHours) VALUES (201, '1HGCM82633A004352', 'OilChange', '2024-07-10', 2.0, 15, 302, 'OilFilter,EngineOil', 'Medium', 45200, 75.0, 45200, 'Scheduled', 'Use synthetic oil', 'System', '2024-06-20', 'System', '2024-06-20', 120.0, 2.0);
INSERT INTO fleet_maintenance_schedule (ScheduleID, VehicleVIN, ServiceType, ScheduledDate, EstimatedDurationHours, ServiceCenterID, TechnicianID, PartsRequired, PriorityLevel, MileageAtService, FuelLevelPercent, OdometerReading, ServiceStatus, Notes, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, CostEstimate, DowntimeHours) VALUES (202, 'JHMFA16586S012345', 'BrakeInspection', '2024-08-01', 3.5, 22, 415, 'BrakePads,BrakeFluid', 'High', 98700, 40.0, 98700, 'Pending', 'Check rear pads', 'Admin', '2024-07-15', 'Admin', '2024-07-15', 250.0, 3.5);
INSERT INTO fleet_maintenance_schedule (ScheduleID, VehicleVIN, ServiceType, ScheduledDate, EstimatedDurationHours, ServiceCenterID, TechnicianID, PartsRequired, PriorityLevel, MileageAtService, FuelLevelPercent, OdometerReading, ServiceStatus, Notes, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, CostEstimate, DowntimeHours) VALUES (203, '2C3KA43R78H123456', 'TireRotation', '2024-09-12', 1.5, 8, 128, 'None', 'Low', 123400, 60.0, 123400, 'Confirmed', 'Rotate all four tires', 'Scheduler', '2024-08-20', 'Scheduler', '2024-08-20', 80.0, 1.5);

-- Environmental inspection reports
CREATE TABLE environmental_inspection_reports (
    ReportID INTEGER PRIMARY KEY,
    SiteID INTEGER,
    InspectionDate DATE,
    InspectorName TEXT,
    WeatherConditions TEXT,
    TemperatureC REAL,
    HumidityPct REAL,
    AirQualityIndex INTEGER,
    WaterQualityIndex INTEGER,
    SoilContaminationLevel REAL,
    NoiseLevelDb REAL,
    FindingsSummary TEXT,
    Recommendation TEXT,
    FollowUpRequired TEXT,
    FollowUpDate DATE,
    PhotoCount INTEGER,
    DocumentReference TEXT,
    ComplianceStatus TEXT,
    PenaltyAmount REAL,
    Remarks TEXT
);
INSERT INTO environmental_inspection_reports (ReportID, SiteID, InspectionDate, InspectorName, WeatherConditions, TemperatureC, HumidityPct, AirQualityIndex, WaterQualityIndex, SoilContaminationLevel, NoiseLevelDb, FindingsSummary, Recommendation, FollowUpRequired, FollowUpDate, PhotoCount, DocumentReference, ComplianceStatus, PenaltyAmount, Remarks) VALUES (301, 55, '2024-05-14', 'Laura Chen', 'Sunny', 22.5, 45.0, 42, 78, 0.12, 55.0, 'Minor oil spill observed', 'Contain and clean spill', 'Yes', '2024-06-01', 12, 'DOC20240514', 'NonCompliant', 1500.0, 'Spill contained within 2 hours');
INSERT INTO environmental_inspection_reports (ReportID, SiteID, InspectionDate, InspectorName, WeatherConditions, TemperatureC, HumidityPct, AirQualityIndex, WaterQualityIndex, SoilContaminationLevel, NoiseLevelDb, FindingsSummary, Recommendation, FollowUpRequired, FollowUpDate, PhotoCount, DocumentReference, ComplianceStatus, PenaltyAmount, Remarks) VALUES (302, 78, '2024-06-20', 'Mark Silva', 'Rainy', 18.0, 80.0, 65, 85, 0.05, 48.0, 'All parameters within limits', 'Maintain current practices', 'No', NULL, 8, 'DOC20240620', 'Compliant', 0.0, 'No action needed');
INSERT INTO environmental_inspection_reports (ReportID, SiteID, InspectionDate, InspectorName, WeatherConditions, TemperatureC, HumidityPct, AirQualityIndex, WaterQualityIndex, SoilContaminationLevel, NoiseLevelDb, FindingsSummary, Recommendation, FollowUpRequired, FollowUpDate, PhotoCount, DocumentReference, ComplianceStatus, PenaltyAmount, Remarks) VALUES (303, 102, '2024-07-05', 'Aisha Khan', 'Cloudy', 20.0, 60.0, 58, 90, 0.22, 70.0, 'Elevated soil contaminants detected', 'Conduct remediation', 'Yes', '2024-08-15', 15, 'DOC20240705', 'NonCompliant', 3000.0, 'Sampling scheduled');

-- Energy trade settlements
CREATE TABLE energy_trade_settlements (
    SettlementID INTEGER PRIMARY KEY,
    TradeID INTEGER,
    Counterparty TEXT,
    Commodity TEXT,
    VolumeMWh REAL,
    PricePerMWh REAL,
    TotalAmount REAL,
    SettlementDate DATE,
    SettlementStatus TEXT,
    PaymentMethod TEXT,
    Currency TEXT,
    ExchangeRate REAL,
    FeeAmount REAL,
    TaxAmount REAL,
    NetAmount REAL,
    ClearingHouse TEXT,
    ContractReference TEXT,
    SettlementNotes TEXT,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE,
    ReversalFlag INTEGER
);
INSERT INTO energy_trade_settlements (SettlementID, TradeID, Counterparty, Commodity, VolumeMWh, PricePerMWh, TotalAmount, SettlementDate, SettlementStatus, PaymentMethod, Currency, ExchangeRate, FeeAmount, TaxAmount, NetAmount, ClearingHouse, ContractReference, SettlementNotes, CreatedTimestamp, UpdatedTimestamp, ReversalFlag) VALUES (401, 9001, 'GlobalEnergyCo', 'NaturalGas', 1500.0, 30.25, 45375.0, '2024-06-30', 'Completed', 'BankTransfer', 'USD', 1.0, 250.0, 200.0, 44925.0, 'NYMEX', 'CNTR-2024-07', 'Settled without issues', '2024-07-01', '2024-07-01', 0);
INSERT INTO energy_trade_settlements (SettlementID, TradeID, Counterparty, Commodity, VolumeMWh, PricePerMWh, TotalAmount, SettlementDate, SettlementStatus, PaymentMethod, Currency, ExchangeRate, FeeAmount, TaxAmount, NetAmount, ClearingHouse, ContractReference, SettlementNotes, CreatedTimestamp, UpdatedTimestamp, ReversalFlag) VALUES (402, 9002, 'EcoPowerLtd', 'Solar', 800.0, 55.10, 44080.0, '2024-07-15', 'Pending', 'WireTransfer', 'EUR', 0.92, 180.0, 150.0, 43650.0, 'EEX', 'CNTR-2024-08', 'Awaiting confirmation', '2024-07-16', '2024-07-16', 0);
INSERT INTO energy_trade_settlements (SettlementID, TradeID, Counterparty, Commodity, VolumeMWh, PricePerMWh, TotalAmount, SettlementDate, SettlementStatus, PaymentMethod, Currency, ExchangeRate, FeeAmount, TaxAmount, NetAmount, ClearingHouse, ContractReference, SettlementNotes, CreatedTimestamp, UpdatedTimestamp, ReversalFlag) VALUES (403, 9003, 'HydroCorp', 'Hydro', 2000.0, 22.75, 45500.0, '2024-08-05', 'Reversed', 'ACH', 'USD', 1.0, 300.0, 250.0, 44950.0, 'ICE', 'CNTR-2024-09', 'Reversal due to contract breach', '2024-08-06', '2024-08-07', 1);

-- Digital ad inventories
CREATE TABLE digital_ad_inventories (
    InventoryID INTEGER PRIMARY KEY,
    Publisher TEXT,
    AdSlotID TEXT,
    PageURL TEXT,
    AdFormat TEXT,
    WidthPx INTEGER,
    HeightPx INTEGER,
    RefreshRateSec INTEGER,
    CPM REAL,
    CPC REAL,
    CPA REAL,
    InventoryStatus TEXT,
    StartDate DATE,
    EndDate DATE,
    TargetDemographic TEXT,
    GeographicTarget TEXT,
    DeviceTarget TEXT,
    ViewabilityScore REAL,
    ClickThroughRate REAL,
    EstimatedImpressions INTEGER
);
INSERT INTO digital_ad_inventories (InventoryID, Publisher, AdSlotID, PageURL, AdFormat, WidthPx, HeightPx, RefreshRateSec, CPM, CPC, CPA, InventoryStatus, StartDate, EndDate, TargetDemographic, GeographicTarget, DeviceTarget, ViewabilityScore, ClickThroughRate, EstimatedImpressions) VALUES (501, 'TechNews', 'TS-001', '/home', 'Banner', 728, 90, 30, 12.5, 0.45, 5.0, 'Active', '2024-07-01', '2024-07-31', 'Adults25to45', 'NorthAmerica', 'Desktop', 0.78, 0.0045, 250000);
INSERT INTO digital_ad_inventories (InventoryID, Publisher, AdSlotID, PageURL, AdFormat, WidthPx, HeightPx, RefreshRateSec, CPM, CPC, CPA, InventoryStatus, StartDate, EndDate, TargetDemographic, GeographicTarget, DeviceTarget, ViewabilityScore, ClickThroughRate, EstimatedImpressions) VALUES (502, 'FoodBlog', 'FB-045', '/recipes', 'Sticky', 300, 250, 45, 8.2, 0.38, 4.2, 'Paused', '2024-08-01', '2024-08-15', 'Adults18to35', 'Europe', 'Mobile', 0.65, 0.0032, 120000);
INSERT INTO digital_ad_inventories (InventoryID, Publisher, AdSlotID, PageURL, AdFormat, WidthPx, HeightPx, RefreshRateSec, CPM, CPC, CPA, InventoryStatus, StartDate, EndDate, TargetDemographic, GeographicTarget, DeviceTarget, ViewabilityScore, ClickThroughRate, EstimatedImpressions) VALUES (503, 'TravelGuide', 'TG-210', '/destinations', 'Video', 640, 480, 60, 15.0, 0.60, 6.5, 'Active', '2024-09-01', '2024-09-30', 'Adults30to55', 'AsiaPacific', 'Desktop', 0.82, 0.0051, 300000);

-- Public transport vehicle assignments
CREATE TABLE public_transport_vehicle_assignments (
    AssignmentID INTEGER PRIMARY KEY,
    VehicleID TEXT,
    RouteID TEXT,
    DriverID TEXT,
    AssignmentStart DATE,
    AssignmentEnd DATE,
    ShiftPattern TEXT,
    Capacity INTEGER,
    FuelType TEXT,
    MaintenanceDue DATE,
    LastInspection DATE,
    AssignedDepot TEXT,
    Status TEXT,
    MileageAtAssignment INTEGER,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    ComplianceFlag INTEGER
);
INSERT INTO public_transport_vehicle_assignments (AssignmentID, VehicleID, RouteID, DriverID, AssignmentStart, AssignmentEnd, ShiftPattern, Capacity, FuelType, MaintenanceDue, LastInspection, AssignedDepot, Status, MileageAtAssignment, Notes, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, ComplianceFlag) VALUES (601, 'BUS-1001', 'R-12', 'DR-345', '2024-07-01', '2024-12-31', 'Morning', 45, 'Diesel', '2025-01-15', '2024-06-20', 'DepotA', 'Active', 85000, 'New route assignment', 'Scheduler', '2024-06-25', 'Scheduler', '2024-06-25', 0);
INSERT INTO public_transport_vehicle_assignments (AssignmentID, VehicleID, RouteID, DriverID, AssignmentStart, AssignmentEnd, ShiftPattern, Capacity, FuelType, MaintenanceDue, LastInspection, AssignedDepot, Status, MileageAtAssignment, Notes, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, ComplianceFlag) VALUES (602, 'TRAM-220', 'R-5', 'DR-210', '2024-08-01', '2025-07-31', 'Evening', 80, 'Electric', '2025-08-10', '2024-07-15', 'DepotB', 'Scheduled', 120000, 'Battery check pending', 'Planner', '2024-07-20', 'Planner', '2024-07-20', 0);
INSERT INTO public_transport_vehicle_assignments (AssignmentID, VehicleID, RouteID, DriverID, AssignmentStart, AssignmentEnd, ShiftPattern, Capacity, FuelType, MaintenanceDue, LastInspection, AssignedDepot, Status, MileageAtAssignment, Notes, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, ComplianceFlag) VALUES (603, 'SHUTTLE-07', 'R-22', 'DR-499', '2024-09-01', '2025-03-31', 'Night', 12, 'Hybrid', '2025-02-20', '2024-08-30', 'DepotC', 'Active', 30000, 'Night shift only', 'Admin', '2024-08-28', 'Admin', '2024-08-28', 0);

-- Road infrastructure assets
CREATE TABLE road_infrastructure_assets (
    AssetID INTEGER PRIMARY KEY,
    AssetType TEXT,
    LocationLatitude REAL,
    LocationLongitude REAL,
    InstallationDate DATE,
    LastInspectionDate DATE,
    ConditionRating INTEGER,
    OwnerAgency TEXT,
    MaintenanceContractID INTEGER,
    ExpectedLifespanYears REAL,
    CurrentValue REAL,
    ReplacementCost REAL,
    AssetStatus TEXT,
    Jurisdiction TEXT,
    DesignStandard TEXT,
    Material TEXT,
    LengthMeters REAL,
    WidthMeters REAL,
    HeightMeters REAL,
    Remarks TEXT
);
INSERT INTO road_infrastructure_assets (AssetID, AssetType, LocationLatitude, LocationLongitude, InstallationDate, LastInspectionDate, ConditionRating, OwnerAgency, MaintenanceContractID, ExpectedLifespanYears, CurrentValue, ReplacementCost, AssetStatus, Jurisdiction, DesignStandard, Material, LengthMeters, WidthMeters, HeightMeters, Remarks) VALUES (701, 'Bridge', 40.7128, -74.0060, '1995-04-15', '2024-05-10', 7, 'DeptTransport', 301, 75.0, 2500000.0, 5000000.0, 'Operational', 'City', 'AASHTO', 'Steel', 120.5, 20.0, 15.0, 'Routine maintenance schedule');
INSERT INTO road_infrastructure_assets (AssetID, AssetType, LocationLatitude, LocationLongitude, InstallationDate, LastInspectionDate, ConditionRating, OwnerAgency, MaintenanceContractID, ExpectedLifespanYears, CurrentValue, ReplacementCost, AssetStatus, Jurisdiction, DesignStandard, Material, LengthMeters, WidthMeters, HeightMeters, Remarks) VALUES (702, 'TrafficSignal', 34.0522, -118.2437, '2008-09-01', '2024-06-20', 8, 'DeptTransport', 315, 20.0, 85000.0, 120000.0, 'Operational', 'County', 'MUTCD', 'Aluminum', 0.0, 0.0, 5.5, 'LED upgrade completed');
INSERT INTO road_infrastructure_assets (AssetID, AssetType, LocationLatitude, LocationLongitude, InstallationDate, LastInspectionDate, ConditionRating, OwnerAgency, MaintenanceContractID, ExpectedLifespanYears, CurrentValue, ReplacementCost, AssetStatus, Jurisdiction, DesignStandard, Material, LengthMeters, WidthMeters, HeightMeters, Remarks) VALUES (703, 'RoadSegment', 41.8781, -87.6298, '2012-03-12', '2024-04-15', 9, 'DeptTransport', 330, 30.0, 600000.0, 800000.0, 'Operational', 'State', 'AASHTO', 'Asphalt', 1500.0, 12.0, 0.0, 'Re-paved 2023');

-- Supplier quality audits
CREATE TABLE supplier_quality_audits (
    AuditID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    AuditScope TEXT,
    FindingsCount INTEGER,
    CriticalFindings INTEGER,
    NonCriticalFindings INTEGER,
    OverallScore REAL,
    Recommendation TEXT,
    FollowUpDate DATE,
    FollowUpStatus TEXT,
    DocumentLink TEXT,
    AuditStatus TEXT,
    CorrectiveActionPlan TEXT,
    CostImpact REAL,
    RiskLevel TEXT,
    Comments TEXT,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE
);
INSERT INTO supplier_quality_audits (AuditID, SupplierID, AuditDate, AuditorName, AuditScope, FindingsCount, CriticalFindings, NonCriticalFindings, OverallScore, Recommendation, FollowUpDate, FollowUpStatus, DocumentLink, AuditStatus, CorrectiveActionPlan, CostImpact, RiskLevel, Comments, CreatedTimestamp, UpdatedTimestamp) VALUES (801, 1205, '2024-06-05', 'Grace Lee', 'Materials', 12, 2, 10, 86.5, 'Implement tighter QC', '2024-07-15', 'Pending', 'DOC801', 'Completed', 'Revise SOP', 5000.0, 'Medium', 'Supplier responded positively', '2024-06-06', '2024-06-06');
INSERT INTO supplier_quality_audits (AuditID, SupplierID, AuditDate, AuditorName, AuditScope, FindingsCount, CriticalFindings, NonCriticalFindings, OverallScore, Recommendation, FollowUpDate, FollowUpStatus, DocumentLink, AuditStatus, CorrectiveActionPlan, CostImpact, RiskLevel, Comments, CreatedTimestamp, UpdatedTimestamp) VALUES (802, 1340, '2024-07-10', 'Carlos Mendes', 'Logistics', 5, 0, 5, 94.2, 'Maintain current processes', NULL, 'N/A', 'DOC802', 'Completed', 'None', 0.0, 'Low', 'No issues found', '2024-07-11', '2024-07-11');
INSERT INTO supplier_quality_audits (AuditID, SupplierID, AuditDate, AuditorName, AuditScope, FindingsCount, CriticalFindings, NonCriticalFindings, OverallScore, Recommendation, FollowUpDate, FollowUpStatus, DocumentLink, AuditStatus, CorrectiveActionPlan, CostImpact, RiskLevel, Comments, CreatedTimestamp, UpdatedTimestamp) VALUES (803, 1402, '2024-08-02', 'Mia Patel', 'Safety', 9, 1, 8, 78.0, 'Enhance safety training', '2024-09-10', 'Scheduled', 'DOC803', 'InProgress', 'Develop new module', 3000.0, 'High', 'Critical finding on PPE usage', '2024-08-03', '2024-08-03');

-- Corporate event attendance
CREATE TABLE corporate_event_attendance (
    EventID INTEGER PRIMARY KEY,
    EventName TEXT,
    EventDate DATE,
    Location TEXT,
    AttendeeID INTEGER,
    AttendeeName TEXT,
    Department TEXT,
    Role TEXT,
    RSVPStatus TEXT,
    CheckInTime TEXT,
    CheckOutTime TEXT,
    MealPreference TEXT,
    AccessibilityNeeds TEXT,
    FeedbackScore REAL,
    Comments TEXT,
    Organizer TEXT,
    Sponsor TEXT,
    RegistrationMethod TEXT,
    BadgeID TEXT,
    AttendanceStatus TEXT
);
INSERT INTO corporate_event_attendance (EventID, EventName, EventDate, Location, AttendeeID, AttendeeName, Department, Role, RSVPStatus, CheckInTime, CheckOutTime, MealPreference, AccessibilityNeeds, FeedbackScore, Comments, Organizer, Sponsor, RegistrationMethod, BadgeID, AttendanceStatus) VALUES (901, 'Annual Summit', '2024-09-15', 'ConferenceCenterA', 2001, 'John Doe', 'Finance', 'Director', 'Accepted', '08:45', '17:30', 'Vegetarian', 'None', 4.5, 'Very well organized', 'HRTeam', 'MainSponsor', 'Online', 'BADGE001', 'Attended');
INSERT INTO corporate_event_attendance (EventID, EventName, EventDate, Location, AttendeeID, AttendeeName, Department, Role, RSVPStatus, CheckInTime, CheckOutTime, MealPreference, AccessibilityNeeds, FeedbackScore, Comments, Organizer, Sponsor, RegistrationMethod, BadgeID, AttendanceStatus) VALUES (902, 'Tech Expo', '2024-10-05', 'ExpoHallB', 2002, 'Emily Smith', 'IT', 'Manager', 'Tentative', '09:10', NULL, 'Vegan', 'Wheelchair', 4.0, 'Great demos', 'ITDept', 'TechPartner', 'Onsite', 'BADGE002', 'Pending');
INSERT INTO corporate_event_attendance (EventID, EventName, EventDate, Location, AttendeeID, AttendeeName, Department, Role, RSVPStatus, CheckInTime, CheckOutTime, MealPreference, AccessibilityNeeds, FeedbackScore, Comments, Organizer, Sponsor, RegistrationMethod, BadgeID, AttendanceStatus) VALUES (903, 'Leadership Workshop', '2024-11-20', 'HotelGrand', 2003, 'Michael Lee', 'Operations', 'VP', 'Declined', NULL, NULL, 'Standard', 'None', NULL, NULL, 'OpsDept', 'LeadershipFund', 'Online', 'BADGE003', 'Cancelled');

-- Smart city sensor deployments
CREATE TABLE smart_city_sensor_deployments (
    DeploymentID INTEGER PRIMARY KEY,
    SensorType TEXT,
    SensorID TEXT,
    InstallationDate DATE,
    Latitude REAL,
    Longitude REAL,
    FirmwareVersion TEXT,
    CalibrationDate DATE,
    CalibrationStatus TEXT,
    NetworkID TEXT,
    PowerSource TEXT,
    DataFrequencySec INTEGER,
    LastDataTimestamp DATE,
    OperationalStatus TEXT,
    MaintenanceSchedule TEXT,
    Manufacturer TEXT,
    WarrantyEndDate DATE,
    Zone TEXT,
    CityDistrict TEXT,
    Notes TEXT
);
INSERT INTO smart_city_sensor_deployments (DeploymentID, SensorType, SensorID, InstallationDate, Latitude, Longitude, FirmwareVersion, CalibrationDate, CalibrationStatus, NetworkID, PowerSource, DataFrequencySec, LastDataTimestamp, OperationalStatus, MaintenanceSchedule, Manufacturer, WarrantyEndDate, Zone, CityDistrict, Notes) VALUES (1001, 'AirQuality', 'AQ-5001', '2024-05-20', 37.7749, -122.4194, 'v1.2.3', '2024-05-25', 'Passed', 'NWK-01', 'Solar', 300, '2024-07-01', 'Active', 'Quarterly', 'EnviroTech', '2027-05-20', 'Downtown', 'DistrictA', 'Installed near central park');
INSERT INTO smart_city_sensor_deployments (DeploymentID, SensorType, SensorID, InstallationDate, Latitude, Longitude, FirmwareVersion, CalibrationDate, CalibrationStatus, NetworkID, PowerSource, DataFrequencySec, LastDataTimestamp, OperationalStatus, MaintenanceSchedule, Manufacturer, WarrantyEndDate, Zone, CityDistrict, Notes) VALUES (1002, 'TrafficFlow', 'TF-3020', '2024-06-15', 40.7128, -74.0060, 'v2.0.1', '2024-06-20', 'Passed', 'NWK-02', 'Mains', 60, '2024-07-02', 'Active', 'Monthly', 'SmartTraffic', '2029-06-15', 'Midtown', 'DistrictB', 'Mounted on traffic light pole');
INSERT INTO smart_city_sensor_deployments (DeploymentID, SensorType, SensorID, InstallationDate, Latitude, Longitude, FirmwareVersion, CalibrationDate, CalibrationStatus, NetworkID, PowerSource, DataFrequencySec, LastDataTimestamp, OperationalStatus, MaintenanceSchedule, Manufacturer, WarrantyEndDate, Zone, CityDistrict, Notes) VALUES (1003, 'NoiseLevel', 'NL-1105', '2024-07-01', 34.0522, -118.2437, 'v3.4.0', '2024-07-05', 'Passed', 'NWK-03', 'Battery', 120, '2024-07-03', 'Active', 'Biannual', 'SoundSense', '2028-07-01', 'WestSide', 'DistrictC', 'Near freeway entrance');