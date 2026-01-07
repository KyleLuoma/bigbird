-- Fuel price history per region and fuel type
CREATE TABLE fuel_price_history
(
    PriceID                INTEGER PRIMARY KEY,
    RecordDate             INTEGER,          -- YYYYMMDD
    RegionCode             INTEGER,
    FuelTypeCode           INTEGER,
    PricePerGallon         REAL,
    CurrencyCode           INTEGER,
    SourceCode             INTEGER,
    UpdateTimestamp        INTEGER,          -- YYYYMMDDHHMMSS
    AvgPriceLastWeek       REAL,
    MaxPriceLastWeek       REAL,
    MinPriceLastWeek       REAL,
    AvgPriceLastMonth      REAL,
    MaxPriceLastMonth      REAL,
    MinPriceLastMonth      REAL,
    PriceVariance          REAL,
    PriceStdDev            REAL,
    IsPromotional          INTEGER,          -- 0 or 1
    PromotionDescCode     INTEGER,
    NotesCode              INTEGER,
    DataQualityScore       REAL
);
INSERT INTO fuel_price_history VALUES (1,20230101,101,1,2.85,1,10,20230101120000,2.80,2.95,2.70,2.78,3.00,2.55,0.05,0.12,0,0,0,0.95);
INSERT INTO fuel_price_history VALUES (2,20230102,102,2,3.15,1,11,20230102120000,3.10,3.20,3.00,3.08,3.30,2.90,0.07,0.15,1,5,12,0.92);
INSERT INTO fuel_price_history VALUES (3,20230103,103,3,2.65,2,12,20230103120000,2.60,2.70,2.50,2.58,2.80,2.40,0.04,0.10,0,0,0,0.97);

-- Fleet vehicle master data
CREATE TABLE vehicle_fleet
(
    VehicleID              INTEGER PRIMARY KEY,
    VinNumber              INTEGER,
    MakeCode               INTEGER,
    ModelCode              INTEGER,
    YearManufactured       INTEGER,
    LicensePlateCode       INTEGER,
    ColorCode              INTEGER,
    AcquisitionDate        INTEGER,          -- YYYYMMDD
    OdometerKm             INTEGER,
    FuelTypeCode           INTEGER,
    EngineCapacityCc       INTEGER,
    AssignedDriverCode     INTEGER,
    StatusCode             INTEGER,
    LastServiceDate        INTEGER,
    NextServiceMileageKm   INTEGER,
    InsuranceProviderCode  INTEGER,
    PolicyNumber           INTEGER,
    RegistrationStateCode  INTEGER,
    PurchasePrice          REAL,
    DepreciationRatePct    REAL,
    WarrantyMonths         INTEGER,
    LeaseEndDate           INTEGER,
    GPSDeviceId            INTEGER,
    EmissionStandardCode  INTEGER,
    FleetGroupCode         INTEGER
);
INSERT INTO vehicle_fleet VALUES (1,123456789,1,10,2018,555001,3,20180115,85000,1,1998,101,1,20221201,90000,20,300001,5,25000.00,12.5,36,20251231,9001,4,2);
INSERT INTO vehicle_fleet VALUES (2,987654321,2,20,2020,555002,5,20200520,43000,2,1598,102,1,20220715,50000,21,300002,7,30000.00,10.0,24,20240228,9002,3,1);
INSERT INTO vehicle_fleet VALUES (3,555555555,3,30,2015,555003,2,20150210,120000,1,1998,103,2,20210110,130000,22,300003,9,22000.00,15.0,48,20260630,9003,5,3);

-- Driver profile information
CREATE TABLE driver_profiles
(
    DriverID               INTEGER PRIMARY KEY,
    EmployeeNumber         INTEGER,
    FirstNameCode          INTEGER,
    LastNameCode           INTEGER,
    BirthDate              INTEGER,          -- YYYYMMDD
    HireDate               INTEGER,
    LicenseNumber          INTEGER,
    LicenseStateCode       INTEGER,
    LicenseExpiration      INTEGER,
    PhoneNumber            INTEGER,
    EmailCode              INTEGER,
    AddressCode            INTEGER,
    CityCode               INTEGER,
    StateCode              INTEGER,
    ZipCode                INTEGER,
    SalaryAnnual           REAL,
    HoursPerWeek           REAL,
    IsFullTime             INTEGER,
    HasSafetyTraining      INTEGER,
    TrainingCompletionDate INTEGER,
    AccidentCount          INTEGER,
    ViolationPoints        INTEGER,
    PreferredShiftCode     INTEGER,
    VehicleAssignedCode    INTEGER,
    PerformanceScore       REAL
);
INSERT INTO driver_profiles VALUES (101,5001,10,20,19850312,20100115,700001,5,20250312,5551111,301,401,501,10,12345,48000.00,40.0,1,1,20200101,2,4,2,1,1,85.5);
INSERT INTO driver_profiles VALUES (102,5002,11,21,19900723,20150322,700002,6,20240322,5552222,302,402,502,11,67890,42000.00,38.0,1,1,20210515,0,0,1,2,1,90.2);
INSERT INTO driver_profiles VALUES (103,5003,12,22,19791205,20080505,700003,7,20220805,5553333,303,403,503,12,13579,52000.00,45.0,0,0,0,5,10,3,1,0,78.3);

