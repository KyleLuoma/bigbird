-- Vehicle registration jurisdictions adjacent to customers and stations
CREATE TABLE vehicle_registration_jurisdictions
(
    JurisdictionID INTEGER PRIMARY KEY,
    CountryCode TEXT,
    StateCode TEXT,
    RegistrationAuthority TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    ContactEmail TEXT,
    ContactPhone TEXT,
    AddressLine1 TEXT,
    AddressLine2 TEXT,
    City TEXT,
    PostalCode TEXT,
    IsActive INTEGER,
    VehicleClass TEXT,
    MaxWeight INTEGER,
    MaxLength REAL,
    LicensePlateFormat TEXT,
    FeeAmount REAL,
    PenaltyRate REAL,
    Notes TEXT
);

INSERT INTO vehicle_registration_jurisdictions (JurisdictionID, CountryCode, StateCode, RegistrationAuthority, EffectiveDate, ExpirationDate, ContactEmail, ContactPhone, AddressLine1, AddressLine2, City, PostalCode, IsActive, VehicleClass, MaxWeight, MaxLength, LicensePlateFormat, FeeAmount, PenaltyRate, Notes) VALUES (1, 'US', 'CA', 'DMV_California', '2022-01-01', '2027-01-01', 'contact@dmvca.gov', '5551234567', '100 Main St', '', 'Sacramento', '94203', 1, 'Passenger', 2000, 5.5, 'ABC123', 150.00, 0.05, '');
INSERT INTO vehicle_registration_jurisdictions (JurisdictionID, CountryCode, StateCode, RegistrationAuthority, EffectiveDate, ExpirationDate, ContactEmail, ContactPhone, AddressLine1, AddressLine2, City, PostalCode, IsActive, VehicleClass, MaxWeight, MaxLength, LicensePlateFormat, FeeAmount, PenaltyRate, Notes) VALUES (2, 'US', 'TX', 'DMV_Texas', '2021-06-15', '2026-06-15', 'info@dmvtx.gov', '5559876543', '200 Oak Ave', 'Suite 5', 'Austin', '73301', 1, 'Truck', 12000, 12.0, 'TX12AB', 300.00, 0.07, '');
INSERT INTO vehicle_registration_jurisdictions (JurisdictionID, CountryCode, StateCode, RegistrationAuthority, EffectiveDate, ExpirationDate, ContactEmail, ContactPhone, AddressLine1, AddressLine2, City, PostalCode, IsActive, VehicleClass, MaxWeight, MaxLength, LicensePlateFormat, FeeAmount, PenaltyRate, Notes) VALUES (3, 'CA', 'ON', 'Ministry_of_Transport', '2023-03-01', '2028-03-01', 'services@mot.on.ca', '5555551212', '300 Pine Rd', '', 'Toronto', 'M5H2N2', 1, 'Commercial', 3500, 7.2, 'ON-XYZ', 200.00, 0.06, 'Seasonal');

-- Energy consumption logs for fuel stations
CREATE TABLE station_energy_consumption_log
(
    LogID INTEGER PRIMARY KEY,
    StationID INTEGER,
    LogDate DATE,
    EnergyType TEXT,
    StartReading REAL,
    EndReading REAL,
    ConsumptionKWh REAL,
    CostUSD REAL,
    PeakDemandKW REAL,
    OffPeakDemandKW REAL,
    MeterSerial TEXT,
    OperatorName TEXT,
    WeatherCondition TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    IsRenewable INTEGER,
    CarbonEmissionsKg REAL,
    Notes TEXT,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME
);

