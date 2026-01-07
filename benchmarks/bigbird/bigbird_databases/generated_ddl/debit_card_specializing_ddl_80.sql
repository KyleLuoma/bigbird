-- Fuel card program definitions linked to transactions but not containing transaction details
CREATE TABLE fuel_card_programs
(
    ProgramID INTEGER PRIMARY KEY,
    ProgramName TEXT NOT NULL,
    Issuer TEXT,
    CardBrand TEXT,
    ContactEmail TEXT,
    PhoneNumber TEXT,
    LaunchDate DATE,
    ExpirationDate DATE,
    MaxSpendLimit REAL,
    DailyTransactionLimit INTEGER,
    MonthlyTransactionLimit INTEGER,
    CashbackRate REAL,
    RewardPointsMultiplier REAL,
    SupportedCurrency TEXT,
    OnlineAccessFlag INTEGER,
    MobileAppFlag INTEGER,
    ProgramStatus TEXT,
    TierCount INTEGER,
    EnrollmentFee REAL,
    DocumentationURL TEXT,
    CreationTimestamp DATE,
    LastUpdateTimestamp DATE,
    Notes TEXT
);
INSERT INTO fuel_card_programs VALUES (1, 'PrimeFuel', 'FuelCorp', 'Visa', 'support@fuelcorp.com', '1234567890', '2020-01-15', '2030-12-31', 5000.0, 10, 100, 1.5, 2.0, 'USD', 1, 1, 'Active', 3, 25.0, 'http://fuelcorp.com/prime', '2022-01-01', '2023-06-01', 'Top tier card for fleet owners');
INSERT INTO fuel_card_programs VALUES (2, 'EcoFuel', 'GreenEnergy', 'Mastercard', 'info@greenenergy.com', '0987654321', '2021-06-01', '2031-05-31', 3000.0, 5, 50, 2.0, 1.5, 'USD', 1, 0, 'Active', 2, 15.0, 'http://greenenergy.com/eco', '2022-02-15', '2023-05-20', 'Focus on emissions reduction');
INSERT INTO fuel_card_programs VALUES (3, 'BudgetFuel', 'SaveMore Inc', 'Discover', 'contact@savemore.com', '5551234567', '2019-03-10', '2029-03-09', 2000.0, 8, 80, 0.5, 1.0, 'USD', 0, 1, 'Inactive', 1, 0.0, 'http://savemore.com/budget', '2021-11-30', '2023-04-10', 'Discontinued program');

-- Maintenance tasks catalog for fuel stations
CREATE TABLE fuel_station_maintenance_tasks
(
    TaskID INTEGER PRIMARY KEY,
    TaskName TEXT NOT NULL,
    Description TEXT,
    FrequencyDays INTEGER,
    EstimatedDurationHours REAL,
    RequiredSkillLevel TEXT,
    SafetyEquipmentRequired TEXT,
    CostEstimate REAL,
    VendorPreferred TEXT,
    LastPerformedDate DATE,
    NextDueDate DATE,
    IsRegulatory INTEGER,
    RegulatoryBody TEXT,
    DocumentationURL TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    ActiveFlag INTEGER,
    PriorityLevel TEXT,
    DepartmentResponsible TEXT,
    ToolKitRequired TEXT,
    NotificationThresholdDays INTEGER,
    Remarks TEXT
);
INSERT INTO fuel_station_maintenance_tasks VALUES (1, 'PumpCalibration', 'Calibrate fuel pumps for accuracy', 180, 2.5, 'Level2', 'ProtectiveGloves', 350.0, 'CalibrTech', '2023-01-15', '2023-07-14', 1, 'EPA', 'http://example.com/pumpcal', 'admin', '2022-12-01', 'admin', '2023-01-20', 1, 'High', 'Maintenance', 'CalibrationKit', 7, 'Performed quarterly');
INSERT INTO fuel_station_maintenance_tasks VALUES (2, 'LeakInspection', 'Inspect underground storage tanks for leaks', 365, 8.0, 'Level3', 'SafetySuit', 1200.0, 'LeakDetectCo', '2022-11-01', '2023-11-01', 1, 'OSHA', 'http://example.com/leakinspect', 'maintenance_mgr', '2022-10-15', 'maintenance_mgr', '2022-11-05', 1, 'Critical', 'Safety', 'LeakDetectionKit', 30, 'Annual mandatory');
INSERT INTO fuel_station_maintenance_tasks VALUES (3, 'SignageCleaning', 'Clean exterior signage and lighting', 30, 1.0, 'Level1', 'None', 75.0, 'CleanFast', '2023-03-10', '2023-04-09', 0, NULL, NULL, 'staff', '2023-03-08', 'staff', '2023-03-11', 1, 'Low', 'Operations', 'CleaningSupplies', 3, 'Monthly routine');