-- Weather observations at various stations
CREATE TABLE weather_observations
(
    ObservationID          INTEGER PRIMARY KEY,
    StationCode            INTEGER,
    ObservationDate        INTEGER,          -- YYYYMMDD
    ObservationTime        INTEGER,          -- HHMM
    TemperatureC           REAL,
    DewPointC              REAL,
    RelativeHumidityPct    REAL,
    WindSpeedKph           REAL,
    WindDirectionDeg       INTEGER,
    PrecipitationMm        REAL,
    SnowfallCm             REAL,
    PressureHpa            REAL,
    VisibilityKm           REAL,
    CloudCoverPct          REAL,
    WeatherCode            INTEGER,
    SolarRadiationWm2      REAL,
    UVIndex                REAL,
    AirQualityIndex        INTEGER,
    PollenCount            INTEGER,
    LightningCount         INTEGER,
    FogPresence            INTEGER,
    HeatIndexC             REAL,
    WindChillC             REAL,
    RoofTempC              REAL,
    SoilMoisturePct        REAL
);
INSERT INTO weather_observations VALUES (1001,2001,20221231,1300,5.2,2.1,78.0,12.5,180,0.0,0.0,1013.2,10.5,20,1,250.0,3.2,45,150,0,0,5.0,5.0,15.0,30);
INSERT INTO weather_observations VALUES (1002,2002,20230101,0900,-1.5,-4.0,85.0,8.0,90,2.5,0.0,1020.5,5.2,80,2,300.0,5.0,60,200,1,0,2.0,NaN,12.0,25);
INSERT INTO weather_observations VALUES (1003,2003,20230102,2200,12.0,8.5,55.0,5.0,270,0.0,0.0,1008.7,12.0,10,3,200.0,2.5,30,80,0,0,15.0,10.0,18.0,20);

-- Advertising campaign metadata
CREATE TABLE advertising_campaigns
(
    CampaignID             INTEGER PRIMARY KEY,
    CampaignNameCode       INTEGER,
    StartDate              INTEGER,
    EndDate                INTEGER,
    BudgetUsd              REAL,
    MediaChannelCode       INTEGER,
    TargetAudienceCode     INTEGER,
    ImpressionsGoal        INTEGER,
    ClicksGoal             INTEGER,
    ConversionsGoal        INTEGER,
    CostPerClickUsd        REAL,
    CostPerConversionUsd   REAL,
    ActualImpressions      INTEGER,
    ActualClicks           INTEGER,
    ActualConversions      INTEGER,
    ROIPercent             REAL,
    CreativeVersionCode    INTEGER,
    A/BTestGroupCode       INTEGER,
    FrequencyCap           INTEGER,
    DailyCap               INTEGER,
    GeographicRegionCode   INTEGER,
    LanguageCode           INTEGER,
    AgeGroupMin            INTEGER,
    AgeGroupMax            INTEGER,
    GenderTargetCode       INTEGER,
    PlatformCode           INTEGER,
    AttributionModelCode   INTEGER,
    OptimizationGoalCode   INTEGER,
    SpendUsd               REAL,
    RevenueUsd             REAL
);
INSERT INTO advertising_campaigns VALUES (1,101,20230101,20230331,50000.00,1,10,2000000,50000,5000,0.5,10.0,2100000,52000,5300,12.0,2,1,3,1000,5,2,18,35,1,3,4,2,60000.00,72000.00);
INSERT INTO advertising_campaigns VALUES (2,102,20230401,20230630,75000.00,2,20,3000000,80000,8000,0.6,9.5,2900000,75000,7700,15.0,3,2,4,1500,6,3,25,45,2,4,5,3,85000.00,100000.00);
INSERT INTO advertising_campaigns VALUES (3,103,20230701,20230930,60000.00,3,30,2500000,60000,6000,0.55,9.0,2600000,62000,6300,13.5,1,3,5,1200,4,1,20,40,1,2,6,1,70000.00,85000.00);

