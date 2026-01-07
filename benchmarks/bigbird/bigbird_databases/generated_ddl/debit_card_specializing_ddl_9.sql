-- Fuel supply contract details linking suppliers and stations
CREATE TABLE fuel_supply_contracts (
    ContractID INTEGER PRIMARY KEY AUTOINCREMENT,
    SupplierName TEXT,
    SupplierCountry TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    FuelType TEXT,
    PricingModel TEXT,
    BasePrice REAL,
    VolumeDiscountTier1 INTEGER,
    VolumeDiscountTier2 INTEGER,
    VolumeDiscountTier3 INTEGER,
    MinimumVolume INTEGER,
    MaximumVolume INTEGER,
    PaymentTerms TEXT,
    DeliveryFrequency TEXT,
    PrimaryContactName TEXT,
    PrimaryContactPhone TEXT,
    PrimaryContactEmail TEXT,
    ContractStatus TEXT,
    RenewalOption TEXT,
    ArbitrationClause TEXT,
    ConfidentialityLevel TEXT
);

INSERT INTO fuel_supply_contracts (SupplierName, SupplierCountry, ContractStartDate, ContractEndDate, FuelType, PricingModel, BasePrice, VolumeDiscountTier1, VolumeDiscountTier2, VolumeDiscountTier3, MinimumVolume, MaximumVolume, PaymentTerms, DeliveryFrequency, PrimaryContactName, PrimaryContactPhone, PrimaryContactEmail, ContractStatus, RenewalOption, ArbitrationClause, ConfidentialityLevel) VALUES ('GlobalOil', 'USA', '2023-01-01', '2025-12-31', 'Diesel', 'Fixed', 2.45, 10000, 20000, 50000, 5000, 200000, 'Net30', 'Weekly', 'John Doe', '5551234001', 'john.doe@globaloil.com', 'Active', 'Automatic', 'Standard', 'High');
INSERT INTO fuel_supply_contracts (SupplierName, SupplierCountry, ContractStartDate, ContractEndDate, FuelType, PricingModel, BasePrice, VolumeDiscountTier1, VolumeDiscountTier2, VolumeDiscountTier3, MinimumVolume, MaximumVolume, PaymentTerms, DeliveryFrequency, PrimaryContactName, PrimaryContactPhone, PrimaryContactEmail, ContractStatus, RenewalOption, ArbitrationClause, ConfidentialityLevel) VALUES ('PetroMax', 'Germany', '2022-06-15', '2024-06-14', 'Petrol', 'Variable', 2.80, 15000, 30000, 60000, 8000, 250000, 'Net45', 'BiWeekly', 'Anna Schmidt', '5551234002', 'anna.schmidt@petromax.de', 'Pending', 'Manual', 'Extended', 'Medium');
INSERT INTO fuel_supply_contracts (SupplierName, SupplierCountry, ContractStartDate, ContractEndDate, FuelType, PricingModel, BasePrice, VolumeDiscountTier1, VolumeDiscountTier2, VolumeDiscountTier3, MinimumVolume, MaximumVolume, PaymentTerms, DeliveryFrequency, PrimaryContactName, PrimaryContactPhone, PrimaryContactEmail, ContractStatus, RenewalOption, ArbitrationClause, ConfidentialityLevel) VALUES ('EcoFuel', 'Canada', '2024-03-01', '2027-02-28', 'BioDiesel', 'Fixed', 3.10, 20000, 40000, 80000, 10000, 300000, 'Net60', 'Monthly', 'Luis Gomez', '5551234003', 'luis.gomez@ecofuel.ca', 'Active', 'Automatic', 'Standard', 'Low');

-- Maintenance records for each vehicle in the fleet
CREATE TABLE vehicle_maintenance_records (
    RecordID INTEGER PRIMARY KEY AUTOINCREMENT,
    VehicleVIN TEXT,
    ServiceDate DATE,
    OdometerReading INTEGER,
    ServiceCenterID INTEGER,
    ServiceType TEXT,
    LaborHours REAL,
    LaborCost REAL,
    PartsCost REAL,
    TotalCost REAL,
    TechnicianName TEXT,
    TechnicianCertLevel TEXT,
    WarrantyApplied TEXT,
    FollowUpRequired TEXT,
    FollowUpDate DATE,
    InspectionChecklist TEXT,
    Notes TEXT,
    FuelTypeSupported TEXT,
    EmissionTestPassed TEXT,
    NextServiceMileage INTEGER,
    ServiceStatus TEXT,
    ApprovedBy TEXT,
    InvoiceNumber TEXT,
    PaymentMethod TEXT,
    Currency TEXT
);

