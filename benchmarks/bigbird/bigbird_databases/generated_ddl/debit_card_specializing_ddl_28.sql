-- Customer contact preferences for communication channels
CREATE TABLE customer_contact_preferences (
    PreferenceID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    PreferredChannel TEXT,
    EmailOptIn INTEGER,
    SMSOptIn INTEGER,
    PushOptIn INTEGER,
    PreferredLanguage TEXT,
    ContactTimeWindowStart TEXT,
    ContactTimeWindowEnd TEXT,
    PreferredContactDay TEXT,
    MarketingConsent INTEGER,
    SurveyParticipation INTEGER,
    DataSharingConsent INTEGER,
    PreferredContactMethodDetail TEXT,
    PreferredCurrency TEXT,
    PreferredUnits TEXT,
    PreferredCommunicationFrequency TEXT,
    DoNotDisturbStart TEXT,
    DoNotDisturbEnd TEXT,
    Notes TEXT,
    CreatedDate DATE,
    UpdatedDate DATE
);

INSERT INTO customer_contact_preferences VALUES (1, 101, 'Email', 1, 0, 1, 'English', '08:00', '20:00', 'Weekday', 1, 1, 0, 'Newsletter', 'USD', 'Metric', 'Weekly', '22:00', '06:00', 'Prefers email only', '2023-01-01', '2023-01-02');
INSERT INTO customer_contact_preferences VALUES (2, 102, 'SMS', 0, 1, 0, 'Spanish', '09:00', '18:00', 'Weekend', 0, 0, 1, 'Promotions', 'EUR', 'Imperial', 'Monthly', '23:00', '07:00', 'Do not contact after 23:00', '2023-02-10', '2023-02-11');
INSERT INTO customer_contact_preferences VALUES (3, 103, 'Push', 1, 1, 1, 'French', '07:00', '22:00', 'Any', 1, 0, 1, 'Alerts', 'GBP', 'Metric', 'Daily', '21:00', '08:00', 'All channels enabled', '2023-03-15', '2023-03-16');

-- Energy metrics recorded for each gas station
CREATE TABLE gas_station_energy_metrics (
    MetricID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    Date DATE,
    TotalEnergyConsumption REAL,
    RenewableEnergyShare REAL,
    PeakDemandKW REAL,
    AvgVoltage REAL,
    AvgCurrent REAL,
    PowerFactor REAL,
    CO2Emissions REAL,
    EnergyCost REAL,
    GridReliabilityScore REAL,
    BatteryStorageLevel REAL,
    SolarGeneration REAL,
    WindGeneration REAL,
    EnergyEfficiencyRating TEXT,
    Notes TEXT,
    RecordedBy TEXT,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE,
    MaintenanceFlag INTEGER
);

INSERT INTO gas_station_energy_metrics VALUES (1, 201, '2023-06-01', 1500.5, 0.25, 300.0, 230.0, 130.0, 0.98, 1200.0, 500.0, 95.5, 80.0, 20.0, 0.0, 'A', 'Initial reading', 'system', '2023-06-01', '2023-06-01', 0);
INSERT INTO gas_station_energy_metrics VALUES (2, 202, '2023-06-01', 1750.0, 0.30, 350.0, 235.0, 140.0, 0.97, 1400.0, 520.0, 96.0, 85.0, 25.0, 0.0, 'B', 'Follow up', 'system', '2023-06-01', '2023-06-01', 0);
INSERT INTO gas_station_energy_metrics VALUES (3, 203, '2023-06-01', 1600.2, 0.20, 320.0, 228.0, 135.0, 0.99, 1300.0, 510.0, 94.8, 75.0, 15.0, 0.0, 'C', 'Checked by staff', 'operator', '2023-06-01', '2023-06-02', 1);

-- Tiered pricing information for products
CREATE TABLE product_pricing_tiers (
    TierID INTEGER PRIMARY KEY,
    ProductID INTEGER,
    TierName TEXT,
    MinQuantity INTEGER,
    MaxQuantity INTEGER,
    UnitPrice REAL,
    DiscountPercent REAL,
    EffectiveStartDate DATE,
    EffectiveEndDate DATE,
    Currency TEXT,
    PriceCategory TEXT,
    Region TEXT,
    Channel TEXT,
    PromotionCode TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    IsActive INTEGER,
    Comments TEXT,
    TaxRate REAL
);

