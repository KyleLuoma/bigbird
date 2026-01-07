-- Gas Station Equipment Logs
CREATE TABLE gas_station_equipment_logs
(
    LogID INTEGER PRIMARY KEY AUTOINCREMENT,
    GasStationID INTEGER,
    EquipmentID INTEGER,
    EquipmentType TEXT,
    SerialNumber TEXT,
    InstallationDate DATE,
    LastServiceDate DATE,
    ServiceProvider TEXT,
    ServiceCost REAL,
    Status TEXT,
    WarrantyEndDate DATE,
    FirmwareVersion TEXT,
    CalibrationDate DATE,
    TemperatureThreshold REAL,
    PressureThreshold REAL,
    VoltageLevel REAL,
    CurrentLevel REAL,
    OperatorID INTEGER,
    Notes TEXT,
    RecordedAt TEXT
);

INSERT INTO gas_station_equipment_logs (GasStationID,EquipmentID,EquipmentType,SerialNumber,InstallationDate,LastServiceDate,ServiceProvider,ServiceCost,Status,WarrantyEndDate,FirmwareVersion,CalibrationDate,TemperatureThreshold,PressureThreshold,VoltageLevel,CurrentLevel,OperatorID,Notes,RecordedAt) VALUES (101, 5001, 'Dispenser', 'SN12345', '2022-03-15', '2023-01-10', 'TechServ', 250.75, 'Active', '2025-03-15', 'v1.2.3', '2023-01-09', 85.0, 200.0, 240.0, 12.5, 301, 'Initial install', '2023-01-10 08:30:00');
INSERT INTO gas_station_equipment_logs (GasStationID,EquipmentID,EquipmentType,SerialNumber,InstallationDate,LastServiceDate,ServiceProvider,ServiceCost,Status,WarrantyEndDate,FirmwareVersion,CalibrationDate,TemperatureThreshold,PressureThreshold,VoltageLevel,CurrentLevel,OperatorID,Notes,RecordedAt) VALUES (102, 5002, 'Canopy', 'SN54321', '2021-07-20', '2023-02-05', 'BuildCo', 1200.00, 'Active', '2026-07-20', 'v2.0.1', '2023-02-04', 70.0, 150.0, 230.0, 10.0, 302, 'Routine check', '2023-02-05 12:15:00');
INSERT INTO gas_station_equipment_logs (GasStationID,EquipmentID,EquipmentType,SerialNumber,InstallationDate,LastServiceDate,ServiceProvider,ServiceCost,Status,WarrantyEndDate,FirmwareVersion,CalibrationDate,TemperatureThreshold,PressureThreshold,VoltageLevel,CurrentLevel,OperatorID,Notes,RecordedAt) VALUES (103, 5003, 'AirPump', 'SN67890', '2020-11-10', '2023-03-12', 'PumpPro', 500.50, 'Maintenance', '2024-11-10', 'v3.5.0', '2023-03-11', 90.0, 250.0, 250.0, 15.0, 303, 'Leak detected', '2023-03-12 09:45:00');

-- Customer Contact Channels
CREATE TABLE customer_contact_channels
(
    ChannelID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    ChannelType TEXT,
    ChannelValue TEXT,
    IsPrimary INTEGER,
    OptInDate DATE,
    OptOutDate DATE,
    PreferenceScore REAL,
    LastUsedDate DATE,
    UsageCount INTEGER,
    NotificationEnabled INTEGER,
    MarketingConsent INTEGER,
    SupportConsent INTEGER,
    CreatedBy TEXT,
    CreatedAt TEXT,
    UpdatedBy TEXT,
    UpdatedAt TEXT,
    Remarks TEXT,
    SourceSystem TEXT,
    VerificationStatus TEXT
);

