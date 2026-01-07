-- Research projects tracking table
CREATE TABLE research_projects
(
    Id                     INTEGER PRIMARY KEY,
    ProjectCode            INTEGER,
    LeadInvestigatorId    INTEGER,
    StartDate              INTEGER,
    EndDate                INTEGER,
    Budget                 INTEGER,
    FundingAgencyId        INTEGER,
    NumResearchers         INTEGER,
    NumPublications        INTEGER,
    Phase                  INTEGER,
    Status                 INTEGER,
    RegionId               INTEGER,
    CategoryId             INTEGER,
    ExpectedOutcomeScore   INTEGER,
    ActualOutcomeScore     INTEGER,
    RiskLevel              INTEGER,
    EthicalApprovalId      INTEGER,
    DataSetCount           INTEGER,
    CollaborationCount     INTEGER,
    PatentCount            INTEGER,
    ReviewScore            INTEGER,
    DurationDays           INTEGER
);
INSERT INTO research_projects VALUES (1,101,10,20200101,20221231,500000,20,8,2,3,1,5,2,85,90,2,15,4,3,1,78,730);
INSERT INTO research_projects VALUES (2,102,11,20210315,20240314,750000,21,12,5,2,2,3,4,90,88,1,16,6,2,0,82,730);
INSERT INTO research_projects VALUES (3,103,12,20220701,20250701,300000,22,5,0,1,0,2,1,70,0,3,17,2,1,0,65,365);

-- Clinical trials registry
CREATE TABLE clinical_trials
(
    Id                     INTEGER PRIMARY KEY,
    TrialNumber            INTEGER,
    SponsorId              INTEGER,
    Phase                  INTEGER,
    TherapeuticAreaId      INTEGER,
    StartDate              INTEGER,
    EndDate                INTEGER,
    EnrollmentTarget       INTEGER,
    ActualEnrollment       INTEGER,
    PrimaryEndpointId      INTEGER,
    SecondaryEndpointCount INTEGER,
    Status                 INTEGER,
    LocationCount          INTEGER,
    CountryCount           INTEGER,
    InvestigatorCount      INTEGER,
    DataMonitorBoardId     INTEGER,
    FundingAmount          INTEGER,
    RiskAssessmentScore    INTEGER,
    EthicalReviewId        INTEGER,
    PublicationCount       INTEGER,
    AdverseEventCount      INTEGER,
    ComplianceScore        INTEGER,
    DurationDays           INTEGER
);
INSERT INTO clinical_trials VALUES (1,2001,30,2,5,20200115,20221215,200,190,10,3,1,4,2,12,40,1500000,85,50,5,12,90,730);
INSERT INTO clinical_trials VALUES (2,2002,31,3,7,20210301,20231231,300,280,12,4,2,5,3,15,41,2000000,78,55,8,20,85,730);
INSERT INTO clinical_trials VALUES (3,2003,32,1,2,20220710,20230710,100,95,8,2,0,2,1,8,42,500000,92,48,2,0,95,305);

-- Environmental monitoring stations metadata
CREATE TABLE environmental_stations
(
    Id                     INTEGER PRIMARY KEY,
    StationCode            INTEGER,
    Latitude               INTEGER,
    Longitude              INTEGER,
    ElevationMeters        INTEGER,
    InstallationDate       INTEGER,
    AgencyId               INTEGER,
    SensorCount            INTEGER,
    TempSensorId           INTEGER,
    HumiditySensorId       INTEGER,
    AirQualitySensorId     INTEGER,
    WaterQualitySensorId   INTEGER,
    PowerSourceId          INTEGER,
    MaintenanceFrequencyDays INTEGER,
    CalibrationDate        INTEGER,
    Status                 INTEGER,
    RegionId               INTEGER,
    DataArchiveId          INTEGER,
    FirmwareVersion        INTEGER,
    ConnectivityTypeId     INTEGER,
    AlertThresholdsCount   INTEGER,
    DataRetentionDays      INTEGER,
    LastServiceDate        INTEGER
);
INSERT INTO environmental_stations VALUES (1,5001,45,90,250,20200101,60,8,101,102,103,104,1,30,20210601,1,3,2001,3,2,5,3650,20220701);
INSERT INTO environmental_stations VALUES (2,5002,46,91,260,20200215,61,10,111,112,113,114,2,45,20210715,1,4,2002,4,3,6,7300,20220815);
INSERT INTO environmental_stations VALUES (3,5003,47,92,270,20200320,62,12,121,122,123,124,3,60,20210820,0,5,2003,5,1,7,10950,20220920);