-- Corporate client account registry (distinct from individual customers)
CREATE TABLE corporate_client_accounts
(
    CorpAccountID INTEGER PRIMARY KEY,
    CompanyName TEXT NOT NULL,
    TaxID TEXT,
    IncorporationDate DATE,
    HeadquartersCountry TEXT,
    HeadquartersCity TEXT,
    PrimaryContactName TEXT,
    PrimaryContactEmail TEXT,
    PrimaryContactPhone TEXT,
    BillingContactName TEXT,
    BillingContactEmail TEXT,
    BillingContactPhone TEXT,
    AccountStatus TEXT,
    CreditLimit REAL,
    CurrentBalance REAL,
    PaymentTerms TEXT,
    PreferredFuelType TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    DiscountRate REAL,
    LoyaltyProgramID INTEGER,
    AccountManagerID INTEGER,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE,
    Notes TEXT,
    IndustrySector TEXT,
    EmployeeCount INTEGER,
    AnnualRevenue REAL,
    SustainabilityScore INTEGER,
    DataSharingConsent INTEGER
);
INSERT INTO corporate_client_accounts VALUES (1001, 'Transit Logistics Ltd', 'TX123456', '2005-04-20', 'USA', 'NewYork', 'Alice Johnson', 'alice.johnson@transitlog.com', '2125550123', 'Bob Smith', 'bob.smith@transitlog.com', '2125550456', 'Active', 250000.0, 45000.0, 'Net30', 'Diesel', '2022-01-01', '2027-12-31', 5.0, 2, 501, '2022-01-01', '2023-05-01', 'Key account for regional deliveries', 'Transportation', 350, 12000000.0, 78, 1);
INSERT INTO corporate_client_accounts VALUES (1002, 'Green Gardens Inc', 'TX987654', '2010-09-15', 'Canada', 'Toronto', 'Carlos Mendes', 'carlos.mendes@greengardens.ca', '4165550198', 'Diana Lee', 'diana.lee@greengardens.ca', '4165550222', 'Active', 150000.0, 12000.0, 'Net45', 'E85', '2023-03-01', '2028-02-28', 7.5, 5, 502, '2023-03-01', '2023-06-10', 'Focus on renewable fuels', 'Agriculture', 120, 5400000.0, 85, 1);
INSERT INTO corporate_client_accounts VALUES (1003, 'Metro Construction Co', 'TX555333', '1998-11-30', 'USA', 'Chicago', 'Emily Davis', 'emily.davis@metrocon.com', '3125550678', 'Frank Wilson', 'frank.wilson@metrocon.com', '3125550722', 'Inactive', 300000.0, 0.0, 'Net60', 'Diesel', '2020-05-15', '2025-05-14', 0.0, NULL, NULL, '2020-05-01', '2022-12-31', 'Contract paused due to project delay', 'Construction', 500, 25000000.0, 60, 0);