-- Supplier contract details
CREATE TABLE supplier_contracts
(
    ContractID                INTEGER PRIMARY KEY,
    SupplierCode              INTEGER,
    ContractNumberCode        INTEGER,
    StartDate                 INTEGER,
    EndDate                   INTEGER,
    ContractValueUsd          REAL,
    CurrencyCode              INTEGER,
    PaymentTermsDays          INTEGER,
    DeliveryLeadTimeDays      INTEGER,
    MaxSupplyVolumeUnits      INTEGER,
    MinOrderQuantityUnits     INTEGER,
    PenaltyRatePct            REAL,
    RenewalOptionCode         INTEGER,
    ConfidentialityLevelCode  INTEGER,
    WarrantyPeriodMonths      INTEGER,
    ServiceLevelAgreementCode INTEGER,
    ContactPersonCode         INTEGER,
    ContactPhoneNumber        INTEGER,
    ContactEmailCode          INTEGER,
    PerformanceScorePct       REAL,
    AuditFrequencyMonths      INTEGER,
    InsuranceRequirementCode  INTEGER,
    LiabilityCapUsd           REAL,
    TerminationNoticeDays     INTEGER,
    EscalationProcedureCode   INTEGER,
    CurrencyExchangeRate      REAL,
    IndexationClauseCode      INTEGER,
    GoverningLawCode          INTEGER,
    DisputeResolutionCode     INTEGER,
    BonusIncentiveUsd         REAL,
    LateFeeUsd                REAL
);
INSERT INTO supplier_contracts VALUES (10001,301,5001,20230101,20231231,1500000.00,1,30,15,200000,5000,2.0,1,3,24,2,101,5551212,401,92.5,6,4,500000.00,60,2,1.1,1,5,6,15000.00,5000.00);
INSERT INTO supplier_contracts VALUES (10002,302,5002,20230215,20240214,2000000.00,2,45,20,250000,6000,1.5,2,2,36,3,102,5551313,402,88.0,12,5,750000.00,90,3,1.2,2,6,7,20000.00,6000.00);
INSERT INTO supplier_contracts VALUES (10003,303,5003,20230320,20240319,1800000.00,1,40,18,220000,5500,1.8,1,4,30,1,103,5551414,403,90.0,9,3,600000.00,75,1,1.15,1,5,8,18000.00,5500.00);

-- Regulatory violations log
CREATE TABLE regulatory_violations
(
    ViolationID               INTEGER PRIMARY KEY,
    ViolationCode             INTEGER,
    DateReported              INTEGER,
    DateOccurred              INTEGER,
    ReportingAgencyCode       INTEGER,
    SeverityLevelCode         INTEGER,
    FinedAmountUsd            REAL,
    CorrectiveActionCode      INTEGER,
    StatusCode                INTEGER,
    InspectionReportCode      INTEGER,
    FollowUpDate              INTEGER,
    AssignedOfficerCode       INTEGER,
    NotesCode                 INTEGER,
    RepeatViolationFlag       INTEGER,
    LegalCounselInvolvedCode  INTEGER,
    SettlementAmountUsd       REAL,
    AppealFiledFlag           INTEGER,
    AppealResultCode          INTEGER,
    ComplianceDeadline        INTEGER,
    RemediationCostUsd        REAL,
    PublicDisclosureFlag     INTEGER,
    MediaCoverageCode         INTEGER,
    IndustryImpactScore       REAL,
    RootCauseAnalysisCode    INTEGER,
    PreventiveMeasureCode     INTEGER,
    AuditFrequencyMonths      INTEGER,
    PenaltyPoints             INTEGER,
    LicenseSuspensionDays     INTEGER,
    RemediationStatusCode     INTEGER,
    FinalResolutionDate       INTEGER,
    TotalCostUsd              REAL,
    RiskRatingScore           REAL
);
INSERT INTO regulatory_violations VALUES (9001,101,20230115,20230110,11,2,25000.00,3,1,401,20230201,21,0,0,12,0.00,0,0,20230301,20000.00,0,0,30.5,13,4,6,2,0,0,20230401,50000.00,4.5);
INSERT INTO regulatory_violations VALUES (9002,102,20230220,20230218,12,3,50000.00,5,2,402,20230315,22,1,1,13,15000.00,1,2,20230420,30000.00,1,2,45.0,14,5,8,3,5,2,20230510,80000.00,7.2);
INSERT INTO regulatory_violations VALUES (9003,103,20230305,20230301,13,1,12000.00,2,1,403,20230325,23,0,0,11,0.00,0,0,20230415,10000.00,0,0,20.0,12,3,5,1,0,0,20230505,22000.00,3.1);