-- Art exhibition catalog
CREATE TABLE art_exhibitions
(
    Id                     INTEGER PRIMARY KEY,
    ExhibitionCode         INTEGER,
    GalleryId              INTEGER,
    CuratorId              INTEGER,
    StartDate              INTEGER,
    EndDate                INTEGER,
    ArtworkCount           INTEGER,
    ArtistCount            INTEGER,
    VisitorCapacity        INTEGER,
    TicketPriceCents       INTEGER,
    SponsorshipLevelId     INTEGER,
    PromotionBudget        INTEGER,
    OpeningNightAttendance INTEGER,
    MediaCoverageScore     INTEGER,
    AccessibilityRating    INTEGER,
    SecurityLevelId        INTEGER,
    InsuranceCoverageCents INTEGER,
    InstallationDays       INTEGER,
    DismantleDays          INTEGER,
    CatalogPublished       INTEGER,
    AudioGuideCount        INTEGER,
    InteractiveInstallations INTEGER,
    VIPGuestCount          INTEGER,
    TotalRevenueCents      INTEGER
);
INSERT INTO art_exhibitions VALUES (1,8001,10,100,20210115,20210315,150,30,2000,2500,2,50000,1800,85,4,3,1000000,5,3,1,20,2,50,1250000);
INSERT INTO art_exhibitions VALUES (2,8002,11,101,20210401,20210630,200,45,2500,3000,3,75000,2200,90,5,4,1500000,6,4,1,30,3,70,1800000);
INSERT INTO art_exhibitions VALUES (3,8003,12,102,20210710,20210910,120,25,1800,2000,1,40000,1500,80,3,2,800000,4,2,0,15,1,40,900000);

-- Vehicle fleet management
CREATE TABLE vehicle_fleet
(
    Id                     INTEGER PRIMARY KEY,
    VehicleVin             INTEGER,
    MakeId                 INTEGER,
    ModelId                INTEGER,
    Year                   INTEGER,
    PurchaseDate           INTEGER,
    PurchasePriceCents     INTEGER,
    Mileage                INTEGER,
    FuelTypeId             INTEGER,
    EngineSizeCc           INTEGER,
    RegistrationStateId    INTEGER,
    RegistrationExpiryDate INTEGER,
    InsuranceProviderId    INTEGER,
    InsurancePolicyNumber  INTEGER,
    MaintenanceCycleDays   INTEGER,
    LastServiceDate        INTEGER,
    CurrentDriverId        INTEGER,
    Status                 INTEGER,
    GPSDeviceId            INTEGER,
    TelemetryChannelId     INTEGER,
    DepreciationRatePct    INTEGER,
    LeaseTermMonths        INTEGER,
    LeaseCompanyId         INTEGER,
    ResidualValueCents     INTEGER
);
INSERT INTO vehicle_fleet VALUES (1,100001,1,10,2018,20180115,2500000,45000,2,2000,5,20240115,3,700001,180,20221201,15,1,4001,12,15,36,4,1200000);
INSERT INTO vehicle_fleet VALUES (2,100002,2,11,2020,20200620,3000000,20000,1,1800,6,20250620,4,700002,150,20220715,16,1,4002,13,13,48,5,1500000);
INSERT INTO vehicle_fleet VALUES (3,100003,3,12,2019,20190510,2800000,35000,2,2200,7,20240510,5,700003,170,20220910,17,0,4003,14,14,24,6,1300000);