-- Vehicle inspection standards reference data
CREATE TABLE vehicle_inspection_standards
(
    StandardID INTEGER PRIMARY KEY,
    StandardName TEXT NOT NULL,
    Description TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    GoverningBody TEXT,
    InspectionFrequencyMonths INTEGER,
    EmissionTestRequired INTEGER,
    BrakeTestRequired INTEGER,
    LightSystemTestRequired INTEGER,
    TireTreadMinimumMM REAL,
    MaxVehicleWeightKG REAL,
    SafetyRatingThreshold INTEGER,
    DocumentationURL TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    ActiveFlag INTEGER,
    VersionNumber TEXT,
    ApplicableVehicleClass TEXT,
    RegionCode TEXT,
    EnforcementLevel TEXT,
    Notes TEXT,
    ReferenceDocumentID INTEGER,
    RevisionHistory TEXT,
    ComplianceScoreWeight REAL,
    PenaltyScale TEXT,
    TrainingRequirementHours REAL,
    AuditFrequencyMonths INTEGER
);
INSERT INTO vehicle_inspection_standards VALUES (1, 'StandardA', 'Baseline inspection for passenger vehicles', '2022-01-01', '2032-12-31', 'DOT', 12, 1, 1, 1, 1.6, 3500.0, 4, 'http://dot.gov/stdA', 'admin', '2022-01-01', 'admin', '2023-04-01', 1, 'v1.0', 'Passenger', 'US', 'Mandatory', 'Applies nationwide', 101, 'Initial release', 0.8, 'Tiered', 2.0, 12);
INSERT INTO vehicle_inspection_standards VALUES (2, 'StandardB', 'Enhanced emission standards for commercial trucks', '2023-06-01', '2035-05-31', 'EPA', 6, 1, 1, 0, 2.0, 20000.0, 5, 'http://epa.gov/stdB', 'engineer', '2023-06-01', 'engineer', '2023-07-15', 1, 'v2.1', 'Commercial', 'US', 'Mandatory', 'Includes diesel particulate filter check', 102, 'Updated to include NOx limits', 0.9, 'Strict', 3.5, 6);
INSERT INTO vehicle_inspection_standards VALUES (3, 'StandardC', 'Light vehicle safety check for EU market', '2021-03-15', '2031-03-14', 'EUROCAR', 24, 1, 1, 1, 1.2, 2500.0, 3, 'http://europa.eu/stdC', 'europe_manager', '2021-03-15', 'europe_manager', '2022-01-10', 1, 'v3.0', 'Passenger', 'EU', 'Mandatory', 'EU specific lighting requirements', 103, 'Minor revision on tire specs', 0.85, 'Moderate', 1.5, 12);

-- Regional fuel supply routes linking stations and depots
CREATE TABLE regional_fuel_supply_routes
(
    RouteID INTEGER PRIMARY KEY,
    RouteName TEXT NOT NULL,
    OriginDepotID INTEGER,
    DestinationStationID INTEGER,
    DistanceKM REAL,
    EstimatedTransitHours REAL,
    PrimaryTransportMode TEXT,
    CapacityLitersPerTrip REAL,
    MaxDailyTrips INTEGER,
    AvgFuelLossPercent REAL,
    RouteStatus TEXT,
    StartEffectiveDate DATE,
    EndEffectiveDate DATE,
    RegulatoryComplianceFlag INTEGER,
    ComplianceAgency TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    ActiveFlag INTEGER,
    HazardousMaterialFlag INTEGER,
    InsurancePolicyID INTEGER,
    ScheduledMaintenanceWindow TEXT,
    CostPerKm REAL,
    AvgTemperatureC REAL,
    AvgPressureBar REAL,
    FuelType TEXT,
    RoutePriority INTEGER,
    Notes TEXT,
    GeoJSONPath TEXT,
    LastInspectedDate DATE,
    InspectorName TEXT
);
INSERT INTO regional_fuel_supply_routes VALUES (501, 'NorthEast Corridor', 10, 2001, 350.5, 5.2, 'Truck', 150000.0, 4, 0.3, 'Active', '2020-01-01', '2030-12-31', 1, 'DOT', 'logistics_mgr', '2020-01-01', 'logistics_mgr', '2023-03-01', 1, 0, 301, 'NightShift', 0.85, -5.0, 1.5, 'Diesel', 2, 'Primary supply line for NY stations', '{"type":"LineString","coordinates":[...]}' , '2023-02-20', 'John Doe');
INSERT INTO regional_fuel_supply_routes VALUES (502, 'SouthWest Loop', 12, 2005, 420.0, 6.0, 'Rail', 500000.0, 2, 0.5, 'Active', '2021-06-15', '2035-06-14', 1, 'EPA', 'operations_lead', '2021-06-15', 'operations_lead', '2023-04-10', 1, 1, 305, 'Weekend', 1.10, 22.0, 2.0, 'E85', 1, 'Supports eco‑fuel stations in CA', '{"type":"LineString","coordinates":[...]}' , '2023-03-30', 'Maria Lee');
INSERT INTO regional_fuel_supply_routes VALUES (503, 'Midwest Connector', 14, 2010, 275.3, 4.5, 'Truck', 200000.0, 3, 0.2, 'Planned', '2024-01-01', '2034-12-31', 0, NULL, 'planner', '2023-07-01', 'planner', '2023-07-15', 0, 0, NULL, NULL, 0.90, 10.0, 1.8, 'Diesel', 3, 'Future expansion to Illinois', '{"type":"LineString","coordinates":[...]}' , NULL, NULL);