INSERT INTO vehicle_maintenance_records (VehicleVIN, ServiceDate, OdometerReading, ServiceCenterID, ServiceType, LaborHours, LaborCost, PartsCost, TotalCost, TechnicianName, TechnicianCertLevel, WarrantyApplied, FollowUpRequired, FollowUpDate, InspectionChecklist, Notes, FuelTypeSupported, EmissionTestPassed, NextServiceMileage, ServiceStatus, ApprovedBy, InvoiceNumber, PaymentMethod, Currency) VALUES ('1HGCM82633A004352', '2024-01-10', 45200, 101, 'OilChange', 1.5, 75.00, 30.00, 105.00, 'Mike Ross', 'Level2', 'Yes', 'No', NULL, 'Standard', 'Changed oil filter', 'Petrol', 'Yes', 50200, 'Completed', 'Sarah Lee', 'INV1001', 'CreditCard', 'USD');
INSERT INTO vehicle_maintenance_records (VehicleVIN, ServiceDate, OdometerReading, ServiceCenterID, ServiceType, LaborHours, LaborCost, PartsCost, TotalCost, TechnicianName, TechnicianCertLevel, WarrantyApplied, FollowUpRequired, FollowUpDate, InspectionChecklist, Notes, FuelTypeSupported, EmissionTestPassed, NextServiceMileage, ServiceStatus, ApprovedBy, InvoiceNumber, PaymentMethod, Currency) VALUES ('2FTRX18W1XCA12345', '2024-02-15', 120500, 102, 'BrakeReplacement', 3.0, 150.00, 200.00, 350.00, 'Anna K', 'Level3', 'No', 'Yes', '2024-03-15', 'BrakeCheck', 'Replaced front pads', 'Diesel', 'Yes', 125000, 'Pending', 'John Smith', 'INV1002', 'BankTransfer', 'EUR');
INSERT INTO vehicle_maintenance_records (VehicleVIN, ServiceDate, OdometerReading, ServiceCenterID, ServiceType, LaborHours, LaborCost, PartsCost, TotalCost, TechnicianName, TechnicianCertLevel, WarrantyApplied, FollowUpRequired, FollowUpDate, InspectionChecklist, Notes, FuelTypeSupported, EmissionTestPassed, NextServiceMileage, ServiceStatus, ApprovedBy, InvoiceNumber, PaymentMethod, Currency) VALUES ('3C6UR5JL1FG123456', '2024-03-20', 80000, 103, 'TireRotation', 1.0, 50.00, 0.00, 50.00, 'Sam Lee', 'Level1', 'Yes', 'No', NULL, 'TireCheck', 'Rotated all tires', 'Petrol', 'Yes', 85000, 'Completed', 'Emily Zhang', 'INV1003', 'Cash', 'GBP');

-- Roster of employees assigned to each fuel station
CREATE TABLE station_employee_roster (
    AssignmentID INTEGER PRIMARY KEY AUTOINCREMENT,
    GasStationID INTEGER,
    EmployeeID INTEGER,
    ShiftDate DATE,
    ShiftStartTime TEXT,
    ShiftEndTime TEXT,
    Role TEXT,
    Department TEXT,
    EmploymentType TEXT,
    HourlyRate REAL,
    ScheduledHours INTEGER,
    ActualHours INTEGER,
    OvertimeHours INTEGER,
    BreakMinutes INTEGER,
    SupervisorID INTEGER,
    CertificationLevel TEXT,
    UniformSize TEXT,
    ContactNumber TEXT,
    EmailAddress TEXT,
    AccessBadgeID TEXT,
    SecurityClearance TEXT,
    AttendanceStatus TEXT,
    Notes TEXT,
    PayrollGroup TEXT,
    Currency TEXT
);

INSERT INTO station_employee_roster (GasStationID, EmployeeID, ShiftDate, ShiftStartTime, ShiftEndTime, Role, Department, EmploymentType, HourlyRate, ScheduledHours, ActualHours, OvertimeHours, BreakMinutes, SupervisorID, CertificationLevel, UniformSize, ContactNumber, EmailAddress, AccessBadgeID, SecurityClearance, AttendanceStatus, Notes, PayrollGroup, Currency) VALUES (201, 3001, '2024-04-01', '08:00', '16:00', 'Cashier', 'Retail', 'FullTime', 15.50, 8, 8, 0, 30, 5001, 'Level1', 'M', '5552003001', 'emp3001@fuelco.com', 'BADGE3001', 'LevelA', 'Present', '', 'GroupA', 'USD');
INSERT INTO station_employee_roster (GasStationID, EmployeeID, ShiftDate, ShiftStartTime, ShiftEndTime, Role, Department, EmploymentType, HourlyRate, ScheduledHours, ActualHours, OvertimeHours, BreakMinutes, SupervisorID, CertificationLevel, UniformSize, ContactNumber, EmailAddress, AccessBadgeID, SecurityClearance, AttendanceStatus, Notes, PayrollGroup, Currency) VALUES (202, 3002, '2024-04-01', '14:00', '22:00', 'Attendant', 'Operations', 'PartTime', 14.00, 8, 8, 1, 30, 5002, 'Level2', 'L', '5552003002', 'emp3002@fuelco.com', 'BADGE3002', 'LevelB', 'Present', 'Overtime due to holiday', 'GroupB', 'EUR');
INSERT INTO station_employee_roster (GasStationID, EmployeeID, ShiftDate, ShiftStartTime, ShiftEndTime, Role, Department, EmploymentType, HourlyRate, ScheduledHours, ActualHours, OvertimeHours, BreakMinutes, SupervisorID, CertificationLevel, UniformSize, ContactNumber, EmailAddress, AccessBadgeID, SecurityClearance, AttendanceStatus, Notes, PayrollGroup, Currency) VALUES (203, 3003, '2024-04-01', '22:00', '06:00', 'Security', 'Safety', 'FullTime', 16.00, 8, 8, 0, 30, 5003, 'Level3', 'XL', '5552003003', 'emp3003@fuelco.com', 'BADGE3003', 'LevelA', 'Present', '', 'GroupA', 'GBP');