-- Library inventory records
CREATE TABLE library_inventory
(
    Id                     INTEGER PRIMARY KEY,
    ItemBarcode            INTEGER,
    ItemTypeId             INTEGER,
    TitleId                INTEGER,
    PublicationYear        INTEGER,
    AcquisitionDate        INTEGER,
    CostCents              INTEGER,
    ShelfLocationId        INTEGER,
    Status                 INTEGER,
    BorrowerId             INTEGER,
    CheckoutDate           INTEGER,
    DueDate                INTEGER,
    RenewalCount           INTEGER,
    DamageReportId         INTEGER,
    ConditionScore         INTEGER,
    LanguageId             INTEGER,
    GenreId                INTEGER,
    AuthorId               INTEGER,
    PublisherId            INTEGER,
    EditionNumber          INTEGER,
    VolumeNumber           INTEGER,
    SeriesId               INTEGER,
    ISBN13                 INTEGER,
    DeweyDecimal           INTEGER,
    LibraryBranchId        INTEGER
);
INSERT INTO library_inventory VALUES (1,900001,1,1001,2015,20150601,2500,200,1,45,20211201,20220101,2,0,90,1,4,5001,3001,1,0,0,9781234567890,823.912,2);
INSERT INTO library_inventory VALUES (2,900002,2,1002,2020,20210315,1500,201,0,0,0,0,0,0,100,2,5,5002,3002,2,1,0,9781234567891,741.5,3);
INSERT INTO library_inventory VALUES (3,900003,3,1003,2010,20100120,3500,202,2,78,20211010,20211110,1,5,70,1,6,5003,3003,3,0,0,9781234567892,621.3,4);

-- Energy grid substation records
CREATE TABLE energy_grid_substations
(
    Id                     INTEGER PRIMARY KEY,
    SubstationCode         INTEGER,
    VoltageLevelKv         INTEGER,
    CapacityMw             INTEGER,
    RegionId               INTEGER,
    OperatorCompanyId      INTEGER,
    InstallationDate       INTEGER,
    LastInspectionDate     INTEGER,
    TransformerCount       INTEGER,
    SwitchgearCount        INTEGER,
    ProtectionSchemeId     INTEGER,
    CommunicationProtocolId INTEGER,
    GPSLatitude            INTEGER,
    GPSLongitude           INTEGER,
    Status                 INTEGER,
    MaintenanceCycleDays   INTEGER,
    OutageCountYearly      INTEGER,
    RenewableIntegrationPct INTEGER,
    LoadFactorPct          INTEGER,
    FaultLogId             INTEGER,
    BackupGeneratorCount   INTEGER,
    BatteryStorageMwh      INTEGER,
    SmartMeterCount        INTEGER,
    SurveillanceCameraCount INTEGER,
    ControlRoomStaffCount  INTEGER
);
INSERT INTO energy_grid_substations VALUES (1,6001,110,250,10,20,20100101,20220101,4,6,2,1,5000,6000,1,365,3,15,78,12,2,5,20,8,4);
INSERT INTO energy_grid_substations VALUES (2,6002,220,500,11,21,20150215,20220315,6,8,3,2,5100,6100,1,730,5,20,82,15,3,7,30,10,6);
INSERT INTO energy_grid_substations VALUES (3,6003,330,750,12,22,20180320,20220520,8,10,4,3,5200,6200,0,365,2,10,70,10,1,4,15,5,3);

-- Space mission telemetry logs
CREATE TABLE space_missions
(
    Id                     INTEGER PRIMARY KEY,
    MissionCode            INTEGER,
    LaunchDate             INTEGER,
    LandingDate            INTEGER,
    DurationDays           INTEGER,
    AgencyId               INTEGER,
    VehicleId              INTEGER,
    CrewSize               INTEGER,
    PrimaryObjectiveId     INTEGER,
    SecondaryObjectiveCount INTEGER,
    Status                 INTEGER,
    OrbitTypeId            INTEGER,
    ApogeeKm               INTEGER,
    PerigeeKm              INTEGER,
    InclinationDeg         INTEGER,
    PropulsionTypeId       INTEGER,
    FuelMassKg             INTEGER,
    PayloadMassKg          INTEGER,
    CommunicationsBandId   INTEGER,
    DataRateMbps           INTEGER,
    TelemetryChannelCount INTEGER,
    AnomalyCount           INTEGER,
    SuccessRatingPct       INTEGER,
    BudgetCents            INTEGER,
    GroundStationCount     INTEGER,
    MissionPhaseId         INTEGER
);
INSERT INTO space_missions VALUES (1,7001,20200115,20200615,152,30,4001,4,101,2,1,1,35000,30000,45,3,20000,5000,2,25,4,1,92,1500000000,12,5);
INSERT INTO space_missions VALUES (2,7002,20210701,20211231,183,31,4002,6,102,3,1,2,40000,35000,50,4,25000,6000,3,30,5,2,88,1800000000,14,6);
INSERT INTO space_missions VALUES (3,7003,20220320,20220920,184,32,4003,3,103,1,0,3,38000,34000,48,5,22000,5500,1,28,3,0,95,2000000000,16,7);