-- Payment processor limits for card transactions
CREATE TABLE payment_processor_limits
(
    ProcessorID INTEGER PRIMARY KEY,
    ProcessorName TEXT NOT NULL,
    CardBrand TEXT,
    DailyTransactionCap INTEGER,
    MonthlyTransactionCap INTEGER,
    SingleTransactionMax REAL,
    SingleTransactionMin REAL,
    SettlementPeriodDays INTEGER,
    ChargebackWindowDays INTEGER,
    FraudDetectionLevel TEXT,
    SupportedCurrencies TEXT,
    InternationalProcessingFlag INTEGER,
    CurrencyConversionFeePercent REAL,
    TransactionFeeFixed REAL,
    TransactionFeePercent REAL,
    EnabledForEVCharging INTEGER,
    EnabledForECommerce INTEGER,
    EnabledForPOS INTEGER,
    ComplianceCertification TEXT,
    RegulatoryRegion TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    ActiveFlag INTEGER,
    Notes TEXT,
    SupportContactEmail TEXT,
    SupportPhoneNumber TEXT,
    DocumentationURL TEXT,
    SLAResponseHours INTEGER,
    MaxConcurrentSessions INTEGER,
    VersionNumber TEXT,
    LastAuditDate DATE,
    AuditorName TEXT
);
INSERT INTO payment_processor_limits VALUES (1, 'FastPay', 'Visa', 10000, 200000, 5000.0, 1.0, 2, 30, 'High', 'USD,EUR', 1, 0.5, 0.30, 1.2, 1, 1, 1, 'PCI-DSS', 'US', 'admin', '2022-05-01', 'admin', '2023-05-01', 1, 'Primary processor for fleet cards', 'support@fastpay.com', '8005550100', 'http://fastpay.com/docs', 24, 5000, 'v3.4', '2023-04-15', 'Laura Smith');
INSERT INTO payment_processor_limits VALUES (2, 'SecureTrans', 'Mastercard', 8000, 150000, 3000.0, 0.5, 3, 45, 'Medium', 'USD,CAD', 0, 0.6, 0.25, 1.0, 0, 1, 1, 'PCI-DSS', 'CA', 'admin', '2021-09-15', 'admin', '2023-06-10', 1, 'Used for Canadian stations', 'help@securetrans.ca', '8005550200', 'http://securetrans.ca/docs', 48, 3000, 'v2.9', '2023-05-20', 'Mike Chen');
INSERT INTO payment_processor_limits VALUES (3, 'GlobalPay', 'Discover', 12000, 250000, 7000.0, 2.0, 1, 60, 'VeryHigh', 'USD,GBP,JPY', 1, 0.4, 0.35, 1.5, 1, 1, 0, 'PCI-DSS', 'EU', 'admin', '2020-03-10', 'admin', '2023-07-01', 1, 'Supports EU transactions', 'contact@globalpay.eu', '8005550300', 'http://globalpay.eu/info', 12, 6000, 'v4.1', '2023-06-30', 'Sofia Martinez');