-- Regional price index tracking for fuel types
CREATE TABLE regional_price_indices (
    IndexID INTEGER PRIMARY KEY AUTOINCREMENT,
    RegionCode TEXT,
    EffectiveDate DATE,
    FuelType TEXT,
    IndexValue REAL,
    InflationAdjustment REAL,
    SeasonalFactor REAL,
    SupplyConstraintFactor REAL,
    DemandGrowthFactor REAL,
    ExchangeRateToUSD REAL,
    GovernmentTaxRate REAL,
    EnvironmentalSurcharge REAL,
    RetailMarginPercentage REAL,
    WholesaleMarginPercentage REAL,
    AvgCompetitorPrice REAL,
    PriceCap REAL,
    PriceFloor REAL,
    RegulatoryReference TEXT,
    DataSource TEXT,
    LastUpdated TIMESTAMP,
    AnalystName TEXT,
    Comments TEXT,
    Currency TEXT,
    UnitOfMeasure TEXT,
    ConfidenceScore REAL
);

INSERT INTO regional_price_indices (RegionCode, EffectiveDate, FuelType, IndexValue, InflationAdjustment, SeasonalFactor, SupplyConstraintFactor, DemandGrowthFactor, ExchangeRateToUSD, GovernmentTaxRate, EnvironmentalSurcharge, RetailMarginPercentage, WholesaleMarginPercentage, AvgCompetitorPrice, PriceCap, PriceFloor, RegulatoryReference, DataSource, LastUpdated, AnalystName, Comments, Currency, UnitOfMeasure, ConfidenceScore) VALUES ('NE', '2024-01-01', 'Diesel', 102.5, 1.02, 0.98, 1.05, 1.01, 1.10, 0.07, 0.02, 5.0, 3.0, 2.95, 3.10, 2.80, 'Reg2023-12', 'Internal', '2024-04-01 08:00:00', 'Alice Brown', 'Quarterly update', 'USD', 'CentsPerLiter', 0.92);
INSERT INTO regional_price_indices (RegionCode, EffectiveDate, FuelType, IndexValue, InflationAdjustment, SeasonalFactor, SupplyConstraintFactor, DemandGrowthFactor, ExchangeRateToUSD, GovernmentTaxRate, EnvironmentalSurcharge, RetailMarginPercentage, WholesaleMarginPercentage, AvgCompetitorPrice, PriceCap, PriceFloor, RegulatoryReference, DataSource, LastUpdated, AnalystName, Comments, Currency, UnitOfMeasure, ConfidenceScore) VALUES ('SW', '2024-01-01', 'Petrol', 98.3, 1.01, 1.00, 0.97, 1.02, 0.95, 0.06, 0.015, 4.5, 2.5, 2.75, 3.00, 2.50, 'Reg2023-11', 'External', '2024-04-01 08:15:00', 'Bob Clark', 'Seasonal adjustment applied', 'EUR', 'EuroCentsPerLiter', 0.88);
INSERT INTO regional_price_indices (RegionCode, EffectiveDate, FuelType, IndexValue, InflationAdjustment, SeasonalFactor, SupplyConstraintFactor, DemandGrowthFactor, ExchangeRateToUSD, GovernmentTaxRate, EnvironmentalSurcharge, RetailMarginPercentage, WholesaleMarginPercentage, AvgCompetitorPrice, PriceCap, PriceFloor, RegulatoryReference, DataSource, LastUpdated, AnalystName, Comments, Currency, UnitOfMeasure, ConfidenceScore) VALUES ('MW', '2024-01-01', 'BioDiesel', 105.0, 1.03, 0.97, 1.08, 1.00, 1.20, 0.08, 0.025, 5.5, 3.2, 3.10, 3.30, 2.90, 'Reg2024-01', 'Internal', '2024-04-01 08:30:00', 'Carol Davis', 'New biofuel introduced', 'GBP', 'PencePerLiter', 0.90);

-- Environmental monitoring site metadata
CREATE TABLE environmental_monitoring_sites (
    SiteID INTEGER PRIMARY KEY AUTOINCREMENT,
    SiteName TEXT,
    Latitude REAL,
    Longitude REAL,
    ElevationMeters INTEGER,
    InstallationDate DATE,
    SensorType TEXT,
    MeasurementFrequency TEXT,
    DataRetentionPeriodYears INTEGER,
    OwnerOrganization TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    CalibrationIntervalDays INTEGER,
    LastCalibrationDate DATE,
    MaintenanceContractID INTEGER,
    PowerSource TEXT,
    CommunicationProtocol TEXT,
    DataAccessLevel TEXT,
    OperationalStatus TEXT,
    FundingSource TEXT,
    GeographicRegion TEXT,
    ClimateZone TEXT,
    Notes TEXT,
    RegulatoryCompliance TEXT,
    DataQualityScore REAL
);