INSERT INTO product_pricing_tiers VALUES (1, 301, 'Standard', 1, 99, 2.99, 0.0, '2023-01-01', '2023-12-31', 'USD', 'Retail', 'NorthAmerica', 'Online', 'admin', '2023-01-01', 'admin', '2023-01-01', 1, 'Base tier', 0.07);
INSERT INTO product_pricing_tiers VALUES (2, 301, 'Bulk', 100, 999, 2.49, 5.0, '2023-01-01', '2023-12-31', 'USD', 'Wholesale', 'NorthAmerica', 'Direct', 'admin', '2023-01-01', 'admin', '2023-01-01', 1, 'Bulk discount', 0.07);
INSERT INTO product_pricing_tiers VALUES (3, 302, 'Premium', 1, 500, 5.99, 0.0, '2023-02-01', '2023-12-31', 'EUR', 'Retail', 'Europe', 'InStore', 'admin', '2023-02-01', 'admin', '2023-02-01', 1, 'Premium product tier', 0.20);

-- Audit trail for transaction changes
CREATE TABLE transaction_audit_trail (
    AuditID INTEGER PRIMARY KEY,
    TransactionID INTEGER,
    ChangeTimestamp DATE,
    ChangedBy TEXT,
    ChangeType TEXT,
    OldValue TEXT,
    NewValue TEXT,
    Reason TEXT,
    IPAddress TEXT,
    DeviceID TEXT,
    GeoLocation TEXT,
    SessionID TEXT,
    AuditNotes TEXT,
    IsCritical INTEGER,
    ReviewStatus TEXT,
    Reviewer TEXT,
    ReviewDate DATE,
    RevertFlag INTEGER,
    RevertDate DATE,
    AdditionalInfo TEXT,
    ProcessedFlag INTEGER
);

INSERT INTO transaction_audit_trail VALUES (1, 4001, '2023-07-01', 'system', 'Update', 'Amount=100', 'Amount=110', 'Price correction', '192.168.1.10', 'dev123', '45.0,-93.0', 'sess001', 'Auto corrected', 1, 'Reviewed', 'auditor1', '2023-07-02', 0, NULL, 'No extra info', 1);
INSERT INTO transaction_audit_trail VALUES (2, 4002, '2023-07-02', 'operator', 'Delete', 'Record exists', 'NULL', 'User request', '192.168.1.11', 'dev124', '46.0,-94.0', 'sess002', 'Deleted by request', 0, 'Pending', NULL, NULL, 0, NULL, 'Awaiting approval', 0);
INSERT INTO transaction_audit_trail VALUES (3, 4003, '2023-07-03', 'system', 'Insert', 'NULL', 'Amount=150', 'Initial load', '192.168.1.12', 'dev125', '47.0,-95.0', 'sess003', 'Inserted automatically', 0, 'Auto', 'system', '2023-07-03', 0, NULL, 'Batch import', 1);

-- Records of issued payment cards
CREATE TABLE card_issuance_records (
    CardRecordID INTEGER PRIMARY KEY,
    CardID INTEGER,
    CustomerID INTEGER,
    IssueDate DATE,
    ExpirationDate DATE,
    CardType TEXT,
    CardStatus TEXT,
    IssuerBank TEXT,
    CardLimit REAL,
    CreditLimit REAL,
    DebitLimit REAL,
    Currency TEXT,
    ContactlessSupported INTEGER,
    ChipEmbedded INTEGER,
    MagneticStripe INTEGER,
    PINSet INTEGER,
    ActivationDate DATE,
    DeactivationDate DATE,
    BlockReason TEXT,
    ReplacementFlag INTEGER,
    ReplacementCardID INTEGER,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE
);

INSERT INTO card_issuance_records VALUES (1, 5001, 101, '2022-01-15', '2025-01-15', 'Visa', 'Active', 'BankA', 5000.0, 3000.0, 2000.0, 'USD', 1, 1, 1, 1, '2022-01-16', NULL, NULL, 0, NULL, 'First issued card', 'system', '2022-01-15');
INSERT INTO card_issuance_records VALUES (2, 5002, 102, '2022-03-10', '2025-03-10', 'MasterCard', 'Blocked', 'BankB', 4000.0, 2500.0, 1500.0, 'EUR', 1, 1, 1, 1, '2022-03-11', NULL, 'Suspicious activity', 0, NULL, 'Blocked after fraud', 'system', '2022-03-10');
INSERT INTO card_issuance_records VALUES (3, 5003, 103, '2023-05-05', '2026-05-05', 'Amex', 'Active', 'BankC', 6000.0, 3500.0, 2500.0, 'GBP', 0, 1, 1, 0, NULL, NULL, NULL, 0, NULL, 'Contactless disabled', 'operator', '2023-05-05');

-- Definitions of fuel types used at stations
CREATE TABLE fuel_type_definitions (
    FuelTypeID INTEGER PRIMARY KEY,
    Code TEXT,
    Description TEXT,
    EnergyContentMJPerL REAL,
    OctaneRating INTEGER,
    CetaneNumber INTEGER,
    SulfurContentPPM REAL,
    RenewableContentPercent REAL,
    EmissionFactorCO2KgPerL REAL,
    RecommendedEngine TEXT,
    StorageTemperatureC REAL,
    FlashPointC REAL,
    DensityKgPerL REAL,
    PricingUnit TEXT,
    TaxRatePercent REAL,
    IsActive INTEGER,
    CreatedDate DATE,
    UpdatedDate DATE,
    RegulatoryBody TEXT,
    ComplianceNotes TEXT,
    HazardClass TEXT,
    SafetyDataSheetURL TEXT
);