-- Loyalty program tier definitions (stand‑alone from existing loyalty_programs)
CREATE TABLE loyalty_program_tiers
(
    TierID INTEGER PRIMARY KEY,
    ProgramID INTEGER,
    TierName TEXT NOT NULL,
    MinimumPoints INTEGER,
    BonusMultiplier REAL,
    FreeFuelLiters REAL,
    DiscountPercent REAL,
    AccessLevel TEXT,
    ExpirationDays INTEGER,
    EligibleForPromotions INTEGER,
    PriorityRank INTEGER,
    TierColorCode TEXT,
    NotificationTemplateID INTEGER,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    ActiveFlag INTEGER,
    Description TEXT,
    RedemptionRate REAL,
    MaxMonthlyRedemptions INTEGER,
    SpecialEventAccessFlag INTEGER,
    PartnerOffersCount INTEGER,
    AutoUpgradeFlag INTEGER,
    TierIconURL TEXT,
    EligibilityCriteria TEXT,
    PointsEarnRate REAL,
    CashbackPercent REAL,
    TierValidityYears INTEGER,
    Notes TEXT,
    VersionNumber TEXT
);
INSERT INTO loyalty_program_tiers VALUES (1, 2, 'Silver', 0, 1.0, 0.0, 2.0, 'Standard', 365, 1, 3, '#C0C0C0', 101, 'admin', '2022-01-01', 'admin', '2023-01-10', 1, 'Entry level tier', 0.01, 5, 0, 10, 0, 'http://example.com/icons/silver.png', 'Sign‑up only', 1.0, 0.0, 1, 'Basic tier for new members', 'v1');
INSERT INTO loyalty_program_tiers VALUES (2, 2, 'Gold', 5000, 1.2, 5.0, 5.0, 'Premium', 730, 1, 2, '#FFD700', 102, 'admin', '2022-01-01', 'admin', '2023-01-12', 1, 'Mid level tier', 0.02, 10, 1, 25, 1, 'http://example.com/icons/gold.png', 'Spend $10k annually', 1.5, 0.5, 2, 'Rewarding frequent customers', 'v1');
INSERT INTO loyalty_program_tiers VALUES (3, 2, 'Platinum', 20000, 1.5, 15.0, 10.0, 'Elite', 1095, 1, 1, '#E5E4E2', 103, 'admin', '2022-01-01', 'admin', '2023-01-15', 1, 'Top tier with maximum benefits', 0.05, 20, 1, 50, 1, 'http://example.com/icons/platinum.png', 'Spend $25k annually', 2.0, 1.0, 3, 'Exclusive privileges for high spenders', 'v1');

-- Environmental report submissions tracking
CREATE TABLE environmental_report_submissions
(
    SubmissionID INTEGER PRIMARY KEY,
    ReportType TEXT NOT NULL,
    SubmissionDate DATE,
    FilingPeriodStart DATE,
    FilingPeriodEnd DATE,
    ReportingEntityID INTEGER,
    RegionCode TEXT,
    ComplianceStatus TEXT,
    ReviewerID INTEGER,
    ReviewDate DATE,
    ApprovalStatus TEXT,
    ApprovedBy INTEGER,
    ApprovalDate DATE,
    DocumentURL TEXT,
    SupportingDataURL TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    ActiveFlag INTEGER,
    Comments TEXT,
    EmissionVolumeTonnes REAL,
    WasteGeneratedTonnes REAL,
    EnergyConsumedMWh REAL,
    WaterUsageCubicMeters REAL,
    RenewableEnergyPercentage REAL,
    RegulatoryBody TEXT,
    PenaltyAmount REAL,
    FollowUpActionRequired INTEGER,
    FollowUpDueDate DATE,
    FollowUpResponsibleID INTEGER,
    AuditTrail TEXT,
    VersionNumber TEXT,
    Tags TEXT,
    ConfidentialFlag INTEGER,
    SubmissionMethod TEXT,
    FileChecksum TEXT
);
INSERT INTO environmental_report_submissions VALUES (10001, 'AirQuality', '2023-03-15', '2023-01-01', '2023-01-31', 2001, 'US-CA', 'Compliant', 501, '2023-04-01', 'Approved', 601, '2023-04-02', 'http://reports.example.com/air2023.pdf', 'http://data.example.com/air2023.zip', 'env_officer', '2023-03-15', 'env_officer', '2023-04-01', 1, 'All thresholds met', 120.5, 0.0, 5000.0, 3000.0, 20.0, 'EPA', 0.0, 0, NULL, NULL, 'Created v1', 'air,2023', 0, 'Electronic', 'abc123def456');
INSERT INTO environmental_report_submissions VALUES (10002, 'WaterUsage', '2023-04-20', '2023-02-01', '2023-02-28', 2002, 'US-NY', 'NonCompliant', 502, '2023-05-05', 'Pending', NULL, NULL, 'http://reports.example.com/water2023.pdf', 'http://data.example.com/water2023.zip', 'env_officer', '2023-04-20', 'env_officer', '2023-05-01', 1, 'Exceeded usage limits', 0.0, 5.0, 0.0, 4500.0, 5.0, 'NYDEC', 25000.0, 1, '2023-06-01', 702, 'Created v1', 'water,2023', 0, 'Electronic', 'def789ghi012');
INSERT INTO environmental_report_submissions VALUES (10003, 'EnergyConsumption', '2023-05-10', '2023-03-01', '2023-03-31', 2003, 'US-TX', 'Compliant', 503, '2023-06-01', 'Approved', 603, '2023-06-02', 'http://reports.example.com/energy2023.pdf', 'http://data.example.com/energy2023.zip', 'env_officer', '2023-05-10', 'env_officer', '2023-06-01', 1, 'Within renewable target', 0.0, 0.0, 8000.0, 0.0, 35.0, 'ERCOT', 0.0, 0, NULL, NULL, 'Created v1', 'energy,2023', 0, 'Electronic', 'ghi345jkl678');