INSERT INTO environmental_monitoring_sites (SiteName, Latitude, Longitude, ElevationMeters, InstallationDate, SensorType, MeasurementFrequency, DataRetentionPeriodYears, OwnerOrganization, ContactPerson, ContactPhone, ContactEmail, CalibrationIntervalDays, LastCalibrationDate, MaintenanceContractID, PowerSource, CommunicationProtocol, DataAccessLevel, OperationalStatus, FundingSource, GeographicRegion, ClimateZone, Notes, RegulatoryCompliance, DataQualityScore) VALUES ('RiverDelta', 34.05, -118.25, 15, '2022-03-15', 'AirQuality', 'Hourly', 5, 'EnviroCorp', 'Mike Turner', '5553004001', 'mike.turner@envirocorp.com', 180, '2024-02-01', 9001, 'Solar', 'LTE', 'Public', 'Active', 'Grant', 'WestCoast', 'Mediterranean', 'Near industrial zone', 'EPA', 0.95);
INSERT INTO environmental_monitoring_sites (SiteName, Latitude, Longitude, ElevationMeters, InstallationDate, SensorType, MeasurementFrequency, DataRetentionPeriodYears, OwnerOrganization, ContactPerson, ContactPhone, ContactEmail, CalibrationIntervalDays, LastCalibrationDate, MaintenanceContractID, PowerSource, CommunicationProtocol, DataAccessLevel, OperationalStatus, FundingSource, GeographicRegion, ClimateZone, Notes, RegulatoryCompliance, DataQualityScore) VALUES ('MountainPeak', 45.12, -110.45, 2500, '2021-07-20', 'Weather', '15Min', 10, 'ClimateWatch', 'Laura Chen', '5553004002', 'laura.chen@climatewatch.org', 365, '2023-12-15', 9002, 'Wind', 'Satellite', 'Restricted', 'Active', 'Private', 'NorthRockies', 'Alpine', 'Remote location', 'NOAA', 0.98);
INSERT INTO environmental_monitoring_sites (SiteName, Latitude, Longitude, ElevationMeters, InstallationDate, SensorType, MeasurementFrequency, DataRetentionPeriodYears, OwnerOrganization, ContactPerson, ContactPhone, ContactEmail, CalibrationIntervalDays, LastCalibrationDate, MaintenanceContractID, PowerSource, CommunicationProtocol, DataAccessLevel, OperationalStatus, FundingSource, GeographicRegion, ClimateZone, Notes, RegulatoryCompliance, DataQualityScore) VALUES ('UrbanCenter', 40.71, -74.00, 10, '2023-01-10', 'NoiseLevel', 'Daily', 3, 'CityHealthDept', 'Sam Patel', '5553004003', 'sam.patel@cityhealth.gov', 90, '2024-01-20', 9003, 'Mains', 'WiFi', 'Public', 'Active', 'Municipal', 'EastCoast', 'Temperate', 'High traffic area', 'EPA', 0.91);

-- Catalog of loyalty rewards that can be earned by customers
CREATE TABLE loyalty_reward_catalog (
    RewardID INTEGER PRIMARY KEY AUTOINCREMENT,
    RewardName TEXT,
    RewardCategory TEXT,
    PointsRequired INTEGER,
    ExpirationPeriodDays INTEGER,
    RedemptionMethod TEXT,
    TierLevel TEXT,
    RegionalAvailability TEXT,
    ValidFrom DATE,
    ValidTo DATE,
    Description TEXT,
    ImageURL TEXT,
    IsTransferable TEXT,
    IsStackable TEXT,
    MaxRedemptionsPerUser INTEGER,
    TotalStock INTEGER,
    CurrentStock INTEGER,
    SupplierName TEXT,
    SupplierContact TEXT,
    SupplierEmail TEXT,
    ActivationCode TEXT,
    TermsAndConditions TEXT,
    MarketingChannel TEXT,
    CreationTimestamp TIMESTAMP,
    LastModifiedTimestamp TIMESTAMP,
    Currency TEXT,
    UnitValue REAL
);