-- Wildlife observation logs
CREATE TABLE wildlife_observations
(
    Id                     INTEGER PRIMARY KEY,
    ObservationId          INTEGER,
    SpeciesId              INTEGER,
    ObserverId             INTEGER,
    ObservationDate        INTEGER,
    Latitude               INTEGER,
    Longitude              INTEGER,
    ElevationMeters        INTEGER,
    CountObserved          INTEGER,
    AgeClassId             INTEGER,
    SexId                  INTEGER,
    BehaviorCodeId         INTEGER,
    HabitatTypeId          INTEGER,
    WeatherConditionId     INTEGER,
    VisibilityMeters       INTEGER,
    RecordingDeviceId      INTEGER,
    PhotoCount             INTEGER,
    AudioClipCount         INTEGER,
    TagAppliedId           INTEGER,
    GPSAccuracyMeters      INTEGER,
    ObservationQualityScore INTEGER,
    VerificationStatusId   INTEGER,
    PublicationReferenceId INTEGER,
    DataEntryUserId        INTEGER,
    ReviewDate             INTEGER,
    ReviewerId             INTEGER
);
INSERT INTO wildlife_observations VALUES (1,80001,1501,2001,20211010,3500,1200,500,3,2,1,5,4,3,1000,6001,2,0,0,5,85,1,9001,3001,20211015,4001);
INSERT INTO wildlife_observations VALUES (2,80002,1502,2002,20211120,3550,1250,520,5,1,2,6,5,2,900,6002,3,1,1,4,90,2,9002,3002,20211125,4002);
INSERT INTO wildlife_observations VALUES (3,80003,1503,2003,20211205,3600,1300,540,2,3,1,4,3,1,800,6003,1,0,0,6,78,1,9003,3003,20211210,4003);

-- Food supply chain transactions
CREATE TABLE food_supply_chain
(
    Id                     INTEGER PRIMARY KEY,
    TransactionId          INTEGER,
    ProductId              INTEGER,
    SupplierId             INTEGER,
    ManufacturerId         INTEGER,
    DistributorId          INTEGER,
    RetailerId             INTEGER,
    QuantityUnits          INTEGER,
    UnitWeightGrams        INTEGER,
    TransactionDate        INTEGER,
    ShippingMethodId       INTEGER,
    TemperatureControlId   INTEGER,
    CertificationId        INTEGER,
    LotNumber              INTEGER,
    BatchNumber            INTEGER,
    ExpirationDate         INTEGER,
    ReceivedDate           INTEGER,
    InspectionScore        INTEGER,
    ComplianceFlag         INTEGER,
    CostCents              INTEGER,
    RevenueCents           INTEGER,
    MarginPct              INTEGER,
    TransportDistanceKm    INTEGER,
    CarbonFootprintKg      INTEGER,
    PaymentTermsId         INTEGER,
    DeliveryWindowHours    INTEGER,
    DelayReasonId          INTEGER,
    QualityIssueCount      INTEGER
);
INSERT INTO food_supply_chain VALUES (1,90001,3001,4001,5001,6001,7001,1000,500,20210101,1,2,3,12345,678,20220301,20210102,95,0,250000,350000,40,500,50,5,24,0,0);
INSERT INTO food_supply_chain VALUES (2,90002,3002,4002,5002,6002,7002,2000,450,20210215,2,1,4,12346,679,20220415,20210216,92,1,300000,420000,35,800,70,6,48,2,1);
INSERT INTO food_supply_chain VALUES (3,90003,3003,4003,5003,6003,7003,1500,480,20210320,1,2,5,12347,680,20220520,20210321,97,0,275000,380000,38,600,60,5,36,0,0);