-- Daily energy market price records per region
CREATE TABLE energy_market_daily_prices
(
    PriceID INTEGER PRIMARY KEY,
    MarketDate DATE NOT NULL,
    RegionCode TEXT NOT NULL,
    EnergyType TEXT,
    OpenPrice REAL,
    HighPrice REAL,
    LowPrice REAL,
    ClosePrice REAL,
    VolumeMWh REAL,
    SettlementPrice REAL,
    PriceCurrency TEXT,
    PriceSource TEXT,
    AdjustedFlag INTEGER,
    AdjustmentFactor REAL,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE,
    DataQualityScore INTEGER,
    Notes TEXT,
    VolatilityIndex REAL,
    PeakDemandMWh REAL,
    OffPeakDemandMWh REAL,
    MarketStatus TEXT,
    RegulatoryBoard TEXT,
    PublicationTime TEXT,
    SourceURL TEXT,
    FileChecksum TEXT,
    VersionNumber TEXT,
    AnalystID INTEGER,
    ReviewStatus TEXT,
    ReviewDate DATE,
    ReviewComments TEXT,
    ConfidenceLevel REAL,
    ForecastedClosePrice REAL,
    ForecastErrorPercent REAL,
    IsHistorical INTEGER,
    LegacyID INTEGER,
    BatchID INTEGER,
    DataProvider TEXT
);
INSERT INTO energy_market_daily_prices VALUES (1, '2023-06-01', 'US-CA', 'Electricity', 55.2, 57.0, 54.5, 56.8, 12000.0, 56.5, 'USD', 'ISO', 0, 1.0, '2023-06-01', '2023-06-02', 95, 'Stable market day', 0.12, 13000.0, 9000.0, 'Open', 'CAISO', '08:00', 'http://marketdata.example.com/ca_20230601.csv', 'chk123', 'v1', 101, 'Approved', '2023-06-02', 'No issues', 0.98, 57.1, 0.5, 1, NULL, 5001, 'DataHub');
INSERT INTO energy_market_daily_prices VALUES (2, '2023-06-01', 'US-NY', 'Electricity', 48.0, 49.5, 47.2, 48.9, 15000.0, 48.7, 'USD', 'ISO', 0, 1.0, '2023-06-01', '2023-06-02', 92, 'Slight upward trend', 0.15, 16000.0, 14000.0, 'Open', 'NYISO', '08:15', 'http://marketdata.example.com/ny_20230601.csv', 'chk456', 'v1', 102, 'Approved', '2023-06-02', 'Reviewed', 0.96, 49.2, 0.6, 1, NULL, 5002, 'DataHub');
INSERT INTO energy_market_daily_prices VALUES (3, '2023-06-01', 'US-TX', 'Electricity', 42.5, 44.0, 41.8, 43.3, 18000.0, 43.0, 'USD', 'ISO', 0, 1.0, '2023-06-01', '2023-06-02', 90, 'High volatility', 0.30, 19000.0, 17000.0, 'Open', 'ERCOT', '08:30', 'http://marketdata.example.com/tx_20230601.csv', 'chk789', 'v1', 103, 'Approved', '2023-06-02', 'High volatility noted', 0.94, 44.5, 1.2, 1, NULL, 5003, 'DataHub');