INSERT INTO loyalty_reward_catalog (RewardName, RewardCategory, PointsRequired, ExpirationPeriodDays, RedemptionMethod, TierLevel, RegionalAvailability, ValidFrom, ValidTo, Description, ImageURL, IsTransferable, IsStackable, MaxRedemptionsPerUser, TotalStock, CurrentStock, SupplierName, SupplierContact, SupplierEmail, ActivationCode, TermsAndConditions, MarketingChannel, CreationTimestamp, LastModifiedTimestamp, Currency, UnitValue) VALUES ('FreeCoffee', 'Beverage', 150, 365, 'Instant', 'Silver', 'Global', '2024-01-01', '2025-12-31', 'One free coffee at any station cafe', 'http://example.com/img/coffee.png', 'No', 'Yes', 5, 10000, 8000, 'BrewCo', '5554005001', 'contact@brewco.com', 'ACT123', 'Standard terms apply', 'App', '2024-04-01 09:00:00', '2024-04-01 09:00:00', 'USD', 5.00);
INSERT INTO loyalty_reward_catalog (RewardName, RewardCategory, PointsRequired, ExpirationPeriodDays, RedemptionMethod, TierLevel, RegionalAvailability, ValidFrom, ValidTo, Description, ImageURL, IsTransferable, IsStackable, MaxRedemptionsPerUser, TotalStock, CurrentStock, SupplierName, SupplierContact, SupplierEmail, ActivationCode, TermsAndConditions, MarketingChannel, CreationTimestamp, LastModifiedTimestamp, Currency, UnitValue) VALUES ('Discount10', 'Fuel', 500, 180, 'Voucher', 'Gold', 'EU', '2024-02-01', '2024-12-31', '10% off next fuel purchase', 'http://example.com/img/discount10.png', 'Yes', 'No', 2, 5000, 4500, 'FuelPromo', '5554005002', 'sales@fuelpromo.eu', 'ACT456', 'Non‑transferable', 'Email', '2024-04-01 09:15:00', '2024-04-01 09:15:00', 'EUR', 10.00);
INSERT INTO loyalty_reward_catalog (RewardName, RewardCategory, PointsRequired, ExpirationPeriodDays, RedemptionMethod, TierLevel, RegionalAvailability, ValidFrom, ValidTo, Description, ImageURL, IsTransferable, IsStackable, MaxRedemptionsPerUser, TotalStock, CurrentStock, SupplierName, SupplierContact, SupplierEmail, ActivationCode, TermsAndConditions, MarketingChannel, CreationTimestamp, LastModifiedTimestamp, Currency, UnitValue) VALUES ('CarWashPremium', 'Service', 300, 365, 'Code', 'Platinum', 'NorthAmerica', '2024-03-01', '2026-02-28', 'Premium car wash package', 'http://example.com/img/carwash.png', 'No', 'No', 1, 2000, 1900, 'CleanRide', '5554005003', 'info@cleanride.com', 'ACT789', 'One‑time use', 'SMS', '2024-04-01 09:30:00', '2024-04-01 09:30:00', 'USD', 8.00);

-- Metrics for digital payment gateways used at stations
CREATE TABLE payment_gateway_metrics (
    MetricID INTEGER PRIMARY KEY AUTOINCREMENT,
    GatewayName TEXT,
    TransactionDate DATE,
    TransactionCount INTEGER,
    SuccessCount INTEGER,
    FailureCount INTEGER,
    AvgResponseTimeMs REAL,
    PeakResponseTimeMs REAL,
    TotalVolume REAL,
    Currency TEXT,
    SettlementPeriod TEXT,
    ChargebackCount INTEGER,
    FraudScore REAL,
    AvgAuthTimeMs REAL,
    DeclineReasonSummary TEXT,
    MobileAppEnabled TEXT,
    APIVersion TEXT,
    EncryptionProtocol TEXT,
    ComplianceStatus TEXT,
    DailyActiveMerchants INTEGER,
    AvgTransactionValue REAL,
    PeakTransactionHour TEXT,
    DowntimeMinutes INTEGER,
    MaintenanceWindow TEXT,
    LastUpdated TIMESTAMP,
    DataSource TEXT,
    RegionCode TEXT,
    ServiceLevelAgreement TEXT,
    SLACompliancePercentage REAL,
    Remarks TEXT
);

INSERT INTO payment_gateway_metrics (GatewayName, TransactionDate, TransactionCount, SuccessCount, FailureCount, AvgResponseTimeMs, PeakResponseTimeMs, TotalVolume, Currency, SettlementPeriod, ChargebackCount, FraudScore, AvgAuthTimeMs, DeclineReasonSummary, MobileAppEnabled, APIVersion, EncryptionProtocol, ComplianceStatus, DailyActiveMerchants, AvgTransactionValue, PeakTransactionHour, DowntimeMinutes, MaintenanceWindow, LastUpdated, DataSource, RegionCode, ServiceLevelAgreement, SLACompliancePercentage, Remarks) VALUES ('PayFast', '2024-04-01', 1200, 1150, 50, 250.5, 800.0, 35000.00, 'USD', 'T+1', 2, 0.02, 180.0, 'InsufficientFunds,NetworkError', 'Yes', 'v2.3', 'TLS1.2', 'PCI-DSS', 85, 29.2, '14:00', 5, '02:00-03:00', '2024-04-01 08:00:00', 'GatewayLogs', 'NE', '99.9%Uptime', 99.85, '');
INSERT INTO payment_gateway_metrics (GatewayName, TransactionDate, TransactionCount, SuccessCount, FailureCount, AvgResponseTimeMs, PeakResponseTimeMs, TotalVolume, Currency, SettlementPeriod, ChargebackCount, FraudScore, AvgAuthTimeMs, DeclineReasonSummary, MobileAppEnabled, APIVersion, EncryptionProtocol, ComplianceStatus, DailyActiveMerchants, AvgTransactionValue, PeakTransactionHour, DowntimeMinutes, MaintenanceWindow, LastUpdated, DataSource, RegionCode, ServiceLevelAgreement, SLACompliancePercentage, Remarks) VALUES ('SecurePay', '2024-04-01', 950, 940, 10, 190.0, 600.0, 27500.00, 'EUR', 'T+2', 1, 0.01, 150.0, 'CardExpired', 'Yes', 'v1.9', 'TLS1.3', 'PCI-DSS', 70, 28.9, '09:00', 2, '01:00-02:00', '2024-04-01 08:05:00', 'GatewayLogs', 'SW', '99.7%Uptime', 99.70, '');
INSERT INTO payment_gateway_metrics (GatewayName, TransactionDate, TransactionCount, SuccessCount, FailureCount, AvgResponseTimeMs, PeakResponseTimeMs, TotalVolume, Currency, SettlementPeriod, ChargebackCount, FraudScore, AvgAuthTimeMs, DeclineReasonSummary, MobileAppEnabled, APIVersion, EncryptionProtocol, ComplianceStatus, DailyActiveMerchants, AvgTransactionValue, PeakTransactionHour, DowntimeMinutes, MaintenanceWindow, LastUpdated, DataSource, RegionCode, ServiceLevelAgreement, SLACompliancePercentage, Remarks) VALUES ('QuickCharge', '2024-04-01', 800, 790, 10, 210.0, 750.0, 22000.00, 'GBP', 'T+1', 0, 0.015, 170.0, 'NetworkTimeout', 'No', 'v3.0', 'TLS1.2', 'PCI-DSS', 60, 27.5, '18:00', 3, '03:00-04:00', '2024-04-01 08:10:00', 'GatewayLogs', 'MW', '99.5%Uptime', 99.55, '');