INSERT INTO station_energy_consumption_log (LogID, StationID, LogDate, EnergyType, StartReading, EndReading, ConsumptionKWh, CostUSD, PeakDemandKW, OffPeakDemandKW, MeterSerial, OperatorName, WeatherCondition, TemperatureC, HumidityPercent, IsRenewable, CarbonEmissionsKg, Notes, CreatedTimestamp, UpdatedTimestamp) VALUES (1, 101, '2023-08-01', 'Electric', 1200.5, 1250.7, 50.2, 6.30, 30.5, 15.2, 'MTR1001', 'Alice Smith', 'Sunny', 28.4, 45.0, 1, 25.1, '', '2023-08-01 08:00:00', '2023-08-01 08:15:00');
INSERT INTO station_energy_consumption_log (LogID, StationID, LogDate, EnergyType, StartReading, EndReading, ConsumptionKWh, CostUSD, PeakDemandKW, OffPeakDemandKW, MeterSerial, OperatorName, WeatherCondition, TemperatureC, HumidityPercent, IsRenewable, CarbonEmissionsKg, Notes, CreatedTimestamp, UpdatedTimestamp) VALUES (2, 102, '2023-08-01', 'Solar', 500.0, 540.0, 40.0, 4.80, 22.0, 10.0, 'MTR2002', 'Bob Jones', 'Cloudy', 22.0, 60.0, 1, 18.5, 'Peak from 12-14h', '2023-08-01 08:05:00', '2023-08-01 08:20:00');
INSERT INTO station_energy_consumption_log (LogID, StationID, LogDate, EnergyType, StartReading, EndReading, ConsumptionKWh, CostUSD, PeakDemandKW, OffPeakDemandKW, MeterSerial, OperatorName, WeatherCondition, TemperatureC, HumidityPercent, IsRenewable, CarbonEmissionsKg, Notes, CreatedTimestamp, UpdatedTimestamp) VALUES (3, 103, '2023-08-01', 'Electric', 3000.2, 3075.9, 75.7, 9.05, 35.0, 18.0, 'MTR3003', 'Carol Lee', 'Rain', 19.5, 78.0, 0, 38.9, 'Backup generator used', '2023-08-01 08:10:00', '2023-08-01 08:30:00');

-- Customer engagement metrics linked to customers
CREATE TABLE customer_engagement_metrics
(
    MetricID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    PeriodStart DATE,
    PeriodEnd DATE,
    TotalVisits INTEGER,
    AvgSpend REAL,
    LoyaltyTier TEXT,
    PromotionsUsed INTEGER,
    FeedbackScore REAL,
    EmailOpenRate REAL,
    SmsClickRate REAL,
    AppSessionCount INTEGER,
    PushNotificationsSent INTEGER,
    ReferralCount INTEGER,
    ChurnRiskScore REAL,
    NetPromoterScore REAL,
    SurveyCompleted INTEGER,
    SupportTickets INTEGER,
    LastInteractionDate DATE,
    Notes TEXT
);

INSERT INTO customer_engagement_metrics (MetricID, CustomerID, PeriodStart, PeriodEnd, TotalVisits, AvgSpend, LoyaltyTier, PromotionsUsed, FeedbackScore, EmailOpenRate, SmsClickRate, AppSessionCount, PushNotificationsSent, ReferralCount, ChurnRiskScore, NetPromoterScore, SurveyCompleted, SupportTickets, LastInteractionDate, Notes) VALUES (1, 1001, '2023-07-01', '2023-07-31', 12, 45.60, 'Gold', 3, 4.5, 0.68, 0.12, 25, 40, 2, 0.15, 68, 1, 0, '2023-07-30', '');
INSERT INTO customer_engagement_metrics (MetricID, CustomerID, PeriodStart, PeriodEnd, TotalVisits, AvgSpend, LoyaltyTier, PromotionsUsed, FeedbackScore, EmailOpenRate, SmsClickRate, AppSessionCount, PushNotificationsSent, ReferralCount, ChurnRiskScore, NetPromoterScore, SurveyCompleted, SupportTickets, LastInteractionDate, Notes) VALUES (2, 1002, '2023-07-01', '2023-07-31', 5, 22.30, 'Silver', 1, 3.8, 0.45, 0.05, 8, 15, 0, 0.45, 45, 0, 1, '2023-07-28', '');
INSERT INTO customer_engagement_metrics (MetricID, CustomerID, PeriodStart, PeriodEnd, TotalVisits, AvgSpend, LoyaltyTier, PromotionsUsed, FeedbackScore, EmailOpenRate, SmsClickRate, AppSessionCount, PushNotificationsSent, ReferralCount, ChurnRiskScore, NetPromoterScore, SurveyCompleted, SupportTickets, LastInteractionDate, Notes) VALUES (3, 1003, '2023-07-01', '2023-07-31', 20, 60.10, 'Platinum', 5, 4.9, 0.80, 0.20, 40, 70, 5, 0.05, 82, 1, 0, '2023-07-31', 'High value customer');