-- Loyalty program tier definitions
CREATE TABLE loyalty_programs
(
    ProgramID                INTEGER PRIMARY KEY,
    ProgramNameCode          INTEGER,
    TierLevelCode            INTEGER,
    PointsRequired           INTEGER,
    DiscountPct              REAL,
    CashbackPct              REAL,
    FreeServiceCode          INTEGER,
    ValidFromDate            INTEGER,
    ValidToDate              INTEGER,
    EnrollmentFeeUsd         REAL,
    AnnualMaintenanceFeeUsd  REAL,
    BonusPointsOnSignup      INTEGER,
    MaxPointsEarnablePerYear INTEGER,
    ExpirationPolicyCode     INTEGER,
    TransferabilityFlag      INTEGER,
    RedemptionPartnerCode    INTEGER,
    CommunicationChannelCode INTEGER,
    MarketingSegmentCode     INTEGER,
    EligibilityCriteriaCode INTEGER,
    TierUpgradeThreshold     INTEGER,
    TierDowngradeThreshold   INTEGER,
    AnniversaryBonusPoints   INTEGER,
    PromoCodeEligibilityFlag INTEGER,
    ReferralBonusPoints      INTEGER,
    CustomerSupportLevelCode INTEGER,
    DataSharingConsentFlag   INTEGER,
    SurveyParticipationFlag  INTEGER,
    EarlyAccessFlag          INTEGER,
    GeoRestrictionCode       INTEGER,
    LoyaltyScoreWeight       REAL,
    AverageSpendThresholdUsd REAL,
    ChurnRiskScore           REAL,
    EngagementScore          REAL,
    LifetimeValueUsd         REAL,
    OverrideFlag             INTEGER,
    NotesCode                INTEGER,
    ArchiveFlag              INTEGER
);
INSERT INTO loyalty_programs VALUES (1,101,1,0,0.0,0.0,0,20230101,20231231,0.00,0.00,0,10000,1,0,0,1,10,0,2000,500,100,1,0,2,0,0,0,0,0.1,500.00,0.2,50.0,1000.00,0,0,0);
INSERT INTO loyalty_programs VALUES (2,102,2,5000,5.0,2.0,1,20230101,20231231,25.00,10.00,500,20000,2,1,1,2,20,1,4000,800,200,1,1,3,1,1,1,1,0.2,1000.00,0.3,70.0,2000.00,0,0,0);
INSERT INTO loyalty_programs VALUES (3,103,3,15000,10.0,5.0,2,20230101,20231231,50.00,20.00,1000,50000,3,1,2,3,30,2,8000,1600,400,1,1,4,1,1,1,1,0.3,2000.00,0.4,90.0,5000.00,0,0,0);

-- Equipment inventory master list
CREATE TABLE equipment_inventory
(
    EquipmentID               INTEGER PRIMARY KEY,
    EquipmentTypeCode         INTEGER,
    ManufacturerCode          INTEGER,
    ModelCode                 INTEGER,
    SerialNumber              INTEGER,
    PurchaseDate              INTEGER,
    WarrantyEndDate           INTEGER,
    CostUsd                   REAL,
    CurrentLocationCode       INTEGER,
    StatusCode                INTEGER,
    LastMaintenanceDate       INTEGER,
    MaintenanceIntervalDays   INTEGER,
    CalibrationDueDate        INTEGER,
    AssignedOperatorCode      INTEGER,
    PowerRatingKw             REAL,
    VoltageRatingV            REAL,
    CurrentRatingA            REAL,
    WeightKg                  REAL,
    DimensionsLengthCm        REAL,
    DimensionsWidthCm         REAL,
    DimensionsHeightCm        REAL,
    EnergyEfficiencyClassCode INTEGER,
    ComplianceStandardCode    INTEGER,
    DepreciationMethodCode    INTEGER,
    ResidualValueUsd          REAL,
    AssetTagNumber            INTEGER,
    InsurancePolicyNumber     INTEGER,
    InsuranceProviderCode     INTEGER,
    ServiceContractCode       INTEGER,
    DisposalDate              INTEGER,
    DisposalMethodCode        INTEGER,
    LastAuditDate             INTEGER,
    AuditResultCode           INTEGER,
    CalibrationStatusCode     INTEGER,
    SparePartsAvailableFlag   INTEGER,
    ReplacementCostUsd        REAL,
    EnvironmentalImpactScore  REAL,
    MaintenanceCostUsd        REAL,
    TotalOperatingHours       INTEGER,
    UtilizationRatePct        REAL,
    NotesCode                 INTEGER
);
INSERT INTO equipment_inventory VALUES (10001,1,10,100,5550001,20200115,20240115,15000.00,200,1,20230201,180,20230401,300,5.0,240,10,200.0,100.0,120.0,1,2,3,2500.00,8001,90001,30,4001,0,0,20230315,1,1,1,15000.00,30.0,5000.00,1200,85.0,0);
INSERT INTO equipment_inventory VALUES (10002,2,11,101,5550002,20200620,20250620,25000.00,201,2,20230310,365,20240610,301,10.0,480,20,350.0,150.0,180.0,2,3,4,4000.00,8002,90002,31,4002,0,0,20230420,2,2,2,20000.00,45.0,8000.00,1500,90.0,0);
INSERT INTO equipment_inventory VALUES (10003,3,12,102,5550003,20201105,20251105,18000.00,202,1,20230415,90,20240515,302,7.5,360,15,280.0,130.0,150.0,1,2,3,3000.00,8003,90003,32,4003,0,0,20230510,1,1,1,17000.00,35.0,6000.00,1100,80.0,0);