-- Inventory levels for items stocked at each fuel station
CREATE TABLE station_inventory_levels (
    InventoryID INTEGER PRIMARY KEY AUTOINCREMENT,
    GasStationID INTEGER,
    ItemSKU TEXT,
    ItemDescription TEXT,
    Category TEXT,
    UnitOfMeasure TEXT,
    QuantityOnHand INTEGER,
    ReorderPoint INTEGER,
    ReorderQuantity INTEGER,
    SupplierID INTEGER,
    LastRestockDate DATE,
    NextExpectedRestock DATE,
    ShelfLifeDays INTEGER,
    StorageTemperatureC REAL,
    HazardousMaterialFlag TEXT,
    LocationWithinStation TEXT,
    LastCountedBy TEXT,
    CountTimestamp TIMESTAMP,
    InventoryStatus TEXT,
    LastAuditDate DATE,
    AuditorName TEXT,
    CostPerUnit REAL,
    TotalValue REAL,
    Currency TEXT,
    MinimumOrderQuantity INTEGER,
    LeadTimeDays INTEGER,
    Barcode TEXT,
    Remarks TEXT,
    CreatedTimestamp TIMESTAMP,
    UpdatedTimestamp TIMESTAMP,
    RegionCode TEXT,
    SeasonalityFactor REAL,
    StockoutRiskScore REAL
);

INSERT INTO station_inventory_levels (GasStationID, ItemSKU, ItemDescription, Category, UnitOfMeasure, QuantityOnHand, ReorderPoint, ReorderQuantity, SupplierID, LastRestockDate, NextExpectedRestock, ShelfLifeDays, StorageTemperatureC, HazardousMaterialFlag, LocationWithinStation, LastCountedBy, CountTimestamp, InventoryStatus, LastAuditDate, AuditorName, CostPerUnit, TotalValue, Currency, MinimumOrderQuantity, LeadTimeDays, Barcode, Remarks, CreatedTimestamp, UpdatedTimestamp, RegionCode, SeasonalityFactor, StockoutRiskScore) VALUES (301, 'SNK001', 'Snacks Mix', 'Food', 'Pack', 250, 100, 200, 4001, '2024-03-20', '2024-04-10', 365, 22.0, 'No', 'Aisle3', 'Emily', '2024-04-01 07:30:00', 'InStock', '2024-03-28', 'Mike', 1.20, 300.00, 'USD', 50, 7, '1234567890123', '', '2024-03-01 09:00:00', '2024-04-01 07:30:00', 'NE', 1.0, 0.15);
INSERT INTO station_inventory_levels (GasStationID, ItemSKU, ItemDescription, Category, UnitOfMeasure, QuantityOnHand, ReorderPoint, ReorderQuantity, SupplierID, LastRestockDate, NextExpectedRestock, ShelfLifeDays, StorageTemperatureC, HazardousMaterialFlag, LocationWithinStation, LastCountedBy, CountTimestamp, InventoryStatus, LastAuditDate, AuditorName, CostPerUnit, TotalValue, Currency, MinimumOrderQuantity, LeadTimeDays, Barcode, Remarks, CreatedTimestamp, UpdatedTimestamp, RegionCode, SeasonalityFactor, StockoutRiskScore) VALUES (302, 'DRNK002', 'Energy Drink', 'Beverage', 'Can', 120, 50, 100, 4002, '2024-03-25', '2024-04-15', 730, 5.0, 'No', 'Cooler1', 'John', '2024-04-01 08:00:00', 'InStock', '2024-03-30', 'Sara', 0.80, 96.00, 'EUR', 30, 5, '2345678901234', '', '2024-03-05 10:00:00', '2024-04-01 08:00:00', 'SW', 1.2, 0.10);
INSERT INTO station_inventory_levels (GasStationID, ItemSKU, ItemDescription, Category, UnitOfMeasure, QuantityOnHand, ReorderPoint, ReorderQuantity, SupplierID, LastRestockDate, NextExpectedRestock, ShelfLifeDays, StorageTemperatureC, HazardousMaterialFlag, LocationWithinStation, LastCountedBy, CountTimestamp, InventoryStatus, LastAuditDate, AuditorName, CostPerUnit, TotalValue, Currency, MinimumOrderQuantity, LeadTimeDays, Barcode, Remarks, CreatedTimestamp, UpdatedTimestamp, RegionCode, SeasonalityFactor, StockoutRiskScore) VALUES (303, 'CLN003', 'Windshield Cleaner', 'AutoCare', 'Bottle', 80, 30, 70, 4003, '2024-03-18', '2024-04-08', 540, 15.0, 'No', 'Shelf5', 'Laura', '2024-04-01 08:30:00', 'InStock', '2024-03-27', 'Tom', 2.50, 200.00, 'GBP', 20, 6, '3456789012345', '', '2024-03-10 11:00:00', '2024-04-01 08:30:00', 'MW', 0.9, 0.20);