-- Logistics route capacity data
CREATE TABLE logistics_route_capacity
(
    RouteID INTEGER PRIMARY KEY,
    OriginStationID INTEGER,
    DestinationStationID INTEGER,
    EffectiveDate DATE,
    VehicleType TEXT,
    MaxLoadKg INTEGER,
    MaxVolumeM3 REAL,
    AverageTransitTimeHours REAL,
    PeakCapacityUnits INTEGER,
    OffPeakCapacityUnits INTEGER,
    TariffPerKg REAL,
    TariffPerM3 REAL,
    AllowedDays TEXT,
    RestrictedHours TEXT,
    IsActive INTEGER,
    LastReviewed DATE,
    ReviewerName TEXT,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO logistics_route_capacity (RouteID, OriginStationID, DestinationStationID, EffectiveDate, VehicleType, MaxLoadKg, MaxVolumeM3, AverageTransitTimeHours, PeakCapacityUnits, OffPeakCapacityUnits, TariffPerKg, TariffPerM3, AllowedDays, RestrictedHours, IsActive, LastReviewed, ReviewerName, Notes, CreatedAt, UpdatedAt) VALUES (1, 101, 201, '2023-01-01', 'Truck', 15000, 45.0, 5.5, 30, 10, 0.12, 2.5, 'MonTueWedThuFri', '22-06', 1, '2023-06-15', 'Dave Miller', '', '2023-06-01 09:00:00', '2023-06-15 14:30:00');
INSERT INTO logistics_route_capacity (RouteID, OriginStationID, DestinationStationID, EffectiveDate, VehicleType, MaxLoadKg, MaxVolumeM3, AverageTransitTimeHours, PeakCapacityUnits, OffPeakCapacityUnits, TariffPerKg, TariffPerM3, AllowedDays, RestrictedHours, IsActive, LastReviewed, ReviewerName, Notes, CreatedAt, UpdatedAt) VALUES (2, 102, 202, '2023-02-01', 'Van', 3000, 12.0, 3.0, 15, 5, 0.20, 5.0, 'MonTueWedThuFriSat', '23-07', 1, '2023-07-01', 'Emma Clark', 'Seasonal surge expected', '2023-06-20 10:15:00', '2023-07-01 11:45:00');
INSERT INTO logistics_route_capacity (RouteID, OriginStationID, DestinationStationID, EffectiveDate, VehicleType, MaxLoadKg, MaxVolumeM3, AverageTransitTimeHours, PeakCapacityUnits, OffPeakCapacityUnits, TariffPerKg, TariffPerM3, AllowedDays, RestrictedHours, IsActive, LastReviewed, ReviewerName, Notes, CreatedAt, UpdatedAt) VALUES (3, 103, 203, '2023-03-01', 'Reefer', 8000, 30.0, 6.2, 20, 8, 0.15, 3.8, 'MonTueWedThuFriSatSun', '00-24', 1, '2023-08-05', 'Frank Liu', '', '2023-07-30 08:45:00', '2023-08-05 13:20:00');

-- Environmental compliance checklist records
CREATE TABLE environmental_compliance_checklists
(
    ChecklistID INTEGER PRIMARY KEY,
    SiteID INTEGER,
    InspectionDate DATE,
    InspectorName TEXT,
    ChecklistVersion TEXT,
    AirQualityPass INTEGER,
    WaterQualityPass INTEGER,
    SoilContaminationPass INTEGER,
    NoiseLevelPass INTEGER,
    WasteManagementPass INTEGER,
    EmissionLimitsMet INTEGER,
    RegulationReference TEXT,
    CorrectiveActionsRequired INTEGER,
    ActionDueDate DATE,
    FollowUpDate DATE,
    Comments TEXT,
    OverallScore REAL,
    IsCompliant INTEGER,
    CreatedBy TEXT,
    CreatedAt DATETIME
);

INSERT INTO environmental_compliance_checklists (ChecklistID, SiteID, InspectionDate, InspectorName, ChecklistVersion, AirQualityPass, WaterQualityPass, SoilContaminationPass, NoiseLevelPass, WasteManagementPass, EmissionLimitsMet, RegulationReference, CorrectiveActionsRequired, ActionDueDate, FollowUpDate, Comments, OverallScore, IsCompliant, CreatedBy, CreatedAt) VALUES (1, 101, '2023-06-10', 'Laura Green', 'v1.0', 1, 1, 1, 1, 1, 1, 'EPA2023', 0, NULL, NULL, 'All clear', 98.5, 1, 'system', '2023-06-10 09:00:00');
INSERT INTO environmental_compliance_checklists (ChecklistID, SiteID, InspectionDate, InspectorName, ChecklistVersion, AirQualityPass, WaterQualityPass, SoilContaminationPass, NoiseLevelPass, WasteManagementPass, EmissionLimitsMet, RegulationReference, CorrectiveActionsRequired, ActionDueDate, FollowUpDate, Comments, OverallScore, IsCompliant, CreatedBy, CreatedAt) VALUES (2, 102, '2023-07-12', 'Mark Daniels', 'v1.1', 1, 0, 1, 1, 1, 0, 'EPA2023', 2, '2023-08-01', '2023-08-15', 'Water sampling below threshold', 85.0, 0, 'system', '2023-07-12 10:30:00');
INSERT INTO environmental_compliance_checklists (ChecklistID, SiteID, InspectionDate, InspectorName, ChecklistVersion, AirQualityPass, WaterQualityPass, SoilContaminationPass, NoiseLevelPass, WasteManagementPass, EmissionLimitsMet, RegulationReference, CorrectiveActionsRequired, ActionDueDate, FollowUpDate, Comments, OverallScore, IsCompliant, CreatedBy, CreatedAt) VALUES (3, 103, '2023-05-20', 'Nina Patel', 'v1.0', 0, 1, 0, 1, 0, 1, 'EPA2023', 4, '2023-06-15', '2023-06-30', 'Multiple issues', 70.2, 0, 'system', '2023-05-20 08:45:00');

-- Payment method usage statistics
CREATE TABLE payment_method_usage_stats
(
    StatID INTEGER PRIMARY KEY,
    PaymentMethodID INTEGER,
    Date DATE,
    TotalTransactions INTEGER,
    TotalAmount REAL,
    AvgTransactionValue REAL,
    SuccessRate REAL,
    DeclineRate REAL,
    ChargebackCount INTEGER,
    RefundCount INTEGER,
    GeoRegion TEXT,
    DeviceType TEXT,
    CurrencyCode TEXT,
    IsOnline INTEGER,
    IsContactless INTEGER,
    PeakHour INTEGER,
    MinTransactionValue REAL,
    MaxTransactionValue REAL,
    Notes TEXT,
    RecordedAt DATETIME
);

INSERT INTO payment_method_usage_stats (StatID, PaymentMethodID, Date, TotalTransactions, TotalAmount, AvgTransactionValue, SuccessRate, DeclineRate, ChargebackCount, RefundCount, GeoRegion, DeviceType, CurrencyCode, IsOnline, IsContactless, PeakHour, MinTransactionValue, MaxTransactionValue, Notes, RecordedAt) VALUES (1, 1, '2023-07-31', 1500, 45000.00, 30.00, 0.97, 0.03, 2, 5, 'NorthAmerica', 'Mobile', 'USD', 1, 1, 18, 5.00, 200.00, '', '2023-07-31 23:59:59');
INSERT INTO payment_method_usage_stats (StatID, PaymentMethodID, Date, TotalTransactions, TotalAmount, AvgTransactionValue, SuccessRate, DeclineRate, ChargebackCount, RefundCount, GeoRegion, DeviceType, CurrencyCode, IsOnline, IsContactless, PeakHour, MinTransactionValue, MaxTransactionValue, Notes, RecordedAt) VALUES (2, 2, '2023-07-31', 800, 24000.00, 30.00, 0.95, 0.05, 1, 3, 'Europe', 'Web', 'EUR', 1, 0, 20, 10.00, 250.00, 'Higher decline rate', '2023-07-31 23:59:59');
INSERT INTO payment_method_usage_stats (StatID, PaymentMethodID, Date, TotalTransactions, TotalAmount, AvgTransactionValue, SuccessRate, DeclineRate, ChargebackCount, RefundCount, GeoRegion, DeviceType, CurrencyCode, IsOnline, IsContactless, PeakHour, MinTransactionValue, MaxTransactionValue, Notes, RecordedAt) VALUES (3, 3, '2023-07-31', 600, 18000.00, 30.00, 0.99, 0.01, 0, 2, 'Asia', 'POS', 'JPY', 0, 1, 12, 100.00, 5000.00, '', '2023-07-31 23:59:59');

-- Fuel price regional variance records
CREATE TABLE fuel_price_regional_variance
(
    RecordID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    FuelType TEXT,
    Date DATE,
    AveragePrice REAL,
    MinPrice REAL,
    MaxPrice REAL,
    PriceStdDev REAL,
    StationCount INTEGER,
    Currency TEXT,
    PriceIndex REAL,
    AdjustmentFactor REAL,
    SourceSystem TEXT,
    IsDiscounted INTEGER,
    DiscountRate REAL,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    ReviewedBy TEXT,
    ReviewDate DATE
);

INSERT INTO fuel_price_regional_variance (RecordID, RegionCode, FuelType, Date, AveragePrice, MinPrice, MaxPrice, PriceStdDev, StationCount, Currency, PriceIndex, AdjustmentFactor, SourceSystem, IsDiscounted, DiscountRate, Notes, CreatedAt, UpdatedAt, ReviewedBy, ReviewDate) VALUES (1, 'NW_US', 'Diesel', '2023-07-01', 3.45, 3.20, 3.70, 0.12, 45, 'USD', 101.5, 1.00, 'PricingEngine', 0, 0.0, '', '2023-07-02 08:00:00', '2023-07-02 09:00:00', 'John Doe', '2023-07-02');
INSERT INTO fuel_price_regional_variance (RecordID, RegionCode, FuelType, Date, AveragePrice, MinPrice, MaxPrice, PriceStdDev, StationCount, Currency, PriceIndex, AdjustmentFactor, SourceSystem, IsDiscounted, DiscountRate, Notes, CreatedAt, UpdatedAt, ReviewedBy, ReviewDate) VALUES (2, 'NE_EU', 'Petrol', '2023-07-01', 1.58, 1.50, 1.66, 0.04, 60, 'EUR', 98.2, 0.98, 'PricingEngine', 1, 0.05, 'Promotional discount', '2023-07-02 08:10:00', '2023-07-02 09:15:00', 'Anna Smith', '2023-07-02');
INSERT INTO fuel_price_regional_variance (RecordID, RegionCode, FuelType, Date, AveragePrice, MinPrice, MaxPrice, PriceStdDev, StationCount, Currency, PriceIndex, AdjustmentFactor, SourceSystem, IsDiscounted, DiscountRate, Notes, CreatedAt, UpdatedAt, ReviewedBy, ReviewDate) VALUES (3, 'SW_AU', 'E85', '2023-07-01', 1.20, 1.10, 1.30, 0.05, 30, 'AUD', 102.0, 1.02, 'PricingEngine', 0, 0.0, '', '2023-07-02 08:20:00', '2023-07-02 09:30:00', 'Mike Lee', '2023-07-02');

-- Driver training session records
CREATE TABLE driver_training_sessions
(
    SessionID INTEGER PRIMARY KEY,
    DriverID INTEGER,
    SessionDate DATE,
    TrainerName TEXT,
    SessionType TEXT,
    DurationMinutes INTEGER,
    TopicsCovered TEXT,
    AssessmentScore REAL,
    CertificationEarned TEXT,
    IsMandatory INTEGER,
    Location TEXT,
    VehicleModel TEXT,
    FeedbackScore REAL,
    AttendanceStatus TEXT,
    MaterialsProvided INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO driver_training_sessions (SessionID, DriverID, SessionDate, TrainerName, SessionType, DurationMinutes, TopicsCovered, AssessmentScore, CertificationEarned, IsMandatory, Location, VehicleModel, FeedbackScore, AttendanceStatus, MaterialsProvided, FollowUpRequired, FollowUpDate, Notes, CreatedAt, UpdatedAt) VALUES (1, 2001, '2023-06-15', 'Sam Wilson', 'Safety', 180, 'DefensiveDriving,EmergencyProcedures', 92.5, 'SafetyCert', 1, 'TrainingCenterA', 'Ford F-150', 4.5, 'Present', 1, 0, NULL, '', '2023-06-15 09:00:00', '2023-06-15 12:00:00');
INSERT INTO driver_training_sessions (SessionID, DriverID, SessionDate, TrainerName, SessionType, DurationMinutes, TopicsCovered, AssessmentScore, CertificationEarned, IsMandatory, Location, VehicleModel, FeedbackScore, AttendanceStatus, MaterialsProvided, FollowUpRequired, FollowUpDate, Notes, CreatedAt, UpdatedAt) VALUES (2, 2002, '2023-06-20', 'Lara Chen', 'EcoDriving', 120, 'FuelEfficiency,HybridVehicles', 88.0, 'EcoCert', 0, 'TrainingCenterB', 'Toyota Prius', 4.2, 'Present', 1, 1, '2023-07-10', 'Needs refresher on hybrid tech', '2023-06-20 10:00:00', '2023-06-20 12:00:00');
INSERT INTO driver_training_sessions (SessionID, DriverID, SessionDate, TrainerName, SessionType, DurationMinutes, TopicsCovered, AssessmentScore, CertificationEarned, IsMandatory, Location, VehicleModel, FeedbackScore, AttendanceStatus, MaterialsProvided, FollowUpRequired, FollowUpDate, Notes, CreatedAt, UpdatedAt) VALUES (3, 2003, '2023-07-01', 'Carlos Ruiz', 'HazardAwareness', 90, 'WeatherRisks,RoadConditions', 79.5, 'HazardCert', 1, 'Online', 'N/A', 3.9, 'Absent', 0, 1, '2023-07-15', 'Reschedule required', '2023-07-01 14:00:00', '2023-07-01 15:30:00');

-- Inventory asset tracking table
CREATE TABLE inventory_asset_tracking
(
    AssetID INTEGER PRIMARY KEY,
    AssetTag TEXT,
    AssetType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyExpDate DATE,
    CurrentLocation TEXT,
    AssignedTo INTEGER,
    Status TEXT,
    ValueUSD REAL,
    DepreciationRate REAL,
    LastMaintenanceDate DATE,
    NextMaintenanceDue DATE,
    ConditionScore REAL,
    IsOperational INTEGER,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO inventory_asset_tracking (AssetID, AssetTag, AssetType, Manufacturer, ModelNumber, SerialNumber, PurchaseDate, WarrantyExpDate, CurrentLocation, AssignedTo, Status, ValueUSD, DepreciationRate, LastMaintenanceDate, NextMaintenanceDue, ConditionScore, IsOperational, Notes, CreatedAt, UpdatedAt) VALUES (1, 'ATG-001', 'Pump', 'FlowTech', 'FT-200', 'SN123456', '2021-05-10', '2024-05-10', 'Station101', NULL, 'Active', 12000.00, 0.15, '2023-05-01', '2023-11-01', 8.5, 1, '', '2021-05-10 09:00:00', '2023-05-01 10:30:00');
INSERT INTO inventory_asset_tracking (AssetID, AssetTag, AssetType, Manufacturer, ModelNumber, SerialNumber, PurchaseDate, WarrantyExpDate, CurrentLocation, AssignedTo, Status, ValueUSD, DepreciationRate, LastMaintenanceDate, NextMaintenanceDue, ConditionScore, IsOperational, Notes, CreatedAt, UpdatedAt) VALUES (2, 'ATG-002', 'Canopy', 'SunShadeCo', 'SS-100', 'SN789012', '2020-03-15', '2023-03-15', 'Station102', NULL, 'Retired', 5000.00, 0.20, '2022-12-10', '2023-06-10', 5.0, 0, 'Removed due to damage', '2020-03-15 08:30:00', '2022-12-10 09:45:00');
INSERT INTO inventory_asset_tracking (AssetID, AssetTag, AssetType, Manufacturer, ModelNumber, SerialNumber, PurchaseDate, WarrantyExpDate, CurrentLocation, AssignedTo, Status, ValueUSD, DepreciationRate, LastMaintenanceDate, NextMaintenanceDue, ConditionScore, IsOperational, Notes, CreatedAt, UpdatedAt) VALUES (3, 'ATG-003', 'POS_Terminal', 'PayTech', 'PT-500', 'SN345678', '2022-01-20', '2025-01-20', 'Station103', 1501, 'Active', 2500.00, 0.10, '2023-04-15', '2023-10-15', 9.0, 1, '', '2022-01-20 11:00:00', '2023-04-15 13:20:00');

-- Public transport operational statistics
CREATE TABLE public_transport_operational_stats
(
    StatID INTEGER PRIMARY KEY,
    TransportMode TEXT,
    RouteID INTEGER,
    Date DATE,
    ScheduledTrips INTEGER,
    ActualTrips INTEGER,
    OnTimePerformance REAL,
    AverageDelayMinutes REAL,
    PassengerCount INTEGER,
    CapacityUtilization REAL,
    RevenueUSD REAL,
    OperatingCostUSD REAL,
    FuelConsumptionLiters REAL,
    CO2EmissionsKg REAL,
    IncidentsCount INTEGER,
    CustomerComplaints INTEGER,
    StaffOnDuty INTEGER,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO public_transport_operational_stats (StatID, TransportMode, RouteID, Date, ScheduledTrips, ActualTrips, OnTimePerformance, AverageDelayMinutes, PassengerCount, CapacityUtilization, RevenueUSD, OperatingCostUSD, FuelConsumptionLiters, CO2EmissionsKg, IncidentsCount, CustomerComplaints, StaffOnDuty, Notes, CreatedAt, UpdatedAt) VALUES (1, 'Bus', 301, '2023-07-31', 120, 115, 0.92, 4.3, 8500, 0.78, 21000.00, 15000.00, 3200.0, 7200.0, 3, 12, 25, '', '2023-08-01 07:00:00', '2023-08-01 07:15:00');
INSERT INTO public_transport_operational_stats (StatID, TransportMode, RouteID, Date, ScheduledTrips, ActualTrips, OnTimePerformance, AverageDelayMinutes, PassengerCount, CapacityUtilization, RevenueUSD, OperatingCostUSD, FuelConsumptionLiters, CO2EmissionsKg, IncidentsCount, CustomerComplaints, StaffOnDuty, Notes, CreatedAt, UpdatedAt) VALUES (2, 'Tram', 402, '2023-07-31', 80, 80, 0.99, 1.1, 5600, 0.91, 34000.00, 21000.00, 1500.0, 3400.0, 1, 4, 18, 'Smooth operation', '2023-08-01 07:30:00', '2023-08-01 07:45:00');
INSERT INTO public_transport_operational_stats (StatID, TransportMode, RouteID, Date, ScheduledTrips, ActualTrips, OnTimePerformance, AverageDelayMinutes, PassengerCount, CapacityUtilization, RevenueUSD, OperatingCostUSD, FuelConsumptionLiters, CO2EmissionsKg, IncidentsCount, CustomerComplaints, StaffOnDuty, Notes, CreatedAt, UpdatedAt) VALUES (3, 'Metro', 503, '2023-07-31', 200, 198, 0.95, 2.8, 24000, 0.85, 120000.00, 80000.00, 0.0, 0.0, 0, 2, 45, 'Minor signal delay', '2023-08-01 08:00:00', '2023-08-01 08:20:00');