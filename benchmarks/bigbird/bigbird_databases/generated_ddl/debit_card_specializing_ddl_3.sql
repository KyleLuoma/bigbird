-- Fuel station amenities details
CREATE TABLE fuel_station_amenities (
    AmenityID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    AmenityType TEXT,
    Count INTEGER,
    OpenHours TEXT,
    HasRestroom INTEGER,
    HasConvenienceStore INTEGER,
    HasCarWash INTEGER,
    HasATM INTEGER,
    HasAirPump INTEGER,
    HasChargingStation INTEGER,
    HasWiFi INTEGER,
    SeatingCapacity INTEGER,
    DailyFootTraffic INTEGER,
    MaintenanceStatus TEXT,
    LastInspectionDate DATE,
    SupplierID INTEGER,
    WarrantyPeriodMonths INTEGER,
    CostPerMonth REAL,
    Notes TEXT
);

INSERT INTO fuel_station_amenities VALUES (1, 101, 'Restroom', 2, '24/7', 1, 0, 0, 0, 0, 0, 0, 0, 500, 'Good', '2023-11-15', 12, 24, 150.00, 'Standard facilities');
INSERT INTO fuel_station_amenities VALUES (2, 102, 'ConvenienceStore', 1, '06:00-22:00', 0, 1, 0, 1, 0, 0, 1, 30, 1200, 'Excellent', '2023-10-20', 13, 36, 300.00, 'Open extended hours');
INSERT INTO fuel_station_amenities VALUES (3, 103, 'ChargingStation', 4, '24/7', 0, 0, 0, 0, 0, 1, 1, 0, 200, 'Fair', '2023-09-05', 14, 12, 250.00, 'Newly installed');

-- Roadside service providers information
CREATE TABLE roadside_service_providers (
    ProviderID INTEGER PRIMARY KEY,
    ProviderName TEXT,
    ServiceType TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    Rating REAL,
    ServiceRegion TEXT,
    IsCertified INTEGER,
    LicenseNumber TEXT,
    InsurancePolicyID INTEGER,
    HourlyRate REAL,
    MinimumCalloutFee REAL,
    MaxResponseTimeMins INTEGER,
    FleetSize INTEGER,
    EquipmentList TEXT,
    EmergencySupportLevel TEXT,
    AvailabilityDays TEXT,
    Notes TEXT
);

INSERT INTO roadside_service_providers VALUES (201, 'QuickAssist', 'TireRepair', '5551234567', 'support@quickassist.com', '2022-01-01', '2025-12-31', 4.5, 'North', 1, 'LIC12345', 301, 45.00, 75.00, 30, 10, 'TireChanger,Jack', 'Level2', 'MonTueWedThuFri', 'Preferred partner');
INSERT INTO roadside_service_providers VALUES (202, 'FuelMate', 'FuelDelivery', '5559876543', 'info@fuelmate.com', '2021-06-15', '2024-06-14', 4.2, 'South', 1, 'LIC67890', 302, 60.00, 100.00, 45, 8, 'FuelTank,Pump', 'Level3', 'MonTueWedThuFriSat', 'On-call 24/7');
INSERT INTO roadside_service_providers VALUES (203, 'CleanCar', 'CarWash', '5555551122', 'contact@cleancar.com', '2023-03-01', '2026-02-28', 3.9, 'East', 0, 'LIC54321', 303, 30.00, 50.00, 20, 5, 'PressureWash,Vacuum', 'Level1', 'MonTueWedThuFriSatSun', 'New contract');

-- Payment terminal inventory per station
CREATE TABLE payment_terminal_inventory (
    TerminalID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    ModelNumber TEXT,
    SerialNumber TEXT,
    InstallDate DATE,
    FirmwareVersion TEXT,
    IsContactless INTEGER,
    IsChipEnabled INTEGER,
    LastMaintenanceDate DATE,
    Status TEXT,
    VendorID INTEGER,
    WarrantyEndDate DATE,
    LeaseAgreementID INTEGER,
    DailyTransactionCount INTEGER,
    AvgTransactionValue REAL,
    NetworkProvider TEXT,
    IPAddress TEXT,
    MACAddress TEXT,
    LocationWithinStation TEXT,
    Notes TEXT
);