-- Participants in corporate events with role and attendance details
CREATE TABLE corporate_event_participants (
    ParticipationID INTEGER PRIMARY KEY AUTOINCREMENT,
    EventID INTEGER,
    ParticipantID INTEGER,
    ParticipantName TEXT,
    Department TEXT,
    Role TEXT,
    AttendanceStatus TEXT,
    RSVPDate DATE,
    CheckInTime TEXT,
    CheckOutTime TEXT,
    MealPreference TEXT,
    AccommodationRequired TEXT,
    TravelMode TEXT,
    TravelExpense REAL,
    BadgeNumber TEXT,
    PhotoConsent TEXT,
    SpecialNeeds TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    EmergencyContactName TEXT,
    EmergencyContactPhone TEXT,
    FeedbackScore REAL,
    SurveyCompleted TEXT,
    Notes TEXT,
    RegistrationMethod TEXT,
    InvitationSource TEXT,
    ReminderSentDate DATE,
    FollowUpDate DATE,
    UpdatedTimestamp TIMESTAMP,
    CreatedTimestamp TIMESTAMP,
    RegionCode TEXT,
    EventTheme TEXT,
    SponsorName TEXT
);

INSERT INTO corporate_event_participants (EventID, ParticipantID, ParticipantName, Department, Role, AttendanceStatus, RSVPDate, CheckInTime, CheckOutTime, MealPreference, AccommodationRequired, TravelMode, TravelExpense, BadgeNumber, PhotoConsent, SpecialNeeds, ContactPhone, ContactEmail, EmergencyContactName, EmergencyContactPhone, FeedbackScore, SurveyCompleted, Notes, RegistrationMethod, InvitationSource, ReminderSentDate, FollowUpDate, UpdatedTimestamp, CreatedTimestamp, RegionCode, EventTheme, SponsorName) VALUES (501, 1001, 'Alice Johnson', 'Marketing', 'Speaker', 'Attended', '2024-03-20', '09:00', '17:00', 'Vegetarian', 'No', 'Air', 350.00, 'BADGE501', 'Yes', '', '5555006001', 'alice.johnson@corp.com', 'Bob Johnson', '5555006002', 4.5, 'Yes', '', 'Online', 'Email', '2024-04-01', '2024-04-10', '2024-04-01 12:00:00', '2024-03-01 09:00:00', 'NE', 'Innovation2024', 'TechPartners');
INSERT INTO corporate_event_participants (EventID, ParticipantID, ParticipantName, Department, Role, AttendanceStatus, RSVPDate, CheckInTime, CheckOutTime, MealPreference, AccommodationRequired, TravelMode, TravelExpense, BadgeNumber, PhotoConsent, SpecialNeeds, ContactPhone, ContactEmail, EmergencyContactName, EmergencyContactPhone, FeedbackScore, SurveyCompleted, Notes, RegistrationMethod, InvitationSource, ReminderSentDate, FollowUpDate, UpdatedTimestamp, CreatedTimestamp, RegionCode, EventTheme, SponsorName) VALUES (502, 1002, 'Mark Lee', 'Finance', 'Attendee', 'Cancelled', '2024-03-22', NULL, NULL, 'Standard', 'Yes', 'Train', 120.00, 'BADGE502', 'No', 'Wheelchair', '5555006003', 'mark.lee@corp.com', 'Susan Lee', '5555006004', NULL, 'No', 'Cancelled due to travel', 'Phone', 'Referral', '2024-04-02', NULL, '2024-04-02 09:30:00', '2024-03-02 10:15:00', 'SW', 'Sustainability2024', 'EcoGroup');
INSERT INTO corporate_event_participants (EventID, ParticipantID, ParticipantName, Department, Role, AttendanceStatus, RSVPDate, CheckInTime, CheckOutTime, MealPreference, AccommodationRequired, TravelMode, TravelExpense, BadgeNumber, PhotoConsent, SpecialNeeds, ContactPhone, ContactEmail, EmergencyContactName, EmergencyContactPhone, FeedbackScore, SurveyCompleted, Notes, RegistrationMethod, InvitationSource, ReminderSentDate, FollowUpDate, UpdatedTimestamp, CreatedTimestamp, RegionCode, EventTheme, SponsorName) VALUES (503, 1003, 'Nina Patel', 'R&D', 'Panelist', 'Attended', '2024-03-25', '10:30', '16:30', 'Vegan', 'No', 'Car', 0.00, 'BADGE503', 'Yes', '', '5555006005', 'nina.patel@corp.com', 'Ravi Patel', '5555006006', 4.8, 'Yes', '', 'Web', 'Newsletter', '2024-04-03', '2024-04-12', '2024-04-03 11:45:00', '2024-03-03 11:00:00', 'MW', 'FutureTech2024', 'InnovateLabs');