-- Annual corporate financial summary (aggregate, no FK)
CREATE TABLE corporate_financials
(
    Year                     INTEGER PRIMARY KEY,
    TotalRevenueUsd          REAL,
    GrossProfitUsd           REAL,
    OperatingExpensesUsd     REAL,
    NetIncomeUsd             REAL,
    EarningsBeforeTaxUsd     REAL,
    TaxExpenseUsd            REAL,
    InterestExpenseUsd       REAL,
    DepreciationExpenseUsd   REAL,
    AmortizationExpenseUsd   REAL,
    CapitalExpenditureUsd    REAL,
    FreeCashFlowUsd          REAL,
    DividendPaidUsd          REAL,
    SharesOutstandingMillion REAL,
    EarningsPerShareUsd      REAL,
    ReturnOnEquityPct        REAL,
    ReturnOnAssetsPct        REAL,
    DebtToEquityRatio        REAL,
    CurrentRatio             REAL,
    QuickRatio               REAL,
    InventoryTurnover        REAL,
    AssetTurnover            REAL,
    GrossMarginPct           REAL,
    NetMarginPct             REAL,
    OperatingMarginPct       REAL,
    InterestCoverageRatio    REAL,
    CashConversionCycleDays  REAL,
    WorkingCapitalUsd        REAL,
    TotalLiabilitiesUsd      REAL,
    TotalAssetsUsd           REAL,
    BookValuePerShareUsd     REAL,
    MarketCapitalizationUsd  REAL,
    PriceEarningsRatio       REAL,
    DividendYieldPct         REAL,
    ShareBuybackUsd          REAL,
    TreasuryStockUsd         REAL,
    ResearchDevExpenseUsd    REAL,
    AdvertisingExpenseUsd    REAL,
    SustainabilityScore      REAL,
    ESGRatingCode            INTEGER,
    CreditRatingCode         INTEGER
);
INSERT INTO corporate_financials VALUES (2020,120000000.00,50000000.00,30000000.00,15000000.00,20000000.00,5000000.00,2000000.00,3000000.00,2000000.00,8000000.00,7000000.00,2000000.00,200.0,75.0,15.0,12.0,0.5,1.5,1.2,5.0,0.8,0.42,0.125,0.125,0.10,3.0,45.0,30000000.00,60000000.00,120000000.00,50.0,210000000.00,20.0,0.03,5000000.00,2000000.00,8000000.00,2000000.00,0.8,2,6);
INSERT INTO corporate_financials VALUES (2021,150000000.00,65000000.00,35000000.00,20000000.00,25000000.00,6000000.00,2500000.00,3500000.00,2500000.00,9000000.00,8000000.00,2500000.00,220.0,90.0,18.0,14.0,0.45,1.8,1.5,6.0,0.9,0.44,0.133,0.133,0.12,3.5,40.0,35000000.00,65000000.00,150000000.00,55.0,260000000.00,22.0,0.035,6000000.00,2500000.00,9000000.00,2500000.00,0.85,3,7);
INSERT INTO corporate_financials VALUES (2022,180000000.00,80000000.00,40000000.00,25000000.00,30000000.00,7000000.00,3000000.00,4000000.00,3000000.00,10000000.00,9000000.00,3000000.00,250.0,110.0,20.0,16.0,0.4,2.0,1.7,7.0,1.0,0.45,0.139,0.139,0.14,4.0,35.0,40000000.00,70000000.00,180000000.00,60.0,310000000.00,24.0,0.04,7000000.00,3000000.00,10000000.00,3000000.00,0.9,4,8);