INSERT INTO payment_terminal_inventory VALUES (1001, 101, 'PTX100', 'SN001', '2022-05-10', 'v1.2.3', 1, 1, '2023-10-01', 'Active', 401, '2024-05-09', 501, 250, 12.75, 'NetCo', '192.168.1.10', 'AA:BB:CC:DD:EE:01', 'FrontCounter', 'Installed near entrance');
INSERT INTO payment_terminal_inventory VALUES (1002, 102, 'PTX200', 'SN002', '2021-11-20', 'v2.0.0', 1, 0, '2023-09-15', 'Active', 402, '2023-11-19', 502, 300, 13.40, 'DataLink', '192.168.1.11', 'AA:BB:CC:DD:EE:02', 'SideWall', 'Supports chip only');
INSERT INTO payment_terminal_inventory VALUES (1003, 103, 'PTX300', 'SN003', '2023-02-05', 'v1.0.5', 0, 1, '2023-12-01', 'Pending', 403, '2025-02-04', 503, 180, 11.20, 'FastNet', '192.168.1.12', 'AA:BB:CC:DD:EE:03', 'BackOffice', 'Awaiting firmware update');

-- Fuel delivery schedule records
CREATE TABLE fuel_delivery_schedule (
    ScheduleID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    GasStationID INTEGER,
    DeliveryDate DATE,
    DeliveryTimeWindow TEXT,
    FuelType TEXT,
    VolumeLiters REAL,
    DeliveryMethod TEXT,
    DriverID INTEGER,
    TruckID INTEGER,
    TemperatureControl INTEGER,
    IsPriority INTEGER,
    InvoiceNumber TEXT,
    PaymentStatus TEXT,
    ReceivedByEmployeeID INTEGER,
    InspectionStatus TEXT,
    Notes TEXT,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE,
    DelayReason TEXT,
    EstimatedArrival TIME
);

INSERT INTO fuel_delivery_schedule VALUES (301, 601, 101, '2023-12-01', '08:00-10:00', 'Diesel', 15000.0, 'Truck', 701, 801, 1, 0, 'INV1001', 'Pending', 901, 'NotInspected', 'First delivery of quarter', '2023-11-20', '2023-11-20', '', '08:30');
INSERT INTO fuel_delivery_schedule VALUES (302, 602, 102, '2023-12-02', '10:00-12:00', 'Petrol', 12000.5, 'Rail', 702, 802, 0, 1, 'INV1002', 'Paid', 902, 'Passed', 'Priority for promotional event', '2023-11-21', '2023-11-22', 'Traffic', '10:45');
INSERT INTO fuel_delivery_schedule VALUES (303, 603, 103, '2023-12-03', '14:00-16:00', 'LPG', 8000.0, 'Truck', 703, 803, 1, 0, 'INV1003', 'Pending', 903, 'Failed', 'Temperature sensor check needed', '2023-11-22', '2023-11-23', 'Equipment', '15:10');

-- Environmental permit records for stations
CREATE TABLE environmental_permit_records (
    PermitID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    PermitType TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    IssuingAuthority TEXT,
    PermitNumber TEXT,
    Status TEXT,
    ConditionsSummary TEXT,
    PenaltyAmount REAL,
    LastComplianceCheckDate DATE,
    ComplianceOfficerID INTEGER,
    IsRenewed INTEGER,
    RenewalDueDate DATE,
    DocumentPath TEXT,
    AreaAffectedSqM REAL,
    EmissionLimitTon REAL,
    WaterUsageLimitLiters REAL,
    WasteDisposalMethod TEXT,
    Notes TEXT
);

INSERT INTO environmental_permit_records VALUES (401, 101, 'AirEmission', '2021-04-15', '2024-04-14', 'EnvAgency', 'PERM001', 'Active', 'Install filters', 0.0, '2023-09-30', 1101, 1, '2024-04-10', '/docs/perm001.pdf', 250.0, 0.5, 2000.0, 'Recycling', 'No violations');
INSERT INTO environmental_permit_records VALUES (402, 102, 'WaterDischarge', '2020-07-01', '2023-06-30', 'WaterDept', 'PERM002', 'Expired', 'Monthly reporting', 1500.0, '2022-12-15', 1102, 0, '2023-05-20', '/docs/perm002.pdf', 300.0, 0.0, 3500.0, 'TreatmentPlant', 'Pending renewal');
INSERT INTO environmental_permit_records VALUES (403, 103, 'WasteManagement', '2022-01-20', '2025-01-19', 'WasteBoard', 'PERM003', 'Active', 'Segregate waste', 0.0, '2023-08-10', 1103, 1, '2024-12-15', '/docs/perm003.pdf', 180.0, 0.2, 1500.0, 'Incineration', 'Routine compliance');