-- Driver license renewal records
CREATE TABLE driver_license_renewals
(
    RenewalID INTEGER PRIMARY KEY,
    DriverID INTEGER NOT NULL,
    LicenseNumber TEXT NOT NULL,
    IssueDate DATE,
    ExpirationDate DATE,
    RenewalDate DATE,
    RenewalMethod TEXT,
    FeePaid REAL,
    PaymentProcessorID INTEGER,
    PaymentReference TEXT,
    IssuingAuthority TEXT,
    StateCode TEXT,
    Country TEXT,
    ClassCode TEXT,
    Endorsements TEXT,
    VisionTestPassed INTEGER,
    PhysicalTestPassed INTEGER,
    BackgroundCheckCleared INTEGER,
    RenewalStatus TEXT,
    Notes TEXT,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE,
    ProcessedBy TEXT,
    ProcessedDate DATE,
    AuditTrail TEXT,
    ConfirmationNumber TEXT,
    DeliveryMethod TEXT,
    SentToMailFlag INTEGER,
    SentToEmailFlag INTEGER,
    EmailAddress TEXT,
    PhoneNumber TEXT,
    AddressLine1 TEXT,
    City TEXT,
    PostalCode TEXT,
    RegionCode TEXT,
    ConfirmationSentDate DATE,
    ConfirmationReceivedDate DATE,
    RenewalCycleYears INTEGER,
    ReminderSentFlag INTEGER,
    ReminderDate DATE,
    ReminderMethod TEXT,
    VersionNumber TEXT,
    ApprovedBy INTEGER,
    ApprovalDate DATE,
    Remarks TEXT
);
INSERT INTO driver_license_renewals VALUES (9001, 301, 'DL1234567', '2018-04-10', '2028-04-09', '2028-03-20', 'Online', 85.0, 1, 'PAY9001', 'DMV', 'CA', 'USA', 'C', 'A,B', 1, 1, 1, 'Completed', 'No issues', '2028-03-20', '2028-03-20', 'clerk1', '2028-03-20', 'Created v1', 'CONF9001', 'Email', 0, 1, 'driver301@example.com', '5551234567', '123 Main St', 'Los Angeles', '90001', 'US-CA', '2028-03-21', '2028-03-22', 10, 1, '2028-03-10', 'Email', 'v1', 501, '2028-03-20', 'All checks passed');
INSERT INTO driver_license_renewals VALUES (9002, 302, 'DL7654321', '2019-07-15', '2029-07-14', '2029-07-01', 'InPerson', 90.0, 2, 'PAY9002', 'DMV', 'NY', 'USA', 'B', '', 1, 1, 1, 'Pending', 'Awaiting payment confirmation', '2029-07-01', '2029-07-01', 'clerk2', '2029-07-01', 'Created v1', 'CONF9002', 'Mail', 1, 0, NULL, '5559876543', '456 Elm St', 'New York', '10001', 'US-NY', '2029-07-02', NULL, 10, 0, NULL, NULL, 'v1', NULL, NULL, 'Pending payment');
INSERT INTO driver_license_renewals VALUES (9003, 303, 'DL1122334', '2020-01-20', '2030-01-19', '2029-12-30', 'Mail', 80.0, 1, 'PAY9003', 'DMV', 'TX', 'USA', 'A', 'C', 1, 1, 1, 'Completed', 'Renewed early', '2029-12-30', '2029-12-30', 'clerk3', '2029-12-30', 'Created v1', 'CONF9003', 'Mail', 1, 0, NULL, '5553210987', '789 Oak Ave', 'Houston', '77002', 'US-TX', '2029-12-31', '2030-01-01', 10, 1, '2029-12-15', 'Mail', 'v1', 502, '2029-12-30', 'Early renewal approved');