-- Archive of accident reports linked to stations (no personal customer data)
CREATE TABLE accident_report_archive (
    ReportID INTEGER PRIMARY KEY AUTOINCREMENT,
    GasStationID INTEGER,
    AccidentDate DATE,
    AccidentTime TEXT,
    IncidentType TEXT,
    SeverityLevel TEXT,
    VehiclesInvolved INTEGER,
    InjuriesReported INTEGER,
    Fatalities INTEGER,
    PoliceReportNumber TEXT,
    WeatherCondition TEXT,
    RoadSurface TEXT,
    Visibility TEXT,
    Description TEXT,
    ImmediateActionsTaken TEXT,
    FollowUpActions TEXT,
    EstimatedDamageCost REAL,
    InsuranceClaimNumber TEXT,
    ClaimStatus TEXT,
    InvestigatorName TEXT,
    InvestigationReport TEXT,
    SafetyRecommendations TEXT,
    NotificationSent TEXT,
    ReportedBy TEXT,
    ReportingDepartment TEXT,
    CreatedTimestamp TIMESTAMP,
    UpdatedTimestamp TIMESTAMP,
    RegionCode TEXT,
    Latitude REAL,
    Longitude REAL,
    DocumentationURL TEXT
);

INSERT INTO accident_report_archive (GasStationID, AccidentDate, AccidentTime, IncidentType, SeverityLevel, VehiclesInvolved, InjuriesReported, Fatalities, PoliceReportNumber, WeatherCondition, RoadSurface, Visibility, Description, ImmediateActionsTaken, FollowUpActions, EstimatedDamageCost, InsuranceClaimNumber, ClaimStatus, InvestigatorName, InvestigationReport, SafetyRecommendations, NotificationSent, ReportedBy, ReportingDepartment, CreatedTimestamp, UpdatedTimestamp, RegionCode, Latitude, Longitude, DocumentationURL) VALUES (401, '2024-02-15', '08:30', 'Collision', 'Medium', 2, 1, 0, 'PR123456', 'Rain', 'Wet', 'Good', 'Two vehicles collided near entrance', 'Secured area, called EMS', 'Reviewed signage', 25000.00, 'CLM78901', 'Pending', 'Laura Chen', 'ReportDoc01', 'Improve lighting', 'Yes', 'Mike Knight', 'Safety', '2024-02-15 09:00:00', '2024-02-20 10:00:00', 'NE', 34.05, -118.25, 'http://example.com/docs/accident401.pdf');
INSERT INTO accident_report_archive (GasStationID, AccidentDate, AccidentTime, IncidentType, SeverityLevel, VehiclesInvolved, InjuriesReported, Fatalities, PoliceReportNumber, WeatherCondition, RoadSurface, Visibility, Description, ImmediateActionsTaken, FollowUpActions, EstimatedDamageCost, InsuranceClaimNumber, ClaimStatus, InvestigatorName, InvestigationReport, SafetyRecommendations, NotificationSent, ReportedBy, ReportingDepartment, CreatedTimestamp, UpdatedTimestamp, RegionCode, Latitude, Longitude, DocumentationURL) VALUES (402, '2024-03-10', '14:45', 'SlipAndFall', 'Low', 1, 0, 0, 'PR654321', 'Clear', 'Dry', 'Excellent', 'Customer slipped on fuel pump', 'Assisted patient, cleaned area', 'Added anti-slip mat', 5000.00, 'CLM78902', 'Closed', 'John Smith', 'ReportDoc02', 'Regular floor inspections', 'Yes', 'Anna Lee', 'Operations', '2024-03-10 15:00:00', '2024-03-12 11:00:00', 'SW', 45.12, -93.45, 'http://example.com/docs/accident402.pdf');
INSERT INTO accident_report_archive (GasStationID, AccidentDate, AccidentTime, IncidentType, SeverityLevel, VehiclesInvolved, InjuriesReported, Fatalities, PoliceReportNumber, WeatherCondition, RoadSurface, Visibility, Description, ImmediateActionsTaken, FollowUpActions, EstimatedDamageCost, InsuranceClaimNumber, ClaimStatus, InvestigatorName, InvestigationReport, SafetyRecommendations, NotificationSent, ReportedBy, ReportingDepartment, CreatedTimestamp, UpdatedTimestamp, RegionCode, Latitude, Longitude, DocumentationURL) VALUES (403, '2024-04-01', '22:10', 'Fire', 'High', 1, 2, 0, 'PR987654', 'Clear', 'Dry', 'Poor', 'Fire broke out in storage area', 'Evacuated, called fire dept', 'Repaired storage, updated protocols', 120000.00, 'CLM78903', 'Open', 'Emily Davis', 'ReportDoc03', 'Install fire suppression', 'Yes', 'Sam Patel', 'Security', '2024-04-01 22:30:00', '2024-04-05 09:00:00', 'MW', 39.78, -104.99, 'http://example.com/docs/accident403.pdf');