-- Taxation records for stations
CREATE TABLE taxation_records (
    TaxRecordID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    TaxYear INTEGER,
    TaxType TEXT,
    TaxAuthority TEXT,
    TaxAmount REAL,
    PaidAmount REAL,
    DueDate DATE,
    PaymentDate DATE,
    PenaltyInterest REAL,
    FilingStatus TEXT,
    AuditorID INTEGER,
    DocumentReference TEXT,
    IsLateFiled INTEGER,
    LateFee REAL,
    RefundAmount REAL,
    Currency TEXT,
    ExchangeRateToUSD REAL,
    Notes TEXT,
    CreatedTimestamp DATE
);

INSERT INTO taxation_records VALUES (501, 101, 2022, 'PropertyTax', 'TaxOffice', 12000.0, 12000.0, '2023-03-31', '2023-03-25', 0.0, 'Filed', 1201, 'DOC501', 0, 0.0, 0.0, 'USD', 1.0, 'All dues settled', '2023-02-15');
INSERT INTO taxation_records VALUES (502, 102, 2022, 'SalesTax', 'TaxOffice', 8500.0, 8000.0, '2023-04-30', '2023-05-05', 150.0, 'Partial', 1202, 'DOC502', 1, 200.0, 0.0, 'USD', 1.0, 'Late payment', '2023-03-01');
INSERT INTO taxation_records VALUES (503, 103, 2022, 'EnvironmentalTax', 'EnvTaxDept', 3000.0, 3000.0, '2023-02-28', '2023-02-20', 0.0, 'Filed', 1203, 'DOC503', 0, 0.0, 0.0, 'USD', 1.0, 'No issues', '2023-01-20');

-- Fuel tax rates by region and fuel type
CREATE TABLE fuel_tax_rates (
    RateID INTEGER PRIMARY KEY,
    Country TEXT,
    Region TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    FuelType TEXT,
    TaxRatePercent REAL,
    BaseRateCentsPerLiter REAL,
    AdditionalSurchargeCents REAL,
    AppliesToDiesel INTEGER,
    AppliesToPetrol INTEGER,
    AppliesToLPG INTEGER,
    AppliesToE85 INTEGER,
    IsSeasonal INTEGER,
    SeasonalStartDate DATE,
    SeasonalEndDate DATE,
    Notes TEXT,
    CreatedByUserID INTEGER,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE
);

INSERT INTO fuel_tax_rates VALUES (601, 'USA', 'Midwest', '2023-01-01', '2023-12-31', 'Diesel', 15.0, 22.5, 5.0, 1, 0, 0, 0, 0, NULL, NULL, 'Standard diesel tax', 2001, '2022-12-01', '2023-01-15');
INSERT INTO fuel_tax_rates VALUES (602, 'USA', 'Northeast', '2023-06-01', '2023-08-31', 'Petrol', 12.5, 20.0, 3.0, 0, 1, 0, 0, 1, '2023-06-01', '2023-08-31', 'Summer surcharge', 2002, '2023-05-20', '2023-05-25');
INSERT INTO fuel_tax_rates VALUES (603, 'Canada', 'Ontario', '2023-01-01', '2023-12-31', 'LPG', 10.0, 18.0, 2.5, 0, 0, 1, 0, 0, NULL, NULL, 'LPG specific rate', 2003, '2022-11-30', '2023-01-10');

-- Regional competition index metrics
CREATE TABLE regional_competition_index (
    IndexID INTEGER PRIMARY KEY,
    Region TEXT,
    Date DATE,
    CompetitorCount INTEGER,
    AvgPrice REAL,
    MedianPrice REAL,
    PriceStdDev REAL,
    MarketSharePercent REAL,
    AvgCustomerRating REAL,
    RatingStdDev REAL,
    FuelQualityScore REAL,
    ServiceScore REAL,
    AdvertisingSpendUSD REAL,
    PromoCount INTEGER,
    AvgPromoDiscountPercent REAL,
    TrafficCount INTEGER,
    AvgFootfallTimeMins REAL,
    IndexScore REAL,
    Notes TEXT,
    CreatedTimestamp DATE
);