INSERT INTO fuel_type_definitions VALUES (1, 'UNL', 'Unleaded gasoline', 34.2, 95, NULL, 5.0, 0.0, 2.31, 'Petrol', -2.0, -40.0, 0.74, 'Liter', 0.10, 1, '2022-01-01', '2023-01-01', 'EPA', 'Meets standard', '3', 'http://example.com/sds_unl.pdf');
INSERT INTO fuel_type_definitions VALUES (2, 'DSL', 'Diesel', 38.6, NULL, 50, 10.0, 0.0, 2.68, 'Diesel', 10.0, 55.0, 0.85, 'Liter', 0.12, 1, '2022-01-01', '2023-01-01', 'EPA', 'Meets standard', '3', 'http://example.com/sds_dsl.pdf');
INSERT INTO fuel_type_definitions VALUES (3, 'E85', '85% Ethanol blend', 33.0, 85, NULL, 0.0, 85.0, 1.90, 'FlexFuel', -5.0, -30.0, 0.76, 'Liter', 0.08, 1, '2022-01-01', '2023-01-01', 'EPA', 'Renewable fuel', '3', 'http://example.com/sds_e85.pdf');

-- Regional tax exemptions applicable to fuel sales
CREATE TABLE regional_tax_exemptions (
    ExemptionID INTEGER PRIMARY KEY,
    Region TEXT,
    TaxType TEXT,
    ExemptionCode TEXT,
    Description TEXT,
    StartDate DATE,
    EndDate DATE,
    PercentageExempt REAL,
    MaxAmount REAL,
    EligibilityCriteria TEXT,
    AppliedToCustomerSegment TEXT,
    AppliedToProductCategory TEXT,
    ApprovalAuthority TEXT,
    DocumentReference TEXT,
    IsActive INTEGER,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    Notes TEXT,
    ReviewFrequencyMonths INTEGER
);

INSERT INTO regional_tax_exemptions VALUES (1, 'CA', 'FuelTax', 'EX001', 'Agricultural exemption', '2023-01-01', '2023-12-31', 100.0, 5000.0, 'Farm ownership', 'Agriculture', 'Diesel', 'DeptOfAgriculture', 'DOC123', 1, 'admin', '2023-01-01', 'admin', '2023-01-01', 'Renew annually', 12);
INSERT INTO regional_tax_exemptions VALUES (2, 'TX', 'FuelTax', 'EX002', 'Veteran exemption', '2023-03-01', '2023-09-30', 50.0, 2000.0, 'Veteran ID', 'All', 'Gasoline', 'DeptOfVeterans', 'DOC124', 1, 'admin', '2023-03-01', 'admin', '2023-03-01', 'Review semi‑annual', 6);
INSERT INTO regional_tax_exemptions VALUES (3, 'NY', 'FuelTax', 'EX003', 'Low‑income exemption', '2023-05-01', '2024-04-30', 30.0, 1500.0, 'Income < 25000', 'LowIncome', 'All', 'DeptOfFinance', 'DOC125', 1, 'admin', '2023-05-01', 'admin', '2023-05-01', 'Annual review', 12);

-- Details of subscription plans offered to customers
CREATE TABLE subscription_plan_details (
    PlanID INTEGER PRIMARY KEY,
    PlanName TEXT,
    Description TEXT,
    MonthlyFee REAL,
    AnnualFee REAL,
    Currency TEXT,
    IncludedProducts TEXT,
    MaxTransactions INTEGER,
    TransactionFee REAL,
    OverdraftLimit REAL,
    BenefitLevel TEXT,
    LoyaltyPointsMultiplier REAL,
    EarlyTerminationFee REAL,
    GracePeriodDays INTEGER,
    IsAutoRenew INTEGER,
    IsActive INTEGER,
    CreatedDate DATE,
    UpdatedDate DATE,
    CreatedBy TEXT,
    UpdatedBy TEXT,
    EligibilityCriteria TEXT,
    PromotionalCode TEXT
);