INSERT INTO customer_contact_channels (ChannelID,CustomerID,ChannelType,ChannelValue,IsPrimary,OptInDate,OptOutDate,PreferenceScore,LastUsedDate,UsageCount,NotificationEnabled,MarketingConsent,SupportConsent,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,Remarks,SourceSystem,VerificationStatus) VALUES (1, 1001, 'Email', 'user1@example.com', 1, '2022-01-15', NULL, 0.85, '2023-01-20', 45, 1, 1, 0, 'system', '2022-01-15 10:00:00', 'admin', '2023-01-20 08:00:00', 'Verified email', 'CRM', 'Verified');
INSERT INTO customer_contact_channels (ChannelID,CustomerID,ChannelType,ChannelValue,IsPrimary,OptInDate,OptOutDate,PreferenceScore,LastUsedDate,UsageCount,NotificationEnabled,MarketingConsent,SupportConsent,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,Remarks,SourceSystem,VerificationStatus) VALUES (2, 1002, 'SMS', '5551234567', 0, '2021-06-10', NULL, 0.70, '2023-01-18', 30, 1, 0, 1, 'system', '2021-06-10 09:30:00', 'admin', '2023-01-18 07:45:00', 'Opted in via web', 'CRM', 'Pending');
INSERT INTO customer_contact_channels (ChannelID,CustomerID,ChannelType,ChannelValue,IsPrimary,OptInDate,OptOutDate,PreferenceScore,LastUsedDate,UsageCount,NotificationEnabled,MarketingConsent,SupportConsent,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,Remarks,SourceSystem,VerificationStatus) VALUES (3, 1003, 'Phone', '5559876543', 1, '2020-03-05', '2023-01-01', 0.60, '2022-12-31', 12, 0, 0, 1, 'system', '2020-03-05 14:20:00', 'admin', '2022-12-31 16:00:00', 'Do not disturb', 'CRM', 'Verified');

-- Product Nutrition Facts
CREATE TABLE product_nutrition_facts
(
    NutritionID INTEGER PRIMARY KEY,
    ProductID INTEGER,
    ServingSize TEXT,
    Calories REAL,
    TotalFat REAL,
    SaturatedFat REAL,
    TransFat REAL,
    Cholesterol REAL,
    Sodium REAL,
    TotalCarbohydrate REAL,
    DietaryFiber REAL,
    Sugars REAL,
    Protein REAL,
    VitaminA REAL,
    VitaminC REAL,
    Calcium REAL,
    Iron REAL,
    AddedSugar REAL,
    LabelClaim TEXT,
    DataSource TEXT,
    LastUpdated DATE
);

INSERT INTO product_nutrition_facts (NutritionID,ProductID,ServingSize,Calories,TotalFat,SaturatedFat,TransFat,Cholesterol,Sodium,TotalCarbohydrate,DietaryFiber,Sugars,Protein,VitaminA,VitaminC,Calcium,Iron,AddedSugar,LabelClaim,DataSource,LastUpdated) VALUES (1, 2001, '100g', 250.0, 10.0, 3.0, 0.0, 0.0, 150.0, 30.0, 5.0, 12.0, 8.0, 500.0, 60.0, 200.0, 2.5, 5.0, 'LowFat', 'Manufacturer', '2023-01-01');
INSERT INTO product_nutrition_facts (NutritionID,ProductID,ServingSize,Calories,TotalFat,SaturatedFat,TransFat,Cholesterol,Sodium,TotalCarbohydrate,DietaryFiber,Sugars,Protein,VitaminA,VitaminC,Calcium,Iron,AddedSugar,LabelClaim,DataSource,LastUpdated) VALUES (2, 2002, '250ml', 120.0, 0.0, 0.0, 0.0, 0.0, 10.0, 28.0, 0.0, 22.0, 0.0, 0.0, 0.0, 5.0, 0.2, 22.0, 'NoSugarAdded', 'LabTest', '2023-01-05');
INSERT INTO product_nutrition_facts (NutritionID,ProductID,ServingSize,Calories,TotalFat,SaturatedFat,TransFat,Cholesterol,Sodium,TotalCarbohydrate,DietaryFiber,Sugars,Protein,VitaminA,VitaminC,Calcium,Iron,AddedSugar,LabelClaim,DataSource,LastUpdated) VALUES (3, 2003, '1 bar', 180.0, 6.0, 1.5, 0.0, 0.0, 80.0, 22.0, 3.0, 8.0, 5.0, 300.0, 30.0, 150.0, 1.0, 0.0, 'HighProtein', 'Manufacturer', '2023-01-10');