INSERT INTO regional_competition_index VALUES (701, 'North', '2023-11-30', 15, 2.85, 2.80, 0.15, 22.5, 4.2, 0.5, 8.5, 7.8, 150000.0, 12, 5.0, 35000, 12.5, 78.3, 'Steady growth', '2023-12-01');
INSERT INTO regional_competition_index VALUES (702, 'South', '2023-11-30', 20, 2.95, 2.90, 0.20, 18.0, 3.9, 0.6, 8.2, 7.5, 180000.0, 15, 6.2, 42000, 13.0, 81.1, 'Increasing competition', '2023-12-01');
INSERT INTO regional_competition_index VALUES (703, 'East', '2023-11-30', 12, 2.80, 2.75, 0.12, 25.0, 4.5, 0.4, 9.0, 8.1, 130000.0, 8, 4.0, 28000, 11.5, 75.6, 'Stable market', '2023-12-01');

-- Branding assets linked to stations
CREATE TABLE branding_assets (
    AssetID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    AssetType TEXT,
    FileName TEXT,
    FileFormat TEXT,
    FileSizeKB INTEGER,
    CreatedDate DATE,
    CreatedByUserID INTEGER,
    LastUpdatedDate DATE,
    LastUpdatedByUserID INTEGER,
    UsagePurpose TEXT,
    PlacementLocation TEXT,
    IsActive INTEGER,
    ExpirationDate DATE,
    LicenseKey TEXT,
    CopyrightHolder TEXT,
    CostUSD REAL,
    ApprovalStatus TEXT,
    Notes TEXT,
    Tags TEXT
);

INSERT INTO branding_assets VALUES (801, 101, 'Logo', 'logo_main', 'png', 120, '2022-03-01', 3001, '2023-01-15', 3002, 'Signage', 'Entrance', 1, '2025-03-01', 'LIC123', 'CompanyInc', 0.0, 'Approved', 'High resolution version', 'logo,brand');
INSERT INTO branding_assets VALUES (802, 102, 'Poster', 'promo_summer', 'pdf', 350, '2023-04-10', 3003, '2023-06-05', 3004, 'Promotional', 'InsideStore', 1, '2024-04-10', 'LIC456', 'CompanyInc', 200.0, 'Pending', 'Seasonal campaign', 'summer,promo');
INSERT INTO branding_assets VALUES (803, 103, 'Video', 'safety_message', 'mp4', 5000, '2021-11-20', 3005, '2022-12-01', 3006, 'Training', 'OnlinePortal', 1, NULL, 'LIC789', 'CompanyInc', 0.0, 'Approved', 'Employee safety video', 'safety,training');

-- Store retail space details within stations
CREATE TABLE store_retail_space (
    StoreID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    SquareMeters REAL,
    SectionName TEXT,
    ProductCategory TEXT,
    ShelfCount INTEGER,
    AverageStockTurnoverDays REAL,
    RestockFrequencyDays INTEGER,
    CapacityUnits INTEGER,
    CurrentStockUnits INTEGER,
    LastRestockDate DATE,
    NextRestockDate DATE,
    SalesPerDayUnits INTEGER,
    RevenuePerDayUSD REAL,
    IsPromotionalSpace INTEGER,
    PromoStartDate DATE,
    PromoEndDate DATE,
    LightingLevelLux INTEGER,
    TemperatureCelsius REAL,
    Notes TEXT
);

INSERT INTO store_retail_space VALUES (901, 101, 45.5, 'Front', 'Snacks', 20, 7.5, 3, 500, 350, '2023-11-20', '2023-11-27', 120, 800.0, 0, NULL, NULL, 300, 22.0, 'High turnover area');
INSERT INTO store_retail_space VALUES (902, 102, 60.0, 'Middle', 'Beverages', 25, 10.0, 5, 800, 600, '2023-11-18', '2023-11-25', 150, 1200.0, 1, '2023-12-01', '2023-12-15', 350, 21.5, 'Current promo active');
INSERT INTO store_retail_space VALUES (903, 103, 30.0, 'Rear', 'Accessories', 15, 12.0, 7, 300, 200, '2023-11-15', '2023-11-22', 80, 500.0, 0, NULL, NULL, 250, 20.0, 'Low traffic zone');