INSERT INTO subscription_plan_details VALUES (1, 'Basic', 'Entry level plan', 9.99, 99.99, 'USD', 'FuelOnly', 100, 0.10, 0.0, 'Standard', 1.0, 0.0, 30, 1, 1, '2023-01-01', '2023-01-01', 'admin', 'admin', 'All customers', NULL);
INSERT INTO subscription_plan_details VALUES (2, 'Premium', 'Full benefits', 19.99, 199.99, 'USD', 'Fuel,CarWash', 500, 0.05, 50.0, 'Gold', 1.5, 20.0, 15, 1, 1, '2023-01-01', '2023-01-01', 'admin', 'admin', 'Customers with >5 years history', 'PROMO2023');
INSERT INTO subscription_plan_details VALUES (3, 'Corporate', 'Business plan', 49.99, 499.99, 'USD', 'AllProducts', 2000, 0.02, 200.0, 'Platinum', 2.0, 0.0, 0, 1, 1, '2023-01-01', '2023-01-01', 'admin', 'admin', 'Businesses with >10 employees', 'CORP2023');

-- Feature usage statistics for the mobile app
CREATE TABLE mobile_app_feature_usage (
    UsageID INTEGER PRIMARY KEY,
    AppVersion TEXT,
    FeatureName TEXT,
    UserID INTEGER,
    SessionID TEXT,
    StartTimestamp DATE,
    EndTimestamp DATE,
    DurationSeconds INTEGER,
    InteractionCount INTEGER,
    SuccessCount INTEGER,
    FailureCount INTEGER,
    ErrorCode TEXT,
    DeviceOS TEXT,
    DeviceModel TEXT,
    NetworkType TEXT,
    LocationLat REAL,
    LocationLong REAL,
    BatteryLevelPercent INTEGER,
    IsPaidUser INTEGER,
    SubscriptionTier TEXT,
    RevenueGenerated REAL,
    CreatedDate DATE,
    UpdatedDate DATE
);

INSERT INTO mobile_app_feature_usage VALUES (1, '1.0.0', 'FuelLocator', 101, 'sessA1', '2023-07-01', '2023-07-01', 45, 5, 5, 0, NULL, 'iOS', 'iPhone12', 'WiFi', 40.7128, -74.0060, 80, 1, 'Premium', 0.0, '2023-07-01', '2023-07-01');
INSERT INTO mobile_app_feature_usage VALUES (2, '1.1.0', 'Payment', 102, 'sessB2', '2023-07-02', '2023-07-02', 30, 3, 2, 1, 'ERR01', 'Android', 'Pixel5', '4G', 34.0522, -118.2437, 60, 0, 'Basic', 1.99, '2023-07-02', '2023-07-02');
INSERT INTO mobile_app_feature_usage VALUES (3, '1.2.0', 'Rewards', 103, 'sessC3', '2023-07-03', '2023-07-03', 60, 8, 8, 0, NULL, 'iOS', 'iPhone13', '5G', 51.5074, -0.1278, 90, 1, 'Premium', 0.0, '2023-07-03', '2023-07-03');

-- Environmental compliance fines recorded for stations
CREATE TABLE environmental_compliance_fines (
    FineID INTEGER PRIMARY KEY,
    StationID INTEGER,
    ViolationDate DATE,
    ViolationType TEXT,
    FineAmount REAL,
    Currency TEXT,
    PaidStatus INTEGER,
    PaymentDate DATE,
    IssuingAuthority TEXT,
    ResolutionNotes TEXT,
    IsAppealed INTEGER,
    AppealResult TEXT,
    AppealDate DATE,
    InspectorName TEXT,
    InspectionScore REAL,
    CorrectiveActionRequired TEXT,
    CorrectiveActionDeadline DATE,
    FollowUpDate DATE,
    FollowUpStatus TEXT,
    ReinspectionRequired INTEGER,
    ReinspectionDate DATE,
    FinalStatus TEXT,
    CreatedDate DATE,
    UpdatedDate DATE
);

INSERT INTO environmental_compliance_fines VALUES (1, 201, '2023-04-15', 'Spill', 5000.0, 'USD', 0, NULL, 'EPA', 'Pending cleanup', 1, 'Pending', NULL, 'John Doe', 75.0, 'Containment', '2023-05-15', '2023-06-01', 'InProgress', 1, NULL, 'Open', '2023-04-16', '2023-04-16');
INSERT INTO environmental_compliance_fines VALUES (2, 202, '2023-05-20', 'Emission', 3000.0, 'USD', 1, '2023-06-05', 'StateAgency', 'Corrected filters', 0, NULL, NULL, 'Jane Smith', 88.0, 'FilterUpgrade', '2023-06-20', '2023-07-01', 'Closed', 0, NULL, 'Resolved', '2023-05-21', '2023-05-21');
INSERT INTO environmental_compliance_fines VALUES (3, 203, '2023-06-10', 'Noise', 1500.0, 'USD', 0, NULL, 'LocalGov', 'Noise barrier needed', 0, NULL, NULL, 'Mike Lee', 65.0, 'InstallBarrier', '2023-07-15', '2023-08-01', 'Scheduled', 1, NULL, 'Open', '2023-06-11', '2023-06-11');