-- Transaction Fee Structures
CREATE TABLE transaction_fee_structures
(
    FeeID INTEGER PRIMARY KEY,
    TransactionType TEXT,
    CardNetwork TEXT,
    FeePercentage REAL,
    FlatFee REAL,
    MinimumFee REAL,
    MaximumFee REAL,
    Currency TEXT,
    EffectiveFrom DATE,
    EffectiveTo DATE,
    Region TEXT,
    MerchantCategoryCode TEXT,
    SettlementPeriodDays INTEGER,
    ChargebackFee REAL,
    RefundFee REAL,
    DisputeResolutionFee REAL,
    CreatedAt TEXT,
    CreatedBy TEXT,
    UpdatedAt TEXT,
    UpdatedBy TEXT
);

INSERT INTO transaction_fee_structures (FeeID,TransactionType,CardNetwork,FeePercentage,FlatFee,MinimumFee,MaximumFee,Currency,EffectiveFrom,EffectiveTo,Region,MerchantCategoryCode,SettlementPeriodDays,ChargebackFee,RefundFee,DisputeResolutionFee,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy) VALUES (1, 'Purchase', 'Visa', 1.5, 0.10, 0.20, 5.00, 'USD', '2023-01-01', '2023-12-31', 'NorthAmerica', '5411', 2, 5.00, 0.00, 2.00, '2023-01-01 00:00:00', 'system', '2023-01-01 00:00:00', 'system');
INSERT INTO transaction_fee_structures (FeeID,TransactionType,CardNetwork,FeePercentage,FlatFee,MinimumFee,MaximumFee,Currency,EffectiveFrom,EffectiveTo,Region,MerchantCategoryCode,SettlementPeriodDays,ChargebackFee,RefundFee,DisputeResolutionFee,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy) VALUES (2, 'Refund', 'MasterCard', 0.0, 0.00, 0.00, 0.00, 'EUR', '2023-02-01', '2023-11-30', 'Europe', '5812', 3, 0.00, 0.00, 1.00, '2023-02-01 00:00:00', 'system', '2023-02-01 00:00:00', 'system');
INSERT INTO transaction_fee_structures (FeeID,TransactionType,CardNetwork,FeePercentage,FlatFee,MinimumFee,MaximumFee,Currency,EffectiveFrom,EffectiveTo,Region,MerchantCategoryCode,SettlementPeriodDays,ChargebackFee,RefundFee,DisputeResolutionFee,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy) VALUES (3, 'CashAdvance', 'Amex', 2.5, 0.25, 1.00, 10.00, 'USD', '2023-03-01', '2023-12-31', 'NorthAmerica', '6011', 1, 10.00, 0.00, 3.00, '2023-03-01 00:00:00', 'system', '2023-03-01 00:00:00', 'system');

-- Regional Fuel Supply Routes
CREATE TABLE regional_fuel_supply_routes
(
    RouteID INTEGER PRIMARY KEY,
    OriginStationID INTEGER,
    DestinationStationID INTEGER,
    TransportMode TEXT,
    DistanceKm REAL,
    EstimatedTravelTimeHours REAL,
    FuelType TEXT,
    CapacityLiters REAL,
    OperatorCompany TEXT,
    ScheduleStart DATE,
    ScheduleEnd DATE,
    FrequencyPerWeek INTEGER,
    CostPerKm REAL,
    EmissionFactor REAL,
    RouteStatus TEXT,
    LastInspected DATE,
    InspectorName TEXT,
    Remarks TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO regional_fuel_supply_routes (RouteID,OriginStationID,DestinationStationID,TransportMode,DistanceKm,EstimatedTravelTimeHours,FuelType,CapacityLiters,OperatorCompany,ScheduleStart,ScheduleEnd,FrequencyPerWeek,CostPerKm,EmissionFactor,RouteStatus,LastInspected,InspectorName,Remarks,CreatedAt,UpdatedAt) VALUES (1, 101, 201, 'Truck', 350.5, 5.2, 'Diesel', 80000, 'LogiTrans', '2023-01-01', '2023-12-31', 3, 1.25, 0.42, 'Active', '2023-01-15', 'JohnDoe', 'Routine route', '2023-01-01 08:00:00', '2023-01-15 09:30:00');
INSERT INTO regional_fuel_supply_routes (RouteID,OriginStationID,DestinationStationID,TransportMode,DistanceKm,EstimatedTravelTimeHours,FuelType,CapacityLiters,OperatorCompany,ScheduleStart,ScheduleEnd,FrequencyPerWeek,CostPerKm,EmissionFactor,RouteStatus,LastInspected,InspectorName,Remarks,CreatedAt,UpdatedAt) VALUES (2, 102, 202, 'Rail', 620.0, 8.5, 'Petrol', 150000, 'RailFuelCo', '2023-02-01', '2023-11-30', 2, 0.95, 0.30, 'Planned', NULL, NULL, 'Pending approval', '2023-02-01 09:00:00', '2023-02-01 09:00:00');
INSERT INTO regional_fuel_supply_routes (RouteID,OriginStationID,DestinationStationID,TransportMode,DistanceKm,EstimatedTravelTimeHours,FuelType,CapacityLiters,OperatorCompany,ScheduleStart,ScheduleEnd,FrequencyPerWeek,CostPerKm,EmissionFactor,RouteStatus,LastInspected,InspectorName,Remarks,CreatedAt,UpdatedAt) VALUES (3, 103, 203, 'Pipeline', 1200.0, 24.0, 'Diesel', 500000, 'PipeLine Inc', '2023-03-01', '2024-02-28', 1, 0.60, 0.10, 'Active', '2023-03-10', 'JaneSmith', 'Monthly inspection', '2023-03-01 07:30:00', '2023-03-10 10:45:00');

-- Card Issuer Details
CREATE TABLE card_issuer_details
(
    IssuerID INTEGER PRIMARY KEY,
    CardNetwork TEXT,
    IssuerName TEXT,
    Country TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT,
    EstablishedYear INTEGER,
    Rating REAL,
    MaxCreditLimit REAL,
    MinCreditLimit REAL,
    SupportedCurrencies TEXT,
    FraudDetectionLevel TEXT,
    SettlementCycleDays INTEGER,
    RegulatoryCompliance TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    OnlineSupportURL TEXT,
    PhysicalAddress TEXT,
    BusinessType TEXT,
    CreatedAt TEXT
);

INSERT INTO card_issuer_details (IssuerID,CardNetwork,IssuerName,Country,ContactEmail,ContactPhone,EstablishedYear,Rating,MaxCreditLimit,MinCreditLimit,SupportedCurrencies,FraudDetectionLevel,SettlementCycleDays,RegulatoryCompliance,IssueDate,ExpirationDate,OnlineSupportURL,PhysicalAddress,BusinessType,CreatedAt) VALUES (1, 'Visa', 'GlobalBank', 'US', 'support@globalbank.com', '5551112222', 1995, 4.5, 20000, 500, 'USD,EUR', 'High', 2, 'PCI-DSS', '2022-01-01', '2032-01-01', 'https://support.globalbank.com', '123 Main St, City, US', 'Financial', '2022-01-01 00:00:00');
INSERT INTO card_issuer_details (IssuerID,CardNetwork,IssuerName,Country,ContactEmail,ContactPhone,EstablishedYear,Rating,MaxCreditLimit,MinCreditLimit,SupportedCurrencies,FraudDetectionLevel,SettlementCycleDays,RegulatoryCompliance,IssueDate,ExpirationDate,OnlineSupportURL,PhysicalAddress,BusinessType,CreatedAt) VALUES (2, 'MasterCard', 'EuroFinance', 'DE', 'help@eurofinance.de', '5553334444', 2000, 4.2, 15000, 300, 'EUR,GBP', 'Medium', 3, 'PSD2', '2022-02-15', '2032-02-15', 'https://help.eurofinance.de', '45 Hauptstrasse, Berlin, DE', 'Financial', '2022-02-15 00:00:00');
INSERT INTO card_issuer_details (IssuerID,CardNetwork,IssuerName,Country,ContactEmail,ContactPhone,EstablishedYear,Rating,MaxCreditLimit,MinCreditLimit,SupportedCurrencies,FraudDetectionLevel,SettlementCycleDays,RegulatoryCompliance,IssueDate,ExpirationDate,OnlineSupportURL,PhysicalAddress,BusinessType,CreatedAt) VALUES (3, 'Amex', 'AlphaCard', 'GB', 'service@alphacard.co.uk', '5555556666', 1980, 4.0, 25000, 1000, 'GBP,USD', 'High', 1, 'FCA', '2022-03-10', '2032-03-10', 'https://service.alphacard.co.uk', '78 King Rd, London, GB', 'Financial', '2022-03-10 00:00:00');

-- Station Parking Spots
CREATE TABLE station_parking_spots
(
    SpotID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    SpotNumber TEXT,
    SpotType TEXT,
    IsEVCharging INTEGER,
    Level TEXT,
    WidthCm INTEGER,
    LengthCm INTEGER,
    Covered INTEGER,
    ReservedFor TEXT,
    HourlyRate REAL,
    DailyMaxRate REAL,
    PaymentMethod TEXT,
    SensorEnabled INTEGER,
    OccupancyStatus INTEGER,
    LastOccupiedAt TEXT,
    MaintenanceDue DATE,
    Comments TEXT,
    CreatedBy TEXT,
    CreatedAt TEXT
);

INSERT INTO station_parking_spots (SpotID,GasStationID,SpotNumber,SpotType,IsEVCharging,Level,WidthCm,LengthCm,Covered,ReservedFor,HourlyRate,DailyMaxRate,PaymentMethod,SensorEnabled,OccupancyStatus,LastOccupiedAt,MaintenanceDue,Comments,CreatedBy,CreatedAt) VALUES (1, 101, 'A1', 'Compact', 0, 'Ground', 200, 400, 1, 'None', 2.5, 15.0, 'Card', 1, 0, '2023-01-20 08:45:00', '2023-06-01', 'Near entrance', 'system', '2023-01-01 09:00:00');
INSERT INTO station_parking_spots (SpotID,GasStationID,SpotNumber,SpotType,IsEVCharging,Level,WidthCm,LengthCm,Covered,ReservedFor,HourlyRate,DailyMaxRate,PaymentMethod,SensorEnabled,OccupancyStatus,LastOccupiedAt,MaintenanceDue,Comments,CreatedBy,CreatedAt) VALUES (2, 101, 'B5', 'Large', 1, 'Ground', 250, 500, 0, 'EV', 3.0, 20.0, 'App', 1, 1, '2023-01-20 09:15:00', '2023-07-01', 'EV charger installed 2022', 'system', '2023-01-01 09:05:00');
INSERT INTO station_parking_spots (SpotID,GasStationID,SpotNumber,SpotType,IsEVCharging,Level,WidthCm,LengthCm,Covered,ReservedFor,HourlyRate,DailyMaxRate,PaymentMethod,SensorEnabled,OccupancyStatus,LastOccupiedAt,MaintenanceDue,Comments,CreatedBy,CreatedAt) VALUES (3, 102, 'C3', 'Handicap', 0, 'Ground', 220, 450, 1, 'Handicap', 2.0, 12.0, 'Card', 0, 0, '2023-01-19 07:30:00', '2023-05-15', 'Accessible spot', 'system', '2023-01-02 10:00:00');

-- Fuel Taxation Events
CREATE TABLE fuel_taxation_events
(
    EventID INTEGER PRIMARY KEY,
    TaxType TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    TaxRate REAL,
    ApplicableFuelType TEXT,
    Region TEXT,
    LegislationReference TEXT,
    Comments TEXT,
    CreatedBy TEXT,
    CreatedAt TEXT,
    UpdatedBy TEXT,
    UpdatedAt TEXT,
    IsActive INTEGER,
    AdjustedRate REAL,
    MinimumTax REAL,
    MaximumTax REAL,
    ReportingFrequency TEXT,
    AuditFlag INTEGER,
    SourceSystem TEXT,
    ApprovalStatus TEXT
);

INSERT INTO fuel_taxation_events (EventID,TaxType,EffectiveDate,ExpirationDate,TaxRate,ApplicableFuelType,Region,LegislationReference,Comments,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,IsActive,AdjustedRate,MinimumTax,MaximumTax,ReportingFrequency,AuditFlag,SourceSystem,ApprovalStatus) VALUES (1, 'Excise', '2023-01-01', '2023-12-31', 0.15, 'Diesel', 'NorthAmerica', 'FA-2022-07', 'Standard rate', 'system', '2022-12-01 08:00:00', 'system', '2023-01-01 09:00:00', 1, 0.15, 0.05, 0.30, 'Monthly', 0, 'TaxEngine', 'Approved');
INSERT INTO fuel_taxation_events (EventID,TaxType,EffectiveDate,ExpirationDate,TaxRate,ApplicableFuelType,Region,LegislationReference,Comments,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,IsActive,AdjustedRate,MinimumTax,MaximumTax,ReportingFrequency,AuditFlag,SourceSystem,ApprovalStatus) VALUES (2, 'Carbon', '2023-04-01', '2024-03-31', 0.07, 'Petrol', 'Europe', 'EU-2021-03', 'EU carbon levy', 'system', '2023-03-15 10:00:00', 'system', '2023-04-01 11:00:00', 1, 0.07, 0.02, 0.10, 'Quarterly', 1, 'TaxEngine', 'Pending');
INSERT INTO fuel_taxation_events (EventID,TaxType,EffectiveDate,ExpirationDate,TaxRate,ApplicableFuelType,Region,LegislationReference,Comments,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,IsActive,AdjustedRate,MinimumTax,MaximumTax,ReportingFrequency,AuditFlag,SourceSystem,ApprovalStatus) VALUES (3, 'VAT', '2023-07-01', '2025-06-30', 0.20, 'All', 'Asia', 'AS-2020-12', 'Standard VAT', 'system', '2023-06-20 09:30:00', 'system', '2023-07-01 10:30:00', 1, 0.20, 0.00, 0.20, 'Annual', 0, 'TaxEngine', 'Approved');

-- Station Energy Audit
CREATE TABLE station_energy_audit
(
    AuditID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    EnergySource TEXT,
    TotalConsumptionKWh REAL,
    RenewableSharePercentage REAL,
    PeakDemandKW REAL,
    AverageDemandKW REAL,
    CO2EmissionsTonnes REAL,
    Recommendations TEXT,
    FollowUpDate DATE,
    FollowUpStatus TEXT,
    CostSavingsEstimated REAL,
    ImplementationStatus TEXT,
    Notes TEXT,
    CreatedAt TEXT,
    CreatedBy TEXT,
    UpdatedAt TEXT,
    UpdatedBy TEXT
);

INSERT INTO station_energy_audit (AuditID,GasStationID,AuditDate,AuditorName,EnergySource,TotalConsumptionKWh,RenewableSharePercentage,PeakDemandKW,AverageDemandKW,CO2EmissionsTonnes,Recommendations,FollowUpDate,FollowUpStatus,CostSavingsEstimated,ImplementationStatus,Notes,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy) VALUES (1, 101, '2023-01-15', 'Alice Green', 'Grid', 45200.5, 12.5, 150.0, 95.0, 35.0, 'Install solar panels', '2023-04-01', 'Planned', 12000.0, 'Pending', 'High ROI expected', '2023-01-15 09:00:00', 'system', '2023-01-15 09:00:00', 'system');
INSERT INTO station_energy_audit (AuditID,GasStationID,AuditDate,AuditorName,EnergySource,TotalConsumptionKWh,RenewableSharePercentage,PeakDemandKW,AverageDemandKW,CO2EmissionsTonnes,Recommendations,FollowUpDate,FollowUpStatus,CostSavingsEstimated,ImplementationStatus,Notes,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy) VALUES (2, 102, '2023-02-20', 'Bob White', 'Hybrid', 38000.0, 18.0, 130.0, 85.0, 28.0, 'Upgrade lighting to LED', '2023-05-15', 'Planned', 8000.0, 'Pending', 'Low disruption', '2023-02-20 10:30:00', 'system', '2023-02-20 10:30:00', 'system');
INSERT INTO station_energy_audit (AuditID,GasStationID,AuditDate,AuditorName,EnergySource,TotalConsumptionKWh,RenewableSharePercentage,PeakDemandKW,AverageDemandKW,CO2EmissionsTonnes,Recommendations,FollowUpDate,FollowUpStatus,CostSavingsEstimated,ImplementationStatus,Notes,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy) VALUES (3, 103, '2023-03-10', 'Carol Blue', 'Solar', 25000.0, 45.0, 110.0, 70.0, 12.0, 'Add battery storage', '2023-06-01', 'Planned', 15000.0, 'Pending', 'Requires permits', '2023-03-10 11:15:00', 'system', '2023-03-10 11:15:00', 'system');

-- Customer Device Sessions
CREATE TABLE customer_device_sessions
(
    SessionID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    DeviceID TEXT,
    DeviceType TEXT,
    OSVersion TEXT,
    AppVersion TEXT,
    SessionStart TEXT,
    SessionEnd TEXT,
    DurationSeconds INTEGER,
    IPAddress TEXT,
    Country TEXT,
    City TEXT,
    Latitude REAL,
    Longitude REAL,
    NetworkType TEXT,
    DataUsageMB REAL,
    ErrorsEncountered INTEGER,
    SessionStatus TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO customer_device_sessions (SessionID,CustomerID,DeviceID,DeviceType,OSVersion,AppVersion,SessionStart,SessionEnd,DurationSeconds,IPAddress,Country,City,Latitude,Longitude,NetworkType,DataUsageMB,ErrorsEncountered,SessionStatus,CreatedAt,UpdatedAt) VALUES (1, 1001, 'DEV001', 'Smartphone', 'iOS14', '1.3.0', '2023-01-20 08:00:00', '2023-01-20 08:15:00', 900, '192.168.1.10', 'US', 'NewYork', 40.7128, -74.0060, 'WiFi', 12.5, 0, 'Success', '2023-01-20 08:00:00', '2023-01-20 08:15:00');
INSERT INTO customer_device_sessions (SessionID,CustomerID,DeviceID,DeviceType,OSVersion,AppVersion,SessionStart,SessionEnd,DurationSeconds,IPAddress,Country,City,Latitude,Longitude,NetworkType,DataUsageMB,ErrorsEncountered,SessionStatus,CreatedAt,UpdatedAt) VALUES (2, 1002, 'DEV002', 'Tablet', 'Android11', '2.1.5', '2023-01-21 14:30:00', '2023-01-21 14:45:00', 900, '192.168.1.20', 'GB', 'London', 51.5074, -0.1278, '4G', 20.0, 1, 'Partial', '2023-01-21 14:30:00', '2023-01-21 14:45:00');
INSERT INTO customer_device_sessions (SessionID,CustomerID,DeviceID,DeviceType,OSVersion,AppVersion,SessionStart,SessionEnd,DurationSeconds,IPAddress,Country,City,Latitude,Longitude,NetworkType,DataUsageMB,ErrorsEncountered,SessionStatus,CreatedAt,UpdatedAt) VALUES (3, 1003, 'DEV003', 'Smartwatch', 'watchOS7', '0.9.2', '2023-01-22 09:10:00', '2023-01-22 09:12:00', 120, '192.168.1.30', 'DE', 'Berlin', 52.5200, 13.4050, 'Bluetooth', 1.2, 0, 'Success', '2023-01-22 09:10:00', '2023-01-22 09:12:00');